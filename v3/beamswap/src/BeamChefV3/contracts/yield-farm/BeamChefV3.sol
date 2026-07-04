// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import "@openzeppelin/contracts/utils/Address.sol";
import "./rewarders/IMultipleRewards.sol";
import "./libraries/BoringERC20.sol";
import "./IBeamSwapPair.sol";
import "../interfaces/IstGlint.sol";
import "../interfaces/IFarmBooster.sol";

contract BeamChefV3 is Ownable, ReentrancyGuard {
    using BoringERC20 for IBoringERC20;

    // Info of each user.
    struct UserInfo {
        uint256 amount; // How many LP tokens the user has provided.
        uint256 rewardDebt; // Reward debt. See explanation below.
        uint256 rewardDebtCommunity; // Reward debt. See explanation below.
        uint256 rewardLockedUp; // Reward locked up.
        uint256 nextHarvestUntil; // When can the user harvest again.
    }

    // Info of each pool.
    struct PoolInfo {
        IBoringERC20 lpToken; // Address of LP token contract.
        uint256 allocPoint; // How many allocation points assigned to this pool. Glint to distribute per second.
        uint256 lastRewardTimestamp; // Last block number that Glint distribution occurs.
        uint256 accGlintPerShare; // Accumulated Glint per share, times 1e18. See below.
        uint256 accGlintPerShareCommunity; // Accumulated Glint per share, times 1e18. See below.
        uint16 depositFeeBP; // Deposit fee in basis points
        uint256 harvestInterval; // Harvest interval in seconds
        uint256 totalLp; // Total token in Pool
        uint256 allocPointCommunity; //  How many allocation points assigned to this pool. Glint to distribute per second. This value is dynamic based on user votes
        uint256 stGlintRate; // How much percent of the rewards gets distributed as stGlint
        bool isVoteable; // Is this pool voteable
        IMultipleRewards[] rewarders; // Array of rewarder contract for pools with incentives
    }

    struct UserVoteInfo {
        bool voted;
        uint256 votedID;
        uint256 votedAmount;
    }

    IBoringERC20 public immutable beam;
    IstGlint public immutable stGlint;

    // Glint tokens created per second
    uint256 public beamPerSec;

    //base community beam per second
    uint256 public beamPerSecCommunity;

    // Max harvest interval: 14 days
    uint256 public constant MAXIMUM_HARVEST_INTERVAL = 14 days;

    // Maximum deposit fee rate: 10%
    uint16 public constant MAXIMUM_DEPOSIT_FEE_RATE = 1000;

    // Info of each pool
    PoolInfo[] public poolInfo;

    // Info of each user that stakes LP tokens.
    mapping(uint256 => mapping(address => UserInfo)) public userInfo;

    // Total allocation points. Must be the sum of all allocation points in all pools.
    uint256 public totalAllocPoint;

    // Total community allocation points. Must be the sum of all allocation points in all pools.
    uint256 public totalAllocPointCommunity;

    // The timestamp when Glint mining starts.
    uint256 public startTimestamp;

    // Total locked up rewards
    uint256 public totalLockedUpRewards;

    // Total Glint in Glint Pools (can be multiple pools)
    uint256 public totalGlintInPools;

    // Dev address.
    address public devAddress;

    address internal immutable farmBooster;

    // deposit fee address if needed
    address public feeAddress;

    uint256 public devPercent;

    uint256 public votePoolDelay;

    // The precision factor
    uint256 private constant ACC_TOKEN_PRECISION = 1e12;

    uint256 public lastUpdatedTimeVotes;

    // mapping(address => bool) public voted;
    mapping(address => bool) public voteOperators;
    mapping(address => UserVoteInfo) public userVoteInfo;

    modifier validatePoolByPid(uint256 _pid) {
        require(_pid < poolInfo.length, "Pool does not exist");
        _;
    }

    modifier onlyFarmBooster() {
        require(voteOperators[msg.sender], "only vote operators");
        _;
    }

    event Add(
        uint256 indexed pid,
        uint256 allocPoint,
        IBoringERC20 indexed lpToken,
        uint16 depositFeeBP,
        uint256 harvestInterval,
        IMultipleRewards[] indexed rewarders
    );

    event Set(
        uint256 indexed pid,
        uint256 allocPoint,
        uint16 depositFeeBP,
        uint256 harvestInterval,
        IMultipleRewards[] indexed rewarders
    );

    event UpdatePool(
        uint256 indexed pid,
        uint256 lastRewardTimestamp,
        uint256 lpSupply,
        uint256 accGlintPerShare
    );

    event Deposit(address indexed user, uint256 indexed pid, uint256 amount);

    event Withdraw(address indexed user, uint256 indexed pid, uint256 amount);

    event EmergencyWithdraw(
        address indexed user,
        uint256 indexed pid,
        uint256 amount
    );

    event EmissionRateUpdated(
        address indexed caller,
        uint256 previousValue,
        uint256 newValue
    );
    event EmissionRateUpdatedCommunity(
        address indexed caller,
        uint256 previousValue,
        uint256 newValue
    );

    event RewardLockedUp(
        address indexed user,
        uint256 indexed pid,
        uint256 amountLockedUp
    );

    event AllocPointsUpdated(
        address indexed caller,
        uint256 previousAmount,
        uint256 newAmount
    );

    event SetFeeAddress(address indexed oldAddress, address indexed newAddress);

    event SetDevPercent(uint256 oldPercent, uint256 newPercent);

    event RewardPaid(address indexed user, uint256 indexed pid, uint256 amount);

    event XRewardPaid(
        address indexed user,
        uint256 indexed pid,
        uint256 amount
    );

    constructor(
        IBoringERC20 _glint,
        uint256 _glintPerSec,
        address _devAddress,
        uint256 _devPercent,
        address _feeAddress,
        IstGlint _stGlint,
        address _farmBooster,
        uint256 _glintPerSecCommunity
    ) {
        require(
            _devPercent <= 200,
            "constructor: invalid marketing percent value"
        );

        startTimestamp = block.timestamp + (60 * 60 * 24 * 365);
        devPercent = _devPercent;
        beam = _glint;
        beamPerSec = _glintPerSec;
        devAddress = _devAddress;
        feeAddress = _feeAddress;
        stGlint = _stGlint;
        IERC20(address(_glint)).approve(address(_stGlint), type(uint256).max);
        voteOperators[_farmBooster] = true;
        farmBooster = _farmBooster;
        beamPerSecCommunity = _glintPerSecCommunity;
    }

    // Set farming start
    function startFarming() public onlyOwner {
        require(block.timestamp < startTimestamp, "farm already started");

        uint256 length = poolInfo.length;
        for (uint256 pid = 0; pid < length; ) {
            PoolInfo storage pool = poolInfo[pid];
            pool.lastRewardTimestamp = block.timestamp;
            unchecked {
                ++pid;
            }
        }

        startTimestamp = block.timestamp;
    }

    function poolLength() external view returns (uint256) {
        return poolInfo.length;
    }

    // Add a new lp to the pool. Can only be called by the owner.
    // Can add multiple pool with same lp token without messing up rewards, because each pool's balance is tracked using its own totalLp
    function add(
        uint256 _allocPoint,
        IBoringERC20 _lpToken,
        uint16 _depositFeeBP,
        uint256 _harvestInterval,
        uint256 _allocPointCommunity,
        uint256 _stGlintRate,
        bool _isVoteable,
        IMultipleRewards[] calldata _rewarders
    ) public onlyOwner {
        require(_rewarders.length <= 10, "add: too many rewarders");
        require(
            _depositFeeBP <= MAXIMUM_DEPOSIT_FEE_RATE,
            "add: deposit fee too high"
        );
        require(
            _harvestInterval <= MAXIMUM_HARVEST_INTERVAL,
            "add: invalid harvest interval"
        );
        require(_stGlintRate <= 100, "add: invalid stGlint rate");
        for (
            uint256 rewarderId = 0;
            rewarderId < _rewarders.length;
            ++rewarderId
        ) {
            require(
                Address.isContract(address(_rewarders[rewarderId])),
                "add: rewarder must be contract"
            );
        }

        _massUpdatePools();

        uint256 lastRewardTimestamp = block.timestamp > startTimestamp
            ? block.timestamp
            : startTimestamp;

        totalAllocPoint += _allocPoint;
        totalAllocPointCommunity += _allocPointCommunity;

        poolInfo.push(
            PoolInfo({
                lpToken: _lpToken,
                allocPoint: _allocPoint,
                lastRewardTimestamp: lastRewardTimestamp,
                accGlintPerShare: 0,
                accGlintPerShareCommunity: 0,
                depositFeeBP: _depositFeeBP,
                harvestInterval: _harvestInterval,
                totalLp: 0,
                stGlintRate: _stGlintRate,
                allocPointCommunity: _allocPointCommunity,
                isVoteable: _isVoteable,
                rewarders: _rewarders
            })
        );

        emit Add(
            poolInfo.length - 1,
            _allocPoint,
            _lpToken,
            _depositFeeBP,
            _harvestInterval,
            _rewarders
        );
    }

    // Update the given pool's Glint allocation point and deposit fee. Can only be called by the owner.
    function set(
        uint256 _pid,
        uint256 _allocPoint,
        uint256 _stGlintRate,
        uint16 _depositFeeBP,
        uint256 _harvestInterval,
        IMultipleRewards[] calldata _rewarders
    ) public onlyOwner validatePoolByPid(_pid) {
        require(_rewarders.length <= 10, "set: too many rewarders");

        require(
            _depositFeeBP <= MAXIMUM_DEPOSIT_FEE_RATE,
            "set: deposit fee too high"
        );
        require(
            _harvestInterval <= MAXIMUM_HARVEST_INTERVAL,
            "set: invalid harvest interval"
        );

        for (
            uint256 rewarderId = 0;
            rewarderId < _rewarders.length;
            ++rewarderId
        ) {
            require(
                Address.isContract(address(_rewarders[rewarderId])),
                "set: rewarder must be contract"
            );
        }

        _massUpdatePools();

        totalAllocPoint =
            totalAllocPoint -
            poolInfo[_pid].allocPoint +
            _allocPoint;

        poolInfo[_pid].allocPoint = _allocPoint;
        poolInfo[_pid].depositFeeBP = _depositFeeBP;
        poolInfo[_pid].harvestInterval = _harvestInterval;
        poolInfo[_pid].stGlintRate = _stGlintRate;
        poolInfo[_pid].rewarders = _rewarders;

        emit Set(
            _pid,
            _allocPoint,
            _depositFeeBP,
            _harvestInterval,
            _rewarders
        );
    }

    // View function to see pending rewards on frontend.
    function pendingTokens(
        uint256 _pid,
        address _user
    )
        external
        view
        validatePoolByPid(_pid)
        returns (
            address[] memory addresses,
            string[] memory symbols,
            uint256[] memory decimals,
            uint256[] memory amounts
        )
    {
        PoolInfo memory pool = poolInfo[_pid];
        UserInfo memory user = userInfo[_pid][_user];
        uint256 accGlintPerShare = pool.accGlintPerShare;
        uint256 accGlintPerShareCommunity = pool.accGlintPerShareCommunity;
        uint256 lpSupply = pool.totalLp;

        if (block.timestamp > pool.lastRewardTimestamp && lpSupply != 0) {
            uint256 multiplier = block.timestamp - pool.lastRewardTimestamp;
            uint256 total = 1000;
            uint256 lpPercent = total - devPercent;

            uint256 glintReward = (multiplier *
                beamPerSec *
                pool.allocPoint *
                lpPercent) /
                totalAllocPoint /
                total;

            accGlintPerShare += (
                ((glintReward * ACC_TOKEN_PRECISION) / lpSupply)
            );
            uint256 glintRewardCommunity = pool.allocPointCommunity != 0
                ? ((multiplier * beamPerSecCommunity * lpPercent) *
                    pool.allocPointCommunity) /
                    totalAllocPointCommunity /
                    total
                : 0;
            accGlintPerShareCommunity += ((glintRewardCommunity *
                ACC_TOKEN_PRECISION) / lpSupply);
        }

        uint256 pendingGlint = (((user.amount * accGlintPerShare) /
            ACC_TOKEN_PRECISION) - user.rewardDebt) +
            user.rewardLockedUp +
            (((user.amount * accGlintPerShareCommunity) / ACC_TOKEN_PRECISION) -
                user.rewardDebtCommunity);

        addresses = new address[](pool.rewarders.length + 1);
        symbols = new string[](pool.rewarders.length + 1);
        amounts = new uint256[](pool.rewarders.length + 1);
        decimals = new uint256[](pool.rewarders.length + 1);

        addresses[0] = address(beam);
        symbols[0] = IBoringERC20(beam).safeSymbol();
        decimals[0] = IBoringERC20(beam).safeDecimals();
        amounts[0] = pendingGlint;

        for (
            uint256 rewarderId = 0;
            rewarderId < pool.rewarders.length;
            ++rewarderId
        ) {
            addresses[rewarderId + 1] = address(
                pool.rewarders[rewarderId].rewardToken()
            );

            symbols[rewarderId + 1] = IBoringERC20(
                pool.rewarders[rewarderId].rewardToken()
            ).safeSymbol();

            decimals[rewarderId + 1] = IBoringERC20(
                pool.rewarders[rewarderId].rewardToken()
            ).safeDecimals();

            amounts[rewarderId + 1] = pool.rewarders[rewarderId].pendingTokens(
                _pid,
                _user
            );
        }
    }

    /// @notice View function to see pool rewards per sec
    function poolRewardsPerSec(
        uint256 _pid
    )
        external
        view
        validatePoolByPid(_pid)
        returns (
            address[] memory addresses,
            string[] memory symbols,
            uint256[] memory decimals,
            uint256[] memory rewardsPerSec
        )
    {
        PoolInfo storage pool = poolInfo[_pid];

        addresses = new address[](pool.rewarders.length + 1);
        symbols = new string[](pool.rewarders.length + 1);
        decimals = new uint256[](pool.rewarders.length + 1);
        rewardsPerSec = new uint256[](pool.rewarders.length + 1);

        addresses[0] = address(beam);
        symbols[0] = IBoringERC20(beam).safeSymbol();
        decimals[0] = IBoringERC20(beam).safeDecimals();

        uint256 total = 1000;
        uint256 lpPercent = total - devPercent;

        rewardsPerSec[0] =
            (pool.allocPoint * beamPerSec * lpPercent) /
            totalAllocPoint /
            total;

        for (
            uint256 rewarderId = 0;
            rewarderId < pool.rewarders.length;
            ++rewarderId
        ) {
            addresses[rewarderId + 1] = address(
                pool.rewarders[rewarderId].rewardToken()
            );

            symbols[rewarderId + 1] = IBoringERC20(
                pool.rewarders[rewarderId].rewardToken()
            ).safeSymbol();

            decimals[rewarderId + 1] = IBoringERC20(
                pool.rewarders[rewarderId].rewardToken()
            ).safeDecimals();

            rewardsPerSec[rewarderId + 1] = pool
                .rewarders[rewarderId]
                .poolRewardsPerSec(_pid);
        }
    }

    // View function to see rewarders for a pool
    function poolRewarders(
        uint256 _pid
    )
        external
        view
        validatePoolByPid(_pid)
        returns (address[] memory rewarders)
    {
        PoolInfo storage pool = poolInfo[_pid];
        rewarders = new address[](pool.rewarders.length);
        for (
            uint256 rewarderId = 0;
            rewarderId < pool.rewarders.length;
            ++rewarderId
        ) {
            rewarders[rewarderId] = address(pool.rewarders[rewarderId]);
        }
    }

    // View function to see if user can harvest Glint.
    function canHarvest(
        uint256 _pid,
        address _user
    ) public view validatePoolByPid(_pid) returns (bool) {
        UserInfo storage user = userInfo[_pid][_user];
        return
            block.timestamp >= startTimestamp &&
            block.timestamp >= user.nextHarvestUntil;
    }

    // Update reward vairables for all pools. Be careful of gas spending!
    function massUpdatePools() external nonReentrant {
        _massUpdatePools();
    }

    // Internal method for massUpdatePools
    function _massUpdatePools() internal {
        uint256 length = poolInfo.length;
        for (uint256 pid = 0; pid < length; ) {
            _updatePool(pid);
            unchecked {
                ++pid;
            }
        }
    }

    // Update reward variables of the given pool to be up-to-date.
    function updatePool(uint256 _pid) external nonReentrant {
        _updatePool(_pid);
    }

    /* VOTING */

    function increaseAllocation(
        uint256 _pid,
        uint256 _allocPointCommunity
    ) internal {
        if (block.timestamp >= lastUpdatedTimeVotes + votePoolDelay) {
            _massUpdatePools();
            lastUpdatedTimeVotes = block.timestamp;
        }

        totalAllocPointCommunity =
            totalAllocPointCommunity +
            _allocPointCommunity;
        poolInfo[_pid].allocPointCommunity =
            poolInfo[_pid].allocPointCommunity +
            _allocPointCommunity;
    }

    function decreaseAllocation(
        uint256 _pid,
        uint256 _allocPointCommunity
    ) internal {
        if (block.timestamp >= lastUpdatedTimeVotes + votePoolDelay) {
            _massUpdatePools();
            lastUpdatedTimeVotes = block.timestamp;
        }

        totalAllocPointCommunity =
            totalAllocPointCommunity -
            _allocPointCommunity;
        poolInfo[_pid].allocPointCommunity =
            poolInfo[_pid].allocPointCommunity -
            _allocPointCommunity;
    }

    function vote(address _user, uint256 _amount, uint256 _pid) internal {
        UserVoteInfo storage voteInfo = userVoteInfo[_user];

        if (_amount > voteInfo.votedAmount) {
            uint256 increaseAmount = _amount - voteInfo.votedAmount;
            voteInfo.votedAmount = _amount;
            increaseAllocation(_pid, increaseAmount);
        } else if (_amount < voteInfo.votedAmount) {
            uint256 decreaseAmount = voteInfo.votedAmount - _amount;
            voteInfo.votedAmount = _amount;
            decreaseAllocation(_pid, decreaseAmount);
        }
    }

    function redeemVote(address _user, uint256 _pid) internal {
        UserVoteInfo storage voteInfo = userVoteInfo[_user];
        decreaseAllocation(_pid, voteInfo.votedAmount);
        voteInfo.votedAmount = 0;
    }

    function _updatePool(uint256 _pid) internal validatePoolByPid(_pid) {
        // Internal method for _updatePool

        PoolInfo storage pool = poolInfo[_pid];

        if (block.timestamp <= pool.lastRewardTimestamp) {
            return;
        }

        uint256 lpSupply = pool.totalLp;

        if (lpSupply == 0 || pool.allocPoint == 0) {
            pool.lastRewardTimestamp = block.timestamp;
            return;
        }
        uint256 multiplier = block.timestamp - pool.lastRewardTimestamp;

        uint256 glintReward = ((multiplier * beamPerSec) * pool.allocPoint) /
            totalAllocPoint;

        uint256 glintRewardCommunity = pool.allocPointCommunity != 0
            ? ((multiplier * beamPerSecCommunity) * pool.allocPointCommunity) /
                totalAllocPointCommunity
            : 0;

        glintReward = glintReward + glintRewardCommunity;

        uint256 total = 1000;
        uint256 lpPercent = total - devPercent;

        if (devPercent > 0) {
            beam.mint(devAddress, (glintReward * devPercent) / total);
        }

        beam.mint(address(this), (glintReward * lpPercent) / total);

        pool.accGlintPerShare +=
            ((glintReward - glintRewardCommunity) *
                ACC_TOKEN_PRECISION *
                lpPercent) /
            pool.totalLp /
            total;

        pool.accGlintPerShareCommunity +=
            (glintRewardCommunity * ACC_TOKEN_PRECISION * lpPercent) /
            pool.totalLp /
            total;

        pool.lastRewardTimestamp = block.timestamp;

        emit UpdatePool(
            _pid,
            pool.lastRewardTimestamp,
            lpSupply,
            pool.accGlintPerShare
        );
    }

    function depositWithPermit(
        uint256 pid,
        uint256 amount,
        uint256 deadline,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) public nonReentrant validatePoolByPid(pid) {
        PoolInfo storage pool = poolInfo[pid];
        IBeamSwapPair pair = IBeamSwapPair(address(pool.lpToken));
        pair.permit(msg.sender, address(this), amount, deadline, v, r, s);
        _deposit(pid, amount);
    }

    // Deposit tokens for Glint allocation.
    function deposit(uint256 _pid, uint256 _amount) public nonReentrant {
        _deposit(_pid, _amount);
    }

    // Deposit tokens for Glint allocation.
    function _deposit(
        uint256 _pid,
        uint256 _amount
    ) internal validatePoolByPid(_pid) {
        PoolInfo storage pool = poolInfo[_pid];
        UserInfo storage user = userInfo[_pid][msg.sender];

        _updatePool(_pid);

        payOrLockupPendingGlint(_pid);

        if (_amount > 0) {
            uint256 beforeDeposit = pool.lpToken.balanceOf(address(this));
            pool.lpToken.safeTransferFrom(msg.sender, address(this), _amount);
            uint256 afterDeposit = pool.lpToken.balanceOf(address(this));

            _amount = afterDeposit - beforeDeposit;

            if (pool.depositFeeBP > 0) {
                uint256 depositFee = (_amount * pool.depositFeeBP) / 10000;
                pool.lpToken.safeTransfer(feeAddress, depositFee);

                _amount = _amount - depositFee;
            }

            user.amount += _amount;

            if (address(pool.lpToken) == address(beam)) {
                totalGlintInPools += _amount;
            }
        }
        user.rewardDebt =
            (user.amount * pool.accGlintPerShare) /
            ACC_TOKEN_PRECISION;

        user.rewardDebtCommunity =
            (user.amount * pool.accGlintPerShareCommunity) /
            ACC_TOKEN_PRECISION;

        if (_amount > 0) {
            pool.totalLp += _amount;
        }

        for (
            uint256 rewarderId = 0;
            rewarderId < pool.rewarders.length;
            ++rewarderId
        ) {
            pool.rewarders[rewarderId].onBeamReward(
                _pid,
                msg.sender,
                user.amount
            );
        }

        emit Deposit(msg.sender, _pid, _amount);
    }

    //withdraw tokens
    function withdraw(
        uint256 _pid,
        uint256 _amount
    ) public nonReentrant validatePoolByPid(_pid) {
        PoolInfo storage pool = poolInfo[_pid];
        UserInfo storage user = userInfo[_pid][msg.sender];

        //this will make sure that user can only withdraw from his pool
        require(user.amount >= _amount, "withdraw: user amount not enough");

        //cannot withdraw more than pool's balance
        require(pool.totalLp >= _amount, "withdraw: pool total not enough");
        _updatePool(_pid);

        payOrLockupPendingGlint(_pid);

        if (_amount > 0) {
            user.amount -= _amount;
            if (address(pool.lpToken) == address(beam)) {
                totalGlintInPools -= _amount;
            }
            pool.lpToken.safeTransfer(msg.sender, _amount);
        }

        user.rewardDebt =
            (user.amount * pool.accGlintPerShare) /
            ACC_TOKEN_PRECISION;
        user.rewardDebtCommunity =
            (user.amount * pool.accGlintPerShareCommunity) /
            ACC_TOKEN_PRECISION;

        if (_amount > 0) {
            pool.totalLp -= _amount;
        }

        for (
            uint256 rewarderId = 0;
            rewarderId < pool.rewarders.length;
            ++rewarderId
        ) {
            pool.rewarders[rewarderId].onBeamReward(
                _pid,
                msg.sender,
                user.amount
            );
        }

        emit Withdraw(msg.sender, _pid, _amount);
    }

    // Withdraw without caring about rewards. EMERGENCY ONLY.
    function emergencyWithdraw(uint256 _pid) public nonReentrant {
        PoolInfo storage pool = poolInfo[_pid];
        UserInfo storage user = userInfo[_pid][msg.sender];
        uint256 amount = user.amount;

        //Cannot withdraw more than pool's balance
        require(
            pool.totalLp >= amount,
            "emergency withdraw: pool total not enough"
        );
        totalLockedUpRewards -= user.rewardLockedUp;
        user.amount = 0;
        user.rewardDebt = 0;
        user.rewardDebtCommunity = 0;
        user.rewardLockedUp = 0;
        user.nextHarvestUntil = 0;
        pool.totalLp -= amount;

        for (
            uint256 rewarderId = 0;
            rewarderId < pool.rewarders.length;
            ++rewarderId
        ) {
            pool.rewarders[rewarderId].onBeamReward(_pid, msg.sender, 0);
        }

        if (address(pool.lpToken) == address(beam)) {
            totalGlintInPools -= amount;
        }

        pool.lpToken.safeTransfer(msg.sender, amount);

        emit EmergencyWithdraw(msg.sender, _pid, amount);
    }

    // Pay or lockup pending Glint.
    function payOrLockupPendingGlint(uint256 _pid) internal {
        PoolInfo storage pool = poolInfo[_pid];
        UserInfo storage user = userInfo[_pid][msg.sender];

        if (user.nextHarvestUntil == 0 && block.timestamp >= startTimestamp) {
            user.nextHarvestUntil = block.timestamp + pool.harvestInterval;
        }

        if (user.nextHarvestUntil != 0 && pool.harvestInterval == 0) {
            user.nextHarvestUntil = 0;
        }

        uint256 pending = ((user.amount * pool.accGlintPerShare) /
            ACC_TOKEN_PRECISION) - user.rewardDebt;

        uint256 pendingCommunity = ((user.amount *
            pool.accGlintPerShareCommunity) / ACC_TOKEN_PRECISION) -
            user.rewardDebtCommunity;

        if (canHarvest(_pid, msg.sender)) {
            if (pool.isVoteable) {
                _updateVotePool(msg.sender, _pid);
            }

            if (
                pending > 0 || user.rewardLockedUp > 0 || pendingCommunity > 0
            ) {
                uint256 pendingRewards = pending +
                    user.rewardLockedUp +
                    pendingCommunity;
                totalLockedUpRewards -= user.rewardLockedUp;
                user.rewardLockedUp = 0;
                user.nextHarvestUntil = block.timestamp + pool.harvestInterval;
                uint256 stGlintAmount = (pendingRewards * pool.stGlintRate) /
                    100;
                uint256 glintAmount = pendingRewards - stGlintAmount;
                if (stGlintAmount > 0) {
                    stGlint.convertTo(msg.sender, stGlintAmount);
                    emit XRewardPaid(msg.sender, _pid, stGlintAmount);
                }
                if (glintAmount > 0) {
                    safeGlintTransfer(msg.sender, glintAmount);
                    emit RewardPaid(msg.sender, _pid, glintAmount);
                }
            }
        } else if (pending > 0 || pendingCommunity > 0) {
            totalLockedUpRewards += pending + pendingCommunity;
            user.rewardLockedUp += pending + pendingCommunity;
            emit RewardLockedUp(msg.sender, _pid, pending);
        }
    }

    function safeGlintTransfer(address _to, uint256 _amount) internal {
        if (beam.balanceOf(address(this)) > totalGlintInPools) {
            uint256 glintBal = beam.balanceOf(address(this)) -
                totalGlintInPools;
            if (_amount >= glintBal) {
                beam.safeTransfer(_to, glintBal);
            } else if (_amount > 0) {
                beam.safeTransfer(_to, _amount);
            }
        }
    }

    function updateVotePool(
        address _user,
        uint256 _amount,
        uint256 _pid
    ) public onlyFarmBooster {
        UserVoteInfo storage voteInfo = userVoteInfo[_user];
        _updatePool(_pid);
        if (voteInfo.voted) {
            vote(_user, _amount, _pid);
        }
        if (_amount == 0) {
            voteInfo.voted = false;
        }
    }

    function _updateVotePool(address _user, uint256 _pid) internal {
        UserVoteInfo storage voteInfo = userVoteInfo[_user];
        if (_pid != voteInfo.votedID) return;

        uint256 votingPower = getTotalVotePower(_user);
        if (voteInfo.voted) {
            vote(_user, votingPower, _pid);
        }
        if (votingPower == 0) {
            voteInfo.voted = false;
        }
    }

    function getTotalVotePower(address _user) public view returns (uint256) {
        return IFarmBooster(farmBooster).getVotingPower(_user);
    }

    function votePool(address _user, uint256 _pid) public onlyFarmBooster {
        UserVoteInfo storage voteInfo = userVoteInfo[_user];
        require(poolInfo[_pid].isVoteable, "vote not permitted");
        require(voteInfo.voted == false);
        uint256 votingPower = getTotalVotePower(_user);
        if (votingPower == 0) return;
        _updatePool(_pid);
        vote(_user, votingPower, _pid);
        voteInfo.votedID = _pid;
        voteInfo.voted = true;
    }

    function unVotePool(address _user, uint256 _pid) public onlyFarmBooster {
        UserVoteInfo storage voteInfo = userVoteInfo[_user];
        _updatePool(_pid);
        redeemVote(_user, voteInfo.votedID);
        voteInfo.voted = false;
        voteInfo.votedID = 0;
    }

    function votePoolMarket(
        address _user,
        uint256 _pid,
        uint256 _amount
    ) public onlyFarmBooster {
        UserVoteInfo storage voteInfo = userVoteInfo[_user];
        require(poolInfo[_pid].isVoteable, "vote not permitted");
        require(voteInfo.voted == false);
        _updatePool(_pid);

        vote(_user, _amount, _pid);
        voteInfo.votedID = _pid;
        voteInfo.voted = true;
    }

    function updateAllocPoint(
        uint256 _pid,
        uint256 _allocPoint
    ) public onlyOwner {
        _massUpdatePools();

        emit AllocPointsUpdated(
            msg.sender,
            poolInfo[_pid].allocPoint,
            _allocPoint
        );

        totalAllocPoint =
            totalAllocPoint -
            poolInfo[_pid].allocPoint +
            _allocPoint;
        poolInfo[_pid].allocPoint = _allocPoint;
    }

    function updateEmissionRate(uint256 _glintPerSec) public onlyOwner {
        _massUpdatePools();

        emit EmissionRateUpdated(msg.sender, beamPerSec, _glintPerSec);

        beamPerSec = _glintPerSec;
    }

    function updateEmissionRateCommunity(
        uint256 _glintPerSec
    ) public onlyOwner {
        _massUpdatePools();

        emit EmissionRateUpdatedCommunity(msg.sender, beamPerSec, _glintPerSec);

        beamPerSecCommunity = _glintPerSec;
    }

    function poolTotalLp(uint256 pid) external view returns (uint256) {
        return poolInfo[pid].totalLp;
    }

    // Function to harvest many pools in a single transaction
    function harvestMany(uint256[] calldata _pids) public nonReentrant {
        uint256 length = _pids.length;
        require(length <= 25, "harvest many: too many pool ids");
        for (uint256 index = 0; index < length; ) {
            _deposit(_pids[index], 0);
            unchecked {
                ++index;
            }
        }
    }

    function setDevAddress(address _devAddress) public onlyOwner {
        require(_devAddress != address(0), "invalid new dev address");
        devAddress = _devAddress;
    }

    function setDevPercent(uint256 _newDevPercent) public onlyOwner {
        require(_newDevPercent <= 200, "invalid percent value");
        _massUpdatePools();
        emit SetDevPercent(devPercent, _newDevPercent);
        devPercent = _newDevPercent;
    }

    function setFeeAddress(address _feeAddress) public onlyOwner {
        require(_feeAddress != address(0), "wrong address");
        feeAddress = _feeAddress;
        emit SetFeeAddress(msg.sender, _feeAddress);
    }

    function setStGlintRates(
        uint256[] calldata _pids,
        uint256[] calldata _amount
    ) external onlyOwner {
        require(_pids.length == _amount.length);
        uint256 length = _pids.length;
        for (uint256 index = 0; index < length; ) {
            _setStGlintRate(_pids[index], _amount[index]);
            unchecked {
                ++index;
            }
        }
    }

    function _setStGlintRate(uint256 _pid, uint256 _amount) internal {
        require(_amount <= 100);
        poolInfo[_pid].stGlintRate = _amount;
    }

    function setVotePoolDelay(uint256 _delay) external onlyOwner {
        votePoolDelay = _delay;
    }

    function getGlintPerSec() public view returns (uint256) {
        return beamPerSec;
    }

    function isPoolVoteable(uint256 _pid) public view returns (bool) {
        return poolInfo[_pid].isVoteable;
    }

    function setVotablePools(
        uint256[] calldata _pids,
        bool[] calldata _isVotable
    ) external onlyOwner {
        require(_pids.length == _isVotable.length);
        uint256 length = _pids.length;
        for (uint256 index = 0; index < length; ) {
            setVotablePool(_pids[index], _isVotable[index]);
            unchecked {
                ++index;
            }
        }
    }

    function setVotablePool(uint256 _pid, bool _isVotable) public onlyOwner {
        poolInfo[_pid].isVoteable = _isVotable;
    }

    function updateVoteOperator(
        address _operator,
        bool _status
    ) external onlyOwner {
        voteOperators[_operator] = _status;
    }
}
