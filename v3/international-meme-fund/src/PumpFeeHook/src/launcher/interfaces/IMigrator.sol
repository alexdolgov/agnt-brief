// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

/// @title  IMigrator
/// @notice Seam between the bonding curve and whichever AMM the launcher graduates to.
///         Kept minimal so the curve does not take a hard dependency on any specific AMM
///         types; concrete implementations atomically initialize the pool, mint the LP
///         position, and lock it.
/// @dev    Implementers MUST:
///           - accept `tokenAmount` of `token` via prior {IERC20.approve} from the caller;
///           - accept the seed ETH via `msg.value`;
///           - mint a liquidity position and lock it at a non-recoverable sink;
///           - revert if any sub-step fails.
interface IMigrator {
    /// @param  token         Meme token being graduated.
    /// @param  creator       Creator address (stamped into the fee-capture hook, if any).
    /// @param  tokenAmount   Tokens to seed as liquidity (must be pre-approved).
    /// @param  creatorFeeBps Creator share of post-graduation swap fees, bps.
    /// @param  protocolFeeBps Protocol share of post-graduation swap fees, bps.
    /// @return poolId        Opaque pool identifier (e.g. v4 PoolId as bytes32).
    /// @return lpTokenId     LP position NFT id, minted then locked.
    function migrate(address token, address creator, uint256 tokenAmount, uint96 creatorFeeBps, uint96 protocolFeeBps)
        external
        payable
        returns (bytes32 poolId, uint256 lpTokenId);
}
