// SPDX-License-Identifier: MIT

pragma solidity 0.6.11;

import "./IPool.sol";


interface IDefaultPool is IPool {
    // --- Events ---
    event VaultManagerAddressChanged(address _newVaultManagerAddress);
    event DefaultPoolUSDLDebtUpdated(uint _USDLDebt);
    event DefaultPoolETHBalanceUpdated(uint _ETH);

    // --- Functions ---
    function sendETHToActivePool(uint _amount) external;
}
// 2025 Liquid Loans