// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (utils/StorageSlot.sol)
// This file was procedurally generated from scripts/generate/templates/StorageSlot.js.

pragma solidity 0.8.30;

/**
 * @dev Library for reading and writing primitive types to specific storage slots.
 *
 * Storage slots are often used to avoid storage conflict when dealing with upgradeable contracts.
 * This library helps with reading and writing to such slots without the need for inline assembly.
 *
 * The functions in this library return Slot structs that contain a `value` member that can be used to read or write.
 *
 * Example usage to set ERC-1967 implementation slot:
 * ```solidity
 * contract ERC1967 {
 *     bytes32 internal constant _IMPLEMENTATION_SLOT = 0x360894a13ba1a3210667c828492db98dca3e2076cc3735a920a3ca505d382bbc;
 *
 *     function _getImplementation() internal view returns (address) {
 *         return StorageSlot.getAddressSlot(_IMPLEMENTATION_SLOT).value;
 *     }
 *
 *     function _setImplementation(address newImplementation) internal {
 *         require(newImplementation.code.length > 0);
 *         StorageSlot.getAddressSlot(_IMPLEMENTATION_SLOT).value = newImplementation;
 *     }
 * }
 * ```
 */
library StorageSlot {
    /// @notice The slot for address.
    struct AddressSlot {
        address value;
    }

    /// @notice The slot for boolean.
    struct BooleanSlot {
        bool value;
    }

    /// @notice The slot for bytes32.
    struct Bytes32Slot {
        bytes32 value;
    }

    /// @notice The slot for uint256.
    struct Uint256Slot {
        uint256 value;
    }

    /// @notice The slot for string.
    struct StringSlot {
        string value;
    }

    /// @notice The slot for bytes.
    struct BytesSlot {
        bytes value;
    }

    /// @notice The slot for uint8.
    struct Uint8Slot {
        uint8 value;
    }

    /// @notice The slot for bytes array.
    struct BytesArraySlot {
        bytes[] value;
    }

    /// @notice The slot for uint256 array.
    struct Uint256ArraySlot {
        uint256[] value;
    }

    /// @notice The slot for uint256 mapping.
    struct Uint256MappingSlot {
        mapping(uint256 => uint256) value;
    }

    /// @notice The slot for uint256 string mapping.
    struct Uint256StringMappingSlot {
        mapping(uint256 => string) value;
    }

    /// @notice The slot for uint256 address mapping.
    struct Uint256AddressMappingSlot {
        mapping(uint256 => address) value;
    }

    /// @notice The slot for address uint256 mapping.
    struct AddressUint256MappingSlot {
        mapping(address => uint256) value;
    }

    /// @notice The slot for address mapping address boolean mapping.
    struct AddressMappingAddressBooleanMappingSlot {
        mapping(address => mapping(address => bool)) value;
    }

    /// @notice The slot for address mapping uint256 mapping.
    struct AddressMappingUint256MappingSlot {
        mapping(address => mapping(uint256 => uint256)) value;
    }

    /// @notice The slot for bytes address mapping.
    struct BytesAddressMappingSlot {
        mapping(bytes => address) value;
    }

    /// @notice The slot for bytes uint8 mapping.
    struct BytesUint8MappingSlot {
        mapping(bytes => uint8) value;
    }

    /// @notice The slot for bytes uint256 mapping.
    struct BytesUintMappingSlot {
        mapping(bytes => uint256) value;
    }

    /**
     * @dev Returns an `AddressSlot` with member `value` located at `slot`.
     * @param slot The slot to read from.
     * @return r The slot value.
     */
    function getAddressSlot(bytes32 slot) internal pure returns (AddressSlot storage r) {
        /// @solidity memory-safe-assembly
        assembly {
            r.slot := slot
        }
    }

    /**
     * @dev Returns an `BooleanSlot` with member `value` located at `slot`.
     * @param slot The slot to read from.
     * @return r The slot value.
     */
    function getBooleanSlot(bytes32 slot) internal pure returns (BooleanSlot storage r) {
        /// @solidity memory-safe-assembly
        assembly {
            r.slot := slot
        }
    }

    /**
     * @dev Returns an `Bytes32Slot` with member `value` located at `slot`.
     * @param slot The slot to read from.
     * @return r The slot value.
     */
    function getBytes32Slot(bytes32 slot) internal pure returns (Bytes32Slot storage r) {
        /// @solidity memory-safe-assembly
        assembly {
            r.slot := slot
        }
    }

    /**
     * @dev Returns an `Uint256Slot` with member `value` located at `slot`.
     * @param slot The slot to read from.
     * @return r The slot value.
     */
    function getUint256Slot(bytes32 slot) internal pure returns (Uint256Slot storage r) {
        /// @solidity memory-safe-assembly
        assembly {
            r.slot := slot
        }
    }

    /**
     * @dev Returns a `Uint8Slot` with member `value` located at `slot`.
     * @param slot The slot to read from.
     * @return r The slot value.
     */
    function getUint8Slot(bytes32 slot) internal pure returns (Uint8Slot storage r) {
        /// @solidity memory-safe-assembly
        assembly {
            r.slot := slot
        }
    }

    /**
     * @dev Returns an `StringSlot` with member `value` located at `slot`.
     * @param slot The slot to read from.
     * @return r The slot value.
     */
    function getStringSlot(bytes32 slot) internal pure returns (StringSlot storage r) {
        /// @solidity memory-safe-assembly
        assembly {
            r.slot := slot
        }
    }

    /**
     * @dev Returns an `StringSlot` representation of the string storage pointer `store`.
     * @param store The storage pointer to read from.
     * @return r The slot value.
     */
    function getStringSlot(string storage store) internal pure returns (StringSlot storage r) {
        /// @solidity memory-safe-assembly
        assembly {
            r.slot := store.slot
        }
    }

    /**
     * @dev Returns an `BytesSlot` with member `value` located at `slot`.
     * @param slot The slot to read from.
     * @return r The slot value.
     */
    function getBytesSlot(bytes32 slot) internal pure returns (BytesSlot storage r) {
        /// @solidity memory-safe-assembly
        assembly {
            r.slot := slot
        }
    }

    /**
     * @dev Returns an `BytesSlot` representation of the bytes storage pointer `store`.
     * @param store The storage pointer to read from.
     * @return r The slot value.
     */
    function getBytesSlot(bytes storage store) internal pure returns (BytesSlot storage r) {
        /// @solidity memory-safe-assembly
        assembly {
            r.slot := store.slot
        }
    }

    /**
     * @dev Returns an `BytesArraySlot` with member `value` located at `slot`.
     * @param slot The slot to read from.
     * @return r The slot value.
     */
    function getBytesArraySlot(bytes32 slot) internal pure returns (BytesArraySlot storage r) {
        assembly {
            r.slot := slot
        }
    }

    /**
     * @dev Returns an `Uint256ArraySlot` with member `value` located at `slot`.
     * @param slot The slot to read from.
     * @return r The slot value.
     */
    function getUint256ArraySlot(bytes32 slot) internal pure returns (Uint256ArraySlot storage r) {
        assembly {
            r.slot := slot
        }
    }

    /**
     * @dev Returns an `Uint256MappingSlot` with member `value` located at `slot`.
     * @param slot The slot to read from.
     * @return r The slot value.
     */
    function getUint256MappingSlot(bytes32 slot) internal pure returns (Uint256MappingSlot storage r) {
        assembly {
            r.slot := slot
        }
    }

    /**
     * @dev Returns an `Uint256StringMappingSlot` with member `value` located at `slot`.
     * @param slot The slot to read from.
     * @return r The slot value.
     */
    function getUint256StringMappingSlot(bytes32 slot) internal pure returns (Uint256StringMappingSlot storage r) {
        assembly {
            r.slot := slot
        }
    }

    /**
     * @dev Returns an `Uint256AddressMappingSlot` with member `value` located at `slot`.
     * @param slot The slot to read from.
     * @return r The slot value.
     */
    function getUint256AddressMappingSlot(bytes32 slot) internal pure returns (Uint256AddressMappingSlot storage r) {
        assembly {
            r.slot := slot
        }
    }

    /**
     * @dev Returns an `AddressUint256MappingSlot` with member `value` located at `slot`.
     * @param slot The slot to read from.
     * @return r The slot value.
     */
    function getAddressUint256MappingSlot(bytes32 slot) internal pure returns (AddressUint256MappingSlot storage r) {
        assembly {
            r.slot := slot
        }
    }

    /**
     * @dev Returns an `AddressMappingAddressBooleanMappingSlot` with member `value` located at `slot`.
     * @param slot The slot to read from.
     * @return r The slot value.
     */
    function getAddressMappingAddressBooleanMappingSlot(bytes32 slot) internal pure returns (AddressMappingAddressBooleanMappingSlot storage r) {
        assembly {
            r.slot := slot
        }
    }

    /**
     * @dev Returns an `AddressMappingUint256MappingSlot` with member `value` located at `slot`.
     * @param slot The slot to read from.
     * @return r The slot value.
     */
    function getAddressMappingUint256MappingSlot(bytes32 slot) internal pure returns (AddressMappingUint256MappingSlot storage r) {
        assembly {
            r.slot := slot
        }
    }

    /**
     * @dev Returns a `BytesAddressMappingSlot` with member `value` located at `slot`.
     * @param slot The slot to read from.
     * @return r The slot value.
     */
    function getBytesAddressMappingSlot(bytes32 slot) internal pure returns (BytesAddressMappingSlot storage r) {
        assembly {
            r.slot := slot
        }
    }

    /**
     * @dev Returns a `BytesUint8MappingSlot` with member `value` located at `slot`.
     * @param slot The slot to read from.
     * @return r The slot value.
     */
    function getBytesUint8MappingSlot(bytes32 slot) internal pure returns (BytesUint8MappingSlot storage r) {
        assembly {
            r.slot := slot
        }
    }

    /**
     * @dev Returns a `BytesUintMappingSlot` with member `value` located at `slot`.
     * @param slot The slot to read from.
     * @return r The slot value.
     */
    function getBytesUintMappingSlot(bytes32 slot) internal pure returns (BytesUintMappingSlot storage r) {
        assembly {
            r.slot := slot
        }
    }
}
