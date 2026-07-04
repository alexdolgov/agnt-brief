// SPDX-License-Identifier: Apache-2.0
pragma solidity ^0.8.0;

import {IERC20} from "@openzeppelin/contracts/interfaces/IERC20.sol";
import {IERC4626} from "@openzeppelin/contracts/interfaces/IERC4626.sol";
import {IERC20Metadata} from "@openzeppelin/contracts/interfaces/IERC20Metadata.sol";
import {AccessControl} from "@openzeppelin/contracts/access/AccessControl.sol";
import {UUPSUpgradeable} from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import {PolicyPool} from "@ensuro/core/contracts/PolicyPool.sol";
import {Reserve} from "@ensuro/core/contracts/Reserve.sol";
import {ERC4626AssetManager} from "@ensuro/core/contracts/ERC4626AssetManager.sol";
import {WadRayMath} from "@ensuro/core/contracts/dependencies/WadRayMath.sol";
import {LiquidityThresholdAssetManager} from "@ensuro/core/contracts/LiquidityThresholdAssetManager.sol";
import {P2PSwapRouter} from "@ensuro/swaplibrary/contracts/P2PSwapRouter.sol";
import {MultiStrategyERC4626} from "@ensuro/vaults/contracts/MultiStrategyERC4626.sol";
import {IInvestStrategy} from "@ensuro/vaults/contracts/interfaces/IInvestStrategy.sol";

interface ChainlinkOracle {
  function latestAnswer() external view returns (int256);
}

interface MultiTargetCFL {
  function refreshAsset() external;
  function depositIntoYieldVault(uint256 amount) external;
}

/**
 * @title CurrencyMigrator
 *
 * @dev Contract to execute an in-place migration of Ensuro and peripheral contracts from Bridged USDC to Native USDC
 *
 * @custom:security-contact security@ensuro.co
 * @author Ensuro
 */
contract CurrencyMigrator is AccessControl {
  using WadRayMath for uint256;
  bytes32 public constant MIGRATOR_ROLE = keccak256("MIGRATOR_ROLE");

  IERC20Metadata public constant BRIDGED_USDC = IERC20Metadata(0x2791Bca1f2de4661ED88A30C99A7a9449Aa84174);
  IERC20Metadata public constant NATIVE_USDC = IERC20Metadata(0x3c499c542cEF5E3811e1192ce70d8cC03d5c3359);
  PolicyPool public constant POOL = PolicyPool(0xD74A28274C4B1a116aDd9857FC0E8F5e8fAC2497);
  MultiStrategyERC4626 public constant MSV = MultiStrategyERC4626(0x14F6DFEE761455247C6bf2b2b052a1F6245dD6FB); // MSV_V2_ACCESS_MANAGED
  address public constant MSV_MIGRATION_IMPL = 0x5d35426DB6dB23Bf09Ea59bCAc21f25e20C38cD7; // MSV_V2_AM_MIGRATE_TO_NATIVE_IMPL
  MultiTargetCFL public constant CFL = MultiTargetCFL(0x6CaCea88486260ef7E6fdE39Bab3236C908D10B5); // MULTI_TARGET_CFL
  ERC4626AssetManager public constant BRIDGED_AM = ERC4626AssetManager(0x33681a76efbc8e7C0A7A08B36B9D16c895f8D86f); // MSV_V2_ACCESS_MANAGED_AM
  ChainlinkOracle public constant COMP_ORACLE = ChainlinkOracle(0x2A8758b7257102461BC958279054e372C2b1bDE6);
  P2PSwapRouter public constant P2P_SWAP_PETTY_CASH = P2PSwapRouter(0x7801cfc789721138ABa7FFd957653b9AA1872952);
  address public constant COMP = 0x8505b9d2254A7Ae468c0E9dd10Ccea3A837aef5c;
  address public constant POOL_V2_9_3 = 0xd9547838ed04C8BbE6c078BF83655698ce4F3ef8;
  address public constant POOL_V2_9_3_NATIVE = 0x649B1E8c25763b1e83B73f76961662E0D4E813Cc;

  uint256 public constant IGNORE_AMOUNT = 10_000; // 0.01 USD
  uint256 public constant COMP_DISCOUNT = 0.985e18; // 0.985 in wad

  enum OldStrategies {
    aave,
    comp,
    usdm,
    aaveNative
  }

  enum NewStrategies {
    aave,
    usdm
  }

  error ErrorRebalancing(OldStrategies from, OldStrategies to, uint256 remainingAmount);

  event ERC4626AssetManagerDeployed(ERC4626AssetManager newAM);

  constructor(address admin, address migrator) {
    _grantRole(DEFAULT_ADMIN_ROLE, admin);
    _grantRole(MIGRATOR_ROLE, migrator);
  }

  function migrate(Reserve[] memory reserves, bytes calldata reinitializeCall) external onlyRole(MIGRATOR_ROLE) {
    CFL.depositIntoYieldVault(type(uint256).max);

    // Move all the funds to the MSV
    for (uint256 i; i < reserves.length; ++i) {
      _moveAllTheFundsToMSV(reserves[i]);
    }

    // Claim rewards and concentrate all the funds in AAVE Native or USDM
    _claimCompRewards();

    _rebalanceStrategyFunds(OldStrategies.comp, OldStrategies.aaveNative);
    _rebalanceStrategyFunds(OldStrategies.aave, OldStrategies.aaveNative);

    MSV.upgradeToAndCall(MSV_MIGRATION_IMPL, reinitializeCall);

    // Upgrade PolicyPool, deploy the new AM and change the AssetManager for all the reserves
    _upgradePolicyPool();

    ERC4626AssetManager newAM = new ERC4626AssetManager(NATIVE_USDC, IERC4626(address(MSV)));
    emit ERC4626AssetManagerDeployed(newAM);

    for (uint256 i; i < reserves.length; ++i) {
      reserves[i].setAssetManager(newAM, false);
      reserves[i].rebalance();  // Rebalance to send funds again to the MSV
    }

    // Change the asset for the CFL
    CFL.refreshAsset();
  }

  function _claimCompRewards() internal {
    uint256 compPriceInUSD = uint256(COMP_ORACLE.latestAnswer()) * 1e10;
    uint256 usdcPriceInCompP2PSwap = WadRayMath.WAD.wadDiv(compPriceInUSD.wadMul(COMP_DISCOUNT));
    uint256 usdcPriceInComp = WadRayMath.WAD.wadDiv(compPriceInUSD);
    P2P_SWAP_PETTY_CASH.setCurrentPrice(COMP, address(BRIDGED_USDC), usdcPriceInCompP2PSwap);
    MSV.forwardToStrategy(uint8(OldStrategies.comp), 0 /*harvestRewards*/, abi.encode(usdcPriceInComp));
  }

  function _rebalanceStrategyFunds(OldStrategies from, OldStrategies to) internal {
    IInvestStrategy strategyFrom = MSV.strategies()[uint8(from)];
    uint256 totalToRebalance = strategyFrom.totalAssets(address(MSV));
    MSV.rebalance(uint8(from), uint8(to), totalToRebalance);
    totalToRebalance = strategyFrom.totalAssets(address(MSV)); // Reuse variable
    require(totalToRebalance < IGNORE_AMOUNT, ErrorRebalancing(from, to, totalToRebalance));
  }

  function _moveAllTheFundsToMSV(Reserve reserve) internal {
    if (reserve.assetManager() != BRIDGED_AM) {
      if (BRIDGED_USDC.balanceOf(address(reserve)) <= IGNORE_AMOUNT) return; // Skip the reserve
      reserve.setAssetManager(BRIDGED_AM, false);
    }
    reserve.forwardToAssetManager(
      abi.encodeWithSelector(LiquidityThresholdAssetManager.setLiquidityThresholds.selector, 0, 0, 0)
    );
    reserve.rebalance();
    require(BRIDGED_USDC.balanceOf(address(reserve)) == 0);
  }

  function _upgradePolicyPool() internal {
    require(POOL.currency() == BRIDGED_USDC);
    POOL.upgradeTo(POOL_V2_9_3);
    POOL.upgradeTo(POOL_V2_9_3_NATIVE);
    require(POOL.currency() == NATIVE_USDC);
  }
}
