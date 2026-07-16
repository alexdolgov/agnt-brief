// SPDX-License-Identifier: MIT

pragma solidity 0.8.30;

import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import { IAllowanceTransfer as IPermit2 } from "@uniswap/permit2/src/interfaces/IAllowanceTransfer.sol";
import { IUniversalRouter } from "@uniswap/universal-router/contracts/interfaces/IUniversalRouter.sol";
import { Commands } from "@uniswap/universal-router/contracts/libraries/Commands.sol";
import { IQuoter } from "@uniswap/v3-periphery/contracts/interfaces/IQuoter.sol";

import { UniswapV2Library } from "../dependencies/uniswap/UniswapV2Library.sol";

import { IConduit } from "../interfaces/IConduit.sol";

/**
 * @title RouteExecutor
 * @author Rain Team
 * @notice Library for executing token swaps with runtime value injection.
 * @dev Provides utilities to execute {ERC20} approvals, {Permit2} approvals, and uniswap {UniversalRouter} swaps with
 * dynamic slippage protection.
 */
library RouteExecutor {
    using SafeERC20 for IERC20;
    using UniswapV2Library for address;

    /* ========================== STATE VARIABLES ========================== */

    /// @dev Basis points, i.e. 1e4.
    uint256 private constant _BASIS_POINTS = 10_000;

    /// @dev Address of the uniswap v2 factory contract.
    address private constant _UNISWAP_V2_FACTORY = 0xf1D7CC64Fb4452F05c498126312eBE29f30Fbcf9;

    /// @dev Address of the uniswap v3 quoter contract.
    address private constant _UNISWAP_V3_QUOTER = 0xb27308f9F90D607463bb33eA1BeBb41C27CE5AB6;

    /// @dev Address of the permit2 contract.
    IPermit2 private constant _PERMIT2 = IPermit2(0x000000000022D473030F116dDEE9F6B43aC78BA3);

    /// @dev Address of the universal router contract.
    IUniversalRouter private constant _UNIVERSAL_ROUTER = IUniversalRouter(0xA51afAFe0263b40EdaEf0Df8781eA9aa03E381a3);

    /* ========================== FUNCTIONS ========================== */

    /**
     * @dev Executes a predefined route.
     *
     * NOTE: Approves the asset to permit2, approves permit2 allowance to universal router and finally executes swap via
     * universal router.
     *
     * @param asset Address of the asset to swap.
     * @param assets Amount of assets to swap.
     * @param slippageBps Slippage tolerance in basis points.
     * @param predefinedRoute Predefined route containing swap parameters.
     * @return success Whether the swap execution succeeded.
     */
    function executeRoutedSwap(
        IERC20 asset,
        uint256 assets,
        uint256 slippageBps,
        IConduit.Route memory predefinedRoute
    ) internal returns (bool) {
        if (!_approveAsset(asset, assets)) {
            return false;
        }

        if (!_approvePermit2(asset, assets)) {
            return false;
        }

        if (predefinedRoute.routeType == IConduit.RouteType.UNISWAP_V2) {
            return _executeV2Swap(assets, slippageBps, predefinedRoute.path);
        } else if (predefinedRoute.routeType == IConduit.RouteType.UNISWAP_V3) {
            return _executeV3Swap(assets, slippageBps, predefinedRoute.path);
        }

        return false;
    }

    /**
     * @dev Executes an arbitrary route via low-level calls.
     * @param asset Asset being swapped.
     * @param arbitraryRoute Arbitrary route to execute.
     * @return success Whether the swap execution succeeded.
     */
    function executeArbitrarySwap(IERC20 asset, IConduit.Call[] memory arbitraryRoute) internal returns (bool) {
        uint256 routeLength = arbitraryRoute.length;

        for (uint256 i; i < routeLength; ) {
            IConduit.Call memory call = arbitraryRoute[i];

            (bool success, ) = call.to.call{ value: call.value }(call.data);

            if (!success) {
                return false;
            }

            unchecked {
                ++i;
            }
        }

        if (asset.balanceOf(address(this)) != 0) {
            return false;
        }

        return true;
    }

    /**
     * @dev Approves the asset to permit2.
     * @param asset Asset to approve.
     * @param assets Amount to approve.
     * @return success Whether the approval succeeded.
     */
    function _approveAsset(IERC20 asset, uint256 assets) private returns (bool) {
        try asset.approve(address(_PERMIT2), assets) returns (bool success) {
            return success;
        } catch {
            return false;
        }
    }

    /**
     * @dev Approves permit2 allowance to universal router with current block timestamp as expiration.
     * @param asset Asset to approve.
     * @param assets Amount to approve.
     * @return success Whether the approval succeeded.
     */
    function _approvePermit2(IERC20 asset, uint256 assets) private returns (bool) {
        try _PERMIT2.approve(address(asset), address(_UNIVERSAL_ROUTER), uint160(assets), uint48(block.timestamp)) {
            return true;
        } catch {
            return false;
        }
    }

    /**
     * @dev Executes a uniswap v2 swap via universal router with slippage protection.
     * @param assets Amount to swap.
     * @param slippageBps Slippage tolerance in basis points.
     * @param path Encoded v2 path.
     * @return success Whether the swap succeeded.
     */
    function _executeV2Swap(uint256 assets, uint256 slippageBps, bytes memory path) private returns (bool) {
        address[] memory decodedPath = abi.decode(path, (address[]));
        uint256 amountOutMin = _getV2Quote(assets, slippageBps, decodedPath);
        bytes memory swapInput = abi.encode(address(this), assets, amountOutMin, decodedPath, true);

        bytes memory commands = abi.encodePacked(bytes1(uint8(Commands.V2_SWAP_EXACT_IN)));
        bytes[] memory inputs = new bytes[](1);
        inputs[0] = swapInput;

        try _UNIVERSAL_ROUTER.execute(commands, inputs, block.timestamp) {
            return true;
        } catch {
            return false;
        }
    }

    /**
     * @dev Executes a uniswap v3 swap via universal router with slippage protection.
     * @param assets Amount to swap.
     * @param slippageBps Slippage tolerance in basis points.
     * @param path Encoded v3 path.
     * @return success Whether the swap succeeded.
     */
    function _executeV3Swap(uint256 assets, uint256 slippageBps, bytes memory path) private returns (bool) {
        uint256 amountOutMin = _getV3Quote(assets, slippageBps, path);
        bytes memory swapInput = abi.encode(address(this), assets, amountOutMin, path, true);

        bytes memory commands = abi.encodePacked(bytes1(uint8(Commands.V3_SWAP_EXACT_IN)));
        bytes[] memory inputs = new bytes[](1);
        inputs[0] = swapInput;

        try _UNIVERSAL_ROUTER.execute(commands, inputs, block.timestamp) {
            return true;
        } catch {
            return false;
        }
    }

    /**
     * @dev Gets minimum output amount for uniswap v3 swap using quoter with slippage tolerance.
     * @param amountIn Input amount for the swap.
     * @param slippageBps Slippage tolerance in basis points.
     * @param path Token addresses and fees for the uniswap v3 swap path.
     * @return amountOutMin Minimum acceptable output amount with slippage applied.
     */
    function _getV3Quote(uint256 amountIn, uint256 slippageBps, bytes memory path) private returns (uint256) {
        uint256 amountOutMin;

        try IQuoter(_UNISWAP_V3_QUOTER).quoteExactInput(path, amountIn) returns (uint256 amountOut) {
            amountOutMin = (amountOut * (_BASIS_POINTS - slippageBps)) / _BASIS_POINTS;
        } catch {
            amountOutMin = 0;
        }

        return amountOutMin;
    }

    /**
     * @dev Gets minimum output amount for uniswap v2 swap with slippage tolerance.
     * @param amountIn Input amount for the swap.
     * @param slippageBps Slippage tolerance in basis points.
     * @param path Token addresses for the uniswap v2 swap path.
     * @return amountOutMin Minimum acceptable output amount with slippage applied.
     */
    function _getV2Quote(uint256 amountIn, uint256 slippageBps, address[] memory path) private view returns (uint256) {
        uint256[] memory amountsOut = _UNISWAP_V2_FACTORY.getAmountsOut(amountIn, path);
        uint256 amountOut = amountsOut[amountsOut.length - 1];

        return (amountOut * (_BASIS_POINTS - slippageBps)) / _BASIS_POINTS;
    }
}
