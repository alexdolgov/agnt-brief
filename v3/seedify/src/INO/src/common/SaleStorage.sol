// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.23;

// import struct
import {Status, Phase} from "./SaleStruct.sol";

/**
 * @author https://github.com/Theo6890
 * @title SaleStorage
 * @notice Mapps the storage layout of the {Sale} contract.
 * @dev Diamond proxy (ERC-2535) storage style.
 */
library SaleStorage {
    /**
     * @notice Struct reprensenting the main setup of the Sale.
     *
     * @param paymentToken Address of the default token used to reserve allocation through the Sale.
     *                     If `address(0)`, it means native token of the chain (ETH, BNB, etc...).
     * @param permit2 Official address of the {Permit2} library deployed by Uniswap.
     */
    struct SetUp {
        address paymentToken;
        address permit2;
    }

    /**
     * @notice Struct reprensenting the setup of each phase of the Sale.
     * @dev Status of the phase is the only value that can be updated by Sale contract itself due to user's
     *      interactions with the contract.
     *
     * @param ids List of all phases identifiers.
     * @param data Mapping of data of each phases.
     */
    struct Phases {
        string[] ids;
        mapping(string => Phase) data;
    }

    /**
     * @notice Struct reprensenting data of the Sale which are always updated by user's interactions with
     *         the Sale contract.
     *
     * @param status Enum representing the current status of the Sale.
     * @param summedMaxPhaseCap Sum of maximum cap of each phase expressed in {SetUp.paymentToken}.
     * @param totalRaised Total amount of paymentToken raised for this Sale,
     *                    expressed in {SetUp.paymentToken}.
     * @param raisedInPhase Amount of paymentToken raised for each phase, expressed in {SetUp.paymentToken}.
     * @param allocationReservedByIn Amount of paymentToken paid by phase by each user,
     *                               expressed in {SetUp.paymentToken}.
     */
    struct Ledger {
        Status status;
        uint256 summedMaxPhaseCap;
        uint256 totalRaised;
        mapping(string => uint256) raisedInPhase;
        mapping(address => mapping(string => uint256)) allocationReservedByIn;
        mapping(address => mapping(string => uint256)) freeAllocationMintedBy;
    }

    /**
     * @notice Struct reprensenting the whole storage layout of the Sale contract.
     *
     * @param setUp reprensenting the main setup of the Sale.
     * @param phases reprensenting the setup of each phase of the Sale.
     * @param ledger reprensenting data of the Sale which are always updated by user's interactions with
     *        the Sale contract.
     */
    struct SaleStruct {
        SetUp setUp;
        Phases phases;
        Ledger ledger;
    }

    /// @notice Storage position of {SaleStruct} in {Sale} contract.
    bytes32 public constant Sale_STORAGE = keccak256("common.storage");

    /**
     * @return igoStruct Whole storage of {Sale} contract.
     */
    function layout() internal pure returns (SaleStruct storage igoStruct) {
        bytes32 position = Sale_STORAGE;
        assembly {
            igoStruct.slot := position
        }
    }
}
