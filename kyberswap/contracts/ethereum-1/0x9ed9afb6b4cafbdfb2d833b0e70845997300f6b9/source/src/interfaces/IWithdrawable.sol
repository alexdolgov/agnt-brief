// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {IERC1155} from 'openzeppelin-contracts/contracts/token/ERC1155/IERC1155.sol';
import {IERC20, SafeERC20} from 'openzeppelin-contracts/contracts/token/ERC20/utils/SafeERC20.sol';
import {IERC721} from 'openzeppelin-contracts/contracts/token/ERC721/IERC721.sol';

/**
 * @title IWithdrawable
 * @notice Interface for the Withdrawable contract
 */
interface IWithdrawable {
  error Unauthorized();

  /// @notice Emitted when some of ERC20 tokens are withdrawd
  event WithdrawERC20s(address[] tokens, uint256[] amounts, address payable[] recipients);

  /// @notice Emitted when some of ERC721 tokens are withdrawd
  event WithdrawERC721s(IERC721[] tokens, uint256[] tokenIds, address recipient);

  /// @notice Emitted when some of ERC1155 tokens are withdrawd
  event WithdrawERC1155s(
    IERC1155[] tokens, uint256[] tokenIds, uint256[] amounts, address recipient
  );

  /**
   * @notice withdraw specified ERC20 tokens and transfers them to a recipient.
   * @dev This function allows the caller to withdraw multiple ERC20 tokens and send them to a specified recipient.
   * @param tokens An array of ERC20 token contract addresses to be withdrawd.
   * @param amounts An array of token amounts corresponding to each token in the `tokens` array.
   * @param recipients The address of the recipients to receive the withdrawd tokens. Must be a payable address.
   */
  function withdrawERC20s(
    address[] calldata tokens,
    uint256[] memory amounts,
    address payable[] calldata recipients
  ) external;

  /**
   * @notice withdraw multiple ERC721 tokens to a specified recipient.
   * @dev This function transfers ownership of the specified ERC721 tokens to the recipient.
   * @param tokens An array of IERC721 token contracts to withdraw.
   * @param tokenIds An array of token IDs corresponding to the tokens being withdrawd.
   * @param recipient The address of the recipient to whom the tokens will be withdrawd.
   */
  function withdrawERC721s(
    IERC721[] calldata tokens,
    uint256[] calldata tokenIds,
    address recipient
  ) external;

  /**
   * @notice withdraw multiple ERC1155 tokens to a specified recipient.
   * @dev This function transfers ownership of the specified ERC1155 tokens to the recipient.
   * @param tokens An array of IERC1155 token contracts to withdraw.
   * @param tokenIds An array of token IDs corresponding to the tokens being withdrawd.
   * @param amounts An array of amounts specifying the quantity of each token to withdraw.
   * @param recipient The address of the recipient to whom the tokens will be withdrawd.
   */
  function withdrawERC1155s(
    IERC1155[] calldata tokens,
    uint256[] calldata tokenIds,
    uint256[] memory amounts,
    address recipient
  ) external;
}
