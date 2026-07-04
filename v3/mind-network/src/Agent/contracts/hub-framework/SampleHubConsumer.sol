// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import {IGeneralError} from "../common/IGeneralError.sol";
import {HubOrc} from "../hub-framework/HubOrc/HubOrc.sol";
import {IHubServiceConsumer} from "./interfaces/IHubServiceConsumer.sol";
import {OwnableUpgradeable} from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";

contract SampleHubConsumer is OwnableUpgradeable, IGeneralError, IHubServiceConsumer {
    bytes32 private constant CONTRACT_ID = "SampleHubConsumer";

    HubOrc public hubOrc;
    mapping(uint256 requestId => bytes) public requestResults;

    event ServiceRequest(uint256 requestId, uint256 hubId, bytes32 serviceId, bytes input);
    event ServiceResult(uint256 requestId, uint256 hubId, bytes32 serviceId, bytes outputs);

    modifier onlyHubOrc() {
        if (_msgSender() != address(hubOrc)) {
            revert GeneralError(CONTRACT_ID, 4031);
        }
        _;
    }

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(address _owner, HubOrc _hubOrc) public initializer {
        __Ownable_init(_owner);
        hubOrc = _hubOrc;
    }

    function withdrawGas() external onlyOwner {
        payable(msg.sender).transfer(address(this).balance);
    }

    function getFeeAmount(
        uint256 hubId,
        bytes32 serviceId,
        bytes calldata input,
        uint256 gasLimit
    ) external view returns (uint256 topup) {
        (, , topup) = hubOrc.getFeeAmount(hubId, serviceId, input.length, gasLimit, address(this));
    }

    function request(uint256 hubId, bytes32 serviceId, bytes calldata input, uint256 gasLimit) external payable {
        (, , uint256 topup) = hubOrc.getFeeAmount(hubId, serviceId, input.length, gasLimit, address(this));
        if (topup > 0) {
            hubOrc.depositFeeFor{value: topup}(address(this));
        }
        uint256 requestID = hubOrc.commitSingleRequest(hubId, serviceId, gasLimit, input);
        emit ServiceRequest(requestID, hubId, serviceId, input);
    }

    function onRequestCompleted(
        uint256 requestId,
        uint256 hubId,
        bytes32 serviceId,
        bytes calldata outputs
    ) external override onlyHubOrc {
        requestResults[requestId] = outputs;
        emit ServiceResult(requestId, hubId, serviceId, outputs);
    }

    receive() external payable {}
}
