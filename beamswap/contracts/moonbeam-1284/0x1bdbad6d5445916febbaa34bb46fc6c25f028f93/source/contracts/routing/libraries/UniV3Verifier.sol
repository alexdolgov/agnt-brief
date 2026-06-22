// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

//V3 Verifier for Moonbeam Network

import "hardhat/console.sol";

/// This library relies on overloaded functions for variation in pool address derivation between Algebra and UniswapV3.
library UniV3Verifier {
    struct UniV3Key {
        address token0;
        address token1;
        uint24 fee;
    }

    /// @notice Returns the address of a valid Uniswap V3 Pool
    /// @param factory The contract address of the Uniswap V3 factory
    /// @param tokenA The contract address of either token0 or token1
    /// @param tokenB The contract address of the other token
    /// @param fee The fee collected upon every swap in the pool, denominated in hundredths of a bip
    /// @return pool The V3 pool contract address
    function verifyCallback(
        address factory,
        address tokenA,
        address tokenB,
        uint24 fee,
        bytes32 poolInitHash
    ) internal view returns (address pool) {
        console.log("VERIFYING");
        return
            verifyCallback(
                factory,
                getPoolKey(tokenA, tokenB, fee),
                poolInitHash
            );
    }

    /// @notice Returns the address of a valid Uniswap V3 Pool
    /// @param factory The contract address of the Uniswap V3 factory
    /// @param poolKey The identifying key of the V3 pool
    /// @return pool The V3 pool contract address
    function verifyCallback(
        address factory,
        UniV3Key memory poolKey,
        bytes32 poolInitHash
    ) internal view returns (address pool) {
        pool = computeAddress(factory, poolKey, poolInitHash);
        console.log(msg.sender, pool);
        require(msg.sender == pool);
    }

    /// @notice Returns PoolKey: the ordered tokens with the matched fee levels
    /// @param tokenA The first token of a pool, unsorted
    /// @param tokenB The second token of a pool, unsorted
    /// @return Poolkey The pool details with ordered token0 and token1 assignments
    function getPoolKey(
        address tokenA,
        address tokenB,
        uint24 fee
    ) internal pure returns (UniV3Key memory) {
        if (tokenA > tokenB) (tokenA, tokenB) = (tokenB, tokenA);
        return UniV3Key({token0: tokenA, token1: tokenB, fee: fee});
    }

    /// @notice Deterministically computes the pool address given the factory and PoolKey
    /// @param factory The Uniswap V3 factory contract address
    /// @param key The PoolKey
    /// @return pool The contract address of the V3 pool
    function computeAddress(
        address factory,
        UniV3Key memory key,
        bytes32 poolInitHash
    ) internal pure returns (address pool) {
        require(key.token0 < key.token1);
        pool = toAddress(
            keccak256(
                abi.encodePacked(
                    hex"ff",
                    factory,
                    keccak256(abi.encode(key.token0, key.token1, key.fee)),
                    poolInitHash
                )
            )
        );
    }

    function toAddress(bytes32 data) internal pure returns (address result) {
        assembly {
            mstore(0, data)
            result := mload(0)
        }
    }
}
