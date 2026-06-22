// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import {OFT} from "@layerzerolabs/oft-evm/contracts/OFT.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

/**
 * @title Brush Token Contract
 * @dev Implementation of the PaintSwap (BRUSH) token with LayerZero's OFT standard.
 * This token can be transferred across different chains using LayerZero's cross-chain messaging protocol.
 */
contract Brush is OFT {
  /// @dev Thrown when array lengths don't match in bulk operations
  error LengthMismatch();

  /// @dev Token name constant
  string private constant NAME = "PaintSwap";
  /// @dev Token symbol constant
  string private constant SYMBOL = "BRUSH";

  /**
   * @dev Constructor initializes the token with LayerZero endpoint
   * @param lzEndpoint The LayerZero endpoint contract address
   */
  constructor(address lzEndpoint) OFT(NAME, SYMBOL, lzEndpoint, _msgSender()) Ownable(_msgSender()) {}

  /**
   * @dev Internal function to mint tokens when receiving from another chain
   * @param to Address to mint tokens to
   * @param amount Amount of tokens to mint
   * @param srcEid Source chain endpoint ID (unused)
   * @return Amount of tokens minted
   */
  function _credit(address to, uint256 amount, uint32 srcEid) internal override returns (uint256) {
    _mint(to, amount);
    return amount;
  }

  /**
   * @dev Internal function to burn tokens when sending to another chain
   * @param from Address to burn tokens from
   * @param amount Amount of tokens to burn
   * @param minAmount Minimum amount to send (unused)
   * @param dstEid Destination chain endpoint ID (unused)
   * @return tuple of (amount burned, amount to send)
   */
  function _debit(
    address from,
    uint256 amount,
    uint256 minAmount,
    uint32 dstEid
  ) internal override returns (uint256, uint256) {
    _burn(from, amount);
    return (amount, amount);
  }

  /**
   * @dev Burns tokens from the caller's balance
   * @param amount Amount of tokens to burn
   */
  function burn(uint256 amount) external {
    _burn(_msgSender(), amount);
  }

  /**
   * @dev Burns tokens from a specified account (requires approval)
   * @param account Address to burn tokens from
   * @param amount Amount of tokens to burn
   */
  function burnFrom(address account, uint256 amount) public {
    _spendAllowance(account, _msgSender(), amount);
    _burn(account, amount);
  }

  /**
   * @dev Performs bulk transfers from the sender to multiple recipients
   * @param tos Array of recipient addresses (address(0) means burn)
   * @param amounts Array of amounts to transfer
   * @notice If a recipient address is address(0), tokens will be burned instead of transferred
   */
  function transferBulk(address[] calldata tos, uint256[] calldata amounts) external {
    require(tos.length == amounts.length, LengthMismatch());
    for (uint256 i = 0; i < tos.length; ++i) {
      if (tos[i] != address(0)) {
        _transfer(_msgSender(), tos[i], amounts[i]);
      } else {
        _burn(_msgSender(), amounts[i]);
      }
    }
  }

  /**
   * @dev Performs bulk transfers from a single address to multiple recipients
   * @param from Source address to transfer tokens from
   * @param tos Array of recipient addresses (address(0) means burn)
   * @param amounts Array of amounts to transfer
   * @notice If a recipient address is address(0), tokens will be burned instead of transferred
   * @notice Caller must have sufficient allowance from the 'from' address
   */
  function transferFromBulk(address from, address[] calldata tos, uint256[] calldata amounts) external {
    require(tos.length == amounts.length, LengthMismatch());
    uint256 totalAmount;
    for (uint256 i = 0; i < tos.length; ++i) {
      totalAmount += amounts[i];
      if (tos[i] != address(0)) {
        _transfer(from, tos[i], amounts[i]);
      } else {
        _burn(from, amounts[i]);
      }
    }
    _spendAllowance(from, _msgSender(), totalAmount);
  }
}
