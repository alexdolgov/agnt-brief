// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import {Quad} from "src/types/ABDKMathQuad/Quad.sol";

type OptQuad is bytes16;

using {isDefined, get} for OptQuad global;

error OptQuadValueIsUndefined();

function isDefined(OptQuad x) pure returns (bool) {
    return !Quad.wrap(OptQuad.unwrap(x)).isNaN();
}

function get(OptQuad x) pure returns (Quad result) {
    if (!isDefined(x)) revert OptQuadValueIsUndefined();
    result = Quad.wrap(OptQuad.unwrap(x));
}

function toOptQuad(Quad x) pure returns (OptQuad result) {
    result = OptQuad.wrap(Quad.unwrap(x));
}
