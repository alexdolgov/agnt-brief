// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.23;

import {INOStorage} from "../../INOStorage.sol";
import {SaleStorage} from "../../../common/SaleStorage.sol";

// import struct
import {Status, Phase} from "../../../common/SaleStruct.sol";
import {INOPhase} from "../../INOStruct.sol";

/**
 * @title IINORestrictedInternal
 */
interface IINORestrictedInternal {
    error INORestricted_Init_PaymentReceiverIsZeroAddr();
    error INORestricted_Init_ProjectWalletIsZeroAddr();

    error INORestricted_SaleStarted(Status current);
    error INORestricted_Deploy_MaxCapNotSet();
    error INORestricted_Deploy_Name2CharsMin();
    error INORestricted_Deploy_NftToCloneIsZeroAddr();
    // error INORestricted_Deploy_SaleAlreadyStarted();
    error INORestricted_Deploy_Symbole1CharMin();

    event INO_DeployedNftToSell(
        address indexed collection,
        INOStorage.NFTCollectionData indexed data
    );
    event INO_Initialized(
        SaleStorage.SetUp indexed saleSetUp,
        address indexed owner,
        INOStorage.SetUp indexed igoSetUp,
        string[] phaseIds_,
        INOPhase[] phases
    );
    event INO_PhaseMaxMintUpdated(
        string indexed phaseId,
        uint256 indexed oldPhaseMaxMint,
        uint256 indexed newPhaseMaxMint
    );
    event INO_SinglePhaseUpdate(
        string indexed phaseId,
        Phase indexed oldData,
        INOPhase indexed newData
    );
    event INO_BatchPhaseUpdate(
        string[] indexed phaseId,
        INOPhase[] indexed phase
    );
}
