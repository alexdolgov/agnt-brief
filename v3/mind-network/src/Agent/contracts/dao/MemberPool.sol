// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {IMemberPool} from "./IMemberPool.sol";
import {AccessControlUpgradeable} from "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";

contract MemberPool is IMemberPool, AccessControlUpgradeable {
    using Math for uint256;

    bytes32 private constant CONTRACT_ID = "MemberPool";

    bytes32 public constant ADMIN_ROLE = keccak256("ADMIN_ROLE");
    bytes32 public constant AGENT_CONTRACT_ROLE = keccak256("AGENT_CONTRACT_ROLE");
    bytes32 public constant HUB_APY_ROLE = keccak256("HUB_APY_ROLE");
    bytes32 public constant HUB_ORC_ROLE = keccak256("HUB_ORC_ROLE");

    IERC20 private daoToken;
    mapping(uint256 hubId => uint256) public maxAgentPerHub;
    mapping(uint256 hubId => uint256) public maxAssetAmountPerHub;
    mapping(uint256 hubId => uint256) public maxAssetAmountPerHubPerAgent;

    mapping(uint256 hubId => uint256) public rewardApyPerHubX10000;
    mapping(uint256 hubId => uint256) public hubRewardDistroForAgentX10000;
    mapping(uint256 hubId => uint256) public hubRewardSettlementTs;

    // Rewards earned by the Hub
    mapping(uint256 hubId => uint256) public hubOwnerRewardBalance;

    mapping(uint256 hubId => uint256) public hubAgentCount;

    uint256 public allHubAssetAmount;
    mapping(uint256 hubId => uint256) public hubAssetAmount;
    mapping(uint256 hubId => uint256) public hubRewardAmount;
    mapping(uint256 hubId => mapping(uint256 agentId => uint256)) public agentAssetAmount;
    mapping(uint256 hubId => mapping(uint256 agentId => uint256)) public agentRewardDebt;

    mapping(address user => uint256) public userRewardClaimable;
    mapping(uint256 agentId => mapping(uint256 hubId => uint256)) public agentLifetimeReward;

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(address _owner, IERC20 _daoToken) public initializer {
        __AccessControl_init();
        _grantRole(DEFAULT_ADMIN_ROLE, _owner);
        daoToken = _daoToken;
    }

    function setupHubConstraint(
        uint256[] calldata hubIds,
        uint256[] calldata _maxAgentPerHub,
        uint256[] calldata _maxAssetAmountPerHub,
        uint256[] calldata _maxAssetAmountPerHubPerAgent
    ) external onlyRole(ADMIN_ROLE) {
        for (uint256 i; i < hubIds.length; i++) {
            uint256 hubId = hubIds[i];
            maxAgentPerHub[hubId] = _maxAgentPerHub[i];
            maxAssetAmountPerHub[hubId] = _maxAssetAmountPerHub[i];
            maxAssetAmountPerHubPerAgent[hubId] = _maxAssetAmountPerHubPerAgent[i];
        }
    }

    function setupHubRewardApy(
        uint256[] calldata hubIds,
        uint256[] calldata _rewardApyPerHubX10000
    ) external onlyRole(HUB_APY_ROLE) {
        for (uint256 i; i < hubIds.length; i++) {
            uint256 hubId = hubIds[i];
            settleHubReward(hubId);
            rewardApyPerHubX10000[hubId] = _rewardApyPerHubX10000[i];
        }
    }

    function setupHubRewardDistro(
        uint256[] calldata hubIds,
        uint256[] calldata _hubDistroForAgentX10000
    ) external onlyRole(ADMIN_ROLE) {
        for (uint256 i; i < hubIds.length; i++) {
            uint256 hubId = hubIds[i];
            settleHubReward(hubId);
            if (_hubDistroForAgentX10000[i] == 0 || _hubDistroForAgentX10000[i] > 10000) {
                revert GeneralError(CONTRACT_ID, 4001);
            }
            hubRewardDistroForAgentX10000[hubId] = _hubDistroForAgentX10000[i];
        }
    }

    function claimUserReward(address user) external onlyRole(AGENT_CONTRACT_ROLE) returns (uint256 amount) {
        uint256 fullAmount = userRewardClaimable[user];
        if (fullAmount > 1) {
            amount = fullAmount - 1;
            userRewardClaimable[user] = 1;
            SafeERC20.safeTransfer(daoToken, user, amount);
            emit RewardClaimed(user, amount);
        }
    }

    function delegate(uint256 agentId, uint256 hubId, uint256 assetAmount) external onlyRole(AGENT_CONTRACT_ROLE) {
        settleHubReward(hubId);
        uint256 rewardDebtAmount = _convertToRewards(hubId, assetAmount, Math.Rounding.Ceil);
        _deposit(hubId, agentId, assetAmount, rewardDebtAmount);
    }

    function undelegate(
        address user,
        uint256 agentId,
        uint256 hubId,
        uint256 assetAmount
    ) external onlyRole(AGENT_CONTRACT_ROLE) returns (uint256 rewardAmount) {
        settleHubReward(hubId);
        rewardAmount = _convertToRewards(hubId, assetAmount, Math.Rounding.Floor);
        _withdraw(user, hubId, agentId, assetAmount, rewardAmount);
    }

    function settleAgentReward(address user, uint256 agentId, uint256 hubId) external onlyRole(AGENT_CONTRACT_ROLE) {
        settleHubReward(hubId);
        uint256 rewardAmount = _convertToRewards(hubId, agentAssetAmount[hubId][agentId], Math.Rounding.Floor);
        uint256 currentAgentRewardDebt = agentRewardDebt[hubId][agentId];
        uint256 rewardEarned = rewardAmount - currentAgentRewardDebt;
        agentRewardDebt[hubId][agentId] = rewardAmount;
        userRewardClaimable[user] += rewardEarned;
        agentLifetimeReward[agentId][hubId] += rewardEarned;
        emit RewardEarned(user, agentId, hubId, rewardEarned);
    }

    function previewReward(uint256 agentId, uint256 hubId) external view returns (uint256 rewardEarned) {
        uint256 currentUserAssetAmount = agentAssetAmount[hubId][agentId];
        if (currentUserAssetAmount > 0) {
            (uint256 agentReward, ) = calculateRewardAccumulated(hubId);
            uint256 currentRewardDebt = agentRewardDebt[hubId][agentId];
            uint256 rewardAmount = currentUserAssetAmount.mulDiv(
                hubRewardAmount[hubId] + agentReward + 1,
                hubAssetAmount[hubId] + 1,
                Math.Rounding.Floor
            );
            rewardEarned = rewardAmount - currentRewardDebt;
        }
    }

    function withdrawHubOwnerReward(
        uint256 hubId,
        address beneficiary
    ) external onlyRole(HUB_ORC_ROLE) returns (uint256 amount) {
        amount = hubOwnerRewardBalance[hubId];
        if (amount > 0) {
            hubOwnerRewardBalance[hubId] = 0;
            SafeERC20.safeTransfer(daoToken, beneficiary, amount);
            emit HubOwnerRewardClaimed(hubId, beneficiary, amount);
        }
    }

    function distributeHubOwnerReward(
        uint256 hubId,
        address[] memory recipients,
        uint256[] memory amounts
    ) external onlyRole(HUB_ORC_ROLE) {
        if (recipients.length != amounts.length) {
            revert GeneralError(CONTRACT_ID, 4002);
        }
        uint256 totalAmount = 0;
        for (uint256 i = 0; i < recipients.length; i++) {
            address recipient = recipients[i];
            uint256 amount = amounts[i];
            if (amount > 0) {
                totalAmount += amount;
                userRewardClaimable[recipient] += amount;
                emit HubOwnerRewardDistributed(hubId, recipient, amount);
            }
        }
        hubOwnerRewardBalance[hubId] -= totalAmount;
    }

    function settleHubReward(uint256 hubId) public {
        uint256 lastSettlementTime = hubRewardSettlementTs[hubId];
        if (lastSettlementTime == 0) {
            hubRewardSettlementTs[hubId] = block.timestamp;
        } else if (block.timestamp > lastSettlementTime) {
            (uint256 agentReward, uint256 hubOwnerReward) = calculateRewardAccumulated(hubId);
            hubRewardAmount[hubId] += agentReward;
            hubOwnerRewardBalance[hubId] += hubOwnerReward;
            hubRewardSettlementTs[hubId] = block.timestamp;
            emit RewardSettled(lastSettlementTime, block.timestamp, hubId, agentReward, hubOwnerReward);
        }
    }

    function calculateRewardAccumulated(
        uint256 hubId
    ) private view returns (uint256 agentReward, uint256 hubOwnerReward) {
        uint256 timeElapsedSec = block.timestamp - hubRewardSettlementTs[hubId];
        uint256 rewardAccumulated = (((hubAssetAmount[hubId] * rewardApyPerHubX10000[hubId]) / 10000) *
            timeElapsedSec) / 31536000;
        agentReward = (rewardAccumulated * hubRewardDistroForAgentX10000[hubId]) / 10000;
        hubOwnerReward = rewardAccumulated - agentReward;
    }

    function _convertToRewards(
        uint256 hubId,
        uint256 assetAmount,
        Math.Rounding rounding
    ) internal view returns (uint256) {
        return assetAmount.mulDiv(hubRewardAmount[hubId] + 1, hubAssetAmount[hubId] + 1, rounding);
    }

    function _deposit(uint256 hubId, uint256 agentId, uint256 assetAmount, uint256 rewardDebtAmount) private {
        uint256 newHubAssetAmount = hubAssetAmount[hubId] + assetAmount;
        if (newHubAssetAmount > maxAssetAmountPerHub[hubId]) {
            revert GeneralError(CONTRACT_ID, 4004);
        }
        uint256 currentAgentAssetAmount = agentAssetAmount[hubId][agentId];
        if (currentAgentAssetAmount == 0) {
            uint256 newAgentCount = hubAgentCount[hubId] + 1;
            if (newAgentCount > maxAgentPerHub[hubId]) {
                revert GeneralError(CONTRACT_ID, 4005);
            }
            hubAgentCount[hubId] = newAgentCount;
        }
        uint256 newAgentAssetAmount = currentAgentAssetAmount + assetAmount;
        if (newAgentAssetAmount > maxAssetAmountPerHubPerAgent[hubId]) {
            revert GeneralError(CONTRACT_ID, 4006);
        }

        allHubAssetAmount += assetAmount;
        hubAssetAmount[hubId] = newHubAssetAmount;
        agentAssetAmount[hubId][agentId] = newAgentAssetAmount;

        hubRewardAmount[hubId] += rewardDebtAmount;
        agentRewardDebt[hubId][agentId] += rewardDebtAmount;
        emit Deposit(hubId, agentId, assetAmount);
    }

    function _withdraw(
        address user,
        uint256 hubId,
        uint256 agentId,
        uint256 assetAmount,
        uint256 rewardAmount
    ) private {
        uint256 currentAgentAssetAmount = agentAssetAmount[hubId][agentId];
        if (assetAmount == 0 || currentAgentAssetAmount < assetAmount) {
            revert GeneralError(CONTRACT_ID, 4007);
        }
        uint256 newAgentAssetAmount = currentAgentAssetAmount - assetAmount;
        if (newAgentAssetAmount == 0) {
            hubAgentCount[hubId] -= 1;
        }
        uint256 currentAgentRewardDebt = agentRewardDebt[hubId][agentId];
        uint256 rewardDebt = assetAmount.mulDiv(currentAgentRewardDebt, currentAgentAssetAmount, Math.Rounding.Floor);
        uint256 rewardEarned = rewardAmount - rewardDebt;

        allHubAssetAmount -= assetAmount;
        hubAssetAmount[hubId] -= assetAmount;
        agentAssetAmount[hubId][agentId] = newAgentAssetAmount;

        hubRewardAmount[hubId] -= rewardAmount;
        agentRewardDebt[hubId][agentId] = currentAgentRewardDebt - rewardDebt;
        agentLifetimeReward[agentId][hubId] += rewardEarned;
        userRewardClaimable[user] += rewardEarned;
        emit Withdraw(hubId, agentId, assetAmount);
        emit RewardEarned(user, agentId, hubId, rewardEarned);
    }
}
