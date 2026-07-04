// SPDX-License-Identifier: Apache-2.0
pragma solidity ^0.8.4;

interface IRandomGenerator {
    function registry() external view returns (address);
    function fee() external view returns (uint);

    function idoOf(bytes32) external view returns (address);
    function seedOf(address) external view returns (uint);

    function requestRandom(address _ido) external returns (bytes32 requestId);
}