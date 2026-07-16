// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/ReentrancyGuard.sol";

interface IInternalRouter {
    function isMainCoin(address token) external view returns (bool);
    function WETH() external view returns (address);
}

interface IPancakeRouter {
    function swapExactTokensForTokensSupportingFeeOnTransferTokens(
        uint amountIn,
        uint amountOutMin,
        address[] calldata path,
        address to,
        uint deadline
    ) external;
    
    function swapExactETHForTokensSupportingFeeOnTransferTokens(
        uint amountOutMin,
        address[] calldata path,
        address to,
        uint deadline
    ) external payable;
    
    function swapExactTokensForETHSupportingFeeOnTransferTokens(
        uint amountIn,
        uint amountOutMin,
        address[] calldata path,
        address to,
        uint deadline
    ) external;
    
    function WETH() external view returns (address);
}

/**
 * @title ExternalRouter
 * @notice 外盘聚合交易路由，支持多个 PancakeSwap V2 路由
 * @dev 手续费 0.5%，1/3 到 feeReceiverA，2/3 到 feeReceiverB
 */
contract ExternalRouter is Ownable, ReentrancyGuard {
    using SafeERC20 for IERC20;

    // 内盘路由（用于判断主流币）
    IInternalRouter public internalRouter;
    
    // 手续费接收地址
    address public feeReceiverA; // 1/3
    address public feeReceiverB; // 2/3
    
    // 手续费配置
    uint16 public tradeFeeBps = 50; // 0.5%
    uint16 public constant FEE_DENOMINATOR = 10_000;
    uint16 public constant FEE_SPLIT_A_BPS = 3_333; // 1/3
    uint16 public constant MAX_TRADE_FEE_BPS = 2_000; // 20% 安全上限
    
    // 事件
    event Swap(
        address indexed sender,
        address indexed router,
        address tokenIn,
        address tokenOut,
        uint amountIn,
        uint amountOut,
        uint feeAmount,
        address feeToken
    );
    
    event FeeConfigUpdated(uint16 newFeeBps);
    event FeeReceiversUpdated(address newA, address newB);
    event InternalRouterUpdated(address newRouter);
    
    constructor(
        address _internalRouter,
        address _feeReceiverA,
        address _feeReceiverB
    ) Ownable(msg.sender) {
        require(_internalRouter != address(0), "Invalid internal router");
        require(_feeReceiverA != address(0), "Invalid feeReceiverA");
        require(_feeReceiverB != address(0), "Invalid feeReceiverB");
        
        internalRouter = IInternalRouter(_internalRouter);
        feeReceiverA = _feeReceiverA;
        feeReceiverB = _feeReceiverB;
    }
    
    // ============ 主要交易函数 ============
    
    /**
     * @notice 用代币换代币
     * @param router 外盘路由地址
     * @param amountIn 输入金额
     * @param amountOutMin 最小输出金额
     * @param path 交易路径
     * @param to 接收地址
     * @param deadline 截止时间
     */
    function swapExactTokensForTokens(
        address router,
        uint amountIn,
        uint amountOutMin,
        address[] calldata path,
        address to,
        uint deadline
    ) external nonReentrant {
        require(path.length >= 2, "Invalid path");
        require(router != address(0), "Invalid router");
        
        address tokenIn = path[0];
        address tokenOut = path[path.length - 1];
        
        // 转入代币
        IERC20(tokenIn).safeTransferFrom(msg.sender, address(this), amountIn);
        
        // 判断从哪个代币收费
        (address feeToken, bool feeFromInput) = _determineFeeToken(tokenIn, tokenOut);
        
        uint feeAmount = 0;
        uint swapAmountIn = amountIn;
        
        if (feeFromInput && feeToken == tokenIn) {
            // 从输入代币收费
            feeAmount = (amountIn * tradeFeeBps) / FEE_DENOMINATOR;
            swapAmountIn = amountIn - feeAmount;
            _distributeFee(tokenIn, feeAmount);
        }
        
        // 授权给外盘路由
        IERC20(tokenIn).forceApprove(router, 0);
        IERC20(tokenIn).forceApprove(router, swapAmountIn);
        
        // 记录交易前余额
        uint balanceBefore = IERC20(tokenOut).balanceOf(address(this));
        
        // 执行外盘交易
        IPancakeRouter(router).swapExactTokensForTokensSupportingFeeOnTransferTokens(
            swapAmountIn,
            amountOutMin,
            path,
            address(this),
            deadline
        );
        
        // 计算实际输出
        uint amountOut = IERC20(tokenOut).balanceOf(address(this)) - balanceBefore;
        
        if (!feeFromInput && feeToken == tokenOut) {
            // 从输出代币收费
            feeAmount = (amountOut * tradeFeeBps) / FEE_DENOMINATOR;
            amountOut = amountOut - feeAmount;
            _distributeFee(tokenOut, feeAmount);
        }
        
        // 转出代币给用户
        IERC20(tokenOut).safeTransfer(to, amountOut);
        
        emit Swap(msg.sender, router, tokenIn, tokenOut, amountIn, amountOut, feeAmount, feeToken);
    }
    
    /**
     * @notice 用 BNB 换代币
     */
    function swapExactETHForTokens(
        address router,
        uint amountOutMin,
        address[] calldata path,
        address to,
        uint deadline
    ) external payable nonReentrant {
        require(path.length >= 2, "Invalid path");
        require(router != address(0), "Invalid router");
        require(msg.value > 0, "No ETH sent");
        
        address tokenOut = path[path.length - 1];
        address weth = IPancakeRouter(router).WETH();
        require(path[0] == weth, "Path must start with WETH");
        
        // BNB 是主流币，从输入收费
        uint feeAmount = (msg.value * tradeFeeBps) / FEE_DENOMINATOR;
        uint swapAmountIn = msg.value - feeAmount;
        
        // 分发手续费（BNB）
        _distributeFeeETH(feeAmount);
        
        // 记录交易前余额
        uint balanceBefore = IERC20(tokenOut).balanceOf(address(this));
        
        // 执行外盘交易
        IPancakeRouter(router).swapExactETHForTokensSupportingFeeOnTransferTokens{value: swapAmountIn}(
            amountOutMin,
            path,
            address(this),
            deadline
        );
        
        // 计算实际输出
        uint amountOut = IERC20(tokenOut).balanceOf(address(this)) - balanceBefore;
        
        // 转出代币给用户
        IERC20(tokenOut).safeTransfer(to, amountOut);
        
        emit Swap(msg.sender, router, address(0), tokenOut, msg.value, amountOut, feeAmount, address(0));
    }
    
    /**
     * @notice 用代币换 BNB
     */
    function swapExactTokensForETH(
        address router,
        uint amountIn,
        uint amountOutMin,
        address[] calldata path,
        address to,
        uint deadline
    ) external nonReentrant {
        require(path.length >= 2, "Invalid path");
        require(router != address(0), "Invalid router");
        
        address tokenIn = path[0];
        address weth = IPancakeRouter(router).WETH();
        require(path[path.length - 1] == weth, "Path must end with WETH");
        
        // 转入代币
        IERC20(tokenIn).safeTransferFrom(msg.sender, address(this), amountIn);
        
        // 授权给外盘路由
        IERC20(tokenIn).forceApprove(router, 0);
        IERC20(tokenIn).forceApprove(router, amountIn);
        
        // 记录交易前 BNB 余额
        uint balanceBefore = address(this).balance;
        
        // 执行外盘交易
        IPancakeRouter(router).swapExactTokensForETHSupportingFeeOnTransferTokens(
            amountIn,
            amountOutMin,
            path,
            address(this),
            deadline
        );
        
        // 计算实际输出
        uint amountOut = address(this).balance - balanceBefore;
        
        // BNB 是主流币，从输出收费
        uint feeAmount = (amountOut * tradeFeeBps) / FEE_DENOMINATOR;
        uint netOut = amountOut - feeAmount;
        
        // 分发手续费（BNB）
        _distributeFeeETH(feeAmount);
        
        // 转出 BNB 给用户
        (bool success, ) = to.call{value: netOut}("");
        require(success, "ETH transfer failed");
        
        emit Swap(msg.sender, router, tokenIn, address(0), amountIn, netOut, feeAmount, address(0));
    }
    
    // ============ 内部函数 ============
    
    /**
     * @notice 判断从哪个代币收费
     * @return feeToken 收费代币地址
     * @return feeFromInput 是否从输入收费
     */
    function _determineFeeToken(address tokenIn, address tokenOut) internal view returns (address feeToken, bool feeFromInput) {
        bool inIsMain = internalRouter.isMainCoin(tokenIn);
        bool outIsMain = internalRouter.isMainCoin(tokenOut);
        
        if (inIsMain) {
            // 输入是主流币，从输入收费
            return (tokenIn, true);
        } else if (outIsMain) {
            // 输出是主流币，从输出收费
            return (tokenOut, false);
        } else {
            // 都不是主流币，从输出收费
            return (tokenOut, false);
        }
    }
    
    /**
     * @notice 分发代币手续费
     */
    function _distributeFee(address token, uint amount) internal {
        if (amount == 0) return;
        
        uint amountA = (amount * FEE_SPLIT_A_BPS) / FEE_DENOMINATOR; // 1/3
        uint amountB = amount - amountA; // 2/3
        
        IERC20(token).safeTransfer(feeReceiverA, amountA);
        IERC20(token).safeTransfer(feeReceiverB, amountB);
    }
    
    /**
     * @notice 分发 BNB 手续费
     */
    function _distributeFeeETH(uint amount) internal {
        if (amount == 0) return;
        
        uint amountA = (amount * FEE_SPLIT_A_BPS) / FEE_DENOMINATOR; // 1/3
        uint amountB = amount - amountA; // 2/3
        
        (bool successA, ) = feeReceiverA.call{value: amountA}("");
        require(successA, "Fee transfer A failed");
        
        (bool successB, ) = feeReceiverB.call{value: amountB}("");
        require(successB, "Fee transfer B failed");
    }
    
    // ============ 管理函数 ============
    
    function setTradeFeeBps(uint16 _feeBps) external onlyOwner {
        require(_feeBps <= MAX_TRADE_FEE_BPS, "Fee too high");
        tradeFeeBps = _feeBps;
        emit FeeConfigUpdated(_feeBps);
    }
    
    function setFeeReceivers(address _a, address _b) external onlyOwner {
        require(_a != address(0) && _b != address(0), "Invalid addresses");
        feeReceiverA = _a;
        feeReceiverB = _b;
        emit FeeReceiversUpdated(_a, _b);
    }
    
    function setInternalRouter(address _router) external onlyOwner {
        require(_router != address(0), "Invalid router");
        internalRouter = IInternalRouter(_router);
        emit InternalRouterUpdated(_router);
    }
    
    /**
     * @notice 紧急提取代币
     */
    function rescueTokens(address token, uint amount) external onlyOwner {
        IERC20(token).safeTransfer(msg.sender, amount);
    }
    
    /**
     * @notice 紧急提取 BNB
     */
    function rescueETH() external onlyOwner {
        (bool success, ) = msg.sender.call{value: address(this).balance}("");
        require(success, "ETH transfer failed");
    }
    
    // 接收 BNB
    receive() external payable {}
}
