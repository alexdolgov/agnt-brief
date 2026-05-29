// SPDX-License-Identifier: MIT
pragma solidity >=0.7.6;

import { FeeSplitter } from "./FeeSplitter.sol";
import { IFeeSplitterFactory } from "./interfaces/IFeeSplitterFactory.sol";

contract FeeSplitterFactory is IFeeSplitterFactory {

    // This function deploys a new FeeSplitter contract
    function createFeeSplitter(address token0, address token1) external override returns (address) {
        FeeSplitter feeSplitter = new FeeSplitter(token0, token1);
        feeSplitter.transferOwnership(msg.sender); // Transfer ownership to the creator

        emit FeeSplitterCreated(msg.sender, address(feeSplitter), token0, token1);

        return address(feeSplitter);
    }
}