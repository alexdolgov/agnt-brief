// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import {AccessControlUpgradeable} from "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import {IGeneralError} from "../common/IGeneralError.sol";
import {MemberPool} from "../dao/MemberPool.sol";

contract MindVoterReward is AccessControlUpgradeable, IGeneralError {
    bytes32 private constant CONTRACT_ID = "MindVoterReward";

    MemberPool public memberPool;
    mapping(uint256 => address[]) public voters;

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(address _owner) public initializer {
        __AccessControl_init();
        _grantRole(DEFAULT_ADMIN_ROLE, _owner);
    }

    function setup(MemberPool _memberPool) external onlyRole(DEFAULT_ADMIN_ROLE) {
        memberPool = _memberPool;
    }

    function setupVoters(uint256 hubId, address[] calldata _voters) external onlyRole(DEFAULT_ADMIN_ROLE) {
        if (_voters.length == 0) {
            revert GeneralError(CONTRACT_ID, 4001);
        }
        voters[hubId] = _voters;
    }

    function distributeVoterRewards(uint256 hubId) external {
        uint256 rewardAmount = memberPool.hubOwnerRewardBalance(hubId);
        if (rewardAmount == 0) {
            revert GeneralError(CONTRACT_ID, 4002);
        }
        address[] memory hubVoters = voters[hubId];
        if (hubVoters.length == 0) {
            revert GeneralError(CONTRACT_ID, 4003);
        }
        uint256 individualReward = rewardAmount / hubVoters.length;
        uint256[] memory rewards = new uint256[](hubVoters.length);
        for (uint256 i = 0; i < hubVoters.length; i++) {
            rewards[i] = individualReward;
        }
        memberPool.distributeHubOwnerReward(hubId, hubVoters, rewards);
    }
}
