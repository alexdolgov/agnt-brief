// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

import {Owned} from "@solmate/src/auth/Owned.sol";
import {IOPNToken, IERC20} from "./interfaces/IOPNToken.sol";
import {IOPNMintManager} from "./interfaces/IOPNMintManager.sol";

/**
 * The OPNMintManager contract is used to be the contract managing minting of OPN tokens. It is used by the migration contract to mint tokens for users who have migrated their tokens from the old contract to the new contract.
 *
 * The reason it exists is because the minting of tokens is a sensitive operation and should be managed by a separate contract to the main token contract. This is to ensure that the main token contract is not compromised and that the minting process is transparent and auditable.
 */
contract OPNMintManager is IOPNMintManager, Owned {
    IOPNToken public immutable opnToken;

    uint256 public immutable chainId;

    address public migrationContract;

    address public daoContractAddress;

    constructor(
        address _initialAdmin,
        address _daoContractAddress,
        address _opnTokenAddress,
        uint256 _chainID
    ) Owned(_initialAdmin) {
        opnToken = IOPNToken(_opnTokenAddress);
        daoContractAddress = _daoContractAddress; // note consider making immutable
        chainId = _chainID;
    }

    // Modifiers

    modifier onlyMigrationContract() {
        require(
            msg.sender == migrationContract,
            "OPNMintManager: UNAUTHORIZED MIGRATION MANAGER"
        );
        _;
    }

    modifier onlyDAOController() virtual {
        require(
            msg.sender == owner,
            "OPNMintManager: UNAUTHORIZED ONLY DAO OWNER"
        );
        _;
    }

    modifier onlyOnEthereum() {
        if (chainId != 1) return;
        _;
    }

    // Operational functions

    /// @inheritdoc IOPNMintManager
    function issueTokensMigration(
        address _to,
        uint256 _amount
    ) external override onlyMigrationContract {
        if (chainId == 1) {
            // mint tokens directly from the contract
            opnToken.issueTokensMigration(_to, _amount);
        } else {
            // transfer mapped tokens to the recipient
            opnToken.transfer(_to, _amount);
        }
    }

    /// @inheritdoc IOPNMintManager
    function mintTokenPolygonInventory(
        address _to,
        uint256 _amount
    ) external override onlyDAOController onlyOnEthereum {
        opnToken.mintTokenPolygonInventory(_to, _amount);
    }

    // Configuration functions

    /// @inheritdoc IOPNMintManager
    function setMigrationContract(
        address _migrationContract
    ) external override onlyDAOController {
        // set the migration contract address
        migrationContract = _migrationContract;
        emit MigrationContractSet(_migrationContract);
    }

    /// @inheritdoc IOPNMintManager
    function setDaoContractAddress(
        address _daoContractAddress
    ) external override onlyDAOController {
        daoContractAddress = _daoContractAddress;
        emit DAOContractAddressSet(_daoContractAddress);
    }

    /// @inheritdoc IOPNMintManager
    function setMintManangerInToken(
        address _newMigrationManager
    ) external override onlyDAOController onlyOnEthereum {
        opnToken.setMintManager(_newMigrationManager);
        emit MintManagerSetInToken(_newMigrationManager);
    }

    /// @inheritdoc IOPNMintManager
    function withdrawTokens(
        address _tokenAddress,
        uint256 _amount
    ) external override onlyDAOController {
        IERC20(_tokenAddress).transfer(msg.sender, _amount);
    }

    /// @inheritdoc IOPNMintManager
    function withdrawOPN() external override onlyDAOController {
        opnToken.transfer(msg.sender, opnToken.balanceOf(address(this)));
    }

    // View functions

    /// @inheritdoc IOPNMintManager
    function opnTokenAddress() external view override returns (address) {
        return address(opnToken);
    }
}
