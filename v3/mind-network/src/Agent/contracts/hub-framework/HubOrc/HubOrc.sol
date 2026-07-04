// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import {AccessControlUpgradeable} from "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import {IHubOrc} from "./IHubOrc.sol";
import {IHubServiceConsumer} from "../interfaces/IHubServiceConsumer.sol";
import {IHubServiceProvider} from "../interfaces/IHubServiceProvider.sol";
import {IGeneralError} from "../../common/IGeneralError.sol";
import {MemberPool} from "../../dao/MemberPool.sol";

contract HubOrc is IGeneralError, IHubOrc, AccessControlUpgradeable {
    bytes32 private constant CONTRACT_ID = "Hub Orchestrator";
    uint256 private constant DEFAULT_GAS_PRICE = 1000000;

    bytes32 public constant ADMIN_ROLE = keccak256("ADMIN_ROLE");
    bytes32 public constant HUB_REGISTER_ROLE = keccak256("HUB_REGISTER_ROLE");

    MemberPool private memberPool;

    uint256 private counterHubId;
    mapping(uint256 hubId => address) public hubGateways;
    mapping(uint256 hubId => address) public hubOwners;

    uint256 private counterRequestId;
    mapping(uint256 requestId => Request) public requests;

    mapping(uint256 hubId => mapping(bytes32 serviceId => ServiceFee)) public hubServiceFees;
    mapping(address requester => uint256) public serviceFeeDeposit;
    mapping(address requester => uint256) public serviceFeeLockedByRequester;
    mapping(uint256 requestId => uint256) public serviceFeeLockedByRequestId;

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(address _owner) public initializer {
        __AccessControl_init();
        _grantRole(DEFAULT_ADMIN_ROLE, _owner);
    }

    function setup(MemberPool _memberPool) external onlyRole(ADMIN_ROLE) {
        memberPool = _memberPool;
        emit Setup(memberPool);
    }

    modifier onlyHubOwnerOrGateway(uint256 hubId) {
        if (_msgSender() != hubOwners[hubId] && _msgSender() != hubGateways[hubId]) {
            revert GeneralError(CONTRACT_ID, 4031);
        }
        _;
    }

    function registerHub(address hubGateway, address hubOwner) external onlyRole(HUB_REGISTER_ROLE) {
        uint256 hubId = counterHubId + 1;
        counterHubId = hubId;
        hubOwners[hubId] = hubOwner;
        hubGateways[hubId] = hubGateway;
        emit HubRegistered(hubId, hubOwner, hubGateway);
    }

    function withdrawDaoReward(uint256 hubId) external onlyHubOwnerOrGateway(hubId) returns (uint256 amount) {
        memberPool.settleHubReward(hubId);
        amount = memberPool.withdrawHubOwnerReward(hubId, _msgSender());
    }

    function setHubServiceFee(
        uint256 hubId,
        bytes32 serviceId,
        uint128 feeConstant,
        uint128 feePerByte
    ) external onlyHubOwnerOrGateway(hubId) {
        hubServiceFees[hubId][serviceId] = ServiceFee(feeConstant, feePerByte);
        emit ServiceFeeUpdated(hubId, serviceId, hubServiceFees[hubId][serviceId]);
    }

    function getFeeAmount(
        uint256 hubId,
        bytes32 serviceId,
        uint256 inputLength,
        uint256 callbackGasAmount,
        address payer
    ) public view returns (uint256 serviceFee, uint256 gasFee, uint256 topup) {
        ServiceFee memory feeInfo = hubServiceFees[hubId][serviceId];
        uint256 gasPrice = tx.gasprice;
        if (gasPrice == 0) {
            gasPrice = DEFAULT_GAS_PRICE;
        }
        gasFee = gasPrice * callbackGasAmount;
        serviceFee = feeInfo.feeConstant + inputLength * feeInfo.feePerByte;
        uint256 totalFee = serviceFee + gasFee;
        if (serviceFeeDeposit[payer] < serviceFeeLockedByRequester[payer]) {
            uint256 balance = serviceFeeLockedByRequester[payer] - serviceFeeDeposit[payer];
            topup = totalFee + balance;
        } else {
            uint256 balance = serviceFeeDeposit[payer] - serviceFeeLockedByRequester[payer];
            topup = totalFee - Math.min(totalFee, balance);
        }
    }

    function getFeeAmountForBulkRequest(uint256 requestId) external view returns (uint256, uint256, uint256) {
        Request storage request = requests[requestId];
        return
            getFeeAmount(
                request.hubId,
                request.serviceId,
                request.inputLength,
                request.callbackGasLimit,
                request.requester
            );
    }

    function getRequestBulkInputs(
        uint256 requestId,
        uint256 startIndex,
        uint256 endIndex
    ) external view returns (bytes[] memory, uint256) {
        Request storage request = requests[requestId];
        endIndex = Math.min(endIndex, request.bulkInputs.length);
        uint256 length = endIndex - startIndex;
        if (length > 1000) {
            revert GeneralError(CONTRACT_ID, 4001);
        }
        bytes[] memory result = new bytes[](length);
        for (uint256 i = startIndex; i < endIndex; i++) {
            result[i - startIndex] = request.bulkInputs[i];
        }
        return (result, request.bulkInputs.length);
    }

    function depositFeeFor(address consumer) external payable {
        if (msg.value == 0) {
            revert GeneralError(CONTRACT_ID, 4005);
        }
        serviceFeeDeposit[consumer] += msg.value;
        emit FeeDeposited(consumer, msg.value);
    }

    function startBulkRequest(
        uint256 hubId,
        bytes32 serviceId,
        bytes memory inputs,
        uint256 callbackGasLimit
    ) external returns (uint256) {
        uint256 newRequestId = counterRequestId + 1;
        counterRequestId = newRequestId;
        Request storage request = requests[newRequestId];
        request.hubId = hubId;
        request.serviceId = serviceId;
        request.requester = _msgSender();
        if (inputs.length > 0) {
            request.inputs = inputs;
            request.inputLength = inputs.length;
        }
        request.callbackGasLimit = callbackGasLimit;
        return newRequestId;
    }

    function prepareBulkRequest(uint256 requestId, bytes memory bulkInput) external {
        Request storage request = requests[requestId];
        if (request.requester != _msgSender()) {
            revert GeneralError(CONTRACT_ID, 4032);
        }
        if (request.status != RequestStatus.Preparing) {
            revert GeneralError(CONTRACT_ID, 4051);
        }
        if (bulkInput.length == 0) {
            revert GeneralError(CONTRACT_ID, 4002);
        }
        request.inputLength += bulkInput.length;
        request.bulkInputs.push(bulkInput);
    }

    function commitBulkRequest(uint256 requestId) external {
        Request storage request = requests[requestId];
        if (request.status != RequestStatus.Preparing) {
            revert GeneralError(CONTRACT_ID, 4052);
        }
        if (request.requester != _msgSender()) {
            revert GeneralError(CONTRACT_ID, 4033);
        }
        request.status = RequestStatus.Requested;
        _request(
            requestId,
            request.hubId,
            request.serviceId,
            request.inputLength,
            request.callbackGasLimit,
            _msgSender(),
            request.inputs
        );
    }

    function commitSingleRequest(
        uint256 hubId,
        bytes32 serviceId,
        uint256 callbackGasLimit,
        bytes memory inputs
    ) external returns (uint256) {
        uint256 requestId = counterRequestId + 1;
        counterRequestId = requestId;
        Request storage request = requests[requestId];
        request.status = RequestStatus.Requested;
        request.hubId = hubId;
        request.serviceId = serviceId;
        request.inputs = inputs;
        request.inputLength = inputs.length;
        request.callbackGasLimit = callbackGasLimit;
        request.requester = _msgSender();
        _request(requestId, hubId, serviceId, inputs.length, callbackGasLimit, _msgSender(), inputs);
        return requestId;
    }

    function _request(
        uint256 requestId,
        uint256 hubId,
        bytes32 serviceId,
        uint256 inputLength,
        uint256 callbackGasLimit,
        address requester,
        bytes memory inputs
    ) private {
        (uint256 serviceFee, uint256 gasFee, uint256 topup) = getFeeAmount(
            hubId,
            serviceId,
            inputLength,
            callbackGasLimit,
            requester
        );
        if (topup > 0) {
            revert GeneralError(CONTRACT_ID, 402);
        }
        lockFee(requestId, requester, serviceFee + gasFee);
        IHubServiceProvider(hubGateways[hubId]).onServiceRequested(
            requestId,
            requester,
            serviceId,
            inputs,
            callbackGasLimit
        );
        emit ServiceRequested(requestId);
    }

    function cancelRequest(uint256 requestId) external {
        Request storage request = requests[requestId];
        if (request.requester != _msgSender()) {
            revert GeneralError(CONTRACT_ID, 4034);
        }
        if (request.status != RequestStatus.Requested) {
            revert GeneralError(CONTRACT_ID, 4053);
        }
        request.status = RequestStatus.Cancelled;
        unlockFee(requestId, request.requester);
        bool isCallbackSuccessful;
        try
            IHubServiceProvider(hubGateways[request.hubId]).onRequestCancelled(
                requestId,
                request.requester,
                request.serviceId
            )
        {
            isCallbackSuccessful = true;
        } catch (bytes memory reason) {
            emit CallbackFailed(requestId, reason);
        }
        emit ServiceCancelled(requestId, isCallbackSuccessful);
    }

    function completeRequest(uint256 requestId, bytes memory outputs) external {
        if (outputs.length == 0) {
            revert GeneralError(CONTRACT_ID, 411);
        }
        Request storage request = requests[requestId];
        if (request.status != RequestStatus.Requested) {
            revert GeneralError(CONTRACT_ID, 4054);
        }
        if (_msgSender() != hubGateways[request.hubId]) {
            revert GeneralError(CONTRACT_ID, 4035);
        }
        request.status = RequestStatus.Completed;

        bool isCallbackSuccessful;
        uint256 gasStart = gasleft();
        if (gasStart < request.callbackGasLimit) {
            revert GeneralError(CONTRACT_ID, 507);
        }
        try
            IHubServiceConsumer(request.requester).onRequestCompleted{gas: request.callbackGasLimit}(
                requestId,
                request.hubId,
                request.serviceId,
                outputs
            )
        {
            isCallbackSuccessful = true;
        } catch (bytes memory reason) {
            emit CallbackFailed(requestId, reason);
        }
        uint256 gasUsed = gasStart - gasleft();

        releaseFee(requestId, request.hubId, gasUsed, request.requester, _msgSender());

        emit ServiceCompleted(requestId, isCallbackSuccessful, outputs);
    }

    function lockFee(uint256 requestId, address requester, uint256 amount) private {
        if (serviceFeeLockedByRequestId[requestId] > 0) {
            revert GeneralError(CONTRACT_ID, 409);
        }
        serviceFeeLockedByRequestId[requestId] = amount;
        uint256 newLockedAmount = serviceFeeLockedByRequester[requester] + amount;
        if (newLockedAmount > serviceFeeDeposit[requester]) {
            revert GeneralError(CONTRACT_ID, 4003);
        }
        serviceFeeLockedByRequester[requester] = newLockedAmount;
        emit FeeLocked(requestId, requester, amount);
    }

    function unlockFee(uint256 requestId, address requester) private {
        uint256 amount = serviceFeeLockedByRequestId[requestId];
        serviceFeeLockedByRequester[requester] -= amount;
        emit FeeUnlocked(requestId, requester, amount);
    }

    function releaseFee(
        uint256 requestId,
        uint256 hubId,
        uint256 actualGasUsed,
        address requester,
        address serviceProvider
    ) private {
        uint256 gasPrice = tx.gasprice;
        if (gasPrice == 0) {
            gasPrice = DEFAULT_GAS_PRICE;
        }
        uint256 gasFee = gasPrice * actualGasUsed;
        uint256 lockedFeeAmount = serviceFeeLockedByRequestId[requestId];
        uint256 serviceFee = lockedFeeAmount > gasFee ? lockedFeeAmount - gasFee : 0;
        serviceFeeLockedByRequester[requester] -= lockedFeeAmount;
        serviceFeeDeposit[requester] -= lockedFeeAmount;
        IHubServiceProvider(serviceProvider).onFeeReceived{value: lockedFeeAmount}(requestId, serviceFee, gasFee);
        emit FeeDeducted(requestId, requester, lockedFeeAmount, hubId, serviceFee, gasFee);
    }
}
