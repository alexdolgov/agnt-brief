// SPDX-License-Identifier: MIT

pragma solidity >=0.6.6;

import "./interfaces/IERC20.sol";
import './interfaces/IWETH.sol';
import './libraries/SafeMath.sol';
import './modules/ShackConfigable.sol';
import "./modules/ReentrancyGuard.sol";

interface IRewardToken {
    function mint(address to, uint value) external returns (bool);
}

interface IDemaxLP {
    function mintReward() external returns (uint256 amount);
    function queryReward() external view returns (uint256);
    function shareToken() external view returns (address);
}

// DemaxShackFarm is the master of xBURGER. He can make xBURGER and he is a fair guy.
//
// Note that it's ownable and the owner wields tremendous power. The ownership
// will be transferred to a governance smart contract once xBURGER is sufficiently
// distributed and the community can show to govern itself.
//
// Have fun reading it. Hopefully it's bug-free. God bless.
contract DemaxShackFarm is ShackConfigable, ReentrancyGuard {
    using SafeMath for uint256;

    // Info of each user.
    struct UserInfo {
        uint256 amount;         // How many LP tokens the user has provided.
        uint256 rewardDebt;     // Reward debt. See explanation below.
        uint256 reward2Debt;    // Reward2 debt. See explanation below.
        //
        // We do some fancy math here. Basically, any point in time, the amount of RewardTokens
        // entitled to a user but is pending to be distributed is:
        //
        //   pending reward = (user.amount * pool.accRewardPerShare) - user.rewardDebt
        //
        // Whenever a user deposits or withdraws LP tokens to a pool. Here's what happens:
        //   1. The pool's `accRewardPerShare` (and `lastRewardBlock`) gets updated.
        //   2. User receives the pending reward sent to his/her address.
        //   3. User's `amount` gets updated.
        //   4. User's `rewardDebt` gets updated.
        //   5. User's `reward2Debt` gets updated.
    }

    // Info of each pool.
    struct PoolInfo {
        address depositToken;           // Address of LP token contract.
        uint256 allocPoint;       // How many allocation points assigned to this pool. RewardTokens to distribute per block.
        uint256 lastRewardBlock;  // Last block number that RewardTokens distribution occurs.
        uint256 accRewardPerShare;   // Accumulated RewardTokens per share, times 1e18. See below.
        uint256 accReward2PerShare;   // Accumulated RewardToken2s per share, times 1e18. See below.
        uint256 depositTokenSupply;
        uint16 depositFeeBP;      // Deposit fee in basis points
        uint16 tokenType;
        bool isReward2;
    }

    uint256 version = 1;
    address public weth;

    // The reward TOKEN!
    address public rewardToken;
    // Dev address.
    address public devaddr;
    // reward tokens created per block.
    uint256 public mintPerBlock;
    // Bonus muliplier for early rewardToken makers.
    uint256 public constant BONUS_MULTIPLIER = 1;
    // Deposit Fee address
    address public feeAddress;

    // Info of each pool.
    PoolInfo[] public poolInfo;
    // Info of each user that stakes LP tokens.
    mapping(uint256 => mapping(address => UserInfo)) public userInfo;
    // Total allocation points. Must be the sum of all allocation points in all pools.
    uint256 public totalAllocPoint = 0;
    // The block number when reward token mining starts.
    uint256 public startBlock;

    uint256 public devRewardRate;
    uint256 public rewardTotal;
    uint256 public reward2Total;

    event Deposit(address indexed user, uint256 indexed pid, uint256 amount, uint256 fee);
    event Withdraw(address indexed user, uint256 indexed pid, uint256 amount);
    event EmergencyWithdraw(address indexed user, uint256 indexed pid, uint256 amount);
    event SetFeeAddress(address indexed user, address indexed newAddress);
    event SetDevAddress(address indexed user, address indexed newAddress);
    event UpdateEmissionRate(address indexed user, uint256 mintPerBlock);

    constructor(
        address _weth,
        address _rewardToken,
        address _devaddr,
        address _feeAddress,
        uint256 _mintPerBlock,
        uint256 _startBlock
    ) public {
        weth = _weth;
        rewardToken = _rewardToken;
        devaddr = _devaddr;
        feeAddress = _feeAddress;
        mintPerBlock = _mintPerBlock;
        startBlock = _startBlock;
    }

    function poolLength() external view returns (uint256) {
        return poolInfo.length;
    }

    mapping(address => bool) public poolExistence;
    
    modifier nonDuplicated(address _depositToken) {
        require(poolExistence[_depositToken] == false, "nonDuplicated: duplicated");
        _;
    }

    receive() external payable {
        assert(msg.sender == weth);
    }

    // Add a new lp to the pool. Can only be called by the owner.
    // _tokenType 1: token, 2: demax LP, 3: third LP
    function add(uint256 _allocPoint, address _depositToken, uint16 _depositFeeBP, bool _withUpdate, uint16 _tokenType, bool _isReward2) public onlyOwner nonDuplicated(_depositToken) {
        require(_depositFeeBP <= 10000, "add: invalid deposit fee basis points");
        if (_withUpdate) {
            massUpdatePools();
        }

        uint256 lastRewardBlock = block.number > startBlock ? block.number : startBlock;
        totalAllocPoint = totalAllocPoint.add(_allocPoint);
        poolExistence[_depositToken] = true;
        poolInfo.push(PoolInfo({
            depositToken : _depositToken,
            allocPoint : _allocPoint,
            lastRewardBlock : lastRewardBlock,
            accRewardPerShare : 0,
            accReward2PerShare : 0,
            depositTokenSupply: 0,
            depositFeeBP : _depositFeeBP,
            tokenType: _tokenType,
            isReward2: _isReward2
        }));
    }

    function batchAdd(bool _withUpdate, uint256[] memory _allocPoints, address[] memory _depositTokens, uint16[] memory _depositFeeBPs, uint16[] memory _tokenTypes, bool[] memory _isReward2s) public onlyOwner {
        require(_allocPoints.length == _depositTokens.length && _depositTokens.length == _depositFeeBPs.length, 'invalid params');
        for(uint256 i; i<_allocPoints.length; i++) {
            add(_allocPoints[i], _depositTokens[i], _depositFeeBPs[i], false, _tokenTypes[i], _isReward2s[i]);
        }
        if (_withUpdate) {
            massUpdatePools();
        }
    }

    function set(uint256 _pid, uint256 _allocPoint, uint16 _depositFeeBP, bool _withUpdate, uint16 _tokenType, bool _isReward2) public onlyAdmin {
        require(_depositFeeBP <= 10000, "set: invalid deposit fee basis points");
        if (_withUpdate) {
            massUpdatePools();
        }
        totalAllocPoint = totalAllocPoint.sub(poolInfo[_pid].allocPoint).add(_allocPoint);
        poolInfo[_pid].allocPoint = _allocPoint;
        poolInfo[_pid].depositFeeBP = _depositFeeBP;
        poolInfo[_pid].tokenType = _tokenType;
        poolInfo[_pid].isReward2 = _isReward2;
    }

    function batchSetAllocPoint(uint256[] memory _pids, uint256[] memory _allocPoints) public onlyAdmin {
        require(_pids.length == _allocPoints.length, 'invalid params');
        massUpdatePools();
        for (uint256 i; i<_pids.length; i++) {
            totalAllocPoint = totalAllocPoint.sub(poolInfo[_pids[i]].allocPoint).add(_allocPoints[i]);
            poolInfo[_pids[i]].allocPoint = _allocPoints[i];
        }
    }

    function batchSetDepositFeeBP(uint256[] memory _pids, uint16[] memory _depositFeeBPs) public onlyAdmin {
        require(_pids.length == _depositFeeBPs.length, 'invalid params');
        for (uint256 i; i<_pids.length; i++) {
            poolInfo[_pids[i]].depositFeeBP = _depositFeeBPs[i];
        }
    }

    // Return reward multiplier over the given _from to _to block.
    function getMultiplier(uint256 _from, uint256 _to) public view returns (uint256) {
        return _to.sub(_from).mul(BONUS_MULTIPLIER);
    }

    function reward2Token(uint256 _pid) public view returns (address) {
        PoolInfo memory pool = poolInfo[_pid];
        if(pool.tokenType == 2) {
            return IDemaxLP(pool.depositToken).shareToken();
        }
        return address(0);
    }

    // View function to see pending RewardTokens on frontend.
    function pendingReward(uint256 _pid, address _user) external view returns (uint256) {
        PoolInfo memory pool = poolInfo[_pid];
        UserInfo memory user = userInfo[_pid][_user];
        uint256 accRewardPerShare = pool.accRewardPerShare;
        if (block.number > pool.lastRewardBlock && pool.depositTokenSupply != 0) {
            uint256 multiplier = getMultiplier(pool.lastRewardBlock, block.number);
            uint256 reward = multiplier.mul(mintPerBlock).mul(pool.allocPoint).div(totalAllocPoint);
            accRewardPerShare = accRewardPerShare.add(reward.mul(1e18).div(pool.depositTokenSupply));
        }
        return user.amount.mul(accRewardPerShare).div(1e18).sub(user.rewardDebt);
    }

    function pendingReward2(uint256 _pid, address _user) external view returns (uint256) {
        PoolInfo memory pool = poolInfo[_pid];
        UserInfo memory user = userInfo[_pid][_user];
        uint256 accReward2PerShare = pool.accReward2PerShare;
        if (block.number > pool.lastRewardBlock && pool.depositTokenSupply != 0 && pool.isReward2 && reward2Token(_pid) != address(0)) {
            uint256 reward2 = IDemaxLP(pool.depositToken).queryReward();
            accReward2PerShare = accReward2PerShare.add(reward2.mul(1e18).div(pool.depositTokenSupply));
        }
        return user.amount.mul(accReward2PerShare).div(1e18).sub(user.reward2Debt);
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
        if (block.number <= pool.lastRewardBlock) {
            return;
        }
        if (pool.depositTokenSupply == 0 || pool.allocPoint == 0) {
            pool.lastRewardBlock = block.number;
            return;
        }
        uint256 multiplier = getMultiplier(pool.lastRewardBlock, block.number);
        uint256 reward = multiplier.mul(mintPerBlock).mul(pool.allocPoint).div(totalAllocPoint);
        if(devRewardRate > 0) {
            IRewardToken(rewardToken).mint(devaddr, reward.div(devRewardRate));
            rewardTotal = rewardTotal.add(reward.div(devRewardRate));
        }
        IRewardToken(rewardToken).mint(address(this), reward);
        rewardTotal = rewardTotal.add(reward);
        pool.accRewardPerShare = pool.accRewardPerShare.add(reward.mul(1e18).div(pool.depositTokenSupply));

        if(pool.isReward2 && reward2Token(_pid) != address(0)) {
            if(IDemaxLP(pool.depositToken).queryReward() > 0) {
                uint256 reward2 = IDemaxLP(pool.depositToken).mintReward();
                reward2Total = reward2Total.add(reward2);
                pool.accReward2PerShare = pool.accReward2PerShare.add(reward2.mul(1e18).div(pool.depositTokenSupply));
            }
        }
        
        pool.lastRewardBlock = block.number;
    }

    // Deposit LP tokens to DemaxShackFarm for reward allocation.
    function deposit(uint256 _pid, uint256 _amount) payable public nonReentrant {
        PoolInfo storage pool = poolInfo[_pid];
        UserInfo storage user = userInfo[_pid][msg.sender];
        updatePool(_pid);
        _harvest(_pid);
        uint256 depositFee;
        if(address(pool.depositToken) == weth) {
            _amount = msg.value;
        }
        if (_amount > 0) {
            if(address(pool.depositToken) == weth) {
                IWETH(weth).deposit{value: _amount}();
            } else {
                IERC20(pool.depositToken).transferFrom(address(msg.sender), address(this), _amount);
            }
            
            if (pool.depositFeeBP > 0) {
                depositFee = _amount.mul(pool.depositFeeBP).div(10000);
                IERC20(pool.depositToken).transfer(feeAddress, depositFee);
                _amount = _amount.sub(depositFee);
                user.amount = user.amount.add(_amount);
            } else {
                user.amount = user.amount.add(_amount);
            }
        }
        pool.depositTokenSupply  = pool.depositTokenSupply.add(_amount);
        user.rewardDebt = user.amount.mul(pool.accRewardPerShare).div(1e18);
        user.reward2Debt = user.amount.mul(pool.accReward2PerShare).div(1e18);
        emit Deposit(msg.sender, _pid, _amount, depositFee);
    }

    // Withdraw LP tokens from DemaxShackFarm.
    function withdraw(uint256 _pid, uint256 _amount) public nonReentrant {
        PoolInfo storage pool = poolInfo[_pid];
        UserInfo storage user = userInfo[_pid][msg.sender];
        require(user.amount >= _amount, "withdraw: not good");
        updatePool(_pid);
        _harvest(_pid);
       
        if (_amount > 0) {
            user.amount = user.amount.sub(_amount);
            pool.depositTokenSupply = pool.depositTokenSupply.sub(_amount);
            safeTransfer(pool.depositToken, msg.sender, _amount);
        }
        user.rewardDebt = user.amount.mul(pool.accRewardPerShare).div(1e18);
        user.reward2Debt = user.amount.mul(pool.accReward2PerShare).div(1e18);
        emit Withdraw(msg.sender, _pid, _amount);
    }

    function _harvest(uint256 _pid) internal returns (uint256 reward, uint256 reward2) {
        PoolInfo storage pool = poolInfo[_pid];
        UserInfo storage user = userInfo[_pid][msg.sender];
        uint256 pending = user.amount.mul(pool.accRewardPerShare).div(1e18).sub(user.rewardDebt);
        if (pending > 0) {
            reward = safeTokenTransfer(rewardToken, msg.sender, pending);
        }
        
        pending = user.amount.mul(pool.accReward2PerShare).div(1e18).sub(user.reward2Debt);
        if (pending > 0 && reward2Token(_pid) != address(0)) {
            reward2 = safeTokenTransfer(reward2Token(_pid), msg.sender, pending);
        }
        return (reward, reward2);
    }

    function harvest(uint256 _pid) public nonReentrant returns (uint256 reward, uint256 reward2) {
        PoolInfo storage pool = poolInfo[_pid];
        UserInfo storage user = userInfo[_pid][msg.sender];
        updatePool(_pid);
        (reward, reward2) = _harvest(_pid);
        user.rewardDebt = user.amount.mul(pool.accRewardPerShare).div(1e18);
        user.reward2Debt = user.amount.mul(pool.accReward2PerShare).div(1e18);
        return (reward, reward2);
    }

    // Withdraw without caring about rewards. EMERGENCY ONLY.
    function emergencyWithdraw(uint256 _pid) public nonReentrant {
        PoolInfo storage pool = poolInfo[_pid];
        UserInfo storage user = userInfo[_pid][msg.sender];
        uint256 amount = user.amount;
        user.amount = 0;
        user.rewardDebt = 0;
        user.reward2Debt = 0;
        pool.depositTokenSupply = pool.depositTokenSupply.sub(amount);
        safeTransfer(pool.depositToken, msg.sender, amount);
        emit EmergencyWithdraw(msg.sender, _pid, amount);
    }

    // Safe Token transfer function, just in case if rounding error causes pool to not have enough tokens.
    function safeTokenTransfer(address _token, address _to, uint256 _amount) internal returns(uint256) {
        uint256 tokenBal = IERC20(_token).balanceOf(address(this));
        if(_amount > 0 && tokenBal > 0) {
            if (_amount > tokenBal) {
                _amount = tokenBal;
            }
            IERC20(_token).transfer(_to, _amount);
        }
        return _amount;
    }

    function safeTransfer(address _token, address _to, uint256 _amount) internal returns(uint256) {
        if(_token == weth) {
            IWETH(weth).withdraw(_amount);
            address(uint160(_to)).transfer(_amount);
        } else {
            IERC20(_token).transfer(_to, _amount);
        }
        return _amount;
    }

    // Update dev address by the previous dev.
    function dev(address _devaddr) public {
        require(msg.sender == devaddr || msg.sender == owner, "dev: wut?");
        devaddr = _devaddr;
        emit SetDevAddress(msg.sender, _devaddr);
    }

    function setFeeAddress(address _feeAddress) public {
        require(msg.sender == feeAddress || msg.sender == owner, "setFeeAddress: FORBIDDEN");
        feeAddress = _feeAddress;
        emit SetFeeAddress(msg.sender, _feeAddress);
    }

    function setDevRewardRate(uint256 _value) public onlyOwner {
        require(_value >=0 && _value <=10, 'invalid param');
        devRewardRate = _value;
    }

    //reward has to add hidden dummy pools inorder to alter the emission, here we make it simple and transparent to all.
    function updateEmissionRate(uint256 _mintPerBlock) public onlyOwner {
        massUpdatePools();
        mintPerBlock = _mintPerBlock;
        emit UpdateEmissionRate(msg.sender, _mintPerBlock);
    }
}
