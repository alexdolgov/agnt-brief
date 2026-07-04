// SPDX-License-Identifier: UNLICENSED
// Copyright (c) 2023 Tokemak Foundation. All rights reserved.

pragma solidity ^0.8.24;

import { console } from "forge-std/console.sol";

import { AutopilotErrors } from "src/utils/AutopilotErrors.sol";
import { LibAdapter } from "src/libs/LibAdapter.sol";
import { IDestinationVault } from "src/interfaces/vault/IDestinationVault.sol";
import { Math } from "openzeppelin-contracts/utils/math/Math.sol";
import { EnumerableSet } from "openzeppelin-contracts/utils/structs/EnumerableSet.sol";
import { SafeERC20 } from "openzeppelin-contracts/token/ERC20/utils/SafeERC20.sol";
import { IERC20Metadata as IERC20 } from "openzeppelin-contracts/token/ERC20/extensions/IERC20Metadata.sol";
import { StructuredLinkedList } from "src/strategy/StructuredLinkedList.sol";
import { WithdrawalQueue } from "src/strategy/WithdrawalQueue.sol";
import { IAutopool } from "src/interfaces/vault/IAutopool.sol";
import { IMainRewarder } from "src/interfaces/rewarders/IMainRewarder.sol";
import { AutopoolToken } from "src/vault/libs/AutopoolToken.sol";
import { IRootPriceOracle } from "src/interfaces/oracles/IRootPriceOracle.sol";
import { ISystemRegistry } from "src/interfaces/ISystemRegistry.sol";
import { AutopoolState, ProcessRebalanceParams } from "src/vault/libs/AutopoolState.sol";
import { AutopoolStrategyHooks } from "src/vault/libs/AutopoolStrategyHooks.sol";
import { IStrategyHook, HookFunctionIndex } from "src/interfaces/strategy/IStrategyHook.sol";

library AutopoolDebt {
    using Math for uint256;
    using SafeERC20 for IERC20;
    using WithdrawalQueue for StructuredLinkedList.List;
    using EnumerableSet for EnumerableSet.AddressSet;
    using AutopoolToken for AutopoolToken.TokenData;

    /// @notice Max time a cached debt report can be used
    uint256 public constant MAX_DEBT_REPORT_AGE_SECONDS = 1 days;

    error VaultShutdown();
    error WithdrawShareCalcInvalid(uint256 currentShares, uint256 cachedShares);
    error RebalanceFailed(string message);
    error InvalidPrices();
    error InvalidTotalAssetPurpose();
    error InvalidDestination(address destination);
    error TooFewAssets(uint256 requested, uint256 actual);
    error SharesAndAssetsReceived(uint256 assets, uint256 shares);
    error AmountExceedsAllowance(uint256 shares, uint256 allowed);
    error PositivePriceRecoupNotCovered(uint256 remaining);
    error RebalanceDestinationsMatch();
    error InsufficientAssets(address asset);
    error RebalanceDestinationUnderlyerMismatch(address destination, address trueUnderlyer, address providedUnderlyer);
    error OnlyRebalanceToIdleAvailable();
    error UnregisteredDestination(address dest);
    error StaleDebtReporting();

    event DestinationDebtReporting(
        address destination, AutopoolDebt.IdleDebtUpdates debtInfo, uint256 claimed, uint256 claimGasUsed
    );
    event NewNavShareFeeMark(uint256 navPerShare, uint256 timestamp);
    event Nav(uint256 idle, uint256 debt, uint256 totalSupply);
    event Withdraw(
        address indexed sender, address indexed receiver, address indexed owner, uint256 assets, uint256 shares
    );

    struct DestinationInfo {
        /// @notice Current underlying value at the destination vault
        /// @dev Used for calculating totalDebt, mid point of min and max
        uint256 cachedDebtValue;
        /// @notice Current minimum underlying value at the destination vault
        /// @dev Used for calculating totalDebt during withdrawal
        uint256 cachedMinDebtValue;
        /// @notice Current maximum underlying value at the destination vault
        /// @dev Used for calculating totalDebt of the deposit
        uint256 cachedMaxDebtValue;
        /// @notice Last block timestamp this info was updated
        uint256 lastReport;
        /// @notice How many shares of the destination vault we owned at last report
        uint256 ownedShares;
    }

    struct IdleDebtUpdates {
        bool pricesWereSafe;
        uint256 totalIdleDecrease;
        uint256 totalIdleIncrease;
        uint256 totalDebtIncrease;
        uint256 totalDebtDecrease;
        uint256 totalMinDebtIncrease;
        uint256 totalMinDebtDecrease;
        uint256 totalMaxDebtIncrease;
        uint256 totalMaxDebtDecrease;
        uint256 minPrice;
        uint256 maxPrice;
    }

    struct AssetChanges {
        uint256 startingIdle;
        uint256 startingDebt;
        uint256 startingTotalSupply;
        uint256 newIdle;
        uint256 newDebt;
        uint256 endingTotalSupply;
    }

    struct RebalanceOutParams {
        /// Address that will received the withdrawn underlyer
        address receiver;
        /// The "out" destination vault
        address destinationOut;
        /// The amount of tokenOut that will be withdrawn
        uint256 amountOut;
        /// The underlyer for destinationOut
        address tokenOut;
        IERC20 _baseAsset;
        bool _shutdown;
    }

    /// @dev In memory struct only for managing vars in _withdraw
    struct WithdrawInfo {
        uint256 currentIdle;
        uint256 assetsFromIdle;
        uint256 totalAssetsToPull;
        uint256 assetsToPull;
        uint256 assetsPulled;
        uint256 idleIncrease;
        uint256 debtDecrease;
        uint256 debtMinDecrease;
        uint256 debtMaxDecrease;
        uint256 totalMinDebt;
        uint256 destinationRound;
        uint256 lastRoundSlippage;
        uint256 expectedAssets;
        uint256 remainingRecoup;
    }

    struct FlashRebalanceParams {
        IERC20 baseAsset;
        bool shutdown;
    }

    struct FlashResultInfo {
        uint256 tokenInBalanceBefore;
        uint256 tokenInBalanceAfter;
        bytes32 flashResult;
    }

    function processRebalance(
        AutopoolState storage $,
        ProcessRebalanceParams memory args,
        bytes calldata data,
        bytes memory hooks
    ) external returns (AutopoolDebt.AssetChanges memory updates) {
        validateRebalanceParams($, args);

        updates.startingIdle = $.assetBreakdown.totalIdle;
        updates.startingDebt = $.assetBreakdown.totalDebt;

        AutopoolDebt.IdleDebtUpdates memory result = flashRebalance($, args, data, hooks);

        updates.newIdle = updates.startingIdle + result.totalIdleIncrease - result.totalIdleDecrease;
        updates.newDebt = updates.startingDebt + result.totalDebtIncrease - result.totalDebtDecrease;

        $.assetBreakdown.totalIdle = updates.newIdle;
        $.assetBreakdown.totalDebt = updates.newDebt;
        $.assetBreakdown.totalDebtMin =
            $.assetBreakdown.totalDebtMin + result.totalMinDebtIncrease - result.totalMinDebtDecrease;
        $.assetBreakdown.totalDebtMax =
            $.assetBreakdown.totalDebtMax + result.totalMaxDebtIncrease - result.totalMaxDebtDecrease;
    }

    function flashRebalance(
        AutopoolState storage $,
        ProcessRebalanceParams memory args,
        bytes calldata data,
        bytes memory hooks
    ) private returns (IdleDebtUpdates memory result) {
        DestinationInfo storage destInfoOut = $.destinationInfo[args.rebalanceParams.destinationOut];
        DestinationInfo storage destInfoIn = $.destinationInfo[args.rebalanceParams.destinationIn];

        AutopoolStrategyHooks.executeHooks(
            hooks,
            uint256(HookFunctionIndex.onRebalanceStart),
            abi.encodeCall(IStrategyHook.onRebalanceStart, (args, msg.sender))
        );

        // Handle decrease (shares going "Out", cashing in shares and sending underlying back to swapper)
        // If the tokenOut is _asset we assume they are taking idle
        // which is already in the contract
        result = _handleRebalanceOut(
            AutopoolDebt.RebalanceOutParams({
                receiver: address(args.receiver),
                destinationOut: args.rebalanceParams.destinationOut,
                amountOut: args.rebalanceParams.amountOut,
                tokenOut: args.rebalanceParams.tokenOut,
                _baseAsset: args.baseAsset,
                _shutdown: $.shutdown
            }),
            destInfoOut
        );

        if (!result.pricesWereSafe) {
            revert InvalidPrices();
        }

        AutopoolStrategyHooks.executeHooks(
            hooks,
            uint256(HookFunctionIndex.onRebalanceOutAssetsReady),
            abi.encodeCall(IStrategyHook.onRebalanceOutAssetsReady, (args, msg.sender))
        );

        // Handle increase (shares coming "In", getting underlying from the swapper and trading for new shares)

        FlashResultInfo memory flashResultInfo;
        // get "before" counts
        flashResultInfo.tokenInBalanceBefore = IERC20(args.rebalanceParams.tokenIn).balanceOf(address(this));

        // Give control back to the solver so they can make use of the "out" assets
        // and get our "in" asset
        flashResultInfo.flashResult =
            args.receiver.onFlashLoan(msg.sender, args.rebalanceParams.tokenIn, args.rebalanceParams.amountIn, 0, data);

        // We assume the solver will send us the assets
        flashResultInfo.tokenInBalanceAfter = IERC20(args.rebalanceParams.tokenIn).balanceOf(address(this));

        // Make sure the call was successful and verify we have at least the assets we think
        // we were getting
        if (
            flashResultInfo.flashResult != keccak256("ERC3156FlashBorrower.onFlashLoan")
                || flashResultInfo.tokenInBalanceAfter
                    < flashResultInfo.tokenInBalanceBefore + args.rebalanceParams.amountIn
        ) {
            revert AutopilotErrors.FlashLoanFailed(args.rebalanceParams.tokenIn, args.rebalanceParams.amountIn);
        }

        AutopoolStrategyHooks.executeHooks(
            hooks,
            uint256(HookFunctionIndex.onRebalanceInAssetsReturned),
            abi.encodeCall(IStrategyHook.onRebalanceInAssetsReturned, (args, msg.sender))
        );

        if (args.rebalanceParams.tokenIn != address(args.baseAsset)) {
            IdleDebtUpdates memory inDebtResult = _handleRebalanceIn(
                destInfoIn,
                IDestinationVault(args.rebalanceParams.destinationIn),
                args.rebalanceParams.tokenIn,
                flashResultInfo.tokenInBalanceAfter
            );
            if (!inDebtResult.pricesWereSafe) {
                revert InvalidPrices();
            }
            result.totalDebtDecrease += inDebtResult.totalDebtDecrease;
            result.totalDebtIncrease += inDebtResult.totalDebtIncrease;
            result.totalMinDebtDecrease += inDebtResult.totalMinDebtDecrease;
            result.totalMinDebtIncrease += inDebtResult.totalMinDebtIncrease;
            result.totalMaxDebtDecrease += inDebtResult.totalMaxDebtDecrease;
            result.totalMaxDebtIncrease += inDebtResult.totalMaxDebtIncrease;
        } else {
            result.totalIdleIncrease += flashResultInfo.tokenInBalanceAfter - flashResultInfo.tokenInBalanceBefore;
        }

        AutopoolStrategyHooks.executeHooks(
            hooks,
            uint256(HookFunctionIndex.onRebalanceDestinationVaultUpdated),
            abi.encodeCall(IStrategyHook.onRebalanceDestinationVaultUpdated, (args, msg.sender))
        );
    }

    function validateRebalanceParams(AutopoolState storage $, ProcessRebalanceParams memory args) private view {
        address autopool = address(this);

        AutopilotErrors.verifyNotZero(args.rebalanceParams.destinationIn, "destinationIn");
        AutopilotErrors.verifyNotZero(args.rebalanceParams.destinationOut, "destinationOut");
        AutopilotErrors.verifyNotZero(args.rebalanceParams.tokenIn, "tokenIn");
        AutopilotErrors.verifyNotZero(args.rebalanceParams.tokenOut, "tokenOut");
        AutopilotErrors.verifyNotZero(args.rebalanceParams.amountIn, "amountIn");
        AutopilotErrors.verifyNotZero(args.rebalanceParams.amountOut, "amountOut");

        ensureDestinationRegistered(autopool, args.rebalanceParams.destinationIn);
        ensureDestinationRegistered(autopool, args.rebalanceParams.destinationOut);

        // when a vault is shutdown, rebalancing can only pull assets from destinations back to the vault
        if ($.shutdown && args.rebalanceParams.destinationIn != autopool) {
            revert OnlyRebalanceToIdleAvailable();
        }

        if (args.rebalanceParams.destinationIn == args.rebalanceParams.destinationOut) {
            revert RebalanceDestinationsMatch();
        }

        address baseAsset = address(args.baseAsset);

        // if the in/out destination is the AutopoolETH then the in/out token must be the baseAsset
        // if the in/out is not the AutopoolETH then the in/out token must match the destinations underlying token
        if (args.rebalanceParams.destinationIn == autopool) {
            if (args.rebalanceParams.tokenIn != baseAsset) {
                revert RebalanceDestinationUnderlyerMismatch(
                    args.rebalanceParams.destinationIn, args.rebalanceParams.tokenIn, baseAsset
                );
            }
        } else {
            IDestinationVault inDest = IDestinationVault(args.rebalanceParams.destinationIn);
            if (args.rebalanceParams.tokenIn != inDest.underlying()) {
                revert RebalanceDestinationUnderlyerMismatch(
                    args.rebalanceParams.destinationIn, inDest.underlying(), args.rebalanceParams.tokenIn
                );
            }
        }

        if (args.rebalanceParams.destinationOut == autopool) {
            if (args.rebalanceParams.tokenOut != baseAsset) {
                revert RebalanceDestinationUnderlyerMismatch(
                    args.rebalanceParams.destinationOut, args.rebalanceParams.tokenOut, baseAsset
                );
            }
            if (args.rebalanceParams.amountOut > $.assetBreakdown.totalIdle) {
                revert InsufficientAssets(args.rebalanceParams.tokenOut);
            }
        } else {
            IDestinationVault outDest = IDestinationVault(args.rebalanceParams.destinationOut);
            if (args.rebalanceParams.tokenOut != outDest.underlying()) {
                revert RebalanceDestinationUnderlyerMismatch(
                    args.rebalanceParams.destinationOut, outDest.underlying(), args.rebalanceParams.tokenOut
                );
            }
            if (args.rebalanceParams.amountOut > outDest.balanceOf(autopool)) {
                revert InsufficientAssets(args.rebalanceParams.tokenOut);
            }
        }
    }

    function ensureDestinationRegistered(address autopool, address dest) private view {
        if (dest == address(autopool)) return;
        if (
            !(
                IAutopool(autopool).isDestinationRegistered(dest)
                    || IAutopool(autopool).isDestinationQueuedForRemoval(dest)
            )
        ) {
            revert UnregisteredDestination(dest);
        }
    }

    /// @notice Perform deposit and debt info update for the "in" destination during a rebalance
    /// @dev This "in" function performs less validations than its "out" version
    /// @param dvIn The "in" destination vault
    /// @param tokenIn The underlyer for dvIn
    /// @param depositAmount The amount of tokenIn that will be deposited
    /// @return result Changes in debt values
    function _handleRebalanceIn(
        DestinationInfo storage destInfo,
        IDestinationVault dvIn,
        address tokenIn,
        uint256 depositAmount
    ) private returns (IdleDebtUpdates memory result) {
        LibAdapter._approve(IERC20(tokenIn), address(dvIn), depositAmount);

        // Snapshot our current shares so we know how much to back out
        uint256 originalShareBal = dvIn.balanceOf(address(this));

        // deposit to dv
        uint256 newShares = dvIn.depositUnderlying(depositAmount);

        // Update the debt info snapshot
        result = _recalculateDestInfo(destInfo, dvIn, originalShareBal, originalShareBal + newShares);
    }

    function oldestDebtReporting(
        AutopoolState storage $
    ) public view returns (uint256) {
        return $.destinationInfo[$.debtReportQueue.peekHead()].lastReport;
    }

    /**
     * @notice Perform withdraw and debt info update for the "out" destination during a rebalance
     * @dev This "out" function performs more validations and handles idle as opposed to "in" which does not
     *  debtDecrease The previous amount of debt destinationOut accounted for in totalDebt
     *  debtIncrease The current amount of debt destinationOut should account for in totalDebt
     *  idleDecrease Amount of baseAsset that was sent from the vault. > 0 only when tokenOut == baseAsset
     *  idleIncrease Amount of baseAsset that was claimed from Destination Vault
     * @param params Rebalance out params
     * @param destOutInfo The "out" destination vault info
     * @return assetChange debt and idle change data
     */
    function _handleRebalanceOut(
        RebalanceOutParams memory params,
        DestinationInfo storage destOutInfo
    ) private returns (IdleDebtUpdates memory assetChange) {
        // Handle decrease (shares going "Out", cashing in shares and sending underlying back to swapper)
        // If the tokenOut is _asset we assume they are taking idle
        // which is already in the contract

        if (params.tokenOut != address(params._baseAsset)) {
            IDestinationVault dvOut = IDestinationVault(params.destinationOut);

            // Snapshot our current shares so we know how much to back out
            uint256 originalShareBal = dvOut.balanceOf(address(this));

            // Burning our shares will claim any pending baseAsset
            // rewards and send them to us.
            // Get our starting balance
            uint256 beforeBaseAssetBal = params._baseAsset.balanceOf(address(this));

            // Withdraw underlying from the destination vault
            // Shares are sent directly to the flashRebalance receiver
            // slither-disable-next-line unused-return
            dvOut.withdrawUnderlying(params.amountOut, params.receiver);

            // Update the debt info snapshot
            assetChange =
                _recalculateDestInfo(destOutInfo, dvOut, originalShareBal, originalShareBal - params.amountOut);

            // Capture any rewards we may have claimed as part of withdrawing
            assetChange.totalIdleIncrease = params._baseAsset.balanceOf(address(this)) - beforeBaseAssetBal;
        } else {
            // Working with idle baseAsset which should be in the vault already
            // Just send it out
            IERC20(params.tokenOut).safeTransfer(params.receiver, params.amountOut);
            assetChange.totalIdleDecrease = params.amountOut;

            // We weren't dealing with any debt or pricing, just idle, so we can just mark
            // it as safe
            assetChange.pricesWereSafe = true;
        }
    }

    function recalculateDestInfo(
        DestinationInfo storage destInfo,
        IDestinationVault destVault,
        uint256 originalShares,
        uint256 currentShares
    ) external returns (IdleDebtUpdates memory result) {
        result = _recalculateDestInfo(destInfo, destVault, originalShares, currentShares);
    }

    /// @dev Will not revert on unsafe prices. Up to the caller.
    ///      Queries for latest price
    function _recalculateDestInfo(
        DestinationInfo storage destInfo,
        IDestinationVault destVault,
        uint256 originalShares,
        uint256 currentShares
    ) private returns (IdleDebtUpdates memory) {
        // Prices are per LP token and whether or not the prices are safe to use
        // If they aren't safe then just continue and we'll get it on the next go around

        (uint256 spotPrice, uint256 safePrice, bool isSpotSafe) = destVault.getRangePricesLP();

        // Calculate what we're backing out based on the original shares
        uint256 minPrice = spotPrice > safePrice ? safePrice : spotPrice;
        uint256 maxPrice = spotPrice > safePrice ? spotPrice : safePrice;

        return recalculateDestInfo(destInfo, destVault, originalShares, currentShares, minPrice, maxPrice, isSpotSafe);
    }

    /// @dev Will not revert on unsafe prices. Up to the caller.
    ///      Uses give price
    function recalculateDestInfo(
        DestinationInfo storage destInfo,
        IDestinationVault destVault,
        uint256 originalShares,
        uint256 currentShares,
        uint256 minPrice,
        uint256 maxPrice,
        bool isSpotSafe
    ) public returns (IdleDebtUpdates memory result) {
        // Figure out what to back out of our totalDebt number.
        // We could have had withdraws since the last snapshot which means our
        // cached currentDebt number should be decreased based on the remaining shares
        // totalDebt is decreased using the same proportion of shares method during withdrawals
        // so this should represent whatever is remaining.

        // If we previously had shares, calculate how much of our cached numbers
        // still remain as this will be deducted from the overall debt numbers
        // over time
        uint256 prevOwnedShares = destInfo.ownedShares;
        if (prevOwnedShares > 0) {
            result.totalDebtDecrease = (destInfo.cachedDebtValue * originalShares) / prevOwnedShares;
            result.totalMinDebtDecrease = (destInfo.cachedMinDebtValue * originalShares) / prevOwnedShares;
            result.totalMaxDebtDecrease = (destInfo.cachedMaxDebtValue * originalShares) / prevOwnedShares;
        }

        // The overall debt value is the mid point of min and max
        uint256 div = 10 ** destVault.decimals();
        uint256 newDebtValue = (minPrice * currentShares + maxPrice * currentShares) / (div * 2);

        result.pricesWereSafe = isSpotSafe;
        result.totalDebtIncrease = newDebtValue;
        result.totalMinDebtIncrease = minPrice * currentShares / div;
        result.totalMaxDebtIncrease = maxPrice * currentShares / div;

        // Save our current new values
        destInfo.cachedDebtValue = newDebtValue;
        destInfo.cachedMinDebtValue = result.totalMinDebtIncrease;
        destInfo.cachedMaxDebtValue = result.totalMaxDebtIncrease;
        destInfo.lastReport = block.timestamp;
        destInfo.ownedShares = currentShares;

        result.minPrice = minPrice;
        result.maxPrice = maxPrice;
    }

    /// @notice Retrieve totalAssets
    function totalAssetsTimeChecked(
        AutopoolState storage $,
        IAutopool.TotalAssetPurpose purpose
    ) external view returns (uint256 totalAssets) {
        if (isDebtStale($)) {
            revert StaleDebtReporting();
        }
        totalAssets = IAutopool(address(this)).totalAssets(purpose);
    }

    /// @notice Returns true is the oldest debt reporting is max our max age
    function isDebtStale(
        AutopoolState storage $
    ) public view returns (bool) {
        uint256 oldestReport = oldestDebtReporting($);

        // > 0 check for when we have no destinations
        return oldestReport > 0 && oldestReport + MAX_DEBT_REPORT_AGE_SECONDS < block.timestamp;
    }

    function updateDebtReporting(
        AutopoolState storage $,
        uint256 numToProcess,
        bytes memory hooks
    ) external returns (AssetChanges memory changes) {
        IdleDebtUpdates memory result;

        // Persist our change in idle and debt
        changes.startingIdle = $.assetBreakdown.totalIdle;
        changes.startingDebt = $.assetBreakdown.totalDebt;

        numToProcess = Math.min(numToProcess, $.debtReportQueue.sizeOf());

        for (uint256 i = 0; i < numToProcess; ++i) {
            IDestinationVault destVault = IDestinationVault($.debtReportQueue.popHead());

            // Get the reward value we've earned. DV rewards are always in terms of base asset
            // We track the gas used purely for off-chain stats purposes
            // Main rewarder on DV's store the earned and liquidated rewards
            // Extra rewarders are disabled at the DV level
            uint256 claimGasUsed = gasleft();
            uint256 beforeBaseAsset = IERC20(IAutopool(address(this)).asset()).balanceOf(address(this));
            IMainRewarder(destVault.rewarder()).getReward(address(this), address(this), false);
            uint256 claimedRewardValue =
                IERC20(IAutopool(address(this)).asset()).balanceOf(address(this)) - beforeBaseAsset;
            result.totalIdleIncrease += claimedRewardValue;

            // Recalculate the debt info figuring out the change in
            // total debt value we can roll up later
            uint256 currentShareBalance = destVault.balanceOf(address(this));

            AutopoolDebt.IdleDebtUpdates memory debtResult = _recalculateDestInfo(
                $.destinationInfo[address(destVault)], destVault, currentShareBalance, currentShareBalance
            );

            result.totalDebtDecrease += debtResult.totalDebtDecrease;
            result.totalDebtIncrease += debtResult.totalDebtIncrease;
            result.totalMinDebtDecrease += debtResult.totalMinDebtDecrease;
            result.totalMinDebtIncrease += debtResult.totalMinDebtIncrease;
            result.totalMaxDebtDecrease += debtResult.totalMaxDebtDecrease;
            result.totalMaxDebtIncrease += debtResult.totalMaxDebtIncrease;

            // If we no longer have shares, then there's no reason to continue reporting on the destination.
            // The strategy will only call for the info if its moving "out" of the destination
            // and that will only happen if we have shares.
            // A rebalance where we move "in" to the position will refresh the data at that time
            if (currentShareBalance > 0) {
                $.debtReportQueue.addToTail(address(destVault));
            }

            claimGasUsed -= gasleft();

            emit DestinationDebtReporting(address(destVault), debtResult, claimedRewardValue, claimGasUsed);

            AutopoolStrategyHooks.executeHooks(
                hooks,
                uint256(HookFunctionIndex.onDestinationDebtReport),
                abi.encodeCall(IStrategyHook.onDestinationDebtReport, (address(destVault), debtResult))
            );
        }

        changes.newIdle = changes.startingIdle + result.totalIdleIncrease;
        changes.newDebt = changes.startingDebt + result.totalDebtIncrease - result.totalDebtDecrease;

        $.assetBreakdown.totalIdle = changes.newIdle;
        $.assetBreakdown.totalDebt = changes.newDebt;
        $.assetBreakdown.totalDebtMin =
            $.assetBreakdown.totalDebtMin + result.totalMinDebtIncrease - result.totalMinDebtDecrease;
        $.assetBreakdown.totalDebtMax =
            $.assetBreakdown.totalDebtMax + result.totalMaxDebtIncrease - result.totalMaxDebtDecrease;
    }

    function _initiateWithdrawInfo(
        uint256 assets,
        IAutopool.AssetBreakdown storage assetBreakdown
    ) private view returns (WithdrawInfo memory) {
        uint256 idle = assetBreakdown.totalIdle;
        WithdrawInfo memory info = WithdrawInfo({
            currentIdle: idle,
            // If idle can cover the full amount, then we want to pull all assets from there
            // Otherwise, we want to pull from the market and only get idle if we exhaust the market
            assetsFromIdle: assets > idle ? 0 : assets,
            totalAssetsToPull: 0,
            assetsToPull: 0,
            assetsPulled: 0,
            idleIncrease: 0,
            debtDecrease: 0,
            debtMinDecrease: 0,
            debtMaxDecrease: 0,
            totalMinDebt: assetBreakdown.totalDebtMin,
            destinationRound: 0,
            lastRoundSlippage: 0,
            expectedAssets: 0,
            remainingRecoup: 0
        });

        info.totalAssetsToPull = assets - info.assetsFromIdle;

        // This var we use to track our progress later
        info.assetsToPull = assets - info.assetsFromIdle;

        // Idle + minDebt is the maximum amount of assets/debt we could burn during a withdraw.
        // If the user is request more than that (like during a withdraw) we can just revert
        // early without trying
        if (info.totalAssetsToPull > info.currentIdle + info.totalMinDebt) {
            revert TooFewAssets(assets, info.currentIdle + info.totalMinDebt);
        }

        return info;
    }

    function _withdrawAssets(
        WithdrawInfo memory info,
        mapping(address => AutopoolDebt.DestinationInfo) storage destinationInfo,
        IDestinationVault destVault,
        uint256 dvSharesToBurn
    ) internal returns (WithdrawInfo memory, uint256 pulledAssets, uint256 debtValueBurned) {
        if (dvSharesToBurn > 0) {
            address[] memory tokensBurned;
            uint256[] memory amountsBurned;

            // Destination Vaults always burn the exact amount we instruct them to
            (pulledAssets, tokensBurned, amountsBurned) = destVault.withdrawBaseAsset(dvSharesToBurn, address(this));

            // Calculate the totalDebt we'll need to remove based on the shares we're burning
            // We're rounding up here so take care when actually applying to totalDebt
            debtValueBurned = destinationInfo[address(destVault)].cachedMinDebtValue.mulDiv(
                dvSharesToBurn, destinationInfo[address(destVault)].ownedShares, Math.Rounding.Up
            );
            info.debtMinDecrease += debtValueBurned;

            info.debtDecrease += destinationInfo[address(destVault)].cachedDebtValue.mulDiv(
                dvSharesToBurn, destinationInfo[address(destVault)].ownedShares, Math.Rounding.Up
            );

            uint256 maxDebtBurned = destinationInfo[address(destVault)].cachedMaxDebtValue.mulDiv(
                dvSharesToBurn, destinationInfo[address(destVault)].ownedShares, Math.Rounding.Up
            );
            info.debtMaxDecrease += maxDebtBurned;

            console.log("getting totalValueBurned");
            console.log("baseAsset", destVault.baseAsset());
            console.log("getting 2");

            // See if we received a reasonable amount of the base asset back based on the value
            // of the tokens that were burned.
            uint256 totalValueBurned;
            {
                uint256 tokenLen = tokensBurned.length;
                IRootPriceOracle rootPriceOracle = ISystemRegistry(destVault.getSystemRegistry()).rootPriceOracle();
                for (uint256 i = 0; i < tokenLen;) {
                    totalValueBurned += amountsBurned[i]
                        * rootPriceOracle.getPriceInQuote(tokensBurned[i], destVault.baseAsset())
                        / (10 ** IERC20(tokensBurned[i]).decimals());
                    unchecked {
                        ++i;
                    }
                }
            }
            console.log("got totalValueBurned");
            // How much, if any, should be dropping into idle?
            // Anything pulled over debtValueBurned goes to idle, user can't get more than we think its worth.
            // However, if we pulled less than the current value of the tokens we burned, so long as
            // that value is greater than debt min, we need to recoup that as well and put it into idle

            uint256 amountToRecoup;
            if (totalValueBurned > debtValueBurned) {
                // The shares we burned are worth more than we'll be recouping from the debt burn
                // the difference we still need to get
                amountToRecoup = totalValueBurned - debtValueBurned;

                uint256 maxCreditBps = destVault.recoupMaxCredit();
                uint256 gapCredit = maxDebtBurned - debtValueBurned;
                uint256 credit = Math.min(gapCredit, debtValueBurned * maxCreditBps / 10_000);

                if (credit > amountToRecoup) {
                    amountToRecoup = 0;
                } else {
                    amountToRecoup -= credit;
                }
            }
            console.log("getting recoupMaxCredit");
            // This is done regardless of whether we were under valued. User can still only
            // get what we've valued it at.
            if (pulledAssets > debtValueBurned) {
                uint256 overDebtValue = pulledAssets - debtValueBurned;
                info.idleIncrease += overDebtValue;
                pulledAssets -= overDebtValue;

                // Since this is going to idle it goes to satisfy the recoup as well
                if (amountToRecoup > 0) {
                    if (amountToRecoup > overDebtValue) {
                        amountToRecoup -= overDebtValue;
                    } else {
                        amountToRecoup = 0;
                    }
                }
            }

            // If we still have a value we need to recoup it means that the debt range credit
            // as well as what was pulled over the min debt value wasn't enough to cover
            // the under valued burn. Now we have to try and take it from what is going back
            // to the user
            if (amountToRecoup > 0) {
                if (amountToRecoup > pulledAssets) {
                    // Recoup is more than we pulled so we'll have some recoup left over
                    amountToRecoup -= pulledAssets;

                    // Everything that was pulled goes to idle
                    info.idleIncrease += pulledAssets;
                    pulledAssets = 0;

                    // We'll have to try and get the remaining amount from another destination
                    info.remainingRecoup += amountToRecoup;
                } else {
                    // We pulled enough assets to cover the recoup
                    pulledAssets -= amountToRecoup;

                    // Ensure the recoup goes to idle
                    info.idleIncrease += amountToRecoup;
                }
            }
        }

        return (info, pulledAssets, debtValueBurned);
    }

    function _processDestinationForRedeem(
        AutopoolState storage $,
        WithdrawInfo memory info,
        IDestinationVault destVault
    ) private returns (bool) {
        uint256 dvShares = destVault.balanceOf(address(this));

        uint256 dvSharesToBurn = dvShares;
        {
            // Valuing these shares higher, rounding up, will result in us burning less of them
            // in the event we don't burn all of them. Good thing.
            uint256 dvSharesValue = $.destinationInfo[address(destVault)].cachedMinDebtValue.mulDiv(
                dvSharesToBurn, $.destinationInfo[address(destVault)].ownedShares, Math.Rounding.Up
            );

            // If the dv shares we own are worth more than we need, limit the shares to burn
            // Any extra we get will be dropped into idle
            if (dvSharesValue > info.assetsToPull) {
                uint256 limitedShares = (dvSharesToBurn * info.assetsToPull) / dvSharesValue;

                // Final set for the actual shares we'll burn later
                dvSharesToBurn = limitedShares;
            }
        }

        uint256 pulledAssets;
        uint256 debtValueBurned;
        // Get the base asset back from the Destination. Also performs a check that we aren't receiving
        // poor execution on our swaps based on safe prices
        // slither-disable-next-line unused-return
        (info, pulledAssets, debtValueBurned) = _withdrawAssets(info, $.destinationInfo, destVault, dvSharesToBurn);

        // If we've exhausted all shares we can remove the destination from the withdrawal queue
        // We need to leave it in the debt report queue though so that our destination specific
        // debt tracking values can be updated
        if (dvShares == dvSharesToBurn) {
            $.withdrawalQueue.popAddress(address(destVault));
        }

        info.assetsPulled += pulledAssets;

        // Any deficiency in the amount we received is slippage.
        // There is a round up on debtValueBurned so just making sure it never under flows here
        // _withdrawAssets ensures that pulledAssets is always lte debtValueBurned and we always
        // want to debit the max so we just use debtValueBurned
        if (debtValueBurned > info.assetsToPull) {
            info.assetsToPull = 0;
        } else {
            info.assetsToPull -= debtValueBurned;
        }

        // We either have enough assets, or we've burned the max debt we're allowed
        if (info.assetsToPull == 0) {
            return true;
        }

        // If we didn't exhaust all of the shares from the destination it means we
        // assume we will get everything we need from there and everything else is slippage
        if (dvShares != dvSharesToBurn) {
            info.assetsToPull = 0;
            return true;
        }

        return false;
    }

    function _postDestinationsRedeem(
        AutopoolState storage $,
        WithdrawInfo memory info,
        uint256 applicableTotalAssets,
        bool exhaustedDestinations
    ) private returns (uint256 actualAssets, uint256 actualShares, uint256 debtBurned) {
        // See if we can pull the remaining recoup from other destinations we may have pulled from
        if (info.remainingRecoup > 0) {
            if (info.remainingRecoup > info.assetsPulled) {
                info.remainingRecoup -= info.assetsPulled;
                info.idleIncrease += info.assetsPulled;
                info.assetsPulled = 0;
            } else {
                info.assetsPulled -= info.remainingRecoup;
                info.idleIncrease += info.remainingRecoup;
                info.remainingRecoup = 0;
            }
        }

        // We didn't get enough assets from the debt pull
        // See if we can get the rest from idle
        if (info.assetsToPull > 0 && info.currentIdle > 0 && exhaustedDestinations) {
            if (info.assetsToPull < info.currentIdle) {
                info.assetsFromIdle = info.assetsToPull;
            } else {
                info.assetsFromIdle = info.currentIdle;
            }
        }

        debtBurned = info.assetsFromIdle + info.debtMinDecrease;
        actualAssets = info.assetsFromIdle + info.assetsPulled;

        // If we took from idle, and we have remaining assets to recoup
        // we need to put some back in idle
        if (info.remainingRecoup > 0 && info.assetsFromIdle > 0) {
            // We only need to do this if the idle assets can cover the remaining recoup fully because
            // we'll be reverting otherwise
            if (info.assetsFromIdle >= info.remainingRecoup) {
                // We still need to charge for the recoup so we're going to leave it in debtBurned
                // but we'll take it back out of actualAssets so it stays in idle. We need to lower
                // assetsFromIdle as well so that the final numbers get updated too
                actualAssets -= info.remainingRecoup;
                info.assetsFromIdle -= info.remainingRecoup;
                info.remainingRecoup = 0;
            } else {
                // Just updating this number so we get an accurate value in the revert below
                info.remainingRecoup -= info.assetsFromIdle;
            }
        }

        // We took everything we could and still can't cover, time to revert
        if (info.remainingRecoup > 0) {
            revert PositivePriceRecoupNotCovered(info.remainingRecoup);
        }

        actualShares = IAutopool(address(this)).convertToShares(
            debtBurned, applicableTotalAssets, IAutopool(address(this)).totalSupply(), Math.Rounding.Up
        );

        _updateAssetBreakdown($.assetBreakdown, info);
    }

    function redeemDestinations(
        AutopoolState storage $,
        uint256 assets,
        uint256 applicableTotalAssets,
        address[] memory fromDestinations
    ) public returns (uint256 actualAssets, uint256 actualShares, uint256 debtBurned) {
        WithdrawInfo memory info = _initiateWithdrawInfo(assets, $.assetBreakdown);

        uint256 fromDestLen = fromDestinations.length;
        bool exhaustedDestinations = false;
        uint256 initialQueueSize = $.withdrawalQueue.sizeOf();

        // Important considerations for the loop here:
        // - Should ensure we don't process duplicates. Between the existence
        //     check below, and _processDestinationForRedeem()
        //     removing spent destinations from the queue, and also that fn causing a loop break out when we don't
        //     spend them all, that should be covered.
        // - Should ensure we don't let the caller bypass pulling from market by passing in no destinations
        //     or an insufficient amount of destinations. The rule of pulling from market first when idle can't cover
        //     still holds here. For any remaining amount of `assetsToPull` to be retrieved from idle
        //     destinations must be exhausted. The queue size checks should cover there.

        for (uint256 ix = 0; ix < fromDestLen && info.assetsToPull > 0; ++ix) {
            address destVault = fromDestinations[ix];
            if (!$.withdrawalQueue.addressExists(destVault)) {
                revert IAutopool.InvalidDestination(destVault);
            }

            bool complete = _processDestinationForRedeem($, info, IDestinationVault(destVault));
            if (complete) {
                break;
            }
        }

        exhaustedDestinations = initialQueueSize > 0 && $.withdrawalQueue.sizeOf() == 0;

        (actualAssets, actualShares, debtBurned) =
            _postDestinationsRedeem($, info, applicableTotalAssets, exhaustedDestinations);
    }

    /// @notice Perform a removal of assets via the redeem path where the shares are the limiting factor.
    /// This means we break out whenever we reach either `assets` retrieved or debt value equivalent to `assets` burned
    function redeem(
        AutopoolState storage $,
        uint256 assets,
        uint256 applicableTotalAssets
    ) public returns (uint256 actualAssets, uint256 actualShares, uint256 debtBurned) {
        WithdrawInfo memory info = _initiateWithdrawInfo(assets, $.assetBreakdown);

        // If not enough funds in idle, then pull what we need from destinations
        bool exhaustedDestinations = false;
        while (info.assetsToPull > 0) {
            IDestinationVault destVault = IDestinationVault($.withdrawalQueue.peekHead());
            if (address(destVault) == address(0)) {
                exhaustedDestinations = true;
                break;
            }

            bool complete = _processDestinationForRedeem($, info, destVault);
            if (complete) {
                break;
            }
        }

        (actualAssets, actualShares, debtBurned) =
            _postDestinationsRedeem($, info, applicableTotalAssets, exhaustedDestinations);
    }

    /// @notice Perform a proportional redemption from all destination vaults based on their debt share
    function redeemProrata(
        AutopoolState storage $,
        uint256 shares
    ) public returns (uint256 actualAssets, uint256 actualShares, uint256 debtBurned) {
        uint256 totalSupply = $.token.totalSupply;
        WithdrawInfo memory info;
        info.currentIdle = $.assetBreakdown.totalIdle;
        info.assetsFromIdle = Math.mulDiv($.assetBreakdown.totalIdle, shares, totalSupply, Math.Rounding.Down);
        info.totalMinDebt = $.assetBreakdown.totalDebtMin;

        address currentDest = $.withdrawalQueue.peekHead();

        while (currentDest != address(0)) {
            uint256 dvShares = IDestinationVault(currentDest).balanceOf(address(this));
            uint256 dvSharesToBurn = Math.mulDiv(shares, dvShares, totalSupply, Math.Rounding.Down);

            if (dvSharesToBurn == 0) {
                currentDest = $.withdrawalQueue.getAdjacent(currentDest, true);
                continue;
            }

            (uint256 pulledAssets,,) = IDestinationVault(currentDest).withdrawBaseAsset(dvSharesToBurn, address(this));
            info.assetsPulled += pulledAssets;

            info.debtMinDecrease += $.destinationInfo[address(currentDest)].cachedMinDebtValue.mulDiv(
                dvSharesToBurn, $.destinationInfo[address(currentDest)].ownedShares, Math.Rounding.Up
            );
            info.debtDecrease += $.destinationInfo[address(currentDest)].cachedDebtValue.mulDiv(
                dvSharesToBurn, $.destinationInfo[address(currentDest)].ownedShares, Math.Rounding.Up
            );
            info.debtMaxDecrease += $.destinationInfo[address(currentDest)].cachedMaxDebtValue.mulDiv(
                dvSharesToBurn, $.destinationInfo[address(currentDest)].ownedShares, Math.Rounding.Up
            );

            address popDestination = currentDest;

            currentDest = $.withdrawalQueue.getAdjacent(currentDest, true);

            if (dvShares == dvSharesToBurn) {
                $.withdrawalQueue.popAddress(address(popDestination));
            }
        }

        debtBurned = info.assetsFromIdle + info.debtMinDecrease;
        actualAssets = info.assetsFromIdle + info.assetsPulled;

        _updateAssetBreakdown($.assetBreakdown, info);

        return (actualAssets, shares, debtBurned);
    }

    /**
     * @notice Function to complete a withdrawal or redeem.  This runs after shares to be burned and assets to be
     *    transferred are calculated.
     * @param $ Storage related to the calling Autopool
     * @param assets Amount of assets to be transferred to receiver.
     * @param shares Amount of shares to be burned from owner.
     * @param owner Owner of shares, user to burn shares from.
     * @param receiver The receiver of the baseAsset.
     * @param baseAsset Base asset of the Autopool.
     */
    function completeWithdrawal(
        AutopoolState storage $,
        uint256 assets,
        uint256 shares,
        address owner,
        address receiver,
        IERC20 baseAsset
    ) external {
        if (msg.sender != owner) {
            uint256 allowed = IAutopool(address(this)).allowance(owner, msg.sender);
            if (allowed != type(uint256).max) {
                if (shares > allowed) revert AmountExceedsAllowance(shares, allowed);

                unchecked {
                    $.token.approve(owner, msg.sender, allowed - shares);
                }
            }
        }

        $.token.burn(owner, shares);

        uint256 ts = IAutopool(address(this)).totalSupply();

        emit Withdraw(msg.sender, receiver, owner, assets, shares);

        emit Nav($.assetBreakdown.totalIdle, $.assetBreakdown.totalDebt, ts);

        baseAsset.safeTransfer(receiver, assets);
    }

    /**
     * @notice A helper function to get estimates of what would happen on a withdraw or redeem.
     * @dev Reverts all changing state.
     * @param $ Storage related to the calling Autopool.
     * @param assets Assets to be withdrawn or redeemed.
     * @param applicableTotalAssets Operation dependent assets in the Autopool.
     * @param functionCallEncoded Abi encoded function signature for recursive call.
     * @return assetsAmount Preview of amount of assets to send to receiver.
     * @return sharesAmount Preview of amount of assets to burn from owner.
     */
    function preview(
        AutopoolState storage $,
        uint256 assets,
        uint256 applicableTotalAssets,
        bytes memory functionCallEncoded
    ) external returns (uint256 assetsAmount, uint256 sharesAmount) {
        if (msg.sender != address(this)) {
            // Perform a recursive call the function in `funcCallEncoded`.  This will result in a call back to
            // the Autopool, and then this function. The intention is to reach the "else" block in this function.
            // solhint-disable avoid-low-level-calls
            // slither-disable-next-line missing-zero-check,low-level-calls
            (bool success, bytes memory returnData) = address(this).call(functionCallEncoded);
            // solhint-enable avoid-low-level-calls

            // If the recursive call is successful, it means an unintended code path was taken.
            if (success) {
                revert AutopilotErrors.UnreachableError();
            }

            bytes4 sharesAmountSig = bytes4(keccak256("SharesAndAssetsReceived(uint256,uint256)"));

            // Extract the error signature (first 4 bytes) from the revert reason.
            bytes4 errorSignature;
            // solhint-disable no-inline-assembly
            assembly {
                errorSignature := mload(add(returnData, 0x20))
            }

            // If the error matches the expected signature, extract the amount from the revert reason and return.
            if (errorSignature == sharesAmountSig) {
                // Extract subsequent bytes for uint256.
                assembly {
                    assetsAmount := mload(add(returnData, 0x24))
                    sharesAmount := mload(add(returnData, 0x44))
                }
            } else {
                // If the error is not the expected one, forward the original revert reason.
                assembly {
                    revert(add(32, returnData), mload(returnData))
                }
            }
            // solhint-enable no-inline-assembly
        }
        // This branch is taken during the recursive call.
        else {
            // Perform the actual redeem logic to compute the amount. This will be reverted to
            // simulate the action.
            (uint256 previewAssets, uint256 previewShares,) = redeem($, assets, applicableTotalAssets);

            // Revert with the computed amount as an error.
            revert SharesAndAssetsReceived(previewAssets, previewShares);
        }
    }

    function _updateAssetBreakdown(IAutopool.AssetBreakdown storage breakdown, WithdrawInfo memory info) private {
        // Subtract what's taken out of idle from totalIdle
        // We may also have some increase to account for it we over pulled
        // or received better execution than we were anticipating
        // slither-disable-next-line events-maths
        breakdown.totalIdle = info.currentIdle + info.idleIncrease - info.assetsFromIdle;

        // Save off our various debt numbers
        if (info.debtDecrease > breakdown.totalDebt) {
            breakdown.totalDebt = 0;
        } else {
            breakdown.totalDebt -= info.debtDecrease;
        }

        if (info.debtMinDecrease > info.totalMinDebt) {
            breakdown.totalDebtMin = 0;
        } else {
            breakdown.totalDebtMin -= info.debtMinDecrease;
        }

        if (info.debtMaxDecrease > breakdown.totalDebtMax) {
            breakdown.totalDebtMax = 0;
        } else {
            breakdown.totalDebtMax -= info.debtMaxDecrease;
        }
    }
}
