// SPDX-License-Identifier: AGPL-3.0
pragma solidity 0.8.13;

import './../libraries/DataTypes.sol';
import './../libraries/Errors.sol';
import './interfaces/IRCLOrderBook.sol';
import 'lib/openzeppelin-contracts/contracts/access/Ownable.sol';
import 'lib/openzeppelin-contracts/contracts/token/ERC20/ERC20.sol';

/**
 * @title OrderBook
 * @author Atlendis Labs
 * @notice Implementation of the IOrderBook
 *         Contains the core storage of the pool and shared methods accross the modules
 */
abstract contract RCLOrderBook is IRCLOrderBook, Ownable {
    /*//////////////////////////////////////////////////////////////
                                STORAGE
    //////////////////////////////////////////////////////////////*/

    mapping(uint256 => DataTypes.Tick) public ticks;
    mapping(address => bool) public permissionedBorrowers;
    mapping(uint256 => uint256) public loanRepayTimeDeltas;
    uint256 immutable TOKEN_DENOMINATOR;
    uint256 immutable ONE;
    uint256 public currentLoanId;
    uint256 public totalBorrowed;
    uint256 public currentMaturity;
    uint256 public atlendisRevenue;
    uint256 immutable MAX_BORROWABLE_AMOUNT;
    address immutable UNDERLYING_TOKEN;
    uint256 immutable MIN_RATE;
    uint256 immutable MAX_RATE;
    uint256 immutable RATE_SPACING;
    uint256 immutable REPAYMENT_PERIOD;
    bool immutable IS_CALLABLE;
    uint256 immutable ISSUANCE_FEE_RATE;
    uint256 immutable REPAYMENT_FEE_RATE;
    uint256 immutable LATE_REPAYMENT_FEE_RATE;
    uint256 immutable LOAN_DURATION; // in seconds
    DataTypes.OrderBookPhase public orderBookPhase;

    /*//////////////////////////////////////////////////////////////
                                CONSTRUCTOR
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Constructor - Initialize parametrization
     */
    constructor(bytes memory feeConfig, bytes memory parametersConfig) {
        orderBookPhase = DataTypes.OrderBookPhase.OPEN;

        (ISSUANCE_FEE_RATE, REPAYMENT_FEE_RATE, LATE_REPAYMENT_FEE_RATE) = abi.decode(
            feeConfig,
            (uint256, uint256, uint256)
        );
        (
            MAX_BORROWABLE_AMOUNT,
            UNDERLYING_TOKEN,
            MIN_RATE,
            MAX_RATE,
            RATE_SPACING,
            REPAYMENT_PERIOD,
            IS_CALLABLE,
            LOAN_DURATION
        ) = abi.decode(parametersConfig, (uint256, address, uint256, uint256, uint256, uint256, bool, uint256));

        TOKEN_DENOMINATOR = 10**ERC20(UNDERLYING_TOKEN).decimals();
        ONE = TOKEN_DENOMINATOR;

        uint256 currentInterestRate = MIN_RATE;
        while (currentInterestRate <= MAX_RATE) {
            ticks[currentInterestRate].yieldFactor = ONE;
            /// @dev the first loan gets an ID of one.
            /// Hence the endOfPriorLoanYieldFactor for genesis deposits is never set but is theoertically ONE
            ticks[currentInterestRate].endOfLoanYieldFactors[0] = ONE;
            currentInterestRate += RATE_SPACING;
        }
    }

    /*//////////////////////////////////////////////////////////////
                                GETTERS
    //////////////////////////////////////////////////////////////*/

    function getEpoch(uint256 rate, uint256 epochId)
        public
        view
        returns (
            uint256 deposited,
            uint256 borrowed,
            uint256 endOfLoanAccruedYield,
            uint256 loanId,
            bool isBaseEpoch
        )
    {
        DataTypes.Tick storage tick = ticks[rate];
        borrowed = tick.epochs[epochId].borrowed;
        endOfLoanAccruedYield = tick.epochs[epochId].endOfLoanAccruedYield;
        deposited = tick.epochs[epochId].deposited;
        loanId = tick.epochs[epochId].loanId;
        isBaseEpoch = tick.epochs[epochId].isBaseEpoch;
    }

    function getNewEpochsAmounts(uint256 rate)
        public
        returns (
            uint256,
            uint256,
            uint256,
            uint256
        )
    {
        DataTypes.Tick storage tick = ticks[rate];

        return (
            tick.newEpochsAmounts.borrowedLoanNewEpochs,
            tick.newEpochsAmounts.availableToBorrowNew,
            tick.newEpochsAmounts.toExitNewEpochsYield,
            tick.newEpochsAmounts.toExitNewEpochs
        );
    }

    function getTickAmounts(uint256 rate)
        public
        returns (
            uint256,
            uint256,
            uint256,
            uint256,
            uint256
        )
    {
        DataTypes.Tick storage tick = ticks[rate];

        return (
            tick.adjustedDeposits,
            tick.toBeAdjusted,
            tick.borrowedLoanBaseEpoch,
            tick.availableToBorrowBase,
            tick.amountToPayBack
        );
    }

    function getTickRemaining(uint256 rate)
        public
        returns (
            uint256,
            uint256,
            uint256,
            uint256
        )
    {
        // copy the data into memory
        DataTypes.Tick storage tick = ticks[rate];

        return (tick.yieldFactor, tick.loanStartEpochId, tick.currentEpochId, tick.lastBorrowTimeStamp);
    }

    /*//////////////////////////////////////////////////////////////
                                MODIFIERS
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Allow only if the pool phase is the expected one
     * @param expectedPhase Expected phase
     */
    modifier onlyInPhase(DataTypes.OrderBookPhase expectedPhase) {
        if (orderBookPhase != expectedPhase)
            revert RevolvingCreditLineErrors.RCL_INVALID_PHASE(expectedPhase, orderBookPhase);
        _;
    }
}
