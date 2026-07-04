// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import {Helpers} from "src/libraries/Helpers.sol";
import {IAToken, IVariableDebtToken, IAaveLendingPool, IAaveProtocolDataProvider, IAaveIncentivesController, IStakedAave} from "src/interfaces/external/IAaveV2.sol";
import {Address} from "@openzeppelin/contracts/utils/Address.sol";

/// @title Component delegate calls wrapper
library AaveV2DelegateCalls {
    using Address for address;

    function delegateDeposit(AaveV2 aaveV2_, IAToken aToken_, uint256 amount_) internal {
        address(aaveV2_).functionDelegateCall(abi.encodeWithSelector(AaveV2.deposit.selector, aToken_, amount_));
    }

    function delegateBorrow(AaveV2 aaveV2_, IVariableDebtToken vdToken_, uint256 amount_) internal {
        address(aaveV2_).functionDelegateCall(abi.encodeWithSelector(AaveV2.borrow.selector, vdToken_, amount_));
    }

    function delegateRepay(AaveV2 aaveV2_, IVariableDebtToken vdToken_, uint256 amount_) internal {
        address(aaveV2_).functionDelegateCall(abi.encodeWithSelector(AaveV2.repay.selector, vdToken_, amount_));
    }

    function delegateWithdraw(AaveV2 aaveV2_, IAToken aToken_, uint256 amount_) internal returns (uint256 _withdrawn) {
        bytes memory _ret = address(aaveV2_).functionDelegateCall(
            abi.encodeWithSelector(AaveV2.withdraw.selector, aToken_, amount_)
        );
        return abi.decode(_ret, (uint256));
    }

    function delegateClaimRewards(AaveV2 aaveV2_, address[] memory tokens_) internal returns (IERC20 _aave) {
        bytes memory _ret = address(aaveV2_).functionDelegateCall(
            abi.encodeWithSelector(AaveV2.claimRewards.selector, tokens_)
        );
        return abi.decode(_ret, (IERC20));
    }
}

/// @title Aave V2 component
contract AaveV2 {
    using SafeERC20 for IERC20;

    IAaveLendingPool public immutable LENDING_POOL;
    IAaveProtocolDataProvider public immutable DATA_PROVIDER;
    IAaveIncentivesController public immutable INCENTIVES_CONTROLLER;
    IStakedAave public immutable STK_AAVE;
    IERC20 public immutable AAVE;

    error AmountIsZero();
    error AddressIsNull();

    constructor(
        IAaveLendingPool aaveLendingPool_,
        IAaveProtocolDataProvider aaveProtocolDataProvider_,
        IAaveIncentivesController aaveIncentivesController_,
        IStakedAave stkAAVE_,
        IERC20 aave_
    ) {
        if (address(aaveLendingPool_) == address(0)) revert AddressIsNull();
        if (address(aaveProtocolDataProvider_) == address(0)) revert AddressIsNull();
        if (address(aaveIncentivesController_) == address(0)) revert AddressIsNull();
        if (address(stkAAVE_) == address(0)) revert AddressIsNull();
        if (address(aave_) == address(0)) revert AddressIsNull();

        LENDING_POOL = aaveLendingPool_;
        DATA_PROVIDER = aaveProtocolDataProvider_;
        INCENTIVES_CONTROLLER = aaveIncentivesController_;
        STK_AAVE = stkAAVE_;
        AAVE = aave_;
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

    /// @notice Deposit
    /// @param aToken_ The aToken
    /// @param amount_ The deposit amount  (Use `MAX_UINT256` to deposit all balance)
    function deposit(IAToken aToken_, uint256 amount_) external {
        IERC20 _asset = getUnderlying(aToken_);
        amount_ = Helpers.amountOrAllBalanceIfMax(_asset, amount_);

        if (amount_ == 0) revert AmountIsZero();

        _asset.forceApprove(address(LENDING_POOL), 0);
        _asset.forceApprove(address(LENDING_POOL), amount_);

        LENDING_POOL.deposit({asset: address(_asset), amount: amount_, onBehalfOf: address(this), referralCode: 0});
    }

    /// @notice Borrow
    /// @param vdToken_ The vdToken
    /// @param amount_ The amount to borrow
    function borrow(IVariableDebtToken vdToken_, uint256 amount_) external {
        if (amount_ == 0) revert AmountIsZero();

        LENDING_POOL.borrow({
            asset: vdToken_.UNDERLYING_ASSET_ADDRESS(),
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

        _asset.forceApprove(address(LENDING_POOL), 0);
        _asset.forceApprove(address(LENDING_POOL), amount_);
        LENDING_POOL.repay({
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

        LENDING_POOL.withdraw(address(_asset), amount_, address(this));

        return amount_;
    }

    /// @notice Get the aToken's underlying
    function getUnderlying(IERC20 aToken_) public view returns (IERC20) {
        return IERC20(IAToken(address(aToken_)).UNDERLYING_ASSET_ADDRESS());
    }

    /// @notice Claim all rewards
    /// @param tokens_ aToken/vToken/sToken entitle to receive rewards
    /// @return _aave The AAVE token
    /// @dev If we unstake all Aave, we can't start cooldown because it requires StakedAave balance.
    /// @dev DO NOT convert 'if else' to 2 'if's as we are reading cooldown state once to save gas.
    /// @dev Not all collateral token has aave incentive
    function claimRewards(address[] memory tokens_) external returns (IERC20 _aave) {
        (uint256 _cooldownStart, uint256 _cooldownEnd, uint256 _unstakeEnd) = cooldownData();
        if (_canStartCooldown(_cooldownStart, _unstakeEnd)) {
            // claim stkAave when its first call or unstake period passed.
            INCENTIVES_CONTROLLER.claimRewards(tokens_, type(uint256).max, address(this));
        }
        if (STK_AAVE.balanceOf(address(this)) > 0) {
            // Fetch and check again for next action.
            (_cooldownStart, _cooldownEnd, _unstakeEnd) = cooldownData();
            if (_canUnstake(_cooldownEnd, _unstakeEnd)) {
                STK_AAVE.redeem(address(this), type(uint256).max);
            } else if (_canStartCooldown(_cooldownStart, _unstakeEnd)) {
                STK_AAVE.cooldown();
            }

            STK_AAVE.claimRewards(address(this), type(uint256).max);
        }
        return AAVE;
    }

    /// @notice Return cooldown related timestamps
    function cooldownData() private view returns (uint256 _cooldownStart, uint256 _cooldownEnd, uint256 _unstakeEnd) {
        _cooldownStart = STK_AAVE.stakersCooldowns(address(this));
        _cooldownEnd = _cooldownStart + STK_AAVE.COOLDOWN_SECONDS();
        _unstakeEnd = _cooldownEnd + STK_AAVE.UNSTAKE_WINDOW();
    }

    /// @dev Return true, only if we have StakedAave balance and either cooldown expired or cooldown is zero
    /// @dev If we are in cooldown period we cannot unstake Aave. But our cooldown is still valid so we do
    /// not want to reset/start cooldown.
    function _canStartCooldown(uint256 _cooldownStart, uint256 _unstakeEnd) private view returns (bool) {
        return (_cooldownStart == 0 || block.timestamp > _unstakeEnd);
    }

    /// @dev Return true, if cooldown is over and we are in unstake window.
    function _canUnstake(uint256 _cooldownEnd, uint256 _unstakeEnd) private view returns (bool) {
        return block.timestamp > _cooldownEnd && block.timestamp <= _unstakeEnd;
    }

    function interestRateOf(IVariableDebtToken aToken_) external view returns (uint256) {
        IERC20 _asset = getUnderlying(aToken_);
        IAaveLendingPool.ReserveData memory _data = LENDING_POOL.getReserveData(address(_asset));
        // Note: AaveV2 uses `ray` unit for borrow rates
        return _data.currentVariableBorrowRate / 1e9;
    }

    function collateralFactorOf(IAToken aToken_) external view returns (uint256) {
        IERC20 _asset = getUnderlying(aToken_);
        (, uint256 _ltv, , , , , , , , ) = DATA_PROVIDER.getReserveConfigurationData(address(_asset));
        // Note: AaveV2 uses `BPS` unit for CF
        return _ltv * 1e14;
    }

    function healthFactorOf(address user_) external view returns (uint256 _healthFactor) {
        (, , , , , _healthFactor) = LENDING_POOL.getUserAccountData(user_);
    }
}
