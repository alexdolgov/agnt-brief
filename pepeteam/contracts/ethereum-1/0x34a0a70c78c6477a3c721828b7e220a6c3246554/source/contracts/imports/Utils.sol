// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

library Utils {
    bytes16 private constant _HEX_SYMBOLS = "0123456789abcdef";
    uint8 private constant _ADDRESS_LENGTH = 20;

    error ErrSafeCallReturnedFalse();
    error ErrFailedSafeCall();

    function uint256ToDecString(
        uint256 value_
    ) internal pure returns (string memory) {
        unchecked {
            uint256 length = log10(value_) + 1;
            string memory buffer = new string(length);
            uint256 ptr;
            // slither-disable-next-line assembly
            assembly ("memory-safe") {
                ptr := add(buffer, add(32, length))
            }
            while (true) {
                ptr--;
                // slither-disable-next-line assembly
                assembly ("memory-safe") {
                    mstore8(ptr, byte(mod(value_, 10), _HEX_SYMBOLS))
                }
                value_ /= 10;
                if (value_ == 0) break;
            }
            return buffer;
        }
    }

    function log10(uint256 value_) internal pure returns (uint256) {
        uint256 result = 0;
        unchecked {
            if (value_ >= 10 ** 64) {
                value_ /= 10 ** 64;
                result += 64;
            }
            if (value_ >= 10 ** 32) {
                value_ /= 10 ** 32;
                result += 32;
            }
            if (value_ >= 10 ** 16) {
                value_ /= 10 ** 16;
                result += 16;
            }
            if (value_ >= 10 ** 8) {
                value_ /= 10 ** 8;
                result += 8;
            }
            if (value_ >= 10 ** 4) {
                value_ /= 10 ** 4;
                result += 4;
            }
            if (value_ >= 10 ** 2) {
                value_ /= 10 ** 2;
                result += 2;
            }
            if (value_ >= 10 ** 1) {
                result += 1;
            }
        }
        return result;
    }

    function addressToHexString(
        address addr_
    ) internal pure returns (string memory) {
        uint256 value = uint256(uint160(addr_));
        bytes memory buffer = new bytes(2 * _ADDRESS_LENGTH + 2);
        buffer[0] = "0";
        buffer[1] = "x";
        for (uint256 i = 2 * _ADDRESS_LENGTH + 1; i > 1; --i) {
            buffer[i] = _HEX_SYMBOLS[value & 0xf];
            value >>= 4;
        }
        return string(buffer);
    }

    function safeCall(address target_, bytes memory callData_) internal {
        // slither-disable-next-line low-level-calls
        (bool success, bytes memory data) = target_.call{value: 0}(callData_);
        if (success) {
            if (data.length != 0 && !abi.decode(data, (bool))) {
                revert ErrSafeCallReturnedFalse();
            }
        } else {
            if (data.length > 0) {
                // slither-disable-next-line assembly
                assembly ("memory-safe") {
                    let returnDataSize := mload(data)
                    revert(add(32, data), returnDataSize)
                }
            } else {
                revert ErrFailedSafeCall();
            }
        }
    }
}
