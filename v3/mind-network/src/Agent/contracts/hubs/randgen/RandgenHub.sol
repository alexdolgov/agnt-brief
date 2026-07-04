// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import {AccessControlUpgradeable} from "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import {HubOrc} from "../../hub-framework/HubOrc/HubOrc.sol";
import {IRandgenHub} from "./IRandgenHub.sol";
import {RandgenHubGateway} from "./RandgenHubGateway.sol";
import {StringStorage} from "../../storage/StringStorage.sol";

contract RandgenHub is IRandgenHub, AccessControlUpgradeable {
    bytes32 private constant CONTRACT_ID = "RandgenHub";
    bytes32 public constant VOTER_ROLE = keccak256("VOTER_ROLE");

    HubOrc private hubOrc;
    RandgenHubGateway private gateway;

    uint256 private fcnHubId;
    uint256 private fdnHubId;
    uint256 private callbackGasLimitFCN;
    uint256 private callbackGasLimitFDN;

    bytes32 public fheKeySetId;
    mapping(uint256 fcnRequestId => uint256 roundNumber) private fcnRequestIds;
    mapping(uint256 fdnRequestId => uint256 roundNumber) private fdnRequestIds;

    bytes32 private uriPrefix;

    uint256 private roundDurationSec;
    uint256 public currentRoundNumber;
    uint256 public usedRoundNumber;
    mapping(uint256 roundNumber => Round) public rounds;
    mapping(address voter => uint256 roundNumber) private submitted;

    modifier onlyHubOrc() {
        if (_msgSender() != address(hubOrc)) {
            revert GeneralError(CONTRACT_ID, 4031);
        }
        _;
    }

    modifier onlyGateway() {
        if (_msgSender() != address(gateway)) {
            revert GeneralError(CONTRACT_ID, 4032);
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
        RandgenHubGateway _gateway,
        uint256 _fcnHubId,
        uint256 _fdnHubId,
        uint256 _callbackGasLimitFCN,
        uint256 _callbackGasLimitFDN,
        uint256 _durationPerRoundSec,
        StringStorage _stringStorage,
        string calldata _uriPrefixStr
    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
        hubOrc = _hubOrc;
        gateway = _gateway;
        fcnHubId = _fcnHubId;
        fdnHubId = _fdnHubId;
        callbackGasLimitFCN = _callbackGasLimitFCN;
        callbackGasLimitFDN = _callbackGasLimitFDN;
        roundDurationSec = _durationPerRoundSec;
        uriPrefix = _stringStorage.addString(_uriPrefixStr);
        emit Setup(
            address(hubOrc),
            address(gateway),
            fcnHubId,
            fdnHubId,
            callbackGasLimitFCN,
            callbackGasLimitFDN,
            roundDurationSec,
            uriPrefix
        );
    }

    function initFirstRound() external onlyRole(DEFAULT_ADMIN_ROLE) {
        if (fheKeySetId == bytes32(0)) {
            revert GeneralError(CONTRACT_ID, 425);
        }
        if (currentRoundNumber > 0) {
            revert GeneralError(CONTRACT_ID, 429);
        }
        _startNextRound();
    }

    function hasVoted(address voter) external view returns (bool isVoted, uint256 deadline) {
        isVoted = submitted[voter] == currentRoundNumber;
        deadline = rounds[currentRoundNumber].tsStart + roundDurationSec;
    }

    function refreshFheKeys() external onlyRole(DEFAULT_ADMIN_ROLE) {
        uint256 fdnRequestId = hubOrc.commitSingleRequest(
            fdnHubId,
            "Paillier Key Gen",
            callbackGasLimitFDN,
            new bytes(0)
        );
        emit FheKeysRequested(fdnRequestId);
    }

    function isCurrentRoundEnded() private returns (bool) {
        Round storage round = rounds[currentRoundNumber];
        if (block.timestamp - round.tsStart > roundDurationSec) {
            if (round.participation == 0) {
                round.tsStart = block.timestamp;
                return false;
            }
            return true;
        }
        return false;
    }

    function submitRandomCt(string calldata uriPath) external onlyRole(VOTER_ROLE) {
        if (isCurrentRoundEnded()) {
            _endCurrentRound();
            _startNextRound();
        }
        address voter = _msgSender();
        uint256 roundNum = currentRoundNumber;
        uint256 lastVotedRound = submitted[voter];
        if (lastVotedRound < roundNum) {
            submitted[voter] = roundNum;
        } else {
            revert GeneralError(CONTRACT_ID, 429);
        }
        rounds[roundNum].participation += 1;
        uint256 fcnRequestId = rounds[roundNum].fcnRequestId;
        URL memory url = URL({baseUrl: uriPrefix, path: uriPath});
        hubOrc.prepareBulkRequest(fcnRequestId, abi.encode(url));
        emit Vote(roundNum, voter);
    }

    function _endCurrentRound() private {
        Round storage round = rounds[currentRoundNumber];
        round.tsEnd = block.timestamp;
        round.status = RoundStatus.PendingFCN;
        hubOrc.commitBulkRequest(round.fcnRequestId);
    }

    function _startNextRound() private {
        TaskRequest memory request = TaskRequest("32Bit To Uint256", fheKeySetId, new bytes(0));
        bytes memory serviceinputs = abi.encode(request);
        uint256 fcnRequestId = hubOrc.startBulkRequest(
            fcnHubId,
            "Paillier Compute",
            serviceinputs,
            callbackGasLimitFCN
        );
        uint256 roundNumber = currentRoundNumber + 1;
        currentRoundNumber = roundNumber;
        Round storage round = rounds[roundNumber];
        round.tsStart = block.timestamp;
        round.status = RoundStatus.Active;
        round.fheKeySetId = fheKeySetId;
        round.fcnRequestId = fcnRequestId;
        fcnRequestIds[fcnRequestId] = roundNumber;
    }

    function completeFCN(uint256 requestId, bytes memory fcnResult) private {
        uint256 roundNumber = fcnRequestIds[requestId];
        Round storage round = rounds[roundNumber];
        if (round.status != RoundStatus.PendingFCN) {
            revert GeneralError(CONTRACT_ID, 4051);
        }
        round.fcnResult = fcnResult;
        round.status = RoundStatus.CompletedFCN;
    }

    function completeFDN(uint256 requestId, bytes memory fdnResult) private {
        DecryptionResult memory dout = abi.decode(fdnResult, (DecryptionResult));
        uint256 result = abi.decode(dout.decrypted, (uint256));
        uint256 roundNumber = fdnRequestIds[requestId];
        Round storage round = rounds[roundNumber];
        if (round.status != RoundStatus.PendingFDN) {
            revert GeneralError(CONTRACT_ID, 4052);
        }
        round.status = RoundStatus.Completed;
        gateway.completeRequest(round.randgenRequestId, abi.encode(result));
    }

    function onRequestCompleted(
        uint256 requestId,
        uint256 hubId,
        bytes32 serviceId,
        bytes calldata outputs
    ) external override onlyHubOrc {
        if (hubId == fcnHubId && serviceId == "Paillier Compute") {
            completeFCN(requestId, outputs);
        } else if (hubId == fdnHubId) {
            if (serviceId == "Paillier Key Gen") {
                fheKeySetId = abi.decode(outputs, (bytes32));
                emit FheKeysReceived(requestId, fheKeySetId);
            } else if (serviceId == "Paillier Decryption") {
                completeFDN(requestId, outputs);
            } else {
                revert GeneralError(CONTRACT_ID, 4211);
            }
        } else {
            revert GeneralError(CONTRACT_ID, 4212);
        }
    }

    function onServiceRequested(
        uint256 requestId,
        address,
        bytes32,
        bytes calldata,
        uint256 callbackGasLimit
    ) external onlyGateway {
        uint256 roundNumber = usedRoundNumber + 1;
        usedRoundNumber = roundNumber;
        Round storage round = rounds[roundNumber];
        if (round.status != RoundStatus.CompletedFCN) {
            revert GeneralError(CONTRACT_ID, 503);
        }
        bytes memory serviceinputs = abi.encode(DecryptionRequest("Uint256", round.fheKeySetId, round.fcnResult));
        uint256 gasLimit = callbackGasLimitFDN + callbackGasLimit;
        uint256 fdnRequestId = hubOrc.commitSingleRequest(fdnHubId, "Paillier Decryption", gasLimit, serviceinputs);
        fdnRequestIds[fdnRequestId] = roundNumber;
        round.randgenRequestId = requestId;
        round.fdnRequestId = fdnRequestId;
        round.status = RoundStatus.PendingFDN;
    }

    receive() external payable {}
}
