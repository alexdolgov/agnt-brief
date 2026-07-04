// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.23;

import {Status} from "../../SaleStruct.sol";

/**
 * @title IRestrictedWritableInternal
 * @notice Defines event and error used in {RestrictedWritableInternal} & {RestrictedWritable}.
 */
interface IRestrictedWritableInternal {
    // @notice Thrown when `phaseIds` and `phases` arrays have different lengths.
    error RestrictedWritableInternal_DifferentArraysLength();
    // @notice Thrown when a phase {IGOStruct.Phase} is empty is {RestrictedWritableInternal._setPhases}.
    error RestrictedWritableInternal_EmptyPhase();

    //////////////////////////// THROWN ON Sale INITIALIZATION ////////////////////////////
    error RestrictedWritable_Init_OwnerIsZeroAddr();
    error RestrictedWritable_Init_PaymentTokenIsZeroAddr();
    error RestrictedWritable_Init_Permit2IsZeroAddr();

    //////////////////////////// THROWN AT ANY TIME ////////////////////////////
    /// @dev Thrown when merkle root is equal to bytes32(0).
    error RestrictedWritable_EmptyMerkleRoot();
    // @notice Thrown when a phase {IGOStruct.Phase} is empty is {RestrictedWritable.updateSetPhase}.
    error RestrictedWritable_EmptyPhase();
    error RestrictedWritable_EndInPast();
    /// @dev Thrown when a new phase is created with a status different from `NOT_STARTED`.
    error RestrictedWritable_NewPhaseStatus();
    /// @dev Thrown when the phase status is equal to `avoid`.
    error RestrictedWritable_PhaseMatched(Status avoid, Status phaseStatus);
    error RestrictedWritable_PhaseMaxCapIsZero();
    error RestrictedWritable_PhaseMerkleRootIsZero();
    /// @dev Thrown when the phase status is not equal to the one expected.
    error RestrictedWritable_PhaseNotMatched(Status expected, Status current);
    error RestrictedWritable_PhaseStartGteEnd();
    error RestrictedWritable_ReceiverIsZeroAddr();
    /// @dev Thrown when the sale status is equal to `avoid`.
    error RestrictedWritable_SaleMatched(Status avoid, Status saleStatus);
    /// @dev Thrown when the sale status is not equal to the one expected.
    error RestrictedWritable_SaleNotMatched(Status expected, Status current);
    error RestrictedWritable_StartAfterEnd();
    error RestrictedWritable_EndBeforeStart();
    error RestrictedWritable_TokenIsZeroAddr();

    event PhaseEndDateUpdated(
        string indexed phaseId,
        uint256 indexed oldEndDate,
        uint256 indexed newEndDate
    );
    event PhaseMaxCapUpdated(
        string indexed phaseId,
        uint256 indexed oldMaxCap,
        uint256 indexed newMaxCap
    );
    event PhaseMerkleRootUpdated(
        string indexed phaseId,
        bytes32 indexed oldMerkleRoot,
        bytes32 indexed newMerkleRoot
    );
    event PhaseOpened(string indexed phaseName);
    event PhasePaused(string indexed phaseName);
    event PhaseResumed(string indexed phaseName);
    event PhaseStartDateUpdated(
        string indexed phaseId,
        uint256 indexed oldStartDate,
        uint256 indexed newStartDate
    );
    event RecoveredLostERC20(
        address indexed token,
        address indexed to,
        uint256 indexed amount
    );
    event SaleClosed();
    event SaleOpened();
    event SalePaused();
    event SaleResumed();
}
