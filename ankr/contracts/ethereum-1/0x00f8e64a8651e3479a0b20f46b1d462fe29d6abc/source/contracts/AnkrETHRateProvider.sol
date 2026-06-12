// SPDX-License-Identifier: MIT

pragma solidity ^0.8.14;

import "./BaseRateProvider.sol";

/** 
 *  ankrETH rate provider contract.
 */
contract AnkrETHRateProvider is BaseRateProvider {

    // --- Init ---
    constructor(address _token) BaseRateProvider(_token) {}

    // --- View ---
    function ankrETH() external view returns(address) {
        return s_token;
    }
}