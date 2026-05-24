// SPDX-License-Identifier: MIT

pragma solidity 0.6.11;

import "../LOAN/LOANStaking.sol";


contract LOANStakingTester is LOANStaking {
    function requireCallerIsVaultManager() external view {
        _requireCallerIsVaultManager();
    }
}
// 2025 Liquid Loans