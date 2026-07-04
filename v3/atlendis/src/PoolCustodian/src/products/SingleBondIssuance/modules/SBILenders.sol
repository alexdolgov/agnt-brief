// SPDX-License-Identifier: AGPL-3.0
pragma solidity 0.8.13;

import 'lib/openzeppelin-contracts/contracts/token/ERC721/ERC721.sol';
import './../libraries/PoolDataTypes.sol';
import './../libraries/PositionDataTypes.sol';
import './../libraries/SingleBondIssuanceLogic.sol';
import './interfaces/ISBILenders.sol';
import './SBIPool.sol';

/**
 * @title SBILenders
 * @author Atlendis Labs
 * @notice Implementation of the ISBILenders
 *         Lenders module of the SBI product
 *         Positions are created according to associated ERC721 token
 */
abstract contract SBILenders is ISBILenders, SBIPool, ERC721 {
    /*//////////////////////////////////////////////////////////////
                                STORAGE
    //////////////////////////////////////////////////////////////*/
    mapping(uint256 => PositionDataTypes.PositionDetails) public positions;
    uint256 public nextPositionId;

    /*//////////////////////////////////////////////////////////////
                               CONSTRUCTOR
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Constructor - Initialize storage, transit to `book building` phase if no cancellation fee are needed
     * @param name ERC721 name of the positions
     * @param symbol ERC721 symbol of the positions
     */
    constructor(string memory name, string memory symbol) ERC721(name, symbol) {}

    /*//////////////////////////////////////////////////////////////
                        INTERNAL FUNCTIONS LENDER
    //////////////////////////////////////////////////////////////*/

    function validateRate(uint256 newRate) internal view {
        if (newRate < MIN_RATE) {
            revert SingleBondIssuanceErrors.SBI_OUT_OF_BOUND_MIN_RATE();
        }
        if (newRate > MAX_RATE) {
            revert SingleBondIssuanceErrors.SBI_OUT_OF_BOUND_MAX_RATE();
        }
        if ((newRate - MIN_RATE) % RATE_SPACING != 0) {
            revert SingleBondIssuanceErrors.SBI_INVALID_RATE_SPACING();
        }
    }

    /*//////////////////////////////////////////////////////////////
                        EXTERNAL FUNCTIONS LENDER
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Deposit amount of tokens at a chosen rate
     * @param rate Chosen rate at which the funds can be borrowed
     * @param amount Deposited amount of tokens
     * @param to Recipient address for the position associated to the deposit
     * @return positionId ID of the position
     */
    function deposit(
        uint256 rate,
        uint256 amount,
        address to
    ) external returns (uint256 positionId) {
        if (
            poolPhase != PoolDataTypes.PoolPhase.BOOK_BUILDING ||
            block.timestamp > CREATION_TIMESTAMP + BOOK_BUILDING_PERIOD_DURATION
        ) {
            revert SingleBondIssuanceErrors.SBI_ALLOWED_ONLY_BOOK_BUILDING_PHASE();
        }

        if (amount == 0) revert SingleBondIssuanceErrors.SBI_ZERO_AMOUNT();

        validateRate(rate);

        SingleBondIssuanceLogic.depositToTick(ticks[rate], amount, UNDERLYING_TOKEN);
        positionId = nextPositionId++;
        deposits += amount;
        _safeMint(to, positionId);
        positions[positionId] = PositionDataTypes.PositionDetails({
            depositedAmount: amount,
            rate: rate,
            depositBlockNumber: block.number,
            hasWithdrawPartially: false
        });
        emit Deposited(positionId, to, address(this), rate, amount);
    }

    /**
     * @notice Update a position rate
     * @param positionId The ID of the position
     * @param newRate The new rate of the position
     */
    function updateRate(uint256 positionId, uint256 newRate) external {
        if (
            poolPhase != PoolDataTypes.PoolPhase.BOOK_BUILDING ||
            block.timestamp > CREATION_TIMESTAMP + BOOK_BUILDING_PERIOD_DURATION
        ) {
            revert SingleBondIssuanceErrors.SBI_ALLOWED_ONLY_BOOK_BUILDING_PHASE();
        }

        if (ownerOf(positionId) != msg.sender) {
            revert SingleBondIssuanceErrors.SBI_MGMT_ONLY_OWNER();
        }

        validateRate(newRate);

        uint256 oldRate = positions[positionId].rate;

        SingleBondIssuanceLogic.updateTicksDeposit(
            ticks[oldRate],
            ticks[newRate],
            positions[positionId].depositedAmount
        );
        positions[positionId].rate = newRate;
        emit RateUpdated(positionId, msg.sender, address(this), oldRate, newRate);
    }

    function withdraw(uint256 positionId) external {
        if (ownerOf(positionId) != msg.sender) {
            revert SingleBondIssuanceErrors.SBI_MGMT_ONLY_OWNER();
        }

        if (positions[positionId].depositBlockNumber == block.number) {
            revert SingleBondIssuanceErrors.SBI_TIMELOCK();
        }

        if (poolPhase == PoolDataTypes.PoolPhase.ISSUANCE) {
            revert SingleBondIssuanceErrors.SBI_NO_WITHDRAWALS_ISSUANCE_PHASE();
        }

        (uint256 withdrawnAmount, bool partialWithdrawPartialFilledTick) = SingleBondIssuanceLogic.withdrawFromTick(
            ticks[positions[positionId].rate],
            poolPhase,
            positions[positionId].depositedAmount,
            positions[positionId].hasWithdrawPartially,
            TOKEN_DENOMINATOR
        );

        if (poolPhase == PoolDataTypes.PoolPhase.BOOK_BUILDING) {
            deposits -= withdrawnAmount;
        }

        if (partialWithdrawPartialFilledTick) {
            positions[positionId].hasWithdrawPartially = true;
        } else {
            _burn(positionId);
            delete positions[positionId];
        }
        SingleBondIssuanceLogic.transferERC20(msg.sender, UNDERLYING_TOKEN, withdrawnAmount);

        emit Withdrawn(positionId, msg.sender, address(this), withdrawnAmount);
    }

    function withdraw(uint256 positionId, uint256 amount) external {
        if (ownerOf(positionId) != msg.sender) {
            revert SingleBondIssuanceErrors.SBI_MGMT_ONLY_OWNER();
        }

        if (positions[positionId].depositBlockNumber == block.number) {
            revert SingleBondIssuanceErrors.SBI_TIMELOCK();
        }

        if (poolPhase != PoolDataTypes.PoolPhase.BOOK_BUILDING) {
            revert SingleBondIssuanceErrors.SBI_PARTIAL_WITHDRAW_NOT_ALLOWED();
        }

        if (amount > positions[positionId].depositedAmount) {
            revert SingleBondIssuanceErrors.SBI_WITHDRAW_AMOUNT_TOO_LARGE();
        }
        ticks[positions[positionId].rate].depositedAmount -= amount;
        if (positions[positionId].depositedAmount == amount) {
            _burn(positionId);
            delete positions[positionId];
        } else {
            positions[positionId].depositedAmount -= amount;
        }
        deposits -= amount;
        SingleBondIssuanceLogic.transferERC20(msg.sender, UNDERLYING_TOKEN, amount);

        emit PartiallyWithdrawn(positionId, msg.sender, address(this), amount);
    }
}
