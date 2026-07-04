// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.6.12;

import {ValueWBTCUSD} from "src/osm/ValueWBTCUSD.sol";
import {WBTCOracleValue} from "src/osm/oracles/WBTCOracleValue.sol";

contract OracleWbtcFab {
    function newBaseValue(address owner) public returns (ValueWBTCUSD baseValue) {
        baseValue = new ValueWBTCUSD();
        baseValue.rely(owner);
        baseValue.deny(address(this));
    }

    function newOracleValue(address owner) public returns (WBTCOracleValue oracleValue) {
        oracleValue = new WBTCOracleValue();
        oracleValue.rely(owner);
        oracleValue.deny(address(this));
    }
}
