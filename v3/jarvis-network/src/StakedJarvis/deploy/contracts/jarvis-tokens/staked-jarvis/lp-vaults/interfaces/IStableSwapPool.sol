// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity >=0.8.0;

interface IStableSwapPool {
  /**
   * @notice Deposit coins into the pool
   * @param _amounts List of amounts of coins to deposit
   * @param _min_mint_amount Minimum amount of LP tokens to mint from the deposit
   * @param  use_eth if native token
   * @return Amount of LP tokens received by depositing
   */
  function add_liquidity(
    uint256[2] memory _amounts,
    uint256 _min_mint_amount,
    bool use_eth
  ) external payable returns (uint256);

  /**
   * @notice Withdraw coins from the pool
   * @dev Withdrawal amounts are based on current deposit ratios
   * @param _burn_amount Quantity of LP tokens to burn in the withdrawal
   * @param _min_amounts Minimum amounts of underlying coins to receive
   * @param  use_eth if native token
   */

  function remove_liquidity(
    uint256 _burn_amount,
    uint256[2] memory _min_amounts,
    bool use_eth,
    address receiver
  ) external;

  /**
   * @notice Perform an exchange between two coins
   * @dev Withdrawal amounts are based on current deposit ratios
   * @param i: Index value for the coin to send
   * @param j: Index value of the coin to receive
   * @param _dx: Amount of i being exchanged
   * @param _min_dy: Minimum amount of j to receive
   * @param  use_eth if native token
   * @param _receiver Address that receives the withdrawn coins
   * @return Returns the actual amount of coin j received
   */
  function exchange(
    int128 i,
    int128 j,
    uint256 _dx,
    uint256 _min_dy,
    bool use_eth,
    address _receiver
  ) external payable returns (uint256);

  function token() external view returns (address);

  function coins(uint256 index) external view returns (address);
}
