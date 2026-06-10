// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import { IStrategy } from "./IStrategy.sol";

interface ITransferStrategy is IStrategy {
    function encodeData(uint256 amount, address token, address receiver) external pure returns (bytes memory);

    function decodeData(bytes calldata _data) external pure returns (uint256, address, address);
}
