// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/**
 * @title IWhitelistedCollector
 * @notice Interface for the IWhitelistedCollector contract
 */
interface IWhitelistedCollector {
  error NotWhitelisted();

  /**
   * @notice Emitted when recipients are whitelisted or unwhitelisted
   * @param recipients An array of addresses that were whitelisted or unwhitelisted
   * @param grantOrRevoke A boolean indicating whether the action was to grant (true) or revoke (false) whitelist status
   */
  event Whitelist(address[] recipients, bool grantOrRevoke);

  /**
   * @notice whitelist or unwhitelist recipients
   * @dev can only be called by the owner
   * @param _recipients An array of addresses to be whitelisted or unwhitelisted
   * @param grantOrRevoke A boolean indicating whether to grant or revoke whitelist status
   */
  function whitelist(address[] calldata _recipients, bool grantOrRevoke) external;

  /**
   * @notice check if a recipient is whitelisted
   * @param _recipient The address to check
   * @return bool indicating if the recipient is whitelisted
   */
  function whitelisted(address _recipient) external view returns (bool);
}
