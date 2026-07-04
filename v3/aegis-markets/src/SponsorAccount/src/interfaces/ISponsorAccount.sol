// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {IERC1271} from "@openzeppelin/contracts/interfaces/IERC1271.sol";
import {IERC6551Account} from "./IERC6551Account.sol";
import {IERC6551Executable} from "./IERC6551Executable.sol";

/// @title SponsorAccount External Interface (LSN v1)
/// @notice Canonical surface for sponsor token-bound accounts.
/// @dev Combines ERC-6551 account semantics with execution and EIP-1271 signature validation.
interface ISponsorAccount is IERC6551Account, IERC6551Executable, IERC1271 {
    // -------- Errors --------

    /// @notice Thrown when caller is not the account owner.
    error NotAuthorized();

    /// @notice Thrown when a reentrant `execute` call is attempted.
    error Reentrancy();

    /// @notice Thrown when a low-level call fails without revert data.
    error ExecutionFailed();

    // -------- Read: Ownership / Meta --------

    /// @notice Resolve the current owner of the bound NFT for this account.
    /// @return accountOwner Current ERC-721 owner for the bound token on the deployment chain.
    function owner() external view returns (address accountOwner);

    /// @notice Current execution nonce.
    /// @dev Increments after each successful `execute` call.
    /// @return currentNonce Monotonic nonce value.
    function nonce() external view returns (uint256 currentNonce);

    /// @notice ERC-165 interface support check.
    /// @param interfaceId ERC-165 interface identifier.
    /// @return supported True if interface is implemented.
    function supportsInterface(bytes4 interfaceId) external view returns (bool supported);
}
