// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.19;

import {IAddressesProvider} from "../interfaces/IAddressesProvider.sol";
import {IRoleManager} from "../interfaces/IRoleManager.sol";
import {PrecisionUtils} from "../libraries/PrecisionUtils.sol";
import {Upgradeable} from "../libraries/Upgradeable.sol";
import {StakeErrors} from "./StakeErrors.sol";
import {IEmiter} from "./interfaces/IEmiter.sol";
import {IReleaseLocker} from "./interfaces/IReleaseLocker.sol";
import {IStaker} from "./interfaces/IStaker.sol";
import {Pausable} from "@openzeppelin/contracts/security/Pausable.sol";
import {ReentrancyGuard} from "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import {SignedMath} from "@openzeppelin/contracts/utils/math/SignedMath.sol";
import {EnumerableSet} from "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";

contract Staker is IStaker, Upgradeable, ReentrancyGuard, Pausable {
    using SafeERC20 for IERC20;
    using SignedMath for int256;
    using EnumerableSet for EnumerableSet.AddressSet;

    uint256 constant public EPOCH_DURATION = 7 days;
    uint256 constant public MIN_UNLOCK_DURATION = EPOCH_DURATION * 1;
    uint256 constant public MAX_UNLOCK_DURATION = EPOCH_DURATION * 4;
    uint256 constant public SETTLEMENT_DURATION = 2 hours;
    uint256 constant public REWARD_POINT_OFFSET = 3 days;
    uint16 constant public ACTIVE_NODES_COUNT = 21;
    uint16 constant public MAX_SETTLE_EPOCH_COUNT = 208; // ≈ 4 years

    uint8 constant public MYX_DECIMALS = 18;
    uint256 constant public MIN_VALIDATOR_STAKE_QUANTITY = 500000 * (10 ** MYX_DECIMALS);
    uint256 constant public MIN_USER_STAKE_QUANTITY = 10 * (10 ** MYX_DECIMALS);
    uint256 constant public MAX_VALIDATOR_REWARDS_STAKED = 10000000 * (10 ** MYX_DECIMALS);

    uint64 public override startTime;
    uint256 public override currentEpoch;
    mapping(address validator => ValidatorInfo) private validators;
    mapping(uint256 epoch => EpochInfo) private epochInfos;
    mapping(address validator => ValidatorStake) private stakes;
    mapping(address validator => uint256[]) private validatorActives;

    address public myx;
    address public emiter;
    address public rewardDistributor;
    address public releaseLocker;
    bool public isEnded;

    struct EpochInfo {
        EnumerableSet.AddressSet activeValidators;
        uint64 epochStartTime;
        bool settled;
        uint256 totalRewards;
        mapping(address validator => ActiveValidator) validatorsSettleInfo;
    }

    modifier onlyKeeper() {
        require(IRoleManager(ADDRESS_PROVIDER.roleManager()).isKeeper(_msgSender()), "opk");
        _;
    }

    modifier onlyDistributor() {
        require(_msgSender() == rewardDistributor, StakeErrors.ERR_NOT_DISTRIBUTOR);
        _;
    }

    modifier onlyValidatorOwner(address validator) {
        require(validators[validator].owner == _msgSender(), StakeErrors.ERR_NOT_OWNER);
        _;
    }

    modifier noFractionalAmount(uint256 amount) {
        require(amount % (10 ** MYX_DECIMALS) == 0, StakeErrors.ERR_INVALID_AMOUNT);
        _;
    }

    function initialize(
        IAddressesProvider addressProvider,
        address _myx,
        address _emiter,
        address _rewardDistributor,
        address _releaseLocker
    ) public initializer {
        ADDRESS_PROVIDER = addressProvider;
        myx = _myx;
        emiter = _emiter;
        rewardDistributor = _rewardDistributor;
        releaseLocker = _releaseLocker;

        startTime = 0;
        currentEpoch = 0;
    }

    function setPaused() external onlyPoolAdmin {
        _pause();
    }

    function setUnPaused() external onlyPoolAdmin {
        _unpause();
    }

    function start(uint64 _startTime) external onlyPoolAdmin {
        require(startTime == 0, "Already started");
        require(_startTime > block.timestamp, "Start time must be in future");
        startTime = _startTime;
        emit Started(_startTime);
    }

    function end() external onlyPoolAdmin {
        require(!isEnded, StakeErrors.ERR_ACTIVITY_ENDED);
        isEnded = true;
        emit Ended(block.timestamp);
    }

    function epochActiveInfo(
        uint256 epoch
    ) public view returns (ActiveValidatorInfo[] memory _activeValidators, bool settled) {
        return (getActiveValidatorsInfo(epoch), epochInfos[epoch].settled);
    }

    function getEpochInfo(
        uint256 epoch
    ) public view returns (address[] memory _activeValidators, bool settled, uint256 totalRewards) {
        EpochInfo storage epochInfo = epochInfos[epoch];
        return (epochInfo.activeValidators.values(), epochInfo.settled, epochInfo.totalRewards);
    }

    function getValidatorInfo(address validator) public view returns (ValidatorInfo memory) {
        return validators[validator];
    }

    function getActiveValidatorInfo(uint256 epoch, address validator) public view returns (ActiveValidatorInfo memory) {
        ValidatorStake storage validatorStake = stakes[validator];
        uint256 unlockingPower = _calculatePower(validatorStake.unlockingStakes[epoch], EPOCH_DURATION);
        uint256 virtualPower = validatorStake.virtualPowers[epoch];
        uint256 effectivePower = validatorStake.activePower + unlockingPower - virtualPower;
        return ActiveValidatorInfo({
            validator: validator,
            staked: validatorStake.staked,
            effectivePower: effectivePower,
            activePower: validatorStake.activePower,
            currentEpochVirtualPower: virtualPower
        });
    }

    function getActiveValidatorsInfo(uint256 epoch) public view returns (ActiveValidatorInfo[] memory activeValidatorInfo) {
        address[] memory activeValidators = getActiveValidators(epoch);

        activeValidatorInfo = new ActiveValidatorInfo[](activeValidators.length);
        for (uint256 i = 0; i < activeValidators.length; i++) {
            activeValidatorInfo[i] = getActiveValidatorInfo(epoch, activeValidators[i]);
        }
    }

    function isActiveValidator(uint256 epoch, address target) public view returns (bool isActive) {
        isActive = epochInfos[epoch].activeValidators.contains(target);
    }

    function getActiveValidators(uint256 epoch) public view returns (address[] memory) {
        return epochInfos[epoch].activeValidators.values();
    }

    function getUserStakeInfo(address account, address validator) public view returns (UserStakeInfo memory) {
        UserStake storage userStake = stakes[validator].userStakes[account];

        uint256 virtualPower = userStake.virtualPowers[currentEpoch];
        uint256 unlockingPower = _calculatePower(userStake.unlockingStakes[currentEpoch], EPOCH_DURATION);
        uint256 effectivePower = userStake.activePower + unlockingPower - virtualPower;
        return UserStakeInfo({
            account: account,
            validator: validator,
            staked: userStake.staked,
            effectivePower: effectivePower,
            activePower: userStake.activePower,
            currentEpochVirtualPower: virtualPower,
            lastSettledEpoch: userStake.lastSettledEpoch,
            accruedRewards: userStake.accruedRewards
        });
    }

    function epochTimeBounds(uint256 epoch) external view returns (uint256 epochStartTime, uint256 epochEndTime) {
        return _epochTimeBounds(epoch);
    }

    function registerValidator(
        uint256 stakeAmount,
        uint32 ownerSharingRatio,
        uint64 unlockDuration
    ) external noFractionalAmount(stakeAmount) whenNotPaused nonReentrant returns (address validatorAddress) {
        require(!isEnded, StakeErrors.ERR_ACTIVITY_ENDED);
        require(stakeAmount >= MIN_VALIDATOR_STAKE_QUANTITY, StakeErrors.ERR_MIN_VALIDATOR_STAKE);
        require(ownerSharingRatio <= PrecisionUtils.percentage() && ownerSharingRatio >= 0, StakeErrors.ERR_INVALID_SHARING_RATIO);
        require(unlockDuration <= MAX_UNLOCK_DURATION && unlockDuration >= MIN_UNLOCK_DURATION && unlockDuration % EPOCH_DURATION == 0,
            StakeErrors.ERR_INVALID_UNLOCK_DURATION);
        require(!validators[_msgSender()].election, StakeErrors.ERR_VALIDATOR_ALREADY_REGISTERED);

        _requireUnsettling();

        validatorAddress = _msgSender();

        uint256 alreadyStaked = validators[validatorAddress].ownerStakedAmount;
        uint256 totalStaked = alreadyStaked + stakeAmount;
        validators[validatorAddress] = ValidatorInfo({
            owner: _msgSender(),
            ownerSharingRatio: ownerSharingRatio,
            unlockDuration: unlockDuration,
            ownerStakedAmount: totalStaked,
            election: true
        });

        IEmiter(emiter).emitValidatorRegistered(validatorAddress, totalStaked, ownerSharingRatio, unlockDuration);

        _stake(_msgSender(), validatorAddress, stakeAmount);
    }

    function unregisterValidator(
        address validator
    ) external onlyValidatorOwner(validator) whenNotPaused nonReentrant {
        uint256 staked = validators[validator].ownerStakedAmount;
        require(staked > 0, StakeErrors.ERR_VALIDATOR_NOT_REGISTERED);

        if (!isEnded) { _requireUnsettling();}

        validators[validator].ownerStakedAmount = 0;
        validators[validator].election = false;

        _unstake(_msgSender(), validator, staked, true);

        IEmiter(emiter).emitValidatorUnregistered(validator, currentEpoch);
    }

    function decreaseSharingRatio(
        address validator,
        uint32 sharingRatio
    ) external onlyValidatorOwner(validator) whenNotPaused nonReentrant {
        uint32 oldSharingRatio = validators[validator].ownerSharingRatio;
        require(sharingRatio < oldSharingRatio, StakeErrors.ERR_INVALID_SHARING_RATIO);

        _requireUnsettling();

        validators[validator].ownerSharingRatio = sharingRatio;
        IEmiter(emiter).emitSharingRatioUpdated(validator, oldSharingRatio, sharingRatio);
    }

    function electValidator(uint256 epoch, uint64 epochStartTime, address[] calldata _activeValidators) external onlyKeeper {
        require(epoch == currentEpoch + 1, StakeErrors.ERR_INVALID_EPOCH);
        require(currentEpoch == 0 || epochInfos[currentEpoch].settled, StakeErrors.ERR_SETTLEMENT_IN_PROGRESS);
        require(epochStartTime >= epochInfos[currentEpoch].epochStartTime + EPOCH_DURATION
                    && epochStartTime > block.timestamp - EPOCH_DURATION, StakeErrors.ERR_INVALID_EPOCH);
        require(_activeValidators.length <= ACTIVE_NODES_COUNT && _activeValidators.length > 0, StakeErrors.ERR_INVALID_VALIDATOR_COUNT);
        require(epochInfos[epoch].activeValidators.length() == 0, StakeErrors.ERR_ALREADY_ELECTED);

        require(startTime > 0, StakeErrors.ERR_EPOCH_NOT_START);

        (,uint256 epochEndTime) = _epochTimeBounds(currentEpoch);
        require(block.timestamp >= epochEndTime - SETTLEMENT_DURATION, StakeErrors.ERR_NOT_SETTLEMENT_TIME);

        currentEpoch++;

        EpochInfo storage epochInfo = epochInfos[currentEpoch];
        uint64 startTimeTemp = epoch == 1 ? startTime : epochStartTime;
        for (uint256 i = 0; i < _activeValidators.length; i++) {
            address validator = _activeValidators[i];
            require(validators[validator].election, StakeErrors.ERR_VALIDATOR_NOT_ACTIVE);

            epochInfo.activeValidators.add(validator);
            epochInfo.epochStartTime = startTimeTemp;
            epochInfo.validatorsSettleInfo[validator] = ActiveValidator({
                accTokenPerPower: 0,
                accCoefficient: 0,
                totalPowerBackup: 0,
                totalStakedBackup: 0,
                totalRewardBackup: 0
            });

            validatorActives[validator].push(currentEpoch);
        }

        IEmiter(emiter).emitValidatorElected(currentEpoch, startTimeTemp, startTimeTemp + EPOCH_DURATION, _activeValidators);
    }

    function stake(
        address validator,
        uint256 amount
    ) external noFractionalAmount(amount) whenNotPaused nonReentrant {
        require(!isEnded, StakeErrors.ERR_ACTIVITY_ENDED);
        require(validators[validator].election, StakeErrors.ERR_VALIDATOR_NOT_ACTIVE);
        require(amount >= MIN_USER_STAKE_QUANTITY, StakeErrors.ERR_MIN_USER_STAKE);

        _requireUnsettling();

        _stake(_msgSender(), validator, amount);

        if (_msgSender() == validator) {
            validators[validator].ownerStakedAmount += amount;
        }
    }

    function unstake(
        address validator,
        uint256 amount
    ) external noFractionalAmount(amount) whenNotPaused nonReentrant {
        uint256 staked = stakes[validator].userStakes[_msgSender()].staked;
        require(staked > 0, StakeErrors.ERR_INSUFFICIENT_STAKE);

        if (!isEnded) { _requireUnsettling();}

        uint256 effectiveAmount = Math.min(staked, amount);
        if (_msgSender() == validator) {
            require(validators[validator].ownerStakedAmount - effectiveAmount >= MIN_VALIDATOR_STAKE_QUANTITY, StakeErrors.ERR_MIN_VALIDATOR_STAKE);
            validators[validator].ownerStakedAmount -= effectiveAmount;
        }
        _unstake(_msgSender(), validator, effectiveAmount, false);
    }

    function distribute(
        uint256 epoch,
        address[] calldata _validators,
        uint256[] calldata rewards
    ) external onlyDistributor returns (DistributeData[] memory distributes) {
        require(epoch <= currentEpoch, StakeErrors.ERR_INVALID_EPOCH);
        require(_validators.length == rewards.length, "Length mismatch");
        require(startTime > 0, StakeErrors.ERR_EPOCH_NOT_START);
        require(!epochInfos[epoch].settled, StakeErrors.ERR_ALREADY_SETTLED);
        require(epochInfos[epoch - 1].settled || epoch == 1, StakeErrors.ERR_CAN_NOT_SETTLED);

        uint256 totalRewards;
        for (uint256 i = 0; i < rewards.length; i++) {
            totalRewards += rewards[i];
        }

        EpochInfo storage epochInfo = epochInfos[epoch];

        epochInfo.settled = true;
        epochInfo.totalRewards = totalRewards;

        distributes = new DistributeData[](_validators.length);
        for (uint256 i = 0; i < _validators.length; i++) {
            address validator = _validators[i];

            require(isActiveValidator(epoch, validator), StakeErrors.ERR_VALIDATOR_NOT_ACTIVE);

            ValidatorStake storage validatorStake = stakes[validator];

            uint256 unlockingPower = _calculatePower(validatorStake.unlockingStakes[epoch], EPOCH_DURATION);
            uint256 virtualPower = validatorStake.virtualPowers[epoch];
            uint256 effectivePower = validatorStake.activePower + unlockingPower - virtualPower;

            uint256 accTokenPerPower = effectivePower > 0 ? rewards[i] * (10 ** MYX_DECIMALS) * PrecisionUtils.percentage() / effectivePower : 0;
            uint256 accCoefficient = accTokenPerPower;

            uint256 lastAccCoefficient = _lastEffectiveAccCoefficient(epoch, validator);
            accCoefficient += lastAccCoefficient;

            ActiveValidator storage activeValidator = epochInfo.validatorsSettleInfo[validator];
            activeValidator.accTokenPerPower = accTokenPerPower;
            activeValidator.accCoefficient = accCoefficient;
            activeValidator.totalPowerBackup = effectivePower;
            activeValidator.totalStakedBackup = validatorStake.staked;
            activeValidator.totalRewardBackup = rewards[i];

            distributes[i] = DistributeData({
                validator: validator,
                accTokenPerPower: accTokenPerPower,
                accCoefficient: accCoefficient,
                effectivePower: effectivePower
            });
        }
    }

    function settleRewards(
        address account,
        address validator
    ) external onlyDistributor returns (uint256 epochFrom, uint256 epochTo, uint256 rewards) {
        (epochTo,) = _settle(account, validator);

        UserStake storage userStake = stakes[validator].userStakes[account];

        rewards = userStake.accruedRewards;
        epochFrom = userStake.lastRewardReleaseEpoch + 1;

        userStake.accruedRewards = 0;
        userStake.lastRewardReleaseEpoch = epochTo;
    }

    function pendingRewards(address account, address validator) external view returns (uint256 rewards) {
        UserStake storage userStake = stakes[validator].userStakes[account];

        rewards += userStake.accruedRewards;
        (, uint256 settledRewards) = _calculateRewards(
            validator,
            account,
            userStake.staked,
            userStake.lastSettledEpoch
        );
        rewards += settledRewards;
    }

    function _stake(address account, address validator, uint256 amount) private {
        IERC20(myx).safeTransferFrom(account, address(this), amount);

        ValidatorStake storage validatorStake = stakes[validator];
        UserStake storage userStake = validatorStake.userStakes[account];
        uint256 _currentEpoch = currentEpoch;

        _settle(account, validator);

        validatorStake.staked += amount;
        userStake.staked += amount;

        bool isActive = isActiveValidator(_currentEpoch, validator);
        if (isActive) {
            (uint256 activePower, uint256 virtualPower) = _calculateStakePower(_currentEpoch, amount);
            validatorStake.activePower += activePower;
            validatorStake.virtualPowers[_currentEpoch] += virtualPower;

            userStake.activePower += activePower;
            userStake.virtualPowers[_currentEpoch] += virtualPower;
        } else {
            _updateUnactive(account, validator);
        }

        IEmiter.StakedData memory staked = IEmiter.StakedData({
            epoch: _currentEpoch,
            validator: validator,
            account: account,
            amount: amount,
            validatorStakedAmount: validatorStake.staked,
            validatorActivePower: validatorStake.activePower,
            validatorVirtualPower: validatorStake.virtualPowers[_currentEpoch],
            validatorUnlockingAmount: validatorStake.unlockingStakes[_currentEpoch],
            userStakedAmount: userStake.staked,
            userActivePower: userStake.activePower,
            userVirtualPower: userStake.virtualPowers[_currentEpoch],
            userUnlockingAmount: userStake.unlockingStakes[_currentEpoch]
        });

        IEmiter(emiter).emitStaked(staked);
    }

    function _unstake(address account, address validator, uint256 amount, bool isUnregister) internal {
        ValidatorStake storage validatorStake = stakes[validator];
        UserStake storage userStake = validatorStake.userStakes[account];
        uint256 _currentEpoch = currentEpoch;

        _settle(account, validator);

        validatorStake.staked -= amount;
        userStake.staked -= amount;

        uint64 validatorUnlockDuration = validators[validator].unlockDuration;
        uint256 lockEpochs = validatorUnlockDuration / EPOCH_DURATION;
        bool isActive = isActiveValidator(_currentEpoch, validator);
        uint64 lockDuration;
        uint256 unlockUntilEpoch = _currentEpoch;
        if (isActive) {
            (uint256 activePower,) = _calculateStakePower(_currentEpoch, amount);

            validatorStake.activePower -= activePower;
            userStake.activePower -= activePower;

            if (!validators[validator].election || isUnregister) {
                (,uint256 epochEndTime) = _epochTimeBounds(_currentEpoch);
                lockDuration = uint64(epochEndTime - block.timestamp);

                userStake.unlockingStakes[_currentEpoch] += amount;
                validatorStake.unlockingStakes[_currentEpoch] += amount;
            } else {
                lockDuration = validatorUnlockDuration;
                unlockUntilEpoch = _currentEpoch + lockEpochs;

                for (uint256 i = 0; i < lockEpochs; i++) {
                    userStake.unlockingStakes[_currentEpoch + i] += amount;
                    validatorStake.unlockingStakes[_currentEpoch + i] += amount;
                }
            }
        } else {
            lockDuration = 0;
            _updateUnactive(account, validator);
        }
        _releaseValidatorStake(account, validator, amount, lockDuration);

        IEmiter(emiter).emitUnstaked(
            IEmiter.UnstakedData({
                epoch: _currentEpoch,
                validator: validator,
                account: account,
                amount: amount,
                unlockTime: block.timestamp + lockDuration,
                unlockUntilEpoch: unlockUntilEpoch,
                validatorStakedAmount: validatorStake.staked,
                validatorActivePower: validatorStake.activePower,
                validatorVirtualPower: validatorStake.virtualPowers[_currentEpoch],
                validatorUnlockingAmount: validatorStake.unlockingStakes[_currentEpoch],
                userStakedAmount: userStake.staked,
                userActivePower: userStake.activePower,
                userVirtualPower: userStake.virtualPowers[_currentEpoch],
                userUnlockingAmount: userStake.unlockingStakes[_currentEpoch]
            })
        );
    }

    function _updateUnactive(address account, address validator) internal {
        ValidatorStake storage validatorStake = stakes[validator];
        UserStake storage userStake = validatorStake.userStakes[account];

        validatorStake.virtualPowers[currentEpoch] = 0;
        userStake.virtualPowers[currentEpoch] = 0;

        uint256 targetActivePower = _calculatePower(userStake.staked, EPOCH_DURATION);
        uint256 currentActivePower = userStake.activePower;

        if (currentActivePower > targetActivePower) {
            uint256 adjustment = currentActivePower - targetActivePower;
            validatorStake.activePower -= adjustment;
            userStake.activePower -= adjustment;
        } else if (currentActivePower < targetActivePower) {
            uint256 adjustment = targetActivePower - currentActivePower;
            validatorStake.activePower += adjustment;
            userStake.activePower += adjustment;
        }
    }

    function _releaseValidatorStake(address account, address validator, uint256 amount, uint64 lockDuration) private {
        if (lockDuration > 0) {
            if (IERC20(myx).allowance(address(this), releaseLocker) < amount) {
                IERC20(myx).safeApprove(releaseLocker, type(uint256).max);
            }

            IReleaseLocker(releaseLocker).release(validator, amount, lockDuration, account);
        } else {
            IERC20(myx).safeTransfer(account, amount);
            IEmiter(emiter).emitStakeReleasing(validator, amount, lockDuration, account, 0);
        }
    }

    function _settle(address account, address validator) internal returns (uint256 rewardToEpoch, uint256 rewards) {
        UserStake storage userStake = stakes[validator].userStakes[account];

        (rewardToEpoch, rewards) = _calculateRewards(
            validator,
            account,
            userStake.staked,
            userStake.lastSettledEpoch
        );

        userStake.lastSettledEpoch = rewardToEpoch;
        userStake.accruedRewards += rewards;
    }

    function _calculateRewards(
        address validator,
        address account,
        uint256 stakeAmount,
        uint256 lastSettledEpoch
    ) internal view returns (uint256 rewardToEpoch, uint256 rewards) {
        if (currentEpoch == 0) return (lastSettledEpoch, 0);

        uint256 fromEpoch = lastSettledEpoch + 1;
        rewardToEpoch = _rewardToEpoch(fromEpoch);
        if (!epochInfos[rewardToEpoch].settled || rewardToEpoch < fromEpoch) return (lastSettledEpoch, 0);

        if (rewardToEpoch - fromEpoch > MAX_SETTLE_EPOCH_COUNT) {
            rewardToEpoch = fromEpoch + MAX_SETTLE_EPOCH_COUNT;
        }

        rewards = 0;
        UserStake storage userStake = stakes[validator].userStakes[account];

        uint256 fromEpochVirtualPower = userStake.virtualPowers[fromEpoch];
        uint256 fromEpochUnlockingPower = _calculatePower(userStake.unlockingStakes[fromEpoch], EPOCH_DURATION);
        uint256 fromEpochPower = userStake.activePower + fromEpochUnlockingPower - fromEpochVirtualPower;
        if (fromEpochPower > 0) {
            uint256 accTokenPerPower = epochInfos[fromEpoch].validatorsSettleInfo[validator].accTokenPerPower;
            rewards += fromEpochPower * accTokenPerPower / (10 ** MYX_DECIMALS) / PrecisionUtils.percentage();
        }

        if (fromEpoch < rewardToEpoch) {
            uint256 coeffDiff = _lastEffectiveAccCoefficient(rewardToEpoch + 1, validator) -
                                    _lastEffectiveAccCoefficient(fromEpoch + 1, validator);
            rewards += (stakeAmount * EPOCH_DURATION * coeffDiff) / (10 ** MYX_DECIMALS) / PrecisionUtils.percentage();

            for (uint256 epoch = fromEpoch + 1; epoch <= rewardToEpoch; epoch++) {
                uint256 unlockingStakes = userStake.unlockingStakes[epoch];
                if (unlockingStakes > 0) {
                    uint256 accTokenPerPower = epochInfos[epoch].validatorsSettleInfo[validator].accTokenPerPower;
                    uint256 unlockingPower = _calculatePower(unlockingStakes, EPOCH_DURATION);
                    rewards += unlockingPower * accTokenPerPower / (10 ** MYX_DECIMALS) / PrecisionUtils.percentage();
                }

                uint256 virtualPower = userStake.virtualPowers[epoch];
                if (virtualPower > 0) {
                    uint256 accTokenPerPower = epochInfos[epoch].validatorsSettleInfo[validator].accTokenPerPower;
                    rewards -= virtualPower * accTokenPerPower / (10 ** MYX_DECIMALS) / PrecisionUtils.percentage();
                }
            }
        }
    }

    function _calculateStakePower(
        uint256 epoch,
        uint256 stakeAmount
    ) private view returns (uint256 activePower, uint256 virtualPower) {
        (uint256 startOfEpoch,) = _epochTimeBounds(epoch);
        activePower = _calculatePower(stakeAmount, EPOCH_DURATION);
        virtualPower = _calculatePower(stakeAmount, block.timestamp - startOfEpoch);
    }

    function _calculatePower(uint256 stakeAmount, uint256 duration) private pure returns (uint256 power) {
        return stakeAmount * duration;
    }

    function _epochTimeBounds(uint256 epoch) internal view returns (uint256 epochStartTime, uint256 epochEndTime) {
        epochStartTime = uint256(epochInfos[epoch].epochStartTime);
        epochEndTime = epoch == 0 ? startTime : (epochStartTime + EPOCH_DURATION);
    }

    function _rewardToEpoch(uint256 fromEpoch) internal view returns (uint256 rewardToEpoch) {
        rewardToEpoch = currentEpoch;
        while (rewardToEpoch >= fromEpoch) {
            if (epochInfos[rewardToEpoch].settled) {
                break;
            }
            rewardToEpoch--;
        }
    }

    function _requireUnsettling() internal view {
        if (startTime == 0) return;
        if (block.timestamp < startTime - SETTLEMENT_DURATION) return;

        (uint256 epochStartTime, uint256 epochEndTime) = _epochTimeBounds(currentEpoch);
        if (block.timestamp >= epochEndTime - SETTLEMENT_DURATION) {
            revert(StakeErrors.ERR_SETTLEMENT_IN_PROGRESS);
        }

        if (block.timestamp < epochStartTime) {
            revert(StakeErrors.ERR_SETTLEMENT_IN_PROGRESS);
        }
    }

    function _lastEffectiveAccCoefficient(
        uint256 epoch,
        address validator
    ) internal view returns (uint256) {
        uint256 lastActiveIndex = validatorActives[validator].length;
        for (uint256 i = 1; i <= validatorActives[validator].length; i++) {
            uint256 lastActiveEpoch = validatorActives[validator][lastActiveIndex - i];
            if (lastActiveEpoch < epoch){
                return epochInfos[lastActiveEpoch].validatorsSettleInfo[validator].accCoefficient;
            }
        }
        return 0;
    }
}
