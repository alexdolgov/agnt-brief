// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.29;

/// @title GPv2Order
/// @notice Minimal port of CoW Protocol's order library — struct, EIP-712
///         hash, and orderUid packing. Constants are taken verbatim from
///         the canonical contracts so digests match what the CoW orderbook
///         and GPv2Settlement compute.
/// @dev Source: https://github.com/cowprotocol/contracts/blob/main/src/contracts/libraries/GPv2Order.sol
library GPv2Order {
    /// @notice EIP-712 type hash of the Order struct.
    /// @dev Derivation (must match the canonical CoW Protocol contracts; do not edit):
    ///   keccak256(
    ///     "Order(address sellToken,address buyToken,address receiver,"
    ///     "uint256 sellAmount,uint256 buyAmount,uint32 validTo,"
    ///     "bytes32 appData,uint256 feeAmount,bytes32 kind,"
    ///     "bool partiallyFillable,bytes32 sellTokenBalance,"
    ///     "bytes32 buyTokenBalance)"
    ///   )
    bytes32 internal constant TYPE_HASH =
        0xd5a25ba2e97094ad7d83dc28a6572da797d6b3e7fc6663bd93efb789fc17e489;

    /// @notice keccak256("sell")
    bytes32 internal constant KIND_SELL =
        0xf3b277728b3fee749481eb3e0b3b48980dbbab78658fc419025cb16eee346775;

    /// @notice keccak256("buy")
    bytes32 internal constant KIND_BUY =
        0x6ed88e868af0a1983e3886d5f3e95a2fafbd6c3450bc229e27342283dc429ccc;

    /// @notice keccak256("erc20") — direct ERC-20 balances. The only mode we accept.
    bytes32 internal constant BALANCE_ERC20 =
        0x5a28e9363bb942b639270062aa6bb295f434bcdfc42c97267bf003f272060dc9;

    /// @notice Order UID layout: digest(32) || owner(20) || validTo(4) = 56 bytes.
    uint256 internal constant UID_LENGTH = 56;

    struct Data {
        address sellToken;
        address buyToken;
        address receiver;
        uint256 sellAmount;
        uint256 buyAmount;
        uint32 validTo;
        bytes32 appData;
        uint256 feeAmount;
        bytes32 kind;
        bool partiallyFillable;
        bytes32 sellTokenBalance;
        bytes32 buyTokenBalance;
    }

    /// @notice Compute the EIP-712 digest for an order against the given domain separator.
    function hash(Data memory order, bytes32 domainSeparator)
        internal
        pure
        returns (bytes32)
    {
        bytes32 structHash = keccak256(
            abi.encode(
                TYPE_HASH,
                order.sellToken,
                order.buyToken,
                order.receiver,
                order.sellAmount,
                order.buyAmount,
                order.validTo,
                order.appData,
                order.feeAmount,
                order.kind,
                order.partiallyFillable,
                order.sellTokenBalance,
                order.buyTokenBalance
            )
        );
        return
            keccak256(
                abi.encodePacked("\x19\x01", domainSeparator, structHash)
            );
    }

    /// @notice Pack an order UID from its three components.
    function packOrderUidParams(
        bytes32 orderDigest,
        address owner,
        uint32 validTo
    ) internal pure returns (bytes memory) {
        return abi.encodePacked(orderDigest, owner, validTo);
    }
}
