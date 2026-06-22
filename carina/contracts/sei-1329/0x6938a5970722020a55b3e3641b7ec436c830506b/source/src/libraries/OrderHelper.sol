// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.23;

import {ISettlement} from "../interfaces/ISettlement.sol";

library OrderHelper {
    /// @notice Thrown when an order ID has an invalid length.
    error InvalidOrderId();

    /// @dev The byte length of an order ID.
    uint256 internal constant ORDER_ID_LENGTH = 52;

    address internal constant ZERO_ADDRESS = address(0);

    // @dev The order EIP-712 type hash for the `Order` struct.
    // keccak256("Order(address receiver,uint64 validTo,address tokenIn,address tokenOut,uint256 amountIn,uint256 amountOut,uint256 minAmountOut,uint256 feeAmount)")
    bytes32 internal constant ORDER_TYPE_HASH = 0xfadbd81841b4bd987811e39bddfb2f5515aabb8e1167aedd80792252c2ccea8f;

    /// @dev Packs the order digest and owner address into the provided orderId bytes array.
    /// This function writes the orderDigest and owner into specific positions in the orderId array using inline assembly.
    ///
    /// @param orderId The bytes array to pack the order digest and owner address into. Must be of length ORDER_ID_LENGTH.
    /// @param owner The address of the user who created the order.
    /// @param orderDigest The EIP-712 signing digest of the order to be packed.
    /// @notice The function assumes the orderId array is mutable and has enough space to store the packed data.
    function packOrderId(bytes memory orderId, address owner, bytes32 orderDigest) internal pure {
        if (orderId.length != ORDER_ID_LENGTH) revert InvalidOrderId();

        assembly {
            mstore(add(orderId, 32), shl(96, owner))
            mstore(add(orderId, 52), orderDigest)
        }
    }

    /// @dev Extracts specific order information from the standardized unique
    /// order id of the protocol.
    ///
    /// @param orderId The unique identifier used to represent an order in
    /// the protocol. This ID is the packed concatenation of the order digest,
    /// the validTo order parameter and the address of the user who created the
    /// order. It is used by the user to interface with the contract directly,
    /// and not by calls that are triggered by the solvers.
    /// @return owner The address of the user who owns this order.
    /// @return orderDigest The EIP-712 signing digest derived from the order
    /// parameters.
    function extractOrderId(bytes calldata orderId) internal pure returns (address owner, bytes32 orderDigest) {
        if (orderId.length != ORDER_ID_LENGTH) revert InvalidOrderId();

        assembly {
            owner := shr(96, calldataload(orderId.offset))
            orderDigest := calldataload(add(orderId.offset, 20))
        }
    }

    /// @notice Computes the EIP-712 struct hash for an order.
    /// @dev This function returns the struct hash that can be used with OpenZeppelin's EIP712 _hashTypedDataV4.
    ///
    /// @param order The order to compute the struct hash for.
    /// @return orderHash The EIP-712 struct hash of the order.
    function hashOrder(ISettlement.Order memory order) internal pure returns (bytes32 orderHash) {
        orderHash = keccak256(
            abi.encode(
                ORDER_TYPE_HASH,
                order.receiver,
                order.validTo,
                address(order.tokenIn),
                address(order.tokenOut),
                order.amountIn,
                order.amountOut,
                order.minAmountOut,
                order.feeAmount
            )
        );
    }

    /// @notice Gets the actual receiver for an order.
    /// @dev If the order receiver is the zero address, returns the owner instead.
    ///
    /// @param order The order to get the receiver for.
    /// @param owner The owner of the order.
    /// @return receiver The actual receiver address.
    function getOrderActualReceiver(ISettlement.Order memory order, address owner)
        internal
        pure
        returns (address receiver)
    {
        receiver = order.receiver == ZERO_ADDRESS ? owner : order.receiver;
    }
}
