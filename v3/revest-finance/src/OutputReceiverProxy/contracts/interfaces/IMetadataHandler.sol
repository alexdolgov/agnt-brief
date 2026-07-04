// SPDX-License-Identifier: GNU-GPL v3.0 or later

pragma solidity ^0.8.0;

interface IMetadataHandler {
    function getOutputReceiverURL() external view returns (string memory);

    function getAddressLockURL() external view returns (string memory);

    function getOutputReceiverBytes(uint256 fnftId) external view returns (bytes memory output);

    function getAddressLockBytes(uint256 fnftId, uint256) external view returns (bytes memory output);
}
