// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity 0.8.9;

import {ISynthereumFinder} from '../../../core/interfaces/IFinder.sol';
import {ISynthereumStakingLPVaultRegistry} from './interfaces/IStakingLPVaultRegistry.sol';
import {SynthereumInterfaces} from '../../../core/Constants.sol';
import {EnumerableSet} from '../../../../@openzeppelin/contracts/utils/structs/EnumerableSet.sol';

/**
 * @title Register all the LPVaults contracts associated to an address
 */
contract SynthereumStakingLPVaultRegistry is ISynthereumStakingLPVaultRegistry {
  using EnumerableSet for EnumerableSet.AddressSet;

  ISynthereumFinder public immutable synthereumFinder;

  mapping(address => EnumerableSet.AddressSet) internal adminVaults; // owner -> list of vaults owned
  mapping(address => bool) internal proxy_whitelist;

  modifier onlyLPVaultFactory() {
    require(
      msg.sender ==
        synthereumFinder.getImplementationAddress(
          SynthereumInterfaces.StakingLPVaultFactory
        ),
      'Not allowed'
    );
    _;
  }

  constructor(ISynthereumFinder _synthereumFinder) {
    synthereumFinder = _synthereumFinder;
  }

  /**
   * @notice Allow the vault factory to map a vault to its owner
   * @param owner Address of the owner
   * @param vault Address of the vault
   */
  function setVaultOwner(address owner, address vault)
    external
    override
    onlyLPVaultFactory
  {
    require(adminVaults[owner].add(vault), 'Vault already registered');
    proxy_whitelist[vault] = true;
  }

  /**
   * @notice Returns all the vaults of an owner
   * @param owner Pool address
   * @return List of all vaults
   */
  function getVaults(address owner)
    external
    view
    override
    returns (address[] memory)
  {
    return adminVaults[owner].values();
  }

  /**
   * @notice Checks if an address is whitelisted
   * @param proxy address of the vault to check
   * @return true or false
   */
  function isWhitelistedProxy(address proxy)
    external
    view
    override
    returns (bool)
  {
    return proxy_whitelist[proxy];
  }
}
