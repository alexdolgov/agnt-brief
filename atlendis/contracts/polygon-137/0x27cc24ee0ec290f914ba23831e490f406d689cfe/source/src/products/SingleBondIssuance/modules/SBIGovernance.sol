// SPDX-License-Identifier: AGPL-3.0
pragma solidity 0.8.13;

import './../libraries/PoolDataTypes.sol';
import './../libraries/SingleBondIssuanceErrors.sol';
import './../libraries/SingleBondIssuanceLogic.sol';
import './interfaces/ISBIGovernance.sol';
import './SBIPool.sol';
import 'lib/openzeppelin-contracts/contracts/access/Ownable.sol';

/**
 * @title SBIGovernance
 * @author Atlendis Labs
 * @notice Implementation of the ISBIGovernance
 *         Governance module of the SBI product
 */
abstract contract SBIGovernance is ISBIGovernance, SBIPool, Ownable {
    /**
     * @notice Constructor - register creation timestamp and grant the default admin role to the governance address
     * @param governance Address of the governance
     */
    constructor(address governance) {
        _transferOwnership(governance);
    }

    /*//////////////////////////////////////////////////////////////
                        EXTERNAL FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    function enableIssuancePhase() external onlyOwner onlyInPhase(PoolDataTypes.PoolPhase.BOOK_BUILDING) {
        if (block.timestamp <= CREATION_TIMESTAMP + BOOK_BUILDING_PERIOD_DURATION) {
            revert SingleBondIssuanceErrors.SBI_BOOK_BUILDING_TIME_NOT_OVER();
        }
        poolPhase = PoolDataTypes.PoolPhase.ISSUANCE;
        ISSUANCE_PHASE_START_TIMESTAMP = block.timestamp;
        emit IssuancePhaseEnabled(address(this));
    }

    function markPoolAsDefaulted() external onlyOwner onlyInPhase(PoolDataTypes.PoolPhase.ISSUED) {
        poolPhase = PoolDataTypes.PoolPhase.DEFAULT;
        emit Default(address(this));
    }

    function allowBorrower(address borrower) external onlyOwner {
        permissionedBorrowers[borrower] = true;
    }

    function cancelBondIssuance() external onlyOwner onlyInPhase(PoolDataTypes.PoolPhase.ISSUANCE) {
        if (block.timestamp < ISSUANCE_PHASE_START_TIMESTAMP + ISSUANCE_PERIOD_DURATION) {
            revert SingleBondIssuanceErrors.SBI_ISSUANCE_PERIOD_STILL_ACTIVE();
        }
        uint256 remainingEscrow = cancellationFeeEscrow;
        for (
            uint256 currentInterestRate = MIN_RATE;
            currentInterestRate <= MAX_RATE;
            currentInterestRate += RATE_SPACING
        ) {
            PoolDataTypes.Tick storage tick = ticks[currentInterestRate];
            uint256 cancelFeeForTick = SingleBondIssuanceLogic.repayCancelFeeForTick(
                tick,
                CANCELLATION_FEE_PC,
                remainingEscrow,
                TOKEN_DENOMINATOR
            );
            remainingEscrow -= cancelFeeForTick;
        }
        cancellationFeeEscrow = remainingEscrow;
        poolPhase = PoolDataTypes.PoolPhase.CANCELLED;

        emit BondIssuanceCanceled(address(this), remainingEscrow);
    }
}
