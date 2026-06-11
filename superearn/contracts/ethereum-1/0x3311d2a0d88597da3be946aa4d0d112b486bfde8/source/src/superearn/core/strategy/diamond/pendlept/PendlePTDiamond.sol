// SPDX-License-Identifier: MIT
pragma solidity >=0.8.29 <0.9.0;

import { LibDiamond } from "../shared/libraries/LibDiamond.sol";
import { LibPendlePTStorage } from "./libraries/LibPendlePTStorage.sol";
import { IDiamondCut } from "../shared/interfaces/IDiamondCut.sol";
import { IDiamondLoupe } from "../shared/interfaces/IDiamondLoupe.sol";
import { IERC165 } from "@openzeppelin/contracts/utils/introspection/IERC165.sol";
import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { IERC20Metadata } from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import { IVault } from "@superearn/interface/IVault.sol";
import { IAssetSwapper } from "@superearn/interface/IAssetSwapper.sol";
import { ICooldownVault } from "@superearn/interface/ICooldownVault.sol";
import {
    IPendleRouter,
    IPendleMarket,
    IStandardizedYield,
    IPPrincipalToken,
    IPYieldToken
} from "@superearn/interface/IPendle.sol";

/**
 * @title PendlePTDiamond
 * @notice EIP-2535 Diamond implementation for Pendle PT Strategy
 * @dev This contract acts as a proxy, delegating calls to facets
 *      Does NOT inherit BaseStrategy - implements IStrategy directly
 *      All helper logic is integrated into facets (no external helpers needed)
 *
 * Architecture:
 * - PendlePTDiamond: Storage + Fallback routing
 * - PendlePTYearnFacet: harvest(), tend(), withdraw(), Yearn governance
 * - PendlePTCoreFacet: deposit, redeem, rollover, Pendle governance (with integrated helpers)
 * - DiamondCutFacet: diamondCut() for upgrades
 * - DiamondLoupeFacet: introspection
 */
contract PendlePTDiamond {
    // ============================================
    // ERRORS
    // ============================================

    /// @notice Thrown when decimals are inconsistent between assets
    error DecimalsMismatch(uint8 decimals1, uint8 decimals2);
    /// @notice Thrown when swapper is required but not provided
    error SwapperRequired();
    /// @notice Thrown when strategyAsset is required for DIRECT_SY mode but not provided
    error StrategyAssetRequired();
    /// @notice Thrown when SY:strategyAsset is not 1:1 (deposit/redeem ratio != 1:1)
    error SYStrategyAssetRatioNotOneToOne(uint256 depositRatio, uint256 redeemRatio);
    /// @notice Thrown when vaultAsset is not supported by SY in DIRECT_SY mode
    error VaultAssetNotSupportedBySY(address vaultAsset);
    /// @notice Thrown when swapper's vaultAsset doesn't match CooldownVault's underlying asset
    error VaultAssetMismatch(address swapperVaultAsset, address cooldownVaultAsset);
    /// @notice Thrown when owner address is zero
    error ZeroAddress();

    // ============================================
    // CONSTRUCTOR ARGS
    // ============================================

    struct DiamondArgs {
        address owner;
        address vault;
        address pendleRouter;
        address pendleMarket;
        address swapper; // Required for SWAPPER mode, can be address(0) for DIRECT_SY only
        LibPendlePTStorage.SwapMode depositSwapMode;
        LibPendlePTStorage.SwapMode redeemSwapMode;
        address strategyAsset; // Required for DIRECT_SY mode when swapper is address(0)
        string strategyName;
    }

    // ============================================
    // CONSTRUCTOR
    // ============================================

    constructor(IDiamondCut.FacetCut[] memory _diamondCut, DiamondArgs memory _args) {
        if (_args.owner == address(0)) revert ZeroAddress();
        if (_args.vault == address(0)) revert ZeroAddress();
        if (_args.pendleRouter == address(0)) revert ZeroAddress();
        if (_args.pendleMarket == address(0)) revert ZeroAddress();

        // Set diamond owner
        LibDiamond.setContractOwner(_args.owner);

        // Add facets
        LibDiamond.diamondCut(_diamondCut, address(0), "");

        // Register ERC165 interface support (EIP-165 compliant)
        LibDiamond.DiamondStorage storage ds = LibDiamond.diamondStorage();
        ds.supportedInterfaces[type(IERC165).interfaceId] = true;
        ds.supportedInterfaces[type(IDiamondCut).interfaceId] = true;
        ds.supportedInterfaces[type(IDiamondLoupe).interfaceId] = true;

        // Initialize strategy storage
        _initializeStrategy(_args);
    }

    function _initializeStrategy(DiamondArgs memory _args) internal {
        LibPendlePTStorage.Storage storage s = LibPendlePTStorage.getStorage();

        // Initialize reentrancy guard
        s.reentrancyStatus = LibPendlePTStorage.NOT_ENTERED;

        // ============================================
        // SwapMode configuration
        // ============================================
        s.depositSwapMode = _args.depositSwapMode;
        s.redeemSwapMode = _args.redeemSwapMode;

        // Validate swapper requirement based on SwapMode
        bool needsSwapper = _args.depositSwapMode == LibPendlePTStorage.SwapMode.SWAPPER
            || _args.redeemSwapMode == LibPendlePTStorage.SwapMode.SWAPPER;
        if (needsSwapper && _args.swapper == address(0)) {
            revert SwapperRequired();
        }

        // ============================================
        // Yearn BaseStrategy initialization
        // ============================================
        s.vault = IVault(_args.vault);
        s.want = IERC20(s.vault.token());
        s.strategist = _args.owner;
        s.rewards = _args.owner;
        s.keeper = _args.owner;
        s.minReportDelay = 0;
        s.maxReportDelay = 7 days; // StrategyPendlePT override (BaseStrategy default: 30 days)
        s.creditThreshold = 1_000_000 * 10 ** s.vault.decimals();
        s.AMOUNT_TO_SHARE_BUFFER = 0;

        // Give vault unlimited access
        s.want.approve(_args.vault, type(uint256).max);

        // Set strategy name
        s.strategyName = _args.strategyName;

        // ============================================
        // Pendle PT Strategy initialization
        // ============================================
        s.pendleRouter = IPendleRouter(_args.pendleRouter);

        // Initialize from Pendle market
        s.pendleMarket = IPendleMarket(_args.pendleMarket);
        (address _SY, address _PT, address _YT) = s.pendleMarket.readTokens();
        s.SY = IStandardizedYield(_SY);
        s.PT = IPPrincipalToken(_PT);
        s.YT = IPYieldToken(_YT);
        s.maturity = s.pendleMarket.expiry();
        s.externalShareToken = IERC20(_PT);

        // ============================================
        // Asset configuration based on SwapMode
        // ============================================

        s.vaultAsset = IERC20(ICooldownVault(s.vault.token()).asset());

        if (_args.swapper != address(0)) {
            // SWAPPER mode (or mixed mode): Use swapper for asset info
            s.assetSwapper = IAssetSwapper(_args.swapper);
            s.strategyUnderlyingToken = IERC20(s.assetSwapper.strategyAsset());

            // Validate swapper's vaultAsset matches CooldownVault's underlying asset
            address assetSwapperVaultAsset = s.assetSwapper.vaultAsset();
            if (address(s.vaultAsset) != assetSwapperVaultAsset) {
                revert VaultAssetMismatch(assetSwapperVaultAsset, address(s.vaultAsset));
            }
        } else {
            // DIRECT_SY only mode: No swapper, use provided strategyAsset
            if (_args.strategyAsset == address(0)) {
                revert StrategyAssetRequired();
            }
            s.strategyUnderlyingToken = IERC20(_args.strategyAsset);
        }

        // ============================================
        // Validate decimals consistency for strategyAsset
        // ============================================
        // Note: SY's underlying may differ from strategyAsset (e.g., cUSDO wraps USDO)
        // What matters is that strategyAsset decimals match SY decimals for rate calculations
        (,, uint8 syAssetDecimals) = s.SY.assetInfo();
        uint8 strategyAssetDecimals = IERC20Metadata(address(s.strategyUnderlyingToken)).decimals();
        uint8 syDecimals = IERC20Metadata(address(s.SY)).decimals();

        // Validate SY decimals match the reported asset decimals
        if (syDecimals != syAssetDecimals) {
            revert DecimalsMismatch(syDecimals, syAssetDecimals);
        }

        // Validate strategyAsset decimals match SY decimals for rate calculations
        // This allows wrapped tokens (e.g., cUSDO) where underlying is different (USDO)
        if (strategyAssetDecimals != syDecimals) {
            revert DecimalsMismatch(strategyAssetDecimals, syDecimals);
        }

        // ============================================
        // Validate SY:strategyAsset = 1:1 ratio
        // ============================================
        // CRITICAL ASSUMPTION: This strategy assumes SY:strategyAsset = 1:1
        // This allows us to treat SY amounts and strategyAsset amounts interchangeably
        // in calculations (e.g., _calculateEstimatedTotalAssets, _previewSwapTokenForPt)
        //
        // Note: We validate using previewDeposit/previewRedeem, NOT exchangeRate().
        // exchangeRate() returns SY → underlying asset ratio (e.g., NUSD for sNUSD SY),
        // which may differ from SY → strategyAsset ratio.
        //
        // Example: sNUSD SY
        //   - exchangeRate() = 1.022e18 (1 SY → 1.022 NUSD)
        //   - previewDeposit(sNUSD, 1e18) = 1e18 (1 sNUSD → 1 SY) ✓
        //   - previewRedeem(sNUSD, 1e18) = 1e18 (1 SY → 1 sNUSD) ✓
        //
        // Supported tokens (all have strategyAsset:SY = 1:1):
        // - cUSDO (OpenEden), sUSDe (Ethena), srUSDe (Strata)
        // - sUSDf (Falcon), sNUSD (Neutrl), cUSD (Cap)
        //
        // For rebasing tokens where strategyAsset:SY ratio varies over time,
        // a different strategy implementation would be required.
        uint256 oneStrategyAsset = 10 ** strategyAssetDecimals;
        uint256 depositRatio = s.SY.previewDeposit(address(s.strategyUnderlyingToken), oneStrategyAsset);
        uint256 redeemRatio = s.SY.previewRedeem(address(s.strategyUnderlyingToken), oneStrategyAsset);
        if (depositRatio != oneStrategyAsset || redeemRatio != oneStrategyAsset) {
            revert SYStrategyAssetRatioNotOneToOne(depositRatio, redeemRatio);
        }

        // Initialize cooldown vault from vault token
        s.cooldownVault = ICooldownVault(address(s.want));

        // Default shortfall tolerance: $100 worth of want tokens
        s.shortfallTolerance = 100 * 10 ** s.vault.decimals();

        // Initialize decimals cache
        s.oneUnderlying = 10 ** IERC20Metadata(address(s.strategyUnderlyingToken)).decimals();
        s.onePT = 10 ** IERC20Metadata(address(s.PT)).decimals();
        s.strategyAssetDecimals = IERC20Metadata(address(s.strategyUnderlyingToken)).decimals();
        s.vaultAssetDecimals = IERC20Metadata(address(s.vaultAsset)).decimals();
        s.oneVaultAsset = 10 ** s.vaultAssetDecimals;

        // ============================================
        // DIRECT_SY Mode Validation
        // ============================================
        // In DIRECT_SY mode, vaultAsset must be directly supported by SY for deposit/redeem
        // This is separate from strategyAsset:SY 1:1 validation above
        if (s.depositSwapMode == LibPendlePTStorage.SwapMode.DIRECT_SY) {
            // Verify vaultAsset is in SY's accepted tokens for deposit
            address[] memory tokensIn = s.SY.getTokensIn();
            bool vaultAssetAccepted = false;
            for (uint256 i = 0; i < tokensIn.length; i++) {
                if (tokensIn[i] == address(s.vaultAsset)) {
                    vaultAssetAccepted = true;
                    break;
                }
            }
            if (!vaultAssetAccepted) revert VaultAssetNotSupportedBySY(address(s.vaultAsset));
            // Note: vaultAsset may NOT be in SY.getTokensOut() (deposit-only support).
            // Rollover handles this by using separate tokens for redeem (Step 1) and deposit (Step 2).
        }

        if (s.redeemSwapMode == LibPendlePTStorage.SwapMode.DIRECT_SY) {
            // Verify vaultAsset is in SY's redeemable tokens
            address[] memory tokensOut = s.SY.getTokensOut();
            bool vaultAssetRedeemable = false;
            for (uint256 i = 0; i < tokensOut.length; i++) {
                if (tokensOut[i] == address(s.vaultAsset)) {
                    vaultAssetRedeemable = true;
                    break;
                }
            }
            if (!vaultAssetRedeemable) revert VaultAssetNotSupportedBySY(address(s.vaultAsset));
        }

        // Pendle-specific parameters
        s.slippageTolerance = 10; // 0.1%
        s.twapDuration = 900; // 15 minutes
    }

    // ============================================
    // FALLBACK - Route to facets
    // ============================================

    fallback() external payable {
        LibDiamond.DiamondStorage storage ds = LibDiamond.diamondStorage();
        address facet = ds.selectorToFacetAndPosition[msg.sig].facetAddress;
        require(facet != address(0), "Diamond: Function does not exist");

        assembly {
            calldatacopy(0, 0, calldatasize())
            let result := delegatecall(gas(), facet, 0, calldatasize(), 0, 0)
            returndatacopy(0, 0, returndatasize())
            switch result
            case 0 { revert(0, returndatasize()) }
            default { return(0, returndatasize()) }
        }
    }

    receive() external payable { }
}
