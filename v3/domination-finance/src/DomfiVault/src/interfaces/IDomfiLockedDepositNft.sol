// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import { IERC721 } from "@openzeppelin/contracts/token/ERC721/IERC721.sol";

interface IDomfiLockedDepositNft is IERC721 {
    error NotVault(address caller);

    function mint(address to, uint256 tokenId) external;
    function burn(uint256 tokenId) external;
}
