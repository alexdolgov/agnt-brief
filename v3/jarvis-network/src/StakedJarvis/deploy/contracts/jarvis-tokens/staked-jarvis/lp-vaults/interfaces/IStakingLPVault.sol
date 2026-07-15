// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity >=0.8.0;

import {ISynthereumFinder} from '../../../../core/interfaces/IFinder.sol';

// provides interface to a LP vault
interface ISynthereumStakingLPVault {
  /**
   * @notice Constructor function as per EIP1167
   * @dev Callable only once by factory contract
   * @param admin address of vault admin
   */
  function initialize(address admin) external;

  /**
   * @notice Add an address to the list of delegated users
   * @dev Only vault admin
   * @param user address to add
   */
  function addDelegatedUser(address user) external;

  /**
   * @notice Remove an address from the list of delegated users
   * @dev Only vault admin
   * @param user address to remove
   */
  function removeDelegatedUser(address user) external;

  /**
   * @notice Deposits liquidity leveraging underlying vaultAddress logic and stake into stakedJarvis
   * @param vaultAddress address of specific logic implementation vault
   * @param recipient address recipient of stakedJarvis tokens
   * @param userArgs abi encoded args specific for vault implementation
   * @return stakedJarvisOut amount of staked jarvis minted to vault user
   * @return stakeToken token used as input for staked jarvis
   * @return stakeTokenAmountOut amount of stake token locked for stake jarvi
   * @return refunds eventual amount of tokens refunded from add liquidity
   * @return jarvisAmount amount of jarvis tokens deposited in add liquidity
   */
  function depositAndStake(
    address vaultAddress,
    address recipient,
    bytes calldata userArgs
  )
    external
    payable
    returns (
      uint256 stakedJarvisOut,
      address stakeToken,
      uint256 stakeTokenAmountOut,
      uint256[] memory refunds,
      uint256 jarvisAmount
    );

  /**
   * @notice Unstake from stakedJarvis and withdraw liquidity leveraging underlying vaultAddress logic
   * @param vaultAddress address of specific logic implementation vault
   * @param stakeToken address of the token to receive from staked jarvis
   * @param recipient address recipient of liquidity removed
   * @param stkJarvisAmount amount of stakedJarvis token to unstake
   * @param userArgs abi encoded args specific for vault implementation
   * @return stakeTokenOut amount of stake token unlocked from unstaking staked jarvis
   * @return tokensOut list of token addresses removed from pool liquidity
   * @return amountsOut amount of each token sent to recipient from withdrawing liquidity
   * @return jarvisAmountOut amount of jarvis token sent to recipient from withdrawing liquidity
   */
  function unstakeAndWithdraw(
    address vaultAddress,
    address stakeToken,
    address recipient,
    uint256 stkJarvisAmount,
    bytes calldata userArgs
  )
    external
    returns (
      uint256 stakeTokenOut,
      address[] memory tokensOut,
      uint256[] memory amountsOut,
      uint256 jarvisAmountOut
    );

  /**
   * @notice Claim rewards leveraging underlying vaultAddress logic
   * @param vaultAddress address of specific logic implementation vault
   * @param userArgs abi encoded args specific for vault implementation
   * @return tokenAddresses list of reward token addresses
   * @return amounts list of reward amounts claimed
   */
  function claimRewards(address vaultAddress, bytes calldata userArgs)
    external
    returns (address[] memory tokenAddresses, uint256[] memory amounts);

  /**
   * @notice Allow admin to withdraw eventual token balance not staked
   * @notice this can happen for example if adding liqudity return some extra tokens to the contract
   * @param token address of token to withdraw
   */
  function withdrawToken(address token) external;

  /**
   * @notice Returns all the delegated users of a vault
   * @return List of all delegated users
   */
  function getDelegatedUsers() external view returns (address[] memory);

  /**
   * @notice Returns wether an user is delegated
   * @param user user
   * @return bool
   */
  function isDelegatedUser(address user) external view returns (bool);

  /**
   * @notice Returns the vault admin address
   * @return address of vault admin
   */
  function getVaultAdmin() external view returns (address);

  /**
   * @notice Returns wether an user is the admin
   * @param user user
   * @return bool
   */
  function isVaultAdmin(address user) external view returns (bool);
}
