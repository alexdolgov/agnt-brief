// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

interface IERC20 {
    function approve(address spender, uint256 amount) external returns (bool);
    function transfer(address to, uint256 amount) external returns (bool);
    function transferFrom(address from, address to, uint256 amount) external returns (bool);
    function balanceOf(address account) external view returns (uint256);
}

interface IWBNB {
    function deposit() external payable;
    function withdraw(uint256) external;
    function approve(address spender, uint256 amount) external returns (bool);
    function transfer(address to, uint256 amount) external returns (bool);
    function balanceOf(address account) external view returns (uint256);
}

interface IPancakeSwapV3Router {
    struct ExactInputSingleParams {
        address tokenIn;
        address tokenOut;
        uint24 fee;
        address recipient;
        uint256 deadline;
        uint256 amountIn;
        uint256 amountOutMinimum;
        uint160 sqrtPriceLimitX96;
    }

    struct ExactOutputSingleParams {
        address tokenIn;
        address tokenOut;
        uint24 fee;
        address recipient;
        uint256 deadline;
        uint256 amountOut;
        uint256 amountInMaximum;
        uint160 sqrtPriceLimitX96;
    }

    function exactInputSingle(ExactInputSingleParams calldata params) external payable returns (uint256 amountOut);
    function exactOutputSingle(ExactOutputSingleParams calldata params) external payable returns (uint256 amountIn);
}

contract UnifiedTradingBot {
    // PancakeSwap V3 Router address on BSC
    IPancakeSwapV3Router constant PANCAKE_ROUTER = IPancakeSwapV3Router(0x1b81D678ffb9C0263b24A97847620C99d213eB14);
    // WBNB address on BSC
    IWBNB constant WBNB = IWBNB(0xbb4CdB9CBd36B01bD1cBaEBF2De08d9173bc095c);
    
    event VolumeGenerated(
        address indexed user,
        address inputToken,
        address swapToken,
        uint256 amountIn,
        uint256 finalAmount
    );
    
    event SwapExecuted(
        address indexed user,
        address tokenIn,
        address tokenOut,
        uint256 amountIn,
        uint256 amountOut
    );

    /**
     * @dev Generates volume by swapping inputToken -> swapToken -> inputToken
     * @param inputToken The token to start and end with
     * @param swapToken The intermediate token to swap through
     * @param feeTier The fee tier of the pool (500, 2500, or 10000)
     * @param amountIn The amount of inputToken to use for swapping
     * @param minAmountOut The minimum amount of inputToken to receive back
     */
    function generateVolume(
        address inputToken,
        address swapToken,
        uint24 feeTier,
        uint256 amountIn,
        uint256 minAmountOut
    ) external {
        // Transfer inputToken from user to this contract
        IERC20(inputToken).transferFrom(msg.sender, address(this), amountIn);
        
        // Approve router to spend inputToken
        IERC20(inputToken).approve(address(PANCAKE_ROUTER), amountIn);
        
        // First swap: inputToken -> swapToken
        IPancakeSwapV3Router.ExactInputSingleParams memory params1 = IPancakeSwapV3Router.ExactInputSingleParams({
            tokenIn: inputToken,
            tokenOut: swapToken,
            fee: feeTier,
            recipient: address(this),
            deadline: block.timestamp,
            amountIn: amountIn,
            amountOutMinimum: 0,
            sqrtPriceLimitX96: 0
        });
        
        uint256 swapTokenAmount = PANCAKE_ROUTER.exactInputSingle(params1);
        
        // Approve router to spend swapToken
        IERC20(swapToken).approve(address(PANCAKE_ROUTER), swapTokenAmount);
        
        // Second swap: swapToken -> inputToken
        IPancakeSwapV3Router.ExactInputSingleParams memory params2 = IPancakeSwapV3Router.ExactInputSingleParams({
            tokenIn: swapToken,
            tokenOut: inputToken,
            fee: feeTier,
            recipient: address(this),
            deadline: block.timestamp,
            amountIn: swapTokenAmount,
            amountOutMinimum: minAmountOut,
            sqrtPriceLimitX96: 0
        });
        
        uint256 finalAmount = PANCAKE_ROUTER.exactInputSingle(params2);
        
        // Transfer the final inputToken amount back to user
        IERC20(inputToken).transfer(msg.sender, finalAmount);
        
        emit VolumeGenerated(msg.sender, inputToken, swapToken, amountIn, finalAmount);
    }

    /**
     * @dev Executes a swap with exact input amount
     * @param tokenIn The token to swap from
     * @param tokenOut The token to swap to
     * @param feeTier The fee tier of the pool (500, 2500, or 10000)
     * @param amountIn The exact amount of tokenIn to swap
     * @param amountOutMinimum The minimum amount of tokenOut to receive
     */
    function swapExactInput(
        address tokenIn,
        address tokenOut,
        uint24 feeTier,
        uint256 amountIn,
        uint256 amountOutMinimum
    ) external returns (uint256 amountOut) {
        // Transfer tokenIn from user to this contract
        IERC20(tokenIn).transferFrom(msg.sender, address(this), amountIn);
        
        // Approve router to spend tokenIn
        IERC20(tokenIn).approve(address(PANCAKE_ROUTER), amountIn);
        
        // Execute swap
        IPancakeSwapV3Router.ExactInputSingleParams memory params = IPancakeSwapV3Router.ExactInputSingleParams({
            tokenIn: tokenIn,
            tokenOut: tokenOut,
            fee: feeTier,
            recipient: msg.sender,
            deadline: block.timestamp,
            amountIn: amountIn,
            amountOutMinimum: amountOutMinimum,
            sqrtPriceLimitX96: 0
        });
        
        amountOut = PANCAKE_ROUTER.exactInputSingle(params);
        
        emit SwapExecuted(msg.sender, tokenIn, tokenOut, amountIn, amountOut);
        
        return amountOut;
    }

    /**
     * @dev Executes a swap with exact output amount
     * @param tokenIn The token to swap from
     * @param tokenOut The token to swap to
     * @param feeTier The fee tier of the pool (500, 2500, or 10000)
     * @param amountOut The exact amount of tokenOut desired
     * @param amountInMaximum The maximum amount of tokenIn to spend
     */
    function swapExactOutput(
        address tokenIn,
        address tokenOut,
        uint24 feeTier,
        uint256 amountOut,
        uint256 amountInMaximum
    ) external returns (uint256 amountIn) {
        // Transfer maximum tokenIn from user to this contract
        IERC20(tokenIn).transferFrom(msg.sender, address(this), amountInMaximum);
        
        // Approve router to spend tokenIn
        IERC20(tokenIn).approve(address(PANCAKE_ROUTER), amountInMaximum);
        
        // Execute swap
        IPancakeSwapV3Router.ExactOutputSingleParams memory params = IPancakeSwapV3Router.ExactOutputSingleParams({
            tokenIn: tokenIn,
            tokenOut: tokenOut,
            fee: feeTier,
            recipient: msg.sender,
            deadline: block.timestamp,
            amountOut: amountOut,
            amountInMaximum: amountInMaximum,
            sqrtPriceLimitX96: 0
        });
        
        amountIn = PANCAKE_ROUTER.exactOutputSingle(params);
        
        // Refund unused tokenIn
        if (amountIn < amountInMaximum) {
            uint256 refundAmount = amountInMaximum - amountIn;
            IERC20(tokenIn).transfer(msg.sender, refundAmount);
        }
        
        emit SwapExecuted(msg.sender, tokenIn, tokenOut, amountIn, amountOut);
        
        return amountIn;
    }

    /**
     * @dev Executes a native BNB to token swap
     * @param tokenOut The token to receive
     * @param feeTier The fee tier of the pool
     * @param amountOutMinimum The minimum amount of tokenOut to receive
     */
    function swapBNBForTokens(
        address tokenOut,
        uint24 feeTier,
        uint256 amountOutMinimum
    ) external payable returns (uint256 amountOut) {
        IPancakeSwapV3Router.ExactInputSingleParams memory params = IPancakeSwapV3Router.ExactInputSingleParams({
            tokenIn: address(WBNB),
            tokenOut: tokenOut,
            fee: feeTier,
            recipient: msg.sender,
            deadline: block.timestamp,
            amountIn: msg.value,
            amountOutMinimum: amountOutMinimum,
            sqrtPriceLimitX96: 0
        });
        
        amountOut = PANCAKE_ROUTER.exactInputSingle{value: msg.value}(params);
        
        emit SwapExecuted(msg.sender, address(WBNB), tokenOut, msg.value, amountOut);
        
        return amountOut;
    }

    /**
     * @dev Executes a token to native BNB swap with automatic unwrapping
     * @param tokenIn The token to swap from
     * @param feeTier The fee tier of the pool
     * @param amountIn The amount of tokenIn to swap
     * @param amountOutMinimum The minimum amount of BNB to receive
     */
    function swapTokensForBNB(
        address tokenIn,
        uint24 feeTier,
        uint256 amountIn,
        uint256 amountOutMinimum
    ) external returns (uint256 amountOut) {
        // Transfer tokenIn from user
        IERC20(tokenIn).transferFrom(msg.sender, address(this), amountIn);
        
        // Approve router
        IERC20(tokenIn).approve(address(PANCAKE_ROUTER), amountIn);
        
        // Execute swap to WBNB
        IPancakeSwapV3Router.ExactInputSingleParams memory params = IPancakeSwapV3Router.ExactInputSingleParams({
            tokenIn: tokenIn,
            tokenOut: address(WBNB),
            fee: feeTier,
            recipient: address(this), // Receive WBNB to this contract for unwrapping
            deadline: block.timestamp,
            amountIn: amountIn,
            amountOutMinimum: amountOutMinimum,
            sqrtPriceLimitX96: 0
        });
        
        amountOut = PANCAKE_ROUTER.exactInputSingle(params);
        
        // Unwrap WBNB to BNB
        WBNB.withdraw(amountOut);
        
        // Send BNB to caller
        (bool success, ) = msg.sender.call{value: amountOut}("");
        require(success, "BNB transfer failed");
        
        emit SwapExecuted(msg.sender, tokenIn, address(WBNB), amountIn, amountOut);
        
        return amountOut;
    }

    /**
     * @dev Emergency function to recover stuck tokens
     * @param token The token address to recover
     * @param amount The amount to recover
     */
    function recoverToken(address token, uint256 amount) external {
        IERC20(token).transfer(msg.sender, amount);
    }
    
    /**
     * @dev Emergency function to recover stuck BNB
     */
    function recoverBNB() external {
        (bool success, ) = msg.sender.call{value: address(this).balance}("");
        require(success, "BNB transfer failed");
    }
    
    // Receive BNB (needed for WBNB unwrapping)
    receive() external payable {}
}