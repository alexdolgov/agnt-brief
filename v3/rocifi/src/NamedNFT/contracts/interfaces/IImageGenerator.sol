// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

interface IImageGenerator {
    function buildNameImage(string memory name) external view returns (string memory);
}
