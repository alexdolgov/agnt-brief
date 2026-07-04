// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import {IGeneralError} from "../../common/IGeneralError.sol";
import {IFheKeySet} from "../../storage/IFheKeySet.sol";
import {IHubServiceConsumer} from "../../hub-framework/interfaces/IHubServiceConsumer.sol";
import {IFDNServiceSpecs} from "../paillier/FDN/IFDNServiceSpecs.sol";

interface IAIHealthHub is IGeneralError, IHubServiceConsumer, IFDNServiceSpecs, IFheKeySet {
    event Setup(address hubOrc, address agent, bytes32 uriPrefix);

    event FheKeysRequested(uint256 requestId);

    event FheKeysReceived(uint256 requestId, bytes32 fheKeySetId);

    event Vote(address voter, string entry);
}
