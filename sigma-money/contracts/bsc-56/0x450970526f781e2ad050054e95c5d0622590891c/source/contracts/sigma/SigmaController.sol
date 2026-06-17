// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.26;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts-upgradeable/access/Ownable2StepUpgradeable.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/token/ERC721/IERC721.sol";
import "@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol";
import "@openzeppelin/contracts/utils/Address.sol";

import "../interfaces/Pancake/IV3SwapRouter.sol";
import "../interfaces/Pancake/IPancakeV3Pool.sol";
import "../interfaces/sigma/ISlisBNBProvider.sol";
import "../interfaces/sigma/ISigmaController.sol";
import "../interfaces/IPoolManager.sol";
import "../interfaces/IPool.sol";
import "../interfaces/ISigmaClisBNBSYPool.sol";
import "../interfaces/sigma/IListaStakeManager.sol";
import "../interfaces/sigma/IWETH.sol";
import "../libraries/PancakeLib.sol";
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

  /// @dev The value of minimum collateral.
  int256 internal constant MIN_COLLATERAL = 1e9;
  /// @dev The value of minimum debts.
  int256 internal constant MIN_DEBT = 1e9;
  /// @dev The precision used for various calculation.
  uint256 internal constant PRECISION = 1e18;
  /// @dev The precision used for fee ratio calculation.
  uint256 internal constant FEE_PRECISION = 1e9;
  /// @dev The precision used for slippage tolerance calculation.
  uint256 internal constant SLIPPAGE_TOLERANCE_PRECISION = 1e9;
  uint256 internal constant MAX_SLIPPAGE = 1e8; // 10%
  uint256 internal constant MIN_SLIPPAGE = 1e5; // 0.01%

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
  /// @dev Address of the slisBNBProvider
  ISlisBNBProvider public immutable slisBNBProvider;
  /// @dev Address of the FX Pool Manager
  IPoolManager public immutable fxPoolManager;
  /// @dev Address of the Lista LP delegate
  address public immutable listaLpDelegateTo;

  mapping(uint256 => address) public requestUUIDToUser;
  mapping(address => UserRedeemRequest[]) public userToUserRedeemRequests;
  mapping(address => uint256) public userRequestUUIDCount;
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

  /// @notice Emitted when a redemption is made
  /// @param pool Pool address used
  /// @param positionId Position ID being redeemed
  /// @param receiver Address of redeemer
  /// @param newColl Collateral change in position
  /// @param newRawColl Raw Collateral change in position
  /// @param newDebt Debt change in position
  /// @param isClose True if position is closed
  /// @param requestUUID UUID of the withdraw request
  event RedeemRequest(
    address indexed pool,
    uint256 indexed positionId,
    address indexed receiver,
    int256 newColl,
    int256 newRawColl,
    int256 newDebt,
    bool isClose,
    uint256 requestUUID
  );

  /// @notice Emitted when a redeem request is claimed
  /// @param receiver Address of the receiver
  /// @param requestUUID UUID of the redeem request
  /// @param collToken Token transferred out (BNB or wBNB)
  /// @param collAmount Amount of token transferred out
  event ClaimRedeemRequest(address indexed receiver, uint256 requestUUID, address collToken, uint256 collAmount);

  /// @dev Thrown when the slippage tolerance is out of range.
  error ErrorSlippageOutOfRange();

  /// @notice Initializes contract dependencies
  /// @param _slisBNB slisBNB token contract address
  /// @param _wBNB wBNB token contract address
  /// @param _sy SigmaClisBNBSY contract address
  /// @param _bnbUSD bnbUSD token contract address
  /// @param _listaStakeManager ListaStakeManager contract address
  /// @param _slisBNBProvider slisBNB provider contract address
  /// @param _fxPoolManager FX Pool manager contract address
  /// @param _listaLpDelegateTo Delegation target address for LP governance
  constructor(
    address _slisBNB,
    address _wBNB,
    address _sy,
    address _bnbUSD,
    address _listaStakeManager,
    address _slisBNBProvider,
    address _fxPoolManager,
    address _listaLpDelegateTo
  ) {
    // Set the addresses for the contracts
    // These should be set to the actual deployed addresses of the respective contracts
    slisBNB = IERC20(_slisBNB);
    wBNB = IWETH(_wBNB);
    sy = ISuperComposableYield(_sy);
    bnbUSD = IERC20(_bnbUSD);
    listaStakeManager = IListaStakeManager(_listaStakeManager);
    slisBNBProvider = ISlisBNBProvider(_slisBNBProvider);
    fxPoolManager = IPoolManager(_fxPoolManager);
    listaLpDelegateTo = _listaLpDelegateTo;

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
    require(!(opDebt.debtAmount == 0 && opColl.collAmount == 0), "No supply and no borrow");

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

  function redeemRequest(
    OpPosition memory opPosition,
    OpColl memory opColl,
    OpDebt memory opDebt,
    OpParameter memory opParam
  ) external nonReentrant returns (int256 newColl, int256 newDebt, uint256 requestUUID) {
    require(opPosition.pool != address(0), "Pool address cannot be zero");
    require(opPosition.positionId != 0, "PositionId cannot be zero");
    require(opParam.receiver == msg.sender, "Receiver must be the sender");
    require(!(opDebt.debtAmount == 0 && opColl.collAmount == 0), "No supply and no borrow");
    require(opColl.collToken != address(slisBNB), "Must be a non-slisBNB collateral token");

    _onlySupportedDebtToken(opPosition.pool, opDebt.debtToken);

    int256 newRawColl;
    uint256 amountOut;
    (newColl, newRawColl, newDebt, amountOut) = _redeem(opPosition, opColl, opDebt, opParam);

    // redeem request
    (, requestUUID) = _redeemRequest(opParam.receiver, opColl.collToken, amountOut);

    bool isClose = _isEmptyPosition(opPosition.pool, opPosition.positionId);
    emit RedeemRequest(
      opPosition.pool,
      opPosition.positionId,
      opParam.receiver,
      newColl,
      newRawColl,
      newDebt,
      isClose,
      requestUUID
    );
  }

  /// @notice Claim locked collateral from redeem request
  /// @param receiver Address to receive the collateral
  /// @param tokenOut Collateral token address (BNB or wBNB)
  /// @param requestUUID UUID of the redeem request
  function claimRedeemRequest(
    address receiver,
    address tokenOut,
    uint256 requestUUID
  ) external nonReentrant returns (uint256 amountOut) {
    require(receiver == msg.sender, "Receiver must be the sender");

    _onlySupportedCollToken(tokenOut);

    amountOut = _claimConvertSlisBNBToBNB(receiver, requestUUID);

    if (tokenOut == address(0)) {
      // transfer BNB to the receiver
      Address.sendValue(payable(receiver), amountOut);
    } else if (tokenOut == address(wBNB)) {
      // convert BNB to wBNB
      wBNB.deposit{ value: amountOut }();

      // transfer ERC20 token to the receiver
      IERC20(tokenOut).safeTransfer(receiver, amountOut);
    }

    emit ClaimRedeemRequest(receiver, requestUUID, tokenOut, amountOut);
  }

  /// @notice Get user redeem requests
  /// @param user Address of the user to get redeem requests for
  function getUserRedeemRequests(address user) external view returns (UserRedeemRequest[] memory userRedeemRequests) {
    userRedeemRequests = userToUserRedeemRequests[user];

    for (uint256 i = 0; i < userRedeemRequests.length; i++) {
      UserRedeemRequest memory request = userRedeemRequests[i];

      (, request.isClaimable, , , ) = _getUserRequestStatus(request.uuid);
    }
  }

  /// @notice Preview the health factor for a given position
  /// @dev Calculates the expected health factor based on the pool's rebalance ratio and position's debt ratio
  /// @param _pool Pool address to interact with
  /// @param positionId PositionId
  /// @return healthFactor The expected health factor after the operation. Multiplied by 1e18.
  function previewHealthFactor(address _pool, uint256 positionId) external view returns (uint256) {
    require(_pool != address(0), "Pool address cannot be zero");
    require(positionId != 0, "positionId cannot be zero");

    // get debt ratio
    uint256 debtRatio = IPool(_pool).getPositionDebtRatio(positionId);
    if (debtRatio == 0) {
      return type(uint256).max;
    }

    (uint256 rebalanceRatio, ) = IPool(_pool).getRebalanceRatios();

    // calculate health factor
    return (rebalanceRatio * PRECISION) / debtRatio;
  }

  /// @notice Preview the rebalance price for a given position
  /// @dev Calculates the expected rebalance price based on the position's collateral and debt
  /// @param _pool Pool address to interact with
  /// @param positionId PositionId
  /// @return rebalancePrice The expected rebalance price after the operation. Multiplied by 1e18.
  function previewRebalancePrice(address _pool, uint256 positionId) external view returns (uint256) {
    require(_pool != address(0), "Pool address cannot be zero");
    require(positionId != 0, "positionId cannot be zero");

    // get position collaterals and debts
    (uint256 rawColls, uint256 rawDebts) = IPool(_pool).getPosition(positionId);
    if (rawColls == 0 || rawDebts == 0) {
      return 0;
    }

    (uint256 rebalanceRatio, ) = IPool(_pool).getRebalanceRatios();
    return (rawDebts * PRECISION * PRECISION) / (rawColls * rebalanceRatio);
  }

  function registerSwapTarget(address swapTarget) external onlyOwner {
    supportedSwapTargets[swapTarget] = true;
  }

  function unregisterSwapTarget(address swapTarget) external onlyOwner {
    require(supportedSwapTargets[swapTarget], "Swap target not registered");
    delete supportedSwapTargets[swapTarget];
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
      (uint256 tokenInAmount, address swapTarget, bytes memory swapData) = abi.decode(data, (uint256, address, bytes));
      require(tokenInAmount == opColl.collAmount, "Token in amount mismatch");
      amountOut = _swap(opColl.collToken, address(slisBNB), opColl.collAmount, swapTarget, swapData);
    }

    slisBNB.forceApprove(address(sy), amountOut);
    sy.deposit(address(this), address(slisBNB), amountOut, 0);

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
      newColl = -int256(opColl.collAmount);
      if (opColl.collToken == address(slisBNB)) {
        newRawColl = _scaleUp(newColl);
      } else {
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
    fxPoolManager.operate(opPosition.pool, opPosition.positionId, newColl, newDebt);
    amountOut = sy.balanceOf(address(this)) - syBalance;
    if (amountOut > 0) {
      // sy => slisBNB
      sy.redeem(address(this), amountOut, address(slisBNB), 0, false);
    }

    _updateEntryPosition(opPosition.pool, opPosition.positionId, newRawColl);

    // transfer xBNB to the user
    IERC721(opPosition.pool).transferFrom(address(this), opParam.receiver, opPosition.positionId);
  }

  function _redeemRequest(
    address receiver,
    address tokenOut,
    uint256 amountIn
  ) internal returns (uint256 amountOut, uint256 requestUUID) {
    require(tokenOut == address(0) || tokenOut == address(wBNB), "Token out must be BNB or WBNB");

    if (amountIn == 0) {
      return (0, 0);
    }

    slisBNB.forceApprove(address(listaStakeManager), amountIn);
    listaStakeManager.requestWithdraw(amountIn);
    requestUUID = listaStakeManager.requestUUID();
    (, bool isClaimable, , uint256 startTime, uint256 bnbAmount) = _getUserRequestStatus(requestUUID);
    amountOut = bnbAmount;

    _addUserRedeemRequest(receiver, requestUUID, isClaimable, startTime, bnbAmount, tokenOut, bnbAmount);
  }

  function _claimConvertSlisBNBToBNB(address receiver, uint256 requestUUID) internal returns (uint256) {
    require(requestUUIDToUser[requestUUID] == receiver, "Invalid request UUID or receiver mismatch");

    (uint256 idx, bool isClaimable, , , uint256 bnbAmount) = _getUserRequestStatus(requestUUID);

    require(isClaimable, "Request is not claimable");
    listaStakeManager.claimWithdraw(idx);

    _removeUserRedeemRequest(receiver, requestUUID);

    return bnbAmount;
  }

  function _getUserRequestStatus(
    uint256 requestUUID
  ) internal view returns (uint256 idx, bool isClaimable, uint256 slisBNBAmount, uint256 startTime, uint256 bnbAmount) {
    IListaStakeManager.WithdrawalRequest[] memory requests = listaStakeManager.getUserWithdrawalRequests(address(this));
    for (uint256 i = 0; i < requests.length; i++) {
      if (requests[i].uuid == requestUUID) {
        slisBNBAmount = requests[i].amountInSnBnb;
        startTime = requests[i].startTime;
        (isClaimable, bnbAmount) = listaStakeManager.getUserRequestStatus(address(this), i);
        return (i, isClaimable, slisBNBAmount, startTime, bnbAmount);
      }
    }

    revert("RequestUUID not found");
  }

  function _addUserRedeemRequest(
    address user,
    uint256 requestUUID,
    bool isClaimable,
    uint256 startTime,
    uint256 bnbAmount,
    address tokenOut,
    uint256 tokenOutAmount
  ) internal {
    requestUUIDToUser[requestUUID] = user;
    userRequestUUIDCount[user]++;

    userToUserRedeemRequests[user].push(
      UserRedeemRequest(requestUUID, isClaimable, startTime, bnbAmount, tokenOut, tokenOutAmount)
    );
  }

  function _removeUserRedeemRequest(address user, uint256 requestUUID) internal {
    delete requestUUIDToUser[requestUUID];
    userRequestUUIDCount[user]--;

    UserRedeemRequest[] storage userRedeemRequests = userToUserRedeemRequests[user];
    for (uint256 i = 0; i < userRedeemRequests.length; i++) {
      if (userRedeemRequests[i].uuid == requestUUID) {
        userRedeemRequests[i] = userRedeemRequests[userRedeemRequests.length - 1];
        userRedeemRequests.pop();
        break;
      }
    }
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
