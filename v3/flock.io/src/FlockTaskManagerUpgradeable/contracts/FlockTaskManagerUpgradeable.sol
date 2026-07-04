// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

import "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";
import "./interfaces/IFlTask.sol";
import {AdminUpgradeable} from "./AdminUpgradeable.sol";
import "./interfaces/IFlTaskManager.sol";
import "./interfaces/IFlockPool.sol";
import "./interfaces/IFlockPoolManager.sol";
import "./config/FlockConfig.sol";
import "./config/ConfigHelper.sol";

/**
 * @title FlockTaskManagerUpgradeable
 * @notice Flock Task Manager contract with stake and reward functions
 * @author Ryon
 */
contract FlockTaskManagerUpgradeable is AdminUpgradeable {
    //////////////////////////////////////////////////////////////////////
    ////////////////////////// LIBRARIES /////////////////////////////////
    //////////////////////////////////////////////////////////////////////
    using ConfigHelper for FlockConfig;
    using EnumerableSet for EnumerableSet.AddressSet;
    using EnumerableSet for EnumerableSet.UintSet;

    //////////////////////////////////////////////////////////////////////
    ////////////////////////// CONSTANTS /////////////////////////////////
    //////////////////////////////////////////////////////////////////////
    uint256 public baseStakeAmount; // Base stake amount for creation, in tokens per day, say if the task is for 30 days, the stake amount will be 30 tokens
    uint256 public maxDuration; // Maximum duration for tasks
    uint256 public minNodeStakes; // Minimum stake amount for training nodes
    uint256 public rewardTokenPerDay; // Reward token per day
    uint256 public rewardPercentageForNodes; // Reward Percentage for nodes,100 is 1%
    uint256 public rewardPercentageForValidators; // Reward Percentage for validators,100 is 1%
    uint256 public lockedRewardPercentage; // Locked Reward Percentage for daily emission,100 is 90%
    uint256 public unlockedRewardPercentage; // Unlocked Reward Percentage for daily emission,100 is 10%
    uint256 public rewardPercentageBase; // Reward token per day
    uint256 public validatorMinStake; // Minimum stake amount for validators
    uint256 public totalActiveTaskStakes; // Current Stakes for All Active Tasks
    uint256 public validatorWithdrawalFeePercentage;
    uint256 public flTaskRewardAmountDaily; // FL Task reward amount daily
    uint256 public gamma; // Gamma value for the reward calculation
    uint256 public feePercentage; // Fee percentage for the claiming rewards


    //////////////////////////////////////////////////////////////////////
    ////////////////////////// VARIABLES /////////////////////////////////
    //////////////////////////////////////////////////////////////////////
    IMintBurnableERC20 public flockToken;
    FlockConfig public config;

    // Array of task IDs
    uint256[] public taskIds;
    // Current Active Task ID to Total Stake Amount
    mapping(uint256 => uint256) public taskStakes;
    // Task ID to Task details
    mapping(uint256 => Task) public tasks;
    // Mapping from taskID to node address to stake amount
    mapping(uint256 => mapping(address => uint256)) public nodeStakes;
    // Mapping from taskID to validator address to stake amount
    mapping(uint256 => mapping(address => uint256)) public validatorStakes;
    // Mapping from taskID to delegator address to stake amount
    mapping(uint256 => mapping(address => uint256)) public delegatorStakes;
    // Mapping from task ID to validator to delegator address to staked amount
    mapping(uint256 => mapping(address => mapping(address => uint256))) public validatorDelegatorStakes;
    // Mapping from task ID to validator to delegator addresses
    mapping(uint256 => mapping(address => EnumerableSet.AddressSet)) private validatorDelegators;
    // Mapping from task ID to validator to total delegator stakes
    mapping(uint256 => mapping(address => uint256)) public validatorTotalDelegatorStakes;
    // Mapping from task ID to delegator to validator address to staked amount
    mapping(uint256 => mapping(address => mapping(address => uint256))) public delegatorValidatorStakes;
    // Task ID to Locked Reward for Nodes
    mapping(uint256 => uint256) public lockedRewardsForNodes;
    // Most recent reward for node, Task ID=>Reward
    mapping(uint256 => uint256) public latestRewardForNodes;
    // Most recent reward for validators, Task ID=>Reward
    mapping(uint256 => uint256) public latestRewardForValidators;
    // Most recent reward for delegators,Task ID=> (Validator address=>Reward)
    mapping(uint256 => mapping(address => uint256)) public latestRewardForDelegators;
    // Total Reward for address
    mapping(address => uint256) public userRewards;
    // FL Task stakes
    mapping(address => uint256) public flTaskStakes;
    // Mapping from task ID to array of validators validating the task
    mapping(uint256 => address[]) public taskValidators;
    // Mapping from node address to array of task IDs
    mapping(address => uint256[]) public nodeTasks;
    // Mapping from validator address to array of task IDs
    mapping(address => uint256[]) public validatorTasks;
    // Mapping from address to reward available tasks
    mapping(address => EnumerableSet.UintSet) private availableRewardTasks;
    // Mapping from task ID to total reward
    mapping(uint256 => uint256) public taskRewards;
    // Mapping from task ID to map of unlocked rewards for each role
    mapping(uint256 => mapping(address => mapping(ROLE => uint256))) public unlockedRewardsByRole;
    // Mapping from taskID to total node stake amount
    mapping(uint256 => uint256) public totalNodeStakesPerTask;
    // Mapping from taskID to total validator stake amount
    mapping(uint256 => uint256) public totalValidatorStakesPerTask;
    // Mapping from taskID to validator address to stake amount
    mapping(uint256 => mapping(address => uint256)) public totalDelegatorStakesPerTaskPerValidator;
    // Mapping from address to stakes
    mapping(address => uint256) public totalStakes;


    //////////////////////////////////////////////////////////////////////
    ////////////////////////// STRUCTS ///////////////////////////////////
    //////////////////////////////////////////////////////////////////////
    struct Task {
        uint256 id;
        bool isCompleted;
        address creator;
        uint256 startTime;
        uint256 expectedDuration;
        uint256 stakeAmount;
        string taskName;
    }

    //////////////////////////////////////////////////////////////////////
    ////////////////////////// ENUMS /////////////////////////////////////
    //////////////////////////////////////////////////////////////////////
    enum ROLE {
        NODE,
        VALIDATOR,
        DELEGATOR,
        NODE_VALIDATOR
    }

    //////////////////////////////////////////////////////////////////////
    ////////////////////////// EVENTS ////////////////////////////////////
    //////////////////////////////////////////////////////////////////////
    event TaskCreated(uint256 indexed taskId, address indexed creator, uint256 expectedDuration, uint256 stakeAmount);
    event NodeStakeDeposited(uint256 indexed taskId, address indexed node, uint256 amount);
    event NodeStakeWithdrawn(uint256 indexed taskId, address indexed node, uint256 amount);
    event RewardsClaimed(address indexed node, uint256 rewardAmount);
    event ValidatorStakeDeposited(uint256 indexed taskId, address indexed validator, uint256 amount);
    event ValidatorStakeWithdrawn(uint256 indexed taskId, address indexed validator, uint256 amount);
    event DelegatorStaked(uint256 indexed taskId, address indexed validator, address indexed delegator, uint256 amount);
    event DelegatorUnstaked(uint256 indexed taskId, address indexed validator, address indexed delegator, uint256 amount);
    event TaskFinished(uint256 taskId);
    event UploadNodeRewardPerTask(uint256 indexed taskId, uint256 nodeStake, uint256 rewardAmount);
    event UploadValidatorRewardPerTask(uint256 indexed taskId, uint256 validatorStake, uint256 rewardAmount);
    event UploadDelegatorRewardPerTaskPerUser(uint256 indexed taskId, address indexed user, uint256 delegatorStake, uint256 rewardAmount);
    event ParticipantRewarded(address indexed participant, uint256 reward, uint256 taskId, ROLE role);
    event FLTaskRewardTransferred(address indexed flTaskAddress, uint256 reward);
    event DelegationAmountChanged(address indexed user, uint256 totalDelegationAmount);
    event MintDailyReward(uint256 rewardAmount);

    //////////////////////////////////////////////////////////////////////
    ////////////////////////// CONSTRUCTORS //////////////////////////////
    //////////////////////////////////////////////////////////////////////
    /**
     * @notice Initialize the contract
     * @param _flockConfig The address of the Flock Config
     */
    function initialize(address _flockConfig) public initializer {
        __AdminUpgradeable_init(msg.sender);
        config = FlockConfig(_flockConfig);
        // Initialize the default values, for upgradeable contracts, the values are not stored in the contract storage
        baseStakeAmount = 0;
        maxDuration = 30 days;
        minNodeStakes = 10 * 1e18;
        rewardTokenPerDay = 1074 * 1e18;
        rewardPercentageForNodes = 700000;
        rewardPercentageForValidators = 300000;
        lockedRewardPercentage = 900000;
        unlockedRewardPercentage = 100000;
        rewardPercentageBase = 1000000;
        validatorMinStake = 50 * 1e18;
        validatorWithdrawalFeePercentage = 150000;
    }

    //////////////////////////////////////////////////////////////////////
    ////////////////////////// ADMIN OPERATIONS //////////////////////////
    //////////////////////////////////////////////////////////////////////
    /**
     * @notice Set the base stake amount for task creation
     * @param _baseStakeAmount The base stake amount
     */
    function setBaseStakeAmount(uint256 _baseStakeAmount) external onlyAdmin {
        baseStakeAmount = _baseStakeAmount;
    }

    /**
     * @notice Set the reward token per day
     * @param _rewardTokenPerDay The reward token per day
     */
    function setRewardTokenPerDay(uint256 _rewardTokenPerDay) external onlyAdmin {
        rewardTokenPerDay = _rewardTokenPerDay;
    }

    /**
     * @notice Set the locked reward percentage
     * @param _lockedRewardPercentage The locked reward percentage
     */
    function setLockedRewardPercentage(uint256 _lockedRewardPercentage) external onlyAdmin {
        lockedRewardPercentage = _lockedRewardPercentage;
    }

    /**
     * @notice Set the unlocked reward percentage
     * @param _unlockedRewardPercentage The unlocked reward percentage
     */
    function setUnlockedRewardPercentage(uint256 _unlockedRewardPercentage) external onlyAdmin {
        unlockedRewardPercentage = _unlockedRewardPercentage;
    }

    /**
     * @notice Set the reward percentage base
     * @param _rewardPercentageBase The reward percentage base
     */
    function setRewardPercentageBase(uint256 _rewardPercentageBase) external onlyAdmin {
        rewardPercentageBase = _rewardPercentageBase;
    }

    /**
     * @notice Set the mininum node stakes
     * @param _minNodeStakes The mininum node stakes
     */
    function setMinNodeStakes(uint256 _minNodeStakes) external onlyAdmin {
        minNodeStakes = _minNodeStakes;
    }

    /**
     * @notice Set the max duration for tasks
     * @param _maxDuration The max duration for tasks
     */
    function setMaxDuration(uint256 _maxDuration) external onlyAdmin {
        maxDuration = _maxDuration;
    }

    /**
     * @notice Set the validator min stake
     * @param _validatorMinStake The validator min stake
     */
    function setValidatorMinStake(uint256 _validatorMinStake) external onlyAdmin {
        validatorMinStake = _validatorMinStake;
    }

    /**
     * @notice Set the validator withdrawal fee percentage
     * @param _validatorWithdrawalFeePercentage The validator withdrawal fee percentage
     */
    function setValidatorFeeWithdrawalPercentage(uint256 _validatorWithdrawalFeePercentage) external onlyAdmin {
        validatorWithdrawalFeePercentage = _validatorWithdrawalFeePercentage;
    }

    /**
     * @notice Set Total Stakes
     * @param _user The user address
     * @param _totalStakes The total stakes
     */
    function setTotalStakes(address _user, uint256 _totalStakes) external {
        require(msg.sender == config.stakeInfoAddress(), "Only stake info contract can call this function");
        totalStakes[_user] = _totalStakes;
    }

    /**
     * @notice Set the gamma value
     * @param _gamma The gamma value
     */
    function setGamma(uint256 _gamma) external onlyAdmin {
        gamma = _gamma;
    }

    /**
     * @notice Set the config address
     * @param _config The config address
     */
    function setConfig(address _config) external onlyAdmin {
        config = FlockConfig(_config);
    }

    /**
     * @notice Set the fee percentage
     * @param _feePercentage The fee percentage
     */
    function setFeePercentage(uint256 _feePercentage) external onlyAdmin {
        feePercentage = _feePercentage;
    }

    ///////////////////////////////////////////////////////////////////////
    /////////////////////////////// ACCESSORS /////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    /**
     * @notice Get node stakes
     * @param _taskId The task ID
     * @param _user The user address
     * @return The node stakes
     */
    function getNodeStakes(uint256 _taskId, address _user) external view returns (uint256) {
        return nodeStakes[_taskId][_user];
    }

    /**
     * @notice Get validator stakes
     * @param _taskId The task ID
     * @param _user The user address
     * @return The validator stakes
     */
    function getValidatorStakes(uint256 _taskId, address _user) external view returns (uint256) {
        return validatorStakes[_taskId][_user];
    }

    /**
     * @notice Get Available Reward Tasks For User
     * @param _user The user address
     */
    function getAvailableRewardTasksForUser(address _user) external view returns (uint256[] memory) {
        return availableRewardTasks[_user].values();
    }

    /**
     * @notice Check if the task is completed
     * @param taskId The task ID
     * @return True if the task is completed
     */
    function isTaskCompleted(uint256 taskId) external view returns (bool) {
        return tasks[taskId].isCompleted;
    }

    /**
     * @notice Get the total stakes for the user
     * @param _user The user address
     * @return The total stakes for the user
     */
    function getTotalStakes(address _user) external view returns (uint256) {
        return totalStakes[_user];
    }

    /**
     * @notice Get Node Tasks
    * @param _user The user address
     * @return The total node task
     */
    function getNodeTasks(address _user) external view returns (uint256[] memory) {
        return nodeTasks[_user];
    }

    /**
     * @notice Get Validator Tasks
     * @param _user The user address
     * @return The total validator task
     */
    function getValidatorTasks(address _user) external view returns (uint256[] memory) {
        return validatorTasks[_user];
    }

    ///////////////////////////////////////////////////////////////////////
    ////////////////////////// CREATOR SCENARIOS //////////////////////////
    ///////////////////////////////////////////////////////////////////////
    /**
     * @notice Create a task
     * @param taskId The task ID
     * @param expectedDuration The expected duration of the task
     */
    function createTask(uint256 taskId, uint256 expectedDuration, string memory taskName) external onlyAdmin {
        require(taskId!=0,"Invalid task ID");
        require(expectedDuration > 0 && expectedDuration <= maxDuration, "Invalid task duration");
        // Ensure the taskId does not already exist
        require(tasks[taskId].expectedDuration == 0, "Task ID already exists");

        // Calculate stake amount based on the task's expected duration
        uint256 stakeAmount = (baseStakeAmount * expectedDuration) / 1 days;

        // Transfer stake amount from the user to the contract
        require(config.getFlockToken().transferFrom(msg.sender, address(this), stakeAmount), "Stake transfer failed");

        // Create and store the task
        tasks[taskId] = Task({id: taskId, creator: msg.sender, startTime: block.timestamp, expectedDuration: expectedDuration, stakeAmount: stakeAmount, isCompleted: false, taskName: taskName});

        // Add the task ID to the taskIds array
        taskIds.push(taskId);

        if (stakeAmount > 0) {
            config.getStakeInfo().addStakes(taskId, stakeAmount, uint256(ROLE.VALIDATOR), msg.sender);
        }
        emit TaskCreated(taskId, msg.sender, expectedDuration, stakeAmount);
    }

    //////////////////////////////////////////////////////////////////////
    ////////////////////////// NODE SCENARIOS ////////////////////////////
    //////////////////////////////////////////////////////////////////////
    /**
     * @notice Stake tokens for training nodes
     * @param taskId The task ID
     * @param additionalStakes The additional stakes
     */
    function stakeTokensForTrainingNodes(uint256 taskId, uint256 additionalStakes) external {
        require(tasks[taskId].id != 0, "Task does not exist");
        require(!tasks[taskId].isCompleted, "Task already completed");
        require(validatorStakes[taskId][msg.sender] == 0, "Already staked as validator");
        nodeStakes[taskId][msg.sender] += additionalStakes;
        require(nodeStakes[taskId][msg.sender] >= minNodeStakes, "Stake amount is less than minimum stake amount");
        require(config.getFlockToken().transferFrom(msg.sender, address(this), additionalStakes), "Stake transfer failed");
        if (nodeStakes[taskId][msg.sender] == additionalStakes) {
            nodeTasks[msg.sender].push(taskId);
        }
        config.getStakeInfo().addStakes(taskId, additionalStakes, uint256(ROLE.NODE), msg.sender);
        availableRewardTasks[msg.sender].add(taskId);
        emit NodeStakeDeposited(taskId, msg.sender, nodeStakes[taskId][msg.sender]);
    }

    /**
     * @notice Withdraw stake tokens for training nodes
     * @param taskId The task ID
     */
    function withdrawStakeTokensForTrainingNodes(uint256 taskId) external {
        require(nodeStakes[taskId][msg.sender] > 0, "No stake found");
        require(tasks[taskId].isCompleted, "Task is not yet completed");
        uint256 stakedAmount = nodeStakes[taskId][msg.sender];
        nodeStakes[taskId][msg.sender] = 0;
        config.getStakeInfo().removeStakes(taskId, stakedAmount, uint256(ROLE.NODE), msg.sender);
        require(config.getFlockToken().transfer(msg.sender, stakedAmount), "Stake return failed");
        emit NodeStakeWithdrawn(taskId, msg.sender, stakedAmount);
    }

    /**
     * @notice Claim rewards for training nodes
     */
    function claimRewards() external {
        uint256 fee = userRewards[msg.sender]*feePercentage/rewardPercentageBase;
        uint256 rewardAmount = userRewards[msg.sender]- fee;
        userRewards[msg.sender] = 0;
        require(config.getFlockToken().transfer(msg.sender, rewardAmount), "Reward transfer failed");
        require(config.getFlockToken().transfer(config.flockTokenAddress(), fee), "Fee transfer failed");

        emit RewardsClaimed(msg.sender, rewardAmount);
        uint256 taskCount = availableRewardTasks[msg.sender].length();
        // traverse through all the tasks and remove the task from available reward tasks
        for (uint256 i = taskCount; i > 0; i--) {
            uint256 taskId = availableRewardTasks[msg.sender].at(i - 1);
            unlockedRewardsByRole[taskId][msg.sender][ROLE.NODE] = 0;
            unlockedRewardsByRole[taskId][msg.sender][ROLE.VALIDATOR] = 0;
            unlockedRewardsByRole[taskId][msg.sender][ROLE.DELEGATOR] = 0;
            // if task is completed remove the task from available reward tasks
            if (tasks[taskId].isCompleted) {
                availableRewardTasks[msg.sender].remove(taskId);
            }
        }
    }

    //////////////////////////////////////////////////////////////////////
    ////////////////////////// VALIDATOR SCENARIO ////////////////////////
    //////////////////////////////////////////////////////////////////////
    /**
     * @notice Stake tokens for validators
     * @param taskId The task ID
     * @param additionalStakes The additional stakes
     */
    function stakeTokensForValidators(uint256 taskId, uint256 additionalStakes) external {
        require(tasks[taskId].id != 0, "Task does not exist");
        require(!tasks[taskId].isCompleted, "Task already completed");
        require(nodeStakes[taskId][msg.sender] == 0, "Already staked as node");
        validatorStakes[taskId][msg.sender] += additionalStakes;
        require(validatorStakes[taskId][msg.sender] >= validatorMinStake, "Stake amount is less than minimum stake amount");
        require(config.getFlockToken().transferFrom(msg.sender, address(this), additionalStakes), "Stake transfer failed");
        config.getStakeInfo().addStakes(taskId, additionalStakes, uint256(ROLE.VALIDATOR), msg.sender);
        if (validatorStakes[taskId][msg.sender] == additionalStakes) {
            validatorTasks[msg.sender].push(taskId);
            taskValidators[taskId].push(msg.sender);
        }
        availableRewardTasks[msg.sender].add(taskId);
        emit ValidatorStakeDeposited(taskId, msg.sender, validatorStakes[taskId][msg.sender]);
    }

    /**
     * @notice Withdraw stake tokens for validators
     * @param taskId The task ID
     */
    function withdrawStakeTokensForValidators(uint256 taskId) external {
        require(validatorStakes[taskId][msg.sender] > 0, "No stake found");
        require(tasks[taskId].isCompleted, "Task is not yet completed");

        uint256 stakedAmount = validatorStakes[taskId][msg.sender];
        validatorStakes[taskId][msg.sender] = 0;

        // the fee is the product of validatorFeeWithdrawalPercentage and stakedAmount divided by rewardPercentageBase
        uint256 withdrawalFee = (validatorWithdrawalFeePercentage * stakedAmount) / rewardPercentageBase;
        // the withdrawalAmount amount is the stakedAmount minus the withdrawalFee
        uint256 withdrawalAmount = stakedAmount - withdrawalFee;
        config.getStakeInfo().removeStakes(taskId, stakedAmount, uint256(ROLE.VALIDATOR), msg.sender);
        require(config.getFlockToken().transfer(msg.sender, withdrawalAmount), "Stake return failed");
        emit ValidatorStakeWithdrawn(taskId, msg.sender, withdrawalAmount);
    }

    //////////////////////////////////////////////////////////////////////
    ////////////////////////// FL TASKS //////////////////////////////////
    //////////////////////////////////////////////////////////////////////
    /**
     * @notice Transfer rewards to FL tasks
     */
    function transferRewardsToFLTasks() external onlyAdmin {
        address[] memory activeFlTasks = config.getTaskManager().getTasks();
        // Get total stakes in FL tasks
        uint256 totalStakesInFlTasks = 0;
        for (uint i = 0; i < activeFlTasks.length; i++) {
            IFlTask flTask = IFlTask(activeFlTasks[i]);
            totalStakesInFlTasks += flTask.getTotalStakes();
        }

        flTaskRewardAmountDaily = 0;
        for (uint i = 0; i < activeFlTasks.length; i++) {
            address flTaskAddress = activeFlTasks[i];
            IFlTask flTask = IFlTask(flTaskAddress);
            uint256 stakes = flTask.getTotalStakes();
            uint256 rewardForFlTask = (rewardTokenPerDay * stakes) / (config.getStakeInfo().getTotalActiveTaskStakes(uint256(ROLE.NODE_VALIDATOR)) + totalStakesInFlTasks);
            config.getFlockToken().approve(flTaskAddress, rewardForFlTask);
            flTask.fundRewardPool(rewardForFlTask);
            flTaskRewardAmountDaily += rewardForFlTask;
            emit FLTaskRewardTransferred(flTaskAddress, rewardForFlTask);
        }
    }

    //////////////////////////////////////////////////////////////////////
    ////////////////////////// DAILY OPERATIONS //////////////////////////
    //////////////////////////////////////////////////////////////////////
    /**
     * @notice Mint daily reward
     */
    function mintDailyReward() external onlyAdmin {
        config.getFlockToken().mint(address(this), rewardTokenPerDay);
        emit MintDailyReward(rewardTokenPerDay);
    }

    /**
     * @notice Mark a task as finished
     * @param taskId The task ID
     */
    function markTaskAsFinished(uint256 taskId) internal {
        require(tasks[taskId].id != 0, "Task does not exist");
        require(!tasks[taskId].isCompleted, "Task already completed");

        tasks[taskId].isCompleted = true;

        config.getStakeInfo().clearStakes(taskId);

        emit TaskFinished(taskId);
    }

    /**
     * @notice Upload reward results for training nodes
     * @param taskId The task ID
     * @param trainingNodesAddrs The training nodes addresses
     * @param rewardPercentages The reward percentages
     */
    function uploadRewardResultsForTrainingNodes(uint256 taskId, address[] calldata trainingNodesAddrs, uint256[] calldata rewardPercentages) public onlyAdmin {
        require(tasks[taskId].id != 0, "Task does not exist");
        require(!tasks[taskId].isCompleted, "Task already completed");
        require(trainingNodesAddrs.length == rewardPercentages.length, "Mismatched arrays length");
        uint256 taskRewardForDelegator = 0;
        uint256 rewardTokenPerDayForArena = rewardTokenPerDay - flTaskRewardAmountDaily;
        uint256 taskRewardForNodeAndDelegator = (rewardTokenPerDayForArena * config.getStakeInfo().getTaskWeights(taskId, uint256(ROLE.NODE))) / config.getStakeInfo().getTotalActiveTaskWeights(uint256(ROLE.NODE));
        taskRewardForNodeAndDelegator = (taskRewardForNodeAndDelegator * (gamma + ((rewardPercentageBase - 2 * gamma) * config.getStakeInfo().getTotalNodeStakesPerTask(taskId)) / (config.getStakeInfo().getTotalNodeStakesPerTask(taskId) + config.getStakeInfo().getTotalValidatorStakesPerTask(taskId)))) / rewardPercentageBase;

        lockedRewardsForNodes[taskId] += (lockedRewardPercentage * taskRewardForNodeAndDelegator) / (rewardPercentageBase);
        for (uint i = 0; i < trainingNodesAddrs.length; i++) {
            uint256 newReward = (unlockedRewardPercentage * taskRewardForNodeAndDelegator * rewardPercentages[i]) / (rewardPercentageBase * rewardPercentageBase);
            uint256 rewardForDelegators = distributeRewardToDelegators(taskId, trainingNodesAddrs[i], newReward, ROLE.NODE);

            unlockedRewardsByRole[taskId][trainingNodesAddrs[i]][ROLE.NODE] += newReward - rewardForDelegators;
            userRewards[trainingNodesAddrs[i]] += newReward - rewardForDelegators;
            taskRewardForDelegator += rewardForDelegators;
            emit ParticipantRewarded(trainingNodesAddrs[i], newReward - rewardForDelegators, taskId, ROLE.NODE);
        }
        latestRewardForNodes[taskId] = taskRewardForNodeAndDelegator - taskRewardForDelegator;
        taskRewards[taskId] += taskRewardForNodeAndDelegator;
        emit UploadNodeRewardPerTask(taskId, config.getStakeInfo().getTotalNodeStakesPerTask(taskId), taskRewardForNodeAndDelegator - taskRewardForDelegator);
    }

    /**
     * @notice Upload reward results for validators
     * @param taskId The task ID
     * @param validatorsAddrs The validators addresses
     * @param rewardPercentages The reward percentages
     */
    function uploadRewardResultsForValidators(uint256 taskId, address[] calldata validatorsAddrs, uint256[] calldata rewardPercentages) public onlyAdmin {
        require(tasks[taskId].id != 0, "Task does not exist");
        require(!tasks[taskId].isCompleted, "Task already completed");
        require(validatorsAddrs.length == rewardPercentages.length, "Mismatched arrays length");
        uint256 taskRewardForValidator;
        uint256 rewardTokenPerDayForArena = rewardTokenPerDay - flTaskRewardAmountDaily;
        uint256 taskRewardForValidatorAndDelegator = (rewardTokenPerDayForArena * config.getStakeInfo().getTaskWeights(taskId, uint256(ROLE.VALIDATOR))) / config.getStakeInfo().getTotalActiveTaskWeights(uint256(ROLE.VALIDATOR));
        taskRewardForValidatorAndDelegator = (taskRewardForValidatorAndDelegator * (gamma + ((rewardPercentageBase - 2 * gamma) * config.getStakeInfo().getTotalValidatorStakesPerTask(taskId)) / (config.getStakeInfo().getTotalNodeStakesPerTask(taskId) + config.getStakeInfo().getTotalValidatorStakesPerTask(taskId)))) / rewardPercentageBase;

        for (uint256 i = 0; i < validatorsAddrs.length; i++) {
            address validator = validatorsAddrs[i];
            uint256 rewardForValidatorAndDelegator = (taskRewardForValidatorAndDelegator * rewardPercentages[i]) / rewardPercentageBase;
            uint256 rewardForDelegator = distributeRewardToDelegators(taskId, validator, rewardForValidatorAndDelegator, ROLE.VALIDATOR);
            uint256 rewardForValidator = rewardForValidatorAndDelegator - rewardForDelegator;
            latestRewardForDelegators[taskId][validator] = rewardForDelegator;
            unlockedRewardsByRole[taskId][validator][ROLE.VALIDATOR] += rewardForValidator;
            userRewards[validator] += rewardForValidator;
            taskRewardForValidator += rewardForValidator;
            emit ParticipantRewarded(validator, rewardForValidator, taskId, ROLE.VALIDATOR);
        }
        latestRewardForValidators[taskId] = taskRewardForValidatorAndDelegator;
        taskRewards[taskId] += taskRewardForValidatorAndDelegator;
        emit UploadValidatorRewardPerTask(taskId, config.getStakeInfo().getTotalValidatorStakesPerTask(taskId), taskRewardForValidator);
    }

    /**
     * @notice Only reward results for validators
     * @param taskId The task ID
     * @param validatorsAddrs The validators addresses
     * @param rewardPercentages The reward percentages
     */
    function uploadRewardResultsOnlyForValidators(uint256 taskId, address[] calldata validatorsAddrs, uint256[] calldata rewardPercentages) public onlyAdmin {
        require(tasks[taskId].id != 0, "Task does not exist");
        require(!tasks[taskId].isCompleted, "Task already completed");
        require(validatorsAddrs.length == rewardPercentages.length, "Mismatched arrays length");
        uint256 taskRewardForValidator;
        uint256 rewardTokenPerDayForArena = rewardTokenPerDay - flTaskRewardAmountDaily;
        uint256 taskRewardForValidatorAndDelegator = (rewardTokenPerDayForArena * config.getStakeInfo().getTaskWeights(taskId, uint256(ROLE.VALIDATOR))) / config.getStakeInfo().getTotalActiveTaskWeights(uint256(ROLE.VALIDATOR));

        for (uint256 i = 0; i < validatorsAddrs.length; i++) {
            address validator = validatorsAddrs[i];
            uint256 rewardForValidatorAndDelegator = (taskRewardForValidatorAndDelegator * rewardPercentages[i]) / rewardPercentageBase;

            uint256 rewardForDelegator = distributeRewardToDelegators(taskId, validator, rewardForValidatorAndDelegator, ROLE.VALIDATOR);
            uint256 rewardForValidator = rewardForValidatorAndDelegator - rewardForDelegator;
            latestRewardForDelegators[taskId][validator] = rewardForDelegator;
            unlockedRewardsByRole[taskId][validator][ROLE.VALIDATOR] += rewardForValidator;
            userRewards[validator] += rewardForValidator;
            taskRewardForValidator += rewardForValidator;
            emit ParticipantRewarded(validator, rewardForValidator, taskId, ROLE.VALIDATOR);
        }
        latestRewardForValidators[taskId] = taskRewardForValidatorAndDelegator;
        taskRewards[taskId] += taskRewardForValidatorAndDelegator;
        emit UploadValidatorRewardPerTask(taskId, config.getStakeInfo().getTotalValidatorStakesPerTask(taskId), taskRewardForValidator);
    }

    /**
     * @notice Distribute reward to delegators, separated out this function due to limited stack depth
     * @param taskId The task ID
     * @param user The user address
     * @param rewardForUserAndDelegator The reward for user and delegator
     * @param role The role
     * @return The total reward for delegators
     */
    function distributeRewardToDelegators(uint256 taskId, address user, uint256 rewardForUserAndDelegator, ROLE role) internal returns (uint256) {
        address poolAddress = config.getPoolManager().getMiniPool(user);
        uint256 userSigma = config.getPoolManager().getPoolSigma(user);
        uint256 delegationTokenAmount = config.getStakeInfo().getDelegationTokenAmountForUser(user, taskId, uint256(role));
        if (delegationTokenAmount == 0) {
            return 0;
        }
        uint256 totalRewardForDelegators = 0;
        if (role == ROLE.NODE) {
            totalRewardForDelegators = ((rewardPercentageBase - userSigma) * rewardForUserAndDelegator * delegationTokenAmount) / (delegationTokenAmount + nodeStakes[taskId][user]) / rewardPercentageBase;
        } else if (role == ROLE.VALIDATOR) {
            totalRewardForDelegators = ((rewardPercentageBase - userSigma) * rewardForUserAndDelegator * delegationTokenAmount) / (delegationTokenAmount + validatorStakes[taskId][user]) / rewardPercentageBase;
        }
        IFlockPool pool = IFlockPool(poolAddress);
        config.getFlockToken().approve(address(pool), totalRewardForDelegators);
        pool.fundPool(totalRewardForDelegators);

        emit UploadDelegatorRewardPerTaskPerUser(taskId, user, delegationTokenAmount, totalRewardForDelegators);
        return totalRewardForDelegators;
    }

    /**
     * @notice Upload final reward results for training nodes to distribute locked rewards
     * @param taskId The task ID
     * @param trainingNodesAddrs The training nodes addresses
     * @param rewardPercentages The reward percentages
     */
    function uploadFinalRewardResultsForTrainingNodes(uint256 taskId, address[] calldata trainingNodesAddrs, uint256[] calldata rewardPercentages) public onlyAdmin {
        markTaskAsFinished(taskId);
        require(tasks[taskId].id != 0, "Task does not exist");
        require(tasks[taskId].isCompleted, "Task not completed");
        require(trainingNodesAddrs.length == rewardPercentages.length, "Mismatched arrays length");
        uint256 taskRewardForDelegator = 0;
        for (uint i = 0; i < trainingNodesAddrs.length; i++) {
            uint256 newReward = (lockedRewardsForNodes[taskId] * rewardPercentages[i]) / rewardPercentageBase;
            uint256 rewardForDelegators = distributeRewardToDelegators(taskId, trainingNodesAddrs[i], newReward, ROLE.NODE);
            unlockedRewardsByRole[taskId][trainingNodesAddrs[i]][ROLE.NODE] += newReward - rewardForDelegators;
            userRewards[trainingNodesAddrs[i]] += newReward - rewardForDelegators;
            taskRewardForDelegator += rewardForDelegators;
            emit ParticipantRewarded(trainingNodesAddrs[i], newReward - rewardForDelegators, taskId, ROLE.NODE);
        }
        emit UploadNodeRewardPerTask(taskId, config.getStakeInfo().getTotalNodeStakesPerTask(taskId), lockedRewardsForNodes[taskId]-taskRewardForDelegator);
        lockedRewardsForNodes[taskId] = 0;
    }

    //////////////////////////////////////////////////////////////////////
    ////////////////////////////// CALLBACKS /////////////////////////////
    //////////////////////////////////////////////////////////////////////
    /**
     * @notice Callback function after delegation update
     * @param user The user address
     */
    function afterDelegationUpdate(address user) external {
        address poolAddress = config.getPoolManager().getMiniPool(user);
        require(config.getPoolManager().isPool(msg.sender), "Not a pool");
        config.getStakeInfo().retallyDelegation(user);
        IFlockPool pool = IFlockPool(poolAddress);
        emit DelegationAmountChanged(user, pool.getTotalDelegationAmount());
    }
}
