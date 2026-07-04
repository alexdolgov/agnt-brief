// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;

import {IERC20Metadata} from '../../../../@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol';

/**
 * @title Super token interface
 */
interface ISuperToken is IERC20Metadata {
  /**
   * @dev Return the underlying token contract
   * @return tokenAddr Underlying token address
   */
  function getUnderlyingToken() external view returns (address tokenAddr);

  /**
   * @dev Return the underlying token decimals
   * @return underlyingDecimals Underlying token decimals
   */
  function getUnderlyingDecimals()
    external
    view
    returns (uint8 underlyingDecimals);

  /**
   * @dev Return the underlying token conversion rate
   * @param amount Number of tokens to be upgraded (in 18 decimals)
   * @return underlyingAmount The underlying token amount after scaling
   * @return adjustedAmount The super token amount after scaling
   */
  function toUnderlyingAmount(uint256 amount)
    external
    view
    returns (uint256 underlyingAmount, uint256 adjustedAmount);

  /**
   * @dev Upgrade ERC20 to SuperToken.
   * @param amount Number of tokens to be upgraded (in 18 decimals)
   *
   * @custom:note It will use `transferFrom` to get tokens. Before calling this
   * function you should `approve` this contract
   */
  function upgrade(uint256 amount) external;

  /**
   * @dev Upgrade ERC20 to SuperToken and transfer immediately
   * @param to The account to receive upgraded tokens
   * @param amount Number of tokens to be upgraded (in 18 decimals)
   * @param userData User data for the TokensRecipient callback
   *
   * @custom:note It will use `transferFrom` to get tokens. Before calling this
   * function you should `approve` this contract
   *
   * @custom:warning
   * - there is potential of reentrancy IF the "to" account is a registered ERC777 recipient.
   * @custom:requirements
   * - if `userData` is NOT empty AND `to` is a contract, it MUST be a registered ERC777 recipient
   *   otherwise it reverts.
   */
  function upgradeTo(
    address to,
    uint256 amount,
    bytes calldata userData
  ) external;

  /**
   * @dev Downgrade SuperToken to ERC20.
   * @dev It will call transfer to send tokens
   * @param amount Number of tokens to be downgraded
   */
  function downgrade(uint256 amount) external;

  /**
   * @dev Downgrade SuperToken to ERC20 and transfer immediately
   * @param to The account to receive downgraded tokens
   * @param amount Number of tokens to be downgraded (in 18 decimals)
   */
  function downgradeTo(address to, uint256 amount) external;
}
