// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.23;

// import struct
import {Status} from "../SaleStruct.sol";

/**
 * @title ISaleWritableInternal
 * @notice Internal interface of `SaleWritable` which defines events  and errors.
 */
interface ISaleWritableInternal {
    /// @notice Thrown when the buyer tries to spend more than {Allocation.maxAllocation}.
    error SaleWritable_AllocationExceeded(
        uint256 allocation,
        uint256 exceedsBy
    );
    /// @notice Thrown when the grand total to be raised for this Sale is exceeded.
    error SaleWritable_SummedMaxPhaseCapExceeded(
        uint256 summedMaxPhaseCap,
        uint256 exceedsBy
    );
    /// @notice Thrown when the cap (maximum amount) of the current phase is exceeded.
    error SaleWritable_MaxPhaseCapExceeded(
        string phaseId,
        uint256 maxPhaseCap,
        uint256 exceedsBy
    );

    /// @notice Thrown when `msg.sender` is not the buyer.
    error SaleWritableInternal_AccountNotAuthorized();
    /// @notice Thrown when the allocation is not found in the merkle proof.
    error SaleWritableInternal_AllocationNotFound();
    /// @notice Thrown when the phase is not opened.
    error SaleWritableInternal_PhaseNotOpened(string phaseId, Status current);
    /// @notice Thrown when the Sale is not opened.
    error SaleWritableInternal_SaleNotOpened(Status current);
}
