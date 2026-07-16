// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.6.12;

import {ValueETHUSD} from "src/osm/values.sol";
import {OracleValue} from "src/osm/oracles/OracleValue.sol";

contract OracleFab {
    function newBaseValue(address owner) public returns (ValueETHUSD baseValue) {
        baseValue = new ValueETHUSD();
        baseValue.rely(owner);
        baseValue.deny(address(this));
    }

    function newOracleValue(address owner) public returns (OracleValue oracleValue) {
        oracleValue = new OracleValue();
        oracleValue.rely(owner);
        oracleValue.deny(address(this));
    }
}
