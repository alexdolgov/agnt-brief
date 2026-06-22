// SPDX-License-Identifier: AGPL-3.0
pragma solidity ^0.8.21;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {ReentrancyGuard} from "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import {IBaseLeverageWihtoutFlashloanLinea} from "../../interfaces/Linea/IBaseLeverageWihtoutFlashloanLinea.sol";
import {ISturdyPair} from "../../interfaces/ISturdyPair.sol";
import {NileswapAdapter} from "../../swappers/Linea/NileswapAdapter.sol";

abstract contract BaseLeverageWihtoutFlashloanLinea is ReentrancyGuard {
  using SafeERC20 for IERC20;

  uint256 private constant HEALTH_FACTOR = 1e18;
  uint256 private constant PERCENTAGE_FACTOR = 100_00;

  error LV_INVALID_CONFIGURATION();
  error LV_AMOUNT_NOT_GT_0();
  error LV_SUPPLY_NOT_ALLOWED();
  error LV_SUPPLY_FAILED();
  error LV_REMOVE_ITERATION_OVER();
  error LV_SLIPPAGE_SMALL();

  /**
   * @param _principal - The amount of collateral
   * @param _slippage - The total slippage of the position. 1% = 100
   * @param _iterations - Loop count
   * @param _silo - The silo address
   * @param _borrowAssetAndCollateral - The supswap swap paths between borrowing asset and collateral asset
   */
  function enterPosition(
    uint256 _principal,
    uint256 _slippage,
    uint256 _iterations,
    address _silo,
    IBaseLeverageWihtoutFlashloanLinea.BiDirectSwapInfo calldata _borrowAssetAndCollateral
  ) external {
    address collateralAsset = ISturdyPair(_silo).collateralContract();
    if (collateralAsset == address(0)) revert LV_INVALID_CONFIGURATION();
    if (_principal == 0) revert LV_AMOUNT_NOT_GT_0();
    if (IERC20(collateralAsset).balanceOf(msg.sender) < _principal) revert LV_SUPPLY_NOT_ALLOWED();
    if (_slippage > PERCENTAGE_FACTOR) revert LV_INVALID_CONFIGURATION();

    IERC20(collateralAsset).safeTransferFrom(msg.sender, address(this), _principal);

    _leverage(
      IBaseLeverageWihtoutFlashloanLinea.LeverageParams(
        _principal,
        _slippage,
        _iterations,
        ISturdyPair(_silo).asset(),
        collateralAsset,
        _silo,
        _borrowAssetAndCollateral
      )
    );
  }

  /**
   * @param _principal - The amount of collateral, uint256 max value should withdraw all collateral
   * @param _slippage - The total slippage of the leave position. 1% = 100
   * @param _iterations - Loop count
   * @param _healthFactor - The heathFactor value to keep after leave position, 1 = 1e18
   * @param _silo - The silo address
   * @param _borrowAssetAndCollateral - The supswap swap paths between borrowing asset and collateral asset
   */
  function leavePosition(
    uint256 _principal,
    uint256 _slippage,
    uint256 _iterations,
    uint256 _healthFactor,
    address _silo,
    IBaseLeverageWihtoutFlashloanLinea.BiDirectSwapInfo calldata _borrowAssetAndCollateral
  ) external {
    address collateralAsset = ISturdyPair(_silo).collateralContract();
    if (collateralAsset == address(0)) revert LV_INVALID_CONFIGURATION();
    if (ISturdyPair(_silo).asset() == address(0)) revert LV_INVALID_CONFIGURATION();
    if (_principal == 0) revert LV_AMOUNT_NOT_GT_0();
    if (_healthFactor < 1e18) revert LV_INVALID_CONFIGURATION();
    if (_slippage > PERCENTAGE_FACTOR) revert LV_INVALID_CONFIGURATION();

    //get before state
    uint256 collateralBalance = ISturdyPair(_silo).userCollateralBalance(msg.sender);
    uint256 userDebt =  ISturdyPair(_silo).toBorrowAmount(ISturdyPair(_silo).userBorrowShares(msg.sender), true, true);

    // reduce leverage to increase healthFactor
    _reduceLeverageWithAmount(
      _silo, 
      0, 
      _borrowAssetAndCollateral
    );

    uint256 lastRemovedCollateralAmount = _reduceLeverageWithLoop(
      _silo,
      collateralAsset,
      ISturdyPair(_silo).asset(),
      _iterations,
      _healthFactor,
      _principal,
      _borrowAssetAndCollateral
    );

    // check the slippage: L = Cb - Ca - (Db - Da), Slippage = L / (Cb - Ca)
    (,, uint256 exchangeRate) = ISturdyPair(_silo).updateExchangeRate();
    ( ,,,, uint256 EXCHANGE_PRECISION,,,) = ISturdyPair(_silo).getConstants();

    collateralBalance = collateralBalance - ISturdyPair(_silo).userCollateralBalance(msg.sender) - lastRemovedCollateralAmount;
    userDebt =  userDebt - ISturdyPair(_silo).toBorrowAmount(ISturdyPair(_silo).userBorrowShares(msg.sender), true, true);
    userDebt = userDebt * exchangeRate / EXCHANGE_PRECISION;

    if (userDebt <= collateralBalance) {
      if (_slippage < ((collateralBalance - userDebt) * PERCENTAGE_FACTOR / collateralBalance)) {
        revert LV_SLIPPAGE_SMALL();
      }
    }

    // finally deliver the collateral to user
    IERC20(collateralAsset).safeTransfer(msg.sender, IERC20(collateralAsset).balanceOf(address(this)));
  }

  /**
   * @param _principal - The amount of zapping asset
   * @param _borrowAmount - The amount of borrowing asset
   * @param _zappingAsset - The address which will zap into collateral asset
   * @param _silo - The silo address
   * @param _zapAssetToCollateral - The supswap swap paths from zapping asset to collateral asset
   */
  function zapDeposit(
    uint256 _principal,
    uint256 _borrowAmount,
    address _zappingAsset,
    address _silo,
    IBaseLeverageWihtoutFlashloanLinea.UniDirectSwapInfo calldata _zapAssetToCollateral
  ) external nonReentrant {
    address collateralAsset = ISturdyPair(_silo).collateralContract();
    if (_principal == 0) revert LV_AMOUNT_NOT_GT_0();
    if (_zappingAsset == address(0)) revert LV_INVALID_CONFIGURATION();
    if (collateralAsset == address(0)) revert LV_INVALID_CONFIGURATION();
    if (IERC20(_zappingAsset).balanceOf(msg.sender) < _principal) revert LV_SUPPLY_FAILED();

    IERC20(_zappingAsset).safeTransferFrom(msg.sender, address(this), _principal);

    uint256 collateralAmount = _swapAsset(
      _zappingAsset, 
      collateralAsset, 
      _principal,
      _zapAssetToCollateral.paths,
      _zapAssetToCollateral.pathLength,
      true
    );
    
    // deposit collateral
    _supply(collateralAsset, _silo, collateralAmount, msg.sender);

    //borrow
    if (_borrowAmount != 0) {
      _borrow(_silo, _borrowAmount, msg.sender, msg.sender);
    }
  }

  /**
   * @param _principal - The amount of the zapping asset
   * @param _slippage - The total slippage of the position. 1% = 100
   * @param _iterations - Loop count
   * @param _zappingAsset - The address which will zap into collateral asset
   * @param _silo - The silo address
   * @param _zapAssetToCollateral - The supswap swap paths from zapping asset to collateral asset
   * @param _borrowAssetAndCollateral - The supswap swap paths between borrowing asset and collateral asset
   */
  function zapLeverage(
    uint256 _principal,
    uint256 _slippage,
    uint256 _iterations,
    address _zappingAsset,
    address _silo,
    IBaseLeverageWihtoutFlashloanLinea.UniDirectSwapInfo calldata _zapAssetToCollateral,
    IBaseLeverageWihtoutFlashloanLinea.BiDirectSwapInfo calldata _borrowAssetAndCollateral
  ) external nonReentrant {
    address collateralAsset = ISturdyPair(_silo).collateralContract();
    if (_principal == 0) revert LV_AMOUNT_NOT_GT_0();
    if (_zappingAsset == address(0)) revert LV_INVALID_CONFIGURATION();
    if (collateralAsset == address(0)) revert LV_INVALID_CONFIGURATION();
    if (IERC20(_zappingAsset).balanceOf(msg.sender) < _principal) revert LV_SUPPLY_FAILED();
    if (_slippage > PERCENTAGE_FACTOR) revert LV_INVALID_CONFIGURATION();

    IERC20(_zappingAsset).safeTransferFrom(msg.sender, address(this), _principal);

    uint256 collateralAmount = _swapAsset(
      _zappingAsset, 
      collateralAsset, 
      _principal,
      _zapAssetToCollateral.paths,
      _zapAssetToCollateral.pathLength,
      true
    );

    _leverage(
      IBaseLeverageWihtoutFlashloanLinea.LeverageParams(
        collateralAmount,
        _slippage,
        _iterations,
        ISturdyPair(_silo).asset(),
        collateralAsset,
        _silo,
        _borrowAssetAndCollateral
      )
    );
  }

  function _leverage(IBaseLeverageWihtoutFlashloanLinea.LeverageParams memory _params) internal {
    ISturdyPair pair = ISturdyPair(_params.silo);
    uint256 suppliedAmount = _params.principal;
    uint256 borrowAmount;

    //get before state
    uint256 collateralBalance = pair.userCollateralBalance(msg.sender);
    uint256 debtShares = pair.userBorrowShares(msg.sender);
    uint256 userDebt =  pair.toBorrowAmount(debtShares, true, true);

    _supply(_params.collateralAsset, _params.silo, suppliedAmount, msg.sender);
    
    for (uint256 i; i < _params.iterations; ++i) {
      borrowAmount = _calcBorrowableAmount(
        _params.silo,
        suppliedAmount
      );

      if (borrowAmount != 0) {
        // borrow
        _borrow(_params.silo, borrowAmount, msg.sender, address(this));
        // swap borrowing asset to collateral
        suppliedAmount = _swapAsset(
          _params.borrowAsset, 
          _params.collateralAsset, 
          borrowAmount, 
          _params.borrowAssetAndCollateral.paths,
          _params.borrowAssetAndCollateral.pathLength,
          false
        );
        // supply to LP
        _supply(_params.collateralAsset, _params.silo, suppliedAmount, msg.sender);
      }
    }

    //get increased amount after leverage
    collateralBalance = pair.userCollateralBalance(msg.sender) - collateralBalance;
    debtShares = pair.userBorrowShares(msg.sender);
    userDebt =  pair.toBorrowAmount(debtShares, true, true) - userDebt;
    
    // check the slippage: L = principal + D - C, slippage = L / D
    (,, uint256 exchangeRate) = pair.updateExchangeRate();
    ( ,,,, uint256 EXCHANGE_PRECISION,,,) = pair.getConstants();
    uint256 D = userDebt * exchangeRate / EXCHANGE_PRECISION;
    if (_params.principal + D >= collateralBalance) {
      if (_params.slippage < ((_params.principal + D - collateralBalance) * PERCENTAGE_FACTOR / D)) {
        revert LV_SLIPPAGE_SMALL();
      }
    }
  }

  function _reduceLeverageWithAmount(
    address _silo,
    uint256 _amount,
    IBaseLeverageWihtoutFlashloanLinea.BiDirectSwapInfo calldata _borrowAssetAndCollateral
  ) internal {
    // withdraw available collateral
    ISturdyPair pair = ISturdyPair(_silo);
    uint256 requireAmount = _amount;

    do {
      uint256 debtAmount =  pair.toBorrowAmount(pair.userBorrowShares(msg.sender), true, true);
      if (debtAmount == 0) break;

      uint256 availableAmount = _calcWithdrawalAmount(
        _silo,
        HEALTH_FACTOR
      );
      uint256 removeAmount = _amount != 0
        ? Math.min(availableAmount, requireAmount)
        : availableAmount;
      _remove(removeAmount, _silo, 0, msg.sender);

      // swap collateral to borrowing asset
      // in this case, some collateral asset maybe remained because of convex (ex: sUSD)
      uint256 borrowingAssetAmount = _swapAsset(
        pair.collateralContract(), 
        pair.asset(), 
        IERC20(pair.collateralContract()).balanceOf(address(this)),
        _borrowAssetAndCollateral.reversePaths,
        _borrowAssetAndCollateral.pathLength,
        false
      );

      uint256 repayAmount = Math.min(debtAmount, borrowingAssetAmount);
      // repay
      _repay(_silo, repayAmount, msg.sender);
      if (borrowingAssetAmount > repayAmount) {
        // swap borrowing asset to collateral in case of extra ramined borrowing asset after repay
        uint256 collateralAmount = _swapAsset(
          pair.asset(),
          pair.collateralContract(),
          IERC20(pair.asset()).balanceOf(address(this)),
          _borrowAssetAndCollateral.paths,
          _borrowAssetAndCollateral.pathLength,
          false
        );
        _supply(pair.collateralContract(), _silo, collateralAmount, msg.sender);
        removeAmount -= collateralAmount;
      }
      // one time reduce leverage
      if (_amount == 0) break;

      requireAmount -= removeAmount;
      // completed the required amount to reduce leverage
      if (requireAmount == 0) break;
    } while (true);
  }

  function _reduceLeverageWithLoop(
    address _silo,
    address _collateralAsset,
    address _borrowAsset,
    uint256 _iterations,
    uint256 _healthFactor,
    uint256 _principal,
    IBaseLeverageWihtoutFlashloanLinea.BiDirectSwapInfo calldata _borrowAssetAndCollateral
  ) internal returns (uint256) {
    uint256 count;
    do {
      // limit loop count
      if (count >= _iterations) revert LV_REMOVE_ITERATION_OVER();

      // withdraw collateral keeping the healthFactor
      uint256 availableAmount = _calcWithdrawalAmount(
        _silo,
        _healthFactor
      );
      if (availableAmount == 0) return 0;

      uint256 requiredAmount = _principal - IERC20(_collateralAsset).balanceOf(address(this));
      uint256 removeAmount = Math.min(availableAmount, requiredAmount);
      _remove(removeAmount, _silo, 0, msg.sender);

      if (removeAmount == requiredAmount) {
        return removeAmount + IERC20(_collateralAsset).balanceOf(address(this));
      }

      uint256 debtAmount =  ISturdyPair(_silo).toBorrowAmount(ISturdyPair(_silo).userBorrowShares(msg.sender), true, true);
      if (debtAmount != 0) {
        // swap collateral to borrowing asset
        // in this case, some collateral asset maybe remained because of convex (ex: sUSD)
        uint256 borrowingAssetAmount = _swapAsset(
          _collateralAsset, 
          _borrowAsset, 
          IERC20(_collateralAsset).balanceOf(address(this)), 
          _borrowAssetAndCollateral.reversePaths,
          _borrowAssetAndCollateral.pathLength,
          false
        );
        uint256 repayAmount = Math.min(debtAmount, borrowingAssetAmount);
        // repay
        _repay(_silo, repayAmount, msg.sender);
        if (borrowingAssetAmount > repayAmount) {
          // swap borrowing asset to collateral in case of extra ramined borrowing asset after repay
          _swapAsset(
            _borrowAsset, 
            _collateralAsset, 
            IERC20(_borrowAsset).balanceOf(address(this)),
            _borrowAssetAndCollateral.paths,
            _borrowAssetAndCollateral.pathLength,
            false
          );
        }
      } else {
        return removeAmount + IERC20(_collateralAsset).balanceOf(address(this));
      }

      count++;
    } while (true);
  }

  function _swapAsset(
    address _fromAsset,
    address _toAsset,
    uint256 _amount,
    IBaseLeverageWihtoutFlashloanLinea.MultipSwapPath[3] memory _paths,
    uint256 _pathLength,
    bool _checkOutAmount
  ) internal returns (uint256) {
    if (_pathLength == 0) revert LV_INVALID_CONFIGURATION();
    if (_paths[0].swapFrom != _fromAsset) revert LV_INVALID_CONFIGURATION();
    if (_paths[_pathLength - 1].swapTo != _toAsset) revert LV_INVALID_CONFIGURATION();

    uint256 amount = _amount;
    if (amount == 0) return 0;

    for (uint256 i; i < _pathLength; ++i) {
      if (_paths[i].swapType == IBaseLeverageWihtoutFlashloanLinea.SwapType.NONE) continue;

      amount = _processSwap(amount, _paths[i], _checkOutAmount);
    }

    return amount;
  }

  function _swapByPath(
    uint256 _fromAmount,
    IBaseLeverageWihtoutFlashloanLinea.MultipSwapPath memory _path,
    bool _checkOutAmount
  ) internal returns (uint256) {
    uint256 poolCount = _path.poolCount;
    uint256 outAmount = _checkOutAmount ? _path.outAmount : 0;
    if (poolCount == 0) revert LV_INVALID_CONFIGURATION();

    // Supswap
    NileswapAdapter.Path memory path;
    path.tokens = new address[](poolCount + 1);
    path.fees = new uint256[](poolCount);

    for (uint256 i; i < poolCount; ++i) {
      path.tokens[i] = _path.routes[i * 2];
      path.fees[i] = _path.routeParams[i][0];
    }
    path.tokens[poolCount] = _path.routes[poolCount * 2];

    return
      NileswapAdapter.swapExactTokensForTokens(
        _path.swapFrom,
        _path.swapTo,
        _fromAmount,
        path,
        outAmount
      );
  }

  function _calcBorrowableAmount(
    address _silo,
    uint256 _collateralAmount
  ) internal virtual returns (uint256);

  function _calcWithdrawalAmount(
    address _silo,
    uint256 _healthFactor
  ) internal virtual returns (uint256);

  function _supply(
    address _collateralAsset, 
    address _silo, 
    uint256 _amount, 
    address _user
  ) internal virtual;

  function _remove(
    uint256 _amount, 
    address _silo, 
    uint256 _slippage, 
    address _user
  ) internal virtual;

  function _borrow(
    address _silo, 
    uint256 _amount, 
    address _borrower,
    address _receiver
  ) internal virtual;

  function _repay(
    address _silo, 
    uint256 _amount, 
    address _borrower
  ) internal virtual;

  function _processSwap(
    uint256 _amount,
    IBaseLeverageWihtoutFlashloanLinea.MultipSwapPath memory _path,
    bool _checkOutAmount
  ) internal virtual returns (uint256);
}