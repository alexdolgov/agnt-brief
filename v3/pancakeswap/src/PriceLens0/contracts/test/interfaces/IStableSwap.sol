// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IStableSwap {
    // solium-disable-next-line mixedcase
    function get_dy(uint256 i, uint256 j, uint256 dx) external view returns (uint256 dy);

    function coins(uint256 i) external view returns (address);
}
