//SPDX-License-Identifier: MIT
pragma solidity 0.8.11;

import "./interfaces/IRouter.sol";

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";

contract Staking is Ownable, ReentrancyGuard {
    uint256 private constant DENOMINATOR = 1000;
    uint256 private constant DAY_DURATION = 86400;
    uint8 private constant EPOCH = 27;

    address public immutable S_TOKEN;
    address public immutable R_TOKEN;
    address public immutable USDT;
    address public immutable ROUTER;
    uint256 public immutable START;

    BonusStatus public bonusStatus;
    uint256 public bonusAmount;

    uint256 public allTimeTotalMined;
    uint256 public totalStakers;
    address[] public stakers;

    uint256 public lastBonusUpdate;

    uint256 private _yesterdayShares;
    uint256 private _todayShares;

    mapping(address => bool) public canDeposit;
    mapping(address => StakeRecord) public stakingInfo;
    mapping(uint256 => DepositRecord) public rewardDeposits;

    mapping(address => uint256) private _stakersIndexies;
    mapping(uint256 => uint256) private _rewardDeposits;
    mapping(uint256 => bool) private _changerVarsShares;
    mapping(uint256 => BonusStatus) private _bonusStatusDays;
    mapping(address => mapping(uint256 => uint256)) private _amountHistory; //user address => (day => amount)
    mapping(address => mapping(uint256 => uint256)) private _stakeDays;

    struct StakeRecord {
        uint256 start;
        uint256 update;
        uint256 bonusStart;
        uint256 bonusUpdate;
        uint256 amount;
    }

    struct DepositRecord {
        uint256 amountOfReward;
        uint256 amountOfShares;
    }

    struct DaysAmounts {
        uint256 day;
        uint256 amount;
    }

    struct BonusStatus {
        bool enabled;
        uint256[] day;
        uint256[] percent;
    }

    event AddBonuses(uint256 amount);
    event WithdrawBonesus(uint256 amount);
    event Stake(uint256 day, address user, uint256 amount);
    event Unstake(uint256 day, address user, uint256 amount);
    event RewardDeposit(uint256 day, uint256 amount);

    constructor(
        address _sToken,
        address _rToken,
        address _usdt,
        address _router,
        address _back
    ) {
        require(
            _sToken != address(0) &&
                _rToken != address(0) &&
                _usdt != address(0) &&
                _router != address(0) &&
                _back != address(0),
            "Address 0x00..."
        );
        S_TOKEN = _sToken;
        R_TOKEN = _rToken;
        USDT = _usdt;
        ROUTER = _router;
        START = block.timestamp;

        canDeposit[_back] = true;

        bonusStatus.day = new uint256[](5);
        bonusStatus.percent = new uint256[](5);
    }

    /** @dev Function for backend to put reward to the contract
     * @notice reward put into the contract, swaps into S_TOKEN and shares between users
     * @param amount amount of reward token
     */
    function rewardTokenDonation(uint256 amount, uint256 amountMin)
        external
        nonReentrant
    {
        _updateSharesVars();

        address sender = _msgSender();
        require(amount > 0 && _yesterdayShares > 0 && amountMin > 0, "ZERO");
        require(canDeposit[sender], "Only back");
        uint256 today = _currentDay();
        require(rewardDeposits[today].amountOfReward == 0, "Once per day");

        allTimeTotalMined += amount;
        _rewardDeposits[today] = amount;

        IERC20(R_TOKEN).transferFrom(sender, address(this), amount);
        IERC20(R_TOKEN).approve(ROUTER, amount);
        address[] memory path = new address[](3);
        path[0] = R_TOKEN;
        path[1] = USDT;
        path[2] = S_TOKEN;

        uint256[] memory arr = IRouter(ROUTER).swapExactTokensForTokens(
            amount,
            amountMin,
            path,
            address(this),
            block.timestamp
        );
        rewardDeposits[today] = DepositRecord(arr[2], _yesterdayShares);
        _yesterdayShares += arr[2];

        emit RewardDeposit(today, arr[2]);
    }

    /** @dev Function to stake tokens
     * @param amount amount of S_TOKEN for staking
     */
    function stake(uint256 amount) external nonReentrant {
        address sender = _msgSender();
        uint256 today = _currentDay();
        require(amount > 0, "ZERO");

        _updateSharesVars();

        _todayShares += amount;

        StakeRecord storage info = stakingInfo[sender];

        if (info.amount == 0) {
            info.start = today;
            info.update = today;
            totalStakers++;
            _stakersIndexies[sender] = stakers.length;
            stakers.push(sender);
        } else recalculate(sender, true);

        info.bonusStart = today;
        info.amount += amount;

        _stakeDays[sender][today] += amount;

        IERC20(S_TOKEN).transferFrom(sender, address(this), amount);

        emit Stake(today, sender, amount);
    }

    /** @dev Function to unstake tokens
     * @param amount amount of S_TOKEN for unstaking
     */
    function unstake(uint256 amount) external nonReentrant {
        _updateSharesVars();

        address sender = _msgSender();
        recalculate(sender, true);

        uint256 today = _currentDay();
        StakeRecord memory info = stakingInfo[sender];
        require(
            amount > 0 && amount <= info.amount,
            "Not enough (try to do recalc. transaction) or zero amt"
        );

        if (
            rewardDeposits[today].amountOfReward == 0 &&
            today > 0 &&
            info.start < today
        )
            require(
                info.update == today - 1,
                "Do recalc.() before call this func"
            );
        else
            require(info.update == today, "Do recalc.() before call this func");

        if (amount == info.amount) {
            uint256 stakersIndex = _stakersIndexies[sender];
            uint256 lastIndex = stakers.length - 1;
            if (stakersIndex == lastIndex) stakers.pop();
            else {
                address lastStaker = stakers[lastIndex];
                _stakersIndexies[lastStaker] = stakersIndex;
                stakers[stakersIndex] = lastStaker;
                stakers.pop();
            }

            delete (stakingInfo[sender]);
            for (uint256 i = info.start; i <= today; i++) {
                delete (_amountHistory[sender][i]);
            }
            totalStakers--;
        } else {
            StakeRecord storage infoPart = stakingInfo[sender];
            infoPart.bonusStart = today;
            infoPart.amount -= amount;
        }
        uint256 todayStake = _stakeDays[sender][today];
        if (todayStake > 0) {
            if (todayStake >= amount) {
                _todayShares -= amount;
                _stakeDays[sender][today] -= amount;
            } else {
                _todayShares -= todayStake;
                _stakeDays[sender][today] = 0;
                _yesterdayShares -= (amount - todayStake);
            }
        } else _yesterdayShares -= amount;

        if (totalStakers == 0) {
            bonusAmount += _yesterdayShares;
            _yesterdayShares = 0;
        }
        IERC20(S_TOKEN).transfer(sender, amount);

        emit Unstake(today, sender, amount);
    }

    /** @dev Function to change bonus system (enable/disable bonuses; set new periodes/percents)
     * @notice Only for owner
     * @param _status new bonus status
     * @param _days array of new periodes values (length == 5)
     * @param _percent array of new percent values (length == 5)
     */
    function setBonusVars(
        bool _status,
        uint256[] memory _days,
        uint256[] memory _percent
    ) external onlyOwner {
        uint256 len = _days.length;
        require(len == _percent.length && 5 == len, "Wrong params");
        uint256 i;
        if (_status) {
            for (i; i < len; i++) {
                if (i > 0)
                    require(_days[i] > _days[i - 1], "Sort _days[] array");
            }
        }
        _updateSharesVars();
        uint256 today = _currentDay();
        BonusStatus storage _bonusStatus = _bonusStatusDays[today];
        _bonusStatus.enabled = _status;
        _bonusStatus.day = _days;
        _bonusStatus.percent = _percent;
        bonusStatus = BonusStatus(_status, _days, _percent);
    }

    /** @dev Function to add bonus tokens
     * @notice Only for owner
     * @param amount amount of S_TOKEN to put to the contract as bonuses
     */
    function addBonusTokens(uint256 amount) external onlyOwner nonReentrant {
        require(amount > 0, "ZERO");
        bonusAmount += amount;
        IERC20(S_TOKEN).transferFrom(_msgSender(), address(this), amount);

        emit AddBonuses(amount);
    }

    /** @dev Function to withdraw bonus tokens
     * @notice Only for owner
     * @param amount amount of bonuses to withdraw from the contract
     */
    function withdrawBonusTokens(uint256 amount)
        external
        onlyOwner
        nonReentrant
    {
        require(amount > 0 && bonusAmount >= amount, "Wrong amount");
        bonusAmount -= amount;
        IERC20(S_TOKEN).transfer(_msgSender(), amount);

        emit WithdrawBonesus(amount);
    }

    /** @dev Function to change can-deposit status
     * @notice Only for owner
     * @param back address to change status
     */
    function addOrRemoveBack(address back) external onlyOwner {
        canDeposit[back] = !canDeposit[back];
    }

    /** @dev Function to update bonuses history if 'out of gas' problem will arisen
     * @notice It's recommend to call this function every 100 days of inactivity
     */
    function updateHistory() external {
        uint256 today = _currentDay();
        require(today > lastBonusUpdate, "History is actual");
        uint256 endDay = (today - lastBonusUpdate < EPOCH)
            ? today
            : lastBonusUpdate + EPOCH;
        for (uint256 i = lastBonusUpdate; i <= endDay; i++) {
            _bonusStatusDays[i].enabled = bonusStatus.enabled;
            _bonusStatusDays[i].day = bonusStatus.day;
            _bonusStatusDays[i].percent = bonusStatus.percent;
        }
        lastBonusUpdate = endDay;
    }

    /** @dev Function for calculation of the reward table
     * @param user user address
     * @param startDay the beginning day for calculation
     * @param endDay the stop day for calculation
     * @return arr an array of rewards in [startDay, endDay] interval
     */
    function calculationRewardTable(
        address user,
        uint256 startDay,
        uint256 endDay
    ) external view returns (uint256[] memory arr) {
        StakeRecord memory info = stakingInfo[user];
        require(
            info.start <= startDay &&
                endDay <= _currentDay() &&
                startDay <= endDay,
            "Wrong interval"
        );
        if (info.amount == 0) {
            arr = new uint256[](0);
            return arr;
        }

        arr = new uint256[](endDay - startDay + 1);
        (, , , DaysAmounts[] memory _dayAmounts) = _calculation(user);

        uint256 len;

        if (info.update > endDay) {
            for (uint256 i = startDay; i <= endDay; i++) {
                if (i == info.start) arr[len] = 0;
                else arr[len] = _amountHistory[user][i];
                len++;
            }
        } else {
            for (uint256 i = startDay; i <= info.update; i++) {
                if (i == info.start) arr[len] = 0;
                else arr[len] = _amountHistory[user][i];
                len++;
            }
            if (_dayAmounts.length > 0) {
                uint256 i;
                uint256 counter;
                if (startDay > _dayAmounts[0].day) {
                    i = startDay;
                    counter = startDay - _dayAmounts[0].day;
                } else i = _dayAmounts[0].day;
                for (i; i <= endDay; i++) {
                    arr[len] = _dayAmounts[counter].amount;
                    counter++;
                    len++;
                }
            }
        }
    }

    /** @dev Function that returns bonusStatus variable value
     */
    function displayBonusScheme()
        external
        view
        returns (
            bool,
            uint256[] memory,
            uint256[] memory
        )
    {
        return (bonusStatus.enabled, bonusStatus.day, bonusStatus.percent);
    }

    /** @dev If bonus history is not actual, this function returns a number of updateHistory() calls you should do before other transactions
     */
    function epochNum() external view returns (uint256) {
        return (_currentDay() - lastBonusUpdate) / EPOCH;
    }

    /** @dev Shows the actual stakers addresses array
     */
    function getStakers() external view returns (address[] memory) {
        return stakers;
    }

    /** @dev Shows the actual total staker's balance
     */
    function totalStake() external view returns (uint256) {
        return IERC20(S_TOKEN).balanceOf(address(this)) - bonusAmount;
    }

    /** @dev Shows today's reward in R_TOKEN
     */
    function todayReward() external view returns (uint256) {
        return _rewardDeposits[currentDay()];
    }

    /** @dev Shows user's bonus day&percent
     * @param user user's address
     */
    function userBonusStatus(address user)
        external
        view
        returns (uint256 day, uint256 perc)
    {
        uint256 duration = currentDay() - stakingInfo[user].bonusStart;
        if (bonusStatus.day[0] > duration || stakingInfo[user].amount == 0)
            return (0, 0);
        uint256 i;
        while (i < 5) {
            if (bonusStatus.day[i] <= duration) {
                day = bonusStatus.day[i];
                perc = bonusStatus.percent[i];
            }
            i++;
        }
    }

    /** @dev Function to restake rewards and bonuses
     * @param bonusRestake true if user wants to restake bonuses; false if user wants to withdraw bonuses
     */
    function recalculate(address sender, bool bonusRestake) public {
        _updateSharesVars();

        StakeRecord storage info = stakingInfo[sender];
        require(info.amount > 0, "You're not staker");
        (
            uint256 result,
            uint256 update,
            uint256 bonus,
            DaysAmounts[] memory _daysAmounts
        ) = _calculation(sender);

        info.update = update;
        info.amount = result;

        if (bonus > 0) {
            require(bonusAmount >= bonus, "Not enough bonuses");
            bonusAmount -= bonus;
            info.bonusUpdate = update;
            if (!bonusRestake) {
                IERC20(S_TOKEN).transfer(sender, bonus);
            } else {
                _yesterdayShares += bonus;
                info.amount += bonus;
            }
        }

        uint256 len = _daysAmounts.length;
        if (len > 0) {
            for (uint256 i; i < len; i++) {
                _amountHistory[sender][_daysAmounts[i].day] = _daysAmounts[i]
                    .amount;
            }
        }
    }

    /** @dev Function to watch user staking info
     * @param user user address
     * @return _sum stake+rewards+bonuses
     * @return _bonus bonuses
     * @return _stake stake+rewards
     */
    function userStake(address user)
        public
        view
        returns (
            uint256 _sum,
            uint256 _bonus,
            uint256 _stake
        )
    {
        (_stake, , _bonus, ) = _calculation(user);
        _sum = _stake + _bonus;
    }

    /** @dev Shows the current contract day
     */
    function currentDay() public view returns (uint256) {
        return _currentDay();
    }

    function _currentDay() private view returns (uint256) {
        return (block.timestamp - START) / DAY_DURATION;
    }

    function _calculation(address user)
        private
        view
        returns (
            uint256 result,
            uint256 update,
            uint256 bonus,
            DaysAmounts[] memory _daysAmounts
        )
    {
        uint256 today = _currentDay();

        StakeRecord memory info = stakingInfo[user];

        if (info.amount == 0) return (0, 0, 0, _daysAmounts);
        if (today == 0 || info.start == today || info.update + 1 > today)
            return (info.amount, info.update, 0, _daysAmounts);

        result = info.amount;
        uint256 i = info.update + 1;
        uint256 endDay = ((today - i) > 110) ? (110 + i) : today;
        _daysAmounts = new DaysAmounts[](endDay - i + 1);

        uint256 reward;

        BonusStatus memory _bonusStatus;

        for (i; i <= endDay; i++) {
            //REWARD
            if (rewardDeposits[i].amountOfReward > 0) {
                reward =
                    (result * rewardDeposits[i].amountOfReward) /
                    rewardDeposits[i].amountOfShares;
                result += reward;
            } else reward = 0;

            //BONUS
            _bonusStatus = (i <= lastBonusUpdate)
                ? _bonusStatusDays[i]
                : bonusStatus;

            if (
                i >= (_bonusStatus.day[0] + info.bonusStart) &&
                i > info.bonusUpdate &&
                _bonusStatus.enabled &&
                reward > 0
            ) {
                uint8 j;
                while (i >= (_bonusStatus.day[j] + info.bonusStart)) {
                    j++;
                    if (j == 5) break;
                }

                bonus += (reward * _bonusStatus.percent[j - 1]) / DENOMINATOR;
            }

            _daysAmounts[i - info.update - 1] = DaysAmounts(i, reward);
        }
        if (rewardDeposits[endDay].amountOfReward > 0) update = endDay;
        else update = endDay - 1;
    }

    function _updateSharesVars() private {
        uint256 today = _currentDay();
        if (!_changerVarsShares[today]) {
            _changerVarsShares[today] = true;
            _yesterdayShares += _todayShares;
            _todayShares = 0;

            for (uint256 i = lastBonusUpdate; i <= today; i++) {
                _bonusStatusDays[i].enabled = bonusStatus.enabled;
                _bonusStatusDays[i].day = bonusStatus.day;
                _bonusStatusDays[i].percent = bonusStatus.percent;
            }

            lastBonusUpdate = today;
        }
    }
}
