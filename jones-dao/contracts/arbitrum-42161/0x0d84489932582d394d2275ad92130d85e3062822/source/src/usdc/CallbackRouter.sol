// SPDX-License-Identifier: UNLICENSED

// Copyright (c) 2024 JonesDAO - All rights reserved
// Jones DAO: https://www.jonesdao.io/

// Check https://docs.jonesdao.io/jones-dao/other/bounty for details on our bounty program.

pragma solidity ^0.8.20;

import {ReentrancyGuardUpgradeable} from "openzeppelin-contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol";
import {PausableUpgradeable} from "openzeppelin-contracts-upgradeable/utils/PausableUpgradeable.sol";
import {OwnableUpgradeable} from "openzeppelin-contracts-upgradeable/access/OwnableUpgradeable.sol";
import {IERC20} from "openzeppelin-contracts/token/ERC20/IERC20.sol";
import {IUnderlyingVault} from "src/interfaces/vaults/IUnderlyingVault.sol";
import {ICallbackRouter} from "src/interfaces/ICallbackRouter.sol";
import {IWhitelistController} from "src/interfaces/IWhitelistController.sol";
import {ICallbackRequest} from "src/interfaces/vaults/ICallbackRequest.sol";
import {FixedPointMathLib} from "solmate/utils/FixedPointMathLib.sol";

contract CallbackRouter is ICallbackRouter, OwnableUpgradeable, ReentrancyGuardUpgradeable, PausableUpgradeable {
    using FixedPointMathLib for uint256;

    ///@notice Stack too deep
    struct WithdrawVars {
        uint256 assets;
        uint256 shares;
        uint256 strategyRetention;
        uint256 withdrawRetention;
        IWhitelistController.RoleInfo roleInfo;
        address thisAddress;
        uint256 usdcBalance;
        uint256 toWithdraw;
        uint256 retention;
        uint256 toUser;
    }

    /* -------------------------------------------------------------------------- */
    /*                                  VARIABLES                                 */
    /* -------------------------------------------------------------------------- */

    address private constant gov = 0xc8ce0aC725f914dBf1D743D51B6e222b79F479f1;

    /// @notice User roles and whitelisted contracts
    IWhitelistController public whitelistController;

    /// @notice ERC4626 Vault
    IUnderlyingVault public underlyingVault;

    /// @notice Socket address
    address public socket;

    /// @notice USDC Contract
    IERC20 private USDC;

    /// @notice User => Request (Recorded user action data)
    mapping(address => Request) public withdrawRequests;

    /// @notice User => target epoch => bool (True if user redemeed old withdraw request)
    mapping(address => mapping(uint256 => bool)) public redemeed;
    /// @notice User => bool (True if user mifrated old uncompound position)
    mapping(address => bool) public migrated;

    /// @notice total withdraw requests
    uint256 public totalWithdrawRequests;

    /// @notice Incentives
    address public incentiveReceiver;
    uint256 public withdrawCooldown;

    uint256 public constant BASIS_POINTS = 1e12;

    bool public ongoingCallback;

    ICallbackRequest.Data public callbackData;

    /* -------------------------------------------------------------------------- */
    /*                                 INITIALIZE                                 */
    /* -------------------------------------------------------------------------- */

    function initialize(address _whitelistController, address _underlyingVault, address _incentiveReceiver)
        external
        initializer
    {
        if (msg.sender != gov) {
            revert NotRightCaller();
        }

        __Ownable_init(msg.sender);
        __ReentrancyGuard_init();

        whitelistController = IWhitelistController(_whitelistController);
        underlyingVault = IUnderlyingVault(_underlyingVault);
        socket = 0x88616cB9499F32Ff6A784B66B60aABF0bCf0df39;

        incentiveReceiver = _incentiveReceiver;

        withdrawCooldown = 1;

        USDC = IERC20(0xaf88d065e77c8cC2239327C5EDb3A432268e5831);
    }

    /* -------------------------------------------------------------------------- */
    /*                                    VIEW                                    */
    /* -------------------------------------------------------------------------- */

    function isPaused() external view returns (bool) {
        return paused();
    }

    /* -------------------------------------------------------------------------- */
    /*                                   EXTERNAL                                 */
    /* -------------------------------------------------------------------------- */

    /**
     * @notice Mints Vault shares to receiver by depositing underlying tokens.
     * @param _assets The amount of assets to deposit.
     * @param _receiver The address who will receive the shares.
     * @return shares The amount that were minted and received.
     */
    function deposit(uint256 _assets, address _receiver) external nonReentrant whenNotPaused returns (uint256) {
        _onlyEOA();

        if (_assets == 0) {
            revert ZeroAmount();
        }

        if (ongoingCallback) {
            revert OngoingCallback();
        }

        /// @notice Calculate Shares
        uint256 shares = underlyingVault.previewDeposit(_assets);

        /// @notice transfer USDC to Underlying Vault
        USDC.transferFrom(msg.sender, address(underlyingVault), _assets);

        /// @notice mint jUSDC
        underlyingVault.mint(shares, _receiver);

        emit Deposit(msg.sender, _assets, _receiver, shares);

        return shares;
    }

    /**
     * @notice Mints Vault shares to receiver by receiving underlying tokens comming from other chains.
     * @param _receiver The address who will receive the shares.
     * @return shares The amount that were minted and received.
     */
    function multichainDeposit(address _receiver) external nonReentrant whenNotPaused returns (uint256) {
        uint256 amount = USDC.allowance(msg.sender, address(this));

        if (amount == 0) {
            return 0;
        }

        if (ongoingCallback) {
            USDC.transferFrom(msg.sender, _receiver, amount);
            return 0;
        }

        if (!_onlySocket()) {
            USDC.transferFrom(msg.sender, _receiver, amount);
            return 0;
        }

        /// @notice Calculate Shares
        uint256 shares = underlyingVault.previewDeposit(amount);

        /// @notice transfer USDC to Underlying Vault
        USDC.transferFrom(msg.sender, address(underlyingVault), amount);

        /// @notice mint UVRT
        underlyingVault.mint(shares, _receiver);

        emit Deposit(msg.sender, amount, _receiver, shares);

        return shares;
    }

    /**
     * @notice Requests to withdraw the given amount of shares from the message sender's balance.
     * The withdrawal request will be added to the total amount of withdrawal requests, and will be
     * added to the user's total withdrawal requests.
     *
     * @param _shares The amount of shares to withdraw.
     * @param _receiver The address that will receive the assets.
     * @param _minAmountOut Min Amount that should be received.
     * @param _enforceData The data needed to enforce payback.
     * @return true if msg.sender bypass cooldown.
     * @return Amount of assets.
     */
    function withdrawRequest(uint256 _shares, address _receiver, uint256 _minAmountOut, bytes calldata _enforceData)
        external
        payable
        nonReentrant
        whenNotPaused
        returns (bool, bool, uint256)
    {
        _onlyEOA();

        if (ongoingCallback) {
            revert OngoingCallback();
        }

        if (_shares == 0) {
            revert ZeroAmount();
        }

        WithdrawVars memory vars;

        /// @notice Calculate Assets
        vars.assets = underlyingVault.previewRedeem(_shares);

        /// @notice get user role
        vars.roleInfo = whitelistController.getUserInfo(msg.sender);

        vars.thisAddress = address(this);

        /// @notice burn jUSDC
        underlyingVault.burn(msg.sender, _shares);
        /// @notice mint jUSDC here
        underlyingVault.mint(_shares, vars.thisAddress);

        /// @notice get USDC here for custody
        vars.usdcBalance = USDC.balanceOf(address(underlyingVault));

        /// @notice if not enough USDC in vault, force payback.
        if (vars.assets <= vars.usdcBalance) {
            vars.toWithdraw = vars.assets;

            /// @notice get USDC from vault
            underlyingVault.withdraw(vars.toWithdraw, vars.thisAddress, vars.thisAddress);

            /// @notice Insant Withdraw
            if (vars.roleInfo.BYPASS_COOLDOWN) {
                if (incentiveReceiver != address(0)) {
                    /// @notice charge incentive retention
                    vars.retention = vars.assets.mulDivDown(vars.roleInfo.INCENTIVE_RETENTION, BASIS_POINTS);

                    USDC.transfer(incentiveReceiver, vars.retention);
                }

                vars.toUser = vars.toWithdraw > vars.retention ? vars.toWithdraw - vars.retention : 0;

                if (vars.toUser < _minAmountOut) {
                    revert NotEnoughAssets();
                }

                if (vars.toUser > 0) {
                    USDC.transfer(_receiver, vars.toUser);
                }

                emit Withdraw(msg.sender, vars.assets, _receiver, vars.retention + vars.strategyRetention);

                return (true, false, vars.toUser);
            } else {
                Request storage _withdrawRequests = withdrawRequests[msg.sender];

                _withdrawRequests.assets = _withdrawRequests.assets + vars.toWithdraw;
                _withdrawRequests.strategyRetention = _withdrawRequests.strategyRetention + vars.strategyRetention;
                _withdrawRequests.withdrawRetention = vars.roleInfo.INCENTIVE_RETENTION;
                _withdrawRequests.timestamp = block.timestamp;

                totalWithdrawRequests = totalWithdrawRequests + vars.toWithdraw;

                emit WithdrawRequest(msg.sender, vars.toWithdraw);

                return (false, false, vars.assets);
            }
        } else {
            (address callbackAddress, bytes memory enforceData) = abi.decode(_enforceData, (address, bytes));

            vars.toWithdraw = vars.assets - underlyingVault.retentionRefund(vars.assets - vars.usdcBalance, enforceData);
            if (incentiveReceiver != address(0)) {
                /// @notice charge incentive retention
                vars.retention = vars.assets.mulDivDown(vars.roleInfo.INCENTIVE_RETENTION, BASIS_POINTS);
            }

            vars.toUser = vars.toWithdraw > vars.retention ? vars.toWithdraw - vars.retention : 0;

            if (vars.toUser < _minAmountOut) {
                revert NotEnoughAssets();
            }

            ongoingCallback = true;

            callbackData = ICallbackRequest.Data({
                shares: _shares,
                assets: vars.assets,
                strategyRetention: 0,
                jonesRetention: 0,
                sender: msg.sender,
                receiver: _receiver,
                callbackAddress: callbackAddress
            });

            underlyingVault.enforcePayBack{value: msg.value}(vars.assets - vars.usdcBalance, enforceData);
            return (false, false, 0);
        }
    }

    /**
     * @notice Stable Vault should call this callback when an enforce payback is needed.
     *
     * @param _strategyRetention Amount spend by strategies to payback debt.
     * @param _enoughAssets Ture if got enough assets.
     */
    function withdrawRequestCallback(uint256 _strategyRetention, bool _enoughAssets) external whenNotPaused {
        if (msg.sender != address(underlyingVault)) {
            revert NotRightCaller();
        }

        if (!ongoingCallback) {
            revert NoCallback();
        }

        ICallbackRequest.Data memory data = callbackData;

        /// @notice get user role
        IWhitelistController.RoleInfo memory roleInfo = whitelistController.getUserInfo(data.sender);

        if (!_enoughAssets) {
            callbackData = ICallbackRequest.Data({
                shares: 0,
                assets: 0,
                strategyRetention: 0,
                jonesRetention: 0,
                sender: address(0),
                receiver: address(0),
                callbackAddress: address(0)
            });

            underlyingVault.transfer(data.sender, data.shares);

            ICallbackRequest(data.callbackAddress).callbackRequest(data, roleInfo.BYPASS_COOLDOWN, _enoughAssets);
        }

        address thisAddress = address(this);

        /// @notice burn jUSDC
        underlyingVault.burn(thisAddress, data.shares);

        data.strategyRetention = _strategyRetention;

        uint256 toWithdraw = data.assets - _strategyRetention;

        /// @notice get USDC from vault
        underlyingVault.withdraw(toWithdraw, thisAddress, thisAddress);

        /// @notice Insant Withdraw
        if (roleInfo.BYPASS_COOLDOWN) {
            if (incentiveReceiver != address(0)) {
                /// @notice charge incentive retention
                data.jonesRetention = data.assets.mulDivDown(roleInfo.INCENTIVE_RETENTION, BASIS_POINTS);

                USDC.transfer(incentiveReceiver, data.jonesRetention);
            }

            uint256 toUser = toWithdraw > data.jonesRetention ? toWithdraw - data.jonesRetention : 0;

            if (toUser > 0) {
                USDC.transfer(data.receiver, toUser);
            }

            emit Withdraw(msg.sender, data.assets, data.receiver, data.jonesRetention + _strategyRetention);

            ongoingCallback = false;

            callbackData = ICallbackRequest.Data({
                shares: 0,
                assets: 0,
                strategyRetention: 0,
                jonesRetention: 0,
                sender: address(0),
                receiver: address(0),
                callbackAddress: address(0)
            });

            ICallbackRequest(data.callbackAddress).callbackRequest(data, roleInfo.BYPASS_COOLDOWN, _enoughAssets);
        } else {
            Request storage _withdrawRequests = withdrawRequests[msg.sender];

            _withdrawRequests.assets = _withdrawRequests.assets + toWithdraw;
            _withdrawRequests.strategyRetention = _withdrawRequests.strategyRetention + _strategyRetention;
            _withdrawRequests.withdrawRetention = roleInfo.INCENTIVE_RETENTION;
            _withdrawRequests.timestamp = block.timestamp;

            totalWithdrawRequests = totalWithdrawRequests + toWithdraw;

            emit WithdrawRequest(msg.sender, toWithdraw);

            ongoingCallback = false;

            callbackData = ICallbackRequest.Data({
                shares: 0,
                assets: 0,
                strategyRetention: 0,
                jonesRetention: 0,
                sender: address(0),
                receiver: address(0),
                callbackAddress: address(0)
            });

            ICallbackRequest(data.callbackAddress).callbackRequest(data, roleInfo.BYPASS_COOLDOWN, _enoughAssets);
        }
    }

    /**
     * @notice Cancel requests to withdraw.
     * @notice New Shares will be calculated based on asset vaule.
     * @notice If there is any strategy retention you will lose it.
     */
    function cancelWithdrawRequest() external nonReentrant whenNotPaused returns (uint256) {
        if (ongoingCallback) {
            revert OngoingCallback();
        }

        Request storage _withdrawRequests = withdrawRequests[msg.sender];

        if (_withdrawRequests.assets == 0) {
            revert InsufficientFunds();
        }

        if (block.timestamp >= _withdrawRequests.timestamp + withdrawCooldown) {
            revert CooldownAlreadyPass();
        }

        uint256 assets = _withdrawRequests.assets;

        delete withdrawRequests[msg.sender];

        totalWithdrawRequests = totalWithdrawRequests - assets;

        /// @notice Calculate Shares
        uint256 shares = underlyingVault.previewDeposit(assets);

        /// @notice transfer USDC to Underlying Vault
        USDC.transfer(address(underlyingVault), assets);

        /// @notice mint jUSDC
        underlyingVault.mint(shares, msg.sender);

        emit CancelWithdrawRequest(msg.sender, assets, shares);

        return shares;
    }

    /**
     * @notice Withdraws the given amount of assets from the message sender's balance to the specified receiver.
     * @param _receiver The address that will receive the assets.
     * @param _minAmountOut Min Amount that should be received.
     * @param _enforceData The data needed to enforce payback.
     * @dev Reverts with InsufficientRequest If the user has not made a withdrawal request.
     * Reverts with WithdrawCooldown If the user's last withdrawal request was made less than the minimum withdrawal period ago.
     */
    function withdraw(address _receiver, uint256 _minAmountOut, bytes calldata _enforceData)
        external
        nonReentrant
        whenNotPaused
        returns (uint256)
    {
        _onlyEOA();

        if (ongoingCallback) {
            revert OngoingCallback();
        }

        Request storage _withdrawRequests = withdrawRequests[msg.sender];

        if (_withdrawRequests.assets == 0) {
            revert InsufficientFunds();
        }

        if (block.timestamp < _withdrawRequests.timestamp + withdrawCooldown) {
            revert CooldownNotMeet();
        }

        WithdrawVars memory vars;

        vars.assets = _withdrawRequests.assets;
        vars.strategyRetention = _withdrawRequests.strategyRetention;
        vars.withdrawRetention = _withdrawRequests.withdrawRetention;

        delete withdrawRequests[msg.sender];

        totalWithdrawRequests = totalWithdrawRequests - vars.assets;

        vars.retention;

        if (incentiveReceiver != address(0)) {
            /// @notice charge incentive retention
            vars.retention = (vars.assets + vars.strategyRetention).mulDivDown(vars.withdrawRetention, BASIS_POINTS);
            USDC.transfer(incentiveReceiver, vars.retention);
        }

        vars.toUser = vars.assets > vars.retention ? vars.assets - vars.retention : 0;

        if (vars.toUser < _minAmountOut) {
            revert NotEnoughAssets();
        }

        if (vars.toUser > 0) {
            USDC.transfer(_receiver, vars.toUser);
        }

        emit Withdraw(msg.sender, vars.assets, _receiver, vars.retention + vars.strategyRetention);

        return vars.toUser;
    }

    /* -------------------------------------------------------------------------- */
    /*                                 Only Owner                                 */
    /* -------------------------------------------------------------------------- */
    /**
     * @notice Update Internal Contracts.
     * @param _whitelistController New Role Controller.
     * @param _underlyingVault New underlying vault.
     */
    function updateInternalContracts(address _whitelistController, address _underlyingVault) external onlyOwner {
        whitelistController = IWhitelistController(_whitelistController);
        underlyingVault = IUnderlyingVault(_underlyingVault);
    }

    /**
     * @notice Update Tokens.
     */
    function updateTokens(address _usdc) external onlyOwner {
        USDC = IERC20(_usdc);
    }

    /**
     * @notice Update Cooldown.
     */
    function updateCooldown(uint256 _withdrawCooldown) external onlyOwner {
        withdrawCooldown = _withdrawCooldown;
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
        for (uint256 i = 0; i < assetsLength;) {
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

    /**
     * @notice Only EOA.
     */
    function _onlyEOA() private view {
        if (msg.sender != tx.origin && !whitelistController.isWhitelistedContract(msg.sender)) {
            revert CallerIsNotWhitelisted();
        }
    }

    /**
     * @notice Only Socket Contract
     */
    function _onlySocket() private view returns (bool) {
        if (msg.sender == socket) {
            return true;
        }
        return false;
    }
}
