// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

/// @title IRewardsPoolFacet
/// @author mektigboy
interface IRewardsPoolFacet {
    /////////////
    /// LOGIC ///
    /////////////

    function dailyUpdate() external;
}
