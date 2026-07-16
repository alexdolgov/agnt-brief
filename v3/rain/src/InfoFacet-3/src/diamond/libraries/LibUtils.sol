// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import { IERC20, SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import { _revert } from "../../utils/Globals.sol";

import { IRainDeployer } from "../../interfaces/IRainDeployer.sol";

import { IRainPool } from "../../interfaces/IRainPool.sol";

import { IV4Quoter } from "@uniswap/v4-periphery/src/interfaces/IV4Quoter.sol";

import { Currency } from "@uniswap/v4-core/src/types/Currency.sol";

import { PathKey } from "@uniswap/v4-periphery/src/libraries/PathKey.sol";

import { ISwapRouter } from "@uniswap/v3-periphery/contracts/interfaces/ISwapRouter.sol";

import { IQuoter } from "@uniswap/v3-periphery/contracts/interfaces/IQuoter.sol";

import { IUniswapV2Router01 } from "@uniswap/v2-periphery/contracts/interfaces/IUniswapV2Router01.sol";

import { UniswapV2Library } from "../../libraries/helpers/UniswapV2Library.sol";

import { IRainToken } from "../../interfaces/IRainToken.sol";

import { CurrencyLibrary, Currency } from "@uniswap/v4-core/src/types/Currency.sol";

import { IPoolManager } from "@uniswap/v4-core/src/interfaces/IPoolManager.sol";

import { BalanceDelta, BalanceDeltaLibrary } from "@uniswap/v4-core/src/types/BalanceDelta.sol";

import { WETH, USDT, POOL_MANAGER } from "../../shared/Constants.sol";

import { SafeCast } from "@openzeppelin/contracts/utils/math/SafeCast.sol";

/**
 * @title LibUtils
 * @author Rain Team
 * @notice Library for executing token swaps with runtime value injection.
 * @dev Provides utilities to execute {ERC20} approvals, {Permit2} approvals, and uniswap (V2, V3, UniversalRouter)
 * swaps with dynamic slippage protection.
 */
library LibUtils {
    using SafeERC20 for IERC20;
    using BalanceDeltaLibrary for BalanceDelta;
    using SafeCast for int128;
    using SafeCast for uint128;
    using SafeCast for uint256;
    using CurrencyLibrary for address;

    /**
     * @dev Calculates the amount of Rain recieved with the given amount of base token.
     * @param amountInBaseToken The amount of base token to be exchanged.
     * @return amountRain The amount of Rain recieved with the given amount of base token.
     */
    function swapAndBurn(
        uint256 amountInBaseToken,
        address baseToken,
        address rainToken,
        address platformAddress,
        IRainDeployer.TokenData calldata tokenData
    ) external returns (uint256 amountRain) {
        if (amountInBaseToken == 0) {
            _revert(IRainPool.InvalidAmount.selector);
        }

        IERC20(baseToken).forceApprove(tokenData.routerAddress, amountInBaseToken);

        uint256 amountWETH;

        if (tokenData.pathTokenWETH.length != 0) {
            address uniswapV3Router = 0xE592427A0AEce92De3Edee1F18E0157C05861564;
            address quoter = 0xb27308f9F90D607463bb33eA1BeBb41C27CE5AB6;

            uint256 amountOutMinimum;

            bytes memory path = abi.encodePacked(WETH, uint24(100), rainToken);

            if (baseToken == WETH) {
                amountWETH = amountInBaseToken;
            } else if (tokenData.tokenPool == IRainDeployer.TokenPool.V2) {
                amountWETH = _swapTokenForWETHV2(tokenData, WETH, amountInBaseToken);
            } else if (tokenData.tokenPool == IRainDeployer.TokenPool.V3) {
                amountWETH = _swapTokenForWETHV3(tokenData, WETH, amountInBaseToken);
            } else if (tokenData.tokenPool == IRainDeployer.TokenPool.V4) {
                amountWETH = _swapTokenForWETHV4(tokenData, baseToken, amountInBaseToken);
            }

            try IQuoter(quoter).quoteExactInput(path, amountWETH) returns (uint256 quotedAmount) {
                amountOutMinimum = (quotedAmount * 970) / 1000; // 3% Slippage allowed
            } catch {
                // if no quote fetched unlimited slippage
                amountOutMinimum = 0;
            }
            ISwapRouter.ExactInputParams memory swapParams = ISwapRouter.ExactInputParams({
                path: path,
                recipient: address(this),
                deadline: block.timestamp + 2 minutes,
                amountIn: amountWETH,
                amountOutMinimum: amountOutMinimum
            });

            IERC20(WETH).approve(uniswapV3Router, amountWETH);

            try ISwapRouter(uniswapV3Router).exactInput(swapParams) returns (uint256 amount) {
                amountRain = amount;
            } catch {
                IERC20(baseToken).safeTransfer(platformAddress, amountInBaseToken);
            }
        } else {
            amountRain = amountInBaseToken;
        }

        if (amountRain > 0) {
            try IRainToken(rainToken).burn(amountRain) {
                emit IRainPool.RainTokenBurned(amountRain);
            } catch {
                IERC20(rainToken).safeTransfer(platformAddress, amountRain);
            }
        } else {
            IERC20(baseToken).safeTransfer(platformAddress, amountInBaseToken);
        }

        emit IRainPool.PlatformClaim(platformAddress, amountInBaseToken);
    }

    /**
     * @dev Splits claim amount between `referrer` and `poolOwner`,
     * emits {ReferrerClaim} if `referrer` exists and always emits {CreatorClaim}.
     * @param amount The total claim amount to be distributed.
     */
    function referrerCreatorClaim(uint256 amount, address referrer, address poolOwner, address baseToken) external {
        if (referrer != address(0)) {
            amount = amount / 2;
            IERC20(baseToken).safeTransfer(referrer, amount);
            emit IRainPool.ReferrerClaim({ wallet: referrer, amount: amount });
        }

        IERC20(baseToken).safeTransfer(poolOwner, amount);
        emit IRainPool.CreatorClaim({ wallet: poolOwner, amount: amount });
    }

    /**
     * @notice Swaps base tokens for USDT using the appropriate DEX version
     * @param baseToken The address of the token to swap from
     * @param amountIn The amount of base tokens to swap
     * @param tokenData The token configuration data including router and path information
     * @return amountOutMin The minimum amount of USDT received from the swap
     */
    function swapTokensForUSDT(
        address baseToken,
        uint256 amountIn,
        IRainDeployer.TokenData calldata tokenData
    ) external returns (uint256 amountOutMin) {
        if (tokenData.tokenPool == IRainDeployer.TokenPool.V2) {
            amountOutMin = _swapTokenForUSDTV2(tokenData, baseToken, amountIn);
        } else if (tokenData.tokenPool == IRainDeployer.TokenPool.V3) {
            amountOutMin = _swapTokenForUSDTV3(tokenData, baseToken, amountIn);
        } else if (tokenData.tokenPool == IRainDeployer.TokenPool.V4) {
            amountOutMin = _swapTokenForUSDTV4(tokenData, baseToken, amountIn);
        }
    }

    /**
     * @notice Gets a quote for swapping tokens to USDT
     * @param baseToken The address of the token to swap from
     * @param amountIn The amount of base tokens to swap
     * @param tokenData The token configuration data including router and path information
     * @return amountOutMin The estimated minimum amount of USDT that would be received
     */
    function getQuoteOut(
        address baseToken,
        uint256 amountIn,
        IRainDeployer.TokenData calldata tokenData
    ) external returns (uint256 amountOutMin) {
        if (tokenData.tokenPool == IRainDeployer.TokenPool.V2) {
            address[] memory path = abi.decode(tokenData.pathTokenToUSDT, (address[]));

            uint256[] memory amountsOutMax = UniswapV2Library.getAmountsOut(tokenData.routerHelper, amountIn, path);

            amountOutMin = amountsOutMax[amountsOutMax.length - 1];
        } else if (tokenData.tokenPool == IRainDeployer.TokenPool.V3) {
            amountOutMin = IQuoter(tokenData.routerHelper).quoteExactInput(tokenData.pathTokenToUSDT, amountIn);
        } else if (tokenData.tokenPool == IRainDeployer.TokenPool.V4) {
            PathKey[] memory path = abi.decode(tokenData.pathTokenToUSDT, (PathKey[]));

            IV4Quoter.QuoteExactParams memory quoteParams = IV4Quoter.QuoteExactParams({
                exactCurrency: Currency.wrap(baseToken),
                path: path,
                exactAmount: uint128(amountIn)
            });

            (uint256 quotedAmountOut, ) = IV4Quoter(tokenData.routerHelper).quoteExactInput(quoteParams);

            amountOutMin = (quotedAmountOut * 1005) / 1000;
        }
    }

    /**
     * @notice Gets a quote for the amount of tokens needed to receive a specific amount of USDT
     * @param baseToken The address of the token to swap from
     * @param amountOut The desired amount of USDT to receive
     * @param tokenData The token configuration data including router and path information
     * @return amountInMin The estimated amount of base tokens required
     */
    function getQuoteIn(
        address baseToken,
        uint256 amountOut,
        IRainDeployer.TokenData calldata tokenData
    ) external returns (uint256 amountInMin) {
        if (tokenData.tokenPool == IRainDeployer.TokenPool.V2) {
            address[] memory path = abi.decode(tokenData.pathUSDTToToken, (address[]));

            uint256[] memory amountsOutMax = UniswapV2Library.getAmountsOut(tokenData.routerHelper, amountOut, path);

            amountInMin = amountsOutMax[amountsOutMax.length - 1];
        } else if (tokenData.tokenPool == IRainDeployer.TokenPool.V3) {
            amountInMin = IQuoter(tokenData.routerHelper).quoteExactInput(tokenData.pathUSDTToToken, amountOut);
        } else if (tokenData.tokenPool == IRainDeployer.TokenPool.V4) {
            PathKey[] memory path = abi.decode(tokenData.pathUSDTToToken, (PathKey[]));

            IV4Quoter.QuoteExactParams memory quoteParams = IV4Quoter.QuoteExactParams({
                exactCurrency: Currency.wrap(USDT),
                path: path,
                exactAmount: uint128(amountOut)
            });

            (uint256 quotedAmountIn, ) = IV4Quoter(tokenData.routerHelper).quoteExactOutput(quoteParams);

            amountInMin = quotedAmountIn;
        }
    }

    /**
     * @notice Swaps tokens for USDT using Uniswap V2
     * @param tokenData The token configuration data
     * @param tokenAddress The address of the token to swap
     * @param amountToken The amount of tokens to swap
     * @return amountOut The amount of USDT received
     */
    function _swapTokenForUSDTV2(
        IRainDeployer.TokenData calldata tokenData,
        address tokenAddress,
        uint256 amountToken
    ) internal returns (uint256 amountOut) {
        address routerAddress = tokenData.routerAddress;

        address[] memory path = abi.decode(tokenData.pathTokenToUSDT, (address[]));

        uint256[] memory amountsOutMax = UniswapV2Library.getAmountsOut(tokenData.routerHelper, amountToken, path);

        amountOut = amountsOutMax[amountsOutMax.length - 1];
        if (amountOut == 0) {
            _revert(IRainDeployer.InsufficientPoolLiquidity.selector);
        }

        IERC20(tokenAddress).forceApprove(routerAddress, amountToken);

        IUniswapV2Router01(routerAddress).swapTokensForExactTokens(
            amountOut,
            amountToken,
            path,
            address(this),
            block.timestamp + 5
        );
    }

    /**
     * @notice Swaps tokens for USDT using Uniswap V3
     * @param tokenData The token configuration data
     * @param tokenAddress The address of the token to swap
     * @param amountToken The amount of tokens to swap
     * @return amountOut The amount of USDT received
     */
    function _swapTokenForUSDTV3(
        IRainDeployer.TokenData calldata tokenData,
        address tokenAddress,
        uint256 amountToken
    ) internal returns (uint256 amountOut) {
        address routerAddress = tokenData.routerAddress;
        address routerHelper = tokenData.routerHelper;

        bytes memory path = tokenData.pathTokenToUSDT;

        uint256 amountOutMinimum = IQuoter(routerHelper).quoteExactInput(path, amountToken);

        ISwapRouter.ExactInputParams memory swapParams = ISwapRouter.ExactInputParams({
            path: path,
            recipient: address(this),
            deadline: block.timestamp + 5,
            amountIn: amountToken,
            amountOutMinimum: amountOutMinimum
        });

        IERC20(tokenAddress).forceApprove(routerAddress, amountToken);

        amountOut = ISwapRouter(routerAddress).exactInput(swapParams);
    }

    /**
     * @notice Swaps tokens for USDT using Uniswap V4
     * @param tokenData The token configuration data
     * @param tokenAddress The address of the token to swap
     * @param amountToken The amount of tokens to swap
     * @return amountUSDT The amount of USDT received
     */
    function _swapTokenForUSDTV4(
        IRainDeployer.TokenData calldata tokenData,
        address tokenAddress,
        uint256 amountToken
    ) internal returns (uint256 amountUSDT) {
        IPoolManager poolManager = IPoolManager(POOL_MANAGER);

        PathKey[] memory route = abi.decode(tokenData.pathTokenToUSDT, (PathKey[]));

        if (route.length == 0) {
            _revert(IRainDeployer.InvalidPath.selector);
        }

        IV4Quoter.QuoteExactParams memory quoteParams = IV4Quoter.QuoteExactParams({
            exactCurrency: Currency.wrap(tokenAddress), // input currency
            path: route,
            exactAmount: uint128(amountToken)
        });
        // Query the V4 quoter
        (uint256 quotedAmountOut, ) = IV4Quoter(tokenData.routerHelper).quoteExactInput(quoteParams);

        // Apply 0.5% slippage buffer ONCE
        uint256 amountOutMin = (quotedAmountOut * 1005) / 1000;

        bytes memory result = poolManager.unlock(
            abi.encode(route, Currency.wrap(tokenAddress), amountToken, amountOutMin)
        );

        amountUSDT = abi.decode(result, (uint256));

        if (amountUSDT == 0) {
            _revert(IRainDeployer.InsufficientPoolLiquidity.selector);
        }
    }

    /**
     * @notice Swaps tokens for WETH using Uniswap V2
     * @param tokenData The token configuration data
     * @param tokenAddress The address of the token to swap
     * @param amountToken The amount of tokens to swap
     * @return amountRain The amount of WETH received
     */
    function _swapTokenForWETHV2(
        IRainDeployer.TokenData calldata tokenData,
        address tokenAddress,
        uint256 amountToken
    ) internal returns (uint256 amountRain) {
        address routerAddress = tokenData.routerAddress;

        address[] memory path = abi.decode(tokenData.pathTokenWETH, (address[]));

        uint256[] memory amountsOutMax = UniswapV2Library.getAmountsOut(tokenData.routerHelper, amountToken, path);

        amountRain = amountsOutMax[amountsOutMax.length - 1];
        if (amountRain == 0) {
            _revert(IRainDeployer.InsufficientPoolLiquidity.selector);
        }

        IERC20(tokenAddress).forceApprove(routerAddress, amountToken);

        IUniswapV2Router01(routerAddress).swapTokensForExactTokens(
            amountToken,
            amountRain,
            path,
            address(this),
            block.timestamp + 5
        );
    }

    /**
     * @notice Swaps tokens for WETH using Uniswap V3
     * @param tokenData The token configuration data
     * @param tokenAddress The address of the token to swap
     * @param amountToken The amount of tokens to swap
     * @return amountRain The amount of WETH received
     */
    function _swapTokenForWETHV3(
        IRainDeployer.TokenData calldata tokenData,
        address tokenAddress,
        uint256 amountToken
    ) internal returns (uint256 amountRain) {
        address routerAddress = tokenData.routerAddress;
        address routerHelper = tokenData.routerHelper;

        bytes memory path = tokenData.pathTokenWETH;

        uint256 amountOutMinimum = IQuoter(routerHelper).quoteExactInput(path, amountToken);

        ISwapRouter.ExactInputParams memory swapParams = ISwapRouter.ExactInputParams({
            path: path,
            recipient: address(this),
            deadline: block.timestamp + 5,
            amountIn: amountToken,
            amountOutMinimum: amountOutMinimum
        });

        IERC20(tokenAddress).forceApprove(routerAddress, amountToken);

        amountRain = ISwapRouter(routerAddress).exactInput(swapParams);
    }

    /**
     * @notice Swaps tokens for WETH using Uniswap V4
     * @param tokenData The token configuration data
     * @param baseToken The address of the token to swap
     * @param amountIn The amount of tokens to swap
     * @return amountWETH The amount of WETH received
     */
    function _swapTokenForWETHV4(
        IRainDeployer.TokenData calldata tokenData,
        address baseToken,
        uint256 amountIn
    ) internal returns (uint256 amountWETH) {
        IPoolManager poolManager = IPoolManager(POOL_MANAGER);

        PathKey[] memory route = abi.decode(tokenData.pathTokenWETH, (PathKey[]));

        IV4Quoter.QuoteExactParams memory quoteParams = IV4Quoter.QuoteExactParams({
            exactCurrency: Currency.wrap(baseToken), // input currency
            path: route,
            exactAmount: uint128(amountIn)
        });

        // Query the V4 quoter
        (uint256 quotedAmountOut, ) = IV4Quoter(tokenData.routerHelper).quoteExactInput(quoteParams);

        // Apply 0.5% slippage buffer ONCE
        uint256 amountOutMin = (quotedAmountOut * 1005) / 1000;

        if (route.length == 0) {
            _revert(IRainDeployer.InvalidPath.selector);
        }

        bytes memory result = poolManager.unlock(
            abi.encode(
                abi.decode(tokenData.pathTokenWETH, (PathKey[])),
                Currency.wrap(baseToken),
                amountIn,
                amountOutMin
            )
        );

        amountWETH = abi.decode(result, (uint256));

        if (amountWETH == 0) {
            _revert(IRainDeployer.InsufficientPoolLiquidity.selector);
        }
    }
}
