// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.6.12;

import {GemJoin} from "src/dss/join.sol";

contract GemJoinFab {
    function newGemJoin(address owner, address vat, bytes32 ilk, address gem) public returns (GemJoin gemJoin) {
        gemJoin = new GemJoin(vat, ilk, gem);
        gemJoin.rely(owner);
        gemJoin.deny(address(this));
    }
}