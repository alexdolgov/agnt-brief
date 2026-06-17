// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity 0.8.28;

import {MarketParams} from "./IMorpho.sol";

struct ExecutionPlan {
    MarketParams marketParams;
    address mepPool;
    uint256 collaterals;
    uint256[] steps;
}

interface IJuniorBoostHelper {
    /// @notice Emitted when tokens are rescued from the contract.
    /// @param token The address of the token being rescued.
    /// @param amount The amount of tokens rescued.
    event Rescue(address token, uint256 amount);

    /// @notice Emitted when a zap in operation is performed.
    /// @param account The address of the account performing the zap in.
    /// @param marketParams The market parameters used in the operation.
    /// @param mepPool The address of the MEP pool.
    /// @param depositingCollaterals The amount of collaterals being deposited.
    /// @param borrowingSteps The steps involved in borrowing.
    event ZapIn(
        address indexed account,
        MarketParams marketParams,
        address indexed mepPool,
        uint256 depositingCollaterals,
        uint256[] borrowingSteps
    );

    /// @notice Emitted when a zap out operation is performed.
    /// @param account The address of the account performing the zap out.
    /// @param marketParams The market parameters used in the operation.
    /// @param mepPool The address of the MEP pool.
    /// @param withdrawingCollaterals The amount of collaterals being withdrawn.
    /// @param repayingSteps The steps involved in repaying.
    event ZapOut(
        address indexed account,
        MarketParams marketParams,
        address indexed mepPool,
        uint256 withdrawingCollaterals,
        uint256[] repayingSteps
    );

    /// @notice Initializes the contract with the given parameters.
    /// @param owner_ The address of the owner.
    /// @param morpho_ The address of the Morpho contract.
    /// @param orderBook_ The address of the order book.
    function initialize(
        address owner_,
        address morpho_,
        address orderBook_
    ) external;

    /// @notice Rescues tokens from the contract.
    /// @param token The address of the token to rescue.
    /// @param amount The amount of tokens to rescue.
    function rescue(address token, uint256 amount) external;

    /// @notice Performs a zap in operation.
    /// @param marketParams The market parameters for the operation.
    /// @param mepPool The address of the MEP pool.
    /// @param depositingCollaterals The amount of collaterals to deposit.
    /// @param borrowingSteps The steps for borrowing.
    function zapIn(
        MarketParams memory marketParams,
        address mepPool,
        uint256 depositingCollaterals,
        uint256[] memory borrowingSteps
    ) external;

    /// @notice Performs a zap out operation.
    /// @param marketParams The market parameters for the operation.
    /// @param mepPool The address of the MEP pool.
    /// @param withdrawingCollaterals The amount of collaterals to withdraw.
    /// @param repayingSteps The steps for repaying.
    function zapOut(
        MarketParams memory marketParams,
        address mepPool,
        uint256 withdrawingCollaterals,
        uint256[] memory repayingSteps
    ) external;

    /// @notice Cancels an operation.
    function cancel() external;

    /// @notice Called when a liquidity order is filled.
    /// @param orderId The ID of the order.
    /// @param isAdding Whether the order is adding liquidity.
    /// @param assets The amount of assets involved.
    /// @param lpShares The amount of LP shares involved.
    /// @param assetPrice The price of the asset.
    /// @param lpPrice The price of the LP share.
    function onLiquidityOrderFilled(
        uint256 orderId,
        bool isAdding,
        uint256 assets,
        uint256 lpShares,
        uint256 assetPrice,
        uint256 lpPrice
    ) external;
}
