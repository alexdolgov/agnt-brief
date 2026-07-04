// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.28;

import {IERC165} from "@openzeppelin/contracts/utils/introspection/IERC165.sol";
import {IERC20, ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {ERC4626Upgradeable, IERC4626} from "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/ERC4626Upgradeable.sol";
import {ERC20Upgradeable} from "@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";
import {ERC20PermitUpgradeable} from "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/ERC20PermitUpgradeable.sol";
import {Ownable2StepUpgradeable} from "@openzeppelin/contracts-upgradeable/access/Ownable2StepUpgradeable.sol";
import {UUPSUpgradeable} from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import {ISthUSD} from "./interfaces/ISthUSD.sol";
import {PausableUpgradeable} from "@openzeppelin/contracts-upgradeable/utils/PausableUpgradeable.sol";

/**
 * @notice  SthUSD is a staked version of ThUSD that implements ERC-4626 for staking and async redeeming with a lockup period.
 */
contract SthUSD is ERC4626Upgradeable, ERC20PermitUpgradeable, Ownable2StepUpgradeable, UUPSUpgradeable, PausableUpgradeable, ISthUSD {
    using SafeERC20 for IERC20;
    using Math for uint256;

    uint256 public constant MAX_LOCKUP_PERIOD = 30 days;
    uint256 public lockupPeriod;

    uint256 internal _totalPendingRedeemAssets;
    mapping(address => RedeemRequestData) private _redeemRequests;

    // Yield tracking
    uint public constant MAX_VESTING_DURATION = 365 days;
    uint256 public vestingDuration;
    uint256 public yieldAmount;
    uint256 public lastYieldTimestamp;
    address public yieldDistributor;

    // Pause control
    address public emergencyPauser;

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(IERC20 thUSD_, uint256 lockupPeriod_, uint256 vestingDuration_, address owner_) external initializer {
        __StThUSD_init(thUSD_, lockupPeriod_, vestingDuration_, owner_);
    }

    function __StThUSD_init(IERC20 thUSD_, uint256 lockupPeriod_, uint256 vestingDuration_, address owner_) internal onlyInitializing {
        __ERC20_init("Staked thUSD", "sthUSD");
        __ERC4626_init(thUSD_);
        __ERC20Permit_init("Staked thUSD");
        __Ownable_init(owner_);
        __Ownable2Step_init();
        __UUPSUpgradeable_init();
        __Pausable_init();

        if (lockupPeriod_ > MAX_LOCKUP_PERIOD) revert MaxLockupPeriodExceeded();
        if (vestingDuration_ > MAX_VESTING_DURATION) revert MaxVestingDurationExceeded();
        lockupPeriod = lockupPeriod_;
        vestingDuration = vestingDuration_;
    }

    ///
    /// Public Overrides for total assets
    ///
    function totalAssets() public view override returns (uint256) {
        return IERC20(asset()).balanceOf(address(this)) - getUnvestedAmount() - _totalPendingRedeemAssets;
    }

    function getUnvestedAmount() public view returns (uint256) {
        uint256 timeSinceLastYield = block.timestamp - lastYieldTimestamp;
        if (timeSinceLastYield >= vestingDuration) {
            return 0;
        }
        return yieldAmount.mulDiv(vestingDuration - timeSinceLastYield, vestingDuration, Math.Rounding.Ceil);
    }

    ///
    /// Owner Setters
    ///
    function setLockupPeriod(uint256 lockupPeriod_) external onlyOwner {
        if (lockupPeriod_ > MAX_LOCKUP_PERIOD) revert MaxLockupPeriodExceeded();
        uint256 oldLockupPeriod = lockupPeriod;
        lockupPeriod = lockupPeriod_;
        emit LockupPeriodUpdated(oldLockupPeriod, lockupPeriod_);
    }

    function setVestingDuration(uint256 vestingDuration_) external onlyOwner {
        if (vestingDuration_ > MAX_VESTING_DURATION) revert MaxVestingDurationExceeded();
        if (getUnvestedAmount() > 0) revert VestingInProgress();

        // reset current yield to zero since changing duration could create unvested yield
        yieldAmount = 0;
        lastYieldTimestamp = 0;

        uint256 oldVestingDuration = vestingDuration;
        vestingDuration = vestingDuration_;
        emit VestingDurationUpdated(oldVestingDuration, vestingDuration_);
    }

    function setYieldDistributor(address newYieldDistributor_) external onlyOwner {
        address oldYieldDistributor = yieldDistributor;
        yieldDistributor = newYieldDistributor_;
        emit YieldDistributorUpdated(oldYieldDistributor, newYieldDistributor_);
    }

    function setEmergencyPauser(address newEmergencyPauser) external onlyOwner {
        address oldEmergencyPauser = emergencyPauser;
        emergencyPauser = newEmergencyPauser;
        emit EmergencyPauserUpdated(oldEmergencyPauser, newEmergencyPauser);
    }

    function pause() external {
        if (msg.sender != emergencyPauser || emergencyPauser == address(0)) revert NotAuthorizedToPause();
        _pause();
    }

    function unpause() external onlyOwner {
        _unpause();
    }

    ///
    /// Yield Function
    ///
    function setYield(uint256 amount_) external whenNotPaused {
        if (msg.sender != yieldDistributor) revert InvalidYieldDistributor();
        if (vestingDuration == 0) revert VestingDurationNotSet();
        if (getUnvestedAmount() > 0) revert VestingInProgress();
        if (amount_ == 0) revert ZeroAssetsOrShares();

        // transfer yield to this contract
        IERC20(asset()).safeTransferFrom(msg.sender, address(this), amount_);

        yieldAmount = amount_;
        lastYieldTimestamp = block.timestamp;

        emit YieldTransferredIn(amount_, vestingDuration);
    }

    ///
    /// Async Redeem
    ///
    function initiateRedeem(uint256 shares_, address owner_) external whenNotPaused {
        if (shares_ == 0) revert ZeroAssetsOrShares();

        if (msg.sender != owner_) {
            _spendAllowance(owner_, msg.sender, shares_);
        }

        uint256 assets = convertToAssets(shares_);
        if (assets == 0) revert ZeroAssetsOrShares();
        _burn(owner_, shares_);

        // If last shares burned, assign all remaining vault assets (including unvested yield and rounding dust)
        if (totalSupply() == 0) {
            assets = IERC20(asset()).balanceOf(address(this)) - _totalPendingRedeemAssets;
            if (getUnvestedAmount() > 0) {
                yieldAmount = 0;
                lastYieldTimestamp = 0;
            }
        }

        RedeemRequestData storage request = _redeemRequests[msg.sender];
        request.assets += assets;
        request.shares += shares_;
        request.claimableTimestamp = block.timestamp + lockupPeriod;

        _totalPendingRedeemAssets += assets;

        emit RedeemRequest(msg.sender, owner_, msg.sender, shares_, assets);
    }

    function pendingRedeemRequest(address owner_) external view returns (uint256 shares) {
        RedeemRequestData storage request = _redeemRequests[owner_];
        if (block.timestamp < request.claimableTimestamp) {
            return request.shares;
        }
        return 0;
    }

    function claimableRedeemRequest(address owner_) external view returns (uint256 shares) {
        RedeemRequestData storage request = _redeemRequests[owner_];
        if (request.assets > 0 && block.timestamp >= request.claimableTimestamp) {
            return request.shares;
        }
        return 0;
    }

    function currentRedeemRequest(address owner_) external view returns (RedeemRequestData memory) {
        return _redeemRequests[owner_];
    }

    ///
    /// ERC-4626 Overrides (claim via redeem/withdraw)
    ///
    function withdraw(uint256 assets_, address receiver_, address owner_) public override whenNotPaused returns (uint256) {
        if (assets_ == 0) revert ZeroAssetsOrShares();

        RedeemRequestData storage request = _redeemRequests[owner_];
        if (request.assets == 0) revert NoClaimableRequest();
        if (block.timestamp < request.claimableTimestamp) revert LockupNotElapsed();
        if (assets_ > request.assets) revert ExceedsClaimable(assets_, request.assets);

        uint256 sharesToDeduct;
        if (assets_ == request.assets) {
            // full claim — deduct all remaining shares to avoid dust
            sharesToDeduct = request.shares;
        } else {
            // partial claim — round up shares deducted so user can't extract extra value
            sharesToDeduct = assets_.mulDiv(request.shares, request.assets, Math.Rounding.Ceil);
            // check if rounding up uses all shares, if so, include all remaining assets to avoid dust
            if (sharesToDeduct == request.shares) {
                assets_ = request.assets;
            }
        }

        if (msg.sender != owner_) {
            revert OwnerMustCompleteRedeem();
        }

        request.assets -= assets_;
        request.shares -= sharesToDeduct;
        _totalPendingRedeemAssets -= assets_;

        IERC20(asset()).safeTransfer(receiver_, assets_);
        emit Withdraw(msg.sender, receiver_, owner_, assets_, sharesToDeduct);
        return sharesToDeduct;
    }

    function redeem(uint256 shares_, address receiver_, address owner_) public override whenNotPaused returns (uint256) {
        if (shares_ == 0) revert ZeroAssetsOrShares();

        RedeemRequestData storage request = _redeemRequests[owner_];
        if (request.assets == 0) revert NoClaimableRequest();
        if (block.timestamp < request.claimableTimestamp) revert LockupNotElapsed();
        if (shares_ > request.shares) revert ExceedsClaimable(shares_, request.shares);

        uint256 assetsToTransfer;
        if (shares_ == request.shares) {
            // full claim — transfer all remaining assets to avoid dust
            assetsToTransfer = request.assets;
        } else {
            // partial claim — round down assets transferred so vault doesn't overpay
            assetsToTransfer = shares_.mulDiv(request.assets, request.shares, Math.Rounding.Floor);
        }

        if (msg.sender != owner_) {
            revert OwnerMustCompleteRedeem();
        }

        request.assets -= assetsToTransfer;
        request.shares -= shares_;
        _totalPendingRedeemAssets -= assetsToTransfer;

        IERC20(asset()).safeTransfer(receiver_, assetsToTransfer);
        emit Withdraw(msg.sender, receiver_, owner_, assetsToTransfer, shares_);
        return assetsToTransfer;
    }

    ///
    /// ERC-4626 Deposit Overrides (paused when contract is paused)
    ///
    function deposit(uint256 assets_, address receiver_) public override whenNotPaused returns (uint256) {
        return super.deposit(assets_, receiver_);
    }

    function mint(uint256 shares_, address receiver_) public override whenNotPaused returns (uint256) {
        return super.mint(shares_, receiver_);
    }

    ///
    /// ERC4626 View Overrides (include check for paused state and claimable redeems)
    ///
    function maxDeposit(address) public view override returns (uint256) {
        if (paused()) return 0;
        return super.maxDeposit(address(this));
    }

    function maxMint(address) public view override returns (uint256) {
        if (paused()) return 0;
        return super.maxMint(address(this));
    }

    function maxWithdraw(address owner_) public view override returns (uint256) {
        if (paused()) return 0;
        RedeemRequestData storage request = _redeemRequests[owner_];
        if (block.timestamp >= request.claimableTimestamp && request.assets > 0) {
            return request.assets;
        }
        return 0;
    }

    function maxRedeem(address owner_) public view override returns (uint256) {
        if (paused()) return 0;
        RedeemRequestData storage request = _redeemRequests[owner_];
        if (block.timestamp >= request.claimableTimestamp && request.shares > 0) {
            return request.shares;
        }
        return 0;
    }

    /// @notice Previews return 0 since actual claimable amounts are determined by the redeem request logic, not a calculation based on total assets/shares
    /// @custom:deprecated use maxWithdraw/maxRedeem which return actual claimable amounts based on redeem requests
    function previewWithdraw(uint256) public pure override returns (uint256) {
        return 0;
    }

    /// @notice Previews return 0 since actual claimable amounts are determined by the redeem request logic, not a calculation based on total assets/shares
    /// @custom:deprecated use maxWithdraw/maxRedeem which return actual claimable amounts based on redeem requests
    function previewRedeem(uint256) public pure override returns (uint256) {
        return 0;
    }

    ///
    /// Required Overrides
    ///
    function _authorizeUpgrade(address) internal override onlyOwner {}

    function decimals() public view override(ERC20Upgradeable, ERC4626Upgradeable) returns (uint8) {
        return ERC4626Upgradeable.decimals();
    }

    /// ERC-165 support
    function supportsInterface(bytes4 interfaceId) public view virtual returns (bool) {
        return interfaceId == type(IERC4626).interfaceId || interfaceId == type(IERC165).interfaceId || interfaceId == type(ISthUSD).interfaceId;
    }
}
