// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";

import "./interfaces/IStaking.sol";
import "./interfaces/IstGlintUsage.sol";

/*
 * This contract is used to distribute staking to users that allocated stGlint here
 *
 * Staking can be distributed in the form of one or more tokens
 * They are mainly managed to be received from the FeeManager contract, but other sources can be added (dev wallet for instance)
 *
 * The freshly received staking are stored in a pending slot
 *
 * The content of this pending slot will be progressively transferred over time into a distribution slot
 * This distribution slot is the source of the staking distribution to stGlint allocators during the current cycle
 *
 * This transfer from the pending slot to the distribution slot is based on cycleStakingPercent and CYCLE_PERIOD_SECONDS
 *
 */
contract Staking is Ownable, ReentrancyGuard, IstGlintUsage, IStaking {
    using SafeERC20 for IERC20;
    using EnumerableSet for EnumerableSet.AddressSet;

    struct UserInfo {
        uint256 pendingStaking;
        uint256 rewardDebt;
    }

    struct StakingInfo {
        uint256 currentDistributionAmount; // total amount to distribute during the current cycle
        uint256 currentCycleDistributedAmount; // amount already distributed for the current cycle (times 1e2)
        uint256 pendingAmount; // total amount in the pending slot, not distributed yet
        uint256 distributedAmount; // total amount that has been distributed since initialization
        uint256 accStakingPerShare; // accumulated staking per share (times 1e18)
        uint256 lastUpdateTime; // last time the staking distribution occurred
        uint256 cycleStakingPercent; // fixed part of the pending staking to assign to currentDistributionAmount on every cycle
        bool distributionDisabled; // deactivate a token distribution (for temporary staking)
    }

    // actively distributed tokens
    EnumerableSet.AddressSet private _distributedTokens;
    uint256 public constant MAX_DISTRIBUTED_TOKENS = 10;

    // staking info for every staking token
    mapping(address => StakingInfo) public stakingInfo;
    mapping(address => mapping(address => UserInfo)) public users;

    address public immutable stGlint; // stGlint contract

    mapping(address => uint256) public usersAllocation; // User's stGlint allocation
    uint256 public totalAllocation; // Contract's total stGlint allocation

    uint256 public constant MIN_CYCLE_STAKING_PERCENT = 1; // 0.01%
    uint256 public constant DEFAULT_CYCLE_STAKING_PERCENT = 100; // 1%
    uint256 public constant MAX_CYCLE_STAKING_PERCENT = 10000; // 100%
    // staking will be added to the currentDistributionAmount on each new cycle
    uint256 internal _cycleDurationSeconds = 7 days;
    uint256 public currentCycleStartTime;

    constructor(address _stGlint) {
        require(_stGlint != address(0), "zero address");
        currentCycleStartTime = block.timestamp + (60 * 60 * 24 * 365);
        stGlint = _stGlint;
    }

    /********************************************/
    /****************** EVENTS ******************/
    /********************************************/

    event UserUpdated(
        address indexed user,
        uint256 previousBalance,
        uint256 newBalance
    );
    event StakingCollected(
        address indexed user,
        address indexed token,
        uint256 amount
    );
    event CycleStakingPercentUpdated(
        address indexed token,
        uint256 previousValue,
        uint256 newValue
    );
    event RewardAddedToPending(address indexed token, uint256 amount);
    event DistributedTokenDisabled(address indexed token);
    event DistributedTokenRemoved(address indexed token);
    event DistributedTokenEnabled(address indexed token);

    /***********************************************/
    /****************** MODIFIERS ******************/
    /***********************************************/

    /**
     * @dev Checks if an index exists
     */
    modifier validateDistributedTokensIndex(uint256 index) {
        require(
            index < _distributedTokens.length(),
            "validateDistributedTokensIndex: index exists?"
        );
        _;
    }

    /**
     * @dev Checks if token exists
     */
    modifier validateDistributedToken(address token) {
        require(
            _distributedTokens.contains(token),
            "validateDistributedTokens: token does not exists"
        );
        _;
    }

    /**
     * @dev Checks if caller is the stGlint contract
     */
    modifier stGlintTokenOnly() {
        require(
            msg.sender == stGlint,
            "stGlintTokenOnly: caller should be stGlint"
        );
        _;
    }

    /*******************************************/
    /****************** VIEWS ******************/
    /*******************************************/

    function cycleDurationSeconds() external view returns (uint256) {
        return _cycleDurationSeconds;
    }

    /**
     * @dev Returns the number of staking tokens
     */
    function distributedTokensLength()
        external
        view
        override
        returns (uint256)
    {
        return _distributedTokens.length();
    }

    /**
     * @dev Returns staking token address from given index
     */
    function distributedToken(
        uint256 index
    )
        external
        view
        override
        validateDistributedTokensIndex(index)
        returns (address)
    {
        return address(_distributedTokens.at(index));
    }

    /**
     * @dev Returns true if given token is a staking token
     */
    function isDistributedToken(
        address token
    ) external view override returns (bool) {
        return _distributedTokens.contains(token);
    }

    /**
     * @dev Returns time at which the next cycle will start
     */
    function nextCycleStartTime() public view returns (uint256) {
        return currentCycleStartTime + _cycleDurationSeconds;
    }

    /**
     * @dev Returns user's staking pending amount for a given token
     */
    function pendingStakingAmount(
        address token,
        address userAddress
    ) external view returns (uint256) {
        if (totalAllocation == 0) {
            return 0;
        }

        StakingInfo storage stakingInfo_ = stakingInfo[token];

        uint256 accStakingPerShare = stakingInfo_.accStakingPerShare;
        uint256 lastUpdateTime = stakingInfo_.lastUpdateTime;
        uint256 dividendAmountPerSecond_ = _stakingAmountPerSecond(token);

        // check if the current cycle has changed since last update
        if (_currentBlockTimestamp() > nextCycleStartTime()) {
            // get remaining rewards from last cycle
            accStakingPerShare +=
                ((nextCycleStartTime() - lastUpdateTime) *
                    dividendAmountPerSecond_ *
                    1e16) /
                totalAllocation;

            lastUpdateTime = nextCycleStartTime();
            dividendAmountPerSecond_ =
                (stakingInfo_.pendingAmount *
                    stakingInfo_.cycleStakingPercent) /
                (100 * _cycleDurationSeconds);
        }

        // get pending rewards from current cycle
        accStakingPerShare +=
            ((_currentBlockTimestamp() - lastUpdateTime) *
                (dividendAmountPerSecond_ * 1e16)) /
            totalAllocation;

        return
            ((usersAllocation[userAddress] * accStakingPerShare) / 1e18) -
            users[token][userAddress].rewardDebt +
            users[token][userAddress].pendingStaking;
    }

    /**************************************************/
    /****************** PUBLIC FUNCTIONS **************/
    /**************************************************/

    /**
     * @dev Updates the current cycle start time if previous cycle has ended
     */
    function updateCurrentCycleStartTime() public {
        uint256 nextCycleStartTime_ = nextCycleStartTime();

        if (_currentBlockTimestamp() >= nextCycleStartTime_) {
            currentCycleStartTime = nextCycleStartTime_;
        }
    }

    /**
     * @dev Updates staking info for a given token
     */
    function updateStakingInfo(
        address token
    ) external validateDistributedToken(token) {
        _updateStakingInfo(token);
    }

    /****************************************************************/
    /****************** EXTERNAL PUBLIC FUNCTIONS  ******************/
    /****************************************************************/

    /**
     * @dev starts staking
     */
    function startStaking() external onlyOwner {
        require(
            block.timestamp < currentCycleStartTime,
            "distribution already started"
        );
        currentCycleStartTime = block.timestamp;
    }

    /**
     * @dev Updates all stakingInfo
     */
    function massUpdateStakingInfo() external {
        uint256 length = _distributedTokens.length();
        for (uint256 index = 0; index < length; ) {
            _updateStakingInfo(_distributedTokens.at(index));
            unchecked {
                ++index;
            }
        }
    }

    /**
     * @dev Harvests caller's pending staking of a given token
     */
    function harvestStaking(address token) external nonReentrant {
        if (!_distributedTokens.contains(token)) {
            require(
                stakingInfo[token].distributedAmount > 0,
                "harvestStaking: invalid token"
            );
        }

        _harvestStaking(token);
    }

    /**
     * @dev Harvests all caller's pending staking
     */
    function harvestAllStaking() external nonReentrant {
        uint256 length = _distributedTokens.length();
        for (uint256 index = 0; index < length; ) {
            _harvestStaking(_distributedTokens.at(index));
            unchecked {
                ++index;
            }
        }
    }

    /**
     * @dev Transfers the given amount of token from caller to pendingAmount
     *
     * Must only be called by a trustable address
     */
    function addRewardsToPending(
        address token,
        uint256 amount
    ) external override nonReentrant {
        uint256 prevTokenBalance = IERC20(token).balanceOf(address(this));
        StakingInfo storage stakingInfo_ = stakingInfo[token];

        IERC20(token).safeTransferFrom(msg.sender, address(this), amount);

        // handle tokens with transfer tax
        uint256 receivedAmount = IERC20(token).balanceOf(address(this)) -
            prevTokenBalance;
        stakingInfo_.pendingAmount =
            stakingInfo_.pendingAmount +
            receivedAmount;

        emit RewardAddedToPending(token, receivedAmount);
    }

    /**
     * @dev Emergency withdraw token's balance on the contract
     */
    function emergencyWithdraw(IERC20 token) public nonReentrant onlyOwner {
        uint256 balance = token.balanceOf(address(this));
        require(balance > 0, "emergencyWithdraw: token balance is null");
        _safeTokenTransfer(token, msg.sender, balance);
    }

    /**
     * @dev Emergency withdraw all reward tokens' balances on the contract
     */
    function emergencyWithdrawAll() external nonReentrant onlyOwner {
        uint256 length = _distributedTokens.length();
        for (uint256 index = 0; index < length; ) {
            emergencyWithdraw(IERC20(_distributedTokens.at(index)));
            unchecked {
                ++index;
            }
        }
    }

    /*****************************************************************/
    /****************** OWNABLE FUNCTIONS  ******************/
    /*****************************************************************/

    /**
     * Allocates "userAddress" user's "amount" of stGlint to this staking contract
     *
     * Can only be called by stGlint contract, which is trusted to verify amounts
     * "data" is only here for compatibility reasons (IstGlintUsage)
     */
    function allocate(
        address userAddress,
        uint256 amount,
        bytes calldata /*data*/
    ) external override nonReentrant stGlintTokenOnly {
        uint256 newUserAllocation = usersAllocation[userAddress] + amount;
        uint256 newTotalAllocation = totalAllocation + amount;
        _updateUser(userAddress, newUserAllocation, newTotalAllocation);
    }

    /**
     * Deallocates "userAddress" user's "amount" of stGlint allocation from this staking contract
     *
     * Can only be called by stGlint contract, which is trusted to verify amounts
     * "data" is only here for compatibility reasons (IstGlintUsage)
     */
    function deallocate(
        address userAddress,
        uint256 amount,
        bytes calldata /*data*/
    ) external override nonReentrant stGlintTokenOnly {
        uint256 newUserAllocation = usersAllocation[userAddress] - amount;
        uint256 newTotalAllocation = totalAllocation - amount;
        _updateUser(userAddress, newUserAllocation, newTotalAllocation);
    }

    /**
     * @dev Enables a given token to be distributed as staking
     *
     * Effective from the next cycle
     */
    function enableDistributedToken(address token) external onlyOwner {
        StakingInfo storage stakingInfo_ = stakingInfo[token];
        require(
            stakingInfo_.lastUpdateTime == 0 ||
                stakingInfo_.distributionDisabled,
            "enableDistributedToken: Already enabled staking token"
        );
        require(
            _distributedTokens.length() < MAX_DISTRIBUTED_TOKENS,
            "enableDistributedToken: too many distributedTokens"
        );
        // initialize lastUpdateTime if never set before
        if (stakingInfo_.lastUpdateTime == 0) {
            stakingInfo_.lastUpdateTime = _currentBlockTimestamp();
        }
        // initialize cycleStakingPercent to the minimum if never set before
        if (stakingInfo_.cycleStakingPercent == 0) {
            stakingInfo_.cycleStakingPercent = DEFAULT_CYCLE_STAKING_PERCENT;
        }
        stakingInfo_.distributionDisabled = false;
        _distributedTokens.add(token);
        emit DistributedTokenEnabled(token);
    }

    /**
     * @dev Disables distribution of a given token as staking
     *
     * Effective from the next cycle
     */
    function disableDistributedToken(address token) external onlyOwner {
        StakingInfo storage stakingInfo_ = stakingInfo[token];
        require(
            stakingInfo_.lastUpdateTime > 0 &&
                !stakingInfo_.distributionDisabled,
            "disableDistributedToken: Already disabled staking token"
        );
        stakingInfo_.distributionDisabled = true;
        emit DistributedTokenDisabled(token);
    }

    /**
     * @dev Updates the percentage of pending staking that will be distributed during the next cycle
     *
     * Must be a value between MIN_CYCLE_STAKING_PERCENT and MAX_CYCLE_STAKING_PERCENT
     */
    function updateCycleStakingPercent(
        address token,
        uint256 percent
    ) external onlyOwner {
        require(
            percent <= MAX_CYCLE_STAKING_PERCENT,
            "updateCycleStakingPercent: percent mustn't exceed maximum"
        );
        require(
            percent >= MIN_CYCLE_STAKING_PERCENT,
            "updateCycleStakingPercent: percent mustn't exceed minimum"
        );
        StakingInfo storage stakingInfo_ = stakingInfo[token];
        uint256 previousPercent = stakingInfo_.cycleStakingPercent;
        stakingInfo_.cycleStakingPercent = percent;
        emit CycleStakingPercentUpdated(
            token,
            previousPercent,
            stakingInfo_.cycleStakingPercent
        );
    }

    /**
     * @dev remove an address from _distributedTokens
     *
     * Can only be valid for a disabled staking token and if the distribution has ended
     */
    function removeTokenFromDistributedTokens(
        address tokenToRemove
    ) external onlyOwner {
        StakingInfo storage _stakingInfo = stakingInfo[tokenToRemove];
        require(
            _stakingInfo.distributionDisabled &&
                _stakingInfo.currentDistributionAmount == 0,
            "removeTokenFromDistributedTokens: cannot be removed"
        );
        _distributedTokens.remove(tokenToRemove);
        emit DistributedTokenRemoved(tokenToRemove);
    }

    /********************************************************/
    /****************** INTERNAL FUNCTIONS ******************/
    /********************************************************/

    /**
     * @dev Returns the amount of staking token distributed every second (times 1e2)
     */
    function _stakingAmountPerSecond(
        address token
    ) internal view returns (uint256) {
        if (!_distributedTokens.contains(token)) return 0;

        return
            (stakingInfo[token].currentDistributionAmount * 1e2) /
            _cycleDurationSeconds;
    }

    /**
     * @dev Updates every user's rewards allocation for each distributed token
     */
    function _updateStakingInfo(address token) internal {
        uint256 currentBlockTimestamp = _currentBlockTimestamp();
        StakingInfo storage stakingInfo_ = stakingInfo[token];

        updateCurrentCycleStartTime();

        uint256 lastUpdateTime = stakingInfo_.lastUpdateTime;
        uint256 accStakingPerShare = stakingInfo_.accStakingPerShare;
        if (currentBlockTimestamp <= lastUpdateTime) {
            return;
        }

        // if no stGlint is allocated or initial distribution has not started yet
        if (
            totalAllocation == 0 ||
            currentBlockTimestamp < currentCycleStartTime
        ) {
            stakingInfo_.lastUpdateTime = currentBlockTimestamp;
            return;
        }

        uint256 currentDistributionAmount = stakingInfo_
            .currentDistributionAmount; // gas saving
        uint256 currentCycleDistributedAmount = stakingInfo_
            .currentCycleDistributedAmount; // gas saving

        // check if the current cycle has changed since last update
        if (lastUpdateTime < currentCycleStartTime) {
            // update accDividendPerShare for the end of the previous cycle
            accStakingPerShare =
                accStakingPerShare +
                (((currentDistributionAmount * 1e2) -
                    currentCycleDistributedAmount) * 1e16) /
                totalAllocation;

            // check if distribution is enabled
            if (!stakingInfo_.distributionDisabled) {
                // transfer the token's cycleStakingPercent part from the pending slot to the distribution slot
                stakingInfo_.distributedAmount =
                    stakingInfo_.distributedAmount +
                    currentDistributionAmount;

                uint256 pendingAmount = stakingInfo_.pendingAmount;
                currentDistributionAmount =
                    (pendingAmount * stakingInfo_.cycleStakingPercent) /
                    10000;

                stakingInfo_
                    .currentDistributionAmount = currentDistributionAmount;
                stakingInfo_.pendingAmount =
                    pendingAmount -
                    currentDistributionAmount;
            } else {
                // stop the token's distribution on next cycle
                stakingInfo_.distributedAmount =
                    stakingInfo_.distributedAmount +
                    currentDistributionAmount;
                currentDistributionAmount = 0;
                stakingInfo_.currentDistributionAmount = 0;
            }

            currentCycleDistributedAmount = 0;
            lastUpdateTime = currentCycleStartTime;
        }
        uint256 toDistribute = (currentBlockTimestamp - lastUpdateTime) *
            _stakingAmountPerSecond(token);

        // ensure that we can't distribute more than currentDistributionAmount (for instance w/ a > 24h service interruption)
        if (
            currentCycleDistributedAmount + toDistribute >
            currentDistributionAmount * 1e2
        ) {
            toDistribute =
                (currentDistributionAmount * 1e2) -
                currentCycleDistributedAmount;
        }

        stakingInfo_.currentCycleDistributedAmount =
            currentCycleDistributedAmount +
            toDistribute;

        stakingInfo_.accStakingPerShare =
            accStakingPerShare +
            ((toDistribute * 1e16) / totalAllocation);

        stakingInfo_.lastUpdateTime = currentBlockTimestamp;
    }

    /**
     * Updates "userAddress" user's and total allocations for each distributed token
     */
    function _updateUser(
        address userAddress,
        uint256 newUserAllocation,
        uint256 newTotalAllocation
    ) internal {
        uint256 previousUserAllocation = usersAllocation[userAddress];

        // for each distributedToken
        uint256 length = _distributedTokens.length();
        for (uint256 index = 0; index < length; ) {
            address token = _distributedTokens.at(index);
            _updateStakingInfo(token);

            UserInfo storage user = users[token][userAddress];
            uint256 accStakingPerShare = stakingInfo[token].accStakingPerShare;

            uint256 pending = ((previousUserAllocation * accStakingPerShare) /
                1e18) - user.rewardDebt;
            unchecked {
                user.pendingStaking = user.pendingStaking + pending;
            }

            user.rewardDebt = (newUserAllocation * accStakingPerShare) / 1e18;
            unchecked {
                ++index;
            }
        }

        usersAllocation[userAddress] = newUserAllocation;
        totalAllocation = newTotalAllocation;

        emit UserUpdated(
            userAddress,
            previousUserAllocation,
            newUserAllocation
        );
    }

    /**
     * @dev Harvests msg.sender's pending staking of a given token
     */
    function _harvestStaking(address token) internal {
        _updateStakingInfo(token);

        UserInfo storage user = users[token][msg.sender];
        uint256 accStakingPerShare = stakingInfo[token].accStakingPerShare;

        uint256 userstGlintAllocation = usersAllocation[msg.sender];
        uint256 pending = user.pendingStaking +
            (
                (((userstGlintAllocation * accStakingPerShare) / 1e18) -
                    user.rewardDebt)
            );

        user.pendingStaking = 0;
        user.rewardDebt = (userstGlintAllocation * accStakingPerShare) / 1e18;

        _safeTokenTransfer(IERC20(token), msg.sender, pending);
        emit StakingCollected(msg.sender, token, pending);
    }

    /**
     * @dev Safe token transfer function, in case rounding error causes pool to not have enough tokens
     */
    function _safeTokenTransfer(
        IERC20 token,
        address to,
        uint256 amount
    ) internal {
        if (amount > 0) {
            uint256 tokenBal = token.balanceOf(address(this));
            if (amount > tokenBal) {
                token.safeTransfer(to, tokenBal);
            } else {
                token.safeTransfer(to, amount);
            }
        }
    }

    /**
     * @dev Utility function to get the current block timestamp
     */
    function _currentBlockTimestamp() internal view virtual returns (uint256) {
        /* solhint-disable not-rely-on-time */
        return block.timestamp;
    }
}
