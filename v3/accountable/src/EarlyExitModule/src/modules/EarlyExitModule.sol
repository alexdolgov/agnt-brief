// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity ^0.8.20;

import "../constants/Errors.sol";

import {Loan} from "../interfaces/IAccountableStrategy.sol";
import {IAccess, PermissionLevel} from "../interfaces/IAccess.sol";
import {
    IEarlyExitModule,
    IEarlyExitStrategyHook,
    ExitRequest,
    EpochConfiguration
} from "../interfaces/IEarlyExitModule.sol";

import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {IERC4626} from "@openzeppelin/contracts/interfaces/IERC4626.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {ReentrancyGuard} from "@openzeppelin/contracts/utils/ReentrancyGuard.sol";

/// @title EarlyExitModule
/// @notice Facilitates early redemptions with a penalty, settled by the borrower on a periodic epoch basis
/// @custom:security-contact security@accountable.capital
contract EarlyExitModule is IEarlyExitModule, ReentrancyGuard {
    using Math for uint256;
    using SafeERC20 for IERC20;

    /// @dev precision for calculations
    uint256 public constant PRECISION = 1e36;
    /// @dev 1e6 basis points representing 100%
    uint256 public constant BASIS_POINTS = 1e6;

    /// @notice Underlying asset
    IERC20 public immutable asset;
    /// @notice Vault share token
    IERC20 public immutable vaultShare;
    /// @notice Strategy interface hooks
    IEarlyExitStrategyHook public immutable strategy;

    /// @notice Epoch start
    uint256 public epochStart;
    /// @notice Current epoch
    uint256 public currentEpoch;
    /// @notice Penalty basis points
    uint256 public penaltyBps;
    /// @notice Settlement interval
    uint256 public settlementInterval;
    /// @notice Maximum share capacity per epoch (0 = no hard cap)
    uint256 public maxEpochCapacity;

    /// @dev epoch => whether an epoch has been settled
    mapping(uint256 => bool) public epochSettled;

    /// @dev epoch => total assets for the epoch, finalized at settlement
    mapping(uint256 => uint256) public epochTotalAssets;
    /// @dev epoch => total shares requested by lenders
    mapping(uint256 => uint256) public epochTotalShares;

    /// @dev epoch => configuration snapshot used for that epoch
    mapping(uint256 => EpochConfiguration) private _epochConfiguration;

    /// @dev epoch => requests array
    mapping(uint256 => ExitRequest[]) private _requests;
    /// @dev epoch => account => 1-indexed position in _requests array (0 = no request)
    mapping(uint256 => mapping(address => uint256)) private _userRequestIndex;

    /// @notice Modifier to check if the caller is the borrower
    modifier onlyBorrower() {
        if (msg.sender != strategy.borrower()) revert Unauthorized();
        _;
    }

    /// @notice Modifier to check if the caller is the investment manager
    modifier onlyManager() {
        if (msg.sender != strategy.investmentManager()) revert Unauthorized();
        _;
    }

    /// @notice Initializes the early exit module
    /// @param strategy_ The strategy hook contract
    /// @param penaltyBps_ The penalty basis points
    /// @param settlementInterval_ The settlement interval
    /// @param maxEpochCapacity_ The maximum share capacity per epoch
    constructor(address strategy_, uint256 penaltyBps_, uint256 settlementInterval_, uint256 maxEpochCapacity_) {
        address vault_ = IEarlyExitStrategyHook(strategy_).vault();
        strategy = IEarlyExitStrategyHook(strategy_);
        asset = IERC20(IERC4626(vault_).asset());
        vaultShare = IERC20(vault_);

        epochStart = block.timestamp;

        if (penaltyBps_ >= BASIS_POINTS) revert InvalidValue();
        penaltyBps = penaltyBps_;

        if (settlementInterval_ == 0) revert ZeroValue();
        settlementInterval = settlementInterval_;
        maxEpochCapacity = maxEpochCapacity_;

        _snapshotEpochConfig(0);
    }

    /// @inheritdoc IEarlyExitModule
    function requestExit(uint256 shares) external nonReentrant {
        if (shares < strategy.loan().minRedeem || shares == 0) revert InsufficientShares();
        _requireWhitelistIfConfigured(msg.sender);

        _rollEpochIfNeeded();

        uint256 epoch = currentEpoch;
        if (_userRequestIndex[epoch][msg.sender] != 0) revert InvalidState();

        uint256 newEpochTotalShares = epochTotalShares[epoch] + shares;

        uint256 cap = _epochConfiguration[epoch].maxCapacity;
        if (cap != 0 && newEpochTotalShares > cap) revert ExceedsMaxRedeem();

        vaultShare.safeTransferFrom(msg.sender, address(this), shares);

        _requests[epoch].push(ExitRequest({account: msg.sender, shares: shares}));
        _userRequestIndex[epoch][msg.sender] = _requests[epoch].length; // 1-indexed
        epochTotalShares[epoch] = newEpochTotalShares;

        emit ExitRequested(epoch, msg.sender, shares);
    }

    /// @inheritdoc IEarlyExitModule
    function cancelExit(uint256 epoch) external nonReentrant {
        if (epochSettled[epoch]) revert InvalidState();

        uint256 index = _userRequestIndex[epoch][msg.sender];
        if (index == 0) revert NoQueueRequest();

        ExitRequest storage req = _requests[epoch][index - 1];
        uint256 shares = req.shares;

        epochTotalShares[epoch] -= shares;

        req.shares = 0;

        delete _userRequestIndex[epoch][msg.sender];

        vaultShare.safeTransfer(msg.sender, shares);

        emit ExitCancelled(epoch, msg.sender, shares);
    }

    /// @inheritdoc IEarlyExitModule
    function claimExit(uint256 epoch) external nonReentrant {
        if (!epochSettled[epoch]) revert InvalidState();

        uint256 index = _userRequestIndex[epoch][msg.sender];
        if (index == 0) revert NoQueueRequest();

        ExitRequest storage req = _requests[epoch][index - 1];
        uint256 shares = req.shares;
        uint256 totalShares = epochTotalShares[epoch];
        uint256 assets = shares.mulDiv(epochTotalAssets[epoch], totalShares);

        req.shares = 0;

        delete _userRequestIndex[epoch][msg.sender];

        asset.safeTransfer(msg.sender, assets);

        emit ExitClaimed(epoch, msg.sender, assets);
    }

    /// @inheritdoc IEarlyExitModule
    function settleEpoch(uint256 epoch) external nonReentrant onlyBorrower {
        if (epochSettled[epoch]) revert InvalidState();

        uint256 totalShares_ = epochTotalShares[epoch];

        if (totalShares_ == 0) revert NoQueueRequest();
        if (epoch == currentEpoch && block.timestamp < epochStart + _epochConfiguration[epoch].settlementInterval) {
            revert InvalidState();
        }

        uint256 epochPenalty = _epochConfiguration[epoch].penaltyBps;
        (uint256 grossAssets_, uint256 totalAssets_) = _netAssetsForShares(totalShares_, epochPenalty);

        epochSettled[epoch] = true;
        epochTotalAssets[epoch] = totalAssets_;

        asset.safeTransferFrom(msg.sender, address(this), totalAssets_);

        strategy.onEarlyExit(totalShares_, grossAssets_);

        emit EpochSettled(epoch, totalShares_, totalAssets_);
    }

    /// @inheritdoc IEarlyExitModule
    function setPenaltyBps(uint256 penaltyBps_) external onlyManager {
        if (penaltyBps_ >= BASIS_POINTS) revert InvalidValue();
        penaltyBps = penaltyBps_;

        emit PenaltyBpsSet(penaltyBps_);
    }

    /// @inheritdoc IEarlyExitModule
    function setSettlementInterval(uint256 interval) external onlyManager {
        if (interval == 0) revert ZeroValue();
        settlementInterval = interval;

        emit SettlementIntervalSet(interval);
    }

    /// @inheritdoc IEarlyExitModule
    function setMaxEpochCapacity(uint256 capacity) external onlyManager {
        maxEpochCapacity = capacity;

        emit MaxEpochCapacitySet(capacity);
    }

    /// @inheritdoc IEarlyExitModule
    function epochRequestCount(uint256 epoch) external view returns (uint256) {
        return _requests[epoch].length;
    }

    /// @inheritdoc IEarlyExitModule
    function epochRequest(uint256 epoch, uint256 index) external view returns (ExitRequest memory) {
        return _requests[epoch][index];
    }

    /// @inheritdoc IEarlyExitModule
    function previewEpochAssets(uint256 epoch) external view returns (uint256) {
        if (epochSettled[epoch]) return epochTotalAssets[epoch];

        uint256 totalShares = epochTotalShares[epoch];
        if (totalShares == 0) return 0;

        uint256 epochPenalty = _epochConfiguration[epoch].penaltyBps;
        (, uint256 netAssets) = _netAssetsForShares(totalShares, epochPenalty);
        return netAssets;
    }

    /// @dev Rolls to a new epoch if the settlement interval has elapsed
    function _rollEpochIfNeeded() private {
        if (block.timestamp >= epochStart + _epochConfiguration[currentEpoch].settlementInterval) {
            epochStart = block.timestamp;
            ++currentEpoch;
            
            _snapshotEpochConfig(currentEpoch);
        }
    }

    /// @dev Captures mutable parameters for an epoch so manager updates only apply to future epochs
    function _snapshotEpochConfig(uint256 epoch) private {
        _epochConfiguration[epoch] = EpochConfiguration({
            penaltyBps: penaltyBps,
            settlementInterval: settlementInterval,
            maxCapacity: maxEpochCapacity
        });
    }

    /// @dev Calculates gross and net assets for a given number of shares and penalty basis points
    function _netAssetsForShares(uint256 shares, uint256 penaltyBps_) private view returns (uint256 grossAssets, uint256 netAssets) {
        if (shares == 0) return (0, 0);

        grossAssets = IERC4626(address(vaultShare)).convertToAssets(shares);
        netAssets = grossAssets.mulDiv(BASIS_POINTS - penaltyBps_, BASIS_POINTS);
    }

    /// @dev Enforces whitelist access only when vault permission level is Whitelist
    ///      KYC mode is not enforced by this module as that restricts the transferability of shares
    function _requireWhitelistIfConfigured(address account) private view {
        PermissionLevel level;
        try IAccess(address(vaultShare)).permissionLevel() returns (PermissionLevel permission) {
            level = permission;
        } catch {
            return;
        }
        if (level != PermissionLevel.Whitelist) return;

        bool isAllowed;
        try IAccess(address(vaultShare)).allowed(account) returns (bool allowed_) {
            isAllowed = allowed_;
        } catch {
            isAllowed = false;
        }
        if (!isAllowed) revert Unauthorized();
    }
}
