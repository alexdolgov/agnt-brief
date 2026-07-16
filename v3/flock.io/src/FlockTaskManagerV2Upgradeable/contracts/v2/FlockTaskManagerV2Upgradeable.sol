// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

import "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";
import "../interfaces/IFlTask.sol";
import "../interfaces/IFlTaskManager.sol";
import "../interfaces/IFlockPool.sol";
import "../interfaces/ILinearVestingDepositor.sol";
import "./config/FlockConfigV2.sol";
import "./config/ConfigHelperV2.sol";
import {RbacUpgradeable} from "./RbacUpgradeable.sol";

/**
 * @title FlockTaskManagerV2Upgradeable
 * @notice Flock Task Manager contract with stake and reward functions
 * @author Ryon
 */
contract FlockTaskManagerV2Upgradeable is RbacUpgradeable {
    //////////////////////////////////////////////////////////////////////
    ////////////////////////// LIBRARIES /////////////////////////////////
    //////////////////////////////////////////////////////////////////////
    using ConfigHelperV2 for FlockConfigV2;
    using EnumerableSet for EnumerableSet.AddressSet;
    using EnumerableSet for EnumerableSet.UintSet;

    //////////////////////////////////////////////////////////////////////
    ////////////////////////// CONSTANTS /////////////////////////////////
    //////////////////////////////////////////////////////////////////////
    uint256 public baseStakeAmount; // Base stake amount for creation, in tokens per day, say if the task is for 30 days, the stake amount will be 30 tokens
    uint256 public maxDuration; // Maximum duration for tasks
    uint256 public minNodeStakes; // Minimum stake amount for training nodes
    uint256 public rewardTokenPerDay; // Reward token per day
    uint256 public lockedRewardPercentage; // Locked Reward Percentage for daily emission,100 is 90%
    uint256 public unlockedRewardPercentage; // Unlocked Reward Percentage for daily emission,100 is 10%
    uint256 public rewardPercentageBase; // Reward token per day
    uint256 public validatorMinStake; // Minimum stake amount for validators
    uint256 public totalActiveTaskStakes; // Current Stakes for All Active Tasks
    uint256 public validatorWithdrawalFeePercentage;
    uint256 public flTaskRewardAmountDaily; // FL Task reward amount daily
    uint256 public gamma; // Gamma value for the reward calculation
    uint256 public feePercentage; // Fee percentage for the claiming rewards
    uint256 public dailyMintResetCount; // Daily mint reset count
    uint256 public dailyMintDecayPercentage; // Daily mint decay percentage
    uint256 public currentDailyMintCount; // Current daily mint count
    uint256 public daysToFreezeSigmaBefore; // Days to freeze sigma
    uint256 public daysToFreezeSigmaAfter; // Days to freeze sigma
    uint256 public maxRewardTokenPerDay; // Maximum reward token per day
    uint256 public lastMintTimestamp; // Last mint timestamp


    //////////////////////////////////////////////////////////////////////
    ////////////////////////// VARIABLES /////////////////////////////////
    //////////////////////////////////////////////////////////////////////
    IMintBurnableERC20 public flockToken;
    FlockConfigV2 public config;

    // Array of task IDs
    uint256[] public taskIds;
    // Array of active task IDs, the task unfinished or finished less than 10 days ago
    uint256[] public activeTaskIds;
    // Current Active Task ID to Total Stake Amount
    mapping(uint256 => uint256) public taskStakes;
    // Task ID to Task details
    mapping(uint256 => Task) public tasks;
    // Mapping from taskID to node address to stake amount
    mapping(uint256 => mapping(address => uint256)) public nodeStakes;
    // Mapping from taskID to validator address to stake amount
    mapping(uint256 => mapping(address => uint256)) public validatorStakes;
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
    // Mapping from address to stakes
    mapping(address => uint256) public totalStakes;
    // Mapping from task ID to map of node address to whether the node is in the task
    mapping(uint256=>mapping(address => bool)) public nodeInTask;
    // Lockup reward vesting period in days
    uint256 public lockupRewardVestingPeriodInDays;
    // address of the linear vesting depositor
    address public linearVestingDepositor;
    // Mapping from task ID to task finished timestamp
    mapping(uint256 => uint256) public taskFinishedTimestamp;

    

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
    event TaskFinished(uint256 taskId);
    event UploadNodeRewardPerTask(uint256 indexed taskId, uint256 nodeStake, uint256 rewardAmount);
    event UploadFinalNodeRewardPerTask(uint256 indexed taskId, uint256 nodeStake, uint256 rewardAmount);
    event UploadValidatorRewardPerTask(uint256 indexed taskId, uint256 validatorStake, uint256 rewardAmount);
    event UploadDelegatorRewardPerTaskPerUser(uint256 indexed taskId, address indexed user, uint256 rewardAmount);
    event ParticipantRewarded(address indexed participant, uint256 reward, uint256 taskId, ROLE role);
    event FLTaskRewardTransferred(address indexed flTaskAddress, uint256 reward);
    event DelegationAmountChanged(address indexed user, uint256 totalDelegationAmount);
    event MintDailyReward(uint256 rewardAmount);
    event CollectFee(address indexed _delegator, uint256 _amount);

    //////////////////////////////////////////////////////////////////////
    ////////////////////////// CONSTRUCTORS //////////////////////////////
    //////////////////////////////////////////////////////////////////////
    /**
     * @notice Initialize the contract
     * @param _flockConfig The address of the Flock Config
     */
    function initialize(address _flockConfig) public initializer {
       __RbacUpgradeable_init(msg.sender);
       config = FlockConfigV2(_flockConfig);
//        // Initialize the default values, for upgradeable contracts, the values are not stored in the contract storage
//        baseStakeAmount = 0;
//        maxDuration = 30 days;
//        minNodeStakes = 3000 * 1e18;
//        rewardTokenPerDay = 1074 * 1e18;
//        lockedRewardPercentage = 900000;
//        rewardPercentageBase = 1000000;
//        validatorMinStake = 3000 * 1e18;
//        dailyMintDecayPercentage = 900000;
//        dailyMintResetCount = 30;
//        daysToFreezeSigmaBefore = 2;
//        daysToFreezeSigmaAfter = 2;
    }

    //////////////////////////////////////////////////////////////////////
    ////////////////////////// ADMIN OPERATIONS //////////////////////////
    //////////////////////////////////////////////////////////////////////
    /**
     * @notice Set the base stake amount for task creation
     * @param _baseStakeAmount The base stake amount
     */
    function setBaseStakeAmount(uint256 _baseStakeAmount) external onlyProtocolManager {
        baseStakeAmount = _baseStakeAmount;
    }


    /**
     * @notice Set the locked reward percentage
     * @param _lockedRewardPercentage The locked reward percentage
     * @param _rewardPercentageBase The reward percentage base
     * @param _rewardTokenPerDay The reward token per day
     */
    function setRewardParameters(uint256 _lockedRewardPercentage,uint256 _rewardPercentageBase,uint256 _rewardTokenPerDay) external onlyProtocolManager {
        lockedRewardPercentage = _lockedRewardPercentage;
        require(_rewardTokenPerDay <= maxRewardTokenPerDay, "Reward token per day exceeds max limit");
        rewardTokenPerDay = _rewardTokenPerDay;
        rewardPercentageBase = _rewardPercentageBase;
    }

    /**
     * @notice Set the mininum node stakes
     * @param _minNodeStakes The mininum node stakes
     * @param _validatorMinStake The mininum validator stakes
     */
    function setMinStakes(uint256 _minNodeStakes,uint256 _validatorMinStake) external onlyProtocolManager {
        minNodeStakes = _minNodeStakes;
        validatorMinStake = _validatorMinStake;
    }

    /**
     * @notice Set the max duration for tasks
     * @param _maxDuration The max duration for tasks
     */
    function setMaxDuration(uint256 _maxDuration) external onlyProtocolManager {
        maxDuration = _maxDuration;
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
    function setGamma(uint256 _gamma) external onlyProtocolManager {
        gamma = _gamma;
    }

    /**
     * @notice Set the max reward token per day
     * @param _maxRewardTokenPerDay The max reward token per day
     */
    function setMaxRewardTokenPerDay(uint256 _maxRewardTokenPerDay) external onlyDaoAdmin {
        maxRewardTokenPerDay = _maxRewardTokenPerDay;
    }

    /**
     * @notice Set the fee percentage
     * @param _feePercentage The fee percentage
     */
    function setFeePercentage(uint256 _feePercentage) external onlyProtocolManager {
        feePercentage = _feePercentage;
    }

    /**
     * @notice Set the daily mint reset count
     * @param _dailyMintResetCount The daily mint reset count
     */
    function setDailyMintResetCount(uint256 _dailyMintResetCount) external onlyProtocolManager {
        dailyMintResetCount = _dailyMintResetCount;
    }

    /**
     * @notice Set the daily mint decay percentage
     * @param _dailyMintDecayPercentage The daily mint decay percentage
     */
    function setDailyMintDecayPercentage(uint256 _dailyMintDecayPercentage) external onlyProtocolManager {
        dailyMintDecayPercentage = _dailyMintDecayPercentage;
    }

    /**
     * @notice Set the current daily mint count
     * @param _currentDailyMintCount The current daily mint count
     */
    function setCurrentDailyMintCount(uint256 _currentDailyMintCount) external onlyProtocolManager {
        currentDailyMintCount = _currentDailyMintCount;
    }

    /**
     * @notice Set the days to freeze sigma
     * @param _daysToFreezeSigma The days to freeze sigma
     */
    function setDaysToFreezeSigmaBefore(uint256 _daysToFreezeSigma) external onlyProtocolManager {
        daysToFreezeSigmaBefore = _daysToFreezeSigma;
    }

    /**
     * @notice Set the days to freeze sigma
     * @param _daysToFreezeSigma The days to freeze sigma
     */
    function setDaysToFreezeSigmaAfter(uint256 _daysToFreezeSigma) external onlyProtocolManager {
        daysToFreezeSigmaAfter = _daysToFreezeSigma;
    }

    /**
     * @notice Set the linear vesting depositor address and lockup reward vesting period in days
     * @param _linearVestingDepositor The address of the linear vesting depositor
     * @param _lockupRewardVestingPeriodInDays The lockup reward vesting period in days
     */
    function setUpLinearDepositor(address _linearVestingDepositor ,uint256 _lockupRewardVestingPeriodInDays) external onlyProtocolManager {
        lockupRewardVestingPeriodInDays = _lockupRewardVestingPeriodInDays;
        linearVestingDepositor = _linearVestingDepositor;
    }


    /**
    * @notice transfer token to an address
    * @param _to The address to transfer to
    * @param _amount The amount to transfer
    */
    function transferToken(address _to, uint256 _amount) external onlyDaoAdmin {
        require(config.getFlockToken().transfer(_to, _amount), "Token transfer failed");
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
     * @notice Check if the node pool is freezing
     * @param _user The user address
     * @return True if the node pool is freezing
     */
    function isNodePoolFreezing(address _user) external view returns (bool) {
        // check active tasks
        for (uint256 i = 0; i < activeTaskIds.length; i++) {
            uint256 taskId = activeTaskIds[i];
            // get task
            Task memory task = tasks[taskId];
            // check if the user is in the task
            if (nodeInTask[taskId][_user]) {
                // check if the task start time + expected duration is larger than the current moment, also the start time + expected_duration- daysToFreezeSigma is smaller than the current moment
                if (task.startTime + task.expectedDuration + daysToFreezeSigmaAfter*(1 days) > block.timestamp && task.startTime + task.expectedDuration - daysToFreezeSigmaBefore * (1 days) < block.timestamp) {
                    return true;
                }
            }
        }
        return false;
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
    function createTask(uint256 taskId, uint256 expectedDuration, string memory taskName) external onlyProtocolManager {
        require(taskId!=0,"Invalid task ID");
        require(expectedDuration > 0 && expectedDuration <= maxDuration, "Invalid task duration");
        // Ensure the taskId does not already exist
        require(tasks[taskId].expectedDuration == 0, "Task ID already exists");

        // Calculate stake amount based on the task's expected duration
        uint256 stakeAmount = (baseStakeAmount * expectedDuration) / 1 days;

        // Transfer stake amount from the user to the contract
        require(config.getGmFlockToken().transferFrom(msg.sender, address(this), stakeAmount), "Stake transfer failed");

        // Create and store the task
        tasks[taskId] = Task({id: taskId, creator: msg.sender, startTime: block.timestamp, expectedDuration: expectedDuration, stakeAmount: stakeAmount, isCompleted: false, taskName: taskName});

        // Add the task ID to the taskIds array
        taskIds.push(taskId);
        activeTaskIds.push(taskId);

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
        require(config.getGmFlockToken().transferFrom(msg.sender, address(this), additionalStakes), "Stake transfer failed");
        if (nodeStakes[taskId][msg.sender] == additionalStakes) {
            nodeTasks[msg.sender].push(taskId);
        }
        config.getStakeInfo().addStakes(taskId, additionalStakes, uint256(ROLE.NODE), msg.sender);
        availableRewardTasks[msg.sender].add(taskId);
        nodeInTask[taskId][msg.sender] = true;
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
        require(config.getGmFlockToken().transfer(msg.sender, stakedAmount), "Stake return failed");
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
        emit CollectFee(msg.sender, fee);

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
        require(config.getGmFlockToken().transferFrom(msg.sender, address(this), additionalStakes), "Stake transfer failed");
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

        config.getStakeInfo().removeStakes(taskId, stakedAmount, uint256(ROLE.VALIDATOR), msg.sender);
        require(config.getGmFlockToken().transfer(msg.sender, stakedAmount), "Stake return failed");
        emit ValidatorStakeWithdrawn(taskId, msg.sender, stakedAmount);
    }

    //////////////////////////////////////////////////////////////////////
    ////////////////////////// FL TASKS //////////////////////////////////
    //////////////////////////////////////////////////////////////////////
    /**
     * @notice Transfer rewards to FL tasks
     */
    function transferRewardsToFLTasks() external onlyProtocolManager {
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
    function mintDailyReward() external onlyRewardOperator {
        require(block.timestamp - lastMintTimestamp >= 1 days/2, "Daily mint already done");
        currentDailyMintCount++;
        if(currentDailyMintCount>=dailyMintResetCount){
            rewardTokenPerDay = (rewardTokenPerDay * dailyMintDecayPercentage) / rewardPercentageBase;
            currentDailyMintCount = 0;
        }
        config.getFlockToken().mint(address(this), rewardTokenPerDay);
        lastMintTimestamp = block.timestamp;
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

        taskFinishedTimestamp[taskId] = block.timestamp;

        // Remove the task ID from the active task IDs
        for (uint256 i = 0; i < activeTaskIds.length; ) {
            if(taskFinishedTimestamp[activeTaskIds[i]] != 0 && taskFinishedTimestamp[activeTaskIds[i]] + 10 days < block.timestamp){
                activeTaskIds[i] = activeTaskIds[activeTaskIds.length - 1];
                activeTaskIds.pop();
            } else {
                i++;
            }
        }

        emit TaskFinished(taskId);
    }

    /**
     * @notice Upload reward results for training nodes
     * @param taskId The task ID
     * @param trainingNodesAddrs The training nodes addresses
     * @param rewardPercentagesWithDelegation The reward percentages with delegation
     * @param rewardPercentagesWithoutDelegation The reward percentages without delegation
     */
    function uploadRewardResultsForTrainingNodes(uint256 taskId, address[] calldata trainingNodesAddrs, uint256[] calldata rewardPercentagesWithDelegation, uint256[] calldata rewardPercentagesWithoutDelegation) public onlyRewardOperator {
        require(tasks[taskId].id != 0, "Task does not exist");
        require(!tasks[taskId].isCompleted, "Task already completed");
        require(trainingNodesAddrs.length == rewardPercentagesWithDelegation.length, "Mismatched arrays length");
        require(trainingNodesAddrs.length == rewardPercentagesWithoutDelegation.length, "Mismatched arrays length");
        uint256 taskRewardForDelegator = 0;
        uint256 rewardTokenPerDayForArena = rewardTokenPerDay - flTaskRewardAmountDaily;
        uint256 taskRewardForNodeAndDelegator = (rewardTokenPerDayForArena * config.getStakeInfo().getTaskWeights(taskId, uint256(ROLE.NODE_VALIDATOR))) / config.getStakeInfo().getTotalActiveTaskWeights(uint256(ROLE.NODE_VALIDATOR));
        taskRewardForNodeAndDelegator = (taskRewardForNodeAndDelegator * (gamma + ((rewardPercentageBase - 2 * gamma) * config.getStakeInfo().getTotalNodeStakesPerTask(taskId)) / (config.getStakeInfo().getTotalNodeStakesPerTask(taskId) + config.getStakeInfo().getTotalValidatorStakesPerTask(taskId)))) / rewardPercentageBase;
        unlockedRewardPercentage = rewardPercentageBase - lockedRewardPercentage;
        lockedRewardsForNodes[taskId] += (lockedRewardPercentage * taskRewardForNodeAndDelegator) / (rewardPercentageBase);
        for (uint i = 0; i < trainingNodesAddrs.length; i++) {
            uint256 userSigma = config.getPoolManager().getPoolSigma(trainingNodesAddrs[i]);
            uint256 rewardForNodeAndDelegator = (unlockedRewardPercentage * taskRewardForNodeAndDelegator * rewardPercentagesWithDelegation[i]) / (rewardPercentageBase * rewardPercentageBase);
            uint256 rewardForNodeWithoutDelegators = (unlockedRewardPercentage * taskRewardForNodeAndDelegator * rewardPercentagesWithoutDelegation[i]) / (rewardPercentageBase * rewardPercentageBase);
            uint256 rewardForNode = (rewardForNodeAndDelegator-rewardForNodeWithoutDelegators)*userSigma/rewardPercentageBase+rewardForNodeWithoutDelegators;
            distributeRewardToDelegators(taskId, trainingNodesAddrs[i], rewardForNodeAndDelegator-rewardForNode);
            _assignLatestLocalReward(taskId, trainingNodesAddrs[i],  ROLE.NODE, rewardForNode);
            taskRewardForDelegator += rewardForNodeAndDelegator-rewardForNode;
        }
        latestRewardForNodes[taskId] = taskRewardForNodeAndDelegator - taskRewardForDelegator;
        taskRewards[taskId] += taskRewardForNodeAndDelegator;
        emit UploadNodeRewardPerTask(taskId, config.getStakeInfo().getTotalNodeStakesPerTask(taskId), taskRewardForNodeAndDelegator - taskRewardForDelegator);
    }

    /**
     * @notice Upload reward results for validators
     * @param taskId The task ID
     * @param validatorsAddrs The validators addresses
     * @param rewardPercentagesWithDelegation The reward percentages with delegation
     * @param rewardPercentagesWithoutDelegation The reward percentages without delegation
     */
    function uploadRewardResultsForValidators(uint256 taskId, address[] calldata validatorsAddrs, uint256[] calldata rewardPercentagesWithDelegation, uint256[] calldata rewardPercentagesWithoutDelegation) public onlyRewardOperator {
        require(tasks[taskId].id != 0, "Task does not exist");
        require(!tasks[taskId].isCompleted, "Task already completed");
        require(validatorsAddrs.length == rewardPercentagesWithDelegation.length, "Mismatched arrays length");
        require(validatorsAddrs.length == rewardPercentagesWithoutDelegation.length, "Mismatched arrays length");
        uint256 rewardTokenPerDayForArena = rewardTokenPerDay - flTaskRewardAmountDaily;
        uint256 taskRewardForValidatorAndDelegator = (rewardTokenPerDayForArena * config.getStakeInfo().getTaskWeights(taskId, uint256(ROLE.NODE_VALIDATOR))) / config.getStakeInfo().getTotalActiveTaskWeights(uint256(ROLE.NODE_VALIDATOR));
        taskRewardForValidatorAndDelegator = (taskRewardForValidatorAndDelegator * (gamma + ((rewardPercentageBase - 2 * gamma) * config.getStakeInfo().getTotalValidatorStakesPerTask(taskId)) / (config.getStakeInfo().getTotalNodeStakesPerTask(taskId) + config.getStakeInfo().getTotalValidatorStakesPerTask(taskId)))) / rewardPercentageBase;
        uint256 taskRewardForValidator=distributeToValidators(taskId, validatorsAddrs,taskRewardForValidatorAndDelegator,rewardPercentagesWithDelegation,rewardPercentagesWithoutDelegation);
        latestRewardForValidators[taskId] = taskRewardForValidatorAndDelegator;
        taskRewards[taskId] += taskRewardForValidatorAndDelegator;
        emit UploadValidatorRewardPerTask(taskId, config.getStakeInfo().getTotalValidatorStakesPerTask(taskId), taskRewardForValidator);
    }


    /**
     * @notice Only reward results for validators
     * @param taskId The task ID
     * @param validatorsAddrs The validators addresses
     * @param rewardPercentagesWithDelegation The reward percentages with delegation
     * @param rewardPercentagesWithoutDelegation The reward percentages without delegation
     */
    function uploadRewardResultsOnlyForValidators(uint256 taskId, address[] calldata validatorsAddrs,uint256[] calldata rewardPercentagesWithDelegation, uint256[] calldata rewardPercentagesWithoutDelegation) public onlyRewardOperator {
        require(tasks[taskId].id != 0, "Task does not exist");
        require(!tasks[taskId].isCompleted, "Task already completed");
        require(validatorsAddrs.length == rewardPercentagesWithDelegation.length, "Mismatched arrays length");
        require(validatorsAddrs.length == rewardPercentagesWithoutDelegation.length, "Mismatched arrays length");
        uint256 rewardTokenPerDayForArena = rewardTokenPerDay - flTaskRewardAmountDaily;
        uint256 taskRewardForValidatorAndDelegator = (rewardTokenPerDayForArena * config.getStakeInfo().getTaskWeights(taskId, uint256(ROLE.NODE_VALIDATOR))) / config.getStakeInfo().getTotalActiveTaskWeights(uint256(ROLE.NODE_VALIDATOR));
        uint256 taskRewardForValidator=distributeToValidators(taskId, validatorsAddrs,taskRewardForValidatorAndDelegator,rewardPercentagesWithDelegation,rewardPercentagesWithoutDelegation);
        latestRewardForValidators[taskId] = taskRewardForValidatorAndDelegator;
        taskRewards[taskId] += taskRewardForValidatorAndDelegator;
        emit UploadValidatorRewardPerTask(taskId, config.getStakeInfo().getTotalValidatorStakesPerTask(taskId), taskRewardForValidator);
    }

    function distributeToValidators(uint256 taskId, address[] calldata validatorsAddrs,uint256 taskRewardForValidatorAndDelegator,uint256[] calldata rewardPercentagesWithDelegation, uint256[] calldata rewardPercentagesWithoutDelegation) internal returns (uint256){
        uint256 taskRewardForValidator;
        for (uint256 i = 0; i < validatorsAddrs.length; i++) {
            uint256 userSigma = config.getPoolManager().getPoolSigma(validatorsAddrs[i]);
            uint256 rewardForValidatorAndDelegator = (taskRewardForValidatorAndDelegator * rewardPercentagesWithDelegation[i]) / rewardPercentageBase;
            uint256 rewardForValidatorWithoutDelegator = (taskRewardForValidatorAndDelegator * rewardPercentagesWithoutDelegation[i]) / rewardPercentageBase;
            uint256 rewardForValidator = (rewardForValidatorAndDelegator-rewardForValidatorWithoutDelegator)*userSigma/rewardPercentageBase+rewardForValidatorWithoutDelegator;
            distributeRewardToDelegators(taskId, validatorsAddrs[i], rewardForValidatorAndDelegator-rewardForValidator);
            _assignLatestLocalReward(taskId,validatorsAddrs[i],ROLE.VALIDATOR,rewardForValidator);
            taskRewardForValidator += rewardForValidator;
        }
        return taskRewardForValidator;
    }

    function _assignLatestLocalReward(uint256 taskId,address nodeOrValidator,ROLE role,uint256 reward) internal {
        unlockedRewardsByRole[taskId][nodeOrValidator][role] += reward;
        userRewards[nodeOrValidator] += reward;
        emit ParticipantRewarded(nodeOrValidator, reward, 0, role);
    }



    /**
     * @notice Distribute reward to delegators, separated out this function due to limited stack depth
     * @param taskId The task ID
     * @param user The user address
     * @param totalRewardForDelegators The reward for delegator
     */
    function distributeRewardToDelegators(uint256 taskId, address user, uint256 totalRewardForDelegators) internal{
        address poolAddress = config.getPoolManager().getMiniPool(user);
        if (poolAddress == address(0)) {
            return;
        }
        IFlockPool pool = IFlockPool(poolAddress);
        config.getFlockToken().approve(address(pool), totalRewardForDelegators);
        pool.fundPool(totalRewardForDelegators);

        emit UploadDelegatorRewardPerTaskPerUser(taskId, user, totalRewardForDelegators);
    }

    /**
     * @notice Upload final reward results for training nodes to distribute locked rewards
     * @param taskId The task ID
     * @param trainingNodesAddrs The training nodes addresses
     * @param rewardPercentagesWithDelegation The reward percentages with delegation
     * @param rewardPercentagesWithoutDelegation The reward percentages without delegation
     */
    function uploadFinalRewardResultsForTrainingNodes(uint256 taskId, address[] calldata trainingNodesAddrs, uint256[] calldata rewardPercentagesWithDelegation, uint256[] calldata rewardPercentagesWithoutDelegation) public onlyRewardOperator {
        require(tasks[taskId].id != 0, "Task does not exist");
        require(trainingNodesAddrs.length == rewardPercentagesWithDelegation.length, "Mismatched arrays length");
        require(trainingNodesAddrs.length == rewardPercentagesWithoutDelegation.length, "Mismatched arrays length");
        require(!tasks[taskId].isCompleted, "Task already completed");
        uint256 taskRewardForDelegator = 0;
        for (uint i = 0; i < trainingNodesAddrs.length; i++) {
            uint256 userSigma = config.getPoolManager().getPoolSigma(trainingNodesAddrs[i]);
            uint256 rewardForNodeAndDelegator = (lockedRewardsForNodes[taskId] * rewardPercentagesWithDelegation[i]) / rewardPercentageBase;
            uint256 rewardForNodeWithoutDelegator = (lockedRewardsForNodes[taskId] * rewardPercentagesWithoutDelegation[i]) / rewardPercentageBase;
            uint256 rewardForNode = (rewardForNodeAndDelegator-rewardForNodeWithoutDelegator)*userSigma/rewardPercentageBase+rewardForNodeWithoutDelegator;
            if(userSigma==0){
                rewardForNode=rewardForNodeWithoutDelegator;
            }
            distributeRewardToDelegators(taskId, trainingNodesAddrs[i], rewardForNodeAndDelegator-rewardForNode);
            config.getFlockToken().approve(linearVestingDepositor, rewardForNode);
            ILinearVestingDepositor(linearVestingDepositor).depositReward(trainingNodesAddrs[i], rewardForNode, block.timestamp,lockupRewardVestingPeriodInDays * 1 days);
            taskRewardForDelegator += rewardForNodeAndDelegator-rewardForNode;
            emit ParticipantRewarded(trainingNodesAddrs[i], rewardForNode, taskId, ROLE.NODE);
        }
        emit UploadFinalNodeRewardPerTask(taskId, config.getStakeInfo().getTotalNodeStakesPerTask(taskId), lockedRewardsForNodes[taskId]-taskRewardForDelegator);
        lockedRewardsForNodes[taskId] = 0;
        markTaskAsFinished(taskId);
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
