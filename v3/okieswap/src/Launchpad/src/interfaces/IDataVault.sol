// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.10;

/// @title Interface for DataVault
/// @notice Interface for accessing attributes
interface IDataVault {
    /// @notice Enumeration of supported record types
    /// @dev Used to identify the type of data stored in a record
    enum DataType {
        None, // invalid type
        Address,
        Boolean,
        Uint256,
        Int256,
        Bytes32,
        Bytes,
        String
    }

    function setAddress(string memory key, address value) external;
    function setBoolean(string memory key, bool value) external;
    function setUint256(string memory key, uint256 value) external;
    function setInt256(string memory key, int256 value) external;
    function setBytes32(string memory key, bytes32 value) external;
    function setBytes(string memory key, bytes memory value) external;
    function setString(string memory key, string memory value) external;

    function getAddress(string memory key) external view returns (address);
    function getBoolean(string memory key) external view returns (bool);
    function getUint256(string memory key) external view returns (uint256);
    function getInt256(string memory key) external view returns (int256);
    function getBytes32(string memory key) external view returns (bytes32);
    function getBytes(string memory key) external view returns (bytes memory);
    function getString(string memory key) external view returns (string memory);

    event AddressSet(string indexed key, address value);
    event BooleanSet(string indexed key, bool value);
    event Uint256Set(string indexed key, uint256 value);
    event Int256Set(string indexed key, int256 value);
    event Bytes32Set(string indexed key, bytes32 value);
    event BytesSet(string indexed key, bytes value);
    event StringSet(string indexed key, string value);
}
