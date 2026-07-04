// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

import {ICore} from "../core/ICore.sol";

/// @title CoreRef interface
interface ICoreRef {
    event CoreUpdate(address indexed _core);
    event EmergencyUpdate(bool _emergency);

    function emergency() external view returns (bool);

    function startEmergency() external;

    function stopEmergency() external;

    function setCore(address coreAddress) external;

    function core() external view returns (ICore);
}
