// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity >=0.8.0;

// provides interface to interact with a SynthereumStakingLPVaultData contract
interface ISynthereumStakingLPVaultData {
  /**
   * @notice Register a new vault with associated storage args
   * @dev Callable only by contract maintainer
   * @param vault address to register
   * @param args abi encoded storage args
   */
  function setVaultArgs(address vault, bytes memory args) external;

  /**
   * @notice Remove a registered a vault and associated storage args
   * @dev Callable only by contract maintainer
   * @param vault address to unregister
   */
  function removeVault(address vault) external;

  /**
   * @notice Return vault args
   * @param vault address to unregister
   * @return args Abi encoded args
   */
  function getVaultArgs(address vault)
    external
    view
    returns (bytes memory args);

  /**
   * @notice Return if a vault is registered
   * @param vault address to check
   * @return bool
   */
  function isVaultSupported(address vault) external view returns (bool);
}
