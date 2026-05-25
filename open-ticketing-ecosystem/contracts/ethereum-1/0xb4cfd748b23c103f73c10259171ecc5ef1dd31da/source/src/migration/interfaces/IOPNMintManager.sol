// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

interface IOPNMintManager {
    // Events

    event MigrationMint(address indexed to, uint256 amount);

    event DaoMint(address indexed to, uint256 amount);

    event MigrationContractSet(address migrationContract);

    event DAOContractAddressSet(address daoContractAddress);

    event MintManagerSetInToken(address _newMigrationManager);

    // Functions

    function opnTokenAddress() external view returns (address);

    function issueTokensMigration(address _to, uint256 _amount) external;

    function mintTokenPolygonInventory(address _to, uint256 _amount) external;

    function setDaoContractAddress(address _daoContractAddress) external;

    function setMintManangerInToken(address _newMigrationManager) external;

    function withdrawOPN() external;

    function setMigrationContract(address _migrationContract) external;

    function withdrawTokens(address _tokenAddress, uint256 _amount) external;
}
