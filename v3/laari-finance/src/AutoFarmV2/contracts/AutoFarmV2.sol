// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "../openzeppelin/erc20/IERC20.sol";
import "../openzeppelin/erc20/SafeERC20.sol";
import "../openzeppelin/erc20/IWETH.sol";
import "../openzeppelin/upgrable/Ownable.sol";
import "../openzeppelin/common/SafeMath.sol";
import "../openzeppelin/common/ReentrancyGuard.sol";
import "./IStrategy.sol";
import "./AntiFlashload.sol";

contract AutoFarmV2 is Ownable, ReentrancyGuard, AntiFlashload {
    using SafeMath for uint256;
    using SafeERC20 for IERC20;

    struct UserInfo {
        uint256 amount;
        uint256 shares;
        uint256 update;
        uint256 mode;  
        uint256 rewardDebt;

    }

    uint256 public constant depositFeeFactorMax = 100;
    uint256 public constant withdrawFeeFactorMax = 100;

    uint256 public constant STRAT_MODE_NONE = 0;
    uint256 public constant STRAT_MODE_MORE_LP = 1;
    struct PoolInfo {
        IERC20 lpToken; 
        uint256 allocPoint; 
        uint256 lastRewardBlock;
        uint256 accSushiPerShare;
        uint256 accInterestPerShare;
        uint256 depositFee; 
        uint256 withdrawFee; 
        uint256 amount;
        uint256 reserve;
        address strat; 
    }

    address public sushi;
    uint256 public sushiPerBlock;
    uint256 public startBlock;
    uint256 public bonusEndBlock;
    uint256 public bonusEndBlock1;
    uint256 public bonusEndBlock2;
    address public devaddr;
    address public WETH;

    PoolInfo[] public poolInfo; 
    mapping(uint256 => mapping(address => UserInfo)) public userInfo; 
    uint256 public totalAllocPoint = 0; 

    event Deposit(address indexed user, uint256 indexed pid, uint256 amount, uint256 shares);
    event Withdraw(address indexed user, uint256 indexed pid, uint256 amount, uint256 shares);
    event DepositRewards(address indexed user, uint256 indexed pid, uint256 amount);

    function initialize(
        address _sushi,
        address _devaddr,
        address _weth,
        uint256 _sushiPerBlock,
        uint256 _startBlock,
        uint256 _bonusEndBlock,
        uint256 _bonusEndBlock1,
        uint256 _bonusEndBlock2
    ) public initializer {
        Ownable.__Ownable_init();
        AntiFlashload.__Flashload_init(1);
        sushi = _sushi;
        devaddr = _devaddr;
        WETH = _weth;
        sushiPerBlock = _sushiPerBlock;
        startBlock = _startBlock;
        bonusEndBlock = _bonusEndBlock;
        bonusEndBlock1 = _bonusEndBlock1;
        bonusEndBlock2 = _bonusEndBlock2;
    }

    receive() external payable {
        assert(msg.sender == WETH);
    }

    function poolLength() external view returns (uint256) {
        return poolInfo.length;
    }

    function add(
        uint256 _allocPoint,
        address _want,
        bool _withUpdate,
        uint256 _depositFee,
        uint256 _withdrawFee,
        address _strat
    ) public onlyOwner {
        if (_withUpdate) {
            massUpdatePools();
        }
        uint256 lastRewardBlock =
            block.timestamp > startBlock ? block.timestamp : startBlock;
        totalAllocPoint = totalAllocPoint.add(_allocPoint);
        require(_depositFee < depositFeeFactorMax && _withdrawFee < withdrawFeeFactorMax, "!deposit/withdraw fee");
        poolInfo.push(
            PoolInfo({
                lpToken: IERC20(_want),
                allocPoint: _allocPoint,
                lastRewardBlock: lastRewardBlock,
                accSushiPerShare: 0,
                accInterestPerShare: 0,
                depositFee: _depositFee,
                withdrawFee: _withdrawFee,
                amount:0,
                reserve:0,
                strat: _strat
            })
        );
    }

    function set(
        uint256 _pid,
        uint256 _allocPoint,
        bool _withUpdate,
        uint256 _depositFee,
        uint256 _withdrawFee
    ) public onlyOwner {
        if (_withUpdate) {
            massUpdatePools();
        }
        totalAllocPoint = totalAllocPoint.sub(poolInfo[_pid].allocPoint).add(
            _allocPoint
        );
        require(_depositFee < depositFeeFactorMax && _withdrawFee < withdrawFeeFactorMax,
                "!deposit/withdraw fee");
        poolInfo[_pid].allocPoint = _allocPoint;
        poolInfo[_pid].depositFee = _depositFee;
        poolInfo[_pid].withdrawFee = _withdrawFee;
    }


    function getMultiplier(uint256 _from, uint256 _to) public view returns (uint256) {
        if (_to <= bonusEndBlock) {
            return _to.sub(_from).mul(6);
        } else if (_from <= bonusEndBlock && _to >= bonusEndBlock && _to <= bonusEndBlock1) {
            return bonusEndBlock.sub(_from).mul(6).add(_to.sub(bonusEndBlock).mul(3));
        } else if (_from <= bonusEndBlock && _to > bonusEndBlock1 && _to <= bonusEndBlock2) {
            return bonusEndBlock.sub(_from).mul(6).add(bonusEndBlock1.sub(bonusEndBlock).mul(3)).add(_to.sub(bonusEndBlock1).mul(2));
        } else if (_from <= bonusEndBlock && _to > bonusEndBlock2) {
            return bonusEndBlock.sub(_from).mul(6).add(bonusEndBlock1.sub(bonusEndBlock).mul(3)).add(bonusEndBlock2.sub(bonusEndBlock1).mul(2)).add(_to.sub(bonusEndBlock2));
        } else if (_from >= bonusEndBlock && _to <= bonusEndBlock1) {
            return _to.sub(_from).mul(3);
        } else if (_from > bonusEndBlock && _to > bonusEndBlock1 && _to <= bonusEndBlock2) {
            return bonusEndBlock1.sub(_from).mul(3).add(_to.sub(bonusEndBlock1).mul(2));
        } else if (_from > bonusEndBlock && _to > bonusEndBlock2) {
            return bonusEndBlock1.sub(_from).mul(3).add(bonusEndBlock2.sub(bonusEndBlock1).mul(2)).add(_to.sub(bonusEndBlock2));
        } else if (_from >= bonusEndBlock1 && _to <= bonusEndBlock2) {
            return _to.sub(_from).mul(2);
        } else if (_from >= bonusEndBlock1 && _to > bonusEndBlock2) {
            return bonusEndBlock2.sub(_from).mul(2).add(_to.sub(bonusEndBlock2));
        } else if (_from >= bonusEndBlock2)  {
            return _to.sub(_from);
        }
    }

    function pendingToken(uint256 _pid, address _user)
        external
        view
        returns (uint256, IStrategy.EarnInfo[] memory)
    {
        PoolInfo storage pool = poolInfo[_pid];
        UserInfo storage user = userInfo[_pid][_user];
        uint256 accSushiPerShare = pool.accSushiPerShare;
        uint256 sharesTotal = _sharesTotal(pool);
        if (block.timestamp > pool.lastRewardBlock && sharesTotal != 0) {
            uint256 multiplier =
                getMultiplier(pool.lastRewardBlock, block.timestamp);
            uint256 sushiReward =
                multiplier.mul(sushiPerBlock).mul(pool.allocPoint).div(
                    totalAllocPoint
                );
            accSushiPerShare = accSushiPerShare.add(
                sushiReward.mul(1e12).div(sharesTotal)
            );
        }
        uint256 pending = user.shares.mul(accSushiPerShare).div(1e12).sub(user.rewardDebt);
        IStrategy.EarnInfo[] memory earnPending = _UserStrategy(pool, user).pendingEarn(_user);

        return (pending, earnPending);
    }

    function harvest(PoolInfo storage pool, UserInfo storage user) internal returns (uint256) {
        uint256 pending;
        if (user.shares > 0) {
            pending =
                user.shares.mul(pool.accSushiPerShare).div(1e12).sub(
                    user.rewardDebt
                );
            if (pending > 0) {
                safeSushiTransfer(msg.sender, pending);
            }
        }
        return pending;
    }


    function stakedWantTokens(uint256 _pid, address _user)
        external
        view
        returns (uint256)
    {
        PoolInfo storage pool = poolInfo[_pid];
        UserInfo storage user = userInfo[_pid][_user];
        IStrategy strat = _UserStrategy(pool, user);

        (uint256 wantLockedTotal, uint256 sharesTotal) = strat.sharesInfo();
        if (sharesTotal == 0) {
            return 0;
        }
        return user.shares.mul(wantLockedTotal).div(sharesTotal);
    }


    function massUpdatePools() public {
        uint256 length = poolInfo.length;
        for (uint256 pid = 0; pid < length; ++pid) {
            updatePool(pid);
        }
    }

    function _sharesTotal(PoolInfo storage pool) internal view returns (uint256 sharesTotal) {
        if (pool.strat != address(0)) {
            sharesTotal += IStrategy(pool.strat).sharesTotal();
        }
    }

    function _UserStrategy(PoolInfo storage pool, UserInfo storage user) internal view returns (IStrategy) {
        if (user.mode == STRAT_MODE_MORE_LP) {
            return IStrategy(pool.strat);
        }
        return IStrategy(address(0));
    }
    function UserStrategy(uint256 _pid, address _user) external view returns (IStrategy) {
        PoolInfo storage pool = poolInfo[_pid];
        UserInfo storage user = userInfo[_pid][_user];
        return _UserStrategy(pool, user);
    }


    function updatePool(uint256 _pid) public {
        PoolInfo storage pool = poolInfo[_pid];
        if (block.timestamp <= pool.lastRewardBlock) {
            return;
        }
        uint256 sharesTotal = _sharesTotal(pool);
        if (sharesTotal == 0) {
            pool.lastRewardBlock = block.timestamp;
            return;
        }
        uint256 multiplier = getMultiplier(pool.lastRewardBlock, block.timestamp);
        if (multiplier <= 0) {
            return;
        }
        uint256 sushiReward =
            multiplier.mul(sushiPerBlock).mul(pool.allocPoint).div(
                totalAllocPoint
            );

        pool.accSushiPerShare = pool.accSushiPerShare.add(
            sushiReward.mul(1e12).div(sharesTotal)
        );
        pool.lastRewardBlock = block.timestamp;
    }

    function changeMode(uint256 _pid, uint256 _newMode) external {
        PoolInfo storage pool = poolInfo[_pid];
        UserInfo storage user = userInfo[_pid][msg.sender];
        IStrategy strat = _UserStrategy(pool, user);
        require(_newMode != STRAT_MODE_NONE, "new strat mode is none!!");
        require(_newMode != user.mode, "new strat mode is same with old!!");

        updatePool(_pid);

        if (user.mode == STRAT_MODE_NONE) {
            user.mode = _newMode;
            return;
        }
        if (user.shares == 0) {
            return;
        }
        
        (uint256 wantLockedTotal, uint256 sharesTotal) = strat.sharesInfo();

        uint256 amount = user.shares.mul(wantLockedTotal).div(sharesTotal);
        strat.withdraw(msg.sender, amount);
        strat.onRewardEarn(msg.sender, 0);

        
        user.mode = _newMode;
        strat = _UserStrategy(pool, user);
        uint256 wantBal = IERC20(pool.lpToken).balanceOf(address(this));

        if (wantBal > 0) {
            pool.lpToken.safeApprove(address(strat), wantBal);
            uint256 sharesAdded = strat.deposit(msg.sender, wantBal);
            user.shares = sharesAdded;
            user.amount = wantBal;
            user.update = block.timestamp;
            strat.onRewardEarn(msg.sender, user.shares);
        }

        user.rewardDebt = user.shares.mul(pool.accSushiPerShare).div(1e12);
    }

    function deposit(uint256 _pid, uint256 _wantAmt)
        public
        payable
        enterFlashload(_pid)
        nonReentrant
    {
        updatePool(_pid);
        PoolInfo storage pool = poolInfo[_pid];
        UserInfo storage user = userInfo[_pid][msg.sender];
		harvest(pool, user);

        if (user.mode == STRAT_MODE_NONE) {
            user.mode = STRAT_MODE_MORE_LP;
        }
        if (msg.value > 0) {
            IWETH(WETH).deposit{value: msg.value}();
        }
        if (address(pool.lpToken) == WETH) {
            if(_wantAmt > 0) {
                pool.lpToken.safeTransferFrom(msg.sender, address(this), _wantAmt);
            }
            if (msg.value > 0) {
                _wantAmt = _wantAmt.add(msg.value);
            }
        } else if(_wantAmt > 0) {
            pool.lpToken.safeTransferFrom(msg.sender, address(this), _wantAmt);
        }
        IStrategy strat = _UserStrategy(pool, user);
        uint256 sharesAdded;
        uint256 buybackAmount;
        if (_wantAmt > 0) {
            buybackAmount = _wantAmt.mul(pool.depositFee).div(1000);
            if (buybackAmount > 0) {
                pool.lpToken.safeTransfer(devaddr, buybackAmount);
                _wantAmt = _wantAmt.sub(buybackAmount);
            }

            pool.lpToken.safeApprove(address(strat), _wantAmt);
            sharesAdded = strat.deposit(msg.sender, _wantAmt);

            user.shares = user.shares.add(sharesAdded);
            user.amount = user.amount.add(_wantAmt);
            user.update = block.timestamp;
            pool.amount = pool.amount.add(_wantAmt);

		}
        user.rewardDebt = user.shares.mul(pool.accSushiPerShare).div(1e12);

       
        strat.onRewardEarn(msg.sender, user.shares);

        emit Deposit(msg.sender, _pid, _wantAmt, sharesAdded);
    }

  
    function withdraw(uint256 _pid, uint256 _wantAmt)
        public
        leaveFlashload(_pid)
        nonReentrant
    {
        updatePool(_pid);
        PoolInfo storage pool = poolInfo[_pid];
        UserInfo storage user = userInfo[_pid][msg.sender];
        IStrategy strat = _UserStrategy(pool, user);

        (uint256 wantLockedTotal, uint256 sharesTotal) = strat.sharesInfo();
        

        require(user.shares > 0, "user.shares is 0");
        require(sharesTotal > 0, "sharesTotal is 0");

        
		harvest(pool, user);

    
        uint256 amount = user.shares.mul(wantLockedTotal).div(sharesTotal);
        require(_wantAmt <= amount, "withdraw: wrong amount!");
        if (_wantAmt > amount) {
            _wantAmt = amount;
        }
        uint256 buybackAmount;
        uint256 sharesRemoved;
        if (_wantAmt > 0) {
            sharesRemoved = strat.withdraw(msg.sender, _wantAmt);

            if (sharesRemoved > user.shares || _wantAmt == amount) {
                user.shares = 0;
            } else {
                user.shares = user.shares.sub(sharesRemoved);
            }

            uint256 wantBal = IERC20(pool.lpToken).balanceOf(address(this));
            if (wantBal < _wantAmt) {
                _wantAmt = wantBal;
            }
            if (user.amount > _wantAmt) {
				user.amount = user.amount.sub(_wantAmt);
                pool.amount = pool.amount.sub(_wantAmt);
            } else {
                pool.amount = pool.amount.sub(user.amount);
				user.amount = 0;
            }


            buybackAmount = _wantAmt.mul(pool.withdrawFee).div(1000);
            if (buybackAmount > 0) {
                pool.lpToken.safeTransfer(devaddr, buybackAmount);
                _wantAmt = _wantAmt.sub(buybackAmount);
            }

            if (address(pool.lpToken) == WETH) {
                withdrawEth(address(msg.sender), _wantAmt, false);
            } else {
                pool.lpToken.safeTransfer(address(msg.sender), _wantAmt);
            }

		}

        user.rewardDebt = user.shares.mul(pool.accSushiPerShare).div(1e12);
   
        strat.onRewardEarn(msg.sender, user.shares);

        if (user.shares == 0) {
            user.mode = STRAT_MODE_NONE;
        }

        emit Withdraw(msg.sender, _pid, _wantAmt, sharesRemoved);
    }

    function withdrawAll(uint256 _pid) external
    {
        withdraw(_pid, type(uint256).max);
    }

    function safeSushiTransfer(address _to, uint256 _amt) internal {
        uint256 bal = IERC20(sushi).balanceOf(address(this));
        if (_amt > bal) {
            IERC20(sushi).transfer(_to, bal);
        } else {
            IERC20(sushi).transfer(_to, _amt);
        }
    }

    function safeTransferETH(address to, uint value) internal {
        (bool success,) = to.call{value:value}(new bytes(0));
        require(success, '!WETH: ETH_TRANSFER_FAILED');
    }

    function withdrawEth(address _to, uint256 _amount, bool _isWeth) internal {
        if (_isWeth) {
            IERC20(WETH).safeTransfer(_to, _amount);
        } else {
            IWETH(WETH).withdraw(_amount);
            safeTransferETH(_to, _amount);
        }
    }
 
    function updateStartBlock(uint256 _startBlock)
        external
        onlyOwner
    {
        startBlock = _startBlock;
    }
    function updateEndBlock(uint256 _endBlock)
        external
        onlyOwner
    {
        bonusEndBlock = _endBlock;
    }
    function updateEndBlock1(uint256 _endBlock1)
        external
        onlyOwner
    {
        bonusEndBlock1 = _endBlock1;
    }
    function updateEndBlock2(uint256 _endBlock2)
        external
        onlyOwner
    {
        bonusEndBlock2 = _endBlock2;
    }
    function setSushiPerBlk(uint256 _sushiPerBlock)
        public
        onlyOwner
    {
        sushiPerBlock = _sushiPerBlock;
    }

    function setFlashloadBlk(uint256 _flashloadBlk)
        public
        onlyOwner
    {
        flashloadBlk = _flashloadBlk;
    }

    function userInfo2(uint256 _pid, address _user)
        view
        external
        returns (uint256, uint256, uint256)
    {
        PoolInfo storage pool = poolInfo[_pid];
        UserInfo storage user = userInfo[_pid][_user];
        IStrategy strat = _UserStrategy(pool, user);

        (uint256 wantLockedTotal, uint256 sharesTotal) = strat.sharesInfo();
        uint256 realAmount = 0;
        if (sharesTotal > 0) {
            realAmount = user.shares.mul(wantLockedTotal).div(sharesTotal);
        }
        return (user.amount, realAmount, user.shares);
    }
    function userInfo3(uint256 _pid, address _user)
        view
        external
        returns (uint256, uint256, uint256, uint256)
    {
        PoolInfo storage pool = poolInfo[_pid];
        UserInfo storage user = userInfo[_pid][_user];
        IStrategy strat = _UserStrategy(pool, user);

        (uint256 wantLockedTotal, uint256 sharesTotal) = strat.sharesInfo();
        uint256 realAmount = 0;
        if (sharesTotal > 0) {
            realAmount = user.shares.mul(wantLockedTotal).div(sharesTotal);
        }
        return (user.amount, realAmount, user.shares, user.update);
    }

    function poolInfo2(uint256 _pid)
        view
        external
        returns (address lpToken, uint256 allocPoint,
            address strat, uint256 amount, uint256 share)
    {
        PoolInfo storage pool = poolInfo[_pid];
        lpToken = address(pool.lpToken);
        allocPoint = pool.allocPoint;
        strat = pool.strat;
        if (pool.strat != address(0)) {
            (amount, share) = IStrategy(pool.strat).sharesInfo();
        }
    }

}
