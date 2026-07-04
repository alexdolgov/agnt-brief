//SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

interface IUnionClubPluginV2_1 {
    function safe() external view returns (address);
    function validateUpdate(address from, address to, uint tokenId) external returns (bool);
}
