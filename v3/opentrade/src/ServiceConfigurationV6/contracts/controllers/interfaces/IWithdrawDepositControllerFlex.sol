//Copyright Open Trade Technology Ltd. 2023. All rights reserved.

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "../../interfaces/IPoolFlexStructures.sol";

/**
 * @title A Pool's Withdraw controller
 * @dev Holds state related to withdraw requests, and logic for snapshotting the
 * pool's liquidity reserve at regular intervals, earmarking funds for lenders according
 * to their withdrawal requests.
 */
interface IWithdrawDepositControllerFlex {
  function version() external pure returns (uint16);

  function poolAddr() external view returns (address);

  function pool() external view returns (address); // back compatible

  function feeVaultAddr() external view returns (address);

  function borrowerVaultAddr() external view returns (address);

  function lenderTotals(address lender) external view returns (IPoolLenderTotals memory);

  function borrowerVault() external view returns (address); // back compatible

  function borrowerWallet() external view returns (address);

  function borrowerWalletAddr() external view returns (address);

  function dailyInterestAccural(uint256 currentDay) external returns (uint256 inflows);

  function deposit(
    address lender,
    uint256 assets,
    uint256 exchangeRate,
    uint256 interestRate
  ) external returns (uint256 inflows, uint256 shares, uint256 transferInDayTimestamp);

  /*//////////////////////////////////////////////////////////////
                            Balance Views
    //////////////////////////////////////////////////////////////*/
  function drawDownToBorrowerWallet(uint256 amount) external;

  function requestedSharesOf(address owner) external view returns (uint256 shares);

  function requestedAssetsOf(address owner) external view returns (uint256 assets);

  function totalAssetsTransitioningIn() external view returns (uint256 assets);

  function totalSharesTransitioningIn() external view returns (uint256 shares);

  /**
   * @dev Returns the number of shares that are available to be redeemed by
   * the owner in the current block.
   */
  function totalRequestedShares() external view returns (uint256 shares);

  function totalRequestedAssets() external view returns (uint256 assets);

  /*//////////////////////////////////////////////////////////////
                            Max Methods
    //////////////////////////////////////////////////////////////*/

  /**
   * @dev Returns the maximum number of `shares` that can be
   * requested to be redeemed from the owner balance with a single
   * `requestRedeem` call in the current block.
   *
   * Note: This is equivalent of EIP-4626 `maxRedeem`
   */
  function maxRedeemRequest(address) external view returns (uint256);

  /*//////////////////////////////////////////////////////////////
                            Request Methods
    //////////////////////////////////////////////////////////////*/

  /**
   * @dev Requests redeeming a specific number of `shares` and `assets` from
   * the pool.
   *
   * NOTE: The pool is responsible for handling any fees, and for providing
   * the proper shares/assets ratio.
   */
  function performRequest(address, uint256, uint256) external;

  /*//////////////////////////////////////////////////////////////
                            Withdraw / Redeem
    //////////////////////////////////////////////////////////////*/

  function totalAssetsDueForWithdraws() external view returns (uint256);

  function releaseWithdrawal(uint256 eventId) external returns (IPoolLenderWithdrawEvent memory ev);

  function withdrawEvents() external view returns (IPoolLenderWithdrawEvent[] memory);

  function repayLoans(uint256 assets) external;

  function tokenTransfer(address from, address to, uint256 assetAmount) external;

  function crossChainTransferApproveSource(address sourceWalletAddr, uint256 amount) external;
  function crossChainTransferApproveDestination(address destinationWalletAddr, uint256 amount) external;

  function crossChainTransferBurnSource(address destinationWalletAddr, uint256 amount) external;
  function crossChainTransferMintDestination(address destinationWalletAddr, uint256 amount) external;

  function crossChainTransferStatus(address walletAddr) external view returns (uint256 amount, bool isCrossChainSource);
}
