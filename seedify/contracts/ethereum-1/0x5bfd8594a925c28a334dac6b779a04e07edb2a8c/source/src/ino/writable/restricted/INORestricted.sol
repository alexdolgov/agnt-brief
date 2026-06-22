// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.23;

import {Clones} from "openzeppelin-contracts/proxy/Clones.sol";

import {INFT} from "../../nft/interfaces/INFT.sol";
import {IINORestricted} from "./IINORestricted.sol";
import {IINORestrictedInternal} from "./IINORestrictedInternal.sol";

import {RestrictedWritable} from "../../../common/writable/restricted/RestrictedWritable.sol";

// import struct
import {Status, Phase} from "../../../common/SaleStruct.sol";
import {INOPhase} from "../../INOStruct.sol";

// storage
import {INOStorage} from "../../INOStorage.sol";
import {SaleStorage} from "../../../common/SaleStorage.sol";

/**
 * @title IRestrictedWritable
 * @notice Only the owner of the contract can call these methods.
 */
contract INORestricted is
    IINORestricted,
    IINORestrictedInternal,
    RestrictedWritable
{
    /// @inheritdoc IINORestricted
    function initialize(
        SaleStorage.SetUp calldata saleSetUp,
        address owner,
        INOStorage.SetUp calldata inoSetUp,
        string[] calldata phaseIds,
        INOPhase[] calldata phases
    ) external override initializer {
        if (inoSetUp.paymentReceiver == address(0)) {
            revert INORestricted_Init_PaymentReceiverIsZeroAddr();
        }
        if (inoSetUp.projectWallet == address(0)) {
            revert INORestricted_Init_ProjectWalletIsZeroAddr();
        }

        // inherited from {RestrictedWritable.}
        _initializeSale(saleSetUp);
        _setOwnerRights(owner);

        INOStorage.layout().setUp = inoSetUp;

        // inherited from {RestrictedWritable.}
        _updateSetINOPhases(phaseIds, phases);

        emit INO_Initialized(saleSetUp, owner, inoSetUp, phaseIds, phases);
    }

    /// @inheritdoc IINORestricted
    function deployNftToSell(
        address nftToClone,
        INOStorage.NFTCollectionData calldata data
    )
        external
        override
        onlyRole(DEFAULT_ADMIN_ROLE)
        reinitializer(2)
        returns (address collection)
    {
        _requireSaleNotStarted();
        _checkValidClone(nftToClone);
        _checkNFTData(data);

        collection = _clone(nftToClone, data);

        INOStorage.layout().nftData = data;
        INOStorage.layout().collection = collection;

        INFT(collection).initialize(data, _msgSender(), address(this));

        emit INO_DeployedNftToSell(collection, data);
    }

    function updatePhaseMaxMintAndMerkleRoot(
        string calldata phaseId,
        uint256 phaseMaxMint,
        bytes32 merkleRoot
    ) external override onlyRole(DEFAULT_ADMIN_ROLE) {
        /// @custom:audit verifies underneath the phase is not completed
        updatePhaseMerkleRoot(phaseId, merkleRoot);

        emit INO_PhaseMaxMintUpdated(
            phaseId,
            INOStorage.layout().phaseMaxMint[phaseId],
            phaseMaxMint
        );

        INOStorage.layout().phaseMaxMint[phaseId] = phaseMaxMint;
    }

    /// @inheritdoc IINORestricted
    function updateSetPhase(
        string calldata phaseId_,
        INOPhase calldata phase_
    ) external override onlyRole(DEFAULT_ADMIN_ROLE) {
        _isSaleNot(Status.COMPLETED);

        emit INO_SinglePhaseUpdate(
            phaseId_,
            SaleStorage.layout().phases.data[phaseId_],
            phase_
        );

        _updateSetINOPhase(phaseId_, phase_);
    } // TODO: gas report + testnet txs

    /// @inheritdoc IINORestricted
    function updateSetPhases(
        string[] calldata phaseIdentifiers_,
        INOPhase[] calldata phases_
    ) public override onlyRole(DEFAULT_ADMIN_ROLE) {
        _isSaleNot(Status.COMPLETED);

        // inherited from {RestrictedWritable}
        _updateSetINOPhases(phaseIdentifiers_, phases_);

        emit INO_BatchPhaseUpdate(phaseIdentifiers_, phases_);
    }

    function _clone(
        address nftToClone,
        INOStorage.NFTCollectionData calldata data
    ) internal returns (address) {
        bytes32 salt = keccak256(
            abi.encode(msg.sender, data, block.timestamp)
        );
        return Clones.cloneDeterministic(nftToClone, salt);
    }

    function _updateSetINOPhase(
        string calldata phaseId_,
        INOPhase calldata phase_
    ) internal {
        // inherited from {RestrictedWritable}
        _setPhase(
            SaleStorage.layout().ledger.summedMaxPhaseCap,
            SaleStorage.layout().phases.data[phaseId_].maxPhaseCap,
            phase_.base,
            phaseId_
        );

        INOStorage.layout().phaseMaxMint[phaseId_] = phase_.phaseMaxMint;
    }

    function _updateSetINOPhases(
        string[] calldata phaseIdentifiers_,
        INOPhase[] calldata phases_
    ) internal {
        if (phaseIdentifiers_.length != phases_.length) {
            revert RestrictedWritableInternal_DifferentArraysLength();
        }

        uint256 length = phaseIdentifiers_.length;

        //slither-disable-next-line uninitialized-local
        for (uint256 i; i < length; ++i) {
            /// @dev less¬ gas efficient, but more readable
            _updateSetINOPhase(phaseIdentifiers_[i], phases_[i]);
        }
    }

    function _requireSaleNotStarted() internal view {
        Status current = SaleStorage.layout().ledger.status;
        if (current != Status.NOT_STARTED) {
            revert INORestricted_SaleStarted(current);
        }
    }

    /// @dev Check name, symbol, and max cap of the NFT collection.
    function _checkNFTData(
        INOStorage.NFTCollectionData calldata data
    ) internal pure {
        if (bytes(data.name).length < 2) {
            revert INORestricted_Deploy_Name2CharsMin();
        }
        if (bytes(data.symbol).length < 1) {
            revert INORestricted_Deploy_Symbole1CharMin();
        }
        if (data.maxCap == 0) {
            revert INORestricted_Deploy_MaxCapNotSet();
        }
    }

    function _checkValidClone(address clone) internal pure {
        if (clone == address(0)) {
            revert INORestricted_Deploy_NftToCloneIsZeroAddr();
        }
    }
}
