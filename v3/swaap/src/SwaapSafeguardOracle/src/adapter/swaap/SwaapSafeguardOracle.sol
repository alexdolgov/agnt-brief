// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity ^0.8.0;

import {FixedPointMathLib} from "@solady/utils/FixedPointMathLib.sol";
import {ISafeguardPool} from "@swaap-earn/interfaces/external/ISafeguardPool.sol";
import {ManagementFeesLib} from "@swaap-earn/modules/fees/ManagementFeesLib.sol";
import {IBalancerPool} from "@swaap-earn/interfaces/external/IBalancerPool.sol";
import {IVault, IERC20} from "@swaap-earn/interfaces/external/Balancer/IVault.sol";
import {BaseAdapter, Errors, IPriceOracle} from "../BaseAdapter.sol";
import {ScaleUtils, Scale} from "../../lib/ScaleUtils.sol";

/// @title SwaapSafeguardOracle
/// @custom:security-contact gm@swaap.finance
/// @custom:security-contact security@euler.xyz
/// @author Swaap Finance (https://www.swaap.finance/)
/// @author Euler Labs (https://www.eulerlabs.com/)
/// @notice Adapter for pricing Swaap Safeguard LP tokens.
/// WARNING: READ THIS BEFORE DEPLOYING
/// Ensure that the selected quote token has a sufficient decimal precision (e.g., 18 decimals).
/// Low-precision tokens like USDC (6 decimals) may lead to significant rounding errors when computing LP token unit prices.
/// For example, if the price of one LP token is close to or below the smallest unit of the quote token (e.g., 1e-6 for USDC),
/// the computed unit price may round down to zero, potentially resulting in inaccurate or zero value quotes.
/// To avoid this, select a quote token with high precision or ensure the LP token price is orders of magnitude above the quote token unit.
contract SwaapSafeguardOracle is BaseAdapter {
    /// @inheritdoc IPriceOracle
    string public constant name = "SwaapSafeguardOracle";
    /// @notice Internal precision for LP token price & hodlBalancePerPT decimals
    uint8 internal constant LP_DECIMALS = 18;
    /// @notice The address of the Swaap vault.
    address public immutable vault;
    /// @notice The address of the quote asset corresponding to the pair.
    address public immutable quote;
    /// @notice The address of the oracle used to price pool tokens.
    /// @dev Must support pricing all pool tokens against USD e.g. an `EulerRouter` instance.
    address public immutable oracle;
    /// @notice The address of the Swaap Safeguard pool (LP token).
    address public immutable safeguardPool;
    /// @notice The scale factors used for decimal conversions on the underlying pool tokens hodlBalancePerPT (18 decimals).
    uint256 internal immutable hodlScale0;
    /// @notice The scale factors used for decimal conversions on the underlying pool tokens hodlBalancePerPT (18 decimals).
    uint256 internal immutable hodlScale1;
    /// @notice The pool id of the Swaap Safeguard pool.
    bytes32 public immutable poolId;
    /// @notice The scale factors used for decimal conversions.
    Scale internal immutable scale;

    /// @notice The safeguard pool returned an unexpected amount of underlying tokens
    error PoolTokensLengthMismatch();

    /// @notice The safeguard pool returned an unexpected amount of decimals
    error UnexpectedPoolDecimals();

    /// @notice Deploy a SwaapSafeguardOracle.
    /// @param _safeguardPool The address of the Swaap Safeguard pool (LP token).
    /// @param _quote The address of the quote asset corresponding to the pair.
    /// @param _vault The address of the Swaap vault that holds pool tokens.
    /// @param _oracle The address of the quote asset corresponding to the feed.
    /// @dev This adapter will price `safeguardPool` (LP token) against the quote asset.
    /// The oracle must support pricing all underlying pool tokens e.g. an `EulerRouter` instance.
    constructor(address _safeguardPool, address _quote, address _vault, address _oracle) {
        safeguardPool = _safeguardPool;
        quote = _quote;
        vault = _vault;
        oracle = _oracle;
        poolId = IBalancerPool(_safeguardPool).getPoolId();

        uint8 lpTokenDecimals = _getDecimals(safeguardPool);

        // Sanity check: all safeguard pools should use 18 decimals
        if (lpTokenDecimals != LP_DECIMALS) {
            revert UnexpectedPoolDecimals();
        }

        uint8 quoteDecimals = _getDecimals(quote);
        scale = ScaleUtils.calcScale(LP_DECIMALS, quoteDecimals, quoteDecimals);

        (IERC20[] memory tokens,,) = IVault(_vault).getPoolTokens(poolId);

        // safeguard pools should only have 2 underlying tokens
        if (tokens.length != 2) {
            revert PoolTokensLengthMismatch();
        }

        hodlScale0 = 10 ** (LP_DECIMALS - _getDecimals(address(tokens[0])));
        hodlScale1 = 10 ** (LP_DECIMALS - _getDecimals(address(tokens[1])));
    }

    /// @notice Get a quote by calculating the Swaap Safeguard LP token price.
    /// @param inAmount The amount of `_base` to convert.
    /// @param _base The token that is being priced.
    /// @param _quote The token that is the unit of account.
    /// @return The converted amount using the Swaap Safeguard LP token price.
    function _getQuote(uint256 inAmount, address _base, address _quote) internal view override returns (uint256) {
        bool inverse = ScaleUtils.getDirectionOrRevert(_base, safeguardPool, _quote, quote);

        uint256 unitPrice = _getSafeguardUnitPrice();

        return ScaleUtils.calcOutAmount(inAmount, unitPrice, scale, inverse);
    }

    function _getPoolSupplyAfterFees(uint256 currentSupply) internal view returns (uint256) {
        (, uint256 managementFeesRate, uint256 lastClaimTime) = ISafeguardPool(safeguardPool).getManagementFeesParams();
        uint256 unclaimedFeesAsShares = ManagementFeesLib._calcAccumulatedManagementFees(
            block.timestamp, lastClaimTime, managementFeesRate, currentSupply
        );

        return currentSupply + unclaimedFeesAsShares;
    }

    function _getSafeguardUnitPrice() internal view returns (uint256) {
        uint256 currentSupply = IBalancerPool(safeguardPool).totalSupply();

        // Calculate the total LP token supply including unclaimed fees.
        uint256 totalSupplyAfterFees = _getPoolSupplyAfterFees(currentSupply);

        // Get the current state of the pool.
        (IERC20[] memory tokens, uint256[] memory balances,) = IVault(vault).getPoolTokens(poolId);

        uint256 currentUnitPrice = _getSafeguardCurrentUnitPrice(tokens, balances, totalSupplyAfterFees);

        uint256 benchmarkUnitPrice = _getSafeguardBenchmarkUnitPrice(tokens, currentSupply, totalSupplyAfterFees);

        return currentUnitPrice < benchmarkUnitPrice ? currentUnitPrice : benchmarkUnitPrice;
    }

    function _getSafeguardCurrentUnitPrice(
        IERC20[] memory tokens,
        uint256[] memory balances,
        uint256 totalSupplyAfterFees
    ) internal view returns (uint256) {
        // Calculate the TVL by summing the USD value of each pool token.
        uint256 poolTVL;
        for (uint256 i; i < tokens.length; ++i) {
            poolTVL += IPriceOracle(oracle).getQuote(balances[i], address(tokens[i]), quote);
        }

        return FixedPointMathLib.fullMulDiv(poolTVL, 10 ** LP_DECIMALS, totalSupplyAfterFees);
    }

    function _getSafeguardBenchmarkUnitPrice(
        IERC20[] memory tokens,
        uint256 currentSupply,
        uint256 totalSupplyAfterFees
    ) internal view returns (uint256) {
        // hodl balances are computed without taking the unminted shares (as fees) and are scaled to 18 decimals for any underlying token's decimals
        (uint256 hodlBalancePerPT0, uint256 hodlBalancePerPT1) = ISafeguardPool(safeguardPool).getHodlBalancesPerPT();

        uint256 unitPrice = IPriceOracle(oracle).getQuote(hodlBalancePerPT0, address(tokens[0]), quote) / hodlScale0;

        unitPrice += IPriceOracle(oracle).getQuote(hodlBalancePerPT1, address(tokens[1]), quote) / hodlScale1;

        return FixedPointMathLib.fullMulDiv(currentSupply, unitPrice, totalSupplyAfterFees);
    }
}
