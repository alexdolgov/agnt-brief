// SPDX-License-Identifier: MIT

pragma solidity ^0.8.14;

import "./interfaces/IRateProvider.sol";
import "./interfaces/IAnkrETH.sol";

/**
 *  Inheritable standard rate provider interface.
 */
abstract contract BaseRateProvider is IRateProvider {

    // --- Var ---
    address internal s_token;

    // --- Init ---
    constructor(address _token) {
        s_token = _token;
    }

    // --- View ---
    function getRate() external view virtual override returns (uint256) {
        return IAnkrETH(s_token).sharesToBonds(1e18);
    }
}