// SPDX-License-Identifier: Apache-2.0
pragma solidity 0.8.8;

// From prev version
interface IRandomGenerator {
    function registry() external view returns (address);

    function fee() external view returns (uint256);

    function idoOf(bytes32) external view returns (address);

    function seedOf(address) external view returns (uint256);

    function requestRandom(address ido_) external returns (bytes32 requestId);
}
