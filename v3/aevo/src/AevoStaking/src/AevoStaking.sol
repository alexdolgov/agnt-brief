/* SPDX-License-Identifier: GPL-3.0*/

pragma solidity ^0.8.20;

import {Owned} from "solmate/auth/Owned.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

/**
 * @title Aevo Staking
 * @notice Stake Aevo and RBN for non-transferrable sAEVO
 */
contract AevoStaking is Owned {
    using SafeERC20 for IERC20;

    /// @notice The rbn address
    address public immutable rbn;
    /// @notice The aevo address
    address public immutable aevo;
    /// @notice The epoch duration
    uint256 public epochTime;
    /// @notice The staking start date
    uint256 public start;
    /// @notice The rbn -> aevo direct migration date
    uint256 public migration;
    /// @notice The hard stake duration
    uint256 public stakeTime;
    /// @notice If hard stake enforced
    bool public isLocked = true;
    /// @notice If staking paused
    bool public isPaused = false;
    /// @notice If can early migrate
    bool public canEarlyMigrate = false;

    /// @notice Boostrapping AEVO LP
    mapping(address => bool) public isBootstrapper;
    /// @notice Account to epoch sAEVO balance
    mapping(address => mapping(uint16 => uint256)) public balance;
    /// @notice Epoch to sAEVO balance
    mapping(uint16 => uint256) public epochBalance;

    /// @notice Constructor
    /// @param _rbn $RBN
    /// @param _aevo $AEVO
    /// @param _start The staking start date
    /// @param _migration The rbn -> aevo direct migration date
    /// @param _epochTime The epoch duration
    /// @param _stakeTime The hard stake duration
    /// @param _bootstrapper The initial bootstrapper
    /// @param _owner The owner
    constructor(
        address _rbn,
        address _aevo,
        uint256 _start,
        uint256 _migration,
        uint256 _epochTime,
        uint256 _stakeTime,
        address _bootstrapper,
        address _owner
    ) Owned(_owner) {
        require(address(_rbn) != address(0), "!_rbn");
        require(address(_aevo) != address(0), "!_aevo");
        require(_start >= block.timestamp, "!_start");
        require(_epochTime > 0, "!_epochTime");
        require(_stakeTime >= _epochTime && _stakeTime % _epochTime == 0, "!_stakeTime");
        require(address(_bootstrapper) != address(0), "!_bootstrapper");

        rbn = _rbn;
        aevo = _aevo;
        start = _start;
        migration = _migration;
        epochTime = _epochTime;
        stakeTime = _stakeTime;
        isBootstrapper[_bootstrapper] = true;
    }

    /// @notice Epoch number
    /// @dev uint16 may overflow for small epochTime
    /// @return Current epoch
    function epoch() public view returns (uint16) {
        return block.timestamp >= start ? uint16((block.timestamp - start) / epochTime + 1) : 0;
    }

    /// @notice Total staked within the stake time sliding window
    /// @dev stakeTime / epochTime should be small enough to not be gas-prohibitive
    /// @return totalStaked total staked
    function staked() external view returns (uint256 totalStaked) {
        uint16 cEpoch = epoch();
        uint16 window = 0;

        while (cEpoch - window > 0 && window < stakeTime / epochTime) {
            totalStaked += epochBalance[cEpoch - window];
            window++;
        }
    }

    /// @notice Total currently staked by an account within the stake time sliding window
    /// @param _account account that is staked
    /// @return totalStaked total staked by account
    function staked(address _account) external view returns (uint256 totalStaked) {
        uint16 cEpoch = epoch();
        uint16 window = 0;

        while (cEpoch - window > 0 && window < stakeTime / epochTime) {
            totalStaked += balance[_account][cEpoch - window];
            window++;
        }
    }

    /// @notice Sets epoch time
    /// @param _epochTime Epoch time
    function setEpochTime(uint256 _epochTime) external onlyOwner {
        require(block.timestamp < start && stakeTime >= _epochTime && stakeTime % _epochTime == 0, "!_epochTime");

        epochTime = _epochTime;
        emit SetEpochTime(_epochTime);
    }

    /// @notice Sets start time
    /// @param _start Start time
    function setStart(uint256 _start) external onlyOwner {
        require(block.timestamp < start && _start > block.timestamp, "!_start");
        start = _start;
        emit SetStart(_start);
    }

    /// @notice Sets migration time
    /// @param _migration Migration time
    function setMigration(uint256 _migration) external onlyOwner {
        require(block.timestamp < start && _migration > block.timestamp, "!_migration");
        migration = _migration;
        emit SetMigration(_migration);
    }

    /// @notice Sets stake time
    /// @param _stakeTime Stake time
    function setStakeTime(uint256 _stakeTime) external onlyOwner {
        require(_stakeTime >= epochTime && _stakeTime % epochTime == 0 && _stakeTime < stakeTime, "!_stakeTime");
        stakeTime = _stakeTime;
        emit SetStakeTime(_stakeTime);
    }

    /// @notice Sets lock status
    /// @param _isLocked Is locked
    function setLocked(bool _isLocked) external onlyOwner {
        isLocked = _isLocked;
        emit SetLocked(_isLocked);
    }

    /// @notice Sets pause status
    /// @param _isPaused Is paused
    function setPaused(bool _isPaused) external onlyOwner {
        isPaused = _isPaused;
        emit SetPaused(_isPaused);
    }

    /// @notice Sets early migrate status
    /// @param _canEarlyMigrate Can early migrate
    function setCanEarlyMigrate(bool _canEarlyMigrate) external onlyOwner {
        canEarlyMigrate = _canEarlyMigrate;
        emit SetCanEarlyMigrate(_canEarlyMigrate);
    }

    /// @notice Sets bootstrapper
    /// @param _bootstrapper Bootstrapper
    /// @param _isBootstrapper Is bootstrapper
    function setBootstrapper(address _bootstrapper, bool _isBootstrapper) external onlyOwner {
        require(_bootstrapper != address(0), "!_bootstrapper");

        isBootstrapper[_bootstrapper] = _isBootstrapper;
        emit SetBootstrapper(_bootstrapper, _isBootstrapper);
    }

    /// @notice Stake RBN or AEVO
    /// @param _isRBN rbn or aevo
    /// @param _amount Amount to stake
    function stake(bool _isRBN, uint256 _amount) external {
        _stake(_isRBN, _amount, msg.sender);
    }

    /// @notice Stake RBN or AEVO for recipient
    /// @param _isRBN rbn or aevo
    /// @param _amount Amount to stake
    /// @param _recipient Recipient of stake
    function stakeFor(bool _isRBN, uint256 _amount, address _recipient) external {
        _stake(_isRBN, _amount, _recipient);
    }

    /// @notice Unstake Aevo
    /// @notice Must unstake to re-stake with new epoch
    /// @param _start Start epoch to unlock
    /// @param _end End epoch to unlock
    function unstake(uint16 _start, uint16 _end) external returns (uint256) {
        return _unstake(msg.sender, _start, _end);
    }

    /// @notice Unstake Aevo for recipient
    /// @param _recipient Recipient of unstake
    /// @param _start Start epoch to unlock
    /// @param _end End epoch to unlock
    function unstakeFor(address _recipient, uint16 _start, uint16 _end) external returns (uint256) {
        return _unstake(_recipient, _start, _end);
    }

    /// @notice Migrate RBN to AEVO (with a 1:1 ratio)
    /// @param _amount Amount to migrate
    function migrate(uint256 _amount) external {
        require(block.timestamp >= migration || isBootstrapper[msg.sender] || canEarlyMigrate, "!migrate");
        require(_amount > 0, "!_amount");

        IERC20(rbn).safeTransferFrom(msg.sender, address(this), _amount);
        IERC20(aevo).safeTransfer(msg.sender, _amount);
        emit Migrate(msg.sender, _amount);
    }

    /// @notice Stake RBN or AEVO
    /// @param _isRBN rbn or aevo
    /// @param _amount Amount to stake
    /// @param _recipient Recipient of stake
    function _stake(bool _isRBN, uint256 _amount, address _recipient) internal {
        require(!isPaused, "paused");
        require(block.timestamp >= start, "!started");
        require(_amount > 0, "!_amount");
        require(_recipient != address(0), "!_recipient");

        uint16 cEpoch = epoch();
        balance[_recipient][cEpoch] += _amount;
        epochBalance[cEpoch] += _amount;
        IERC20(_isRBN ? rbn : aevo).safeTransferFrom(msg.sender, address(this), _amount);
        emit Stake(_recipient, cEpoch, _amount, _isRBN);
    }

    /// @notice Unstake Aevo
    /// @param _recipient Recipient of unstake
    /// @param _start Start epoch to unlock
    /// @param _end End epoch to unlock
    function _unstake(address _recipient, uint16 _start, uint16 _end) internal returns (uint256 unstakeAmount) {
        require(_recipient != address(0), "!_recipient");
        require(_start <= _end, "!_start");
        require(!isLocked || _end <= epoch() - uint16(stakeTime / epochTime), "!_end");

        uint16 cEpoch = _start;

        while (cEpoch <= _end) {
            unstakeAmount += balance[_recipient][cEpoch];
            balance[_recipient][cEpoch] = 0;
            cEpoch++;
        }

        require(unstakeAmount > 0, "!unstakeAmount");

        IERC20(aevo).safeTransfer(_recipient, unstakeAmount);
        emit Unstake(_recipient, _start, _end, unstakeAmount);
    }

    event SetEpochTime(uint256 epochTime);
    event SetStart(uint256 start);
    event SetMigration(uint256 migration);
    event SetStakeTime(uint256 stakeTime);
    event SetLocked(bool isLocked);
    event SetPaused(bool isPaused);
    event SetCanEarlyMigrate(bool canEarlyMigrate);
    event SetBootstrapper(address indexed bootstrapper, bool isBootstrapper);
    event Stake(address indexed recipient, uint16 indexed epoch, uint256 amount, bool isRBN);
    event Unstake(address indexed recipient, uint16 indexed startEpoch, uint16 indexed endEpoch, uint256 amount);
    event Migrate(address indexed recipient, uint256 amount);
}
