// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.23;

import {ISignatureTransfer} from "permit2/interfaces/ISignatureTransfer.sol";
import {MerkleProof} from "openzeppelin-contracts/utils/cryptography/MerkleProof.sol";

import {RestrictedWritableInternal} from "./restricted/RestrictedWritableInternal.sol";
import {ISaleWritableInternal} from "./ISaleWritableInternal.sol";

import {SaleStorage} from "../SaleStorage.sol";

// struct import
import {Status, Phase, BuyPermission} from "../SaleStruct.sol";
import {UserAllocationFee} from "../UserAllocationStruct.sol";

/**
 * @title SaleWritableInternal
 * @notice Defines internal functions for `SaleWritable`.
 */
contract SaleWritableInternal is
    ISaleWritableInternal, // 1 inherited component
    RestrictedWritableInternal // 2 inherited components
{
    function _checkBuyReserveParams(
        uint256 reserveNow,
        UserAllocationFee calldata allocation,
        string calldata phaseId,
        uint256 summedMaxPhaseCap,
        uint256 maxPhaseCap,
        bytes32[] calldata proof
    ) internal {
        _requireAllocationNotExceededInPhase(
            reserveNow,
            allocation.usrData.account,
            allocation.usrData.base.maxAllocation,
            phaseId
        );
        _requireSummedMaxPhaseCapNotExceeded(reserveNow, summedMaxPhaseCap);
        _requireOpenedSaleAndPhase(allocation.usrData.base.phaseId);
        _requirePhaseCapNotExceeded(phaseId, maxPhaseCap, reserveNow);
        _requireValidAllocation(allocation, proof);
    }

    /**
     * @notice Update storage of the Sale when an allocation is reserved on-chain: total raised, total raised
     *      in phase, allocation reserved by buyer in phase, etc...
     *
     * @param amount Amount of tokens spent in this transaction, expressed in 
     *        {SaleStorage.SetUp.paymentToken}.
     * @param phaseId Phase linked to current allocation used by buyer.
     * @param buyer Wallet buying tokens.
     * @param maxPhaseCap Maximum amount of tokens to be sold in this phase, expressed in 
              {SaleStorage.SetUp.paymentToken}.
     */
    function _updateStorageOnBuy(
        uint256 amount,
        string calldata phaseId,
        address buyer,
        uint256 maxPhaseCap
    ) internal virtual {
        SaleStorage.Ledger storage ledger = SaleStorage.layout().ledger;

        // update raised amount
        ledger.totalRaised += amount;
        ledger.raisedInPhase[phaseId] += amount;
        ledger.allocationReservedByIn[buyer][phaseId] += amount;
        // close whole SALE if sold out
        if (ledger.totalRaised == ledger.summedMaxPhaseCap) _closeSale();
        // close PHASE if sold out
        if (ledger.raisedInPhase[phaseId] == maxPhaseCap) {
            _closePhase(phaseId);
        }
    }

    /// @notice Verify phase is opened. If the sale has not been opened before the phase, open it.
    function _requireOpenedSaleAndPhase(string memory phaseId) internal {
        // manually close phase if maxPhaseCap is NOT reached - TEMPORARY solution
        if (
            block.timestamp >= SaleStorage.layout().phases.data[phaseId].endAt
        ) {
            revert("Phase closed"); // string instead custom error as temporary solution
        }

        Phase memory phase = SaleStorage.layout().phases.data[phaseId];
        Status saleStatus = SaleStorage.layout().ledger.status;

        // open phase if necessary
        if (
            phase.status == Status.NOT_STARTED &&
            block.timestamp >= phase.startAt &&
            block.timestamp < phase.endAt
        ) {
            if (saleStatus == Status.NOT_STARTED) _openSale();
            _openPhase(phaseId);
            return;
        }
        // revert if phase can not be opened
        if (phase.status != Status.OPENED) {
            revert SaleWritableInternal_PhaseNotOpened(phaseId, phase.status);
        }
        // revert if sale can not be opened
        if (saleStatus != Status.OPENED) {
            revert SaleWritableInternal_SaleNotOpened(saleStatus);
        }
    }

    /**
     * @notice Ensure a wallet can not spend more than their allocation for the given phase.
     *
     * @param toSpend Amount of tokens to spend in this transaction, expressed in
     *        {SaleStorage.SetUp.paymentToken}.
     * @param buyer Wallet buying tokens.
     * @param allocated Maximum amount of tokens this wallet can spend in this phase, expressed in
     *        {SaleStorage.SetUp.paymentToken}.
     */
    function _requireAllocationNotExceededInPhase(
        uint256 toSpend,
        address buyer,
        uint256 allocated,
        string calldata phaseId
    ) internal view {
        uint256 totalAfterPurchase = toSpend +
            SaleStorage.layout().ledger.allocationReservedByIn[buyer][phaseId];

        // avoids replay attack
        if (totalAfterPurchase > allocated) {
            revert SaleWritable_AllocationExceeded(
                allocated,
                totalAfterPurchase - allocated
            );
        }
    }

    /**
     * @notice Verify `summedMaxPhaseCap` will not be exceeded after purchase.
     *
     * @param toSpend Amount of tokens to spend in this transaction, expressed in
     *        {SaleStorage.SetUp.paymentToken}.
     * @param summedMaxPhaseCap Total amount of tokens to be sold in this Sale, expressed in
     *        {SaleStorage.SetUp.paymentToken}.
     */
    function _requireSummedMaxPhaseCapNotExceeded(
        uint256 toSpend,
        uint256 summedMaxPhaseCap
    ) internal view {
        uint256 totalAfterPurchase = toSpend +
            SaleStorage.layout().ledger.totalRaised;
        if (totalAfterPurchase > summedMaxPhaseCap) {
            revert SaleWritable_SummedMaxPhaseCapExceeded(
                summedMaxPhaseCap,
                // by how much`summedMaxPhaseCap` is exceeded
                totalAfterPurchase - summedMaxPhaseCap
            );
        }
    }

    /**
     * @notice Verify `maxPhaseCap` will not be exceeded after purchase.
     *
     * @param phaseId Phase linked to current allocation used by buyer.
     * @param maxPhaseCap Maximum amount of tokens to be sold in this phase, expressed in
     *        {SaleStorage.SetUp.paymentToken}.
     * @param toSpend Amount of tokens to spend in this transaction, expressed in
     *        {SaleStorage.SetUp.paymentToken}.
     */
    function _requirePhaseCapNotExceeded(
        string calldata phaseId,
        uint256 maxPhaseCap,
        uint256 toSpend
    ) internal view {
        uint256 raisedAfterPurchase = toSpend +
            SaleStorage.layout().ledger.raisedInPhase[phaseId];
        if (raisedAfterPurchase > maxPhaseCap) {
            revert SaleWritable_MaxPhaseCapExceeded(
                phaseId,
                maxPhaseCap,
                // by how much `maxPhaseCap` is exceeded
                raisedAfterPurchase - maxPhaseCap
            );
        }
    }

    /**
     * @notice Verify allocation is valid.
     *
     * @param allocation Allocation to verify.
     * @param proof Merkle proof of the allocation.
     */
    function _requireValidAllocation(
        UserAllocationFee calldata allocation,
        bytes32[] calldata proof
    ) internal view {
        if (
            !MerkleProof.verify(
                proof,
                SaleStorage
                    .layout()
                    .phases
                    .data[allocation.usrData.base.phaseId]
                    .merkleRoot,
                keccak256(abi.encode(address(this), block.chainid, allocation))
            )
        ) revert SaleWritableInternal_AllocationNotFound();
    }

    /**
     * @notice ERC20 permit and transfer in one call.
     * @param permit2 Address of the permit2 contract.
     * @param from address to transfer tokens from.
     * @param to address to transfer tokens to.
     * @param token address of the token to transfer.
     * @param amount amount of tokens to transfer.
     * @param permission BuyPermission struct containing permit signature and deadline.
     */
    function _permit2ApproveAndTransfer(
        address permit2,
        address from,
        address to,
        address token,
        uint256 amount,
        BuyPermission calldata permission
    ) internal {
        /// @dev declare {Permit2.permitTransferFrom} parameters
        ISignatureTransfer.TokenPermissions memory permitted;
        ISignatureTransfer.PermitTransferFrom memory permit;
        ISignatureTransfer.SignatureTransferDetails memory transferDetails;

        /// @dev configure {Permit2.permitTransferFrom} parameters using IGO and allocation parameters
        permitted = ISignatureTransfer.TokenPermissions({
            token: token,
            amount: amount
        });
        permit = ISignatureTransfer.PermitTransferFrom({
            permitted: permitted,
            nonce: permission.nonce,
            deadline: permission.deadline
        });
        transferDetails = ISignatureTransfer.SignatureTransferDetails({
            to: to,
            requestedAmount: amount
        });

        /// @dev {Permit2} library call
        ISignatureTransfer(permit2).permitTransferFrom(
            permit,
            transferDetails,
            from,
            permission.signature
        );
    }
}
