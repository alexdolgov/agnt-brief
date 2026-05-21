// apps/contracts/contracts/utils/TokenAllowance.sol

// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import {
  IERC20,
  SafeERC20
} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

/**
 * @title TokenAllowance
 * @dev An abstract utility contract to manage and execute allowance-based token transfers.
 * It allows a contract to pull funds from pre-approved "token wallets" on a
 * per-ID basis, rather than holding the tokens itself.
 */
abstract contract TokenAllowance {
  using SafeERC20 for IERC20;

  // ===================== STATE =====================

  /// @dev Maps an ID to the designated wallet that holds tokens for that ID.
  mapping(uint256 => address) private _tokenWallets;

  // ==================== EVENTS =====================

  /**
   * @dev Emitted when the token wallet for a specific ID is set or updated.
   * @param id The identifier for the campaign or distribution.
   * @param tokenWallet The address of the wallet holding the tokens.
   */
  event TokenWalletSet(uint256 indexed id, address indexed tokenWallet);

  // ==================== ERRORS =====================

  /// @dev Reverts if the token wallet address is the zero address.
  error InvalidTokenWallet();
  /// @dev Reverts if no token wallet has been configured for the given ID.
  error TokenWalletNotSet(uint256 id);

  // ============ PUBLIC VIEW FUNCTIONS ============

  /**
   * @notice Retrieves the token wallet address for a specific ID.
   * @param id The identifier for the campaign or distribution.
   * @return The address of the token wallet for this ID.
   */
  function getTokenWallet(uint256 id) public view virtual returns (address) {
    address tokenWallet = _tokenWallets[id];
    if (tokenWallet == address(0)) {
      revert TokenWalletNotSet(id);
    }
    return tokenWallet;
  }

  // ======== INTERNAL MANAGEMENT FUNCTIONS ========

  /**
   * @dev Sets or updates the token wallet for a specific ID.
   * This function should be access-controlled in the inheriting contract (e.g., `onlyOwner`).
   * @param id The identifier for the campaign or distribution.
   * @param tokenWallet The address of the wallet that will provide tokens.
   */
  function _setTokenWallet(uint256 id, address tokenWallet) internal virtual {
    if (tokenWallet == address(0)) {
      revert InvalidTokenWallet();
    }
    _tokenWallets[id] = tokenWallet;
    emit TokenWalletSet(id, tokenWallet);
  }

  /**
   * @dev Executes an ERC20 token transfer from the configured token wallet for a given ID.
   * @notice This is the core utility function. It requires that the token wallet for the `id`
   * has approved this contract to spend the specified `token`.
   * @param id The identifier used to look up the correct token wallet.
   * @param token The ERC20 token contract address.
   * @param recipient The address receiving the tokens.
   * @param amount The amount of tokens to transfer.
   */
  function _transferFromTokenWallet(
    uint256 id,
    IERC20 token,
    address recipient,
    uint256 amount
  ) internal virtual {
    address tokenWallet = getTokenWallet(id);
    token.safeTransferFrom(tokenWallet, recipient, amount);
  }
}
