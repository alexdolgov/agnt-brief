// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.7.6;
pragma abicoder v2;

import { IShowerRoomEvent } from "./IShowerRoomEvent.sol";
import { IShowerRoomStruct } from "./IShowerRoomStruct.sol";

interface IShowerRoom is IShowerRoomStruct, IShowerRoomEvent {
    function deposit(uint256) external;

    /**
     * @param maxSkipped # of for loop runs limit
     * @return shares in Kantaban vault
     */
    function pushToKantaban(uint256 maxSkipped) external returns (uint256 shares);

    function withdrawAll() external returns (uint256 totalAssetsWithdrawn);

    function getAsset() external view returns (address);

    function getKantabanVault() external view returns (address);

    /**
     * @dev yearnVault can be zero address, meaning that there's no Yearn Vault available
     */
    function getYearnVault() external view returns (address);

    /**
     * @dev yearnStakingRewards can be zero address, meaning that there's no Yearn StakingRewards available
     */
    function getYearnStakingRewards() external view returns (address);

    /**
     * @dev yearnStakingRewardsVault can be zero address, meaning that there's no Yearn StakingRewards available
     */
    function getYearnStakingRewardsVault() external view returns (address);

    /**
     * @dev router can be zero address, meaning that there's no Yearn StakingRewards available and thus
     *      don't need to swap staking rewards to asset
     * @dev this is not Uniswap's official router, but a router written by us
     */
    function getRouter() external view returns (address);

    function getPusher() external view returns (address);

    /**
     * @dev maxDepositPerUser can be zero, meaning that deposit to Kantaban is forbidden
     */
    function getMaxDepositPerUser() external view returns (uint256);

    function getUser(address) external view returns (User calldata);

    function getNextDepositIndex() external view returns (uint256);

    /**
     * @dev this does not necessarily mean wait list is empty if all user in the wait list withdraw
     *      (without BE calling pushToKantaban)
     *      1. default: _nextDepositIndex == 0, _waitListArray.length == 0
     *      2. if Shower Room is pushed to the latest: _nextDepositIndex == _waitListArray.length
     */
    function isNextDepositIndexEndOfWaitList() external view returns (bool);
}
