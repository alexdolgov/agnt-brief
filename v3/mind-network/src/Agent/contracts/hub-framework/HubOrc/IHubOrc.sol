// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import {MemberPool} from "../../dao/MemberPool.sol";

interface IHubOrc {
    enum RequestStatus {
        Preparing,
        Requested,
        Completed,
        Cancelled
    }

    struct Request {
        address requester;
        uint256 hubId;
        bytes32 serviceId;
        uint256 callbackGasLimit;
        uint256 inputLength;
        bytes inputs;
        bytes[] bulkInputs;
        RequestStatus status;
    }

    struct ServiceFee {
        uint128 feeConstant;
        uint128 feePerByte;
    }

    event Setup(MemberPool memberPool);

    event HubRegistered(uint256 hubId, address owner, address hub);

    event ServiceRequested(uint256 requestId);
    event ServiceCompleted(uint256 requestId, bool isCallbackSuccessful, bytes outputs);
    event ServiceCancelled(uint256 requestId, bool isCallbackSuccessful);
    event CallbackFailed(uint256 requestId, bytes reason);

    event ServiceFeeUpdated(uint256 hubId, bytes32 serviceId, ServiceFee serviceFee);
    event FeeDeposited(address user, uint256 amount);
    event FeeDeducted(
        uint256 requestId,
        address user,
        uint256 amount,
        uint256 forHubId,
        uint256 serviceFee,
        uint256 gasFee
    );
    event FeeLocked(uint256 requestId, address requester, uint256 amount);
    event FeeUnlocked(uint256 requestId, address requester, uint256 amount);
}
