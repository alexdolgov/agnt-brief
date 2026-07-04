// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

/// @notice Subset of PancakeSwap Infinity CLPositionManager used by FarmLPV4.
/// Deployed at 0x55f4c8abA71A1e923edC303eb4fEfF14608cC226 on BSC.
struct PoolKey {
    address currency0;
    address currency1;
    address hooks;
    address poolManager;
    uint24 fee;
    bytes32 parameters; // [0-15] hooks bitmap, [16-39] tickSpacing (int24)
}

interface ICLPositionManager {
    function getPoolAndPositionInfo(uint256 tokenId)
        external
        view
        returns (PoolKey memory key, uint256 info);

    function getPositionLiquidity(uint256 tokenId) external view returns (uint128 liquidity);

    function safeTransferFrom(address from, address to, uint256 tokenId) external;
    function safeTransferFrom(address from, address to, uint256 tokenId, bytes calldata data) external;
    function ownerOf(uint256 tokenId) external view returns (address);
}

interface ICLPoolManager {
    /// @return sqrtPriceX96  Current pool price as Q64.96
    /// @return tick          Current tick
    /// @return protocolFee   Packed protocol fee
    /// @return lpFee         Pool LP fee
    function getSlot0(bytes32 poolId)
        external
        view
        returns (uint160 sqrtPriceX96, int24 tick, uint24 protocolFee, uint24 lpFee);
}
