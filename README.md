# hackNFT2022

Gamer Name Service - up for suggestions play off ENS Ethereum Name Service
Symbol: GMRtag

Character Building NFTs - Proof of Grind

Initial integration with saveable D&D Character sheets and Dungeon Master quest save points.

Game designers can utilize a unique id among players to track their stats across games. Allows players the choice of any name they see fit to represent characters on their epic multi-game quests. ERC721 compliant OpenZeppelin smart contracts with custom Hook, Function and Mapping Variable.

Character naming done through custom tokenURI with base string of “data:text/plain;charset=UTF-8;,” and user input percent encoded utf-8 allowing any unicode characters including emojis to be used as character names.

Marketplace to sell Character NFTs links up the data stored across games both onchain through subgraphs and through game apis in web2, won’t be stored in one single json uri like most NFT game data.

The marketplace is really the most novel idea as the NFTs create value through their connections with different games throughout the ecosystem. Linking this data in a meaningful and fun way makes this idea work, at least in theory.

Awards to integrate -
Looking at how to use UnLock logic in Smart Contract Code - Target tokenIDs with free game trials.

NFT Port - looking into

Graph protocol - create subgraph to query data from games associated with tokenIDs, can create some fake data on rinkeby testnet under different smart contracts with xp or level status to pull.

ETH SC live on rinkeby testnet @0x7E9067635dBaafbFA3c67e5b4B7CE25a8E2e9f98 - minted 9 Character NFTs
https://rinkeby.etherscan.io/token/0x7e9067635dbaafbfa3c67e5b4b7ce25a8e2e9f98
tokenId : tokenURI = 0 : GMRtag , 1 : Killer🦄 , 2 : 😜 , 3 : kenny , 4 : Conan , 5 : Creditor , 6 : Rick , 7 : Rick , 8: Rick

ONE SC live on testnet @0x7E9067635dBaafbFA3c67e5b4B7CE25a8E2e9f98 - minted 9 Character NFTs
https://explorer.testnet.harmony.one/address/0x7e9067635dbaafbfa3c67e5b4b7ce25a8e2e9f98

NFTs minted and imported to openSea, integration with data:text uri weak
https://testnets.opensea.io/collection/gamer-name-service


Working on - 
Scaffold for demo of Smart Contract Functionality - works for video submission on testing currently not live - had some trouble with dependencies and just started working with scaffold so way behind but so far it's awesome!

React app to demo smart contract wallet login to game with NFT recognition - not yet live
Connect Wallet Button , reads smart contract, pulls default GMRtag. Support UnLock to give access granted / denied messages.
