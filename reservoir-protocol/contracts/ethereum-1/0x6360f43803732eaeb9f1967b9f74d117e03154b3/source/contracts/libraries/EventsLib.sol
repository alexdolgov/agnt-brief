// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.22;

library EventsLib {
    /// @notice Emitted when RUSD is minted on from Ethereum chain to a destination chain.
    /// @param sender the caller address (who spends the USDC)
    /// @param dstEid the destination chains Layerzeros ID
    /// @param receiver the receiver address (who receives the RUSD)
    /// @param amount the amount of RUSD minted
    /// @param timestamp the timestamp of the transaction
    event MintRusd(
        address indexed sender,
        uint32 indexed dstEid,
        address indexed receiver,
        uint256 amount,
        uint256 timestamp
    );

    /// @notice Emitted when RUSD is redeemed from a source chain to Ethereum chain for USDC
    /// @param sender the caller address (who redeems RUSD)
    /// @param srcEid the source chains Layerzeros ID
    /// @param receiver the receiver address (who receives the USDC)
    /// @param amount the amount of RUSD redeemed
    /// @param timestamp the timestamp of the transaction
    event RedeemRusd(
        address indexed sender,
        uint32 indexed srcEid,
        address indexed receiver,
        uint256 amount,
        uint256 timestamp
    );
}
