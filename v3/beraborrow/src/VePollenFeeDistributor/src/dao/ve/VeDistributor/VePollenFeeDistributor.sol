// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.17;

import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

import {IFeeDistributor} from "src/interfaces/dao/ve/IFeeDistributor.sol";
import {IVotingEscrowPollen} from "src/interfaces/dao/ve/IVotingEscrowPollen.sol";
import {IMetaBeraborrowCore} from "src/interfaces/core/IMetaBeraborrowCore.sol";

import {Errors} from "src/libraries/ve/Errors.sol";
import {WeekMath} from "src/libraries/ve/WeekMath.sol";
import {ArrayLib} from "src/libraries/ve/ArrayLib.sol";
import "src/libraries/ve/VeHistoryLib.sol";

/**
 * @title  PollenFeeDistributor
 * @author Beraborrow
 * @notice This contract is responsible for distributing POLLEN rewards to token lockers.
 *         This contract is based on Pendle's first FeeDistributor iteration:
 *         https://github.com/pendle-finance/pendle-core-v2-public/blob/main/contracts/LiquidityMining/VeDistributor/PendleFeeDistributor.sol
 *         The pool reward logic has been modified to support multiple sources of rewards tied to the total supply rather than the pool gauges.
 *         VotingController interactions have been removed.
 *         Rewards are given out in POLLEN rewards according to each users' vePOLLEN balance and current unclaimed checkpoints.
 */
contract VePollenFeeDistributor is IFeeDistributor {
    using SafeERC20 for IERC20;
    using VeBalanceLib for VeBalance;
    using ArrayLib for uint256[];

    IMetaBeraborrowCore public immutable metaBeraborrowCore;

    address public immutable vePollen;
    address public immutable token;
    address public rewardDistributor;

    address[] public allSources;

    // [source] => lastFundedWeek
    mapping(address => uint256) public lastFundedWeek;

    // [source] => firstFundedWeek
    mapping(address => uint256) public firstFundedWeek;

    // [source, user] => UserInfo
    mapping(address => mapping(address => UserInfo)) public userInfo;

    // [source, epoch] => [fee]
    mapping(address => mapping(uint256 => uint256)) public fees;

    /// @notice Restrict access to the contract owner.
    modifier onlyOwner() {
        if (msg.sender != metaBeraborrowCore.owner())
            revert Errors.FDNotOwner(msg.sender);
        _;
    }

    /// @notice Restrict access to the contract owner or the reward distributor.
    modifier onlyOwnerOrDistributor() {
        if (
            msg.sender != metaBeraborrowCore.owner() &&
            msg.sender != rewardDistributor
        ) revert Errors.FDNotOwnerOrDistributor(msg.sender);
        _;
    }

    /// @notice Restrict reward accounting to funding by the contract owner or the reward distributor.
    modifier ensureValidSource(address source) {
        if (lastFundedWeek[source] == 0) revert Errors.FDInvalidSource(source);
        _;
    }

    constructor(
        address _metaBeraborrowCore,
        address _vePollen,
        address _rewardToken,
        address _rewardDistributor
    ) {
        metaBeraborrowCore = IMetaBeraborrowCore(_metaBeraborrowCore);

        vePollen = _vePollen;
        token = _rewardToken;
        rewardDistributor = _rewardDistributor;
    }

    function addSource(address source, uint256 _startWeek) external onlyOwner {
        if (source == address(0)) revert Errors.ZeroAddress();
        if (!WeekMath.isValidWTime(_startWeek) || _startWeek == 0)
            revert Errors.FDInvalidStartEpoch(_startWeek);

        if (lastFundedWeek[source] != 0)
            revert Errors.FDSourceAlreadyExists(source);

        lastFundedWeek[source] = _startWeek - WeekMath.WEEK;
        firstFundedWeek[source] = _startWeek;
        allSources.push(source);

        emit SourceAdded(source, _startWeek);
    }

    function fund(
        address[] calldata sources,
        uint256[][] calldata wTimes,
        uint256[][] calldata amounts,
        uint256 totalAmountToFund
    ) external onlyOwnerOrDistributor {
        uint256 length = sources.length;
        if (wTimes.length != length || amounts.length != length)
            revert Errors.ArrayLengthMismatch();

        uint256 totalFunded = 0;
        for (uint256 i = 0; i < length; ++i) {
            _fund(sources[i], wTimes[i], amounts[i]);
            totalFunded += amounts[i].sum();
        }

        if (totalFunded != totalAmountToFund)
            revert Errors.FDTotalAmountFundedNotMatch(
                totalFunded,
                totalAmountToFund
            );

        IERC20(token).transferFrom(msg.sender, address(this), totalFunded);
    }

    function _fund(
        address source,
        uint256[] calldata wTimes,
        uint256[] calldata amounts
    ) internal ensureValidSource(source) {
        if (wTimes.length != amounts.length)
            revert Errors.FDEpochLengthMismatch();

        uint256 lastFunded = lastFundedWeek[source];

        uint256 curWeek = WeekMath.getCurrentWeekStart();

        for (uint256 i = 0; i < amounts.length; ++i) {
            uint256 wTime = wTimes[i];
            uint256 amount = amounts[i];

            if (wTime != lastFunded + WeekMath.WEEK)
                revert Errors.FDInvalidWTimeFund(lastFunded, wTime);

            fees[source][wTime] += amount;
            lastFunded += WeekMath.WEEK;

            emit UpdateFee(source, wTime, amount);
        }

        if (lastFunded >= curWeek)
            revert Errors.FDInvalidWTimeFund(lastFunded, curWeek);

        lastFundedWeek[source] = lastFunded;
    }

    function claimReward() external returns (uint256[] memory amountRewardOut) {
        address user = msg.sender;
        uint256 length = allSources.length;
        amountRewardOut = new uint256[](length);

        for (uint256 i; i < length; ++i) {
            amountRewardOut[i] = _accumulateUserReward(allSources[i], user);
        }
        IERC20(token).safeTransfer(user, amountRewardOut.sum());
    }

    function getAllActiveSources() external view returns (address[] memory) {
        return allSources;
    }

    function _accumulateUserReward(
        address source,
        address user
    ) internal ensureValidSource(source) returns (uint256 totalReward) {
        uint256 length = _getUserCheckpointLength(user);
        if (length == 0) return 0;

        uint256 lastWeek = lastFundedWeek[source];
        uint256 curWeek = userInfo[source][user].firstUnclaimedWeek;
        uint256 iter = userInfo[source][user].iter;

        if (curWeek > lastWeek) return 0; // nothing to account

        Checkpoint memory checkpoint = _getUserCheckpointAt(user, iter);
        Checkpoint memory nextCheckpoint = checkpoint;

        if (curWeek == 0) curWeek = checkpoint.timestamp + WeekMath.WEEK;

        while (curWeek <= lastWeek) {
            // we have at most one checkpoint per week
            if (iter + 1 < length) {
                if (nextCheckpoint.timestamp == checkpoint.timestamp) {
                    // next have been assigned to current checkpoint, so we need to get the next one
                    nextCheckpoint = _getUserCheckpointAt(user, iter + 1);
                }

                if (nextCheckpoint.timestamp < curWeek) {
                    iter++;
                    checkpoint = nextCheckpoint;
                }
                // Important invariant: checkpoint[iter] < curWeek <= checkpoint[iter+1]
            }

            // assert(checkpoint.timestamp < curWeek); should always hold

            uint256 userShare = checkpoint.value.getValueAt(uint128(curWeek));
            if (userShare != 0) {
                uint256 totalShare = _getTotalSharesAt(uint128(curWeek));
                // userShare != 0 => totalShare != 0
                uint256 amountRewardOut = (userShare * fees[source][curWeek]) /
                    totalShare;
                totalReward += amountRewardOut;
                emit ClaimReward(source, user, curWeek, amountRewardOut);
            }

            curWeek += WeekMath.WEEK;
        }

        userInfo[source][user] = UserInfo({
            firstUnclaimedWeek: uint128(curWeek),
            iter: uint128(iter)
        });
    }

    function _getTotalSharesAt(uint128 wTime) internal view returns (uint256) {
        return IVotingEscrowPollen(vePollen).totalSupplyAt(wTime);
    }

    function _getUserCheckpointAt(
        address user,
        uint256 index
    ) internal view returns (Checkpoint memory) {
        return IVotingEscrowPollen(vePollen).getUserHistoryAt(user, index);
    }

    function _getUserCheckpointLength(
        address user
    ) internal view returns (uint256) {
        return IVotingEscrowPollen(vePollen).getUserHistoryLength(user);
    }
}
