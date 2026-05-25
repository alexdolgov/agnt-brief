// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.21;

import {IRateProvider} from "../../../lib/boring-vault/src/interfaces/IRateProvider.sol";

contract WsRateProvider is IRateProvider {
    function getRate() external view returns (uint256) {
        return 1e18;
    }
}
