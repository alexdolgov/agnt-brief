// SPDX-License-Identifier: MIT OR Apache-2.0

pragma solidity ^0.8.0;

interface IZkLink {

  struct RegisteredToken {
    bool registered; // whether token registered to ZkLink or not, default is false
    bool paused; // whether token can deposit to ZkLink or not, default is false
    address tokenAddress; // the token address
    uint8 decimals; // the token decimals of layer one
  }

  /// @notice Acceptor accept a eth fast withdraw, acceptor will get a fee for profit
  /// @param receiver User receive token from acceptor (the owner of withdraw operation)
  /// @param amount The amount of withdraw operation
  /// @param withdrawFeeRate Fast withdraw fee rate taken by acceptor
  /// @param accountIdOfNonce Account that supply nonce, may be different from accountId
  /// @param subAccountIdOfNonce SubAccount that supply nonce
  /// @param nonce SubAccount nonce, used to produce unique accept info
  function acceptETH(
    address payable receiver,
    uint128 amount,
    uint16 withdrawFeeRate,
    uint32 accountIdOfNonce,
    uint8 subAccountIdOfNonce,
    uint32 nonce
  ) external payable;

  /// @notice Acceptor accept a erc20 token fast withdraw, acceptor will get a fee for profit
  /// @param receiver User receive token from acceptor (the owner of withdraw operation)
  /// @param tokenId Token id
  /// @param amount The amount of withdraw operation
  /// @param withdrawFeeRate Fast withdraw fee rate taken by acceptor
  /// @param accountIdOfNonce Account that supply nonce, may be different from accountId
  /// @param subAccountIdOfNonce SubAccount that supply nonce
  /// @param nonce SubAccount nonce, used to produce unique accept info
  function acceptERC20(
    address receiver,
    uint16 tokenId,
    uint128 amount,
    uint16 withdrawFeeRate,
    uint32 accountIdOfNonce,
    uint8 subAccountIdOfNonce,
    uint32 nonce
  ) external;

  /// @notice Withdraw token to L1 for user by gateway
  /// @param owner User receive token on L1
  /// @param token Token address
  /// @param amount The amount(recovered decimals) of withdraw operation
  /// @param fastWithdrawFeeRate Fast withdraw fee rate taken by acceptor
  /// @param accountIdOfNonce Account that supply nonce, may be different from accountId
  /// @param subAccountIdOfNonce SubAccount that supply nonce
  /// @param nonce SubAccount nonce, used to produce unique accept info
  function withdrawToL1(
    address owner,
    address token,
    uint128 amount,
    uint16 fastWithdrawFeeRate,
    uint32 accountIdOfNonce,
    uint8 subAccountIdOfNonce,
    uint32 nonce
  ) external payable;

  /// @notice A map of registered token infos
  function tokens(
    uint16 tokenId
  ) external view returns (RegisteredToken memory);

  /// @notice  Withdraws tokens from zkLink contract to the owner
  /// @param _owner Address of the tokens owner
  /// @param _tokenId Token id
  /// @param _amount Amount to withdraw to request.
  /// @return The actual withdrawn amount
  /// @dev NOTE: We will call ERC20.transfer(.., _amount), but if according to internal logic of ERC20 token zkLink contract
  /// balance will be decreased by value more then _amount we will try to subtract this value from user pending balance
  function withdrawPendingBalance(
    address payable _owner,
    uint16 _tokenId,
    uint128 _amount
  ) external returns (uint128);
}
