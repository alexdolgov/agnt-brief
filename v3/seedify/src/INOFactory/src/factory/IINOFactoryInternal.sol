// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.23;

import {INOStorage} from "../ino/INOStorage.sol";
import {SaleStorage} from "../common/SaleStorage.sol";

/**
 * @title IINOFactoryInternal
 * @notice Internal interface of {INOFactory} which defines structures, events and errors.
 */
interface IINOFactoryInternal {
    /**
     * @notice Struct representing an INO cloned and created by {_createINO} function.
     *
     * @param name Name of the INO.
     * @param ino Address of the {INO} contract cloned.
     * @param inoSetUp Struct to set up newly deployed {INO}.
     * @param saleSetUp Struct to set up newly deployed {INO} with common sale variables.
     */
    struct INODetail {
        string name;
        address ino;
        INOStorage.SetUp inoSetUp;
        SaleStorage.SetUp saleSetUp;
    }

    /**
     * @notice Emitted only in {updateDefaultINO}.
     *
     * @param defaultINO Address of the old default {INO} contract.
     * @param newDefaultINO Address of the new default {INO} contract.
     */
    event DefaultINOUpdated(
        address indexed defaultINO,
        address indexed newDefaultINO
    );
    /**
     * @notice Emitted only in {createINO}.
     *
     * @param inoName Name of the INO.
     * @param ino Address of the {INO} contract cloned and initialized.
     */
    event INOCreated(string indexed inoName, address indexed ino);

    /// @notice Thrown when {defaultINO} is not set.
    error INOFactory_DefaultINO_NotSet();
    /// @notice Thrown when trying to set {defaultINO} as `address(0)` in {updateDefaultINO}.
    error INOFactory_DefaultINO_ZeroAddr();
    /// @notice Thrown when an INO with `name` has already been created.
    error INOFactory_INONameExists(string name);
    /// @notice Thrown when `from` is > `to` in {getInosDetails}.
    error INOFactory_IndexesReversed();
}
