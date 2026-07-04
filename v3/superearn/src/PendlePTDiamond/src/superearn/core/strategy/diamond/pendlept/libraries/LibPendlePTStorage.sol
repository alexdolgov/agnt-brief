// SPDX-License-Identifier: MIT
pragma solidity >=0.8.29 <0.9.0;

import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { IVault } from "@superearn/interface/IVault.sol";
import { ICooldownVault } from "@superearn/interface/ICooldownVault.sol";
import { IAssetSwapper } from "@superearn/interface/IAssetSwapper.sol";
import {
    IPendleRouter,
    IPendleMarket,
    IStandardizedYield,
    IPPrincipalToken,
    IPYieldToken,
    IPendleOracle
} from "@superearn/interface/IPendle.sol";
import { TimelockExecutionLib } from "@superearn/core/lib/TimelockExecutionLib.sol";

/**
 * @title LibPendlePTStorage
 * @notice Storage library for Pendle PT Strategy Diamond
 * @dev Combines BaseStrategy + BaseCooldownStrategyV2 + StrategyPendlePT storage
 *      Used by PendlePTDiamond, PendlePTYearnFacet, and PendlePTCoreFacet
 *      All helper logic is now integrated into facets (no external helpers needed)
 */
library LibPendlePTStorage {
    bytes32 constant STORAGE_POSITION = keccak256("superearn.diamond.pendlept.storage");

    // ============================================
    // STORAGE STRUCT
    // ============================================

    struct Storage {
        // ==========================================π
        // Yearn BaseStrategy Storage
        // ==========================================
        IVault vault;
        address strategist;
        address rewards;
        address keeper;
        IERC20 want;
        uint256 minReportDelay;
        uint256 maxReportDelay;
        bool emergencyExit;
        address baseFeeOracle;
        uint256 creditThreshold;
        bool forceHarvestTriggerOnce;
        string metadataURI;
        bool doHealthCheck;
        address healthCheck;
        string strategyName;
        // ==========================================
        // CooldownStrategy Storage
        // ==========================================
        mapping(uint256 => uint256) externalRedeemIndexes;
        IERC20 externalShareToken;
        IERC20 strategyUnderlyingToken;
        ICooldownVault cooldownVault;
        IERC20 vaultAsset;
        IAssetSwapper assetSwapper;
        uint256 remainingPredepositDebt;
        uint256 shortfallTolerance;
        TimelockExecutionLib.TimelockStorage timelockStorage;
        uint256 AMOUNT_TO_SHARE_BUFFER;
        // ==========================================
        // Pendle PT Strategy Storage
        // ==========================================
        IPendleRouter pendleRouter;
        IPendleMarket pendleMarket;
        IStandardizedYield SY;
        IPPrincipalToken PT;
        IPYieldToken YT;
        uint256 maturity;
        uint256 slippageTolerance;
        uint256 lastRedeemIndex;
        mapping(uint256 => uint256) redeemAmounts;
        mapping(uint256 => uint256) redeemTimestamps;
        mapping(uint256 => uint256) swapRequestIds;
        IPendleOracle pendleOracle;
        uint32 twapDuration;
        // Token decimals cache
        uint256 oneUnderlying;
        uint256 onePT;
        uint256 oneVaultAsset;
        uint8 vaultAssetDecimals;
        uint8 strategyAssetDecimals;
        // Reentrancy guard
        uint256 reentrancyStatus;
        // Claim completion tracking (compatible with other strategies)
        mapping(uint256 => bool) redeemClaimed;
        // ==========================================
        // Swap Mode Configuration
        // ==========================================
        /// @notice How to handle deposit: SWAPPER (via assetSwapper) or DIRECT_SY (SY accepts vaultAsset)
        SwapMode depositSwapMode;
        /// @notice How to handle redeem: SWAPPER (via assetSwapper with cooldown) or DIRECT_SY (instant)
        SwapMode redeemSwapMode;
        // ==========================================
        // Active Swap Request Counter (added for gas optimization)
        // ==========================================
        /// @notice Count of active (unclaimed) swap requests for O(1) migration check
        uint256 activeSwapRequestCount;
        /// @notice Reverse mapping: redeemIndex → predepositId (0 if not linked to predeposit)
        mapping(uint256 => uint256) predepositIdByRedeemIndex;
    }

    // ============================================
    // SWAP MODE ENUM
    // ============================================

    /**
     * @notice Determines how deposit/redeem operations handle asset conversion
     * @dev SWAPPER: Uses IAssetSwapper for vaultAsset ↔ strategyAsset conversion (may have cooldown)
     *      DIRECT_SY: SY accepts/redeems vaultAsset directly (no conversion needed, instant)
     */
    enum SwapMode {
        SWAPPER, // Use assetSwapper (cUSDO, sNUSD redeem)
        DIRECT_SY // SY accepts vaultAsset directly (cUSD, sNUSD deposit)

    }

    function getStorage() internal pure returns (Storage storage s) {
        bytes32 position = STORAGE_POSITION;
        assembly {
            s.slot := position
        }
    }

    // ============================================
    // CONSTANTS
    // ============================================

    uint256 constant NOT_ENTERED = 1;
    uint256 constant ENTERED = 2;
    uint256 constant MAX_SLIPPAGE = 1000;
    uint256 constant BPS = 10_000;
    uint256 constant RESERVE_RATIO_BPS = 100; // 1% reserve ratio, used to calculate the amount of assets to keep in the
        // strategy. determined considering the harvest schedule and the ordinary yield rate of the strategy.
    uint32 constant MIN_TWAP_DURATION = 10; // Pendle recommended 15 minutes as minimum, but we use 10 seconds as
        // minimum value for low-cardinality markets
    uint32 constant MAX_TWAP_DURATION = 3600; // 1 hour

    // ============================================
    // ACCESS CONTROL HELPERS
    // ============================================

    function enforceNonReentrant() internal {
        Storage storage s = getStorage();
        require(s.reentrancyStatus != ENTERED, "ReentrancyGuard: reentrant call");
        s.reentrancyStatus = ENTERED;
    }

    function clearReentrancy() internal {
        getStorage().reentrancyStatus = NOT_ENTERED;
    }

    function enforceIsVault() internal view {
        require(msg.sender == address(getStorage().vault), "!vault");
    }

    function enforceIsSelfCall() internal view {
        require(msg.sender == address(this), "!self");
    }

    function enforceIsCooldownVault() internal view {
        require(msg.sender == address(getStorage().cooldownVault), "!cooldownVault");
    }

    function governance() internal view returns (address) {
        return getStorage().vault.governance();
    }

    function enforceIsGovernance() internal view {
        require(msg.sender == governance(), "!governance");
    }

    function enforceIsAuthorized() internal view {
        Storage storage s = getStorage();
        require(msg.sender == s.strategist || msg.sender == governance(), "!authorized");
    }

    function enforceIsKeepers() internal view {
        Storage storage s = getStorage();
        require(
            msg.sender == s.keeper || msg.sender == s.strategist || msg.sender == governance()
                || msg.sender == s.vault.guardian() || msg.sender == s.vault.management(),
            "!keepers"
        );
    }

    function enforceIsEmergencyAuthorized() internal view {
        Storage storage s = getStorage();
        require(
            msg.sender == s.strategist || msg.sender == governance() || msg.sender == s.vault.guardian()
                || msg.sender == s.vault.management(),
            "!emergencyAuthorized"
        );
    }

    function enforceIsVaultManagers() internal view {
        Storage storage s = getStorage();
        require(msg.sender == s.vault.management() || msg.sender == governance(), "!vaultManagers");
    }

    function enforceIsStrategist() internal view {
        require(msg.sender == getStorage().strategist, "!strategist");
    }

    function enforceIsRewarder() internal view {
        Storage storage s = getStorage();
        require(msg.sender == governance() || msg.sender == s.strategist, "!rewarder");
    }
}
