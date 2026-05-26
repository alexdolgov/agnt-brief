// SPDX-License-Identifier: MIT

pragma solidity >=0.8.0 <0.9.0;

import '@openzeppelin/contracts/utils/structs/EnumerableSet.sol';
import '../utils/Admin.sol';
import '../utils/Implementation.sol';
import '../utils/ReentryLock.sol';

contract RewardVaultStorage is Admin, Implementation, ReentryLock {
    
    struct UserInfo {
        uint256 lastCumulativeTime;
        uint256 unclaimed; // the unclaimed reward
    }

    // gatewayAddress => lTokenId => UserInfo
    mapping(address => mapping(uint256 => UserInfo)) public userInfo;

    // gatewayAddress => VaultInfo
    mapping(address => uint256) public rewardPerSeconds;

    // gatewayAddress => isAuthorized
    mapping(address => bool) public authorizedPool;

    // gatewayAddress
    address[] public gateways;

}
