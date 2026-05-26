// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.28;

library StorageLocations {
    bytes32 constant POOL = 0x89e01f1eef63aa375eb34ada1a52b81599c216d89bb43fa5542204152c459a00;
    bytes32 constant REWARD_HANDLER = 0x30779778435b3c5a8773cef4be0b8e26ba158814ee4c66bd68fe9cc204bfb200;
    bytes32 constant PERIPHERY = 0x18b5d9429f1e22381c3fd67ede52d152f04a4ee041bb59209321a14524174900;
}

/**
 * @title StorageSlotAllocator
 * @dev Utility contract for computing ERC-7201 compliant storage slots
 * @notice This contract is used to compute the storage slot for the NetworkCollateralDelegator and Pool contracts, but hardcoded values are used in each contract
 */
contract StorageSlotAllocator {
    /**
     * @dev Computes the storage slot for Pool
     * @return The storage slot location for Pool
     */
    function getPoolSlot() public pure returns (bytes32) {
        return _getSlot("glif.storage.Pool");
    }

    /**
     * @dev Computes the storage slot for RewardHandler
     * @return The storage slot location for RewardHandler
     */
    function getRewardHandlerSlot() public pure returns (bytes32) {
        return _getSlot("glif.storage.RewardHandler");
    }

    /**
     * @dev Computes the storage slot for Periphery
     * @return The storage slot location for Periphery
     */
    function getPeripherySlot() public pure returns (bytes32) {
        return _getSlot("glif.storage.Periphery");
    }

    function _getSlot(string memory id) internal pure returns (bytes32) {
        return keccak256(abi.encode(uint256(keccak256(bytes(id))) - 1)) & ~bytes32(uint256(0xff));
    }
}
