// SPDX-License-Identifier: Apache-2.0
pragma solidity 0.8.27;

import {IERC20, IERC20Metadata} from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {Ownable2Step, Ownable} from "@openzeppelin/contracts/access/Ownable2Step.sol";
import {ReentrancyGuardTransient} from "@openzeppelin/contracts/utils/ReentrancyGuardTransient.sol";

/**
 * @title NativeCoinLocker
 * @dev A general purpose Native Coin Locker.
 */
contract NativeCoinLocker is Ownable2Step, ReentrancyGuardTransient {
    IERC20 public asset;

    uint256 public lockPeriod;
    uint256 public participantNumber;
    uint256 public totalSupply;
    uint256 public constant MAX_LOCK_PERIOD = 60 * 60 * 24 * 180;

    string public name;
    string public symbol;

    mapping(address => uint256) public lockedDeposit;
    mapping(address => uint256) public unlockTime;

    event LockPeriodUpdated(uint256 lockPeriod);
    event Deposit(address depositor, uint256 amount);
    event Withdraw(address caller, address receiver, uint256 amount);
    event Transfer(address indexed from, address indexed to, uint256 value);

    error InvalidDepositAmount();
    error InsufficientLockPeriod();
    error InsufficientDeposit();
    error ZeroAddressReceipient();
    error InvalidLockPeriod();
    error MisMatchedDepositAmount();
    error CoinTransferFailure();

    modifier onlyValidLockPeriod(uint256 _lockPeriod) {
        if (_lockPeriod > MAX_LOCK_PERIOD) {
            revert InvalidLockPeriod();
        }
        _;
    }

    constructor(address _owner, uint256 _lockPeriod, string memory _name, string memory _symbol)
        Ownable(_owner)
        onlyValidLockPeriod(_lockPeriod)
    {
        lockPeriod = _lockPeriod;
        name = _name;
        symbol = _symbol;
    }

    function updateLockPeriod(uint256 _lockPeriod) external onlyOwner onlyValidLockPeriod(_lockPeriod) {
        lockPeriod = _lockPeriod;

        emit LockPeriodUpdated(_lockPeriod);
    }

    function deposit(uint256 _amount) external payable {
        if (_amount == 0) {
            revert InvalidDepositAmount();
        }
        if (_amount != msg.value) {
            revert MisMatchedDepositAmount();
        }
        if (lockedDeposit[msg.sender] == 0) {
            unchecked {
                ++participantNumber;
            }
        }

        lockedDeposit[msg.sender] += msg.value;
        unlockTime[msg.sender] = block.timestamp;
        totalSupply += msg.value;

        emit Deposit(msg.sender, msg.value);
        emit Transfer(address(0), msg.sender, msg.value);
    }

    function withdraw(uint256 _amount, address _receiver) external nonReentrant {
        if (_receiver == address(0)) {
            revert ZeroAddressReceipient();
        }
        uint256 userLockedDeposit = lockedDeposit[msg.sender];
        if (userLockedDeposit < _amount) {
            revert InsufficientDeposit();
        }
        if (block.timestamp < getUnlockableTimestamp(msg.sender)) {
            revert InsufficientLockPeriod();
        }
        if ((userLockedDeposit - _amount) == 0) {
            delete unlockTime[msg.sender];
            --participantNumber;
        }

        lockedDeposit[msg.sender] -= _amount;
        totalSupply -= _amount;

        (bool sent,) = _receiver.call{value: _amount}("");
        if (sent != true) {
            revert CoinTransferFailure();
        }

        emit Withdraw(msg.sender, _receiver, _amount);
        emit Transfer(msg.sender, address(0), _amount);
    }

    function getUnlockableTimestamp(address _locker) public view returns (uint256) {
        uint256 unlock = unlockTime[_locker];
        return (unlock == 0) ? 0 : unlock + lockPeriod;
    }

    function decimals() external pure returns (uint256) {
        return 18;
    }

    function balanceOf(address _locker) external view returns (uint256) {
        return lockedDeposit[_locker];
    }
}
