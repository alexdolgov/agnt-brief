// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.30;

/**
 * @title ERC-721-Soulbound token init package interface
 * @dev This interface is used to initialize the ERC-721-Soulbound token with the given roles and token parameters.
 */
interface IERC721SoulboundTokenInit {
    /**
     * @notice Initializes the contract with the given roles and token parameters.
     * @dev This function can only be called once, and should be called by a contract deployer or administrator.
     * @param name_ The name of the token.
     * @param symbol_ The symbol of the token.
     * @param owner The address to be granted the `DEFAULT_ADMIN_ROLE`, which typically has the highest level of control.
      * @param issuer The address to be granted the `ISSUER_ROLE`, which is reserved for future functionality and currently acts as a placeholder role.
 * @param registrar The address to be granted the `REGISTRAR_ROLE`, which handles minting, burning, and other token operations.
     */
    function initializeWithRoles(
        string calldata name_,
        string calldata symbol_,
        address owner,
        address issuer,
        address registrar
    ) external;

    /**
     * @dev Returns the beacon address for this contract
     * @return The beacon address
     */
    function getBeacon() external view returns (address);
}
