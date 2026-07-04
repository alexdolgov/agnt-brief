// SPDX-License-Identifier: MIT
pragma solidity >=0.8.29 <0.9.0;

/**
 * @title ICurveStablePool
 * @notice Minimal interface for Curve StableSwap-NG pools
 * @dev Used for NUSD/USDC price quotation via get_dy
 *
 *      NUSD/USDC Pool: 0x7E19F0253A564e026C63eeAA9338d6DBddeF3b09
 *      - Coin 0: NUSD (18 decimals)
 *      - Coin 1: USDC (6 decimals)
 *
 * @custom:reference https://www.curve.finance/dex/ethereum/pools/factory-stable-ng-595/swap
 */
interface ICurveStablePool {
    /// @notice Get the expected output amount for a swap
    /// @param i Index of input coin
    /// @param j Index of output coin
    /// @param dx Amount of input coin
    /// @return Expected amount of output coin
    function get_dy(int128 i, int128 j, uint256 dx) external view returns (uint256);

    /// @notice Execute a swap
    /// @param i Index of input coin
    /// @param j Index of output coin
    /// @param dx Amount of input coin
    /// @param min_dy Minimum acceptable output
    /// @return Amount of output coin received
    function exchange(int128 i, int128 j, uint256 dx, uint256 min_dy) external returns (uint256);
}
