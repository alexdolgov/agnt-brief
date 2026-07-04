//SPDX-License-Identifier:ISC
pragma solidity 0.8.20;

interface IDepositManager {
  function deposit(address token, uint256 amount, uint256 minShares) external;

  function processPrestakedDeposit(
    address token,
    uint amount,
    uint256 minShares,
    address receiver
  ) external;

  function previewDeposit(
    address token,
    uint256 amount
  )
    external
    view
    returns (
      uint256 shares,
      uint256 depositFees,
      bool isAllowed,
      string memory errorMessage
    );

  function previewMint(
    address token,
    uint256 shares
  )
    external
    view
    returns (
      uint256 amount,
      uint256 depositFees,
      bool isAllowed,
      string memory errorMessage
    );

  function setDepositEnabled(bool _depositEnabled) external;

  function depositEnabled() external view returns (bool);

  function convertToShares(
    address token,
    uint256 amount
  ) external view returns (uint256);

  function convertFromShares(
    address token,
    uint256 shares
  ) external view returns (uint256);
}
