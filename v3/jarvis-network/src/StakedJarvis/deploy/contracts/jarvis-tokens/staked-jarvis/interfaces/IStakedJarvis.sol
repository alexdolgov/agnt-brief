// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity 0.8.9;

interface IStakedJarvis {
  struct UserDeposit {
    uint256 stakedTokenAmount;
    uint256 stakedJarvisAmount;
  }

  /**
   * @notice stakes an amount of a specific token to receive staked Jarvis token according to a rate
   * @dev token needs to be whitelisted
   * @param stakeToken token address to stake
   * @param stakeTokenAmount amount of token to stake
   * @param jarvisAmount amount of jarvis tokens deposited for receiving the stakeToken
   * @param recipient address receiving staked jarvis tokens
   * @return stakedJarvisOut amount of staked jarvis minted to msg sender
   */
  function stake(
    address stakeToken,
    uint256 stakeTokenAmount,
    uint256 jarvisAmount,
    address recipient
  ) external returns (uint256 stakedJarvisOut);

  /**
   * @notice unstakes an amount of staked Jarvis token to receive back the corresponding staked token
   * @dev token needs to be whitelisted
   * @param token token address to unstake
   * @param amount amount of staked jarvis token to unstake
   * @return tokenAmountOut amount of unstaked token transferred to msg sender
   */
  function unstake(address token, uint256 amount)
    external
    returns (uint256 tokenAmountOut);

  /**
   * @notice pause contract from minting staked jarvis
   * @dev only contract maintainer can pause
   */
  function pauseStake() external;

  /**
   * @notice remove pause from minting staked jarvis
   * @dev only contract maintainer can unpause
   */
  function unpauseStake() external;

  /**
   * @notice return the list of supported tokens to be staked for staked jarvis
   * @return list of token addresses
   */
  function getSupportedTokens() external view returns (address[] memory);

  /**
   * @notice check if token is supported to be staked for staked jarvis
   * @param token token address to check
   * @return if a token is supported or not
   */
  function isTokenSupported(address token) external view returns (bool);

  /**
   * @notice return the exchange rate between a token and stake jarvis
   * @return token to retrieve rate
   */
  function getTokenRate(address token) external view returns (uint256);

  /**
   * @notice return the amount of deposited tokens and staked jarvis of a user
   * @param user the user to check
   * @param token the deposited token to check
   * @return UserDeposit struct
   */
  function getUserDeposit(address user, address token)
    external
    view
    returns (UserDeposit memory);
}
