// SPDX-License-Identifier: AGPL-3.0
pragma solidity ^0.8.21;

import {BaseLeverage, IBaseLeverage, IERC20, SafeERC20} from "./BaseLeverage.sol";
import {ISturdyPair} from "../interfaces/ISturdyPair.sol";
import {IYearnVault} from "../interfaces/Yearn/IYearnVault.sol";

contract CrvUSDYv3CRVCrvUSDLeverage is BaseLeverage {
  using SafeERC20 for IERC20;

  // 3CRV means USDC/USDT/DAI/FRAX...
  address public immutable YEARN_CRVUSD_3CRV_VAULT;
  address public immutable CURVE_CRVUSD_3CRV_POOL;

  error LV_REPAY_FAILED();
  error LV_REQUIRE_MIN_AMOUNT();

  constructor(
    address _curvePoolAddress,
    address _yearnVaultAddress
  ) {
    YEARN_CRVUSD_3CRV_VAULT = _yearnVaultAddress;
    CURVE_CRVUSD_3CRV_POOL = _curvePoolAddress;
  }

  function _withdrawWithFlashloan(
    address _borrowAsset,
    uint256 _borrowedAmount,
    IBaseLeverage.FlashLoanParams memory _params
  ) internal override {
    // repay
    _repay(_borrowAsset, _params.silo, _borrowedAmount, _params.user);

    // withdraw collateral
    ISturdyPair pair = ISturdyPair(_params.silo);
    if (_params.collateralAsset != pair.collateralContract()) revert LV_INVALID_CONFIGURATION();

    ( uint256 LTV_PRECISION,,,, uint256 EXCHANGE_PRECISION,,,) = ISturdyPair(_params.silo).getConstants();
    ISturdyPair(_params.silo).addInterest(false);

    (,, uint256 exchangeRate) = ISturdyPair(_params.silo).updateExchangeRate();
    uint256 borrowShares = pair.userBorrowShares(_params.user);
    uint256 borrowAmount =  ISturdyPair(_params.silo).toBorrowAmount(borrowShares, true, false);
    uint256 collateralAmount = pair.userCollateralBalance(_params.user);
    uint256 withdrawalAmount = collateralAmount - (borrowAmount * exchangeRate * LTV_PRECISION / EXCHANGE_PRECISION / pair.maxLTV());
    if (withdrawalAmount < _params.minCollateralAmount) revert LV_SUPPLY_NOT_ALLOWED();

    _remove(withdrawalAmount, _params.silo, 0, _params.user);

    // collateral -> borrow asset
    _swapFrom(_borrowAsset, _params.collateralAsset, _params.swapInfo.reversePaths, _params.swapInfo.pathLength);
  }

  function _supply(
    address _collateralAsset, 
    address _silo, 
    uint256 _amount, 
    address _user
  ) internal override {
    IERC20(_collateralAsset).safeApprove(_silo, 0);
    IERC20(_collateralAsset).safeApprove(_silo, _amount);
    ISturdyPair(_silo).addCollateral(_amount, _user);
  }

  function _remove(
    uint256 _amount, 
    address _silo, 
    uint256 _slippage, 
    address _user
  ) internal override {
    ISturdyPair(_silo).removeCollateralFrom(_amount, address(this), _user);
  }

  function _borrow(
    address _borrowAsset, 
    address _silo, 
    uint256 _amount, 
    address _borrower 
  ) internal override {
    ISturdyPair(_silo).borrowAssetOnBehalfOf(_amount, _borrower);
  }

  function _repay(
    address _borrowAsset, 
    address _silo, 
    uint256 _amount, 
    address _borrower
  ) internal override {
    ISturdyPair(_silo).addInterest(false);

    uint256 borrowShares =  ISturdyPair(_silo).toBorrowShares(_amount, false, false);

    IERC20(_borrowAsset).safeApprove(_silo, 0);
    IERC20(_borrowAsset).safeApprove(_silo, _amount);

    uint256 paybackAmount = ISturdyPair(_silo).repayAsset(borrowShares, _borrower);
    if (paybackAmount == 0) revert LV_REPAY_FAILED();
  }

  function _processSwap(
    uint256 _amount,
    IBaseLeverage.MultipSwapPath memory _path,
    bool _isFrom,
    bool _checkOutAmount
  ) internal override returns (uint256) {
    if (_path.swapType > IBaseLeverage.SwapType.NO_SWAP) {
      return _swapByPath(_amount, _path, _checkOutAmount);
    }

    if (_isFrom) {
      // YEARN_CRVUSD_3CRV_VAULT -> CURVE_CRVUSD_3CRV_POOL
      if (!_checkOutAmount) revert LV_INVALID_CONFIGURATION();

      // Withdraw from Yearn Vault and receive Curve LP token
      uint256 outAmount = IYearnVault(YEARN_CRVUSD_3CRV_VAULT).withdraw(_amount, address(this), 1);
      if (outAmount < _path.outAmount) revert LV_REQUIRE_MIN_AMOUNT();

      return outAmount;
    }

    // CURVE_CRVUSD_3CRV_POOL -> YEARN_CRVUSD_3CRV_VAULT
    // Deposit Curve LP token to Yearn Vault and receive LP token
    IERC20(CURVE_CRVUSD_3CRV_POOL).safeApprove(YEARN_CRVUSD_3CRV_VAULT, 0);
    IERC20(CURVE_CRVUSD_3CRV_POOL).safeApprove(YEARN_CRVUSD_3CRV_VAULT, _amount);
    uint256 outAmount = IYearnVault(YEARN_CRVUSD_3CRV_VAULT).deposit(_amount, address(this));

    if (_checkOutAmount && outAmount < _path.outAmount) {
      revert LV_REQUIRE_MIN_AMOUNT();
    }
  
    return outAmount;
  }
}