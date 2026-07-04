// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/interfaces/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";

import "./PigsToken.sol";
import "./libs/DDSCA.sol";

contract MasterChefPigs is Ownable, ReentrancyGuard, DDSCA {
    using SafeERC20 for IERC20;

    address public PLATFORM_ADDRESS = 0xa3381829Ae9CB616fA95cD0370B12b90C13caA00;
    address public FOUNDER1;
    address public FOUNDER2;
    address public govAddress = 0x46E69166d690a46f47D74771dB46C75fA7027084;

    PigsToken  public immutable pigsToken;

    uint256 public ownerPigsReward = 100; // 10%

    uint256 public totalLockedUpRewards;

    uint256 public constant MAXIMUM_HARVEST_INTERVAL = 14 days;

    // Info of each user.
    struct UserInfo {
        uint256 amount;             // How many LP tokens the user has provided.
        uint256 pigsRewardDebt;     // Reward debt. See explanation below.
        uint256 rewardLockedUp;     // Reward locked up.
        uint256 nextHarvestUntil;   // When can the user harvest again.
    }

    // Info of each pool.
    struct PoolInfo {
        IERC20 lpToken;             // Address of LP token contract.
        uint256 allocPoint;         // How many allocation points assigned to this pool. Pigs to distribute per block.
        uint256 lastRewardBlock;    // Last block number that Pigs distribution occurs.
        uint256 accPigsPerShare;    // Accumulated Pigs per share, times 1e24. See below.
        uint256 lpSupply;        // total units locked in the pool
        uint256 harvestInterval;    // Harvest interval in seconds
        uint256 depositFeeBP;      // Deposit fee in basis points
    }

    // Info of each pool.
    PoolInfo[] public poolInfo;
    // Info of each user that stakes LP tokens.
    mapping(uint256 => mapping(address => UserInfo)) public userInfo;
    // Total allocation points. Must be the sum of all allocation points in all pools.
    uint256 public totalAllocPoint = 0;

    // Events
    event AddPool(uint256 indexed pid, uint256 allocPoint, address lpToken, uint256 depositFeeBP, uint256 harvestInterval);
    event SetPool(uint256 indexed pid, uint256 allocPoint, uint256 depositFeeBP, uint256 harvestInterval);
    event Deposit(address indexed user, uint256 indexed pid, uint256 amount);
    event Withdraw(address indexed user, uint256 indexed pid, uint256 amount);
    event EmergencyWithdraw(address indexed user, uint256 indexed pid, uint256 amount);
    event SetPlatformAddress(address indexed newAddress);
    event RewardLockedUp(address indexed user, uint256 indexed pid, uint256 amountLockedUp);

    event SetOwnersRewards(uint256 ownerReward);
    event SetFounders(address founder1, address founder2);
    event GovUpdated(address govAddress);

    constructor(
        PigsToken _pigsToken,
        uint256 _startBlock,
        address  _founder1,
        address  _founder2
    ){
        pigsToken = _pigsToken;
        DDSCA.initialize(_pigsToken, 3 * 1e17, 3 * 1e17, _startBlock);

        FOUNDER1 = _founder1;
        FOUNDER2 = _founder2;

    }

    function poolLength() external view returns (uint256) {
        return poolInfo.length;
    }

    mapping(IERC20 => bool) public poolExistence;
    modifier nonDuplicated(IERC20 _lpToken) {
        require(poolExistence[_lpToken] == false, "nonDuplicated: duplicated");
        _;
    }

    // Add a new lp to the pool. Can only be called by the owner.
    // XXX DO NOT add the same LP token more than once. Rewards will be messed up if you do.
    function add(uint256 _allocPoint, IERC20 _lpToken, uint256 _depositFeeBP, uint256 _harvestInterval, bool _withUpdate) external onlyOwner nonDuplicated(_lpToken) {
        // Make sure the provided token is ERC20
        _lpToken.balanceOf(address(this));
        require(_depositFeeBP <= 601, "add: bad deposit fee");
        require(_allocPoint <= 1e6, "add: invalid allocPoint");
        require(address(_lpToken) != address(pigsToken), "add: no native token pool");
        require(_harvestInterval <= MAXIMUM_HARVEST_INTERVAL, "add: invalid harvest interval");

        if (_withUpdate) {
            massUpdatePools();
        }
        uint256 lastRewardBlock = block.number > DDSCA.emissionStartBlock ? block.number : DDSCA.emissionStartBlock;
        totalAllocPoint = totalAllocPoint + _allocPoint;
        poolExistence[_lpToken] = true;

        poolInfo.push(PoolInfo({
            lpToken: _lpToken,
            allocPoint: _allocPoint,
            lastRewardBlock: lastRewardBlock,
            accPigsPerShare: 0,
            depositFeeBP: _depositFeeBP,
            lpSupply: 0,
            harvestInterval: _harvestInterval
        }));

        emit AddPool(poolInfo.length - 1, _allocPoint, address(_lpToken), _depositFeeBP, _harvestInterval);
    }

    // Update the given pool's PIGS allocation point. Can only be called by the owner.
    function set(uint256 _pid, uint256 _allocPoint, uint256 _depositFeeBP, uint256 _harvestInterval, bool _withUpdate) external onlyOwner {
        require(_allocPoint <= 1e6, "set: invalid allocPoint");
        require(_depositFeeBP <= 601, "set: bad deposit fee");
        require(_harvestInterval <= MAXIMUM_HARVEST_INTERVAL, "set: invalid harvest interval");
        if (_withUpdate) {
            massUpdatePools();
        }
        totalAllocPoint = totalAllocPoint - poolInfo[_pid].allocPoint + _allocPoint;
        poolInfo[_pid].allocPoint = _allocPoint;
        poolInfo[_pid].depositFeeBP = _depositFeeBP;
        poolInfo[_pid].harvestInterval = _harvestInterval;

        emit SetPool(_pid, _allocPoint, _depositFeeBP, _harvestInterval);
    }

    // Return reward multiplier over the given _from to _to block.
    function getPigsMultiplier(uint256 _from, uint256 _to) public view returns (uint256) {
        // As we set the multiplier to 0 here after pigsEmissionEndBlock
        // deposits aren't blocked after farming ends.
        if (_from > DDSCA.emissionEndBlock)
            return 0;
        if (_to > DDSCA.emissionEndBlock)
            return DDSCA.emissionEndBlock - _from;
        else
            return _to - _from;
    }

    // View function to see pending PIGS on frontend.
    function pendingPigs(uint256 _pid, address _user) external view returns (uint256) {
        PoolInfo storage pool = poolInfo[_pid];
        UserInfo storage user = userInfo[_pid][_user];

        uint256 accPigsPerShare = pool.accPigsPerShare;

        if (block.number > pool.lastRewardBlock && pool.lpSupply != 0 && totalAllocPoint > 0) {
            uint256 multiplier = getPigsMultiplier(pool.lastRewardBlock, block.number);
            uint256 pigsReward = (multiplier * DDSCA.tokenPerBlock * pool.allocPoint) / totalAllocPoint;
            accPigsPerShare = accPigsPerShare + ((pigsReward * 1e24) / pool.lpSupply);
        }

        uint256 pending = ((user.amount * accPigsPerShare) / 1e24) - user.pigsRewardDebt;
        return pending + user.rewardLockedUp;

    }

    function canHarvest(uint256 _pid, address _user) public view returns (bool) {
        UserInfo storage user = userInfo[_pid][_user];
        return block.timestamp >= user.nextHarvestUntil;
    }

    // Update reward variables for all pools. Be careful of gas spending!
    function massUpdatePools() public {
        uint256 length = poolInfo.length;
        for (uint256 pid = 0; pid < length; ++pid) {
            updatePool(pid);
        }
    }

    // Update reward variables of the given pool to be up-to-date.
    function updatePool(uint256 _pid) public {
        PoolInfo storage pool = poolInfo[_pid];
        if (block.number <= pool.lastRewardBlock){
            return;
        }

        uint256 lpSupply = pool.lpSupply;
        if (lpSupply == 0 || pool.allocPoint == 0) {
            pool.lastRewardBlock = block.number;
            return;
        }

        uint256 multiplier = getPigsMultiplier(pool.lastRewardBlock, block.number);
        if (multiplier > 0) {
            uint256 pigsReward = (multiplier * DDSCA.tokenPerBlock * pool.allocPoint) / totalAllocPoint;
            uint256 pigsRewardOwner = pigsReward * ownerPigsReward / 1000;

            if (pigsRewardOwner > 0){
                pigsToken.mint(FOUNDER1, pigsRewardOwner/2);
                pigsToken.mint(FOUNDER2, pigsRewardOwner/2);
            }

            pigsToken.mint(address(this), pigsReward);

            pool.accPigsPerShare = pool.accPigsPerShare + ((pigsReward * 1e24) / lpSupply);
        }

        pool.lastRewardBlock = block.number;
    }

    // Deposit LP tokens to MasterChef for Dogs allocation.
    function deposit(uint256 _pid, uint256 _amount) external nonReentrant {
        PoolInfo storage pool = poolInfo[_pid];
        UserInfo storage user = userInfo[_pid][msg.sender];
        updatePool(_pid);

        payOrLockupPendingPigs(_pid);

        if (_amount > 0) {
            // Accept the balance of coins we receive (useful for coins which take fees).
            uint256 previousBalance = pool.lpToken.balanceOf(address(this));

            pool.lpToken.safeTransferFrom(msg.sender, address(this), _amount);
            _amount = pool.lpToken.balanceOf(address(this)) - previousBalance;
            require(_amount > 0, "no funds were received");

            uint256 amountRealized = _amount;
            if (pool.depositFeeBP > 0) {
                uint256 depositFee = (_amount * pool.depositFeeBP) / 10000;
                pool.lpToken.safeTransfer(PLATFORM_ADDRESS, depositFee);
                amountRealized = _amount - depositFee;
            }

            user.amount = user.amount + amountRealized;
            pool.lpSupply = pool.lpSupply + amountRealized;

        }

        user.pigsRewardDebt = ((user.amount * pool.accPigsPerShare) / 1e24);

        emit Deposit(msg.sender, _pid, _amount);
    }

    // Withdraw LP tokens from MasterChef.
    function withdraw(uint256 _pid, uint256 _amount) external nonReentrant {
        PoolInfo storage pool = poolInfo[_pid];
        UserInfo storage user = userInfo[_pid][msg.sender];
        require(user.amount >= _amount, "withdraw: not good");
        updatePool(_pid);
        payOrLockupPendingPigs(_pid);

        if (_amount > 0) {
            user.amount = user.amount - _amount;
            pool.lpSupply = pool.lpSupply - _amount;
            pool.lpToken.safeTransfer(msg.sender, _amount);
        }

        user.pigsRewardDebt = ((user.amount * pool.accPigsPerShare) / 1e24);

        emit Withdraw(msg.sender, _pid, _amount);
    }

    // Withdraw without caring about rewards. EMERGENCY ONLY.
    function emergencyWithdraw(uint256 _pid) external nonReentrant {
        PoolInfo storage pool = poolInfo[_pid];
        UserInfo storage user = userInfo[_pid][msg.sender];
        uint256 amount = user.amount;
        user.amount = 0;
        user.pigsRewardDebt = 0;
        user.rewardLockedUp = 0;
        user.nextHarvestUntil = 0;
        pool.lpToken.safeTransfer(msg.sender, amount);

        // In the case of an accounting error, we choose to let the user emergency withdraw anyway
        if (pool.lpSupply >=  amount)
            pool.lpSupply = pool.lpSupply - amount;
        else
            pool.lpSupply = 0;

        emit EmergencyWithdraw(msg.sender, _pid, amount);
    }

    // Pay pending PIGS
    function payOrLockupPendingPigs(uint256 _pid) internal {
        PoolInfo storage pool = poolInfo[_pid];
        UserInfo storage user = userInfo[_pid][msg.sender];

        if (user.nextHarvestUntil == 0) {
            user.nextHarvestUntil = block.timestamp + pool.harvestInterval;
        }

        uint256 pigsPending = ((user.amount * pool.accPigsPerShare) / 1e24) - user.pigsRewardDebt;

        if (canHarvest(_pid, msg.sender)) {
            if (pigsPending > 0 || user.rewardLockedUp > 0) {
                uint256 totalRewards = pigsPending + user.rewardLockedUp;

                // reset lockup
                totalLockedUpRewards = totalLockedUpRewards - user.rewardLockedUp;
                user.rewardLockedUp = 0;
                user.nextHarvestUntil = block.timestamp + pool.harvestInterval;

                safeTokenTransfer(address(pigsToken), msg.sender, totalRewards);
            }
        } else if (pigsPending > 0) {
            user.rewardLockedUp = user.rewardLockedUp + pigsPending;
            totalLockedUpRewards = totalLockedUpRewards + pigsPending;
            emit RewardLockedUp(msg.sender, _pid, pigsPending);
        }

    }

    // Safe token transfer function, just in case if rounding error causes pool to not have enough DOGS.
    function safeTokenTransfer(address token, address _to, uint256 _amount) internal {
        uint256 tokenBal = IERC20(token).balanceOf(address(this));
        if (_amount > tokenBal) {
            IERC20(token).safeTransfer(_to, tokenBal);
        } else {
            IERC20(token).safeTransfer(_to, _amount);
        }
    }

    function setFoundersAddresses(address _founder1, address _founder2) external onlyOwner {
        require(_founder1 != address(0), "!nonzero");
        require(_founder2 != address(0), "!nonzero");

        FOUNDER1 = _founder1;
        FOUNDER2 = _founder2;

        emit SetFounders(_founder1, _founder2);
    }

    function setFoundersRewards(uint256 _newRewardsAmount) external onlyOwner {
        require(_newRewardsAmount <= 100, "too high reward");
        ownerPigsReward = _newRewardsAmount;
        emit SetOwnersRewards(_newRewardsAmount);
    }

    function setFarmStartBlock(uint256 _newStartBlock) external onlyOwner {
        DDSCA._setFarmStartBlock(_newStartBlock);
        uint256 length = poolInfo.length;
        for (uint256 pid = 0; pid < length; ++pid) {
            PoolInfo storage pool = poolInfo[pid];
            pool.lastRewardBlock = _newStartBlock;
        }
    }

    function setPlatformAddress(address _platformAddress) external onlyOwner {
        require(_platformAddress != address(0), "!nonzero");
        PLATFORM_ADDRESS = _platformAddress;
        emit SetPlatformAddress(_platformAddress);
    }

    function updateEmissions(uint256 priceInCents) external {
        require(msg.sender == govAddress, "!gov");
        (bool needsUpdate, DDSCA.EmissionRate rate) = DDSCA.checkIfUpdateIsNeeded(priceInCents);
        if (needsUpdate){
            // Update pools before changing the emission rate
            massUpdatePools();
            DDSCA.updateEmissions(rate);
        }
    }

    function setGov(address _govAddress) external onlyOwner {
        require(_govAddress != address(0), 'zero address');
        govAddress = _govAddress;
        emit GovUpdated(govAddress);
    }

}