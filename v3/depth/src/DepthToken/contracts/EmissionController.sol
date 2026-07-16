// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import { OwnableUpgradeable } from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import { Initializable } from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import { UUPSUpgradeable } from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import { PausableUpgradeable } from "@openzeppelin/contracts-upgradeable/utils/PausableUpgradeable.sol";
import { IEmissionController } from "./interfaces/IEmissionController.sol";

interface IDepthToken is IERC20 {
    function burn(uint256 amount) external;
    function mint(address to, uint256 amount) external;
    function treasury() external view returns (address);
}

interface IDepthSoul {
    function ownerOf(uint256 tokenId) external view returns (address);
}

contract EmissionController is
    Initializable,
    OwnableUpgradeable,
    UUPSUpgradeable,
    PausableUpgradeable,
    IEmissionController
{
    using SafeERC20 for IERC20;

    uint256 public constant NUM_TIERS = 10;
    uint256 public constant CYCLE_DURATION = 730 days;
    uint256 public constant CLAIM_CAP_DURATION = 7 days;
    uint256 public constant BPS_DENOMINATOR = 10_000;
    uint256 public constant UPGRADE_COST_BPS = 2_500; // 25%
    uint256 public constant UPGRADE_BURN_BPS = 8_000; // 80%
    uint256 public constant SACRIFICE_BONUS_PER_LEVEL = 30e16; // +30%
    uint256 public constant MAX_SACRIFICE_LEVELS_PER_CATEGORY = 5;
    uint256 public constant DEPTH_RESONANCE_BONUS_BPS = 1_500; // 15%
    uint256 public constant MULTIPLIER_PRECISION = 1e18;
    uint256 public constant BASE_SPEED_MULTIPLIER = 1e18;
    uint256 public constant MAX_SPEED_MULTIPLIER = 4e18;
    uint256 public constant MIN_HEALTH_SCORE = 0.1e18; // 10%
    uint256 public constant DEFAULT_RECHARGE_COST_BPS = 1_000; // 10%
    uint256 public constant CHECK_IN_COOLDOWN = 1 days;
    uint256 public constant CHECK_IN_STREAK_RESET = 2 days;

    struct TierConfig {
        uint256 cap;
    }

    struct VaultData {
        uint8 tier;
        uint256 totalCap;
        uint256 totalClaimed;
        uint256 lastClaimTimestamp;
        uint256 unclaimedBuffer;
        uint256 cycleNumber;
        uint256 depthSacrificeCredit;
        uint256 gblueSacrificeCredit;
        uint256 lastCheckIn;
        uint16 currentStreak;
        uint8 referralCount;
        uint256 referrerTokenId;
        bool resonanceActivated;
    }

    address public depthToken;
    address public depthSoul;
    uint256 public healthScore;

    mapping(uint8 => TierConfig) private tierConfigs;
    mapping(uint256 => bool) public vaultInitialized;
    mapping(uint256 => VaultData) private _vaults;
    mapping(address => uint256) public sacrificeScalingFactor;
    mapping(uint8 => uint256) public sacrificeThresholdPerLevel;

    address public gblueToken;
    uint256 public rechargeCostBps;
    uint8 public minReferralTier;
    mapping(uint256 => bool) public referralCredited;
    uint256 public minReferralSacrificePoints;

    error InvalidAddress();
    error InvalidTier(uint8 tier);
    error InvalidTierCap(uint8 tier, uint256 cap);
    error InvalidHealthScore(uint256 score);
    error NotDepthSoul(address caller);
    error VaultNotInitialized(uint256 tokenId);
    error VaultAlreadyInitialized(uint256 tokenId);
    error NotVaultOwner(address caller);
    error MaxTierReached(uint8 tier);
    error InvalidAmount(uint256 amount);
    error InvalidBps(uint256 bps);
    error UnsupportedSacrificeToken(address token);
    error MissingSacrificeScalingFactor(address token);
    error CheckInTooSoon(uint256 nextAllowedTimestamp);
    error VaultNotExhausted(uint256 tokenId);
    error ShallowsCannotRecharge(uint256 tokenId);
    error ReferrerAlreadySet(uint256 tokenId);
    error CannotReferSelf(uint256 tokenId);
    error InvalidReferrer(uint256 referrerTokenId);

    event DepthTokenSet(address indexed depthToken);
    event DepthSoulSet(address indexed depthSoul);
    event TierConfigSet(uint8 indexed tier, uint256 cap);
    event HealthScoreSet(uint256 healthScore);
    event VaultInitialized(uint256 indexed tokenId, address indexed owner, uint8 indexed tier, uint256 totalCap);
    event RewardsClaimed(uint256 indexed tokenId, address indexed owner, uint256 amount);
    event TierUpgraded(
        uint256 indexed tokenId,
        uint8 previousTier,
        uint8 newTier,
        uint256 cost,
        uint256 burnAmount,
        uint256 treasuryAmount
    );
    event SacrificeScalingFactorSet(address indexed token, uint256 scalingFactor);
    event SacrificeThresholdSet(uint8 indexed tier, uint256 thresholdPerLevel);
    event GblueTokenSet(address indexed token);
    event RechargeCostBpsSet(uint256 rechargeCostBps);
    event DepthSacrificed(
        uint256 indexed tokenId,
        address indexed owner,
        uint256 amount,
        uint256 points,
        uint256 burnAmount,
        uint256 treasuryAmount
    );
    event TokenSacrificed(
        uint256 indexed tokenId,
        address indexed owner,
        address indexed token,
        uint256 amount,
        uint256 points
    );
    event DepthResonanceActivated(uint256 indexed tokenId);
    event VaultRecharged(
        uint256 indexed tokenId,
        uint256 cycleNumber,
        uint256 cost,
        uint256 burnAmount,
        uint256 treasuryAmount
    );
    event CheckedIn(uint256 indexed tokenId, uint16 streak);
    event ReferrerSet(uint256 indexed tokenId, uint256 indexed referrerTokenId);
    event ReferralCredited(uint256 indexed referrerTokenId, uint256 indexed referredTokenId, uint8 newReferralCount);
    event MinReferralTierSet(uint8 tier);
    event MinReferralSacrificePointsSet(uint256 points);

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(
        address initialOwner,
        address initialDepthToken,
        address initialDepthSoul
    ) external initializer {
        if (initialOwner == address(0) || initialDepthToken == address(0) || initialDepthSoul == address(0)) {
            revert InvalidAddress();
        }

        __Ownable_init(initialOwner);
        __UUPSUpgradeable_init();
        __Pausable_init();

        depthToken = initialDepthToken;
        depthSoul = initialDepthSoul;
        healthScore = MULTIPLIER_PRECISION;
        rechargeCostBps = DEFAULT_RECHARGE_COST_BPS;
        minReferralTier = 1;
        minReferralSacrificePoints = 0;

        _setDefaultTierCaps();
    }

    function initializeVault(uint256 tokenId) external override whenNotPaused {
        _onlyDepthSoul();
        address ownerOfVault = IDepthSoul(depthSoul).ownerOf(tokenId);
        _initializeVault(tokenId, ownerOfVault);
    }

    function initializeVault(uint256 tokenId, address ownerOfVault) external whenNotPaused {
        _onlyDepthSoul();
        if (ownerOfVault == address(0)) revert InvalidAddress();
        if (IDepthSoul(depthSoul).ownerOf(tokenId) != ownerOfVault) revert NotVaultOwner(ownerOfVault);

        _initializeVault(tokenId, ownerOfVault);
    }

    function claim(uint256 tokenId) external whenNotPaused returns (uint256) {
        return claimRewards(tokenId);
    }

    function claimRewards(uint256 tokenId) public whenNotPaused returns (uint256 claimedAmount) {
        VaultData storage vault = _requireInitializedVault(tokenId);
        address vaultOwner = _requireVaultOwner(tokenId);

        claimedAmount = _getPendingRewards(vault);

        if (claimedAmount > 0) {
            vault.totalClaimed += claimedAmount;
            IDepthToken(depthToken).mint(vaultOwner, claimedAmount);
        }

        vault.unclaimedBuffer = 0;
        vault.lastClaimTimestamp = block.timestamp;

        emit RewardsClaimed(tokenId, vaultOwner, claimedAmount);
    }

    function upgrade(uint256 tokenId) external whenNotPaused {
        upgradeTier(tokenId);
    }

    function upgradeTier(uint256 tokenId) public whenNotPaused {
        VaultData storage vault = _requireInitializedVault(tokenId);
        _requireVaultOwner(tokenId);

        uint8 currentTier = vault.tier;
        if (currentTier >= NUM_TIERS - 1) revert MaxTierReached(currentTier);

        uint8 nextTier = currentTier + 1;
        uint256 nextCap = tierConfigs[nextTier].cap;
        uint256 currentCap = vault.totalCap;
        if (nextCap <= currentCap) revert InvalidTierCap(nextTier, nextCap);

        _checkpointPendingRewards(vault);

        (uint256 upgradeCost, uint256 burnAmount, uint256 treasuryAmount) = _calculateUpgradeAmounts(
            currentCap,
            nextCap
        );
        _collectAndRouteDepthPayment(msg.sender, upgradeCost, burnAmount, treasuryAmount);

        vault.tier = nextTier;
        vault.totalCap = nextCap;

        _tryCreditReferral(tokenId);

        emit TierUpgraded(tokenId, currentTier, nextTier, upgradeCost, burnAmount, treasuryAmount);
    }

    function setReferrer(uint256 tokenId, uint256 referrerTokenId) external whenNotPaused {
        VaultData storage vault = _requireInitializedVault(tokenId);
        _requireVaultOwner(tokenId);

        if (vault.referrerTokenId != 0) revert ReferrerAlreadySet(tokenId);
        if (referrerTokenId == tokenId) revert CannotReferSelf(tokenId);
        if (!vaultInitialized[referrerTokenId]) revert InvalidReferrer(referrerTokenId);

        vault.referrerTokenId = referrerTokenId;
        emit ReferrerSet(tokenId, referrerTokenId);
    }

    function sacrificeDepth(uint256 tokenId, uint256 amount) external whenNotPaused {
        if (amount == 0) revert InvalidAmount(amount);

        VaultData storage vault = _requireInitializedVault(tokenId);
        address vaultOwner = _requireVaultOwner(tokenId);
        _checkpointPendingRewards(vault);

        uint256 scalingFactor = sacrificeScalingFactor[depthToken];
        if (scalingFactor == 0) revert MissingSacrificeScalingFactor(depthToken);

        uint256 points = amount * scalingFactor;
        (uint256 burnAmount, uint256 treasuryAmount) = _calculateBurnSplit(amount);
        _collectAndRouteDepthPayment(msg.sender, amount, burnAmount, treasuryAmount);

        vault.depthSacrificeCredit += points;
        if (!vault.resonanceActivated && _hasDepthResonance(vault)) {
            vault.resonanceActivated = true;
            emit DepthResonanceActivated(tokenId);
        }

        emit DepthSacrificed(tokenId, vaultOwner, amount, points, burnAmount, treasuryAmount);
        _tryCreditReferral(tokenId);
    }

    function sacrificeToken(uint256 tokenId, address token, uint256 amount) external whenNotPaused {
        if (amount == 0) revert InvalidAmount(amount);

        VaultData storage vault = _requireInitializedVault(tokenId);
        address vaultOwner = _requireVaultOwner(tokenId);
        _checkpointPendingRewards(vault);

        if (token != gblueToken) {
            revert UnsupportedSacrificeToken(token);
        }

        uint256 scalingFactor = sacrificeScalingFactor[token];
        if (scalingFactor == 0) revert MissingSacrificeScalingFactor(token);

        uint256 points = amount * scalingFactor;
        IERC20(token).safeTransferFrom(msg.sender, IDepthToken(depthToken).treasury(), amount);

        vault.gblueSacrificeCredit += points;
        if (!vault.resonanceActivated && _hasDepthResonance(vault)) {
            vault.resonanceActivated = true;
            emit DepthResonanceActivated(tokenId);
        }

        emit TokenSacrificed(tokenId, vaultOwner, token, amount, points);
        _tryCreditReferral(tokenId);
    }

    function recharge(uint256 tokenId) external whenNotPaused {
        rechargeVault(tokenId);
    }

    function rechargeVault(uint256 tokenId) public whenNotPaused {
        VaultData storage vault = _requireInitializedVault(tokenId);
        _requireVaultOwner(tokenId);

        if (vault.tier == 0) revert ShallowsCannotRecharge(tokenId);
        if (vault.totalClaimed < _getEffectiveCap(vault)) revert VaultNotExhausted(tokenId);

        uint256 rechargeCost = (vault.totalCap * rechargeCostBps) / BPS_DENOMINATOR;
        (uint256 burnAmount, uint256 treasuryAmount) = _calculateBurnSplit(rechargeCost);
        _collectAndRouteDepthPayment(msg.sender, rechargeCost, burnAmount, treasuryAmount);

        vault.totalClaimed = 0;
        vault.lastClaimTimestamp = block.timestamp;
        vault.unclaimedBuffer = 0;
        vault.cycleNumber += 1;
        vault.depthSacrificeCredit = 0;
        vault.gblueSacrificeCredit = 0;
        vault.lastCheckIn = 0;
        vault.currentStreak = 0;
        vault.referralCount = 0;
        vault.resonanceActivated = false;

        emit VaultRecharged(tokenId, vault.cycleNumber, rechargeCost, burnAmount, treasuryAmount);
    }

    function checkIn(uint256 tokenId) external whenNotPaused {
        VaultData storage vault = _requireInitializedVault(tokenId);
        _requireVaultOwner(tokenId);
        _checkpointPendingRewards(vault);

        if (vault.lastCheckIn != 0) {
            uint256 elapsed = block.timestamp - vault.lastCheckIn;
            if (elapsed < CHECK_IN_COOLDOWN) {
                revert CheckInTooSoon(vault.lastCheckIn + CHECK_IN_COOLDOWN);
            }

            if (elapsed > CHECK_IN_STREAK_RESET) {
                vault.currentStreak = 1;
            } else {
                vault.currentStreak += 1;
            }
        } else {
            vault.currentStreak = 1;
        }

        vault.lastCheckIn = block.timestamp;
        emit CheckedIn(tokenId, vault.currentStreak);
    }

    function setDepthToken(address newDepthToken) external onlyOwner {
        if (newDepthToken == address(0)) revert InvalidAddress();
        depthToken = newDepthToken;
        emit DepthTokenSet(newDepthToken);
    }

    function setDepthSoul(address newDepthSoul) external onlyOwner {
        if (newDepthSoul == address(0)) revert InvalidAddress();
        depthSoul = newDepthSoul;
        emit DepthSoulSet(newDepthSoul);
    }

    function setTierConfig(uint8 tier, uint256 cap) external onlyOwner {
        if (tier >= NUM_TIERS) revert InvalidTier(tier);
        if (cap == 0) revert InvalidTierCap(tier, cap);

        if (tier > 0 && cap <= tierConfigs[tier - 1].cap) revert InvalidTierCap(tier, cap);
        if (tier < NUM_TIERS - 1) {
            uint256 nextCap = tierConfigs[tier + 1].cap;
            if (nextCap != 0 && cap >= nextCap) revert InvalidTierCap(tier, cap);
        }

        tierConfigs[tier].cap = cap;
        emit TierConfigSet(tier, cap);
    }

    function setHealthScore(uint256 newHealthScore) external onlyOwner {
        if (newHealthScore < MIN_HEALTH_SCORE || newHealthScore > MULTIPLIER_PRECISION) {
            revert InvalidHealthScore(newHealthScore);
        }
        healthScore = newHealthScore;
        emit HealthScoreSet(newHealthScore);
    }

    function setSacrificeScalingFactor(address token, uint256 factor) external onlyOwner {
        if (token == address(0)) revert InvalidAddress();
        sacrificeScalingFactor[token] = factor;
        emit SacrificeScalingFactorSet(token, factor);
    }

    function setSacrificeThreshold(uint8 tier, uint256 thresholdPerLevel) external onlyOwner {
        if (tier >= NUM_TIERS) revert InvalidTier(tier);
        sacrificeThresholdPerLevel[tier] = thresholdPerLevel;
        emit SacrificeThresholdSet(tier, thresholdPerLevel);
    }

    function setGblueToken(address newGblueToken) external onlyOwner {
        if (newGblueToken == address(0)) revert InvalidAddress();
        gblueToken = newGblueToken;
        emit GblueTokenSet(newGblueToken);
    }

    function setRechargeCostBps(uint256 newRechargeCostBps) external onlyOwner {
        if (newRechargeCostBps > BPS_DENOMINATOR) revert InvalidBps(newRechargeCostBps);
        rechargeCostBps = newRechargeCostBps;
        emit RechargeCostBpsSet(newRechargeCostBps);
    }

    function setMinReferralTier(uint8 tier) external onlyOwner {
        if (tier >= NUM_TIERS) revert InvalidTier(tier);
        minReferralTier = tier;
        emit MinReferralTierSet(tier);
    }

    function setMinReferralSacrificePoints(uint256 points) external onlyOwner {
        minReferralSacrificePoints = points;
        emit MinReferralSacrificePointsSet(points);
    }

    function pause() external onlyOwner {
        _pause();
    }

    function unpause() external onlyOwner {
        _unpause();
    }

    // A manual getter avoids compiler stack limits from a public mapping getter on a large struct.
    function vaults(uint256 tokenId) external view returns (VaultData memory) {
        return _vaults[tokenId];
    }

    function getVault(uint256 tokenId) external view returns (VaultData memory) {
        return _vaults[tokenId];
    }

    function getPendingRewards(uint256 tokenId) external view returns (uint256) {
        if (!vaultInitialized[tokenId]) return 0;
        return _getPendingRewards(_vaults[tokenId]);
    }

    function getEffectiveCap(uint256 tokenId) external view returns (uint256) {
        if (!vaultInitialized[tokenId]) return 0;
        return _getEffectiveCap(_vaults[tokenId]);
    }

    function hasDepthResonance(uint256 tokenId) external view returns (bool) {
        if (!vaultInitialized[tokenId]) return false;
        return _vaults[tokenId].resonanceActivated;
    }

    function getSpeedMultiplier(uint256 tokenId) public view returns (uint256) {
        if (!vaultInitialized[tokenId]) return BASE_SPEED_MULTIPLIER;
        return _getVaultSpeedMultiplier(_vaults[tokenId]);
    }

    function getEffectiveDailyRate(uint256 tokenId) external view returns (uint256) {
        if (!vaultInitialized[tokenId]) return 0;
        return _getEffectiveRatePerSecond(_vaults[tokenId]) * 1 days;
    }

    function getHealthScore() external view returns (uint256) {
        return healthScore;
    }

    function getTierConfig(uint8 tier) external view returns (TierConfig memory) {
        if (tier >= NUM_TIERS) revert InvalidTier(tier);
        return tierConfigs[tier];
    }

    function getSacrificeCredit(uint256 tokenId) external view returns (uint256 depth, uint256 gblue) {
        VaultData storage vault = _vaults[tokenId];
        return (vault.depthSacrificeCredit, vault.gblueSacrificeCredit);
    }

    function _authorizeUpgrade(address newImplementation) internal override onlyOwner {
        if (newImplementation == address(0)) revert InvalidAddress();
    }

    function _getVaultSpeedMultiplier(VaultData storage vault) internal view returns (uint256) {
        if (vault.tier == 0) return BASE_SPEED_MULTIPLIER;

        uint256 totalLevels = _getTotalSacrificeLevels(vault);
        uint256 sacrificeBonus = totalLevels * SACRIFICE_BONUS_PER_LEVEL;
        uint256 streakBonus = _getStreakBonus(vault.currentStreak);
        uint256 referralBonus = uint256(vault.referralCount) * 5e16;
        uint256 speedMultiplier = BASE_SPEED_MULTIPLIER + sacrificeBonus + streakBonus + referralBonus;

        if (speedMultiplier > MAX_SPEED_MULTIPLIER) {
            return MAX_SPEED_MULTIPLIER;
        }

        return speedMultiplier;
    }

    function _getTotalSacrificeLevels(VaultData storage vault) internal view returns (uint256 totalLevels) {
        totalLevels += _getSacrificeLevels(vault.depthSacrificeCredit, vault.tier);
        totalLevels += _getSacrificeLevels(vault.gblueSacrificeCredit, vault.tier);
    }

    function _getSacrificeLevels(uint256 credit, uint8 tier) internal view returns (uint256) {
        uint256 thresholdPerLevel = sacrificeThresholdPerLevel[tier];
        if (thresholdPerLevel == 0) {
            return 0;
        }

        return _getCategorySacrificeLevels(credit, thresholdPerLevel);
    }

    function _getCategorySacrificeLevels(uint256 credit, uint256 thresholdPerLevel) internal pure returns (uint256) {
        uint256 levels = credit / thresholdPerLevel;
        if (levels > MAX_SACRIFICE_LEVELS_PER_CATEGORY) {
            return MAX_SACRIFICE_LEVELS_PER_CATEGORY;
        }
        return levels;
    }

    function _hasDepthResonance(VaultData storage vault) internal view returns (bool) {
        uint256 depthLevels = _getSacrificeLevels(vault.depthSacrificeCredit, vault.tier);
        uint256 gblueLevels = _getSacrificeLevels(vault.gblueSacrificeCredit, vault.tier);

        return
            depthLevels == MAX_SACRIFICE_LEVELS_PER_CATEGORY &&
            gblueLevels == MAX_SACRIFICE_LEVELS_PER_CATEGORY;
    }

    function _getEffectiveCap(VaultData storage vault) internal view returns (uint256) {
        if (!vault.resonanceActivated) {
            return vault.totalCap;
        }

        return (vault.totalCap * (BPS_DENOMINATOR + DEPTH_RESONANCE_BONUS_BPS)) / BPS_DENOMINATOR;
    }

    function _getStreakBonus(uint16 streak) internal pure returns (uint256) {
        if (streak >= 90) {
            return 25e16; // +25%
        }
        if (streak >= 30) {
            return 15e16; // +15%
        }
        if (streak >= 7) {
            return 8e16; // +8%
        }
        if (streak > 0) {
            return 3e16; // +3%
        }
        return 0;
    }

    function _checkpointPendingRewards(VaultData storage vault) internal {
        vault.unclaimedBuffer = _getPendingRewards(vault);
        vault.lastClaimTimestamp = block.timestamp;
    }

    function _creditReferral(uint256 referrerTokenId) internal returns (uint8 newReferralCount) {
        if (!vaultInitialized[referrerTokenId]) revert InvalidReferrer(referrerTokenId);

        VaultData storage referrerVault = _vaults[referrerTokenId];
        if (referrerVault.referralCount < 5) {
            unchecked {
                referrerVault.referralCount += 1;
            }
        }

        return referrerVault.referralCount;
    }

    function _tryCreditReferral(uint256 tokenId) internal {
        if (referralCredited[tokenId]) {
            return;
        }

        VaultData storage vault = _vaults[tokenId];
        if (vault.referrerTokenId == 0) {
            return;
        }
        if (vault.tier < minReferralTier) {
            return;
        }

        uint256 totalSacrificePoints = vault.depthSacrificeCredit + vault.gblueSacrificeCredit;
        if (totalSacrificePoints < minReferralSacrificePoints) {
            return;
        }

        uint8 newReferralCount = _creditReferral(vault.referrerTokenId);
        referralCredited[tokenId] = true;
        emit ReferralCredited(vault.referrerTokenId, tokenId, newReferralCount);
    }

    function _calculateUpgradeAmounts(
        uint256 currentCap,
        uint256 nextCap
    ) internal pure returns (uint256 upgradeCost, uint256 burnAmount, uint256 treasuryAmount) {
        uint256 incrementalCap = nextCap - currentCap;
        upgradeCost = (incrementalCap * UPGRADE_COST_BPS) / BPS_DENOMINATOR;
        burnAmount = (upgradeCost * UPGRADE_BURN_BPS) / BPS_DENOMINATOR;
        treasuryAmount = upgradeCost - burnAmount;
    }

    function _calculateBurnSplit(uint256 amount) internal pure returns (uint256 burnAmount, uint256 treasuryAmount) {
        burnAmount = (amount * UPGRADE_BURN_BPS) / BPS_DENOMINATOR;
        treasuryAmount = amount - burnAmount;
    }

    function _collectAndRouteDepthPayment(
        address from,
        uint256 amount,
        uint256 burnAmount,
        uint256 treasuryAmount
    ) internal {
        if (amount == 0) {
            return;
        }

        IERC20(depthToken).safeTransferFrom(from, address(this), amount);

        if (burnAmount > 0) {
            IDepthToken(depthToken).burn(burnAmount);
        }

        if (treasuryAmount > 0) {
            IERC20(depthToken).safeTransfer(IDepthToken(depthToken).treasury(), treasuryAmount);
        }
    }

    function _initializeVault(uint256 tokenId, address ownerOfVault) internal {
        if (vaultInitialized[tokenId]) revert VaultAlreadyInitialized(tokenId);

        vaultInitialized[tokenId] = true;

        VaultData storage vault = _vaults[tokenId];
        vault.tier = 0;
        vault.totalCap = tierConfigs[0].cap;
        vault.totalClaimed = 0;
        vault.lastClaimTimestamp = block.timestamp;
        vault.unclaimedBuffer = 0;
        vault.cycleNumber = 0;
        vault.depthSacrificeCredit = 0;
        vault.gblueSacrificeCredit = 0;
        vault.lastCheckIn = 0;
        vault.currentStreak = 0;
        vault.referralCount = 0;
        vault.referrerTokenId = 0;
        vault.resonanceActivated = false;

        emit VaultInitialized(tokenId, ownerOfVault, 0, vault.totalCap);
    }

    function _requireInitializedVault(uint256 tokenId) internal view returns (VaultData storage vault) {
        if (!vaultInitialized[tokenId]) revert VaultNotInitialized(tokenId);
        vault = _vaults[tokenId];
    }

    function _requireVaultOwner(uint256 tokenId) internal view returns (address ownerOfVault) {
        ownerOfVault = IDepthSoul(depthSoul).ownerOf(tokenId);
        if (ownerOfVault != msg.sender) revert NotVaultOwner(msg.sender);
    }

    function _onlyDepthSoul() internal view {
        if (msg.sender != depthSoul) revert NotDepthSoul(msg.sender);
    }

    function _getPendingRewards(VaultData storage vault) internal view returns (uint256) {
        uint256 effectiveCap = _getEffectiveCap(vault);
        if (vault.totalClaimed >= effectiveCap) return 0;

        uint256 remainingCap = effectiveCap - vault.totalClaimed;
        uint256 accrued = _getAccruedRewards(vault);
        uint256 pending = vault.unclaimedBuffer + accrued;

        if (pending > remainingCap) {
            return remainingCap;
        }

        return pending;
    }

    function _getAccruedRewards(VaultData storage vault) internal view returns (uint256) {
        uint256 elapsed = block.timestamp - vault.lastClaimTimestamp;
        if (elapsed == 0) return 0;
        if (elapsed > CLAIM_CAP_DURATION) elapsed = CLAIM_CAP_DURATION;

        return elapsed * _getEffectiveRatePerSecond(vault);
    }

    function _getEffectiveRatePerSecond(VaultData storage vault) internal view returns (uint256) {
        uint256 speedMultiplier = _getVaultSpeedMultiplier(vault);
        uint256 effectiveCap = _getEffectiveCap(vault);
        return
            (((effectiveCap * speedMultiplier) / MULTIPLIER_PRECISION) * healthScore) /
            MULTIPLIER_PRECISION /
            CYCLE_DURATION;
    }

    function _setDefaultTierCaps() internal {
        tierConfigs[0].cap = 1_000 ether;
        tierConfigs[1].cap = 5_000 ether;
        tierConfigs[2].cap = 15_000 ether;
        tierConfigs[3].cap = 40_000 ether;
        tierConfigs[4].cap = 80_000 ether;
        tierConfigs[5].cap = 150_000 ether;
        tierConfigs[6].cap = 250_000 ether;
        tierConfigs[7].cap = 400_000 ether;
        tierConfigs[8].cap = 600_000 ether;
        tierConfigs[9].cap = 1_000_000 ether;
    }
}
