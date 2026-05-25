// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

import "@openzeppelin/contracts-upgradeable/token/ERC20/IERC20Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/utils/SafeERC20Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/security/PausableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/security/ReentrancyGuardUpgradeable.sol";

contract MultiStakingManagerV3 is
    Initializable,
    OwnableUpgradeable,
    PausableUpgradeable,
    ReentrancyGuardUpgradeable
{
    using SafeERC20Upgradeable for IERC20Upgradeable;

    struct Pool {
        bool initialized;
        uint256 tokensStaked;
        uint256 harvestedTokens;
        uint256 harvestedEth;
        uint256 lastRewardedBlock;
        uint256 accTokenRewardsPerShare;
        uint256 accEthRewardsPerShare;
        uint256 rewardTokensPerBlock;
        uint256 rewardEthPerBlock;
        uint256 lockTime;
        uint256 endBlock;
        bool updateStakedTime;
    }

    struct PoolStaker {
        uint256 amount;
        uint256 stakedTime;
        uint256 harvestedTokens;
        uint256 harvestedEth;
        uint256 rewardTokenDebt;
        uint256 rewardEthDebt;
    }

    IERC20Upgradeable public stakeToken;
    uint256 public tokensStaked;

    uint256 private constant REWARDS_PRECISION = 1e12;
    uint256 private nextPoolId;

    mapping(uint256 => Pool) public pools;
    mapping(uint256 => mapping(address => PoolStaker)) public poolStakers;

    event Deposit(
        uint256 indexed pool,
        address indexed user,
        uint256 amount,
        uint256 timestamp
    );
    event Withdraw(
        uint256 indexed pool,
        address indexed user,
        uint256 amount,
        uint256 timestamp
    );
    event HarvestRewards(
        uint256 indexed pool,
        address indexed user,
        address indexed token,
        uint256 amount,
        uint256 timestamp
    );
    event StakeTransferred(
        uint256 indexed pool,
        address indexed sourceUser,
        address indexed targetUser,
        uint256 timestamp
    );

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    modifier verifyPools(uint256[] calldata _poolIds) {
        require(_poolIds.length > 0, "Must input at least one pool");
        for (uint256 i; i < _poolIds.length; i++) {
            uint256 i_poolId = _poolIds[i];
            require(pools[i_poolId].initialized, "Pool is uninitialized");
            for (uint256 x; x < _poolIds.length; x++)
                if (i_poolId == _poolIds[x])
                    require(i == x, "Duplicate pool inputs found");
        }
        _;
    }

    /**
     * @dev Receive ETH rewards
     */
    receive() external payable {}

    /**
     * @dev To pause staking
     */
    function pause() external onlyOwner {
        _pause();
    }

    /**
     * @dev To unpause staking
     */
    function unpause() external onlyOwner {
        _unpause();
    }

    /**
     * @dev Deposit tokens to the pool
     */
    function deposit(
        uint256[] calldata _poolIds,
        uint256[] calldata _amounts
    ) external whenNotPaused nonReentrant verifyPools(_poolIds) {
        require(_poolIds.length == _amounts.length, "Invalid parameters");
        for (uint256 i; i < _poolIds.length; i++) {
            uint256 _poolId = _poolIds[i];
            uint256 _amount = _amounts[i];
            require(
                block.number < pools[_poolId].endBlock,
                "Staking for this pool has ended"
            );
            require(_amount > 0, "Deposit amount can't be zero");
            _harvestRewardsAndSend(_poolId, msg.sender);
            _deposit(_poolId, msg.sender, _amount);
            stakeToken.safeTransferFrom(msg.sender, address(this), _amount);
        }
    }

    /**
     * @dev Harvest rewards and deposit them to the pool
     */
    function harvestAndDeposit(
        uint256[] calldata _poolIds
    ) external whenNotPaused nonReentrant verifyPools(_poolIds) {
        for (uint256 i; i < _poolIds.length; i++) {
            uint256 _poolId = _poolIds[i];
            require(
                block.number < pools[_poolId].endBlock,
                "Staking for this pool has ended"
            );
            uint256[2] memory _rewards = _harvestRewards(_poolId, msg.sender);
            if (_rewards[0] > 0) _deposit(_poolId, msg.sender, _rewards[0]);
            if (_rewards[1] > 0) _sendValue(payable(msg.sender), _rewards[1]);
        }
    }

    /**
     * @dev Deposit tokens to single pool
     */
    function _deposit(uint256 _poolId, address _user, uint256 _amount) private {
        Pool storage pool = pools[_poolId];
        PoolStaker storage staker = poolStakers[_poolId][_user];

        // Update current staker
        staker.amount += _amount;
        staker.rewardTokenDebt =
            (staker.amount * pool.accTokenRewardsPerShare) /
            REWARDS_PRECISION;
        staker.rewardEthDebt =
            (staker.amount * pool.accEthRewardsPerShare) /
            REWARDS_PRECISION;
        if (pool.updateStakedTime || staker.stakedTime == 0) {
            staker.stakedTime = block.timestamp;
        }

        // Update pool
        pool.tokensStaked += _amount;
        tokensStaked += _amount;

        // Emit deposit tokens event
        emit Deposit(_poolId, _user, _amount, block.timestamp);
    }

    /**
     * @dev Withdraw all tokens from existing pools
     */
    function withdraw(
        uint256[] calldata _poolIds
    ) external whenNotPaused nonReentrant verifyPools(_poolIds) {
        for (uint256 i; i < _poolIds.length; i++) {
            uint256 _poolId = _poolIds[i];
            Pool storage pool = pools[_poolId];
            PoolStaker memory staker = poolStakers[_poolId][msg.sender];
            require(
                block.number >= pool.endBlock ||
                    staker.stakedTime + pool.lockTime <= block.timestamp,
                "You are not allowed to withdraw before locked time"
            );
            require(staker.amount > 0, "Withdraw amount can't be zero");

            // Update pool stakers and aggregate rewards
            _harvestRewardsAndSend(_poolId, msg.sender);

            // Delete staker
            delete poolStakers[_poolId][msg.sender];

            // Update pool
            pool.tokensStaked -= staker.amount;
            tokensStaked -= staker.amount;

            // Emit withdraw tokens event
            emit Withdraw(_poolId, msg.sender, staker.amount, block.timestamp);
            stakeToken.safeTransfer(msg.sender, staker.amount);
        }
    }

    /**
     * @dev Harvest user rewards
     */
    function harvestRewards(
        uint256[] calldata _poolIds
    ) external whenNotPaused nonReentrant verifyPools(_poolIds) {
        for (uint256 i; i < _poolIds.length; i++)
            _harvestRewardsAndSend(_poolIds[i], msg.sender);
    }

    /**
     * @dev Harvest user's pool rewards and send
     */
    function _harvestRewardsAndSend(uint256 _poolId, address _user) private {
        uint256[2] memory _rewards = _harvestRewards(_poolId, _user);
        if (_rewards[0] > 0) stakeToken.safeTransfer(_user, _rewards[0]);
        if (_rewards[1] > 0) _sendValue(payable(_user), _rewards[1]);
    }

    /**
     * @dev Harvest user's pool rewards
     */
    function _harvestRewards(
        uint256 _poolId,
        address _user
    ) private returns (uint256[2] memory) {
        _updatePoolRewards(_poolId);
        Pool storage pool = pools[_poolId];
        PoolStaker storage staker = poolStakers[_poolId][_user];

        uint256 rewardTokensToHarvest = ((staker.amount *
            pool.accTokenRewardsPerShare) / REWARDS_PRECISION) -
            staker.rewardTokenDebt;
        if (rewardTokensToHarvest > 0) {
            pool.harvestedTokens += rewardTokensToHarvest;
            staker.harvestedTokens += rewardTokensToHarvest;
            staker.rewardTokenDebt =
                (staker.amount * pool.accTokenRewardsPerShare) /
                REWARDS_PRECISION;
            emit HarvestRewards(
                _poolId,
                _user,
                address(stakeToken),
                rewardTokensToHarvest,
                block.timestamp
            );
        }

        uint256 rewardEthToHarvest = ((staker.amount *
            pool.accEthRewardsPerShare) / REWARDS_PRECISION) -
            staker.rewardEthDebt;
        if (rewardEthToHarvest > 0) {
            pool.harvestedEth += rewardEthToHarvest;
            staker.harvestedEth += rewardEthToHarvest;
            staker.rewardEthDebt =
                (staker.amount * pool.accEthRewardsPerShare) /
                REWARDS_PRECISION;
            emit HarvestRewards(
                _poolId,
                _user,
                address(0),
                rewardEthToHarvest,
                block.timestamp
            );
        }

        return [rewardTokensToHarvest, rewardEthToHarvest];
    }

    /**
     * @dev Update pool's accRewardsPerShare and lastRewardedBlock
     */
    function _updatePoolRewards(uint256 _poolId) private {
        Pool storage pool = pools[_poolId];
        if (pool.tokensStaked == 0) {
            pool.lastRewardedBlock = block.number;
            return;
        }

        uint256 blocksSinceLastReward = block.number > pool.endBlock
            ? pool.endBlock - pool.lastRewardedBlock
            : block.number - pool.lastRewardedBlock;

        uint256 tokenRewards = blocksSinceLastReward *
            pool.rewardTokensPerBlock;
        pool.accTokenRewardsPerShare =
            pool.accTokenRewardsPerShare +
            ((tokenRewards * REWARDS_PRECISION) / pool.tokensStaked);

        uint256 ethRewards = blocksSinceLastReward * pool.rewardEthPerBlock;
        pool.accEthRewardsPerShare =
            pool.accEthRewardsPerShare +
            ((ethRewards * REWARDS_PRECISION) / pool.tokensStaked);

        pool.lastRewardedBlock = block.number > pool.endBlock
            ? pool.endBlock
            : block.number;
    }

    /**
     * @dev Send ether to recipient
     */
    function _sendValue(address payable _recipient, uint256 _amount) private {
        require(address(this).balance >= _amount, "Low balance");
        (bool success, ) = _recipient.call{value: _amount}("");
        require(success, "ETH payment failed");
    }

    /**
     * @dev To get the number of rewards that user can get
     */
    function getRewards(
        uint256[] calldata _poolIds,
        address _user
    ) public view verifyPools(_poolIds) returns (uint256[2] memory) {
        uint256[2] memory _rewards = [uint256(0), uint256(0)];

        for (uint256 i; i < _poolIds.length; i++) {
            uint256 _poolId = _poolIds[i];
            Pool memory pool = pools[_poolId];

            if (pool.tokensStaked > 0) {
                uint256 blocksSinceLastReward = block.number > pool.endBlock
                    ? pool.endBlock - pool.lastRewardedBlock
                    : block.number - pool.lastRewardedBlock;

                uint256 tokenRewards = blocksSinceLastReward *
                    pool.rewardTokensPerBlock;
                uint256 accTokenCalc = pool.accTokenRewardsPerShare +
                    ((tokenRewards * REWARDS_PRECISION) / pool.tokensStaked);

                uint256 ethRewards = blocksSinceLastReward *
                    pool.rewardEthPerBlock;
                uint256 accEthCalc = pool.accEthRewardsPerShare +
                    ((ethRewards * REWARDS_PRECISION) / pool.tokensStaked);

                PoolStaker memory staker = poolStakers[_poolId][_user];

                _rewards[0] +=
                    ((staker.amount * accTokenCalc) / REWARDS_PRECISION) -
                    staker.rewardTokenDebt;
                _rewards[1] +=
                    ((staker.amount * accEthCalc) / REWARDS_PRECISION) -
                    staker.rewardEthDebt;
            }
        }

        return _rewards;
    }

    /**
     * @dev To get the number of lifetime rewards harvested
     */
    function getHarvestedRewards(
        uint256[] calldata _poolIds
    ) public view verifyPools(_poolIds) returns (uint256[2] memory) {
        uint256[2] memory _rewards = [uint256(0), uint256(0)];

        for (uint256 i; i < _poolIds.length; i++) {
            Pool memory pool = pools[_poolIds[i]];
            _rewards[0] += pool.harvestedTokens;
            _rewards[1] += pool.harvestedEth;
        }

        return _rewards;
    }

    /**
     * @dev To create a new staking pool
     */
    function createPool(
        uint256 _tokenRate,
        uint256 _ethRate,
        uint256 _lockTime,
        uint256 _rewardBlocks,
        bool _updateStakedTime
    ) public onlyOwner {
        _createPool(
            _tokenRate,
            _ethRate,
            _lockTime,
            _rewardBlocks,
            _updateStakedTime
        );
    }

    function _createPool(
        uint256 _tokenRate,
        uint256 _ethRate,
        uint256 _lockTime,
        uint256 _rewardBlocks,
        bool _updateStakedTime
    ) private {
        Pool storage pool = pools[nextPoolId++];
        require(!pool.initialized, "Pool already initialized");
        pool.initialized = true;
        pool.rewardTokensPerBlock = _tokenRate;
        pool.rewardEthPerBlock = _ethRate;
        pool.lockTime = _lockTime;
        pool.endBlock = block.number + _rewardBlocks;
        pool.updateStakedTime = _updateStakedTime;
    }

    /**
     * @dev To update an existing staking pool
     */
    function updatePool(
        uint256 _poolId,
        uint256 _tokenRate,
        uint256 _ethRate,
        uint256 _lockTime,
        uint256 _endBlock,
        bool _updateStakedTime
    ) external onlyOwner {
        Pool storage pool = pools[_poolId];
        require(pool.initialized, "Pool is uninitialized");
        if (_tokenRate > 0) pool.rewardTokensPerBlock = _tokenRate;
        if (_ethRate > 0) pool.rewardEthPerBlock = _ethRate;
        if (_lockTime > 0) pool.lockTime = _lockTime;
        if (_endBlock > 0) pool.endBlock = _endBlock;
        pool.updateStakedTime = _updateStakedTime;
    }

    /**
     * @dev To update the underlying token
     */
    function setStakeToken(address _stakeToken) external onlyOwner {
        stakeToken = IERC20Upgradeable(_stakeToken);
    }

    /**
     * @dev Transfer staking balances
     */
    function transferStake(
        uint256[] calldata _poolIds,
        address _sourceUser,
        address _targetUser
    ) external onlyOwner verifyPools(_poolIds) {
        for (uint256 i; i < _poolIds.length; i++) {
            uint256 _poolId = _poolIds[i];

            // transfer balances
            poolStakers[_poolId][_targetUser] = poolStakers[_poolId][
                _sourceUser
            ];

            // reset source
            delete poolStakers[_poolId][_sourceUser];

            emit StakeTransferred(
                _poolId,
                _sourceUser,
                _targetUser,
                block.timestamp
            );
        }
    }
}
