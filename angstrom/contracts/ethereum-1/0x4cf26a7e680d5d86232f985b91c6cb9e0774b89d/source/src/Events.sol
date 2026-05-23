// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.10;

import { IPerpsOracle } from "./interfaces/IPerpsOracle.sol";
import { IPriceOracle } from "./interfaces/IPriceOracle.sol";
import { ITransferPolicy } from "./interfaces/ITransferPolicy.sol";
import { RequestStatus } from "./types/RequestStatus.sol";
import { DepositId } from "./types/DepositId.sol";
import { RedemptionId } from "./types/RedemptionId.sol";

abstract contract Events {
    // AsyncDeposit Events
    event DepositRequested(
        DepositId indexed id, address indexed depositor, uint256 amount, uint256 minSharesOut, uint256 referralId
    );
    event DepositFulfilled(DepositId indexed id, address indexed depositor, uint256 amount, uint256 shares);
    event DepositNotFulfilled(DepositId indexed id, RequestStatus status);
    event DepositRequestCanceled(DepositId indexed id, address indexed depositor);
    event DepositLimitsSet(uint256 newMinDepositAmount, uint256 newMaxDepositAmount);
    // Auth Events
    event AllocatorStatusModified(address indexed account, bool newStatus);
    event PauserStatusModified(address indexed account, bool newStatus);
    event TimelockCancelerStatusModified(address indexed account, bool newStatus);
    // Pausable Events
    /// @notice Emitted when the `caller` causes the `pausedStatus` to be set to `newPausedStatus`
    /// @dev This single event captures both pausing and unpausing actions.
    event PausedStatusModified(address indexed caller, uint256 newPausedStatus);
    // PerformanceFees Events
    event NewEpochStarted(uint256 epochEndTimestamp);
    event PerformanceFeesDistributed(address indexed performanceFeeRecipient, uint256 shares);
    event ManagementFeesDistributed(address indexed managementFeeRecipient, uint256 shares);
    event ProvisionalSharesModified(int256 changeInProvisionalShares);
    event PerformanceFeeDebtModified(int256 changeInPerformanceFeeDebt);
    event ExchangeRateE36Measured(uint256 exchangeRateE36);
    event EpochLengthSet(uint256 newEpochLength);
    event PerformanceFeeSet(uint256 newPerformanceFeeE6);
    event ManagementFeeSet(uint256 newManagementFeeAccrualBaseE18);
    event PerformanceFeeRecipientSet(address indexed newFeeRecipient);
    event ManagementFeeRecipientSet(address indexed newFeeRecipient);
    event PerformanceFeeProtocolFractionE6Set(uint24 newPerformanceFeeProtocolFractionE6);
    event ManagementFeeProtocolFractionE6Set(uint24 newManagementFeeProtocolFractionE6);
    // AsyncRedemption Events
    event RedemptionRequested(RedemptionId indexed id, address indexed redeemer, uint256 shares, uint256 minAssetOut);
    event RedemptionFulfilled(RedemptionId indexed id, address indexed redeemer, uint256 shares, uint256 amount);
    event RedemptionNotFulfilled(RedemptionId indexed id, RequestStatus status);
    event RedemptionRequestCanceled(RedemptionId indexed id, address indexed redeemer);
    event RedemptionLimitsSet(uint256 newMinRedemptionShares, uint256 newMaxRedemptionShares);
    event VestibuleSet(address indexed vestibule);
    // Timelocked Events
    event ActionQueued(bytes4 indexed functionSelector, bytes action, uint256 executableAt);
    event ActionExecuted(bytes4 indexed functionSelector, bytes action);
    event ActionCancelled(bytes4 indexed functionSelector, bytes action);
    event TimelockDelayModified(bytes4 indexed functionSelector, uint256 newDelay);
    // Setter Events
    event PerpsOracleSet(IPerpsOracle indexed oracle);
    event PriceOracleSet(IPriceOracle indexed oracle);
    event TransferPolicySet(ITransferPolicy indexed transferPolicy);
    event PerpsWalletSet(address indexed wallet);
    event IntentsRouterSet(address indexed router);
    event PerpsCollateralAdjusted(int256 delta, address indexed to);
    // Swapping Events
    event SwapLossRealized(uint256 lossSizeInAssets);
    // Oracle Events
    event OracleUpdaterStatusModified(address indexed account, bool newStatus);
}
