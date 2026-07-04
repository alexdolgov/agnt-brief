

pragma solidity ^0.6.0;


import "@openzeppelin/contracts-ethereum-package/contracts/utils/ReentrancyGuard.sol";
import "@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/SafeERC20.sol";
import "@openzeppelin/contracts-ethereum-package/contracts/access/Ownable.sol";
import "@openzeppelin/contracts-ethereum-package/contracts/utils/Pausable.sol";
import "@openzeppelin/contracts-ethereum-package/contracts/math/Math.sol";

library SafeMathExt {
    function add128(uint128 a, uint128 b) internal pure returns (uint128) {
        uint128 c = a + b;
        require(c >= a, "uint128: addition overflow");

        return c;
    }

    function sub128(uint128 a, uint128 b) internal pure returns (uint128) {
        require(b <= a, "uint128: subtraction overflow");
        uint128 c = a - b;

        return c;
    }

    function add64(uint64 a, uint64 b) internal pure returns (uint64) {
        uint64 c = a + b;
        require(c >= a, "uint64: addition overflow");

        return c;
    }

    function sub64(uint64 a, uint64 b) internal pure returns (uint64) {
        require(b <= a, "uint64: subtraction overflow");
        uint64 c = a - b;

        return c;
    }

    function safe128(uint256 a) internal pure returns(uint128) {
        require(a < 0x0100000000000000000000000000000000, "uint128: number overflow");
        return uint128(a);
    }

    function safe64(uint256 a) internal pure returns(uint64) {
        require(a < 0x010000000000000000, "uint64: number overflow");
        return uint64(a);
    }

    function safe32(uint256 a) internal pure returns(uint32) {
        require(a < 0x0100000000, "uint32: number overflow");
        return uint32(a);
    }

    function safe16(uint256 a) internal pure returns(uint16) {
        require(a < 0x010000, "uint32: number overflow");
        return uint16(a);
    }
}

pragma solidity ^0.6.0;

contract LPTokenWrapper {

    using SafeMath for uint256;
    using SafeERC20 for IERC20;

    struct UserInfo {
        uint64  gracePeriod; // timestamp of that users can receive the staked LP/Token without deducting the transcation fee
        uint64  lastDepositBlock;       // the blocknumber of the user's last deposit
    }

    IERC20 public stakeToken;
    address public feeAddress;
    bool public withdrawFee;
    mapping(address => UserInfo) public userInfo; // Info of each user that stakes LP tokens.

    uint256 private _totalSupply;
    mapping(address => uint256) private _balances;
    uint256 public depositFeeRate; // x/10000

    function totalSupply() public view returns (uint256) {
        return _totalSupply;
    }

    function balanceOf(address account) public view returns (uint256) {
        return _balances[account];
    }

    function stake(uint256 amount) public virtual {
        UserInfo storage user = userInfo[msg.sender];

        stakeToken.safeTransferFrom(msg.sender, address(this), amount);

        uint256 depositFee = amount.mul(depositFeeRate).div(10000);
        if(depositFee > 0 && feeAddress != address(0)){
            stakeToken.safeTransfer(feeAddress, depositFee);
            amount = amount.sub(depositFee);
        }

        _totalSupply = _totalSupply.add(amount);
        _balances[msg.sender] = _balances[msg.sender].add(amount);
        
        user.gracePeriod = SafeMathExt.safe64(_calcGracePeriod(user.gracePeriod, _balances[msg.sender], amount));
        user.lastDepositBlock = SafeMathExt.safe64(block.number);
    }

    function withdraw(uint256 amount) public virtual {
        UserInfo storage user = userInfo[msg.sender];

        _totalSupply = _totalSupply.sub(amount);
        _balances[msg.sender] = _balances[msg.sender].sub(amount);

        if(withdrawFee && feeAddress != address(0)) {
            uint256 feeRate = _calcFeeRateByGracePeriod(uint256(user.gracePeriod));
            if(feeRate > 0){
                uint256 feeAmount = amount.mul(feeRate).div(10000);
                amount = amount.sub(feeAmount);
                stakeToken.safeTransfer(feeAddress, feeAmount);
            }
        }

        stakeToken.safeTransfer(msg.sender, amount);

        // If user withdraws all the LPs, then gracePeriod is cleared
        if (_balances[msg.sender] == 0) {
            user.gracePeriod = 0;
        }
    }

    function _calcGracePeriod(uint256 gracePeriod, uint256 shareNew, uint256 shareAdd) internal view returns(uint256) {
        uint256 blockTime = block.timestamp;
        if (gracePeriod == 0) {
            // solium-disable-next-line
            return blockTime.add(180 days);
        }
        uint256 depositSec;
        // solium-disable-next-line
        if (blockTime >= gracePeriod) {
            depositSec = 180 days;
            return blockTime.add(depositSec.mul(shareAdd).div(shareNew));
        } else {
            // solium-disable-next-line
            depositSec = uint256(180 days).sub(gracePeriod.sub(blockTime));
            return gracePeriod.add(depositSec.mul(shareAdd).div(shareNew));
        }
    }

    function _calcFeeRateByGracePeriod(uint256 gracePeriod) internal view returns(uint256) {
        // solium-disable-next-line
        if (block.timestamp >= gracePeriod) {
            return 0;
        }
        // solium-disable-next-line
        uint256 leftSec = gracePeriod.sub(block.timestamp);

        if (leftSec < 90 days) {
            return 10;      // 0.1%
        } else if (leftSec < 150 days) {
            return 20;      // 0.2%
        } else if (leftSec < 166 days) {
            return 30;      // 0.3%
        } else if (leftSec < 173 days) {
            return 40;      // 0.4%
        } else {
            return 50;      // 0.5%
        }
    }
}

contract SingleRewards is LPTokenWrapper, PausableUpgradeSafe, OwnableUpgradeSafe  {
    IERC20 public rewardToken;
    uint256 public constant DURATION = 90 days;

    uint256 public periodFinish;
    uint256 public rewardRate;
    uint256 public lastUpdateTime;
    uint256 public rewardPerTokenStored;
    mapping(address => bool) rewardDistributions;
    mapping(address => uint256) public userRewardPerTokenPaid;
    mapping(address => uint256) public rewards;
    uint256 public rewardsDuration;

    event RewardAdded(uint256 reward);
    event Staked(address indexed user, uint256 amount);
    event Withdrawn(address indexed user, uint256 amount);
    event RewardPaid(address indexed user, uint256 reward);
    event SetRewardDistribution(address indexed user, bool enable);

    modifier onlyRewardDistribution() {
        require(
            rewardDistributions[_msgSender()],
            "Caller is not reward distribution"
        );
        _;
    }

    function setRewardDistribution(address _rewardDistribution, bool _enable)
        external
        onlyOwner
    {
        rewardDistributions[_rewardDistribution] = _enable;
        emit SetRewardDistribution(_rewardDistribution, _enable);
    }

    function initialize(IERC20 _stakeToken, IERC20 _rewardToken, address _feeAddress, uint256 _depositFeeRate, uint256 _rewardsDuration) public initializer {

        OwnableUpgradeSafe.__Ownable_init();
        PausableUpgradeSafe.__Pausable_init();

        rewardToken = _rewardToken;
        stakeToken = _stakeToken;
        depositFeeRate = _depositFeeRate;

        withdrawFee = true;
        feeAddress = _feeAddress;
        periodFinish = 0;
        rewardRate = 0;
        rewardsDuration = _rewardsDuration;
    }
    
    modifier updateReward(address account) {
        rewardPerTokenStored = rewardPerToken();
        lastUpdateTime = lastTimeRewardApplicable();
        if (account != address(0)) {
            rewards[account] = earned(account);
            userRewardPerTokenPaid[account] = rewardPerTokenStored;
        }
        _;
    }

    function lastTimeRewardApplicable() public view returns (uint256) {
        return Math.min(block.timestamp, periodFinish);
    }

    function rewardPerToken() public view returns (uint256) {
        if (totalSupply() == 0) {
            return rewardPerTokenStored;
        }
        return
            rewardPerTokenStored.add(
                lastTimeRewardApplicable()
                    .sub(lastUpdateTime)
                    .mul(rewardRate)
                    .mul(1e30)
                    .div(totalSupply())
            );
    }

    function earned(address account) public view returns (uint256) {
        return
            balanceOf(account)
                .mul(rewardPerToken().sub(userRewardPerTokenPaid[account]))
                .div(1e30)
                .add(rewards[account]);
    }

    // stake visibility is public as overriding LPTokenWrapper's stake() function
    function stake(uint256 amount) public whenNotPaused override updateReward(msg.sender) {
        require(amount > 0, "Cannot stake 0");
        
        if(isContract(msg.sender)){
        //Disable Contract.
        return;
    }
        super.stake(amount);
        emit Staked(msg.sender, amount);
    }

    function withdraw(uint256 amount) public override updateReward(msg.sender) {
        require(amount > 0, "Cannot withdraw 0");
        super.withdraw(amount);
        emit Withdrawn(msg.sender, amount);
    }

    function exit() whenNotPaused external {
        withdraw(balanceOf(msg.sender));
        getReward();
    }

    function getReward() public whenNotPaused updateReward(msg.sender) {
        uint256 reward = earned(msg.sender);
        if (reward > 0) {
            rewards[msg.sender] = 0;
            rewardToken.safeTransfer(msg.sender, reward);
            emit RewardPaid(msg.sender, reward);
        }
    }

    function getRewardForDuration() external view returns (uint256) {
        return rewardRate.mul(rewardsDuration);
    }

    function setRewardsDuration(uint256 _rewardsDuration) external onlyOwner {
        // require(periodFinish == 0 || block.timestamp > periodFinish, "period");
        rewardsDuration = _rewardsDuration;
    }

    function notifyRewardAmount(uint256 reward)
        external
        onlyRewardDistribution
        updateReward(address(0))
    {
        if (block.timestamp >= periodFinish) {
            rewardRate = reward.div(rewardsDuration);
        } else {
            uint256 remaining = periodFinish.sub(block.timestamp);
            uint256 leftover = remaining.mul(rewardRate);
            rewardRate = reward.add(leftover).div(rewardsDuration);
        }
        lastUpdateTime = block.timestamp;
        periodFinish = block.timestamp.add(rewardsDuration);
        emit RewardAdded(reward);
    }

    function pause() external onlyOwner whenNotPaused {
        _pause();
    }

    /**
     * @dev Unpauses the token if paused. Can be controlled only by the minter.
     */
    function unpause() external onlyOwner whenPaused {
        _unpause();
    }

    function setWithdrawFeeEnable(bool _enable) external onlyOwner {
        withdrawFee = _enable;
    }

    function setFeeAddress(address _feeAddress) external onlyOwner {
        feeAddress = _feeAddress;
    }

    function isContract(address account) internal view returns (bool) {
      // According to EIP-1052, 0x0 is the value returned for not-yet created accounts
      // and 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 is returned
      // for accounts without code, i.e. `keccak256('')`
      bytes32 codehash;
      bytes32 accountHash = 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470;
      // solhint-disable-next-line no-inline-assembly
      assembly { codehash := extcodehash(account) }
      return (codehash != accountHash && codehash != 0x0);
    }

    function setDepositFeeRate(uint256 _rate) external onlyOwner {
        require(_rate <= 10000);
        depositFeeRate = _rate;
    }
}

