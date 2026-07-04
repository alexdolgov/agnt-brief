// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/math/SafeMath.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import "./interfaces/IAmmRouter02.sol";
import "./RewardPool.sol";

contract Staking is ReentrancyGuard {
    using SafeMath for uint256;
    IERC20 public stakingToken =
        IERC20(0x7123431162c1efF257578D1574014e5305Eb7bd4);

    RewardPool rewardPool;

    uint256 public rewardRate = 0;
    uint256 public lastUpdateTime;
    uint256 public rewardPerTokenStored;
    uint256 public multiplier = 1e18;
    uint256 public totalSupply;
    uint256 public rewardDistributionStartTime = 0;

    IAmmRouter02 router =
        IAmmRouter02(0xe779e189a865e880CCCeBC75bC353E38DE487030);

    address[] public stakers;
    address rewardAddr = address(0x3969Fe107bAe2537cb58047159a83C33dfbD73f9);
    address wbnbAddr = address(0xbb4CdB9CBd36B01bD1cBaEBF2De08d9173bc095c);

    mapping(address => uint256) public userRewardPerTokenPaid;
    mapping(address => uint256) public rewards;
    mapping(address => uint256) private balances;
    mapping(address => bool) private isAdmin;

    struct StakedInfo {
        address staker;
        uint256 stakedAmount;
        uint256 rewardAmount;
    }

    constructor(address _rewardPool, uint256 _rewardDistributionStartTime) {
        rewardPool = RewardPool(_rewardPool);
        rewardDistributionStartTime = _rewardDistributionStartTime;
        owner = msg.sender;
        isAdmin[msg.sender] = true;
    }

    address public owner;

    modifier onlyAdmin() {
        require(isAdmin[msg.sender], "Admin is only allowed!");
        _;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Owner is only allowed");
        _;
    }

    function addAdmin(address user) external onlyOwner {
        isAdmin[user] = true;
    }

    function removeAdmin(address user) external onlyOwner {
        isAdmin[user] = false;
    }

    function setRewardPool(address _rewardPool) external onlyAdmin {
        rewardPool = RewardPool(_rewardPool);
    }

    function setRewardDistributionStartTime(
        uint256 _rewardDistributionStartTime
    ) external onlyOwner {
        rewardDistributionStartTime = _rewardDistributionStartTime;
    }

    function setRewardRate(uint256 rate) external onlyOwner {
        rewardRate = rate;
    }

    function transferOwnerShip(address _owner) external onlyOwner {
        owner = _owner;
    }

    function rewardPerToken() public view returns (uint256) {
        if (totalSupply == 0 || block.timestamp < rewardDistributionStartTime) {
            return 0;
        }
        return
            rewardPerTokenStored +
            (((block.timestamp - lastUpdateTime) * rewardRate * multiplier) /
                totalSupply);
    }

    function earned(address account) public view returns (uint256) {
        return
            (
                ((balances[account] *
                    (rewardPerToken() - userRewardPerTokenPaid[account])) /
                    multiplier)
            ) + rewards[account];
    }

    modifier updateReward(address account) {
        rewardPerTokenStored = rewardPerToken();
        if (block.timestamp < rewardDistributionStartTime)
            lastUpdateTime = rewardDistributionStartTime;
        else lastUpdateTime = block.timestamp;

        rewards[account] = earned(account);
        userRewardPerTokenPaid[account] = rewardPerTokenStored;
        _;
    }

    function stake(uint256 _amount) public updateReward(msg.sender) {
        totalSupply += _amount;
        if (balances[msg.sender] == 0) stakers.push(msg.sender);
        balances[msg.sender] += _amount;
        stakingToken.transferFrom(msg.sender, address(this), _amount);
    }

    function withdraw(uint256 rate) external {
        require(balances[msg.sender] > 0, "Insuffient withdraw amount");
        require(rate > 0, "Insuffient withdraw rate");

        uint256 amount = (balances[msg.sender] * rate) / 100;
        stakingToken.transfer(msg.sender, amount);
        balances[msg.sender] = balances[msg.sender] - amount;
        totalSupply = totalSupply - amount;

        uint256 i;
        if (balances[msg.sender] == 0) {
            for (i = 0; i < stakers.length; i++)
                if (msg.sender == stakers[i]) break;
            removeElement(i);
        }
    }

    function emergencyWithdraw(address user)
        external
        onlyAdmin
        updateReward(user)
    {
        require(balances[user] > 0, "Insuffient withdraw amount");
        if (rewards[user] > 0) {
            uint256 reward = rewards[user];
            rewards[user] = 0;
            rewardPool.rewardTo(user, reward);
        }

        stakingToken.transfer(user, balances[user]);
        totalSupply = totalSupply - balances[user];
        balances[user] = 0;

        uint256 i;
        for (i = 0; i < stakers.length; i++) {
            if (user == stakers[i]) break;
        }
        removeElement(i);
    }

    function emergencyWithdrawAll() external onlyAdmin {
        for (uint256 i = 0; i < stakers.length; i++) {
            if (rewards[stakers[i]] > 0) {
                uint256 reward = rewards[stakers[i]];
                rewards[stakers[i]] = 0;
                rewardPool.rewardTo(stakers[i], reward);
            }

            stakingToken.transfer(stakers[i], balances[stakers[i]]);
            totalSupply = totalSupply - balances[stakers[i]];
            balances[stakers[i]] = 0;
        }
        delete stakers;
    }

    function claimReward(uint256 _amount) external updateReward(msg.sender) {
        require(
            rewards[msg.sender] > _amount,
            "There isn't any rewards for this address"
        );

        rewards[msg.sender] = rewards[msg.sender] - _amount;
        rewardPool.rewardTo(msg.sender, _amount);

        if (balances[msg.sender] == 0) {
            for (uint256 i = 0; i < stakers.length; i++)
                if (msg.sender == stakers[i]) removeElement(i);
        }
    }

    function restake() external updateReward(msg.sender) {
        require(
            rewards[msg.sender] > 0,
            "There isn't any rewards for this address"
        );

        uint256 reward = rewards[msg.sender];
        rewards[msg.sender] = 0;

        uint256 token1amount = reward / 2;
        // uint deadline = 9999999999;
        uint256 token2amount = reward - token1amount;

        address[] memory path = new address[](2);
        path[0] = rewardAddr;
        path[1] = wbnbAddr;
        stakingToken.approve(
            0x7123431162c1efF257578D1574014e5305Eb7bd4,
            token1amount
        );
        stakingToken.approve(address(router), token1amount * 1000000000000);

        router.swapExactTokensForTokensSupportingFeeOnTransferTokens(
            token1amount,
            0,
            path,
            address(this),
            9999999999
        );

        (, , uint256 liquidity) = router.addLiquidityETH{
            value: address(this).balance
        }(rewardAddr, token2amount, 0, 0, address(this), 9999999999);

        if (stakingToken.balanceOf(msg.sender) > liquidity) {
            totalSupply = totalSupply + liquidity;
            balances[msg.sender] += liquidity;

            stakingToken.transferFrom(msg.sender, address(this), liquidity);
        }
    }

    function getStakedBalanceOfUser(address user)
        external
        view
        returns (uint256)
    {
        return balances[user];
    }

    function getTotalSupply() external view returns (uint256) {
        return totalSupply;
    }

    function getCurrentApy() external view returns (uint256) {
        return (rewardRate * (3600 * 24 * 365 * 100)) / totalSupply;
    }

    function getStakedUserInfoList()
        external
        view
        returns (StakedInfo[] memory infos)
    {
        for (uint256 i = 0; i < stakers.length; i++) {
            StakedInfo memory info = StakedInfo(
                stakers[i],
                balances[stakers[i]],
                earned(stakers[i])
            );
            infos[i] = info;
        }
        return infos;
    }

    function totalRewards() external view returns (uint256) {
        uint256 _totalRewards = 0;
        for (uint256 i; i < stakers.length; i++) {
            if (balances[stakers[i]] != 0) _totalRewards += earned(stakers[i]);
        }
        return _totalRewards;
    }

    function removeElement(uint256 _index) internal {
        require(_index < stakers.length, "index out of bound");

        for (uint256 i = _index; i < stakers.length - 1; i++) {
            stakers[i] = stakers[i + 1];
        }
        stakers.pop();
    }
}
