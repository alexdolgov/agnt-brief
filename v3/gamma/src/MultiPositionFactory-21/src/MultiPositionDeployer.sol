// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

import { MultiPositionManager } from "./MultiPositionManager.sol";
import { IPoolManager } from "v4-core/interfaces/IPoolManager.sol";
import { PoolKey } from "v4-core/types/PoolKey.sol";

/**
 * @title MultiPositionDeployer
 * @notice Deploys MultiPositionManager contracts with CREATE2
 * @dev Separated from factory to reduce factory contract size
 */
contract MultiPositionDeployer {
    /**
     * @notice Deploys a new MultiPositionManager contract
     * @param poolManager The Uniswap V4 pool manager
     * @param poolKey The pool key for the Uniswap V4 pool
     * @param owner The owner of the new MultiPositionManager
     * @param factory The factory contract address
     * @param name The name of the LP token
     * @param symbol The symbol of the LP token
     * @param fee The protocol fee
     * @param salt The salt for CREATE2 deployment
     * @return The address of the deployed MultiPositionManager
     */
    function deploy(
        IPoolManager poolManager,
        PoolKey memory poolKey,
        address owner,
        address factory,
        string memory name,
        string memory symbol,
        uint16 fee,
        bytes32 salt
    ) external returns (address) {
        return address(new MultiPositionManager{salt: salt}(
            poolManager,
            poolKey,
            owner,
            factory,
            name,
            symbol,
            fee
        ));
    }

    /**
     * @notice Computes the address where a MultiPositionManager will be deployed
     * @param poolManager The Uniswap V4 pool manager
     * @param poolKey The pool key for the Uniswap V4 pool
     * @param owner The owner of the new MultiPositionManager
     * @param factory The factory contract address
     * @param name The name of the LP token
     * @param symbol The symbol of the LP token
     * @param fee The protocol fee
     * @param salt The salt for CREATE2 deployment
     * @return predicted The address where the MultiPositionManager will be deployed
     */
    function computeAddress(
        IPoolManager poolManager,
        PoolKey memory poolKey,
        address owner,
        address factory,
        string memory name,
        string memory symbol,
        uint16 fee,
        bytes32 salt
    ) external view returns (address predicted) {
        bytes32 hash = keccak256(abi.encodePacked(
            type(MultiPositionManager).creationCode,
            abi.encode(poolManager, poolKey, owner, factory, name, symbol, fee)
        ));

        /// @solidity memory-safe-assembly
        assembly {
            // Compute CREATE2 address: keccak256(0xff ++ address ++ salt ++ bytecodeHash)
            let ptr := mload(0x40)
            mstore(add(ptr, 0x35), hash)        // Store bytecodeHash at offset 0x35
            mstore(add(ptr, 0x15), salt)        // Store salt at offset 0x15
            mstore(ptr, address())               // Store deployer address (left-padded to 32 bytes)
            mstore8(ptr, 0xff)                  // Overwrite first byte with 0xff
            predicted := and(keccak256(ptr, 0x55), 0xffffffffffffffffffffffffffffffffffffffff)
        }
    }
}