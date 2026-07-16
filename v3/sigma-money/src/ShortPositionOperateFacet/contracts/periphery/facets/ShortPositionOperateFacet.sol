// SPDX-License-Identifier: MIT

pragma solidity ^0.8.20;

import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import { EnumerableSet } from "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";
import { IERC721 } from "@openzeppelin/contracts/token/ERC721/IERC721.sol";

import { IMultiPathConverter } from "../../helpers/interfaces/IMultiPathConverter.sol";
import { IShortPoolManager } from "../../interfaces/IShortPoolManager.sol";
import { IShortPool } from "../../interfaces/IShortPool.sol";

import { WordCodec } from "../../common/codec/WordCodec.sol";
import { LibRouter } from "../libraries/LibRouter.sol";
import { MorphoFlashLoanFacetBase } from "./MorphoFlashLoanFacetBase.sol";

contract ShortPositionOperateFacet is MorphoFlashLoanFacetBase {
  using EnumerableSet for EnumerableSet.AddressSet;
  using SafeERC20 for IERC20;
  using WordCodec for bytes32;

  /**********
   * Events *
   **********/

  event OpenOrAddShortPosition(address pool, uint256 position, address recipient, uint256 colls, uint256 debts);

  event CloseOrRemoveShortPosition(address pool, uint256 position, address recipient, uint256 colls, uint256 debts);

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

  /// @dev The address of `ShortPoolManager` contract.
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

  /// @notice Open a new short position or add fxUSD collateral to an existing position with any tokens.
  /// @param params The parameters to convert source token to bnbUSD (fxUSD) collateral.
  /// @param paramsOut The parameters to convert borrowed debt token to target token.
  /// @param pool The address of short position pool.
  /// @param positionId The index of position. Use 0 to open a new position.
  /// @param data Encoded (bytes32 miscData, uint256 debtAmount). miscData contains min/max debt ratio range.
  function openOrAddShortPosition(
    LibRouter.ConvertInParams memory params,
    LibRouter.ConvertOutParams memory paramsOut,
    address pool,
    uint256 positionId,
    bytes calldata data
  ) external payable nonReentrant onlyTopLevelCall {
    // convert user's source token to bnbUSD (fxUSD) as collateral
    uint256 fxUSDAmount = LibRouter.transferInAndConvert(params, bnbUSD);
    (bytes32 miscData, uint256 debtAmount) = abi.decode(data, (bytes32, uint256));

    if (positionId != 0) {
      IERC721(pool).transferFrom(msg.sender, address(this), positionId);
    }
    LibRouter.approve(bnbUSD, poolManager, fxUSDAmount);
    positionId = IShortPoolManager(poolManager).operate(pool, positionId, int256(fxUSDAmount), int256(debtAmount));
    _checkPositionDebtRatio(pool, positionId, miscData);
    IERC721(pool).transferFrom(address(this), msg.sender, positionId);

    emit OpenOrAddShortPosition(pool, positionId, msg.sender, fxUSDAmount, debtAmount);

    // convert borrowed debt token to target token
    address debtToken = IShortPool(pool).debtToken();
    LibRouter.convertAndTransferOut(paramsOut, debtToken, debtAmount, msg.sender);
  }

  /// @notice Close a short position or remove fxUSD collateral from an existing position.
  /// @param params The parameters to convert source token to debt token for repayment.
  /// @param paramsOut The parameters to convert withdrawn bnbUSD (fxUSD) to target token.
  /// @param pool The address of short position pool.
  /// @param positionId The index of position.
  /// @param data Encoded (bytes32 miscData, uint256 fxUSDWithdrawAmount). miscData contains min/max debt ratio range.
  function closeOrRemoveShortPosition(
    LibRouter.ConvertInParams memory params,
    LibRouter.ConvertOutParams memory paramsOut,
    address pool,
    uint256 positionId,
    bytes calldata data
  ) external nonReentrant onlyTopLevelCall {
    // convert user's source token to debt token for repayment
    address debtToken = IShortPool(pool).debtToken();
    uint256 debtAmount = LibRouter.transferInAndConvert(params, debtToken);

    (bytes32 miscData, uint256 fxUSDWithdrawAmount) = abi.decode(data, (bytes32, uint256));

    IERC721(pool).transferFrom(msg.sender, address(this), positionId);
    LibRouter.approve(debtToken, poolManager, debtAmount);
    (uint256 maxFxUSD, ) = IShortPool(pool).getPosition(positionId);
    if (fxUSDWithdrawAmount >= maxFxUSD) {
      // close entire position
      IShortPoolManager(poolManager).operate(pool, positionId, type(int256).min, type(int256).min);
    } else {
      IShortPoolManager(poolManager).operate(pool, positionId, -int256(fxUSDWithdrawAmount), -int256(debtAmount));
      _checkPositionDebtRatio(pool, positionId, miscData);
    }
    IERC721(pool).transferFrom(address(this), msg.sender, positionId);

    emit CloseOrRemoveShortPosition(pool, positionId, msg.sender, fxUSDWithdrawAmount, debtAmount);

    // convert withdrawn bnbUSD (fxUSD) to target token
    LibRouter.convertAndTransferOut(paramsOut, bnbUSD, IERC20(bnbUSD).balanceOf(address(this)), msg.sender);

    // transfer extra debt token to revenue pool
    LibRouter.refundERC20(debtToken, LibRouter.routerStorage().revenuePool);
  }

  /**********************
   * Internal Functions *
   **********************/

  /// @dev Internal function to check debt ratio for the position.
  /// @param pool The address of short position pool.
  /// @param positionId The index of the position.
  /// @param miscData The encoded data for debt ratio range.
  function _checkPositionDebtRatio(address pool, uint256 positionId, bytes32 miscData) internal view {
    uint256 debtRatio = IShortPool(pool).getPositionDebtRatio(positionId);
    uint256 minDebtRatio = miscData.decodeUint(0, 60);
    uint256 maxDebtRatio = miscData.decodeUint(60, 60);
    if (debtRatio < minDebtRatio || debtRatio > maxDebtRatio) {
      revert ErrorDebtRatioOutOfRange();
    }
  }
}
