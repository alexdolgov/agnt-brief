// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/interfaces/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";

import "./DogsTokenV2.sol";
import "./interfaces/IDDSCA.sol";
import "./interfaces/IFeeManager.sol";
import "./interfaces/IReferralSystem.sol";
import "./interfaces/IStrategy.sol";


contract MasterChefDogsV2 is Ownable, ReentrancyGuard {
    using SafeERC20 for IERC20;

    address public PLATFORM_ADDRESS;
    address public govAddress;
    bool public migrationEnabled = false;
    bool public platformnotLocked = true;
    bool public mintBurned = false;
    uint256 public totalLockedUpRewards;

    DogsTokenV2 public immutable dogsToken;
    IFeeManager public feeManager;
    IReferralSystem dogsReferral;
    IDDSCA DDSCA;

    uint256 public constant MAXIMUM_HARVEST_INTERVAL = 14 days;

    // Info of each user.
    struct UserInfo {
        uint256 amount;             // How many LP tokens the user has provided.
        uint256 dogsRewardDebt;     // Reward debt. See explanation below.
        uint256 rewardLockedUp;     // Reward locked up.
        uint256 nextHarvestUntil;   // When can the user harvest again.
    }

    // Info of each pool.
    struct PoolInfo {
        IERC20 lpToken;           // Address of LP token contract.
        IStrategy strategy;       // Strategy address that will earnings compound want tokens
        uint256 allocPoint;       // How many allocation points assigned to this pool. DOGS to distribute per block.
        uint256 lastRewardBlock;  // Last block number that DOGS distribution occurs.
        uint256 accDogsPerShare;  // Accumulated DOGS per share, times 1e24. See below.
        uint256 lpSupply;         // Total units locked in the pool
        uint256 harvestInterval;  // Harvest interval in seconds
        uint256 depositFeeBP;     // Deposit fee in basis points
        uint256 withdrawFeeBP;    // Withdraw fee in basis points
        bool isLPToken;
    }

    struct migrationInfo {
        address lpToken;
        uint256 amountStaked;
    }

    // Info of each user.
    struct UserMigrationInfo {
        uint256 amountStaked;
    }

    // Info of each pool.
    PoolInfo[] public poolInfo;
    // Info of each user that stakes LP tokens.
    mapping(uint256 => mapping(address => UserMigrationInfo)) public userMigrationInfo;


    // Info of each user that stakes LP tokens.
    mapping(uint256 => mapping(address => UserInfo)) public userInfo;

    uint256 public totalAllocPoint = 0;
    uint256 public constant referralCommissionRate = 300; // Pay out 3% to the referrer

    // Events
    event AddPool(uint256 indexed pid, bool isLPToken, uint256 allocPoint, address lpToken, uint256 depositFeeBP, uint256 _withdrawFeeBP, uint256 harvestInterval);
    event SetPool(uint256 indexed pid, uint256 allocPoint, uint256 depositFeeBP, uint256 _withdrawFeeBP, uint256 harvestInterval);
    event Deposit(address indexed user, uint256 indexed pid, uint256 amount);
    event Withdraw(address indexed user, uint256 indexed pid, uint256 amount);
    event EmergencyWithdraw(address indexed user, uint256 indexed pid, uint256 amount);
    event RewardLockedUp(address indexed user, uint256 indexed pid, uint256 amountLockedUp);
    event SetDogsReferral(address dogsAddress);
    event SetPlatformAddress(address indexed newAddress);
    event GovUpdated(address govAddress);

    constructor(
        DogsTokenV2 _dogsToken,
        address _platform,
        IDDSCA _ddsca
    ){
        DDSCA = _ddsca;
        PLATFORM_ADDRESS = _platform;
        dogsToken = _dogsToken;
        
    }

    function poolLength() external view returns (uint256) {
        return poolInfo.length;
    }

    mapping(IERC20 => bool) public poolExistence;
    modifier nonDuplicated(IERC20 _lpToken) {
        require(poolExistence[_lpToken] == false, "nonDuplicated: duplicated");
        _;
    }


    // View function to see pending on frontend.
    function pendingDogs(uint256 _pid, address _user) external view returns (uint256) {
        PoolInfo storage pool = poolInfo[_pid];
        UserInfo storage user = userInfo[_pid][_user];
        uint256 accDogsPerShare = pool.accDogsPerShare;

        if (block.number > pool.lastRewardBlock && pool.lpSupply != 0 && totalAllocPoint > 0) {
            uint256 multiplier = getDogsMultiplier(pool.lastRewardBlock, block.number);
            uint256 dogReward = (multiplier * DDSCA.tokenPerBlock() * pool.allocPoint) / totalAllocPoint;
            accDogsPerShare = accDogsPerShare + ((dogReward * 1e24) / pool.lpSupply);
        }

        uint256 pending = ((user.amount * accDogsPerShare) / 1e24) - user.dogsRewardDebt;
        return pending + user.rewardLockedUp;
    }

    function canHarvest(uint256 _pid, address _user) public view returns (bool) {
        UserInfo storage user = userInfo[_pid][_user];
        return block.timestamp >= user.nextHarvestUntil;
    }

    function addPoolUserData(uint256 _poolIndex, address[] memory _users, uint256[] memory _usersStakeData) external onlyOwner {
        require(_users.length == _usersStakeData.length);
        for (uint256 i = 0; i < _users.length; i++) {
            userMigrationInfo[_poolIndex][_users[i]].amountStaked = _usersStakeData[i];
        }
    }

    // Return reward multiplier over the given _from to _to block.
    function getDogsMultiplier(uint256 _from, uint256 _to) public view returns (uint256) {
        // As we set the multiplier to 0 here after DDSCA.emissionEndBlock
        // deposits aren't blocked after farming ends.
        if (_from > DDSCA.emissionEndBlock())
            return 0;
        if (_to > DDSCA.emissionEndBlock())
            return DDSCA.emissionEndBlock() - _from;
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

        if (totalAllocPoint > 0){ 
            uint256 multiplier = getDogsMultiplier(pool.lastRewardBlock, block.number);
            if (multiplier > 0) {
                uint256 dogsReward = (multiplier * DDSCA.tokenPerBlock() * pool.allocPoint) / totalAllocPoint;
                dogsToken.mint(address(this), dogsReward);
                pool.accDogsPerShare = pool.accDogsPerShare + ((dogsReward * 1e24) / lpSupply);
            }
        }

        pool.lastRewardBlock = block.number;

    }

    function deposit(uint256 _pid, uint256 _amount, address _referrer) external nonReentrant {
        _deposit(_pid, msg.sender, _amount, _referrer, false);
    }

    function depositMigrator(uint256 _pid, uint256 _amount, address _referrer) external nonReentrant {
        require(migrationEnabled, 'migration not enabled');
        require(_amount > 0, 'zero amount');
        require(userMigrationInfo[_pid][msg.sender].amountStaked >= _amount);
        _deposit(_pid, msg.sender, _amount, _referrer, true);
        userMigrationInfo[_pid][msg.sender].amountStaked -= _amount;
    }

    function canMigrate(address _address) external view returns(bool){
        uint256 migrationSum = 0;
        for(uint256 i = 0 ; i < poolInfo.length; i++){
            migrationSum += userMigrationInfo[i][_address].amountStaked ;
        }
        if(migrationSum > 0){
            return true;
        }
        return false;
    }

    function canMigratePools(address _address) external view returns(migrationInfo[] memory){
        migrationInfo[] memory returnval = new migrationInfo[](poolInfo.length);
        for(uint256 i = 0 ; i < poolInfo.length; i++){
            returnval[i] = migrationInfo({lpToken: address(poolInfo[i].lpToken), amountStaked: userMigrationInfo[i][_address].amountStaked});
        }
        return returnval;
    }

    // Deposit LP tokens to MasterChef for DOGS allocation.
    function _deposit(uint256 _pid, address _userAddress, uint256 _amount, address _referrer, bool _isMigrator) internal {


        PoolInfo storage pool = poolInfo[_pid];
        UserInfo storage user = userInfo[_pid][_userAddress];
        updatePool(_pid);

        if (_amount > 0 && address(dogsReferral) != address(0) && _referrer != address(0) && _referrer != _userAddress) {
            dogsReferral.recordReferral(_userAddress, _referrer);
        }

        payOrLockupPendingDogs(_pid, _userAddress);

        if (_amount > 0) {

            uint256 userBalance = pool.lpToken.balanceOf(_userAddress);
            // Accept the balance of coins we receive (useful for coins which take fees).
            uint256 previousBalance = pool.lpToken.balanceOf(address(this));
            pool.lpToken.safeTransferFrom(_userAddress, address(this), _amount);
            _amount = pool.lpToken.balanceOf(address(this)) - previousBalance;
            require(_amount > 0, "no funds were received");

            uint256 depositFee = pool.depositFeeBP > 0 ? ((_amount * pool.depositFeeBP) / 10000) : 0;
            if (_isMigrator){
                depositFee = 0;
            }

            if (depositFee > 0) {

                uint256 platformFees = ((depositFee * 1e24) / 4) / 1e24; // 25% of deposit fee paid to platform
                uint256 rewardFees = depositFee - platformFees;          // 75% converted to busd for rewards

                pool.lpToken.safeTransfer(address(PLATFORM_ADDRESS), platformFees);
                pool.lpToken.safeTransfer(address(feeManager), rewardFees);

                feeManager.swapDepositFeeForBUSD(address(pool.lpToken), pool.isLPToken);

            }

            //take remains, send to strategy
            pool.lpToken.safeIncreaseAllowance(address(pool.strategy), _amount - depositFee);
            uint256 amountDeposit = pool.strategy.deposit(_amount - depositFee);

            user.amount = user.amount + amountDeposit;
            pool.lpSupply = pool.lpSupply + amountDeposit;

        }

        user.dogsRewardDebt = ((user.amount * pool.accDogsPerShare) / 1e24);

        emit Deposit(_userAddress, _pid, _amount);
    }

    // Withdraw LP tokens from MasterChef.
    function withdraw(uint256 _pid, uint256 _amount) external nonReentrant {
        _withdraw(_pid, msg.sender, _amount);
    }

    function _withdraw(uint256 _pid, address _userAddress, uint256 _amount) internal {

        PoolInfo storage pool = poolInfo[_pid];
        UserInfo storage user = userInfo[_pid][_userAddress];
        require(user.amount >= _amount, "withdraw: not good");

        updatePool(_pid);

        payOrLockupPendingDogs(_pid, _userAddress);

        if (_amount > 0) {

            uint256 lpAmountBefore = pool.lpToken.balanceOf(address(this));
            pool.strategy.withdraw(_amount);
            uint256 lpAmountAfter = pool.lpToken.balanceOf(address(this));
            uint256 amountRemoved = lpAmountAfter - lpAmountBefore;

            // @bb new section
            uint256 withdrawFee = pool.withdrawFeeBP > 0 ? ((amountRemoved * pool.withdrawFeeBP) / 10000) : 0;
            if (withdrawFee > 0) {
                uint256 platformFees = ((withdrawFee * 1e24) / 4) / 1e24; // 25% of deposit fee paid to platform
                uint256 rewardFees = withdrawFee - platformFees;          // 75% converted to busd for rewards

                pool.lpToken.safeTransfer(address(PLATFORM_ADDRESS), platformFees);
                pool.lpToken.safeTransfer(address(feeManager), rewardFees);

                feeManager.swapDepositFeeForBUSD(address(pool.lpToken), pool.isLPToken);
            }

            uint256 amountRemaining = amountRemoved - withdrawFee;

            if (_amount > user.amount) {
                user.amount = 0;
            } else {
                user.amount = user.amount - _amount;
            }

            pool.lpToken.safeTransfer(_userAddress, amountRemaining);

            if (pool.lpSupply >= _amount)
                pool.lpSupply = pool.lpSupply - _amount;
            else
                pool.lpSupply = 0;
        }

        user.dogsRewardDebt = ((user.amount * pool.accDogsPerShare) / 1e24);

        emit Withdraw(_userAddress, _pid, _amount);
    }

    // Withdraw without caring about rewards. EMERGENCY ONLY.
    function emergencyWithdraw(uint256 _pid) external nonReentrant {
        PoolInfo storage pool = poolInfo[_pid];
        UserInfo storage user = userInfo[_pid][msg.sender];

        uint256 amount = user.amount;
        user.amount = 0;
        user.dogsRewardDebt = 0;

        uint256 lpAmountBefore = pool.lpToken.balanceOf(address(this));
        pool.strategy.withdraw(amount);
        uint256 lpAmountAfter = pool.lpToken.balanceOf(address(this));
        uint256 amountRemoved = lpAmountAfter - lpAmountBefore;

        // @bb new section
        uint256 withdrawFee = pool.withdrawFeeBP > 0 ? ((amountRemoved * pool.withdrawFeeBP) / 10000) : 0;
        if (withdrawFee > 0) {
            uint256 platformFees = ((withdrawFee * 1e24) / 4) / 1e24; // 25% of deposit fee paid to platform
            uint256 rewardFees = withdrawFee - platformFees;          // 75% converted to busd for rewards

            pool.lpToken.safeTransfer(address(PLATFORM_ADDRESS), platformFees);
            pool.lpToken.safeTransfer(address(feeManager), rewardFees);

//            feeManager.swapDepositFeeForBUSD(address(pool.lpToken), pool.isLPToken);
        }

        pool.lpToken.safeTransfer(msg.sender, amountRemoved - withdrawFee);

        // In the case of an accounting error, we choose to let the user emergency withdraw anyway
        if (pool.lpSupply >=  amount)
            pool.lpSupply = pool.lpSupply - amount;
        else
            pool.lpSupply = 0;

        emit EmergencyWithdraw(msg.sender, _pid, amount);
    }

    // Pay pending Dogs
    function payOrLockupPendingDogs(uint256 _pid, address _userAddress) internal {
        PoolInfo storage pool = poolInfo[_pid];
        UserInfo storage user = userInfo[_pid][_userAddress];

        if (user.nextHarvestUntil == 0) {
            user.nextHarvestUntil = block.timestamp + pool.harvestInterval;
        }

        uint256 dogsPending = ((user.amount * pool.accDogsPerShare) / 1e24) - user.dogsRewardDebt;

        if (canHarvest(_pid, _userAddress)) {
            if (dogsPending > 0 || user.rewardLockedUp > 0) {
                uint256 totalRewards = dogsPending + user.rewardLockedUp;

                // reset lockup
                totalLockedUpRewards = totalLockedUpRewards - user.rewardLockedUp;
                user.rewardLockedUp = 0;
                user.nextHarvestUntil = block.timestamp + pool.harvestInterval;

                // dogsPending can't be zero
                safeTokenTransfer(address(dogsToken), _userAddress, totalRewards);
                payReferralCommission(_userAddress, totalRewards);
            }
        } else if (dogsPending > 0) {
            user.rewardLockedUp = user.rewardLockedUp + dogsPending;
            totalLockedUpRewards = totalLockedUpRewards + dogsPending;
            emit RewardLockedUp(_userAddress, _pid, dogsPending);
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

    function increaseDogsSupply(uint256 _amount) external onlyOwner{
        require(!mintBurned);
        dogsToken.mint(msg.sender, _amount);
    }

    function burnMint() external onlyOwner{
        mintBurned = true;
    }

    // ************* Admin functions // *************
    // Add a new lp to the pool. Can only be called by the owner.
    function add(bool _isLPToken, uint256 _allocPoint, IERC20 _lpToken, IStrategy _strategy, uint256 _depositFeeBP, uint256 _withdrawFeeBP, uint256 _harvestInterval, bool _withUpdate) public onlyOwner nonDuplicated(_lpToken) {
        _lpToken.balanceOf(address(this)); // Make sure the provided token is ERC20
        require(_strategy.wantLockedTotal() >= 0, "add: invalid strategy");
        require(_depositFeeBP <= 601, "add: bad deposit fee");
        require(_withdrawFeeBP <= 601, "add: bad withdraw fee");
        require(_harvestInterval <= MAXIMUM_HARVEST_INTERVAL, "add: invalid harvest interval");
        require(address(_lpToken) != address(dogsToken), "add: no native token pool");

        if (_withUpdate) {
            massUpdatePools();
        }

        uint256 lastRewardBlock = block.number > DDSCA.emissionStartBlock() ? block.number : DDSCA.emissionStartBlock();
        totalAllocPoint = totalAllocPoint + _allocPoint;
        poolExistence[_lpToken] = true;

        poolInfo.push(PoolInfo({
        lpToken: _lpToken,
        allocPoint: _allocPoint,
        lastRewardBlock: lastRewardBlock,
        accDogsPerShare: 0,
        depositFeeBP: _depositFeeBP,
        withdrawFeeBP: _withdrawFeeBP,
        isLPToken: _isLPToken,
        lpSupply: 0,
        strategy: _strategy,
        harvestInterval: _harvestInterval
        }));

        emit AddPool(poolInfo.length - 1, _isLPToken, _allocPoint, address(_lpToken), _depositFeeBP, _withdrawFeeBP, _harvestInterval);
    }

    // Update the given pool's DOGS allocation point and deposit fee. Can only be called by the owner.
    function set(uint256 _pid, uint256 _allocPoint, uint256 _depositFeeBP, uint256 _withdrawFeeBP, uint256 _harvestInterval, bool _withUpdate) external onlyOwner {
        require(_allocPoint <= 1e6, "set: invalid allocPoint");
        require(_depositFeeBP <= 601, "set: bad deposit fee");
        require(_withdrawFeeBP <= 601, "set: bad withdraw fee");
        require(_harvestInterval <= MAXIMUM_HARVEST_INTERVAL, "set: invalid harvest interval");
        if (_withUpdate) {
            massUpdatePools();
        }
        totalAllocPoint = (totalAllocPoint - poolInfo[_pid].allocPoint) + _allocPoint;
        poolInfo[_pid].allocPoint = _allocPoint;
        poolInfo[_pid].depositFeeBP = _depositFeeBP;
        poolInfo[_pid].withdrawFeeBP = _withdrawFeeBP;
        poolInfo[_pid].harvestInterval = _harvestInterval;

        emit SetPool(_pid, _allocPoint, _depositFeeBP, _withdrawFeeBP, _harvestInterval);
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
        require(platformnotLocked);
        PLATFORM_ADDRESS = _platformAddress;
        emit SetPlatformAddress(_platformAddress);
    }
    
    function setDDSCAAddress(IDDSCA _ddsca) external onlyOwner{
        DDSCA = _ddsca;
    }

    function updateEmissions(uint256 priceInCents) external {
        require(msg.sender == govAddress, "!gov");
        (bool needsUpdate, IDDSCA.EmissionRate rate) = DDSCA.checkIfUpdateIsNeeded(priceInCents);
        if (needsUpdate){
            // Update pools before changing the emission rate
            massUpdatePools();
            DDSCA.updateEmissions(rate);
        }
    }

    function toggleMigrationEnabled(bool _state) public onlyOwner {
        migrationEnabled = _state;
    }
    
    function lockPlatform() external onlyOwner{
        platformnotLocked = false; 
    }

    function setGov(address _govAddress) external onlyOwner {
        require(_govAddress != address(0), 'zero address');
        govAddress = _govAddress;
        emit GovUpdated(govAddress);
    }

    function updateFeeManager(IFeeManager _feeManagerAddress) external onlyOwner {
        feeManager = _feeManagerAddress;
    }


}