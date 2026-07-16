// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.30;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {IERC20Metadata} from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";

interface IYieldWrapperLike {
    function token() external view returns (address);
    function circuitBreaker() external view returns (address);
    function strategies(uint256 index) external view returns (address);
}

interface IStrategyLike {
    function valueOfCapital() external view returns (uint256);
    function positionToken() external view returns (address);
}

interface ICircuitBreakerLike {
    function paused() external view returns (bool);
    function isWhitelistedRecipient(address recipient) external view returns (bool);
    function withdrawalCapacity(address asset, uint256 currentTvl) external view returns (uint256);
}

/// @title RfqCBLens
/// @notice Off-chain helper that mirrors `ftYieldWrapper`'s circuit-breaker call site
///         in a single eth_call so the filler bot can decide whether a fill would
///         revert with `ftYieldWrapperRateLimitExceeded` before quoting/simulating.
/// @dev Pure view, no state, no admin. Strategies are enumerated dynamically via a
///      bounded `try/catch` loop on `wrapper.strategies(i)` so adding strategies on
///      a wrapper requires no lens redeploy. Adding new assets, whitelisted
///      recipients or protected contracts is also picked up automatically.
///
///      Redeploy is only required if the protocol shape changes (e.g. wrapper's
///      `withdraw` selector swap, a new revert signature, or a new TVL component
///      beyond `token.balanceOf + sum strategies`).
contract RfqCBLens {
    /// @notice Cap on enumerated strategies; today's wrappers run with 1-3.
    uint256 public constant MAX_STRATEGIES = 32;

    /// @notice Result of a pre-flight CB check.
    /// @param wouldRevert True iff `amount > available` and CB is engaged.
    /// @param available   Withdrawal capacity for `asset` at the current TVL.
    /// @param tvl         TVL computed off the wrapper's underlying balance + strategy capital.
    /// @param paused      True if CB is paused (no rate limit applies).
    /// @param whitelisted True if `recipient` bypasses the CB.
    /// @param cbZero      True if the wrapper has `circuitBreaker == address(0)` (no CB).
    struct CBCheck {
        bool wouldRevert;
        uint256 available;
        uint256 tvl;
        bool paused;
        bool whitelisted;
        bool cbZero;
    }

    /// @notice Pre-flight check mirroring `ftYieldWrapper.withdraw`'s CB call site.
    /// @param wrapper   Address of the `ftYieldWrapper` instance.
    /// @param recipient Address of the withdrawal recipient (the engine, in our case).
    /// @param amount    Amount being withdrawn (`sellAmount + feeAmount`).
    /// @return r        The decoded check result; see `CBCheck`.
    function check(
        address wrapper,
        address recipient,
        uint256 amount
    )
        external
        view
        returns (CBCheck memory r)
    {
        address cb = IYieldWrapperLike(wrapper).circuitBreaker();
        if (cb == address(0)) {
            r.cbZero = true;
            return r;
        }

        if (ICircuitBreakerLike(cb).paused()) {
            r.paused = true;
            return r;
        }

        if (ICircuitBreakerLike(cb).isWhitelistedRecipient(recipient)) {
            r.whitelisted = true;
            return r;
        }

        address asset = IYieldWrapperLike(wrapper).token();
        r.tvl = _computeTvl(wrapper, asset);
        r.available = ICircuitBreakerLike(cb).withdrawalCapacity(asset, r.tvl);
        r.wouldRevert = amount > r.available;
    }

    /// @dev Replicates `ftYieldWrapper._getTvl()`:
    ///      `tvl = token.balanceOf(wrapper) + sum_i strategies[i].valueOfCapital()`
    ///      with normalization to the underlying's decimals when the strategy's
    ///      `positionToken().decimals()` differs.
    function _computeTvl(address wrapper, address underlying) internal view returns (uint256 tvl) {
        tvl = IERC20(underlying).balanceOf(wrapper);
        uint8 underlyingDec = IERC20Metadata(underlying).decimals();

        for (uint256 i = 0; i < MAX_STRATEGIES; i++) {
            address strategy;
            try IYieldWrapperLike(wrapper).strategies(i) returns (address s) {
                strategy = s;
            } catch {
                break;
            }
            if (strategy == address(0)) {
                break;
            }

            uint256 v;
            try IStrategyLike(strategy).valueOfCapital() returns (uint256 cap) {
                v = cap;
            } catch {
                continue;
            }
            if (v == 0) {
                continue;
            }

            uint8 posDec;
            try IStrategyLike(strategy).positionToken() returns (address posToken) {
                try IERC20Metadata(posToken).decimals() returns (uint8 d) {
                    posDec = d;
                } catch {
                    posDec = underlyingDec;
                }
            } catch {
                posDec = underlyingDec;
            }

            if (posDec != underlyingDec) {
                v = (v * (10 ** underlyingDec)) / (10 ** posDec);
            }
            tvl += v;
        }
    }
}
