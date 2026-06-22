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

contract GooseDollarChef is Ownable, ReentrancyGuard {
    using SafeMath for uint256;
    using SafeERC20 for IERC20;

    struct UserInfo {
        uint256 stakedDollars;
        uint256 shares;
    }

    struct PoolInfo {
        IERC20 want;
        address strat;
    }

    PoolInfo[] public poolInfo;
    mapping(uint256 => mapping(address => UserInfo)) public userInfo;

    IERC20 public gooseDollar;
    ITreasury public treasury;
    address constant public busdAddress = address(0xe9e7CEA3DedcA5984780Bafc599bD69ADd087D56);

    bool public allowLoss = false;

    event Deposit(address indexed user, uint256 indexed pid, uint256 amount);
    event Withdraw(address indexed user, uint256 indexed pid, uint256 amount);

    constructor(
        address _treasury,
        address _gooseDollar
    ) public {
        treasury = ITreasury(_treasury);
        gooseDollar = IERC20(_gooseDollar);
    }

    function poolLength() external view returns (uint256) {
        return poolInfo.length;
    }

    function add(IERC20 _want, address _strat) public onlyOwner {
        poolInfo.push(PoolInfo({
        want : _want,
        strat : _strat
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

        if(!allowLoss){
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
            }else{
                IERC20(busdAddress).safeIncreaseAllowance(address(treasury), busdGained);
                bool settleSuccess = treasury.settle(busdGained, _dollarAmount);
                require(settleSuccess, "SETTLE FAILED");
            }
        }

        emit Withdraw(msg.sender, _pid, withdrawShares);
    }

    function withdrawAll(uint256 _pid) public nonReentrant {
        withdraw(_pid, uint256(- 1));
    }

    function setAllowLoss(bool _allowLoss) external onlyOwner {
        allowLoss = _allowLoss;
    }

    function tvl(uint256 _pid) external view returns (uint256){
        PoolInfo storage pool = poolInfo[_pid];
        return IStrategy(pool.strat).tvl();
    }

    function sharesTotal(uint256 _pid) external view returns (uint256){
        PoolInfo storage pool = poolInfo[_pid];
        return IStrategy(pool.strat).sharesTotal();
    }

    function wantLockedTotal(uint256 _pid) external view returns (uint256){
        PoolInfo storage pool = poolInfo[_pid];
        return IStrategy(poolInfo[_pid].strat).wantLockedTotal();
    }
}
