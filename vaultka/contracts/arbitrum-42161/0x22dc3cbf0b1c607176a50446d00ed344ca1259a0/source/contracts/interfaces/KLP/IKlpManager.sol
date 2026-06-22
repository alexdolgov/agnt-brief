// SPDX-License-Identifier: MIT

pragma solidity ^0.8.21;

interface IKlpManager {
    function getPrice(bool _maximise) external view returns (uint256);
}