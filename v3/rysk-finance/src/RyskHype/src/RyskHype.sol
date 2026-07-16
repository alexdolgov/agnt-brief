/**
 * SPDX-License-Identifier: UNLICENSED
 */
pragma solidity ^0.8.22;

import './Actions.sol';
import './MMarket.sol';
import './IOtoken.sol';
import './IAavePool.sol';
import "./ISwapRouterHype.sol";
import './IController.sol';
import './IOtokenFactory.sol';
import './MMarketOperations.sol';


import 'lib/solmate/src/tokens/ERC20.sol';
import 'lib/solmate/src/utils/SafeTransferLib.sol';

import 'lib/openzeppelin-contracts/contracts/utils/cryptography/ECDSA.sol';
import 'lib/openzeppelin-contracts-upgradeable/contracts/access/OwnableUpgradeable.sol';
import 'lib/openzeppelin-contracts-upgradeable/contracts/utils/ReentrancyGuardUpgradeable.sol';
import 'lib/openzeppelin-contracts-upgradeable/contracts/utils/cryptography/EIP712Upgradeable.sol';

/**
 * @title Rysk - this contract is the operator on both mmarket and Gamma
 * @dev assumed no funds are stored on this contract
 */
contract RyskHype is EIP712Upgradeable, OwnableUpgradeable, ReentrancyGuardUpgradeable {

  /// @dev operator
  address public operator;
  /// @dev mmarket
  MMarket public mmarket;
  /// @dev controller
  IController public controller;
  /// @dev otokenfactory
  IOtokenFactory public factory;
  /// @dev Hyperlend Pool contract - used for Flash Loans
  address public flashLoanPool;
  // hyperswap router
  address public swapRouter;
  /// @dev margin pool contract
  address public marginPool;
  /// @notice emits an event when there is a change in operator
  event OperatorChanged(address newOperator, address oldOperator);

  function initialize() external initializer {
    __EIP712_init('rysk', '0.0.0');
    __Ownable_init(msg.sender);
    __ReentrancyGuard_init();
  }

  function setOperator(address _operator) external {
    _checkOwner();
    emit OperatorChanged(_operator, operator);
    operator = _operator;
  }

  function setController(address _controller) external {
    _checkOwner();
    controller = IController(_controller);
  }

  function setMMarket(address _mmarket) external {
    _checkOwner();
    mmarket = MMarket(_mmarket);
  }

  function setFactory(address _factory) external {
    _checkOwner();
    factory = IOtokenFactory(_factory);
  }

  function setFlashLoanPool(address _flashLoanPool) external {
    _checkOwner();
    flashLoanPool = _flashLoanPool;
  }

  function setSwapRouter(address _swapRouter) external {
    _checkOwner();
    swapRouter = _swapRouter;
  }

  function setMarginPool(address _marginPool) external {
    _checkOwner();
    marginPool = _marginPool;
  }

  /// @notice sets approval for the margin pool to remove funds for an asset 
  function setAssetApproval(address _asset, bool _approval) external {
    _checkOwner();
    if (_approval) {
      SafeTransferLib.safeApprove(ERC20(_asset), address(marginPool), type(uint256).max);
    } else {
      SafeTransferLib.safeApprove(ERC20(_asset), address(marginPool), 0);
    }
  }

  function _checkOperator() internal view {
    if (operator != _msgSender()) revert('bad operator');
  }

  struct Otoken {
    address collateral;
    address underlying;
    address strikeAsset;
    uint256 strike;
    uint256 expiration;
    bool isPut;
    bool isPhysicallySettled;
  }

  /// @notice ingresso - responsible for handling mmarket and opyn interactions, doing mmarket operations then gamma (otoken creation always happens first)
  function ingresso_MMarketThenGamma(Otoken[] memory otoken, MMarketOperations.Operation[] memory operations, Actions.ActionArgs[] memory actions) external nonReentrant {
    _checkOperator();
    if (otoken.length == 1) {getOrDeployOtoken(otoken[0]);}
    if (operations.length != 0) {mmarket.operate(operations);}
    if (actions.length != 0)  {controller.operate(actions);}
  }

  /// @notice ingresso - responsible for handling mmarket and opyn interactions, doing gamma operations then mmarket (otoken creation always happens first)
  function ingresso_GammaThenMMarket(Otoken[] memory otoken, Actions.ActionArgs[] memory actions, MMarketOperations.Operation[] memory operations) external nonReentrant {
    _checkOperator();
    if (otoken.length == 1) {getOrDeployOtoken(otoken[0]);}
    if (actions.length != 0) {controller.operate(actions);}
    if (operations.length != 0)  {mmarket.operate(operations);}
  }

  /**
	 * @notice Either retrieves the option token if it already exists, or deploy it
	 */
	function getOrDeployOtoken(Otoken memory otoken) internal {

		address otokenFromFactory = factory.getOtoken(otoken.underlying, otoken.strikeAsset, otoken.collateral, otoken.strike,  otoken.expiration, otoken.isPut, otoken.isPhysicallySettled);
		if (otokenFromFactory != address(0)) {
      if (ERC20(otokenFromFactory).allowance(address(this), address(mmarket)) == 0) {
        SafeTransferLib.safeApprove(ERC20(otokenFromFactory), address(mmarket), type(uint256).max);
      }
			return;
		}

		address otokenCreated = factory.createOtoken(otoken.underlying, otoken.strikeAsset, otoken.collateral, otoken.strike, otoken.expiration, otoken.isPut, otoken.isPhysicallySettled);
    SafeTransferLib.safeApprove(ERC20(otokenCreated), address(mmarket), type(uint256).max);
	}

  /**
	 * @notice Executes a flash loan to this contract. Logic and repayment contained in executeOperation()
	 */
  function flashLoanRedeem(address asset, uint256 amount, bytes calldata params) external {
    _checkOperator();

    IAavePool(flashLoanPool).flashLoanSimple(
      address(this),
      asset,
      amount,
      params,
      0
    );
  }
  
  /**
	 * @notice Callback from flash loan provider. Executes a physical option redemption using loaned funds, then swaps collateral back into borrowed asset to repay loan.
	 */
  function executeOperation(
    address asset, // loaned asset
    uint256 amount, // loaned amount
    uint256 premium, // the fee amount to repay
    address initiator, // the address of the flash loan initiator
    bytes calldata params // params passed when initiating the flash loan
  ) external nonReentrant returns (bool) {
    require(msg.sender == flashLoanPool, "Caller is not flashLoanPool");
    require(initiator == address(this), "UNAUTHORIZED"); // make sure the flash loan call came from our access controlled function

    (Actions.ActionArgs memory args, address redeemer, bytes memory swapRoute, uint256 amountInMaximum) = Actions._constructFlashLoanRedeemActionArgs(params, address(this));
    _retrieveOtokenForFlashLoanRedeem(redeemer, args.asset, args.amount);

    Actions.ActionArgs[] memory argsArray = new Actions.ActionArgs[](1);
    argsArray[0] = args;

    controller.operate(argsArray);

    // ====== hyperswap tx ========
    address collateral = IOtoken(args.asset).collateralAsset();

    SafeTransferLib.safeApprove(ERC20(collateral), swapRouter, amountInMaximum);

    {
      ISwapRouterHype.ExactOutputParams memory swapParams = ISwapRouterHype.ExactOutputParams({
        path: swapRoute,
        recipient: address(this),
        deadline: block.timestamp,
        amountOut: premium + amount - ERC20(asset).balanceOf(address(this)),
        amountInMaximum: amountInMaximum
		  });

      // Executes the swap to repay loan
      ISwapRouterHype(swapRouter).exactOutput(swapParams);
    }
    // zero out approval
    SafeTransferLib.safeApprove(ERC20(collateral), swapRouter, 0);

    // ====== send profit to redeemer ========
    // no funds held on contract so any balance should belong to user
    {
      uint256 userProfitCollateral = ERC20(collateral).balanceOf(address(this));
      SafeTransferLib.safeTransfer(ERC20(collateral), redeemer, userProfitCollateral);
    }

    // ====== Hyperlend flash loan repayment ========
		SafeTransferLib.safeApprove(ERC20(asset), flashLoanPool, premium + amount);

    return true;
  }

  function _retrieveOtokenForFlashLoanRedeem(address redeemer, address otoken, uint256 amount) internal {
    // create operation to withdraw otoken from mmarket
    MMarketOperations.Operation[] memory operationsArray = new MMarketOperations.Operation[](1);
    MMarketOperations.Operation memory withdrawOperation = MMarketOperations.Operation(
      MMarketOperations.OperationType.Withdraw,
      redeemer, // user to withdraw from
      address(this), // withdraw to this address
      otoken, // otoken address
      address(0), // asset_2 not needed
      amount, // amount of otoken to withdraw
      0, // amount_2 not needed
      bytes("0")
    );
    operationsArray[0] = withdrawOperation;

    mmarket.operate(operationsArray);
  }
}
