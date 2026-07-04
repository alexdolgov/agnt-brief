// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

import {ExtraModule} from "./interfaces/IAutomation1_1.sol";

abstract contract KeeperRegistryBase1_1 {
    event UpkeepRegistered(
        uint256 indexed id,
        address indexed registrar,
        address indexed admin,
        uint32 executeGas,
        ExtraModule extraModule,
        bytes extraParam
    );

    mapping(uint256 => ExtraModule) internal s_extraModule;
    mapping(uint256 => bytes) internal s_extraParam;
}
