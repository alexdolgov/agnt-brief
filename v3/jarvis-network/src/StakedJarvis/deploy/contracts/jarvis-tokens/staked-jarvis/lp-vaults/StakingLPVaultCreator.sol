// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity 0.8.9;

import {ISynthereumFinder} from '../../../core/interfaces/IFinder.sol';
import {ISynthereumStakingLPVault} from './interfaces/IStakingLPVault.sol';
import {ISynthereumStakingLPVaultRegistry} from './interfaces/IStakingLPVaultRegistry.sol';
import {SynthereumInterfaces} from '../../../core/Constants.sol';
import {Clones} from '../../../../@openzeppelin/contracts/proxy/Clones.sol';
import {ERC2771Context} from '../../../common/ERC2771Context.sol';
import {SynthereumStakingLPVault} from './StakingLPVault.sol';

contract SynthereumStakingLPVaultCreator is ERC2771Context {
  using Clones for address;

  // Address of Synthereum Finder
  ISynthereumFinder public immutable synthereumFinder;

  address public immutable vaultImplementation;

  event CreatedLPVault(address indexed vaultUser, address indexed vaultAddress);

  /**
   * @notice Constructs the Vault contract.
   * @param _synthereumFinder Synthereum finder contract
   * @param _vaultImplementation Address of the deployed vault implementation used for EIP1167
   */
  constructor(ISynthereumFinder _synthereumFinder, address _vaultImplementation)
  {
    synthereumFinder = _synthereumFinder;
    vaultImplementation = _vaultImplementation;
  }

  function createVault()
    public
    virtual
    returns (SynthereumStakingLPVault vault, address msgSender)
  {
    // get user vault counts from registry


      ISynthereumStakingLPVaultRegistry vaultAdminRegistry
     = ISynthereumStakingLPVaultRegistry(
      synthereumFinder.getImplementationAddress(
        SynthereumInterfaces.StakingLPVaultRegistry
      )
    );

    msgSender = _msgSender();
    // encode user salt
    uint256 index = (vaultAdminRegistry.getVaults(msgSender)).length;
    bytes32 salt = keccak256(abi.encode(msgSender, index));

    // clone implementation to deterministic location
    vault = SynthereumStakingLPVault(
      payable(vaultImplementation.cloneDeterministic(salt))
    );

    // initialise it (as a constructor)
    vault.initialize(msgSender);

    emit CreatedLPVault(msgSender, address(vault));
  }

  function isTrustedForwarder(address forwarder)
    public
    view
    override
    returns (bool)
  {
    try
      synthereumFinder.getImplementationAddress(
        SynthereumInterfaces.TrustedForwarder
      )
    returns (address trustedForwarder) {
      if (forwarder == trustedForwarder) {
        return true;
      } else {
        return false;
      }
    } catch {
      return false;
    }
  }
}
