// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "../openzeppelin/erc20/IERC20.sol";
import "../openzeppelin/erc20/SafeERC20.sol";
import "../openzeppelin/common/SafeMath.sol";
import "../openzeppelin/erc20/IWETH.sol";
import "../openzeppelin/upgrable/Ownable.sol";

// MasterChef is the master of Sushi. He can make Sushi and he is a fair guy.
//
// Note that it's ownable and the owner wields tremendous power. The ownership
// will be transferred to a governance smart contract once SUSHI is sufficiently
// distributed and the community can show to govern itself.
//
// Have fun reading it. Hopefully it's bug-free. God bless.
contract MasterChef is Ownable {
    using SafeMath for uint256;
    using SafeERC20 for IERC20;

    // Info of each user.
    struct UserInfo {
        uint256 amount;     // How many LP tokens the user has provided.
        uint256 boostAmount;// How many LP tokens with multilex the user has provided.
        uint256 untilLock;  // Until Lock timestamp.
        uint256 rewardDebt; // Reward debt. See explanation below.
        bool reserve; // Mark for reverve.
        //
        // We do some fancy math here. Basically, any point in time, the amount of SUSHIs
        // entitled to a user but is pending to be distributed is:
        //
        //   pending reward = (user.amount * pool.accSushiPerShare) - user.rewardDebt
        //
        // Whenever a user deposits or withdraws LP tokens to a pool. Here's what happens:
        //   1. The pool's `accSushiPerShare` (and `lastRewardTime`) gets updated.
        //   2. User receives the pending reward sent to his/her address.
        //   3. User's `amount` gets updated.
        //   4. User's `rewardDebt` gets updated.
    }

    // Info of each pool.
    struct PoolInfo {
        IERC20 lpToken;           // Address of LP token contract.
        uint256 allocPoint;       // How many allocation points assigned to this pool. SUSHIs to distribute per block.
        uint256 amount;           // User deposit amount
        uint256 withdrawFee;      // User withdraw fee
        uint256 lastRewardTime;  // Last block number that SUSHIs distribution occurs.
        uint256 accSushiPerShare; // Accumulated SUSHIs per share, times 1e12. See below.
    }

    address public WETH;

    // The SUSHI TOKEN!
    IERC20 public sushi;
    // Dev address.
    address public devaddr;
    // Block number when bonus SUSHI period ends.
    // uint256 public bonusEndTime;
    // SUSHI tokens created per block.
    uint256 public sushiPerSec;
    // Bonus muliplier for early sushi makers.
    uint256 public constant BONUS_MULTIPLIER = 1;

    // Info of each pool.
    PoolInfo[] public poolInfo;
    // Info of each user that stakes LP tokens.
    mapping (uint256 => mapping (address => UserInfo)) public userInfo;
    // Total allocation poitns. Must be the sum of all allocation points in all pools.
    uint256 public totalAllocPoint = 0;
    // The block number when SUSHI mining starts.
    uint256 public startTime;

    event Deposit(address indexed user, uint256 indexed pid, uint256 amount, uint256 buybackAmount);
    event Withdraw(address indexed user, uint256 indexed pid, uint256 amount, uint256 buybackAmount);
    event EmergencyWithdraw(address indexed user, uint256 indexed pid, uint256 amount);

    function initialize(
        IERC20 _sushi,
        address _devaddr,
        address _weth,
        uint256 _sushiPerSec,
        uint256 _startTime
    ) public initializer {
        Ownable.__Ownable_init();
        sushi = _sushi;
        devaddr = _devaddr;
        WETH = _weth;
        sushiPerSec = _sushiPerSec;
        startTime = _startTime;
    }

    receive() external payable {
        assert(msg.sender == WETH);
    }

    function poolLength() external view returns (uint256) {
        return poolInfo.length;
    }

    // Add a new lp to the pool. Can only be called by the owner.
    // XXX DO NOT add the same LP token more than once. Rewards will be messed up if you do.
    function add(uint256 _allocPoint, address _lpToken, bool _withUpdate,
                 uint256 _withdrawFee) public {
        require(msg.sender == owner(), "!dev addr");
        require(_withdrawFee < 50, "!withdraw <= 5%");

        if (_withUpdate) {
            massUpdatePools();
        }
        uint256 lastRewardTime = block.timestamp > startTime ? block.timestamp : startTime;
        totalAllocPoint = totalAllocPoint.add(_allocPoint);
        poolInfo.push(PoolInfo({
            lpToken: IERC20(_lpToken),
            allocPoint: _allocPoint,
            amount: 0,
            withdrawFee: _withdrawFee,
            lastRewardTime: lastRewardTime,
            accSushiPerShare: 0
        }));
    }

    // Update the given pool's SUSHI allocation point. Can only be called by the owner.
    function set(uint256 _pid, uint256 _allocPoint, bool _withUpdate, uint256 _withdrawFee) public {
        require(msg.sender == owner(), "!dev addr");
        require(_withdrawFee <= 50, "!withdraw <= 5%");

        if (_withUpdate) {
            massUpdatePools();
        }
        totalAllocPoint = totalAllocPoint.sub(poolInfo[_pid].allocPoint).add(_allocPoint);
        poolInfo[_pid].allocPoint = _allocPoint;
        poolInfo[_pid].withdrawFee = _withdrawFee;
    }
    function setPerBlock(uint256 _sushiPerSec) public {
        require(msg.sender == owner(), "!dev addr");
        sushiPerSec = _sushiPerSec;
    }

    // Return reward multiplier over the given _from to _to block.
    function getMultiplier(uint256 _from, uint256 _to) public view returns (uint256) {
            return _to.sub(_from);
    }

    // View function to see pending SUSHIs on frontend.
    function pendingSushi(uint256 _pid, address _user) external view returns (uint256) {
        PoolInfo storage pool = poolInfo[_pid];
        UserInfo storage user = userInfo[_pid][_user];
        uint256 accSushiPerShare = pool.accSushiPerShare;
        uint256 lpSupply = pool.amount;
        if (block.timestamp > pool.lastRewardTime && lpSupply != 0) {
            uint256 multiplier = getMultiplier(pool.lastRewardTime, block.timestamp);
            uint256 sushiReward = multiplier.mul(sushiPerSec).mul(pool.allocPoint).div(totalAllocPoint);
            accSushiPerShare = accSushiPerShare.add(sushiReward.mul(1e12).div(lpSupply));
        }
        uint256 pending = user.amount.mul(accSushiPerShare).div(1e12).sub(user.rewardDebt);
        if (user.amount > 0) return pending.mul(user.boostAmount).div(user.amount);
        return 0;
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
        if (block.timestamp <= pool.lastRewardTime) {
            return;
        }
        uint256 lpSupply = pool.amount;
        if (lpSupply == 0) {
            pool.lastRewardTime = block.timestamp;
            return;
        }
        uint256 multiplier = getMultiplier(pool.lastRewardTime, block.timestamp);
        uint256 sushiReward = multiplier.mul(sushiPerSec).mul(pool.allocPoint).div(totalAllocPoint);

        pool.accSushiPerShare = pool.accSushiPerShare.add(sushiReward.mul(1e12).div(lpSupply));
        pool.lastRewardTime = block.timestamp;
    }

    function formatDuration(uint256 sec_) public pure returns (uint256) {
        if (sec_ == 0) return 0;
        else if (sec_ <= 7 days) return 7 days;
        else if (sec_ <= 14 days) return 14 days;
        else if (sec_ <= 21 days) return 21 days;
        else if (sec_ <= 30 days) return 30 days;
        else return 30 days;
    }
    
    function getTimeMultiplex(uint256 sec_) public pure returns (uint256) {
        if (sec_ == 0) return 0;
        else if (sec_ <= 7 days) return 100;
        else if (sec_ <= 14 days) return 200;
        else if (sec_ <= 21 days) return 300;
        else if (sec_ <= 30 days) return 400;
        else return 400;
    }

    function _boostUser(UserInfo storage _user, uint256 _amount, uint256 _durationSec) internal {
        uint256 lockUntil;
        uint256 duration;

        if (_user.untilLock < block.timestamp) lockUntil = block.timestamp;
        else lockUntil = _user.untilLock;

        _durationSec = formatDuration(_durationSec);
        duration = ((lockUntil - block.timestamp) * _user.amount + _durationSec * _amount) / (_user.amount + _amount);

        _user.untilLock = block.timestamp + duration;
        _user.boostAmount = _user.boostAmount.add(_amount * getTimeMultiplex(_durationSec) / 100);
    }

    function _harvest(PoolInfo storage pool, UserInfo storage user) internal {
        if (user.amount > 0) {
            uint256 pending = user.amount.mul(pool.accSushiPerShare).div(1e12).sub(user.rewardDebt);
            if(pending > 0) {
                pending = pending.mul(user.boostAmount).div(user.amount);
                safeSushiTransfer(msg.sender, pending);
            }
        }
    }
    function _harvest(PoolInfo storage pool, UserInfo storage user, address _for) internal {
        if (user.amount > 0) {
            uint256 pending = user.amount.mul(pool.accSushiPerShare).div(1e12).sub(user.rewardDebt);
            if(pending > 0) {
                pending = pending.mul(user.boostAmount).div(user.amount);
                safeSushiTransfer(_for, pending);
            }
        }
    }

    // Deposit LP tokens to MasterChef for SUSHI allocation.
    function deposit(uint256 _pid, uint256 _amount, uint256 _durationSec) public payable {
        PoolInfo storage pool = poolInfo[_pid];
        UserInfo storage user = userInfo[_pid][msg.sender];
        updatePool(_pid);
        _harvest(pool, user, msg.sender);
        if (msg.value > 0) {
            IWETH(WETH).deposit{value: msg.value}();
        }
        if (address(pool.lpToken) == WETH) {
            if(_amount > 0) {
                pool.lpToken.safeTransferFrom(address(msg.sender), address(this), _amount);
            }
            if (msg.value > 0) {
                _amount = _amount.add(msg.value);
            }
        } else if(_amount > 0) {
            pool.lpToken.safeTransferFrom(address(msg.sender), address(this), _amount);
        }

        if(_amount > 0) {
            _boostUser(user, _amount, _durationSec);
            pool.amount = pool.amount.add(_amount);
            user.amount = user.amount.add(_amount);
        }
        user.rewardDebt = user.amount.mul(pool.accSushiPerShare).div(1e12);
        emit Deposit(msg.sender, _pid, _amount, 0);
    }

    // Withdraw LP tokens from MasterChef.
    function withdraw(uint256 _pid, uint256 _amount) public payable {
        PoolInfo storage pool = poolInfo[_pid];
        UserInfo storage user = userInfo[_pid][msg.sender];
        require(user.amount >= _amount, "withdraw: not good");
        require(block.timestamp >= user.untilLock, "withdraw: not locktime");

        updatePool(_pid);
        _harvest(pool, user, msg.sender);
        uint256 buybackAmount;
        if(_amount > 0) {
            uint256 boostAmount = user.boostAmount.mul(_amount).div(user.amount);
            user.amount = user.amount.sub(_amount);
            user.boostAmount = user.boostAmount.sub(boostAmount);
            pool.amount = pool.amount.sub(_amount);
            buybackAmount = _amount.mul(pool.withdrawFee).div(1000);
            if (buybackAmount > 0) {
                pool.lpToken.safeTransfer(devaddr, buybackAmount);
                _amount = _amount.sub(buybackAmount);
            }

            if (address(pool.lpToken) == WETH) {
              withdrawEth(address(msg.sender), _amount, false);
            } else {
              pool.lpToken.safeTransfer(address(msg.sender), _amount);
            }
        }
        user.rewardDebt = user.amount.mul(pool.accSushiPerShare).div(1e12);
        emit Withdraw(msg.sender, _pid, _amount, buybackAmount);
    }

    // Safe sushi transfer function, just in case if rounding error causes pool to not have enough SUSHIs.
    function safeSushiTransfer(address _to, uint256 _amount) internal {
        uint256 sushiBal = sushi.balanceOf(address(this));
        if (_amount > sushiBal) {
            sushi.transfer(_to, sushiBal);
        } else {
            sushi.transfer(_to, _amount);
        }
    }

    // Update dev address by the previous dev.
    function dev(address _devaddr) public {
        require(msg.sender == devaddr, "dev: wut?");
        devaddr = _devaddr;
    }
    function governanceRecoverUnsupported(IERC20 _token, uint256 amount, address to) external {
        require(msg.sender == devaddr, "!dev");
        if (block.timestamp > startTime + 100 days) {
            // do not allow to drain lpToken if less than 3 months after farming
            require(_token != sushi, "!sushi");
            for (uint256 pid = 0; pid < poolInfo.length; ++pid) {
                PoolInfo storage pool = poolInfo[pid];
                require(_token != pool.lpToken, "!pool.lpToken");
            }
            _token.safeTransfer(to, amount);
        }
    }

    function safeTransferETH(address to, uint value) internal {
        (bool success,) = to.call{value:value}(new bytes(0));
        require(success, '!WETHelper: ETH_TRANSFER_FAILED');
    }
    function withdrawEth(address _to, uint256 _amount, bool _isWeth) internal {
        if (_isWeth) {
            IERC20(WETH).safeTransfer(_to, _amount);
        } else {
            IWETH(WETH).withdraw(_amount);
            safeTransferETH(_to, _amount);
        }
    }

}
