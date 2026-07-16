// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import "@cryptoalgebra/plugins/interfaces/IBasePluginV2Factory.sol";

interface IAlgebraCustomPoolEntryPoint is IBasePluginV2Factory {
    function createCustomPool(address deployer, address creator, address tokenA, address tokenB, bytes calldata data) external returns (address);
}
