// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.30;

interface IPerpPnlView {
    /// @return pnlUSDWad signed USD in 1e18; positive = profit, negative = loss
    /// @return updatedAt epoch seconds of the PnL snapshot
    function pnlUSD(address user) external view returns (int256 pnlUSDWad, uint64 updatedAt);
}
