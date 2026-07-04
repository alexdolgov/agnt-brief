// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "@openzeppelin/contracts-upgradeable/token/ERC20/IERC20Upgradeable.sol";
import "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";
import "@openzeppelin/contracts-upgradeable/security/ReentrancyGuardUpgradeable.sol";
import "@openzeppelin/contracts/utils/cryptography/ECDSA.sol";
import {AdminUpgradeable} from "../AdminUpgradeable.sol";

contract FlockRewardPool is AdminUpgradeable,ReentrancyGuardUpgradeable{
    using EnumerableSet for EnumerableSet.AddressSet;
    using ECDSA for bytes32;

    mapping(uint256=>bool) public taskExists;
    mapping(uint256=>EnumerableSet.AddressSet) private taskAdmins; // taskId => admins
    mapping(uint256=> mapping(address=>uint256)) public totalDeposited; // taskId => token => total deposited amount
    mapping(uint256=>EnumerableSet.AddressSet) private taskRewardTokens; // taskId => reward tokens
    mapping(uint256=>mapping(address=>mapping(address=>uint256))) public claimedReward; // taskId => user => token => claimed amount

    struct SignedTaskUserReward {
        uint256 taskId;
        address token;
        uint256 chainId;
        address user;
        uint256 amount;
        bytes signature;
    }

    IERC20Upgradeable public gmFlockToken;
    EnumerableSet.AddressSet stakers; // stakers for this task
    mapping(address => uint256) stakedAmounts; // user => staked amount
    mapping(address=>uint256) stakedAt; // user => timestamp of last stake

    uint256 public lockPeriod ; // Default lock period for rewards
    uint256 public feePercentage ; // Fee percentage for admin withdrawals, can be set to 0 if no fees are required
    uint256 public feeCollected; // Total fees collected

    event RewardDeposited(uint256 indexed taskId, address indexed token, uint256 amount);
    event RewardClaimed(uint256 indexed taskId, address indexed user, address indexed token, uint256 amount);
    event Stake(address indexed user, uint256 amount);
    event Unstake(address indexed user, uint256 amount);
    event TaskInitialized(uint256 indexed taskId, address[] admins);


    function initialize(address _gmFlockToken) public initializer {
        __AdminUpgradeable_init(msg.sender);
        __ReentrancyGuard_init();
        require(_gmFlockToken != address(0), "Invalid gmFlock token address");
        gmFlockToken = IERC20Upgradeable(_gmFlockToken);
        lockPeriod = 1 days; // Default lock period of 1 days
        feePercentage = 0; // Default fee percentage is 0
    }


    function setLockPeriod(uint256 _lockPeriod) external onlyAdmin {
        require(_lockPeriod > 0, "Lock period must be greater than zero");
        lockPeriod = _lockPeriod;
    }

    function setFeePercentage(uint256 _feePercentage) external onlyAdmin {
        require(_feePercentage <= 100, "Fee percentage cannot exceed 100");
        feePercentage = _feePercentage;
    }

    function initializeTask(
        uint256 taskId,
        address[] calldata admins
    ) external onlyAdmin {
        require(!taskExists[taskId], "Task already exists");
        require(admins.length > 0, "Admins required");

        taskExists[taskId] = true;
        for (uint256 i = 0; i < admins.length; i++) {
            require(admins[i] != address(0), "Invalid admin address");
            taskAdmins[taskId].add(admins[i]);
        }
        emit TaskInitialized(taskId, admins);
    }

    function addTaskAdmin(
        uint256 taskId,
        address admin
    ) external onlyAdmin {
        require(taskExists[taskId], "Task does not exist");
        require(admin != address(0), "Invalid admin address");
        require(!taskAdmins[taskId].contains(admin), "Already an admin");

        taskAdmins[taskId].add(admin);
    }

    function removeTaskAdmin(
        uint256 taskId,
        address admin
    ) external onlyAdmin {
        require(taskExists[taskId], "Task does not exist");
        require(taskAdmins[taskId].contains(admin), "Not an admin");

        taskAdmins[taskId].remove(admin);
    }


    function setGmFlockToken(address _gmFlockToken) external onlyAdmin {
        require(_gmFlockToken != address(0), "Invalid gmFlock token address");
        gmFlockToken = IERC20Upgradeable(_gmFlockToken);
    }

    function stake(
        uint256 amount
    ) external  {
        require(amount > 0, "Amount is zero");

        gmFlockToken.transferFrom(msg.sender, address(this), amount);
        stakedAmounts[msg.sender] += amount;
        if (!stakers.contains(msg.sender)) {
            stakers.add(msg.sender);
        }
        stakedAt[msg.sender] = block.timestamp;
        emit Stake(msg.sender, amount);
    }

    function unstake(
        uint256 amount
    ) external {
        require(amount > 0, "Amount is zero");
        require(stakedAmounts[msg.sender] >= amount, "Insufficient staked amount");
        require(block.timestamp >= stakedAt[msg.sender] + lockPeriod, "Tokens are locked");

        stakedAmounts[msg.sender] -= amount;
        if (stakedAmounts[msg.sender] == 0) {
            stakers.remove(msg.sender);
        }

        // Apply fee if set
        uint256 fee = (amount * feePercentage) / 100;
        if (fee > 0) {
            amount -= fee; // Reduce the amount by the fee
            feeCollected += fee; // Collect the fee
        }

        gmFlockToken.transfer(msg.sender, amount);
        emit Unstake( msg.sender, amount);
    }

    function withdrawFee(address to) external onlyAdmin {
        require(to != address(0), "Invalid address");
        require(feeCollected > 0, "No fees collected");

        uint256 amount = feeCollected;
        feeCollected = 0; // Reset the fee collected after withdrawal
        gmFlockToken.transfer(to, amount);
    }

    function getStakedAmount(address user) external view  returns (uint256) {
        return stakedAmounts[user];
    }

    function getStakers() external view  returns (address[] memory) {
        return stakers.values();
    }


    function depositReward(
        uint256 taskId,
        address token,
        uint256 amount
    ) external {
        require(amount > 0, "Amount is zero");
        require(taskExists[taskId], "Task does not exist");
        require(taskAdmins[taskId].contains(msg.sender), "Not an admin");


        IERC20Upgradeable(token).transferFrom(msg.sender, address(this), amount);
        totalDeposited[taskId][token] += amount;
        taskRewardTokens[taskId].add(token);

        emit RewardDeposited(taskId, token, amount);
    }


    function claim(SignedTaskUserReward[] calldata rewards) external nonReentrant{
        for (uint256 i = 0; i < rewards.length; i++) {
            uint256 taskId = rewards[i].taskId;
            require(taskExists[taskId], "Task does not exist");
            SignedTaskUserReward calldata reward = rewards[i];

            require(reward.chainId == block.chainid, "Invalid chainId");
            require(reward.user == msg.sender, "Invalid user");

            bytes32 hash = keccak256(
                abi.encodePacked("TASK_SIGN", reward.taskId, reward.token, reward.chainId, reward.user, reward.amount)
            );

            address recovered = hash.toEthSignedMessageHash().recover(reward.signature);
            require(isAdmin(recovered), "Invalid signature");

            uint256 claimedAmount = claimedReward[taskId][msg.sender][reward.token];
            uint256 claimableAmount= reward.amount- claimedAmount;

            if(claimableAmount > 0) {
                claimedReward[taskId][msg.sender][reward.token] += claimableAmount;

                IERC20Upgradeable(reward.token).transfer(msg.sender, claimableAmount);
                emit RewardClaimed(taskId, msg.sender, reward.token, claimableAmount);
            }

        }
    }

    function getClaimed(uint256 taskId, address user, address token) public view returns (uint256) {
        return claimedReward[taskId][user][token];
    }

    function getRewardTokens(uint256 taskId) external view returns (address[] memory) {
        return taskRewardTokens[taskId].values();
    }

    function getTaskAdmins(uint256 taskId) external view returns (address[] memory) {
        return taskAdmins[taskId].values();
    }

    function getUnlockTime(address user) external view returns (uint256) {
        return stakedAt[user] + lockPeriod;
    }

    function adminWithdraw(address token, uint256 amount, address to) external onlyAdmin {
        require(to != address(0), "Invalid address");
        IERC20Upgradeable(token).transfer(to, amount);
    }
}
