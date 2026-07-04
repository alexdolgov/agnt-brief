//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Initializable} from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";

import {ISmolverseLoot} from "./ISmolverseLoot.sol";
import {UtilitiesV3Upgradeable} from "../../shared/UtilitiesV3Upgradeable.sol";

abstract contract SmolverseLootState is Initializable, ISmolverseLoot, UtilitiesV3Upgradeable {
    address internal constant DEAD_ADDRESS = 0x000000000000000000000000000000000000dEaD;
    uint256 internal constant RAINBOW_TREASURE_ID = 10;
    address public smolCarsAddress;
    address public swolercyclesAddress;
    address public smolPetsAddress;
    address public swolPetsAddress;
    address public treasuresAddress;
    address public magicAddress;
    address public smolChopShopAddress;
    address public smolBrainsAddress;
    address public smolsStateAddress;

    address public troveAddress;

    uint256 public tokenIds;
    uint256 public lootIds;

    bytes32 public traitShopSkinsMerkleRoot;

    bytes32 internal constant SMOL_LOOT_MINTER_ROLE = keccak256("SMOL_LOOT_MINTER");

    string public baseURI;
    string public collectionDescription;


    mapping(uint256 => LootToken) public lootTokens;
    mapping(uint256 => Loot) public loots;

    mapping(address => bool) public hasClaimedSkinLoot;

    function __SmolverseLootState_init() internal initializer {
        UtilitiesV3Upgradeable.__Utilities_init();
    }
}
