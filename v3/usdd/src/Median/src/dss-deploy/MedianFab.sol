// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.6.12;

import {MedianETHUSD} from "../osm/medians.sol";

contract MedianFab {
    function newMedian(address owner) public returns (MedianETHUSD median) {
        median = new MedianETHUSD();
        median.rely(owner);
        median.deny(address(this));
    }
}
