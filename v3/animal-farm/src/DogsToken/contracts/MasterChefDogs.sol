// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/interfaces/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "./libs/IReferralSystem.sol";
import "./libs/IStrategy.sol";
import "./libs/IRewardsVault.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";

import "./PigsToken.sol";
import "./DogsToken.sol";

import "./libs/DDSCA.sol";

contract MasterChefDogs is Ownable, ReentrancyGuard, DDSCA {
    using SafeERC20 for IERC20;

    address public PLATFORM_ADDRESS = 0xa3381829Ae9CB616fA95cD0370B12b90C13caA00;
    address public govAddress = 0x46E69166d690a46f47D74771dB46C75fA7027084;

    uint256 public totalLockedUpRewards;
    uint256 public totalBUSDCollected = 0;
    uint256 accDepositBUSDRewardPerShare = 0;

    PigsToken  public immutable pigsToken;
    DogsToken  public immutable dogsToken;

    IRewardsVault public rewardsVault;

    uint256 public constant MAXIMUM_HARVEST_INTERVAL = 14 days;

    // Info of each user.
    struct UserInfo {
        uint256 amount;             // How many LP tokens the user has provided.
        uint256 dogsRewardDebt;     // Reward debt. See explanation below.
        uint256 rewardLockedUp;     // Reward locked up.
        uint256 nextHarvestUntil;   // When can the user harvest again.
        uint256 busdRewardDebt;     // Reward debt. See explanation below.
    }

    // Info of each pool.
    struct PoolInfo {
        IERC20 lpToken;           // Address of LP token contract.
        IStrategy strategy;       // Strategy address that will earnings compound want tokens
        uint256 allocPoint;       // How many allocation points assigned to this pool. DOGS to distribute per block.
        uint256 lastRewardBlock;  // Last block number that DOGS distribution occurs.
        uint256 accDogsPerShare;  // Accumulated DOGS per share, times 1e24. See below.
        uint256 lpSupply;      // total units locked in the pool
        uint256 harvestInterval;  // Harvest interval in seconds
        uint256 depositFeeBP;      // Deposit fee in basis points
        bool isLPToken;
    }

    // Info of each pool.
    PoolInfo[] public poolInfo;
    // Info of each user that stakes LP tokens.
    mapping(uint256 => mapping(address => UserInfo)) public userInfo;

    uint256 public totalAllocPoint = 0;

    IReferralSystem dogsReferral;

    uint256 public constant referralCommissionRate = 300; // Pay out 3% to the referrer
    uint256 public constant pigsPID = 0;

    // Events
    event AddPool(uint256 indexed pid, bool isLPToken, uint256 allocPoint, address lpToken, uint256 depositFeeBP, uint256 harvestInterval);
    event SetPool(uint256 indexed pid, uint256 allocPoint, uint256 depositFeeBP, uint256 harvestInterval);
    event Deposit(address indexed user, uint256 indexed pid, uint256 amount);
    event Withdraw(address indexed user, uint256 indexed pid, uint256 amount);
    event EmergencyWithdraw(address indexed user, uint256 indexed pid, uint256 amount);
    event RewardLockedUp(address indexed user, uint256 indexed pid, uint256 amountLockedUp);
    event SetDogsReferral(address dogsAddress);
    event SetPlatformAddress(address indexed newAddress);
    event GovUpdated(address govAddress);

    constructor(
        PigsToken _pigsToken,
        DogsToken _dogsToken,
        uint256  _startBlock,
        address _rewardsVaultAddress
    ){
        pigsToken = _pigsToken;
        dogsToken = _dogsToken;

        rewardsVault = IRewardsVault(_rewardsVaultAddress);

        DDSCA.initialize(_dogsToken, 7 * 1e17, 7 * 1e17, _startBlock);
    }

    function poolLength() external view returns (uint256) {
        return poolInfo.length;
    }

    mapping(IERC20 => bool) public poolExistence;
    modifier nonDuplicated(IERC20 _lpToken) {
        require(poolExistence[_lpToken] == false, "nonDuplicated: duplicated");
        _;
    }

    // View function to see pending BUSD on frontend.
    function pendingBUSD(address _user) external view returns (uint256) {
        UserInfo storage user = userInfo[pigsPID][_user];
        return ((user.amount * accDepositBUSDRewardPerShare) / (1e24)) - user.busdRewardDebt;
    }

    // View function to see pending on frontend.
    function pendingDogs(uint256 _pid, address _user) external view returns (uint256) {
        PoolInfo storage pool = poolInfo[_pid];
        UserInfo storage user = userInfo[_pid][_user];
        uint256 accDogsPerShare = pool.accDogsPerShare;

        if (block.number > pool.lastRewardBlock && pool.lpSupply != 0 && totalAllocPoint > poolInfo[pigsPID].allocPoint) {
            uint256 multiplier = getDogsMultiplier(pool.lastRewardBlock, block.number);
            uint256 dogReward = (multiplier * DDSCA.tokenPerBlock * pool.allocPoint) / (totalAllocPoint - poolInfo[pigsPID].allocPoint);
            accDogsPerShare = accDogsPerShare + ((dogReward * 1e24) / pool.lpSupply);
        }

        uint256 pending = ((user.amount * accDogsPerShare) / 1e24) - user.dogsRewardDebt;
        return pending + user.rewardLockedUp;
    }

    function canHarvest(uint256 _pid, address _user) public view returns (bool) {
        UserInfo storage user = userInfo[_pid][_user];
        return block.timestamp >= user.nextHarvestUntil;
    }

    // Return reward multiplier over the given _from to _to block.
    function getDogsMultiplier(uint256 _from, uint256 _to) public view returns (uint256) {
        // As we set the multiplier to 0 here after DDSCA.emissionEndBlock
        // deposits aren't blocked after farming ends.
        if (_from > DDSCA.emissionEndBlock)
            return 0;
        if (_to > DDSCA.emissionEndBlock)
            return DDSCA.emissionEndBlock - _from;
        else
            return _to - _from;
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
        if (block.number <= pool.lastRewardBlock)
            return;

        uint256 lpSupply = pool.lpSupply;
        if (lpSupply == 0 || pool.allocPoint == 0) {
            pool.lastRewardBlock = block.number;
            return;
        }

        // all pools except PIGS staking pays out DOGS
        if (_pid != pigsPID && totalAllocPoint > poolInfo[pigsPID].allocPoint){
            uint256 multiplier = getDogsMultiplier(pool.lastRewardBlock, block.number);
            if (multiplier > 0) {
                uint256 dogsReward = (multiplier * DDSCA.tokenPerBlock * pool.allocPoint) / (totalAllocPoint - poolInfo[pigsPID].allocPoint);
                dogsToken.mint(address(this), dogsReward);
                pool.accDogsPerShare = pool.accDogsPerShare + ((dogsReward * 1e24) / lpSupply);
            }
        }

        if (_pid == pigsPID && poolInfo[pigsPID].lpSupply > 0){
            uint256 busdRecieved = pigsToken.convertDepositFeesToBUSD(address(busdRewardCurrency), false, false);
            accDepositBUSDRewardPerShare = accDepositBUSDRewardPerShare + ((busdRecieved * 1e24) / poolInfo[pigsPID].lpSupply);
            totalBUSDCollected = totalBUSDCollected + busdRecieved;
        }

        pool.lastRewardBlock = block.number;

    }

    // Deposit LP tokens to MasterChef for DOGS allocation.
    function deposit(uint256 _pid, uint256 _amount, address _referrer) external nonReentrant {
        PoolInfo storage pool = poolInfo[_pid];
        UserInfo storage user = userInfo[_pid][msg.sender];
        updatePool(_pid);

        if (_amount > 0 && address(dogsReferral) != address(0) && _referrer != address(0) && _referrer != msg.sender) {
            dogsReferral.recordReferral(msg.sender, _referrer);
        }

        if (address(pool.lpToken) == address(pigsToken)) {
            payPendingBUSDReward();
        } else {
            payOrLockupPendingDogs(_pid);
        }

        if (_amount > 0) {
            if (address(pool.lpToken) == address(pigsToken)) {
                user.nextHarvestUntil = block.timestamp + pool.harvestInterval;
            }

            // Accept the balance of coins we receive (useful for coins which take fees).
            uint256 previousBalance = pool.lpToken.balanceOf(address(this));
            pool.lpToken.safeTransferFrom(msg.sender, address(this), _amount);
            _amount = pool.lpToken.balanceOf(address(this)) - previousBalance;
            require(_amount > 0, "no funds were received");

            uint256 depositFee = pool.depositFeeBP > 0 ? ((_amount * pool.depositFeeBP) / 10000) : 0;
            if (pool.depositFeeBP > 0) {
                // For LPs dogs handles it 100%, destroys and distributes
                uint256 platformFees = ((depositFee * 1e24) / 4) / 1e24; //25% of deposit fee paid to platform
                uint256 rewardFees = depositFee - platformFees;
                uint256 rewardDepositFee = pool.isLPToken ? rewardFees : ((rewardFees * 1e24) / 4) / 1e24;

                pool.lpToken.safeTransfer(address(PLATFORM_ADDRESS), platformFees);
                pool.lpToken.safeTransfer(address(dogsToken), rewardDepositFee);

                dogsToken.swapDepositFeeForBUSD(address(pool.lpToken), pool.isLPToken);

                uint256 busdRecieved = 0;

                if (pool.isLPToken) {
                    busdRecieved  = pigsToken.convertDepositFeesToBUSD(address(pool.lpToken), pool.isLPToken, true);
                }
                else { // Lp tokens get liquidated in DogsToken not PigsToken.
                    pool.lpToken.safeTransfer(address(pigsToken), rewardFees - rewardDepositFee);
                    busdRecieved = pigsToken.convertDepositFeesToBUSD(address(pool.lpToken), pool.isLPToken, true);
                }

                // Pigs pool is always pool 0.
                if (poolInfo[pigsPID].lpSupply > 0) {
                    accDepositBUSDRewardPerShare = accDepositBUSDRewardPerShare + ((busdRecieved * 1e24) / poolInfo[pigsPID].lpSupply);
                    totalBUSDCollected = totalBUSDCollected + busdRecieved;
                }
            }

            //take remains, send to strategy
            pool.lpToken.safeIncreaseAllowance(address(pool.strategy), _amount - depositFee);
            uint256 amountDeposit = pool.strategy.deposit(_amount - depositFee);

            user.amount = user.amount + amountDeposit;
            pool.lpSupply = pool.lpSupply + amountDeposit;

        }

        if (address(pool.lpToken) == address(pigsToken)){
            user.busdRewardDebt = ((user.amount * accDepositBUSDRewardPerShare) / 1e24);
        } else {
            user.dogsRewardDebt = ((user.amount * pool.accDogsPerShare) / 1e24);
        }

        rewardsVault.payoutDivs();

        emit Deposit(msg.sender, _pid, _amount);
    }

    // Withdraw LP tokens from MasterChef.
    function withdraw(uint256 _pid, uint256 _amount) external nonReentrant {
        PoolInfo storage pool = poolInfo[_pid];
        UserInfo storage user = userInfo[_pid][msg.sender];
        require(user.amount >= _amount, "withdraw: not good");

        updatePool(_pid);

        if (address(pool.lpToken) == address(pigsToken)){
            payPendingBUSDReward();
        } else {
            payOrLockupPendingDogs(_pid);
        }

        if (_amount > 0) {

            if (address(pool.lpToken) == address(pigsToken)) {
                if (!canHarvest(_pid, msg.sender)){
                    return;
                }
            }

            uint256 lpAmountBefore = pool.lpToken.balanceOf(address(this));
            pool.strategy.withdraw(_amount);
            uint256 lpAmountAfter = pool.lpToken.balanceOf(address(this));
            uint256 amountRemoved = lpAmountAfter - lpAmountBefore;

            if (_amount > user.amount) {
                user.amount = 0;
            } else {
                user.amount = user.amount - _amount;
            }

            pool.lpToken.safeTransfer(msg.sender, amountRemoved);

            if (pool.lpSupply >= _amount)
                pool.lpSupply = pool.lpSupply - _amount;
            else
                pool.lpSupply = 0;
        }


        if (address(pool.lpToken) == address(pigsToken)){
            user.busdRewardDebt = ((user.amount * accDepositBUSDRewardPerShare) / 1e24);
        } else {
            user.dogsRewardDebt = ((user.amount * pool.accDogsPerShare) / 1e24);
        }

        rewardsVault.payoutDivs();

        emit Withdraw(msg.sender, _pid, _amount);
    }

    // Withdraw without caring about rewards. EMERGENCY ONLY.
    function emergencyWithdraw(uint256 _pid) external nonReentrant {
        PoolInfo storage pool = poolInfo[_pid];
        UserInfo storage user = userInfo[_pid][msg.sender];

        uint256 amount = user.amount;
        user.amount = 0;
        user.dogsRewardDebt = 0;
        user.busdRewardDebt = 0;

        uint256 lpAmountBefore = pool.lpToken.balanceOf(address(this));
        pool.strategy.withdraw(amount);
        uint256 lpAmountAfter = pool.lpToken.balanceOf(address(this));
        uint256 amountRemoved = lpAmountAfter - lpAmountBefore;

        pool.lpToken.safeTransfer(msg.sender, amountRemoved);

        // In the case of an accounting error, we choose to let the user emergency withdraw anyway
        if (pool.lpSupply >=  amount)
            pool.lpSupply = pool.lpSupply - amount;
        else
            pool.lpSupply = 0;

        emit EmergencyWithdraw(msg.sender, _pid, amount);
    }

    // Pay pending Dogs
    function payOrLockupPendingDogs(uint256 _pid) internal {
        PoolInfo storage pool = poolInfo[_pid];
        UserInfo storage user = userInfo[_pid][msg.sender];

        if (user.nextHarvestUntil == 0) {
            user.nextHarvestUntil = block.timestamp + pool.harvestInterval;
        }

        uint256 dogsPending = ((user.amount * pool.accDogsPerShare) / 1e24) - user.dogsRewardDebt;

        if (canHarvest(_pid, msg.sender)) {
            if (dogsPending > 0 || user.rewardLockedUp > 0) {
                uint256 totalRewards = dogsPending + user.rewardLockedUp;

                // reset lockup
                totalLockedUpRewards = totalLockedUpRewards - user.rewardLockedUp;
                user.rewardLockedUp = 0;
                user.nextHarvestUntil = block.timestamp + pool.harvestInterval;

                // dogsPending can't be zero
                safeTokenTransfer(address(dogsToken), msg.sender, totalRewards);
                payReferralCommission(msg.sender, totalRewards);
            }
        } else if (dogsPending > 0) {
            user.rewardLockedUp = user.rewardLockedUp + dogsPending;
            totalLockedUpRewards = totalLockedUpRewards + dogsPending;
            emit RewardLockedUp(msg.sender, _pid, dogsPending);
        }

    }

    // Pay pending BUSD from the PIGS staking reward scheme.
    function payPendingBUSDReward() internal {
        UserInfo storage user = userInfo[pigsPID][msg.sender];

        uint256 busdPending = ((user.amount * accDepositBUSDRewardPerShare) / 1e24) - user.busdRewardDebt;

        if (busdPending > 0) {
            // send rewards
            pigsToken.transferBUSDToUser(msg.sender, busdPending);
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

    // Pay referral commission to the referrer who referred this user.
    function payReferralCommission(address _user, uint256 _pending) internal {
        if (address(dogsReferral) != address(0)) {
            address referrer = dogsReferral.getReferrer(_user);
            uint256 commissionAmount = (_pending * referralCommissionRate) / 10000;

            if (referrer != address(0) && commissionAmount > 0) {
                dogsToken.mint(referrer, commissionAmount);
                dogsReferral.recordReferralCommission(referrer, commissionAmount);
            }
        }
    }


    // ************* Admin functions // *************
    // Add a new lp to the pool. Can only be called by the owner.
    function add(bool _isLPToken, uint256 _allocPoint, IERC20 _lpToken, IStrategy _strategy, uint256 _depositFeeBP, uint256 _harvestInterval, bool _withUpdate) public onlyOwner nonDuplicated(_lpToken) {
        _lpToken.balanceOf(address(this)); // Make sure the provided token is ERC20
        require(_strategy.wantLockedTotal() >= 0, "add: invalid strategy");
        require(_depositFeeBP <= 601, "add: bad deposit fee");
        require(_harvestInterval <= MAXIMUM_HARVEST_INTERVAL, "add: invalid harvest interval");
        require(address(_lpToken) != address(dogsToken), "add: no native token pool");

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
        accDogsPerShare: 0,
        depositFeeBP: _depositFeeBP,
        isLPToken: _isLPToken,
        lpSupply: 0,
        strategy: _strategy,
        harvestInterval: _harvestInterval
        }));

        emit AddPool(poolInfo.length - 1, _isLPToken, _allocPoint, address(_lpToken), _depositFeeBP, _harvestInterval);
    }

    // Update the given pool's DOGS allocation point and deposit fee. Can only be called by the owner.
    function set(uint256 _pid, uint256 _allocPoint, uint256 _depositFeeBP, uint256 _harvestInterval, bool _withUpdate) external onlyOwner {
        require(_allocPoint <= 1e6, "set: invalid allocPoint");
        require(_depositFeeBP <= 601, "set: bad deposit fee");
        require(_harvestInterval <= MAXIMUM_HARVEST_INTERVAL, "set: invalid harvest interval");
        if (_withUpdate) {
            massUpdatePools();
        }
        totalAllocPoint = (totalAllocPoint - poolInfo[_pid].allocPoint) + _allocPoint;
        poolInfo[_pid].allocPoint = _allocPoint;
        poolInfo[_pid].depositFeeBP = _depositFeeBP;
        poolInfo[_pid].harvestInterval = _harvestInterval;

        emit SetPool(_pid, _allocPoint, _depositFeeBP, _harvestInterval);
    }

    // Update the dogs referral contract address by the owner
    function setReferral(IReferralSystem _dogsReferral) external onlyOwner {
        require(address(_dogsReferral) != address(0), "dogsReferral cannot be the 0 address");
        require(address(dogsReferral) == address(0), "dogs referral address already set");
        dogsReferral = _dogsReferral;

        emit SetDogsReferral(address(dogsReferral));
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