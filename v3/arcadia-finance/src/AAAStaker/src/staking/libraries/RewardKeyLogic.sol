/**
 * Created by Pragma Labs
 * SPDX-License-Identifier: BUSL-1.1
 */
pragma solidity ^0.8.27;

type RewardKey is bytes32;

using { eq as == } for RewardKey global;
using RewardKeyLogic for RewardKey global;

function eq(RewardKey a, RewardKey b) pure returns (bool) {
    return RewardKey.unwrap(a) == RewardKey.unwrap(b);
}

/**
 * @title Reward Key Logic.
 * @author Pragma Labs
 */
library RewardKeyLogic {
    /* //////////////////////////////////////////////////////////////
                                CONSTANTS
    ////////////////////////////////////////////////////////////// */

    // Mask to extract the rightmost 160 bits.
    uint160 internal constant MASK_160_BITS = 0x00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;

    // Offset of the reward id in a RewardKey.
    uint8 internal constant ID_OFFSET = 160;

    /* //////////////////////////////////////////////////////////////
                                GETTERS
    ////////////////////////////////////////////////////////////// */

    /**
     * @notice Returns the contract address a reward based on the unique identifier.
     * @param key The unique identifier.
     * @return reward_ The contract address of the asset.
     */
    function reward(RewardKey key) internal pure returns (address reward_) {
        assembly {
            // Use bitmask to extract the reward from the rightmost 160 bits.
            reward_ := and(key, MASK_160_BITS)
        }
    }

    /* //////////////////////////////////////////////////////////////
                                SETTERS
    ////////////////////////////////////////////////////////////// */

    /**
     * @notice Returns the unique identifier of a reward based on the contract address and id.
     * @param reward_ The contract address of the reward.
     * @param id_ The reward-specific id, increased by one for each new reward added.
     * @return key The unique identifier.
     */
    function getRewardKey(address reward_, uint256 id_) internal pure returns (RewardKey key) {
        assembly {
            // Shift the assetId to the left by 160 bits.
            // Then OR the result with the address.
            key := or(shl(ID_OFFSET, id_), reward_)
        }
    }
}
