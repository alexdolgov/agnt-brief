// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.23;

import {MerkleProof} from "openzeppelin-contracts/utils/cryptography/MerkleProof.sol";

import {SaleWritableInternal} from "../../common/writable/SaleWritableInternal.sol";
import {IINOWritable} from "./IINOWritable.sol";
import {IINOWritableInternal} from "./IINOWritableInternal.sol";
import {INFT} from "../nft/interfaces/INFT.sol";

import {SaleStorage} from "../../common/SaleStorage.sol";
import {INOStorage} from "../INOStorage.sol";

// import struct
import {Phase} from "../../common/SaleStruct.sol";
import {FreeAllocation} from "../INOStruct.sol";
import {UserAllocationFee} from "../../common/UserAllocationStruct.sol";

/**
 * @title INO
 * @notice Initial NFT Offering contract.
 * @notice Defines internal functions for `INOWritable`.
 */
contract INOWritableInternal is
    SaleWritableInternal, // 4 inherited components
    IINOWritableInternal // 1 inherited component
{
    ///////////////////////////////////////////////////////////////////////////////////////////////
    //////////////////////////////////////// PARAMS CHECKS ////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////////////////////////////
    function _checkBuyAndMintParams(
        uint256 toMint,
        uint256 reserveNow,
        UserAllocationFee calldata allocation,
        uint256 summedMaxPhaseCap,
        uint256 maxPhaseCap,
        bytes32[] calldata proof
    ) internal {
        _checkMaxMintInPhase(allocation.usrData.base.phaseId, toMint);
        _checkMaxMintWholeINO(toMint);

        _checkBuyReserveParams(
            reserveNow,
            allocation,
            allocation.usrData.base.phaseId,
            summedMaxPhaseCap,
            maxPhaseCap,
            proof
        );
    }

    function _checkFreeMintParams(
        FreeAllocation calldata allocation,
        bytes32[] calldata proof
    ) internal {
        _checkMaxMintInPhase(allocation.phaseId, allocation.toMint);
        _checkMaxMintWholeINO(allocation.toMint);

        // both replace {_checkBuyReserveParams} call
        _requireOpenedSaleAndPhase(allocation.phaseId);
        _checkValidFreeAllocation(allocation, proof);
    }

    function _checkMaxMintInPhase(
        string calldata phaseId,
        uint256 toMint
    ) internal view {
        uint256 maxMintInPhase = INOStorage.layout().phaseMaxMint[phaseId];

        uint256 mintedInPhase = INOStorage.layout().mintedInPhase[phaseId];
        uint256 newTotal = mintedInPhase + toMint;

        if (newTotal > maxMintInPhase) {
            revert INO_MaxMintInPhaseReached(
                maxMintInPhase,
                newTotal - maxMintInPhase
            );
        }
    }

    function _checkMaxMintWholeINO(uint256 toMint) internal view {
        uint256 maxMint = INOStorage.layout().nftData.maxCap;
        uint256 minted = INOStorage.layout().totalMinted;
        uint256 newTotal = minted + toMint;

        if (newTotal > maxMint) {
            revert INO_MaxMintINOReached(maxMint, newTotal - maxMint);
        }
    }

    /// @dev Different params from `SaleWritableInternal._requireValidAllocation` BUT same logic
    function _checkValidFreeAllocation(
        FreeAllocation calldata allocation,
        bytes32[] calldata proof
    ) internal view returns (bool) {
        if (
            !MerkleProof.verify(
                proof,
                SaleStorage
                    .layout()
                    .phases
                    .data[allocation.phaseId]
                    .merkleRoot,
                keccak256(abi.encode(address(this), block.chainid, allocation))
            )
        ) revert SaleWritableInternal_AllocationNotFound();

        return true;
    }

    ///////////////////////////////////////////////////////////////////////////////////////////////
    /////////////////////////////////////// STORAGE UPDATE ///////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////////////////////////////
    function _mintAndUpdateStorage(
        uint256 spendNow,
        UserAllocationFee calldata allocation,
        bytes32[] calldata proof,
        uint256 summedMaxPhaseCap
    ) internal {
        string calldata phaseId = allocation.usrData.base.phaseId;
        uint256 unitPrice = allocation.usrData.base.saleTokenPerPaymentToken;
        /**
         * @custom:audit When backend creates the allocation, `maxAllocation` will be a multiple of
         *               `saleTokenPerPaymentToken` to avoid round down issue. In any case,
         *               the most important is that `spendNow` is a multiple of `saleTokenPerPaymentToken`.
         */
        uint256 maxAllocation = allocation.usrData.base.maxAllocation;
        /// @dev save the allocation of the user wallet (not the delegate wallet)
        uint256 bought = SaleStorage.layout().ledger.allocationReservedByIn[
            allocation.usrData.account
        ][phaseId];

        /**
         * @dev Solidity round down towards zero:
         *               - CAN NOT over-mint due to round up issue
         *               - CAN under-mint due to round down issue
         *
         * e.g.:
         * - maxAllocation = 100 ether
         * - saleTokenPerPaymentToken = 3 ether
         * user will mint 33 NFTs max, instead of 33.3333333333 NFTs.
         *
         * @dev To avoid under-mint issue, only allow a round down to happen if this transaction is the last one to mint all NFTs
         *      left allocated to the user in this phase.
         */
        // if not the last mint
        if (bought + spendNow != maxAllocation) {
            if (spendNow % unitPrice != 0) {
                revert INO_OnlyUseMultipleOf(unitPrice);
            }
        }

        uint256 toMint = spendNow / unitPrice;

        _checkBuyAndMintParams(
            toMint,
            spendNow,
            allocation,
            summedMaxPhaseCap,
            SaleStorage.layout().phases.data[phaseId].maxPhaseCap,
            proof
        );
        _updateStorageOnBuy( /// @custom:audit CEI pattern
            spendNow,
            phaseId,
            allocation.usrData.account,
            SaleStorage.layout().phases.data[phaseId].maxPhaseCap,
            toMint
        );

        // allow a delegate wallet to mint on behalf of the user
        INFT(INOStorage.layout().collection).mint(
            allocation.usrData.account,
            toMint
        );
    }

    function _updateMintedAmount(
        string calldata phaseId,
        uint256 toMint
    ) internal {
        INOStorage.layout().mintedInPhase[phaseId] += toMint;
        INOStorage.layout().totalMinted += toMint;
    }

    /// @custom:audit when total raised reached, it will close the phase and/or the whole sale
    function _updateStorageOnBuy(
        uint256 toSpend,
        string calldata phaseId,
        address buyer,
        uint256 maxMintPhaseCap,
        uint256 toMint
    ) internal {
        SaleWritableInternal._updateStorageOnBuy(
            toSpend,
            phaseId,
            buyer,
            maxMintPhaseCap
        );
        _updateMintedAmount(phaseId, toMint);
    }

    function _updateStorageOnFreeMint(
        string calldata phaseId,
        address buyer,
        uint256 toMint
    ) internal {
        SaleStorage.Ledger storage ledger = SaleStorage.layout().ledger;
        uint256 freeAllocationMintedBy = ledger.freeAllocationMintedBy[buyer][
            phaseId
        ];

        // avoids replay attack & whole allocation minted in one tx in {freeMint}
        if (freeAllocationMintedBy > 0) {
            revert SaleWritable_AllocationExceeded(toMint, toMint);
        }

        ledger.freeAllocationMintedBy[buyer][phaseId] += toMint;
    }
}
