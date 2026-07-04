/**
 *  EQUALIZER EXCHANGE
 *  The New Liquidity Hub of XChain Decentralized Finance!
 *  https://equalizer.exchange  (Dapp)
 *  https://discord.gg/MaMhbgHMby   (Community)
 *
 *  SPDX-License-Identifier: UNLICENSED
 *
 *
 *  Contributors:
 *   -   543 (Sam), ftm.guru, Eliteness.network & Equalizer.exchange
 *
 *
 */

pragma solidity 0.8.9;

contract ScaleAirdrop {

  /// ============ User Functions ============

  /// @notice Allows claiming tokens if address is part of merkle tree
  /// @param to address of claimee
  /// @param amount of tokens owed to claimee
  /// @param proof merkle proof to prove address and amount are in tree
  function claimAirdrop(address to, uint256 amount, bytes32[] calldata proof) external {
  }
}