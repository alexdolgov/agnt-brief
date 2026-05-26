// SPDX-License-Identifier: MIT

pragma solidity >=0.8.0 <0.9.0;

import '../utils/Admin.sol';
import '../utils/Implementation.sol';

abstract contract ManagerStorage is Admin, Implementation {

    address[] internal _gateways;

    mapping (address => bool) internal _executors;

    mapping (address => address) internal _smartAccounts;

    address[] internal _opGasTokens;

    uint256[6][] internal _opGases;

}
