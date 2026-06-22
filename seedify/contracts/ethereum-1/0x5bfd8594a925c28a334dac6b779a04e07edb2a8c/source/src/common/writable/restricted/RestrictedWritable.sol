// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.23;

import {IERC20} from "openzeppelin-contracts/token/ERC20/IERC20.sol";

import {SafeERC20} from "openzeppelin-contracts/token/ERC20/utils/SafeERC20.sol";

import {Initializable} from "openzeppelin-contracts/proxy/utils/Initializable.sol";

import {IRestrictedWritable} from "./IRestrictedWritable.sol";

import {IGOStorage} from "../../../igo/IGOStorage.sol";
import {SaleStorage} from "../../SaleStorage.sol";

import {RestrictedWritableInternal} from "./RestrictedWritableInternal.sol";

// import struct
import {Status, Phase} from "../../SaleStruct.sol";

/**
 * @title RestrictedWritable
 */
contract RestrictedWritable is
    IRestrictedWritable, // 1 inherited component
    RestrictedWritableInternal, // 2 inherited component
    Initializable // 1 inherited component
{
    using SafeERC20 for IERC20;

    /// @inheritdoc IRestrictedWritable
    function closeSale() external override onlyRole(DEFAULT_ADMIN_ROLE) {
        _closeSale();
        emit SaleClosed();
    }

    function openSale() external override onlyRole(DEFAULT_ADMIN_ROLE) {
        _isSale(Status.NOT_STARTED);
        _openSale();

        emit SaleOpened();
    }

    function pauseSale() external override onlyRole(DEFAULT_ADMIN_ROLE) {
        _isSale(Status.OPENED);
        SaleStorage.layout().ledger.status = Status.PAUSED;

        emit SalePaused();
    }

    function resumeSale() external override onlyRole(DEFAULT_ADMIN_ROLE) {
        _isSale(Status.PAUSED);
        SaleStorage.layout().ledger.status = Status.OPENED;

        emit SaleResumed();
    }

    /// @inheritdoc IRestrictedWritable
    function recoverLostERC20(
        address token,
        address to
    ) external override onlyRole(DEFAULT_ADMIN_ROLE) {
        if (token == address(0)) revert RestrictedWritable_TokenIsZeroAddr();
        if (to == address(0)) revert RestrictedWritable_ReceiverIsZeroAddr();

        uint256 amount = IERC20(token).balanceOf(address(this));
        IERC20(token).safeTransfer(to, amount);

        emit RecoveredLostERC20(token, to, amount);
    }

    function closePhases(
        string[] calldata phaseIds
    ) external override onlyRole(DEFAULT_ADMIN_ROLE) {
        for (uint256 i = 0; i < phaseIds.length; i++) {
            if (
                block.timestamp >=
                SaleStorage.layout().phases.data[phaseIds[i]].endAt
            ) {
                _closePhase(phaseIds[i]);
            }
        }
    }

    //////////////////////////// PHASE SINGLE UPDATE ////////////////////////////
    /// @inheritdoc IRestrictedWritable
    function openPhase(
        string calldata phaseId
    ) external override onlyRole(DEFAULT_ADMIN_ROLE) {
        _isPhase(Status.NOT_STARTED, phaseId);
        _openPhase(phaseId);

        emit PhaseOpened(phaseId);
    }

    function pausePhase(
        string calldata phaseId
    ) external override onlyRole(DEFAULT_ADMIN_ROLE) {
        _isPhase(Status.OPENED, phaseId);
        SaleStorage.layout().phases.data[phaseId].status = Status.PAUSED;

        emit PhasePaused(phaseId);
    }

    function resumePhase(
        string calldata phaseId
    ) external override onlyRole(DEFAULT_ADMIN_ROLE) {
        _isPhase(Status.PAUSED, phaseId);
        SaleStorage.layout().phases.data[phaseId].status = Status.OPENED;

        emit PhaseResumed(phaseId);
    }

    function updatePhaseEndDate(
        string calldata phaseId,
        uint128 endAt
    ) external override onlyRole(DEFAULT_ADMIN_ROLE) {
        _isPhaseNot(Status.COMPLETED, phaseId);

        if (endAt <= block.timestamp) {
            revert RestrictedWritable_EndInPast();
        }

        if (endAt <= SaleStorage.layout().phases.data[phaseId].startAt) {
            revert RestrictedWritable_EndBeforeStart();
        }

        emit PhaseEndDateUpdated(
            phaseId,
            SaleStorage.layout().phases.data[phaseId].endAt,
            endAt
        );

        SaleStorage.layout().phases.data[phaseId].endAt = endAt;
    }

    /// @inheritdoc IRestrictedWritable
    function updatePhaseMaxCapAndMerkleRoot(
        string calldata phaseId,
        uint256 maxPhaseCap,
        bytes32 merkleRoot
    ) external override onlyRole(DEFAULT_ADMIN_ROLE) {
        /// @custom:audit verifies underneath the phase is not completed
        updatePhaseMerkleRoot(phaseId, merkleRoot);

        uint256 summedMaxPhaseCap = SaleStorage
            .layout()
            .ledger
            .summedMaxPhaseCap;

        summedMaxPhaseCap -= SaleStorage
            .layout()
            .phases
            .data[phaseId]
            .maxPhaseCap;
        summedMaxPhaseCap += maxPhaseCap;

        emit PhaseMaxCapUpdated(
            phaseId,
            SaleStorage.layout().phases.data[phaseId].maxPhaseCap,
            maxPhaseCap
        );
        SaleStorage.layout().phases.data[phaseId].maxPhaseCap = maxPhaseCap;
        SaleStorage.layout().ledger.summedMaxPhaseCap = summedMaxPhaseCap;
    }

    /// @inheritdoc IRestrictedWritable
    function updatePhaseMerkleRoot(
        string calldata phaseId,
        bytes32 merkleRoot
    ) public override onlyRole(DEFAULT_ADMIN_ROLE) {
        _isPhaseNot(Status.COMPLETED, phaseId);
        if (merkleRoot == bytes32(0)) {
            revert RestrictedWritable_EmptyMerkleRoot();
        }

        emit PhaseMerkleRootUpdated(
            phaseId,
            SaleStorage.layout().phases.data[phaseId].merkleRoot,
            merkleRoot
        );
        SaleStorage.layout().phases.data[phaseId].merkleRoot = merkleRoot;
    }

    /// @inheritdoc IRestrictedWritable
    function updatePhaseStartDate(
        string calldata phaseId,
        uint128 startAt
    ) external override onlyRole(DEFAULT_ADMIN_ROLE) {
        _isPhase(Status.NOT_STARTED, phaseId);

        if (startAt >= SaleStorage.layout().phases.data[phaseId].endAt) {
            revert RestrictedWritable_StartAfterEnd();
        }

        emit PhaseStartDateUpdated(
            phaseId,
            SaleStorage.layout().phases.data[phaseId].startAt,
            startAt
        );

        SaleStorage.layout().phases.data[phaseId].startAt = startAt;
    }
}
