// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.19;

import {IAddressesProvider} from "../interfaces/IAddressesProvider.sol";
import {IRoleManager} from "../interfaces/IRoleManager.sol";
import {PrecisionUtils} from "../libraries/PrecisionUtils.sol";
import {TimeUtils} from "../libraries/TimeUtils.sol";
import {Upgradeable} from "../libraries/Upgradeable.sol";
import {IEmiter} from "./interfaces/IEmiter.sol";
import {IRewardDistributor} from "./interfaces/IRewardDistributor.sol";
import {IStaker} from "./interfaces/IStaker.sol";
import {Pausable} from "@openzeppelin/contracts/security/Pausable.sol";
import {ReentrancyGuard} from "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import {EnumerableSet} from "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";
import {StakeErrors} from "./StakeErrors.sol";

contract RewardDistributor is IRewardDistributor, Upgradeable, ReentrancyGuard, Pausable {
    using SafeERC20 for IERC20;
    using EnumerableSet for EnumerableSet.UintSet;
    using EnumerableSet for EnumerableSet.AddressSet;

    mapping(address validator => uint256) public validatorOwnerCommissions;
    mapping(address account => mapping(uint64 point => UserRewardData)) private _rewardPoints;
    mapping(address account => EnumerableSet.UintSet) private _userUnclaimedRewardPoints;

    // Unlock rules array (sorted by days in ascending order)
    UnlockRule[] private _unlockRules;

    address public myx;
    address public staker;
    address public emiter;
    EnumerableSet.AddressSet private blacklist;

    struct UserRewardData {
        uint256 actuallyAmount;
        uint256 penaltyAmount;
    }

    struct UnclaimedRewardData {
        uint64 point;
        uint256 rewards;
    }

    modifier onlyKeeper() {
        require(IRoleManager(ADDRESS_PROVIDER.roleManager()).isKeeper(_msgSender()), "opk");
        _;
    }

    modifier noBlacklist(address account) {
        require(!blacklist.contains(account), StakeErrors.ERR_INVALID_ACCOUNT);
        _;
    }

    function initialize(
        IAddressesProvider addressProvider,
        address _myx,
        address _staker,
        address _emiter
    ) public initializer {
        ADDRESS_PROVIDER = addressProvider;
        myx = _myx;
        staker = _staker;
        emiter = _emiter;

        _unlockRules.push(UnlockRule({duration: 14 days, penaltyRatio: 30000000}));
        _unlockRules.push(UnlockRule({duration: 21 days, penaltyRatio: 15000000}));
        _unlockRules.push(UnlockRule({duration: 28 days, penaltyRatio: 0}));
    }

    function setPaused() external onlyPoolAdmin {
        _pause();
    }

    function setUnPaused() external onlyPoolAdmin {
        _unpause();
    }

    function addBlacklist(address[] memory accounts) external onlyKeeper {
        for (uint256 i = 0; i < accounts.length; i++) {
            blacklist.add(accounts[i]);
        }
        emit UpdateBlacklist(true, accounts);
    }

    function removeBlacklist(address[] memory accounts) external onlyKeeper {
        for (uint256 i = 0; i < accounts.length; i++) {
            blacklist.remove(accounts[i]);
        }
        emit UpdateBlacklist(false, accounts);
    }

    function updateUnlockRules(UnlockRule[] memory rules) external onlyPoolAdmin {
        UnlockRule[] memory oldRules = _unlockRules;

        delete _unlockRules;

        for (uint256 i = 0; i < rules.length; i++) {
            _unlockRules.push(UnlockRule({
                duration: rules[i].duration,
                penaltyRatio: rules[i].penaltyRatio
            }));
        }

        emit UnlockRulesUpdated(oldRules, rules);
    }

    function unlockRules() external view returns (UnlockRule[] memory) {
        return _unlockRules;
    }

    function getBlacklist() external view returns(address[] memory) {
        return blacklist.values();
    }

    function isBlacklisted(address account) external view returns(bool) {
        return blacklist.contains(account);
    }

    function getUserUnclaimedRewardData(address account) external view returns (UnclaimedRewardData[] memory rewardData) {
        uint256[] memory points = _userUnclaimedRewardPoints[account].values();
        rewardData = new UnclaimedRewardData[](points.length);
        for (uint256 i = 0; i < points.length; i++) {
            rewardData[i].point = uint64(points[i]);
            rewardData[i].rewards = getUnclaimedReward(account, uint64(points[i]));
        }
    }

    function getUnclaimedRewards(address account, uint64[] memory points) public view returns (uint256 amount) {
        amount = 0;
        for (uint256 i = 0; i < points.length; i++) {
            amount += getUnclaimedReward(account, points[i]);
        }
    }

    function getAllUnclaimedRewards(address account) public view returns (uint256 amount) {
        amount = 0;
        uint256[] memory points = _userUnclaimedRewardPoints[account].values();
        for (uint256 i = 0; i < points.length; i++) {
            amount += getUnclaimedReward(account, uint64(points[i]));
        }
    }

    function getUnclaimedReward(address account, uint64 point) public view returns (uint256 amount) {
        return _rewardPoints[account][point].actuallyAmount;
    }

    function pendingRewards(address account, address validator) external view returns (uint256 stakeRewards, uint256 ownerCommission) {
        return (IStaker(staker).pendingRewards(account, validator), account == validator ? validatorOwnerCommissions[account] : 0);
    }

    function distribute(uint256 epoch, uint256 rewards) external onlyKeeper whenNotPaused nonReentrant {
        require(rewards > 0, "RewardDistributor: zero rewards");

        (
            IStaker.ActiveValidatorInfo[] memory activeValidators,
            bool settled
        ) = IStaker(staker).epochActiveInfo(epoch);

        require(activeValidators.length > 0, "RewardDistributor: no active validators");
        require(!settled, "RewardDistributor: epoch already settled");

        uint256 maxValidatorRewardsPower = IStaker(staker).MAX_VALIDATOR_REWARDS_STAKED() * IStaker(staker).EPOCH_DURATION();
        uint256 effectiveGlobalPower;
        for (uint256 i = 0; i < activeValidators.length; i++) {
            effectiveGlobalPower += Math.min(activeValidators[i].effectivePower, maxValidatorRewardsPower);
        }
        require(effectiveGlobalPower > 0, "RewardDistributor: zero global power");

        address[] memory validators = new address[](activeValidators.length);
        uint256[] memory validatorRewards = new uint256[](activeValidators.length);
        uint256[] memory ownerRewards = new uint256[](activeValidators.length);

        for (uint256 i = 0; i < activeValidators.length; i++) {
            address validator = activeValidators[i].validator;
            uint256 effectiveValidatorPower = Math.min(activeValidators[i].effectivePower, maxValidatorRewardsPower);

            IStaker.ValidatorInfo memory validatorInfo = IStaker(staker).getValidatorInfo(validator);

            uint256 activeRewards = (rewards * effectiveValidatorPower) / effectiveGlobalPower;
            uint256 ownerCommission = (activeRewards * validatorInfo.ownerSharingRatio) / PrecisionUtils.percentage();
            uint256 validatorCommission = activeRewards - ownerCommission;

            validators[i] = validator;
            validatorRewards[i] = validatorCommission;
            ownerRewards[i] = ownerCommission;

            validatorOwnerCommissions[validator] += ownerCommission;
        }

        IStaker.DistributeData[] memory distributes = IStaker(staker).distribute(
            epoch,
            validators,
            validatorRewards
        );

        IEmiter.DistributeValidatorRewardData[] memory distributesEmit = new IEmiter.DistributeValidatorRewardData[](activeValidators.length);
        for (uint256 i = 0; i < distributes.length; i++) {
            distributesEmit[i] = IEmiter.DistributeValidatorRewardData({
                epoch: epoch,
                totalRewards: rewards,
                validator: validators[i],
                rewards: validatorRewards[i],
                ownerCommission: ownerRewards[i],
                accTokenPerPower: distributes[i].accTokenPerPower,
                accCoefficient: distributes[i].accCoefficient,
                globalPower: effectiveGlobalPower,
                validatorPower: activeValidators[i].effectivePower
            });
        }
        IEmiter(emiter).emitDistributeValidatorReward(distributesEmit);
    }

    function batchSettleRewards(address[] calldata validators, uint64 unlockDuration) external whenNotPaused nonReentrant {
        for (uint256 i = 0; i < validators.length; i++) {
            _settleRewards(validators[i], unlockDuration);
        }
    }

    function settleRewards(address validator, uint64 unlockDuration) external whenNotPaused nonReentrant {
        _settleRewards(validator, unlockDuration);
    }

    function _settleRewards(address validator, uint64 unlockDuration) internal {
        require(validator != address(0), "RewardDistributor: invalid validator");

        address account = _msgSender();
        (uint256 epochFrom, uint256 epochTo, uint256 settledRewards) = IStaker(staker).settleRewards(account, validator);

        if (validatorOwnerCommissions[account] > 0 && account == validator) {
            settledRewards += validatorOwnerCommissions[account];
            validatorOwnerCommissions[account] = 0;
        }

        if (settledRewards == 0) return;

        (uint256 penaltyAmount, uint32 penaltyRatio) = _calculatePenalty(settledRewards, unlockDuration);
        uint256 rewards = settledRewards - penaltyAmount;
        uint64 claimPoint = _nextClaimPoint(unlockDuration);

        _userUnclaimedRewardPoints[account].add(uint256(claimPoint));

        UserRewardData storage userRewardData = _rewardPoints[account][claimPoint];
        userRewardData.actuallyAmount += rewards;
        userRewardData.penaltyAmount += penaltyAmount;

        IEmiter(emiter).emitRewardSettled(IEmiter.RewardSettledData({
            validator: validator,
            account: account,
            epochFrom: epochFrom,
            epochTo: epochTo,
            point: claimPoint,
            rewards: rewards,
            unlockDuration: unlockDuration,
            penaltyRatio: penaltyRatio,
            penaltyAmount: penaltyAmount
        }));
    }

    function claimRewards(uint64 point) public noBlacklist(_msgSender()) whenNotPaused nonReentrant {
        _claimRewards(_msgSender(), point);
    }

    function batchClaimRewards(uint64[] calldata points) external noBlacklist(_msgSender()) whenNotPaused nonReentrant {
        address account = _msgSender();
        for (uint256 i = 0; i < points.length; i++) {
            _claimRewards(account, points[i]);
        }
    }

    function claimAllRewards() external noBlacklist(_msgSender()) whenNotPaused nonReentrant {
        address account = _msgSender();

        uint256[] memory points = _userUnclaimedRewardPoints[account].values();
        for (uint256 i = 0; i < points.length; i++) {
            _claimRewards(account, uint64(points[i]));
        }
    }

    function _claimRewards(address account, uint64 point) internal {
        require(block.timestamp >= point, "Point not reached");

        UserRewardData memory userRewardData = _rewardPoints[account][point];
        require(userRewardData.actuallyAmount > 0, "No rewards available");

        delete _rewardPoints[account][point];
        _userUnclaimedRewardPoints[account].remove(point);

        IERC20(myx).safeTransfer(account, userRewardData.actuallyAmount);

        IEmiter(emiter).emitRewardClaimed(account, point, userRewardData.actuallyAmount, userRewardData.penaltyAmount);
    }

    function _calculatePenalty(
        uint256 amount,
        uint64 unlockDuration
    ) internal view returns (uint256 penaltyAmount, uint32 penaltyRatio) {
        for (uint256 i = 0; i < _unlockRules.length; i++) {
            if (unlockDuration <= _unlockRules[i].duration) {
                uint32 _penaltyRatio = _unlockRules[i].penaltyRatio;
                return ((amount * _penaltyRatio) / PrecisionUtils.percentage(), _penaltyRatio);
            }
        }
        return (0, 0);
    }

    function _nextClaimPoint(uint64 unlockDuration) internal view returns (uint64 claimPoint) {
        uint256 releaseTime  = block.timestamp + uint256(unlockDuration);
        uint256 pointOffset = IStaker(staker).REWARD_POINT_OFFSET();
        (uint256 epochStart, uint256 epochEnd) = TimeUtils.getWeekBounds(releaseTime, uint256(IStaker(staker).startTime()));
        return uint64(epochStart + pointOffset > releaseTime ? epochStart + pointOffset : epochEnd + 1 + pointOffset );
    }
}
