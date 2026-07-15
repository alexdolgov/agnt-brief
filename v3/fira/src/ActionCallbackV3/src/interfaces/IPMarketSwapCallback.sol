// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.30;

interface IPMarketSwapCallback {
    // Renamed params for clarity; signature unchanged for ABI compatibility
    function swapCallback(int256 btToAccount, int256 fwToAccount, bytes calldata data) external;
}
