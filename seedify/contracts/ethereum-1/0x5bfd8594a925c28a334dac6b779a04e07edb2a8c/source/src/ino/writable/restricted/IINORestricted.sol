// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.23;

// import struct
import {Phase} from "../../../common/SaleStruct.sol";
import {INOPhase} from "../../INOStruct.sol";

// storage
import {INOStorage} from "../../INOStorage.sol";
import {SaleStorage} from "../../../common/SaleStorage.sol";

/**
 * @title IINORestricted
 * @notice Only the owner of the contract can call these methods.
 */
interface IINORestricted {
    /**
     * @notice Some projects will only do the sale through INO and will handle the NFT minting themselves.
     *         Others will do the mint and sale through INO. This function is used to deploy the NFT
     *         collection for the second case.
     * @dev Use {reinitializer(2)} as {initialize} is called first.
     *
     * @param nftToClone The address of the NFT to use as an NFT base.
     * @param data Data of the NFT collection to be deployed.
     */
    function deployNftToSell(
        address nftToClone,
        INOStorage.NFTCollectionData calldata data
    ) external returns (address collection);

    /**
     * @notice Use a single token for the whole INO (never changed once set here).
     *
     * @param saleSetUp Data of the sale to be deployed - common logic shared between IGOs and INOs.
     * @param owner Owner of the INO.
     * @param inoSetUp Data of the INO to be deployed.
     * @param phaseIds Default list of phase identifiers - can be empty array `new string[](0)`
     * @param phases Default list of phases - can be empty array `new INOPhase[](0)`
     */
    function initialize(
        SaleStorage.SetUp calldata saleSetUp,
        address owner,
        INOStorage.SetUp calldata inoSetUp,
        string[] calldata phaseIds,
        INOPhase[] calldata phases
    ) external;

    /**
     * @dev Update or create a phase with all its data.
     *
     * @param phaseId_ Identifier of phase to set or update.
     * @param phase_ Struct {INOPhase} containing INO phase's data to be saved.
     */
    function updateSetPhase(
        string calldata phaseId_,
        INOPhase calldata phase_
    ) external;

    /**
     * @dev Update or create multiple phases with all their data.
     *
     * @param phaseIdentifiers_ Array of identifiers of `phases`.
     * @param phases_ Array of struct {INOPhase} containing phases' data to be saved.
     */
    function updateSetPhases(
        string[] calldata phaseIdentifiers_,
        INOPhase[] calldata phases_
    ) external;

    function updatePhaseMaxMintAndMerkleRoot(
        string calldata phaseId,
        uint256 phaseMaxMint,
        bytes32 merkleRoot
    ) external;
}
