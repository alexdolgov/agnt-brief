// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

import "@openzeppelin/contracts/access/Ownable.sol";

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import "src/interfaces/IUniswapV2Router.sol";
import "src/interfaces/ITokenSwapper.sol";
import "src/errors/Errors.sol";

contract UniswapV2Swapper is Ownable, ITokenSwapper {
    using SafeERC20 for IERC20;

    struct SwapRoute {
        IUniswapV2Router router;
        address[] path;
    }

    mapping(IERC20 => mapping(IERC20 => SwapRoute)) public tokenSwapRoutes; // input token => output token => swap route

    IUniswapV2Router public defaultRouter;
    IERC20 public defaultIntermediaryToken;

    constructor(IUniswapV2Router _defaultRouter, IERC20 _defaultIntermediaryToken) Ownable() {
        defaultRouter = _defaultRouter;
        defaultIntermediaryToken = _defaultIntermediaryToken;
    }

    /*
    * @notice Set values for `defaultRouter` and `defaultIntermediaryToken` parameters of the `swap` function. 
    * These default values will be used when the `swap` function is called without explicitly specifying these parameters.
    * @param _defaultRouter The default `router` contract to be used in the `swap` function if no router address is provided.
    * @param _defaultIntermediaryToken The default `intermediaryToken` contract to be used in the `swap` function.
    * @dev Only the contract owner can call this function.
    */
    function setDefaults(IUniswapV2Router _defaultRouter, IERC20 _defaultIntermediaryToken) external onlyOwner {
        defaultRouter = _defaultRouter;
        defaultIntermediaryToken = _defaultIntermediaryToken;
    }

    /*
    * @notice Insert or update a custom swap route for a specific input-output token pair. 
    * A custom swap route consists of a `router` contract and a list of intermediate tokens that make up the path from the input token to the output token. 
    * This function can be used to override the default swap route that is determined by the `swap` function.
    * @param inputToken The input token of the custom swap route.
    * @param outputToken The output token of the custom swap route.
    * @param router The `router` contract to be used for the custom swap route.
    * @param path The array of addresses that make up the path from the input token to the output token.
    * @dev Only the contract owner can call this function.
    */
    function upsertPathOverride(IERC20 inputToken, IERC20 outputToken, IUniswapV2Router router, address[] calldata path)
        external
        onlyOwner
    {
        if (address(inputToken) == address(0)) revert Errors.EmptyTokenIn();
        if (address(outputToken) == address(0)) revert Errors.EmptyTokenOut();
        if (address(router) == address(0)) revert Errors.EmptyRouter();
        if (path.length <= 1) revert Errors.EmptyPath();

        tokenSwapRoutes[inputToken][outputToken] = SwapRoute({router: router, path: path});
    }

    /*
    * @notice Removes a custom swap route for a specific input-output token pair. 
    * @param inputToken The input token of the custom swap route to be removed.
    * @param outputToken The output token of the custom swap route to be removed.
    * @dev Only the contract owner can call this function.
    */
    function removePathOverride(IERC20 inputToken, IERC20 outputToken) external onlyOwner {
        delete tokenSwapRoutes[inputToken][outputToken];
    }

    /*
    * @notice Gets the current swap route for a specific input-output token pair.
    * @param inputToken The input token of the swap route to retrieve.
    * @param outputToken The output token of the swap route to retrieve.
    * @return A tuple with the router and path of the current swap route for the input-output token pair.
    */
    function getRouterAndPath(IERC20 inputToken, IERC20 outputToken)
        public
        view
        returns (IUniswapV2Router router, address[] memory path)
    {
        return (getRouter(inputToken, outputToken), getPath(inputToken, outputToken));
    }

    /*
    * @notice Gets the current router for a specific input-output token pair.
    * @param inputToken The input token of the swap route to retrieve.
    * @param outputToken The output token of the swap route to retrieve.
    * @return The router of the current swap route for the input-output token pair.
    */
    function getRouter(IERC20 inputToken, IERC20 outputToken) public view returns (IUniswapV2Router router) {
        return _getRouter(tokenSwapRoutes[inputToken][outputToken]);
    }

    /*
    * @notice Returns the router for the given SwapRoute.
    * @param swapRoute The swap route to retrieve the router for.
    * @return The router of the current swap route for the input-output token pair.
    */
    function _getRouter(SwapRoute storage swapRoute) internal view returns (IUniswapV2Router router) {
        return swapRoute.router == IUniswapV2Router(address(0)) ? defaultRouter : swapRoute.router;
    }

    /*
    * @notice Retrieves the path for the requested `inputToken` and `outputToken`.
    * @param inputToken The input token of the swap path.
    * @param outputToken The output token of the swap path.
    * @return The path for the given input and output tokens.
    */
    function getPath(IERC20 inputToken, IERC20 outputToken) public view returns (address[] memory path) {
        return _getPath(tokenSwapRoutes[inputToken][outputToken], inputToken, outputToken);
    }

    /*
    * @notice Retrieves the path for a given input and output token pair. 
    * @param inputToken The input token in the swap path.
    * @param outputToken The output token in the swap path.
    * @return The path for the given input and output token pair. If a path has been explicitly defined in the tokenSwapRoutes mapping, it will be returned.
    * If either the input or output token is the defaultIntermediaryToken, a path of length 2 will be returned. 
    * Otherwise, a path of length 3 will be returned, with the defaultIntermediaryToken as the middle element.
    */
    function _getPath(SwapRoute storage swapRoute, IERC20 inputToken, IERC20 outputToken)
        internal
        view
        returns (address[] memory path)
    {
        if (swapRoute.path.length > 0) {
            path = swapRoute.path;
        } else {
            if (inputToken == defaultIntermediaryToken || outputToken == defaultIntermediaryToken) {
                path = new address[](2);
                path[0] = address(inputToken);
                path[1] = address(outputToken);
            } else {
                path = new address[](3);
                path[0] = address(inputToken);
                path[1] = address(defaultIntermediaryToken);
                path[2] = address(outputToken);
            }
        }
        return path;
    }

    /*
    * @notice Swaps the specified amount of `tokenIn` for `tokenOut`. 
    * @param tokenIn The address of the input token.
    * @param amountIn The amount of the input token to be swapped.
    * @param tokenOut The address of the output token.
    * @param minAmountOut The minimum amount of the output token to be returned.
    * @return The amount of the output token returned.
    * @dev If the amount of `tokenOut` returned is less than `minAmountOut`, the transaction reverts.
    */
    function swap(address tokenIn, uint256 amount, address tokenOut, uint256 minAmountOut, bytes memory)
        external
        override
        returns (uint256 amountOutput)
    {
        SwapRoute storage swapRoute = tokenSwapRoutes[IERC20(tokenIn)][IERC20(tokenOut)];
        return swapWithRouterAndPath(
            _getRouter(swapRoute),
            _getPath(swapRoute, IERC20(tokenIn), IERC20(tokenOut)),
            amount,
            minAmountOut,
            msg.sender
        );
    }

    /*
    * @notice Swaps the input token for the output token using the given router and path.
    * @param router Address of the router contract to be used for the swap.
    * @param path Array of addresses representing the path of tokens to be swapped.
    * @param amountIn Amount of the input token to be swapped.
    * @param minAmountOut Minimum amount of the output token to be received.
    * @param recipient Address of the recipient of the output token.
    * @return Amount of output token received.
    * @dev If the amount of `tokenOut` returned is less than `minAmountOut`, the transaction reverts.
    */
    function swapWithRouterAndPath(
        IUniswapV2Router router,
        address[] memory path,
        uint256 amountIn,
        uint256 minAmountOut,
        address recipient
    ) public returns (uint256 amountOut) {
        if (amountIn == 0) revert Errors.InvalidAmountIn(amountIn, 0);

        IERC20(path[0]).safeTransferFrom(msg.sender, address(this), amountIn);
        IERC20(path[0]).safeApprove(address(router), amountIn);

        uint256[] memory amounts =
            router.swapExactTokensForTokens(amountIn, minAmountOut, path, recipient, type(uint256).max);

        IERC20(path[0]).safeApprove(address(router), 0);

        unchecked {
            //amounts array length will never have a 0 length array of amounts, also it cannot grab an overflowed element from amounts array and will revert
            amountOut = amounts[amounts.length - 1];
        }
    }
}
