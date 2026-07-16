// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

import { IERC20Metadata } from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";

/// @title  IToken
/// @notice Launcher-deployed ERC20. Fixed supply of 1,000,000,000 with 18 decimals, minted
///         entirely to the bonding curve at construction. EIP-2612 `permit` is available
///         via the concrete contract's ABI.
/// @dev    Pre-graduation, only transfers involving the bonding curve are allowed. The
///         lock is lifted exactly once via {finalizeGraduation} (callable only by the
///         curve) and is permanent thereafter.
interface IToken is IERC20Metadata {
    /// @notice The bonding curve that received the full mint and acts as the pre-graduation
    ///         counterparty.
    function bondingCurve() external view returns (address);

    /// @notice The current creator (delegates to {IBondingCurve.CREATOR} on the curve).
    function creator() external view returns (address);

    function factory() external view returns (address);

    /// @notice True iff the transfer lock has been lifted.
    function graduated() external view returns (bool);

    /// @notice Called exactly once by the bonding curve during {IBondingCurve.graduate} to
    ///         lift the pre-graduation transfer lock permanently.
    function finalizeGraduation() external;

    /* -------------------------------------------------------------------------- */
    /*                         ERC-7572 CONTRACT METADATA                         */
    /* -------------------------------------------------------------------------- */

    /// @notice ERC-7572 contract-level metadata URI. Set once at construction via the
    ///         factory handshake; no setter exists.
    function contractURI() external view returns (string memory);

    /* -------------------------------------------------------------------------- */
    /*                          ENS REVERSE RESOLUTION                            */
    /* -------------------------------------------------------------------------- */

    /// @notice True iff the reverse ENS name has been set. Single-shot.
    function ensReverseSet() external view returns (bool);

    /// @notice Set the reverse ENS name for this token's address. Callable exactly
    ///         once, by the current creator only. Wallets and explorers that perform
    ///         reverse-resolution validation will display this name only if the
    ///         forward `addr(node)` lookup of `name` resolves back to this token.
    function setEnsReverseName(string calldata name) external;
}
