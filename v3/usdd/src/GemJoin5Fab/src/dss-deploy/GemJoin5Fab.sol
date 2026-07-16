// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.6.12;

import {GemJoin5} from "src/gemjoins/join-5.sol";

contract GemJoin5Fab {
    function newGemJoin(address owner, address vat, bytes32 ilk, address gem)
        public returns (GemJoin5 gemJoin)
    {
        gemJoin = new GemJoin5(vat, ilk, gem);
        gemJoin.rely(owner);
        gemJoin.deny(address(this));
    }
}
