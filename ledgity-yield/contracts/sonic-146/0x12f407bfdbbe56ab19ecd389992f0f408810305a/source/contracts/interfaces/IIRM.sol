// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.30;

interface IIRM {
    /// @notice Return borrow APR (WAD, 1e18 = 100%) for `asset` at utilization `utilWad` (0..1e18)
    function borrowAPR(address asset, uint256 utilWad) external view returns (uint256 aprWad);
}
