// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import "./IBTCMT.sol";

contract StakingOwn is Ownable, ReentrancyGuard {
    using SafeERC20 for IERC20;

    IBTCMT public stoken;
    IERC20 public rewardToken;
    uint256 public farmStartedTime;
    uint256 public miniStakePeriodInSeconds;
    uint256 public nowTotalMined;
    uint256 public allTimeTotalMined;
    uint256 public allTimeTotalStaked;
    uint256 public nowTotalStakers;
    uint256 public allTimeTotalStakers;
    uint256 public totalRewardInPool;
    uint256 public totalWithdrawed;

    uint256 private _yesterdayShairs;
    uint256 private _todayShairs;

    mapping(address => StakeRecord) public userStakes;
    mapping(uint256 => DepositRecord) public rewardDeposits;
    mapping(uint256 => bool) private _changerVarsShairs;
    mapping(uint256 => bool) private _rewardDepositIndexies;
    mapping(address => bool) private _isUserStaker;
    mapping(address => mapping(uint256 => uint256)) public _stakesDays;
    mapping(address => mapping(uint256 => Unstake)) public _unstakesDays;

    struct StakeRecord {
        uint256 day;
        uint256 totalAmount;
        uint256 lockedAmount;
        uint256 unlockedAmount;
        uint256 previousAmount;
        uint256 reservedReward;
        uint256[] array;
        uint256 claimedDay;
    }

    struct DepositRecord {
        uint256 amountOfReward;
        uint256 amountOfShairsNow;
    }

    struct Unstake {
        uint256 amount;
        bool before;
    }

    modifier onlyWhenOpen {
        require(block.timestamp >= farmStartedTime, "Contract is not open yet");
        _;
    }

    event StakeTokenIncome(
        address who,
        uint256 day,
        uint256 amountLocked,
        uint256 amountUnlocked,
        uint256 totalAmount
    );
    event StakeTokenOutcome(
        address who,
        uint256 day,
        uint256 amountLocked,
        uint256 amountUnlocked,
        uint256 totalAmount
    );
    event RewardDeposit(
        address who,
        uint256 day,
        uint256 amount,
        uint256 totalRewardOnContract
    );
    event RewardWithdrawn(
        address who,
        uint256 day,
        uint256 amount,
        uint256 totalRewardOnContract
    );

    constructor(
        IBTCMT _SToken,
        IERC20 _rewardToken,
        uint256 miniStakePeriod,
        uint256 startTime
    ) {
        stoken = _SToken;
        rewardToken = _rewardToken;
        require(miniStakePeriod > 0, "mining period should >0");
        miniStakePeriodInSeconds = miniStakePeriod;
        farmStartedTime = startTime;
        _yesterdayShairs = 0;
        _todayShairs = 0;
    }

    function rewardTokenDonation(uint256 amount)
        external
        onlyOwner
        onlyWhenOpen
        nonReentrant
    {
        address sender = _msgSender();
        uint256 today = _currentDay();
        require(amount > 0, "Amount should be more then zero");
        require(
            !_rewardDepositIndexies[today],
            "Deposit has already done today"
        );
        _updateShairsVars();
        rewardToken.safeTransferFrom(sender, address(this), amount);
        totalRewardInPool = totalRewardInPool + amount;
        allTimeTotalMined = allTimeTotalMined + amount;
        _rewardDepositIndexies[today] = true;
        DepositRecord memory currentDeposit =
            DepositRecord(amount, _yesterdayShairs);
        rewardDeposits[today] = currentDeposit;
        emit RewardDeposit(sender, today, amount, totalRewardInPool);
    }

    function withdrawRewardAll() external onlyWhenOpen nonReentrant {
        address sender = _msgSender();
        _withdrawReward(sender, 0);
    }

    function withdrawRewardPartially(uint256 amount)
        external
        onlyWhenOpen
        nonReentrant
    {
        address sender = _msgSender();
        _withdrawReward(sender, amount);
    }

    function stakeStart(uint256 amountUnlocked, uint256 amountLocked)
        external
        onlyWhenOpen
        nonReentrant
    {
        address sender = _msgSender();
        uint256 today = _currentDay();
        uint256 amount = amountUnlocked + amountLocked;
        require(amount > 0, "Amount should be more then zero");
        require(
            amount <= stoken.balanceOfSum(sender),
            "You have not enough tokens for staking"
        );
        uint256[] memory arr;
        arr = stoken.transferFromFarm(sender, amountLocked, amountUnlocked);
        if (_isUserStaker[sender]) {
            uint256 day = _reserveReward(sender);
            if (day == today) {
                userStakes[sender].previousAmount = 0;
            } else {
                userStakes[sender].previousAmount =
                    userStakes[sender].previousAmount +
                    userStakes[sender].totalAmount;
            }
            userStakes[sender].totalAmount =
                userStakes[sender].totalAmount +
                amount;
            userStakes[sender].unlockedAmount =
                userStakes[sender].unlockedAmount +
                amountUnlocked;
            userStakes[sender].lockedAmount =
                userStakes[sender].lockedAmount +
                amountLocked;
            for (uint256 i = 0; i < arr.length; i++) {
                userStakes[sender].array.push(arr[i]);
            }
        } else {
            StakeRecord memory stake =
                StakeRecord(
                    today,
                    amount,
                    amountLocked,
                    amountUnlocked,
                    0,
                    0,
                    arr,
                    today
                );
            userStakes[sender] = stake;
            _isUserStaker[sender] = true;
            nowTotalStakers++;
            allTimeTotalStakers++;
        }
        _updateShairsVars();
        _stakesDays[sender][today] = _stakesDays[sender][today] + amount;
        _todayShairs = _todayShairs + amount;
        nowTotalMined = nowTotalMined + amount;
        allTimeTotalStaked = allTimeTotalStaked + amount;

        emit StakeTokenIncome(
            sender,
            today,
            amountLocked,
            amountUnlocked,
            amount
        );
    }

    function stakeEndPartially(uint256 lockedAmount, uint256 unlockedAmount)
        external
        onlyWhenOpen
        nonReentrant
    {
        address sender = _msgSender();
        _updateShairsVars();
        require(_isUserStaker[sender], "You have no any stakes");
        uint256 today = _currentDay();
        uint256[] memory returnArray = userStakes[sender].array;
        uint256 locked = userStakes[sender].lockedAmount;
        uint256 unlocked = userStakes[sender].unlockedAmount;
        uint256 total = userStakes[sender].totalAmount;
        uint256 totalAmount = lockedAmount + unlockedAmount;
        require(totalAmount != 0, "Total amount couldn't be zero");
        uint256 sharesToday = _stakesDays[sender][today];
        require(lockedAmount <= locked, "Not enough locked tokens");
        require(unlockedAmount <= unlocked, "Not enough unlocked tokens");
        if (userStakes[sender].day < today) {
            _reserveReward(sender);
        }
        returnArray = stoken.transferFarm(
            sender,
            lockedAmount,
            unlockedAmount,
            returnArray
        );
        nowTotalMined = nowTotalMined - totalAmount;
        if (totalAmount == (locked + unlocked)) {
            --nowTotalStakers;
            _isUserStaker[sender] = false;
            delete userStakes[sender];
        } else {
            userStakes[sender].totalAmount = total - totalAmount;
            userStakes[sender].lockedAmount = locked - lockedAmount;
            userStakes[sender].unlockedAmount = unlocked - unlockedAmount;
            userStakes[sender].array = returnArray;
            userStakes[sender].previousAmount = 0;
        }
        if (sharesToday != 0) {
            if (sharesToday >= totalAmount) {
                _todayShairs = _todayShairs - totalAmount;
            } else {
                _todayShairs = _todayShairs - sharesToday;
                _yesterdayShairs =
                    _yesterdayShairs -
                    (totalAmount - sharesToday);
            }
        } else {
            _yesterdayShairs = _yesterdayShairs - totalAmount;
        }
        _unstakesDays[sender][today].amount += totalAmount;
        if (_rewardDepositIndexies[today]) {
            _unstakesDays[sender][today].before = false;
        }
        emit StakeTokenOutcome(
            sender,
            today,
            lockedAmount,
            unlockedAmount,
            totalAmount
        );
    }

    function stakeEnd() external onlyWhenOpen nonReentrant {
        address sender = _msgSender();
        _updateShairsVars();
        require(_isUserStaker[sender], "You have no any stakes");
        uint256 today = _currentDay();
        uint256[] memory returnArray = userStakes[sender].array;
        uint256 locked = userStakes[sender].lockedAmount;
        uint256 unlocked = userStakes[sender].unlockedAmount;
        uint256 total = locked + unlocked;
        uint256 sharesToday = _stakesDays[sender][today];
        if (userStakes[sender].day < today) {
            _withdrawReward(sender, 0);
        }
        stoken.transferFarm(sender, locked, unlocked, returnArray);
        nowTotalMined = nowTotalMined - total;
        --nowTotalStakers;
        _isUserStaker[sender] = false;
        delete userStakes[sender];
        if (sharesToday != 0) {
            _todayShairs = _todayShairs - sharesToday;
        }
        _yesterdayShairs = _yesterdayShairs - (total - sharesToday);
        emit StakeTokenOutcome(sender, today, locked, unlocked, total);
    }

    function getUserStakeArray(address user) external view returns (uint256[] memory) {
        return userStakes[user].array;
    }

    function currentDay() external view onlyWhenOpen returns (uint256) {
        return _currentDay();
    }

    function getCurrentUserReward(address user)
        external
        view
        onlyWhenOpen
        returns (uint256)
    {
        uint256 amount = userStakes[user].reservedReward;
        (uint256 outputAmount, ) = _calculationReward(user);
        return amount + outputAmount;
    }

    function getTodayReward() external view returns(uint256){
        uint256 today = _currentDay();
        DepositRecord memory rew = rewardDeposits[today];
        return rew.amountOfReward;
    }

    function calculationRewardTable(
        address user,
        uint256 startDay,
        uint256 endDay
    ) external view onlyWhenOpen returns (uint256[] memory arr) {
        require(user != address(0), "Got zero address");
        require(userStakes[user].day <= startDay, "Wrong start day");
        require(endDay <= _currentDay(), "Wrong end day");
        if (!_isUserStaker[user]) {
            arr = new uint256[](0);
            return arr;
        }

        arr = new uint256[](endDay - startDay + 1);
        uint256 lengthArr = 0;
        uint256 amount = 0;
        uint256 currentDayDeposit = 0;
        uint256 currentDayShares = 0;
        uint256 totalStaked = _stakesDays[user][startDay];
        if (startDay == userStakes[user].day) {
            arr[0] = 0;
            lengthArr = 1;
            ++startDay;
        }
        for (uint256 i = startDay; i <= endDay; i++) {
            if (
                _unstakesDays[user][i].amount != 0 &&
                !_unstakesDays[user][i].before
            ) {
                totalStaked -= _unstakesDays[user][i].amount;
            }
            if (_rewardDepositIndexies[i]) {
                currentDayDeposit = rewardDeposits[i].amountOfReward;
                currentDayShares = rewardDeposits[i].amountOfShairsNow;
                amount = (totalStaked * currentDayDeposit) / currentDayShares;
                arr[lengthArr] = amount;
            } else {
                arr[lengthArr] = 0;
            }
            if (_stakesDays[user][i] != 0) {
                totalStaked += _stakesDays[user][i];
            }
            if (
                _unstakesDays[user][i].amount != 0 &&
                _unstakesDays[user][i].before
            ) {
                totalStaked -= _unstakesDays[user][i].amount;
            }
            lengthArr++;
        }
        return arr;
    }

    function _calculationReward(address user)
        private
        view
        returns (uint256, uint256)
    {
        require(user != address(0), "Got zero address");
        if (!_isUserStaker[user]) {
            return (0, 0);
        } else {
            uint256 additional;
            uint256 amount;
            uint256 currentDayDeposit;
            uint256 currentDayShares;
            uint256 startDay = userStakes[user].claimedDay + 1;
            uint256 today = _currentDay();
            if (startDay > today)
                return (0, today);
            uint256 endDay = ((today - startDay) < (5555 * miniStakePeriodInSeconds)) ? today : (startDay + (5555 * miniStakePeriodInSeconds));
            //uint256 endDay = _currentDay();
            uint256 prevAmount = userStakes[user].previousAmount;
            uint256 totalStaked = userStakes[user].totalAmount;
            if (prevAmount != 0 && _rewardDepositIndexies[startDay]) {
                currentDayDeposit = rewardDeposits[startDay].amountOfReward;
                currentDayShares = rewardDeposits[startDay].amountOfShairsNow;
                additional =
                    (prevAmount * currentDayDeposit) /
                    currentDayShares;
                amount = amount + additional;
                for (uint256 ii = startDay + 1; ii <= endDay; ii++) {
                    if (_rewardDepositIndexies[ii]) {
                        currentDayDeposit = rewardDeposits[ii].amountOfReward;
                        currentDayShares = rewardDeposits[ii].amountOfShairsNow;
                        additional =
                            (totalStaked * currentDayDeposit) /
                            currentDayShares;
                        amount = amount + additional;
                    } else {
                        continue;
                    }
                }
            } else {
                for (uint256 ii = startDay; ii <= endDay; ii++) {
                    if (_rewardDepositIndexies[ii]) {
                        currentDayDeposit = rewardDeposits[ii].amountOfReward;
                        currentDayShares = rewardDeposits[ii].amountOfShairsNow;
                        additional =
                            (totalStaked * currentDayDeposit) /
                            currentDayShares;
                        amount = amount + additional;
                    } else {
                        continue;
                    }
                }
            }
            uint256 day;
            if (_rewardDepositIndexies[endDay]) {
                day = endDay;
            } else {
                day = endDay - 1;
            }
            return (amount, day);
        }
    }

    function _reserveReward(address user) private returns (uint256) {
        require(user != address(0), "Got zero address");
        require(_isUserStaker[user], "You have no any stakes");
        (uint256 amount, uint256 claimedDay) = _calculationReward(user);
        if (userStakes[user].previousAmount != 0) {
            userStakes[user].previousAmount = 0;
        }
        if (amount != 0) {
            userStakes[user].reservedReward += amount;
        }
        userStakes[user].claimedDay = claimedDay;
        return claimedDay;
    }

    function _withdrawReward(address user, uint256 inputAmount) private {
        require(user != address(0), "Got zero address");
        require(_isUserStaker[user], "You have no any stakes");
        _reserveReward(user);
        uint256 resRew = userStakes[user].reservedReward;
        if (inputAmount != 0) {
            require(
                inputAmount <= resRew,
                "You have not earned so much tokens"
            );
            resRew = inputAmount;
        }
        if(resRew > 0){
            rewardToken.safeTransfer(user, resRew);
        }
        userStakes[user].reservedReward -= resRew;
        totalRewardInPool -= resRew;
        totalWithdrawed += resRew;
        emit RewardWithdrawn(user, _currentDay(), resRew, totalRewardInPool);
    }

    function _currentDay() private view returns (uint256) {
        return (block.timestamp - farmStartedTime) / miniStakePeriodInSeconds;
    }

    function _updateShairsVars() private {
        uint256 today = _currentDay();
        if (!_changerVarsShairs[today]) {
            _changerVarsShairs[today] = true;
            _yesterdayShairs = _yesterdayShairs + _todayShairs;
            _todayShairs = 0;
        }
    }
}
