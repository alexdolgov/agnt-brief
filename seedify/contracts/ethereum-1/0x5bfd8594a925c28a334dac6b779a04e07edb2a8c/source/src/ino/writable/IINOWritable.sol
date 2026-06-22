// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.23;

// import struct
import {BuyPermission} from "../../common/SaleStruct.sol";
import {UserAllocationFee} from "../../common/UserAllocationStruct.sol";
import {FreeAllocation} from "../INOStruct.sol";

/**
 * @title IINOWritable
 * @notice Defines external and public functions for {INOWritable}.
 */
interface IINOWritable {
    /**
     * @notice Buy and mint NFTs with ERC20 tokens. If {SaleStorage.SetUp.paymentToken} is not set,
     *         this function will revert and tell the user to use {buyAndMintWithNative} instead.
     *
     * @param spendNow Amount of ERC20 tokens to spend now.
     * @param allocation Allocation data of an `acount`.
     * @param proof Merkle tree proof of an `acount`'s allocation.
     * @param permission Permission data of an `acount`.
     */
    function buyAndMintWithERC20(
        uint256 spendNow,
        UserAllocationFee calldata allocation,
        bytes32[] calldata proof,
        BuyPermission calldata permission
    ) external;

    /**
     * @notice Buy and mint NFTs with blockchain's native currency (ETH, BNB, MATIC, etc...). If
     *         {SaleStorage.SetUp.paymentToken} is set, this function will revert and tell the user to use
     *         {buyAndMintWithERC20} instead.
     *
     * @param allocation Allocation data of an `acount`.
     * @param proof Merkle tree proof of an `acount`'s allocation.
     */
    function buyAndMintWithNative(
        UserAllocationFee calldata allocation,
        bytes32[] calldata proof
    ) external payable;

    /**
     * @notice Allows whitelisted addresses to mint NFTs for free/giveaways.
     *
     * @param allocation Allocation data of an `acount`.
     * @param proof Merkle tree proof of an `acount`'s allocation.
     */
    function freeMint(
        FreeAllocation calldata allocation,
        bytes32[] calldata proof
    ) external;
}
