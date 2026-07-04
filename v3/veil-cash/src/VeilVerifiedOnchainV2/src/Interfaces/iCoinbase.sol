// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

import {VerifyLib} from "../lib/VerifyLib.sol";

/**
 * @title iCoinbase
 * @author Veil Cash
 * @notice Interface for Coinbase verification contract
 */

interface IAttestationIndexer {
    function getAttestationUid(address recipient, bytes32 schemaUid) external view returns (bytes32);
}

interface IEAS {
    function getAttestation(bytes32 uid) external view returns (VerifyLib.Attestation memory);
}