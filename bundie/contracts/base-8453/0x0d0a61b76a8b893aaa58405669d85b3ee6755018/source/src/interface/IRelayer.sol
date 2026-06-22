// SPDX-License-Identifier: MIT
//
//        ██████╗ ██╗   ██╗███╗   ██╗██████╗ ██╗███████╗
//        ██╔══██╗██║   ██║████╗  ██║██╔══██╗██║██╔════╝
//        ██████╔╝██║   ██║██╔██╗ ██║██║  ██║██║█████╗  
//        ██╔══██╗██║   ██║██║╚██╗██║██║  ██║██║██╔══╝  
//        ██████╔╝╚██████╔╝██║ ╚████║██████╔╝██║███████╗
//        ╚═════╝  ╚═════╝ ╚═╝  ╚═══╝╚═════╝ ╚═╝╚══════╝
//
//        Cross-Chain Yield Aggregation Protocol
//
pragma solidity 0.8.34;

/// @title IRelayer
/// @author Bundie Team
/// @notice Interface for the bridge fee relayer contract
/// @dev The relayer holds ETH to fund cross-chain bridge fees on behalf of users.
///      Users pay a flat fee in their deposit token (ERC-20) instead of providing msg.value.
///      Only bridge modules registered with BridgeManager can pull ETH from the relayer.
interface IRelayer {
    /// @notice Get the configured bridge fee for an asset token
    /// @param assetToken The ERC-20 token address
    /// @return fee The flat fee amount in the token's decimals (0 if not configured)
    function getBridgeFee(address assetToken) external view returns (uint256 fee);

    /// @notice Fund a bridge operation by sending ETH to the caller
    /// @dev Only BridgeManager-registered modules can call this function.
    ///      Reverts if the relayer has insufficient ETH balance.
    /// @param amount Amount of ETH to send to the caller (bridge module)
    function fundBridgeFee(uint256 amount) external;
}
