// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity >=0.8.0;

// provides interface to interact with a vault admin registry
interface ISynthereumStakingLPVaultRegistry {
  /**
   * @notice register binding between a vault and its admin
   * @dev Callable only by vault factory contract
   * @param owner address of the owner
   * @param vault address of the vaault
   */
  function setVaultOwner(address owner, address vault) external;

  /**
   * @notice Return vault contracts owned by an address
   * @param owner address to query
   * @return proxies list of proxies
   */
  function getVaults(address owner)
    external
    view
    returns (address[] memory proxies);

  /**
   * @notice Checks if an address is whitelisted
   * @param proxy address of the vault to check
   * @return true or false
   */
  function isWhitelistedProxy(address proxy) external view returns (bool);
}
