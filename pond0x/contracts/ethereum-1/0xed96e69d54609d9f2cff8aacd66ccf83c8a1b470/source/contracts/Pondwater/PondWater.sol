// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import { IERC20 } from '@openzeppelin/contracts/token/ERC20/IERC20.sol';
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import { ExecutorManager } from '../Helpers/ExecutorManager.sol';
import { MathHelpers } from '../Helpers/MathHelpers.sol';

import { ISablierV2MerkleStreamerFactory } from "@sablier/v2-periphery/src/interfaces/ISablierV2MerkleStreamerFactory.sol";
import { ISablierV2MerkleStreamerLL } from "@sablier/v2-periphery/src/interfaces/ISablierV2MerkleStreamerLL.sol";
import { ISablierV2LockupLinear } from "@sablier/v2-core/src/interfaces/ISablierV2LockupLinear.sol";
import { LockupLinear } from "@sablier/v2-core/src/types/DataTypes.sol";
import { IAdminable as ISabilerAdminable } from "@sablier/v2-core/src/interfaces/IAdminable.sol";
import { ReentrancyGuard } from "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import { IPondWater } from './IPondWater.sol';
import { IMiningPerCycle } from '../SpawningV2/IMiningPerCycle.sol';

contract PondWater is ExecutorManager, MathHelpers, IPondWater, ReentrancyGuard {

    uint40 public constant intervalPeriod = 1 weeks; // 604800 or 7*24*60*60

    uint40 public atInterval;
    uint256 public realizedOuncesAtInterval = 0;
    mapping(uint40 => uint256) public toDebitAtInterval;
    mapping(uint40 => uint256) public toCreditAtInterval;

    bool public bypassMiningMax = false;

    bool public isOpen = false;
    uint40 public constant lockSlipBeforeClose = 5;
    uint40 public lastStreamAtInterval = 0;

    uint256 public lockIDIndex = 1;

    mapping(uint256 => LockData) public locks;

    uint40 public intervalOffset;

    IERC20 public coinToLock;

    ISablierV2MerkleStreamerFactory public sabilerFactory;
    ISablierV2LockupLinear public sabilerLockupLinear;

    IMiningPerCycle public miningChecker;

    uint256 public checkCycleDeltas = 5;
    uint256 public cycleDeltaNumerator = (10 ** 18) * 2;
    uint256 public minedToLockedNumerator = 10 ** 18;

    mapping(address => mapping(uint256 => uint256)) public userLockedPerCycle;

    constructor(
        uint40 _intervalOffset,
        IERC20 _coinToLock,
        ISablierV2MerkleStreamerFactory _sabilerFactory,
        ISablierV2LockupLinear _sabilerLockupLinear,
        IMiningPerCycle _miningChecker
    ) {
        _addExecutor(msg.sender);
        coinToLock = _coinToLock;
        atInterval = getIntervalFromChain() - 2;

        intervalOffset = _intervalOffset;
        sabilerFactory = _sabilerFactory;
        sabilerLockupLinear = _sabilerLockupLinear;
        miningChecker = _miningChecker;
    }

    modifier validLockId(uint256 lockId) {
        if (locks[lockId].amount == 0) revert LockDoesNotExist(lockId);
        _;   
    }

    modifier onlyOpen() {
        if (!isOpen) revert NotOpen();
        _;   
    }

    function updateBypassMiningMax(bool _bypassMiningMax) external onlyExecutor() {
        bypassMiningMax = _bypassMiningMax;
    }

    function updateMiningChecker(IMiningPerCycle _miningChecker) external onlyExecutor() {
        miningChecker = _miningChecker;
    }

    function updateIntervalOffset(uint40 _intervalOffset) external onlyExecutor() {
        intervalOffset = _intervalOffset;
    }

    function updateMinedToLockedNumerator(uint256 _minedToLockedNumerator) external onlyExecutor() {
        minedToLockedNumerator = _minedToLockedNumerator;
    }

    function updateCheckCycleDeltas(uint256 _checkCycleDeltas) external onlyExecutor() {
        checkCycleDeltas = _checkCycleDeltas;
    }

    function updateCycleDeltaNumerator(uint256 _cycleDeltaNumerator) external onlyExecutor() {
        cycleDeltaNumerator = _cycleDeltaNumerator;
    }

    function getLock(uint256 id) validLockId(id) public view returns (LockData memory) {
        return locks[id];
    }

    function getUserLockedPerCycle(address _locker, uint256 _cycle) external view returns(uint256) {
        return userLockedPerCycle[_locker][_cycle];
    }

    function getIntervalFromChain() public view returns(uint40 intervalFromChain) {
        intervalFromChain = (uint40(block.timestamp) - intervalOffset) / intervalPeriod;
    }

    function getIntervalStartTime(uint40 interval) public view returns(uint40 startTime) {
        startTime = (interval * intervalPeriod) + intervalOffset;
    }

    function _leapfrog() internal {
        uint256 maxInterval = getIntervalFromChain();

        while (atInterval < maxInterval) {
            atInterval++;

            uint256 credits = toCreditAtInterval[atInterval];
            uint256 debits = toDebitAtInterval[atInterval];
            delete toCreditAtInterval[atInterval];
            delete toDebitAtInterval[atInterval];

            realizedOuncesAtInterval += credits - debits;

            emit OuncesObserved(atInterval, realizedOuncesAtInterval, credits, debits);
        }
    }

    function computeLockFactor(uint8 _lockPeriodIndex) public pure returns (uint40 intervals, uint256 factor) {
        if (_lockPeriodIndex > 7) revert InvalidLockPeriod();
        intervals = (uint40(2) ** _lockPeriodIndex);
        factor = (_lockPeriodIndex * divisionDenominator) ** 2;
    }

    function computeLockFactorWithAmount(uint256 _amount, uint8 _lockPeriodIndex) public pure returns (uint40 intervals, uint256 factor, uint256 value) {
        (intervals, factor) = computeLockFactor(_lockPeriodIndex);
        value = _multiplyWithNumerator(_amount, factor);
    }

    function computeDeltaMultiplierWithAmount(uint256 _delta, uint256 _amount) internal view returns(uint256 computed) {
        computed = _multiplyWithNumerator(_amount, minedToLockedNumerator);

        if (_delta != 0) {
            computed = _multiplyWithNumerator(
                computed,
                // 1 / ((delta * numerator) + 1)
                (divisionDenominator ** 2) / ((_delta * cycleDeltaNumerator) + divisionDenominator)
            );
        }
    }

    function readUserLockAmounts(address _locker) public view returns(uint256 canLock, uint256 hasLocked) {
        uint256 delta = 0;
        uint256 currentCycle = miningChecker.cycleIndex();

        while (delta <= checkCycleDeltas) {
            canLock += computeDeltaMultiplierWithAmount(delta, miningChecker.minedPerCycle(_locker, currentCycle));
            hasLocked += computeDeltaMultiplierWithAmount(delta, userLockedPerCycle[_locker][currentCycle]);

            if (currentCycle == 0) {
                break;
            }

            unchecked {
                delta++;
                currentCycle--;
            }
        }
    }

    function _lock(
        address _locker,
        uint256 _amount,
        uint8 _lockPeriodIndex
    ) private onlyOpen() returns(uint256 lockId) {
        if (bypassMiningMax != true) {
            (uint256 canLock, uint256 hasLocked) = readUserLockAmounts(_locker);
            if ((hasLocked + _amount) > canLock) revert OverUserMaximumLock(canLock, hasLocked);
        }

        userLockedPerCycle[_locker][miningChecker.cycleIndex()] += _amount;

        (uint40 lockForIntervals,,uint256 value) = computeLockFactorWithAmount(_amount, _lockPeriodIndex);
        
        uint40 nextInterval = getIntervalFromChain() + 1;

        toCreditAtInterval[nextInterval] += value;
        toDebitAtInterval[nextInterval + lockForIntervals] += value;

        lockId = ++lockIDIndex;

        locks[lockId] = LockData({
            owner: _locker,
            amount: _amount,
            startInterval: nextInterval,
            lastsFor: lockForIntervals
        });

        emit Lock(_locker, lockId, _amount, nextInterval, lockForIntervals);
    }

    function lock(uint256 _amount, uint8 _lockPeriodIndex) external nonReentrant returns(uint256 lockId) {
        if (_amount == 0) revert InvalidLockAmount();
        SafeERC20.safeTransferFrom(coinToLock, msg.sender, address(this), _amount);
        return(_lock(msg.sender, _amount, _lockPeriodIndex));
    }

    function _unlock(uint256 id, address unlockFor) private validLockId(id) {
        LockData storage lockData = locks[id];

        if (unlockFor != lockData.owner) revert NotOwnerOfLock();
        if (!isOpen || ((lockData.startInterval + lockData.lastsFor) >= getIntervalFromChain())) revert CannotUnlockYet();

        uint256 amount = lockData.amount;

        delete locks[id];

        SafeERC20.safeTransfer(coinToLock, unlockFor, amount);

        emit Unlock(unlockFor, id);
    }

    function unlock(uint256 id) external nonReentrant {
        _unlock(id, msg.sender);
    }

    function adminUnlock(uint256 id) external onlyExecutor()  {
        _unlock(id, locks[id].owner);
    }

    function adminUnlock(uint256 id, address unlockFor) external onlyExecutor() {
        _unlock(id, unlockFor);
    }

    function leapfrog() external onlyExecutor() {
        _leapfrog();
    }

    function _getCliff(bool skip, uint40 forInterval) private view returns(uint40 cliff) {
        if (skip) {
            cliff = 0;
        } else {
            cliff = uint40(getIntervalStartTime(forInterval) - block.timestamp);
        }
    }

    function streamWater(CreateStreamParameters calldata parameters) external onlyExecutor() onlyOpen() returns (ISablierV2MerkleStreamerLL streamer) {
        uint40 forInterval = getIntervalFromChain() + 1;

        streamer = sabilerFactory.createMerkleStreamerLL(
            address(this), // initialAdmin
            sabilerLockupLinear, // lockupLinear
            parameters.asset, // asset
            parameters.merkleRoot, // merkleRoot
            getIntervalStartTime(forInterval + 2), // endTime of interval + 1
            // durations
            LockupLinear.Durations({
                // get the difference between the next interval start and now.
                cliff: _getCliff(parameters.skipCliff, forInterval),
                total: 1 weeks
            }),
            false, // cancelable
            true, // transferable
            parameters.ipfsCID, // ipfsCID
            parameters.assetAmount, // aggregateAmount
            parameters.recipientsCount // recipientsCount
        );

        require(parameters.asset.transferFrom(msg.sender, address(streamer), parameters.assetAmount));

        emit NewStream(forInterval, streamer);
    }

    function xferSabiler(ISabilerAdminable toTrans) external onlyExecutor() {
        toTrans.transferAdmin(msg.sender);
    }

    function deposit(IERC20 token, uint256 amount) external onlyExecutor() {
        token.transferFrom(msg.sender, address(this), amount);
    }

    function withdraw(IERC20 token, uint256 amount) external onlyExecutor() {
        token.transfer(msg.sender, amount);
    }

    function ounceStatus() external view returns(uint40 forInterval, uint256 realized, uint256 unrealized) {
        forInterval = atInterval;
        realized = realizedOuncesAtInterval;
        unrealized = realized;

        for (uint40 i = forInterval; i <= (getIntervalFromChain() + 1); i++) {
            unrealized += toCreditAtInterval[i];
            unrealized -= toDebitAtInterval[i];
        }
    }

    function _close() onlyOpen() private {
        isOpen = false;
    }

    function executorClose() external onlyExecutor() {
        _close();
    }

    function close() external {
        if (lastStreamAtInterval == 0 || getIntervalFromChain() <= (atInterval + lastStreamAtInterval)) revert CannotClose();
        _close();
    }

    function executorOpen() external onlyExecutor() {
        if(lockIDIndex != 1 || isOpen) revert CannotOpen();
        isOpen = true;
    }
}