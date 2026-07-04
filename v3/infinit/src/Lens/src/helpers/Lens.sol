// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

import {ILens} from "../interfaces/ILens.sol";
import {IIN_Staking} from "../interfaces/IIN_Staking.sol";
import {IStakingRewarder} from "../interfaces/IStakingRewarder.sol";
import {IIN_Unstaking} from "../interfaces/IIN_Unstaking.sol";
import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";

contract Lens is ILens {
    uint256 public constant BPS = 10_000;

    IIN_Staking public immutable inStaking;
    IIN_Unstaking public immutable inUnstaking;

    // ================================
    // Constructor
    // ================================

    constructor(address _inStaking) {
        inStaking = IIN_Staking(_inStaking);
        inUnstaking = IIN_Unstaking(IIN_Staking(_inStaking).unstakingContract());
    }

    // ================================
    // External functions
    // ================================

    /**
     * @dev Returns apr from the current rewards per second
     * @return The apr from the current rewards per second
     */
    function getCurrentAprBPS() external view returns (uint256) {
        uint256 totalAssets = inStaking.totalAssets();
        return totalAssets == 0 ? 0 : (getCurrentRewardsPerSec() * 365 days * BPS) / totalAssets;
    }

    /**
     * @dev Returns all active unstaking infos for a user.
     * @notice This function may revert if the user has too many active unstaking infos due to gas limits.
     * @param user The user to get the active unstaking infos for
     * @return The active unstaking infos for the user
     */
    function getAllUserActiveUnstakingInfos(address user)
        external
        view
        returns (IIN_Unstaking.UnstakingInfo[] memory)
    {
        uint256 length = inUnstaking.getUserActiveUnstakingInfosLength(user);
        IIN_Unstaking.UnstakingInfo[] memory activeUnstakingInfos = new IIN_Unstaking.UnstakingInfo[](length);
        for (uint256 i = 0; i < length; ++i) {
            activeUnstakingInfos[i] = inUnstaking.getUserActiveUnstakingInfoByIndex(user, i);
        }
        return activeUnstakingInfos;
    }

    /**
     * @dev Returns the active unstaking infos for a user by index range
     * @param user The user to get the active unstaking infos for
     * @param startIndex The start index of the user's active unstaking infos to get
     * @param endIndex The end index of the user's active unstaking infos to get
     * @return activeUnstakingInfos The active unstaking infos for the user
     */
    function getUserActiveUnstakingInfosByIndexRange(address user, uint256 startIndex, uint256 endIndex)
        external
        view
        returns (IIN_Unstaking.UnstakingInfo[] memory)
    {
        uint256 lastIndex = Math.min(endIndex, inUnstaking.getUserActiveUnstakingInfosLength(user) - 1);
        // if startIndex is out of bounds, return empty array
        if (lastIndex < startIndex) {
            return new IIN_Unstaking.UnstakingInfo[](0);
        }
        uint256 length = lastIndex - startIndex + 1;
        IIN_Unstaking.UnstakingInfo[] memory activeUnstakingInfos = new IIN_Unstaking.UnstakingInfo[](length);
        for (uint256 i = 0; i < length; ++i) {
            activeUnstakingInfos[i] = inUnstaking.getUserActiveUnstakingInfoByIndex(user, startIndex + i);
        }
        return activeUnstakingInfos;
    }

    /**
     * @dev Returns all claimed unstaking infos for a user.
     * @notice This function may revert if the user has too many claimed unstaking infos due to gas limits.
     * @param user The user to get the claimed unstaking infos for
     * @return The claimed unstaking infos for the user
     */
    function getAllUserClaimedUnstakingInfos(address user)
        external
        view
        returns (IIN_Unstaking.UnstakingInfo[] memory)
    {
        uint256 length = inUnstaking.getUserClaimedUnstakingInfosLength(user);
        IIN_Unstaking.UnstakingInfo[] memory claimedUnstakingInfos = new IIN_Unstaking.UnstakingInfo[](length);
        for (uint256 i = 0; i < length; ++i) {
            claimedUnstakingInfos[i] = inUnstaking.getUserClaimedUnstakingInfoByIndex(user, i);
        }
        return claimedUnstakingInfos;
    }

    /**
     * @dev Returns claimed unstaking infos for a user by index range
     * @param user The user to get the claimed unstaking infos for
     * @param startIndex The start index of the user's claimed unstaking infos to get
     * @param endIndex The end index of the user's claimed unstaking infos to get
     * @return The claimed unstaking infos for the user
     */
    function getUserClaimedUnstakingInfosByIndexRange(address user, uint256 startIndex, uint256 endIndex)
        external
        view
        returns (IIN_Unstaking.UnstakingInfo[] memory)
    {
        uint256 lastIndex = Math.min(endIndex, inUnstaking.getUserClaimedUnstakingInfosLength(user) - 1);
        // if startIndex is out of bounds, return empty array
        if (lastIndex < startIndex) {
            return new IIN_Unstaking.UnstakingInfo[](0);
        }
        uint256 length = lastIndex - startIndex + 1;
        IIN_Unstaking.UnstakingInfo[] memory claimedUnstakingInfos = new IIN_Unstaking.UnstakingInfo[](length);
        for (uint256 i = 0; i < length; ++i) {
            claimedUnstakingInfos[i] = inUnstaking.getUserClaimedUnstakingInfoByIndex(user, startIndex + i);
        }
        return claimedUnstakingInfos;
    }

    /**
     * @dev Returns all canceled unstaking infos for a user.
     * @notice This function may revert if the user has too many canceled unstaking infos due to gas limits.
     * @param user The user to get the canceled unstaking infos for
     * @return The canceled unstaking infos for the user
     */
    function getAllUserCanceledUnstakingInfos(address user)
        external
        view
        returns (IIN_Unstaking.UnstakingInfo[] memory)
    {
        uint256 length = inUnstaking.getUserCanceledUnstakingInfosLength(user);
        IIN_Unstaking.UnstakingInfo[] memory canceledUnstakingInfos = new IIN_Unstaking.UnstakingInfo[](length);
        for (uint256 i = 0; i < length; ++i) {
            canceledUnstakingInfos[i] = inUnstaking.getUserCanceledUnstakingInfoByIndex(user, i);
        }
        return canceledUnstakingInfos;
    }

    /**
     * @dev Returns canceled unstaking infos for a user by index range
     * @param user The user to get the canceled unstaking infos for
     * @param startIndex The start index of the user's canceled unstaking infos to get
     * @param endIndex The end index of the user's canceled unstaking infos to get
     * @return The canceled unstaking infos for the user
     */
    function getUserCanceledUnstakingInfosByIndexRange(address user, uint256 startIndex, uint256 endIndex)
        external
        view
        returns (IIN_Unstaking.UnstakingInfo[] memory)
    {
        uint256 lastIndex = Math.min(endIndex, inUnstaking.getUserCanceledUnstakingInfosLength(user) - 1);
        // if startIndex is out of bounds, return empty array
        if (lastIndex < startIndex) {
            return new IIN_Unstaking.UnstakingInfo[](0);
        }

        uint256 length = lastIndex - startIndex + 1;
        IIN_Unstaking.UnstakingInfo[] memory canceledUnstakingInfos = new IIN_Unstaking.UnstakingInfo[](length);
        for (uint256 i = 0; i < length; ++i) {
            canceledUnstakingInfos[i] = inUnstaking.getUserCanceledUnstakingInfoByIndex(user, startIndex + i);
        }

        return canceledUnstakingInfos;
    }

    // ================================
    // Public functions
    // ================================

    /**
     * @dev Returns the total rewards per second from all the rewarders
     * @return totalRewardsPerSec The total rewards per second from all the rewarders
     */
    function getCurrentRewardsPerSec() public view returns (uint256 totalRewardsPerSec) {
        address[] memory rewarders = inStaking.getAllRewarders();
        for (uint256 i = 0; i < rewarders.length; ++i) {
            IStakingRewarder rewarder = IStakingRewarder(rewarders[i]);
            uint256 length = rewarder.getEpochsLength();
            uint256 completedEpochCount = rewarder.completedEpochCount();
            // loops through from the last completed epoch to the end of the epochs to find current epochs
            // NOTE: we need to loop since there is a case that completedEpochCount is not up-to-date
            // - it's possible that the completedEpochCount is not up-to-date since it's only updated when claim is called
            // |---epoch 0---|---epoch 1---|   |---epoch 2---|---epoch 3---|---epoch 4---|
            //                      ^ completedEpochCount = 1    ^ block.timestamp
            // in this case, we need epoch 3 's rewards per second
            for (uint256 j = completedEpochCount; j < length; ++j) {
                IStakingRewarder.Epoch memory epoch = rewarder.getEpochByIndex(j);
                // check that epoch is active and not completed
                if (block.timestamp >= epoch.startTs && block.timestamp < epoch.endTs) {
                    totalRewardsPerSec += epoch.rewardsPerSec;
                    // NOTE: we break here since we found the current epoch
                    break;
                }
            }
        }
        return totalRewardsPerSec;
    }
}
