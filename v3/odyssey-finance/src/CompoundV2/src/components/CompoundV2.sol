// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {Address} from "@openzeppelin/contracts/utils/Address.sol";
import {ICToken, IComptroller} from "../interfaces/external/ICompoundV2.sol";
import {IWETH} from "src/interfaces/external/IWETH.sol";
import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import {Helpers} from "src/libraries/Helpers.sol";

/// @title Component delegate calls wrapper
library CompoundV2DelegateCalls {
    using Address for address;

    function delegateEnterMarkets(CompoundV2 compoundV2_, ICToken _cTokenDeposit, ICToken _cTokenBorrow) internal {
        address(compoundV2_).functionDelegateCall(
            abi.encodeWithSelector(CompoundV2.enterMarkets.selector, _cTokenDeposit, _cTokenBorrow)
        );
    }

    function delegateDeposit(CompoundV2 compoundV2_, ICToken cToken_, uint256 amount_) internal {
        address(compoundV2_).functionDelegateCall(
            abi.encodeWithSelector(CompoundV2.deposit.selector, cToken_, amount_)
        );
    }

    function delegateBorrow(CompoundV2 compoundV2_, ICToken cToken_, uint256 amount_) internal {
        address(compoundV2_).functionDelegateCall(abi.encodeWithSelector(CompoundV2.borrow.selector, cToken_, amount_));
    }

    function delegateRepay(CompoundV2 compoundV2_, ICToken cToken_, uint256 amount_) internal {
        address(compoundV2_).functionDelegateCall(abi.encodeWithSelector(CompoundV2.repay.selector, cToken_, amount_));
    }

    function delegateWithdraw(
        CompoundV2 compoundV2_,
        ICToken cToken_,
        uint256 amount_
    ) internal returns (uint256 _withdrawn) {
        bytes memory _ret = address(compoundV2_).functionDelegateCall(
            abi.encodeWithSelector(CompoundV2.withdraw.selector, cToken_, amount_)
        );
        return abi.decode(_ret, (uint256));
    }
}

/// @title Compound V2 component
contract CompoundV2 {
    using SafeERC20 for IERC20;

    uint256 constant BLOCKS_PER_YEAR = 2102400;

    IWETH public immutable WETH;

    error AmountIsZero();
    error AddressIsNull();
    error InvalidCompoundToken();
    error CouldNotRedeem();
    error CouldNotDeposit();
    error CouldNotRepay();
    error CouldNotBorrow();

    constructor(IWETH weth_) {
        if (address(weth_) == address(0)) revert AddressIsNull();

        WETH = weth_;
    }

    /// @notice Enter Markets
    /// @param cTokenDeposit_ The CToken to deposit to
    /// @param cTokenBorrow_ The CToken to borrow from
    function enterMarkets(ICToken cTokenDeposit_, ICToken cTokenBorrow_) external {
        address[] memory _cTokens = new address[](2);
        _cTokens[0] = address(cTokenDeposit_);
        _cTokens[1] = address(cTokenBorrow_);

        uint256[] memory _marketsReturn = IComptroller(cTokenDeposit_.comptroller()).enterMarkets(_cTokens);

        if (_marketsReturn[0] != 0) revert InvalidCompoundToken();
        if (_marketsReturn[1] != 0) revert InvalidCompoundToken();
    }

    /// @notice Deposit
    /// @param cToken_ The CToken
    /// @param amount_ The deposit amount  (Use `MAX_UINT256` to deposit all balance)
    function deposit(ICToken cToken_, uint256 amount_) external {
        IERC20 _underlying = getUnderlying(cToken_);

        amount_ = Helpers.amountOrAllBalanceIfMax(_underlying, amount_);

        if (amount_ == 0) revert AmountIsZero();

        if (isCEther(cToken_)) {
            WETH.withdraw(amount_);
            cToken_.mint{value: amount_}();
        } else {
            _underlying.forceApprove(address(cToken_), 0);
            _underlying.forceApprove(address(cToken_), amount_);
            if (cToken_.mint(amount_) != 0) revert CouldNotDeposit();
        }
    }

    /// @notice Borrow
    /// @param cToken_ The CToken
    /// @param amount_ The amount to borrow
    function borrow(ICToken cToken_, uint256 amount_) external {
        if (amount_ == 0) revert AmountIsZero();

        if (cToken_.borrow(amount_) != 0) revert CouldNotBorrow();

        if (isCEther(cToken_)) {
            WETH.deposit{value: amount_}();
        }
    }

    /// @notice Repay
    /// @param cToken_ The CToken
    /// @param amount_ The amount to repay (Use `MAX_UINT256` to repay all debt or all balance - which is lower)
    function repay(ICToken cToken_, uint256 amount_) external {
        if (amount_ == type(uint256).max) {
            amount_ = cToken_.borrowBalanceCurrent(address(this));
        }

        if (amount_ == 0) revert AmountIsZero();

        if (isCEther(cToken_)) {
            WETH.withdraw(amount_);
            cToken_.repayBorrow{value: amount_}();
        } else {
            IERC20 _underlying = getUnderlying(cToken_);
            _underlying.forceApprove(address(cToken_), 0);
            _underlying.forceApprove(address(cToken_), amount_);
            if (cToken_.repayBorrow(amount_) != 0) revert CouldNotRepay();
        }
    }

    /// @notice Withdraw
    /// @param cToken_ The CToken
    /// @param amount_ The amount to withdraw (Use `MAX_UINT256` to withdraw all)
    /// @return _withdrawn The withdrawn amount
    function withdraw(ICToken cToken_, uint256 amount_) external returns (uint256 _withdrawn) {
        if (amount_ == type(uint256).max) {
            amount_ = cToken_.balanceOfUnderlying(address(this));
        }

        if (amount_ == 0) revert AmountIsZero();

        if (cToken_.redeemUnderlying(amount_) != 0) revert CouldNotRedeem();

        if (isCEther(cToken_)) {
            WETH.deposit{value: amount_}();
        }

        return amount_;
    }

    /// @notice Check if the CToken is CEther
    function isCEther(ICToken cToken_) private view returns (bool) {
        try cToken_.underlying() {
            return false;
        } catch {
            return true;
        }
    }

    /// @notice Get the CToken's underlying
    function getUnderlying(ICToken cToken_) public view returns (IERC20) {
        if (isCEther(cToken_)) return WETH;
        else return cToken_.underlying();
    }

    function getInterestRateOf(ICToken cToken_) external view returns (uint256) {
        return cToken_.borrowRatePerBlock() * BLOCKS_PER_YEAR;
    }

    function collateralFactorOf(ICToken cToken_) external view returns (uint256 _collateralFactor) {
        (, _collateralFactor, ) = IComptroller(cToken_.comptroller()).markets(address(cToken_));
    }
}
