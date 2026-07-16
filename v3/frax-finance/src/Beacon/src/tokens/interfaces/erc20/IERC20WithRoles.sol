// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

/**
 * @title IERC20WithRoles
 * @dev Interface of the ERC-20 role-based access control function for initialization.
 */
interface IERC20WithRoles {

    /**
     * @notice Initializes the contract with the given roles and token parameters.
     * @dev This function can only be called once, and should be called by a contract deployer or administrator.
     * @param name_ The name of the token.
     * @param symbol_ The symbol of the token.
     * @param decimals_ The number of decimals the token uses.
     * @param initialSupply_ The initial supply of tokens to be minted during initialization.
     * @param tokensRecipient_ The address that will receive the initial supply of tokens.
     * @param owner The address to be granted the `DEFAULT_ADMIN_ROLE`, which typically has the highest level of control.
     * @param issuer The address to be granted the `ISSUER_ROLE`, which is reserved for future functionality and currently acts as a placeholder role.
     * @param registrar The address to be granted the `REGISTRAR_ROLE`, which handles minting, burning, freezing, pausing, clawback and other token operations.
     */
    function initializeWithRoles(
        string calldata name_,
        string calldata symbol_,
        uint8 decimals_,
        uint256 initialSupply_,
        address tokensRecipient_,
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