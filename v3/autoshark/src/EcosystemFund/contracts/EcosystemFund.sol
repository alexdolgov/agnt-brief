// SPDX-License-Identifier: MIT

pragma solidity 0.6.12;

import "@pancakeswap/pancake-swap-lib/contracts/token/BEP20/SafeBEP20.sol";
import "@pancakeswap/pancake-swap-lib/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import "./library/Whitelist.sol";
import "./interfaces/IERC721.sol";

interface IFinsToken {
    function mint(address _to, uint256 _amount) external returns (bool);
    function balanceOf(address account) external view returns (uint256);
    function transfer(address recipient, uint256 amount) external returns (bool);
}

contract EcosystemFund is Ownable, ReentrancyGuard, Whitelist {
    using SafeMath for uint256;
    using SafeBEP20 for IBEP20;

    // Bonus muliplier for early fins makers.
    uint256 public constant BONUS_MULTIPLIER = 1;
    address public constant JAWS = 0xdD97AB35e3C0820215bc85a395e13671d84CCBa2;

    // Info of each user.
    struct UserInfo {
        uint256 amount;         // How many LP tokens the user has provided.
        uint256 rewardDebt;     // Reward debt. See explanation below.
        //
        // We do some fancy math here. Basically, any point in time, the amount of FINS
        // entitled to a user but is pending to be distributed is:
        //
        //   pending reward = (user.amount * pool.accFinsPerShare) - user.rewardDebt
        //
        // Whenever a user deposits or withdraws LP tokens to a pool. Here's what happens:
        //   1. The pool's `accFinsPerShare` (and `lastRewardBlock`) gets updated.
        //   2. User receives the pending reward sent to his/her address.
        //   3. User's `amount` gets updated.
        //   4. User's `rewardDebt` gets updated.
    }

    // Info of each pool.
    struct PoolInfo {
        IBEP20 lpToken;           // Address of LP token contract.
        uint256 allocPoint;       // How many allocation points assigned to this pool. FINS to distribute per block.
        uint256 lastRewardBlock;  // Last block number that FINS distribution occurs.
        uint256 accFinsPerShare;   // Accumulated FINS per share, times 1e18. See below.
    }

    // The FINS TOKEN!
    IFinsToken public fins;
    // FINS tokens created per block.
    uint256 public finsPerBlock;

    // Info of each pool.
    PoolInfo[] public poolInfo;
    // Info of each user that stakes LP tokens.
    mapping(uint256 => mapping(address => UserInfo)) public userInfo;
    // Total allocation points. Must be the sum of all allocation points in all pools.
    uint256 public totalAllocPoint;
    // The block number when FINS mining starts.
    uint256 public startBlock;

    mapping(IBEP20 => bool) public poolExistence;

    bool public whitelistAll;

    event Deposit(address indexed user, uint256 indexed pid, uint256 amount);
    event Withdraw(address indexed user, uint256 indexed pid, uint256 amount);

    constructor(
        IFinsToken _fins,
        uint256 _finsPerBlock,
        uint256 _startBlock
    ) public {
        fins = _fins;
        finsPerBlock = _finsPerBlock;
        startBlock = _startBlock;
        totalAllocPoint = 0;
        whitelistAll = false;

        add(100, IBEP20(address(JAWS)), false);
    }

    /* ========== Modifiers ========== */

    modifier nonDuplicated(IBEP20 _lpToken) {
        require(poolExistence[_lpToken] == false, "nonDuplicated: duplicated");
        _;
    }

    /* ========== View Functions ========== */

    function poolLength() external view returns (uint256) {
        return poolInfo.length;
    }

    // Return reward multiplier over the given _from to _to block.
    function getMultiplier(uint256 _from, uint256 _to) public pure returns (uint256) {
        return _to.sub(_from).mul(BONUS_MULTIPLIER);
    }

    // View function to see pending FINS on frontend.
    function pendingFins(uint256 _pid, address _user) external view returns (uint256) {
        PoolInfo storage pool = poolInfo[_pid];
        UserInfo storage user = userInfo[_pid][_user];
        uint256 accFinsPerShare = pool.accFinsPerShare;
        uint256 lpSupply = pool.lpToken.balanceOf(address(this));
        if (block.number > pool.lastRewardBlock && lpSupply != 0) {
            uint256 multiplier = getMultiplier(pool.lastRewardBlock, block.number);
            uint256 finsReward = multiplier.mul(finsPerBlock).mul(pool.allocPoint).div(totalAllocPoint);
            accFinsPerShare = accFinsPerShare.add(finsReward.mul(1e18).div(lpSupply));
        }
        return user.amount.mul(accFinsPerShare).div(1e18).sub(user.rewardDebt);
    }

    /* ========== Owner Functions ========== */

    // Add a new lp to the pool. Can only be called by the owner.
    function add(uint256 _allocPoint, IBEP20 _lpToken, bool _withUpdate) internal nonDuplicated(_lpToken) {
        if (_withUpdate) {
            massUpdatePools();
        }
        uint256 lastRewardBlock = block.number > startBlock ? block.number : startBlock;
        totalAllocPoint = totalAllocPoint.add(_allocPoint);
        poolExistence[_lpToken] = true;
        poolInfo.push(PoolInfo({
            lpToken : _lpToken,
            allocPoint : _allocPoint,
            lastRewardBlock : lastRewardBlock,
            accFinsPerShare : 0
        }));
    }

    /* ========== External Functions ========== */

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
        uint256 lpSupply = pool.lpToken.balanceOf(address(this));
        if (lpSupply == 0 || pool.allocPoint == 0) {
            pool.lastRewardBlock = block.number;
            return;
        }
        uint256 multiplier = getMultiplier(pool.lastRewardBlock, block.number);
        uint256 finsReward = multiplier.mul(finsPerBlock).mul(pool.allocPoint).div(totalAllocPoint);
        fins.mint(address(this), finsReward);

        pool.accFinsPerShare = pool.accFinsPerShare.add(finsReward.mul(1e18).div(lpSupply));
        pool.lastRewardBlock = block.number;
    }

    // Deposit LP tokens to MasterHealer for FINS allocation.
    function deposit(uint256 _pid, uint256 _amount) public nonReentrant onlyOwner {
        PoolInfo storage pool = poolInfo[_pid];
        UserInfo storage user = userInfo[_pid][msg.sender];
        updatePool(_pid);
        if (user.amount > 0) {
            uint256 pending = user.amount.mul(pool.accFinsPerShare).div(1e18).sub(user.rewardDebt);
            if (pending > 0) {
                safeFinsTransfer(msg.sender, pending);
            }
        }
        if (_amount > 0) {
            pool.lpToken.safeTransferFrom(address(msg.sender), address(this), _amount);
            user.amount = user.amount.add(_amount);
        }
        user.rewardDebt = user.amount.mul(pool.accFinsPerShare).div(1e18);
        emit Deposit(msg.sender, _pid, _amount);
    }

    // Withdraw LP tokens from MasterHealer.
    function withdraw(uint256 _pid, uint256 _amount) public nonReentrant onlyOwner {
        PoolInfo storage pool = poolInfo[_pid];
        UserInfo storage user = userInfo[_pid][msg.sender];
        require(user.amount >= _amount, "withdraw: not good");
        updatePool(_pid);
        uint256 pending = user.amount.mul(pool.accFinsPerShare).div(1e18).sub(user.rewardDebt);
        if (pending > 0) {
            safeFinsTransfer(msg.sender, pending);
        }
        if (_amount > 0) {
            user.amount = user.amount.sub(_amount);
            pool.lpToken.safeTransfer(address(msg.sender), _amount);
        }
        user.rewardDebt = user.amount.mul(pool.accFinsPerShare).div(1e18);
        emit Withdraw(msg.sender, _pid, _amount);
    }

    // Safe FINS transfer function, just in case if rounding error causes pool to not have enough FINS.
    function safeFinsTransfer(address _to, uint256 _amount) internal {
        uint256 finsBal = fins.balanceOf(address(this));
        bool transferSuccess = false;
        if (_amount > finsBal) {
            transferSuccess = fins.transfer(_to, finsBal);
        } else {
            transferSuccess = fins.transfer(_to, _amount);
        }
        require(transferSuccess, "safeFinsTransfer: transfer failed");
    }
}