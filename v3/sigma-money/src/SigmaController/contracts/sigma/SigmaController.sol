// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.26;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts-upgradeable/access/Ownable2StepUpgradeable.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/token/ERC721/IERC721.sol";
import "@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol";
import "@openzeppelin/contracts/utils/Address.sol";

import "../interfaces/sigma/ISigmaController.sol";
import "../interfaces/IPoolManager.sol";
import "../interfaces/IPool.sol";
import "../interfaces/sigma/IListaStakeManager.sol";
import "../interfaces/sigma/IWETH.sol";
import "../scy/ISuperComposableYield.sol";
import "../core/pool/PoolErrors.sol";
import "../price-oracle/interfaces/IPriceOracle.sol";

// Uncomment this line to use console.log
import "hardhat/console.sol";

contract SigmaController is ISigmaController, Ownable2StepUpgradeable, ReentrancyGuardUpgradeable, PoolErrors {
  using SafeERC20 for IERC20;

  struct UserRedeemRequest {
    uint256 uuid;
    bool isClaimable;
    uint256 startTime;
    uint256 bnbAmount;
    address tokenOut;
    uint256 tokenOutAmount;
  }

  /// @dev The precision used for various calculation.
  uint256 internal constant PRECISION = 1e18;

  /// @dev Address of the SLIS BNB token
  IERC20 public immutable slisBNB;
  /// @dev Address of the wrapped BNB token (wBNB)
  IWETH public immutable wBNB;
  /// @dev Address of the SigmaClisBNBSY token
  ISuperComposableYield public immutable sy;
  /// @dev Address of the bnbUSD token
  IERC20 public immutable bnbUSD;
  /// @dev Address of ListaStakeManager
  IListaStakeManager public immutable listaStakeManager;
  /// @dev Address of the FX Pool Manager
  IPoolManager public immutable fxPoolManager;

  mapping(address => mapping(uint256 => PositionEntryPrice)) public positionIdToEntryPrice; // pool => (positionId => entryPrice)
  mapping(address => bool) public supportedSwapTargets;

  /// @notice Emitted when a deposit is made
  /// @param pool Pool address used
  /// @param positionId Previous position ID (0 for new)
  /// @param receiver Address of depositor
  /// @param newColl Collateral change in position
  /// @param newRawColl Raw Collateral change in position
  /// @param newDebt Debt change in position
  /// @param isOpen True if is opening a new position
  event Deposit(
    address indexed pool,
    uint256 indexed positionId,
    address indexed receiver,
    int256 newColl,
    int256 newRawColl,
    int256 newDebt,
    bool isOpen
  );

  /// @notice Emitted when a redemption is made
  /// @param pool Pool address used
  /// @param positionId Position ID being redeemed
  /// @param receiver Address of redeemer
  /// @param newColl Collateral change in position
  /// @param newRawColl Raw Collateral change in position
  /// @param newDebt Debt change in position
  /// @param isClose True if position is closed
  /// @param actualCollAmount Actual amount of token transferred out
  event RedeemInstant(
    address indexed pool,
    uint256 indexed positionId,
    address indexed receiver,
    int256 newColl,
    int256 newRawColl,
    int256 newDebt,
    bool isClose,
    uint256 actualCollAmount
  );

  /// @notice Initializes contract dependencies
  /// @param _slisBNB slisBNB token contract address
  /// @param _wBNB wBNB token contract address
  /// @param _sy SigmaClisBNBSY contract address
  /// @param _bnbUSD bnbUSD token contract address
  /// @param _listaStakeManager ListaStakeManager contract address
  /// @param _fxPoolManager FX Pool manager contract address
  constructor(
    address _slisBNB,
    address _wBNB,
    address _sy,
    address _bnbUSD,
    address _listaStakeManager,
    address _fxPoolManager
  ) {
    // Set the addresses for the contracts
    // These should be set to the actual deployed addresses of the respective contracts
    slisBNB = IERC20(_slisBNB);
    wBNB = IWETH(_wBNB);
    sy = ISuperComposableYield(_sy);
    bnbUSD = IERC20(_bnbUSD);
    listaStakeManager = IListaStakeManager(_listaStakeManager);
    fxPoolManager = IPoolManager(_fxPoolManager);

    _disableInitializers();
  }

  function initialize() external initializer {
    __Ownable_init(msg.sender);
    __ReentrancyGuard_init();
  }

  /// @notice Deposit collateral and borrow bnbUSD in Pool
  /// @param opPosition position info
  /// @param opColl collateral info
  /// @param opDebt debt info
  /// @param opParam operation parameters
  /// @param data swap data for converting to collateral token
  function deposit(
    OpPosition memory opPosition,
    OpColl memory opColl,
    OpDebt memory opDebt,
    OpParameter memory opParam,
    bytes memory data
  ) external payable nonReentrant returns (uint256 positionId, int256 newColl, int256 newDebt) {
    require(opPosition.pool != address(0), "Pool address cannot be zero");
    require(opParam.receiver == msg.sender, "Receiver must be the sender");
    require(!(opColl.collAmount == 0 && opDebt.debtAmount == 0), "No supply and no borrow");

    _onlySupportedCollToken(opColl.collToken);
    _onlySupportedDebtToken(opPosition.pool, opDebt.debtToken);
    bool isOpen = _isEmptyPosition(opPosition.pool, opPosition.positionId);

    uint256 debtBalance = IERC20(opDebt.debtToken).balanceOf(address(this));

    if (opPosition.positionId != 0) {
      // transfer xBNB to this contract
      IERC721(opPosition.pool).transferFrom(msg.sender, address(this), opPosition.positionId);
    }

    int256 newRawColl;
    (newColl, newRawColl, newDebt) = _transferInCollAndConvert(opColl, opDebt, data);

    // deposit sy to fx pool
    IERC20(sy).forceApprove(address(fxPoolManager), uint256(newColl));
    positionId = fxPoolManager.operate(opPosition.pool, opPosition.positionId, newColl, newDebt);

    uint256 debtDelta = IERC20(opDebt.debtToken).balanceOf(address(this)) - debtBalance;

    _updateEntryPosition(opPosition.pool, positionId, newRawColl);

    if (opPosition.positionId != 0) {
      require(positionId == opPosition.positionId, "PositionId mismatch");
    }

    // transfer out debt
    if (debtDelta > 0) {
      IERC20(opDebt.debtToken).safeTransfer(opParam.receiver, debtDelta);
    }

    // transfer xBNB to the user
    IERC721(opPosition.pool).transferFrom(address(this), opParam.receiver, positionId);

    emit Deposit(opPosition.pool, positionId, opParam.receiver, newColl, newRawColl, newDebt, isOpen);
  }

  /// @notice Burn bnbUSD and redeem collateral from Pool
  /// @param opPosition position info
  /// @param opColl collateral info
  /// @param opDebt debt info
  /// @param opParam operation parameters
  function redeemInstant(
    OpPosition memory opPosition,
    OpColl memory opColl,
    OpDebt memory opDebt,
    OpParameter memory opParam
  ) external payable nonReentrant returns (int256 newColl, int256 newDebt, uint256 tokenOut) {
    require(opPosition.pool != address(0), "Pool address cannot be zero");
    require(opPosition.positionId != 0, "PositionId cannot be zero");
    require(opParam.receiver == msg.sender, "Receiver must be the sender");
    require(!(opDebt.debtAmount == 0 && opColl.collAmount == 0), "No repay and no redeem");

    require(opColl.collToken == address(slisBNB), "Only support instant redeem with slisBNB");
    _onlySupportedDebtToken(opPosition.pool, opDebt.debtToken);

    int256 newRawColl;
    uint256 amountOut;
    (newColl, newRawColl, newDebt, amountOut) = _redeem(opPosition, opColl, opDebt, opParam);

    // transfer out collaterals
    tokenOut = _transferOutColl(opParam.receiver, amountOut, opColl);

    bool isClose = _isEmptyPosition(opPosition.pool, opPosition.positionId);
    emit RedeemInstant(
      opPosition.pool,
      opPosition.positionId,
      opParam.receiver,
      newColl,
      newRawColl,
      newDebt,
      isClose,
      tokenOut
    );
  }

  function setupSwapTarget(address swapTarget, bool approved) external onlyOwner {
    supportedSwapTargets[swapTarget] = approved;
  }

  function _transferInCollAndConvert(
    OpColl memory opColl,
    OpDebt memory opDebt,
    bytes memory data
  ) internal returns (int256 newColl, int256 newRawColl, int256 newDebt) {
    newDebt = int256(opDebt.debtAmount);
    if (opColl.collAmount == 0) {
      return (newColl, newRawColl, newDebt);
    }

    if (opColl.collToken != address(0)) {
      IERC20(opColl.collToken).safeTransferFrom(msg.sender, address(this), opColl.collAmount);
    }

    uint256 amountOut = opColl.collAmount;
    if (opColl.collToken != address(slisBNB)) {
      (uint256 tokenInAmount, uint256 minOut, address swapTarget, bytes memory swapData) = abi.decode(
        data,
        (uint256, uint256, address, bytes)
      );
      require(tokenInAmount == opColl.collAmount, "Token in amount mismatch");
      amountOut = _swap(opColl.collToken, address(slisBNB), opColl.collAmount, minOut, swapTarget, swapData);
    }

    slisBNB.forceApprove(address(sy), amountOut);
    amountOut = sy.deposit(address(this), address(slisBNB), amountOut, amountOut);

    newColl = int256(amountOut);
    newRawColl = _scaleUp(newColl);
  }

  function _transferInDebt(
    OpPosition memory opPosition,
    OpColl memory opColl,
    OpDebt memory opDebt
  ) internal returns (int256 newColl, int256 newRawColl, int256 newDebt) {
    (uint256 rawColls, uint256 rawDebts) = IPool(opPosition.pool).getPosition(opPosition.positionId);

    if (opDebt.debtAmount == type(uint256).max) {
      // repay all debts
      newDebt = -int256(rawDebts);
    } else {
      newDebt = -int256(opDebt.debtAmount);
    }

    if (opColl.collAmount == type(uint256).max || newDebt == -int256(rawDebts)) {
      // withdraw all collaterals
      newColl = type(int256).min;
      newRawColl = -int256(rawColls);
    } else {
      if (opColl.collToken == address(slisBNB)) {
        newColl = -int256(opColl.collAmount);
        newRawColl = _scaleUp(newColl);
      } else {
        newColl = _scaleDown(-int256(opColl.collAmount));
        newRawColl = -int256(opColl.collAmount);
      }
    }

    if (newDebt < 0) {
      // transfer in debt
      IERC20(opDebt.debtToken).safeTransferFrom(msg.sender, address(this), uint256(-newDebt));
      IERC20(opDebt.debtToken).forceApprove(address(fxPoolManager), uint256(-newDebt));
    }
  }

  /// sy -> slisBNB
  function _transferOutColl(
    address receiver,
    uint256 slisBNBAmount,
    OpColl memory opColl
  ) internal returns (uint256 tokenOutAmount) {
    if (slisBNBAmount == 0) {
      return 0;
    }

    if (opColl.collToken == address(slisBNB)) {
      // if collToken is slisBNB, we can directly transfer it out
      tokenOutAmount = slisBNBAmount;
      slisBNB.safeTransfer(receiver, tokenOutAmount);
      return tokenOutAmount;
    }
  }

  function _onlySupportedCollToken(address collToken) internal view {
    require(
      collToken == address(slisBNB) || collToken == address(wBNB) || collToken == address(0),
      "Unsupported collateral token"
    );
  }

  function _onlySupportedDebtToken(address pool, address debtToken) internal view {
    require(debtToken == IPool(pool).fxUSD(), "Unsupported debt token");
  }

  function _onlySupportedSwapTarget(address swapTarget) internal view {
    require(supportedSwapTargets[swapTarget], "Unsupported swap target");
  }

  function _redeem(
    OpPosition memory opPosition,
    OpColl memory opColl,
    OpDebt memory opDebt,
    OpParameter memory opParam
  ) internal returns (int256 newColl, int256 newRawColl, int256 newDebt, uint256 amountOut) {
    (newColl, newRawColl, newDebt) = _transferInDebt(opPosition, opColl, opDebt);

    // transfer xBNB to this contract
    IERC721(opPosition.pool).transferFrom(msg.sender, address(this), opPosition.positionId);

    // withdraw sy from fx pool
    uint256 syBalance = sy.balanceOf(address(this));
    uint256 actualPositionId = fxPoolManager.operate(opPosition.pool, opPosition.positionId, newColl, newDebt);
    require(actualPositionId == opPosition.positionId, "PositionId mismatch");
    amountOut = sy.balanceOf(address(this)) - syBalance;
    if (amountOut > 0) {
      // sy => slisBNB
      amountOut = sy.redeem(address(this), amountOut, address(slisBNB), amountOut, false);
    }

    _updateEntryPosition(opPosition.pool, opPosition.positionId, newRawColl);

    // transfer xBNB to the user
    IERC721(opPosition.pool).transferFrom(address(this), opParam.receiver, opPosition.positionId);
  }

  function _isEmptyPosition(address pool, uint256 positionId) internal view returns (bool) {
    (uint256 rawColls, uint256 rawDebts) = IPool(pool).getPosition(positionId);
    return rawColls == 0 && rawDebts == 0;
  }

  function _updateEntryPosition(address pool, uint256 positionId, int256 newRawColl) internal {
    PositionEntryPrice memory positionEntryPrice = positionIdToEntryPrice[pool][positionId];

    if (newRawColl > 0) {
      uint256 exchangePrice = IPriceOracle(IPool(pool).priceOracle()).getExchangePrice();
      uint256 positionValue = (positionEntryPrice.positionColl * positionEntryPrice.entryPrice) / PRECISION;
      uint256 newCollValue = (uint256(newRawColl) * exchangePrice) / PRECISION;
      uint256 newPrice = ((positionValue + newCollValue) * PRECISION) /
        (positionEntryPrice.positionColl + uint256(newRawColl));
      positionEntryPrice.entryPrice = newPrice;
    }

    (uint256 rawColls, uint256 rawDebts) = IPool(pool).getPosition(positionId);
    if (rawColls == 0) {
      positionEntryPrice.entryPrice = 0;
    }

    positionEntryPrice.positionColl = rawColls;
    positionEntryPrice.positionDebt = rawDebts;

    positionIdToEntryPrice[pool][positionId] = positionEntryPrice;
  }

  function _scaleUp(int256 value) internal view returns (int256) {
    return (value * int256(listaStakeManager.convertSnBnbToBnb(1 ether))) / int256(PRECISION);
  }

  function _scaleDown(int256 value) internal view returns (int256) {
    return (value * int256(PRECISION)) / int256(listaStakeManager.convertSnBnbToBnb(1 ether));
  }

  /// @dev Internal function to do swap.
  /// @param tokenIn The address of input token.
  /// @param tokenOut The address of output token.
  /// @param amountIn The amount of input token.
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
    _onlySupportedSwapTarget(swapTarget);

    if (amountIn == 0) return 0;

    amountOut = _balanceOf(tokenOut, address(this));
    if (tokenIn != address(0)) {
      IERC20(tokenIn).forceApprove(swapTarget, amountIn);
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
    } else {
      (bool success, ) = swapTarget.call{ value: amountIn }(swapData);
      if (!success) {
        // solhint-disable-next-line no-inline-assembly
        assembly {
          let ptr := mload(0x40)
          let size := returndatasize()
          returndatacopy(ptr, 0, size)
          revert(ptr, size)
        }
      }
    }
    amountOut = _balanceOf(tokenOut, address(this)) - amountOut;

    require(amountOut >= minOut, "Insufficient amount swapped");
  }

  function _balanceOf(address token, address owner) internal view returns (uint256) {
    if (token == address(0)) {
      return address(owner).balance;
    } else {
      return IERC20(token).balanceOf(owner);
    }
  }

  receive() external payable {}
}
