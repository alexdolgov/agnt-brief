// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

import "@openzeppelin/contracts/token/ERC721/IERC721.sol";

interface IElpisMetaverseHeroes is IERC721 {
    function mint(address to) external;
}
