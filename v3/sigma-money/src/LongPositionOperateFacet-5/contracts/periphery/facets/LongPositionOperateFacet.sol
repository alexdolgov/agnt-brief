// SPDX-License-Identifier: MIT

pragma solidity ^0.8.20;

import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import { EnumerableSet } from "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";
import { IERC721 } from "@openzeppelin/contracts/token/ERC721/IERC721.sol";

import { IMultiPathConverter } from "../../helpers/interfaces/IMultiPathConverter.sol";
import { IPoolManager } from "../../interfaces/IPoolManager.sol";
import { IPool } from "../../interfaces/IPool.sol";

import { WordCodec } from "../../common/codec/WordCodec.sol";
import { LibRouter } from "../libraries/LibRouter.sol";
import { MorphoFlashLoanFacetBase } from "./MorphoFlashLoanFacetBase.sol";

contract LongPositionOperateFacet is MorphoFlashLoanFacetBase {
  using EnumerableSet for EnumerableSet.AddressSet;
  using SafeERC20 for IERC20;
  using WordCodec for bytes32;

  /**********
   * Events *
   **********/

  event OpenOrAddPosition(address pool, uint256 position, address recipient, uint256 colls, uint256 debts);

  event CloseOrRemovePosition(address pool, uint256 position, address recipient, uint256 colls, uint256 debts);

  /**********
   * Errors *
   **********/

  /// @dev Thrown when the amount of tokens swapped are not enough.
  error ErrorInsufficientAmountSwapped();

  /// @dev Thrown when debt ratio out of range.
  error ErrorDebtRatioOutOfRange();

  /***********************
   * Immutable Variables *
   ***********************/

  /// @dev The address of `PoolManager` contract.
  address private immutable poolManager;

  /// @dev The address of bnbUSD token.
  address private immutable bnbUSD;

  /***************
   * Constructor *
   ***************/

  constructor(
    address _morpho,
    address _poolManager,
    address _bnbUSD,
    address _whitelist
  ) MorphoFlashLoanFacetBase(_morpho, _whitelist) {
    poolManager = _poolManager;
    bnbUSD = _bnbUSD;
  }

  /****************************
   * Public Mutated Functions *
   ****************************/

  /// @notice Open a new position or add collateral to position with any tokens.
  /// @param params The parameters to convert source token to collateral token.
  /// @param pool The address of fx position pool.
  /// @param positionId The index of position.
  /// @param data Hook data passing to `onOpenOrAddPositionFlashLoan`.
  function openOrAddPosition(
    LibRouter.ConvertInParams memory params,
    address pool,
    uint256 positionId,
    bytes calldata data
  ) external payable nonReentrant onlyTopLevelCall {
    uint256 amountIn = LibRouter.transferInAndConvert(params, IPool(pool).collateralToken());
    (
      bytes32 miscData,
      uint256 bnbUSDAmount,
      address swapTarget,
      bytes memory swapData,
      address tokenOut,
      uint256 minOut
    ) = abi.decode(data, (bytes32, uint256, address, bytes, address, uint256));

    if (positionId != 0) {
      IERC721(pool).transferFrom(msg.sender, address(this), positionId);
    }
    LibRouter.approve(IPool(pool).collateralToken(), poolManager, amountIn);
    positionId = IPoolManager(poolManager).operate(pool, positionId, int256(amountIn), int256(bnbUSDAmount));
    _checkPositionDebtRatio(pool, positionId, miscData);
    IERC721(pool).transferFrom(address(this), msg.sender, positionId);

    emit OpenOrAddPosition(pool, positionId, msg.sender, amountIn, bnbUSDAmount);

    // swap bnbUSD to other token
    _swap(bnbUSD, tokenOut, bnbUSDAmount, minOut, swapTarget, swapData);
  }

  /// @notice Close a position or remove collateral from position.
  /// @param params The parameters to convert collateral token to target token.
  /// @param positionId The index of position.
  /// @param pool The address of fx position pool.
  /// @param data Hook data passing to `onCloseOrRemovePositionFlashLoan`.
  function closeOrRemovePosition(
    LibRouter.ConvertInParams memory params,
    address pool,
    uint256 positionId,
    bytes calldata data
  ) external nonReentrant onlyTopLevelCall {
    uint256 amountIn = LibRouter.transferInAndConvert(params, bnbUSD);

    _closeOrRemove(pool, positionId, amountIn, data);
  }

  function _closeOrRemove(address pool, uint256 positionId, uint256 collAmount, bytes calldata data) internal {
    address collateralToken = IPool(pool).collateralToken();
    (
      bytes32 miscData,
      uint256 bnbUSDAmount,
      address swapTarget,
      bytes memory swapData,
      address tokenOut,
      uint256 minOut
    ) = abi.decode(data, (bytes32, uint256, address, bytes, address, uint256));

    IERC721(pool).transferFrom(msg.sender, address(this), positionId);
    (, uint256 maxBnbUSD) = IPool(pool).getPosition(positionId);
    if (bnbUSDAmount > maxBnbUSD) {
      // close entire position
      IPoolManager(poolManager).operate(pool, positionId, type(int256).min, type(int256).min);
    } else {
      IPoolManager(poolManager).operate(pool, positionId, -int256(collAmount), -int256(bnbUSDAmount));
      _checkPositionDebtRatio(pool, positionId, miscData);
    }

    _swap(collateralToken, tokenOut, IERC20(collateralToken).balanceOf(address(this)), minOut, swapTarget, swapData);
  }

  /**********************
   * Internal Functions *
   **********************/

  /// @dev Internal function to do swap.
  /// @param tokenIn The address of input token.
  /// @param tokenOut The address of output token.
  /// @param amountIn The amount of input token.
  /// @param minOut The minimum amount of output tokens should receive.
  /// @param swapTarget The address of target contract used for swap.
  /// @param swapData The calldata passed to target contract.
  /// @return amountOut The amount of output tokens received.
  function _swap(
    address tokenIn,
    address tokenOut,
    uint256 amountIn,
    uint256 minOut,
    address swapTarget,
    bytes memory swapData
  ) internal returns (uint256 amountOut) {
    if (amountIn == 0) return 0;

    LibRouter.RouterStorage storage $ = LibRouter.routerStorage();
    if (!$.approvedTargets.contains(swapTarget)) {
      revert LibRouter.ErrorTargetNotApproved();
    }
    address spender = $.spenders[swapTarget];
    if (spender == address(0)) spender = swapTarget;
    LibRouter.approve(tokenIn, spender, amountIn);

    amountOut = IERC20(tokenOut).balanceOf(address(this));
    (bool success, ) = swapTarget.call(swapData);
    // below lines will propagate inner error up
    if (!success) {
      // solhint-disable-next-line no-inline-assembly
      assembly {
        let ptr := mload(0x40)
        let size := returndatasize()
        returndatacopy(ptr, 0, size)
        revert(ptr, size)
      }
    }
    amountOut = IERC20(tokenOut).balanceOf(address(this)) - amountOut;

    if (amountOut < minOut) revert ErrorInsufficientAmountSwapped();
  }

  /// @dev Internal function to check debt ratio for the position.
  /// @param pool The address of fx position pool.
  /// @param positionId The index of the position.
  /// @param miscData The encoded data for debt ratio range.
  function _checkPositionDebtRatio(address pool, uint256 positionId, bytes32 miscData) internal view {
    uint256 debtRatio = IPool(pool).getPositionDebtRatio(positionId);
    uint256 minDebtRatio = miscData.decodeUint(0, 60);
    uint256 maxDebtRatio = miscData.decodeUint(60, 60);
    if (debtRatio < minDebtRatio || debtRatio > maxDebtRatio) {
      revert ErrorDebtRatioOutOfRange();
    }
  }
}
