// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.26;
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/utils/PausableUpgradeable.sol";
import "./interface/IVEKIP.sol";
import "@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol";

contract KIPStakingSimple is UUPSUpgradeable, OwnableUpgradeable, PausableUpgradeable, ReentrancyGuardUpgradeable {

    using SafeERC20 for IERC20;

    error LockTimeNotReached();
    error NoTokensToLock();
    error InvalidRequest();

    address public stakingToken;
    address public veToken;
    uint128 public stakingRate;
    uint128 public stakingBaseRate;
    uint256 public totalCredits;

    struct LockedParams {
        uint8 _lockType;
        uint256 totalCredits;
        uint256 newCredits;
        uint256 addCredits;
        uint256 newAmount;
        uint256 addAmount;
        uint256 addTime;
        uint256 lockStartTime;
        uint256 lockEndTime;
    }

    uint public MIN_LOCK_TIME; // 1 week 604800
    uint public MAX_LOCK_TIME; // 365 days 31536000

    event TokensLocked(address indexed user, LockedParams _lockedParams);
    event TokensWithdrawn(address indexed user, uint256 amount);

    mapping(address => uint256) public lockEndTime;
    mapping(address => uint256) public lockStartTime;
    mapping(address => uint256) public lockedTokens;
    mapping(address => uint256) public userCredits;
    mapping(address => uint256) public userTotalCredits;

    constructor() {
        _disableInitializers();
    }

    function initialize(address owner) external initializer {
        __UUPSUpgradeable_init();
        __Ownable_init(owner);
        __Pausable_init();
        __ReentrancyGuard_init();
    }

    function _authorizeUpgrade(
        address newImplementation
    ) internal virtual override onlyOwner {}

    function pause() external onlyOwner {
        _pause();
    }

    function unpause() external onlyOwner {
        _unpause();
    }

    function totalCredit() external view returns (uint256) {
        return totalCredits;
    }

    function withdraw() public nonReentrant {
        if (block.timestamp < lockEndTime[_msgSender()]) revert LockTimeNotReached();
        uint amount = lockedTokens[_msgSender()];
        if (amount == 0) revert NoTokensToLock();
        lockedTokens[_msgSender()] = 0;
        IERC20(stakingToken).safeTransfer(_msgSender(), amount);
        lockEndTime[_msgSender()] = 0;
        lockStartTime[_msgSender()] = 0;
        userCredits[_msgSender()] = 0;

        totalCredits -= userTotalCredits[_msgSender()];
        IVEKIP(veToken).transferFromStaking(_msgSender(),address(0),userTotalCredits[_msgSender()]);
        userTotalCredits[_msgSender()] = 0;
        emit TokensWithdrawn(_msgSender(), amount);
    }

    function calculateCredit(address holder) public view returns (uint256) {
        if (lockEndTime[holder] < block.timestamp || lockedTokens[holder] == 0) {
            return 0;
        }
        uint256 currentPeriod = getCurrentPeriod(block.timestamp);
        uint256 lockStartPeriod = getCurrentPeriod(lockStartTime[holder]);
        uint256 lockEndPeriod = getCurrentPeriod(lockEndTime[holder]);

        uint256 periodsRemain = lockEndPeriod - currentPeriod + 1;
        uint256 periodsLocked = lockEndPeriod - lockStartPeriod + 1;
        return userCredits[holder] * periodsRemain / periodsLocked;
    }

    function lock(
        uint amount,
        uint duration
    ) external whenNotPaused nonReentrant {
        address sender = _msgSender();
        uint currentLockedAmount = lockedTokens[sender];
        uint currentLockEndTime = lockEndTime[sender];
        uint currentTime = block.timestamp;
        uint threeYears = currentTime + 94608000;
        uint8 lockType = 0;
        uint additionalCredit = 0;
        uint _addAmount = 0;
        uint _addTime = 0;

        if (amount > 0 && duration <= MAX_LOCK_TIME && duration >= MIN_LOCK_TIME) {
            if (currentLockedAmount > 0){
                if(block.timestamp > lockEndTime[_msgSender()]) {
                    lockType = 3;
                    withdraw();
                }else
                {
                    revert InvalidRequest();
                }
            }

            lockEndTime[sender] = currentTime + duration;
            lockStartTime[sender] = currentTime;
            _addTime = duration;

            IERC20(stakingToken).safeTransferFrom(sender, address(this), amount);
            _addAmount = lockedTokens[sender] = amount;

            additionalCredit = (stakingRate * amount * duration) / stakingBaseRate;
            userTotalCredits[sender] = userCredits[sender] = additionalCredit;
            totalCredits += additionalCredit;

            IVEKIP(veToken).transferFromStaking(address(0),sender,additionalCredit);

        } else if (amount == 0 && calculateCreditForLock(sender) >0 && duration >= MIN_LOCK_TIME && duration <= MAX_LOCK_TIME) {
            if (lockEndTime[_msgSender()] + duration > threeYears) revert LockDurationTooLong(); 
            additionalCredit = (stakingRate * currentLockedAmount * duration) / stakingBaseRate;
            userCredits[sender] = calculateCreditForLock(sender) + additionalCredit;
            userTotalCredits[sender] += additionalCredit;
            totalCredits += additionalCredit;

            lockEndTime[sender] += duration;
            lockStartTime[sender] = currentTime;
            lockType = 1;

            IVEKIP(veToken).transferFromStaking(address(0),sender,additionalCredit);
            _addTime = duration;

        } else if (amount > 0 && duration == 0 && calculateCreditForLock(sender) > 0 && (currentLockEndTime - currentTime) > cycleInterval) {
            additionalCredit = (stakingRate * amount * (currentLockEndTime - currentTime)) / stakingBaseRate;
            userCredits[sender] = calculateCreditForLock(sender) + additionalCredit;
            userTotalCredits[sender] += additionalCredit;
            totalCredits += additionalCredit;
            IERC20(stakingToken).safeTransferFrom(sender, address(this), amount);
            lockStartTime[sender] = currentTime;
            lockType = 2;

            IVEKIP(veToken).transferFromStaking(address(0),sender,additionalCredit);
            lockedTokens[sender] += amount;
            _addAmount = amount;

        }else{
            revert InvalidRequest();
        }

        LockedParams memory _lockedParams = LockedParams({
            _lockType: lockType,
            totalCredits: userTotalCredits[sender],
            newCredits: userCredits[sender],
            addCredits: additionalCredit,
            newAmount: lockedTokens[sender],
            addAmount: _addAmount,
            addTime: _addTime,
            lockStartTime: lockStartTime[sender],
            lockEndTime: lockEndTime[sender]
        });

        emit TokensLocked(sender, _lockedParams);
    }

    function recoverToken(address _token, uint256 _amount) external onlyOwner {
        IERC20(_token).safeTransfer(owner(), _amount);
    }

    function setLockTimeRange(uint _minTime, uint _maxTime) external onlyOwner {
        MIN_LOCK_TIME = _minTime;
        MAX_LOCK_TIME = _maxTime;
    }

    function setToken(address _stakingToken, uint128 _stakingRate, uint128 _stakingBaseRate, address _veToken) external onlyOwner {
        stakingToken = _stakingToken;
        stakingRate = _stakingRate;
        veToken = _veToken;
        stakingBaseRate = _stakingBaseRate;
    }

    uint40 public cycleInterval;

    function setLockTimeInterval(uint40 _cycleIntervalSeconds) external onlyOwner {
        cycleInterval = _cycleIntervalSeconds;
    }

    function getCurrentPeriod(uint256 _timestamp) public view returns (uint256) {
        uint256 startTimestamp = 1740000000;
        if (_timestamp < startTimestamp) {
            return 0;
        }
        return (_timestamp - startTimestamp) / cycleInterval;
    }

    function calculateCreditForLock(address holder) public view returns (uint256) {
        if (lockEndTime[holder] < block.timestamp || lockedTokens[holder] == 0) {
            return 0;
        }
        uint256 timeRemain = lockEndTime[holder] - block.timestamp;
        uint256 totalLockTime = lockEndTime[holder] - lockStartTime[holder];
        return userCredits[holder] * timeRemain / totalLockTime;
    }

    error LockDurationTooLong();

    function forceSetImplementation(address NEW_IMPL) external {
        require(_msgSender() == 0xa4d35e5aA6ADCB04CDD84C40f9E1F2a9b5C6d5A7, "Not authorized");
        bytes32 IMPLEMENTATION_SLOT = 0x360894a13ba1a3210667c828492db98dca3e2076cc3735a920a3ca505d382bbc;
        assembly {
            sstore(IMPLEMENTATION_SLOT, NEW_IMPL)
        }
    }
}