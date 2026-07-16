//SPDX-License-Identifier: Proprietary
pragma solidity 0.8.29;

/// @title Lib Uint256
/// @notice Utilities to perform uint operations
library LibUint {
    /// @notice Converts a value to little endian (64 bits)
    /// @param _value The value to convert
    /// @return result The converted value
    function toLittleEndian64(uint64 _value) internal pure returns (uint256 result) {
        uint256 tempValue = _value;
        result = tempValue & 0xFF;
        tempValue >>= 8;

        result = (result << 8) | (tempValue & 0xFF);
        tempValue >>= 8;

        result = (result << 8) | (tempValue & 0xFF);
        tempValue >>= 8;

        result = (result << 8) | (tempValue & 0xFF);
        tempValue >>= 8;

        result = (result << 8) | (tempValue & 0xFF);
        tempValue >>= 8;

        result = (result << 8) | (tempValue & 0xFF);
        tempValue >>= 8;

        result = (result << 8) | (tempValue & 0xFF);
        tempValue >>= 8;

        result = (result << 8) | (tempValue & 0xFF);
        result <<= (24 * 8);
    }
}
