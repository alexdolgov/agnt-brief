// SPDX-License-Identifier: MIT

pragma solidity 0.8.30;

import { IUniswapV2Pair } from "@uniswap/v2-core/contracts/interfaces/IUniswapV2Pair.sol";

import { _revert } from "../../shared/Globals.sol";

/**
 * @title UniswapV2Library
 * @author Uniswap
 * @notice Performs uniswap v2 swap conversion.
 */
library UniswapV2Library {
    /* ========================== ERRORS ========================== */

    /**
     * @dev Thrown when the addresses being queried with are identical.
     */
    error IdenticalAddresses();

    /**
     * @dev Thrown when the argument input amount is insufficient, i.e. `0`.
     */
    error InsufficientInputAmount();

    /**
     * @dev Thrown when the pair's liquidity is insufficient, i.e. `0`.
     */
    error InsufficientLiquidity();

    /**
     * @dev Thrown when the argument output amount is insufficient, i.e. `0`.
     */
    error InsufficientOutputAmount();

    /**
     * @dev Thrown when the argument quote amount is insufficient, i.e. `0`.
     */
    error InsufficientQuoteAmount();

    /**
     * @dev Thrown when the given path's length does not exceed the expected minimum.
     */
    error InvalidPath();

    /**
     * @dev Thrown when the pair being queried is not valid.
     */
    error InvalidPair();

    /* ========================== FUNCTIONS ========================== */

    /**
     * @dev Fetches and sorts the reserves for a pair.
     *
     * Requirements:
     *
     * - `tokenA` and `tokenB` cannot be identical.
     * - `tokenA` and `tokenB` cannot be the zero address.
     *
     * @param factory Address of the uniswap v2 factory.
     * @param tokenA Address of the first token.
     * @param tokenB Address of the second token.
     * @return reserveA Reserve amount of tokenA.
     * @return reserveB Reserve amount of tokenB.
     */
    function getReserves(address factory, address tokenA, address tokenB) internal view returns (uint256, uint256) {
        (address token0, ) = sortTokens(tokenA, tokenB);
        (uint256 reserve0, uint256 reserve1, ) = IUniswapV2Pair(pairFor(factory, tokenA, tokenB)).getReserves();

        return tokenA == token0 ? (reserve0, reserve1) : (reserve1, reserve0);
    }

    /**
     * @dev Performs chained getAmountOut calculations on any number of pairs.
     *
     * Requirements:
     *
     * - `path` must have a length of at least `2`.
     * - `amountIn` cannot be zero.
     * - addresses in consecutive indexes of `path` cannot be identical.
     * - addresses in consecutive indexes of `path` must have non-zero reserves.
     * - addresses in `path` cannot be the zero address.
     *
     * @param factory Address of the uniswap v2 factory.
     * @param amountIn Input amount of the first token in the path.
     * @param path Array of token addresses representing the swap path.
     * @return amounts Array of amounts for each step in the swap path.
     */
    function getAmountsOut(
        address factory,
        uint256 amountIn,
        address[] memory path
    ) internal view returns (uint256[] memory) {
        if (path.length < 2) {
            _revert(InvalidPath.selector);
        }

        uint256 pathLengthMinusOne;

        unchecked {
            pathLengthMinusOne = path.length - 1;
        }

        uint256[] memory amounts = new uint256[](path.length);
        amounts[0] = amountIn;

        for (uint256 i; i < pathLengthMinusOne; ) {
            uint256 nextIndex;

            unchecked {
                nextIndex = i + 1;
            }

            (uint256 reserveIn, uint256 reserveOut) = getReserves(factory, path[i], path[nextIndex]);
            amounts[nextIndex] = getAmountOut(amounts[i], reserveIn, reserveOut);

            i = nextIndex;
        }

        return amounts;
    }

    /**
     * @dev Performs chained getAmountIn calculations on any number of pairs.
     *
     * Requirements:
     *
     * - `path` must have a length of at least `2`.
     * - `amountOut` cannot be zero.
     * - addresses in consecutive indexes of `path` cannot be identical.
     * - addresses in consecutive indexes of `path` must have non-zero reserves.
     * - addresses in `path` cannot be the zero address.
     *
     * @param factory Address of the uniswap v2 factory.
     * @param amountOut Desired output amount of the last token in the path.
     * @param path Array of token addresses representing the swap path.
     * @return amounts Array of amounts for each step in the swap path.
     */
    function getAmountsIn(
        address factory,
        uint256 amountOut,
        address[] memory path
    ) internal view returns (uint256[] memory) {
        if (path.length < 2) {
            _revert(InvalidPath.selector);
        }

        uint256 pathLengthMinusOne;

        unchecked {
            pathLengthMinusOne = path.length - 1;
        }

        uint256[] memory amounts = new uint256[](path.length);
        amounts[pathLengthMinusOne] = amountOut;

        for (uint256 i = pathLengthMinusOne; i > 0; ) {
            uint256 previousIndex;

            unchecked {
                previousIndex = i - 1;
            }

            (uint256 reserveIn, uint256 reserveOut) = getReserves(factory, path[previousIndex], path[i]);
            amounts[previousIndex] = getAmountIn(amounts[i], reserveIn, reserveOut);

            i = previousIndex;
        }

        return amounts;
    }

    /**
     * @dev Sorts token addresses. Used to handle return values from pairs sorted in this order.
     *
     * Requirements:
     *
     * - `tokenA` and `tokenB` cannot be identical.
     * - `tokenA` and `tokenB` cannot be the zero address.
     *
     * @param tokenA Address of the first token.
     * @param tokenB Address of the second token.
     * @return token0 Address of the lower sorted token.
     * @return token1 Address of the higher sorted token.
     */
    function sortTokens(address tokenA, address tokenB) internal pure returns (address, address) {
        if (tokenA == tokenB) {
            _revert(IdenticalAddresses.selector);
        }

        (address token0, address token1) = tokenA < tokenB ? (tokenA, tokenB) : (tokenB, tokenA);

        if (token0 == address(0)) {
            _revert(InvalidPair.selector);
        }

        return (token0, token1);
    }

    /**
     * @dev Calculates the CREATE2 address for a pair without making any external calls.
     *
     * Requirements:
     *
     * - `tokenA` and `tokenB` cannot be identical.
     * - `tokenA` and `tokenB` cannot be the zero address.
     *
     * @param factory Address of the uniswap v2 factory.
     * @param tokenA Address of the first token.
     * @param tokenB Address of the second token.
     * @return pair Address of the uniswap v2 pair.
     */
    function pairFor(address factory, address tokenA, address tokenB) internal pure returns (address) {
        (address token0, address token1) = sortTokens(tokenA, tokenB);

        return
            address(
                uint160(
                    uint256(
                        keccak256(
                            abi.encodePacked(
                                hex"ff",
                                factory,
                                keccak256(abi.encodePacked(token0, token1)),
                                hex"96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f"
                            )
                        )
                    )
                )
            );
    }

    /**
     * @dev Given some amount of an asset and pair reserves, returns an equivalent amount of the other asset.
     *
     * Requirements:
     *
     * - `amountA` cannot be zero.
     * - `reserveA` and `reserveB` cannot be zero.
     *
     * @param amountA Amount of tokenA.
     * @param reserveA Reserve amount of tokenA in the pair.
     * @param reserveB Reserve amount of tokenB in the pair.
     * @return amountB Equivalent amount of tokenB.
     */
    function quote(uint256 amountA, uint256 reserveA, uint256 reserveB) internal pure returns (uint256) {
        if (amountA == 0) {
            _revert(InsufficientQuoteAmount.selector);
        }

        if (reserveA == 0 || reserveB == 0) {
            _revert(InsufficientLiquidity.selector);
        }

        unchecked {
            return (amountA * reserveB) / reserveA;
        }
    }

    /**
     * @dev Given an input amount of an asset and pair reserves, returns the maximum output amount of the other asset.
     *
     * Requirements:
     *
     * - `amountIn` cannot be zero.
     * - `reserveIn` and `reserveOut` cannot be zero.
     *
     * @param amountIn Input amount of the asset being sold.
     * @param reserveIn Reserve amount of the input asset in the pair.
     * @param reserveOut Reserve amount of the output asset in the pair.
     * @return amountOut Maximum output amount of the asset being bought.
     */
    function getAmountOut(uint256 amountIn, uint256 reserveIn, uint256 reserveOut) internal pure returns (uint256) {
        if (amountIn == 0) {
            _revert(InsufficientInputAmount.selector);
        }

        if (reserveIn == 0 || reserveOut == 0) {
            _revert(InsufficientLiquidity.selector);
        }

        uint256 numerator;
        uint256 denominator;

        unchecked {
            uint256 amountInWithoutFee = amountIn * 997;

            numerator = amountInWithoutFee * reserveOut;
            denominator = (reserveIn * 1000) + amountInWithoutFee;
        }

        return numerator / denominator;
    }

    /**
     * @dev Given an output amount of an asset and pair reserves, returns the required input amount of the other asset.
     *
     * Requirements:
     *
     * - `amountOut` cannot be zero.
     * - `reserveIn` and `reserveOut` cannot be zero.
     *
     * @param amountOut Desired output amount of the asset being bought.
     * @param reserveIn Reserve amount of the input asset in the pair.
     * @param reserveOut Reserve amount of the output asset in the pair.
     * @return amountIn Required input amount of the asset being sold.
     */
    function getAmountIn(uint256 amountOut, uint256 reserveIn, uint256 reserveOut) internal pure returns (uint256) {
        if (amountOut == 0) {
            _revert(InsufficientOutputAmount.selector);
        }

        if (reserveIn == 0 || reserveOut == 0) {
            _revert(InsufficientLiquidity.selector);
        }

        unchecked {
            uint256 numerator = reserveIn * amountOut * 1000;
            uint256 denominator = (reserveOut - amountOut) * 997;

            return (numerator / denominator) + 1;
        }
    }
}
