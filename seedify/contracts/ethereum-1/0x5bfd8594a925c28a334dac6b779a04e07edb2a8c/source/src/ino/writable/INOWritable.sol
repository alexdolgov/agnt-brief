// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.23;

import {IINOWritable} from "./IINOWritable.sol";
import {INFT} from "../nft/interfaces/INFT.sol";

import {INOWritableInternal} from "./INOWritableInternal.sol";

import {INORestricted} from "./restricted/INORestricted.sol";

import {SaleStorage} from "../../common/SaleStorage.sol";
import {INOStorage} from "../INOStorage.sol";

// import struct
import {BuyPermission, Phase} from "../../common/SaleStruct.sol";
import {FreeAllocation} from "../INOStruct.sol";
import {UserAllocationFee} from "../../common/UserAllocationStruct.sol";

/**
 * @title INO
 * @notice Initial NFT Offering contract.
 * @dev This contract is used to deploy the NFT collection to mint/sale and handle the sale.
 */
contract INOWritable is
    IINOWritable, // 1 inherited component
    INOWritableInternal, // 6 inherited components
    INORestricted // 13 inherited components
{
    function buyAndMintWithERC20(
        uint256 spendNow,
        UserAllocationFee calldata allocation,
        bytes32[] calldata proof,
        BuyPermission calldata permission
    ) external override {
        SaleStorage.SetUp memory saleSetUp = SaleStorage.layout().setUp;

        if (saleSetUp.paymentToken == address(0)) {
            revert INO_UseInstead("buyAndMintWithNative");
        }

        _mintAndUpdateStorage(
            spendNow,
            allocation,
            proof,
            SaleStorage.layout().ledger.summedMaxPhaseCap
        );

        /**
         * @dev transfer selected {paymentToken} to receiver wallet via permit2
         * read from storage as there is not point to pass `setUp`s as parameters, cost a bit more BUT
         * better dev experience
         */
        _permit2ApproveAndTransfer(
            saleSetUp.permit2,
            msg.sender, // allow delegate to spend
            INOStorage.layout().setUp.paymentReceiver,
            saleSetUp.paymentToken,
            spendNow,
            permission
        );
    }

    /// @inheritdoc IINOWritable
    function buyAndMintWithNative(
        UserAllocationFee calldata allocation,
        bytes32[] calldata proof
    ) external payable override {
        uint256 spendNow = msg.value;
        if (SaleStorage.layout().setUp.paymentToken != address(0)) {
            revert INO_UseInstead("buyAndMintWithERC20");
        }

        _mintAndUpdateStorage(
            spendNow,
            allocation,
            proof,
            SaleStorage.layout().ledger.summedMaxPhaseCap
        );

        // transfer ETH to receiver wallet
        (bool ok, bytes memory data) = INOStorage
            .layout()
            .setUp
            .paymentReceiver
            .call{value: msg.value}(""); // delegate can also spend on behalf of the user
        if (!ok) {
            revert INO_NativePaymentFailed(data);
        }
    }

    function freeMint(
        FreeAllocation calldata allocation,
        bytes32[] calldata proof
    ) external override {
        _checkFreeMintParams(allocation, proof);

        _updateStorageOnFreeMint(
            allocation.phaseId,
            allocation.account,
            allocation.toMint
        );
        _updateMintedAmount(allocation.phaseId, allocation.toMint);

        INFT(INOStorage.layout().collection).mint(
            allocation.account, // allow a delegate wallet to mint on behalf of the user
            allocation.toMint // mint whole free allocation in once
        );
    }
}
