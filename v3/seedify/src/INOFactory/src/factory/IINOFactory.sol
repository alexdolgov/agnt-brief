// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.23;

import {IINOFactoryInternal} from "./IINOFactoryInternal.sol";

import {INOStorage} from "../ino/INOStorage.sol";
import {SaleStorage} from "../common/SaleStorage.sol";

import {INOPhase} from "../ino/INOStruct.sol";

/**
 * @title IINOFactory
 * @notice Defines external and public functions for {INOFactory}.
 */
interface IINOFactory {
    /**
     * @notice Clone (minimal proxy - gas saving) and configure an {INO} with its {INOVesting} in a single
     *         transaction.
     * @dev `saleSetUp` must be `memory` type as it is updated in {_createINO}.
     *
     * @param inoName Name of the INO to create and configure.
     * @param inoSetUp Struct to initialize {INO} contract.
     * @param saleSetUp Struct to initialize {INO} contract with shared sale variables from
     *        {SaleWritableInternal}.
     * @param phaseIds Default phases/phase name to create at INO initialization.
     * @param phases Default phases/phase object to create at INO initialization.
     *
     * @return ino New cloned and configured {INO} contract.
     */
    function createINO(
        string calldata inoName,
        INOStorage.SetUp calldata inoSetUp,
        SaleStorage.SetUp memory saleSetUp,
        string[] calldata phaseIds,
        INOPhase[] calldata phases
    ) external returns (address ino);

    /**
     * @notice Update default {INO} to use in {createINO}.
     * @dev If not one of these or both not set, {createINO} will fail with:
     *      - {INOFactory_DefaultINO_NotSet} error.
     *
     * @param newDefaultINO Default {INO} to use for next {createINO} call.
     */
    function updateDefaultINO(address newDefaultINO) external;

    /// @notice Set the maxium amount of loops to be used in {getInosDetails}.
    function setMaxLoop(uint256 newMaxLoop) external;

    /**
     * @notice Get details of many {INO} by batch to index items on frontend.
     *
     * @param from Index to start reading from {_inoDetails}.
     * @param to Index to finish reading from {_inoDetails}.
     *
     * @return inos Details of {INO} requested, from `from` to `to`.
     * @return lastEvaludatedIndex Last index evaluated within the loop - should be `from`.
     * @return totalItems Total amount of {INODetail} fetched.
     */
    function getInosDetails(
        uint256 from,
        uint256 to
    )
        external
        view
        returns (
            IINOFactoryInternal.INODetail[] memory inos,
            uint256 lastEvaludatedIndex,
            uint256 totalItems
        );

    ///////////////// PUBLIC /////////////////
    /// @return return Default {INO}.
    function defaultINO() external returns (address);

    /// @return Maximum amount of loops to use per {getInosDetails} call.
    function maxLoop() external returns (uint256);
}
