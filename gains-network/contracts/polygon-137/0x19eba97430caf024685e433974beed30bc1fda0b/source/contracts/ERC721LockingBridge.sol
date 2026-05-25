//SPDX-License-Identifier: MIT
import "./abstract/ERC721Bridge.sol";

pragma solidity 0.8.17;

contract ERC721LockingBridge is ERC721Bridge {

    // Avoid stack too deep error
    struct ConstructorParams{
        address lzEndpoint;
        IERC721[5] nfts;
        address owner;
        uint maxEpochLimit;
        uint epochDuration;
        uint epochLimit;
    }

    constructor(
        ConstructorParams memory constructorParams
    ) ERC721Bridge(
        constructorParams.lzEndpoint,
        constructorParams.nfts,
        constructorParams.owner,
        constructorParams.maxEpochLimit,
        constructorParams.epochDuration,
        constructorParams.epochLimit
    ) {}
}
