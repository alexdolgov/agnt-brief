// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {SafeTransferLib} from 'solmate/utils/SafeTransferLib.sol';
import {Constants} from "./Constants.sol";

type Currency is address;

/// @title CurrencyLibrary
/// @dev This library allows for transferring and holding native tokens and ERC20 tokens
library CurrencyLibrary {
    using CurrencyLibrary for Currency;
    using SafeERC20 for IERC20;
    using SafeTransferLib for address;

    /// @notice Thrown when a native transfer fails
    error NativeTransferFailed();

    /// @notice Thrown when an ERC20 transfer fails
    error ERC20TransferFailed();

    /// @notice Thrown when an ERC20 approve fails
    error ERC20ApproveFailed();

    Currency public constant NATIVE = Currency.wrap(Constants.NATIVE_ADDRESS);

    function transfer(Currency currency, address to, uint256 amount) internal {
        if (currency.isNative()) {
            to.safeTransferETH(amount);
        } else {
            IERC20(Currency.unwrap(currency)).safeTransfer(to, amount);
        }
    }

    function transferFrom(Currency currency, address from, address to, uint256 amount) internal {
        if (currency.isNative()) {
            revert NativeTransferFailed();
        } else {
            IERC20(Currency.unwrap(currency)).safeTransferFrom(from, to, amount);
        }
    }

    function approve(Currency currency, address to, uint256 amount) internal {
        if (currency.isNative()) {
            revert ERC20ApproveFailed();
        } else {
            IERC20(Currency.unwrap(currency)).safeIncreaseAllowance(to, amount);
        }
    }

    function balanceOfSelf(Currency currency) internal view returns (uint256) {
        return balanceOf(currency, address(this));
    }

    function balanceOf(Currency currency, address owner) internal view returns (uint256) {
        if (currency.isNative()) {
            return owner.balance;
        } else {
            return IERC20(Currency.unwrap(currency)).balanceOf(owner);
        }
    }

    function equals(Currency currency, Currency other) internal pure returns (bool) {
        return Currency.unwrap(currency) == Currency.unwrap(other);
    }

    function isNative(Currency currency) internal pure returns (bool) {
        return Currency.unwrap(currency) == Currency.unwrap(NATIVE);
    }
}
