// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;

import {IBentoBoxV1} from "interfaces/IBentoBoxV1.sol";
import {ICauldronV4GmxV2} from "interfaces/ICauldronV4GmxV2.sol";
import {ICauldronV4} from "interfaces/ICauldronV4.sol";
import {IERC20} from "BoringSolidity/interfaces/IERC20.sol";
import {OperatableV2} from "mixins/OperatableV2.sol";
import {LibClone} from "solady/utils/LibClone.sol";
import {SafeTransferLib} from "solady/utils/SafeTransferLib.sol";
import {IOracle} from "interfaces/IOracle.sol";
import {IGmxV2Deposit, IGmxV2WithdrawalCallbackReceiver, IGmxV2Withdrawal, IGmxV2EventUtils, IGmxV2Market, IGmxDataStore, IGmxV2DepositCallbackReceiver, IGmxReader, IGmxV2DepositHandler, IGmxV2WithdrawalHandler, IGmxV2ExchangeRouter} from "interfaces/IGmxV2.sol";
import {IWETH} from "interfaces/IWETH.sol";

struct GmRouterOrderParams {
    address inputToken;
    bool deposit;
    uint128 inputAmount;
    uint128 executionFee;
    uint128 minOutput;
    uint128 minOutLong; // 0 for deposit
}

contract GMXV2Experiment_RouterOrder is IGmxV2DepositCallbackReceiver, IGmxV2WithdrawalCallbackReceiver {
    using SafeTransferLib for address;

    error ErrFinalized();
    error ErrNotUser();
    error ErrAlreadyInitialized();
    error ErrMinOutTooLarge();
    error ErrUnauthorized();
    error ErrWrongUser();

    event LogRefundWETH(address indexed user, uint256 amount);

    uint256 internal constant EXCHANGE_RATE_PRECISION = 1e18;

    bytes32 public constant DEPOSIT_LIST = keccak256(abi.encode("DEPOSIT_LIST"));
    bytes32 public constant WITHDRAWAL_LIST = keccak256(abi.encode("WITHDRAWAL_LIST"));
    bytes32 public constant ORDER_KEEPER = keccak256(abi.encode("ORDER_KEEPER"));

    uint256 public constant CALLBACK_GAS_LIMIT = 1_000_000;

    IGmxV2ExchangeRouter public immutable GMX_ROUTER;
    IGmxReader public immutable GMX_READER;
    IGmxDataStore public immutable DATASTORE;
    address public immutable DEPOSIT_VAULT;
    address public immutable WITHDRAWAL_VAULT;
    address public immutable SYNTHETICS_ROUTER;
    IWETH public immutable WETH;

    address public user;
    bytes32 public orderKey;
    address public market;
    address public shortToken;
    IOracle public oracle;
    uint128 public inputAmount;
    uint128 public minOut;
    uint128 public minOutLong;
    bool public depositType;
    bool public isHomogenousMarket;

    GMXV2Experiment_OrderAgent public orderAgent;

    modifier onlyUser() virtual {
        if (msg.sender != user) {
            revert ErrNotUser();
        }
        _;
    }

    modifier onlyDepositHandler() {
        if (msg.sender != address(GMX_ROUTER.depositHandler())) {
            revert ErrUnauthorized();
        }
        _;
    }

    modifier onlyWithdrawalHandler() {
        if (msg.sender != address(GMX_ROUTER.withdrawalHandler())) {
            revert ErrUnauthorized();
        }
        _;
    }

    receive() external payable virtual {
        WETH.deposit{value: msg.value}();
    }

    constructor(IGmxV2ExchangeRouter _gmxRouter, address _syntheticsRouter, IGmxReader _gmxReader, IWETH _weth) {
        GMX_ROUTER = _gmxRouter;
        GMX_READER = _gmxReader;
        SYNTHETICS_ROUTER = _syntheticsRouter;
        DATASTORE = IGmxDataStore(_gmxRouter.dataStore());
        DEPOSIT_VAULT = IGmxV2DepositHandler(_gmxRouter.depositHandler()).depositVault();
        WITHDRAWAL_VAULT = IGmxV2WithdrawalHandler(_gmxRouter.withdrawalHandler()).withdrawalVault();
        WETH = _weth;
    }

    function init(address _market, address _user, GmRouterOrderParams memory params) external payable {
        if (user != address(0)) {
            revert ErrAlreadyInitialized();
        }

        orderAgent = GMXV2Experiment_OrderAgent(msg.sender);
        user = _user;
        market = _market;
        IGmxV2Market.Props memory props = GMX_READER.getMarket(address(DATASTORE), market);

        inputAmount = params.inputAmount;
        minOut = params.minOutput;
        minOutLong = params.minOutLong;

        if (uint256(params.minOutput) + uint256(params.minOutLong) > type(uint128).max) {
            revert ErrMinOutTooLarge();
        }

        isHomogenousMarket = props.longToken == props.shortToken;
        shortToken = props.shortToken;
        depositType = params.deposit;

        if (depositType) {
            shortToken.safeApprove(address(SYNTHETICS_ROUTER), params.inputAmount);
            orderKey = _createDepositOrder(
                market,
                props.shortToken,
                props.longToken,
                params.inputAmount,
                params.minOutput,
                params.executionFee
            );
        } else {
            market.safeApprove(address(SYNTHETICS_ROUTER), params.inputAmount);
            orderKey = _createWithdrawalOrder(params.inputAmount, params.minOutput, params.minOutLong, params.executionFee);
        }
    }

    function cancelOrder() external onlyUser {
        if (depositType) {
            GMX_ROUTER.cancelDeposit(orderKey);
        } else {
            GMX_ROUTER.cancelWithdrawal(orderKey);
        }
    }

    function isActive() public view returns (bool) {
        return DATASTORE.containsBytes32(DEPOSIT_LIST, orderKey) || DATASTORE.containsBytes32(WITHDRAWAL_LIST, orderKey);
    }

    function _createDepositOrder(
        address _gmToken,
        address _inputToken,
        address _underlyingToken,
        uint128 _usdcAmount,
        uint128 _minGmTokenOutput,
        uint128 _executionFee
    ) private returns (bytes32) {
        GMX_ROUTER.sendWnt{value: _executionFee}(address(DEPOSIT_VAULT), _executionFee);
        GMX_ROUTER.sendTokens(_inputToken, address(DEPOSIT_VAULT), _usdcAmount);

        address[] memory emptyPath = new address[](0);

        IGmxV2Deposit.CreateDepositParams memory params = IGmxV2Deposit.CreateDepositParams({
            receiver: address(this),
            callbackContract: address(this),
            uiFeeReceiver: address(0),
            market: _gmToken,
            initialLongToken: _underlyingToken,
            initialShortToken: _inputToken,
            longTokenSwapPath: emptyPath,
            shortTokenSwapPath: emptyPath,
            minMarketTokens: _minGmTokenOutput,
            shouldUnwrapNativeToken: false,
            executionFee: _executionFee,
            callbackGasLimit: CALLBACK_GAS_LIMIT
        });

        return GMX_ROUTER.createDeposit(params);
    }

    function _createWithdrawalOrder(
        uint128 _inputAmount,
        uint128 _minUsdcOutput,
        uint128 _minOutLong,
        uint128 _executionFee
    ) private returns (bytes32) {
        GMX_ROUTER.sendWnt{value: _executionFee}(address(WITHDRAWAL_VAULT), _executionFee);
        GMX_ROUTER.sendTokens(market, address(WITHDRAWAL_VAULT), _inputAmount);

        address[] memory path = new address[](1);
        path[0] = market;

        address[] memory emptyPath = new address[](0);

        IGmxV2Withdrawal.CreateWithdrawalParams memory params = IGmxV2Withdrawal.CreateWithdrawalParams({
            receiver: address(this),
            callbackContract: address(this),
            uiFeeReceiver: address(0),
            market: market,
            longTokenSwapPath: isHomogenousMarket ? emptyPath : path,
            shortTokenSwapPath: emptyPath,
            minLongTokenAmount: _minOutLong,
            minShortTokenAmount: _minUsdcOutput,
            shouldUnwrapNativeToken: false,
            executionFee: _executionFee,
            callbackGasLimit: CALLBACK_GAS_LIMIT
        });

        return GMX_ROUTER.createWithdrawal(params);
    }

    function _depositMarketTokensAsCollateral() internal {
        uint256 received = IERC20(market).balanceOf(address(this));
        market.safeTransfer(user, received);
    }

    function afterDepositExecution(
        bytes32 /*key*/,
        IGmxV2Deposit.Props memory deposit,
        IGmxV2EventUtils.EventLogData memory /*eventData*/
    ) external override onlyDepositHandler {
        // verify that the deposit was from this address
        if (deposit.addresses.account != address(this)) {
            revert ErrWrongUser();
        }
        _depositMarketTokensAsCollateral();
    }

    function afterWithdrawalCancellation(
        bytes32 /*key*/,
        IGmxV2Withdrawal.Props memory withdrawal,
        IGmxV2EventUtils.EventLogData memory /*eventData*/
    ) external override onlyWithdrawalHandler {
        // verify that the withdrawal was from this address
        if (withdrawal.addresses.account != address(this)) {
            revert ErrWrongUser();
        }
        _depositMarketTokensAsCollateral();
    }

    function afterDepositCancellation(
        bytes32 key,
        IGmxV2Deposit.Props memory deposit,
        IGmxV2EventUtils.EventLogData memory eventData
    ) external override {}

    function afterWithdrawalExecution(
        bytes32 key,
        IGmxV2Withdrawal.Props memory withdrawal,
        IGmxV2EventUtils.EventLogData memory eventData
    ) external override {}

    function refundWETH() public {
        emit LogRefundWETH(user, address(WETH).safeTransferAll(user));
    }

    function withdrawAll(address token) public onlyUser {
        if (token != address(0)) {
            token.safeTransferAll(user);
        } else {
            address(WETH).safeTransferAll(user);
            address(market).safeTransferAll(user);
        }
    }
}

contract GMXV2Experiment_OrderAgent is OperatableV2 {
    using SafeTransferLib for address;
    event LogOrderCreated(address indexed order, address indexed user, GmRouterOrderParams params);

    address public immutable orderImplementation;

    constructor(address _orderImplementation, address _owner) OperatableV2(_owner) {
        orderImplementation = _orderImplementation;
    }

    function createOrder(
        address market,
        address user,
        GmRouterOrderParams memory params
    ) external payable onlyOperators returns (address order) {
        order = LibClone.clone(orderImplementation);
        params.inputToken.safeTransferFrom(msg.sender, address(order), params.inputAmount);
        GMXV2Experiment_RouterOrder(payable(order)).init{value: msg.value}(market, user, params);

        emit LogOrderCreated(order, user, params);
    }
}
