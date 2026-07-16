// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

/// @notice IApxEth represents a Autocompounding Pirex Ether staked contract
interface IApxEth {

    function pirexEth() external view returns (address); 
    function redeem(uint256 shares, address receiver, address owner) external returns (uint256);
}
