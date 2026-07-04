// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

interface IDaiUsds {
    /// @notice Swap DAI to USDS 1:1
    function daiToUsds(address usr, uint256 wad) external;

    /// @notice Swap USDS to DAI 1:1
    function usdsToDai(address usr, uint256 wad) external;

    /// @notice Returns DAI token address
    function dai() external view returns (address);

    /// @notice Returns USDS token address
    function usds() external view returns (address);
}
