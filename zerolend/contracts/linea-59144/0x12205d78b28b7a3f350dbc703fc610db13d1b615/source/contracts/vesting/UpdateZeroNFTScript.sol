// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

// ███████╗███████╗██████╗  ██████╗
// ╚══███╔╝██╔════╝██╔══██╗██╔═══██╗
//   ███╔╝ █████╗  ██████╔╝██║   ██║
//  ███╔╝  ██╔══╝  ██╔══██╗██║   ██║
// ███████╗███████╗██║  ██║╚██████╔╝
// ╚══════╝╚══════╝╚═╝  ╚═╝ ╚═════╝

// Website: https://zerolend.xyz
// Discord: https://discord.gg/zerolend
// Twitter: https://twitter.com/zerolendxyz

import {IVestedZeroNFT} from "../interfaces/IVestedZeroNFT.sol";

interface IVestedZeroNFTWithLock is IVestedZeroNFT {
    function tokenIdToLockDetails(
        uint256
    ) external view returns (LockDetails memory);
}

contract UpdateZeroNFTScript {
    IVestedZeroNFTWithLock public vest;

    constructor(address _vest) {
        vest = IVestedZeroNFTWithLock(_vest);
    }

    function update(uint256[] memory ids) external {
        uint256[] memory linearDurations = new uint256[](ids.length);
        uint256[] memory cliffDurations = new uint256[](ids.length);

        for (uint i = 0; i < ids.length; i++) {
            IVestedZeroNFT.LockDetails memory lock = vest.tokenIdToLockDetails(
                ids[i]
            );
            require(
                lock.category == IVestedZeroNFT.VestCategory.AIRDROP,
                "!category"
            );
            linearDurations[i] = 86400 * 30 * 3; // 3 mo linear
            cliffDurations[i] = 86400 * 30 * 3; // 3mo cliff
        }

        vest.updateCliffDuration(ids, linearDurations, cliffDurations);
    }
}
