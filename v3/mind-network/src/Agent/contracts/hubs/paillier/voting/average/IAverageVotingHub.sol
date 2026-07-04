// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import {IGeneralError} from "../../../../common/IGeneralError.sol";
import {IFCNServiceSpecs} from "../../FCN/IFCNServiceSpecs.sol";
import {IFDNServiceSpecs} from "../../FDN/IFDNServiceSpecs.sol";
import {IHubServiceConsumer} from "../../../../hub-framework/interfaces/IHubServiceConsumer.sol";

interface IAverageVotingHub is IGeneralError, IFCNServiceSpecs, IFDNServiceSpecs, IHubServiceConsumer {
    event Setup(address subnetController, uint256 mySubnetID);
    event SetupFHE(uint256 fcnSubnetID, uint256 fdnSubnetID, uint128 callbackGasLimitFCN, uint128 callbackGasLimitFDN);
    event FheKeysRequested(uint256 requestID);
    event VoterLinked(address voter, address hotWallet);
    event VoterUnlinkd(address voter, address hotWallet);
    event NewPoll(uint256 pollId);
    event Vote(uint256 roundNumber, address voter);

    enum PollStatus {
        Voting,
        PendingFCN,
        PendingFDN,
        Completed,
        Cancelled
    }

    struct Poll {
        uint64 startTime;
        uint64 endTime;
        uint32 maxNumVoter;
        uint32 choiceBits;
    }

    struct PollProgression {
        uint256 participations;
        uint256 fcnRequestID;
        uint256 fdnRequestID;
        PollStatus status;
    }

    struct PollResult {
        uint256 rewardAmount;
        uint256 result;
    }
}
