// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// external
import "@openzeppelin/contracts-upgradeable/token/ERC20/utils/SafeERC20Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/utils/math/SafeMathUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/IERC20Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/security/PausableUpgradeable.sol";

// internal
import "../utils/proxy/solidity-0.8.0/ProxyReentrancyGuard.sol";
import "../utils/proxy/solidity-0.8.0/ProxyOwned.sol";
import "../utils/proxy/solidity-0.8.0/ProxyPausable.sol";

import "../utils/libraries/TransferHelper.sol";
import "@uniswap/v3-periphery/contracts/interfaces/ISwapRouter.sol";
import "@uniswap/v3-periphery/contracts/interfaces/IQuoter.sol";
import "@uniswap/v3-core/contracts/interfaces/IUniswapV3Pool.sol";
import "@uniswap/v3-core/contracts/interfaces/IUniswapV3Factory.sol";
import "../utils/libraries/UniswapMath.sol";

/// @title MultiCollateralOnOffRamp to use different collateral than default
contract MultiCollateralOnOffRamp is Initializable, ProxyOwned, ProxyPausable, ProxyReentrancyGuard {
    using SafeERC20Upgradeable for IERC20Upgradeable;

    uint private constant ONE = 1e18;
    uint private constant ONE_PERCENT = 1e16;

    IERC20Upgradeable public sUSD;

    mapping(address => bool) public collateralSupported;

    mapping(address => bool) public ammsSupported;

    ISwapRouter public swapRouter;
    IUniswapV3Factory public uniswapFactory;

    address public WETH9;

    IQuoter public quoter;

    function initialize(address _owner, IERC20Upgradeable _sUSD) public initializer {
        setOwner(_owner);
        initNonReentrant();
        sUSD = _sUSD;
    }

    function onrampMultihop(
        uint buyinAmount,
        address collateral,
        uint collateralAmount
    ) external nonReentrant notPaused {
        require(collateralSupported[collateral], "Unsupported collateral");
        require(ammsSupported[msg.sender], "Unsupported caller");

        IERC20Upgradeable(collateral).safeTransferFrom(msg.sender, address(this), collateralAmount);

        _swapExactInput(collateralAmount, collateral, address(sUSD), 3000);

        sUSD.safeTransfer(msg.sender, sUSD.balanceOf(address(this)));
    }

    function onrampMultihopProxy(
        uint buyinAmount,
        address collateral,
        uint collateralAmount,
        address proxy,
        uint24 fee
    ) external nonReentrant notPaused {
        require(collateralSupported[collateral], "Unsupported collateral");
        require(ammsSupported[msg.sender], "Unsupported caller");

        IERC20Upgradeable(collateral).safeTransferFrom(msg.sender, address(this), collateralAmount);

        _swapExactInputProxy(collateralAmount, collateral, address(sUSD), fee, proxy);

        sUSD.safeTransfer(msg.sender, sUSD.balanceOf(address(this)));
    }

    function onrampSimple(
        uint buyinAmount,
        address collateral,
        uint collateralAmount,
        uint24 fee
    ) external nonReentrant notPaused {
        require(collateralSupported[collateral], "Unsupported collateral");
        require(ammsSupported[msg.sender], "Unsupported caller");

        IERC20Upgradeable(collateral).safeTransferFrom(msg.sender, address(this), collateralAmount);

        _swapExactSingle(collateralAmount, collateral, address(sUSD), fee);

        sUSD.safeTransfer(msg.sender, sUSD.balanceOf(address(this)));
    }

    /// @notice setSupportedCollateral
    function setSupportedCollateral(address collateral, bool supported) external onlyOwner {
        collateralSupported[collateral] = supported;
    }

    /// @notice setSupportedAMM
    function setSupportedAMM(address amm, bool supported) external onlyOwner {
        ammsSupported[amm] = supported;
    }

    /// @notice setWETH
    function setWETH(address _weth) external onlyOwner {
        WETH9 = _weth;
    }

    /// @notice setUSD
    function setUSD(address _usd) external onlyOwner {
        sUSD = IERC20Upgradeable(_usd);
    }

    /// @notice setSwapRouter
    function setSwapRouter(address _router) external onlyOwner {
        swapRouter = ISwapRouter(_router);
    }

    /// @notice setUniswapFactory
    function setUniswapFactory(address _factory) external onlyOwner {
        uniswapFactory = IUniswapV3Factory(_factory);
    }

    /// @notice setUniswapFactory
    function setQuoter(address _quoter) external onlyOwner {
        quoter = IQuoter(_quoter);
    }

    ///////////////////////UNISWAP related code///////////////////

    function _swapExactSingle(
        uint256 amountIn,
        address tokenIn,
        address tokenOut,
        uint24 poolFee
    ) internal returns (uint256 amountOut) {
        // Approve the router to spend tokenIn.
        TransferHelper.safeApprove(tokenIn, address(swapRouter), amountIn);

        ISwapRouter.ExactInputSingleParams memory params = ISwapRouter.ExactInputSingleParams({
            tokenIn: tokenIn,
            tokenOut: tokenOut,
            fee: poolFee,
            recipient: address(this),
            deadline: block.timestamp + 15,
            amountIn: amountIn,
            amountOutMinimum: 0,
            sqrtPriceLimitX96: 0
        });

        // The call to `exactInputSingle` executes the swap.
        amountOut = swapRouter.exactInputSingle(params);
    }

    /// @notice _swapExactInput swaps a fixed amount of tokenIn for a maximum possible amount of tokenOut
    /// @param amountIn The exact amount of tokenIn that will be swapped for tokenOut.
    /// @param tokenIn Address of first token
    /// @param tokenOut Address of second token
    /// @param poolFee Fee value of tokenIn/tokenOut pool
    /// @return amountOut The amount of tokenOut received.
    function _swapExactInput(
        uint256 amountIn,
        address tokenIn,
        address tokenOut,
        uint24 poolFee
    ) internal returns (uint256 amountOut) {
        // Approve the router to spend tokenIn.
        TransferHelper.safeApprove(tokenIn, address(swapRouter), amountIn);

        uint256 _minAccepted = 95;

        uint256 ratio = _getRatio(tokenIn, tokenOut, poolFee);

        // Multiple pool swaps are encoded through bytes called a `path`. A path is a sequence of token addresses and poolFees that define the pools used in the swaps.
        // The format for pool encoding is (tokenIn, fee, tokenOut/tokenIn, fee, tokenOut) where tokenIn/tokenOut parameter is the shared token across the pools.
        ISwapRouter.ExactInputParams memory params = ISwapRouter.ExactInputParams({
            path: abi.encodePacked(address(tokenIn), poolFee, WETH9, poolFee, address(tokenOut)),
            recipient: address(this),
            deadline: block.timestamp + 15,
            amountIn: amountIn,
            amountOutMinimum: (amountIn * ratio * _minAccepted) / (100 * 10**18)
        });

        // The call to `exactInput` executes the swap.
        amountOut = swapRouter.exactInput(params);
    }

    function _swapExactInputProxy(
        uint256 amountIn,
        address tokenIn,
        address tokenOut,
        uint24 poolFee,
        address proxy
    ) internal returns (uint256 amountOut) {
        // Approve the router to spend tokenIn.
        TransferHelper.safeApprove(tokenIn, address(swapRouter), amountIn);

        // Multiple pool swaps are encoded through bytes called a `path`. A path is a sequence of token addresses and poolFees that define the pools used in the swaps.
        // The format for pool encoding is (tokenIn, fee, tokenOut/tokenIn, fee, tokenOut) where tokenIn/tokenOut parameter is the shared token across the pools.
        ISwapRouter.ExactInputParams memory params = ISwapRouter.ExactInputParams({
            path: abi.encodePacked(address(tokenIn), poolFee, proxy, poolFee, address(tokenOut)),
            recipient: address(this),
            deadline: block.timestamp + 15,
            amountIn: amountIn,
            amountOutMinimum: 0
        });

        // The call to `exactInput` executes the swap.
        amountOut = swapRouter.exactInput(params);
    }

    /// @notice _getRatio returns ratio between tokenA and tokenB based on prices fetched from
    /// UniswapV3Pool
    /// @param tokenA Address of first token
    /// @param tokenB Address of second token
    /// @param poolFee Fee value of tokenA/tokenB pool
    /// @return ratio tokenA/tokenB ratio
    function _getRatio(
        address tokenA,
        address tokenB,
        uint24 poolFee
    ) internal view returns (uint256 ratio) {
        uint256 ratioA = _getWETHPoolRatio(tokenA, poolFee);
        uint256 ratioB = _getWETHPoolRatio(tokenB, poolFee);

        ratio = (ratioA * 10**18) / ratioB;
    }

    /// @notice _getWETHPoolRatio returns ratio between tokenA and WETH based on prices fetched from
    /// UniswapV3Pool
    /// @dev Ratio is calculated differently if token0 in pool is WETH
    /// @param token Token address
    /// @param poolFee Fee value of token/WETH pool
    /// @return ratio token/WETH ratio
    function _getWETHPoolRatio(address token, uint24 poolFee) internal view returns (uint256 ratio) {
        address pool = IUniswapV3Factory(uniswapFactory).getPool(WETH9, token, poolFee);
        (uint160 sqrtPriceX96token, , , , , , ) = IUniswapV3Pool(pool).slot0();
        if (IUniswapV3Pool(pool).token0() == WETH9) {
            // ratio is 10^18/sqrtPrice - multiply again with 10^18 to convert to decimal
            ratio = UniswapMath.mulDiv(10**18, 10**18, _getPriceFromSqrtPrice(sqrtPriceX96token));
        } else {
            ratio = _getPriceFromSqrtPrice(sqrtPriceX96token);
        }
    }

    /// @notice _getPriceFromSqrtPrice calculate price from UniswapV3Pool via formula
    /// @param sqrtPriceX96 Price fetched from UniswapV3Pool
    /// @return Calculated price
    function _getPriceFromSqrtPrice(uint160 sqrtPriceX96) internal pure returns (uint256) {
        uint256 price = UniswapMath.mulDiv(sqrtPriceX96, sqrtPriceX96, UniswapMath.Q96);
        return UniswapMath.mulDiv(price, 10**18, UniswapMath.Q96);
    }

    /// @notice Returns the amount out received for a given exact input swap without executing the swap
    /// @param path The path of the swap, i.e. each token pair and the pool fee
    /// @param amountIn The amount of the first token to swap
    /// @return amountOut The amount of the last token that would be received
    function quoteExactInput(bytes memory path, uint256 amountIn) external returns (uint256 amountOut) {
        return quoter.quoteExactInput(path, amountIn);
    }

    /// @notice Returns the amount out received for a given exact input but for a swap of a single pool
    /// @param tokenIn The token being swapped in
    /// @param tokenOut The token being swapped out
    /// @param fee The fee of the token pool to consider for the pair
    /// @param amountIn The desired input amount
    /// @param sqrtPriceLimitX96 The price limit of the pool that cannot be exceeded by the swap
    /// @return amountOut The amount of `tokenOut` that would be received
    function quoteExactInputSingle(
        address tokenIn,
        address tokenOut,
        uint24 fee,
        uint256 amountIn,
        uint160 sqrtPriceLimitX96
    ) external returns (uint256 amountOut) {
        return quoter.quoteExactInputSingle(tokenIn, tokenOut, fee, amountIn, sqrtPriceLimitX96);
    }

    /// @notice Returns the amount in required for a given exact output swap without executing the swap
    /// @param path The path of the swap, i.e. each token pair and the pool fee. Path must be provided in reverse order
    /// @param amountOut The amount of the last token to receive
    /// @return amountIn The amount of first token required to be paid
    function quoteExactOutput(bytes memory path, uint256 amountOut) external returns (uint256 amountIn) {
        return quoter.quoteExactOutput(path, amountOut);
    }

    /// @notice Returns the amount in required to receive the given exact output amount but for a swap of a single pool
    /// @param tokenIn The token being swapped in
    /// @param tokenOut The token being swapped out
    /// @param fee The fee of the token pool to consider for the pair
    /// @param amountOut The desired output amount
    /// @param sqrtPriceLimitX96 The price limit of the pool that cannot be exceeded by the swap
    /// @return amountIn The amount required as the input for the swap in order to receive `amountOut`
    function quoteExactOutputSingle(
        address tokenIn,
        address tokenOut,
        uint24 fee,
        uint256 amountOut,
        uint160 sqrtPriceLimitX96
    ) external returns (uint256 amountIn) {
        return quoter.quoteExactOutputSingle(tokenIn, tokenOut, fee, amountOut, sqrtPriceLimitX96);
    }
}
