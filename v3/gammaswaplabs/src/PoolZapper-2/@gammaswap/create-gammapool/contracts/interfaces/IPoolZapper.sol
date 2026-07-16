// SPDX-License-Identifier: GPL-v3
pragma solidity ^0.8.0;

/// @title Interface for Zapper contract to create DS/GS pools
/// @author Daniel D. Alcarraz (https://github.com/0xDanr)
interface IPoolZapper {

    /// @notice Create GammaPool from DeltaSwap pool
    /// @notice If token pair not found in DS, new DS pair will be created
    /// @dev Needs tokens approval from user to position manager to add liquidity
    /// @param token0 Token0 address
    /// @param token1 Token1 address
    /// @param amount0 (Optional) Token0 amount to add liquidity
    /// @param amount1 (Optional) Token1 amount to add liquidity
    /// @param protocolId GammaPool protocolId
    /// @param cfmm address of cfmm (if not DeltaSwap)
    /// @return New GammaPool address
    function createAndAddLiquidity(address token0, address token1, uint256 amount0, uint256 amount1, uint16 protocolId, address cfmm) external returns (address);

}
