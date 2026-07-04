// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity 0.8.9;

import {ISynthereumFinder} from '../../../core/interfaces/IFinder.sol';
import {IDeploymentSignature} from '../../../core/interfaces/IDeploymentSignature.sol';
import {ISynthereumStakingLPVaultRegistry} from './interfaces/IStakingLPVaultRegistry.sol';
import {SynthereumInterfaces} from '../../../core/Constants.sol';
import {SynthereumStakingLPVault} from './StakingLPVault.sol';
import {ReentrancyGuard} from '../../../../@openzeppelin/contracts/security/ReentrancyGuard.sol';
import {SynthereumStakingLPVaultCreator} from './StakingLPVaultCreator.sol';

contract SynthereumStakingLPVaultFactory is
  IDeploymentSignature,
  ReentrancyGuard,
  SynthereumStakingLPVaultCreator
{
  bytes4 public immutable override deploymentSignature;

  /**
   * @param _synthereumFinder Synthereum finder contract
   * @param _vaultImplementation Address of the deployed vault implementation used for EIP1167
   */
  constructor(ISynthereumFinder _synthereumFinder, address _vaultImplementation)
    SynthereumStakingLPVaultCreator(_synthereumFinder, _vaultImplementation)
  {
    deploymentSignature = this.createVault.selector;
  }

  /**
   * @notice deploy a vault with msg.sender being the admin
   * @return vault Deployed vault
   * @return admin Admin of the vault deployed
   */
  function createVault()
    public
    override
    nonReentrant
    returns (SynthereumStakingLPVault vault, address admin)
  {
    (vault, admin) = SynthereumStakingLPVaultCreator.createVault();

    // register mapping between owner and vault


      ISynthereumStakingLPVaultRegistry vaultAdminRegistry
     = ISynthereumStakingLPVaultRegistry(
      synthereumFinder.getImplementationAddress(
        SynthereumInterfaces.StakingLPVaultRegistry
      )
    );

    vaultAdminRegistry.setVaultOwner(admin, address(vault));
  }
}
