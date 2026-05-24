// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

/**
 * @title Registry Interface
 * @author ZeUSD Protocol Team
 * @notice Interface for the main registry contract that manages protocol contract addresses
 * @dev All contract references in the protocol are managed through this registry
 */
interface IRegistry {
    /**
     * @notice Registers a new contract in the registry
     * @param id Contract identifier
     * @param addr Contract address
     * @param version Contract version
     */
    function registerContract(bytes32 id, address addr, uint256 version) external;

    /**
     * @notice Updates an existing contract address
     * @param id Contract identifier
     * @param newAddr New contract address
     * @param newVersion New version number
     */
    function updateContract(bytes32 id, address newAddr, uint256 newVersion) external;

    /**
     * @notice Retrieves a contract address
     * @param id Contract identifier
     * @return addr Contract address
     */
    function getContract(bytes32 id) external view returns (address addr);

    /**
     * @notice Gets contract details
     * @param id Contract identifier
     * @return addr Contract address
     * @return version Contract version
     * @return active Whether contract is active
     */
    function getContractInfo(
        bytes32 id
    ) external view returns (address addr, uint256 version, bool active);
}
