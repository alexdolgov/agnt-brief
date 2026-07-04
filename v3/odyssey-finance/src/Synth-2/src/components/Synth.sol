// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {Address} from "@openzeppelin/contracts/utils/Address.sol";
import {ISmartFarmingManager, IPool, IDepositToken, ISyntheticToken, IDebtToken} from "../interfaces/external/ISynth.sol";
import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import {Helpers} from "src/libraries/Helpers.sol";

/// @title Component delegate calls wrapper
library SynthDelegateCalls {
    using Address for address;

    function delegateDeposit(Synth synth_, IDepositToken depositToken_, uint256 amount_) internal {
        address(synth_).functionDelegateCall(abi.encodeWithSelector(Synth.deposit.selector, depositToken_, amount_));
    }

    function delegateWithdraw(
        Synth synth_,
        IDepositToken depositToken_,
        uint256 amount_
    ) internal returns (uint256 _withdrawn) {
        bytes memory _ret = address(synth_).functionDelegateCall(
            abi.encodeWithSelector(Synth.withdraw.selector, depositToken_, amount_)
        );
        return abi.decode(_ret, (uint256));
    }

    function delegateLeverage(
        Synth synth_,
        IDepositToken depositToken_,
        ISyntheticToken syntheticToken_,
        uint256 amountIn_,
        uint256 leverageX_,
        uint256 depositAmountMin_
    ) internal {
        address(synth_).functionDelegateCall(
            abi.encodeWithSelector(
                Synth.leverage.selector,
                depositToken_,
                syntheticToken_,
                amountIn_,
                leverageX_,
                depositAmountMin_
            )
        );
    }

    function delegateFlashRepay(
        Synth synth_,
        ISyntheticToken syntheticToken_,
        IDepositToken depositToken_,
        uint256 withdrawAmount_,
        uint256 repayAmountMin_
    ) internal {
        address(synth_).functionDelegateCall(
            abi.encodeWithSelector(
                Synth.flashRepay.selector,
                syntheticToken_,
                depositToken_,
                withdrawAmount_,
                repayAmountMin_
            )
        );
    }

    function delegateRepay(Synth synth_, IDebtToken debtToken_, uint256 amount_) internal {
        address(synth_).functionDelegateCall(abi.encodeWithSelector(Synth.repay.selector, debtToken_, amount_));
    }

    function delegateIssue(Synth synth_, IDebtToken debtToken_, uint256 amount_) internal {
        address(synth_).functionDelegateCall(abi.encodeWithSelector(Synth.issue.selector, debtToken_, amount_));
    }
}

/// @title Metronome Synth component
/// @dev This component is implemented to interact with just one pool
contract Synth {
    using SafeERC20 for IERC20;

    IPool public immutable pool;
    ISmartFarmingManager public immutable smartFarmingManager;

    error AmountIsZero();
    error AddressIsNull();

    constructor(IPool pool_) {
        if (address(pool_) == address(0)) revert AddressIsNull();

        pool = pool_;
        smartFarmingManager = pool_.smartFarmingManager();
    }

    /// @notice Deposit collateral
    /// @param depositToken_ The deposit token
    /// @param amount_ The amount to deposit (Use `MAX_UINT256` to deposit all balance)
    function deposit(IDepositToken depositToken_, uint256 amount_) external {
        IERC20 _tokenIn = depositToken_.underlying();
        amount_ = Helpers.amountOrAllBalanceIfMax(_tokenIn, amount_);
        if (amount_ == 0) revert AmountIsZero();

        _tokenIn.forceApprove(address(depositToken_), 0);
        _tokenIn.forceApprove(address(depositToken_), amount_);
        depositToken_.deposit(amount_, address(this));
    }

    /// @notice Withdraw collateral
    /// @param depositToken_ The deposit token
    /// @param amount_ The amount to withdraw (Use `MAX_UINT256` to withdraw all unlocked collateral)
    /// @return _withdrawn The actual amount withdrawn
    function withdraw(IDepositToken depositToken_, uint256 amount_) external returns (uint256 _withdrawn) {
        if (amount_ == type(uint256).max) {
            amount_ = depositToken_.unlockedBalanceOf(address(this));
        }

        if (amount_ == 0) revert AmountIsZero();

        (_withdrawn, ) = depositToken_.withdraw({amount_: amount_, to_: address(this)});
    }

    /// @notice Leverage
    /// @param depositToken_ The deposit token of the collateral
    /// @param syntheticToken_ The synthetic token to borrow
    /// @param amountIn_ The deposit amount  (Use `MAX_UINT256` to deposit all balance)
    /// @param leverageX_ The leverage factor (e.g. 1.5e18 == 150%)
    /// @param depositAmountMin_ The minimum deposit amount (slippage param)
    function leverage(
        IDepositToken depositToken_,
        ISyntheticToken syntheticToken_,
        uint256 amountIn_,
        uint256 leverageX_,
        uint256 depositAmountMin_
    ) external {
        IERC20 _tokenIn = depositToken_.underlying();
        amountIn_ = Helpers.amountOrAllBalanceIfMax(_tokenIn, amountIn_);

        if (amountIn_ == 0) revert AmountIsZero();

        _tokenIn.forceApprove(address(smartFarmingManager), 0);
        _tokenIn.forceApprove(address(smartFarmingManager), amountIn_);
        smartFarmingManager.leverage(
            _tokenIn,
            depositToken_,
            syntheticToken_,
            amountIn_,
            leverageX_,
            depositAmountMin_
        );
    }

    /// @notice Flash repay
    /// @param syntheticToken_ The synthetic token to repay
    /// @param depositToken_ The deposit token of the collateral
    /// @param withdrawAmount_ The amount to withdraw (Use `MAX_UINT256` to withdraw all unlocked collateral)
    /// @param repayAmountMin_ The minimum repay amount (slippage param)
    function flashRepay(
        ISyntheticToken syntheticToken_,
        IDepositToken depositToken_,
        uint256 withdrawAmount_,
        uint256 repayAmountMin_
    ) external {
        if (withdrawAmount_ == type(uint256).max) {
            withdrawAmount_ = depositToken_.unlockedBalanceOf(address(this));
        }

        if (withdrawAmount_ == 0) revert AmountIsZero();

        smartFarmingManager.flashRepay(syntheticToken_, depositToken_, withdrawAmount_, repayAmountMin_);
    }

    /// @notice Issue
    /// @param debtToken_ The debt token of the synthetic
    /// @param amount_ The amount to issue
    function issue(IDebtToken debtToken_, uint256 amount_) external {
        if (amount_ == 0) revert AmountIsZero();

        debtToken_.issue(amount_, address(this));
    }

    /// @notice Repay
    /// @param debtToken_ The debt token of the synthetic
    /// @param amount_ The amount to repay (Use `MAX_UINT256` to repay all debt or all balance - which is lower)
    function repay(IDebtToken debtToken_, uint256 amount_) external {
        if (amount_ == type(uint256).max) {
            amount_ = debtToken_.balanceOf(address(this));
        }

        if (amount_ == 0) revert AmountIsZero();

        debtToken_.repay(address(this), amount_);
    }
}
