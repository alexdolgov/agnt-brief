// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.6.12;

import {Clipper} from "../dss/clip.sol";

contract ClipFab {
    function newClip(address owner, address vat, address spotter, address dog, bytes32 ilk) public returns (Clipper clip) {
        clip = new Clipper(vat, spotter, dog, ilk);
        clip.rely(owner);
        clip.deny(address(this));
    }
}
