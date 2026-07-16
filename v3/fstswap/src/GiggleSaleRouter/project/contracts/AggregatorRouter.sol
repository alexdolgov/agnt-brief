// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

// ─── External Interfaces ───

interface IWBNB {
    function deposit() external payable;
    function withdraw(uint256) external;
    function balanceOf(address) external view returns (uint256);
    function approve(address, uint256) external returns (bool);
    function transfer(address, uint256) external returns (bool);
}

interface IInternalRouter {
    function isMainCoin(address token) external view returns (bool);
    function WETH() external view returns (address);
}

interface IPancakeRouter {
    function swapExactTokensForTokensSupportingFeeOnTransferTokens(
        uint amountIn, uint amountOutMin, address[] calldata path,
        address to, uint deadline
    ) external;
    function swapExactETHForTokensSupportingFeeOnTransferTokens(
        uint amountOutMin, address[] calldata path,
        address to, uint deadline
    ) external payable;
    function swapExactTokensForETHSupportingFeeOnTransferTokens(
        uint amountIn, uint amountOutMin, address[] calldata path,
        address to, uint deadline
    ) external;
    function WETH() external view returns (address);
}

// ─── Four.meme Interfaces ───

interface IFourMemeTokenManager {
    // V1: purchaseTokenAMAP(token, funds, minAmount) — send BNB
    function purchaseTokenAMAP(address token, uint256 funds, uint256 minAmount) external payable;
    // V1: purchaseTokenAMAP with recipient
    function purchaseTokenAMAP(uint256 origin, address token, address to, uint256 funds, uint256 minAmount) external payable;
    // V1: saleToken(token, amount)
    function saleToken(address token, uint256 amount) external;
}

interface IFourMemeTokenManager2 {
    // V2: buyTokenAMAP(token, funds, minAmount) — send BNB or approve quote
    function buyTokenAMAP(address token, uint256 funds, uint256 minAmount) external payable;
    // V2: buyTokenAMAP with recipient
    function buyTokenAMAP(address token, address to, uint256 funds, uint256 minAmount) external payable;
    // V2: sellToken(token, amount)
    function sellToken(address token, uint256 amount) external;
    // V2: sellToken with fee recipient (origin must == tx.origin)
    function sellToken(uint256 origin, address token, address from, uint256 amount, uint256 minFunds, uint256 feeRate, address feeRecipient) external;
}

interface IFourMemeHelper3 {
    function getTokenInfo(address token) external view returns (
        uint256 version,
        address tokenManager,
        address quote,
        uint256 lastPrice,
        uint256 tradingFeeRate,
        uint256 minTradingFee,
        uint256 launchTime,
        uint256 offers,
        uint256 maxOffers,
        uint256 funds,
        uint256 maxFunds,
        bool liquidityAdded
    );
    function tryBuy(address token, uint256 amount, uint256 funds) external view returns (
        address tokenManager, address quote,
        uint256 estimatedAmount, uint256 estimatedCost, uint256 estimatedFee,
        uint256 amountMsgValue, uint256 amountApproval, uint256 amountFunds
    );
    function trySell(address token, uint256 amount) external view returns (
        address tokenManager, address quote, uint256 funds, uint256 fee
    );
}

// ─── Flap.sh Interfaces ───

interface IFlapPortal {
    struct QuoteExactInputParams {
        address inputToken;
        address outputToken;
        uint256 inputAmount;
    }
    struct ExactInputParams {
        address inputToken;
        address outputToken;
        uint256 inputAmount;
        uint256 minOutputAmount;
        bytes permitData;
    }

    function quoteExactInput(QuoteExactInputParams calldata params) external returns (uint256 outputAmount);
    function swapExactInput(ExactInputParams calldata params) external payable returns (uint256 outputAmount);
}

/**
 * @title AggregatorRouter
 * @notice 聚合交易路由 — 统一 PancakeSwap / FstSwap / Four.meme / Flap.sh 买卖
 * @dev Transparent Proxy + AccessControl. 手续费 0.3%（1/3 → feeReceiverA，2/3 → feeReceiverB）
 *      路由检测在链下完成，合约只接收 protocolId 直接执行。
 */
contract AggregatorRouter is
    AccessControlUpgradeable,
    ReentrancyGuardUpgradeable
{
    using SafeERC20 for IERC20;

    // ─── Protocol IDs ───
    uint8 public constant PROTO_PANCAKE       = 0;
    uint8 public constant PROTO_FST_SWAP      = 1;
    uint8 public constant PROTO_FOUR_MEME     = 2;
    uint8 public constant PROTO_FLAP          = 3;

    // ─── Fee Config (hardcoded) ───
    address public constant feeReceiverA = 0x2df3658756F38e5416bAc889Fecc837e4AD06a08;
    address public constant feeReceiverB = 0x6C38fA7ad1F2AADe40049aCcE7729F43F101a0b7;
    uint16  public constant tradeFeeBps  = 30;  // 0.3%
    uint16  public constant FEE_DENOMINATOR   = 10_000;
    uint16  public constant FEE_SPLIT_A_BPS   = 3_333;  // 1/3
    uint16  public constant MAX_TRADE_FEE_BPS = 2_000;  // 20% safety cap

    // ─── Protocol Addresses ───
    IInternalRouter    public internalRouter;
    mapping(uint8 => address) public protocolAddresses;
    // 0 = PancakeSwap Router
    // 1 = FstSwap Router
    // 2 = Four.meme TokenManager2 (V2)
    // 3 = Flap Portal
    // 4 = InternalDEX (our internal router)
    // 5 = Four.meme Helper3

    // ─── Gap for future upgrades ───
    uint256[50] private __gap;

    // ─── Events ───
    event Swap(
        address indexed sender,
        uint8   indexed protocolId,
        address tokenIn,
        address tokenOut,
        uint256 amountIn,
        uint256 amountOut,
        uint256 feeAmount,
        address feeToken
    );
    event ProtocolAddressUpdated(uint8 indexed protocolId, address addr);
    event FeeConfigUpdated(uint16 newFeeBps);
    event FeeReceiversUpdated(address newA, address newB);
    event InternalRouterUpdated(address newRouter);

    // ─── Initializer ───
    function initialize(
        address _admin,
        address,  // _feeReceiverA (hardcoded)
        address,  // _feeReceiverB (hardcoded)
        address _internalRouter,
        address _pancakeRouter,
        address _fstSwapRouter,
        address _fourMemeV2,
        address _fourMemeHelper,
        address _flapPortal
    ) external initializer {
        __AccessControl_init();
        __ReentrancyGuard_init();

        _grantRole(DEFAULT_ADMIN_ROLE, _admin);

        require(_internalRouter != address(0), "INTERNAL_ROUTER_ZERO");
        internalRouter = IInternalRouter(_internalRouter);

        protocolAddresses[0] = _pancakeRouter;
        protocolAddresses[1] = _fstSwapRouter;
        protocolAddresses[2] = _fourMemeV2;
        protocolAddresses[3] = _flapPortal;
        protocolAddresses[4] = _internalRouter;  // InternalDEX
        protocolAddresses[5] = _fourMemeHelper;
    }

    // ═══════════════════════════════════════════
    //  BUY: BNB → Token
    // ═══════════════════════════════════════════

    /**
     * @notice 用 BNB 买代币（统一入口）
     * @param protocolId 协议 ID (0-3)
     * @param token      目标代币地址
     * @param amountOutMin 最小输出
     * @param deadline   截止时间 (DEX only)
     * @param dexPath    DEX 交易路径 (only for PROTO_PANCAKE / PROTO_FST_SWAP)
     */
    function buyWithBNB(
        uint8 protocolId,
        address token,
        uint256 amountOutMin,
        uint256 deadline,
        address[] calldata dexPath
    ) external payable nonReentrant {
        require(msg.value > 0, "No BNB sent");

        // 1. 扣手续费（BNB）
        uint256 fee = (msg.value * tradeFeeBps) / FEE_DENOMINATOR;
        uint256 swapAmount = msg.value - fee;
        _distributeFeeETH(fee);

        // 2. 执行购买
        uint256 amountOut;

        if (protocolId == PROTO_PANCAKE || protocolId == PROTO_FST_SWAP) {
            uint256 balBefore = IERC20(token).balanceOf(address(this));
            _buyViaDex(protocolId, swapAmount, amountOutMin, dexPath, deadline);
            amountOut = IERC20(token).balanceOf(address(this)) - balBefore;
            require(amountOut >= amountOutMin, "Insufficient output");
            // 3. 转给用户
            IERC20(token).safeTransfer(msg.sender, amountOut);
        } else if (protocolId == PROTO_FOUR_MEME) {
            // Four.meme: 内盘代币限制 transfer，直接发给用户
            uint256 balBefore = IERC20(token).balanceOf(msg.sender);
            _buyViaFourMeme(token, swapAmount, amountOutMin, msg.sender);
            amountOut = IERC20(token).balanceOf(msg.sender) - balBefore;
            require(amountOut >= amountOutMin, "Insufficient output");
        } else if (protocolId == PROTO_FLAP) {
            uint256 balBefore = IERC20(token).balanceOf(address(this));
            _buyViaFlap(token, swapAmount, amountOutMin);
            amountOut = IERC20(token).balanceOf(address(this)) - balBefore;
            require(amountOut >= amountOutMin, "Insufficient output");
            IERC20(token).safeTransfer(msg.sender, amountOut);
        } else if (protocolId == PROTO_INTERNAL_DEX) {
            // InternalDEX: BNB → token via our internal router
            address iRouter = address(internalRouter);
            require(iRouter != address(0), "InternalRouter not set");
            uint256 balBefore = IERC20(token).balanceOf(address(this));
            address wbnb = _getWBNB();
            address[] memory path = new address[](2);
            path[0] = wbnb;
            path[1] = token;
            IPancakeRouter(iRouter).swapExactETHForTokensSupportingFeeOnTransferTokens{value: swapAmount}(
                0, path, address(this), deadline
            );
            amountOut = IERC20(token).balanceOf(address(this)) - balBefore;
            require(amountOut >= amountOutMin, "Insufficient output");
            IERC20(token).safeTransfer(msg.sender, amountOut);
        } else {
            revert("Unknown protocol");
        }

        emit Swap(msg.sender, protocolId, address(0), token, msg.value, amountOut, fee, address(0));
    }

    // ═══════════════════════════════════════════
    //  SELL: Token → BNB
    // ═══════════════════════════════════════════

    /**
     * @notice 卖代币得 BNB（统一入口）
     * @param protocolId 协议 ID (0-3)
     * @param token      代币地址
     * @param amountIn   卖出数量
     * @param amountOutMin 最小 BNB 输出
     * @param deadline   截止时间 (DEX only)
     * @param dexPath    DEX 交易路径 (only for PROTO_PANCAKE / PROTO_FST_SWAP)
     */
    function sellForBNB(
        uint8 protocolId,
        address token,
        uint256 amountIn,
        uint256 amountOutMin,
        uint256 deadline,
        address[] calldata dexPath
    ) external nonReentrant {
        if (protocolId == PROTO_FOUR_MEME) {
            // Four.meme 内盘: 用户直接 approve token 给 TokenManager
            // 我们用 sellToken(origin, token, from, amount, minFunds, feeRate, feeRecipient) 
            // 让 Four.meme 原生扣费发给我们的 feeReceiver
            // BNB 直接发给用户（tx.origin == from == msg.sender）
            _sellViaFourMeme(token, amountIn, amountOutMin, msg.sender);
            // No fee needed — Four.meme native fee handles it
            emit Swap(msg.sender, protocolId, token, address(0), amountIn, 0, 0, address(0));
            return;
        }

        // 其他协议: transferFrom token → 合约 → 卖出 → 扣费 → 发 BNB
        IERC20(token).safeTransferFrom(msg.sender, address(this), amountIn);

        uint256 balBefore = address(this).balance;

        if (protocolId == PROTO_PANCAKE || protocolId == PROTO_FST_SWAP) {
            _sellViaDex(protocolId, token, amountIn, amountOutMin, dexPath, deadline);
        } else if (protocolId == PROTO_FLAP) {
            _sellViaFlap(token, amountIn);
        } else if (protocolId == PROTO_INTERNAL_DEX) {
            // InternalDEX: token → BNB via our internal router
            address iRouter = address(internalRouter);
            require(iRouter != address(0), "InternalRouter not set");
            address wbnb = _getWBNB();
            address[] memory path = new address[](2);
            path[0] = token;
            path[1] = wbnb;
            IERC20(token).forceApprove(iRouter, amountIn);
            IPancakeRouter(iRouter).swapExactTokensForETHSupportingFeeOnTransferTokens(
                amountIn, 0, path, address(this), deadline
            );
        } else {
            revert("Unknown protocol");
        }

        uint256 bnbReceived = address(this).balance - balBefore;

        // 扣手续费（BNB）
        uint256 fee = (bnbReceived * tradeFeeBps) / FEE_DENOMINATOR;
        uint256 netOut = bnbReceived - fee;
        require(netOut >= amountOutMin, "Insufficient output");
        _distributeFeeETH(fee);

        // 转 BNB 给用户
        (bool ok, ) = msg.sender.call{value: netOut}("");
        require(ok, "BNB transfer failed");

        emit Swap(msg.sender, protocolId, token, address(0), amountIn, netOut, fee, address(0));
    }

    // ═══════════════════════════════════════════
    //  DEX SWAP (Token ↔ Token)
    // ═══════════════════════════════════════════

    /**
     * @notice 代币换代币（通过 PancakeSwap/FstSwap）
     */
    function swapTokensViaDex(
        uint8 protocolId,
        uint256 amountIn,
        uint256 amountOutMin,
        address[] calldata path,
        address to,
        uint256 deadline
    ) external nonReentrant {
        require(protocolId == PROTO_PANCAKE || protocolId == PROTO_FST_SWAP, "DEX only");
        require(path.length >= 2, "Invalid path");
        address router = protocolAddresses[protocolId];
        require(router != address(0), "Router not set");

        address tokenIn  = path[0];
        address tokenOut = path[path.length - 1];

        IERC20(tokenIn).safeTransferFrom(msg.sender, address(this), amountIn);

        // 判断从哪个代币收费
        (address feeToken, bool feeFromInput) = _determineFeeToken(tokenIn, tokenOut);

        uint256 feeAmount = 0;
        uint256 swapAmountIn = amountIn;

        if (feeFromInput) {
            feeAmount = (amountIn * tradeFeeBps) / FEE_DENOMINATOR;
            swapAmountIn = amountIn - feeAmount;
            _distributeFee(feeToken, feeAmount);
        }

        IERC20(tokenIn).forceApprove(router, swapAmountIn);

        uint256 balBefore = IERC20(tokenOut).balanceOf(address(this));

        IPancakeRouter(router).swapExactTokensForTokensSupportingFeeOnTransferTokens(
            swapAmountIn, amountOutMin, path, address(this), deadline
        );

        uint256 amountOut = IERC20(tokenOut).balanceOf(address(this)) - balBefore;

        if (!feeFromInput) {
            feeAmount = (amountOut * tradeFeeBps) / FEE_DENOMINATOR;
            amountOut -= feeAmount;
            _distributeFee(feeToken, feeAmount);
        }

        IERC20(tokenOut).safeTransfer(to, amountOut);

        emit Swap(msg.sender, protocolId, tokenIn, tokenOut, amountIn, amountOut, feeAmount, feeToken);
    }

    // ═══════════════════════════════════════════
    //  Internal: DEX
    // ═══════════════════════════════════════════

    function _buyViaDex(
        uint8 protocolId,
        uint256 amountIn,
        uint256 amountOutMin,
        address[] calldata path,
        uint256 deadline
    ) internal {
        address router = protocolAddresses[protocolId];
        require(router != address(0), "Router not set");
        require(path.length >= 2, "Invalid path");

        IPancakeRouter(router).swapExactETHForTokensSupportingFeeOnTransferTokens{value: amountIn}(
            amountOutMin, path, address(this), deadline
        );
    }

    function _sellViaDex(
        uint8 protocolId,
        address token,
        uint256 amountIn,
        uint256 amountOutMin,
        address[] calldata path,
        uint256 deadline
    ) internal {
        address router = protocolAddresses[protocolId];
        require(router != address(0), "Router not set");
        require(path.length >= 2, "Invalid path");

        IERC20(token).forceApprove(router, amountIn);

        IPancakeRouter(router).swapExactTokensForETHSupportingFeeOnTransferTokens(
            amountIn, amountOutMin, path, address(this), deadline
        );
    }

    // ═══════════════════════════════════════════
    //  Internal: Four.meme
    // ═══════════════════════════════════════════

    function _buyViaFourMeme(address token, uint256 amountIn, uint256 minAmount, address to) internal {
        address v2 = protocolAddresses[2];

        // 优先用 Helper3 获取 tokenManager 地址
        address helper = protocolAddresses[5];
        if (helper != address(0)) {
            try IFourMemeHelper3(helper).getTokenInfo(token) returns (
                uint256, address tokenManager, address, uint256, uint256, uint256, uint256, uint256, uint256, uint256, uint256, bool
            ) {
                address mgr = tokenManager != address(0) ? tokenManager : v2;
                require(mgr != address(0), "Four.meme not configured");
                IFourMemeTokenManager2(mgr).buyTokenAMAP{value: amountIn}(token, to, amountIn, minAmount);
                return;
            } catch {}
        }

        // Fallback: use V2 directly
        require(v2 != address(0), "Four.meme not configured");
        IFourMemeTokenManager2(v2).buyTokenAMAP{value: amountIn}(token, to, amountIn, minAmount);
    }

    function _sellViaFourMeme(address token, uint256 amountIn, uint256 minFunds, address seller) internal {
        address helper = protocolAddresses[5];
        address v2 = protocolAddresses[2];

        // 用 Four.meme 原生手续费机制：sellToken(origin, token, from, amount, minFunds, feeRate, feeRecipient)
        // from 必须 == tx.origin == seller (EOA 直接调用或通过本合约)
        // BNB 发给 from（seller），手续费发给 feeReceiverA

        if (helper != address(0)) {
            try IFourMemeHelper3(helper).getTokenInfo(token) returns (
                uint256, address tokenManager, address, uint256, uint256, uint256, uint256, uint256, uint256, uint256, uint256, bool
            ) {
                address mgr = tokenManager != address(0) ? tokenManager : v2;
                require(mgr != address(0), "Four.meme mgr not configured");

                IFourMemeTokenManager2(mgr).sellToken(
                    0, token, seller, amountIn, minFunds, 
                    uint256(tradeFeeBps),
                    feeReceiverA
                );
                return;
            } catch {}
        }

        // Fallback
        require(v2 != address(0), "Four.meme not configured");
        IFourMemeTokenManager2(v2).sellToken(
            0, token, seller, amountIn, minFunds,
            uint256(tradeFeeBps),
            feeReceiverA
        );
    }

    // ═══════════════════════════════════════════
    //  Internal: Flap.sh
    // ═══════════════════════════════════════════

    function _buyViaFlap(address token, uint256 amountIn, uint256 minAmount) internal {
        address portal = protocolAddresses[3];
        require(portal != address(0), "Flap not configured");

        IFlapPortal(portal).swapExactInput{value: amountIn}(
            IFlapPortal.ExactInputParams({
                inputToken:      address(0),
                outputToken:     token,
                inputAmount:     amountIn,
                minOutputAmount: minAmount,
                permitData:      ""
            })
        );
    }

    function _sellViaFlap(address token, uint256 amountIn) internal {
        address portal = protocolAddresses[3];
        require(portal != address(0), "Flap not configured");

        // Approve token to portal
        IERC20(token).forceApprove(portal, amountIn);

        IFlapPortal(portal).swapExactInput(
            IFlapPortal.ExactInputParams({
                inputToken:      token,
                outputToken:     address(0),
                inputAmount:     amountIn,
                minOutputAmount: 0,
                permitData:      ""
            })
        );
    }

    // ═══════════════════════════════════════════
    //  Internal: Fee
    // ═══════════════════════════════════════════

    function _determineFeeToken(address tokenIn, address tokenOut)
        internal view returns (address feeToken, bool feeFromInput)
    {
        bool inIsMain  = internalRouter.isMainCoin(tokenIn);
        if (inIsMain) return (tokenIn, true);
        bool outIsMain = internalRouter.isMainCoin(tokenOut);
        if (outIsMain) return (tokenOut, false);
        return (tokenOut, false);
    }

    function _distributeFee(address token, uint256 amount) internal {
        if (amount == 0) return;
        uint256 amountA = (amount * FEE_SPLIT_A_BPS) / FEE_DENOMINATOR;
        uint256 amountB = amount - amountA;
        IERC20(token).safeTransfer(feeReceiverA, amountA);
        IERC20(token).safeTransfer(feeReceiverB, amountB);
    }

    function _distributeFeeETH(uint256 amount) internal {
        if (amount == 0) return;
        uint256 amountA = (amount * FEE_SPLIT_A_BPS) / FEE_DENOMINATOR;
        uint256 amountB = amount - amountA;
        (bool okA, ) = feeReceiverA.call{value: amountA}("");
        require(okA, "Fee A failed");
        (bool okB, ) = feeReceiverB.call{value: amountB}("");
        require(okB, "Fee B failed");
    }

    // ═══════════════════════════════════════════
    //  MULTI-STEP SWAP
    // ═══════════════════════════════════════════

    uint8 public constant PROTO_INTERNAL_DEX = 4;

    struct Step {
        uint8   protocolId;    // 0-4
        address tokenIn;       // address(0) = native BNB
        address tokenOut;      // address(0) = native BNB
        uint256 amountOutMin;  // per-step min (0=skip)
        address[] dexPath;     // for proto 0/1/4
        uint256 deadline;      // for DEX
    }

    event MultiSwap(
        address indexed sender,
        uint256 steps,
        uint256 amountIn,
        uint256 amountOut,
        uint256 feeAmount,
        bool    feeOnInput
    );

    /**
     * @notice Execute multi-step swap across protocols.
     * @param steps      Array of swap steps (max 3).
     * @param totalAmountOutMin  Minimum final output (after fee if feeOnInput=false).
     * @param feeOnInput true = deduct 0.5% from first input, false = from final output.
     */
    function multiSwap(
        Step[] calldata steps,
        uint256 totalAmountOutMin,
        bool feeOnInput
    ) external payable nonReentrant {
        uint256 len = steps.length;
        require(len > 0 && len <= 3, "1-3 steps");

        bool firstIsNative = steps[0].tokenIn == address(0);

        // ── Determine input amount ──
        uint256 currentAmount;
        if (firstIsNative) {
            require(msg.value > 0, "No BNB");
            currentAmount = msg.value;
        } else {
            // For token input, figure amount from the first step's context
            // We need to pull tokens from user
            // amountIn is implicitly the token balance delta; use first step amountOutMin as hint
            // Actually, caller must send exact amount. Use msg.value==0, pull from allowance.
            require(msg.value == 0, "BNB not expected");
            // We'll determine amountIn by what's available after transferFrom
            // The caller should approve enough. We take the full allowance or balance.
            // Better: encode amountIn in first step's amountOutMin field when tokenIn != address(0)
            // Convention: for first step, amountOutMin serves as amountIn when tokenIn is a token
            currentAmount = steps[0].amountOutMin;
            require(currentAmount > 0, "No input amount");
            uint256 _balBefore = IERC20(steps[0].tokenIn).balanceOf(address(this));
            IERC20(steps[0].tokenIn).safeTransferFrom(msg.sender, address(this), currentAmount);
            currentAmount = IERC20(steps[0].tokenIn).balanceOf(address(this)) - _balBefore;
        }

        // ── Fee on input ──
        uint256 feeAmount;
        bool currentIsNative = firstIsNative;
        address currentToken = steps[0].tokenIn;

        if (feeOnInput) {
            feeAmount = (currentAmount * tradeFeeBps) / FEE_DENOMINATOR;
            currentAmount -= feeAmount;
            if (currentIsNative) {
                _distributeFeeETH(feeAmount);
            } else {
                _distributeFee(currentToken, feeAmount);
            }
        }

        // ── Execute each step ──
        for (uint256 i = 0; i < len; i++) {
            Step calldata s = steps[i];
            bool inIsNative  = s.tokenIn == address(0);
            bool outIsNative = s.tokenOut == address(0);

            uint256 amountOut;

            if (s.protocolId <= 1 || s.protocolId == PROTO_INTERNAL_DEX) {
                // ── DEX swap (PancakeSwap / FstSwap / InternalDEX) ──
                address router = protocolAddresses[s.protocolId];
                require(router != address(0), "Router not set");

                if (inIsNative && !outIsNative) {
                    // BNB → Token via DEX
                    uint256 balBefore = IERC20(s.tokenOut).balanceOf(address(this));
                    IPancakeRouter(router).swapExactETHForTokensSupportingFeeOnTransferTokens{value: currentAmount}(
                        0, s.dexPath, address(this), s.deadline
                    );
                    amountOut = IERC20(s.tokenOut).balanceOf(address(this)) - balBefore;
                } else if (!inIsNative && outIsNative) {
                    // Token → BNB via DEX
                    IERC20(s.tokenIn).forceApprove(router, currentAmount);
                    uint256 balBefore = address(this).balance;
                    IPancakeRouter(router).swapExactTokensForETHSupportingFeeOnTransferTokens(
                        currentAmount, 0, s.dexPath, address(this), s.deadline
                    );
                    amountOut = address(this).balance - balBefore;
                } else {
                    // Token → Token via DEX
                    IERC20(s.tokenIn).forceApprove(router, currentAmount);
                    uint256 balBefore = IERC20(s.tokenOut).balanceOf(address(this));
                    IPancakeRouter(router).swapExactTokensForTokensSupportingFeeOnTransferTokens(
                        currentAmount, 0, s.dexPath, address(this), s.deadline
                    );
                    amountOut = IERC20(s.tokenOut).balanceOf(address(this)) - balBefore;
                }
            } else if (s.protocolId == PROTO_FOUR_MEME) {
                // ── Four.meme ──
                if (inIsNative) {
                    // Buy: BNB → token, send to this contract for chaining (or user if last step)
                    address to = (i == len - 1) ? msg.sender : address(this);
                    uint256 balBefore = IERC20(s.tokenOut).balanceOf(to);
                    _buyViaFourMeme(s.tokenOut, currentAmount, 0, to);
                    amountOut = IERC20(s.tokenOut).balanceOf(to) - balBefore;
                    if (i < len - 1 && to == address(this)) {
                        // token is in contract, ready for next step
                    }
                } else {
                    // Sell: token → BNB
                    // Four.meme sell via V2 sellToken — BNB goes to `from` param
                    // For multiSwap we need BNB in contract for chaining
                    // Use simple sellToken which sends BNB to msg.sender (this contract)
                    address helper = protocolAddresses[5];
                    address v2 = protocolAddresses[2];
                    
                    // Approve token to TokenManager
                    address mgr = v2;
                    if (helper != address(0)) {
                        try IFourMemeHelper3(helper).getTokenInfo(s.tokenIn) returns (
                            uint256, address tokenManager, address, uint256, uint256, uint256, uint256, uint256, uint256, uint256, uint256, bool
                        ) {
                            mgr = tokenManager != address(0) ? tokenManager : v2;
                        } catch {}
                    }
                    
                    IERC20(s.tokenIn).forceApprove(mgr, currentAmount);
                    uint256 balBefore = address(this).balance;
                    
                    IFourMemeTokenManager2(mgr).sellToken(s.tokenIn, currentAmount);
                    
                    amountOut = address(this).balance - balBefore;
                }
            } else if (s.protocolId == PROTO_FLAP) {
                // ── Flap.sh ──
                address portal = protocolAddresses[3];
                require(portal != address(0), "Flap not configured");

                if (inIsNative) {
                    // Buy: BNB → token
                    uint256 balBefore = IERC20(s.tokenOut).balanceOf(address(this));
                    IFlapPortal(portal).swapExactInput{value: currentAmount}(
                        IFlapPortal.ExactInputParams({
                            inputToken: address(0),
                            outputToken: s.tokenOut,
                            inputAmount: currentAmount,
                            minOutputAmount: 0,
                            permitData: ""
                        })
                    );
                    amountOut = IERC20(s.tokenOut).balanceOf(address(this)) - balBefore;
                } else {
                    // Sell: token → BNB (Flap sends BNB to msg.sender = this contract)
                    IERC20(s.tokenIn).forceApprove(portal, currentAmount);
                    uint256 balBefore = address(this).balance;
                    IFlapPortal(portal).swapExactInput(
                        IFlapPortal.ExactInputParams({
                            inputToken: s.tokenIn,
                            outputToken: address(0),
                            inputAmount: currentAmount,
                            minOutputAmount: 0,
                            permitData: ""
                        })
                    );
                    amountOut = address(this).balance - balBefore;
                }
            } else {
                revert("Unknown protocol");
            }

            // Per-step min check (skip if amountOutMin==0 or if it was used as amountIn for first token step)
            if (i > 0 && s.amountOutMin > 0) {
                require(amountOut >= s.amountOutMin, "Step slippage");
            }

            // Prepare for next step
            currentAmount = amountOut;
            currentIsNative = (s.tokenOut == address(0));
            currentToken = s.tokenOut;
        }

        // ── Fee on output ──
        if (!feeOnInput) {
            feeAmount = (currentAmount * tradeFeeBps) / FEE_DENOMINATOR;
            currentAmount -= feeAmount;
            if (currentIsNative) {
                _distributeFeeETH(feeAmount);
            } else {
                _distributeFee(currentToken, feeAmount);
            }
        }

        // ── Final output check ──
        require(currentAmount >= totalAmountOutMin, "Insufficient total output");

        // ── Send to user ──
        if (currentIsNative) {
            (bool ok, ) = msg.sender.call{value: currentAmount}("");
            require(ok, "BNB transfer failed");
        } else {
            // Transfer remaining token balance to user.
            // Use actual balance instead of currentAmount to handle fee-on-transfer tokens
            // (e.g. _distributeFee may cost more than feeAmount due to token tax).
            // For Four.meme buy as last step, tokens already went to msg.sender,
            // so bal will be 0 and this is a no-op.
            uint256 bal = IERC20(currentToken).balanceOf(address(this));
            if (bal > 0) {
                IERC20(currentToken).safeTransfer(msg.sender, bal);
            }
        }

        emit MultiSwap(msg.sender, steps.length, msg.value > 0 ? msg.value : steps[0].amountOutMin, currentAmount, feeAmount, feeOnInput);
    }

    function _getWBNB() internal view returns (address) {
        try internalRouter.WETH() returns (address w) {
            if (w != address(0)) return w;
        } catch {}
        return 0xbb4CdB9CBd36B01bD1cBaEBF2De08d9173bc095c; // BSC WBNB fallback
    }

    // ═══════════════════════════════════════════
    //  Admin (all management functions removed for security)
    // ═══════════════════════════════════════════

    // ─── Receive BNB ───
    receive() external payable {}
}
