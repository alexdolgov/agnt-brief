// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import {RandgenHub} from "./RandgenHub.sol";
import {HubGateway} from "../../hub-framework/HubGateway/HubGateway.sol";

contract RandgenHubGateway is HubGateway {
    bytes32 private constant CONTRACT_ID = "Paillier FCN Gateway";

    function onServiceRequested(
        uint256 requestId,
        address requester,
        bytes32 serviceId,
        bytes calldata inputs,
        uint256 callbackGasLimit
    ) external override onlyHubOrc {
        if (serviceId == "Get Random U256") {
            RandgenHub(hubContract).onServiceRequested(requestId, requester, serviceId, inputs, callbackGasLimit);
            emit Task(requestId, requester, serviceId, callbackGasLimit, inputs);
        } else {
            revert GeneralError(CONTRACT_ID, 405);
        }
    }

    function onFeeReceived(uint256, uint256, uint256) external payable override {}
}
