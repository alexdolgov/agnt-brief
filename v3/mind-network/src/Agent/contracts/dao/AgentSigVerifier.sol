// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import "@openzeppelin/contracts/utils/cryptography/EIP712.sol";
import "@openzeppelin/contracts/utils/cryptography/ECDSA.sol";
import "../common/IGeneralError.sol";

contract AgentSigVerifier is IGeneralError, EIP712 {
    struct Message {
        address user;
        uint256 agentID;
        uint256 hubID;
        string action;
        uint256 amount;
        uint256 timestamp;
        uint256 nonce;
    }

    bytes32 private constant CONTRACT_ID = keccak256("AgentSigVerifier");

    bytes32 private constant MESSAGE_TYPE_HASH =
        keccak256(
            "Message(address user,uint256 agentID,uint256 hubID,string action,uint256 amount,uint256 timestamp,uint256 nonce)"
        );

    uint256 private constant allowedTimeWindow = 1800; // 30-minute window for timestamp validity.

    mapping(address => uint256) private userNonces;

    constructor() EIP712("mindnetwork.xyz", "1") {}

    function verify(Message calldata message, bytes calldata signature) external returns (uint16) {
        if (block.timestamp < message.timestamp || block.timestamp > message.timestamp + allowedTimeWindow) {
            return 1; // Signature expired
        }
        bytes32 digest = _hashTypedMessage(message);
        address recoveredSigner = ECDSA.recover(digest, signature);
        if (recoveredSigner != message.user) {
            return 2; // Invalid Signature
        }
        if (message.nonce > userNonces[message.user]) {
            userNonces[message.user] = message.nonce;
        } else {
            return 3; // Nonce used
        }
        return 0;
    }

    function _hashTypedMessage(Message calldata message) internal view returns (bytes32) {
        bytes32 structHash = keccak256(
            abi.encode(
                MESSAGE_TYPE_HASH,
                message.user,
                message.agentID,
                message.hubID,
                keccak256(bytes(message.action)),
                message.amount,
                message.timestamp,
                message.nonce
            )
        );
        return _hashTypedDataV4(structHash);
    }
}
