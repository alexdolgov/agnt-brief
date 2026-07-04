// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.24;

///@title Batch Migrator Interface
///@notice An interface containing externally accessible functions of the BatchMigrator contract
interface IBatchMigrator {

    /*//////////////////////////////////////////////////////////////
                            Errors
    //////////////////////////////////////////////////////////////*/

    error ZtakingPoolCannotBeZeroAddress();
    error MigratorCannotBeZeroAddress();
    error SignatureExpiryCannotBeZero();
    error CannotRenounceOwnership();

    /*//////////////////////////////////////////////////////////////
                            Functions
    //////////////////////////////////////////////////////////////*/

    ///@notice Migrate the staked tokens for the users from the Ztaking Pool to Zircuit Multisig
    ///@param _users The stakers to migrate tokens for
    ///@param _tokens Each user token being migrated to Zircuit from the Ztaking Pool
    ///@param _destinations The addresses which will be credited the tokens on Zircuit
    ///@param _signatures The signatures from the stakers authorizing the migration of their tokens
    ///@dev Only callable by the owner
    function batchMigrate(
        address[] calldata _users,
        address[][] calldata _tokens,
        address[] calldata _destinations,
        bytes[] calldata _signatures
    ) external;

    ///@notice Migrate the staked tokens for the users from the Ztaking Pool to Zircuit Multisig, this function is used for when the destination address is the same as user address
    ///@param _usersDestinations The stakers to migrate tokens for, which are equal to the L2 receiving address
    ///@param _tokens Each user token being migrated to Zircuit from the Ztaking Pool
    ///@param _signatures The signatures from the stakers authorizing the migration of their tokens
    ///@dev Only callable by the owner
    function batchMigrateWithDestinationEqualToUser(
        address[] calldata _usersDestinations,
        address[][] calldata _tokens,
        bytes[] calldata _signatures
    ) external;

    ///@notice Update the signature expiry for signatures produced by users for token migration.
    ///@param _signatureExpiry New default signature expiry time for users migration signatures
    ///@dev Only callable by the owner
    function setSignatureExpiry(uint256 _signatureExpiry) external;

    ///@notice Accept ownership transfer of the staking contract
    ///@dev Only callable by the owner
    function acceptZtakingPoolOwnershipTransfer() external;

    ///@notice Transfer ownership of the staking contract
    ///@param newOwner New owner of the staking contract
    ///@dev Only callable by the owner
    function transferZtakingPoolOwnership(address newOwner) external;

    ///@notice Call setZircuitSigner on staking contract
    ///@param _signer The address of the new signer for the migration signature
    ///@dev Only callable by the owner
    function ztakingPoolSetZircuitSigner(address _signer) external;

    ///@notice Call setStakable on staking contract
    ///@param _token The token to enable or disable for staking
    ///@param _canStake If true, then staking is to be enabled. If false, then staking will be disabled.
    ///@dev Only callable by the owner
    function ztakingPoolSetStakable(address _token, bool _canStake) external;

    ///@notice Call blockMigrator on staking contract
    ///@param _migrator The migrator contract to add or remove from the blocklist
    ///@param _blocklisted If true, then add the migrator to the blocklist. If false, then remove the migrator from the blocklist.
    ///@dev Only callable by the owner
    function ztakingPoolBlockMigrator(
        address _migrator,
        bool _blocklisted
    ) external;

    ///@notice Call pause on staking contract
    ///@dev Only callable by the owner
    function ztakingPoolPause() external;

    ///@notice Call unpause on staking contract
    ///@dev Only callable by the owner
    function ztakingPoolUnpause() external;
}