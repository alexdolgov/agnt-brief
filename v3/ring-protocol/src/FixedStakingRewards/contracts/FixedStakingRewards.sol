pragma solidity =0.6.6;

import "@openzeppelin/contracts/math/Math.sol";
import "@openzeppelin/contracts/math/SafeMath.sol";
import "@openzeppelin/contracts/token/ERC20/SafeERC20.sol";
import "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import "./interfaces/IWETH.sol";
import "./interfaces/IFewFactory.sol";
import "./interfaces/IFewWrappedToken.sol";
import "./BlastManager.sol";
import "./libraries/TransferHelper.sol";

// Inheritance
import "./interfaces/IFixedStakingRewards.sol";

contract FixedStakingRewards is IFixedStakingRewards, ReentrancyGuard, BlastManager {
    using SafeMath for uint256;
    using SafeERC20 for IERC20;

    address public immutable override WETH;
    address public immutable override fewFactory;

    /* ========== STATE VARIABLES ========== */

    address public override rewardsToken;
    address public override rewardSetter;

    uint256 public override stakingInfoCount;

    // info about rewards for a particular staking token
    struct StakingInfo {
        uint256 id;
        address stakingToken;
        uint256 rewardPerTokenPerSecond;
        uint256 totalSupply;
        uint256 periodFinish;
        mapping(address => uint256) lastUpdateTime;
        mapping(address => uint256) balances;
        mapping(address => uint256) rewards;
    }

    mapping (uint256 => StakingInfo) public stakingInfos;

    /* ========== CONSTRUCTOR ========== */

    constructor(address _WETH, address _fewFactory, address _rewardsToken) public {
        WETH = _WETH;
        fewFactory = _fewFactory;
        rewardSetter = msg.sender;
        rewardsToken = _rewardsToken;
    }

    receive() external payable {
        assert(msg.sender == WETH); // only accept ETH via fallback from the WETH contract
    }

    /* ========== VIEWS ========== */

    function rewardPerTokenPerSecond(uint256 index) external override view returns (uint256) {
        return stakingInfos[index].rewardPerTokenPerSecond;
    }

    function totalSupply(uint256 index) external override view returns (uint256) {
        return stakingInfos[index].totalSupply;
    }

    function periodFinish(uint256 index) public override view returns (uint256) {
        return stakingInfos[index].periodFinish;
    }

    function lastTimeRewardApplicable(uint256 index) public override view returns (uint256) {
        return Math.min(block.timestamp, periodFinish(index));
    }

    function lastUpdateTimeOf(uint256 index, address account) external override view returns (uint256) {
        return stakingInfos[index].lastUpdateTime[account];
    }

    function balanceOf(uint256 index, address account) external override view returns (uint256) {
        return stakingInfos[index].balances[account];
    }

    function rewardOf(uint256 index, address account) external override view returns (uint256) {
        return stakingInfos[index].rewards[account];
    }

    function earned(uint256 index, address account) public override view returns (uint256) {
        StakingInfo storage info = stakingInfos[index];
        return
            info.balances[account].mul(
                info.rewardPerTokenPerSecond
            ).mul(
                lastTimeRewardApplicable(index).sub(info.lastUpdateTime[account])
            ).div(
                1e18
            ).add(
                info.rewards[account]
            );
    }

    /* ========== MUTATIVE FUNCTIONS ========== */

    function stakeWithPermit(uint256 index, uint256 amount, uint deadline, uint8 v, bytes32 r, bytes32 s) external override nonReentrant updateReward(index, msg.sender) {
        require(amount > 0, "Cannot stake 0");
        StakingInfo storage info = stakingInfos[index];
        require(info.stakingToken != address(0), 'FixedStakingRewards::stakeWithPermit: not deployed yet');
        info.totalSupply = info.totalSupply.add(amount);
        info.balances[msg.sender] = info.balances[msg.sender].add(amount);

        // permit
        IUniswapV2ERC20(address(info.stakingToken)).permit(msg.sender, address(this), amount, deadline, v, r, s);

        IERC20(info.stakingToken).safeTransferFrom(msg.sender, address(this), amount);
        if (IFewFactory(fewFactory).getWrappedToken(info.stakingToken) == address(0)) {
            IFewFactory(fewFactory).createToken(info.stakingToken);
        }
        address fewWrappedToken = IFewFactory(fewFactory).getWrappedToken(info.stakingToken);
        IERC20(info.stakingToken).approve(fewWrappedToken, amount);
        IFewWrappedToken(fewWrappedToken).wrapTo(amount, address(this));
        emit Staked(index, info.stakingToken, msg.sender, amount);
    }

    function stake(uint256 index, uint256 amount) external override nonReentrant updateReward(index, msg.sender) {
        require(amount > 0, "Cannot stake 0");
        StakingInfo storage info = stakingInfos[index];
        require(info.stakingToken != address(0), 'FixedStakingRewards::stake: not deployed yet');
        info.totalSupply = info.totalSupply.add(amount);
        info.balances[msg.sender] = info.balances[msg.sender].add(amount);
        IERC20(info.stakingToken).safeTransferFrom(msg.sender, address(this), amount);
        if (IFewFactory(fewFactory).getWrappedToken(info.stakingToken) == address(0)) {
            IFewFactory(fewFactory).createToken(info.stakingToken);
        }
        address fewWrappedToken = IFewFactory(fewFactory).getWrappedToken(info.stakingToken);
        IERC20(info.stakingToken).approve(fewWrappedToken, amount);
        IFewWrappedToken(fewWrappedToken).wrapTo(amount, address(this));
        emit Staked(index, info.stakingToken, msg.sender, amount);
    }

    function stakeETH(uint256 index) external override payable nonReentrant updateReward(index, msg.sender) {
        uint256 amount = msg.value;
        require(amount > 0, "Cannot stake 0");
        StakingInfo storage info = stakingInfos[index];
        require(info.stakingToken != address(0), 'FixedStakingRewards::stake: not deployed yet');
        require(info.stakingToken == WETH, 'FixedStakingRewards::stake: not ETH');
        info.totalSupply = info.totalSupply.add(amount);
        info.balances[msg.sender] = info.balances[msg.sender].add(amount);
        IWETH(WETH).deposit{value: amount}();
        if (IFewFactory(fewFactory).getWrappedToken(info.stakingToken) == address(0)) {
            IFewFactory(fewFactory).createToken(info.stakingToken);
        }
        address fewWrappedToken = IFewFactory(fewFactory).getWrappedToken(info.stakingToken);
        IERC20(info.stakingToken).approve(fewWrappedToken, amount);
        IFewWrappedToken(fewWrappedToken).wrapTo(amount, address(this));
        emit Staked(index, info.stakingToken, msg.sender, amount);
    }

    function withdraw(uint256 index, uint256 amount) public override nonReentrant updateReward(index, msg.sender) {
        require(amount > 0, "Cannot withdraw 0");
        StakingInfo storage info = stakingInfos[index];
        require(info.stakingToken != address(0), 'FixedStakingRewards::withdraw: not deployed yet');
        info.totalSupply = info.totalSupply.sub(amount);
        info.balances[msg.sender] = info.balances[msg.sender].sub(amount);
        address fewWrappedToken = IFewFactory(fewFactory).getWrappedToken(info.stakingToken);
        IFewWrappedToken(fewWrappedToken).unwrapTo(amount, msg.sender);
        emit Withdrawn(index, info.stakingToken, msg.sender, amount);
    }

    function withdrawETH(uint256 index, uint256 amount) public override nonReentrant updateReward(index, msg.sender) {
        require(amount > 0, "Cannot withdraw 0");
        StakingInfo storage info = stakingInfos[index];
        require(info.stakingToken != address(0), 'FixedStakingRewards::withdraw: not deployed yet');
        require(info.stakingToken == WETH, 'FixedStakingRewards::stake: not ETH');
        info.totalSupply = info.totalSupply.sub(amount);
        info.balances[msg.sender] = info.balances[msg.sender].sub(amount);
        address fewWrappedToken = IFewFactory(fewFactory).getWrappedToken(info.stakingToken);
        IFewWrappedToken(fewWrappedToken).unwrapTo(amount, address(this));
        IWETH(WETH).withdraw(amount);
        TransferHelper.safeTransferETH(msg.sender, amount);
        emit Withdrawn(index, info.stakingToken, msg.sender, amount);
    }

    function getReward(uint256 index) public override nonReentrant updateReward(index, msg.sender) {
        StakingInfo storage info = stakingInfos[index];
        require(info.stakingToken != address(0), 'FixedStakingRewards::getReward: not deployed yet');
        uint256 reward = info.rewards[msg.sender];
        if (reward > 0) {
            info.rewards[msg.sender] = 0;
            IERC20(rewardsToken).safeTransfer(msg.sender, reward);
            emit RewardPaid(index, info.stakingToken, msg.sender, reward);
        }
    }

    function exit(uint256 index) external override {
        StakingInfo storage info = stakingInfos[index];
        require(info.stakingToken != address(0), 'FixedStakingRewards::exit: not deployed yet');
        withdraw(index, info.balances[msg.sender]);
        getReward(index);
    }

    function updateRewardFor(uint256 index, address account) external override nonReentrant updateReward(index, account) {
    }

    /* ========== RESTRICTED FUNCTIONS ========== */

    // deploy a staking reward info for the staking token
    function deploy(address stakingToken, uint256 _rewardPerTokenPerSecond, uint256 _periodFinish) external override returns(uint256) {
        require(msg.sender == rewardSetter, 'FixedStakingRewards::deploy: FORBIDDEN');
        require(_periodFinish > block.timestamp, 'FixedStakingRewards::deploy: future date required');
        require(stakingToken != address(0), 'FixedStakingRewards::deploy: invalid staking token');

        stakingInfoCount++;
        StakingInfo memory newInfo = StakingInfo({
            id: stakingInfoCount,
            stakingToken: stakingToken,
            rewardPerTokenPerSecond: _rewardPerTokenPerSecond,
            totalSupply: 0,
            periodFinish: _periodFinish
        });

        stakingInfos[newInfo.id] = newInfo;

        emit StakingCreated(stakingInfoCount, stakingToken, msg.sender, _rewardPerTokenPerSecond, _periodFinish);
        return stakingInfoCount;
    }

    function setRewardPerTokenPerSecond(uint256 index, uint256 _rewardPerTokenPerSecond) external override {
        require(msg.sender == rewardSetter, 'FixedStakingRewards::set: FORBIDDEN');
        StakingInfo storage info = stakingInfos[index];
        require(info.stakingToken != address(0), 'FixedStakingRewards::set: not deployed yet');
        info.rewardPerTokenPerSecond = _rewardPerTokenPerSecond;

        emit SetRewardPerTokenPerSecond(index, info.stakingToken, msg.sender, _rewardPerTokenPerSecond);
    }

    function setPeriodFinish(uint256 index, uint256 _periodFinish) external override {
        require(msg.sender == rewardSetter, 'FixedStakingRewards::set: FORBIDDEN');
        require(_periodFinish > block.timestamp, 'FixedStakingRewards::set: future date required');
        StakingInfo storage info = stakingInfos[index];
        require(info.stakingToken != address(0), 'FixedStakingRewards::set: not deployed yet');
        require(info.periodFinish > block.timestamp, 'FixedStakingRewards::set: period finished');
        info.periodFinish = _periodFinish;

        emit SetPeriodFinish(index, info.stakingToken, msg.sender, _periodFinish);
    }

    function setRewardSetter(address _rewardSetter) external override {
        require(_rewardSetter != address(0), 'FixedStakingRewards::set: Address 0');
        require(msg.sender == rewardSetter, 'FixedStakingRewards::set: FORBIDDEN');
        rewardSetter = _rewardSetter;

        emit SetRewardSetter(msg.sender, _rewardSetter);
    }

    /* ========== MODIFIERS ========== */

    modifier updateReward(uint256 index, address account) {
        StakingInfo storage info = stakingInfos[index];
        require(info.stakingToken != address(0), 'FixedStakingRewards::updateReward: not deployed yet');
        if (account != address(0)) {
            info.rewards[account] = earned(index, account);
            info.lastUpdateTime[account] = lastTimeRewardApplicable(index);
        }
        _;
    }

    /* ========== EVENTS ========== */

    event StakingCreated(uint256 index, address stakingToken, address indexed user, uint256 _rewardPerTokenPerSecond, uint256 _periodFinish);
    event Staked(uint256 index, address stakingToken, address indexed user, uint256 amount);
    event Withdrawn(uint256 index, address stakingToken, address indexed user, uint256 amount);
    event RewardPaid(uint256 index, address stakingToken, address indexed user, uint256 reward);
    event SetRewardPerTokenPerSecond(uint256 index, address stakingToken, address indexed user, uint256 _rewardPerTokenPerSecond);
    event SetPeriodFinish(uint256 index, address stakingToken, address indexed user, uint256 _periodFinish);
    event SetRewardSetter(address indexed rewardSetter, address _rewardSetter);
}
