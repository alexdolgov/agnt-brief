// SPDX-License-Identifier: UNLICENSED

// Copyright (c) 2023 JonesDAO - All rights reserved
// Jones DAO: https://www.jonesdao.io/

// Check https://docs.jonesdao.io/jones-dao/other/bounty for details on our bounty program.

pragma solidity ^0.8.20;

import {ReentrancyGuardUpgradeable} from "openzeppelin-contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol";
import {PausableUpgradeable} from "openzeppelin-contracts-upgradeable/utils/PausableUpgradeable.sol";
import {OwnableUpgradeable} from "openzeppelin-contracts-upgradeable/access/OwnableUpgradeable.sol";
import {IERC20} from "openzeppelin-contracts/token/ERC20/IERC20.sol";

import {ICompoundVault} from "src/interfaces/vaults/ICompoundVault.sol";
import {IUnderlyingVault} from "src/interfaces/vaults/IUnderlyingVault.sol";
import {IRouter} from "src/interfaces/IRouter.sol";
import {IRewardTracker} from "src/interfaces/IRewardTracker.sol";
import {IRoleController} from "src/interfaces/IRoleController.sol";

import {IRouterV1} from "src/interfaces/IRouterV1.sol";

import {FixedPointMathLib} from "solmate/utils/FixedPointMathLib.sol";

contract Router is IRouter, OwnableUpgradeable, ReentrancyGuardUpgradeable, PausableUpgradeable {
    using FixedPointMathLib for uint256;

    /* -------------------------------------------------------------------------- */
    /*                                  VARIABLES                                 */
    /* -------------------------------------------------------------------------- */

    IRoleController public roleController;
    IUnderlyingVault public underlyingVault;
    ICompoundVault public compoundingVault;
    IRewardTracker public tracker;
    address public socket;

    IERC20 private USDC;

    /// @notice user => delegators
    mapping(address => Delegates) public delegates;

    /// @notice User => Request (Recorded user action data)
    mapping(address => Request) public withdrawRequests;

    /// @notice User => bool (True if user redemeed old withdraw request)
    mapping(address => bool) public redemeed;

    /// @notice total withdraw requests
    uint256 public totalWithdrawRequests;

    IRouterV1 public routerV1;

    address public incentiveReceiver;
    uint256 public withdrawCooldown;

    uint256 public constant BASIS_POINTS = 1e12;

    /* -------------------------------------------------------------------------- */
    /*                                 INITIALIZE                                 */
    /* -------------------------------------------------------------------------- */

    function initialize(
        address _routerV1,
        address _roleController,
        address _underlyingVault,
        address _compoundingVault,
        address _tracker,
        address _incentiveReceiver
    ) external initializer {
        __Ownable_init(msg.sender);
        __ReentrancyGuard_init();

        routerV1 = IRouterV1(_routerV1);
        roleController = IRoleController(_roleController);
        underlyingVault = IUnderlyingVault(_underlyingVault);
        compoundingVault = ICompoundVault(_compoundingVault);
        tracker = IRewardTracker(_tracker);
        socket = 0x88616cB9499F32Ff6A784B66B60aABF0bCf0df39;

        incentiveReceiver = _incentiveReceiver;

        withdrawCooldown = 2 weeks;

        USDC = IERC20(0xaf88d065e77c8cC2239327C5EDb3A432268e5831);
    }

    /* -------------------------------------------------------------------------- */
    /*                                   EXTERNAL                                 */
    /* -------------------------------------------------------------------------- */

    /**
     * @notice Mints Vault shares to receiver by depositing underlying tokens.
     * @param _assets The amount of assets to deposit.
     * @return shares The amount of shares that were minted and received.
     */
    function deposit(uint256 _assets, address _receiver, bool _compound)
        external
        nonReentrant
        whenNotPaused
        returns (uint256)
    {
        if (_assets == 0) {
            revert ZeroAmount();
        }

        /// @notice transfer USDC to Underlying Vault
        USDC.transferFrom(msg.sender, address(underlyingVault), _assets);

        /// @notice mint UVRT
        underlyingVault.mint(_assets, address(tracker));

        uint256 shares;

        if (_compound) {
            /// @notice stake UVRT to Reward Tracker
            tracker.stake(address(compoundingVault), _assets);

            /// @notice mint jUSDC
            shares = compoundingVault.deposit(_assets, _receiver);
        } else {
            /// @notice stake UVRT to Reward Tracker
            tracker.stake(_receiver, _assets);
        }

        emit Deposit(msg.sender, _assets, _receiver, shares);

        return shares;
    }

    function multichainDeposit(address _receiver, bool _compound)
        external
        nonReentrant
        whenNotPaused
        returns (uint256)
    {
        uint256 amount = USDC.allowance(msg.sender, address(this));

        if (amount == 0) {
            return 0;
        }

        if (!_onlySocket()) {
            USDC.transferFrom(msg.sender, _receiver, amount);
            return 0;
        }

        /// @notice transfer USDC to Underlying Vault
        USDC.transferFrom(msg.sender, address(underlyingVault), amount);

        /// @notice mint UVRT
        underlyingVault.mint(amount, address(tracker));

        uint256 shares;

        if (_compound) {
            /// @notice stake UVRT to Reward Tracker
            tracker.stake(address(compoundingVault), amount);

            /// @notice mint jUSDC
            shares = compoundingVault.deposit(amount, _receiver);
        } else {
            /// @notice stake UVRT to Reward Tracker
            tracker.stake(_receiver, amount);
        }

        emit Deposit(msg.sender, amount, _receiver, shares);

        return shares;
    }

    /**
     * @notice Requests to withdraw the given amount of shares from the message sender's balance.
     * The withdrawal request will be added to the total amount of withdrawal requests, and will be
     * added to the user's total withdrawal requests.
     *
     * @param _assetsOrShares The amount of shares to withdraw.
     */
    function withdrawRequest(uint256 _assetsOrShares, bool _compound, address _receiver, bytes calldata _enforceData)
        external
        nonReentrant
        returns (uint256)
    {
        if (_assetsOrShares == 0) {
            revert ZeroAmount();
        }

        /// @notice Withdraw UVRT
        if (_compound) {
            /// @notice burn jUSDC & withdraw UVRT
            _assetsOrShares = compoundingVault.redeem(_assetsOrShares, msg.sender);
        } else {
            /// @notice withdraw UVRT
            tracker.withdraw(msg.sender, _assetsOrShares);
        }

        /// @notice get user role
        IRoleController.RoleInfo memory roleInfo = roleController.getUserInfo(msg.sender);

        /// @notice Insant Withdraw
        if (roleInfo.BYPASS_COOLDOWN) {
            address thisAddress = address(this);
            /// @notice burn UVRT
            underlyingVault.burn(thisAddress, _assetsOrShares);

            /// @notice get USDC
            uint256 usdcBalance = USDC.balanceOf(address(underlyingVault));

            uint256 strategyRetention;

            /// @notice if not enough USDC in vault, force payback.
            if (_assetsOrShares > usdcBalance) {
                strategyRetention = underlyingVault.enforcePayBack(_assetsOrShares - usdcBalance, _enforceData);
            }

            /// @notice get USDC from vault
            underlyingVault.withdraw(_assetsOrShares - strategyRetention, thisAddress, thisAddress);

            /// @notice charge incentive retention
            uint256 retention = _assetsOrShares.mulDivDown(roleInfo.INCENTIVE_RETENTION, BASIS_POINTS);

            USDC.transfer(incentiveReceiver, retention);

            USDC.transfer(_receiver, _assetsOrShares - retention - strategyRetention);

            emit Withdraw(msg.sender, _assetsOrShares, _receiver, retention + strategyRetention);
        } else {
            Request storage _withdrawRequests = withdrawRequests[_receiver];
            _withdrawRequests.amount = _withdrawRequests.amount + _assetsOrShares;
            _withdrawRequests.timestamp = block.timestamp;

            totalWithdrawRequests = totalWithdrawRequests + _assetsOrShares;

            emit WithdrawRequest(msg.sender, _receiver, _assetsOrShares);
        }

        return _assetsOrShares;
    }

    /**
     * @notice Requests to withdraw the given amount of shares from the message sender's balance.
     * The withdrawal request will be added to the total amount of withdrawal requests, and will be
     * added to the user's total withdrawal requests.
     *
     * @param _assets The amount of shares to withdraw.
     */
    function cancelWithdrawRequest(uint256 _assets, bool _compound, address _receiver)
        external
        nonReentrant
        returns (uint256)
    {
        Request storage _withdrawRequests = withdrawRequests[msg.sender];

        if (_assets > _withdrawRequests.amount || _assets == 0) {
            revert InsufficientFunds();
        }

        _withdrawRequests.amount = _withdrawRequests.amount - _assets;

        if (_withdrawRequests.amount == 0) {
            _withdrawRequests.timestamp = 0;
        }

        /// @notice send UVRT to tracker
        underlyingVault.burn(address(this), _assets);
        underlyingVault.mint(_assets, address(tracker));

        uint256 shares;

        if (_compound) {
            /// @notice stake UVRT to Reward Tracker
            tracker.stake(address(compoundingVault), _assets);

            /// @notice mint jUSDC
            shares = compoundingVault.deposit(_assets, _receiver);
        } else {
            /// @notice stake UVRT to Reward Tracker
            tracker.stake(_receiver, _assets);
        }

        emit CancelWithdrawRequest(msg.sender, _receiver, _assets);

        return shares;
    }

    /**
     * @notice Withdraws the given amount of assets from the message sender's balance to the specified receiver.
     * @param _assets The amount of assets to withdraw.
     * @dev Reverts with InsufficientRequest If the user has not made a withdrawal request for the given amount of assets.
     * Reverts with WithdrawCooldown If the user's last withdrawal request was made less than the minimum withdrawal period ago.
     */
    function withdraw(uint256 _assets, bytes calldata _enforceData) external nonReentrant returns (uint256) {
        Request storage _withdrawRequests = withdrawRequests[msg.sender];

        if (_assets > _withdrawRequests.amount || _assets == 0) {
            revert InsufficientFunds();
        }

        if (block.timestamp < _withdrawRequests.timestamp + withdrawCooldown) {
            revert CooldownNotMeet();
        }

        address thisAddress = address(this);

        /// @notice burn UVRT
        underlyingVault.burn(thisAddress, _assets);

        /// @notice get USDC
        uint256 usdcBalance = USDC.balanceOf(address(underlyingVault));

        uint256 strategyRetention;

        /// @notice if not enough USDC in vault, force payback.
        if (_assets > usdcBalance) {
            underlyingVault.enforcePayBack(_assets - usdcBalance, _enforceData);
        }

        /// @notice get USDC from vault
        underlyingVault.withdraw(_assets - strategyRetention, thisAddress, thisAddress);

        /// @notice get user role
        IRoleController.RoleInfo memory roleInfo = roleController.getUserInfo(msg.sender);

        /// @notice charge incentive retention
        uint256 retention = _assets.mulDivDown(roleInfo.INCENTIVE_RETENTION, BASIS_POINTS);

        USDC.transfer(incentiveReceiver, retention);

        USDC.transfer(msg.sender, _assets - retention - strategyRetention);

        _withdrawRequests.amount = _withdrawRequests.amount - _assets;
        if (_withdrawRequests.amount == 0) {
            _withdrawRequests.timestamp = 0;
        }

        emit Withdraw(msg.sender, _withdrawRequests.amount, msg.sender, retention + strategyRetention);

        return _assets - retention;
    }

    /**
     * @notice Users can redeem stable assets from the old system
     * @param _epoch Target epoch
     * @return Amount of stables reeemed
     */
    function redeemStable(uint256 _epoch, bytes calldata _enforceData) external nonReentrant returns (uint256) {
        (uint256 targetEpoch, uint256 commitedShares, bool redeemed,) = routerV1.withdrawSignal(msg.sender, _epoch);

        if (routerV1.currentEpoch() < targetEpoch) {
            revert CooldownNotMeet();
        }

        if (redeemed || redemeed[msg.sender]) {
            revert AlreadyRedemeed();
        }

        if (commitedShares == 0) {
            revert InsufficientFunds();
        }

        address thisAddress = address(this);

        /// @notice get USDC
        uint256 usdcBalance = USDC.balanceOf(address(underlyingVault));

        uint256 strategyRetention;

        /// @notice if not enough USDC in vault, force payback.
        if (commitedShares > usdcBalance) {
            underlyingVault.enforcePayBack(commitedShares - usdcBalance, _enforceData);
        }

        /// @notice get USDC from vault
        underlyingVault.withdraw(commitedShares - strategyRetention, thisAddress, thisAddress);

        /// @notice get user role
        IRoleController.RoleInfo memory roleInfo = roleController.getUserInfo(msg.sender);

        /// @notice charge incentive retention
        uint256 retention = commitedShares.mulDivDown(roleInfo.INCENTIVE_RETENTION, BASIS_POINTS);

        USDC.transfer(incentiveReceiver, retention);

        USDC.transfer(msg.sender, commitedShares - retention - strategyRetention);

        redemeed[msg.sender] = true;

        emit Withdraw(msg.sender, commitedShares, msg.sender, retention + strategyRetention);

        return commitedShares - retention;
    }

    /**
     * @notice Claim Rewards.
     * @param _receiver Who will receive the rewards.
     * @return rewards The amount of rewards in WETH
     */
    function claim(address _receiver) external nonReentrant returns (uint256) {
        (address owner, address target) = _applyDelegate(_receiver);

        uint256 rewards = tracker.claim(owner);

        if (rewards > 0) {
            USDC.transfer(target, rewards);
        }

        emit Claim(msg.sender, owner, rewards, target);

        return rewards;
    }

    /**
     * @notice Compound position.
     * @param _amount Amount willing to be compounded.
     * @return jUSDC shares minted to user.
     */
    function compound(uint256 _amount) external nonReentrant whenNotPaused returns (uint256) {
        if (tracker.stakedAmount(msg.sender) < _amount) {
            revert InsufficientFunds();
        }

        /// @notice withdraw user staked UVRT
        tracker.withdraw(msg.sender, _amount);

        /// @notice send UVRT to tracker
        underlyingVault.burn(address(this), _amount);
        underlyingVault.mint(_amount, address(tracker));

        /// @notice stake UVRT to Reward Tracker
        tracker.stake(address(compoundingVault), _amount);

        /// @notice mint jUSDC
        uint256 shares = compoundingVault.deposit(_amount, msg.sender);

        emit Compound(msg.sender, _amount, shares);

        return shares;
    }

    /**
     * @notice Un Compound position.
     * @param _shares Shares willing to be un compounded.
     * @return Amount assets staked.
     */
    function unCompound(uint256 _shares) external nonReentrant whenNotPaused returns (uint256) {
        /// @notice burn jUSDC
        uint256 assets = compoundingVault.redeem(_shares, msg.sender);

        /// @notice send UVRT to tracker
        underlyingVault.burn(address(this), assets);
        underlyingVault.mint(assets, address(tracker));

        /// @notice stake UVRT to Reward Tracker
        tracker.stake(msg.sender, assets);

        emit UnCompound(msg.sender, _shares, assets);

        return assets;
    }

    /**
     * @notice Delegate claim. Delegators are unique. Different users can't delegate to the same address
     * @notice To remove delegator just set it to address(0)
     */
    function delegateClaim(address _delegator, address _target) external nonReentrant whenNotPaused {
        uint256 stakedAmount = tracker.stakedAmount(msg.sender);
        if (stakedAmount == 0) {
            revert ZeroAmount();
        }
        Delegates memory _delegate = delegates[_delegator];
        if (_delegate.owner == address(0) || _delegate.owner == msg.sender) {
            delegates[_delegator] = Delegates({owner: msg.sender, target: _target});
        } else {
            revert CallerNotAllowed();
        }
    }

    /* -------------------------------------------------------------------------- */
    /*                                 Only Owner                                 */
    /* -------------------------------------------------------------------------- */
    /**
     * @notice Update Internal Contracts.
     * @param _roleController New Role Controller.
     * @param _underlyingVault New underlying vault.
     * @param _compoundingVault New compounding vault.
     * @param _tracker New reward tracker.
     */
    function updateInternalContracts(
        address _roleController,
        address _underlyingVault,
        address _compoundingVault,
        address _tracker
    ) external onlyOwner {
        roleController = IRoleController(_roleController);
        underlyingVault = IUnderlyingVault(_underlyingVault);
        compoundingVault = ICompoundVault(_compoundingVault);
        tracker = IRewardTracker(_tracker);
    }

    /**
     * @notice Update Incentive Receiver.
     */
    function updateIncentiveReceiver(address _incentiveReceiver) external onlyOwner {
        incentiveReceiver = _incentiveReceiver;
    }

    /**
     * @notice Update Socket.
     */
    function updateSocket(address _socket) external onlyOwner {
        socket = _socket;
    }

    /**
     * @notice Pause Deposits.
     */
    function pause() external onlyOwner {
        if (paused()) {
            _unpause();
        } else {
            _pause();
        }
    }

    /**
     * @notice Moves assets from the strategy to `_to`
     * @param _assets An array of IERC20 compatible tokens to move out from the strategy
     * @param _withdrawNative `true` if we want to move the native asset from the strategy
     */
    function emergencyWithdraw(address _to, address[] memory _assets, bool _withdrawNative) external onlyOwner {
        uint256 assetsLength = _assets.length;
        for (uint256 i = 0; i < assetsLength; i++) {
            IERC20 asset_ = IERC20(_assets[i]);
            uint256 assetBalance = asset_.balanceOf(address(this));

            if (assetBalance > 0) {
                // Transfer the ERC20 tokens
                asset_.transfer(_to, assetBalance);
            }

            unchecked {
                ++i;
            }
        }

        uint256 nativeBalance = address(this).balance;

        // Nothing else to do
        if (_withdrawNative && nativeBalance > 0) {
            // Transfer the native currency
            (bool sent,) = payable(_to).call{value: nativeBalance}("");
            if (!sent) {
                revert FailSendETH();
            }
        }

        emit EmergencyWithdrawal(msg.sender, _to, _assets, _withdrawNative ? nativeBalance : 0);
    }

    /* -------------------------------------------------------------------------- */
    /*                                   Private                                  */
    /* -------------------------------------------------------------------------- */

    function _applyDelegate(address _receiver) private view returns (address, address) {
        Delegates memory _delegate = delegates[msg.sender];
        if (_delegate.owner == address(0)) {
            return (msg.sender, _receiver);
        } else {
            return (_delegate.owner, _delegate.target);
        }
    }

    function _onlySocket() private view returns (bool) {
        if (msg.sender == socket) {
            return true;
        }
        return false;
    }
}
