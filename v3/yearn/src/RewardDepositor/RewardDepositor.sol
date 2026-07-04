// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

import {IERC20, SafeERC20} from "./SafeERC20.sol";
import {Authenticated} from "./Authenticated.sol";
import {IRewardDistributor} from "./IRewardDistributor.sol";
import {IVault} from "./IVault.sol";

/**
    @title yCRV Reward Depositor
    @author Yearn Finance
    @notice Deposits rewards from receiver to distributor.
 */
contract RewardDepositor is Authenticated {
    using SafeERC20 for IERC20;

    IERC20 public constant CRVUSD =
        IERC20(0xf939E0A03FB07F59A73314E73794Be0E57ac1b4E);
    IVault public constant YVCRVUSD =
        IVault(0xBF319dDC2Edc1Eb6FDf9910E39b37Be221C8805F);
    address public constant YCRV_FEE_RECEIVER = 0x584BffC5F51CcAe39aD69F1c399743620e619C2B;
    IRewardDistributor public constant REWARDS_DISTRIBUTOR = IRewardDistributor(0xB226c52EB411326CdB54824a88aBaFDAAfF16D3d);

    bool public paused;
    uint public performanceFee;
    address public feeRecipient;

    event ParamsSet(
        bool paused,
        uint performanceFee,
        address feeRecipient
    );

    constructor(
        address _locker
    ) Authenticated(_locker) {
        performanceFee = 1_000;
        feeRecipient = 0x794f80E899c772de9E326eC83cCfD8D94e208B49;

        CRVUSD.approve(address(YVCRVUSD), type(uint).max);
        YVCRVUSD.approve(address(REWARDS_DISTRIBUTOR), type(uint).max);
    }

    /**
        @notice Permissionless distribution of Yearn rewards.
        @return amount amount of YVCRVUSD tokens added to staker.
    */
    function distributeRewards() external returns (uint amount) {
        require(!paused, "paused");

        amount = CRVUSD.balanceOf(YCRV_FEE_RECEIVER);
        if (amount == 0) return 0;

        CRVUSD.transferFrom(
            YCRV_FEE_RECEIVER,
            address(this),
            amount
        );

        amount = YVCRVUSD.deposit(amount, address(this));

        uint fee = (amount * performanceFee) / 10_000;
        if (fee > 0) {
            amount -= fee;
            IERC20(address(YVCRVUSD)).safeTransfer(feeRecipient, fee);
        }

        if (amount > 0) REWARDS_DISTRIBUTOR.depositReward(amount);
    }

    /**
        @notice Allow authorized users to configure parameters
        @param _paused set to true if we should disallow permissionless reward deposits
        @param _performanceFee fee charged on revenue.
        @param _feeRecipient fee recipient.
    */
    function setParams(
        bool _paused,
        uint _performanceFee,
        address _feeRecipient
    ) external enforceAuth {
        require(_performanceFee <= 2_000); // 20% max
        require(_feeRecipient != address(0));
        paused = _paused;
        performanceFee = _performanceFee;
        feeRecipient = _feeRecipient;
        emit ParamsSet(_paused, _performanceFee, _feeRecipient);
    }

    /**
        @notice Sweep stuck tokens to governance.
    */
    function sweep(IERC20 _token) external enforceAuth {
        uint balance = _token.balanceOf(address(this));
        if (balance > 0) {
            _token.safeTransfer(LOCKER.governance(), balance);
        }
    }
}
