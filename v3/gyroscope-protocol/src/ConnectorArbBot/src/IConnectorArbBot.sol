// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import {IERC20} from "forge-std/interfaces/IERC20.sol";

/**
 * @title Connector Pool Arb Bot
 * @notice Performs arbitrage against Gyroscope Aave connector pools in a permissionless way.
 */
interface IConnectorArbBot {
    /**
     * @notice Emitted whenever the arb bot ran (and made a profit; otherwise, execution reverts).
     * @param isBuyAToken Direction of the arbitrage. true = the stataToken was bought & redeemed. false
     *        = minted & sold.
     * @param tradeAmountPar Trade amount that was sold, in units and decimals of the underlying.
     * @param profitPar Profit, in units and decimals of the underlying.
     */
    event Ran(bool indexed isBuyAToken, uint256 tradeAmountPar, uint256 profitPar);

    /// @notice Raised when `.run()` was called, but there is no profitable arbitrage.
    error NoProfit();

    /// @notice The stataToken that this bot trades against. Also supports IStaticATokenLM and IERC4626.
    function stataToken() external view returns (IERC20);

    /// @notice The underlying of the stataToken
    function underlying() external view returns (IERC20);

    /// @notice The AMM pool against which this bot trades. A Gyroscope 2CLP pool trading
    /// stataToken - underlying.
    function pool() external view returns (address);

    /**
     * @notice Run the arbitrage operation, transferring the profit in units of underlying to the
     *         caller. Reverts if there is no profit to be made.
     * @return Profit, in units and decimals of the underlying.
     */
    // TODO should this take a minimum profit amount (in Wei of underlying)?
    function run() external returns (uint256);

    /**
     * @notice Run the arbitrage operation, transferring the profit in units of underlying to a
     *         named beneficiary. Reverts if there is no profit to be made.
     * @param beneficiary Address that should receive the profit
     * @return Profit, in units and decimals of the underlying.
     */
    function run(address beneficiary) external returns (uint256);

    /**
     * @notice Like `run()` but don't actually run the operation. Does *not* raise an error on
     * no-profit, but returns 0.
     */
    function dryRun() external view returns (uint256);

    /// @notice Partially redundant info about a trade to be done. All numbers in 18 decimals (Wei).
    struct TradeInfo {
        // Direction of trade.
        // true = buy aToken for underlying and redeem it.
        // false = mint aToken and sell it against underlying.
        bool isBuyAToken;
        // Amount of underlying that is taken out as a flash loan and ultimately sold to the pool (first
        // wrapped into the stataToken if !isBuyAToken).
        uint256 sellAmountWei;
        // Below elements are for info only and are not used in actual trades.

        // Amount of underlying that is bought from the pool (wrapped in stataToken if isBuyAToken).
        uint256 buyAmountWei;
        // Expected profit = buyAmountWei - sellAmountWei.
        uint256 expectedProfitWei;
        // Starting price in the pool for the aToken in units of the underlying.
        uint256 startPriceAToken;
        // Sell/buy amounts before constrained by available flash loan and Aave liquidity.
        uint256 idealSellAmountWei;
        uint256 idealBuyAmountWei;
        // Maximum size of the flash loan.
        uint256 maxFlashloanWei;
        // Maximum Aave deposit (if !isBuyAToken) or withdraw (if isBuyAToken) liquidity, in units of
        // underlying.
        uint256 aaveLiquidityWei;
    }

    /// @notice Like `dryRun()` but provide additional info regarding the trade.
    function dryRunVerbose() external view returns (TradeInfo memory);
}
