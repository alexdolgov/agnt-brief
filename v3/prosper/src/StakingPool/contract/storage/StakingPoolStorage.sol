// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.25;

import { Release, RewardData, UserData } from "../types/Types.sol";

/// @title StakingPoolStorage
/// @dev storage library to leverage unstructured storage pattern
library StakingPoolStorage {
    /// @dev struct containing all state for the StakingPool contract
    /// @custom:storage-location erc7201:animoca.contracts.storage.StakingPool
    struct Layout {
        /// @dev address to receive fees earned from staking pool
        address feeWallet;
        /// @dev address to receive earnings from unstaked STAKE_TOKENS
        address treasury;
        /// @dev protocol fee in basis points
        uint256 protocolFeeBP;
        /// @dev amount of rewards going to stakers in basis points
        uint256 stakerShareBP;
        /// @dev cumulative amount of staked tokens multiplied by time staked
        uint256 globalTS;
        /// @dev last timestamp where supply was updated
        uint256 lastSupplyUpdate;
        /// @dev duration of unbonding period in seconds
        uint256 unbondingDuration;
        /// @dev merkle root of whitelist merkle tree
        bytes32 whitelistRoot;
        /// @dev whether whitelist is active
        bool isWhitelistActive;
        /// @dev array of reward data, always growing
        RewardData[] rewards;
        /// @dev data of each user
        mapping(address account => UserData data) userData;
        /// @dev mapping of user address to their releases
        mapping(address account => Release[] releases) userReleases;
    }

    // keccak256(abi.encode(uint256(keccak256("animoca.contracts.storage.StakingPool")) - 1)) & ~bytes32(uint256(0xff));
    bytes32 internal constant STORAGE_SLOT =
        0x45943b33a4113c13cf92e8854332b22de748475ead0c5c3dd53e8727a35c6800;

    function layout() internal pure returns (Layout storage l) {
        bytes32 slot = STORAGE_SLOT;
        assembly {
            l.slot := slot
        }
    }
}
