// SPDX-License-Identifier: MIT
// Version @2021-06
/*
 █████╗ ██████╗ ███████╗██████╗  ██████╗  ██████╗██╗  ██╗███████╗████████╗
██╔══██╗██╔══██╗██╔════╝██╔══██╗██╔═══██╗██╔════╝██║ ██╔╝██╔════╝╚══██╔══╝
███████║██████╔╝█████╗  ██████╔╝██║   ██║██║     █████╔╝ █████╗     ██║   
██╔══██║██╔═══╝ ██╔══╝  ██╔══██╗██║   ██║██║     ██╔═██╗ ██╔══╝     ██║   
██║  ██║██║     ███████╗██║  ██║╚██████╔╝╚██████╗██║  ██╗███████╗   ██║   
╚═╝  ╚═╝╚═╝     ╚══════╝╚═╝  ╚═╝ ╚═════╝  ╚═════╝╚═╝  ╚═╝╚══════╝   ╚═╝  
 */
pragma solidity >=0.6.12;
pragma experimental ABIEncoderV2;

import "@openzeppelin/contracts/math/Math.sol";
import "@openzeppelin/contracts/math/SafeMath.sol";
import "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import "@openzeppelin/contracts/utils/ReentrancyGuard.sol";

import "../libraries/SafeBEP20.sol";
import "../libraries/RewardsDistributionRecipient.sol";
import "../interfaces/IStrategy.sol";
import "../interfaces/IMasterApe.sol";
import "../interfaces/ISpaceMinter.sol";
import "../interfaces/ISpaceChef.sol";
import "./VaultController.sol";
import {PoolConstant} from "../libraries/PoolConstant.sol";

contract VaultSpaceBNB is VaultController, IStrategy, RewardsDistributionRecipient, ReentrancyGuard {
    using SafeMath for uint256;
    using SafeBEP20 for IBEP20;

    address private constant BANANA = 0x603c7f932ED1fc6575303D8Fb018fDCBb0f39a95;
    address private constant SPACE_BNB = 0xd0F82498051067E154d1dcd3d88fA95063949D7e;
    uint256 public constant override pid = 65;
    IMasterApe private constant APE_MASTER_CHEF = IMasterApe(0x5c8D727b265DBAfaba67E050f2f739cAeEB4A6F9);
    PoolConstant.PoolTypes public constant override poolType = PoolConstant.PoolTypes.SpaceBNB;

    IStrategy private _rewardsToken;

    uint256 public periodFinish;
    uint256 public rewardRate;
    uint256 public rewardsDuration;
    uint256 public lastUpdateTime;
    uint256 public rewardPerTokenStored;

    mapping(address => uint256) public userRewardPerTokenPaid;
    mapping(address => uint256) public rewards;

    uint256 private _totalSupply;
    mapping(address => uint256) private _balances;

    mapping(address => uint256) private _depositedAt;

    modifier updateReward(address account) {
        rewardPerTokenStored = rewardPerToken();
        lastUpdateTime = lastTimeRewardApplicable();
        if (account != address(0)) {
            rewards[account] = earned(account);
            userRewardPerTokenPaid[account] = rewardPerTokenStored;
        }
        _;
    }

    /* ========== EVENTS ========== */

    event RewardAdded(uint256 reward);
    event RewardsDurationUpdated(uint256 newDuration);

    constructor(address maximizer, address _spaceToken) public VaultController(IBEP20(SPACE_BNB), _spaceToken) {
        _stakingToken.safeApprove(address(APE_MASTER_CHEF), uint256(-1));

        rewardsDuration = 4 hours;
        rewardsDistribution = msg.sender;
        setRewardsToken(maximizer);
    }

    function totalSupply() external view override returns (uint256) {
        return _totalSupply;
    }

    function balance() external view override returns (uint256) {
        return _totalSupply;
    }

    function balanceOf(address account) external view override returns (uint256) {
        return _balances[account];
    }

    function sharesOf(address account) external view override returns (uint256) {
        return _balances[account];
    }

    function principalOf(address account) external view override returns (uint256) {
        return _balances[account];
    }

    function depositedAt(address account) external view override returns (uint256) {
        return _depositedAt[account];
    }

    function withdrawableBalanceOf(address account) public view override returns (uint256) {
        return _balances[account];
    }

    function rewardsToken() external view override returns (address) {
        return address(_rewardsToken);
    }

    function priceShare() external view override returns (uint256) {
        return 1e18;
    }

    function lastTimeRewardApplicable() public view returns (uint256) {
        return Math.min(block.timestamp, periodFinish);
    }

    function rewardPerToken() public view returns (uint256) {
        if (_totalSupply == 0) {
            return rewardPerTokenStored;
        }
        return rewardPerTokenStored.add(lastTimeRewardApplicable().sub(lastUpdateTime).mul(rewardRate).mul(1e18).div(_totalSupply));
    }

    function earned(address account) public view override returns (uint256) {
        return _balances[account].mul(rewardPerToken().sub(userRewardPerTokenPaid[account])).div(1e18).add(rewards[account]);
    }

    function getRewardForDuration() external view returns (uint256) {
        return rewardRate.mul(rewardsDuration);
    }

    function pidAttached() public pure returns (bool) {
        return pid != 0;
    }

    function deposit(uint256 amount) public override {
        _deposit(amount, msg.sender);
    }

    function depositAll() external override {
        deposit(_stakingToken.balanceOf(msg.sender));
    }

    function withdraw(uint256 amount) public override nonReentrant updateReward(msg.sender) {
        require(amount > 0, "VaultSpaceBNB: amount must be greater than zero");
        _spaceChef.notifyWithdrawn(msg.sender, amount);

        _totalSupply = _totalSupply.sub(amount);
        _balances[msg.sender] = _balances[msg.sender].sub(amount);

        uint256 bananaHarvested = _withdrawStakingToken(amount);

        uint256 withdrawalFee;
        if (canMint()) {
            uint256 depositTimestamp = _depositedAt[msg.sender];
            withdrawalFee = _minter.withdrawalFee(amount, depositTimestamp);
            if (withdrawalFee > 0) {
                _minter.mintFor(address(_stakingToken), withdrawalFee, 0, msg.sender, depositTimestamp);
                amount = amount.sub(withdrawalFee);
            }
        }

        _stakingToken.safeTransfer(msg.sender, amount);
        emit Withdrawn(msg.sender, amount, withdrawalFee);

        _harvest(bananaHarvested);
    }

    function withdrawAll() external override {
        uint256 _withdraw = withdrawableBalanceOf(msg.sender);
        if (_withdraw > 0) {
            withdraw(_withdraw);
        }
        getReward();
    }

    function getReward() public override nonReentrant updateReward(msg.sender) {
        uint256 reward = rewards[msg.sender];
        if (reward > 0) {
            rewards[msg.sender] = 0;
            uint256 before = IBEP20(BANANA).balanceOf(address(this));
            _rewardsToken.withdraw(reward);
            uint256 bananaBalance = IBEP20(BANANA).balanceOf(address(this)).sub(before);
            uint256 performanceFee = 0;

            if (canMint()) {
                performanceFee = _minter.performanceFee(bananaBalance);
                _minter.mintFor(BANANA, 0, performanceFee, msg.sender, _depositedAt[msg.sender]);
            }

            IBEP20(BANANA).safeTransfer(msg.sender, bananaBalance.sub(performanceFee));
            emit ProfitPaid(msg.sender, bananaBalance, performanceFee);
        }

        uint256 spaceAmount = _spaceChef.safeSpaceTransfer(msg.sender);
        emit SpacePaid(msg.sender, spaceAmount, 0);
    }

    function harvest() public override {
        uint256 bananaHarvested = _withdrawStakingToken(0);
        _harvest(bananaHarvested);
    }

    function setMinter(address newMinter) public override onlyOwner {
        VaultController.setMinter(newMinter);
        if (newMinter != address(0)) {
            IBEP20(BANANA).safeApprove(newMinter, 0);
            IBEP20(BANANA).safeApprove(newMinter, uint256(-1));
        }
    }

    function setSpaceChef(ISpaceChef _chef) public override onlyOwner {
        require(address(_spaceChef) == address(0), "VaultSpaceBNB: setSpaceChef only once");
        VaultController.setSpaceChef(ISpaceChef(_chef));
    }

    function setRewardsToken(address newRewardsToken) public onlyOwner {
        require(address(_rewardsToken) == address(0), "VaultSpaceBNB: rewards token already set");

        _rewardsToken = IStrategy(newRewardsToken);
        IBEP20(BANANA).safeApprove(newRewardsToken, 0);
        IBEP20(BANANA).safeApprove(newRewardsToken, uint256(-1));
    }

    function notifyRewardAmount(uint256 reward) public override onlyRewardsDistribution {
        _notifyRewardAmount(reward);
    }

    function setRewardsDuration(uint256 _rewardsDuration) external onlyOwner {
        require(periodFinish == 0 || block.timestamp > periodFinish, "VaultSpaceBNB: reward duration can only be updated after the period ends");
        rewardsDuration = _rewardsDuration;
        emit RewardsDurationUpdated(rewardsDuration);
    }

    function _withdrawStakingToken(uint256 amount) private returns (uint256 bananaHarvested) {
        uint256 before = IBEP20(BANANA).balanceOf(address(this));
        APE_MASTER_CHEF.withdraw(pid, amount);
        bananaHarvested = IBEP20(BANANA).balanceOf(address(this)).sub(before);
    }

    function _depositStakingToken(uint256 amount) private returns (uint256 bananaHarvested) {
        uint256 before = IBEP20(BANANA).balanceOf(address(this));
        APE_MASTER_CHEF.deposit(pid, amount);
        bananaHarvested = IBEP20(BANANA).balanceOf(address(this)).sub(before);
    }

    function _deposit(uint256 amount, address _to) private nonReentrant notPaused updateReward(_to) {
        require(amount > 0, "VaultSpaceBNB: amount must be greater than zero");
        _totalSupply = _totalSupply.add(amount);
        _balances[_to] = _balances[_to].add(amount);
        _depositedAt[_to] = block.timestamp;
        _stakingToken.safeTransferFrom(msg.sender, address(this), amount);

        _spaceChef.notifyDeposited(_to, amount);
        uint256 bananaHarvested = _depositStakingToken(amount);

        emit Deposited(_to, amount);
        _harvest(bananaHarvested);
    }

    function _harvest(uint256 bananaAmount) private {
        uint256 _before = _rewardsToken.sharesOf(address(this));
        _rewardsToken.deposit(bananaAmount);
        uint256 amount = _rewardsToken.sharesOf(address(this)).sub(_before);
        if (amount > 0) {
            _notifyRewardAmount(amount);
            emit Harvested(amount);
        }
    }

    function _notifyRewardAmount(uint256 reward) private updateReward(address(0)) {
        if (block.timestamp >= periodFinish) {
            rewardRate = reward.div(rewardsDuration);
        } else {
            uint256 remaining = periodFinish.sub(block.timestamp);
            uint256 leftover = remaining.mul(rewardRate);
            rewardRate = reward.add(leftover).div(rewardsDuration);
        }

        uint256 _balance = _rewardsToken.sharesOf(address(this));
        require(rewardRate <= _balance.div(rewardsDuration), "VaultSpaceBNB: reward rate must be in the right range");

        lastUpdateTime = block.timestamp;
        periodFinish = block.timestamp.add(rewardsDuration);
        emit RewardAdded(reward);
    }

    function recoverToken(address tokenAddress, uint256 tokenAmount) external override onlyOwner {
        require(tokenAddress != address(_stakingToken), "VaultSpaceBNB: cannot recover underlying token");

        IBEP20(tokenAddress).safeTransfer(owner(), tokenAmount);
        emit Recovered(tokenAddress, tokenAmount);
    }
}
