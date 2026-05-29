// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.26;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts-upgradeable/access/Ownable2StepUpgradeable.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/token/ERC721/IERC721.sol";
import "@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol";

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
// import "hardhat/console.sol";

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
  /// @dev Address of the PancakeSwap Router
  IV3SwapRouter public immutable pancakeSwapRouter;
  IPancakeV3Pool public immutable pancakeV3Pool; // slisBNB/wBNB pool

  mapping(uint256 => address) public requestUUIDToUser;
  mapping(address => UserRedeemRequest[]) public userToUserRedeemRequests;
  mapping(address => uint256) public userRequestUUIDCount;
  mapping(uint256 => PositionEntryPrice) public positionIdToEntryPrice;

  /// @notice Emitted when a deposit is made
  /// @param pool FX Pool address used
  /// @param positionId Previous position ID (0 for new)
  /// @param newPositionId Resulting position ID
  /// @param receiver Address of depositor
  /// @param tokenIn Asset deposited (slisBNB or other asset)
  /// @param tokenInAmount Amount of asset deposited
  /// @param tokenOut Asset minted (bnbUSD)
  /// @param tokenOutAmount Amount of bnbUSD minted
  /// @param newColl Collateral change in pool position
  /// @param newDebt Debt change in pool position
  event Deposit(
    address indexed pool,
    uint256 positionId,
    uint256 newPositionId,
    address indexed receiver,
    address tokenIn,
    uint256 tokenInAmount,
    address tokenOut,
    uint256 tokenOutAmount,
    int256 newColl,
    int256 newDebt
  );

  /// @notice Emitted when a redemption is made
  /// @param pool FX Pool address used
  /// @param positionId Position ID being redeemed
  /// @param receiver Address of redeemer
  /// @param tokenIn Token of transfer in (bnbUSD)
  /// @param tokenInAmount Amount of token in
  /// @param tokenOut Token of transfer out (slisBNB or other asset)
  /// @param tokenOutAmount Amount of token out
  /// @param newColl New collateral after redemption
  /// @param newDebt New debt after redemption
  /// @param actualTokenOutAmount Actual amount of token out transferred
  event RedeemInstant(
    address indexed pool,
    uint256 positionId,
    address indexed receiver,
    address tokenIn,
    uint256 tokenInAmount,
    address tokenOut,
    uint256 tokenOutAmount,
    int256 newColl,
    int256 newDebt,
    uint256 actualTokenOutAmount
  );

  /// @notice Emitted when a redemption is made
  /// @param pool FX Pool address used
  /// @param positionId Position ID being redeemed
  /// @param receiver Address of redeemer
  /// @param tokenIn Token of transfer in (bnbUSD)
  /// @param tokenInAmount Amount of token in
  /// @param tokenOut Token of transfer out (slisBNB or other asset)
  /// @param tokenOutAmount Amount of token out
  /// @param newColl New collateral after redemption
  /// @param newDebt New debt after redemption
  /// @param requestUUID UUID of the withdraw request
  event RedeemRequest(
    address indexed pool,
    uint256 positionId,
    address indexed receiver,
    address tokenIn,
    uint256 tokenInAmount,
    address tokenOut,
    uint256 tokenOutAmount,
    int256 newColl,
    int256 newDebt,
    uint256 requestUUID
  );

  /// @notice Initializes contract dependencies
  /// @param _slisBNB slisBNB token contract address
  /// @param _wBNB wBNB token contract address
  /// @param _sy SigmaClisBNBSY contract address
  /// @param _bnbUSD bnbUSD token contract address
  /// @param _listaStakeManager ListaStakeManager contract address
  /// @param _slisBNBProvider slisBNB provider contract address
  /// @param _fxPoolManager FX Pool manager contract address
  /// @param _listaLpDelegateTo Delegation target address for LP governance
  /// @param _pancakeSwapRouter PancakeSwap V3 Router contract address
  /// @param _pancakeV3Pool PancakeSwap V3 Pool contract address for slisBNB/wBNB
  constructor(
    address _slisBNB,
    address _wBNB,
    address _sy,
    address _bnbUSD,
    address _listaStakeManager,
    address _slisBNBProvider,
    address _fxPoolManager,
    address _listaLpDelegateTo,
    address _pancakeSwapRouter,
    address _pancakeV3Pool
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
    pancakeSwapRouter = IV3SwapRouter(_pancakeSwapRouter);
    pancakeV3Pool = IPancakeV3Pool(_pancakeV3Pool);

    _disableInitializers();
  }

  function initialize() external initializer {
    __Ownable_init(msg.sender);
    __ReentrancyGuard_init();
  }

  /// @notice Deposit slisBNB to mint SY tokens and open/modify FX Pool position
  /// @dev Transfers slisBNB from user, mints SY, deposits to FX Pool, returns bnbUSD and position NFT
  /// @param opPosition position info
  /// @param opColl collateral info
  /// @param opDebt debt info
  /// @param opParam operation parameters
  /// @dev Requires the pool to be registered and the tokenIn to be convertible to slisBNB
  function deposit(
    OpPosition memory opPosition,
    OpColl memory opColl,
    OpDebt memory opDebt,
    OpParameter memory opParam
  ) external payable nonReentrant returns (uint256 positionId, int256 newColl, int256 newDebt) {
    require(opPosition.pool != address(0), "Pool address cannot be zero");
    require(opParam.receiver == msg.sender, "Receiver must be the sender");
    require(opColl.collAmount >= 0, "TokenInAmount must be greater than or equal to 0");
    require(opDebt.debtAmount >= 0, "TokenOutAmount must be greater than or equal to 0");
    require(!(opColl.collAmount == 0 && opDebt.debtAmount == 0), "No supply and no borrow");

    _onlySupportedCollToken(opColl.collToken);
    _onlySupportedDebtToken(opPosition.pool, opDebt.debtToken);

    uint256 bnbUSDBalance = bnbUSD.balanceOf(address(this));

    if (positionId != 0) {
      // transfer xBNB to this contract
      IERC721(opPosition.pool).transferFrom(msg.sender, address(this), opPosition.positionId);
    }

    newColl = int256(_transferInCollTokenToSy(opColl.collToken, opColl.collAmount));
    newDebt = int256(opDebt.debtAmount);

    // deposit sy to fx pool
    sy.approve(address(fxPoolManager), uint256(newColl));
    positionId = fxPoolManager.operate(opPosition.pool, opPosition.positionId, newColl, newDebt);

    uint256 bnbUSDDelta = bnbUSD.balanceOf(address(this)) - bnbUSDBalance;

    if (positionId != 0) {
      require(positionId == opPosition.positionId, "PositionId mismatch");
    }

    // transfer bnbUSD to the user
    if (bnbUSDDelta > 0) {
      require(bnbUSDDelta == opDebt.debtAmount, "bnbUSD delta mismatch");
      bnbUSD.safeTransfer(opParam.receiver, bnbUSDDelta);
    }

    // transfer xBNB to the user
    IERC721(opPosition.pool).transferFrom(address(this), opParam.receiver, positionId);

    emit Deposit(
      opPosition.pool,
      opPosition.positionId,
      positionId,
      opParam.receiver,
      opColl.collToken,
      opColl.collAmount,
      opDebt.debtToken,
      opDebt.debtAmount,
      newColl,
      newDebt
    );
  }

  /// @notice Redeem slisBNB by settling FX Pool position and burning SY tokens
  /// @dev Transfers position NFT from user, withdraws SY, burns for slisBNB, returns collateral
  function redeemInstant(
    OpPosition memory opPosition,
    OpColl memory opColl,
    OpDebt memory opDebt,
    OpParameter memory opParam
  ) external payable nonReentrant returns (int256 newColl, int256 newDebt, uint256 assetAmount) {
    require(opPosition.pool != address(0), "Pool address cannot be zero");
    require(opPosition.positionId != 0, "PositionId cannot be zero");
    require(opParam.receiver == msg.sender, "Receiver must be the sender");
    require(opDebt.debtAmount >= 0, "TokenInAmount must be greater than or equal to 0");
    require(opColl.collAmount >= 0, "TokenOutAmount must be greater than or equal to 0");
    require(!(opDebt.debtAmount == 0 && opColl.collAmount == 0), "No supply and no borrow");

    _onlySupportedCollToken(opColl.collToken);
    _onlySupportedDebtToken(opPosition.pool, opDebt.debtToken);

    (newColl, newDebt) = _redeemTransferIn(
      opPosition.pool,
      opPosition.positionId,
      opDebt.debtToken,
      opDebt.debtAmount,
      opColl.collToken,
      opColl.collAmount
    );

    // transfer xBNB to this contract
    IERC721(opPosition.pool).transferFrom(msg.sender, address(this), opPosition.positionId);

    // withdraw sy from fx pool
    uint256 syBalance = sy.balanceOf(address(this));
    fxPoolManager.operate(opPosition.pool, opPosition.positionId, newColl, newDebt);
    uint256 syAmount = sy.balanceOf(address(this)) - syBalance;

    // transfer xBNB to the user
    IERC721(opPosition.pool).transferFrom(address(this), opParam.receiver, opPosition.positionId);

    if (syAmount > 0) {
      // transfer slisBNB to user and update deposits
      assetAmount = _transferOutSyToTokenInstant(opParam.receiver, opColl.collToken, syAmount);
    }

    emit RedeemInstant(
      opPosition.pool,
      opPosition.positionId,
      opParam.receiver,
      opDebt.debtToken,
      opDebt.debtAmount,
      opColl.collToken,
      opColl.collAmount,
      newColl,
      newDebt,
      assetAmount
    );
  }

  /// @notice Redeem request for a position.
  /// @dev This function is a placeholder for future implementation of redeem requests.
  function redeemRequest(
    OpPosition memory opPosition,
    OpColl memory opColl,
    OpDebt memory opDebt,
    OpParameter memory opParam
  ) external payable nonReentrant returns (int256 newColl, int256 newDebt, uint256 requestUUID) {
    // check if the user has enough deposits
    require(opPosition.pool != address(0), "Pool address cannot be zero");
    require(opPosition.positionId != 0, "PositionId cannot be zero");
    require(opParam.receiver == msg.sender, "Receiver must be the sender");
    require(opDebt.debtAmount >= 0, "TokenInAmount must be greater than or equal to 0");
    require(opColl.collAmount >= 0, "TokenOutAmount must be greater than or equal to 0");
    require(!(opDebt.debtAmount == 0 && opColl.collAmount == 0), "No supply and no borrow");
    require(opColl.collToken != address(slisBNB), "Token out must not be slisBNB");

    _onlySupportedCollToken(opColl.collToken);
    _onlySupportedDebtToken(opPosition.pool, opDebt.debtToken);

    (newColl, newDebt) = _redeemTransferIn(
      opPosition.pool,
      opPosition.positionId,
      opDebt.debtToken,
      opDebt.debtAmount,
      opColl.collToken,
      opColl.collAmount
    );

    // transfer xBNB to this contract
    IERC721(opPosition.pool).transferFrom(msg.sender, address(this), opPosition.positionId);

    // withdraw sy from fx pool
    uint256 syBalance = sy.balanceOf(address(this));
    fxPoolManager.operate(opPosition.pool, opPosition.positionId, newColl, newDebt);

    uint256 syDelta = sy.balanceOf(address(this)) - syBalance;

    // transfer xBNB to the user
    IERC721(opPosition.pool).transferFrom(address(this), opParam.receiver, opPosition.positionId);

    if (syDelta > 0) {
      // request withdraw
      // transfer slisBNB to user and update deposits
      (, requestUUID) = _transferOutSyToTokenRequest(opParam.receiver, opColl.collToken, syDelta);
    }

    emit RedeemRequest(
      opPosition.pool,
      opPosition.positionId,
      opParam.receiver,
      opDebt.debtToken,
      opDebt.debtAmount,
      opColl.collToken,
      opColl.collAmount,
      newColl,
      newDebt,
      requestUUID
    );
  }

  function claimRedeemRequest(
    address receiver,
    address collToken,
    uint256 requestUUID
  ) external nonReentrant returns (uint256 collAmount) {
    require(receiver == msg.sender, "Receiver must be the sender");

    _onlySupportedCollToken(collToken);

    collAmount = _claimConvertSlisBNBToBNB(receiver, collToken, requestUUID);

    if (collToken == address(0)) {
      // transfer BNB to the receiver
      (bool success, ) = receiver.call{ value: collAmount }("");
      require(success, "Transfer failed");
    } else if (collToken == address(wBNB)) {
      // convert BNB to wBNB
      wBNB.deposit{ value: collAmount }();

      // transfer ERC20 token to the receiver
      IERC20(collToken).safeTransfer(receiver, collAmount);
    }
  }

  function getUserRedeemRequests(address user) external view returns (UserRedeemRequest[] memory userRedeemRequests) {
    userRedeemRequests = userToUserRedeemRequests[user];

    for (uint256 i = 0; i < userRedeemRequests.length; i++) {
      UserRedeemRequest memory request = userRedeemRequests[i];

      (, request.isClaimable, , , ) = _getUserRequestStatus(request.uuid);
    }
  }

  /// @notice Preview the debt ratio and protocol fees for a given position
  /// @dev Calculates the expected debt ratio and protocol fees based on new collateral and debt amounts
  /// @param _pool FX Pool address to interact with
  /// @param positionId Position ID to modify
  /// @param collToken Collateral token address (slisBNB or other asset)
  /// @param collAmount Collateral amount (positive for deposit, negative for withdrawal)
  /// @param newDebt New debt amount (positive for borrow, negative for repay)
  /// @return debtRatio The expected debt ratio after the operation. Multiplied by 1e18.
  function previewDebtRatioInstant(
    address _pool,
    uint256 positionId,
    address collToken,
    int256 collAmount,
    int256 newDebt
  ) external view returns (uint256 debtRatio, uint256 protocolFees) {
    require(_pool != address(0), "Pool address cannot be zero");
    require(!(collToken == address(0) && collAmount == 0), "No supply and no borrow");

    int256 newColl = collAmount;
    if (collToken != address(slisBNB)) {
      newColl = (int256(_rateBNBToSlisBNBInstant(1e18)) * collAmount) / int256(PRECISION);
    }

    (debtRatio, protocolFees) = _previewDebtRatio(_pool, positionId, newColl, newDebt);
  }

  /// @notice Preview the debt ratio and protocol fees for a given position
  /// @dev Calculates the expected debt ratio and protocol fees based on new collateral and debt amounts
  /// @param _pool FX Pool address to interact with
  /// @param positionId Position ID to modify
  /// @param collToken Collateral token address (slisBNB or other asset)
  /// @param collAmount Collateral amount (positive for deposit, negative for withdrawal)
  /// @param newDebt New debt amount (positive for borrow, negative for repay)
  /// @return debtRatio The expected debt ratio after the operation. Multiplied by 1e18.
  function previewDebtRatioRequest(
    address _pool,
    uint256 positionId,
    address collToken,
    int256 collAmount,
    int256 newDebt
  ) external view returns (uint256 debtRatio, uint256 protocolFees) {
    require(_pool != address(0), "Pool address cannot be zero");
    require(!(collToken == address(0) && collAmount == 0), "No supply and no borrow");

    int256 newColl = collAmount;
    if (collToken != address(slisBNB)) {
      newColl = (int256(_rateBNBToSlisBNBRequest(1e18)) * collAmount) / int256(PRECISION);
    }

    (debtRatio, protocolFees) = _previewDebtRatio(_pool, positionId, newColl, newDebt);
  }

  function _previewDebtRatio(
    address _pool,
    uint256 positionId,
    int256 newColl,
    int256 newDebt
  ) internal view returns (uint256 debtRatio, uint256 protocolFees) {
    if (newColl != 0 && (newColl > -MIN_COLLATERAL && newColl < MIN_COLLATERAL)) {
      revert ErrorCollateralTooSmall();
    }
    if (newDebt != 0 && (newDebt > -MIN_DEBT && newDebt < MIN_DEBT)) {
      revert ErrorDebtTooSmall();
    }

    uint256 positionRawColls = 0;
    uint256 positionRawDebts = 0;
    address priceOracle = IPool(_pool).priceOracle();
    uint256 price = IPriceOracle(priceOracle).getExchangePrice();

    if (positionId != 0) {
      (positionRawColls, positionRawDebts) = IPool(_pool).getPosition(positionId);
    }

    // supply or withdraw
    if (newColl > 0) {
      protocolFees = _deductProtocolFees(
        newColl,
        ISigmaClisBNBSYPool(_pool).getOpenFeeRatio(),
        ISigmaClisBNBSYPool(_pool).getCloseFeeRatio()
      );
      newColl -= int256(protocolFees);
      positionRawColls += uint256(newColl);
    } else if (newColl < 0) {
      if (newColl == type(int256).min) {
        // this is max withdraw
        newColl = -int256(positionRawColls);
        positionRawColls = 0;
      } else {
        // this is partial withdraw, rounding up removing extra wei from collateral
        positionRawColls -= uint256(-newColl);
      }
      protocolFees = _deductProtocolFees(
        newColl,
        ISigmaClisBNBSYPool(_pool).getOpenFeeRatio(),
        ISigmaClisBNBSYPool(_pool).getCloseFeeRatio()
      );
      newColl += int256(protocolFees);
    }

    // borrow or repay
    if (newDebt > 0) {
      positionRawDebts += uint256(newDebt);
    } else if (newDebt < 0) {
      if (newDebt == type(int256).min) {
        // this is max repay
        newDebt = -int256(positionRawDebts);
      }
      positionRawDebts -= uint256(-newDebt);
    }

    // final debt ratio check
    {
      require(positionRawColls >= 0, "Collateral must not be negative");
      require(positionRawDebts >= 0, "Debt must not be negative");

      // check position debt ratio is between `minDebtRatio` and `maxDebtRatio`.
      (uint256 minDebtRatio, uint256 maxDebtRatio) = IPool(_pool).getDebtRatioRange();
      debtRatio = (positionRawDebts * PRECISION * PRECISION) / (positionRawColls * price);
      if (debtRatio > maxDebtRatio) revert ErrorDebtRatioTooLarge();
      if (debtRatio < minDebtRatio) revert ErrorDebtRatioTooSmall();
    }
  }

  /// @notice Preview the new debt range for a given position
  /// @dev Calculates the expected minimum and maximum debt amounts based on new collateral
  /// @param _pool FX Pool address to interact with
  /// @param positionId Position ID to modify
  /// @param collToken Collateral token address (slisBNB or other asset)
  /// @param collAmount Collateral amount (positive for deposit, negative for withdrawal)
  /// @return minNewDebt The expected minimum new debt amount after the operation. Multiplied by 1e18.
  /// @return maxNewDebt The expected maximum new debt amount after the operation. Multiplied by 1e18.
  function previewNewDebtRangeInstant(
    address _pool,
    uint256 positionId,
    address collToken,
    int256 collAmount
  ) external view returns (int256 minNewDebt, int256 maxNewDebt) {
    require(_pool != address(0), "Pool address cannot be zero");

    int256 newColl = collAmount;
    if (collToken != address(slisBNB)) {
      newColl = (int256(_rateBNBToSlisBNBInstant(1e18)) * collAmount) / int256(PRECISION);
    }

    (minNewDebt, maxNewDebt) = _previewNewDebtRange(_pool, positionId, newColl);
  }

  /// @notice Preview the new debt range for a given position
  /// @dev Calculates the expected minimum and maximum debt amounts based on new collateral
  /// @param _pool FX Pool address to interact with
  /// @param positionId Position ID to modify
  /// @param collToken Collateral token address (slisBNB or other asset)
  /// @param collAmount Collateral amount (positive for deposit, negative for withdrawal)
  /// @return minNewDebt The expected minimum new debt amount after the operation. Multiplied by 1e18.
  /// @return maxNewDebt The expected maximum new debt amount after the operation. Multiplied by 1e18.
  function previewNewDebtRangeRequest(
    address _pool,
    uint256 positionId,
    address collToken,
    int256 collAmount
  ) external view returns (int256 minNewDebt, int256 maxNewDebt) {
    require(_pool != address(0), "Pool address cannot be zero");

    int256 newColl = collAmount;
    if (collToken != address(slisBNB)) {
      newColl = (int256(_rateBNBToSlisBNBRequest(1e18)) * collAmount) / int256(PRECISION);
    }

    (minNewDebt, maxNewDebt) = _previewNewDebtRange(_pool, positionId, newColl);
  }

  function _previewNewDebtRange(
    address _pool,
    uint256 positionId,
    int256 newColl
  ) internal view returns (int256 minNewDebt, int256 maxNewDebt) {
    uint256 positionRawColls = 0;
    uint256 positionRawDebts = 0;
    address priceOracle = IPool(_pool).priceOracle();
    uint256 price = IPriceOracle(priceOracle).getExchangePrice();

    if (positionId != 0) {
      (positionRawColls, positionRawDebts) = IPool(_pool).getPosition(positionId);
    }

    if (newColl > 0) {
      uint256 protocolFees = _deductProtocolFees(
        newColl,
        ISigmaClisBNBSYPool(_pool).getOpenFeeRatio(),
        ISigmaClisBNBSYPool(_pool).getCloseFeeRatio()
      );
      newColl -= int256(protocolFees);
      positionRawColls += uint256(newColl);
    } else if (newColl < 0) {
      if (newColl == type(int256).min) {
        // this is max withdraw
        newColl = -int256(positionRawColls);
      } else {
        // this is partial withdraw, rounding up removing extra wei from collateral
        if (positionRawColls < uint256(-newColl)) revert ErrorWithdrawExceedSupply();
      }
      unchecked {
        positionRawColls -= uint256(-newColl);
      }
      uint256 protocolFees = _deductProtocolFees(
        newColl,
        ISigmaClisBNBSYPool(_pool).getOpenFeeRatio(),
        ISigmaClisBNBSYPool(_pool).getCloseFeeRatio()
      );
      newColl += int256(protocolFees);
    }

    require(positionRawColls >= 0, "Collateral must not be negative");

    (uint256 minDebtRatio, uint256 maxDebtRatio) = IPool(_pool).getDebtRatioRange();
    minNewDebt = int256((minDebtRatio * positionRawColls * price) / (PRECISION * PRECISION)) - int256(positionRawDebts);
    maxNewDebt = int256((maxDebtRatio * positionRawColls * price) / (PRECISION * PRECISION)) - int256(positionRawDebts);
  }

  /// @notice Preview the new debt amount for a given positionAdd commentMore actions
  /// @dev Calculates the expected new debt amount based on new collateral and debt ratio
  /// @param _pool FX Pool address to interact with
  /// @param positionId Position ID to modify
  /// @param collToken Collateral token address (slisBNB or other asset)
  /// @param collAmount Collateral amount (positive for deposit, negative for withdrawal)
  /// @param debtRatio Debt ratio to set for the position (must be between min and max debt ratio). Multiplied by 1e18.
  function previewNewDebtByNewCollAndDebtRatioInstant(
    address _pool,
    uint256 positionId,
    address collToken,
    int256 collAmount,
    uint256 debtRatio
  ) external view returns (int256 newDebt) {
    require(_pool != address(0), "Pool address cannot be zero");
    require(debtRatio > 0, "Debt ratio must be greater than 0");

    int256 newColl = collAmount;
    if (collToken != address(slisBNB)) {
      newColl = (int256(_rateBNBToSlisBNBInstant(1e18)) * collAmount) / int256(PRECISION);
    }

    newDebt = _previewNewDebtByNewCollAndDebtRatio(_pool, positionId, newColl, debtRatio);
  }

  /// @notice Preview the new debt amount for a given positionAdd commentMore actions
  /// @dev Calculates the expected new debt amount based on new collateral and debt ratio
  /// @param _pool FX Pool address to interact with
  /// @param positionId Position ID to modify
  /// @param collToken Collateral token address (slisBNB or other asset)
  /// @param collAmount Collateral amount (positive for deposit, negative for withdrawal)
  /// @param debtRatio Debt ratio to set for the position (must be between min and max debt ratio). Multiplied by 1e18.
  function previewNewDebtByNewCollAndDebtRatioRequest(
    address _pool,
    uint256 positionId,
    address collToken,
    int256 collAmount,
    uint256 debtRatio
  ) external view returns (int256 newDebt) {
    require(_pool != address(0), "Pool address cannot be zero");
    require(debtRatio > 0, "Debt ratio must be greater than 0");

    int256 newColl = collAmount;
    if (collToken != address(slisBNB)) {
      newColl = (int256(_rateBNBToSlisBNBRequest(1e18)) * collAmount) / int256(PRECISION);
    }

    newDebt = _previewNewDebtByNewCollAndDebtRatio(_pool, positionId, newColl, debtRatio);
  }

  function _previewNewDebtByNewCollAndDebtRatio(
    address _pool,
    uint256 positionId,
    int256 newColl,
    uint256 debtRatio
  ) internal view returns (int256 newDebt) {
    uint256 positionRawColls = 0;
    uint256 positionRawDebts = 0;
    address priceOracle = IPool(_pool).priceOracle();
    uint256 price = IPriceOracle(priceOracle).getExchangePrice();

    if (positionId != 0) {
      (positionRawColls, positionRawDebts) = IPool(_pool).getPosition(positionId);
    }

    if (newColl > 0) {
      uint256 protocolFees = _deductProtocolFees(
        newColl,
        ISigmaClisBNBSYPool(_pool).getOpenFeeRatio(),
        ISigmaClisBNBSYPool(_pool).getCloseFeeRatio()
      );
      newColl -= int256(protocolFees);
      positionRawColls += uint256(newColl);
    } else if (newColl < 0) {
      if (newColl == type(int256).min) {
        // this is max withdraw
        newColl = -int256(positionRawColls);
      } else {
        // this is partial withdraw, rounding up removing extra wei from collateral
        if (positionRawColls < uint256(-newColl)) revert ErrorWithdrawExceedSupply();
      }
      unchecked {
        positionRawColls -= uint256(-newColl);
      }
      uint256 protocolFees = _deductProtocolFees(
        newColl,
        ISigmaClisBNBSYPool(_pool).getOpenFeeRatio(),
        ISigmaClisBNBSYPool(_pool).getCloseFeeRatio()
      );
      newColl += int256(protocolFees);
    }

    require(positionRawColls >= 0, "Collateral must not be negative");

    // check position debt ratio is between `minDebtRatio` and `maxDebtRatio`.
    (uint256 minDebtRatio, uint256 maxDebtRatio) = IPool(_pool).getDebtRatioRange();
    require(debtRatio >= minDebtRatio && debtRatio <= maxDebtRatio, "Debt ratio out of range");

    newDebt = int256((debtRatio * positionRawColls * price) / (PRECISION * PRECISION)) - int256(positionRawDebts);
  }

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

  /// @dev Internal function to compute the protocol fees.
  /// @param rawColl The amount of collateral tokens involved.
  /// @param openFeeRatio The protocol fee ratio for opening a position. Multiplied by 1e9.
  /// @param closeFeeRatio The protocol fee ratio for closing a position. Multiplied by 1e9.
  /// @return fees The expected protocol fees.
  function _deductProtocolFees(
    int256 rawColl,
    uint256 openFeeRatio,
    uint256 closeFeeRatio
  ) internal pure returns (uint256) {
    if (rawColl > 0) {
      // open position or add collateral
      uint256 feeRatio = openFeeRatio;
      if (feeRatio > FEE_PRECISION) feeRatio = FEE_PRECISION;
      return (uint256(rawColl) * feeRatio) / FEE_PRECISION;
    } else {
      // close position or remove collateral
      return (uint256(-rawColl) * closeFeeRatio) / FEE_PRECISION;
    }
  }

  function _transferInCollTokenToSy(address collToken, uint256 collAmount) internal returns (uint256 syAmount) {
    if (collAmount == 0) {
      return 0;
    }

    if (collToken == address(slisBNB)) {
      IERC20(collToken).safeTransferFrom(msg.sender, address(this), collAmount);
      syAmount = collAmount;
    } else if (collToken == address(0)) {
      require(msg.value == collAmount, "BNB amount mismatch");
      syAmount = _convertBNBToSlisBNB(collAmount);
    } else if (collToken == address(wBNB)) {
      IERC20(collToken).safeTransferFrom(msg.sender, address(this), collAmount);
      syAmount = _convertWBNBToSlisBNB(collAmount);
    }

    require(syAmount > 0, "Converted amount must be greater than 0");

    slisBNB.approve(address(sy), syAmount);
    sy.deposit(address(this), address(slisBNB), syAmount, 0);
  }

  function _redeemTransferIn(
    address _pool,
    uint256 positionId,
    address tokenIn,
    uint256 tokenInAmount,
    address tokenOut,
    uint256 tokenOutAmount
  ) internal returns (int256 newColl, int256 newDebt) {
    (uint256 rawColls, uint256 rawDebts) = IPool(_pool).getPosition(positionId);
    if (tokenOutAmount == type(uint256).max) {
      newColl = -int256(rawColls);
    } else {
      newColl = -int256(_syAmountOfToken(tokenOut, tokenOutAmount));
    }

    if (tokenInAmount == type(uint256).max || newColl == -int256(rawColls)) {
      // repay all debts
      newDebt = -int256(rawDebts);
    } else {
      newDebt = -int256(tokenInAmount);
    }

    if (newDebt < 0) {
      // transfer bnbUSD to this contract
      require(tokenIn == address(bnbUSD), "Token in must be bnbUSD");

      bnbUSD.safeTransferFrom(msg.sender, address(this), uint256(-newDebt));
      bnbUSD.approve(address(fxPoolManager), uint256(-newDebt));
    }
  }

  function _syAmountOfToken(address token, uint256 tokenAmount) internal view returns (uint256 syAmount) {
    if (token == address(slisBNB)) {
      return tokenAmount;
    }

    return _rateBNBToSlisBNBRequest(tokenAmount);
  }

  /// sy -> slisBNB -> asset
  function _transferOutSyToTokenInstant(
    address receiver,
    address tokenOut,
    uint256 syAmount
  ) internal returns (uint256 tokenOutAmount) {
    if (syAmount == 0) {
      return 0;
    }

    // sy -> slisBNB
    sy.redeem(address(this), syAmount, address(slisBNB), 0, false);

    if (tokenOut == address(slisBNB)) {
      // transfer out slisBNB directly
      tokenOutAmount = syAmount;
      slisBNB.safeTransfer(receiver, tokenOutAmount);
    } else if (tokenOut == address(0)) {
      // convert slisBNB to BNB and transfer
      tokenOutAmount = _convertSlisBNBToBNB(syAmount);
      payable(receiver).call{ value: tokenOutAmount }("");
    } else if (tokenOut == address(wBNB)) {
      // convert slisBNB to WBNB and transfer
      tokenOutAmount = _convertSlisBNBToWBNB(syAmount);
      IERC20(wBNB).safeTransfer(receiver, tokenOutAmount);
    }
  }

  function _transferOutSyToTokenRequest(
    address receiver,
    address tokenOut,
    uint256 syAmount
  ) internal returns (uint256 tokenOutAmount, uint256 requestUUID) {
    require(syAmount > 0, "syAmount must be greater than 0");
    require(tokenOut == address(0) || tokenOut == address(wBNB), "Token out must be BNB or WBNB");

    // sy -> slisBNB
    sy.redeem(address(this), syAmount, address(slisBNB), 0, false);

    (tokenOutAmount, requestUUID) = _requestConvertSlisBNBToBNB(receiver, tokenOut, syAmount);
  }

  function _convertBNBToSlisBNB(uint256 bnbAmount) internal returns (uint256 slisBNBAmount) {
    uint256 balanceBefore = slisBNB.balanceOf(address(this));
    listaStakeManager.deposit{ value: bnbAmount }();
    slisBNBAmount = slisBNB.balanceOf(address(this)) - balanceBefore;
  }

  function _convertWBNBToSlisBNB(uint256 wBNBAmount) internal returns (uint256 slisBNBAmount) {
    wBNB.withdraw(wBNBAmount);
    slisBNBAmount = _convertBNBToSlisBNB(wBNBAmount);
  }

  function _convertSlisBNBToBNB(uint256 slisBNBAmount) internal returns (uint256 bnbAmount) {
    uint256 wBNBAmount = _convertSlisBNBToWBNB(slisBNBAmount);
    // convert WBNB to BNB
    wBNB.withdraw(wBNBAmount);
  }

  function _convertSlisBNBToWBNB(uint256 slisBNBAmount) internal returns (uint256 wBNBAmount) {
    slisBNB.approve(address(pancakeSwapRouter), slisBNBAmount);
    IV3SwapRouter.ExactInputSingleParams memory params = IV3SwapRouter.ExactInputSingleParams(
      address(slisBNB),
      address(wBNB),
      100,
      address(this),
      slisBNBAmount,
      slisBNBAmount, // amountOutMinimum
      0
    );
    wBNBAmount = pancakeSwapRouter.exactInputSingle(params);
  }

  function _requestConvertSlisBNBToBNB(
    address receiver,
    address tokenOut,
    uint256 slisBNBAmount
  ) internal returns (uint256 bnbAmount, uint256 requestUUID) {
    require(slisBNBAmount > 0, "slisBNB amount must be greater than 0");

    slisBNB.approve(address(listaStakeManager), slisBNBAmount);
    listaStakeManager.requestWithdraw(slisBNBAmount);
    requestUUID = listaStakeManager.requestUUID();
    (, bool isClaimable, uint256 slisBNBAmount, uint256 startTime, uint256 bnbAmount) = _getUserRequestStatus(
      requestUUID
    );

    _addUserRedeemRequest(receiver, requestUUID, isClaimable, startTime, bnbAmount, tokenOut, bnbAmount);

    return (bnbAmount, requestUUID);
  }

  function _claimConvertSlisBNBToBNB(
    address receiver,
    address tokenOut,
    uint256 requestUUID
  ) internal returns (uint256 bnbAmount) {
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
    for (uint256 i = requests.length - 1; i >= 0; i--) {
      if (requests[i].uuid == requestUUID) {
        idx = requests.length - 1 - i;
        slisBNBAmount = requests[i].amountInSnBnb;
        startTime = requests[i].startTime;
        (isClaimable, bnbAmount) = listaStakeManager.getUserRequestStatus(address(this), idx);
        return (idx, isClaimable, slisBNBAmount, startTime, bnbAmount);
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

  function _rateSlisBNBToBNBInstant(uint256 slisBNBAmount) internal view returns (uint256 bnbAmount) {
    (uint256 sqrtPriceX96, , , , , , ) = pancakeV3Pool.slot0();
    return PancakeLib.calculatePrice(sqrtPriceX96, false);
  }

  function _rateBNBToSlisBNBInstant(uint256 bnbAmount) internal view returns (uint256 slisBNBAmount) {
    (uint256 sqrtPriceX96, , , , , , ) = pancakeV3Pool.slot0();
    return PancakeLib.calculatePrice(sqrtPriceX96, true);
  }

  function _rateSlisBNBToBNBRequest(uint256 slisBNBAmount) internal view returns (uint256 bnbAmount) {
    return listaStakeManager.convertSnBnbToBnb(slisBNBAmount);
  }

  function _rateBNBToSlisBNBRequest(uint256 bnbAmount) internal view returns (uint256 slisBNBAmount) {
    return listaStakeManager.convertBnbToSnBnb(bnbAmount);
  }

  function _onlySupportedCollToken(address collToken) internal {
    require(
      collToken == address(slisBNB) || collToken == address(0) || collToken == address(wBNB),
      "Unsupported collateral token"
    );
  }

  function _onlySupportedDebtToken(address pool, address debtToken) internal {
    require(debtToken == IPool(pool).fxUSD(), "Unsupported debt token");
  }

  receive() external payable {}
}
