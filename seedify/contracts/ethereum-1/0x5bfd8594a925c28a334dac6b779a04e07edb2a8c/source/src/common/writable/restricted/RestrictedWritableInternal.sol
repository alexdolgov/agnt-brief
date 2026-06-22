// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.23;

import {AccessControlEnumerable} from "openzeppelin-contracts/access/AccessControlEnumerable.sol";

import {IRestrictedWritableInternal} from "./IRestrictedWritableInternal.sol";

import {SaleStorage} from "../../SaleStorage.sol";

// import struct
import {Status, Phase} from "../../SaleStruct.sol";

/**
 * @title RestrictedWritableInternal
 * @notice Defines the internal functions of `RestrictedWritable` contract.
 */
contract RestrictedWritableInternal is
    IRestrictedWritableInternal, // 1 inherited component
    AccessControlEnumerable // 8 inherited component
{
    function _checkPhaseData(
        uint256 oldMaxPhaseCap,
        Phase calldata phase_
    ) internal view {
        if (oldMaxPhaseCap == 0) {
            // if it is a new phase phase MUST be NOT_STARTED
            if (phase_.status != Status.NOT_STARTED) {
                revert RestrictedWritable_NewPhaseStatus();
            }
        }
        if (phase_.merkleRoot == bytes32(0)) {
            revert RestrictedWritable_PhaseMerkleRootIsZero();
        }
        /**
         * @dev Phase can start in the past as we can have a phase that is already started BUT contract has
         *      been deployed later due to unexpected reasons.
         */
        if (phase_.startAt >= phase_.endAt) {
            revert RestrictedWritable_PhaseStartGteEnd();
        }

        if (phase_.endAt <= block.timestamp) {
            revert RestrictedWritable_EndInPast();
        }

        if (phase_.maxPhaseCap == 0) {
            revert RestrictedWritable_PhaseMaxCapIsZero();
        }
    }

    /// @param phaseId Phase identifier to close.
    function _closePhase(string memory phaseId) internal {
        SaleStorage.layout().phases.data[phaseId].status = Status.COMPLETED;
    }

    function _closeSale() internal {
        SaleStorage.layout().ledger.status = Status.COMPLETED;
    }

    function _initializeSale(SaleStorage.SetUp calldata saleSetUp) internal {
        if (saleSetUp.permit2 == address(0))
            revert RestrictedWritable_Init_Permit2IsZeroAddr();

        SaleStorage.layout().setUp = saleSetUp;
    }

    function _openPhase(string memory phaseId) internal {
        SaleStorage.layout().phases.data[phaseId].status = Status.OPENED;
    }

    function _openSale() internal {
        SaleStorage.layout().ledger.status = Status.OPENED;
    }

    function _setOwnerRights(address owner) internal {
        if (owner == address(0)) {
            revert RestrictedWritable_Init_OwnerIsZeroAddr();
        }

        _grantRole(DEFAULT_ADMIN_ROLE, owner);
        _grantRole(DEFAULT_ADMIN_ROLE, _msgSender());
    }

    function _checkTimestampsForUpdatedPhase(
        uint128 oldStartAt,
        uint128 oldEndAt,
        uint128 startAt,
        uint128 endAt,
        string calldata phaseId_
    ) internal view {
        // if startAt is changed, existing phase should be in NOT_STARTED state
        if (oldStartAt != startAt) {
            _isPhase(Status.NOT_STARTED, phaseId_);
        }

        // if endAt is changed, existing phase should not be in COMPLETED state
        if (oldEndAt != endAt) {
            _isPhaseNot(Status.COMPLETED, phaseId_);
        }
    }

    /**
     * @notice Set the data of phase or update it if it already exists.
     *
     * @param summedMaxPhaseCap The sum of all max amount to raise per phase before updating this phase,
     *                          expressed in {SaleStorage.SetUp.paymentToken}
     * @param oldMaxPhaseCap The max amount to raise for the phase before updating it,
     *                       expressed in {SaleStorage.SetUp.paymentToken}.
     * @param phase_ The phase's data to save.
     * @param phaseId_ The phase identifier.
     */
    function _setPhase(
        uint256 summedMaxPhaseCap,
        uint256 oldMaxPhaseCap,
        Phase calldata phase_,
        string calldata phaseId_
    ) internal {
        _checkPhaseData(oldMaxPhaseCap, phase_);

        if (oldMaxPhaseCap != 0) {
            _checkTimestampsForUpdatedPhase(
                SaleStorage.layout().phases.data[phaseId_].startAt,
                SaleStorage.layout().phases.data[phaseId_].endAt,
                phase_.startAt,
                phase_.endAt,
                phaseId_
            );
        }

        summedMaxPhaseCap -= oldMaxPhaseCap;
        summedMaxPhaseCap += phase_.maxPhaseCap;

        // if phase does not exist, push to ids
        if (oldMaxPhaseCap == 0)
            SaleStorage.layout().phases.ids.push(phaseId_);
        SaleStorage.layout().phases.data[phaseId_] = phase_;

        SaleStorage.layout().ledger.summedMaxPhaseCap = summedMaxPhaseCap;
    }

    function _isPhase(Status expected, string calldata phaseId) internal view {
        Status phaseStatus = SaleStorage.layout().phases.data[phaseId].status;

        if (phaseStatus != expected) {
            revert RestrictedWritable_PhaseNotMatched(expected, phaseStatus);
        }
    }

    /// @dev If **phase status** is NOT equals `avoid` it passes silently, otherwise it reverts.
    function _isPhaseNot(Status avoid, string calldata phaseId) internal view {
        Status phaseStatus = SaleStorage.layout().phases.data[phaseId].status;

        if (phaseStatus == avoid) {
            revert RestrictedWritable_PhaseMatched(avoid, phaseStatus);
        }
    }

    function _isSale(Status expected) internal view {
        Status current = SaleStorage.layout().ledger.status;
        if (current != expected) {
            revert RestrictedWritable_SaleNotMatched(expected, current);
        }
    }

    /// @dev If **sale status** is NOT equals `avoid` it passes silently, otherwise it reverts.
    function _isSaleNot(Status avoid) internal view {
        Status current = SaleStorage.layout().ledger.status;
        if (current == avoid) {
            revert RestrictedWritable_SaleMatched(avoid, current);
        }
    }
}
