// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

bytes32 constant ALGEBRA_INIT_HASH = bytes32(0);

library AlgebraVerifier {
    /// @notice The identifying key of the pool
    struct AlgebraKey {
        address token0;
        address token1;
    }

    /// @notice Returns the address of a valid Algebra Pool
    /// @param poolDeployer The contract address of the Algebra pool deployer
    /// @param tokenA The contract address of either token0 or token1
    /// @param tokenB The contract address of the other token
    /// @return pool The V3 pool contract address
    function verifyCallback(
        address poolDeployer,
        address tokenA,
        address tokenB,
        bytes32 poolInitHash
    ) internal view returns (address pool) {
        return
            verifyCallback(
                poolDeployer,
                getPoolKey(tokenA, tokenB),
                poolInitHash
            );
    }

    /// @notice Returns the address of a valid Uniswap V3 Pool
    /// @param factory The contract address of the Uniswap V3 factory
    /// @param poolKey The identifying key of the V3 pool
    /// @return pool The V3 pool contract address
    function verifyCallback(
        address factory,
        AlgebraKey memory poolKey,
        bytes32 poolInitHash
    ) internal view returns (address pool) {
        pool = computeAlgebraAddress(factory, poolKey, poolInitHash);
        require(msg.sender == pool);
    }

    function getPoolKey(
        address tokenA,
        address tokenB
    ) internal pure returns (AlgebraKey memory) {
        if (tokenA > tokenB) (tokenA, tokenB) = (tokenB, tokenA);
        return AlgebraKey({token0: tokenA, token1: tokenB});
    }

    /// @notice Deterministically computes the pool address given the factory and PoolKey
    /// @param factory The Algebra factory contract address
    /// @param key The PoolKey
    /// @return pool The contract address of the V3 pool
    function computeAlgebraAddress(
        address factory,
        AlgebraKey memory key,
        bytes32 poolInitHash
    ) internal pure returns (address pool) {
        require(key.token0 < key.token1);
        pool = toAddress(
            keccak256(
                abi.encodePacked(
                    hex"ff",
                    factory,
                    keccak256(abi.encode(key.token0, key.token1)),
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
