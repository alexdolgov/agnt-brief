// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity =0.7.6;
pragma abicoder v2;

import "../interfaces/IStableSwapFactory.sol";
import "../interfaces/IStableSwapInfo.sol";
import "../interfaces/IUniswapV2Factory.sol";
import "@zf/v3-core/contracts/libraries/LowGasSafeMath.sol";
import "@zf/v3-core/contracts/interfaces/IZFV3Pool.sol";
import "../interfaces/IZFPair.sol";

library SmartRouterHelper {
    using LowGasSafeMath for uint256;

    /************************************************** Stable **************************************************/

    // get the pool info in stable swap
    function getStableInfo(
        address stableSwapFactory,
        address input,
        address output,
        uint256 flag
    ) internal view returns (uint256 i, uint256 j, address swapContract) {
        if (flag == 2) {
            IStableSwapFactory.StableSwapPairInfo memory info = IStableSwapFactory(stableSwapFactory).getPairInfo(input, output);
            i = input == info.token0 ? 0 : 1;
            j = (i == 0) ? 1 : 0;
            swapContract = info.swapContract;
        } else if (flag == 3) {
            IStableSwapFactory.StableSwapThreePoolPairInfo memory info = IStableSwapFactory(stableSwapFactory).getThreePoolPairInfo(input, output);

            if (input == info.token0) i = 0;
            else if (input == info.token1) i = 1;
            else if (input == info.token2) i = 2;

            if (output == info.token0) j = 0;
            else if (output == info.token1) j = 1;
            else if (output == info.token2) j = 2;

            swapContract = info.swapContract;
        }

        require(swapContract != address(0), "getStableInfo: invalid pool address");
    }

    function getStableAmountsIn(
        address stableSwapFactory,
        address stableSwapInfo,
        address[] memory path,
        uint256[] memory flag,
        uint256 amountOut
    ) internal view returns (uint256[] memory amounts) {
        uint256 length = path.length;
        require(length >= 2, "getStableAmountsIn: incorrect length");

        amounts = new uint256[](length);
        amounts[length - 1] = amountOut;

        for (uint256 i = length - 1; i > 0; i--) {
            uint256 last = i - 1;
            (uint256 k, uint256 j, address swapContract) = getStableInfo(stableSwapFactory, path[last], path[i], flag[last]);
            amounts[last] = IStableSwapInfo(stableSwapInfo).get_dx(swapContract, k, j, amounts[i], type(uint256).max);
        }
    }

    /************************************************** V2 **************************************************/
    bytes32 internal constant V2_INIT_CODE_HASH = 0x7a92997b91bd0de4ede916378c3b1d849d887044024634806ad23706ea0f84fb;
    
    // returns sorted token addresses, used to handle return values from pairs sorted in this order
    function sortTokens(address tokenA, address tokenB) internal pure returns (address token0, address token1) {
        require(tokenA != tokenB);
        (token0, token1) = tokenA < tokenB ? (tokenA, tokenB) : (tokenB, tokenA);
        require(token0 != address(0));
    }

    // /// @notice Calculates the v2 address for a pair assuming the input tokens are pre-sorted
    // /// @param factory The address of the v2 factory
    // /// @param token0 The pair's token0
    // /// @param token1 The pair's token1
    // /// @return pair The resultant v2 pair address
    // function pairForPreSorted(address factory, address token0, address token1)
    //     private
    //     view
    //     returns (address pair)
    // {
    //     pair = IUniswapV2Factory(factory).getPair(token0, token1);
    // }

    // calculates the CREATE2 address for a pair without making any external calls
    function pairFor(
        address factory,
        address tokenA,
        address tokenB
    ) public pure returns (address pair) {
        (address token0, address token1) = sortTokens(tokenA, tokenB);
        pair = address(
            uint256(
                keccak256(
                    abi.encodePacked(
                        hex'ff',
                        factory,
                        keccak256(abi.encodePacked(token0, token1)),
                        V2_INIT_CODE_HASH
                    )
                )
            )
        );
    }

    /**
     * @dev Fetches pair with given tokens, returns its reserves in the given order.
     */
    function getReserves(address factory, address tokenA, address tokenB) internal view returns (uint256 reserveA, uint256 reserveB, uint16 swapFee) {
        address pair = pairFor(factory, tokenA, tokenB);
        if (pair != address(0)) {
            (uint256 reserve0, uint256 reserve1, uint16 _swapFee) = IZFPair(pair).getReservesAndParameters();
            (reserveA, reserveB) = tokenA < tokenB ? (reserve0, reserve1) : (reserve1, reserve0);
            swapFee = _swapFee;
        }
    }

    /// @notice Given an input asset amount returns the maximum output amount of the other asset
    /// @param amountIn The token input amount
    /// @param reserveIn The reserves available of the input token
    /// @param reserveOut The reserves available of the output token
    /// @return amountOut The output amount of the output token
    function getAmountOut(uint256 amountIn, uint256 reserveIn, uint256 reserveOut, uint swapFee)
        internal
        pure
        returns (uint256 amountOut)
    {
        require(amountIn > 0, "INSUFFICIENT_INPUT_AMOUNT");
        require(reserveIn > 0 && reserveOut > 0);
        uint256 amountInWithFee = amountIn.mul(10000 - swapFee);
        uint256 numerator = amountInWithFee.mul(reserveOut);
        uint256 denominator = reserveIn.mul(10000).add(amountInWithFee);
        amountOut = numerator / denominator;
    }

    /// @notice Returns the input amount needed for a desired output amount in a single-hop trade
    /// @param amountOut The desired output amount
    /// @param reserveIn The reserves available of the input token
    /// @param reserveOut The reserves available of the output token
    /// @return amountIn The input amount of the input token
    function getAmountIn(uint256 amountOut, uint256 reserveIn, uint256 reserveOut, uint256 swapFee)
        internal
        pure
        returns (uint256 amountIn)
    {
        require(amountOut > 0, "INSUFFICIENT_OUTPUT_AMOUNT");
        require(reserveIn > 0 && reserveOut > 0);
        uint256 numerator = reserveIn.mul(amountOut).mul(10000);
        uint256 denominator = reserveOut.sub(amountOut).mul(10000 - swapFee);
        amountIn = (numerator / denominator).add(1);
    }

    /**
     * @dev Performs chained getAmountIn calculations on any number of pairs
     */
    function getAmountsIn(address factory, uint amountOut, address[] memory path) internal view returns (uint[] memory amounts) {
        require(path.length >= 2, 'INVALID_PATH');
        amounts = new uint256[](path.length);
        amounts[amounts.length - 1] = amountOut;
        for (uint256 i = path.length - 1; i > 0; i--) {
            (uint256 reserveIn, uint256 reserveOut, uint16 swapFee) = getReserves(factory, path[i - 1], path[i]);
            amounts[i - 1] = getAmountIn(amounts[i], reserveIn, reserveOut, swapFee);
        }
    }


    /************************************************** V3 **************************************************/

    bytes32 internal constant V3_INIT_CODE_HASH = 0x44bde533326d5673cd3ac2476f19b1060587298eaa1f5d9b1be900c14a7ae37a;

    /// @notice The identifying key of the pool
    struct PoolKey {
        address token0;
        address token1;
        uint24 fee;
    }

    /// @notice Returns PoolKey: the ordered tokens with the matched fee levels
    /// @param tokenA The first token of a pool, unsorted
    /// @param tokenB The second token of a pool, unsorted
    /// @param fee The fee level of the pool
    /// @return Poolkey The pool details with ordered token0 and token1 assignments
    function getPoolKey(address tokenA, address tokenB, uint24 fee) internal pure returns (PoolKey memory) {
        if (tokenA > tokenB) (tokenA, tokenB) = (tokenB, tokenA);
        return PoolKey({token0: tokenA, token1: tokenB, fee: fee});
    }

    /// @notice Deterministically computes the pool address given the deployer and PoolKey
    /// @param deployer The ZF V3 deployer contract address
    /// @param key The PoolKey
    /// @return pool The contract address of the V3 pool
    function computeAddress(address deployer, PoolKey memory key) public pure returns (address pool) {
        require(key.token0 < key.token1);
        pool = address(
            uint256(
                keccak256(
                    abi.encodePacked(
                        hex'ff',
                        deployer,
                        keccak256(abi.encode(key.token0, key.token1, key.fee)),
                        V3_INIT_CODE_HASH
                    )
                )
            )
        );
    }

    /// @dev Returns the pool for the given token pair and fee. The pool contract may or may not exist.
    function getPool(
        address deployer,
        address tokenA,
        address tokenB,
        uint24 fee
    ) internal pure returns (IZFV3Pool) {
        return IZFV3Pool(computeAddress(deployer, getPoolKey(tokenA, tokenB, fee)));
    }

    /// @notice Returns the address of a valid ZF V3 Pool
    /// @param deployer The contract address of the ZF V3 deployer
    /// @param tokenA The contract address of either token0 or token1
    /// @param tokenB The contract address of the other token
    /// @param fee The fee collected upon every swap in the pool, denominated in hundredths of a bip
    /// @return pool The V3 pool contract address
    function verifyCallback(
        address deployer,
        address tokenA,
        address tokenB,
        uint24 fee
    ) internal view returns (IZFV3Pool pool) {
        return verifyCallback(deployer, getPoolKey(tokenA, tokenB, fee));
    }

    /// @notice Returns the address of a valid ZF V3 Pool
    /// @param deployer The contract address of the ZF V3 deployer
    /// @param poolKey The identifying key of the V3 pool
    /// @return pool The V3 pool contract address
    function verifyCallback(address deployer, PoolKey memory poolKey) internal view returns (IZFV3Pool pool) {
        pool = IZFV3Pool(computeAddress(deployer, poolKey));
        require(msg.sender == address(pool));
    }
}
