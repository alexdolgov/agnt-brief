// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.29;

import {IDecoderAndSanitizer} from "../interfaces/IDecoderAndSanitizer.sol";

/// @title ERC20DecoderAndSanitizer
/// @notice Decodes and sanitizes calldata for ERC20 approve and transfer.
///         Address constraints are enforced by the approval leaf, not by the sanitizer.
contract ERC20DecoderAndSanitizer is IDecoderAndSanitizer {
    // ── Errors ──────────────────────────────────────────────────────────────

    error UnsupportedSelector(bytes4 selector);

    // ── ERC20 selectors ─────────────────────────────────────────────────────

    // approve(address spender, uint256 amount)
    bytes4 internal constant APPROVE_SELECTOR = 0x095ea7b3;
    // transfer(address to, uint256 amount)
    bytes4 internal constant TRANSFER_SELECTOR = 0xa9059cbb;

    /// @inheritdoc IDecoderAndSanitizer
    function decode(
        bytes calldata calldata_,
        bytes calldata /* auxData */,
        address /* caller */
    ) external pure returns (bytes memory) {
        bytes4 selector = bytes4(calldata_[:4]);

        if (selector == APPROVE_SELECTOR) return _approve(calldata_);
        if (selector == TRANSFER_SELECTOR) return _transfer(calldata_);

        revert UnsupportedSelector(selector);
    }

    // ── Internal Decoders ───────────────────────────────────────────────────

    /// @dev approve(address spender, uint256 amount)
    function _approve(bytes calldata calldata_) internal pure returns (bytes memory) {
        address spender = _extractAddress(calldata_, 0);
        return abi.encodePacked(spender);
    }

    /// @dev transfer(address to, uint256 amount)
    function _transfer(bytes calldata calldata_) internal pure returns (bytes memory) {
        address to = _extractAddress(calldata_, 0);
        return abi.encodePacked(to);
    }

    /// @dev Extracts an address from calldata at the given parameter index
    function _extractAddress(
        bytes calldata calldata_,
        uint8 paramIndex
    ) internal pure returns (address) {
        uint256 offset = 4 + uint256(paramIndex) * 32;
        require(calldata_.length >= offset + 32, "calldata too short");
        return address(uint160(uint256(bytes32(calldata_[offset:offset + 32]))));
    }
}
