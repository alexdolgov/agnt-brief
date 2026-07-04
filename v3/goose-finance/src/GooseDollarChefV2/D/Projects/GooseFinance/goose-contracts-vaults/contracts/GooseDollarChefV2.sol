// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.6.12;

import '@openzeppelin/contracts/math/Math.sol';
import '@openzeppelin/contracts/math/SafeMath.sol';
import '@openzeppelin/contracts/access/Ownable.sol';
import '@openzeppelin/contracts/utils/ReentrancyGuard.sol';
import '@openzeppelin/contracts/token/ERC20/IERC20.sol';
import '@openzeppelin/contracts/token/ERC20/SafeERC20.sol';
import "./interfaces/ITreasury.sol";
import "./interfaces/IStrategy.sol";

contract GooseDollarChefV2 is Ownable, ReentrancyGuard {
    using SafeMath for uint256;
    using SafeERC20 for IERC20;

    struct UserInfo {
        uint256 stakedDollars;
        uint256 shares;
    }

    struct PoolInfo {
        IERC20 want;
        address strat;
        bool allowLoss;
    }

    PoolInfo[] public poolInfo;
    mapping(uint256 => mapping(address => UserInfo)) public userInfo;

    IERC20 public gooseDollar;
    ITreasury public treasury;
    address constant public busdAddress = address(0xe9e7CEA3DedcA5984780Bafc599bD69ADd087D56);
    address public schedulerAddress = address(0xa6A5dd2ca182464B90A0D53DdeB16183f49668D3);

    event Deposit(address indexed user, uint256 indexed pid, uint256 amount);
    event Withdraw(address indexed user, uint256 indexed pid, uint256 amount);
    event SetAllowLoss(address indexed user, uint256 indexed pid, bool allowLoss);
    event SetSchedulerAddress(address indexed user, address newAddr);
    event Earn(address indexed user, uint256 indexed pid, address wantAddress, uint256 amountGained, uint256 valueGained);

    constructor(
        address _treasury,
        address _gooseDollar
    ) public {
        treasury = ITreasury(_treasury);
        gooseDollar = IERC20(_gooseDollar);
    }

    modifier onlyAdmins(){
        require(msg.sender == owner() || msg.sender == schedulerAddress, "onlyAdmins: FORBIDDEN");
        _;
    }

    function poolLength() external view returns (uint256) {
        return poolInfo.length;
    }

    function add(IERC20 _want, address _strat, bool _allowLoss) public onlyOwner {
        poolInfo.push(PoolInfo({
        want : _want,
        strat : _strat,
        allowLoss: _allowLoss
        }));
    }

    // View function to see staked Want tokens on frontend.
    function stakedWantTokens(uint256 _pid, address _user) external view returns (uint256){
        PoolInfo storage pool = poolInfo[_pid];
        UserInfo storage user = userInfo[_pid][_user];

        uint256 sharesTotal = IStrategy(pool.strat).sharesTotal();
        uint256 wantLockedTotal = IStrategy(poolInfo[_pid].strat).wantLockedTotal();
        if (sharesTotal == 0) {
            return 0;
        }
        return user.shares.mul(wantLockedTotal).div(sharesTotal);
    }

    // Want tokens moved from user -> chef -> Strat (compounding)
    function deposit(uint256 _pid, uint256 _dollarAmount) public nonReentrant {
        if (_dollarAmount > 0) {
            PoolInfo storage pool = poolInfo[_pid];
            UserInfo storage user = userInfo[_pid][msg.sender];

            gooseDollar.safeTransferFrom(address(msg.sender), address(this), _dollarAmount);
            gooseDollar.safeIncreaseAllowance(address(treasury), _dollarAmount);
            bool borrowSuccess = treasury.borrow(_dollarAmount);
            require(borrowSuccess, "BORROW FAILED");

            IERC20(busdAddress).safeIncreaseAllowance(pool.strat, _dollarAmount);
            uint256 sharesAdded = IStrategy(poolInfo[_pid].strat).depositBUSD(msg.sender, _dollarAmount);
            require(sharesAdded > 0, "DEPOSIT FAILED");

            user.stakedDollars = user.stakedDollars.add(_dollarAmount);
            user.shares = user.shares.add(sharesAdded);

            emit Deposit(msg.sender, _pid, _dollarAmount);
        }
    }

    // Withdraw LP tokens from MasterChef.
    function withdraw(uint256 _pid, uint256 _dollarAmount) public nonReentrant {
        PoolInfo storage pool = poolInfo[_pid];
        UserInfo storage user = userInfo[_pid][msg.sender];

        require(user.shares > 0, "user.shares is 0");
        require(user.stakedDollars > 0, "user.stakedDollars is 0");

        if(!pool.allowLoss){
            uint256 sharesTotal = IStrategy(pool.strat).sharesTotal();
            uint256 tvl = IStrategy(pool.strat).tvl();
            uint256 userValue = user.shares.mul(tvl).div(sharesTotal);
            require(userValue >= user.stakedDollars, "CANNOT UNSTAKE AT LOSS");
        }

        _dollarAmount = Math.min(_dollarAmount, user.stakedDollars);

        // Withdraw want tokens
        uint256 withdrawShares = _dollarAmount
        .mul(user.shares)
        .div(user.stakedDollars);

        if (withdrawShares > 0) {
            (uint256 sharesRemoved, uint256 busdGained) = IStrategy(pool.strat).withdrawBUSD(msg.sender, withdrawShares);

            if (sharesRemoved > user.shares) {
                user.shares = 0;
                user.stakedDollars = 0;
            } else {
                user.shares = user.shares.sub(sharesRemoved);
                user.stakedDollars = user.stakedDollars.sub(_dollarAmount);
            }

            //Settle debt
            if(busdGained > _dollarAmount){
                IERC20(busdAddress).safeIncreaseAllowance(address(treasury), _dollarAmount);
                bool settleSuccess = treasury.settle(_dollarAmount, _dollarAmount);
                require(settleSuccess, "SETTLE FAILED");
                uint256 profits = busdGained.sub(_dollarAmount);
                uint256 busdBal = IERC20(busdAddress).balanceOf(address(this));
                IERC20(busdAddress).safeTransfer(msg.sender, Math.min(busdBal, profits));
                gooseDollar.safeTransfer(msg.sender, _dollarAmount);
            }else{
                IERC20(busdAddress).safeIncreaseAllowance(address(treasury), busdGained);
                bool settleSuccess = treasury.settle(busdGained, _dollarAmount);
                require(settleSuccess, "SETTLE FAILED");
                gooseDollar.safeTransfer(msg.sender, busdGained);
            }
        }

        emit Withdraw(msg.sender, _pid, withdrawShares);
    }

    function withdrawAll(uint256 _pid) public nonReentrant {
        withdraw(_pid, uint256(- 1));
    }

    function earn(uint256 _pid) external onlyAdmins {
        PoolInfo storage pool = poolInfo[_pid];
        uint256 wantLockedBefore = IStrategy(pool.strat).wantLockedTotal();
        IStrategy(pool.strat).earn();
        uint256 wantLockedAfter = IStrategy(pool.strat).wantLockedTotal();
        if(wantLockedAfter > wantLockedBefore){
            uint256 wantGained = wantLockedAfter.sub(wantLockedBefore);
            uint256 valueGained = IStrategy(pool.strat).wantTokenValue(wantGained);
            emit Earn(msg.sender, _pid, address(pool.want), wantGained, valueGained);
        }
    }




    //Misc Settings
    function setAllowLoss(uint256 _pid, bool _allowLoss) external onlyOwner {
        PoolInfo storage pool = poolInfo[_pid];
        pool.allowLoss = _allowLoss;
        emit SetAllowLoss(msg.sender, _pid, _allowLoss);
    }

    function setSchedulerAddr(address newAddr) external onlyAdmins {
        schedulerAddress = newAddr;
        emit SetSchedulerAddress(msg.sender, newAddr);
    }



    //View Functions For Clients
    function tvl(uint256 _pid) public view returns (uint256){
        return IStrategy(poolInfo[_pid].strat).tvl();
    }

    function sharesTotal(uint256 _pid) external view returns (uint256){
        return IStrategy(poolInfo[_pid].strat).sharesTotal();
    }

    function wantLockedTotal(uint256 _pid) external view returns (uint256){
        return IStrategy(poolInfo[_pid].strat).wantLockedTotal();
    }

    function lastEarnBlock(uint256 _pid) external view returns (uint256){
        return IStrategy(poolInfo[_pid].strat).lastEarnBlock();
    }

    function lastEarnTimestamp(uint256 _pid) external view returns (uint256){
        return IStrategy(poolInfo[_pid].strat).lastEarnTimestamp();
    }

    function wantTokenValue(uint256 _pid, uint256 wantAmount) external view returns (uint256){
        return IStrategy(poolInfo[_pid].strat).wantTokenValue(wantAmount);
    }

    function originTVL(uint256 _pid) external view returns (uint256){
        return IStrategy(poolInfo[_pid].strat).originTVL();
    }

    function rewardTokenValue(uint256 _pid, uint256 rewardAmount) external view returns (uint256){
        return IStrategy(poolInfo[_pid].strat).rewardTokenValue(rewardAmount);
    }

    function originRewardsPerBlock(uint256 _pid) external view returns (uint256){
        return IStrategy(poolInfo[_pid].strat).originRewardsPerBlock();
    }

    function originAPR(uint256 _pid, uint256 blocks) external view returns (uint256){
        return IStrategy(poolInfo[_pid].strat).originAPR(blocks);
    }

    function originStakedTotal(uint256 _pid) external view returns (uint256){
        return IStrategy(poolInfo[_pid].strat).originStakedTotal();
    }

    function paused(uint256 _pid) public view returns (bool){
        return IStrategy(poolInfo[_pid].strat).paused();
    }

    function shouldCompound(uint256 _pid) external view returns (bool){
        return !paused(_pid) && tvl(_pid) > 0;
    }
}
