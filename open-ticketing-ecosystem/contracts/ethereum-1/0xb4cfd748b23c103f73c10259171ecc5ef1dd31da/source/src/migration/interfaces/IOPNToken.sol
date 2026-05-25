// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

import {IERC20} from "erc20/interfaces/IERC20.sol";

interface IOPNToken is IERC20 {
    /// @notice Mint function only callable by the DAO
    /// @dev this function will be only callable by a DAO governance contract that can only execute functions like these after a majority vote (with quorum) has been reached
    /// @param _to Address to which tokens will be minted.
    /// @param _amount Amount of tokens to mint
    function mintTokensByDAO(address _to, uint256 _amount) external;

    /// @notice Issues tokens during the migration process.
    /// @dev This function will be only callable by a migration manager contract(burning GET and minting OPN) that will be responsible for minting tokens during the migration process. After the migration the DAO can revoke the minting rights of the migration manager.
    /// @param _to Address to which tokens will be minted.
    /// @param _amount Amount of tokens to mint.
    function issueTokensMigration(address _to, uint256 _amount) external;

    /// @notice Mints tokens for Polygon inventory.
    /// @dev As to allow GET to be migrated on Polygon this function will be used to mint a certain amount of tokens to the Polygon inventory. This is not inflationary as the tokens are already minted on Ethereum and are just being moved to Polygon.
    /// @param _to Address to which tokens will be minted.
    /// @param _amount Amount of tokens to mint.
    function mintTokenPolygonInventory(address _to, uint256 _amount) external;

    /// @notice Allows token holders to burn their tokens.
    /// @param _amount Amount of tokens to burn.
    function burn(uint256 _amount) external;

    /// @notice Finalizes the migration process
    /// @dev this function disables the migration minting and revokes the minting rights of the migration manager. This function can only be called by the DAO.
    function finalizeMigration() external;

    /// @notice Sets a new DAO controller address
    /// @param _newDaoController The address of the new DAO controller.
    function setDAOControllerAddress(address _newDaoController) external;

    /// @notice Sets a new mint manager address
    /// @param _newMigrationManager The address of the new mint manager.
    function setMintManager(address _newMigrationManager) external;

    // View functions

    /// @notice Returns the address of the mint manager.
    /// @return address of the mint manager.
    function mintManagerAddress() external view returns (address);

    /// @notice Returns the address of the DAO controller.
    /// @return address of the DAO controller.
    function daoControllerAddress() external view returns (address);

    /// @notice Returns whether the migration issuance is disabled permanently
    function migrationIssuanceDisabledPermanently()
        external
        view
        returns (bool);

    // Events

    event TokensBurned(address indexed from, uint256 amount);

    event MigrationInventoryMint(address indexed to, uint256 amount);

    event MigrationManagerSet(address indexed newMigrationManager);

    event MigrationMint(address indexed to, uint256 amount);

    event DaoMint(address indexed to, uint256 amount);

    event DaoControllerSet(address _newDaoController);

    event MigrationConfigFinalized();
}
