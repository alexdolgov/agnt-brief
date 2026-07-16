// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

// Original idea and credit:
// VeSDTDelegation 0x6037Bb1BBa598bf88D816cAD90A28cC00fE3ff64 by AladdinDAO
// Mostly forked from AladdinDAO, except that now there is a minimum period to delegate boost
// and there are 2 tokens as reward rather than one.
// Direct delegators can be migrated by governance via migrateDirectDelegator().

interface IVeBoost {
    function boost(address _to, uint256 _amount, uint256 _endtime, address _from) external;
    function delegable_balance(address _user) external view returns (uint256);
    function permit(
        address _owner,
        address _spender,
        uint256 _value,
        uint256 _deadline,
        uint8 _v,
        bytes32 _r,
        bytes32 _s
    ) external;
}

contract VeBoostDelegation is Ownable {
    using SafeERC20 for IERC20;

    /// Errors
    error ALREADY_MIGRATED();
    error NOT_ALLOWED();
    error NOT_STARTED_YET();
    error NOT_WEEK_ALIGNED();
    error TOO_LOW();
    error TOKEN_NOT_SUPPORTED();
    error ZERO_ADDRESS();

    /// @notice Emitted when someone boost the `LockerProxy` contract.
    /// @param _owner The address of veToken owner.
    /// @param _recipient The address of recipient who will receive the pool share.
    /// @param _amount The amount of veToken to boost.
    /// @param _endtime The timestamp in seconds when the boost will end.
    event Boost(address indexed _owner, address indexed _recipient, uint256 _amount, uint256 _endtime);

    /// @notice Emitted when someone checkpoint pending rewards.
    /// @param _timestamp The timestamp in seconds when the checkpoint happened.
    /// @param _rewardToken The token reward address
    /// @param _amount The amount of pending rewards distributed.
    event CheckpointReward(uint256 _timestamp, address _rewardToken, uint256 _amount);

    /// @notice Emitted when user claim pending rewards
    /// @param _owner The owner of the pool share.
    /// @param _recipient The address of recipient who will receive the rewards.
    /// @param _token The token claimed
    /// @param _amount The amount of pending rewards claimed.
    event Claim(address indexed _owner, address indexed _recipient, address indexed _token, uint256 _amount);

    /// @notice Emitted when a new min boost duration has set
    /// @param _duration Min boosting duration
    event MinBoostDurationSet(uint256 _duration);

    /// @notice Emitted when a direct delegator is migrated by governance.
    /// @param _user The address of the migrated user.
    /// @param _amount The amount of boost migrated.
    /// @param _endtime The timestamp when the boost expires.
    event DirectDelegatorMigrated(address indexed _user, uint256 _amount, uint256 _endtime);

    uint256 private constant REWARD_CHECKPOINT_DELAY = 1 days;

    /// @dev The number of seconds in a week.
    uint256 private constant WEEK = 86400 * 7;

    /// @dev The minimum boost duration
    uint256 public minBoostDuration = 4 * WEEK;

    /// @notice The decimal of the vault share.
    uint8 public constant decimals = 18;

    /// @notice The address of lockerProxy contract.
    address public immutable lockerProxy;

    /// @notice The address of Token Vote-Escrowed Boost contract.
    address public immutable veBoost;

    /// @notice First reward token (protocol token, e.g., BAL, CRV)
    address public immutable rewardToken1;

    /// @notice Second reward token (SDT)
    address public immutable rewardToken2;

    /// @notice The name of the vault.
    string public name;

    /// @notice The symbol of the vault.
    string public symbol;

    /// @dev Compiler will pack this into single `uint256`.
    /// The boost power can be represented as `bias - slope * (t - ts)` if the time `t` and `ts`
    /// is in the same epoch. If epoch cross happens, we will change the corresponding value based
    /// on slope changes.
    /// @notice uint112 max is ~5.19e33 wei (~5.19e15 ether). Single boost amounts and cumulative
    /// global totals must stay below this limit. Realistic veToken supplies (< 1e12 ether) are safe.
    /// Amounts exceeding uint112 max will silently truncate during casting.
    struct Point {
        // The bias for the linear function
        uint112 bias;
        // The slop for the linear function
        uint112 slope;
        // The start timestamp in seconds for current epoch.
        // `uint32` should be enough for next 83 years.
        uint32 ts;
    }

    /// @dev Compiler will pack this into single `uint256`.
    struct RewardData {
        // The current balance of reward token.
        uint128 balance;
        // The timestamp in second when last distribute happened.
        uint128 timestamp;
    }

    /// @notice Mapping from user address to current updated point.
    /// @dev The global information is stored in address(0)
    mapping(address => Point) public boosts;

    /// @notice Mapping from user address to boost endtime to slope changes.
    /// @dev The global information is stored in address(0)
    mapping(address => mapping(uint256 => uint256)) public slopeChanges;

    /// @notice Mapping from user address to week timestamp to the boost power.
    /// @dev The global information is stored in address(0)
    mapping(address => mapping(uint256 => uint256)) public historyBoosts;

    /// @notice Mapping from token -> week timestamp -> number of rewards accured during the week.
    mapping(address => mapping(uint256 => uint256)) public weeklyRewards;

    /// @notice Mapping from user address -> token address -> reward claimed week timestamp.
    mapping(address => mapping(address => uint256)) public claimIndex;

    /// @notice The lastest reward distribute information.
    mapping(address => RewardData) public lastRewards;

    /// @notice Tracks whether a user has been migrated via migrateDirectDelegator.
    mapping(address => bool) public migrated;

    /**
     * Constructor *********************************
     */

    /// @param _lockerProxy The locker proxy address
    /// @param _veBoost The VeBoost contract address
    /// @param _rewardToken1 First reward token (protocol token)
    /// @param _rewardToken2 Second reward token (e.g., SDT)
    /// @param _name The name of the vault
    /// @param _symbol The symbol of the vault
    /// @param _startTimestamp The start timestamp for reward distribution
    constructor(
        address _lockerProxy,
        address _veBoost,
        address _rewardToken1,
        address _rewardToken2,
        string memory _name,
        string memory _symbol,
        uint256 _startTimestamp
    ) Ownable(msg.sender) {
        lockerProxy = _lockerProxy;
        veBoost = _veBoost;
        rewardToken1 = _rewardToken1;
        rewardToken2 = _rewardToken2;
        name = _name;
        symbol = _symbol;

        boosts[address(0)] = Point({bias: 0, slope: 0, ts: uint32(block.timestamp)});
        lastRewards[_rewardToken1] = RewardData({balance: 0, timestamp: uint128(_startTimestamp)});
        lastRewards[_rewardToken2] = RewardData({balance: 0, timestamp: uint128(_startTimestamp)});
    }

    /**
     * View Functions *********************************
     */

    /// @notice Return the current total pool shares.
    function totalSupply() external view returns (uint256) {
        Point memory p = _checkpointRead(address(0));
        return p.bias - p.slope * (block.timestamp - p.ts);
    }

    /// @notice Return the current pool share for the user.
    /// @param _user The address of the user to query.
    function balanceOf(address _user) external view returns (uint256) {
        if (_user == address(0)) return 0;

        Point memory p = _checkpointRead(_user);
        return p.bias - p.slope * (block.timestamp - p.ts);
    }

    /**
     * Mutated Functions *********************************
     */

    /// @notice Boost some veToken to `LockerProxy` contract permited.
    /// @dev Use `_amount=-1` to boost all available power.
    /// @param _amount The amount of veToken to boost.
    /// @param _endtime The timestamp in seconds when the boost will end.
    /// @param _recipient The address of recipient who will receive the pool share.
    /// @param _deadline The deadline in seconds for the permit signature.
    /// @param _v The V part of the signature
    /// @param _r The R part of the signature
    /// @param _s The S part of the signature
    function boostPermit(
        uint256 _amount,
        uint256 _endtime,
        address _recipient,
        uint256 _deadline,
        uint8 _v,
        bytes32 _r,
        bytes32 _s
    ) external {
        // set allowance
        IVeBoost(veBoost).permit(msg.sender, address(this), _amount, _deadline, _v, _r, _s);

        // do delegation
        boost(_amount, _endtime, _recipient);
    }

    /// @notice Boost some veToken to `lockerProxy` contract.
    /// @dev Use `_amount=-1` to boost all available power.
    /// @param _amount The amount of veToken to boost.
    /// @param _endtime The timestamp in seconds when the boost will end.
    /// @param _recipient The address of recipient who will receive the pool share.
    function boost(uint256 _amount, uint256 _endtime, address _recipient) public {
        require(_recipient != address(0), ZERO_ADDRESS());
        if (_amount == type(uint256).max) {
            _amount = IVeBoost(veBoost).delegable_balance(msg.sender);
        }
        require(_amount > 0, TOO_LOW());
        require(_endtime % WEEK == 0, NOT_WEEK_ALIGNED());

        // check if the _endTime is at least minBoostDuration
        uint256 currentWeek = (block.timestamp / WEEK) * WEEK;
        require(_endtime >= currentWeek + minBoostDuration, TOO_LOW());

        IVeBoost(veBoost).boost(lockerProxy, _amount, _endtime, msg.sender);

        _boost(_amount, _endtime, _recipient);
    }

    /// @notice Claim rewards for some user.
    /// @param _user The address of user to claim.
    /// @param _recipient The address of recipient who will receive the reward.
    /// @param _token The address of the token to claim
    function claim(address _user, address _recipient, address _token) public {
        if (_user != msg.sender) {
            if (_recipient != _user) revert NOT_ALLOWED();
        }
        if (_user == address(0)) revert ZERO_ADDRESS();
        if (rewardToken1 != _token && rewardToken2 != _token) revert TOKEN_NOT_SUPPORTED();

        // during claiming, update the point if 1 day pasts, since we will not use the latest point
        Point memory p = boosts[address(0)];
        if (block.timestamp >= p.ts + REWARD_CHECKPOINT_DELAY) {
            _checkpointWrite(address(0), p);
            boosts[address(0)] = p;
        }

        // during claiming, update the point if 1 day pasts, since we will not use the latest point
        p = boosts[_user];
        if (block.timestamp >= p.ts + REWARD_CHECKPOINT_DELAY) {
            _checkpointWrite(_user, p);
            boosts[_user] = p;
        }

        // checkpoint weekly reward
        _checkpointReward(_token, false);

        // claim reward
        _claim(_user, _recipient, _token);
    }

    /// @notice Claim all rewards for some user.
    /// @param _user The address of user to claim.
    /// @param _recipient The address of recipient who will receive the reward.
    function claimAll(address _user, address _recipient) external {
        claim(_user, _recipient, rewardToken1);
        claim(_user, _recipient, rewardToken2);
    }

    /// @notice Force checkpoint reward status for one token.
    /// @param _token reward token to checkpoint
    function checkpointReward(address _token) external {
        if (_token != rewardToken1 && _token != rewardToken2) revert TOKEN_NOT_SUPPORTED();
        _checkpointReward(_token, true);
    }

    /// @notice Force checkpoint reward status for all reward tokens.
    function checkpointRewards() external {
        _checkpointReward(rewardToken1, true);
        _checkpointReward(rewardToken2, true);
    }

    /// @notice Force checkpoint user information.
    /// @dev User `_user=address(0)` to checkpoint total supply.
    /// @param _user The address of user to checkpoint.
    function checkpoint(address _user) external {
        Point memory p = boosts[_user];
        _checkpointWrite(_user, p);
        boosts[_user] = p;
    }

    /// @notice Set the minimum duration for delegate boost
    /// @param _duration minimum boosting duration
    function setMinBoostDuration(uint256 _duration) external onlyOwner {
        minBoostDuration = _duration;
        emit MinBoostDurationSet(_duration);
    }

    /**
     * Direct Delegator Migration (Owner Only) *********************************
     */

    /// @notice Migrate a direct delegator by registering their boost
    /// @dev For users who delegated via VE_BOOST.boost() directly to the locker.
    ///      Governance is responsible for providing correct _endtime matching actual delegation.
    /// @param _user User address
    /// @param _amount Delegation amount
    /// @param _endtime The boost end timestamp (must match actual VE_BOOST delegation expiry, week-aligned)
    function migrateDirectDelegator(address _user, uint256 _amount, uint256 _endtime) external onlyOwner {
        require(_user != address(0), ZERO_ADDRESS());
        require(!migrated[_user], ALREADY_MIGRATED());
        require(_amount > 0, TOO_LOW());
        require(_endtime > block.timestamp, TOO_LOW());
        require(_endtime % WEEK == 0, NOT_WEEK_ALIGNED());
        migrated[_user] = true;
        _boostInternal(_amount, _endtime, _user);
        emit DirectDelegatorMigrated(_user, _amount, _endtime);
    }

    /**
     * Internal Functions *********************************
     */

    /// @dev Internal function to update boost records
    /// @param _amount The amount of veToken to boost.
    /// @param _endtime The timestamp in seconds when the boost will end.
    /// @param _recipient The address of recipient who will receive the pool share.
    function _boost(uint256 _amount, uint256 _endtime, address _recipient) internal {
        _boostInternal(_amount, _endtime, _recipient);
        emit Boost(msg.sender, _recipient, _amount, _endtime);
    }

    /// @dev Internal function to update boost records without emitting event.
    /// @param _amount The amount of veToken to boost.
    /// @param _endtime The timestamp in seconds when the boost will end.
    /// @param _recipient The address of recipient who will receive the pool share.
    function _boostInternal(uint256 _amount, uint256 _endtime, address _recipient) internal {
        if (claimIndex[_recipient][rewardToken1] == 0) {
            claimIndex[_recipient][rewardToken1] = (block.timestamp / WEEK) * WEEK;
            claimIndex[_recipient][rewardToken2] = (block.timestamp / WEEK) * WEEK;
        }

        // _endtime should always be multiple of WEEK
        uint256 _slope = _amount / (_endtime - block.timestamp);
        uint256 _bias = _slope * (_endtime - block.timestamp);

        // update global state
        _update(_bias, _slope, _endtime, address(0));

        // update user state
        _update(_bias, _slope, _endtime, _recipient);
    }

    /// @dev Internal function to update veBoost point
    /// @notice Caller must ensure _bias and _slope fit in uint112. Values exceeding
    /// type(uint112).max will silently truncate. This is safe for realistic veToken
    /// supplies but would corrupt state for amounts > 5.19e33 wei.
    /// @param _bias The bias delta of the point.
    /// @param _slope The slope delta of the point.
    /// @param _endtime The endtime in seconds for the boost.
    /// @param _user The address of user to update.
    function _update(uint256 _bias, uint256 _slope, uint256 _endtime, address _user) internal {
        Point memory p = boosts[_user];
        _checkpointWrite(_user, p);
        p.bias += uint112(_bias);
        p.slope += uint112(_slope);

        slopeChanges[_user][_endtime] += _slope;
        boosts[_user] = p;

        if (p.ts % WEEK == 0) {
            historyBoosts[_user][p.ts] = p.bias;
        }
    }

    /// @dev Internal function to claim user rewards.
    /// @param _user The address of user to claim.
    /// @param _recipient The address of recipient who will receive the reward.
    /// @return The amount of reward claimed.
    function _claim(address _user, address _recipient, address _token) internal returns (uint256) {
        uint256 _index = claimIndex[_user][_token];
        uint256 _lastTime = lastRewards[_token].timestamp;
        uint256 _amount = 0;
        uint256 _thisWeek = (block.timestamp / WEEK) * WEEK;

        // claim at most 50 weeks in one tx
        for (uint256 i = 0; i < 50;) {
            // we don't claim rewards from current week.
            if (_index >= _lastTime || _index >= _thisWeek) break;
            uint256 _totalPower = historyBoosts[address(0)][_index];
            uint256 _userPower = historyBoosts[_user][_index];
            if (_totalPower != 0 && _userPower != 0) {
                _amount += (_userPower * weeklyRewards[_token][_index]) / _totalPower;
            }
            _index += WEEK;
            unchecked {
                ++i;
            }
        }
        claimIndex[_user][_token] = _index;

        if (_amount > 0) {
            lastRewards[_token].balance -= uint128(_amount);
            IERC20(_token).safeTransfer(_recipient, _amount);
        }

        emit Claim(_user, _recipient, _token, _amount);
        return _amount;
    }

    /// @dev Internal function to read checkpoint result without change state.
    /// @param _user The address of user to checkpoint.
    /// @return The result point for the user.
    function _checkpointRead(address _user) internal view returns (Point memory) {
        Point memory p = boosts[_user];

        if (p.ts == 0) {
            p.ts = uint32(block.timestamp);
        }
        if (p.ts == block.timestamp) {
            return p;
        }

        uint256 ts = (p.ts / WEEK) * WEEK;
        for (uint256 i = 0; i < 255;) {
            ts += WEEK;
            uint256 _slopeChange = 0;
            if (ts > block.timestamp) {
                ts = block.timestamp;
            } else {
                _slopeChange = slopeChanges[_user][ts];
            }

            p.bias -= p.slope * uint112(ts - p.ts);
            p.slope -= uint112(_slopeChange);
            p.ts = uint32(ts);

            if (p.ts == block.timestamp) {
                break;
            }

            unchecked {
                ++i;
            }
        }
        return p;
    }

    /// @dev Internal function to read checkpoint result and change state.
    /// @param _user The address of user to checkpoint.
    function _checkpointWrite(address _user, Point memory p) internal {
        if (p.ts == 0) p.ts = uint32(block.timestamp);
        if (p.ts == block.timestamp) return;

        uint256 ts = (p.ts / WEEK) * WEEK;
        for (uint256 i = 0; i < 255;) {
            ts += WEEK;
            uint256 _slopeChange = 0;
            if (ts > block.timestamp) {
                ts = block.timestamp;
            } else {
                _slopeChange = slopeChanges[_user][ts];
            }

            p.bias -= p.slope * uint112(ts - p.ts);
            p.slope -= uint112(_slopeChange);
            p.ts = uint32(ts);

            if (ts % WEEK == 0) {
                historyBoosts[_user][ts] = p.bias;
            }

            if (p.ts == block.timestamp) {
                break;
            }

            unchecked {
                ++i;
            }
        }
    }

    /// @dev Internal function to checkpoint the rewards
    /// @param _force Whether to do force checkpoint.
    function _checkpointReward(address _token, bool _force) internal {
        uint256 _lastTime = lastRewards[_token].timestamp;
        // We only claim in the next week, so the update can delay 1 day.
        if (!_force && block.timestamp <= _lastTime + REWARD_CHECKPOINT_DELAY) return;
        if (block.timestamp < _lastTime) revert NOT_STARTED_YET();

        // update timestamp
        uint256 _sinceLast = block.timestamp - _lastTime;
        lastRewards[_token].timestamp = uint128(block.timestamp);

        // update balance
        uint256 _balance = IERC20(_token).balanceOf(address(this));
        uint256 _amount = _balance - lastRewards[_token].balance;
        lastRewards[_token].balance = uint128(_balance);

        if (_amount > 0) {
            uint256 _thisWeek = (_lastTime / WEEK) * WEEK;
            // 20 should be enough, since we are doing checkpoint every week.
            for (uint256 i; i < 20;) {
                uint256 _nextWeek = _thisWeek + WEEK;
                if (block.timestamp < _nextWeek) {
                    if (_sinceLast == 0) {
                        weeklyRewards[_token][_thisWeek] += _amount;
                    } else {
                        weeklyRewards[_token][_thisWeek] += (_amount * (block.timestamp - _lastTime)) / _sinceLast;
                    }
                    break;
                } else {
                    if (_sinceLast == 0 && _nextWeek == _lastTime) {
                        weeklyRewards[_token][_thisWeek] += _amount;
                    } else {
                        weeklyRewards[_token][_thisWeek] += (_amount * (_nextWeek - _lastTime)) / _sinceLast;
                    }
                }
                _lastTime = _nextWeek;
                _thisWeek = _nextWeek;
                unchecked {
                    ++i;
                }
            }
        }
        emit CheckpointReward(block.timestamp, _token, _amount);
    }
}
