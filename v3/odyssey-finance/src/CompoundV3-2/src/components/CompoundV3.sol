// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {Address} from "@openzeppelin/contracts/utils/Address.sol";
import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import {IComet, IRewards} from "../interfaces/external/ICompoundV3.sol";
import {Helpers} from "src/libraries/Helpers.sol";

/// @title Component delegate calls wrapper
library CompoundV3DelegateCalls {
    using Address for address;

    function delegateDeposit(CompoundV3 compoundV3_, IComet comet_, IERC20 tokenIn_, uint256 amount_) internal {
        address(compoundV3_).functionDelegateCall(
            abi.encodeWithSelector(CompoundV3.deposit.selector, comet_, tokenIn_, amount_)
        );
    }

    function delegateBorrow(CompoundV3 compoundV3_, IComet comet_, IERC20 borrowToken_, uint256 amount_) internal {
        address(compoundV3_).functionDelegateCall(
            abi.encodeWithSelector(CompoundV3.borrow.selector, comet_, borrowToken_, amount_)
        );
    }

    function delegateRepay(CompoundV3 compoundV3_, IComet comet_, IERC20 borrowToken_, uint256 amount_) internal {
        address(compoundV3_).functionDelegateCall(
            abi.encodeWithSelector(CompoundV3.repay.selector, comet_, borrowToken_, amount_)
        );
    }

    function delegateWithdraw(
        CompoundV3 compoundV3_,
        IComet comet_,
        IERC20 tokenOut_,
        uint256 amount_
    ) internal returns (uint256 _withdrawn) {
        bytes memory _ret = address(compoundV3_).functionDelegateCall(
            abi.encodeWithSelector(CompoundV3.withdraw.selector, comet_, tokenOut_, amount_)
        );
        return abi.decode(_ret, (uint256));
    }

    function delegateClaimAllRewards(
        CompoundV3 compoundV3_,
        IComet comet_
    ) internal returns (address _token, uint256 _claimed) {
        bytes memory _ret = address(compoundV3_).functionDelegateCall(
            abi.encodeWithSelector(CompoundV3.claimAllRewards.selector, comet_)
        );
        (_token, _claimed) = abi.decode(_ret, (address, uint256));
    }
}

/// @title Compound V3 component
contract CompoundV3 {
    using SafeERC20 for IERC20;

    IRewards public immutable REWARDS;

    error AmountIsZero();
    error AddressIsNull();
    error CouldNotRedeem();
    error CouldNotDeposit();
    error CouldNotRepay();
    error CouldNotBorrow();

    constructor(IRewards rewards_) {
        if (address(rewards_) == address(0)) revert AddressIsNull();

        REWARDS = rewards_;
    }

    /// @notice Deposit
    /// @param comet_ The comet contract
    /// @param tokenIn_ The token to deposit
    /// @param amount_ The deposit amount  (Use `MAX_UINT256` to deposit all balance)
    function deposit(IComet comet_, IERC20 tokenIn_, uint256 amount_) external {
        amount_ = Helpers.amountOrAllBalanceIfMax(tokenIn_, amount_);

        if (amount_ == 0) revert AmountIsZero();

        tokenIn_.forceApprove(address(comet_), 0);
        tokenIn_.forceApprove(address(comet_), amount_);
        comet_.supply(address(tokenIn_), amount_);
    }

    /// @notice Borrow
    /// @param comet_ The comet contract
    /// @param borrowToken_ The token to borrow
    /// @param amount_ The amount to borrow
    function borrow(IComet comet_, IERC20 borrowToken_, uint256 amount_) external {
        if (amount_ == 0) revert AmountIsZero();

        comet_.withdraw(address(borrowToken_), amount_);
    }

    /// @notice Repay
    /// @param comet_ The comet contract
    /// @param borrowToken_ The token to repay
    /// @param amount_ The amount to repay (Use `MAX_UINT256` to repay all debt or all balance - which is lower)
    function repay(IComet comet_, IERC20 borrowToken_, uint256 amount_) external {
        if (amount_ == type(uint256).max) {
            amount_ = comet_.borrowBalanceOf(address(this));
        }

        if (amount_ == 0) revert AmountIsZero();

        borrowToken_.forceApprove(address(comet_), 0);
        borrowToken_.forceApprove(address(comet_), amount_);
        comet_.supply(address(borrowToken_), amount_);
    }

    /// @notice Withdraw
    /// @param comet_ The comet contract
    /// @param tokenOut_ The token to withdraw
    /// @param amount_ The amount to withdraw
    function withdraw(IComet comet_, IERC20 tokenOut_, uint256 amount_) external returns (uint256 _withdrawn) {
        if (amount_ == type(uint256).max) {
            amount_ = comet_.collateralBalanceOf(address(this), address(tokenOut_));
        }

        if (amount_ == 0) revert AmountIsZero();

        uint256 _before = tokenOut_.balanceOf(address(this));
        comet_.withdraw(address(tokenOut_), amount_);
        _withdrawn = tokenOut_.balanceOf(address(this)) - _before;
    }

    /// @notice Get claimable rewards
    /// @param comet_ The comet contract
    function claimableRewards(
        IComet comet_,
        address user_
    ) external returns (address _rewardToken, uint256 _claimableRewards) {
        IRewards.RewardOwed memory _claimable = REWARDS.getRewardOwed(address(comet_), user_);
        return (_claimable.token, _claimable.owed);
    }

    /// @notice Claim rewards
    /// @param comet_ The comet contract
    function claimAllRewards(IComet comet_) external returns (address _rewardToken, uint256 _claimedRewards) {
        IRewards.RewardOwed memory _claimable = REWARDS.getRewardOwed(address(comet_), address(this));

        if (_claimable.owed > 0) {
            REWARDS.claim(address(comet_), address(this), true);
            return (_claimable.token, _claimable.owed);
        }
    }

    function collateralFactorOf(IComet comet_, IERC20 asset_) external view returns (uint256) {
        IComet.AssetInfo memory _info = comet_.getAssetInfoByAddress(address(asset_));
        return _info.borrowCollateralFactor;
    }

    function interestRateOf(IComet comet_) external view returns (uint256) {
        uint256 _utilization = comet_.getUtilization();
        // Note: interest rate per seconds
        return comet_.getBorrowRate(_utilization) * 365 days;
    }
}
