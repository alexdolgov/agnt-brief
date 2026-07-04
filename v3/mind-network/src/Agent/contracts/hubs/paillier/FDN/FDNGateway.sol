// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import {HubGateway} from "../../../hub-framework/HubGateway/HubGateway.sol";
import {FheKeyRegistry} from "../../../storage/FheKeyRegistry.sol";
import {FDN} from "./FDN.sol";

contract FDNGateway is HubGateway {
    bytes32 private constant CONTRACT_ID = "Paillier FDN Gateway";

    function onServiceRequested(
        uint256 requestId,
        address requester,
        bytes32 serviceId,
        bytes calldata inputs,
        uint256 callbackGasLimit
    ) external override onlyHubOrc {
        if (serviceId == "Paillier Key Gen" || serviceId == "Paillier Decryption") {
            FDN(hubContract).serviceRequested(requestId);
            emit Task(requestId, requester, serviceId, callbackGasLimit, inputs);
        } else {
            revert GeneralError(CONTRACT_ID, 405);
        }
    }

    function onFeeReceived(uint256, uint256, uint256) external payable override {}

    function createFheKeySet(
        FheKeyRegistry registry,
        FheKeyRegistry.FheKeySet calldata generatedKeys
    ) external onlyHubContract returns (bytes32) {
        return registry.addFheKeySet(generatedKeys);
    }
}
