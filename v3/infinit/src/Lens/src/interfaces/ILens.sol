// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

import {IIN_Unstaking} from "./IIN_Unstaking.sol";

/**
 * @title ILens
 * @dev Interface for the Lens contract
 */
interface ILens {
    /**
     * @dev Returns the rewards per second from all the rewarders
     * @return The rewards per second from all the rewarders
     */
    function getCurrentRewardsPerSec() external view returns (uint256);

    /**
     * @dev Returns apr from the current rewards per second
     * @return The apr from the current rewards per second in basis points (10000 = 100%)
     */
    function getCurrentAprBPS() external view returns (uint256);

    /**
     * @dev Returns all active unstaking infos for a user.
     * @notice This function may revert if the user has too many active unstaking infos due to gas limits.
     * @param user The user to get the active unstaking infos for
     * @return The active unstaking infos for the user
     */
    function getAllUserActiveUnstakingInfos(address user)
        external
        view
        returns (IIN_Unstaking.UnstakingInfo[] memory);

    /**
     * @dev Returns active unstaking infos for a user by index range
     * @param user The user to get the active unstaking infos for
     * @param startIndex The start index of the user's active unstaking infos to get
     * @param endIndex The end index of the user's active unstaking infos to get
     * @return The active unstaking infos for the user
     */
    function getUserActiveUnstakingInfosByIndexRange(address user, uint256 startIndex, uint256 endIndex)
        external
        view
        returns (IIN_Unstaking.UnstakingInfo[] memory);

    /**
     * @dev Returns all claimed unstaking infos for a user.
     * @notice This function may revert if the user has too many claimed unstaking infos due to gas limits.
     * @param user The user to get the claimed unstaking infos for
     * @return The claimed unstaking infos for the user
     */
    function getAllUserClaimedUnstakingInfos(address user)
        external
        view
        returns (IIN_Unstaking.UnstakingInfo[] memory);

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
        returns (IIN_Unstaking.UnstakingInfo[] memory);

    /**
     * @dev Returns all canceled unstaking infos for a user.
     * @notice This function may revert if the user has too many canceled unstaking infos due to gas limits.
     * @param user The user to get the canceled unstaking infos for
     * @return The canceled unstaking infos for the user
     */
    function getAllUserCanceledUnstakingInfos(address user)
        external
        view
        returns (IIN_Unstaking.UnstakingInfo[] memory);

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
        returns (IIN_Unstaking.UnstakingInfo[] memory);
}
