// SPDX-License-Identifier: GPL-3.0-only

pragma solidity 0.8.18;

import "../../interfaces/CustomErrors.sol";
import "../../interfaces/IAerodromeNonfungiblePositionManager.sol";
import "../../interfaces/IAerodromeSwapRouter.sol";
import "../../interfaces/IHedgedPool.sol";
import "../../interfaces/INonfungiblePositionManager.sol";
import "../../interfaces/IWrappedToken.sol";
import "../../libs/GPv2Order.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/security/ReentrancyGuardUpgradeable.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/utils/structs/EnumerableMap.sol";
import "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";
import "@uniswap/v3-periphery/contracts/interfaces/ISwapRouter.sol";
import {AerodromeOrdersLib} from "../../libs/AerodromeOrdersLib.sol";
import {BorrowLib} from "../../libs/BorrowLib.sol";
import {IController} from "../../interfaces/IGamma.sol";
import {UniswapOrdersLib} from "../../libs/UniswapOrdersLib.sol";

contract BaseHedger is OwnableUpgradeable, ReentrancyGuardUpgradeable {
    using SafeERC20 for IERC20;
    using GPv2Order for bytes;
    using EnumerableMap for EnumerableMap.UintToUintMap;

    address internal constant WETH_ADDRESS =
        0x4200000000000000000000000000000000000006;
    address public constant COW_SETTLEMENT =
        0x9008D19f58AAbD9eD0D60971565AA8510560ab41;
    address public constant COW_RELAYER =
        0xC92E8bdf79f0507f65a392b0ab4667716BFE0110;

    IHedgedPool private hedgedPool;
    mapping(address => INonfungiblePositionManager) public positionManagers;
    IController private controller;

    mapping(address => EnumerableMap.UintToUintMap) internal hedgeOrders;
    mapping(address => uint256) public externalPendingDeposits;
    mapping(address => EnumerableSet.UintSet) internal activeHedgeOrderTicksIds;

    mapping(address => bool) public whitelistedSwapRouters;
    mapping(address => bool) public whitelistedTokens;

    mapping(bytes => CowSwapOrderSubmitted) internal cowSwapOrders;

    mapping(address => int256) public limitOrdersExecutionTicks;

    mapping(address => bytes32) public limitOrdersExecutionIds;

    struct CowSwapOrderSubmitted {
        bytes32 kind;
        address sellToken;
        address buyToken;
        uint256 sellAmount;
        uint256 buyAmount;
        bool submitted;
        bool completed;
        bool success;
    }

    struct CowSwapOrderCompletedInput {
        bytes orderId;
        address sellToken;
        address buyToken;
        uint256 executedSellAmount;
        uint256 executedBuyAmount;
    }

    modifier onlyAuthorized() {
        if (!hedgedPool.keepers(msg.sender) && msg.sender != owner()) {
            revert CustomErrors.Unauthorized();
        }
        _;
    }

    constructor() {
        _disableInitializers();
    }

    /// @notice Initialize the hedger
    function __BaseHedger_init(
        address _hedgedPool,
        address _controller
    ) external payable initializer {
        __Ownable_init();
        _updateConfig(_hedgedPool, _controller);
    }

    function hedgerType() external pure returns (string memory) {
        return "BaseHedger";
    }

    /// @notice Update hedger configuration
    function updateConfig(
        address _hedgedPool,
        address _controller
    ) external onlyOwner {
        _updateConfig(_hedgedPool, _controller);
    }

    function setPositionManager(
        address token,
        address manager
    ) external onlyOwner {
        positionManagers[token] = INonfungiblePositionManager(manager);
    }

    function whitelistSwapRouter(
        address router,
        bool isWhitelisted
    ) external onlyOwner {
        whitelistedSwapRouters[router] = isWhitelisted;
    }

    function whitelistToken(
        address token,
        bool isWhitelisted
    ) external onlyOwner {
        whitelistedTokens[token] = isWhitelisted;
    }

    function _updateConfig(address _hedgedPool, address _controller) internal {
        hedgedPool = IHedgedPool(_hedgedPool);
        controller = IController(_controller);
    }

    function _wrapEth(uint256 amount) internal {
        IWrappedToken(WETH_ADDRESS).deposit{value: amount}();
    }

    function depositToPool(
        address token,
        uint256 amount,
        bool needWrap
    ) external onlyAuthorized nonReentrant {
        if (needWrap) {
            _wrapEth(amount);
        }

        BorrowLib.depositToPoolAndTransfer(hedgedPool, token, amount);
    }

    function hedgeOrdersForToken(
        address tokenAddress
    ) external view returns (UniswapOrdersLib.TickTokenId[] memory) {
        return
            UniswapOrdersLib.ordersForToken(
                hedgeOrders,
                activeHedgeOrderTicksIds,
                tokenAddress
            );
    }

    function _getPositionManager(
        address token
    ) internal view returns (INonfungiblePositionManager) {
        INonfungiblePositionManager positionManager = positionManagers[token];
        if (address(positionManager) == address(0)) {
            revert CustomErrors.PositionManagerIsNotSet(token);
        }
        return positionManager;
    }

    function limitOrderForAmountBatch(
        address tokenAddress,
        UniswapOrdersLib.LimitOrderParams[] calldata params
    ) external onlyAuthorized {
        UniswapOrdersLib.limitOrderForAmountBatch(
            hedgedPool,
            _getPositionManager(tokenAddress),
            hedgeOrders,
            activeHedgeOrderTicksIds,
            limitOrdersExecutionTicks,
            limitOrdersExecutionIds,
            tokenAddress,
            params
        );
    }

    function _getAerodromePositionManager(
        address token
    ) internal view returns (IAerodromeNonfungiblePositionManager) {
        INonfungiblePositionManager positionManager = positionManagers[token];
        if (address(positionManager) == address(0)) {
            revert CustomErrors.PositionManagerIsNotSet(token);
        }
        // Cast to Aerodrome interface - same address, different interface
        return IAerodromeNonfungiblePositionManager(address(positionManager));
    }

    /// @notice Create limit orders using Aerodrome position manager (tickSpacing instead of fee)
    function limitOrderForAmountBatchAerodrome(
        address tokenAddress,
        UniswapOrdersLib.LimitOrderParams[] calldata params
    ) external onlyAuthorized {
        AerodromeOrdersLib.limitOrderForAmountBatch(
            hedgedPool,
            _getAerodromePositionManager(tokenAddress),
            hedgeOrders,
            activeHedgeOrderTicksIds,
            limitOrdersExecutionTicks,
            limitOrdersExecutionIds,
            tokenAddress,
            params
        );
    }

    function closeAllLimitOrders(
        address tokenAddress
    )
        external
        onlyAuthorized
        returns (address, address, uint256, uint256, int256, int256)
    {
        return
            UniswapOrdersLib.closeAllLimitOrders(
                controller,
                hedgedPool,
                _getPositionManager(tokenAddress),
                hedgeOrders,
                activeHedgeOrderTicksIds,
                limitOrdersExecutionTicks,
                limitOrdersExecutionIds,
                tokenAddress
            );
    }

    function preparePoolChange(address tokenAddress) external onlyOwner {
        UniswapOrdersLib.closeAllLimitOrders(
            controller,
            hedgedPool,
            _getPositionManager(tokenAddress),
            hedgeOrders,
            activeHedgeOrderTicksIds,
            limitOrdersExecutionTicks,
            limitOrdersExecutionIds,
            tokenAddress
        );
        EnumerableMap.UintToUintMap storage existingOrders = hedgeOrders[
            tokenAddress
        ];

        while (existingOrders.length() > 0) {
            (uint256 key, ) = existingOrders.at(0);
            existingOrders.remove(key);
        }

        limitOrdersExecutionTicks[tokenAddress] = UniswapOrdersLib
            .TICK_MODIFIER;
        limitOrdersExecutionIds[tokenAddress] = bytes32(0);
    }

    struct LimitOrderExecutionInfo {
        int256 executionTick;
        bytes32 executionId;
    }

    function limitOrderExecutionInfo(
        address tokenAddress
    ) external view returns (LimitOrderExecutionInfo memory) {
        return
            LimitOrderExecutionInfo({
                executionTick: limitOrdersExecutionTicks[tokenAddress],
                executionId: limitOrdersExecutionIds[tokenAddress]
            });
    }

    function marketSell(
        address swapRouter,
        address tokenIn,
        address tokenOut,
        uint256 amountIn,
        uint256 amountOutMin,
        uint24 poolFee,
        uint256 deadline
    ) external onlyAuthorized {
        if (!whitelistedSwapRouters[swapRouter]) {
            revert CustomErrors.SwapRouterIsNotWhitelisted();
        }
        if (!whitelistedTokens[tokenIn] || !whitelistedTokens[tokenOut]) {
            revert CustomErrors.TokenIsNotWhitelisted();
        }
        UniswapOrdersLib.marketSell(
            hedgedPool,
            ISwapRouter(swapRouter),
            tokenIn,
            tokenOut,
            amountIn,
            amountOutMin,
            poolFee,
            deadline
        );
    }

    function marketBuy(
        address swapRouter,
        address tokenIn,
        address tokenOut,
        uint256 amountInMax,
        uint256 amountOut,
        uint24 poolFee,
        uint256 deadline
    ) external onlyAuthorized {
        if (!whitelistedSwapRouters[swapRouter]) {
            revert CustomErrors.SwapRouterIsNotWhitelisted();
        }
        if (!whitelistedTokens[tokenIn] || !whitelistedTokens[tokenOut]) {
            revert CustomErrors.TokenIsNotWhitelisted();
        }
        UniswapOrdersLib.marketBuy(
            hedgedPool,
            ISwapRouter(swapRouter),
            tokenIn,
            tokenOut,
            amountInMax,
            amountOut,
            poolFee,
            deadline
        );
    }

    /// @notice Market sell using Aerodrome Slipstream (tickSpacing instead of fee)
    function marketSellAerodrome(
        address swapRouter,
        address tokenIn,
        address tokenOut,
        uint256 amountIn,
        uint256 amountOutMin,
        int24 tickSpacing,
        uint256 deadline
    ) external onlyAuthorized {
        if (!whitelistedSwapRouters[swapRouter]) {
            revert CustomErrors.SwapRouterIsNotWhitelisted();
        }
        if (!whitelistedTokens[tokenIn] || !whitelistedTokens[tokenOut]) {
            revert CustomErrors.TokenIsNotWhitelisted();
        }
        AerodromeOrdersLib.marketSell(
            hedgedPool,
            IAerodromeSwapRouter(swapRouter),
            tokenIn,
            tokenOut,
            amountIn,
            amountOutMin,
            tickSpacing,
            deadline
        );
    }

    /// @notice Market buy using Aerodrome Slipstream (tickSpacing instead of fee)
    function marketBuyAerodrome(
        address swapRouter,
        address tokenIn,
        address tokenOut,
        uint256 amountInMax,
        uint256 amountOut,
        int24 tickSpacing,
        uint256 deadline
    ) external onlyAuthorized {
        if (!whitelistedSwapRouters[swapRouter]) {
            revert CustomErrors.SwapRouterIsNotWhitelisted();
        }
        if (!whitelistedTokens[tokenIn] || !whitelistedTokens[tokenOut]) {
            revert CustomErrors.TokenIsNotWhitelisted();
        }
        AerodromeOrdersLib.marketBuy(
            hedgedPool,
            IAerodromeSwapRouter(swapRouter),
            tokenIn,
            tokenOut,
            amountInMax,
            amountOut,
            tickSpacing,
            deadline
        );
    }

    /// @notice Initiate a market trade via CowSwap by creating and presigning an order.
    function marketTradeCowswap(
        GPv2Order.Data calldata o
    ) external onlyAuthorized nonReentrant {
        if (
            !whitelistedTokens[address(o.sellToken)] ||
            !whitelistedTokens[address(o.buyToken)]
        ) {
            revert CustomErrors.TokenIsNotWhitelisted();
        }

        if (o.receiver != address(this)) {
            revert CustomErrors.InvalidReceiver();
        }

        if (o.sellAmount == 0 || o.buyAmount == 0) {
            revert CustomErrors.InvalidOrder();
        }

        // set pre-signature in Settlement
        bytes32 domain = IGPv2Settlement(COW_SETTLEMENT).domainSeparator();
        bytes32 digest = GPv2Order.hash(o, domain);
        bytes memory orderUid = new bytes(GPv2Order.UID_LENGTH);
        orderUid.packOrderUidParams(digest, address(this), o.validTo);

        if (cowSwapOrders[orderUid].submitted) {
            revert CustomErrors.OrderAlreadyProcessed();
        }

        BorrowLib.borrowFromPoolAndTransfer(
            hedgedPool,
            address(o.sellToken),
            o.sellAmount
        );

        // approve the Vault Relayer to pull token amounts
        IERC20(o.sellToken).approve(COW_RELAYER, 0);
        IERC20(o.sellToken).approve(COW_RELAYER, o.sellAmount);

        IGPv2Settlement(COW_SETTLEMENT).setPreSignature(orderUid, true);

        cowSwapOrders[orderUid] = CowSwapOrderSubmitted(
            o.kind,
            address(o.sellToken),
            address(o.buyToken),
            o.sellAmount,
            o.buyAmount,
            true,
            false,
            false
        );
    }

    function marketTradeCowswapCompleted(
        bool success,
        CowSwapOrderCompletedInput calldata orderResult
    ) external nonReentrant onlyAuthorized {
        CowSwapOrderSubmitted storage submittedOrder = cowSwapOrders[
            orderResult.orderId
        ];
        if (!submittedOrder.submitted) {
            revert CustomErrors.OrderIsNotSubmitted();
        }

        if (submittedOrder.completed) {
            revert CustomErrors.OrderAlreadyProcessed();
        }

        if (
            submittedOrder.buyToken != orderResult.buyToken ||
            submittedOrder.sellToken != orderResult.sellToken
        ) {
            revert CustomErrors.InvalidOrderTokens();
        }

        if (!success) {
            // returning original amount to pool
            BorrowLib.depositToPoolAndTransfer(
                hedgedPool,
                submittedOrder.sellToken,
                submittedOrder.sellAmount
            );
        } else {
            if (submittedOrder.kind == GPv2Order.KIND_SELL) {
                if (
                    submittedOrder.sellAmount != orderResult.executedSellAmount
                ) {
                    revert CustomErrors.InvalidSellAmount();
                }
                BorrowLib.depositToPoolAndTransfer(
                    hedgedPool,
                    address(orderResult.buyToken),
                    orderResult.executedBuyAmount
                );
            } else if (submittedOrder.kind == GPv2Order.KIND_BUY) {
                if (submittedOrder.buyAmount != orderResult.executedBuyAmount) {
                    revert CustomErrors.InvalidBuyAmount();
                }
                BorrowLib.depositToPoolAndTransfer(
                    hedgedPool,
                    address(orderResult.buyToken),
                    orderResult.executedBuyAmount
                );
                if (
                    submittedOrder.sellAmount > orderResult.executedSellAmount
                ) {
                    BorrowLib.depositToPoolAndTransfer(
                        hedgedPool,
                        address(orderResult.sellToken),
                        submittedOrder.sellAmount -
                            orderResult.executedSellAmount
                    );
                }
            } else {
                revert CustomErrors.InvalidOrder();
            }
        }
        submittedOrder.completed = true;
        submittedOrder.success = success;
        IERC20(submittedOrder.sellToken).approve(COW_RELAYER, 0);
    }

    receive() external payable {}
}
