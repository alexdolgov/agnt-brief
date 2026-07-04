//SPDX-License-Identifier: MIT

pragma solidity 0.8.19;

struct InitParams {
  uint256 depositCap;
  uint256 repaymentFrequency;
  uint256 minimumNoticePeriod;
  uint256 minDeposit;
  uint256 lendAPR;
  address borrower;
  address asset;
  address bondNFT;
  string name;
  string borrowerSymbol;
}

///@dev Defining a Status Enumeration;
enum PoolStatus {
  Active,
  Overdue,
  Default,
  Closed
}

/**
 * @title Interface for a `PoolMaster.sol`;
 */
interface IPoolMaster {
  /// @notice creating a new pool and setting inside parameters;
  function __init(InitParams calldata params, bool kycRequired) external returns (bool);

  /// @notice returning the `deposit cap`;
  function depositCap() external view returns (uint256);

  /// @notice returning the `repayment frequency`;
  function repaymentFrequency() external view returns (uint256);

  /// @notice returning the `minimum notice period`;
  function minimumNoticePeriod() external view returns (uint256);

  /// @notice returning the `lend APR`;
  function lendAPR() external view returns (uint256);

  /// @notice returning the `asset`;
  function asset() external view returns (address);

  /// @notice returning the `symbol`;
  function symbol() external view returns (string memory);

  /// @notice returning the `borrower`;
  function borrower() external view returns (address);

  function checkKycStatus(address _account) external;

  function status() external view returns (PoolStatus);

  function decimals() external view returns (uint8);

  function poolSize() external view returns (uint256);

  function totalSupply() external view returns (uint256);

  function withdrawReward(address _asset, address account) external returns (uint256);

  function supply(uint256 _amount) external;

  function repay() external;

  function repayAll() external;

  function redeem(uint256 _amount) external;

  function redeemBond(uint256 bondId) external;

  function processAuctionStart() external;

  function processDebtClaim(uint256 _payedAmount) external;

  function changeBorrower(address _borrower) external;

  function cancelAuction() external;

  function applyBondRewardCorections(
    uint256 roundDate,
    uint256 bondId,
    address from,
    address to,
    uint256 amount
  ) external;
}
