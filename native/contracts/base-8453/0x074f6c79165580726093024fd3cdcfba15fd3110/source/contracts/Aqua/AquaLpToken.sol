// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.17;

import {ReentrancyGuard} from "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import {UUPSUpgradeable} from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import {IAquaLpToken} from "../interfaces/IAquaLpToken.sol";
import {CErc20} from "../Compound/CErc20.sol";
import {ComptrollerInterface} from "../Compound/ComptrollerInterface.sol";
import {InterestRateModel} from "../Compound/InterestRateModel.sol";
import {EIP20Interface} from "../Compound/EIP20Interface.sol";
import {EIP20NonStandardInterface} from "../Compound/EIP20NonStandardInterface.sol";
import {AquaVault} from "./AquaVault.sol";

/// @title Storage for Aqua LP token contract
/// @author Native
/// @notice Maintain the storage variables for Aqua LP token contract
abstract contract AquaLpTokenStorage {
    /// @notice AquaVault address to check caller is AquaVault
    address public aquaVault;
    /// @notice The variable to record borrowing amount from swap and also offset the actual cash upon calculating exchange rate
    ///         Positive means the traders (RFQ providers) in total borrow out (short position) more from AquaVault than putting in (long position)
    ///         Negative means the traders (RFQ providers) in total putting in (long position) more from AquaVault than borrow out (short position)
    int public netSwapBorrow;
    /// @notice The variable to record the total reserve amount as protocol fee
    uint public swapBorrowReserve;

    /// @notice Storage slot reserved for upgradeability
    uint256[50] private __gap;
}

/// @title LP token contract for Aqua
/// @author Native
/// @notice Inherit from Compound's CErc20 contract and override the functions to consider borrow amount from swap (positions)
contract AquaLpToken is CErc20, UUPSUpgradeable, AquaLpTokenStorage {
    error CallerNotAquaVault();
    error CallerNotAdmin();

    /// @notice Initialize the contract
    ///         copied from CToken.initialize() https://github.com/compound-finance/compound-protocol/blob/master/contracts/CToken.sol#L26
    ///         and CErc20.initialize() https://github.com/compound-finance/compound-protocol/blob/master/contracts/CErc20.sol#L16-L39
    /// @param underlying_ The address of the underlying token
    /// @param comptroller_ The address of the comptroller
    /// @param interestRateModel_ The address of the interest rate model
    /// @param initialExchangeRateMantissa_ The initial exchange rate mantissa
    /// @param name_ The name of the token
    /// @param symbol_ The symbol of the token
    /// @param decimals_ The decimals of the token
    function initialize(
        address underlying_,
        ComptrollerInterface comptroller_,
        InterestRateModel interestRateModel_,
        uint initialExchangeRateMantissa_,
        string memory name_,
        string memory symbol_,
        uint8 decimals_
    ) public initializer {
        __UUPSUpgradeable_init();
        admin = payable(msg.sender);
        aquaVault = address(comptroller_);

        // Set initial exchange rate
        initialExchangeRateMantissa = initialExchangeRateMantissa_;
        require(initialExchangeRateMantissa > 0, "initial exchange rate must be greater than zero.");

        // Set the comptroller
        uint err = _setComptroller(comptroller_);
        require(err == NO_ERROR, "setting comptroller failed");

        // Initialize block number and borrow index (block number mocks depend on comptroller being set)
        accrualBlockNumber = getBlockNumber();
        borrowIndex = mantissaOne;

        // Set the interest rate model (depends on block number / borrow index)
        err = _setInterestRateModelFresh(interestRateModel_);
        require(err == NO_ERROR, "setting interest rate model failed");

        name = name_;
        symbol = symbol_;
        decimals = decimals_;

        // The counter starts true to prevent changing it from zero to non-zero (i.e. smaller cost/refund)
        _notEntered = true;

        underlying = underlying_;
        EIP20Interface(underlying).totalSupply();
    }

    function getImplementation() public view returns (address) {
        return _getImplementation();
    }

    function _authorizeUpgrade(address newImplementation) internal view override onlyAdmin {
        AquaLpToken(newImplementation).isCToken();
    }

    modifier onlyAdmin() {
        if (msg.sender != admin) {
            revert CallerNotAdmin();
        }
        _;
    }

    modifier onlyAquaVault() {
        if (msg.sender != aquaVault) {
            revert CallerNotAquaVault();
        }
        _;
    }

    function setAquaVault(address newAquaVault) public onlyAdmin {
        aquaVault = newAquaVault;
        uint err = _setComptroller(ComptrollerInterface(newAquaVault));
        require(err == NO_ERROR, "setting comptroller failed");
    }

    /// @notice Update the borrow amount from swap
    ///         Called by AquaVault when
    ///         1. A trader (RFQ provider) power a swap
    ///            If the token is borrowed out to the swapper (short position), the borrow amount will be positive
    ///            If the token is put in by the swapepr (long position), the borrow amount will be negative
    ///         2. settle, liquidate, epochUpdate
    /// @param amount The amount to update
    function updateNetBorrow(int amount) external onlyAquaVault {
        netSwapBorrow += amount;
    }

    /// @notice Update the swap borrow reserve
    ///         Called by AquaVault on epochUpdate
    /// @param amount The amount to update
    function updateReserve(uint amount) external onlyAquaVault {
        totalReserves += amount;
    }

    /// @dev Override the exchange rate calculation to consider borrow amount from swap (netSwapBorrow)
    function exchangeRateStoredInternal() internal view override returns (uint) {
        uint _totalSupply = totalSupply;
        if (_totalSupply == 0) {
            /*
             * If there are no tokens minted:
             *  exchangeRate = initialExchangeRate
             */
            return initialExchangeRateMantissa;
        } else {
            /*
             * Otherwise:
             *  exchangeRate = (totalCash + totalBorrows - totalReserves - swapBorrowReserve + netSwapBorrow) / totalSupply
             */
            uint totalCash = getCashPrior();
            uint cashPlusBorrowsMinusReserves;
            if (netSwapBorrow >= 0) {
                cashPlusBorrowsMinusReserves = totalCash + totalBorrows - totalReserves + uint(netSwapBorrow);
            } else {
                cashPlusBorrowsMinusReserves = totalCash + totalBorrows - totalReserves - uint(-netSwapBorrow);
            }
            uint exchangeRate = (cashPlusBorrowsMinusReserves * expScale) / _totalSupply;

            return exchangeRate;
        }
    }

    /// @dev Override the balance calculation to read balance from AquaVault rather than from address(this)
    function getCashPrior() internal view override returns (uint) {
        return EIP20Interface(underlying).balanceOf(aquaVault);
    }

    /// @dev Override the transferIn function to transfer underlying to AquaVault rather to address(this)
    /// @param from The address to transfer from
    /// @param amount The amount to transfer
    function doTransferIn(address from, uint amount) internal override returns (uint) {
        // Read from storage once
        address underlying_ = underlying;
        EIP20NonStandardInterface token = EIP20NonStandardInterface(underlying_);
        uint balanceBefore = EIP20Interface(underlying_).balanceOf(aquaVault);
        token.transferFrom(from, aquaVault, amount);

        bool success;
        assembly {
            switch returndatasize()
            case 0 {
                // This is a non-standard ERC-20
                success := not(0) // set success to true
            }
            case 32 {
                // This is a compliant ERC-20
                returndatacopy(0, 0, 32)
                success := mload(0) // Set `success = returndata` of override external call
            }
            default {
                // This is an excessively non-compliant ERC-20, revert.
                revert(0, 0)
            }
        }
        require(success, "TOKEN_TRANSFER_IN_FAILED");

        // Calculate the amount that was *actually* transferred
        uint balanceAfter = EIP20Interface(underlying_).balanceOf(aquaVault);
        return balanceAfter - balanceBefore; // underflow already checked above, just subtract
    }

    /// @dev override to transfer underlying from AquaVault rather than from address(this)
    /// @param to The address to transfer to
    /// @param amount The amount to transfer
    function doTransferOut(address payable to, uint amount) internal override {
        AquaVault(aquaVault).pay(to, amount);
    }

    /// @dev override to consider borrow amount from swap (netSwapBorrow) when calculating utilization rate and Compound borrow interest rate
    /// @dev accrue interest for Compound borrow but no change to netSwapBorrow
    function accrueInterest() public override returns (uint) {
        /* Remember the initial block number */
        uint currentBlockNumber = getBlockNumber();
        uint accrualBlockNumberPrior = accrualBlockNumber;

        /* Short-circuit accumulating 0 interest */
        if (accrualBlockNumberPrior == currentBlockNumber) {
            return NO_ERROR;
        }

        /* Read the previous values out of storage */
        uint cashPrior = getCashPrior();
        uint borrowsPrior = totalBorrows;
        uint reservesPrior = totalReserves;
        uint borrowIndexPrior = borrowIndex;

        uint directAndSwapBorrow = borrowsPrior;
        if (netSwapBorrow > 0) {
            directAndSwapBorrow += uint(netSwapBorrow);
        }

        /* Calculate the current borrow interest rate */
        uint borrowRateMantissa = interestRateModel.getBorrowRate(cashPrior, directAndSwapBorrow, reservesPrior);
        require(borrowRateMantissa <= borrowRateMaxMantissa, "borrow rate is absurdly high");

        /* Calculate the number of blocks elapsed since the last accrual */
        uint blockDelta = currentBlockNumber - accrualBlockNumberPrior;

        /*
         * Calculate the interest accumulated into borrows and reserves and the new index:
         *  simpleInterestFactor = borrowRate * blockDelta
         *  interestAccumulated = simpleInterestFactor * totalBorrows
         *  totalBorrowsNew = interestAccumulated + totalBorrows
         *  totalReservesNew = interestAccumulated * reserveFactor + totalReserves
         *  borrowIndexNew = simpleInterestFactor * borrowIndex + borrowIndex
         */

        Exp memory simpleInterestFactor = mul_(Exp({mantissa: borrowRateMantissa}), blockDelta);
        uint interestAccumulated = mul_ScalarTruncate(simpleInterestFactor, borrowsPrior);
        uint totalBorrowsNew = interestAccumulated + borrowsPrior;
        uint totalReservesNew = mul_ScalarTruncateAddUInt(
            Exp({mantissa: reserveFactorMantissa}),
            interestAccumulated,
            reservesPrior
        );
        uint borrowIndexNew = mul_ScalarTruncateAddUInt(simpleInterestFactor, borrowIndexPrior, borrowIndexPrior);

        /////////////////////////
        // EFFECTS & INTERACTIONS
        // (No safe failures beyond this point)

        /* We write the previously calculated values into storage */
        accrualBlockNumber = currentBlockNumber;
        borrowIndex = borrowIndexNew;
        totalBorrows = totalBorrowsNew;
        totalReserves = totalReservesNew;

        /* We emit an AccrueInterest event */
        emit AccrueInterest(cashPrior, interestAccumulated, borrowIndexNew, totalBorrowsNew);

        return NO_ERROR;
    }

    /// @dev Override to consider borrow amount from swap (netSwapBorrow). When netSwapBorrow is positive, consider the utilization rate higher.
    /// @dev Not considering netSwapBorrow for negative value (more long postions than short) as it could become negative utilization rate
    function borrowRatePerBlock() external view override returns (uint) {
        uint directAndSwapBorrow = totalBorrows;
        if (netSwapBorrow > 0) {
            directAndSwapBorrow += uint(netSwapBorrow);
        }

        return interestRateModel.getBorrowRate(getCashPrior(), directAndSwapBorrow, totalReserves);
    }
}
