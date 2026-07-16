// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.30;

import {AccessControlUpgradeable} from "@openzeppelin-upgradeable/access/AccessControlUpgradeable.sol";
import {Initializable} from "@openzeppelin-upgradeable/proxy/utils/Initializable.sol";
import {PausableUpgradeable} from "@openzeppelin-upgradeable/utils/PausableUpgradeable.sol";
import {ReentrancyGuardUpgradeable} from "@openzeppelin-upgradeable/utils/ReentrancyGuardUpgradeable.sol";
import {UUPSUpgradeable} from "../proxy/UUPSUpgradeable.sol";
import {SignatureChecker} from "@openzeppelin/contracts/utils/cryptography/SignatureChecker.sol";
import {IHighway} from "../interface/IHighway.sol";
import {HighwayLib} from "./HighwayLib.sol";
import {HighwayCallerMap, HighwayCallerLib} from "./HighwayCaller.sol";

contract Highway is
    IHighway,
    Initializable,
    AccessControlUpgradeable,
    PausableUpgradeable,
    ReentrancyGuardUpgradeable,
    UUPSUpgradeable
{
    bytes32 public constant VALIDATOR_ROLE = keccak256("VALIDATOR_ROLE");

    HighwayCallerMap.AddressToCallerMap private callerInfoMap;
    HighwayLib.State private state;

    event MessageReq(
        address indexed caller,
        HighwayLib.Message message,
        uint8 messageIndex
    );

    event MessageAck(
        address indexed caller,
        HighwayLib.Message message,
        HighwayLib.MessageStatus status,
        uint8 messageIndex
    );

    constructor() {
        _disableInitializers();
    }

    function initialize(
        address admin,
        HighwayLib.State memory initState
    ) public initializer {
        __AccessControl_init();
        __Pausable_init();
        __UUPSUpgradeable_init();

        state = initState;
        _grantRole(DEFAULT_ADMIN_ROLE, admin);
        _grantRole(VALIDATOR_ROLE, state.validator);
    }

    function setState(
        HighwayLib.State memory newState
    ) public onlyRole(DEFAULT_ADMIN_ROLE) nonReentrant {
        require(
            address(newState.dusd) != address(0),
            HighwayLib.InvalidAddress()
        );
        require(newState.validator != address(0), HighwayLib.InvalidAddress());
        require(
            newState.messageSigner != address(0),
            HighwayLib.InvalidAddress()
        );

        state = newState;
    }

    function updateValidator(
        address newValidator
    ) public onlyRole(DEFAULT_ADMIN_ROLE) nonReentrant {
        require(newValidator != address(0), HighwayLib.InvalidAddress());

        _revokeRole(VALIDATOR_ROLE, state.validator);
        _grantRole(VALIDATOR_ROLE, newValidator);
        state.validator = newValidator;
    }

    function pause() public onlyRole(DEFAULT_ADMIN_ROLE) nonReentrant {
        _pause();
    }

    function unpause() public onlyRole(DEFAULT_ADMIN_ROLE) nonReentrant {
        _unpause();
    }

    function enableCaller(
        address caller
    ) public onlyRole(DEFAULT_ADMIN_ROLE) nonReentrant {
        HighwayCallerLib.Caller storage callerInfo = HighwayCallerLib.getCaller(
            callerInfoMap,
            caller
        );
        callerInfo.enabled = true;
    }

    function disableCaller(
        address caller
    ) public onlyRole(DEFAULT_ADMIN_ROLE) nonReentrant {
        HighwayCallerLib.Caller storage callerInfo = HighwayCallerLib
            .getOrInitCaller(callerInfoMap, caller);
        callerInfo.enabled = false;
    }

    function _authorizeUpgrade(
        address newImplementation
    ) internal override onlyRole(DEFAULT_ADMIN_ROLE) {}

    function checkSignature(
        HighwayLib.Message calldata message,
        HighwayLib.MessageSignature memory sig
    ) internal view returns (bool) {
        require(sig.expiredAt >= block.timestamp, HighwayLib.Timeout());
        require(sig.chainId == block.chainid, HighwayLib.InvalidChainId());
        require(sig.caller == msg.sender, HighwayLib.InvalidCaller());

        bytes memory originalSig = sig.signature;
        sig.signature = bytes("");
        bytes32 msgHash = keccak256(abi.encode(message, sig));
        return
            SignatureChecker.isValidSignatureNow(
                state.messageSigner,
                msgHash,
                originalSig
            );
    }

    function reqRemoteCall(
        HighwayLib.Message calldata message,
        HighwayLib.MessageSignature calldata signature
    ) public whenNotPaused nonReentrant {
        HighwayCallerLib.Caller storage callerInfo = HighwayCallerLib
            .getOrInitCaller(callerInfoMap, msg.sender);
        require(callerInfo.enabled == true, HighwayLib.CallerDisabled());
        require(
            message.nonce > callerInfo.lastNonce,
            HighwayLib.InvalidNonce()
        );
        require(
            checkSignature(message, signature),
            HighwayLib.InvalidSignature()
        );

        uint8 availableSlot = 255;

        // NOTE: Intentionally check nonce for all slots
        for (uint8 i = 0; i < HighwayCallerLib.HIGHWAY_MAX_MSG_BUFFER; i++) {
            require(
                callerInfo.withdrawBuffer[i].message.nonce != message.nonce,
                HighwayLib.DuplicateMessage()
            );
            if (
                callerInfo.withdrawBuffer[i].status !=
                HighwayLib.MessageStatus.Pending
            ) {
                availableSlot = i;
            }
        }

        if (availableSlot < HighwayCallerLib.HIGHWAY_MAX_MSG_BUFFER) {
            callerInfo.withdrawBuffer[availableSlot] = HighwayLib.WithdrawMessage(
                HighwayLib.MessageStatus.Pending,
                block.timestamp,
                0,
                message,
                0
            );
            callerInfo.lastNonce = message.nonce;
            emit MessageReq(msg.sender, message, availableSlot);
            return;
        }

        revert HighwayLib.OutOfBuffer();
    }

    function ackRemoteCall(
        HighwayLib.MessageAckParams[] calldata ackParams
    ) public whenNotPaused onlyRole(VALIDATOR_ROLE) nonReentrant {
        for (uint i = 0; i < ackParams.length; i++) {
            _ackRemoteCall(
                ackParams[i].caller,
                ackParams[i].messageIndex,
                ackParams[i].message,
                ackParams[i].status
            );
        }
    }

    function _ackRemoteCall(
        address callerAddress,
        uint8 messageIndex,
        HighwayLib.Message calldata message,
        HighwayLib.MessageStatus newStatus
    ) private {
        HighwayCallerLib.Caller storage caller = HighwayCallerLib.getCaller(
            callerInfoMap,
            callerAddress
        );
        require(caller.enabled == true, HighwayLib.CallerDisabled());

        HighwayLib.WithdrawMessage storage pendingMsg = caller
            .withdrawBuffer[messageIndex];

        require(
            pendingMsg.message.token == message.token &&
                pendingMsg.message.amount == message.amount &&
                pendingMsg.message.nonce == message.nonce &&
                pendingMsg.status == HighwayLib.MessageStatus.Pending,
            HighwayLib.InvalidMessage()
        );

        if (newStatus == HighwayLib.MessageStatus.Pending) {
            revert HighwayLib.InvalidStatus();
        } else if (newStatus == HighwayLib.MessageStatus.Ok) {
            bool success = state.dusd.transfer(callerAddress, message.amount);
            require(success, HighwayLib.TransferFailed());
            pendingMsg.status = HighwayLib.MessageStatus.Ok;
        } else {
            pendingMsg.status = newStatus;
        }
        pendingMsg.responseAt = block.timestamp;
        emit MessageAck(callerAddress, message, newStatus, messageIndex);
    }

    function getCallerInfo(
        address callerAddress
    ) public view returns (HighwayCallerLib.Caller memory) {
        if (HighwayCallerLib.contains(callerInfoMap, callerAddress)) {
            return HighwayCallerLib.getCaller(callerInfoMap, callerAddress);
        }
        HighwayCallerLib.Caller memory callerInfo;
        return callerInfo;
    }

    function getCallerAmount() public view returns (uint256) {
        return HighwayCallerLib.amount(callerInfoMap);
    }

    function getCallerInfoByIndex(
        uint256 startIndex,
        uint256 count
    ) public view returns (HighwayCallerLib.Caller[] memory) {
        uint256 amount = getCallerAmount();
        if (startIndex + count > amount) {
            count = amount - startIndex;
        }
        HighwayCallerLib.Caller[]
            memory callerInfos = new HighwayCallerLib.Caller[](count);
        for (uint256 i = 0; i < count; i++) {
            callerInfos[i] = HighwayCallerLib.getCallerByIndex(
                callerInfoMap,
                startIndex + i
            );
        }
        return callerInfos;
    }

    function getState() public view returns (HighwayLib.State memory) {
        return state;
    }
}
