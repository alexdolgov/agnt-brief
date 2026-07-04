// SPDX-License-Identifier: ISC
pragma solidity 0.8.20;

interface ICustodyManager {
  // Events
  event CustodianAdded(
    address indexed source,
    address indexed token,
    address indexed custodian
  );

  event CustodianRemoved(
    address indexed source,
    address indexed token,
    address indexed custodian
  );

  event AssetWithdrawnToCustodian(
    address indexed custodian,
    address indexed token,
    uint256 amount,
    uint256 indexed timestamp
  );

  event AssetDepositedFromCustodian(
    address indexed custodian,
    address indexed token,
    uint256 amount,
    uint256 indexed timestamp
  );

  /**
   * @dev Add a custodian for a specific token
   * @param token The address of the token
   * @param custodian The address of the custodian
   */
  function addCustodian(address token, address custodian) external;

  /**
   * @dev Remove a custodian for a specific token
   * @param token The address of the token
   * @param custodian The address of the custodian
   */
  function removeCustodian(address token, address custodian) external;

  /**
   * @dev Check if a custodian is valid for a token
   * @param token The address of the token
   * @param custodian The address of the custodian
   * @return True if the custodian is valid for the token, false otherwise
   */
  function isCustodian(
    address token,
    address custodian
  ) external view returns (bool);

  /**
   * @dev Get the list of custodians for a specific token
   * @param token The address of the token
   * @return An array of custodian addresses
   */
  function getCustodiansForToken(
    address token
  ) external view returns (address[] memory);

  /**
   * @dev Transfer a specified token and amount to the designated custodian
   * @param custodian The address of the custodian
   * @param token The address of the token to transfer
   * @param amount The amount of tokens to transfer
   */
  function withdrawToCustodian(
    address custodian,
    address token,
    uint256 amount
  ) external;
}
