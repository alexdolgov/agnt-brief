// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import {AccessControlUpgradeable} from "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import {ECDSA} from "@openzeppelin/contracts/utils/cryptography/ECDSA.sol";
import {HubOrc} from "../../hub-framework/HubOrc/HubOrc.sol";
import {Agent} from "../../dao/Agent.sol";
import {IAIHealthHub} from "./IAIHealthHub.sol";
import {StringStorage} from "../../storage/StringStorage.sol";

contract AIHealthHub is IAIHealthHub, AccessControlUpgradeable {
    bytes32 private constant CONTRACT_ID = "World AI Health Hub";

    HubOrc private hubOrc;
    Agent private agent;

    bytes32 public fheKeySetId;
    bytes32 public uriPrefix;

    mapping(address voter => uint256 timestamp) public lastVoted;
    mapping(address voter => uint256 entryId) public voterEntryId;
    mapping(string entry => address voter) public entryToVoter;
    string[] private entries;

    bool public isVoteSigNeeded;
    mapping(address signer => bool) public isValidVoteSigner;

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

    function initialize(address _owner) public initializer {
        __AccessControl_init();
        _grantRole(DEFAULT_ADMIN_ROLE, _owner);
    }

    function setup(
        HubOrc _hubOrc,
        Agent _agent,
        StringStorage _stringStorage,
        string calldata _uriPrefixStr
    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
        hubOrc = _hubOrc;
        agent = _agent;
        uriPrefix = _stringStorage.addString(_uriPrefixStr);
        emit Setup(address(hubOrc), address(agent), uriPrefix);
    }

    function setupVoteSigner(
        bool _isVoteSigNeeded,
        address[] calldata _signers,
        bool[] calldata _isSigners
    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
        isVoteSigNeeded = _isVoteSigNeeded;
        for (uint256 j; j < _signers.length; j++) {
            isValidVoteSigner[_signers[j]] = _isSigners[j];
        }
    }

    function refreshFheKeys(uint256 fdnHubId, uint256 callbackGasLimitFDN) external onlyRole(DEFAULT_ADMIN_ROLE) {
        uint256 fdnRequestId = hubOrc.commitSingleRequest(
            fdnHubId,
            "Paillier Key Gen",
            callbackGasLimitFDN,
            new bytes(0)
        );
        emit FheKeysRequested(fdnRequestId);
    }

    function isVoter(address user) public view returns (bool canVote) {
        uint256 agentCount = agent.balanceOf(user);
        // for (uint256 i; i < agentCount; i++) {
        //     uint256 agentId = agent.tokenOfOwnerByIndex(user, i);
        //     uint256 hubId = agent.currentHub[agentId];
        //     if (hubId == 5) {
        //         canVote = true;
        //         break;
        //     }
        // }
        canVote = agentCount > 0;
    }

    function vote(string calldata uriPath, bytes calldata signature, uint256 sigTs) external {
        address voter = _msgSender();
        if (!isVoter(voter)) {
            revert GeneralError(CONTRACT_ID, 4001);
        }
        if (entryToVoter[uriPath] != address(0)) {
            revert GeneralError(CONTRACT_ID, 4002);
        }
        if (lastVoted[voter] > 0) {
            revert GeneralError(CONTRACT_ID, 4003);
        }
        verifySig(voter, uriPath, signature, sigTs);
        entries.push(uriPath);
        uint256 entryId = entries.length - 1;
        entryToVoter[uriPath] = voter;
        voterEntryId[voter] = entryId;
        lastVoted[voter] = block.timestamp;
        emit Vote(voter, uriPath);
    }

    function verifySig(address user, string calldata uriPath, bytes calldata signature, uint256 sigTs) private view {
        if (sigTs < block.timestamp - 60 * 60) {
            //Signature valid for 60 minutes
            revert GeneralError(CONTRACT_ID, 4032);
        }
        bytes32 payloadHash = keccak256(abi.encode(address(this), user, uriPath, sigTs));
        address signer = ECDSA.recover(
            keccak256(abi.encodePacked("\x19Ethereum Signed Message:\n32", payloadHash)),
            signature
        );
        if (!isValidVoteSigner[signer]) {
            revert GeneralError(CONTRACT_ID, 4033);
        }
    }

    function onRequestCompleted(
        uint256 requestId,
        uint256,
        bytes32 serviceId,
        bytes calldata outputs
    ) external override onlyHubOrc {
        if (serviceId == "Paillier Key Gen") {
            fheKeySetId = abi.decode(outputs, (bytes32));
            emit FheKeysReceived(requestId, fheKeySetId);
        } else {
            revert GeneralError(CONTRACT_ID, 4211);
        }
    }
}
