//Copyright Open Trade Technology Ltd. 2023. All rights reserved.

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "../../interfaces/IPoolStructures.sol";

/**
 * @title A Pool's Withdraw controller
 * @dev Holds state related to withdraw requests, and logic for snapshotting the
 * pool's liquidity reserve at regular intervals, earmarking funds for lenders according
 * to their withdrawal requests.
 */
interface IWithdrawController {
  function version() external pure returns (uint16);

  function pool() external view returns (address);

  function feeVault() external view returns (address);

  function borrowerVault() external view returns (address);

  function borrowerWallet() external view returns (address);

  function withdrawFeeVault(uint256 amount, address receiver) external;

  /*//////////////////////////////////////////////////////////////
                            Balance Views
    //////////////////////////////////////////////////////////////*/
  function drawDownToBorrowerWallet(uint256 amount) external;

  function redemptionState() external view returns (IRedemptionState memory);

  function requestedSharesOf(address owner) external view returns (uint256 shares);

  function requestedAssetsOf(address owner) external view returns (uint256 assets);

  function redeemableSharesOf(address owner) external view returns (uint256 shares);

  function withdrawableAssetsOf(address owner) external view returns (uint256 assets);

  /**
   * @dev Returns the number of shares that are available to be redeemed by
   * the owner in the current block.
   */
  function totalRequestedShares() external view returns (uint256);

  function totalRequestedAssets() external view returns (uint256 assets);

  /**
   * @dev Returns the number of shares that are available to be redeemed
   * overall in the current block.
   */
  function totalRedeemableShares() external view returns (uint256);

  /**
   * @dev Returns the number of `assets` that are available to be withdrawn
   * overall in the current block.
   */
  function totalWithdrawableAssets() external view returns (uint256);

  function releaseRolloverRedemption(address owner) external returns (uint256 shares, uint256 assets);

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

  /**
   * @dev The maximum amount of shares that can be redeemed from the owner
   * balance through a redeem call.
   */
  function maxRedeem(address) external view returns (uint256);

  /**
   * @dev Returns the maximum amount of underlying assets that can be
   * withdrawn from the owner balance with a single withdraw call.
   */
  function maxWithdraw(address) external view returns (uint256);

  /*//////////////////////////////////////////////////////////////
                            Preview Methods
    //////////////////////////////////////////////////////////////*/

  /**
   * @dev Simulates the effects of their redeemption at the current block.
   * Per EIP4626, should round DOWN.
   */
  function previewRedeem(address, uint256) external view returns (uint256);

  /**
   * @dev Simulate the effects of their withdrawal at the current block.
   * Per EIP4626, should round UP on the number of shares required for assets.
   */
  function previewWithdraw(address, uint256) external view returns (uint256);

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
                          Early Withdraw Methods
  //////////////////////////////////////////////////////////////*/

  function requestEarlyRedeem(address owner, uint256 shares) external returns (uint256 principal);

  function acceptEarlyRedeemRequest(address investorAddr) external returns (uint256 shares, uint256 principal);

  function repayEarlyWithdraw(
    address investorAddr,
    uint256 amount,
    IPoolAccountings memory accountings
  )
    external
    returns (
      uint256 principal,
      uint256 repayment,
      uint256 redeemedShares,
      uint256 fees,
      uint256 assetReduction,
      address feeReciever
    );

  function totalEarlyRequestedShares() external view returns (uint256 shares);

  function totalEarlyRequestedAssets() external view returns (uint256 assets);

  function totalEarlyAcceptedShares() external view returns (uint256 shares);

  function totalEarlyAcceptedAssets() external view returns (uint256 assets);

  function earlyRequestedSharesOf(address owner) external view returns (uint256 shares);

  function earlyRequestedAssetsOf(address owner) external view returns (uint256 assets);

  function earlyAcceptedSharesOf(address owner) external view returns (uint256 shares);

  function earlyAcceptedAssetsOf(address owner) external view returns (uint256 assets);

  /*//////////////////////////////////////////////////////////////
                            Withdraw / Redeem
    //////////////////////////////////////////////////////////////*/

  /**
   * @dev Redeems a specific number of shares from owner and send assets of underlying token from the vault to receiver.
   *
   * Per EIP4626, should round DOWN.
   */
  function redeem(address, uint256) external returns (uint256);

  /**
   * @dev Burns shares from owner and send exactly assets token from the vault to receiver.
   * Should round UP for EIP4626.
   */
  function withdraw(address, uint256) external returns (uint256);

  function payFees(uint256) external;

  function repayLoan(uint256) external;
  function crossChainTransferApproveSource(address sourceWalletAddr, uint256 amount) external;
  function crossChainTransferApproveDestination(address destinationWalletAddr, uint256 amount) external;

  function crossChainTransferBurnSource(address destinationWalletAddr, uint256 amount) external;
  function crossChainTransferMintDestination(address destinationWalletAddr, uint256 amount) external;
  function crossChainTransferStatus(address walletAddr) external view returns (uint256 amount, bool isCrossChainSource);
}
