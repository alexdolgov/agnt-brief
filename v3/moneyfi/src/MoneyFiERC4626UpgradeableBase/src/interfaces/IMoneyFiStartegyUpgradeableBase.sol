// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

interface IMoneyFiStartegyUpgradeableBase {
    /*/////////////////////////////////////////////////////////////////////////
                                    ERROR
    /////////////////////////////////////////////////////////////////////////*/
    error InvalidStrategyRewardAmount();

    /*/////////////////////////////////////////////////////////////////////////
                                    EVENTS
    /////////////////////////////////////////////////////////////////////////*/
    event ClaimRewardStrategy(address withdrawer, address receiver, address token, uint256 claimedAt);

    /// @notice Check if an underlying asset is supported by the strategy.
    /// @param asset The address of the asset to check.
    /// @return True if the asset is supported, false otherwise.
    function isSupportUnderlyingAsset(address asset) external view returns (bool);
}
