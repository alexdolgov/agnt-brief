// SPDX-License-Identifier: MIT
pragma solidity 0.7.6;
pragma experimental ABIEncoderV2;

import {SafeMath} from "@openzeppelin/contracts/math/SafeMath.sol";
import {SignedSafeMath} from "@openzeppelin/contracts/math/SignedSafeMath.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeCast} from "@openzeppelin/contracts/utils/SafeCast.sol";

import {IFlatMoneyDelayedOrderContractGuard} from "../../../interfaces/flatMoney/IFlatMoneyDelayedOrderContractGuard.sol";
import {ILeverageModule} from "../../../interfaces/flatMoney/ILeverageModule.sol";
import {IOracleModule} from "../../../interfaces/flatMoney/IOracleModule.sol";
import {IHasGuardInfo} from "../../../interfaces/IHasGuardInfo.sol";
import {IHasSupportedAsset} from "../../../interfaces/IHasSupportedAsset.sol";
import {IPoolLogic} from "../../../interfaces/IPoolLogic.sol";
import {IPoolManagerLogic} from "../../../interfaces/IPoolManagerLogic.sol";
import {FlatcoinModuleKeys} from "../../../utils/flatMoney/libraries/FlatcoinModuleKeys.sol";
import {ClosedAssetGuard} from "../ClosedAssetGuard.sol";
import {FlatMoneyOrderHelperGuard} from "./FlatMoneyOrderHelperGuard.sol";

contract FlatMoneyPerpMarketAssetGuard is FlatMoneyOrderHelperGuard, ClosedAssetGuard {
  using SafeMath for uint256;
  using SignedSafeMath for int256;
  using SafeCast for int256;

  /// @notice Returns the balance of Flat Money leverage positions
  /// @dev Returns the balance to be priced in USD
  /// @param _pool PoolLogic address
  /// @param _asset Asset address (LeverageModule address)
  /// @return balance Flat Money leverage positions balance of the pool
  function getBalance(address _pool, address _asset) public view override returns (uint256 balance) {
    require(_hasNoPendingOrder(_pool, _asset), "order in progress");

    uint256[] memory tokenIds = _useContractGuard(_pool, _asset).getOwnedTokenIds(_pool);
    int256 totalMarginAfterSettlement;
    for (uint256 i; i < tokenIds.length; ++i) {
      totalMarginAfterSettlement = totalMarginAfterSettlement.add(
        ILeverageModule(_asset).getPositionSummary(tokenIds[i]).marginAfterSettlement
      );
    }

    address oracleModule = ILeverageModule(_asset).vault().moduleAddress(FlatcoinModuleKeys._ORACLE_MODULE_KEY);
    (uint256 price, ) = IOracleModule(oracleModule).getPrice();

    balance = totalMarginAfterSettlement.toUint256().mul(price).div(1e18);
  }

  /// @notice Returns the decimals of Flat Money leverage positions
  /// @return decimals Decimals of the asset
  function getDecimals(address) external pure override returns (uint256 decimals) {
    decimals = 18;
  }

  /// @notice Creates transaction data for withdrawing from Flat Money leverage positions
  /// @dev Leverage position portion is being withdrawn using specially configured asset sitting in the pool outside
  /// @param _pool PoolLogic address
  /// @param _asset Asset address (LeverageModule address)
  /// @param _withdrawPortion Portion to withdraw
  /// @return withdrawAsset Asset address to withdraw
  /// @return withdrawBalance Amount to withdraw
  /// @return transactions Transactions to be executed
  function withdrawProcessing(
    address _pool,
    address _asset,
    uint256 _withdrawPortion,
    address
  )
    external
    view
    override
    returns (address withdrawAsset, uint256 withdrawBalance, MultiTransaction[] memory transactions)
  {
    uint256 valueToWithdraw = getBalance(_pool, _asset).mul(_withdrawPortion).div(1e18);

    if (valueToWithdraw == 0) {
      return (withdrawAsset, withdrawBalance, transactions);
    }

    (, withdrawAsset) = _useContractGuard(_pool, _asset).dHedgePoolsWhitelist(_pool);
    address poolManagerLogic = IPoolLogic(_pool).poolManagerLogic();

    // If withdrawal asset configured for current pool is not enabled, then withdraw should revert
    require(IHasSupportedAsset(poolManagerLogic).isSupportedAsset(withdrawAsset), "withdrawal asset not enabled");

    uint256 withdrawAssetBalanceInPool = IERC20(withdrawAsset).balanceOf(_pool);
    uint256 withdrawAssetValueInPool = IPoolManagerLogic(poolManagerLogic).assetValue(
      withdrawAsset,
      withdrawAssetBalanceInPool
    );

    // if withdrawal asset is enabled, but has no balance or no value (for some reason), then withdraw should revert
    require(withdrawAssetValueInPool > 0, "not enough available balance_0");

    // Revert withdraw from single remaining depositor, assuming that integration will only be available for Toros
    require(_withdrawPortion < 1e18, "invalid withdraw portion");

    // how many withdrawal asset tokens should be withdrawn for depositor's portion of leverage position
    withdrawBalance = withdrawAssetBalanceInPool.mul(valueToWithdraw).div(withdrawAssetValueInPool);
    uint256 additionalWithdrawalFactor = uint256(1e36).div(uint256(1e18).sub(_withdrawPortion));

    // the above plus compensation for decreased withdrawal asset balance
    withdrawBalance = withdrawBalance.mul(additionalWithdrawalFactor).div(1e18);

    // Otherwise there is not enough withdrawal asset balance to cover leverage position portion
    require(withdrawAssetBalanceInPool >= withdrawBalance, "not enough available balance_1");

    return (withdrawAsset, withdrawBalance, transactions);
  }

  function _useContractGuard(
    address _pool,
    address _moduleAddress
  ) internal view returns (IFlatMoneyDelayedOrderContractGuard delayedOrderGuard) {
    address delayedOrder = ILeverageModule(_moduleAddress).vault().moduleAddress(FlatcoinModuleKeys._DELAYED_ORDER_KEY);
    delayedOrderGuard = IFlatMoneyDelayedOrderContractGuard(
      IHasGuardInfo(IPoolLogic(_pool).factory()).getContractGuard(delayedOrder)
    );
  }
}
