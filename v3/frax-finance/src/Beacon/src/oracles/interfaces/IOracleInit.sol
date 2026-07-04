// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.30;

/**
 * @title Oracle init package interface
 * @dev This interface is used to initialize the Oracle with the given roles and parameters.
 */
interface IOracleInit {
    /**
     * @notice Initializes the contract with the given roles and parameters.
     * @dev This function can only be called once, and should be called by a contract deployer or administrator.
     * @param name_ The name of the Oracle.
     * @param description_ The description of the Oracle.
     * @param owner The address to be granted the `DEFAULT_ADMIN_ROLE`, which typically has the highest level of control.
     */
    function initializeWithRoles(
        string calldata name_,
        string calldata description_,
        address owner
    ) external;

    /**
     * @dev Returns the beacon address for this contract
     * @return The beacon address
     */
    function getBeacon() external view returns (address);
}