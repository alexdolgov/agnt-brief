// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import { IERC20 } from '@openzeppelin/contracts/token/ERC20/IERC20.sol';
import { ISablierV2MerkleStreamerFactory } from "@sablier/v2-periphery/src/interfaces/ISablierV2MerkleStreamerFactory.sol";
import { ISablierV2MerkleStreamerLL } from "@sablier/v2-periphery/src/interfaces/ISablierV2MerkleStreamerLL.sol";
import { ISablierV2LockupLinear } from "@sablier/v2-core/src/interfaces/ISablierV2LockupLinear.sol";
import { IAdminable as ISabilerAdminable } from "@sablier/v2-core/src/interfaces/IAdminable.sol";
import { IMiningPerCycle } from '../SpawningV2/IMiningPerCycle.sol';

interface IPondWaterBase {
    /// @notice Emitted when a lock is created
    /// @param locker The address that created the lock
    /// @param id The lock id
    /// @param locked The amount locked
    /// @param startsAt The start interval of the lock
    /// @param lockedFor The duration of the lock, in intervals
    event Lock(address indexed locker, uint256 indexed id, uint256 locked, uint40 startsAt, uint40 lockedFor);

    /// @notice Emitted when a lock is unlocked
    /// @param locker The address that unlocked/owns the lock
    /// @param id The lock id
    event Unlock(address indexed locker, uint256 indexed id);

    /// @notice Emitted when a new stream is created
    /// @param forInterval The interval the stream was created for / starts at
    /// @param streamer The streamer contract
    event NewStream(uint40 indexed forInterval, ISablierV2MerkleStreamerLL indexed streamer);

    /// @notice Emitted when leapfrog is called and new ounces are calculated
    /// @param observedInterval The interval the leapfrog was called at
    /// @param realized The realized amount at observedInterval
    /// @param credits The total credits at observedInterval
    /// @param debits The total debits at observedInterval
    event OuncesObserved(uint40 indexed observedInterval, uint256 realized, uint256 credits, uint256 debits);

    /// @notice Thrown when the locking period is not open
    error NotOpen();

    /// @notice Thrown when the lock period is invalid
    error InvalidLockPeriod();

    /// @notice Thrown when the lock amount is invalid
    error InvalidLockAmount();

    /// @notice Thrown when the lock does not exist
    /// @param id The lock id that does not exist
    error LockDoesNotExist(uint256 id);

    /// @notice Thrown when the lock cannot be unlocked yet
    error CannotUnlockYet();

    /// @notice Thrown when the lock is not owned by the caller
    error NotOwnerOfLock();

    /// @notice Thrown when the contract cannot be closed
    error CannotClose();

    /// @notice Thrown when the user cannot lock more
    /// @param canLock The maximum lock amount
    /// @param hasLocked The amount already locked
    error OverUserMaximumLock(uint256 canLock, uint256 hasLocked);

    /// @notice Thrown when the contract cannot be opened
    error CannotOpen();

    /// @notice Data for a specific lock
    /// @param owner The owner of the lock
    /// @param amount The amount locked
    /// @param startInterval The start interval of the lock
    /// @param lastsFor The duration of the lock, in intervals
    struct LockData {
        address owner;
        uint256 amount;
        uint40 startInterval;
        uint40 lastsFor;
    }

    /// @notice The mining checker contract, this is a constant
    /// @return checker The mining checker contract
    function miningChecker() external view returns(IMiningPerCycle checker);

    /// @notice How many deltas to lookback for the mining checker
    /// @return checkCycleDeltas The number of deltas to lookback for the mining checker
    function checkCycleDeltas() external view returns(uint256 checkCycleDeltas);

    /// @notice Read the cycle delta numerator
    /// @return cycleDeltaNumerator The cycle delta numerator
    function cycleDeltaNumerator() external view returns(uint256 cycleDeltaNumerator);

    /// @notice Get the amount a user locked in a given cycle
    /// @param locker The locker to get the amount for
    /// @param cycle The cycle to get the amount for
    /// @return lockedPerCycle The amount locked
    function getUserLockedPerCycle(address locker, uint256 cycle) external view returns(uint256 lockedPerCycle);

    /// @notice Whether the contract is open
    /// @return isOpen Whether the contract is open
    function isOpen() external view returns(bool);

    /// @notice Get the faucet interval period in seconds
    function intervalPeriod() external view returns(uint40);

    /// @notice Get the interval offset
    function intervalOffset() external view returns(uint40);

    /// @notice Get the token that is locked in this contract
    /// @return coinToLock The token that is locked in this contract
    function coinToLock() external view returns(IERC20);

    /// @notice Get the lock data for a given lock id
    /// @param id The lock id
    /// @return lockData The lock data
    function getLock(uint256 id) view external returns (LockData memory lockData);

    /// @notice Get the current index
    /// @return atInterval The current index
    function atInterval() external view returns(uint40);

    /// @notice Get the realized amount at the current interval
    /// @return realized The realized amount at the current interval
    function realizedOuncesAtInterval() external view returns(uint256 realized);

    /// @notice Get the current lock index
    /// @return lockIDIndex The current lock index
    function lockIDIndex() external view returns(uint256);

    /// @notice Get the sablier factory
    /// @return sabilerFactory The sablier factory
    function sabilerFactory() external view returns(ISablierV2MerkleStreamerFactory sabilerFactory);

    /// @notice Get the sablier lockup linear contract
    /// @return sabilerLockupLinear The sablier lockup linear contract
    function sabilerLockupLinear() external view returns(ISablierV2LockupLinear sabilerLockupLinear);

    /// @notice Compute the interval from the chain timestamp
    /// @return getIntervalFromChain The interval computed from the chain timestamp
    function getIntervalFromChain() external view returns(uint40);

    /// @notice Get the start time for a given interval
    /// @param interval The interval to compute
    /// @return startTime The start time for the given interval
    function getIntervalStartTime(uint40 interval) external view returns(uint40 startTime);

    /// @notice Get the lock amounts for a given user
    /// @param locker The locker to get the lock amounts for
    /// @return canLock The weighted amount the locker can lock
    /// @return hasLocked The weighted amount the locker has locked
    function readUserLockAmounts(address locker) external view returns(uint256 canLock, uint256 hasLocked);

    /// @notice Compute the lock factor/interval count for a given lock period index
    /// @param lockPeriodIndex The lock period index
    /// @return intervalCount The intervals for the lock period index
    /// @return factor The factor for the lock period index
    function computeLockFactor(uint8 lockPeriodIndex) external pure returns (uint40 intervalCount, uint256 factor);

    /// @notice Compute the lock factor/interval count/computed value for a given lock period index and amount
    /// @param amount The amount to compute the lock factor for
    /// @param lockPeriodIndex The lock period index
    /// @return intervalCount The interval count to lock for
    /// @return factor The factor for the interval count
    /// @return value The value for the lock period index with the factor computed
    function computeLockFactorWithAmount(uint256 amount, uint8 lockPeriodIndex) external pure returns (uint40 intervalCount, uint256 factor, uint256 value);

    /// @notice Lock an amount for a given lock period index
    /// @param amount The amount to lock
    /// @param lockPeriodIndex The lock period index
    /// @return lockId The lock id
    function lock(uint256 amount, uint8 lockPeriodIndex) external returns(uint256 lockId);

    /// @notice Unlock a given lock id
    /// @param id The lock id to unlock
    function unlock(uint256 id) external;

    function leapfrog() external;

    /// @notice Get the status of the contract
    /// @return forInterval The interval for the current status
    /// @return realized The realized amount at forInterval
    /// @return unrealized The unrealized amount (includes the realized amount)
    function ounceStatus() external view returns(uint40 forInterval, uint256 realized, uint256 unrealized);

    /// @notice Close the contract if possible
    function close() external;
}

interface IPondWaterAdmin is IPondWaterBase {
    struct CreateStreamParameters {
        IERC20 asset;
        uint256 assetAmount;
        string ipfsCID;
        bytes32 merkleRoot;
        uint256 recipientsCount;
        bool skipCliff;
    }

    function streamWater(CreateStreamParameters calldata parameters) external returns (ISablierV2MerkleStreamerLL streamer);
    function adminUnlock(uint256 id) external;
    function adminUnlock(uint256 id, address unlockFor) external;
    function xferSabiler(ISabilerAdminable toTrans) external;
    function deposit(IERC20 token, uint256 amount) external;
    function withdraw(IERC20 token, uint256 amount) external;
    function executorClose() external;
    function updateCheckCycleDeltas(uint256 checkCycleDeltas) external;
    function updateCycleDeltaNumerator(uint256 cycleDeltaNumerator) external;
    function updateIntervalOffset(uint40 intervalOffset) external;
    function executorOpen() external;
    function updateMinedToLockedNumerator(uint256 minedToLockedNumerator) external;
    function updateMiningChecker(IMiningPerCycle miningChecker) external;
}

interface IPondWater is IPondWaterBase, IPondWaterAdmin {}