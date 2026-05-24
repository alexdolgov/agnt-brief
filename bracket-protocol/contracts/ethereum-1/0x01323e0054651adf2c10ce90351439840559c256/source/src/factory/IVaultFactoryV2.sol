// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

import { IBracketVaultV2 } from "src/vaults/IBracketVaultV2.sol";

interface IVaultFactoryV2 {
    /// @dev Emitted when a new vault is deployed
    event VaultDeployed(
        string name,
        string symbol,
        address vault,
        address token,
        address manager,
        uint16 withdrawDelay,
        uint48 lockFrequency
    );

    /// @dev Error thrown when deployment fails
    error SafeDeploymentFailed();
    
    /// @dev Error thrown when zero address is provided
    error ZeroAddress();

    /// @notice Deploys a new vault strategy
    /// @param name The name of the vault
    /// @param symbol The symbol of the vault
    /// @param manager The manager address
    /// @param withdrawDelay The withdrawal delay
    /// @param accounts The accounts to grant roles to
    /// @param roles The roles to grant to the accounts
    /// @return vault The address of the deployed vault
    function deployVault(
        string memory name,
        string memory symbol,
        address token,
        address manager,
        uint16 withdrawDelay,
        uint48 lockFrequency,
        address[] memory accounts,
        bytes32[] memory roles
    ) external returns (address);

    /// @notice Sets a new multisig address
    /// @param _multisig The new multisig address
    function setMultisig(address _multisig) external;
}
