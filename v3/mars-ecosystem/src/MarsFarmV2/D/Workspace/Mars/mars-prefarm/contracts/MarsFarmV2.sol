// SPDX-License-Identifier: MIT

pragma solidity 0.6.12;

import "@openzeppelin/contracts/token/ERC20/SafeERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import "@openzeppelin/contracts/utils/Address.sol";
import "./interfaces/IVestingMaster.sol";
import "./interfaces/IMarsFarmV2.sol";
import "./interfaces/IStrategy.sol";
import "./interfaces/IWETH.sol";
import "./refs/CoreRef.sol";

contract MarsFarmV2 is IMarsFarmV2, ReentrancyGuard, CoreRef {
    using SafeMath for uint256;
    using SafeERC20 for IERC20;

    address public immutable override WBNB;
    address public immutable override tokenAddress;
    uint256 public immutable override startBlock;
    uint256 public override tokenPerBlock;
    uint256 public override endBlock;

    PoolInfo[] public override poolInfo;
    mapping(uint256 => mapping(address => UserInfo)) public override userInfo;
    uint256 public override totalAllocPoint = 0;

    IVestingMaster public override vestingMaster;
    mapping(IERC20 => bool) public override poolExistence;

    event Deposit(address indexed user, uint256 indexed pid, uint256 amount);
    event Withdraw(address indexed user, uint256 indexed pid, uint256 amount);
    event EmergencyWithdraw(
        address indexed user,
        uint256 indexed pid,
        uint256 amount
    );
    event UpdateEmissionRate(address indexed user, uint256 tokenPerBlock);
    event UpdateEndBlock(address indexed user, uint256 endBlock);
    event UpdateVestingMaster(address indexed user, address vestingMaster);

    constructor(
        address _core,
        address _vestingMaster,
        address _token,
        address _WBNB,
        uint256 _tokenPerBlock,
        uint256 _startBlock,
        uint256 _endBlock
    ) public CoreRef(_core) {
        require(
            _token != address(0),
            "MarsFarmV2::constructor: Zero address"
        );
        require(
            _startBlock < _endBlock,
            "MarsFarmV2::constructor: End less than start"
        );
        vestingMaster = IVestingMaster(_vestingMaster);
        tokenAddress = _token;
        WBNB = _WBNB;
        tokenPerBlock = _tokenPerBlock;
        startBlock = _startBlock;
        endBlock = _endBlock;
    }

    modifier nonDuplicated(IERC20 _want) {
        require(
            !poolExistence[_want],
            "MarsFarmV2::nonDuplicated: Duplicated"
        );
        _;
    }

    modifier validatePid(uint256 _pid) {
        require(
            _pid < poolInfo.length,
            "MarsFarmV2::validatePid: Not exist"
        );
        _;
    }

    function setVestingMaster(address _vestingMaster) public override onlyGovernor {
        vestingMaster = IVestingMaster(_vestingMaster);
        emit UpdateVestingMaster(msg.sender, _vestingMaster);
    }

    function poolLength() external view override returns (uint256) {
        return poolInfo.length;
    }

    function add(
        uint256 _allocPoint,
        IERC20 _want,
        bool _withUpdate,
        address _strat,
        bool _locked
    )
        public
        override
        onlyGuardianOrGovernor
        nonDuplicated(_want)
    {
        require(
            block.number < endBlock,
            "MarsFarmV2::add: Exceed endblock"
        );

        if (_withUpdate) {
            massUpdatePools();
        }
        uint256 lastRewardBlock =
            block.number > startBlock ? block.number : startBlock;
        totalAllocPoint = totalAllocPoint.add(_allocPoint);
        poolInfo.push(
            PoolInfo({
                want: _want,
                allocPoint: _allocPoint,
                lastRewardBlock: lastRewardBlock,
                accTokenPerShare: 0,
                strat: _strat,
                locked: _locked
            })
        );
        poolExistence[_want] = true;
    }

    function set(
        uint256 _pid,
        uint256 _allocPoint,
        bool _withUpdate,
        bool _locked
    )
        public
        override
        onlyGuardianOrGovernor
        validatePid(_pid)
    {
        if (_withUpdate) {
            massUpdatePools();
        }
        totalAllocPoint = totalAllocPoint.sub(poolInfo[_pid].allocPoint).add(
            _allocPoint
        );
        poolInfo[_pid].allocPoint = _allocPoint;
        poolInfo[_pid].locked = _locked;
    }

    function getMultiplier(uint256 _from, uint256 _to)
        public
        override
        pure
        returns (uint256)
    {
        return _to.sub(_from);
    }

    function getTokenReward(uint256 _pid)
        internal
        view
        returns (uint256 tokenReward)
    {
        PoolInfo storage pool = poolInfo[_pid];
        require(
            pool.lastRewardBlock < block.number,
            "MarsFarmV2::getTokenReward: Must less than block number"
        );
        uint256 multiplier = getMultiplier(
            pool.lastRewardBlock,
            block.number >= endBlock ? endBlock : block.number
        );
        if (totalAllocPoint > 0) {
            tokenReward = multiplier.mul(tokenPerBlock).mul(pool.allocPoint).div(
                totalAllocPoint
            );
        }
    }

    function pendingToken(uint256 _pid, address _user)
        public
        override
        view
        validatePid(_pid)
        returns (uint256)
    {
        PoolInfo storage pool = poolInfo[_pid];
        UserInfo storage user = userInfo[_pid][_user];
        uint256 accTokenPerShare = pool.accTokenPerShare;
        uint256 sharesTotal = IStrategy(pool.strat).sharesTotal();
        if (block.number > pool.lastRewardBlock && sharesTotal != 0) {
            uint256 tokenReward = getTokenReward(_pid);
            accTokenPerShare = accTokenPerShare.add(
                tokenReward.mul(1e12).div(sharesTotal)
            );
        }
        return user.shares.mul(accTokenPerShare).div(1e12).sub(user.rewardDebt);
    }

    function stakedWantTokens(uint256 _pid, address _user)
        public
        override
        view
        returns (uint256)
    {
        return userInfo[_pid][_user].shares;
    }

    function massUpdatePools() public override {
        uint256 length = poolInfo.length;
        for (uint256 pid = 0; pid < length; ++pid) {
            updatePool(pid);
        }
    }

    function updatePool(uint256 _pid) public override validatePid(_pid) {
        PoolInfo storage pool = poolInfo[_pid];
        if (block.number <= pool.lastRewardBlock) {
            return;
        }
        if (pool.lastRewardBlock >= endBlock) {
            return;
        }
        uint256 lastRewardBlock = block.number >= endBlock ? endBlock : block.number;
        uint256 sharesTotal = IStrategy(pool.strat).sharesTotal();
        if (sharesTotal == 0 || pool.allocPoint == 0) {
            pool.lastRewardBlock = lastRewardBlock;
            return;
        }
        uint256 tokenReward = getTokenReward(_pid);
        pool.accTokenPerShare = pool.accTokenPerShare.add(
            tokenReward.mul(1e12).div(sharesTotal)
        );
        pool.lastRewardBlock = lastRewardBlock;
    }

    function deposit(uint256 _pid, uint256 _wantAmt)
        public
        override
    {
        _deposit(_pid, _wantAmt, false);
    }

    function depositBNB(uint256 _pid, uint256 _wantAmt)
        public
        payable
        override
    {
        require(msg.value == _wantAmt, "MarsFarmV2::depositBNB: Amount do not match msg.value");
        _deposit(_pid, _wantAmt, true);
    }

    function _deposit(
        uint256 _pid,
        uint256 _wantAmt,
        bool _isBNB
    )
        internal
        validatePid(_pid)
        nonReentrant
    {
        PoolInfo storage pool = poolInfo[_pid];
        require(
            !_isBNB || address(pool.want) == WBNB,
            "MarsFarmV2::_deposit: LP not WBNB"
        );

        UserInfo storage user = userInfo[_pid][msg.sender];
        updatePool(_pid);
        if (user.shares > 0) {
            uint256 pending =
                user.shares.mul(pool.accTokenPerShare).div(1e12).sub(
                    user.rewardDebt
                );
            if (pending > 0) {
                uint256 locked;
                if (pool.locked && address(vestingMaster) != address(0)) {
                    locked = pending
                        .div(vestingMaster.lockedPeriodAmount().add(1))
                        .mul(vestingMaster.lockedPeriodAmount());
                }
                safeTokenTransfer(msg.sender, pending.sub(locked));
                if (locked > 0) {
                    uint256 actualAmount = safeTokenTransfer(
                        address(vestingMaster),
                        locked
                    );
                    vestingMaster.lock(msg.sender, actualAmount);
                }
            }
        }
        if (_wantAmt > 0) {
            if (_isBNB) {
                IWETH(WBNB).deposit{value: _wantAmt}();
            } else {
                pool.want.safeTransferFrom(
                    address(msg.sender),
                    address(this),
                    _wantAmt
                );
            }

            pool.want.safeIncreaseAllowance(pool.strat, _wantAmt);
            uint256 sharesAdded = IStrategy(pool.strat).deposit(_wantAmt);
            user.shares = user.shares.add(sharesAdded);
        }
        user.rewardDebt = user.shares.mul(pool.accTokenPerShare).div(1e12);
        emit Deposit(msg.sender, _pid, _wantAmt);
    }

    function withdraw(uint256 _pid, uint256 _wantAmt)
        public
        override
    {
        _withdraw(_pid, _wantAmt, false);
    }

    function withdrawBNB(uint256 _pid, uint256 _wantAmt)
        public
        override
    {
        _withdraw(_pid, _wantAmt, true);
    }

    function _withdraw(
        uint256 _pid,
        uint256 _wantAmt,
        bool _isBNB
    )
        internal
        validatePid(_pid)
        nonReentrant
    {
        PoolInfo storage pool = poolInfo[_pid];
        require(
            !_isBNB || address(pool.want) == WBNB,
            "MarsFarmV2::_withdraw: LP not WBNB"
        );

        UserInfo storage user = userInfo[_pid][msg.sender];
        updatePool(_pid);
        if (user.shares > 0) {
            uint256 pending =
                user.shares.mul(pool.accTokenPerShare).div(1e12).sub(
                    user.rewardDebt
                );
            if (pending > 0) {
                uint256 locked;
                if (pool.locked && address(vestingMaster) != address(0)) {
                    locked = pending
                        .div(vestingMaster.lockedPeriodAmount().add(1))
                        .mul(vestingMaster.lockedPeriodAmount());
                }
                safeTokenTransfer(msg.sender, pending.sub(locked));
                if (locked > 0) {
                    uint256 actualAmount = safeTokenTransfer(
                        address(vestingMaster),
                        locked
                    );
                    vestingMaster.lock(msg.sender, actualAmount);
                }
            }
        }

        if (_wantAmt > user.shares) {
            _wantAmt = user.shares;
        }
        if (_wantAmt > 0) {
            uint256 realAmt = IStrategy(pool.strat).withdraw(_wantAmt);
            user.shares = user.shares.sub(_wantAmt);

            if (_isBNB) {
                IWETH(WBNB).withdraw(realAmt);
                Address.sendValue(payable(msg.sender), realAmt);
            } else {
                pool.want.safeTransfer(address(msg.sender), realAmt);
            }
        }
        user.rewardDebt = user.shares.mul(pool.accTokenPerShare).div(1e12);
        emit Withdraw(msg.sender, _pid, _wantAmt);
    }

    function withdrawAll(uint256 _pid) public override {
        withdraw(_pid, uint256(-1));
    }

    function emergencyWithdraw(uint256 _pid)
        public
        override
    {
        _emergencyWithdraw(_pid, false);
    }

    function emergencyWithdrawBNB(uint256 _pid)
        public
        override
    {
        _emergencyWithdraw(_pid, true);
    }

    function _emergencyWithdraw(uint256 _pid, bool _isBNB)
        internal
        validatePid(_pid)
        nonReentrant
    {
        PoolInfo storage pool = poolInfo[_pid];
        require(
            !_isBNB || address(pool.want) == WBNB,
            "MarsFarmV2::_emergencyWithdraw: LP not WBNB"
        );

        UserInfo storage user = userInfo[_pid][msg.sender];
        uint256 realAmt = IStrategy(pool.strat).withdraw(user.shares);
        if (realAmt > user.shares) {
            realAmt = user.shares;
        }
        user.shares = 0;
        user.rewardDebt = 0;
        if (_isBNB) {
            IWETH(WBNB).withdraw(realAmt);
            Address.sendValue(payable(msg.sender), realAmt);
        } else {
           pool.want.safeTransfer(address(msg.sender), realAmt);
        }
        emit EmergencyWithdraw(msg.sender, _pid, realAmt);
    }

    function safeTokenTransfer(address _to, uint256 _amount)
        internal
        returns (uint256)
    {
        uint256 balance = IERC20(tokenAddress).balanceOf(address(this));
        uint256 amount;
        if (_amount > balance) {
            amount = balance;
        } else {
            amount = _amount;
        }

        require(
            IERC20(tokenAddress).transfer(_to, amount),
            "MarsFarmV2::safeTokenTransfer: Transfer failed"
        );
        return amount;
    }

    function updateTokenPerBlock(uint256 _tokenPerBlock)
        public
        override
        onlyGuardianOrGovernor
    {
        massUpdatePools();
        tokenPerBlock = _tokenPerBlock;
        emit UpdateEmissionRate(msg.sender, _tokenPerBlock);
    }

    function updateEndBlock(uint256 _endBlock)
        public
        override
        onlyGuardianOrGovernor
    {
        require(
            _endBlock > startBlock && _endBlock >= block.number,
            "MarsFarmV2::updateEndBlock: Less"
        );
        for (uint256 pid = 0; pid < poolInfo.length; ++pid) {
            require(
                _endBlock > poolInfo[pid].lastRewardBlock,
                "MarsFarmV2::updateEndBlock: Less"
            );
        }
        massUpdatePools();
        endBlock = _endBlock;
        emit UpdateEndBlock(msg.sender, _endBlock);
    }

    function sharesTotal(uint256 _pid)
        public
        override
        view
        validatePid(_pid)
        returns (uint256)
    {
        return IStrategy(poolInfo[_pid].strat).sharesTotal();
    }

    receive() external payable {}
}
