// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import {IGeneralError} from "../../common/IGeneralError.sol";
import {IFheKeySet} from "../../storage/IFheKeySet.sol";
import {IHubServiceConsumer} from "../../hub-framework/interfaces/IHubServiceConsumer.sol";
import {IFCNServiceSpecs} from "../paillier/FCN/IFCNServiceSpecs.sol";
import {IFDNServiceSpecs} from "../paillier/FDN/IFDNServiceSpecs.sol";

interface IDeepSeekHub is IGeneralError, IFCNServiceSpecs, IHubServiceConsumer, IFDNServiceSpecs, IFheKeySet {
    enum RoundStatus {
        Pending,
        Voting,
        PendingFCN,
        PendingFDN,
        Completed
    }

    struct Round {
        uint256 tsStart;
        uint256 tsEnd;
        uint256 participation;
        bytes32 fheKeySetId;
        uint256 fcnRequestId;
        uint256 fdnRequestId;
        uint256 result;
        RoundStatus status;
    }

    event Setup(
        address hubOrc,
        uint256 fcnHubId,
        uint256 fdnHubId,
        uint256 callbackGasLimitFCN,
        uint256 callbackGasLimitFDN,
        uint256 roundDurationSec,
        bytes32 uriPrefix
    );

    event FheKeysRequested(uint256 requestId);

    event FheKeysReceived(uint256 requestId, bytes32 fheKeySetId);

    event Vote(uint256 roundNumber, address voter);
}
