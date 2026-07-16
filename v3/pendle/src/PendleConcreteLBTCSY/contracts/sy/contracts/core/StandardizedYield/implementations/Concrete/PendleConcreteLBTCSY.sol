// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.23;

import "./PendleConcreteVaultSY.sol";
import "../../../../interfaces/IPExchangeRateOracle.sol";

contract PendleConcreteLBTCSY is PendleConcreteVaultSY {
    address public immutable oracle;

    constructor(address _concreteVault, address _oracle, uint256 _lastRate) PendleConcreteVaultSY(_concreteVault, _lastRate) {
        oracle = _oracle;
    }
}
