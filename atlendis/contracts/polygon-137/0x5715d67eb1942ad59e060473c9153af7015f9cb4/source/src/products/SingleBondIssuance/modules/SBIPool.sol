// SPDX-License-Identifier: AGPL-3.0
pragma solidity 0.8.13;

import './../libraries/PoolDataTypes.sol';
import './../libraries/SingleBondIssuanceErrors.sol';
import './interfaces/ISBIPool.sol';
import 'lib/openzeppelin-contracts/contracts/token/ERC20/ERC20.sol';

/**
 * @title SBIPool
 * @author Atlendis Labs
 * @notice Implementation of the ISBIPool
 *         Contains the core storage of the pool and shared methods accross the modules
 */
abstract contract SBIPool is ISBIPool {
    /*//////////////////////////////////////////////////////////////
                                STORAGE
    //////////////////////////////////////////////////////////////*/

    uint256 public immutable CREATION_TIMESTAMP;
    uint256 public ISSUANCE_PHASE_START_TIMESTAMP;

    address public immutable UNDERLYING_TOKEN;
    uint256 public immutable TOKEN_DENOMINATOR;
    uint256 public immutable MIN_RATE;
    uint256 public immutable MAX_RATE;
    uint256 public immutable RATE_SPACING;
    uint256 public immutable LOAN_DURATION;
    uint256 public immutable TARGET_ISSUANCE_AMOUNT;
    uint256 public immutable BOOK_BUILDING_PERIOD_DURATION;
    uint256 public immutable ISSUANCE_PERIOD_DURATION;
    uint256 public immutable REPAYMENT_PERIOD_DURATION;
    uint256 public immutable ISSUANCE_FEE_PC; // value for the percentage of the borrowed amount which is taken as a fee at borrow time
    uint256 public immutable REPAYMENT_FEE_PC; // value for the percentage of the interests amount which is taken as a fee at repay time
    uint256 public immutable LATE_REPAYMENT_FEE_RATE;
    uint256 public immutable CANCELLATION_FEE_PC; // value for the percentage of the target issuance amount which is needed in escrow in order to enable the book building phase

    PoolDataTypes.PoolPhase public poolPhase;
    mapping(uint256 => PoolDataTypes.Tick) public ticks;

    mapping(address => bool) public permissionedBorrowers;

    uint256 public deposits;

    uint256 public cancellationFeeEscrow;

    /*//////////////////////////////////////////////////////////////
                                CONSTRUCTOR
    //////////////////////////////////////////////////////////////*/

    constructor(bytes memory feeConfigs, bytes memory parametersConfig) {
        (LATE_REPAYMENT_FEE_RATE, ISSUANCE_FEE_PC, REPAYMENT_FEE_PC, CANCELLATION_FEE_PC) = abi.decode(
            feeConfigs,
            (uint256, uint256, uint256, uint256)
        );

        (
            UNDERLYING_TOKEN,
            MIN_RATE,
            MAX_RATE,
            RATE_SPACING,
            LOAN_DURATION,
            REPAYMENT_PERIOD_DURATION,
            ISSUANCE_PERIOD_DURATION,
            BOOK_BUILDING_PERIOD_DURATION,
            TARGET_ISSUANCE_AMOUNT
        ) = abi.decode(
            parametersConfig,
            (address, uint256, uint256, uint256, uint256, uint256, uint256, uint256, uint256)
        );

        TOKEN_DENOMINATOR = 10**ERC20(UNDERLYING_TOKEN).decimals();
        if (MIN_RATE >= MAX_RATE) revert SingleBondIssuanceErrors.SBI_INVALID_RATE_BOUNDARIES();
        if (RATE_SPACING == 0) revert SingleBondIssuanceErrors.SBI_INVALID_ZERO_RATE_SPACING();
        if ((MAX_RATE - MIN_RATE) % RATE_SPACING != 0) revert SingleBondIssuanceErrors.SBI_INVALID_RATE_PARAMETERS();
        if (
            ISSUANCE_FEE_PC >= TOKEN_DENOMINATOR ||
            REPAYMENT_FEE_PC >= TOKEN_DENOMINATOR ||
            CANCELLATION_FEE_PC >= TOKEN_DENOMINATOR
        ) revert SingleBondIssuanceErrors.SBI_INVALID_PERCENTAGE_VALUE();

        if (CANCELLATION_FEE_PC > 0) {
            poolPhase = PoolDataTypes.PoolPhase.INACTIVE;
        } else {
            poolPhase = PoolDataTypes.PoolPhase.BOOK_BUILDING;
            emit BookBuildingPhaseEnabled(address(this), 0);
        }
        CREATION_TIMESTAMP = block.timestamp;
    }

    /*//////////////////////////////////////////////////////////////
                                MODIFIERS
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Allow only if the pool phase is the expected one
     * @param expectedPhase Expected phase
     */
    modifier onlyInPhase(PoolDataTypes.PoolPhase expectedPhase) {
        if (poolPhase != expectedPhase) revert SingleBondIssuanceErrors.SBI_INVALID_PHASE(expectedPhase, poolPhase);
        _;
    }
}
