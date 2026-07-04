// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.28;

/// @title TokenRelayerStorage
/// @dev storage library to leverage unstructured storage pattern
library TokenRelayerStorage {
    /// @dev struct containing all state for the TokenRelayer contract
    /// @custom:storage-location erc7201:animoca.contracts.storage.TokenRelayer
    struct Layout {
        /// @dev latest total liquidity on the dst chain
        uint256 latestDstLiquidity;
        /// @dev liquidity on the dst chain assuming all cross-chain tx are successful
        uint256 optimisticDstLiquidity;
        /// @dev address of the message relayer
        address messageRelayer;
        /// @dev nonce for the message relayer
        /// since only 1 sender and 1 dstEid, there is no need for a mapping
        uint64 nonce;
        /// @dev fee buffer in basis points
        uint128 feeBufferBP;
        /// @dev expected gas for the bridge token action
        uint128 expectedBridgeTokenGas;
        /// @dev expected gas for the add liquidity action
        uint128 expectedAddLiquidityGas;
        /// @dev expected gas for the remove liquidity action
        uint128 expectedRemoveLiquidityGas;
    }

    /* solhint-disable max-line-length */
    // keccak256(abi.encode(uint256(keccak256("prosper.contracts.storage.TokenRelayer")) - 1)) & ~bytes32(uint256(0xff));
    bytes32 internal constant STORAGE_SLOT =
        0x810638ac39bf073e3a4ed7f13462adc90bcecf6ac45ba3a14402cba09a7d4700;

    /* solhint-disable use-forbidden-name */
    function layout() internal pure returns (Layout storage l) {
        bytes32 slot = STORAGE_SLOT;
        assembly {
            l.slot := slot
        }
    }
}
