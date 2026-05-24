// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity ^0.8.0;

import "@uniswap/v3-core/contracts/interfaces/IERC20Minimal.sol";
import "@uniswap/v3-core/contracts/interfaces/IUniswapV3Pool.sol";

interface IUniswapV3Staker {
    /// @notice Represents the parameters for an incentive
    struct IncentiveKey {
        IERC20Minimal rewardToken;
        IUniswapV3Pool pool;
        uint256 startTime;
        uint256 endTime;
        address refundee;
    }

    /// @notice Creates a new liquidity mining incentive program
    /// @param key Details of the incentive to create
    /// @param reward The amount of reward tokens to be distributed
    function createIncentive(IncentiveKey memory key, uint256 reward) external;

    /// @notice Ends an incentive after the incentive end time has passed and all stakes have been withdrawn
    /// @param key Details of the incentive to end
    /// @return refund The remaining reward tokens when the incentive is ended
    function endIncentive(IncentiveKey memory key) external returns (uint256 refund);

    /// @notice Event emitted when a liquidity mining incentive has been created
    event IncentiveCreated(
        IERC20Minimal indexed rewardToken,
        IUniswapV3Pool indexed pool,
        uint256 startTime,
        uint256 endTime,
        address refundee,
        uint256 reward
    );
}