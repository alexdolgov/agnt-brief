// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.4;

library SeedmonAttribute {

    struct Profile {
        bytes32 species;
        bytes32 element;
    }

    struct Stat {
        uint256 vitality;
        uint256 strength;
        uint256 smart;
        uint256 speed;
        uint256 dexterity;
        uint256 luck;
    }

    struct BaseAction {
        bytes32 target;
        bytes32 aim;
        bytes32 action;
        uint256 multiplier;
    }

    struct UniqueProfile {
        uint256 birthTimestamp;
        uint256 fatherTokenId;
        uint256 motherTokenId;
        uint256 numberOfFused;
        uint256 exp;
    }

}