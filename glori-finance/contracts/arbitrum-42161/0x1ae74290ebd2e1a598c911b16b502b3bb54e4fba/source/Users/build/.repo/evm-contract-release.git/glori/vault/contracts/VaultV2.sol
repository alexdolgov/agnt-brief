// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/utils/math/SafeMath.sol";

import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/security/ReentrancyGuardUpgradeable.sol";

import "./interfaces/IWETH.sol";
import "./AntiFlashload.sol";
import "./IStrategy.sol";
import "./WETHelper.sol";
import "./SafePermit.sol";

interface IXTokenPermit {
    function mint(address _to, uint256 _amount) external;
    function burn(address _to, uint256 _amount) external;
}

contract VaultV2 is OwnableUpgradeable, ReentrancyGuardUpgradeable, AntiFlashload {
    using SafeMath for uint256;
    using SafeERC20 for IERC20;

    // Info of each user.
    struct UserInfoV2 {
        uint256 amount;
        uint256 shares;
        uint256 rewardDebt; // Reward debt. See explanation below.

        // We do some fancy math here. Basically, any point in time, the amount of Sushi
        // entitled to a user but is pending to be distributed is:
        //
        //   amount = user.shares / sharesTotal * wantLockedTotal
        //   pending reward = (amount * pool.accSushiPerShare) - user.rewardDebt
        //
        // Whenever a user deposits or withdraws want tokens to a pool. Here's what happens:
        //   1. The pool's `accSushiPerShare` (and `lastRewardTime`) gets updated.
        //   2. User receives the pending reward sent to his/her address.
        //   3. User's `amount` gets updated.
        //   4. User's `rewardDebt` gets updated.
    }

    struct PoolInfo {
        IERC20 lpToken; // Address of the want token.
        uint256 allocPoint; // How many allocation points assigned to this pool. Sushi to distribute per block.
        uint256 lastRewardTime;
        uint256 accSushiPerShare;
        uint256 amount;
        uint256 reserve;
        IXTokenPermit xlpToken; // minter
        IStrategy strat; // strategy
    }

    address public sushi;
    uint256 public sushiPerSec;
    uint256 public startTime;
    uint256 public bonusEndTime;
    address public devaddr;
    address public WETH;
    // ETH Helper for the transfer, stateless.
    WETHelper public wethelper;

    PoolInfo[] public poolInfoV2; // Info of each pool.
    mapping(uint256 => mapping(address => UserInfoV2)) public userInfoV2; // Info of each user that stakes LP tokens.
    uint256 public totalAllocPoint = 0; // Total allocation points. Must be the sum of all allocation points in all pools.

    event Deposit(address indexed user, uint256 indexed pid, uint256 amount, uint256 shares);
    event Withdraw(address indexed user, uint256 indexed pid, uint256 amount, uint256 shares);

    function initialize(
        address _sushi,
        address _devaddr,
        address _weth,
        uint256 _sushiPerSec,
        uint256 _startTime,
        uint256 _bonusEndTime
    ) public initializer {
        OwnableUpgradeable.__Ownable_init();
        ReentrancyGuardUpgradeable.__ReentrancyGuard_init();
        AntiFlashload.__Flashload_init(1);

        sushi = _sushi;
        devaddr = _devaddr;
        WETH = _weth;
        sushiPerSec = _sushiPerSec;
        startTime = _startTime;
        bonusEndTime = _bonusEndTime;
        wethelper = new WETHelper();
    }

    modifier onlyGov() {
        require(msg.sender == owner() || msg.sender == devaddr, "!Gov");
        _;
    }

    receive() external payable {
        assert(msg.sender == WETH);
    }

    function poolLength() external view returns (uint256) {
        return poolInfoV2.length;
    }

    // Add a new lp to the pool. Can only be called by the owner.
    function add(
        uint256 _allocPoint,
        address _want,
        bool _withUpdate,
        address _xlpToken,
        IStrategy _strat
    ) public onlyGov {
        if (_withUpdate) {
            massUpdatePools();
        }
        uint256 lastRewardTime = block.timestamp > startTime ? block.timestamp : startTime;
        totalAllocPoint = totalAllocPoint.add(_allocPoint);
        poolInfoV2.push(
            PoolInfo({
                lpToken: IERC20(_want),
                allocPoint: _allocPoint,
                lastRewardTime: lastRewardTime,
                accSushiPerShare: 0,
                amount:0,
                reserve:0,
                xlpToken: IXTokenPermit(_xlpToken),
                strat: _strat
            })
        );
    }

    // Update the given pool's Impulse allocation point. Can only be called by the owner.
    function set(
        uint256 _pid,
        uint256 _allocPoint,
        bool _withUpdate
    ) public onlyGov {
        if (_withUpdate) {
            massUpdatePools();
        }
        totalAllocPoint = totalAllocPoint.sub(poolInfoV2[_pid].allocPoint).add(
            _allocPoint
        );
        poolInfoV2[_pid].allocPoint = _allocPoint;
    }

    // Return reward multiplier over the given _from to _to block.
    function getMultiplier(uint256 _from, uint256 _to) public pure returns (uint256) {
        return _to.sub(_from);
    }

    function pendingToken(uint256 _pid, address _user)
        external
        view
        returns (uint256 pending, address[] memory bonusTokenAddresses, uint256[] memory pendingBonusRewards)
    {
        PoolInfo storage pool = poolInfoV2[_pid];
        UserInfoV2 storage user = userInfoV2[_pid][_user];
        uint256 accSushiPerShare = pool.accSushiPerShare;
        uint256 sharesTotal = pool.strat.sharesTotal();
        if (block.timestamp > pool.lastRewardTime && sharesTotal != 0) {
            uint256 multiplier = getMultiplier(pool.lastRewardTime, block.timestamp);
            uint256 sushiReward =
                multiplier.mul(sushiPerSec).mul(pool.allocPoint).div(
                    totalAllocPoint
                );
            accSushiPerShare = accSushiPerShare.add(
                sushiReward.mul(1e12).div(sharesTotal)
            );
        }

        pending = user.shares.mul(accSushiPerShare).div(1e12).sub(user.rewardDebt);
        (bonusTokenAddresses, pendingBonusRewards) = pool.strat.pendingToken(_user);
    }

    function harvest(PoolInfo storage pool, UserInfoV2 storage user) internal returns (uint256 pending) {
        if (user.shares > 0) {
            pending = user.shares.mul(pool.accSushiPerShare).div(1e12).sub(
                    user.rewardDebt
                );
            if (pending > 0) {
                safeSushiTransfer(msg.sender, pending);
            }
        }
    }

    // Update reward variables for all pools. Be careful of gas spending!
    function massUpdatePools() public {
        uint256 length = poolInfoV2.length;
        for (uint256 pid = 0; pid < length; ++pid) {
            updatePool(pid);
        }
    }

    // Update reward variables of the given pool to be up-to-date.
    function updatePool(uint256 _pid) public {
        PoolInfo storage pool = poolInfoV2[_pid];
        if (block.timestamp <= pool.lastRewardTime) {
            return;
        }
        uint256 sharesTotal = pool.strat.sharesTotal();
        if (sharesTotal == 0) {
            pool.lastRewardTime = block.timestamp;
            return;
        }
        uint256 multiplier = getMultiplier(pool.lastRewardTime, block.timestamp);
        if (multiplier <= 0) {
            return;
        }
        uint256 sushiReward =
            multiplier.mul(sushiPerSec).mul(pool.allocPoint).div(
                totalAllocPoint
            );

        pool.accSushiPerShare = pool.accSushiPerShare.add(
            sushiReward.mul(1e12).div(sharesTotal)
        );
        pool.lastRewardTime = block.timestamp;
    }

    // Want tokens moved from user -> Sushi Farm (Impulse allocation) -> Strat (compounding)
    function deposit(uint256 _pid, uint256 _wantAmt)
        public
        payable
        nonReentrant
        enterFlashload(_pid)
    {
        updatePool(_pid);
        PoolInfo storage pool = poolInfoV2[_pid];
        UserInfoV2 storage user = userInfoV2[_pid][msg.sender];
		harvest(pool, user);

        if(_wantAmt > 0) {
            pool.lpToken.safeTransferFrom(msg.sender, address(this), _wantAmt);
        }
        if (msg.value > 0) {
            IWETH(WETH).deposit{value: msg.value}();
        }
        if (address(pool.lpToken) == WETH) {
            _wantAmt = _wantAmt.add(msg.value);
        }

        uint256 sharesAdded;
        if (_wantAmt > 0) {
            pool.lpToken.safeIncreaseAllowance(address(pool.strat), _wantAmt);
            sharesAdded = pool.strat.deposit(msg.sender, _wantAmt);
            pool.xlpToken.mint(msg.sender, sharesAdded);

            user.shares = user.shares.add(sharesAdded);
            user.amount = user.amount.add(_wantAmt);
            pool.amount = pool.amount.add(_wantAmt);
		}

        user.rewardDebt = user.shares.mul(pool.accSushiPerShare).div(1e12);
        // transfer the earn token if have
        pool.strat.onReward(msg.sender, user.shares);

        emit Deposit(msg.sender, _pid, _wantAmt, sharesAdded);
    }

    function depositWithPermit(uint256 _pid, uint256 _wantAmt, bytes memory signature) external payable{
        PoolInfo storage pool = poolInfoV2[_pid];
        SafePermit.permit(address(pool.lpToken), msg.sender, signature);
        deposit(_pid, _wantAmt);
    }

    // Withdraw LP tokens from MasterChef.
    function withdraw(uint256 _pid, uint256 _wantAmt)
        public
        nonReentrant
        leaveFlashload(_pid)
    {
        updatePool(_pid);
        PoolInfo storage pool = poolInfoV2[_pid];
        UserInfoV2 storage user = userInfoV2[_pid][msg.sender];

        (uint256 wantLockedTotal, uint256 sharesTotal) = pool.strat.sharesInfo();

        require(user.shares > 0, "user.shares is 0");
        require(sharesTotal > 0, "sharesTotal is 0");

        // Withdraw pending Sushi
		harvest(pool, user);

        // Withdraw want tokens
        uint256 amount = user.shares.mul(wantLockedTotal).div(sharesTotal);
        require(_wantAmt <= amount, "withdraw: not good");
        if (_wantAmt > amount) {
            _wantAmt = amount;
        }
        uint256 sharesRemoved;
        if (_wantAmt > 0) {
            sharesRemoved = pool.strat.withdraw(msg.sender, _wantAmt);

            // set shares to zero once _wantAmt == amount (means withdraw all of token)
            if (sharesRemoved > user.shares || _wantAmt == amount) {
                user.shares = 0;
            } else {
                user.shares = user.shares.sub(sharesRemoved);
            }

            uint256 wantBal = IERC20(pool.lpToken).balanceOf(address(this));
            if (wantBal < _wantAmt) {
                _wantAmt = wantBal;
            }
            if (user.amount > _wantAmt && user.shares > 0) {
				user.amount = user.amount.sub(_wantAmt);
                pool.amount = pool.amount.sub(_wantAmt);
            } else {
                pool.amount = pool.amount.sub(user.amount);
				user.amount = 0;
            }

            pool.xlpToken.burn(msg.sender, sharesRemoved);
            if (address(pool.lpToken) == WETH) {
                withdrawEth(address(msg.sender), _wantAmt, false);
            } else {
                pool.lpToken.safeTransfer(address(msg.sender), _wantAmt);
            }
		}

        user.rewardDebt = user.shares.mul(pool.accSushiPerShare).div(1e12);
        // transfer the earn token if have
        pool.strat.onReward(msg.sender, user.shares);

        emit Withdraw(msg.sender, _pid, _wantAmt, sharesRemoved);
    }

    function withdrawAll(uint256 _pid) external
    {
        withdraw(_pid, type(uint256).max);
    }

    // Safe Sushi transfer function, just in case if rounding error causes pool to not have enough
    function safeSushiTransfer(address _to, uint256 _amt) internal {
        uint256 bal = IERC20(sushi).balanceOf(address(this));
        if (_amt > bal) {
            IERC20(sushi).transfer(_to, bal);
        } else {
            IERC20(sushi).transfer(_to, _amt);
        }
    }
    function withdrawEth(address _to, uint256 _amount, bool _isWeth) internal {
        bool isInProxy = true;
        if (_isWeth) {
            IERC20(WETH).safeTransfer(_to, _amount);
        } else if (isInProxy) {
            IERC20(WETH).safeTransfer(address(wethelper), _amount);
            wethelper.withdraw(WETH, _to, _amount);
        } else {
            IWETH(WETH).withdraw(_amount);
            (bool success,) = _to.call{value:_amount}(new bytes(0));
            require(success, '!WETHelper: ETH_TRANSFER_FAILED');
        }
    }

    // Only update before start of farm
    function updateStartTime(uint256 _startTime) external onlyOwner {
        startTime = _startTime;
    }
    function updateEndTime(uint256 _endTime) external onlyOwner {
        bonusEndTime = _endTime;
    }
    function setSushiPerBlk(uint256 _sushiPerSec) public onlyOwner {
        sushiPerSec = _sushiPerSec;
    }

    function userInfo(uint256 _pid, address _user)
        view
        external
        returns (uint256 amount, uint256 shares, uint256 readAmount, uint256 rewardDebt)
    {
        PoolInfo storage pool = poolInfoV2[_pid];
        UserInfoV2 storage user = userInfoV2[_pid][_user];

        (uint256 wantLockedTotal, uint256 sharesTotal) = pool.strat.sharesInfo();
        uint256 realAmount = 0;
        if (sharesTotal > 0) {
            realAmount = user.shares.mul(wantLockedTotal).div(sharesTotal);
        }
        return (user.amount, user.shares, realAmount, user.rewardDebt);
    }

    function poolInfo(uint256 _pid)
        view
        external
        returns (address lpToken, uint256 allocPoint,
            address xlpToken, address strat, uint256 amount, uint256 share)
    {
        PoolInfo storage pool = poolInfoV2[_pid];
        lpToken = address(pool.lpToken);
        allocPoint = pool.allocPoint;
        strat = address(pool.strat);
        xlpToken = address(pool.xlpToken);

        (amount, share) = pool.strat.sharesInfo();
    }
}
