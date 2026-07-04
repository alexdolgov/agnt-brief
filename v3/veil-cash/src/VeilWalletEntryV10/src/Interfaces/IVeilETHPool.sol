// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import {VeilLib} from "src/lib/VeilLib.sol";

/**
 * @title IVeilETHPool
 * @author Veil Cash
 * @notice Interface for VeilETHPool contract
 */
interface IVeilETHPool {
    /**
     * @dev Function for ETH deposits only.
     * @param _args The zero-knowledge proof arguments
     * @param _extData External data containing recipient, amount, relayer, fee, and encrypted outputs
     */
    function depositETH(VeilLib.Proof memory _args, VeilLib.ExtData memory _extData) external payable;

    /**
     * @dev Returns the next available index in the merkle tree
     */
    function nextIndex() external view returns (uint32);

    /**
     * @dev Function to get commitments in a range
     * @param startIndex The starting index (inclusive)
     * @param endIndex The ending index (exclusive)
     * @return Array of commitment hashes
     */
    function getCommitments(uint256 startIndex, uint256 endIndex) external view returns (bytes32[] memory);

    /**
     * @dev Function to get encrypted outputs in a range
     * @param startIndex The starting index (inclusive)
     * @param endIndex The ending index (exclusive)
     * @return Array of encrypted output data
     */
    function getEncryptedOutputs(uint256 startIndex, uint256 endIndex) external view returns (bytes[] memory);

    /**
     * @dev Check whether a note is already spent
     * @param _nullifierHash The nullifier hash to check
     * @return True if the note is spent, false otherwise
     */
    function isSpent(bytes32 _nullifierHash) external view returns (bool);

    /**
     * @dev Function to verify a zero-knowledge proof
     * @param _args The proof arguments to verify
     * @return True if the proof is valid, false otherwise
     */
    function verifyProof(VeilLib.Proof memory _args) external view returns (bool);

}

interface IVeilUSDCPool {
    /**
     * @dev Function for USDC deposits only.
     * @param _args The zero-knowledge proof arguments
     * @param _extData External data containing recipient, amount, relayer, fee, and encrypted outputs
     */
    function depositUSDC(VeilLib.Proof memory _args, VeilLib.ExtData memory _extData) external payable;
}

interface IVeilBTCPool {
    /**
     * @dev Function for BTC deposits only.
     * @param _args The zero-knowledge proof arguments
     * @param _extData External data containing recipient, amount, relayer, fee, and encrypted outputs
     */
    function depositBTC(VeilLib.Proof memory _args, VeilLib.ExtData memory _extData) external payable;
}