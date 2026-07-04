// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {Address} from "@openzeppelin/contracts/utils/Address.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {IVPool} from "../interfaces/external/IVPool.sol";
import {Helpers} from "src/libraries/Helpers.sol";

/// @title Component delegate calls wrapper
library VesperDelegateCalls {
    using Address for address;

    function delegateDeposit(Vesper vesper_, IVPool vPool_, uint256 amount_) internal {
        address(vesper_).functionDelegateCall(abi.encodeWithSelector(Vesper.deposit.selector, vPool_, amount_));
    }

    function delegateWithdraw(Vesper vesper_, IVPool vPool_, uint256 shares_) internal returns (uint256 _withdrawn) {
        bytes memory _ret = address(vesper_).functionDelegateCall(
            abi.encodeWithSelector(Vesper.withdraw.selector, vPool_, shares_)
        );
        return abi.decode(_ret, (uint256));
    }
}

/// @title The Vesper Finance component
contract Vesper {
    using SafeERC20 for IERC20;

    error AmountIsZero();

    /// @notice Deposit
    /// @param vPool_ The pool
    /// @param amount_ The amount to deposit (Use `MAX_UINT256` to deposit all balance)
    function deposit(IVPool vPool_, uint256 amount_) external {
        IERC20 tokenIn_ = IERC20(vPool_.token());

        amount_ = Helpers.amountOrAllBalanceIfMax(tokenIn_, amount_);

        if (amount_ == 0) revert AmountIsZero();

        tokenIn_.forceApprove(address(vPool_), 0);
        tokenIn_.forceApprove(address(vPool_), amount_);
        vPool_.deposit(amount_);
    }

    /// @notice Withdraw
    /// @param vPool_ The pool
    /// @param shares_ The shares to burn (Use `MAX_UINT256` to withdraw all)
    /// @return _withdrawn The withdrawn underlying amount
    function withdraw(IVPool vPool_, uint256 shares_) external returns (uint256 _withdrawn) {
        if (shares_ == type(uint256).max) {
            shares_ = vPool_.balanceOf(address(this));
        }

        if (shares_ == 0) revert AmountIsZero();

        IERC20 _tokenOut = IERC20(vPool_.token());

        uint256 _before = _tokenOut.balanceOf(address(this));

        vPool_.withdraw(shares_);

        return _tokenOut.balanceOf(address(this)) - _before;
    }

    /// @notice Get underlying balance
    /// @param vPool_ The pool
    /// @return The underlying balance
    function underlyingBalance(IVPool vPool_, address account_) external view returns (uint256) {
        return (vPool_.balanceOf(account_) * vPool_.pricePerShare()) / 1e18;
    }
}
