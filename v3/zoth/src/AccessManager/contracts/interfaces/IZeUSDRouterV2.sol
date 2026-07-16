// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.23;

import { DataTypes } from '../libraries/DataTypes.sol';
import './events/IZeUSDRouterEvents.sol';
import './errors/IZeUSDRouterErrors.sol';

/**
 * @title IZeUSDRouterV2 Interface
 * @author ZeUSD Protocol Team
 * @notice Interface for the main entry point of ZeUSD protocol operations
 */
interface IZeUSDRouterV2 is IZeUSDRouterEvents, IZeUSDRouterErrors {
    /**
     * @notice Deposits assets and mints ZeUSD
     * @param rwaAddress RWA asset address
     * @param asset Asset being deposited
     * @param amount Amount to deposit
     * @return tokenId Minted NFT token ID
     * @return zeusdMinted Amount of ZeUSD minted
     */
    function deposit(
        address rwaAddress,
        address asset,
        uint256 amount
    ) external returns (uint256 tokenId, uint256 zeusdMinted);

    /**
     * @notice Burns ZeUSD tokens to withdraw assets
     * @param nftTokenId User's deposit NFT ID
     */
    function withdraw(uint256 nftTokenId) external;

    /**
     * @notice Rebalances ZeUSD tokens from old system to new system
     * @param proof Merkle proof for verification
     * @param rebalanceData Simplified rebalance data
     */
    function rebalanceZeUSD(
        bytes32[] calldata proof,
        DataTypes.RebalanceData calldata rebalanceData
    ) external;

    /**
     * @notice Sets the whitelist status for an address
     * @param account Address to set whitelist status for
     * @param status New whitelist status
     */
    function setWhitelistStatus(address account, bool status) external;

    /**
     * @notice Checks if an address is whitelisted
     * @param account Address to check
     * @return bool True if address is whitelisted
     */
    function isWhitelisted(address account) external view returns (bool);

    /**
     * @notice Sets the migration treasury address
     * @param _migrationTreasury New migration treasury address
     */
    function setMigrationTreasury(address _migrationTreasury) external;

    /**
     * @notice Gets the current migration treasury address
     * @return address Current migration treasury address
     */
    function getMigrationTreasury() external view returns (address);
}
