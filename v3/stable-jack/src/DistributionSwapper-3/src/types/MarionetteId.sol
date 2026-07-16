// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

import { MarionetteKey } from "./MarionetteKey.sol";

type MarionetteId is bytes32;

library MarionetteIdLib {
    function toId(MarionetteKey memory marionetteKey) internal pure returns (MarionetteId) {
        return MarionetteId.wrap(keccak256(abi.encode(marionetteKey)));
    }
}
