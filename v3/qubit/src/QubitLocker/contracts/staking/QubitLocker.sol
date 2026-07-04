// SPDX-License-Identifier: MIT
pragma solidity ^0.6.12;
pragma experimental ABIEncoderV2;

/*
      ___       ___       ___       ___       ___
     /\  \     /\__\     /\  \     /\  \     /\  \
    /::\  \   /:/ _/_   /::\  \   _\:\  \    \:\  \
    \:\:\__\ /:/_/\__\ /::\:\__\ /\/::\__\   /::\__\
     \::/  / \:\/:/  / \:\::/  / \::/\/__/  /:/\/__/
     /:/  /   \::/  /   \::/  /   \:\__\    \/__/
     \/__/     \/__/     \/__/     \/__/

*
* MIT License
* ===========
*
* Copyright (c) 2021 QubitFinance
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
import "@pancakeswap/pancake-swap-lib/contracts/token/BEP20/SafeBEP20.sol";
import "@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol";

import "../interfaces/IQubitLocker.sol";
import "../interfaces/IQore.sol";
import "../library/WhitelistUpgradeable.sol";
import "../library/SafeToken.sol";

contract QubitLocker is IQubitLocker, WhitelistUpgradeable, ReentrancyGuardUpgradeable {
    using SafeMath for uint;
    using SafeToken for address;

    /* ========== CONSTANTS ============= */

    address public constant QBT = 0x17B7163cf1Dbd286E262ddc68b553D899B93f526;

    uint public constant LOCK_UNIT_BASE = 7 days;
    uint public constant LOCK_UNIT_MAX = 2 * 365 days;

    uint public constant LOCK_BOOST_PORTION = 150;
    uint public constant LOCK_BOOST_MAX = 250;

    IQore public constant qore = IQore(0xF70314eb9c7Fe7D88E6af5aa7F898b3A162dcd48);

    /* ========== STATE VARIABLES ========== */

    mapping(address => uint) public balances;
    mapping(address => uint) public expires;

    uint public override totalBalance;

    uint private _lastTotalScore;
    uint private _lastSlope;
    uint private _lastTimestamp;
    mapping(uint => uint) private _slopeChanges;

    mapping(address => uint) public starts;  // lock start time
    mapping(address => uint) public stakes;
    uint public override totalStake;

    /* protocol fee related */
    uint public periodFinish;
    uint public rewardRate;
    uint public rewardsDuration;
    uint public lastUpdateTime;
    uint public rewardPerTokenStored;

    mapping(address => uint) public userRewardPerTokenPaid;
    mapping(address => uint) public rewards;

    /* ========== MODIFIERS ========== */

    modifier updateRewards(address account) {
        rewardPerTokenStored = rewardPerToken();
        lastUpdateTime = lastTimeRewardApplicable();
        if (account != address(0)) {
            rewards[account] = earned(account);
            userRewardPerTokenPaid[account] = rewardPerTokenStored;
        }
        _;
    }

    modifier onlyQore() {
        require(msg.sender == address(qore), "QubitLocker: caller is not Qore");
        _;
    }

    /* ========== EVENTS ========== */

    event RewardAdded(uint reward);
    event RewardsDurationUpdated(uint256 newDuration);
    event RewardsPaid(address indexed user, uint amount);

    /* ========== INITIALIZER ========== */

    receive() external payable {}

    function initialize() external initializer {
        __WhitelistUpgradeable_init();
        __ReentrancyGuard_init();
        _lastTimestamp = block.timestamp;
    }

    /* ========== RESTRICTED FUNCTIONS ========== */

    function notifyRewardAmount(uint reward) external override onlyOwner updateRewards(address(0)) {
        if (block.timestamp >= periodFinish) {
            rewardRate = reward.div(rewardsDuration);
        } else {
            uint remaining = periodFinish.sub(block.timestamp);
            uint leftover = remaining.mul(rewardRate);
            rewardRate = reward.add(leftover).div(rewardsDuration);
        }

        // Ensure the provided reward amount is not more than the balance in the contract.
        // This keeps the reward rate in the right range, preventing overflows due to
        // very high values of rewardRate in the earned and rewardsPerToken functions;
        // Reward + leftover must be less than 2^256 / 10^18 to avoid overflow.
        uint _balance = address(this).balance;
        require(rewardRate <= _balance.div(rewardsDuration), "QubitLocker: reward rate must be in the right range");

        lastUpdateTime = block.timestamp;
        periodFinish = block.timestamp.add(rewardsDuration);
        emit RewardAdded(reward);

    }

    function setRewardsDuration(uint _rewardsDuration) external onlyOwner {
        require(periodFinish == 0 || block.timestamp > periodFinish, "QubitLocker: reward duration can only be updated after the period ends");
        rewardsDuration = _rewardsDuration;
        emit RewardsDurationUpdated(rewardsDuration);
    }

    function migrate(address[] calldata users) external onlyOwner {
        // update starts and stakes for users
        for (uint i = 0; i < users.length; i++) {
            address user = users[i];
            require(balances[user] > 0 && block.timestamp < expires[user], "QubitLocker: expired user");
            starts[user] = block.timestamp;

            uint period = expires[user].sub(starts[user]);
            require(0 <= period && period <= LOCK_UNIT_MAX);
            uint stakeFactor = period.mul(1e18).div(LOCK_UNIT_MAX).mul(LOCK_BOOST_PORTION).div(100);
            uint newStake = balances[user].mul(stakeFactor.add(1e18)).div(1e18);

            // update totalStake, stake
            totalStake = totalStake.sub(stakes[user]).add(newStake);
            stakes[user] = newStake;
        }
    }

    /* ========== VIEWS ========== */

    function balanceOf(address account) external view override returns (uint) {
        return balances[account];
    }

    function expiryOf(address account) external view override returns (uint) {
        return expires[account];
    }

    function availableOf(address account) external view override returns (uint) {
        return expires[account] < block.timestamp ? balances[account] : 0;
    }

    function totalScore() public view override returns (uint score, uint slope) {
        score = _lastTotalScore;
        slope = _lastSlope;

        uint prevTimestamp = _lastTimestamp;
        uint nextTimestamp = truncateTime(_lastTimestamp).add(LOCK_UNIT_BASE);
        while (nextTimestamp < block.timestamp) {
            uint deltaScore = nextTimestamp.sub(prevTimestamp).mul(slope);
            score = score < deltaScore ? 0 : score.sub(deltaScore);
            slope = slope.sub(_slopeChanges[nextTimestamp]);

            prevTimestamp = nextTimestamp;
            nextTimestamp = nextTimestamp.add(LOCK_UNIT_BASE);
        }

        uint deltaScore = block.timestamp > prevTimestamp ? block.timestamp.sub(prevTimestamp).mul(slope) : 0;
        score = score > deltaScore ? score.sub(deltaScore) : 0;
    }

    /**
     * @notice Calculate time-weighted balance of account
     * @param account Account of which the balance will be calculated
     */
    function scoreOf(address account) public view override returns (uint) {
        if (expires[account] < block.timestamp) return 0;
        return expires[account].sub(block.timestamp).mul(balances[account].div(LOCK_UNIT_MAX));
    }

    function truncateExpiry(uint time) public pure returns (uint) {
        // Use truncateTime.
        // This function remains for backward compatibility.
        return time.div(LOCK_UNIT_BASE).mul(LOCK_UNIT_BASE);
    }

    function truncateTime(uint time) public pure returns (uint) {
        return time.div(LOCK_UNIT_BASE).mul(LOCK_UNIT_BASE);
    }

    function startOf(address account) external view override returns (uint) {
        return starts[account];
    }

    function truncatePeriod(uint start, uint expiry) public pure returns (uint) {
        require (start < expiry, "QubitLocker: invalid parameter");

        start = truncateTime(start);
        expiry = truncateTime(expiry);
        return expiry.sub(start);
    }

    function stakeOf(address account) external view override returns (uint) {
        return stakes[account];
    }

    function lastTimeRewardApplicable() public view returns (uint) {
        return Math.min(block.timestamp, periodFinish);
    }

    function rewardPerToken() public view returns (uint) {
        return
        totalStake == 0
        ? rewardPerTokenStored
        : rewardPerTokenStored.add(lastTimeRewardApplicable().sub(lastUpdateTime).mul(rewardRate).mul(1e18).div(totalStake));
    }

    function earned(address account) override public view returns (uint) {
        return stakes[account].mul(rewardPerToken().sub(userRewardPerTokenPaid[account])).div(1e18).add(rewards[account]);
    }

    function getRewardForDuration() external view returns (uint) {
        return rewardRate.mul(rewardsDuration);
    }

    /* ========== MUTATIVE FUNCTIONS ========== */

    function stakeAndLock(uint amount, uint expiry) external override nonReentrant updateRewards(msg.sender) {
        //// There exists various cases
        // 1) When user has no stake
        //   1-1) stake
        //   1-2) stake & lock
        // 2) When user has stake (without lock)
        //   2-1) append
        //   2-2) lock
        //   2-3) append & lock
        // 3) When user has stake (with lock)
        //   3-1) append
        //   3-2) extend lock
        //   3-3) append & extend lock

        uint prevExpiry = expires[msg.sender];
        uint balance = balances[msg.sender];

        // update lock slope, score
        if (amount == 0 && prevExpiry == 0 && expiry > 0) { // Case 2-2: staked user tries lock
            uint nextExpiry = truncateTime(expiry);
            _slopeChanges[nextExpiry] = _slopeChanges[nextExpiry].add(balance.div(LOCK_UNIT_MAX));
            _updateTotalScore(balance, nextExpiry);
        }
        else if (balance > 0 && amount > 0 && prevExpiry == 0 && expiry > 0) { // Case 2-3: staked user tries to append & lock
            uint nextExpiry = truncateTime(expiry);
            _slopeChanges[nextExpiry] = _slopeChanges[nextExpiry].add(balance.add(amount).div(LOCK_UNIT_MAX));
            _updateTotalScore(balance.add(amount), nextExpiry);
        }
        else if (balance > 0 && amount > 0 && prevExpiry > 0 && expiry > 0) { // Case 3-3: locked user tries to append & lock
            uint nextExpiry = truncateTime(expiry);

            uint slopeChange = (_slopeChanges[prevExpiry] < balance.div(LOCK_UNIT_MAX))
            ? _slopeChanges[prevExpiry]
            : balance.div(LOCK_UNIT_MAX);
            _slopeChanges[prevExpiry] = _slopeChanges[prevExpiry].sub(slopeChange);

            slopeChange = balance.add(amount).div(LOCK_UNIT_MAX);
            _slopeChanges[nextExpiry] = _slopeChanges[nextExpiry].add(slopeChange);

            (uint score, uint slope) = totalScore();
            score = score.sub(scoreOf(msg.sender)).add(nextExpiry.sub(block.timestamp).mul(balance.add(amount).div(LOCK_UNIT_MAX)));
            slopeChange = amount.div(LOCK_UNIT_MAX);
            slope = slope.add(slopeChange);

            _lastTotalScore = score;
            _lastSlope = slope;
            _lastTimestamp = block.timestamp;
        }
        else if (amount == 0 && prevExpiry > 0 && expiry > 0) { // Case 3-2: extend lock
            uint nextExpiry = truncateTime(expiry);
            uint slopeChange = (_slopeChanges[prevExpiry] < balance.div(LOCK_UNIT_MAX))
            ? _slopeChanges[prevExpiry]
            : balance.div(LOCK_UNIT_MAX);

            _slopeChanges[prevExpiry] = _slopeChanges[prevExpiry].sub(slopeChange);
            _slopeChanges[nextExpiry] = _slopeChanges[nextExpiry].add(slopeChange);
            _updateTotalScoreExtendingLock(balance, prevExpiry, nextExpiry);

        } else if (amount > 0 && (prevExpiry > 0 || expiry > 0)) { // Case 3-1 or 1-2 : append or new deposit
            uint truncatedExpiry = prevExpiry > 0 ? prevExpiry : truncateTime(expiry);
            _slopeChanges[truncatedExpiry] = _slopeChanges[truncatedExpiry].add(amount.div(LOCK_UNIT_MAX));
            _updateTotalScore(amount, truncatedExpiry);
        }


        if (amount > 0) {
            stake(amount);
        }
        if (expiry > 0) {
            lock(expiry);
        }
    }

    function stake(uint amount) private updateRewards(msg.sender) {
        require(amount > 0, "QubitLocker: invalid amount");

        totalBalance = totalBalance.add(amount);
        balances[msg.sender] = balances[msg.sender].add(amount);

        // update totalStake, stake
        if (expires[msg.sender] == 0) {
            uint newStake = balances[msg.sender];
            totalStake = totalStake.sub(stakes[msg.sender]).add(newStake);
            stakes[msg.sender] = newStake;
        } else {
            require(starts[msg.sender] > 0, "QubitLocker: invalid starts");
            require(block.timestamp < expires[msg.sender], "QubitLocker: expired lock");

            uint period = expires[msg.sender].sub(starts[msg.sender]);
            require(0 <= period && period <= LOCK_UNIT_MAX);
            uint stakeFactor = period.mul(1e18).div(LOCK_UNIT_MAX).mul(LOCK_BOOST_PORTION).div(100);
            uint newStake = balances[msg.sender].mul(stakeFactor.add(1e18)).div(1e18);

            // update totalStake, stake
            totalStake = totalStake.sub(stakes[msg.sender]).add(newStake);
            stakes[msg.sender] = newStake;
        }

        QBT.safeTransferFrom(msg.sender, address(this), amount);
    }

    function lock(uint expiry) private updateRewards(msg.sender) {
        require(balances[msg.sender] > 0, "QubitLocker: zero balance");

        uint prevExpiry = expires[msg.sender];
        uint nextExpiry = truncateTime(expiry);
        if (prevExpiry == 0) {
            require(block.timestamp < nextExpiry && nextExpiry <= block.timestamp + LOCK_UNIT_MAX,
                "QubitLocker: invalid expiry time"
            );

            starts[msg.sender] = block.timestamp;
            expires[msg.sender] = nextExpiry;
        } else {
            require(block.timestamp < prevExpiry, "QubitLocker: expired lock");
            uint prevStart = starts[msg.sender];
            uint prevPeriod = truncatePeriod(prevStart, prevExpiry);
            uint newPeriod = truncatePeriod(prevStart, nextExpiry);
            require(prevPeriod <= newPeriod, "QubitLocker: illegal new lock period");

            expires[msg.sender] = nextExpiry;
        }

        // stake = balance * (1+stakeFactor)
        uint period = expires[msg.sender].sub(starts[msg.sender]);
        require(0 <= period && period <= LOCK_UNIT_MAX);
        uint stakeFactor = period.mul(1e18).div(LOCK_UNIT_MAX).mul(LOCK_BOOST_PORTION).div(100);
        uint newStake = balances[msg.sender].mul(stakeFactor.add(1e18)).div(1e18);

        // update totalStake, stake
        totalStake = totalStake.sub(stakes[msg.sender]).add(newStake);
        stakes[msg.sender] = newStake;
    }

    function deposit(uint amount, uint expiry) external override nonReentrant {
        require(stakes[msg.sender] == 0, "QubitLocker: not backward compatible");
        // TODO : replace deposit&extendLock function with stakeAndLock function
        require(amount > 0, "QubitLocker: invalid amount");

        expiry = balances[msg.sender] == 0 ? truncateTime(expiry) : expires[msg.sender];
        require(block.timestamp < expiry && expiry <= block.timestamp + LOCK_UNIT_MAX, "QubitLocker: invalid expiry");

        _slopeChanges[expiry] = _slopeChanges[expiry].add(amount.div(LOCK_UNIT_MAX));
        _updateTotalScore(amount, expiry);

        totalBalance = totalBalance.add(amount);
        balances[msg.sender] = balances[msg.sender].add(amount);
        expires[msg.sender] = expiry;

        QBT.safeTransferFrom(msg.sender, address(this), amount);
    }

    function extendLock(uint nextExpiry) external override nonReentrant {
        require(stakes[msg.sender] == 0, "QubitLocker: not backward compatible");
        // TODO : replace deposit&extendLock function with stakeAndLock function
        uint amount = balances[msg.sender];
        require(amount > 0, "QubitLocker: zero balance");

        uint prevExpiry = expires[msg.sender];
        nextExpiry = truncateTime(nextExpiry);
        require(block.timestamp < prevExpiry, "QubitLocker: expired lock");
        require(
            Math.max(prevExpiry, block.timestamp) < nextExpiry && nextExpiry <= block.timestamp + LOCK_UNIT_MAX,
            "QubitLocker: invalid expiry time"
        );

        uint slopeChange = (_slopeChanges[prevExpiry] < amount.div(LOCK_UNIT_MAX))
            ? _slopeChanges[prevExpiry]
            : amount.div(LOCK_UNIT_MAX);
        _slopeChanges[prevExpiry] = _slopeChanges[prevExpiry].sub(slopeChange);
        _slopeChanges[nextExpiry] = _slopeChanges[nextExpiry].add(slopeChange);
        _updateTotalScoreExtendingLock(amount, prevExpiry, nextExpiry);
        expires[msg.sender] = nextExpiry;

    }

    /**
     * @notice Withdraw all tokens for `msg.sender`
     * @dev Only possible if the lock has expired
     * @dev deprecated function
     */
    function withdraw() external override nonReentrant {
        // TODO : replace withdraw function with unstake function
        require(balances[msg.sender] > 0 && block.timestamp >= expires[msg.sender], "QubitLocker: invalid state");
        _updateTotalScore(0, 0);

        uint amount = balances[msg.sender];
        totalBalance = totalBalance.sub(amount);
        delete balances[msg.sender];
        delete expires[msg.sender];

        // TODO : replace withdraw function with unstake function.
        // TODO : until the withdraw function is disabled, stakes value should be updated correctly.
        delete starts[msg.sender];

        // update totalStake, stake
        totalStake = totalStake.sub(stakes[msg.sender]);
        delete stakes[msg.sender];

        QBT.safeTransfer(msg.sender, amount);
    } // DONE

    /**
     * @dev unstake QBT
     *
     * - `amount` of QBT will be withdrawn
     *
     */
    function unstake(uint amount) external override nonReentrant updateRewards(msg.sender) {
        require(balances[msg.sender] >= amount && (expires[msg.sender] == 0 || block.timestamp >= expires[msg.sender]), "QubitLocker: invalid state");
        _updateTotalScore(0, 0); // for updating purpose


        balances[msg.sender] = balances[msg.sender].sub(amount);
        totalBalance = totalBalance.sub(amount);
        delete expires[msg.sender];
        delete starts[msg.sender];

        // update totalStake, stake
        uint newStake = balances[msg.sender];
        totalStake = totalStake.sub(stakes[msg.sender]).add(newStake);
        stakes[msg.sender] = newStake;

        QBT.safeTransfer(msg.sender, amount);
    } // DONE

    function depositBehalf(address account, uint amount, uint expiry) external override onlyWhitelisted nonReentrant updateRewards(account) {
        // TODO : not fully tested. Test it before using this function
        require(amount > 0, "QubitLocker: invalid amount");

        expiry = balances[account] == 0 ? truncateTime(expiry) : expires[account];
        require(block.timestamp < expiry && expiry <= block.timestamp + LOCK_UNIT_MAX, "QubitLocker: invalid expiry");

        _slopeChanges[expiry] = _slopeChanges[expiry].add(amount.div(LOCK_UNIT_MAX));
        _updateTotalScore(amount, expiry);

        totalBalance = totalBalance.add(amount);

        balances[account] = balances[account].add(amount);
        expires[account] = expiry;

        // update stake info
        if (starts[account] == 0) {
            starts[account] = block.timestamp;
        }

        // stakeFactor = 1.5 * lockPeriod / LOCK_UNIT_MAX  with decimal 18
        // stake = balance * (1+stakeFactor)
        uint period = expires[account].sub(starts[account]);
        require(0 <= period && period <= LOCK_UNIT_MAX);
        uint stakeFactor = period.mul(1e18).div(LOCK_UNIT_MAX).mul(LOCK_BOOST_PORTION).div(100);
        uint newStake = balances[account].mul(stakeFactor.add(1e18)).div(1e18);

        // update totalStake, stake
        totalStake = totalStake.sub(stakes[account]).add(newStake);
        stakes[account] = newStake;

        QBT.safeTransferFrom(msg.sender, address(this), amount);

    } // DONE

    function withdrawBehalf(address account) external override onlyWhitelisted nonReentrant updateRewards(account) {
        // TODO : not fully tested. Test it before using this function
        require(balances[account] > 0 && block.timestamp >= expires[account], "QubitLocker: invalid state");
        _updateTotalScore(0, 0);

        uint amount = balances[account];
        totalBalance = totalBalance.sub(amount);
        delete balances[account];
        delete expires[account];
        delete starts[account];

        // update totalStake, stake
        totalStake = totalStake.sub(stakes[account]);
        delete stakes[account];

        QBT.safeTransfer(account, amount);
    } // DONE

    function getReward() public override nonReentrant updateRewards(msg.sender) {
        uint reward = rewards[msg.sender];
        if (reward > 0) {
            rewards[msg.sender] = 0;

            SafeToken.safeTransferETH(msg.sender, reward);

            emit RewardsPaid(msg.sender, reward);
        }
    }

    function getReward(address account) public override nonReentrant onlyQore updateRewards(account) {
        uint reward = rewards[account];
        if (reward > 0) {
            rewards[account] = 0;

            SafeToken.safeTransferETH(account, reward);

            emit RewardsPaid(account, reward);
        }
    }

    function kick(address account) external override nonReentrant updateRewards(account) {
        require(expires[account] < block.timestamp, "QubitLocker: kick not allowed");

        // update totalStake, stake
        uint newStake = balances[account];
        totalStake =  totalStake.sub(stakes[account]).add(newStake);
        stakes[account] = newStake;

        delete starts[account];
    }

    /* ========== PRIVATE FUNCTIONS ========== */

    function _updateTotalScore(uint newAmount, uint nextExpiry) private {
        (uint score, uint slope) = totalScore();

        if (newAmount > 0) {
            uint slopeChange = newAmount.div(LOCK_UNIT_MAX);
            uint newAmountDeltaScore = nextExpiry.sub(block.timestamp).mul(slopeChange);

            slope = slope.add(slopeChange);
            score = score.add(newAmountDeltaScore);
        }

        _lastTotalScore = score;
        _lastSlope = slope;
        _lastTimestamp = block.timestamp;
    }

    function _updateTotalScoreExtendingLock(uint amount, uint prevExpiry, uint nextExpiry) private {
        (uint score, uint slope) = totalScore();

        uint deltaScore = nextExpiry.sub(prevExpiry).mul(amount.div(LOCK_UNIT_MAX));
        score = score.add(deltaScore);

        _lastTotalScore = score;
        _lastSlope = slope;
        _lastTimestamp = block.timestamp;
    }
}
