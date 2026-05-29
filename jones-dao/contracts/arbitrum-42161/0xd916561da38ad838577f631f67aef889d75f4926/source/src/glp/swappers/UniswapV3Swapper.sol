// SPDX-License-Identifier: UNLICENSED

// Copyright (c) 2023 JonesDAO - All rights reserved
// Jones DAO: https://www.jonesdao.io/

// Check https://docs.jonesdao.io/jones-dao/other/bounty for details on our bounty program.

pragma solidity ^0.8.10;

import {UpgradeableGovernable} from "src/common/UpgradeableGovernable.sol";
import {IERC20} from "openzeppelin-contracts/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "openzeppelin-contracts/contracts/token/ERC20/utils/SafeERC20.sol";
import {IERC20Metadata} from "openzeppelin-contracts/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import {FixedPointMathLib} from "solmate/utils/FixedPointMathLib.sol";
import {IV3SwapRouter} from "src/interfaces/swap/IV3SwapRouter.sol";
import {IUniswapV3Pool} from "src/interfaces/swap/IUniswapV3Pool.sol";
import {ITokenSwapper} from "src/interfaces/swap/ITokenSwapper.sol";
import {UniV3Library} from "src/libraries/UniV3Library.sol";

contract UniswapV3Swapper is UpgradeableGovernable, ITokenSwapper {
    using FixedPointMathLib for uint256;
    using SafeERC20 for IERC20;

    struct SwapPair {
        address from;
        address to;
        uint24 fee;
    }

    /// @notice Uni V3 Router
    IV3SwapRouter private constant V3_ROUTER = IV3SwapRouter(0xE592427A0AEce92De3Edee1F18E0157C05861564);

    /// @notice Uni V3 Factory
    address private constant UNISWAP_V3_FACTORY = 0x1F98431c8aD98523631AE4a59f267346ea31F984;

    /// @notice Uni V3 Pool Code Hash
    bytes32 private constant UNISWAP_POOL_INIT_CODE_HASH =
        0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54;

    /// @notice input token => output token => swap route
    mapping(address => mapping(address => bytes)) public tokenSwapPaths;

    /// @notice input token => output token => pairs
    mapping(address => mapping(address => SwapPair[])) public pairs;

    int24 public ticksMin;

    uint256 public threshold;

    /// @notice Math Precision
    uint256 public constant PRECISION = 1e30;

    function initialize() external initializer {
        __Governable_init(msg.sender);
        ticksMin = 300; // 5 minutes
        threshold = PRECISION.mulDivDown(1, 1000); // 0.1%
    }

    /**
     * @notice Update Ticks time frame to calculate price.
     */
    function updateTicksMin(int24 _minutes) external onlyGovernor {
        ticksMin = _minutes * 60;
    }

    /**
     * @notice Update price threshold to conclude if a pool is manipulated
     *  1e30 == 100%
     */
    function updateThreshold(uint256 _threshold) external onlyGovernor {
        threshold = _threshold;
    }

    /**
     * @notice Updates the swap path for the given inputToken and outputToken pair.
     * @param inputToken The input token of the custom swap route.
     * @param outputToken The output token of the custom swap route.
     * @param swapRoute An array of SwapPair objects representing the new swap path for the given inputToken and outputToken pair.
     * @dev Only the contract owner can call this function.
     */
    function upsertPathOverride(address inputToken, address outputToken, SwapPair[] calldata swapRoute)
        external
        onlyGovernor
    {
        if (inputToken == address(0)) revert EmptyTokenIn();
        if (outputToken == address(0)) revert EmptyTokenOut();
        if (swapRoute.length == 0) revert EmptyPath();

        tokenSwapPaths[inputToken][outputToken] = _composeSwapPath(swapRoute, inputToken, outputToken);
    }

    /**
     * @notice Removes a custom swap route for a specific input-output token pair.
     * @param inputToken The input token of the custom swap route to be removed.
     * @param outputToken The output token of the custom swap route to be removed.
     * @dev Only the contract owner can call this function.
     */
    function removePathOverride(address inputToken, address outputToken) external onlyGovernor {
        delete tokenSwapPaths[inputToken][outputToken];
        delete pairs[inputToken][outputToken];
    }

    /**
     * @notice Returns the serialized swap route between the `inputToken` and `outputToken` as bytes data.
     * @param inputToken The input token in the swap route.
     * @param outputToken The output token in the swap route.
     * @return swapRoute The serialized swap route between the `inputToken` and `outputToken`.
     */
    function getSwapPath(address inputToken, address outputToken) public view returns (bytes memory swapRoute) {
        return tokenSwapPaths[inputToken][outputToken];
    }

    /**
     * @notice Returns the pairs swap route between the `inputToken` and `outputToken`.
     * @param inputToken The input token in the swap route.
     * @param outputToken The output token in the swap route.
     * @return The SwapPair struct route between the `inputToken` and `outputToken`.
     */
    function getPairs(address inputToken, address outputToken) public view returns (SwapPair[] memory) {
        return pairs[inputToken][outputToken];
    }

    /**
     * @notice Swaps the specified amount of `tokenIn` for `tokenOut`.
     * @param tokenIn The address of the input token.
     * @param amountIn The amount of the input token to be swapped.
     * @param tokenOut The address of the output token.
     * @param minAmountOut The minimum amount of the output token to be returned.
     * @return amountOut The amount of the output token returned.
     * @dev If the amount of `tokenOut` returned is less than `minAmountOut`, the transaction reverts.
     */
    function swap(address tokenIn, uint256 amountIn, address tokenOut, uint256 minAmountOut, bytes memory data)
        external
        override
        returns (uint256 amountOut)
    {
        IERC20(tokenIn).safeTransferFrom(msg.sender, address(this), amountIn);
        IERC20(tokenIn).safeApprove(address(V3_ROUTER), amountIn);

        if (minAmountOut == 0) {
            (uint256 slippage, uint256 basis) = abi.decode(data, (uint256, uint256));
            minAmountOut = _applySlippage(_minAmountOut(tokenIn, tokenOut, amountIn), slippage, basis);
        }

        IV3SwapRouter.ExactInputParams memory params;
        params.recipient = msg.sender;
        params.amountIn = amountIn;
        params.amountOutMinimum = minAmountOut;
        params.path = tokenSwapPaths[tokenIn][tokenOut];
        params.deadline = type(uint256).max;

        amountOut = V3_ROUTER.exactInput(params);

        IERC20(tokenIn).safeApprove(address(V3_ROUTER), 0);
    }

    /**
     * @notice Composes a swapPath from a given swapRoute.
     * The swapPath consists of the encoded addresses of the SwapPairs in the swapRoute as well as the fees associated with each swap.
     * @param swapRoute The swapRoute to be composed into a swapPath.
     * @return swapPath The resulting swapPath after composing the swapRoute.
     * @dev Checks that the from address of each SwapPair matches the to address of the previous SwapPair in the swapRoute.
     * If the from address of a SwapPair does not match the to address of the previous SwapPair, it reverts with an error.
     */
    function _composeSwapPath(SwapPair[] calldata swapRoute, address tokenIn, address tokenOut)
        private
        returns (bytes memory swapPath)
    {
        swapPath = abi.encodePacked(swapRoute[0].from);
        uint256 srl = swapRoute.length;
        for (uint256 i; i < srl;) {
            pairs[tokenIn][tokenOut].push(
                SwapPair({from: swapRoute[i].from, to: swapRoute[i].to, fee: swapRoute[i].fee})
            );
            swapPath = abi.encodePacked(swapPath, swapRoute[i].fee, swapRoute[i].to);
            if (i > 0) {
                unchecked {
                    // i > 0 in check above so i - 1 cannot underflow
                    if (swapRoute[i].from != swapRoute[i - 1].to) {
                        revert InvalidPathSegment(swapRoute[i].from, swapRoute[i - 1].to);
                    }
                }
            }

            unchecked {
                // i < srl cannot overflow
                ++i;
            }
        }
    }

    function _minAmountOut(address tokenIn, address tokenOut, uint256 amountIn) private view returns (uint256) {
        SwapPair[] memory _pairs = pairs[tokenIn][tokenOut];
        uint256 length = _pairs.length;
        uint256 min;

        for (uint256 i; i < length;) {
            IUniswapV3Pool pool = UniV3Library.getPool(
                UNISWAP_V3_FACTORY, _pairs[i].from, _pairs[i].to, _pairs[i].fee, UNISWAP_POOL_INIT_CODE_HASH
            );

            // Get TWAP of token0 quoted in token1.
            min = _checkManipulation(address(pool));

            address tokenA = pool.token0();

            if (tokenA == _pairs[i].from) {
                // Calculate min amount based of current TWAP price
                min = amountIn.mulDivDown(min, 10 ** IERC20Metadata(tokenA).decimals());
            } else {
                min = amountIn.mulDivDown(10 ** IERC20Metadata(tokenA).decimals(), min);
            }

            amountIn = min;

            unchecked {
                // i < length cannot overflow
                ++i;
            }
        }

        return min;
    }

    function _applySlippage(uint256 _amount, uint256 _slippage, uint256 _basis) private pure returns (uint256) {
        return _amount.mulDivDown(_slippage, _basis);
    }

    /**
     * @notice Check pool manipulation. check if the price change "too much" (base on threshold) in X time.
     * @param pool UniswapV3 Pool.
     * @return spot TWAP price of token0 quoted in token1.
     */
    function _checkManipulation(address pool) private view returns (uint256 spot) {
        spot = UniV3Library.getSpot(pool);

        uint256 mean = UniV3Library.getPrice(pool, ticksMin);

        uint256 diff;

        if (mean > spot) {
            diff = (mean - spot).mulDivDown(PRECISION, (spot + mean) / 2);
        } else {
            diff = (spot - mean).mulDivDown(PRECISION, (spot + mean) / 2);
        }

        if (diff > threshold) {
            revert PoolManipulated();
        }
    }

    error PoolManipulated();
}
