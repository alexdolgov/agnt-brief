// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity 0.8.9;

import {ISynthereumStakingLPVaultData} from './interfaces/IStakingLPVaultData.sol';
import {StandardAccessControlEnumerable} from '../../../common/roles/StandardAccessControlEnumerable.sol';
import {Address} from '../../../../@openzeppelin/contracts/utils/Address.sol';

/**
 * @title Register and maps all the LP vault implementation strategies args
 */
contract SynthereumStakingLPVaultData is
  ISynthereumStakingLPVaultData,
  StandardAccessControlEnumerable
{
  using Address for address;

  mapping(address => bool) private isLPVault;
  mapping(address => bytes) private vaultArgs;

  constructor(Roles memory _roles) {
    _setAdmin(_roles.admin);
    _setMaintainer(_roles.maintainer);
  }

  /**
   * @notice Allow the deployer to register a token vault with its args
   * @param vault Address of the vault
   * @param args ABI encoded args specific of the vault
   */
  function setVaultArgs(address vault, bytes calldata args)
    external
    override
    onlyMaintainer
  {
    require(vault.isContract(), 'Provided vault is not a contract');
    isLPVault[vault] = true;
    vaultArgs[vault] = args;
  }

  /**
   * @notice Allow the deployer to unregister a vault
   * @param vault Address of the vault to unregister
   */
  function removeVault(address vault) external override onlyMaintainer {
    delete vaultArgs[vault];
    isLPVault[vault] = false;
  }

  /**
   * @notice Returns a vault associated args
   * @param vault Address of the vault
   */
  function getVaultArgs(address vault)
    external
    view
    override
    returns (bytes memory args)
  {
    require(_isVaultSupported(vault), 'Vault not supported');
    args = vaultArgs[vault];
  }

  /**
   * @notice Checks if an address is a registered vault
   * @param vault Vault address
   * @return Boolean
   */
  function isVaultSupported(address vault)
    external
    view
    override
    returns (bool)
  {
    return _isVaultSupported(vault);
  }

  /**
   * @notice Return if a vault is registered
   * @param vault address to check
   * @return bool
   */
  function _isVaultSupported(address vault) internal view returns (bool) {
    return isLPVault[vault];
  }
}
