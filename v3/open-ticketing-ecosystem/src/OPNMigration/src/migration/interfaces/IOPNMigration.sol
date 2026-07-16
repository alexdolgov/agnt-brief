// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

interface IOPNMigration {
    // Events
    event MintManagerSet(address indexed opnMintManager);

    event AdminSet(address indexed admin, bool setting);

    event XOpenTokenSet(address indexed xOpenToken);

    event OPNTokenSet(address indexed openToken);

    event MigrationStatusSet(bool setting);

    // The amount of GET tokens the user has migrated to OPN.
    // The amount of XGET tokens the user has migrated to XOPN.
    // The amount of OPN tokens allocated to the user after the migration of liquid GET tokens.
    // The amount of XOPN tokens sent to the user after the migration of XGET tokens (note this is not just x1000 the xGET tokens, because xGET redemption gives a certain amount of GET that varies over time, also the amount of XOPN also depends on if people do immediate withdraws in that contract)
    // The amount of OPN tokens staked during the migration of liquid GET tokens.
    // If the user migrates xGET then in the migratiion the contract has redeemed the XGET for GET, this value is the amount of GET  that was received, migrated and staked
    // amount of OPN that was minted (and then staked) in the migration of XGET, this is baically x1000 of the previous value
    event OPNMigrationComplete( // The address of the user who initiated the migration process.
        address indexed user,
        uint256 amountGET,
        uint256 amountXGET,
        uint256 amountOPNToUserForGETMigration,
        uint256 amountXOPNToUserForGETMigration,
        uint256 amountXOPNToUserForXGETMigration,
        uint256 amountOPNStakedForGETMigration,
        uint256 amountGETRedeemedByXGET,
        uint256 amountOPNMintedForXGETMigration
    );

    event StartOfMigrationSet(uint256 startOfMigration);

    event EndOfMigrationSet(uint256 endOfMigration);

    event StakeRateInitialSet(uint256 stakeRateInitial);

    event DurationOfStakeMigrationPeriodSet(uint256 durationOfStakeMigrationPeriod);

    // View functions

    /**
     * @notice Returns the total amount of GET tokens redeemed from XGET tokens during the migration process.
     * @dev This function provides a view into the total effectiveness and participation in the migration process, specifically focusing on the XGET to GET redemption aspect. It allows external entities to query the total amount of GET tokens that have been successfully redeemed from XGET tokens, offering insights into the volume of tokens processed in this part of the migration.
     * @return The total amount of GET tokens that have been redeemed from XGET tokens as part of the migration process. This includes all GET tokens obtained through the redemption of XGET tokens, across all participants in the migration.
     */
    function returnTotalAmountGETFromXGETRedemptionMigrated() external view returns (uint256);

    /**
     * @notice Calculates the total amount of OPN tokens that have been satked as a result of the migration.
     * @return totalOPNStaked_ The total amount of OPN tokens staked during the migration process.
     */
    function totalOPNStakedByTheMigration() external view returns (uint256 totalOPNStaked_);

    /**
     * @notice Provides the total amount of OPN tokens that have been minted during the migration process.
     * @return totalOPNMinted_ The total number of OPN tokens minted as a result of migration.
     */
    function totalOPNMinted() external view returns (uint256 totalOPNMinted_);

    /**
     * @notice Returns the current stake rate applied to tokens during the migration.
     * @return stakeRate_ The current stake rate, scaled by 1e18 for precision.
     */
    function returnCurrentStakeRate() external view returns (uint256 stakeRate_);

    /**
     * @notice Returns the stake rate at a specific timestamp during the migration process.
     * @param _timestamp The Unix timestamp for which the stake rate is requested.
     * @return stakeRate_ The stake rate at the specified timestamp, scaled by 1e18 for precision.
     */
    function returnStakeRateAtTime(uint256 _timestamp) external view returns (uint256 stakeRate_);

    /**
     * @notice Fetches the total supply of OPN tokens.
     * @return totalSupply_ The total supply of OPN tokens.
     */
    function totalOPNSupply() external view returns (uint256 totalSupply_);

    /**
     * @notice Retrieves the total supply of XOPN tokens.
     * @return totalSupply_ The total supply of XOPN tokens.
     */
    function totalXOPNSupply() external view returns (uint256 totalSupply_);

    /**
     * @notice Calculates the total amount of GET tokens that have been migrated to OPN.
     * @return totalGETMigrated_ The total amount of GET tokens migrated to OPN.
     */
    function totalGETMigratedInTotal() external view returns (uint256 totalGETMigrated_);

    /**
     * @notice Provides the total amount of XGET tokens that have been redeemed as part of the migration process.
     * @return totalXGETRedeemed_ The total number of XGET tokens redeemed during the migration process.
     */
    function totalXGETRedeemedInTotal() external view returns (uint256 totalXGETRedeemed_);

    function depositRatioOfOPNtoXOPN() external view returns (uint256);

    function previewRedeem(uint256 _shares) external view returns (uint256);

    function previewDeposit(uint256 _assets) external view returns (uint256);

    /**
     * @notice Calculates and returns the expected outputs for a dual token migration given specific amounts of GET and XGET tokens.
     * @dev This function provides a preview of the migration results without actually performing the migration. It's useful for users to understand the benefits of migrating their tokens.
     * @param _amountGET The amount of GET tokens the user intends to migrate.
     * @param _amountXGET The amount of XGET tokens the user intends to redeem and migrate.
     * @return amountOPNToUserForGETMigration_ The amount of OPN tokens the user will receive for the migration of GET tokens.
     * @return amountXOPNToUserForXGETMigration_ The amount of XOPN tokens the user will receive for the redemption and migration of XGET tokens.
     * @return amountOPNStakedForGETMigration_ The amount of OPN tokens that will be staked as a result of GET token migration.
     * @return amountXOPNToUserForGETMigration_ The amount of XOPN tokens allocated to the user as a result of GET token migration. This appears to be a duplicate or incorrectly named return value based on the provided context and might need correction.
     * @return amountGETRedeemedByXGET_ The amount of GET tokens redeemed from the XGET tokens provided.
     */
    function returnMigrateDualTokenOutput(uint256 _amountGET, uint256 _amountXGET)
        external
        view
        returns (
            uint256 amountOPNToUserForGETMigration_,
            uint256 amountXOPNToUserForXGETMigration_,
            uint256 amountOPNStakedForGETMigration_,
            uint256 amountXOPNToUserForGETMigration_,
            uint256 amountGETRedeemedByXGET_
        );

    /**
     * @notice Migrates specified amounts of GET and XGET tokens to OPN and XOPN tokens, respectively.
     * @dev This function performs the actual migration of tokens. It should handle the redemption of XGET tokens for GET, the conversion of GET to OPN, and the allocation of OPN and XOPN tokens to the user. Ensure proper security measures, such as reentrancy guards, are in place.
     * @param _amountGET The amount of GET tokens the user wishes to migrate.
     * @param _amountXGET The amount of XGET tokens the user wishes to redeem and migrate.
     * @return amountOPNToUserForGETMigration_ The amount of OPN tokens allocated to the user for the migration of GET tokens.
     * @return amountXOPNToUserForXGETMigration_ The amount of XOPN tokens allocated to the user for the redemption and migration of XGET tokens.
     * @return amountOPNStakedForGETMigration_ The amount of OPN tokens staked as a result of the migration of GET tokens.
     * @return amountXOPNToUserForGETMigration_ The amount of XOPN tokens allocated to the user as a result of GET token migration. This appears to be a duplicate or incorrectly named return value based on the provided context and might need correction.
     * @return amountGETRedeemedByXGET_ The total amount of GET tokens redeemed from the XGET tokens provided.
     */
    function migrateDualTokens(uint256 _amountGET, uint256 _amountXGET)
        external
        returns (
            uint256 amountOPNToUserForGETMigration_,
            uint256 amountXOPNToUserForXGETMigration_,
            uint256 amountOPNStakedForGETMigration_,
            uint256 amountXOPNToUserForGETMigration_,
            uint256 amountGETRedeemedByXGET_
        );

    /**
     * @notice Configures the addresses for the OPN token, xOPN token, and OPN Mint Manager contracts.
     * @dev This function is intended for administrative use to set up or update the contract addresses involved in the migration process. It allows for the configuration of the main OPN token address, the xOPN token address, and the OPN Mint Manager address in a single transaction.
     * @param _openToken The address of the OPN token contract. This token represents the primary asset being migrated.
     * @param _xOpenToken The address of the xOPN token contract. This token represents a secondary or derivative asset involved in the migration.
     * @param _opnMintManager The address of the OPN Mint Manager contract. This contract is responsible for managing the minting of OPN tokens during the migration process.
     */
    function setAddressConfig(address _openToken, address _xOpenToken, address _opnMintManager) external;

    /**
     * @notice Activates or deactivates the migration process.
     * @dev Only callable by the admin. Controls whether the migration is allowed to proceed.
     * @param _setting A boolean value to activate (`true`) or deactivate (`false`) the migration.
     */
    function setMigrationActive(bool _setting) external;

    function setStartOfMigration(uint256 _startOfMigration) external;

    function setEndOfMigration(uint256 _endOfMigration) external;

    function setStakeRateInitial(uint256 _stakeRateInitial) external;

    function setDurationOfStakeMigrationPeriod(uint256 _durationOfStakeMigrationPeriod) external;
}
