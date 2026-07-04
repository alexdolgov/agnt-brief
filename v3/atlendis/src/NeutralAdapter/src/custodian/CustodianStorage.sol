// SPDX-License-Identifier: AGPL-3.0
pragma solidity 0.8.13;

import 'lib/openzeppelin-contracts/contracts/token/ERC20/ERC20.sol';

/**
 * @title CustodianStorage
 * @author Atlendis Labs
 */
contract CustodianStorage {
    // constants
    uint256 public constant WAD = 1e18;
    uint256 public constant RAY = 1e27;

    // addresses
    ERC20 public token; // Custodian token
    address public adapter; // Current adapter
    address public yieldProvider; // Current yield provider

    // balances
    uint256 public depositedBalance; // Original token balance deposited to custodian
    uint256 public pendingRewards; // Yield provider rewards to be withdrawn

    // below variable usage are yield provider specific
    uint256 public yieldProviderBalance; // Yield provider specific balance
    uint256 public lastYieldFactor; // Yield provider specific ratio to be used to compute rewards
}
