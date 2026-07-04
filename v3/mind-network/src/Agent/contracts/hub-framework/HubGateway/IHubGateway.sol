// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import {IGeneralError} from "../../common/IGeneralError.sol";
import {IHubServiceConsumer} from "../interfaces/IHubServiceConsumer.sol";
import {IHubServiceProvider} from "../interfaces/IHubServiceProvider.sol";
import {HubOrc} from "../HubOrc/HubOrc.sol";

interface IHubGateway is IGeneralError, IHubServiceConsumer, IHubServiceProvider {
    event Setup(HubOrc hubOrc, address hubContract, uint256 myHubId);
    event Task(uint256 requestId, address requester, bytes32 serviceId, uint256 callbackGasLimit, bytes inputs);
}
