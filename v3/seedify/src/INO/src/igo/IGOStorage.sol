// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.23;

/**
 * @author https://github.com/Theo6890
 * @title IGOStorage
 * @notice Mapps the storage layout of the {IGO} contract.
 * @dev Diamond proxy (ERC-2535) storage style.
 */
library IGOStorage {
    /**
     * @notice Struct reprensenting the main setup of the IGO.
     *
     * @param vestingContract Address of the {IGOVesting} contract.
     * @param refundFeeDecimals Number of decimals used for {IIGOWritableInternal.Allocation.refundFee}.
     */
    struct SetUp {
        address vestingContract;
        uint256 refundFeeDecimals;
    }

    /**
     * @notice Struct reprensenting the whole storage layout of the IGO contract.
     *
     * @param setUp Struct reprensenting the main setup of the IGO.
     */
    struct IGOStruct {
        SetUp setUp;
    }

    /// @notice Storage position of {IGOStruct} in {IGO} contract.
    bytes32 public constant IGO_STORAGE = keccak256("igo.storage");

    /**
     * @return igoStruct Whole storage of {IGO} contract.
     */
    function layout() internal pure returns (IGOStruct storage igoStruct) {
        bytes32 position = IGO_STORAGE;
        assembly {
            igoStruct.slot := position
        }
    }
}
