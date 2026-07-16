// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

library DexTypes {
    enum DEX {
        APEX,
        JOE,
        PHARAOH,
        PANGOLIN
    }

    /**
     * @dev Struct to hold the allocation for a specific DEX.
     */
    struct DexAllocation {
        DEX dex;
        bool isReward;
        uint256 allocation; // Allocation in basis points (e.g., 2500 for 25%)
    }
}
