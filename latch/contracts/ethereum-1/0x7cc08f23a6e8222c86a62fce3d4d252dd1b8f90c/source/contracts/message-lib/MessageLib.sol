// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

library MessageLib {
    /// @notice Messages are transferred between chains as 60=byte long bytes
    ///        The first 8 bits are the value type.
    ///        The next 136 bits are the value amount.
    ///        The next 160 bits are the address related to the value.
    ///        The next 48 bits are the value timestamp.
    ///        The remaining 128 bits are the value delta.
    struct Message {
        uint8 valueType;
        uint256 value;
        address owner;
        uint256 timestamp;
        uint256 delta;
    }

    uint256 internal constant _MAX_VALUE = type(uint136).max;
    uint256 internal constant _MAX_TIMESTAMP = type(uint48).max;
    uint256 internal constant _MAX_DELTA = type(uint128).max;

    uint8 public constant TOTAL_DEPOSITS_TYPE = 1;
    uint8 public constant TOTAL_POOL_UNLOCKS_TYPE = 2;
    uint8 public constant TOTAL_CLAIMS_TYPE = 3;
    uint8 public constant TOTAL_REQUESTS_TYPE = 4;
    uint8 public constant TOTAL_REDEEMEDS_TYPE = 5;

    error MessageLib_ValueOverflow();
    error MessageLib_TimestampOverflow();
    error MessageLib_DeltaOverflow();
    error MessageLib_InvalidMessageLength(uint256 length);

    ///
    /// @notice Extracts a Message from bytes.
    ///
    function unpack(bytes memory b) internal pure returns (Message memory m) {
        uint8 valueType;
        uint136 value;
        address owner;
        uint48 _timestamp;
        uint128 _delta;

        if (b.length != 60) revert MessageLib_InvalidMessageLength(b.length);

        /* solhint-disable no-inline-assembly */
        assembly {
            valueType := mload(add(b, 1))
            value := mload(add(b, 18))
            owner := mload(add(b, 38))
            _timestamp := mload(add(b, 44))
            _delta := mload(add(b, 60))
        }
        /* solhint-enable no-inline-assembly */

        return Message(valueType, value, owner, _timestamp, _delta);
    }

    ///
    /// @notice Packs a Message into bytes.
    ///
    function pack(Message memory m) internal pure returns (bytes memory) {
        if (m.value > _MAX_VALUE) revert MessageLib_ValueOverflow();
        if (m.timestamp > _MAX_TIMESTAMP) revert MessageLib_TimestampOverflow();
        if (m.delta > _MAX_DELTA) revert MessageLib_DeltaOverflow();

        return abi.encodePacked(m.valueType, uint136(m.value), m.owner, uint48(m.timestamp), uint128(m.delta));
    }
}
