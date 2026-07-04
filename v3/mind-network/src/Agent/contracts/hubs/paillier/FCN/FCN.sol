// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import {AccessControlUpgradeable} from "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import {EnumerableSet} from "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";
import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import {FCNGateway} from "./FCNGateway.sol";
import {IFCN} from "./IFCN.sol";
import {StringStorage} from "../../../storage/StringStorage.sol";

contract FCN is IFCN, AccessControlUpgradeable {
    using EnumerableSet for EnumerableSet.UintSet;

    bytes32 private constant CONTRACT_ID = "Paillier FCN";
    bytes32 public constant GATEWAY_ROLE = keccak256("GATEWAY_ROLE");

    FCNGateway private gateway;
    uint256 private quorumX10000;
    bytes32 private uriPrefix;

    uint256 public countVoters;
    uint256 public quorumCount;
    mapping(address voter => bool isVoter) public isVoter;

    mapping(uint256 requestId => bool) public isCompleted;
    mapping(uint256 requestId => mapping(bytes32 => uint256)) private resultCount;
    mapping(uint256 requestId => mapping(address => bool)) private isSubmitted;

    EnumerableSet.UintSet private pendingRequests;
    uint256[] private processedRequests;

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(address _owner) public initializer {
        __AccessControl_init();
        _grantRole(DEFAULT_ADMIN_ROLE, _owner);
    }

    function setup(
        FCNGateway _gateway,
        uint256 _quorumX10000,
        StringStorage _stringStorage,
        string calldata _uriPrefixStr
    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
        gateway = _gateway;
        quorumX10000 = _quorumX10000;
        uriPrefix = _stringStorage.addString(_uriPrefixStr);
        emit Setup(address(gateway), quorumX10000, uriPrefix);
    }

    function setQuorum(uint256 _quorumX10000) external onlyRole(DEFAULT_ADMIN_ROLE) {
        quorumX10000 = _quorumX10000;
        quorumCount = (countVoters * quorumX10000) / 10000;
    }

    function getProcessedRequests(uint256 end, uint256 size) external view returns (uint256[] memory result) {
        if (size > 1000) {
            revert GeneralError(CONTRACT_ID, 4001);
        }
        if (end > processedRequests.length) {
            end = processedRequests.length;
        }
        if (size > end) {
            size = end;
        }
        uint256 start = end - size;
        result = new uint256[](size);
        for (uint256 i = start; i < end; i++) {
            result[i - start] = processedRequests[i];
        }
    }

    function getPendingRequests() external view returns (uint256[] memory) {
        if (pendingRequests.length() < 1000) {
            return pendingRequests.values();
        } else {
            uint256[] memory result = new uint256[](1000);
            for (uint256 i; i < 1000; i++) {
                result[i] = pendingRequests.at(i);
            }
            return result;
        }
    }

    function serviceRequested(uint256 requestId) external onlyRole(GATEWAY_ROLE) {
        bool added = pendingRequests.add(requestId);
        if (!added) {
            revert GeneralError(CONTRACT_ID, 50001);
        }
    }

    function whitelistVoter(address[] calldata voters, bool[] calldata _isVoter) external onlyRole(DEFAULT_ADMIN_ROLE) {
        if (voters.length != _isVoter.length) {
            revert GeneralError(CONTRACT_ID, 4002);
        }
        for (uint256 i; i < voters.length; i++) {
            if (isVoter[voters[i]] != _isVoter[i]) {
                isVoter[voters[i]] = _isVoter[i];
                if (_isVoter[i]) {
                    countVoters += 1;
                } else {
                    countVoters -= 1;
                }
            }
        }
        quorumCount = (countVoters * quorumX10000) / 10000;
    }

    function canSubmit(uint256 requestId, address voter) external view returns (bool) {
        return isVoter[voter] && !isSubmitted[requestId][voter];
    }

    function submitTaskResult(uint256 requestId, string calldata uriPath) external {
        address voter = _msgSender();
        if (!isVoter[voter]) {
            revert GeneralError(CONTRACT_ID, 4032);
        }
        if (isSubmitted[requestId][voter]) {
            revert GeneralError(CONTRACT_ID, 429);
        }

        if (isCompleted[requestId]) {
            emit Submission(requestId, voter, false);
        } else {
            isSubmitted[requestId][voter] = true;
            bytes32 resultHash = keccak256(bytes(uriPath));
            uint256 newCount = resultCount[requestId][resultHash] + 1;
            resultCount[requestId][resultHash] = newCount;

            if (newCount >= quorumCount) {
                gateway.completeRequest(
                    requestId,
                    abi.encode(TaskResult({result: URL({baseUrl: uriPrefix, path: uriPath})}))
                );
                isCompleted[requestId] = true;
                bool removed = pendingRequests.remove(requestId);
                if (!removed) {
                    revert GeneralError(CONTRACT_ID, 50002);
                }
                processedRequests.push(requestId);
            }

            emit TaskResultSubmitted(requestId, voter, resultHash);
        }
    }
}
