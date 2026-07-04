//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Initializable} from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";

import {UtilitiesV3Upgradeable} from "../../../shared/UtilitiesV3Upgradeable.sol";

abstract contract SmolverseTransmolgrifierClaimState is Initializable, UtilitiesV3Upgradeable {
    
    error SmolIsNotInMerkleTree(uint256 _smolId, uint256 _smolTier);

    uint256 internal constant RAINBOW_TREASURE_ID = 10;

    //Expressed in units of ether, with 1 ether being 1000000000000000000
    //Store the per-smol reward for each tier 
    mapping(uint256 => uint256) public tierIdToTierMultiplier;

    //Store what # of transmolg this smol last claimed
    mapping(uint256 => uint256) public smolIdToLastTransmolgCountClaimed;

    //Store how many smols have been transmolged
    uint256 public totalNumberOfSmolsTransmolged;

    //Root for smol tier
    bytes32 public smolTierMerkleRoot;

    //Smol brains address
    address public smolsAddress;

    //Smol loot address
    address public smolverseLootAddress;

    //Treasures address
    address public treasuresAddress;
    
    function __SmolverseTransmolgrifierClaimState_init() internal initializer {
        UtilitiesV3Upgradeable.__Utilities_init();
    }
}