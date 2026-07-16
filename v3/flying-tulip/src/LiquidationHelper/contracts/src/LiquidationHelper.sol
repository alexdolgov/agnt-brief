// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.30;

import {IAccountValuesLens, AccountSnapshot} from "./interfaces/IAccountValuesLens.sol";
import {ILendingLens} from "./interfaces/ILendingLens.sol";
import {IRfqEngine} from "./interfaces/IRfqEngine.sol";
import {IConfigRegistry} from "./interfaces/IConfigRegistry.sol";
import {IOracleUSD} from "./interfaces/IOracleUSD.sol";

/// @title LiquidationHelper
/// @notice Batch query contract for health checks and portfolio reads.
contract LiquidationHelper {
    address public immutable pm;
    address public immutable accountValuesRouter;
    address public immutable configRegistry;
    address public immutable lendingLens;
    address public immutable rfq;

    struct LendConfig {
        uint256 liqBonusBps;
        uint256 marginHfTargetBps;
        uint256 marginHfSafeBps;
        uint256 minRepayUSDWad;
        uint256 minResidualDebtUSDWad;
        uint256 minResidualCollateralUSDWad;
        uint256 protocolLiqSplitBps;
    }

    struct AssetData {
        address asset;
        uint256 priceUSDWad;
        uint16 mmBps;
        bool enabled;
        bool borrowable;
        bool collateral;
    }

    struct UserHealth {
        address account;
        uint256 equityUSDWad;
        uint256 maintUSDWad;
        uint256 collUSDWad;
        uint256 debtUSDWad;
        int256 enginePnLUSDWad;
        bool isPrivileged;
    }

    struct Portfolio {
        address account;
        address[] collAssets;
        uint256[] collAvail;
        address[] debtAssets;
        uint256[] debtUnits;
        uint256 equityUSDWad;
        uint256 maintUSDWad;
    }

    constructor(
        address _pm,
        address _accountValuesRouter,
        address _configRegistry,
        address _lendingLens,
        address _rfq
    ) {
        pm = _pm;
        accountValuesRouter = _accountValuesRouter;
        configRegistry = _configRegistry;
        lendingLens = _lendingLens;
        rfq = _rfq;
    }

    /// @notice Returns liquidation config parameters.
    function getLendConfig() external view returns (LendConfig memory c) {
        c.liqBonusBps = IRfqEngine(rfq).liqBonusBps();
        c.marginHfTargetBps = IConfigRegistry(configRegistry).marginHfTargetBps();
        c.marginHfSafeBps = IConfigRegistry(configRegistry).marginHfSafeBps();
        c.minRepayUSDWad = IRfqEngine(rfq).minRepayUSDWad();
        c.minResidualDebtUSDWad = IRfqEngine(rfq).minResidualDebtUSDWad();
        c.minResidualCollateralUSDWad = IRfqEngine(rfq).minResidualCollateralUSDWad();
        c.protocolLiqSplitBps = IRfqEngine(rfq).protocolLiqSplitBps();
    }

    /// @notice Returns per-asset data (price, mmBps) for the given assets.
    function getAssetData(address[] calldata assets)
        external
        view
        returns (AssetData[] memory assetData)
    {
        assetData = new AssetData[](assets.length);
        address oracle = IConfigRegistry(configRegistry).oracleRouter();

        for (uint256 i; i < assets.length; ++i) {
            address asset = assets[i];
            uint256 px;
            try IOracleUSD(oracle).priceUSD(asset) returns (uint256 p) {
                px = p;
            } catch {
                // Disabled or misconfigured feed — leave priceUSDWad = 0
                // so the caller can skip this asset gracefully.
            }
            IConfigRegistry.AssetCfg memory cfg = IConfigRegistry(configRegistry).getAssetCfg(asset);
            assetData[i] = AssetData({
                asset: asset,
                priceUSDWad: px,
                mmBps: cfg.mmBps,
                enabled: cfg.enabled,
                borrowable: cfg.borrowable,
                collateral: cfg.collateral
            });
        }
    }

    /// @notice Returns raw AccountSnapshot data for all provided accounts.
    function batchHealth(address[] calldata accounts, bool isPermissionedLiquidator)
        external
        view
        returns (UserHealth[] memory results)
    {
        results = new UserHealth[](accounts.length);

        for (uint256 i; i < accounts.length; ++i) {
            AccountSnapshot memory s =
                IAccountValuesLens(accountValuesRouter).accountValues(pm, accounts[i]);

            address account = accounts[i];
            bool isPrivileged = IRfqEngine(rfq).privilegedAccounts(account);

            // Skip privileged accounts if not a permissioned liquidator
            if (isPrivileged && !isPermissionedLiquidator) continue;

            results[i] = UserHealth({
                account: account,
                equityUSDWad: s.equityUSDWad,
                maintUSDWad: s.maintUSDWad,
                collUSDWad: s.collUSDWad,
                debtUSDWad: s.debtUSDWad,
                enginePnLUSDWad: s.enginePnLUSDWad,
                isPrivileged: isPrivileged
            });
        }
    }

    /// @notice Returns portfolio data for all provided accounts.
    function batchPortfolios(address[] calldata accounts)
        external
        view
        returns (Portfolio[] memory results)
    {
        results = new Portfolio[](accounts.length);

        for (uint256 i; i < accounts.length; ++i) {
            (
                address[] memory collAssets,
                uint256[] memory collAvail,,
                address[] memory debtAssets,
                uint256[] memory debtUnits,
                uint256 equityUSDWad,
                uint256 maintUSDWad,
            ) = ILendingLens(lendingLens).userPortfolio(accounts[i]);

            results[i] = Portfolio({
                account: accounts[i],
                collAssets: collAssets,
                collAvail: collAvail,
                debtAssets: debtAssets,
                debtUnits: debtUnits,
                equityUSDWad: equityUSDWad,
                maintUSDWad: maintUSDWad
            });
        }
    }
}
