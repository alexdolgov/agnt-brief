// SPDX-License-Identifier: MIT

pragma solidity 0.8.20;

import "@openzeppelin/contracts/access/AccessControl.sol";
import "@openzeppelin/contracts/utils/Pausable.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import "./IBIFKNRewarder.sol";

/**
 * @title BIFKNChefV2
 * @dev This contract represents a chef contract for APEX tokens.
 * It inherits from AccessControl and ReentrancyGuard contracts.
 * The contract allows users to stake LP tokens in different pools and earn rewards.
 * The contract also has a pool for staking APEX tokens to earn rewards.
 * The rewards are distributed in APEX tokens.
 * The contract owner can add new pools, update the emission rate, and change the developer address.
 * The contract also has a manager role that can update the emission rate and add new pools.
 * The contract owner can also set the development percentage for the rewards.
 * The contract owner can also update the bonus multiplier for rewards.
 * The contract owner can also update the allocation points for a specific pool.
 */
contract BIFKNChefV2 is AccessControl, ReentrancyGuard, Pausable {
    using SafeERC20 for IERC20;

    /**
     * @dev Struct representing user information.
     * It stores the amount of tokens the user has deposited and the reward debt.
     */
    struct UserInfo {
        uint256 amount;
        uint256 rewardDebt;
    }

    /**
     * @dev Struct representing a pool in the BifknChefV1 contract.
     * It contains information about the LP token, allocation points, last reward timestamp,
     * reward token per share, total staked, and the bonus multiplier.
     */
    struct PoolInfo {
        IERC20 stakeToken;
        uint256 allocationPoints;
        uint256 lastRewardTimestamp;
        uint256 rewardTokenPerShare;
        uint256 totalStaked;
        uint256 bonusMultiplier;
        IBIFKNRewarder rewarder;
    }

    bytes32 public constant MANAGER_ROLE = keccak256("MANAGER_ROLE");

    /**
     * @dev A reference to the apex contract.
     */
    IERC20 public apex;

    /**
     * @dev The address of the dev account.
     */
    address public treasuryAddress;

    /**
     * @dev The amount of apexPerSecond (reward tokens) that will be generated per second.
     * This value is set by the contract owner and can be updated using the `updateEmissionRate` function.
     * This value is used to calculate the rewards for the staking pools.
     */
    uint256 public apexPerSecond;

    /**
     * @dev The `treasuryPercent` variable represents the percentage of rewards allocated to the development team.
     * It is set to 100 by default. Which equals 10% of the total rewards.
     */
    uint256 public treasuryPercent = 100;

    /**
     * @dev The `MAX_TREASURY_PERCENT` constant represents the maximum percentage that can be allocated to the development team.
     * It is set to 100. Which equals 10% of the total rewards.
     */
    uint256 public constant MAX_TREASURY_PERCENT = 100;

    /**
     * @dev The `ONE_HUNDRED_PERCENT` constant represents the total percentage value.
     * It is set to 1000. Which equals 100%.
     */
    uint256 public constant ONE_HUNDRED_PERCENT = 1000;

    /**
     * @dev An array that stores information about different pools.
     */
    PoolInfo[] public poolInfo;

    /**
     * @dev Mapping to track whether a specific ERC20 token is a pool.
     * The key of the mapping is the ERC20 token, and the value is a boolean.
     * If the value is true, the ERC20 token is a pool.
     */
    mapping(IERC20 => bool) public isPool;

    /**
     * @dev A mapping that stores user information for each pool.
     * The key of the mapping is the pool ID, and the value is another mapping.
     * The inner mapping's key is the user's address, and the value is an instance of the UserInfo struct.
     */
    mapping(uint256 => mapping(address => UserInfo)) public userInfo;

    /**
     * @dev The totalAllocation variable represents the total allocation in the contract.
     */
    uint256 public totalAllocation = 0;

    /**
     *  @dev The timestamp when the contract starts.
     */
    uint256 public startTimestamp;

    event Deposit(address indexed user, uint256 indexed poolId, uint256 amount);
    event Withdraw(
        address indexed user,
        uint256 indexed poolId,
        uint256 amount
    );
    event EmergencyWithdraw(
        address indexed user,
        uint256 indexed poolId,
        uint256 amount
    );
    event UpdateEmissionRate(address indexed user, uint256 apexPerSecond);
    event AddPool(
        address indexed user,
        uint256 indexed poolId,
        uint256 allocationPoints,
        IERC20 lpToken,
        uint256 bonusMultiplier,
        uint256 startTimestamp,
        IBIFKNRewarder indexed rewarder
    );
    event UpdatePool(
        uint256 indexed pid,
        uint256 lastRewardTimestamp,
        uint256 stakeTokenSupply,
        uint256 rewardTokenPerShare
    );
    event UpdatePoolSettings(
        uint256 indexed pid,
        uint256 prevAllocPoint,
        uint256 newAllocPoint,
        uint256 prevBonusMultiplier,
        uint256 newBonusMultiplier,
        IBIFKNRewarder indexed rewarder,
        bool changeRewarder
    );
    event Harvest(address indexed user, uint256 indexed poolId, uint256 amount);
    event Compound(
        address indexed user,
        uint256 indexed poolId,
        uint256 amount
    );

    error InvalidPoolId(uint256 _poolId);
    error PoolAlreadyExists(uint256 _poolId, IERC20 _lpToken);
    error MustBeValidContract();
    error TryingToWithdrawTooMuch(uint256 _amount, uint256 _userAmount);
    error Unauthorized();
    error InvalidTreasuryAddress();
    error InvalidTreasuryPercent();
    error InvalidAddress();
    error InvalidStartTimestamp();
    error AmountMustBeGreaterThanZero();
    error NoRewards(uint256 _poolId);

    /**
     * @dev Modifier to validate the pool ID.
     * @param _poolId The ID of the pool to validate.
     * @notice This modifier checks if the given pool ID is valid by comparing it to the length of the poolInfo array.
     * If the pool ID is invalid, it reverts with an `InvalidPoolId` error.
     * Otherwise, it continues with the execution of the function.
     */
    modifier validatePool(uint256 _poolId) {
        if (_poolId >= poolInfo.length) {
            revert InvalidPoolId(_poolId);
        }
        _;
    }

    /**
     * @dev Initializes the BifknChefV2 contract with the specified parameters.
     * @param _treasury The address of the developer.
     * @param _apex The APEX contract address.
     * @param _apexPerSecond The amount of APEX tokens to be distributed per second.
     * @param _startTimestamp The timestamp at which the distribution starts.
     */
    constructor(
        address _treasury,
        IERC20 _apex,
        uint256 _apexPerSecond,
        uint256 _startTimestamp
    ) {
        if (_treasury == address(0) || address(_apex) == address(0))
            revert InvalidAddress();

        if (_treasury == address(this)) revert InvalidTreasuryAddress();

        if (_startTimestamp < block.timestamp) revert InvalidStartTimestamp();

        treasuryAddress = _treasury;
        apex = _apex;
        apexPerSecond = _apexPerSecond;
        startTimestamp = _startTimestamp;

        uint256 startingAllocation = 3000;

        poolInfo.push(
            PoolInfo({
                stakeToken: _apex,
                allocationPoints: startingAllocation,
                lastRewardTimestamp: _startTimestamp,
                rewardTokenPerShare: 0,
                totalStaked: 0,
                bonusMultiplier: 1,
                rewarder: IBIFKNRewarder(address(0))
            })
        );

        totalAllocation = startingAllocation;

        _grantRole(DEFAULT_ADMIN_ROLE, _msgSender());
        _grantRole(MANAGER_ROLE, _msgSender());
    }

    /**
     * @dev Updates the bonus multiplier for a specific pool in the BifknChefV2 contract.
     * Can only be called by an address with the MANAGER_ROLE.
     * @param _poolId The ID of the pool to update.
     * @param _bonusMultiplier The new value for the bonus multiplier.
     */
    function updateMultiplier(
        uint256 _poolId,
        uint256 _bonusMultiplier
    ) public onlyRole(MANAGER_ROLE) validatePool(_poolId) {
        poolInfo[_poolId].bonusMultiplier = _bonusMultiplier;
    }

    /**
     * @dev Returns the number of pools in the contract.
     * @return length The number of pools.
     */
    function poolLength() external view returns (uint256 length) {
        return poolInfo.length;
    }

    /**
     * @dev Adds a new pool to the BifknChefV2 contract.
     * @param _allocationPoints The allocation points for the new pool.
     * @param _stakeToken The LP token associated with the new pool.
     * @param _bonusMultiplier The bonus multiplier for the new pool.
     * @param _rewarder The rewarder contract associated with the new pool.
     */
    function addNewPool(
        uint256 _allocationPoints,
        IERC20 _stakeToken,
        uint256 _bonusMultiplier,
        uint256 _startTimestamp,
        IBIFKNRewarder _rewarder
    ) public onlyRole(MANAGER_ROLE) {
        if (isPool[_stakeToken])
            revert PoolAlreadyExists(poolInfo.length, _stakeToken);

        if (_startTimestamp < block.timestamp) revert InvalidStartTimestamp();

        massUpdatePools();

        totalAllocation = totalAllocation + _allocationPoints;
        poolInfo.push(
            PoolInfo({
                stakeToken: _stakeToken,
                allocationPoints: _allocationPoints,
                lastRewardTimestamp: _startTimestamp,
                rewardTokenPerShare: 0,
                totalStaked: 0,
                bonusMultiplier: _bonusMultiplier,
                rewarder: _rewarder
            })
        );

        isPool[_stakeToken] = true;
        uint256 poolId = poolInfo.length - 1;

        // Set the pool ID for the rewarder contract
        if (address(_rewarder) != address(0)) {
            _rewarder.setPoolId(poolId);
        }

        emit AddPool(
            _msgSender(),
            poolId,
            _allocationPoints,
            _stakeToken,
            _bonusMultiplier,
            _startTimestamp,
            _rewarder
        );
    }

    /**
     * @dev Updates the pool settings for a specific pool.
     * @param _poolId The ID of the pool to update.
     * @param _allocationPoints The new allocation points for the pool.
     * @param _bonusMultiplier The new bonus multiplier for the pool.
     * @param _rewarder The rewarder contract associated with the pool.
     * @param _changeRewarder A boolean value indicating whether to change the rewarder.
     * @notice This function can only be called by the contract owner.
     */
    function updatePoolSettings(
        uint256 _poolId,
        uint256 _allocationPoints,
        uint256 _bonusMultiplier,
        IBIFKNRewarder _rewarder,
        bool _changeRewarder
    ) public onlyRole(MANAGER_ROLE) validatePool(_poolId) {
        massUpdatePools();

        uint256 prevAllocPoint = poolInfo[_poolId].allocationPoints;
        uint256 prevBonusMultiplier = poolInfo[_poolId].bonusMultiplier;

        poolInfo[_poolId].allocationPoints = _allocationPoints;
        poolInfo[_poolId].bonusMultiplier = _bonusMultiplier;

        if (prevAllocPoint != _allocationPoints) {
            totalAllocation =
                totalAllocation -
                prevAllocPoint +
                _allocationPoints;
        }

        // If the rewarder is being changed, update the rewarder contract
        // and if the new rewarder is not null, set the pool ID for the rewarder
        if (_changeRewarder) {
            poolInfo[_poolId].rewarder = _rewarder;
            if (address(_rewarder) != address(0)) {
                _rewarder.setPoolId(_poolId);
            }
        }

        emit UpdatePoolSettings(
            _poolId,
            prevAllocPoint,
            _allocationPoints,
            prevBonusMultiplier,
            _bonusMultiplier,
            _changeRewarder ? _rewarder : poolInfo[_poolId].rewarder,
            _changeRewarder
        );
    }

    /**
     * @dev Calculates the multiplier for a given time range and pool.
     * @param _from The starting time.
     * @param _to The ending time.
     * @param _bonusMultiplier The bonus multiplier for the pool.
     * @return _multiplier The multiplier value.
     */
    function getMultiplier(
        uint256 _from,
        uint256 _to,
        uint256 _bonusMultiplier
    ) public pure returns (uint256 _multiplier) {
        return (_to - _from) * _bonusMultiplier;
    }

    /**
     * @dev Calculates the pending reward for a user in a specific pool.
     * Subtracts the treasury percentage from the pending reward for transparency.
     * @param _poolId The ID of the pool.
     * @param _user The address of the user.
     * @return pendingApex The amount of pending reward for the user.
     * @return bonusTokenAddress The address of the bonus token.
     * @return bonusTokenSymbol The symbol of the bonus token.
     * @return pendingBonusToken The amount of pending bonus token.
     */
    function pendingReward(
        uint256 _poolId,
        address _user
    )
        external
        view
        returns (
            uint256 pendingApex,
            address bonusTokenAddress,
            string memory bonusTokenSymbol,
            uint256 pendingBonusToken
        )
    {
        if (_poolId >= poolInfo.length) revert InvalidPoolId(_poolId);
        if (_user == address(0)) revert InvalidAddress();

        PoolInfo storage pool = poolInfo[_poolId];
        UserInfo storage user = userInfo[_poolId][_user];

        // Check if the contract balance is 0
        uint256 apexBalance = apex.balanceOf(address(this));
        if (apexBalance == 0) {
            pendingApex = 0;
        } else {
            uint256 rewardTokenPerShare = pool.rewardTokenPerShare;
            uint256 stakedTokenSupply = pool.totalStaked;
            if (
                block.timestamp > pool.lastRewardTimestamp &&
                stakedTokenSupply != 0
            ) {
                uint256 multiplier = getMultiplier(
                    pool.lastRewardTimestamp,
                    block.timestamp,
                    pool.bonusMultiplier
                );
                uint256 totalTokenReward = (multiplier *
                    apexPerSecond *
                    pool.allocationPoints) / totalAllocation;

                // Ensure totalTokenReward does not exceed apexBalance
                if (totalTokenReward > apexBalance) {
                    totalTokenReward = apexBalance;
                }

                rewardTokenPerShare =
                    rewardTokenPerShare +
                    (totalTokenReward * 1e12) /
                    stakedTokenSupply;
            }

            // Calculate pending Apex rewards and deduct treasury percentage
            uint256 grossPendingApex = (user.amount * rewardTokenPerShare) /
                1e12 -
                user.rewardDebt;

            // Deduct treasury percentage to get the net pending Apex rewards
            pendingApex =
                (grossPendingApex * (ONE_HUNDRED_PERCENT - treasuryPercent)) /
                ONE_HUNDRED_PERCENT;

            // Ensure pendingApex does not exceed apexBalance
            if (pendingApex > apexBalance) {
                pendingApex = apexBalance;
            }
        }

        // Check for pending bonus rewards
        if (address(pool.rewarder) != address(0)) {
            (bonusTokenAddress, bonusTokenSymbol) = rewarderBonusTokenInfo(
                _poolId
            );
            pendingBonusToken = pool.rewarder.pendingIncentives(_user);
        }
    }

    /**
     * @dev Updates the pool rewards for a given pool ID.
     * @param _poolId The ID of the pool to update.
     */
    function updatePool(uint256 _poolId) public validatePool(_poolId) {
        PoolInfo storage pool = poolInfo[_poolId];
        if (block.timestamp <= pool.lastRewardTimestamp) {
            return;
        }
        uint256 stakedTokenSupply = pool.totalStaked;
        if (stakedTokenSupply == 0) {
            pool.lastRewardTimestamp = block.timestamp;
            return;
        }

        uint256 apexBalance = apex.balanceOf(address(this));
        if (apexBalance == 0) {
            pool.lastRewardTimestamp = block.timestamp;
            return;
        }

        uint256 multiplier = getMultiplier(
            pool.lastRewardTimestamp,
            block.timestamp,
            pool.bonusMultiplier
        );
        uint256 tokenReward = (multiplier *
            apexPerSecond *
            pool.allocationPoints) / totalAllocation;

        // Ensure tokenReward does not exceed apexBalance
        if (tokenReward > apexBalance) {
            tokenReward = apexBalance;
        }

        pool.rewardTokenPerShare += (tokenReward * 1e12) / stakedTokenSupply;
        pool.lastRewardTimestamp = block.timestamp;

        emit UpdatePool(
            _poolId,
            block.timestamp,
            stakedTokenSupply,
            pool.rewardTokenPerShare
        );
    }

    /**
     * @dev Updates all the pools in the contract.
     * This function iterates through all the pools and calls the `updatePool` function for each pool.
     * It is a public function that can be called by anyone.
     */
    function massUpdatePools() public {
        uint256 length = poolInfo.length;
        for (uint256 poolId = 0; poolId < length; ++poolId) {
            updatePool(poolId);
        }
    }

    /**
     * @dev Retrieves the bonus token information for a given pool.
     * @param _poolId The ID of the pool.
     * @return bonusTokenAddress The address of the bonus token.
     * @return bonusTokenSymbol The symbol of the bonus token.
     */
    function rewarderBonusTokenInfo(
        uint256 _poolId
    )
        public
        view
        returns (address bonusTokenAddress, string memory bonusTokenSymbol)
    {
        PoolInfo storage pool = poolInfo[_poolId];
        if (address(pool.rewarder) != address(0)) {
            IERC20 rewardToken = pool.rewarder.rewardToken();
            bonusTokenAddress = address(rewardToken);
            bonusTokenSymbol = IERC20Metadata(address(rewardToken)).symbol();
        }
    }

    /**
     * @dev Stake LP tokens into a pool.
     * @param _poolId The ID of the pool.
     * @param _amount The amount of LP tokens to stake.
     */
    function stake(
        uint256 _poolId,
        uint256 _amount
    ) public validatePool(_poolId) nonReentrant whenNotPaused {
        if (_amount == 0) revert AmountMustBeGreaterThanZero();

        PoolInfo storage pool = poolInfo[_poolId];
        UserInfo storage user = userInfo[_poolId][_msgSender()];

        updatePool(_poolId);
        if (user.amount != 0) {
            uint256 pending = (user.amount * pool.rewardTokenPerShare) /
                1e12 -
                user.rewardDebt;

            if (pending != 0) {
                _safeApexTransfer(_msgSender(), pending);
                emit Harvest(_msgSender(), _poolId, pending);
            }
        }

        uint256 previousBalance = pool.stakeToken.balanceOf(address(this));

        pool.stakeToken.safeTransferFrom(
            address(_msgSender()),
            address(this),
            _amount
        );

        uint256 currentBalance = pool.stakeToken.balanceOf(address(this));

        _amount = currentBalance - previousBalance;

        user.amount += _amount;
        pool.totalStaked += _amount;
        user.rewardDebt = (user.amount * pool.rewardTokenPerShare) / 1e12;

        IBIFKNRewarder rewarder = pool.rewarder;
        if (address(rewarder) != address(0)) {
            rewarder.onReward(_msgSender(), user.amount);
        }

        emit Deposit(_msgSender(), _poolId, _amount);
    }

    /**
     * @dev Allows a user to unstake a specified amount from a pool.
     * @param _poolId The ID of the pool from which the user wants to unstake.
     * @param _amount The amount to unstake from the pool.
     * Requirements:
     * - The user must have at least `_amount` staked in the pool.
     * - The pool must be valid (as determined by the `validatePool` modifier).
     * Effects:
     * - Updates the pool information.
     * - Transfers any pending rewards to the user.
     * - Decreases the user's staked amount by `_amount`.
     * - Transfers the unstaked tokens back to the user.
     * - Updates the user's pending reward.
     * Emits a `Withdraw` event with the user's address, pool ID, and unstaked amount.
     */
    function unstake(
        uint256 _poolId,
        uint256 _amount
    ) public validatePool(_poolId) nonReentrant {
        if (_amount == 0) revert AmountMustBeGreaterThanZero();

        PoolInfo storage pool = poolInfo[_poolId];
        UserInfo storage user = userInfo[_poolId][_msgSender()];
        // If the user tries to withdraw more than they have staked, revert the transaction
        if (user.amount < _amount) {
            revert TryingToWithdrawTooMuch(_amount, user.amount);
        }
        updatePool(_poolId);
        uint256 pending = (user.amount * pool.rewardTokenPerShare) /
            1e12 -
            user.rewardDebt;

        if (pending != 0) {
            _safeApexTransfer(_msgSender(), pending);
            emit Harvest(_msgSender(), _poolId, pending);
        }

        user.amount = user.amount - _amount;
        pool.totalStaked = pool.totalStaked - _amount; // Update total staked amount in the pool
        user.rewardDebt = (user.amount * pool.rewardTokenPerShare) / 1e12;

        IBIFKNRewarder rewarder = pool.rewarder;
        if (address(rewarder) != address(0)) {
            rewarder.onReward(_msgSender(), user.amount);
        }

        pool.stakeToken.safeTransfer(address(_msgSender()), _amount);
        emit Withdraw(_msgSender(), _poolId, _amount);
    }

    /**
     * @dev Automatically compounds the rewards for the user in the main pool.
     * @notice This function updates the pool information, calculates the pending rewards for the user,
     * and adds the pending rewards to the user's amount after deducting the developer fee.
     */
    function autoCompound() public nonReentrant whenNotPaused {
        PoolInfo storage pool = poolInfo[0];
        UserInfo storage user = userInfo[0][_msgSender()];
        updatePool(0);
        uint256 pending = 0;
        if (user.amount != 0) {
            pending =
                ((user.amount * pool.rewardTokenPerShare) / 1e12) -
                user.rewardDebt;

            if (pending != 0) {
                uint256 devFee = (pending * treasuryPercent) /
                    ONE_HUNDRED_PERCENT;
                uint256 userAmount = pending - devFee;

                user.amount += userAmount;
                _safeApexTransferDevFee(devFee); // Transfer dev fee
            }
        }

        pool.totalStaked +=
            pending -
            ((pending * treasuryPercent) / ONE_HUNDRED_PERCENT);
        user.rewardDebt = (user.amount * pool.rewardTokenPerShare) / 1e12;

        IBIFKNRewarder rewarder = pool.rewarder;
        if (address(rewarder) != address(0)) {
            rewarder.onReward(_msgSender(), user.amount);
        }

        emit Compound(_msgSender(), 0, pending);
    }

    /**
     * @dev Automatically stakes the earned APEX rewards from a specified pool into the APEX staking pool (poolId of 0).
     * @param _poolId The ID of the pool from which to harvest and stake rewards.
     */
    function autoStake(
        uint256 _poolId
    ) public validatePool(_poolId) nonReentrant whenNotPaused {
        if (_poolId == 0) revert InvalidPoolId(_poolId);

        PoolInfo storage pool = poolInfo[_poolId];
        UserInfo storage user = userInfo[_poolId][_msgSender()];

        updatePool(_poolId);
        uint256 pending = (user.amount * pool.rewardTokenPerShare) /
            1e12 -
            user.rewardDebt;
        if (pending == 0) revert NoRewards(_poolId);

        user.rewardDebt = (user.amount * pool.rewardTokenPerShare) / 1e12;

        // Call the rewarder for the provided poolId if it exists
        IBIFKNRewarder rewarder = pool.rewarder;
        if (address(rewarder) != address(0)) {
            rewarder.onReward(_msgSender(), user.amount);
        }

        PoolInfo storage apexPool = poolInfo[0];
        UserInfo storage apexUser = userInfo[0][_msgSender()];

        updatePool(0);
        uint256 apexPending = (apexUser.amount * apexPool.rewardTokenPerShare) /
            1e12 -
            apexUser.rewardDebt;

        uint256 totalPending = pending + apexPending;
        uint256 devFee;
        if (totalPending != 0) {
            devFee = (totalPending * treasuryPercent) / ONE_HUNDRED_PERCENT;
            uint256 userAmount = totalPending - devFee;

            apexUser.amount += userAmount;
            apexPool.totalStaked += userAmount;
            _safeApexTransferDevFee(devFee); // Transfer dev fee

            apexUser.rewardDebt =
                (apexUser.amount * apexPool.rewardTokenPerShare) /
                1e12;

            emit Harvest(_msgSender(), _poolId, pending);
            emit Harvest(_msgSender(), 0, apexPending);
        }

        if (address(apexPool.rewarder) != address(0)) {
            apexPool.rewarder.onReward(_msgSender(), apexUser.amount);
        }

        emit Deposit(_msgSender(), 0, totalPending - devFee);
    }

    /**
     * @dev Allows users to claim their pending rewards without changing their staked amounts.
     * @param _poolId The ID of the pool from which to claim rewards.
     */
    function claimRewards(
        uint256 _poolId
    ) public validatePool(_poolId) nonReentrant {
        PoolInfo storage pool = poolInfo[_poolId];
        UserInfo storage user = userInfo[_poolId][_msgSender()];

        updatePool(_poolId);
        uint256 pending = (user.amount * pool.rewardTokenPerShare) /
            1e12 -
            user.rewardDebt;
        if (pending == 0) revert NoRewards(_poolId);

        user.rewardDebt = (user.amount * pool.rewardTokenPerShare) / 1e12;

        // Call the rewarder for the provided poolId if it exists
        IBIFKNRewarder rewarder = pool.rewarder;
        if (address(rewarder) != address(0)) {
            rewarder.onReward(_msgSender(), user.amount);
        }

        _safeApexTransfer(_msgSender(), pending);
        emit Harvest(_msgSender(), _poolId, pending);
    }

    /**
     * @dev Claims all rewards for the specified pool IDs.
     * @param _poolIds An array of pool IDs for which rewards should be claimed.
     */
    function claimAllRewards(uint256[] memory _poolIds) public nonReentrant {
        for (uint256 i = 0; i < _poolIds.length; i++) {
            claimRewards(_poolIds[i]);
        }
    }

    /**
     * @dev Allows a user to emergency withdraw their funds from a specific pool.
     * @param _poolId The ID of the pool from which the user wants to withdraw.
     * @notice This function is only meant to be used in emergencies. All rewards are forfeited.
     */
    function emergencyWithdraw(uint256 _poolId) public nonReentrant {
        PoolInfo storage pool = poolInfo[_poolId];
        UserInfo storage user = userInfo[_poolId][_msgSender()];

        pool.totalStaked = pool.totalStaked - user.amount;
        user.amount = 0;
        user.rewardDebt = 0;

        pool.stakeToken.safeTransfer(address(_msgSender()), user.amount);

        emit EmergencyWithdraw(_msgSender(), _poolId, user.amount);
    }

    /**
     * @dev Changes the address of the developer.
     * @param _treasury The new address of the developer.
     */
    function changeTreasury(
        address _treasury
    ) public onlyRole(DEFAULT_ADMIN_ROLE) {
        if (_treasury == address(this)) revert InvalidTreasuryAddress();
        treasuryAddress = _treasury;
    }

    /**
     * @dev Sets the percentage of rewards allocated to the development team.
     * @param _newTreasuryPercent The new development percentage to be set.
     * @notice Only the manager role can call this function.
     * @notice The new development percentage must be less than or equal to 100.
     */
    function setTreasuryPercent(
        uint256 _newTreasuryPercent
    ) public onlyRole(MANAGER_ROLE) {
        if (_newTreasuryPercent > MAX_TREASURY_PERCENT)
            revert InvalidTreasuryPercent();
        treasuryPercent = _newTreasuryPercent;
    }

    /**
     * @dev Updates the emission rate of APEX tokens per second.
     * Can only be called by an address with the MANAGER_ROLE.
     * Mass updates all pools before updating the emission rate.
     * Emits an `UpdateEmissionRate` event.
     * @param _apexPerSecond The new emission rate of APEX tokens per second.
     */
    function updateEmissionRate(
        uint256 _apexPerSecond
    ) public onlyRole(MANAGER_ROLE) {
        massUpdatePools();

        apexPerSecond = _apexPerSecond;

        emit UpdateEmissionRate(_msgSender(), _apexPerSecond);
    }

    /**
     * @dev Returns the information of a pool.
     * @param _poolId The ID of the pool.
     * @return _staketoken The address of the LP token for the pool.
     * @return _allocationPoints The allocation points for the pool.
     * @return _lastRewardTimestamp The timestamp of the last reward.
     * @return _rewardTokenPerShare The amount of reward tokens per share.
     */
    function getPoolInfo(
        uint256 _poolId
    )
        public
        view
        returns (
            address _staketoken,
            uint256 _allocationPoints,
            uint256 _lastRewardTimestamp,
            uint256 _rewardTokenPerShare,
            uint256 _totalStaked,
            uint256 _bonusMultiplier,
            address _rewarder
        )
    {
        return (
            address(poolInfo[_poolId].stakeToken),
            poolInfo[_poolId].allocationPoints,
            poolInfo[_poolId].lastRewardTimestamp,
            poolInfo[_poolId].rewardTokenPerShare,
            poolInfo[_poolId].totalStaked,
            poolInfo[_poolId].bonusMultiplier,
            address(poolInfo[_poolId].rewarder)
        );
    }

    function getPoolInfoByToken(
        IERC20 _stakeToken
    )
        public
        view
        returns (
            uint256 _poolId,
            uint256 _allocationPoints,
            uint256 _lastRewardTimestamp,
            uint256 _rewardTokenPerShare,
            uint256 _totalStaked,
            uint256 _bonusMultiplier,
            address _rewarder
        )
    {
        for (uint256 i = 0; i < poolInfo.length; i++) {
            if (address(poolInfo[i].stakeToken) == address(_stakeToken)) {
                return (
                    i,
                    poolInfo[i].allocationPoints,
                    poolInfo[i].lastRewardTimestamp,
                    poolInfo[i].rewardTokenPerShare,
                    poolInfo[i].totalStaked,
                    poolInfo[i].bonusMultiplier,
                    address(poolInfo[i].rewarder)
                );
            }
        }
    }

    /**
     * @dev Allows the default admin role to reclaim unallocated rewards.
     * The function transfers all the unallocated rewards from the contract's balance to the caller's address.
     */
    function reclaimUnallocatedRewards()
        external
        payable
        onlyRole(DEFAULT_ADMIN_ROLE)
    {
        uint256 apexBal = apex.balanceOf(address(this));

        if (apexBal > 0) {
            apex.safeTransfer(_msgSender(), apexBal);
        }
    }

    /**
     * @dev Safely transfers APEX tokens to a specified address.
     * @param _to The address to transfer APEX tokens to.
     * @param _amount The amount of APEX tokens to transfer.
     */
    function _safeApexTransfer(address _to, uint256 _amount) internal {
        uint256 apexBal = apex.balanceOf(address(this));
        if (_amount > apexBal) {
            _amount = apexBal;
        }
        uint256 devAmount = (_amount * treasuryPercent) / ONE_HUNDRED_PERCENT;
        uint256 userAmount = _amount - devAmount;

        if (devAmount != 0) {
            apex.safeTransfer(treasuryAddress, devAmount);
        }

        if (userAmount != 0) {
            apex.safeTransfer(_to, userAmount);
        }
    }

    /**
     * @dev Internal function to safely transfer the developer fee.
     * @param _amount The amount of APEX tokens to transfer as the developer fee.
     */
    function _safeApexTransferDevFee(uint256 _amount) internal {
        uint256 apexBal = apex.balanceOf(address(this));

        if (_amount > apexBal) {
            _amount = apexBal;
        }

        if (_amount != 0) {
            apex.safeTransfer(treasuryAddress, _amount);
        }
    }

    /**
     * @dev Pauses the contract.
     * Can only be called by an account with the DEFAULT_ADMIN_ROLE.
     */
    function pause() public onlyRole(DEFAULT_ADMIN_ROLE) {
        _pause();
    }

    /**
     * @dev Unpauses the contract.
     * Can only be called by an account with the DEFAULT_ADMIN_ROLE.
     */
    function unpause() public onlyRole(DEFAULT_ADMIN_ROLE) {
        _unpause();
    }
}
