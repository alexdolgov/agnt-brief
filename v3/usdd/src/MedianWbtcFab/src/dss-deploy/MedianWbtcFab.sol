// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.6.12;

import {MedianWBTCUSD} from "src/osm/MedianWBTCUSD.sol";

contract MedianWbtcFab {
    function newMedian(address owner) public returns (MedianWBTCUSD median) {
        median = new MedianWBTCUSD();
        median.rely(owner);
        median.deny(address(this));
    }
}
