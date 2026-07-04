// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import {Helpers} from "src/libraries/Helpers.sol";
import {IAToken, IVariableDebtToken, IPool, IPoolDataProvider, IIncentivesController} from "src/interfaces/external/IAaveV3.sol";
import {Address} from "@openzeppelin/contracts/utils/Address.sol";

/// @title Component delegate calls wrapper
library AaveV3DelegateCalls {
    using Address for address;

    function delegateSupply(AaveV3 aaveV3_, IAToken aToken_, uint256 amount_) internal {
        address(aaveV3_).functionDelegateCall(abi.encodeWithSelector(AaveV3.supply.selector, aToken_, amount_));
    }

    function delegateBorrow(AaveV3 aaveV3_, IVariableDebtToken vdToken_, uint256 amount_) internal {
        address(aaveV3_).functionDelegateCall(abi.encodeWithSelector(AaveV3.borrow.selector, vdToken_, amount_));
    }

    function delegateRepay(AaveV3 aaveV3_, IVariableDebtToken vdToken_, uint256 amount_) internal {
        address(aaveV3_).functionDelegateCall(abi.encodeWithSelector(AaveV3.repay.selector, vdToken_, amount_));
    }

    function delegateWithdraw(AaveV3 aaveV3_, IAToken aToken_, uint256 amount_) internal returns (uint256 _withdrawn) {
        bytes memory _ret = address(aaveV3_).functionDelegateCall(
            abi.encodeWithSelector(AaveV3.withdraw.selector, aToken_, amount_)
        );
        return abi.decode(_ret, (uint256));
    }

    function delegateClaimRewards(
        AaveV3 aaveV3_,
        address[] memory tokens_
    ) internal returns (IERC20[] memory _claimedTokens, uint256[] memory _claimedAmounts) {
        bytes memory _ret = address(aaveV3_).functionDelegateCall(
            abi.encodeWithSelector(AaveV3.claimRewards.selector, tokens_)
        );
        return abi.decode(_ret, (IERC20[], uint256[]));
    }
}

/// @title Aave V3 component
contract AaveV3 {
    using SafeERC20 for IERC20;

    IPool public immutable POOL;
    IPoolDataProvider public immutable DATA_PROVIDER;
    IIncentivesController public immutable INCENTIVES_CONTROLLER;

    error AmountIsZero();
    error AddressIsNull();

    constructor(IPool pool_, IPoolDataProvider poolDataProvider_, IIncentivesController incentivesController_) {
        if (address(pool_) == address(0)) revert AddressIsNull();
        if (address(poolDataProvider_) == address(0)) revert AddressIsNull();
        if (address(incentivesController_) == address(0)) revert AddressIsNull();

        POOL = pool_;
        DATA_PROVIDER = poolDataProvider_;
        INCENTIVES_CONTROLLER = incentivesController_;
    }

    /// @notice Get reserve tokens
    /// @param depositToken_ The deposit token
    /// @param borrowToken_ The borrow token
    function getReserveTokens(
        IERC20 depositToken_,
        IERC20 borrowToken_
    ) external view returns (address _aTokenDeposit, address _aTokenBorrow, address _vdTokenBorrow) {
        (_aTokenDeposit, , ) = DATA_PROVIDER.getReserveTokensAddresses(address(depositToken_));
        (_aTokenBorrow, , _vdTokenBorrow) = DATA_PROVIDER.getReserveTokensAddresses(address(borrowToken_));
    }

    /// @notice Supply/Deposit
    /// @param aToken_ The aToken
    /// @param amount_ The deposit amount  (Use `MAX_UINT256` to deposit all balance)
    function supply(IAToken aToken_, uint256 amount_) external {
        IERC20 _asset = getUnderlying(aToken_);
        amount_ = Helpers.amountOrAllBalanceIfMax(_asset, amount_);

        if (amount_ == 0) revert AmountIsZero();

        _asset.forceApprove(address(POOL), 0);
        _asset.forceApprove(address(POOL), amount_);
        POOL.supply({asset: address(_asset), amount: amount_, onBehalfOf: address(this), referralCode: 0});
    }

    /// @notice Borrow
    /// @param vdToken_ The vdToken
    /// @param amount_ The amount to borrow
    function borrow(IVariableDebtToken vdToken_, uint256 amount_) external {
        if (amount_ == 0) revert AmountIsZero();

        address _asset = vdToken_.UNDERLYING_ASSET_ADDRESS();

        POOL.borrow({
            asset: _asset,
            amount: amount_,
            interestRateMode: 2, // variable rate borrow
            referralCode: 0,
            onBehalfOf: address(this)
        });
    }

    /// @notice Repay
    /// @param vdToken_ The vsToken
    /// @param amount_ The amount to repay (Use `MAX_UINT256` to repay all debt or all balance - which is lower)
    function repay(IVariableDebtToken vdToken_, uint256 amount_) external {
        IERC20 _asset = getUnderlying(vdToken_);

        if (amount_ == type(uint256).max) {
            amount_ = vdToken_.balanceOf(address(this));
        }

        if (amount_ == 0) revert AmountIsZero();

        _asset.forceApprove(address(POOL), 0);
        _asset.forceApprove(address(POOL), amount_);
        POOL.repay({
            asset: address(_asset),
            amount: amount_,
            interestRateMode: 2, // variable rate borrow
            onBehalfOf: address(this)
        });
    }

    /// @notice Withdraw
    /// @param aToken_ The aToken
    /// @param amount_ The amount to withdraw (Use `MAX_UINT256` to withdraw all)
    /// @return _withdrawn The withdrawn amount
    function withdraw(IAToken aToken_, uint256 amount_) external returns (uint256 _withdrawn) {
        IERC20 _asset = getUnderlying(aToken_);

        if (amount_ == type(uint256).max) {
            amount_ = aToken_.balanceOf(address(this));
        }

        if (amount_ == 0) revert AmountIsZero();

        POOL.withdraw(address(_asset), amount_, address(this));

        return amount_;
    }

    /// @notice Get the aToken's underlying
    function getUnderlying(IERC20 aToken_) private view returns (IERC20) {
        return IERC20(IAToken(address(aToken_)).UNDERLYING_ASSET_ADDRESS());
    }

    /// @notice Get pending rewards
    function claimableRewards(
        address[] memory tokens_,
        address user
    ) external view returns (IERC20[] memory _rewardTokens, uint256[] memory _unclaimedAmounts) {
        (_rewardTokens, _unclaimedAmounts) = INCENTIVES_CONTROLLER.getAllUserRewards(tokens_, user);
    }

    /// @notice Claim all rewards
    /// @param tokens_ aToken/vToken/sToken entitle to receive rewards
    /// @return _rewardTokens Claimed tokens
    /// @return _claimedAmounts Claimed amounts
    function claimRewards(
        address[] memory tokens_
    ) external returns (IERC20[] memory _rewardTokens, uint256[] memory _claimedAmounts) {
        (_rewardTokens, _claimedAmounts) = INCENTIVES_CONTROLLER.claimAllRewards(tokens_, address(this));
    }

    function interestRateOf(IVariableDebtToken aToken_) external view returns (uint256) {
        IERC20 _asset = getUnderlying(aToken_);
        IPool.ReserveDataLegacy memory _data = POOL.getReserveData(address(_asset));
        // Note: AaveV3 uses `ray` unit for borrow rates
        return _data.currentVariableBorrowRate / 1e9;
    }

    function collateralFactorOf(IAToken aToken_) external view returns (uint256) {
        IERC20 _asset = getUnderlying(aToken_);
        (, uint256 _ltvBps, , , , , , , , ) = DATA_PROVIDER.getReserveConfigurationData(address(_asset));
        // Note: AaveV3 uses `BPS` unit for CF
        return _ltvBps * 1e14;
    }

    function healthFactorOf(address user_) external view returns (uint256 _healthFactor) {
        (, , , , , _healthFactor) = POOL.getUserAccountData(user_);
    }
}
