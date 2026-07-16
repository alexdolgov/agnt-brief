// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

import {ReentrancyGuard} from "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import {UUPSUpgradeable} from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import {IAquaLpToken} from "../interfaces/IAquaLpToken.sol";
import {ExponentialNoError} from "../Compound/ExponentialNoError.sol";
import {CErc20} from "../Compound/CErc20.sol";
import {ComptrollerInterface} from "../Compound/ComptrollerInterface.sol";
import {InterestRateModel} from "../Compound/InterestRateModel.sol";
import {EIP20Interface} from "../Compound/EIP20Interface.sol";
import {EIP20NonStandardInterface} from "../Compound/EIP20NonStandardInterface.sol";
import {AquaVault} from "./AquaVault.sol";

contract AquaLpTokenStorage {
    address public aquaVault;
    int public netSwapBorrow;
    uint public swapBorrowReserve;

    uint256[50] private __gap;
}

contract AquaLpToken is CErc20, UUPSUpgradeable, AquaLpTokenStorage {
    error CallerNotAquaVault();
    error CallerNotAdmin();

    // copied from CToken.initialize() https://github.com/compound-finance/compound-protocol/blob/master/contracts/CToken.sol#L26
    // and CErc20.initialize() https://github.com/compound-finance/compound-protocol/blob/master/contracts/CErc20.sol#L16-L39
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
        // require(msg.sender == admin, "only admin may initialize the market");
        // require(accrualBlockNumber == 0 && borrowIndex == 0, "market may only be initialized once");
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

    function setAquaVault(address newAquaVault) public onlyAdmin  {
        aquaVault = newAquaVault;
        uint err = _setComptroller(ComptrollerInterface(newAquaVault));
        require(err == NO_ERROR, "setting comptroller failed");
    }

    function updateNetBorrow(int amount) external onlyAquaVault {
        netSwapBorrow += amount;
    }

    function updateReserve(uint amount) external onlyAquaVault {
        totalReserves += amount;
    }

    /**
     * @notice Override to consider borrow amount from swap and swap reserve
     */
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

    function getCashPrior() internal view virtual override returns (uint) {
        return EIP20Interface(underlying).balanceOf(aquaVault);
    }

    /**
     * @dev override to transfer to AquaVault
     *
     *      Note: This wrapper safely handles non-standard ERC-20 tokens that do not return a value.
     *            See here: https://medium.com/coinmonks/missing-return-value-bug-at-least-130-tokens-affected-d67bf08521ca
     */
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

    /**
     * @dev override to transfer underlying from AquaVault
     */
    function doTransferOut(address payable to, uint amount) internal override {
        AquaVault(aquaVault).pay(to, amount);
    }

    /**
     * @notice Override to consider borrow amount from swap
     */
    function accrueInterest() public virtual override returns (uint) {
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

        uint borrowVauleWithSwap = borrowsPrior;
        if (netSwapBorrow > 0) {
            borrowVauleWithSwap += uint(netSwapBorrow);
        }

        /* Calculate the current borrow interest rate */
        uint borrowRateMantissa = interestRateModel.getBorrowRate(cashPrior, borrowVauleWithSwap, reservesPrior);
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
}
