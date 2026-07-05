//SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.9;

// Packages
import "@openzeppelin-upgradeable/utils/CountersUpgradeable.sol";
import "@openzeppelin-upgradeable/security/PausableUpgradeable.sol";
import "@openzeppelin/contracts/utils/Strings.sol";

// Interfaces
import "./interfaces/IStrategy.sol";
import "./interfaces/IVaultManager.sol";

// Libraries
import {Helpers} from "./helpers.sol";
import {NFTDescriptor} from "./libraries/NFTDescriptor.sol";

// Source
import "./v2_swNFT.sol";

import "./v3_harvest.sol";

/// @title Contract for SWNFTUpgrade
contract SWNFTv3 is SWNFTUpgrade {
    /// @notice Status of the migration from v3
    bool public migrationFinished = false;

    /// @notice Last block where a harvest happened
    uint256 public lastBlockHarvest;

    /// @notice The address receiving harvested ETH
    address public harvestETHRecipient;

    /// @notice The address receiving rescued ERC20
    address public rescueERC20Recipient;

    /// @notice The last NFT token ID that was migrated (burned)
    uint256 public lastMigratedId = 0;

    /// @notice The running total of migrated SWNFTs
    uint256 public totalMigrated = 0;

    /// -----------------------------------------------------------------------
    /// Modiifer functions
    /// -----------------------------------------------------------------------

    /// @notice Requires the migration to be incomplete
    modifier hasIncompleteMigration() {
        require(!migrationFinished, "migration phase has ended");
        _;
    }

    /// -----------------------------------------------------------------------
    /// Admin functions
    /// -----------------------------------------------------------------------

    /// @notice Mark migration as completed (permanent)
    function setMigrationFinished() public onlyOwner {
        migrationFinished = true;
        emit migrationComplete();
    }

    /// @notice Loops over from and to of NFT token IDs to migrate
    /// @param from starting token ID (inclusive)
    /// @param to ending token ID (inclusive)
    function migrateBatch(
        uint256 from,
        uint256 to
    ) public onlyOwner hasIncompleteMigration returns (uint256, uint256) {
        uint256 nftMigratedCount;
        uint256 ethValueMinted;
        for (uint256 i = from; i < to + 1; i++) {
            if (!_exists(i)) {
                continue;
            }

            if (totalSupply() == 0) {
                return (nftMigratedCount, ethValueMinted);
            }
            ethValueMinted += migrateSingle(i);
            nftMigratedCount++;
        }
        return (nftMigratedCount, ethValueMinted);
    }

    /// @notice Migrates a single token ID
    /// @param nftTokenID token ID to migrate
    function migrateSingle(
        uint256 nftTokenID
    ) private onlyOwner hasIncompleteMigration returns (uint256) {
        address owner = ownerOf(nftTokenID);
        Position memory position = positions[nftTokenID];
        _burn(nftTokenID);
        lastMigratedId = nftTokenID;
        totalMigrated++;
        emit successfulMigration(nftTokenID, owner, position.value);
        return position.value;
    }

    /// @notice Sets a new recipient for harvested ETH
    /// @param recipient The recipient for harvested ETH
    function setHarvestETHRecipient(address recipient) public onlyOwner {
        harvestETHRecipient = recipient;
        emit assignHarvestETHRecipient(recipient);
    }

    /// @notice Sets a new recipient for rescued ERC20
    /// @param recipient The recipient for rescued ERC20
    function setRescueERC20Recipient(address recipient) public onlyOwner {
        rescueERC20Recipient = recipient;
        emit assignRescueERC20Recipient(recipient);
    }

    /// -----------------------------------------------------------------------
    /// Harvest functions
    /// -----------------------------------------------------------------------

    /// @notice Triggers an ETH harvest
    function harvestETH() public {
        Harvester.harvestETH(harvestETHRecipient);
        lastBlockHarvest = block.number;
    }

    /// @notice Triggers an ERC20 rescue
    /// @param erc20Addr The token address for the rescued ERC20
    function rescueERC20(IERC20 erc20Addr) public {
        Harvester.rescueERC20(rescueERC20Recipient, erc20Addr);
    }

    /// -----------------------------------------------------------------------
    /// Events
    /// -----------------------------------------------------------------------

    /// @notice Emitted when a tokenID is migrated
    /// @param tokenId token ID that was migrated
    /// @param owner The owner of the NFT that will eventually receive SWETH
    /// @param value The amount of SWETH that will be sent
    event successfulMigration(uint256 tokenId, address owner, uint256 value);

    /// @notice Emitted when owner has assigned a new recipient for harvested ETH
    /// @param recipient The address receiving the harvested ETH
    event assignHarvestETHRecipient(address recipient);

    /// @notice Emitted when owner has assigned a new recipient for rescued ERC20
    /// @param recipient The address receiving the ERC20
    event assignRescueERC20Recipient(address recipient);

    /// @notice Emitted when migration has completed
    event migrationComplete();
}
