// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {IRefTreeStorage} from './Interfaces.sol';
import {Ownable} from '@openzeppelin/contracts/access/Ownable.sol';
import {RefProgramBase} from './RefProgramBase.sol';
import {SafeERC20, IERC20} from '@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol';
import '@openzeppelin/contracts/security/ReentrancyGuard.sol';
import '@openzeppelin/contracts/utils/structs/EnumerableSet.sol';

abstract contract RefProgramStaking is RefProgramBase {
    using SafeERC20 for IERC20;

    struct RefUserInfo {
        uint256[3] refCumulativeParticipants;
        uint256[3] refCumulativeStaked;
        uint256[3] refCumulativeRewards;
    }
    uint256[3] _refererShares = [10, 5, 3];
    mapping(address => RefUserInfo) _refUserInfo;
    event RefRewardDistributed(
        address indexed referer,
        address indexed staker,
        uint8 indexed level,
        uint256 amount,
        uint256 timestamp
    );

    constructor(IRefTreeStorage refTreeStorage_) RefProgramBase(refTreeStorage_) {}

    // SETTERS

    function setRefShares(uint256[3] calldata shares) external onlyOwner {
        _refererShares = shares;
    }

    // INTERNAL OPERATIONS

    mapping(address => bool) private _alreadyStakedBefore;

    function _refDistributeParticipantsStakedAndRewards(
        IERC20 rewardToken,
        uint256 amountStaked,
        uint256 rewardPlanned,
        address staker
    ) internal returns (uint256 totalDividendsSent) {
        address referer = staker;
        for (uint8 i = 0; i < 3; i++) {
            referer = refTreeStorage.refererOf(referer);
            if (referer == address(0)) {
                break;
            }
            if (!_alreadyStakedBefore[staker]) _refUserInfo[referer].refCumulativeParticipants[i]++;
            _refUserInfo[referer].refCumulativeStaked[i] += amountStaked;
            uint256 refReward = (rewardPlanned * _refererShares[i]) / 100;
            rewardToken.safeTransfer(referer, refReward);
            emit RefRewardDistributed(referer, staker, i, refReward, block.timestamp);
            _refUserInfo[referer].refCumulativeRewards[i] += refReward;
            totalDividendsSent += refReward;
        }
        _alreadyStakedBefore[staker] = true;
    }

    // EXTERNAL GETTERS

    function refUserInfo(address user) external view returns (RefUserInfo memory) {
        return _refUserInfo[user];
    }

    function refererShares() external view returns (uint256[3] memory) {
        return _refererShares;
    }

    function refInfoBundle(address user)
        external
        view
        returns (
            RefUserInfo memory info,
            address referer,
            address[] memory referrals
        )
    {
        info = _refUserInfo[user];
        referer = refTreeStorage.refererOf(user);
        referrals = refTreeStorage.referralsOf(user);
    }
}

contract StakingNext is ReentrancyGuard, RefProgramStaking {
    using EnumerableSet for EnumerableSet.UintSet;
    using SafeERC20 for IERC20;

    IERC20 public TKN;

    uint256[3] _periods = [90 days, 180 days, 360 days];
    uint8[3] _rates = [103, 105, 108];
    uint256[3] _minimumAmounts = [100 ether, 300 ether, 500 ether];
    uint256 public limit = 1500000 ether;
    uint256 public MAX_STAKES = 3;
    uint256 public finish_timestamp = 1682899200; // 2023 May 01 00:00 UTC
    bool public DEPRECATED = false;

    struct Stake {
        uint8 tier;
        uint256 amount;
        uint256 finalAmount;
        uint32 started;
        uint32 finish;
    }
    uint256 public totalStakes;
    EnumerableSet.UintSet _stakeIds;
    mapping(uint256 => Stake) _stakeData;
    mapping(address => EnumerableSet.UintSet) _stakeIdsOf;
    mapping(uint256 => address) public ownerOf;
    event Staked(address indexed sender, uint8 indexed tier, uint256 amount, uint256 finalAmount);
    event Prolonged(address indexed sender, uint8 indexed tier, uint256 newAmount, uint256 newFinalAmount);
    event Unstaked(address indexed sender, uint8 indexed tier, uint256 amount);

    /* ========== MODIFIER ========== */

    modifier deprecationProtect() {
        require(!DEPRECATED, 'Contract is deprecated, your stakes were moved to new contract');
        _;
    }

    /* ========== CONSTRUCTOR ========== */

    constructor(IERC20 stakingToken_, IRefTreeStorage refTreeStorage_) RefProgramStaking(refTreeStorage_) {
        TKN = stakingToken_;
    }

    /* ========== MUTATIVE FUNCTIONS ========== */

    function stake(
        uint8 _tier,
        uint256 _amount,
        address _referer
    ) external nonReentrant deprecationProtect {
        require((_tier < 3) && (_amount >= _minimumAmounts[_tier]), 'Wrong amount'); // data valid
        require(_stakeIdsOf[msg.sender].length() < MAX_STAKES, 'MAX_STAKES overflow'); // has space for new active stake
        require(finish_timestamp > block.timestamp + _periods[_tier], 'Program will finish before this stake does'); // not staking in the end of program
        uint256 _finalAmount = (_amount * _rates[_tier]) / 100;
        uint256 _reward = _finalAmount - _amount;
        limit -= _reward;
        _trySetReferer(msg.sender, _referer);
        uint256 _rewardsDistributed = _refDistributeParticipantsStakedAndRewards(TKN, _amount, _reward, msg.sender);
        limit -= _rewardsDistributed;
        TKN.safeTransferFrom(msg.sender, address(this), _amount);

        _stakeData[totalStakes] = Stake({
            tier: _tier,
            amount: _amount,
            finalAmount: _finalAmount,
            started: uint32(block.timestamp),
            finish: uint32(block.timestamp + _periods[_tier])
        });
        _stakeIds.add(totalStakes);
        _stakeIdsOf[msg.sender].add(totalStakes);
        ownerOf[totalStakes] = msg.sender;
        totalStakes++;

        emit Staked(msg.sender, _tier, _amount, _finalAmount);
    }

    function prolong(uint256 _index) external nonReentrant deprecationProtect {
        require(_stakeIdsOf[msg.sender].contains(_index), 'NOT_OWNED');
        Stake storage _s = _stakeData[_index];
        require(block.timestamp >= _s.finish); // staking period finished
        uint256 newFinish = block.timestamp + _periods[_s.tier];
        require(finish_timestamp > newFinish); // not prolonging in the end of program
        uint256 _newAmount = _s.finalAmount;
        uint256 _newFinalAmount = (_newAmount * _rates[_s.tier]) / 100;
        uint256 _reward = _newFinalAmount - _newAmount;
        limit -= _reward;
        uint256 _rewardsDistributed = _refDistributeParticipantsStakedAndRewards(TKN, _newAmount - _s.amount, _reward, msg.sender);
        limit -= _rewardsDistributed;
        _s.amount = _newAmount;
        _s.finalAmount = _newFinalAmount;
        _s.started = uint32(block.timestamp);
        _s.finish = uint32(newFinish);
        emit Prolonged(msg.sender, _s.tier, _newAmount, _newFinalAmount);
    }

    function unstake(uint256 _index) external nonReentrant deprecationProtect {
        require(_stakeIdsOf[msg.sender].contains(_index), 'NOT_OWNED');
        Stake storage _s = _stakeData[_index];
        require(block.timestamp >= _s.finish); // staking period finished

        TKN.safeTransfer(msg.sender, _s.finalAmount);
        _stakeIds.remove(_index);
        _stakeIdsOf[msg.sender].remove(_index);
        emit Unstaked(msg.sender, _s.tier, _s.finalAmount);
    }

    /* ========== RESTRICTED FUNCTIONS ========== */

    function drain(address _recipient) external onlyOwner {
        require(DEPRECATED || block.timestamp > finish_timestamp);
        TKN.safeTransfer(_recipient, limit);
        limit = 0;
    }

    function drainFull(address _recipient) public onlyOwner {
        require(DEPRECATED || block.timestamp > finish_timestamp + 30 days);
        uint256 _amount = TKN.balanceOf(address(this));
        TKN.safeTransfer(_recipient, _amount);
        limit = 0;
    }

    function returnAccidentallySent(IERC20 _TKN) external onlyOwner {
        require(address(_TKN) != address(TKN));
        uint256 _amount = _TKN.balanceOf(address(this));
        TKN.safeTransfer(msg.sender, _amount);
    }

    function updateMax(uint256 _max) external onlyOwner {
        MAX_STAKES = _max;
    }

    function DEPRECATE(bool also_drain) external onlyOwner {
        MAX_STAKES = 0;
        DEPRECATED = true;
        if (also_drain) drainFull(msg.sender);
    }

    function setFinishTimestamp(uint256 timestamp) external onlyOwner {
        finish_timestamp = timestamp;
    }

    function setLimit(uint256 value) external onlyOwner {
        limit = value;
    }

    /* ========== VIEWS ========== */

    function periods() external view returns (uint256[3] memory) {
        return _periods;
    }

    function rates() external view returns (uint8[3] memory) {
        return _rates;
    }

    function minimumAmounts() external view returns (uint256[3] memory) {
        return _minimumAmounts;
    }

    function stakeIds() external view returns (uint256[] memory) {
        return _stakeIds.values();
    }

    function stakeIdsLength() external view returns (uint256) {
        return _stakeIds.length();
    }

    function stakeIdsOf(address staker) public view returns (uint256[] memory) {
        return _stakeIdsOf[staker].values();
    }

    function stakeIdsOfLength(address staker) public view returns (uint256) {
        return _stakeIdsOf[staker].length();
    }

    function stakesOf(address staker) public view returns (Stake[] memory data, uint256[] memory ids) {
        ids = stakeIdsOf(staker);
        data = new Stake[](ids.length);
        for (uint256 i = 0; i < ids.length; i++) {
            data[i] = _stakeData[ids[i]];
        }
    }

    function stakeData(uint256 from, uint256 to) public view returns (Stake[] memory data) {
        data = new Stake[](to - from + 1);
        for (uint256 i = from; i <= to; i++) {
            data[i - from] = _stakeData[i];
        }
    }

    function stakeData(uint256 last) external view returns (Stake[] memory data, uint256 from) {
        if (last > totalStakes) last = totalStakes;
        from = totalStakes - last;
        data = stakeData(from, totalStakes - 1);
    }

    function myPendingStakesCount(address staker) public view returns (uint256 count) {
        (Stake[] memory data, ) = stakesOf(staker);
        for (uint256 i = 0; i < data.length; i++) {
            if (data[i].finish > block.timestamp) count++;
        }
    }
}
