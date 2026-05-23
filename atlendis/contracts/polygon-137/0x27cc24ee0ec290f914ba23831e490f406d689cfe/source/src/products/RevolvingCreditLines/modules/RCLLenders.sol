// SPDX-License-Identifier: AGPL-3.0
pragma solidity 0.8.13;

import 'lib/openzeppelin-contracts/contracts/token/ERC721/ERC721.sol';
import 'lib/openzeppelin-contracts/contracts/token/ERC20/utils/SafeERC20.sol';
import '../../../libraries/FixedPointMathLib.sol';

import '../libraries/DataTypes.sol';
import '../libraries/Errors.sol';
import './interfaces/IRCLLenders.sol';
import './RCLOrderBook.sol';

/**
 * @title Lenders
 * @author Atlendis Labs
 * @notice Implementation of the IRCLenders
 *         Lenders module of the RCL product
 *         Positions are created according to associated ERC721 token
 */
abstract contract RCLLenders is IRCLLenders, RCLOrderBook, ERC721 {
    /*//////////////////////////////////////////////////////////////
                                Events
    //////////////////////////////////////////////////////////////*/

    event Withdraw(uint256 indexed positionId, uint256 amount);

    /*//////////////////////////////////////////////////////////////
                                LIBRARIES
    //////////////////////////////////////////////////////////////*/

    using FixedPointMathLib for uint256;

    using SafeERC20 for ERC20;

    /*//////////////////////////////////////////////////////////////
                                STORAGE
    //////////////////////////////////////////////////////////////*/
    mapping(uint256 => DataTypes.Position) public positions;
    uint256 public currentPositionId;

    /*//////////////////////////////////////////////////////////////
                               CONSTRUCTOR
    //////////////////////////////////////////////////////////////*/

    constructor(string memory name, string memory symbol) ERC721(name, symbol) {}

    /*//////////////////////////////////////////////////////////////
                        INTERNAL FUNCTIONS LENDER
    //////////////////////////////////////////////////////////////*/

    function validateRate(uint256 newRate) internal view {
        if (newRate < MIN_RATE) {
            revert RevolvingCreditLineErrors.RCL_OUT_OF_BOUND_MIN_RATE();
        }
        if (newRate > MAX_RATE) {
            revert RevolvingCreditLineErrors.RCL_OUT_OF_BOUND_MAX_RATE();
        }
        if ((newRate - MIN_RATE) % RATE_SPACING != 0) {
            revert RevolvingCreditLineErrors.RCL_INVALID_RATE_SPACING();
        }
    }

    /*//////////////////////////////////////////////////////////////
                            EXTERNAL FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    function deposit(
        uint256 rate,
        uint256 amount,
        address to
    ) external onlyInPhase(DataTypes.OrderBookPhase.OPEN) returns (uint256 positionId) {
        if (amount == 0) revert RevolvingCreditLineErrors.RCL_ZERO_AMOUNT();

        validateRate(rate);
        DataTypes.Tick storage tick = ticks[rate];
        if (tick.borrowedLoanBaseEpoch > 0) {
            tick.toBeAdjusted += amount;
            tick.newEpochsAmounts.availableToBorrowNew += amount;
            tick.epochs[ticks[rate].currentEpochId].deposited += amount;
        } else {
            tick.availableToBorrowBase += amount;
            tick.adjustedDeposits += amount.div(tick.yieldFactor, TOKEN_DENOMINATOR);
        }
        positions[currentPositionId] = DataTypes.Position({
            baseDeposit: amount,
            rate: rate,
            epochId: ticks[rate].currentEpochId,
            creationTimestamp: block.timestamp,
            exitLoanId: 0
        });
        _safeMint(to, currentPositionId++);
        ERC20(UNDERLYING_TOKEN).safeTransferFrom(msg.sender, address(this), amount);
        positionId = currentPositionId - 1;
    }

    function withdraw(uint256 positionId) external onlyInPhase(DataTypes.OrderBookPhase.OPEN) {
        if (ownerOf(positionId) != _msgSender()) {
            revert RevolvingCreditLineErrors.RCL_ONLY_OWNER();
        }
        DataTypes.Position storage position = positions[positionId];
        if (position.creationTimestamp == block.timestamp) {
            revert RevolvingCreditLineErrors.RCL_TIMELOCK();
        }

        DataTypes.Tick storage tick = ticks[position.rate];
        uint256 withdrawableAmount;
        if (tick.currentEpochId == position.epochId) {
            withdrawableAmount = position.baseDeposit;
            if (tick.borrowedLoanBaseEpoch > 0) {
                tick.toBeAdjusted -= withdrawableAmount;
                tick.newEpochsAmounts.availableToBorrowNew -= withdrawableAmount;
                tick.epochs[ticks[position.rate].currentEpochId].deposited -= withdrawableAmount;
            } else {
                tick.availableToBorrowBase -= withdrawableAmount;
                tick.adjustedDeposits -= withdrawableAmount.div(tick.yieldFactor, TOKEN_DENOMINATOR);
            }
        } else {
            if (tick.borrowedLoanBaseEpoch > 0) {
                revert RevolvingCreditLineErrors.RCL_LOAN_RUNNING();
            }

            DataTypes.Epoch storage epoch = ticks[position.rate].epochs[position.epochId];
            withdrawableAmount = computePositionValue(epoch, tick, position);
            tick.availableToBorrowBase -= withdrawableAmount;
            tick.adjustedDeposits -= withdrawableAmount.div(tick.yieldFactor, TOKEN_DENOMINATOR);
        }

        _burn(positionId);
        delete positions[positionId];

        ERC20(UNDERLYING_TOKEN).safeTransfer(_msgSender(), withdrawableAmount);
        emit Withdraw(positionId, withdrawableAmount);
    }

    function signalExit(uint256 positionId) external onlyInPhase(DataTypes.OrderBookPhase.OPEN) {
        if (ownerOf(positionId) != _msgSender()) {
            revert RevolvingCreditLineErrors.RCL_ONLY_OWNER();
        }
        if (currentMaturity == 0) {
            revert RevolvingCreditLineErrors.RCL_NO_LOAN_RUNNING();
        }
        DataTypes.Position storage position = positions[positionId];
        DataTypes.Tick storage tick = ticks[position.rate];
        if (tick.borrowedLoanBaseEpoch == 0) {
            revert RevolvingCreditLineErrors.RCL_NO_LOAN_RUNNING();
        }

        DataTypes.Epoch storage epoch = ticks[position.rate].epochs[position.epochId];
        if (epoch.borrowed == 0 && !epoch.isBaseEpoch) {
            revert RevolvingCreditLineErrors.RCL_POSITION_NOT_BORROWED();
        }
        if (position.epochId <= tick.loanStartEpochId) {
            tick.toExitBaseAdjusted += position.baseDeposit.div(
                getEquivalentRatio(epoch, tick, position.rate),
                TOKEN_DENOMINATOR
            );
        } else {
            tick.newEpochsAmounts.toExitNewEpochs += position.baseDeposit;
            epoch.toExit += position.baseDeposit;
            tick.newEpochsAmounts.toExitNewEpochsYield += position
                .baseDeposit
                .div(epoch.deposited, TOKEN_DENOMINATOR)
                .mul(epoch.endOfLoanAccruedYield, TOKEN_DENOMINATOR);
        }
        position.exitLoanId = currentLoanId;
    }

    /*//////////////////////////////////////////////////////////////
                        INTERNAL FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    function computePositionValue(
        DataTypes.Epoch storage epoch,
        DataTypes.Tick storage tick,
        DataTypes.Position storage position
    ) internal returns (uint256 positionValue) {
        positionValue = position.baseDeposit.mul(tick.yieldFactor, TOKEN_DENOMINATOR).div(
            getEquivalentRatio(epoch, tick, position.rate),
            TOKEN_DENOMINATOR
        );
    }

    function getEquivalentRatio(
        DataTypes.Epoch storage epoch,
        DataTypes.Tick storage tick,
        uint256 rate
    ) internal returns (uint256 equivalentRatio) {
        if (epoch.isBaseEpoch) {
            equivalentRatio = tick.endOfLoanYieldFactors[epoch.loanId - 1];
        } else {
            uint256 deltaToMaturityAccruals = epoch
                .borrowed
                .mul(loanRepayTimeDeltas[epoch.loanId], TOKEN_DENOMINATOR)
                .mul(rate, TOKEN_DENOMINATOR);
            equivalentRatio = tick.endOfLoanYieldFactors[epoch.loanId].mul(epoch.deposited, TOKEN_DENOMINATOR).div(
                epoch.endOfLoanAccruedYield + epoch.deposited + deltaToMaturityAccruals,
                TOKEN_DENOMINATOR
            );
        }
    }
}
