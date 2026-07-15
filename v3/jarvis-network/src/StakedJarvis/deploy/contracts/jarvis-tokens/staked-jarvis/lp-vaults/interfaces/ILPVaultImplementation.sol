// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity >=0.8.0;

// provides interface a LP vault implementation must implement
interface ILPVaultImplementation {
  /**
   * @notice Deposits liquidity into protocol and stake it into underlying strategy
   * @param vaultArgs abi encoded args related to implementation storage - coming from StakingLPVaultRegistry
   * @param userArgs abi encoded args specific of user call (ie amounts)
   * @param msgSender Address of the user depositing
   * @return stakeTokenAmountOut amount of stake tokens to stake into staked jarvis
   * @return refundAmounts array of amounts of tokens sent back to user
   * @return stakeToken address of the token to be staked into stake jarvis
   * @return jarvisAmount amount of Jarvis token deposited
   */
  function depositAndStakeLiquidity(
    bytes calldata vaultArgs,
    bytes calldata userArgs,
    address msgSender
  )
    external
    payable
    returns (
      uint256 stakeTokenAmountOut,
      uint256[] memory refundAmounts,
      address stakeToken,
      uint256 jarvisAmount
    );

  /**
   * @notice Unstake from strategy and withdraw liquidity from protocol
   * @param lpTokenAmount amount of lp token to withdraw
   * @param recipient address receiving token from withdraw liquidity
   * @param vaultArgs abi encoded args related to implementation storage - coming from StakingLPVaultRegistry
   * @param userArgs abi encoded args specific of user call (ie amounts)
   * @return stakeTokenUsed stake token used to unstake in gauge - to check consinstency with input one
   * @return tokensOut list of token addresses removed from pool liquidity
   * @return amountsOut amount of each token sent to recipient from withdrawing liquidity
   * @return jarvisAmountOut amount of jarvis token sent to recipient from withdraw liquidity
   */
  function unstakeAndWithdraw(
    uint256 lpTokenAmount,
    address recipient,
    bytes calldata vaultArgs,
    bytes calldata userArgs
  )
    external
    returns (
      address stakeTokenUsed,
      address[] memory tokensOut,
      uint256[] memory amountsOut,
      uint256 jarvisAmountOut
    );

  /**
   * @notice Claim rewards from liquidity protocol
   * @param vaultArgs abi encoded args related to implementation storage - coming from StakingLPVaultRegistry
   * @param userArgs abi encoded args specific of user call
   * @return tokenAddresses list of reward token addresses
   * @return amounts list of reward amounts claimed
   */
  function claimRewards(bytes calldata vaultArgs, bytes calldata userArgs)
    external
    returns (address[] memory tokenAddresses, uint256[] memory amounts);
}
