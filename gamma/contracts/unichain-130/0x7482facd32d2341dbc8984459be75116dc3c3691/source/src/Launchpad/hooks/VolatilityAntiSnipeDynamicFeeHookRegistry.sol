// SPDX-License-Identifier: BSL
pragma solidity ^0.8.24;

import {VolatilityAntiSnipeDynamicFeeHook} from "./VolatilityAntiSnipeDynamicFeeHook.sol";
import {IPoolManager} from "v4-core/interfaces/IPoolManager.sol";
import {Hooks} from "v4-core/libraries/Hooks.sol";

contract VolatilityAntiSnipeDynamicFeeHookRegistry {
    // Hook permission flags for beforeSwap + afterSwap
    uint160 constant HOOK_FLAGS = uint160(
        Hooks.BEFORE_SWAP_FLAG |
        Hooks.AFTER_SWAP_FLAG
    );

    uint160 constant FLAG_MASK = 0x3FFF; // Bottom 14 bits
    uint256 constant MAX_LOOP = 160_444; // Match HookMiner default

    function getBytecode() external view returns (bytes memory) {
        return type(VolatilityAntiSnipeDynamicFeeHook).creationCode;
    }

    /// @notice Deploy a new VolatilityAntiSnipeDynamicFeeHook using CREATE2 with mined salt
    /// @param poolManager The pool manager
    /// @param limitOrderManager The limit order manager address
    /// @param orderBookFactory The order book factory address
    /// @param owner The owner of the hook
    /// @return hook The deployed hook address
    function deployWithMining(
        IPoolManager poolManager,
        address limitOrderManager,
        address orderBookFactory,
        address owner
    ) external returns (address hook) {
        bytes memory constructorArgs = abi.encode(
            poolManager,
            limitOrderManager,
            orderBookFactory,
            owner
        );

        bytes memory creationCode = type(VolatilityAntiSnipeDynamicFeeHook).creationCode;
        bytes memory creationCodeWithArgs = abi.encodePacked(creationCode, constructorArgs);

        // Mine for a valid salt
        bytes32 salt = _findSalt(creationCodeWithArgs);

        // Deploy with mined salt
        hook = address(new VolatilityAntiSnipeDynamicFeeHook{salt: salt}(
            poolManager,
            limitOrderManager,
            orderBookFactory,
            owner
        ));
    }

    /// @notice Deploy a new VolatilityAntiSnipeDynamicFeeHook using CREATE2
    /// @param poolManager The pool manager
    /// @param limitOrderManager The limit order manager address
    /// @param orderBookFactory The order book factory address
    /// @param owner The owner of the hook
    /// @param salt Salt for CREATE2 deployment
    /// @return hook The deployed hook address
    function deploy(
        IPoolManager poolManager,
        address limitOrderManager,
        address orderBookFactory,
        address owner,
        bytes32 salt
    ) external returns (address hook) {
        hook = address(new VolatilityAntiSnipeDynamicFeeHook{salt: salt}(
            poolManager,
            limitOrderManager,
            orderBookFactory,
            owner
        ));
    }

    /// @notice Find a salt that produces a valid hook address
    /// @param creationCodeWithArgs The creation code with constructor args
    /// @return The valid salt
    function _findSalt(bytes memory creationCodeWithArgs) internal view returns (bytes32) {
        address hookAddress;
        uint160 flags = HOOK_FLAGS & FLAG_MASK;

        for (uint256 salt; salt < MAX_LOOP; salt++) {
            hookAddress = _computeAddress(salt, creationCodeWithArgs);

            // Check if address has correct flags and no bytecode
            if (uint160(hookAddress) & FLAG_MASK == flags && hookAddress.code.length == 0) {
                return bytes32(salt);
            }
        }

        revert("HookMiner: could not find salt");
    }

    /// @notice Compute CREATE2 address
    /// @param salt The salt
    /// @param creationCodeWithArgs The creation code with constructor args
    /// @return The computed address
    function _computeAddress(uint256 salt, bytes memory creationCodeWithArgs)
        internal
        view
        returns (address)
    {
        return address(
            uint160(uint256(keccak256(abi.encodePacked(
                bytes1(0xFF),
                address(this),
                bytes32(salt),
                keccak256(creationCodeWithArgs)
            ))))
        );
    }
}
