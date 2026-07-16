// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

import { Currency } from "@uniswap/v4-core/src/types/Currency.sol";
import { PoolId } from "@uniswap/v4-core/src/types/PoolId.sol";

/// @title  IPumpFeeHook
/// @notice External surface of the v4 fee-capture hook. The schedule is a stepped table
///         indexed by the token's market cap; each row carries `(creatorPips, protocolPips,
///         lpPips)`. Creator + protocol fees are charged on the trader's input currency and
///         accumulated per pool/currency for later payout via {skim}; the LP fee is applied
///         natively by the pool via the dynamic-fee override.
/// @dev    The IHooks callbacks (`afterInitialize`, `beforeSwap`, `afterSwap`) are invoked
///         by the PoolManager only and are not surfaced here.
interface IPumpFeeHook {
    /* -------------------------------------------------------------------------- */
    /*                                   TYPES                                    */
    /* -------------------------------------------------------------------------- */

    /// @notice One row of the fee schedule. All fee fields are in v4 pips (hundredths of a
    ///         bip); 1 % = 10 000 pips. Sub-bps precision is required for values like 0.275 %.
    struct Tier {
        /// @notice Exclusive upper bound on market cap (wei). The final tier must use
        ///         `type(uint256).max`.
        uint256 mcUpperBoundWei;
        uint24 creatorPips;
        uint24 protocolPips;
        uint24 lpPips;
    }

    /// @notice Per-pool state captured at `afterInitialize`.
    struct PoolState {
        address creator;
        address token;
    }

    /* -------------------------------------------------------------------------- */
    /*                                   EVENTS                                   */
    /* -------------------------------------------------------------------------- */

    event PoolRegistered(PoolId indexed id, address indexed bondingCurve, address indexed creator);
    event FeeAccrued(
        PoolId indexed id, Currency currency, uint256 creatorAmount, uint256 protocolAmount, uint8 tierIndex
    );
    event Skimmed(
        PoolId indexed id,
        address indexed caller,
        Currency currency,
        uint256 creatorAmount,
        uint256 protocolAmount,
        bool creatorOk,
        bool protocolOk
    );
    event PayoutFailed(PoolId indexed id, address indexed to, Currency currency, uint256 amount);
    event CreatorSynced(PoolId indexed id, address indexed oldCreator, address indexed newCreator);

    /* -------------------------------------------------------------------------- */
    /*                                   VIEWS                                    */
    /* -------------------------------------------------------------------------- */

    function poolState(PoolId id) external view returns (address creator, address token);
    function creatorOwed(PoolId id, Currency currency) external view returns (uint256);
    function protocolOwed(PoolId id, Currency currency) external view returns (uint256);
    function PROTOCOL_FEE_RECIPIENT() external view returns (address);

    function tierCount() external view returns (uint256);
    function tierAt(uint256 i) external view returns (Tier memory);

    /// @notice Lookup the tier for a given market cap (in wei).
    function tierForMarketCap(uint256 mcWei) external view returns (uint256 index, Tier memory tier);

    /// @notice Current market cap of `id`'s token in wei: `priceETHperTOKEN * TOTAL_SUPPLY`.
    function currentMarketCap(PoolId id) external view returns (uint256 mcWei);

    /* -------------------------------------------------------------------------- */
    /*                                  ACTIONS                                   */
    /* -------------------------------------------------------------------------- */

    /// @notice Drain accumulated creator + protocol fees in `currency` for pool `id`.
    ///         Permissionless. Each side has its own bucket; a partial payout (e.g. creator
    ///         reverts on `receive`) re-credits only that side.
    function skim(PoolId id, Currency currency) external;

    /// @notice Re-sync the pool's `creator` from the bonding curve's current
    ///         {IBondingCurve.CREATOR}. Permissionless. Already-accrued fees go to the NEW
    ///         creator on the next {skim}; call {skim} first if you want the split.
    function syncCreator(PoolId id) external;
}
