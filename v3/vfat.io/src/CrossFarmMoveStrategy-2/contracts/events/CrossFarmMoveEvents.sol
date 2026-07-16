// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import { INonfungiblePositionManager } from
    "contracts/interfaces/external/uniswap/INonfungiblePositionManager.sol";

import { Sickle } from "contracts/Sickle.sol";

abstract contract CrossFarmMoveEvents {
    event SickleMovedToNft(
        Sickle indexed sickle,
        INonfungiblePositionManager indexed toNft,
        uint256 indexed toTokenId,
        address toStakingContract,
        uint256 toPoolIndex
    );

    event SickleMovedToFarm(
        Sickle indexed sickle,
        address indexed toStakingContract,
        uint256 indexed toPoolIndex
    );
}
