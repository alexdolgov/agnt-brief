// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

interface IOPNControllerDAO {
    // Operational functions

    /**
     * @notice Mint function only callable by the DAO - note that supply cannot exceed 100 billion
     * @dev this function will be only callable by a DAO governance contract that can only execute functions like these after a majority vote (with quorum) has been reached
     * @param _to Address to which tokens will be minted.
     * @param _amount Amount of tokens to mint
     */
    function mintTokensByDAO(address _to, uint256 _amount) external;

    /**
     * @notice Finalizes the migration process
     * @dev this function disables the migration minting and revokes the minting rights of the migration manager. This function can only be called by the DAO.
     */
    function finalizeMigration() external;

    /**
     * @notice Disables minting permanently
     * @dev this function disables minting permanently. This function can only be called by the DAO.
     */
    function disableMintingPermanently() external;

    /**
     * @notice Changes the maximum mintable supply of OPN tokens
     * @dev this function can only be called by the DAO and the new max supply must be lower than the current max supply
     * @param _newMaxSupply New maximum supply of OPN tokens
     */
    function lowerMaxMintableSupplyOPN(uint256 _newMaxSupply) external;

    /**
     * @notice Revokes the minting rights of the migration manager completely and mints the remaining tokens to the DAO
     * @dev this function can only be called by the DAO the point of this function is to revoke the minting rights of the migration manager completely and mint the remaining tokens to the DAO to continue the migration process of GET to OPN
     * @dev the max supply of OPN is the total supply of GET * 1000 as that is the rate at which GET is migrated to OPN
     */
    function revokeOPNMintingCompletelyMintMaxSupply() external;

    /**
     * @notice Revokes the minting rights of the migration manager completely without minting any more tokens
     * @dev this function can only be called by the DAO the point of this function is to revoke the minting rights of the migration manager completely without minting any more tokens (so this function can only be called if the migration process is finished and no more tokens need to be minted)
     */
    function revokeOPNMintingCompletelyNoMint() external;

    /**
     * @notice Revokes the DAO controller rights in OPN token
     * @dev this is a one way function once called the DAO controller funtion in the OPN token contract will be disabled and cannot be re-enabled
     */
    function revokeDAOController() external;

    // Events

    event MigrationFinalized();

    event MintTokensByDAO(address _to, uint256 _amount);

    event MintingDisabled();

    event MaxSupplyOPNChanged(uint256 _newMaxSupply);

    event DAOControllerRevoked();
}
