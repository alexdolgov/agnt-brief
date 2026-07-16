// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

interface IShapeData {
    function shapeParts()
        external
        pure
        returns (string memory baseTransform, string memory pathD, string memory pathTransform, string memory useList);
}
