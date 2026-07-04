// // SPDX-License-Identifier: UNLICENSED
// pragma solidity ^0.8.24;

// import {IAverageVotingHub} from "./IAverageVotingHub.sol";
// import {AccessControlUpgradeable} from "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
// import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
// import {HubOrc} from "../../../../hub-framework/HubOrc/HubOrc.sol";

// contract AverageVotingHub is IAverageVotingHub, AccessControlUpgradeable {
//     bytes32 private constant CONTRACT_ID = "AverageVotingSubnet";
//     bytes32 public constant ADMIN_ROLE = keccak256("ADMIN_ROLE");
//     bytes32 public constant POLL_CREATOR_ROLE = keccak256("POLL_CREATOR_ROLE");

//     HubOrc private subnetController;
//     uint256 private mySubnetID;

//     uint256 public fheKeySetID;
//     uint256 private fcnSubnetID;
//     uint256 private fdnSubnetID;
//     uint128 private callbackGasLimitFCN;
//     uint128 private callbackGasLimitFDN;
//     mapping(uint256 fcnRequestID => uint256 pollId) private fcnRequestIDs;
//     mapping(uint256 fdnRequestID => uint256 pollId) private fdnRequestIDs;

//     mapping(address hotWallet => address coldWallet) public coldWallets;

//     uint256 private currentPollId;
//     mapping(uint256 pollId => Poll) public polls;
//     mapping(uint256 pollId => PollProgression) public pollProgressions;
//     mapping(uint256 pollId => PollResult) public pollResults;

//     function initialize(address _owner) public initializer {
//         __AccessControl_init();
//         _grantRole(DEFAULT_ADMIN_ROLE, _owner);
//     }

//     function setup(HubOrc _subnetController, uint256 _mySubnetID) external onlyRole(ADMIN_ROLE) {
//         subnetController = _subnetController;
//         mySubnetID = _mySubnetID;
//         emit Setup(address(_subnetController), _mySubnetID);
//     }

//     function setupFHE(
//         uint256 _fcnSubnetID,
//         uint256 _fdnSubnetID,
//         uint128 _callbackGasLimitFCN,
//         uint128 _callbackGasLimitFDN
//     ) external onlyRole(ADMIN_ROLE) {
//         fcnSubnetID = _fcnSubnetID;
//         fdnSubnetID = _fdnSubnetID;
//         callbackGasLimitFCN = _callbackGasLimitFCN;
//         callbackGasLimitFDN = _callbackGasLimitFDN;
//         emit SetupFHE(_fcnSubnetID, _fdnSubnetID, _callbackGasLimitFCN, _callbackGasLimitFDN);
//     }

//     function refreshFheKeys() external onlyRole(ADMIN_ROLE) {
//         fheKeySetID = 0;
//         (, , , uint256 topup) = subnetController.getFeeAmount(fdnSubnetID, 1, 0, callbackGasLimitFDN, address(this));
//         if (topup > 0) {
//             subnetController.depositFeeFor{value: topup}(address(this));
//         }
//         uint256 fdnRequestID = subnetController.requestSingleTxService(fdnSubnetID, 1, callbackGasLimitFDN, "");
//         emit FheKeysRequested(fdnRequestID);
//     }

//     function registerVoter(address coldWallet) external {
//         address existing = coldWallets[_msgSender()];
//         if (existing == coldWallet) {
//             revert GeneralError(CONTRACT_ID, 304);
//         }
//         if (existing != address(0)) {
//             emit VoterUnlinkd(existing, _msgSender());
//         }
//         coldWallets[_msgSender()] = coldWallet;
//         if (coldWallet != address(0)) {
//             emit VoterLinked(coldWallet, _msgSender());
//         }
//     }

//     function createPoll(Poll calldata newPoll) external onlyRole(POLL_CREATOR_ROLE) {
//         if (fheKeySetID == 0) {
//             revert GeneralError(CONTRACT_ID, 425);
//         }
//         uint256 newPollId = currentPollId + 1;
//         currentPollId = newPollId;
//         polls[newPollId] = newPoll;

//         TaskRequest memory request = TaskRequest(1, fheKeySetID, abi.encode(newPoll.choiceBits));
//         bytes memory serviceinputs = abi.encode(request);
//         uint256 fcnRequestID = subnetController.startMultiTxService(fcnSubnetID, 1, serviceinputs, callbackGasLimitFCN);
//         pollProgressions[newPollId].fcnRequestID = fcnRequestID;

//         emit NewPoll(newPollId);
//     }

//     function vote(uint256 pollId, bytes calldata num) external {
//         address voter = coldWallets[_msgSender()];
//         if (voter == address(0)) {
//             revert GeneralError(CONTRACT_ID, 403);
//         }
//         if (num.length > 100) {
//             revert GeneralError(CONTRACT_ID, 413);
//         }

//         Poll storage poll = polls[pollId];
//         if (poll.startTime > block.timestamp || poll.endTime < block.timestamp) {
//             revert GeneralError(CONTRACT_ID, 408);
//         }

//         PollProgression storage pollProgression = pollProgressions[pollId];
//         if (pollProgression.status != PollStatus.Voting) {
//             revert GeneralError(CONTRACT_ID, 4101);
//         }
//         subnetController.prepareMultiTxService(pollProgression.fcnRequestID, num);
//         uint256 newParticipation = pollProgression.participations + 1;
//         pollProgression.participations = newParticipation;

//         if (newParticipation == poll.maxNumVoter) {
//             _endPoll(pollId);
//         }

//         emit Vote(pollId, voter);
//     }

//     function endPollAdmin(uint256 pollId) external onlyRole(POLL_CREATOR_ROLE) {
//         _endPoll(pollId);
//     }

//     function cancelPollAdmin(uint256 pollId) external onlyRole(POLL_CREATOR_ROLE) {
//         PollProgression storage pollProgression = pollProgressions[pollId];
//         if (pollProgression.status != PollStatus.Voting) {
//             revert GeneralError(CONTRACT_ID, 4102);
//         }
//         pollProgression.status = PollStatus.Cancelled;
//     }

//     function endPoll(uint256 pollId) external {
//         Poll storage poll = polls[pollId];
//         PollProgression storage pollProgression = pollProgressions[pollId];
//         if (poll.endTime > block.timestamp && poll.maxNumVoter > pollProgression.participations) {
//             revert GeneralError(CONTRACT_ID, 412);
//         }
//         _endPoll(pollId);
//     }

//     function _endPoll(uint256 pollId) private {
//         PollProgression storage pollProgression = pollProgressions[pollId];
//         subnetController.requestMultiTxService(pollProgression.fcnRequestID);
//         pollProgression.status = PollStatus.PendingFCN;
//     }

//     function completeFCN(uint256 pollId, bytes memory fcnResult) private {
//         PollProgression storage pollProgression = pollProgressions[pollId];
//         if (pollProgression.status != PollStatus.PendingFCN) {
//             revert GeneralError(CONTRACT_ID, 4103);
//         }
//         pollProgression.status = PollStatus.PendingFDN;
//     }

//     function settlePoll(uint256 pollId, uint256 result) private {
//         // uint256 rewards = subnetController.settleReward(mySubnetID);
//         PollProgression storage pollProgression = pollProgressions[pollId];
//         if (pollProgression.status != PollStatus.PendingFDN) {
//             revert GeneralError(CONTRACT_ID, 4104);
//         }
//         pollProgression.status = PollStatus.Completed;
//         PollResult storage pollResult = pollResults[pollId];
//         pollResult.result = result;
//     }

//     function onServiceCompleted(
//         uint256 requestID,
//         uint256 subnetID,
//         uint256 serviceID,
//         bytes calldata outputs
//     ) external override {
//         if (subnetID == fcnSubnetID) {
//             uint256 pollId = fcnRequestIDs[requestID];
//             completeFCN(pollId, outputs);
//         } else if (subnetID == fdnSubnetID) {
//             if (serviceID == 1) {
//                 if (fheKeySetID != 0) {
//                     revert GeneralError(CONTRACT_ID, 4104);
//                 }
//                 fheKeySetID = abi.decode(outputs, (uint256));
//             } else if (serviceID == 2) {
//                 uint256 pollId = fdnRequestIDs[requestID];
//                 ComputationDecryptionResult memory dout = abi.decode(outputs, (ComputationDecryptionResult));
//                 uint256 result = abi.decode(dout.decryptedOutputs, (uint256));
//                 settlePoll(pollId, result);
//             } else {
//                 revert GeneralError(CONTRACT_ID, 4211); // Error: Invalid service ID
//             }
//         } else {
//             revert GeneralError(CONTRACT_ID, 4212); // Error: Invalid subnet ID
//         }
//     }
// }
