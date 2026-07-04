// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {MemberPool} from "./MemberPool.sol";
import {Agent} from "./Agent.sol";
import {OwnableUpgradeable} from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";

contract DaoInspector is OwnableUpgradeable {
    event Setup(MemberPool memberPool, Agent agent);

    MemberPool private memberPool;
    Agent private agent;

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(address _owner) public initializer {
        __Ownable_init(_owner);
    }

    function setup(MemberPool _memberPool, Agent _agent) external onlyOwner {
        memberPool = _memberPool;
        agent = _agent;
        emit Setup(memberPool, agent);
    }

    function getAgentLifetimeRewardsBatch(
        uint256 agentId,
        uint256[] calldata hubIds
    ) external view returns (uint256[] memory rewards) {
        rewards = new uint256[](hubIds.length);
        for (uint256 i; i < hubIds.length; i++) {
            rewards[i] = getAgentLifetimeRewards(agentId, hubIds[i]);
        }
    }

    function getAgentLifetimeRewards(uint256 agentId, uint256 hubId) public view returns (uint256 reward) {
        uint256 pendingReward = memberPool.previewReward(agentId, hubId);
        reward = pendingReward + memberPool.agentLifetimeReward(agentId, hubId);
    }

    function getUserClaimableRewards(address user) external view returns (uint256 reward) {
        reward = memberPool.userRewardClaimable(user);
        uint256 agentCount = agent.balanceOf(user);
        for (uint256 i; i < agentCount; i++) {
            uint256 agentId = agent.tokenOfOwnerByIndex(user, i);
            uint256 hubId = agent.currentHub(agentId);
            if (hubId > 0) {
                reward += memberPool.previewReward(agentId, hubId);
            }
        }
    }

    function getAgentXpLengthSecBatch(
        uint256 agentId,
        uint256[] calldata hubIds
    ) external view returns (uint256[] memory secs) {
        secs = new uint256[](hubIds.length);
        for (uint256 i; i < hubIds.length; i++) {
            secs[i] = getAgentXpLengthSec(agentId, hubIds[i]);
        }
    }

    function getAgentXpLengthSec(uint256 agentId, uint256 hubId) public view returns (uint256 sec) {
        sec = agent.hubXpLengthSec(agentId, hubId);
        uint256 currentHubId = agent.currentHub(agentId);
        if (currentHubId == hubId) {
            sec += block.timestamp - agent.hubXpSettlementTimestamp(agentId, hubId);
        }
    }

    function getAgentCount(uint256[] calldata hubIds) external view returns (uint256[] memory counts) {
        counts = new uint[](hubIds.length);
        for (uint256 i; i < hubIds.length; i++) {
            counts[i] = memberPool.hubAgentCount(hubIds[i]);
        }
    }

    function getHubAssetAmountBatch(uint256[] calldata hubIds) external view returns (uint256[] memory assets) {
        assets = new uint256[](hubIds.length);
        for (uint256 i; i < hubIds.length; i++) {
            assets[i] = memberPool.hubAssetAmount(hubIds[i]);
        }
    }

    function getRawAPYBatch(uint256[] calldata hubIds) external view returns (uint256[] memory apyX10000) {
        apyX10000 = new uint256[](hubIds.length);
        for (uint256 i; i < hubIds.length; i++) {
            apyX10000[i] = memberPool.rewardApyPerHubX10000(hubIds[i]);
        }
    }

    function getAPYBatch(uint256[] calldata hubIds) external view returns (uint256[] memory apyX10000) {
        apyX10000 = new uint256[](hubIds.length);
        for (uint256 i; i < hubIds.length; i++) {
            apyX10000[i] = getAPY(hubIds[i]);
        }
    }

    function getAPY(uint256 hubId) public view returns (uint256 apyX10000) {
        apyX10000 = (memberPool.rewardApyPerHubX10000(hubId) * memberPool.hubRewardDistroForAgentX10000(hubId)) / 10000;
    }
}
