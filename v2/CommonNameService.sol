// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

import "@openzeppelin/contracts@4.3.3/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts@4.3.3/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts@4.3.3/access/Ownable.sol";
import "@openzeppelin/contracts@4.3.3/utils/Counters.sol";

/// @custom:security-contact kennybetz@gmail.com
contract CommonNameService is ERC721, ERC721URIStorage, Ownable {
    using Counters for Counters.Counter;

    Counters.Counter private _tokenIdCounter;

    constructor() ERC721("Common Name Service", "Name") {}
 
    mapping(address => uint256) public addressDefaultId;

    function _baseURI() internal pure override returns (string memory) {
        return "data:text/plain;charset=UTF-8;,";
    }

    function safeMint(address to, string memory uri) public virtual {
        uint256 tokenId = _tokenIdCounter.current();
        _tokenIdCounter.increment();
        _safeMint(to, tokenId);
        _setTokenURI(tokenId, uri);
        
    }

    // The following functions are overrides required by Solidity.

    function _burn(uint256 tokenId) internal override(ERC721, ERC721URIStorage) {
        super._burn(tokenId);
    }

    function tokenURI(uint256 tokenId)
        public
        view
        override(ERC721, ERC721URIStorage)
        returns (string memory)
    {
        return super.tokenURI(tokenId);
    }

    // Custom Hook to update mapping of default Name on all transfers

    function _beforeTokenTransfer(address from, address to, uint256 tokenId)
        internal virtual override
    {
        super._beforeTokenTransfer(from, to, tokenId);
        if (addressDefaultId[from] == tokenId) {
            addressDefaultId[from] = 0;
        }
        addressDefaultId[to] = tokenId;
    }

    // Custom function for selection of default Name owned by msg.sender

    function setDefaultName(uint256 tokenId) public virtual {
        require(msg.sender == ownerOf(tokenId), "Not owner");
        addressDefaultId[msg.sender] = tokenId;
    }

}
