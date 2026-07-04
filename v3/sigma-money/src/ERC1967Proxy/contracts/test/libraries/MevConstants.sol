// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

/// @title MevConstants
/// @notice Library containing all constant addresses and configurations for MEV arbitrage
library MevConstants {
    // ============ Token Addresses ============
    address internal constant BNBUSD = 0x5519a479Da8Ce3Af7f373c16f14870BbeaFDa265;
    address internal constant SIGMA = 0x85375D3e9c4a39350f1140280a8b0De6890A40e7;
    address internal constant WBNB = 0xbb4CdB9CBd36B01bD1cBaEBF2De08d9173bc095c;
    address internal constant USDT = 0x55d398326f99059fF775485246999027B3197955;
    address internal constant NATIVE = address(0);  // Native BNB

    // ============ Pool Addresses ============
    /// @notice Curve pool for Sigma/bnbUSD swaps
    address internal constant SIGMA_BNBUSD_POOL = 0xB84637aB9Be835580821A67823f414FFd0bbf625;
    /// @notice Curve pool for USDT/bnbUSD swaps
    address internal constant USDT_BNBUSD_POOL = 0xE6e2905F54BAF7625F4943B74c50338362741Cd4;

    // ============ Router Addresses ============
    /// @notice PancakeSwap Universal Router 2
    address internal constant PANCAKE_UNIVERSAL_ROUTER = 0xd9C500DfF816a1Da21A48A732d3498Bf09dc9AEB;
    /// @notice Permit2 contract for token approvals
    address internal constant PERMIT2 = 0x31c2F6fcFf4F8759b3Bd5Bf0e1084A055615c768;

    // ============ Infinity Pool Manager ============
    /// @notice PancakeSwap Infinity CL Pool Manager
    address internal constant INFINITY_CL_POOL_MANAGER = 0xa0FfB9c1CE1Fe56963B0321B32E7A0302114058b;
    
    // ============ Pool IDs ============
    /// @notice Pool ID for Sigma/BNB Infinity CL pool
    bytes32 internal constant SIGMA_WBNB_POOL_ID = 0x416e5132b7c80008cd32cf62439ea38e36c8eec0bbd16b78b3260a0fc5fa8c59;

    // ============ Fee Tiers ============
    /// @notice Fee tier for WBNB/USDT V3 pool (0.01% = 100 hundredths of basis points)
    uint24 internal constant V3_FEE = 100;

    // ============ Universal Router Commands ============
    /// @notice Command for V3 exact input swap
    uint8 internal constant V3_SWAP_EXACT_IN = 0x00;
    /// @notice Command for Infinity swap
    uint8 internal constant INFI_SWAP = 0x10;
}
