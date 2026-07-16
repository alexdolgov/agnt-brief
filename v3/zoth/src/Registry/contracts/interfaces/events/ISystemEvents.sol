// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

/**
 * @title System Events Interface
 * @author ZeUSD Protocol Team
 * @notice Defines core system events emitted across the protocol
 * @dev Interface containing common event definitions
 */
interface ISystemEvents {
    /**
     * @notice Emitted when a contract is registered
     * @param id Contract identifier
     * @param addr Contract address
     * @param version Contract version
     */
    event SystemContractRegistered(bytes32 indexed id, address indexed addr, uint256 version);

    /**
     * @notice Emitted when a contract version is updated
     * @param id Contract identifier
     * @param oldVersion Previous version number
     * @param newVersion New version number
     */
    event SystemContractVersionUpdated(bytes32 indexed id, uint256 oldVersion, uint256 newVersion);
    
    /**
     * @notice Emitted when a contract is removed
     * @param id Contract identifier
     * @param addr Contract address that was removed
     * @param version Version that was removed
     */
    event SystemContractRemoved(bytes32 indexed id, address indexed addr, uint256 version);
}
