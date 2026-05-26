// SPDX-License-Identifier: MIT

pragma solidity >=0.8.0 <0.9.0;

import './TradeRewardStorage.sol';
import '../library/ETHAndERC20.sol';

contract TradeRewardImplementation is TradeRewardStorage {

    using ETHAndERC20 for address;

    event UpdateTraderReward(address account, uint256 cumulativeReward, uint256 cumulativeClaimed);

    event UpdateRefererReward(address account, uint256 cumulativeReward, uint256 cumulativeClaimed);

    event ClaimTraderReward(address account, uint256 cumulativeClaimed, uint256 amount);

    event ClaimRefererReward(address account, uint256 cumulativeClaimed, uint256 amount);

    address public immutable tokenB0;

    modifier _onlyOperator_() {
        require(msg.sender == operator, 'Only operator');
        _;
    }

    constructor (address tokenB0_) {
        tokenB0 = tokenB0_;
    }

    //================================================================================

    function getTraderReward(address account) external view returns (RewardInfo memory) {
        return _traderRewards[account];
    }

    function getRefererReward(address account) external view returns (RewardInfo memory) {
        return _refererRewards[account];
    }

    function getOperator() external view returns (address) {
        return operator;
    }

    //================================================================================

    function setOperator(address operator_) external _onlyAdmin_ {
        operator = operator_;
    }

    function emergencyWithdraw(address token, address to) external _onlyAdmin_ {
        token.transferOut(to, token.balanceOfThis());
    }

    //================================================================================

    function updateTraderReward(address[] memory accounts, uint256[] memory cumulativeRewards) external _onlyOperator_ {
        require(accounts.length == cumulativeRewards.length, 'Invalid input length');
        for (uint256 i = 0; i < accounts.length; i++) {
            address account = accounts[i];
            uint256 cumulativeReward = cumulativeRewards[i];
            require(cumulativeReward >= _traderRewards[account].cumulativeReward, 'Cumulative reward cannot decrease');
            _traderRewards[account].cumulativeReward = cumulativeReward;
            emit UpdateTraderReward(account, cumulativeReward, _traderRewards[account].cumulativeClaimed);
        }
    }

    function updateRefererReward(address[] memory accounts, uint256[] memory cumulativeRewards) external _onlyOperator_ {
        require(accounts.length == cumulativeRewards.length, 'Invalid input length');
        for (uint256 i = 0; i < accounts.length; i++) {
            address account = accounts[i];
            uint256 cumulativeReward = cumulativeRewards[i];
            require(cumulativeReward >= _refererRewards[account].cumulativeReward, 'Cumulative reward cannot decrease');
            _refererRewards[account].cumulativeReward = cumulativeReward;
            emit UpdateRefererReward(account, cumulativeReward, _refererRewards[account].cumulativeClaimed);
        }
    }

    //================================================================================

    function claimTraderReward(address account) external {
        RewardInfo storage reward = _traderRewards[account];
        uint256 amount = reward.cumulativeReward - reward.cumulativeClaimed;
        require(amount > 0, 'No reward to claim');
        require(tokenB0.balanceOfThis() >= amount, 'Insufficient tokenB0');
        reward.cumulativeClaimed = reward.cumulativeReward;
        tokenB0.transferOut(account, amount);
        emit ClaimTraderReward(account, reward.cumulativeClaimed, amount);
    }

    function claimRefererReward(address account) external {
        RewardInfo storage reward = _refererRewards[account];
        uint256 amount = reward.cumulativeReward - reward.cumulativeClaimed;
        require(amount > 0, 'No reward to claim');
        require(tokenB0.balanceOfThis() >= amount, 'Insufficient tokenB0');
        reward.cumulativeClaimed = reward.cumulativeReward;
        tokenB0.transferOut(account, amount);
        emit ClaimRefererReward(account, reward.cumulativeClaimed, amount);
    }

}
