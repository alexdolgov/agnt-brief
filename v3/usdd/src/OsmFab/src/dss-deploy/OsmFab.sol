// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.6.12;

import {OSM} from "../osm/osm.sol";

contract OsmFab {
    function newOsm(address owner, address src) public returns (OSM osm){
        osm = new OSM(src);
        osm.rely(owner);
        osm.deny(address(this));
    }
}
