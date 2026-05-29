// SPDX-License-Identifier: BUSL-1.1
pragma solidity >=0.5.0;

interface IFeeSplitterFactory {

    event FeeSplitterCreated(address indexed creator, address indexed feeSplitter, address token0, address token1);

    function createFeeSplitter(address token0, address token1) external returns (address);

}
