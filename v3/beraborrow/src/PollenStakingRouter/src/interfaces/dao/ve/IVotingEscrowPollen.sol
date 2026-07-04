// SPDX-License-Identifier: GPL-3.0-or-later

pragma solidity ^0.8.0;

import {IVeToken} from "src/interfaces/dao/ve/IVeToken.sol";

import "src/libraries/ve/VeBalanceLib.sol";
import "src/libraries/ve/VeHistoryLib.sol";

interface IVotingEscrowPollen is IVeToken {
    event NewLockPosition(address indexed user, uint128 amount, uint128 expiry);

    event Withdraw(address indexed user, uint128 amount);

    event CreateUserVeLockStakingRewards(
        address indexed user,
        address indexed veLockStakingRewards
    );

    // ============= ACTIONS =============

    function userToStakingRewards(address user) external view returns (address);

    function increaseLockPosition(uint128 additionalAmountToLock, uint128 expiry, address user) external returns (uint128);

    function withdraw(address user) external returns (uint128);

    function totalSupplyAt(uint128 timestamp) external view returns (uint128);

    function getUserHistoryLength(address user) external view returns (uint256);

    function getUserHistoryAt(address user, uint256 index) external view returns (Checkpoint memory);

    function setPollenRouter(address pollenRouter) external;

    function getPenaltyInBp(address user) external view returns (uint128);

    function pollenRouter() external view returns (address);
}