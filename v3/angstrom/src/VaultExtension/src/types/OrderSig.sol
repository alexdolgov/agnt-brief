// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.10;

/// @notice ABI-encoded blob the curator forwards as the `signature` argument to
/// `IVaultExtension.isValidSignature`, used by intent-based swap routers (e.g. CoWSwap).
/// @dev Encoded as a single dynamic struct: the on-wire bytes start with a 32-byte offset
/// followed by the seven inner fields. Must stay in lockstep with the off-chain signer
/// (cefi `sign_for_vault`).
struct OrderSig {
    address sellToken;
    address buyToken;
    address receiver;
    uint256 sellAmount;
    uint256 minBuyAmount;
    uint256 maxLossFromSwap;
    bytes ecdsaSig;
}
