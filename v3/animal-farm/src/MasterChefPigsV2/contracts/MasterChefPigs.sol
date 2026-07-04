// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/interfaces/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import "./interfaces/IPigsToken.sol";
import "@uniswap/v2-core/contracts/interfaces/IUniswapV2Pair.sol";
import "@uniswap/v2-periphery/contracts/interfaces/IUniswapV2Router02.sol";
import "./interfaces/IFounderStakerV2.sol";
import "./interfaces/IDDSCA.sol";

contract MasterChefPigsV2 is Ownable, ReentrancyGuard {
    using SafeERC20 for IERC20;

    IPigsToken public PigsV2Token = IPigsToken(0x9a3321E1aCD3B9F6debEE5e042dD2411A1742002);
    address public PLATFORM_ADDRESS;
    IFounderStakerV2 public FOUNDER;
    address public govAddress;
    address public dripTaxVault = 0xa3381829Ae9CB616fA95cD0370B12b90C13caA00;
    address public constant busdCurrencyAddress = 0xe9e7CEA3DedcA5984780Bafc599bD69ADd087D56;
    bool mintBurned = false;
    address public Migrator;
    enum EmissionRate {SLOW, MEDIUM, FAST, FASTEST}

    IUniswapV2Router02 public constant PancakeRouter = IUniswapV2Router02(0x10ED43C718714eb63d5aA57B78B54704E256024E);
    IDDSCA DDSCA;
    address public DogPoundAutoPool;

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
    uint256 public dripBusdPid = 2;

    // Events
    event AddPool(uint256 indexed pid, uint256 allocPoint, address lpToken, uint256 depositFeeBP, uint256 harvestInterval);
    event SetPool(uint256 indexed pid, uint256 allocPoint, uint256 depositFeeBP, uint256 harvestInterval);
    event Deposit(address indexed user, uint256 indexed pid, uint256 amount);
    event Withdraw(address indexed user, uint256 indexed pid, uint256 amount);
    event EmergencyWithdraw(address indexed user, uint256 indexed pid, uint256 amount);
    event SetPlatformAddress(address indexed newAddress);
    event RewardLockedUp(address indexed user, uint256 indexed pid, uint256 amountLockedUp);

    event SetOwnersRewards(uint256 ownerReward);
    event SetFounder(address founder);
    event GovUpdated(address govAddress);
    event DogPoundAutoPoolUpdated(address dogPoundAutoPool);

    modifier onlyMigrator() {
        require(Migrator == msg.sender, "migrator only");
        _;
    }

    constructor(address _platform, IFounderStakerV2 _founder, IDDSCA _ddsca){
        DDSCA = _ddsca;
        PLATFORM_ADDRESS = _platform;
        FOUNDER = _founder;
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
        require(address(_lpToken) != address(PigsV2Token), "add: no native token pool");
        require(_harvestInterval <= MAXIMUM_HARVEST_INTERVAL, "add: invalid harvest interval");

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
        if (_from > DDSCA.emissionEndBlock())
            return 0;
        if (_to > DDSCA.emissionEndBlock())
            return DDSCA.emissionEndBlock() - _from;
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
            uint256 pigsReward = (multiplier * DDSCA.tokenPerBlock() * pool.allocPoint) / totalAllocPoint;
            accPigsPerShare = accPigsPerShare + ((pigsReward * 1e24) / pool.lpSupply);
        }

        uint256 pending = ((user.amount * accPigsPerShare) / 1e24) - user.pigsRewardDebt;
        return pending + user.rewardLockedUp;

    }

    function canHarvest(uint256 _pid, address _user) public view returns (bool) {
        UserInfo storage user = userInfo[_pid][_user];
        if (_user == DogPoundAutoPool){
            return true;
        }
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
            uint256 pigsReward = (multiplier * DDSCA.tokenPerBlock() * pool.allocPoint) / totalAllocPoint;
            uint256 pigsRewardOwner = pigsReward * ownerPigsReward / 1000;

            if (pigsRewardOwner > 0){
                PigsV2Token.mint(address(FOUNDER), pigsRewardOwner);
            }

            PigsV2Token.mint(address(this), pigsReward);

            pool.accPigsPerShare = pool.accPigsPerShare + ((pigsReward * 1e24) / lpSupply);
        }

        pool.lastRewardBlock = block.number;
    }
    
    function depositMigrator(address _userAddress, uint256 _pid, uint256 _amount) external nonReentrant onlyMigrator {
        _depositMigrator(_pid, _amount, _userAddress);
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
            uint256 userbalanceTEMP = pool.lpToken.balanceOf(msg.sender);
            uint256 userAllowanceTEMP = pool.lpToken.allowance(msg.sender, address(this));

            pool.lpToken.safeTransferFrom(msg.sender, address(this), _amount);
            _amount = pool.lpToken.balanceOf(address(this)) - previousBalance;
            require(_amount > 0, "no funds were received");

            uint256 amountRealized = _amount;
            if (pool.depositFeeBP > 0) {
                uint256 depositFee = (_amount * pool.depositFeeBP) / 10000;
                if(_pid == dripBusdPid){
                    address token0;
                    address token1;
                    uint256 amount0;
                    uint256 amount1;
                    (token0, token1, amount0, amount1) = unpairLPToken(address(pool.lpToken), depositFee);
                    IERC20(token0).transfer(PLATFORM_ADDRESS, amount0); 
                    IERC20(token1).transfer(dripTaxVault, amount1);
                }else{
                    pool.lpToken.safeTransfer(PLATFORM_ADDRESS, depositFee);
                }
                amountRealized = _amount - depositFee;
            }
            user.amount = user.amount + amountRealized;
            pool.lpSupply = pool.lpSupply + amountRealized;
        }

        user.pigsRewardDebt = ((user.amount * pool.accPigsPerShare) / 1e24);

        emit Deposit(msg.sender, _pid, _amount);
    }

    // Deposit LP tokens to MasterChef for Dogs allocation.
    function _depositMigrator(uint256 _pid, uint256 _amount, address _userAddress) internal nonReentrant {
        PoolInfo storage pool = poolInfo[_pid];
        UserInfo storage user = userInfo[_pid][_userAddress];
        updatePool(_pid);

        payOrLockupPendingPigs(_pid);

        if (_amount > 0) {
            // Accept the balance of coins we receive (useful for coins which take fees).
            uint256 previousBalance = pool.lpToken.balanceOf(address(this));
            uint256 userbalanceTEMP = pool.lpToken.balanceOf(_userAddress);
            uint256 userAllowanceTEMP = pool.lpToken.allowance(_userAddress, address(this));

            pool.lpToken.safeTransferFrom(_userAddress, address(this), _amount);
            _amount = pool.lpToken.balanceOf(address(this)) - previousBalance;
            require(_amount > 0, "no funds were received");

            uint256 amountRealized = _amount;
            user.amount = user.amount + amountRealized;
            pool.lpSupply = pool.lpSupply + amountRealized;
        }

        user.pigsRewardDebt = ((user.amount * pool.accPigsPerShare) / 1e24);

        emit Deposit(_userAddress, _pid, _amount);
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

                safeTokenTransfer(address(PigsV2Token), msg.sender, totalRewards);
            }
        } else if (pigsPending > 0) {
            user.rewardLockedUp = user.rewardLockedUp + pigsPending;
            totalLockedUpRewards = totalLockedUpRewards + pigsPending;
            emit RewardLockedUp(msg.sender, _pid, pigsPending);
        }

    }

    /**
     * @dev un-enchant the lp token into its original components.
     */
    function unpairLPToken(address token, uint256 amount) internal returns(address token0, address token1, uint256 amountA, uint256 amountB){
        _approveTokenIfNeeded(token, address(PancakeRouter));

        IUniswapV2Pair lpToken = IUniswapV2Pair(token);
        address token0 = lpToken.token0();
        address token1 = lpToken.token1();

        // make the swap
        (uint256 amount0, uint256 amount1) = PancakeRouter.removeLiquidity(
            address(token0),
            address(token1),
            amount,
            0,
            0,
            address(this),
            block.timestamp
        );
        if(token0 == busdCurrencyAddress){
            return (token0, token1, amount0, amount1);
        }else{
            return (token1, token0, amount1, amount0);
        }

    }
    
    function _approveTokenIfNeeded(address token, address _contract) private {
        if (IERC20(token).allowance(address(this), address(_contract)) == 0) {
            IERC20(token).safeApprove(address(_contract), type(uint256).max);
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
    
    function increasePigsSupply(uint256 _amount) external onlyOwner{
        require(!mintBurned);
        PigsV2Token.mint(msg.sender, _amount);
    }

    function burnMint() external onlyOwner{
        mintBurned = true;
    }

    function setFoundersAddresses(IFounderStakerV2 _founder) external onlyOwner {
        require(address(_founder) != address(0), "!nonzero");
        FOUNDER = _founder;
        emit SetFounder(address(_founder));
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
        (bool needsUpdate, IDDSCA.EmissionRate rate) = DDSCA.checkIfUpdateIsNeeded(priceInCents);
        if (needsUpdate){
            // Update pools before changing the emission rate
            massUpdatePools();
            DDSCA.updateEmissions(rate);
        }
    }

    function setDDSCAAddress(IDDSCA _ddsca) external onlyOwner{
        DDSCA = _ddsca;
    }

    function setGov(address _govAddress) external onlyOwner {
        require(_govAddress != address(0), 'zero address');
        govAddress = _govAddress;
        emit GovUpdated(govAddress);
    }

    function setDogPoundAutoPool(address _dogPoundAutoPool) external onlyOwner {
        require(_dogPoundAutoPool != address(0), 'zero address');
        DogPoundAutoPool = _dogPoundAutoPool;
        emit DogPoundAutoPoolUpdated(DogPoundAutoPool);
    }

    function updateMigrator(address _migrator) external onlyOwner {
        Migrator = _migrator;
    }

}