// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity ^0.8.10;

import { IGPv2Settlement } from "./IGPv2Settlement.sol";
import { ERC20 } from "solady/tokens/ERC20.sol";
import { IPerpsOracle } from "./IPerpsOracle.sol";
import { IPriceOracle } from "./IPriceOracle.sol";
import { ISwapper } from "./ISwapper.sol";
import { ITransferPolicy } from "./ITransferPolicy.sol";

/// @notice Interface capturing functions uniquely implemented in the VaultExtension contract.
/// Inherited by the combined IVault interface.
interface IVaultExtension {
    // ──────────────────────────────────────────────────────────────────────
    //  Position getters
    // ──────────────────────────────────────────────────────────────────────

    function getPositions() external view returns (bytes32[] memory);
    function getPositionAt(
        uint256 index
    ) external view returns (bytes32);
    function positionsLength() external view returns (uint256);
    function hasPosition(
        bytes32 positionKey
    ) external view returns (bool);
    function positionValue(
        bytes32 positionId
    ) external view returns (uint256);
    function totalPositionsValue() external view returns (uint256);

    // ──────────────────────────────────────────────────────────────────────
    //  Timelock admin
    // ──────────────────────────────────────────────────────────────────────

    /// @notice Queues an `action` to be executed after the timelock delay.
    /// @dev Callable only by the contract owner.
    function queueTimelockedAction(
        bytes calldata action
    ) external;

    /// @notice Cancels an `action` that was previously queued via `_queueTimelockedAction()`.
    /// @dev An `action` can be canceled whether or not its timelock delay has elapsed.
    /// @dev Callable only by the contract owner.
    function cancelTimelockedAction(
        bytes calldata action
    ) external;

    /// @notice Decreases the timelock delay for the function corresponding to `functionSelector`, setting it to
    /// `newDelay`.
    /// @dev Callable only by the contract owner.
    /// @dev This will revert if the `newDelay` is not less than the existing delay.
    function decreaseTimelockDelay(
        bytes4 functionSelector,
        uint256 newDelay
    ) external;

    /// @notice Increases the timelock delay for the function corresponding to `functionSelector`, setting it to
    /// `newDelay`.
    /// @dev Callable only by the contract owner.
    /// @dev This will revert if the `newDelay` is not greater than the existing delay.
    function increaseTimelockDelay(
        bytes4 functionSelector,
        uint256 newDelay
    ) external;

    // ──────────────────────────────────────────────────────────────────────
    //  Settings & role admin
    // ──────────────────────────────────────────────────────────────────────

    function setAllocator(
        address account,
        bool newStatus
    ) external;
    function setPauser(
        address account,
        bool newStatus
    ) external;
    function setTimelockCanceler(
        address account,
        bool newStatus
    ) external;
    function setDepositAmountLimits(
        uint128 minAmount,
        uint128 maxAmount
    ) external;
    function setRedemptionAmountLimits(
        uint128 minAmount,
        uint128 maxAmount
    ) external;
    function setSwapper(
        ISwapper _swapper
    ) external;
    function setPerpsOracle(
        IPerpsOracle oracle
    ) external;
    function setPriceOracle(
        IPriceOracle oracle
    ) external;
    function setPerpsWallet(
        address wallet
    ) external;
    function setPerformanceFeeRecipient(
        address recipient
    ) external;
    function setManagementFeeRecipient(
        address recipient
    ) external;
    function setTransferPolicy(
        ITransferPolicy policy
    ) external;
    function setIntentsRouter(
        address router
    ) external;
    /// @notice Approves the intents router with ERC20 approval, for use with intents based swaps.
    /// If integrating with CoWSwap, this should be GPv2VaultRelay and NOT GPv2Settlement.
    function approveIntentsRouter(
        ERC20 token,
        uint256 amount
    ) external;
    /// @notice Attempts to cancel intents orders on-chain.
    /// However there is a possibility of race condition between the CoWSwap solvers and the cancelation order.
    /// The solver might fill the order before the cancelation tx is confirmed, resulting in a failed cancelation.
    function cancelIntentsOrders(
        IGPv2Settlement settler,
        bytes[] calldata orderUids
    ) external;
    function setPerformanceFee(
        uint256 newPerformanceFeeE6
    ) external;
    function setEpochLength(
        uint256 newEpochLengthSeconds
    ) external;
    function setManagementFee(
        uint256 newManagementFeeAccrualBaseE18
    ) external;

    // ──────────────────────────────────────────────────────────────────────
    //  Pause admin
    // ──────────────────────────────────────────────────────────────────────

    function pause(
        uint256 newPausedStatus
    ) external;
    function pauseAll() external;
    function unpause(
        uint256 newPausedStatus
    ) external;
    function unpauseAll() external;

    // ──────────────────────────────────────────────────────────────────────
    //  Factory-called
    // ──────────────────────────────────────────────────────────────────────

    function setPerformanceFeeProtocolFractionE6(
        uint24 fraction
    ) external;
    function setManagementFeeProtocolFractionE6(
        uint24 fraction
    ) external;

    // ──────────────────────────────────────────────────────────────────────
    //  ERC1271
    // ──────────────────────────────────────────────────────────────────────

    function isValidSignature(
        bytes32 orderDigest,
        bytes calldata signature
    ) external view returns (bytes4);

    // ──────────────────────────────────────────────────────────────────────
    //  Swapping & external calls
    // ──────────────────────────────────────────────────────────────────────

    function swap(
        ERC20 assetIn,
        uint256 amountIn,
        ERC20 assetOut,
        bytes calldata params,
        uint256 maxLossFromSwap
    ) external;
    function performRestrictedExternalCall(
        address target,
        bytes calldata callContents
    ) external returns (bytes memory);
}
