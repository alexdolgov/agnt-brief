// SPDX-License-Identifier: MIT

pragma solidity 0.6.11;

import "./IPool.sol";


interface IActivePool is IPool {
    // --- Events ---
    event BorrowerOperationsAddressChanged(address _newBorrowerOperationsAddress);
    event VaultManagerAddressChanged(address _newVaultManagerAddress);
    event ActivePoolUSDLDebtUpdated(uint _USDLDebt);
    event ActivePoolETHBalanceUpdated(uint _ETH);

    // --- Functions ---
    function sendETH(address _account, uint _amount) external;
}
// 2025 Liquid Loans