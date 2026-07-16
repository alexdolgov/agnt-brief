// SPDX-License-Identifier: BUSL-1.1

pragma solidity 0.8.18;

import "../../interfaces/CustomErrors.sol";
import "../../interfaces/ICoreWriter.sol";
import "../../interfaces/IHedgedPool.sol";
import "../../interfaces/INonfungiblePositionManager.sol";
import "../../interfaces/IWrappedToken.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/security/ReentrancyGuardUpgradeable.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/utils/structs/EnumerableMap.sol";
import "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";
import "@uniswap/v3-periphery/contracts/interfaces/ISwapRouter.sol";
import {IController} from "../../interfaces/IGamma.sol";
import {BorrowLib} from "../../libs/BorrowLib.sol";
import {UniswapOrdersLib} from "../../libs/UniswapOrdersLib.sol";

contract HyperliquidHedger is OwnableUpgradeable, ReentrancyGuardUpgradeable {
    using SafeERC20 for IERC20;
    using EnumerableMap for EnumerableMap.UintToUintMap;

    address internal constant WHYPE_ADDRESS =
        0x5555555555555555555555555555555555555555;

    address internal constant HYPE_TRANSFER_ADDRESS =
        0x2222222222222222222222222222222222222222;

    address internal constant TOKEN_INFO_PRECOMPILE_ADDRESS =
        0x000000000000000000000000000000000000080C;

    uint64 internal constant HYPE_TOKEN_ID = 150;

    IHedgedPool private hedgedPool;
    mapping(address => INonfungiblePositionManager) public positionManagers;
    IController private controller;

    mapping(address => EnumerableMap.UintToUintMap) internal hedgeOrders;
    mapping(address => uint256) public externalPendingDeposits;
    mapping(address => EnumerableSet.UintSet) internal activeHedgeOrderTicksIds;

    mapping(address => bool) public whitelistedSwapRouters;
    mapping(address => bool) public whitelistedTokens;

    mapping(address => int256) public limitOrdersExecutionTicks;

    mapping(address => bytes32) public limitOrdersExecutionIds;

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
    function __HyperliquidHedger_init(
        address _hedgedPool,
        address _controller
    ) external payable initializer {
        __Ownable_init();
        __ReentrancyGuard_init();
        _updateConfig(_hedgedPool, _controller);
    }

    function hedgerType() external pure returns (string memory) {
        return "HYPERLIQUID";
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

    function _wrapHype(uint256 amount) internal {
        IWrappedToken(WHYPE_ADDRESS).deposit{value: amount}();
    }

    function depositToPool(
        address token,
        uint256 amount,
        bool needWrap,
        bool fromCore
    ) external onlyAuthorized nonReentrant {
        if (needWrap) {
            _wrapHype(amount);
        }
        if (fromCore) {
            if (externalPendingDeposits[token] < amount) {
                revert CustomErrors.InvalidPendingAmount();
            }
            externalPendingDeposits[token] -= amount;
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

    /*****************
    Hyperliquid CoreReader methods
    ******************/

    struct TokenInfo {
        string name;
        uint64[] spots;
        uint64 deployerTradingFeeShare;
        address deployer;
        address evmContract;
        uint8 szDecimals;
        uint8 weiDecimals;
        int8 evmExtraWeiDecimals;
    }

    function _tokenInfo(uint32 token) internal view returns (TokenInfo memory) {
        bool success;
        bytes memory result;
        (success, result) = TOKEN_INFO_PRECOMPILE_ADDRESS.staticcall(
            abi.encode(token)
        );
        if (!success) {
            revert CustomErrors.TokenInfoCallFailed();
        }
        return abi.decode(result, (TokenInfo));
    }

    function _tokenAddress(uint32 token) internal view returns (address) {
        if (token == HYPE_TOKEN_ID) {
            return WHYPE_ADDRESS;
        }
        return _tokenInfo(token).evmContract;
    }

    function _extraWeiDecimals(uint32 token) internal view returns (int8) {
        if (token == HYPE_TOKEN_ID) {
            return 10;
        }
        return _tokenInfo(token).evmExtraWeiDecimals;
    }

    /*****************
    Hyperliquid CoreWriter methods
    ******************/

    function _sendRawAction(
        bytes1 actionId,
        bytes memory encodedAction
    ) internal {
        bytes memory data = new bytes(4 + encodedAction.length);
        data[0] = 0x01;
        data[1] = 0x00;
        data[2] = 0x00;
        data[3] = actionId;
        for (uint256 i = 0; i < encodedAction.length; i++) {
            data[4 + i] = encodedAction[i];
        }
        ICoreWriter(0x3333333333333333333333333333333333333333).sendRawAction(
            data
        );
    }

    /**
     * @dev Generates a Core system address from a token index
     * @param tokenIndex The index of the token (uint256)
     * @return systemAddress The generated system address
     */
    function _generateSystemAddress(
        uint256 tokenIndex
    ) internal pure returns (address systemAddress) {
        // Core system addresses start with 0x20 followed by zeros and token index
        // We need to shift 0x20 to the leftmost position (31 bytes left)
        // Then OR it with the token index

        uint256 addressInt = (0x20 << 152) | tokenIndex;
        systemAddress = address(uint160(addressInt));
    }

    function spotSend(uint64 token, uint64 weiAmount) external onlyAuthorized {
        address destination;
        if (token == HYPE_TOKEN_ID) {
            destination = HYPE_TRANSFER_ADDRESS;
        } else {
            destination = _generateSystemAddress(token);
        }
        if (destination == address(0)) {
            revert CustomErrors.InvalidDestinationAddress();
        }

        bytes memory encodedAction = abi.encode(destination, token, weiAmount);
        _sendRawAction(0x06, encodedAction);

        address tokenAddress = _tokenAddress(uint32(token));

        uint256 evmAmount = uint256(weiAmount);
        int8 extraDecimals = _extraWeiDecimals(uint32(token));
        if (extraDecimals > 0) {
            evmAmount = weiAmount * (10 ** uint8(extraDecimals));
        } else if (extraDecimals < 0) {
            evmAmount = weiAmount / (10 ** uint8(-extraDecimals));
        }
        externalPendingDeposits[tokenAddress] += evmAmount;
    }

    function limitOrder(
        uint32 asset,
        bool isBuy,
        uint64 limitPx,
        uint64 sz,
        bool reduceOnly,
        uint8 encodedTif,
        uint128 cloid
    ) external onlyAuthorized {
        bytes memory encodedAction = abi.encode(
            asset,
            isBuy,
            limitPx,
            sz,
            reduceOnly,
            encodedTif,
            cloid
        );
        _sendRawAction(0x01, encodedAction);
    }

    function sendTokenToCore(
        address tokenAddress,
        bool unwrap,
        uint256 amount,
        uint32 tokenIndex,
        bool needToBorrow
    ) external onlyAuthorized {
        if (amount == 0) {
            revert CustomErrors.ZeroValue();
        }
        if (needToBorrow) {
            BorrowLib.borrowFromPoolAndTransfer(
                hedgedPool,
                tokenAddress,
                amount
            );
        }
        if (tokenAddress == WHYPE_ADDRESS) {
            if (unwrap) {
                IWrappedToken(WHYPE_ADDRESS).withdraw(amount);
            }
            (bool success, ) = payable(HYPE_TRANSFER_ADDRESS).call{
                value: amount
            }("");
            if (!success) {
                revert CustomErrors.TransferFailed();
            }
        } else {
            TokenInfo memory tokenInfo = _tokenInfo(tokenIndex);
            if (tokenInfo.evmContract != tokenAddress) {
                revert CustomErrors.TokenIndexMismatch();
            }
            address transferAddress = _generateSystemAddress(tokenIndex);
            IERC20(tokenAddress).safeTransfer(transferAddress, amount);
        }
    }

    receive() external payable {}
}
