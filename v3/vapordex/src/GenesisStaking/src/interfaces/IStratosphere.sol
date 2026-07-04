// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

/// @title IStratosphere
/// @author mektigboy
interface IStratosphere {
    /////////////
    /// LOGIC ///
    /////////////

    function tokenIdOf(address account) external view returns (uint256);
}
