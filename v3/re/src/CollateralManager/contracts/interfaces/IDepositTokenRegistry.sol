//SPDX-License-Identifier: ISC
pragma solidity 0.8.20;

interface IDepositTokenRegistry {
  struct TokenInfo {
    bool isAccepted;
    uint256 fixedDepositFee;
    uint256 percentageDepositFee;
    address priceOracle;
    bool paused;
    bool eligibleAsCollateral;
    uint8 decimals;
    string name;
    string symbol;
    uint256 defaultSlippageTolerance;
    uint256 minDeposit;
  }

  function isDepositEnabled(address token) external view returns (bool);
  function getTokenInfo(
    address token
  )
    external
    view
    returns (
      bool isAccepted,
      uint256 fixedDepositFee,
      uint256 percentageDepositFee,
      address priceOracle,
      bool paused,
      string memory name,
      string memory symbol,
      uint256 slippage,
      uint256 minDeposit,
      uint256 decimals,
      bool nativeToken
    );

  /// @notice Returns only the essential token information needed for share price calculations
  /// @param token The address of the token to query
  /// @return isAccepted Whether the token is accepted
  /// @return paused Whether the token is paused
  /// @return priceOracle The address of the price oracle for this token
  /// @return decimals The number of decimals for the token
  function getTokenPriceInfo(
    address token
  )
    external
    view
    returns (bool isAccepted, bool paused, address priceOracle, uint8 decimals);

  function getAcceptedTokens() external view returns (address[] memory);

  function previewMintFees(
    address token,
    uint256 amount
  ) external view returns (uint256);

  function previewDepositFees(
    address token,
    uint256 amount
  ) external view returns (uint256);

  function isEligibleAsCollateral(address token) external view returns (bool);

  function getCollateralTokens() external view returns (address[] memory);

  function getWrappedNative() external view returns (address);
}
