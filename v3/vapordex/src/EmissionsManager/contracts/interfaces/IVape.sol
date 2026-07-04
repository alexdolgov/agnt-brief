// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

/// @title IVape
/// @author royvardhan
/// @dev This is a tester interface and will be replaced
interface IVape {
    /////////////
    /// LOGIC ///
    /////////////

    function mint(address, uint256) external;

    function genesisMint(address) external;

    function totalSupply() external view returns (uint256);

    function maxSupply() external view returns (uint256);

    function balanceOf(address) external view returns (uint256);

    function transferOwnership(address) external;
}
