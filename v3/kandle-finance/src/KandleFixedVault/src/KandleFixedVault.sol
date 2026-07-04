// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import {ERC4626} from "@openzeppelin/contracts/token/ERC20/extensions/ERC4626.sol";
import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {IERC4626} from "@openzeppelin/contracts/interfaces/IERC4626.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {ReentrancyGuard} from "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import {Pausable} from "@openzeppelin/contracts/utils/Pausable.sol";
import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import {IKandleFixedVault} from "./interfaces/IKandleFixedVault.sol";
import {KandleVaultAccessControl} from "./abstract/KandleVaultAccessControl.sol";

/**
 * @title KandleFixedVault
 * @notice Fixed-yield vault with APY-based growth and early withdrawal fees
 * @dev Non-upgradeable vault contract with:
 *      - Controllable total share supply (optional cap)
 *      - No deposit lock period
 *      - Early withdrawal fee (configurable, default 0.1%) if withdrawn within X days
 *      - totalAssets auto-grows based on configured APY with pause/resume capability
 *      - APY and growth toggle configurable by manager
 */
contract KandleFixedVault is IKandleFixedVault, ERC4626, KandleVaultAccessControl, ReentrancyGuard, Pausable {
    using SafeERC20 for IERC20;
    using Math for uint256;

    // ============================================
    // Constants
    // ============================================

    /// @notice Maximum annual yield rate (100% = 10000 basis points)
    uint256 public constant MAX_ANNUAL_YIELD = 10000; // 100%

    /// @notice Maximum early withdrawal fee (100% = 10000 basis points)
    uint256 public constant MAX_EARLY_WITHDRAWAL_FEE = 1000; // 10%

    /// @notice Basis points denominator (100% = 10000)
    uint256 public constant BPS_DENOMINATOR = 10000;

    /// @notice Default early withdrawal period
    uint256 public constant DEFAULT_EARLY_WITHDRAWAL_PERIOD = 3 days;

    /// @notice Default early withdrawal fee (0.1%)
    uint256 public constant DEFAULT_EARLY_WITHDRAWAL_FEE = 10; // 0.1%

    // ============================================
    // State Variables
    // ============================================

    /// @notice Annual yield rate in basis points (e.g., 500 = 5%)
    uint256 public annualYieldBps;

    /// @notice Whether yield growth is currently paused
    bool public yieldGrowthPaused;

    /// @notice Timestamp when current yield period started (or last update)
    uint256 public baseTimestamp;

    /// @notice Base total assets for yield calculation
    uint256 public baseTotalAssets;

    /// @notice Accumulated assets (used when paused or as running total)
    uint256 public accumulatedAssets;

    /// @notice Maximum total shares allowed (0 = unlimited)
    uint256 public shareCap;

    /// @notice Period during which early withdrawal fee applies
    uint256 public earlyWithdrawalPeriod;

    /// @notice Early withdrawal fee rate in basis points
    uint256 public earlyWithdrawalFeeBps;

    /// @notice Address to receive fees
    address public feeRecipient;

    /// @notice Adapter address that manages the actual assets
    address public adapter;

    /// @notice Minimum shares to mint per transaction (0 = no minimum)
    uint256 public minSharesPerDeposit;

    /// @notice Maximum shares a single user can hold (0 = unlimited)
    uint256 public maxSharesPerUser;

    /// @notice Lock time until which all withdrawals are locked
    uint256 public immutable lockTime;

    /// @notice Mapping of user address to their deposit information
    mapping(address => UserDepositInfo) public userDepositInfo;

    // ============================================
    // Constructor
    // ============================================

    /**
     * @notice Initialize the KandleFixedVault
     * @param params Fixed vault deployment parameters (defined in IKandleFixedVault)
     * @dev The deployer (msg.sender) will be set as the initial admin
     */
    constructor(
        IKandleFixedVault.FixedVaultParams memory params
    ) ERC4626(params.asset) ERC20(params.name, params.symbol) KandleVaultAccessControl(msg.sender) {
        if (params.feeRecipient == address(0)) revert InvalidAddress();
        if (params.adapter == address(0)) revert InvalidAddress();
        if (params.annualYieldBps > MAX_ANNUAL_YIELD) {
            revert AnnualYieldTooHigh(params.annualYieldBps, MAX_ANNUAL_YIELD);
        }
        require(params.manager != address(0), "Manager address cannot be zero");
        require(params.developer != address(0), "Developer address cannot be zero");

        feeRecipient = params.feeRecipient;
        adapter = params.adapter;
        annualYieldBps = params.annualYieldBps;
        earlyWithdrawalPeriod = DEFAULT_EARLY_WITHDRAWAL_PERIOD;
        earlyWithdrawalFeeBps = DEFAULT_EARLY_WITHDRAWAL_FEE;

        // Initialize yield calculation
        baseTimestamp = block.timestamp;
        baseTotalAssets = 0;
        accumulatedAssets = 0;
        yieldGrowthPaused = false;
        lockTime = params.lockTime;

        _grantRole(MANAGER_ROLE, params.manager);
        _grantRole(DEVELOPER_ROLE, params.developer);
    }

    // ============================================
    // ERC4626 Core Functions
    // ============================================

    /**
     * @notice Get the decimals offset for share token
     * @dev Returns additional decimals for share token to prevent inflation attacks
     *      Offset of 3 provides 1000x precision for strong protection
     * @return Decimals offset (3 = 1000x precision)
     */
    function _decimalsOffset() internal view virtual override returns (uint8) {
        return 3;
    }

    /**
     * @notice Get total assets under management with APY-based growth
     * @dev Calculates totalAssets based on:
     *      - If paused: returns accumulatedAssets (frozen value)
     *      - If active: accumulatedAssets + time-weighted yield on baseTotalAssets
     *      Actual assets are managed by adapter and deposited daily for liquidity
     * @return Total assets denominated in the underlying asset (virtual, APY-based)
     */
    function totalAssets() public view override(ERC4626, IERC4626) returns (uint256) {
        if (yieldGrowthPaused) {
            return accumulatedAssets;
        }

        // Calculate time-based yield
        uint256 timeElapsed = block.timestamp - baseTimestamp;
        uint256 yieldAccrued = baseTotalAssets.mulDiv(
            annualYieldBps * timeElapsed,
            BPS_DENOMINATOR * 365 days,
            Math.Rounding.Ceil
        );

        return accumulatedAssets + yieldAccrued;
    }

    /**
     * @notice Get available liquidity from adapter
     * @dev Returns the allowance that adapter has given to vault for withdrawals
     * @return Available assets that adapter has approved for vault
     */
    function availableLiquidity() public view returns (uint256) {
        return IERC20(asset()).allowance(adapter, address(this));
    }

    /**
     * @notice Override max deposit to enforce share cap and per-user share limits
     * @param receiver Address receiving the shares
     * @return Maximum assets that can be deposited
     */
    function maxDeposit(address receiver) public view virtual override(ERC4626, IERC4626) returns (uint256) {
        // Get max shares user can receive
        uint256 maxShares = maxMint(receiver);

        // Convert to assets
        if (maxShares == type(uint256).max) {
            return type(uint256).max;
        }

        return convertToAssets(maxShares);
    }

    /**
     * @notice Override max mint to enforce share cap and per-user share limits
     * @param receiver Address receiving the shares
     * @return Maximum shares that can be minted
     */
    function maxMint(address receiver) public view virtual override(ERC4626, IERC4626) returns (uint256) {
        uint256 maxShares = type(uint256).max;

        // Apply share cap limit (global)
        if (shareCap > 0) {
            uint256 currentShares = totalSupply();
            if (currentShares >= shareCap) {
                return 0;
            }
            uint256 availableShares = shareCap - currentShares;
            if (availableShares < maxShares) {
                maxShares = availableShares;
            }
        }

        // Apply per-user maximum shares limit
        if (maxSharesPerUser > 0) {
            uint256 userShares = balanceOf(receiver);
            if (userShares >= maxSharesPerUser) {
                return 0;
            }
            uint256 userAvailableShares = maxSharesPerUser - userShares;
            if (userAvailableShares < maxShares) {
                maxShares = userAvailableShares;
            }
        }

        // If there's a minimum requirement and maxShares < minimum, return 0
        if (minSharesPerDeposit > 0 && maxShares != type(uint256).max && maxShares < minSharesPerDeposit) {
            return 0;
        }

        return maxShares;
    }

    /**
     * @notice Override max withdraw to check available liquidity
     * @param owner Address owning the shares
     * @return Maximum assets that can be withdrawn
     */
    function maxWithdraw(address owner) public view virtual override(ERC4626, IERC4626) returns (uint256) {
        uint256 availableAssets = availableLiquidity();
        uint256 ownerAssets = convertToAssets(balanceOf(owner));
        return availableAssets < ownerAssets ? availableAssets : ownerAssets;
    }

    /**
     * @notice Override max redeem to check available liquidity
     * @param owner Address owning the shares
     * @return Maximum shares that can be redeemed
     */
    function maxRedeem(address owner) public view virtual override(ERC4626, IERC4626) returns (uint256) {
        uint256 availableAssets = availableLiquidity();
        uint256 ownerAssets = convertToAssets(balanceOf(owner));

        if (availableAssets >= ownerAssets) {
            return balanceOf(owner);
        }

        return convertToShares(availableAssets);
    }

    // ============================================
    // Internal Functions
    // ============================================

    /**
     * @notice Override ERC4626's _deposit to track user deposit time and transfer to adapter
     * @param caller Address providing the assets
     * @param receiver Address receiving the shares
     * @param assets Amount of assets being deposited
     * @param shares Amount of shares being minted
     * @dev Assets are transferred directly to the adapter for management
     */
    function _deposit(
        address caller,
        address receiver,
        uint256 assets,
        uint256 shares
    ) internal virtual override whenNotPaused {
        require(receiver != address(0), "deposit to the zero address");
        // Check minimum shares per transaction
        if (minSharesPerDeposit > 0 && shares < minSharesPerDeposit) {
            revert DepositBelowMinimum(shares, minSharesPerDeposit);
        }

        // Check user's total shares limit
        if (maxSharesPerUser > 0) {
            uint256 newUserShares = balanceOf(receiver) + shares;
            if (newUserShares > maxSharesPerUser) {
                revert UserSharesExceeded(newUserShares, maxSharesPerUser);
            }
        }

        // Check global share cap if enabled
        if (shareCap > 0) {
            uint256 newTotalShares = totalSupply() + shares;
            if (newTotalShares > shareCap) {
                revert ShareCapExceeded(newTotalShares, shareCap);
            }
        }

        // Transfer assets from caller directly to adapter (not vault)
        SafeERC20.safeTransferFrom(IERC20(asset()), caller, adapter, assets);

        // Mint shares to receiver
        _mint(receiver, shares);

        // Update receiver's last deposit time (for early withdrawal fee)
        userDepositInfo[receiver].lastDepositTime = uint32(block.timestamp);

        // Update accumulated assets (increase the base for yield calculation)
        _updateAccumulatedAssets();
        accumulatedAssets += assets;
        baseTotalAssets += assets;

        emit Deposit(caller, receiver, assets, shares);
    }

    /**
     * @notice Override ERC4626's _withdraw to handle early withdrawal fee and transfer from adapter
     * @param caller Address calling the withdrawal
     * @param receiver Address receiving the assets
     * @param owner Address owning the shares
     * @param assets Amount of assets being withdrawn (before fee)
     * @param shares Amount of shares being burned
     * @dev Assets are transferred from adapter (requires adapter to approve vault)
     */
    function _withdraw(
        address caller,
        address receiver,
        address owner,
        uint256 assets,
        uint256 shares
    ) internal virtual override whenNotPaused {
        require(receiver != address(0), "withdraw to the zero address");
        // Check if withdrawal is allowed (lockTime must have passed)
        if (block.timestamp <= lockTime) {
            revert WithdrawalLockedUntil(block.timestamp, lockTime);
        }

        // Standard ERC4626 allowance check: if caller is not owner, spend allowance
        if (caller != owner) {
            _spendAllowance(owner, caller, shares);
        }

        // Calculate and deduct early withdrawal fee if applicable
        uint256 fee = _calculateEarlyWithdrawalFee(owner, assets);
        uint256 assetsAfterFee = assets - fee;

        // Burn shares from owner
        _burn(owner, shares);

        // Get current total assets (must be BEFORE modifying baseTotalAssets)
        uint256 currentTotalAssets = totalAssets();

        // Update accumulated assets (locks in current yield)
        _updateAccumulatedAssets();

        // Calculate the principal portion to deduct from baseTotalAssets
        // Formula: principalToDeduct = assets * (baseTotalAssets / currentTotalAssets)
        uint256 principalToDeduct = assets.mulDiv(
            baseTotalAssets,
            currentTotalAssets,
            Math.Rounding.Ceil  // Match rounding strategy with totalAssets()
        );

        // Ensure we don't exceed baseTotalAssets (safety check)
        if (principalToDeduct > baseTotalAssets) {
            principalToDeduct = baseTotalAssets;
        }

        // Update baseTotalAssets - only deduct the principal portion
        baseTotalAssets -= principalToDeduct;

        // Update accumulatedAssets - deduct the full assets amount
        if (accumulatedAssets >= assets) {
            accumulatedAssets -= assets;
        } else {
            // Underflow detected for accumulated assets， This should never underflow
            emit AssetUnderflowDetected("accumulated", assets, accumulatedAssets, owner);
            accumulatedAssets = 0;
        }

        // Transfer assets from adapter to receiver (requires adapter approval)
        SafeERC20.safeTransferFrom(IERC20(asset()), adapter, receiver, assetsAfterFee);

        // Transfer fee from adapter to fee recipient
        if (fee > 0) {
            SafeERC20.safeTransferFrom(IERC20(asset()), adapter, feeRecipient, fee);
            emit EarlyWithdrawalFeeCollected(owner, fee, assets);
        }

        emit Withdraw(caller, receiver, owner, assets, shares);
    }

    /**
     * @notice Override ERC20's _update to charge early withdrawal fee on transfers
     * @dev When users transfer shares within the early withdrawal period, a fee is charged
     *      - Fee is calculated as a percentage of transferred shares
     *      - Fee shares are burned, reducing total supply
     *      - Receiver gets shares minus fee
     *      - No fee on mint (from == address(0)) or burn (to == address(0))
     * @param from Address sending shares (address(0) for mint)
     * @param to Address receiving shares (address(0) for burn)
     * @param value Amount of shares being transferred
     */
    function _update(address from, address to, uint256 value) internal virtual override {
        // Only charge fee on actual transfers (not mint or burn)
        if (from != address(0) && to != address(0) && value > 0) {
            UserDepositInfo memory info = userDepositInfo[from];

            // Check if sender is within early withdrawal period
            if (block.timestamp < info.lastDepositTime + earlyWithdrawalPeriod) {
                // Calculate fee in shares
                uint256 feeShares = value.mulDiv(earlyWithdrawalFeeBps, BPS_DENOMINATOR, Math.Rounding.Floor);

                if (feeShares > 0) {
                    uint256 sharesAfterFee = value - feeShares;

                    // Transfer shares after fee to receiver
                    super._update(from, to, sharesAfterFee);

                    super._update(from, feeRecipient, feeShares);

                    emit TransferFeeCollected(from, to, feeShares, value);
                    return;
                }
            }
        }

        // Normal transfer/mint/burn without fee
        super._update(from, to, value);
    }

    /**
     * @notice Update accumulated assets to current totalAssets before making changes
     * @dev Locks in the current yield before any parameter changes
     */
    function _updateAccumulatedAssets() internal {
        if (!yieldGrowthPaused) {
            accumulatedAssets = totalAssets();
            baseTimestamp = block.timestamp;
        }
    }

    /**
     * @notice Calculate early withdrawal fee for a user
     * @param user User address
     * @param assets Amount of assets to withdraw
     * @return feeAmount Fee amount in assets (0 if not early withdrawal)
     */
    function _calculateEarlyWithdrawalFee(address user, uint256 assets) internal view returns (uint256 feeAmount) {
        UserDepositInfo memory info = userDepositInfo[user];

        // Check if withdrawal is within early withdrawal period
        if (block.timestamp < info.lastDepositTime + earlyWithdrawalPeriod) {
            feeAmount = assets.mulDiv(earlyWithdrawalFeeBps, BPS_DENOMINATOR, Math.Rounding.Floor);
        }

        return feeAmount;
    }

    // ============================================
    // Yield Management Functions
    // ============================================

    /**
     * @notice Set annual yield rate
     * @param newYieldBps New yield rate in basis points
     * @dev Can only be called by manager
     *      Updates baseTimestamp and accumulates previous yield
     */
    function setAnnualYield(uint256 newYieldBps) external onlyVaultManager {
        if (newYieldBps > MAX_ANNUAL_YIELD) {
            revert AnnualYieldTooHigh(newYieldBps, MAX_ANNUAL_YIELD);
        }

        // Lock in current yield before changing rate
        _updateAccumulatedAssets();

        uint256 oldYieldBps = annualYieldBps;
        annualYieldBps = newYieldBps;

        emit AnnualYieldUpdated(oldYieldBps, newYieldBps);
    }

    /**
     * @notice Pause yield growth
     * @dev Can only be called by manager
     *      Accumulates current yield and stops further growth
     */
    function pauseYieldGrowth() external onlyVaultManager {
        if (yieldGrowthPaused) revert YieldGrowthAlreadyPaused();

        // Lock in current yield
        _updateAccumulatedAssets();

        yieldGrowthPaused = true;

        emit YieldGrowthPaused(block.timestamp, accumulatedAssets);
    }

    /**
     * @notice Resume yield growth
     * @dev Can only be called by manager
     *      Sets new base values for yield calculation
     */
    function resumeYieldGrowth() external onlyVaultManager {
        if (!yieldGrowthPaused) revert YieldGrowthAlreadyActive();

        yieldGrowthPaused = false;
        baseTimestamp = block.timestamp;

        emit YieldGrowthResumed(block.timestamp, baseTotalAssets);
    }

    // ============================================
    // Share Cap Management
    // ============================================

    /**
     * @notice Set share cap limit
     * @param newCap New maximum total shares (0 = unlimited)
     * @dev Can only be called by manager
     */
    function setShareCap(uint256 newCap) external onlyVaultManager {
        uint256 oldCap = shareCap;
        shareCap = newCap;

        emit ShareCapUpdated(oldCap, newCap);
    }

    /**
     * @notice Set deposit limits per user
     * @param newMinShares New minimum shares to mint per transaction (0 = no minimum)
     * @param newMaxShares New maximum shares a user can hold (0 = unlimited)
     * @dev Can only be called by manager
     */
    function setDepositLimits(uint256 newMinShares, uint256 newMaxShares) external onlyVaultManager {
        uint256 oldMinShares = minSharesPerDeposit;
        uint256 oldMaxShares = maxSharesPerUser;

        minSharesPerDeposit = newMinShares;
        maxSharesPerUser = newMaxShares;

        emit DepositLimitsUpdated(oldMinShares, newMinShares, oldMaxShares, newMaxShares);
    }

    // ============================================
    // Fee Management Functions
    // ============================================

    /**
     * @notice Set early withdrawal period
     * @param newPeriod New period in seconds
     * @dev Can only be called by manager
     */
    function setEarlyWithdrawalPeriod(uint256 newPeriod) external onlyVaultManager {
        uint256 oldPeriod = earlyWithdrawalPeriod;
        earlyWithdrawalPeriod = newPeriod;

        emit EarlyWithdrawalPeriodUpdated(oldPeriod, newPeriod);
    }

    /**
     * @notice Set early withdrawal fee rate
     * @param newFeeBps New fee rate in basis points
     * @dev Can only be called by manager
     */
    function setEarlyWithdrawalFee(uint256 newFeeBps) external onlyVaultManager {
        if (newFeeBps > MAX_EARLY_WITHDRAWAL_FEE) {
            revert EarlyWithdrawalFeeTooHigh(newFeeBps, MAX_EARLY_WITHDRAWAL_FEE);
        }

        uint256 oldFeeBps = earlyWithdrawalFeeBps;
        earlyWithdrawalFeeBps = newFeeBps;

        emit EarlyWithdrawalFeeUpdated(oldFeeBps, newFeeBps);
    }

    /**
     * @notice Set fee recipient address
     * @param newRecipient New fee recipient address
     * @dev Can only be called by manager
     */
    function setFeeRecipient(address newRecipient) external onlyVaultManager {
        if (newRecipient == address(0)) revert InvalidAddress();

        address oldRecipient = feeRecipient;
        feeRecipient = newRecipient;

        emit FeeRecipientUpdated(oldRecipient, newRecipient);
    }

    /**
     * @notice Update adapter address
     * @param newAdapter New adapter address
     * @dev Can only be called by admin
     */
    function updateAdapter(address newAdapter) external onlyAdmin {
        if (newAdapter == address(0)) revert InvalidAddress();

        address oldAdapter = adapter;
        adapter = newAdapter;

        emit AdapterUpdated(oldAdapter, newAdapter);
    }

    /**
     * @notice Calculate early withdrawal fee for a user
     * @param user User address
     * @param assets Amount of assets to withdraw
     * @return feeAmount Fee amount in assets (0 if not early withdrawal)
     */
    function calculateEarlyWithdrawalFee(address user, uint256 assets) external view returns (uint256 feeAmount) {
        return _calculateEarlyWithdrawalFee(user, assets);
    }

    // ============================================
    // Asset Recovery
    // ============================================

    /**
     * @notice Recover accidentally sent tokens or native currency
     * @dev Only admin can recover assets
     * @param asset Address of token to recover (address(0) for native currency)
     * @param amount Amount to recover
     * @param to Recipient address
     */
    function recoverAsset(address asset, uint256 amount, address to) external onlyAdmin nonReentrant {
        if (to == address(0)) revert InvalidAddress();

        if (asset == address(0)) {
            // Transfer native token (ETH/BNB)
            require(address(this).balance >= amount, "Insufficient native balance");
            (bool success, ) = to.call{value: amount}("");
            require(success, "Native token transfer failed");
        } else {
            // Transfer ERC20 token
            IERC20(asset).safeTransfer(to, amount);
        }

        emit RecoveryAsset(asset, amount, to);
    }

    /**
     * @notice Allow contract to receive native currency
     */
    receive() external payable {}

    // ============================================
    // Pause Management Functions
    // ============================================

    /**
     * @notice Pause all vault operations (deposits and withdrawals)
     * @dev Can only be called by admin as emergency brake
     *      When paused, all deposits, mints, withdrawals, and redemptions are blocked
     */
    function pause() external onlyAdmin {
        _pause();
    }

    /**
     * @notice Unpause all vault operations
     * @dev Can only be called by admin
     *      Resumes normal vault operations
     */
    function unpause() external onlyAdmin {
        _unpause();
    }
}
