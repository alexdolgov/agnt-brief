// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

import {StrategyParams} from "./IOnChainVaultPendle.sol";
interface ISimpleVault{
    function strategies(address) external view returns(StrategyParams memory);
}