// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.24;

import {IBatchMigrator} from "./interface/IBatchMigrator.sol";
import {IZtakingPool} from "./interface/IZtakingPool.sol";
import {Ownable2Step} from "@openzeppelin/contracts/access/Ownable2Step.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

/// @title Batch Migrator
/// @notice A contract to migrate multiple users from the staking contract in a single transaction.
/// @dev To call the migrateWithSig from the ztakingPool Contract this batch migrator must assume ownership of ztaking pool. Due to that the functions that implement onlyOwner on ztakingPool have been integrated into the Batch Migrator.
contract BatchMigrator is IBatchMigrator, Ownable2Step {
    address public immutable ztakingPool;
    address public immutable migrator;

    uint256 public signatureExpiry;

    constructor(
        address _ztakingPool,
        address _migrator,
        uint256 _signatureExpiry
    ) Ownable(msg.sender) {
        if (_ztakingPool == address(0)) revert ZtakingPoolCannotBeZeroAddress();
        if (_migrator == address(0)) revert MigratorCannotBeZeroAddress();
        if (_signatureExpiry == 0) revert SignatureExpiryCannotBeZero();

        ztakingPool = _ztakingPool;
        migrator = _migrator;
        signatureExpiry = _signatureExpiry;
    }

    /**
     * @inheritdoc IBatchMigrator
     */
    function batchMigrate(
        address[] calldata _users,
        address[][] calldata _tokens,
        address[] calldata _destinations,
        bytes[] calldata _signatures
    ) external onlyOwner {
        uint256 numUsers = _users.length;
        uint256 _signatureExpiry = signatureExpiry;
        for (uint256 i = 0; i < numUsers; ++i) {
            IZtakingPool(ztakingPool).migrateWithSig(
                _users[i],
                _tokens[i],
                migrator,
                _destinations[i],
                _signatureExpiry,
                _signatures[i]
            );
        }
    }

    /**
     * @inheritdoc IBatchMigrator
     */
    function batchMigrateWithDestinationEqualToUser(
        address[] calldata _usersDestinations,
        address[][] calldata _tokens,
        bytes[] calldata _signatures
    ) external onlyOwner {
        uint256 numUsers = _usersDestinations.length;
        uint256 _signatureExpiry = signatureExpiry;
        for (uint256 i = 0; i < numUsers; ++i) {
            IZtakingPool(ztakingPool).migrateWithSig(
                _usersDestinations[i],
                _tokens[i],
                migrator,
                _usersDestinations[i],
                _signatureExpiry,
                _signatures[i]
            );
        }
    }

    /**
     * @inheritdoc IBatchMigrator
     */
    function setSignatureExpiry(uint256 _signatureExpiry) external onlyOwner {
        if (_signatureExpiry == 0) revert SignatureExpiryCannotBeZero();
        signatureExpiry = _signatureExpiry;
    }

    /**
     * @inheritdoc IBatchMigrator
     */
    function acceptZtakingPoolOwnershipTransfer() external onlyOwner {
        Ownable2Step(ztakingPool).acceptOwnership();
    }

    /**
     * @inheritdoc IBatchMigrator
     */
    function transferZtakingPoolOwnership(
        address _newOwner
    ) external onlyOwner {
        Ownable2Step(ztakingPool).transferOwnership(_newOwner);
    }

    /**
     * @inheritdoc IBatchMigrator
     */
    function ztakingPoolSetZircuitSigner(address _signer) external onlyOwner {
        IZtakingPool(ztakingPool).setZircuitSigner(_signer);
    }

    /**
     * @inheritdoc IBatchMigrator
     */
    function ztakingPoolSetStakable(
        address _token,
        bool _canStake
    ) external onlyOwner {
        IZtakingPool(ztakingPool).setStakable(_token, _canStake);
    }

    /**
     * @inheritdoc IBatchMigrator
     */
    function ztakingPoolBlockMigrator(
        address _migrator,
        bool _blocklisted
    ) external onlyOwner {
        IZtakingPool(ztakingPool).blockMigrator(
            _migrator,
            _blocklisted
        );
    }

    /**
     * @inheritdoc IBatchMigrator
     */
    function ztakingPoolPause() external onlyOwner {
        IZtakingPool(ztakingPool).pause();
    }

    /**
     * @inheritdoc IBatchMigrator
     */
    function ztakingPoolUnpause() external onlyOwner {
        IZtakingPool(ztakingPool).unpause();
    }

    function renounceOwnership() public override {
        revert CannotRenounceOwnership();
    }
}