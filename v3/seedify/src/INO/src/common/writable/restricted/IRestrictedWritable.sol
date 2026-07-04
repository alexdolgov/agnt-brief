// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.23;

import {IGOStorage} from "../../../igo/IGOStorage.sol";
import {SaleStorage} from "../../SaleStorage.sol";

// import struct
import {Phase} from "../../SaleStruct.sol";

/**
 * @title IRestrictedWritable
 * @notice Only the owner of the contract can call these methods.
 */
interface IRestrictedWritable {
    //////////////////////////// SHARED Sale DATA ////////////////////////////
    /**
     * @notice Close the sale for good.
     * @dev Can be closed at any point in time AND NOT reversible.
     */
    function closeSale() external;

    function openSale() external;

    function pauseSale() external;

    function resumeSale() external;

    /// @dev Retrieve any ERC20 sent to the contract by mistake.
    function recoverLostERC20(address token, address to) external;

    function closePhases(string[] calldata phaseIds) external;

    // TODO: UX choice to make here, do we need both phase single field update and phase batch update?
    //////////////////////////// PHASE SINGLE UPDATE ////////////////////////////
    /**
     * @custom:audit phase can be opened even if it does not exists but as only the owner can update this
     * method we make the asumption that the owner will always be aware of this to save gast costs and it
     * can be paused at any time to update its data so it does not pose a security risk.
     */
    function openPhase(string calldata phaseId) external;

    function pausePhase(string calldata phaseId) external;

    function resumePhase(string calldata phaseId) external;

    function updatePhaseEndDate(
        string calldata phaseId,
        uint128 endAt
    ) external;

    /**
     * @notice Update `maxPhaseCap` which is the maximum amount of tokens that can be sold in a phase
     *         and the merkle root of a phase to update a single or multiple wallet allocation,
     *         refund fee, etc.
     * @dev `maxPhaseCap` is expressed in {SaleStorage.SetUp.paymentToken}.
     *
     * @param phaseId Identifier of the phase.
     * @param merkleRoot New merkle root to be saved for this phase.
     */
    function updatePhaseMaxCapAndMerkleRoot(
        string calldata phaseId,
        uint256 maxPhaseCap,
        bytes32 merkleRoot
    ) external;

    /**
     * @notice Update the merkle root of a phase to update a single or multiple wallet allocation,
     *         refund fee, payment token etc.
     *
     * @param phaseId Identifier of the phase.
     * @param merkleRoot New merkle root to be saved for this phase.
     */
    function updatePhaseMerkleRoot(
        string calldata phaseId,
        bytes32 merkleRoot
    ) external;

    function updatePhaseStartDate(
        string calldata phaseId,
        uint128 startAt
    ) external;
}
