// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.4;
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "../../v1/tokens/Seedmon.sol";
import "@openzeppelin/contracts/utils/Address.sol";

contract SeedmonV1Migrator is Ownable {
   
    event Migrated(uint256 tokenId, address owner);
    using Address for address;

    Seedmon public seedmonV1;
    ERC721 public seedmonV2;

    constructor(Seedmon _seedmonV1, ERC721 _seedmonV2){
        seedmonV1 = _seedmonV1;
        seedmonV2 = _seedmonV2;
    }

    function migrate(uint256 tokenId) external onlyOwner{
        address ownerV1 = seedmonV1.ownerOf(tokenId);
        require (!ownerV1.isContract(),  "SeedmonV1Migrator: not migrate for owner as a contract");
        seedmonV2.safeTransferFrom(msg.sender, ownerV1, tokenId);
        seedmonV1.burn(tokenId);

        emit Migrated(tokenId, ownerV1);
    }
} 