// SPDX-License-Identifier: MIT
pragma solidity ^0.6.12;
pragma experimental ABIEncoderV2;

/*
    _    _  ___  _   _ _   _ ____
   | \  / |/ _ \| | | | \ | |  _ \
   | |\/| | | | | | | |  \| | | | \
   | |  | | |_| | |_| | |\  | |_| /
   |_|  |_|\___/ \___/|_| \_|____/


*
* MIT License
* ===========
*
* Copyright (c) 2021 MOUND FINANCE
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in all
* copies or substantial portions of the Software.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
* AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
* LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
* OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*/

import "@openzeppelin/contracts/math/Math.sol";
import "@pancakeswap/pancake-swap-lib/contracts/math/SafeMath.sol";

import "./library/RewardsDistributionRecipientUpgradeable.sol";
import "./library/VaultConstant.sol";

import "./interfaces/IPriceCalculator.sol";
import "./interfaces/IRewardPool.sol";

contract VaultMNDMirror is RewardsDistributionRecipientUpgradeable {
    using SafeMath for uint;

    /* ========== CONSTANT ========== */

    IRewardPool public constant VAULT_MND = IRewardPool(0x7a7f11ef54fD7ce28808ec3F0C4178aFDfc91493);

    /* ========== STATE VARIABLES ========== */

    uint public periodFinish;
    uint public rewardsDuration;
    uint public lastUpdateTime;
    uint public rewardRate;

    address public keeper;
    uint public rewardPerTokenStored;
    mapping(address => uint) public balances;
    mapping(address => uint) public rewards;
    mapping(address => uint) public userRewardPerTokenPaid;
    mapping(address => uint) public syncedAt;

    /* ========== EVENTS ========== */

    event RewardAdded(uint amount);

    modifier onlyVaultMND() {
        require(msg.sender == address(VAULT_MND), "VaultMNDMirror: only vault mnd");
        _;
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

    modifier onlyKeeper() {
        require(msg.sender == keeper || msg.sender == owner(), "VaultController: caller is not the owner or keeper");
        _;
    }

    /* ========== INITIALIZER ========== */

    function initialize() external initializer {
        __RewardsDistributionRecipient_init();

        rewardsDuration = 30 days;
    }

    /* ========== VIEWS ========== */

    function totalSupply() public view returns (uint) {
        return VAULT_MND.totalSupply();
    }

    function balanceOf(address account) public view returns (uint) {
        return balances[account];
    }

    function lastTimeRewardApplicable() public view returns (uint) {
        return Math.min(block.timestamp, periodFinish);
    }

    function rewardPerToken() public view returns (uint) {
        uint _totalSupply = totalSupply();
        if (_totalSupply == 0) {
            return 0;
        }

        return rewardPerTokenStored.add(
            lastTimeRewardApplicable().sub(lastUpdateTime).mul(rewardRate).mul(1e18).div(_totalSupply)
        );
    }

    function earned(address account) public view returns (uint) {
        return balances[account].mul(rewardPerToken().sub(userRewardPerTokenPaid[account])).div(1e18).add(rewards[account]);
    }

    /* ========== RESTRICTED FUNCTIONS ========== */

    function notifyRewardAmount(uint reward) override external onlyRewardsDistribution {
        if (block.timestamp >= periodFinish) {
            rewardRate = reward.div(rewardsDuration);
        } else {
            uint remaining = periodFinish.sub(block.timestamp);
            uint leftover = remaining.mul(rewardRate);
            rewardRate = reward.add(leftover).div(rewardsDuration);
        }

        lastUpdateTime = block.timestamp;
        periodFinish = block.timestamp.add(rewardsDuration);
        emit RewardAdded(reward);
    }

    function setRewardsDuration(uint _rewardsDuration) external onlyOwner {
        require(periodFinish == 0 || block.timestamp > periodFinish, "VaultMNDMirror: period");
        rewardsDuration = _rewardsDuration;
    }

    function setKeeper(address _keeper) external onlyOwner {
        keeper = _keeper;
    }

    function sync(address[] memory accounts) external onlyKeeper {
        for (uint i = 0; i < accounts.length; i++) {
            address account = accounts[i];
            if (syncedAt[account] == 0) {
                _deposit(VAULT_MND.balanceOf(account), account);
                syncedAt[account] = block.timestamp;
            }
        }
    }

    /* ========== MUTATE FUNCTIONS ========== */

    function deposit(uint _amount, address _to) external onlyVaultMND {
        _deposit(_amount, _to);
    }

    function withdraw(uint _amount, address _to) external onlyVaultMND updateReward(_to) {
        require(_amount <= balances[_to], "VaultMNDMirror: invalid amount");
        balances[_to] = balances[_to].sub(_amount);
    }

    /* ========== PRIVATE FUNCTIONS ========== */

    function _deposit(uint _amount, address _to) private updateReward(_to) {
        balances[_to] = balances[_to].add(_amount);
    }
}