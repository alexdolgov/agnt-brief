// SPDX-License-Identifier: GPL-3.0-only

// ┏━━━┓━━━━━┏┓━━━━━━━━━┏━━━┓━━━━━━━━━━━━━━━━━━━━━━━
// ┃┏━┓┃━━━━┏┛┗┓━━━━━━━━┃┏━━┛━━━━━━━━━━━━━━━━━━━━━━━
// ┃┗━┛┃┏━┓━┗┓┏┛┏━━┓━━━━┃┗━━┓┏┓┏━┓━┏━━┓━┏━┓━┏━━┓┏━━┓
// ┃┏━┓┃┃┏┓┓━┃┃━┃┏┓┃━━━━┃┏━━┛┣┫┃┏┓┓┗━┓┃━┃┏┓┓┃┏━┛┃┏┓┃
// ┃┃ ┃┃┃┃┃┃━┃┗┓┃┃━┫━┏┓━┃┃━━━┃┃┃┃┃┃┃┗┛┗┓┃┃┃┃┃┗━┓┃┃━┫
// ┗┛ ┗┛┗┛┗┛━┗━┛┗━━┛━┗┛━┗┛━━━┗┛┗┛┗┛┗━━━┛┗┛┗┛┗━━┛┗━━┛
// ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
// ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

pragma solidity ^0.8.0;

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {ProofOfTransactionLib} from "./lib/ProofOfTransactionLib.sol";

import {IAxiomV0} from "./IAxiom.sol";

contract AnteProofOfTransaction is Ownable {
    address public constant AXIOM_V0 = 0x01d5b501C1fc0121e1411970fb79c322737025c2;
    mapping(address => bool) private _anteContracts;

    constructor() {}

    function addAnteContracts(address[] memory addresses) external onlyOwner {
        for (uint i = 0; i < addresses.length; i++) {
            _anteContracts[addresses[i]] = true;
        }
    }

    function removeAnteContracts(address[] memory addresses) external onlyOwner {
        for (uint i = 0; i < addresses.length; i++) {
            delete _anteContracts[addresses[i]];
        }
    }

    function isAnteContract(address contractAddress) public view returns (bool) {
        return _anteContracts[contractAddress];
    }

    function verifyAnteUpTransaction(bytes memory transactionInclusionProof) external view returns (bool) {
        (
            IAxiomV0.BlockHashWitness memory blockWitness,
            bytes memory header,
            bytes memory txProof,
            bytes memory txKey,
            bytes32 txHash
        ) = abi.decode(transactionInclusionProof, (IAxiomV0.BlockHashWitness, bytes, bytes, bytes, bytes32));
        if (!ProofOfTransactionLib.verifyBlock(blockWitness, header)) {
            return false;
        }
        (bool isValidTxProof, ProofOfTransactionLib.Transaction memory transaction) = ProofOfTransactionLib
            .verifyTransaction(txProof, txKey, header, txHash);
        if (!isValidTxProof) {
            return false;
        }
        if (!isAnteContract(transaction.to)) {
            return false;
        }
        return true;
    }
}
