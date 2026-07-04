// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {EnumerableSet} from "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";
import {ReentrancyGuard} from "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import {StrategyBase} from "strategy-base/StrategyBase.sol";
import {IExchangeRouter} from "./interfaces/IExchangeRouter.sol";
import {IDataStore} from "./interfaces/IDataStore.sol";
import {IWETH} from "./interfaces/IWETH.sol";

/// @title GmPositionManager
/// @notice Position manager for GMX V2 GM pools on Arbitrum One.
/// @dev Balanced long token + short token deposits: both tokens are deposited together
///      to minimize price impact vs. single-token deposits where GMX would internally rebalance.
///      Withdrawals can optionally swap the long token to the short token atomically via longTokenSwapPath.
///      Async execution: deposit/withdraw create requests that keepers execute.
///      TYP: "GMX:GMBTCUSD:USDC-WBTC:0"
contract GmPositionManager is StrategyBase, ReentrancyGuard {
    using SafeERC20 for IERC20;
    using EnumerableSet for EnumerableSet.AddressSet;

    // ═══════════════════════════════════════ Constants ═══════════════════════════════════════

    /// @dev GMX DataStore set keys — membership tracks in-flight requests.
    bytes32 public constant DEPOSIT_LIST = keccak256(abi.encode("DEPOSIT_LIST"));
    bytes32 public constant WITHDRAWAL_LIST = keccak256(abi.encode("WITHDRAWAL_LIST"));

    // ═══════════════════════════════════════ Immutables ═══════════════════════════════════════

    IERC20 public immutable LONG_TOKEN;
    IERC20 public immutable SHORT_TOKEN;
    IERC20 public immutable GM_TOKEN;
    IWETH public immutable WETH;
    address public immutable MARKET;
    address public immutable ORDER_VAULT;
    address public immutable DEPOSIT_VAULT;
    address public immutable WITHDRAWAL_VAULT;
    address public immutable DATA_STORE;

    // ═══════════════════════════════════════ Storage ═══════════════════════════════════════

    string public TYP;
    address public exchangeRouter;
    address public router;
    address public reader;

    bytes32 public pendingDepositKey;
    bytes32 public pendingWithdrawalKey;

    /// @notice Addresses authorized to call operator-gated functions.
    EnumerableSet.AddressSet private _operators;

    // ═══════════════════════════════════════ Events ═══════════════════════════════════════

    event OperatorAdded(address indexed operator);
    event OperatorRemoved(address indexed operator);

    // ═══════════════════════════════════════ Errors ═══════════════════════════════════════

    error PendingDepositExists(bytes32 key);
    error PendingWithdrawalExists(bytes32 key);
    error NoPendingDeposit();
    error NoPendingWithdrawal();
    error InsufficientLongTokenBalance(uint256 available, uint256 required);
    error InsufficientShortTokenBalance(uint256 available, uint256 required);
    error InsufficientGmBalance(uint256 available, uint256 required);
    error MsgValueMismatch(uint256 sent, uint256 expected);
    error ETHTransferFailed();
    error KeyMismatch(bytes32 expected, bytes32 actual);
    error NotOperator(address caller);
    error AlreadyOperator(address addr);
    error NotInOperators(address addr);

    // ═══════════════════════════════════════ Modifiers ═══════════════════════════════════════

    modifier onlyOperator() {
        _onlyOperator();
        _;
    }

    // ═══════════════════════════════════════ Constructor ═══════════════════════════════════════

    constructor(
        address owner_,
        address exchangeRouter_,
        address router_,
        address longToken_,
        address shortToken_,
        address gmToken_,
        address weth_,
        address market_,
        address orderVault_,
        address depositVault_,
        address withdrawalVault_,
        address dataStore_,
        address reader_,
        string memory typ_
    ) Ownable(owner_) {
        require(
            exchangeRouter_ != address(0) && router_ != address(0) && longToken_ != address(0)
                && shortToken_ != address(0) && gmToken_ != address(0) && weth_ != address(0) && market_ != address(0)
                && orderVault_ != address(0) && depositVault_ != address(0) && withdrawalVault_ != address(0)
                && dataStore_ != address(0) && reader_ != address(0),
            ZeroAddress()
        );

        exchangeRouter = exchangeRouter_;
        router = router_;
        LONG_TOKEN = IERC20(longToken_);
        SHORT_TOKEN = IERC20(shortToken_);
        GM_TOKEN = IERC20(gmToken_);
        WETH = IWETH(weth_);
        MARKET = market_;
        ORDER_VAULT = orderVault_;
        DEPOSIT_VAULT = depositVault_;
        WITHDRAWAL_VAULT = withdrawalVault_;
        DATA_STORE = dataStore_;
        reader = reader_;
        TYP = typ_;
        _operators.add(owner_);
        emit OperatorAdded(owner_);
    }

    /// @notice Accept ETH refunds from GMX keeper execution fee overpayment.
    receive() external payable {}

    // ═══════════════════════════════════════ External — onlyOwner ═══════════════════════════════════════

    /// @notice Update the ExchangeRouter address after a GMX logic upgrade.
    function updateExchangeRouter(address newExchangeRouter) external onlyOwner {
        require(newExchangeRouter != address(0), ZeroAddress());
        exchangeRouter = newExchangeRouter;
    }

    /// @notice Update the Reader address after a GMX logic upgrade.
    function updateReader(address newReader) external onlyOwner {
        require(newReader != address(0), ZeroAddress());
        reader = newReader;
    }

    /// @notice Update the Router address after a GMX logic upgrade.
    /// @dev Revokes old router approvals. New approvals are granted per-call
    /// in deposit() and withdraw() for principle of least privilege.
    function updateRouter(address newRouter) external onlyOwner {
        require(newRouter != address(0), ZeroAddress());

        address oldRouter = router;
        LONG_TOKEN.forceApprove(oldRouter, 0);
        SHORT_TOKEN.forceApprove(oldRouter, 0);
        GM_TOKEN.forceApprove(oldRouter, 0);

        router = newRouter;
    }

    /// @notice Emergency: revoke all Router approvals to managed tokens.
    function revokeApprovals() external onlyOwner {
        LONG_TOKEN.forceApprove(router, 0);
        SHORT_TOKEN.forceApprove(router, 0);
        GM_TOKEN.forceApprove(router, 0);
    }

    /// @notice Emergency: revoke Router approval for a specific token.
    function revokeApproval(address token) external onlyOwner {
        IERC20(token).forceApprove(router, 0);
    }

    /// @notice Add an operator.
    function addOperator(address operator) external onlyOwner {
        require(operator != address(0), ZeroAddress());
        require(_operators.add(operator), AlreadyOperator(operator));
        emit OperatorAdded(operator);
    }

    /// @notice Remove an operator.
    function removeOperator(address operator) external onlyOwner {
        require(_operators.remove(operator), NotInOperators(operator));
        emit OperatorRemoved(operator);
    }

    /// @notice Clear the pending deposit key after keeper execution.
    function clearPendingDepositKey() external onlyOwner {
        pendingDepositKey = bytes32(0);
    }

    /// @notice Clear the pending withdrawal key after keeper execution.
    function clearPendingWithdrawalKey() external onlyOwner {
        pendingWithdrawalKey = bytes32(0);
    }

    // ═══════════════════════════════════════ External Payable — onlyOperator ═══════════════════════════════════════

    /// @notice Balanced deposit of long token + short token into the GM pool.
    /// @dev Both tokens are sent to the DepositVault in a single multicall, minimizing price
    ///      impact vs. single-token deposits where GMX would internally rebalance.
    /// @param longTokenAmount Amount of long token to deposit
    /// @param shortTokenAmount Amount of short token to deposit
    /// @param minGmTokens Minimum GM tokens to receive (slippage protection)
    /// @param executionFee GMX keeper execution fee (passed via msg.value)
    function deposit(uint256 longTokenAmount, uint256 shortTokenAmount, uint256 minGmTokens, uint256 executionFee)
        external
        payable
        onlyOperator
        nonReentrant
    {
        require(msg.value == executionFee, MsgValueMismatch(msg.value, executionFee));
        require(
            pendingDepositKey == bytes32(0) || isExecutedOrCancelled(pendingDepositKey, DEPOSIT_LIST),
            PendingDepositExists(pendingDepositKey)
        );

        address longToken = address(LONG_TOKEN);
        address shortToken = address(SHORT_TOKEN);

        uint256 longTokenBal = LONG_TOKEN.balanceOf(address(this));
        require(longTokenBal >= longTokenAmount, InsufficientLongTokenBalance(longTokenBal, longTokenAmount));

        uint256 shortTokenBal = SHORT_TOKEN.balanceOf(address(this));
        require(shortTokenBal >= shortTokenAmount, InsufficientShortTokenBalance(shortTokenBal, shortTokenAmount));

        bytes[] memory multicallData = new bytes[](4);
        multicallData[0] = abi.encodeCall(IExchangeRouter.sendWnt, (DEPOSIT_VAULT, executionFee));
        multicallData[1] = abi.encodeCall(IExchangeRouter.sendTokens, (longToken, DEPOSIT_VAULT, longTokenAmount));
        multicallData[2] = abi.encodeCall(IExchangeRouter.sendTokens, (shortToken, DEPOSIT_VAULT, shortTokenAmount));
        multicallData[3] = abi.encodeCall(
            IExchangeRouter.createDeposit,
            (IExchangeRouter.CreateDepositParams({
                    addresses: IExchangeRouter.CreateDepositParamsAddresses({
                        receiver: address(this),
                        callbackContract: address(0),
                        uiFeeReceiver: address(0),
                        market: MARKET,
                        initialLongToken: longToken,
                        initialShortToken: shortToken,
                        longTokenSwapPath: new address[](0),
                        shortTokenSwapPath: new address[](0)
                    }),
                    minMarketTokens: minGmTokens,
                    shouldUnwrapNativeToken: false,
                    executionFee: executionFee,
                    callbackGasLimit: 0,
                    dataList: new bytes32[](0)
                }))
        );
        LONG_TOKEN.forceApprove(router, longTokenAmount);
        SHORT_TOKEN.forceApprove(router, shortTokenAmount);
        bytes[] memory results = IExchangeRouter(exchangeRouter).multicall{value: msg.value}(multicallData);
        pendingDepositKey = abi.decode(results[3], (bytes32));
    }

    /// @notice Withdraw from the GM pool. Returns proportional long token + short token, or optionally
    ///         swaps the long token to the short token atomically via the GMX long-token swap path.
    /// @param gmAmount Amount of GM tokens to withdraw (18 decimals)
    /// @param minLongOut Minimum long token output (slippage protection).
    ///        When singleTokenShort=false: minimum long token amount to receive.
    ///        When singleTokenShort=true: minimum short token amount from the long→short swap.
    ///        Per GMX IWithdrawalUtils: "if longTokenSwapPath is present, minLongTokenAmount
    ///        is the minimum amount AFTER the swap."
    /// @param minShortOut Minimum short token to receive from the short token portion (slippage protection)
    /// @param executionFee GMX keeper execution fee (passed via msg.value)
    function withdraw(uint256 gmAmount, uint256 minLongOut, uint256 minShortOut, uint256 executionFee)
        external
        payable
        onlyOperator
        nonReentrant
    {
        require(msg.value == executionFee, MsgValueMismatch(msg.value, executionFee));
        require(
            pendingWithdrawalKey == bytes32(0) || isExecutedOrCancelled(pendingWithdrawalKey, WITHDRAWAL_LIST),
            PendingWithdrawalExists(pendingWithdrawalKey)
        );

        uint256 gmBal = GM_TOKEN.balanceOf(address(this));
        require(gmBal >= gmAmount, InsufficientGmBalance(gmBal, gmAmount));

        bytes[] memory multicallData = new bytes[](3);
        multicallData[0] = abi.encodeCall(IExchangeRouter.sendWnt, (WITHDRAWAL_VAULT, executionFee));
        multicallData[1] = abi.encodeCall(IExchangeRouter.sendTokens, (address(GM_TOKEN), WITHDRAWAL_VAULT, gmAmount));
        multicallData[2] = abi.encodeCall(
            IExchangeRouter.createWithdrawal,
            (IExchangeRouter.CreateWithdrawalParams({
                    addresses: IExchangeRouter.CreateWithdrawalParamsAddresses({
                        receiver: address(this),
                        callbackContract: address(0),
                        uiFeeReceiver: address(0),
                        market: MARKET,
                        longTokenSwapPath: new address[](0),
                        shortTokenSwapPath: new address[](0)
                    }),
                    minLongTokenAmount: minLongOut,
                    minShortTokenAmount: minShortOut,
                    shouldUnwrapNativeToken: false,
                    executionFee: executionFee,
                    callbackGasLimit: 0,
                    dataList: new bytes32[](0)
                }))
        );
        // approve the router to pull the GM tokens for the withdrawal
        GM_TOKEN.forceApprove(router, gmAmount);
        bytes[] memory results = IExchangeRouter(exchangeRouter).multicall{value: msg.value}(multicallData);
        pendingWithdrawalKey = abi.decode(results[2], (bytes32));
    }

    // ═══════════════════════════════════════ External — onlyOperator ═══════════════════════════════════════

    /// @notice Cancel a pending deposit and recover tokens.
    function cancelDeposit(bytes32 key) external onlyOperator nonReentrant {
        require(pendingDepositKey != bytes32(0), NoPendingDeposit());
        require(key == pendingDepositKey, KeyMismatch(pendingDepositKey, key));
        IExchangeRouter(exchangeRouter).cancelDeposit(key);
        pendingDepositKey = bytes32(0);
    }

    /// @notice Cancel a pending withdrawal and recover GM tokens.
    function cancelWithdrawal(bytes32 key) external onlyOperator nonReentrant {
        require(pendingWithdrawalKey != bytes32(0), NoPendingWithdrawal());
        require(key == pendingWithdrawalKey, KeyMismatch(pendingWithdrawalKey, key));
        IExchangeRouter(exchangeRouter).cancelWithdrawal(key);
        pendingWithdrawalKey = bytes32(0);
    }

    /// @notice Unwrap any WETH balance and sweep all native ETH to the recipient.
    /// @dev ETH accumulates from GMX keeper execution fee refunds. WETH may arrive
    ///      from GMX withdrawal execution. Both are unwrapped/swept in one call.
    /// @param recipient The address to receive the ETH.
    function sweepETH(address payable recipient) external onlyOperator nonReentrant {
        require(recipient != address(0), ZeroAddress());

        uint256 wethBal = WETH.balanceOf(address(this));
        if (wethBal > 0) {
            WETH.withdraw(wethBal);
        }

        uint256 ethBal = address(this).balance;
        if (ethBal > 0) {
            (bool success,) = recipient.call{value: ethBal}("");
            require(success, ETHTransferFailed());
        }
    }

    // ═══════════════════════════════════════ Public Payable ═══════════════════════════════════════

    /// @notice Override multiCall to use operator access control instead of onlyOwner.
    function multiCall(MultiCallArgs[] memory cdata_) public payable override onlyOperator returns (bytes[] memory) {
        return _multiCall(cdata_);
    }

    // ═══════════════════════════════════════ Public View ═══════════════════════════════════════

    /// @notice Get all registered operators.
    function getOperators() public view returns (address[] memory) {
        return _operators.values();
    }

    /// @notice Get all raw balances and pending keys for the Go driver.
    /// @return gmBalance GM token balance (18 decimals)
    /// @return idleLongToken Long token balance
    /// @return idleShortToken Short token balance
    /// @return pendingDeposit Current pending deposit key
    /// @return pendingWithdrawal Current pending withdrawal key
    function getRawBalance()
        public
        view
        returns (
            uint256 gmBalance,
            uint256 idleLongToken,
            uint256 idleShortToken,
            bytes32 pendingDeposit,
            bytes32 pendingWithdrawal
        )
    {
        gmBalance = GM_TOKEN.balanceOf(address(this));
        idleLongToken = LONG_TOKEN.balanceOf(address(this));
        idleShortToken = SHORT_TOKEN.balanceOf(address(this));
        pendingDeposit = pendingDepositKey;
        pendingWithdrawal = pendingWithdrawalKey;
    }

    /// @notice Returns true if the given request key is no longer present in the DataStore list.
    /// @dev GMX removes a request from its list upon keeper execution or cancellation.
    ///      Returns false if key is zero (no request was ever submitted).
    /// @param key The pending request key (deposit or withdrawal)
    /// @param listKey The DataStore set key to check against (DEPOSIT_LIST or WITHDRAWAL_LIST)
    function isExecutedOrCancelled(bytes32 key, bytes32 listKey) public view returns (bool) {
        if (key == bytes32(0)) return false;
        return !IDataStore(DATA_STORE).containsBytes32(listKey, key);
    }

    // ═══════════════════════════════════════ Internal Functions ═══════════════════════════════════════

    function _onlyOperator() internal view {
        require(_operators.contains(msg.sender), NotOperator(msg.sender));
    }
}
