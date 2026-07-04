// SPDX-License-Identifier: Unlicense
pragma solidity 0.8.24;

import {ReentrancyGuardUpgradeable} from "@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {UUPSOwnable2Step} from "src/proxy/UUPSOwnable2Step.sol";
import {IGT3BribeFactory} from "src/interfaces/IGT3BribeFactory.sol";
import {IGT3GaugeFactory} from "src/interfaces/IGT3GaugeFactory.sol";
import {IGT3Bribe} from "src/interfaces/IGT3Bribe.sol";
import {IGT3Gauge} from "src/interfaces/IGT3Gauge.sol";
import {IGT3Minter} from "src/interfaces/IGT3Minter.sol";
import {IGT3Voter} from "src/interfaces/IGT3Voter.sol";
import {IPairFactory} from "src/interfaces/IPairFactory.sol";
import {IxGT3} from "src/interfaces/IxGT3.sol";
import {ProtocolTimeLibrary} from "src/libraries/ProtocolTimeLibrary.sol";

// solhint-disable max-states-count

/// @title GT3Voter Contract
/// @author gt3.finance
/// @notice Manages voting and reward distribution for liquidity pools
contract GT3Voter is IGT3Voter, UUPSOwnable2Step, ReentrancyGuardUpgradeable {
    using SafeERC20 for IERC20;

    /// @inheritdoc IGT3Voter
    address public xGt3;

    /// @inheritdoc IGT3Voter
    address public gt3;

    /// @inheritdoc IGT3Voter
    address public minter;

    /// @notice Returns the address of the pair factory
    IPairFactory public pairFactory;

    /// @notice Returns the address of the bribe factory
    IGT3BribeFactory public bribeFactory;

    /// @notice Returns the address of the gauge factory
    IGT3GaugeFactory public gaugeFactory;

    /// @inheritdoc IGT3Voter
    uint256 public totalWeight;

    /// @inheritdoc IGT3Voter
    uint256 public index;

    /// @inheritdoc IGT3Voter
    mapping(address pool => address gauge) public gauges;

    /// @inheritdoc IGT3Voter
    mapping(address gauge => address pool) public poolForGauge;

    /// @inheritdoc IGT3Voter
    mapping(address gauge => address bribe) public bribes;

    /// @inheritdoc IGT3Voter
    mapping(address gauge => bool status) public isGauge;

    /// @notice Returns the array of pools that a token ID has voted for
    mapping(uint256 tokenId => address[] pools) public poolVote;

    /// @inheritdoc IGT3Voter
    mapping(address pool => uint256 weight) public weights;

    /// @inheritdoc IGT3Voter
    mapping(uint256 tokenId => uint256 weight) public usedWeights;

    /// @inheritdoc IGT3Voter
    mapping(address => uint256) public supplyIndex;

    /// @inheritdoc IGT3Voter
    mapping(address => uint256) public claimable;

    /// @inheritdoc IGT3Voter
    mapping(uint256 tokenId => mapping(address pool => uint256 votes)) public votes;

    /// @inheritdoc IGT3Voter
    address[] public pools; // all pools viable for incentives

    modifier onlyMinter() {
        if (_msgSender() != minter) {
            revert GT3VoterOnlyMinter(_msgSender());
        }
        _;
    }

    constructor() {
        _disableInitializers();
    }

    /// @inheritdoc IGT3Voter
    function initialize(
        address owner_,
        address pairFactory_,
        address xGt3_,
        address gaugesFactory_,
        address bribesFactory_,
        address minter_
    ) public initializer {
        __Ownable_init(owner_);
        __Ownable2Step_init();
        __UUPSUpgradeable_init();
        __UUPSOwnable2Step_init();
        __ReentrancyGuard_init();
        pairFactory = IPairFactory(pairFactory_);
        xGt3 = xGt3_;
        gt3 = IxGT3(xGt3_).token();
        gaugeFactory = IGT3GaugeFactory(gaugesFactory_);
        bribeFactory = IGT3BribeFactory(bribesFactory_);
        minter = minter_;
    }

    /// @inheritdoc IGT3Voter
    function poolsLength() external view returns (uint256) {
        return pools.length;
    }

    /// @inheritdoc IGT3Voter
    function isVoting(uint256 tokenId_) public view returns (bool) {
        return usedWeights[tokenId_] != 0;
    }

    /// @inheritdoc IGT3Voter
    function hasUnclaimedBribes(uint256 tokenId_) public view returns (bool unclaimed) {
        uint256 poolsLength_ = pools.length;
        for (uint256 i = 0; (i < poolsLength_ && !unclaimed); i++) {
            IGT3Bribe bribe_ = IGT3Bribe(bribes[gauges[pools[i]]]);
            uint256 tokenRewardLength_ = bribe_.rewardsListLength();

            for (uint256 j = 0; (j < tokenRewardLength_ && !unclaimed); j++) {
                if (bribe_.earned(bribe_.rewards(j), tokenId_) != 0) {
                    unclaimed = true;
                }
            }
        }
    }

    /// @inheritdoc IGT3Voter
    function notifyRewardAmount(uint256 amount_) external onlyMinter {
        IERC20(gt3).safeTransferFrom(msg.sender, address(this), amount_);
        uint256 ratio_ = (amount_ * 1e18) / totalWeight;
        if (ratio_ > 0) {
            index += ratio_;
        }
        emit NotifyReward(msg.sender, gt3, amount_);
    }

    /// @inheritdoc IGT3Voter
    function createGauge(address pool_) external returns (address) {
        if (gauges[pool_] != address(0)) revert GT3VoterGaugeAlreadyCreated(pool_);
        if (!pairFactory.isPair(pool_)) revert GT3VoterPoolNotExist(pool_);

        address bribe_ = bribeFactory.createBribe(xGt3);
        address gauge_ = gaugeFactory.createGauge(pool_, bribe_);
        bribes[gauge_] = bribe_;
        gauges[pool_] = gauge_;
        poolForGauge[gauge_] = pool_;
        isGauge[gauge_] = true;
        _updateFor(gauge_);
        pools.push(pool_);
        emit GaugeCreated(gauge_, msg.sender, bribe_, pool_);
        return gauge_;
    }

    /// @inheritdoc IGT3Voter
    function vote(uint256 tokenId_, address[] calldata poolVote_, uint256[] calldata weights_) external nonReentrant {
        if (!IxGT3(xGt3).isApprovedOrOwner(msg.sender, tokenId_)) {
            revert GT3VoterUnauthorized(msg.sender, tokenId_);
        }
        if (poolVote_.length != weights_.length) revert GT3VoterInconsistentParams();
        _vote(tokenId_, poolVote_, weights_);
    }

    /// @inheritdoc IGT3Voter
    function rebaseVote(uint256 tokenId_) external nonReentrant {
        if (!(msg.sender == xGt3 || IxGT3(xGt3).isApprovedOrOwner(msg.sender, tokenId_))) {
            revert GT3VoterUnauthorized(msg.sender, tokenId_);
        }
        _rebaseVote(tokenId_);
    }

    /// @inheritdoc IGT3Voter
    function reset(uint256 tokenId_) external {
        if (!(msg.sender == xGt3 || IxGT3(xGt3).isApprovedOrOwner(msg.sender, tokenId_))) {
            revert GT3VoterUnauthorized(msg.sender, tokenId_);
        }
        _reset(tokenId_);
    }

    /// @inheritdoc IGT3Voter
    function claimGaugesRewards(address[] memory gauges_) external {
        for (uint256 i = 0; i < gauges_.length; i++) {
            IGT3Gauge(gauges_[i]).getReward(msg.sender);
        }
    }

    /// @inheritdoc IGT3Voter
    function claimBribesRewards(address[] memory bribes_, address[][] memory tokens_, uint256 tokenId_) external {
        if (!IxGT3(xGt3).isApprovedOrOwner(msg.sender, tokenId_)) {
            revert GT3VoterUnauthorized(msg.sender, tokenId_);
        }

        for (uint256 i = 0; i < bribes_.length; i++) {
            IGT3Bribe(bribes_[i]).getRewardForOwner(tokenId_, tokens_[i]);
        }
    }

    /// @inheritdoc IGT3Voter
    function gaugeNotifyReward(address pool_, uint256 amount_) external nonReentrant {
        address gauge_ = gauges[pool_];
        if (gauge_ == address(0)) revert GT3VoterNotAGauge(pool_);
        IERC20(gt3).safeTransferFrom(msg.sender, address(this), amount_);
        IERC20(gt3).forceApprove(gauge_, amount_);
        IGT3Gauge(gauge_).notifyRewardAmount(amount_);
        IERC20(gt3).forceApprove(gauge_, 0);
        emit GaugeNotifyReward(gauge_, msg.sender, amount_);
    }

    /// @inheritdoc IGT3Voter
    function distribute() external nonReentrant {
        IGT3Minter(minter).updatePeriod();
        uint256 length_ = pools.length;
        for (uint256 x = 0; x < length_; x++) {
            _distribute(gauges[pools[x]]);
        }
    }

    /// @inheritdoc IGT3Voter
    function distribute(address gauge_) external nonReentrant {
        IGT3Minter(minter).updatePeriod();
        _distribute(gauge_);
    }

    /// @inheritdoc IGT3Voter
    function distribute(uint256 start_, uint256 end_) public nonReentrant {
        IGT3Minter(minter).updatePeriod();
        for (uint256 x = start_; x < end_; x++) {
            _distribute(gauges[pools[x]]);
        }
    }

    /// @inheritdoc IGT3Voter
    function distribute(address[] memory gauges_) external nonReentrant {
        IGT3Minter(minter).updatePeriod();
        uint256 length_ = gauges_.length;
        for (uint256 x = 0; x < length_; x++) {
            _distribute(gauges_[x]);
        }
    }

    /// @inheritdoc IGT3Voter
    function updateAll() external {
        updateForRange(0, pools.length);
    }

    /// @inheritdoc IGT3Voter
    function updateGauge(address gauge_) external {
        _updateFor(gauge_);
    }

    /// @inheritdoc IGT3Voter
    function updateForRange(uint256 start_, uint256 end_) public {
        for (uint256 i = start_; i < end_; i++) {
            _updateFor(gauges[pools[i]]);
        }
    }

    // Internal functions are documented here
    /// @notice Internal function to distribute rewards to a gauge
    /// @param gauge_ The address of the gauge
    function _distribute(address gauge_) internal {
        _updateFor(gauge_);
        uint256 claimable_ = claimable[gauge_];
        if (claimable_ > IGT3Gauge(gauge_).left() && claimable_ / ProtocolTimeLibrary.DURATION > 0) {
            claimable[gauge_] = 0;
            IERC20(gt3).forceApprove(gauge_, claimable_);
            IGT3Gauge(gauge_).notifyRewardAmount(claimable_);
            IERC20(gt3).forceApprove(gauge_, 0);
            emit DistributeReward(msg.sender, gauge_, claimable_);
        }
    }

    /// @notice Internal function to update the state for a gauge
    /// @param gauge_ The address of the gauge
    function _updateFor(address gauge_) internal {
        address pool_ = poolForGauge[gauge_];
        uint256 supplied_ = weights[pool_];

        if (supplied_ != 0) {
            uint256 supplyIndex_ = supplyIndex[gauge_];
            uint256 index_ = index; // get global index for accumulated distro
            supplyIndex[gauge_] = index_; // update gauge current position to global position
            uint256 delta_ = index_ - supplyIndex_; // see if there is any difference that needs to be accrued

            if (delta_ > 0) {
                uint256 share_ = uint256(supplied_) * delta_ / 1e18; // add accrued difference for each supplied token
                claimable[gauge_] += share_;
            }
        } else {
            supplyIndex[gauge_] = index; // new users are set to default global state
        }
    }

    /// @notice Internal function to handle voting logic
    /// @param tokenId_ The ID of the token
    /// @param poolVote_ The array of pool addresses to vote for
    /// @param weights_ The array of weights for each pool
    function _vote(uint256 tokenId_, address[] memory poolVote_, uint256[] memory weights_) internal {
        _reset(tokenId_);
        uint256 poolCnt_ = poolVote_.length;
        uint256 weight_ = IxGT3(xGt3).getVotingUnitsNFT(tokenId_);
        uint256 totalVoteWeight_ = 0;
        uint256 totalWeight_ = 0;
        uint256 usedWeight_ = 0;
        for (uint256 i = 0; i < poolCnt_; i++) {
            totalVoteWeight_ += weights_[i];
        }
        for (uint256 i = 0; i < poolCnt_; i++) {
            address pool_ = poolVote_[i];
            address gauge_ = gauges[pool_];
            if (isGauge[gauge_]) {
                if (votes[tokenId_][pool_] != 0) revert GT3VoterPoolAlreadyVoted(pool_);
                uint256 poolWeight_ = weights_[i] * weight_ / totalVoteWeight_;
                if (poolWeight_ == 0) revert GT3VoterZeroPoolWeight(pool_);
                _updateFor(gauge_);
                poolVote[tokenId_].push(pool_);
                weights[pool_] += poolWeight_;
                votes[tokenId_][pool_] += poolWeight_;
                IGT3Bribe(bribes[gauge_]).deposit(poolWeight_, tokenId_);
                usedWeight_ += poolWeight_;
                totalWeight_ += poolWeight_;
                emit Voted(msg.sender, pool_, tokenId_, poolWeight_);
            }
        }
        totalWeight += totalWeight_;
        usedWeights[tokenId_] = usedWeight_;
    }

    /// @notice Internal function to rebase a vote
    /// @param tokenId_ The ID of the token
    function _rebaseVote(uint256 tokenId_) internal {
        address[] memory poolVote_ = poolVote[tokenId_];
        uint256 poolCnt_ = poolVote_.length;
        uint256[] memory weights_ = new uint256[](poolCnt_);

        for (uint256 i = 0; i < poolCnt_; i++) {
            weights_[i] = votes[tokenId_][poolVote_[i]];
        }
        _vote(tokenId_, poolVote_, weights_);
    }

    /// @notice Internal function to reset a vote
    /// @param tokenId_ The ID of the token
    function _reset(uint256 tokenId_) internal {
        address[] storage poolVote_ = poolVote[tokenId_];
        uint256 poolVoteCnt_ = poolVote_.length;
        uint256 totalWeight_ = 0;
        for (uint256 i = 0; i < poolVoteCnt_; i++) {
            address pool_ = poolVote_[i];
            uint256 votes_ = votes[tokenId_][pool_];
            if (votes_ != 0) {
                _updateFor(gauges[pool_]);
                weights[pool_] -= votes_;
                votes[tokenId_][pool_] -= votes_;
                if (votes_ > 0) {
                    IGT3Bribe(bribes[gauges[pool_]]).withdraw(votes_, tokenId_);
                    totalWeight_ += votes_;
                } else {
                    totalWeight_ -= votes_;
                }
                emit Abstained(pool_, tokenId_, votes_);
            }
        }
        totalWeight -= totalWeight_;
        usedWeights[tokenId_] = 0;
        delete poolVote[tokenId_];
    }
}
