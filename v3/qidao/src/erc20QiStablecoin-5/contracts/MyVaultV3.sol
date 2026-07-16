// contracts/MyVaultNFT.sol
// SPDX-License-Identifier: MIT
pragma solidity 0.5.16;

import "@openzeppelin/contracts/token/ERC721/ERC721Full.sol";
import "./interfaces/IVaultMetaProvider.sol";
import "./interfaces/IVaultMetaRegistry.sol";


contract VaultNFTv3 is ERC721Full {

    address public _meta;

    constructor(string memory name, string memory symbol, address meta, string memory baseURI)
        public
        ERC721Full(name, symbol)
    {
        _meta = meta;
        _setBaseURI(baseURI);
    }

    function tokenURI(uint256 tokenId) public view returns (string memory) {
        require(_exists(tokenId));
        
        IVaultMetaProvider provider = IVaultMetaProvider(IVaultMetaRegistry(_meta).getMetaProvider(address(this)));

        return provider.getTokenURI(address(this), tokenId);
    }
}