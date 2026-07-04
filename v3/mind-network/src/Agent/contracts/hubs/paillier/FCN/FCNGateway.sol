// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import {HubGateway} from "../../../hub-framework/HubGateway/HubGateway.sol";
import {FCN} from "./FCN.sol";

contract FCNGateway is HubGateway {
    bytes32 private constant CONTRACT_ID = "Paillier FCN Gateway";

    function onServiceRequested(
        uint256 requestId,
        address requester,
        bytes32 serviceId,
        bytes calldata inputs,
        uint256 callbackGasLimit
    ) external override onlyHubOrc {
        if (serviceId == "Paillier Compute") {
            FCN(hubContract).serviceRequested(requestId);
            emit Task(requestId, requester, serviceId, callbackGasLimit, inputs);
        } else {
            revert GeneralError(CONTRACT_ID, 405);
        }
    }

    function onFeeReceived(uint256, uint256, uint256) external payable override {}
}
