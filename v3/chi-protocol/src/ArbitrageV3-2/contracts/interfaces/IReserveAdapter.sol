// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IReserveAdapter {
  enum Pool {
    UNISWAP_V2,
    UNISWAP_V3,
    CURVE
  }

  event RescueReserves();
  event SetPoolType(Pool indexed poolType);
  event Deposit(uint256 amount);
  event ClaimRewards(address receiver, uint256 amount);

  error NotReserveHolder();

  /// @notice Gets reserve value in USD
  /// @return reserveValue Reserve value in USD
  function getReserveValue() external view returns (uint256 reserveValue);

  /// @notice Rescue reserves from contract
  /// @dev Only owner can call this function
  function rescueReserves() external;

  /// @notice Sets pool type
  /// @param _poolType Pool type
  /// @dev Only owner can call this function
  function setPoolType(Pool _poolType) external;

  /// @notice Deposit asset to reserve
  /// @param amount Amount of asset to deposit
  function deposit(uint256 amount) external;

  /// @notice Claim rewards from reserve
  /// @param receiver Receiver of rewards
  /// @return amount Amount of rewards claimed
  function claimRewards(address receiver) external returns (uint256 amount);

  /// @notice Swaps `assetIn` for `assetOut`
  /// @param assetIn Address of the token to swap
  /// @param amountIn Amount of `assetIn` to swap
  /// @param minAmountOut Minimum amount of `assetOut` to receive
  /// @return amountOut Amount of `assetOut` received
  function swapExactAmountIn(
    address assetIn,
    uint256 amountIn,
    uint256 minAmountOut
  ) external returns (uint256 amountOut);

  /// @notice Swaps `assetIn` for `assetOut`
  /// @param assetOut Address of the token to receive
  /// @param amountOut Amount of `assetOut` to receive
  /// @param maxAmountIn Maximum amount of `assetIn` to swap
  /// @return amountIn Amount of `assetIn` swapped
  function swapExactAmountOut(
    address assetOut,
    uint256 amountOut,
    uint256 maxAmountIn
  ) external returns (uint256 amountIn);
}
