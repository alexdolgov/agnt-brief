// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.24;

import {ReentrancyGuard} from "@openzeppelin/contracts/utils/ReentrancyGuard.sol";

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {EnumerableSet} from "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";
import {Initializable} from "@openzeppelin/contracts/proxy/utils/Initializable.sol";
import {RewardClaimers} from "./libraries/RewardClaimers.sol";

import {IMinter} from "./interfaces/IMinter.sol";
import {IPair} from "./interfaces/IPair.sol";
import {IPairFactory} from "./interfaces/IPairFactory.sol";
import {IFeeRecipient} from "./interfaces/IFeeRecipient.sol";
import {IFeeRecipientFactory} from "./interfaces/IFeeRecipientFactory.sol";

import {IVoteModule} from "./interfaces/IVoteModule.sol";
import {IVoter} from "./interfaces/IVoter.sol";
import {IFeeDistributor} from "./interfaces/IFeeDistributor.sol";
import {IFeeDistributorFactory} from "./interfaces/IFeeDistributorFactory.sol";

import {ISigmaFeeDistributorFactory} from "./interfaces/ISigmaFeeDistributorFactory.sol";
import {IGauge} from "./interfaces/IGauge.sol";
import {IGaugeFactory} from "./interfaces/IGaugeFactory.sol";
import {ISigmaGaugeFactory} from "./interfaces/ISigmaGaugeFactory.sol";
import {IVeFunderGaugeFactory} from "./interfaces/IVeFunderGaugeFactory.sol";
import {IVeFunderGauge} from "./interfaces/IVeFunderGauge.sol";

import {IXShadow} from "./interfaces/IXShadow.sol";

contract Voter is IVoter, ReentrancyGuard, Initializable {
    using EnumerableSet for EnumerableSet.AddressSet;
    /// @inheritdoc IVoter
    address public shadow;
    /// @inheritdoc IVoter
    address public veFunderGaugeFactory;
    /// @inheritdoc IVoter
    address public sigmaGaugeFactory;
    /// @inheritdoc IVoter
    address public sigmaFeeDistributorFactory;
    /// @inheritdoc IVoter
    address public minter;
    /// @inheritdoc IVoter
    address public accessHub;
    /// @inheritdoc IVoter
    address public governor;

    /// @inheritdoc IVoter
    address public xShadow;
    /// @inheritdoc IVoter
    address public voteModule;
    /// @dev internal duration constant
    uint256 internal constant DURATION = 7 days;
    /// @inheritdoc IVoter
    uint256 public constant BASIS = 1_000_000;
    /// @inheritdoc IVoter
    uint256 public xRatio;

    EnumerableSet.AddressSet pools;
    EnumerableSet.AddressSet gauges;
    EnumerableSet.AddressSet feeDistributors;

    mapping(address pool => address gauge) public gaugeForPool;
    mapping(address gauge => address pool) public poolForGauge;
    mapping(address gauge => address feeDistributor)
        public feeDistributorForGauge;

    mapping(address pool => mapping(uint256 period => uint256 totalVotes))
        public poolTotalVotesPerPeriod;
    mapping(address user => mapping(uint256 period => mapping(address pool => uint256 totalVote)))
        public userVotesForPoolPerPeriod;
    mapping(address user => mapping(uint256 period => address[] pools))
        public userVotedPoolsPerPeriod;
    mapping(address user => mapping(uint256 period => uint256 votingPower))
        public userVotingPowerPerPeriod;
    mapping(address user => uint256 period) public lastVoted;

    mapping(uint256 period => uint256 rewards) public totalRewardPerPeriod;
    mapping(uint256 period => uint256 weight) public totalVotesPerPeriod;
    mapping(address gauge => mapping(uint256 period => uint256 reward))
        public gaugeRewardsPerPeriod;

    mapping(address gauge => mapping(uint256 period => bool distributed))
        public gaugePeriodDistributed;

    mapping(address gauge => uint256 period) public lastDistro;

    mapping(address gauge => bool sigmaGauge) public isSigmaGauge;

    mapping(address gauge => bool veFunderGauge) public isVeFunderGauge;

    /// @dev Stores preallocation percentage for each SigmaGauge (using BASIS, max 1_000_000 = 100%)
    mapping(address gauge => uint256 preallocationBps) public sigmaGaugePreallocation;

    /// @inheritdoc IVoter
    /// @notice max total sigma gauge preallocation
    uint256 public maxTotalSigmaGaugePreallocation;

    /// @inheritdoc IVoter
    /// @notice max ve funder gauge cap
    uint256 public maxVeFunderGaugeCap;

    mapping(address => bool) public isWhitelisted;
    mapping(address => bool) public isAlive;

    modifier onlyGovernance() {
        require(
            msg.sender == accessHub || msg.sender == governor,
            NOT_AUTHORIZED(msg.sender)
        );
        _;
    }

    constructor(address _accessHub) {
        accessHub = _accessHub;
    }

    function initialize(
        address _shadow,
        address _veFunderGaugeFactory,
        address _sigmaGaugeFactory,
        address _sigmaFeeDistributorFactory,
        address _minter,
        address _msig,
        address _xShadow,
        address _voteModule,
        uint256 _maxTotalSigmaGaugePreallocation,
        uint256 _maxVeFunderGaugeCap
    ) external initializer {
        /// @dev making sure who deployed calls initialize
        require(accessHub == msg.sender, NOT_AUTHORIZED(msg.sender));
        require(_maxTotalSigmaGaugePreallocation <= BASIS, TOTAL_PREALLOCATION_EXCEEDS_MAX());
        shadow = _shadow;
        veFunderGaugeFactory = _veFunderGaugeFactory;
        sigmaGaugeFactory = _sigmaGaugeFactory;
        sigmaFeeDistributorFactory = _sigmaFeeDistributorFactory;
        minter = _minter;
        xShadow = _xShadow;
        governor = _msig;
        voteModule = _voteModule;
        maxVeFunderGaugeCap = _maxVeFunderGaugeCap;

        /// @dev default at 100% xRatio
        xRatio = 1_000_000;
        /// @dev set maximum total sigma gauge preallocation
        maxTotalSigmaGaugePreallocation = _maxTotalSigmaGaugePreallocation;
        /// @dev emits from the zero address since it's the first time
        emit EmissionsRatio(address(0), 0, 1_000_000);
        /// @dev perma approval
        IERC20(shadow).approve(xShadow, type(uint256).max);
    }

    /// @inheritdoc IVoter
    /// @notice sets the default xShadowRatio
    function setGlobalRatio(uint256 _xRatio) external onlyGovernance {
        require(_xRatio <= BASIS, RATIO_TOO_HIGH(_xRatio));

        emit EmissionsRatio(msg.sender, xRatio, _xRatio);
        xRatio = _xRatio;
    }

    ////////////
    // Voting //
    ////////////

    /// @inheritdoc IVoter
    function reset(address user) external {
        /// @dev if the caller isn't the user
        if (msg.sender != user) {
            /// @dev check for delegation
            require(
                IVoteModule(voteModule).isDelegateFor(msg.sender, user) ||
                    msg.sender == accessHub,
                NOT_AUTHORIZED(msg.sender)
            );
        }
        _reset(user);
    }

    function _reset(address user) internal {
        /// @dev voting for the next period
        uint256 nextPeriod = getPeriod() + 1;
        /// @dev fetch the previously voted pools
        address[] memory votedPools = userVotedPoolsPerPeriod[user][nextPeriod];
        /// @dev fetch the user's stored voting power for the voting period
        uint256 votingPower = userVotingPowerPerPeriod[user][nextPeriod];
        /// @dev if an existing vote is cast
        if (votingPower > 0) {
            /// @dev loop through the pools
            for (uint256 i; i < votedPools.length; ++i) {
                /// @dev fetch the individual casted for the pool for the next period
                uint256 userVote = userVotesForPoolPerPeriod[user][nextPeriod][
                    votedPools[i]
                ];
                /// @dev decrement the total vote by the existing vote
                poolTotalVotesPerPeriod[votedPools[i]][nextPeriod] -= userVote;
                /// @dev wipe the mapping
                delete userVotesForPoolPerPeriod[user][nextPeriod][
                    votedPools[i]
                ];
                /// @dev call _withdraw on the FeeDistributor
                IFeeDistributor(
                    feeDistributorForGauge[gaugeForPool[votedPools[i]]]
                )._withdraw(userVote, user);
                emit Abstained(address(0), userVote);
            }
            /// @dev reduce the overall vote power casted
            totalVotesPerPeriod[nextPeriod] -= votingPower;
            /// @dev wipe the mappings
            delete userVotingPowerPerPeriod[user][nextPeriod];
            delete userVotedPoolsPerPeriod[user][nextPeriod];
        }
    }

    /// @inheritdoc IVoter
    function poke(address user) external {
        /// @dev ensure the caller is either the user or the vote module
        if (msg.sender != user) {
            /// @dev ...require they are authorized to be a delegate
            require(
                IVoteModule(voteModule).isDelegateFor(msg.sender, user) ||
                    msg.sender == voteModule,
                NOT_AUTHORIZED(msg.sender)
            );
        }
        uint256 _lastVoted = lastVoted[user];
        /// @dev has no prior vote, terminate early
        if (_lastVoted == 0) return;
        /// @dev fetch the last voted pools since votes are casted into the next week's mapping
        address[] memory votedPools = userVotedPoolsPerPeriod[user][
            _lastVoted + 1
        ];
        /// @dev fetch the voting power of the user in that period after
        uint256 userVotePower = userVotingPowerPerPeriod[user][_lastVoted + 1];
        /// @dev if nothing, terminate
        if (userVotePower == 0) return;

        uint256[] memory voteWeights = new uint256[](votedPools.length);
        /// @dev loop and fetch weights
        for (uint256 i; i < votedPools.length; i++) {
            voteWeights[i] = userVotesForPoolPerPeriod[user][_lastVoted + 1][
                votedPools[i]
            ];
        }
        /// @dev grab current period
        uint256 period = getPeriod();
        /// @dev if the last voted period is the same as the current period
        if (_lastVoted == period) {
            /// @dev we reset the votes
            _reset(user);
        }
        /// @dev recast with new voting power and same weights/pools as prior
        /// @dev we ignore if this succeeds or not
        _vote(user, votedPools, voteWeights);
        emit Poke(user);
    }
    /// @inheritdoc IVoter
    /**

    important information on the mappings (since it is quite confusing):
    - userVotedPoolsPerPeriod is stored in the NEXT period when triggered
    - userVotingPowerPerPeriod  is stored in the NEXT period
    - userVotesForPoolPerPeriod is stored in the NEXT period
    - poolTotalVotesPerPeriod is stored in the NEXT period
    - lastVoted is stored in the CURRENT period

     */
    function vote(
        address user,
        address[] calldata _pools,
        uint256[] calldata _weights
    ) external {
        /// @dev ensure that the arrays length matches and that the length is > 0
        require(
            _pools.length > 0 && _pools.length == _weights.length,
            LENGTH_MISMATCH()
        );
        /// @dev if the caller isn't the user...
        if (msg.sender != user) {
            /// @dev ...require they are authorized to be a delegate
            require(
                IVoteModule(voteModule).isDelegateFor(msg.sender, user),
                NOT_AUTHORIZED(msg.sender)
            );
        }
        /// @dev make a memory array of votedPools
        address[] memory votedPools = new address[](_pools.length);
        /// @dev loop through and populate the array
        for (uint256 i = 0; i < _pools.length; ++i) {
            votedPools[i] = _pools[i];
        }

        /// @dev wipe all votes
        _reset(user);
        /// @dev cast new votes and revert if there's an issue
        require(_vote(user, votedPools, _weights), VOTE_UNSUCCESSFUL());
    }

    function _vote(
        address user,
        address[] memory _pools,
        uint256[] memory _weights
    ) internal returns (bool) {
        /// @dev defaults to true
        bool success = true;
        /// @dev grab the nextPeriod
        uint256 nextPeriod = getPeriod() + 1;
        /// @dev fetch the user's votingPower
        uint256 votingPower = IVoteModule(voteModule).balanceOf(user);
        /// @dev set the voting power for the user for the period
        userVotingPowerPerPeriod[user][nextPeriod] = votingPower;
        /// @dev update the pools voted for
        userVotedPoolsPerPeriod[user][nextPeriod] = _pools;

        /// @dev loop through and add up the amounts, we do this because weights are proportions and not directly the vote power values
        uint256 totalVoteWeight;
        for (uint256 i; i < _pools.length; i++) {
            totalVoteWeight += _weights[i];
        }
        /// @dev loop through all pools
        for (uint256 i; i < _pools.length; i++) {
            /// @dev fetch the gauge for the pool
            address _gauge = gaugeForPool[_pools[i]];
            /// @dev set to false if a gauge is dead
            if (!isAlive[_gauge]) {
                return false;
            }
            /// @dev scale the weight of the pool
            uint256 _poolWeight = (_weights[i] * votingPower) / totalVoteWeight;
            /// @dev if weights are ever 0, set success to false
            if (_weights[i] == 0) {
                return false;
            }
            /// @dev increment to the votes for this pool
            poolTotalVotesPerPeriod[_pools[i]][nextPeriod] += _poolWeight;
            /// @dev increment the user's votes for this pool
            userVotesForPoolPerPeriod[user][nextPeriod][
                _pools[i]
            ] += _poolWeight;
            /// @dev deposit the votes to the FeeDistributor
            IFeeDistributor(feeDistributorForGauge[_gauge])._deposit(
                _poolWeight,
                user
            );
            /// @dev emit the voted event, passing the user and the raw vote weight given to the pool
            emit Voted(user, _poolWeight, _pools[i]);
        }
        /// @dev increment to the total
        totalVotesPerPeriod[nextPeriod] += votingPower;
        /// @dev last vote as current epoch
        lastVoted[user] = nextPeriod - 1;
        /// @dev return the result
        return success;
    }

    ///////////////////////////
    // Emission Distribution //
    ///////////////////////////

    function _distribute(
        address _gauge,
        uint256 _claimable,
        uint256 _period
    ) internal {
        /// @dev check if the gauge is even alive
        if (isAlive[_gauge]) {
            /// @dev if there is 0 claimable terminate
            if (_claimable == 0) return;
            /// @dev if the gauge is already distributed for the period, terminate
            if (gaugePeriodDistributed[_gauge][_period]) return;

            /// @dev fetch shadow address
            address _xShadow = address(xShadow);
            /// @dev fetch the current ratio and multiply by the claimable
            uint256 _xShadowClaimable = (_claimable * xRatio) / BASIS;
            /// @dev remove from the regular claimable tokens (SHADOW)
            _claimable -= _xShadowClaimable;

            /// @dev can only distribute if the distributed amount / week > 0 and is > left()
            bool canDistribute = true;

            /// @dev _claimable could be 0 if emission is 100% xShadow
            if (_claimable > 0) {
                if (
                    _claimable / DURATION == 0 ||
                    _claimable < IGauge(_gauge).left(shadow)
                ) {
                    canDistribute = false;
                }
            }
            /// @dev _xShadowClaimable could be 0 if ratio is 100% emissions
            if (_xShadowClaimable > 0) {
                if (
                    _xShadowClaimable / DURATION == 0 ||
                    _xShadowClaimable < IGauge(_gauge).left(_xShadow)
                ) {
                    canDistribute = false;
                }
            }
            /// @dev if the checks pass and the gauge can be distributed
            if (canDistribute) {
                /// @dev set it to true firstly
                gaugePeriodDistributed[_gauge][_period] = true;
                /// @dev check SHADOW "claimable"
                if (_claimable > 0) {
                    /// @dev notify emissions
                    IGauge(_gauge).notifyRewardAmount(shadow, _claimable);
                }
                /// @dev check xSHADOW "claimable"
                if (_xShadowClaimable > 0) {
                    /// @dev convert, then notify the xShadow
                    IXShadow(_xShadow).convertEmissionsToken(_xShadowClaimable);
                    IGauge(_gauge).notifyRewardAmount(
                        _xShadow,
                        _xShadowClaimable
                    );
                }

                emit DistributeReward(
                    msg.sender,
                    _gauge,
                    _claimable + _xShadowClaimable
                );
            }
        }
    }

    ////////////////////
    // View Functions //
    ////////////////////

    /// @inheritdoc IVoter
    function getVotes(
        address user,
        uint256 period
    ) external view returns (address[] memory votes, uint256[] memory weights) {
        /// @dev fetch the user's voted pools for the period
        votes = userVotedPoolsPerPeriod[user][period];
        /// @dev set weights array length equal to the votes length
        weights = new uint256[](votes.length);
        /// @dev loop through the votes and populate the weights
        for (uint256 i; i < votes.length; ++i) {
            weights[i] = userVotesForPoolPerPeriod[user][period][votes[i]];
        }
    }

    ////////////////////////////////
    // Governance Gated Functions //
    ////////////////////////////////

    /// @inheritdoc IVoter
    function setGovernor(address _governor) external onlyGovernance {
        if (governor != _governor) {
            governor = _governor;
            emit NewGovernor(msg.sender, _governor);
        }
    }
    /// @inheritdoc IVoter
    function whitelist(address _token) public onlyGovernance {
        require(!isWhitelisted[_token], ALREADY_WHITELISTED(_token));
        isWhitelisted[_token] = true;
        emit Whitelisted(msg.sender, _token);
    }
    /// @inheritdoc IVoter
    function revokeWhitelist(address _token) public onlyGovernance {
        require(isWhitelisted[_token], NOT_WHITELISTED());
        isWhitelisted[_token] = false;
        emit WhitelistRevoked(msg.sender, _token, true);
    }
    /// @inheritdoc IVoter
    function killGauge(address _gauge) public onlyGovernance {
        /// @dev ensure the gauge is alive already, and exists
        require(
            isAlive[_gauge] && gauges.contains(_gauge),
            GAUGE_INACTIVE(_gauge)
        );
        /// @dev set the gauge to dead
        isAlive[_gauge] = false;
        address pool = poolForGauge[_gauge];
        /// @dev fetch the last distribution
        uint256 _lastDistro = lastDistro[_gauge];
        /// @dev fetch the current period
        uint256 currentPeriod = getPeriod();
        /// @dev placeholder
        uint256 _claimable;
        /// @dev loop through the last distribution period up to and including the current period
        for (uint256 period = _lastDistro; period <= currentPeriod; ++period) {
            /// @dev if the gauge isn't distributed for the period
            if (!gaugePeriodDistributed[_gauge][period]) {
                uint256 additionalClaimable = _claimablePerPeriod(pool, period);
                _claimable += additionalClaimable;

                /// @dev prevent gaugePeriodDistributed being marked true when the minter hasn't updated yet
                if (additionalClaimable > 0) {
                    gaugePeriodDistributed[_gauge][period] = true;
                }
            }
        }
        /// @dev if there is anything claimable left
        if (_claimable > 0) {
            /// @dev send to the governor contract
            IERC20(shadow).transfer(governor, _claimable);
        }
        /// @dev update last distribution to the current period
        lastDistro[_gauge] = currentPeriod;
        emit GaugeKilled(_gauge);
    }
    /// @inheritdoc IVoter
    function reviveGauge(address _gauge) public onlyGovernance {
        /// @dev ensure the gauge is dead and exists
        require(
            !isAlive[_gauge] && gauges.contains(_gauge),
            ACTIVE_GAUGE(_gauge)
        );
        /// @dev set the gauge to alive
        isAlive[_gauge] = true;
        /// @dev update last distribution to the current period
        lastDistro[_gauge] = getPeriod();
        emit GaugeRevived(_gauge);
    }
    /// @inheritdoc IVoter
    /// @dev in case of emission stuck due to killed gauges and unsupported operations
    function stuckEmissionsRecovery(
        address _gauge,
        uint256 _period
    ) external onlyGovernance {
        /// @dev require gauge is dead
        require(!isAlive[_gauge], ACTIVE_GAUGE(_gauge));

        /// @dev ensure the gauge exists
        require(gauges.contains(_gauge), GAUGE_INACTIVE(_gauge));

        /// @dev check if the period has been distributed already
        if (!gaugePeriodDistributed[_gauge][_period]) {
            address pool = poolForGauge[_gauge];
            uint256 _claimable = _claimablePerPeriod(pool, _period);
            /// @dev if there is gt 0 emissions, send to governor
            if (_claimable > 0) {
                IERC20(shadow).transfer(governor, _claimable);
                /// @dev mark period as distributed
                gaugePeriodDistributed[_gauge][_period] = true;
            }
        }
    }
    /// @inheritdoc IVoter
    function whitelistGaugeRewards(
        address _gauge,
        address _reward
    ) external onlyGovernance {
        /// @dev ensure the gauge exists
        require(gauges.contains(_gauge), GAUGE_INACTIVE(_gauge));

        /// @dev enforce whitelisted in voter
        require(isWhitelisted[_reward], NOT_WHITELISTED());

        IGauge(_gauge).whitelistReward(_reward);
    }
    /// @inheritdoc IVoter
    function removeGaugeRewardWhitelist(
        address _gauge,
        address _reward
    ) external onlyGovernance {
        /// @dev ensure the gauge exists
        require(gauges.contains(_gauge), GAUGE_INACTIVE(_gauge));
        IGauge(_gauge).removeRewardWhitelist(_reward);
    }

    /// @inheritdoc IVoter
    function removeFeeDistributorReward(
        address _feeDistributor,
        address reward
    ) external onlyGovernance {
        /// @dev ensure the feeDist exists
        require(feeDistributors.contains(_feeDistributor));
        IFeeDistributor(_feeDistributor).removeReward(reward);
    }

    /// @inheritdoc IVoter
    function getPeriod() public view returns (uint256 period) {
        return (block.timestamp / 1 weeks);
    }

    ////////////////////
    // Gauge Creation //
    ////////////////////

    function createSigmaGauge(address _pool, uint256 _preallocationBps) external onlyGovernance returns (address) {
        /// @dev ensure there is no gauge for the pool
        require(
            gaugeForPool[_pool] == address(0),
            ACTIVE_GAUGE(gaugeForPool[_pool])
        );
        /// @dev check total preallocation limit
        uint256 currentTotalPreallocation = _getCurrentTotalSigmaGaugePreallocation();
        require(
            currentTotalPreallocation + _preallocationBps <= maxTotalSigmaGaugePreallocation,
            TOTAL_PREALLOCATION_EXCEEDS_MAX()
        );
        
        /// @dev create the feeDist via factory from the feeRecipient
        address _feeDistributor = ISigmaFeeDistributorFactory(sigmaFeeDistributorFactory)
            .createFeeDistributor();

        /// @dev create a legacy gauge from the factory
        address _gauge = ISigmaGaugeFactory(sigmaGaugeFactory).createGauge(_pool);

        /// @dev give infinite approvals in advance
        IERC20(shadow).approve(_gauge, type(uint256).max);
        IERC20(xShadow).approve(_gauge, type(uint256).max);
        /// @dev update voter mappings
        feeDistributorForGauge[_gauge] = _feeDistributor;
        gaugeForPool[_pool] = _gauge;
        poolForGauge[_gauge] = _pool;
        /// @dev set gauge to alive
        isAlive[_gauge] = true;
        /// @dev add to the sets
        pools.add(_pool);
        gauges.add(_gauge);
        feeDistributors.add(_feeDistributor);
        /// @dev set true that it is a sigma gauge
        isSigmaGauge[_gauge] = true;
        /// @dev set preallocation percentage for this sigma gauge
        sigmaGaugePreallocation[_gauge] = _preallocationBps;
        /// @dev set the last distribution as the current period
        lastDistro[_gauge] = getPeriod();
        /// @dev emit the gauge creation event
        emit GaugeCreated(_gauge, msg.sender, _feeDistributor, _pool);
        /// @dev return the new created gauge address
        return _gauge;
    }

    function createVeFunderGauge(address _receiver, uint256 _maxEmission, address _pool) external onlyGovernance returns (address) {
        /// @dev ensure there is no gauge for the pool
        require(
            gaugeForPool[_pool] == address(0),
            ACTIVE_GAUGE(gaugeForPool[_pool])
        );

        require(
            _maxEmission <= maxVeFunderGaugeCap,
            EMISSION_EXCEEDS_MAX()
        );

        /// @dev create the feeDist via factory from the feeRecipient
        address _feeDistributor = ISigmaFeeDistributorFactory(sigmaFeeDistributorFactory)
            .createFeeDistributor();

        /// @dev create a legacy gauge from the factory
        address _gauge = IVeFunderGaugeFactory(veFunderGaugeFactory).createGauge(_receiver, _maxEmission);
        /// @dev give infinite approvals in advance
        IERC20(shadow).approve(_gauge, type(uint256).max);
        IERC20(xShadow).approve(_gauge, type(uint256).max);
        /// @dev update voter mappings
        feeDistributorForGauge[_gauge] = _feeDistributor;
        gaugeForPool[_pool] = _gauge;
        poolForGauge[_gauge] = _pool;
        /// @dev set gauge to alive
        isAlive[_gauge] = true;
        /// @dev add to the sets
        pools.add(_pool);
        gauges.add(_gauge);
        feeDistributors.add(_feeDistributor);
        /// @dev set true that it is a ve funder gauge
        isVeFunderGauge[_gauge] = true;
        /// @dev set the last distribution as the current period
        lastDistro[_gauge] = getPeriod();
        /// @dev emit the gauge creation event
        emit GaugeCreated(_gauge, msg.sender, _feeDistributor, _pool);
        /// @dev return the new created gauge address
        return _gauge;
    }

    /// @dev Sets preallocation percentage for a SigmaGauge
    function setSigmaGaugePreallocation(
        address _gauge,
        uint256 _preallocationBps
    ) external onlyGovernance {
        require(gauges.contains(_gauge), GAUGE_INACTIVE(_gauge));
        require(isSigmaGauge[_gauge], NOT_SIGMA_GAUGE());
        
        uint256 oldPreallocation = sigmaGaugePreallocation[_gauge];
        
        /// @dev check total preallocation limit
        uint256 currentTotalPreallocation = _getCurrentTotalSigmaGaugePreallocation();
        uint256 newTotalPreallocation = currentTotalPreallocation - oldPreallocation + _preallocationBps;
        require(
            newTotalPreallocation <= maxTotalSigmaGaugePreallocation,
            TOTAL_PREALLOCATION_EXCEEDS_MAX()
        );
        
        sigmaGaugePreallocation[_gauge] = _preallocationBps;
        
        emit SigmaGaugePreallocationChanged(_gauge, oldPreallocation, _preallocationBps);
    }

    /////////////////////////////
    // One-stop Reward Claimer //
    /////////////////////////////

    /// @inheritdoc IVoter
    function claimIncentives(
        address owner,
        address[] calldata _feeDistributors,
        address[][] calldata _tokens
    ) external {
        RewardClaimers.claimIncentives(
            voteModule,
            owner,
            _feeDistributors,
            _tokens
        );
    }
    /// @inheritdoc IVoter
    function claimRewards(
        address[] calldata _gauges,
        address[][] calldata _tokens
    ) external {
        RewardClaimers.claimRewards(_gauges, _tokens);
    }

    /// @inheritdoc IVoter
    function claimLegacyRewardsAndExit(
        address[] calldata _gauges,
        address[][] calldata _tokens
    ) external {
        RewardClaimers.claimLegacyRewardsAndExit(_gauges, _tokens);
    }

    //////////////////////////
    // Emission Calculation //
    //////////////////////////

    /// @inheritdoc IVoter
    function notifyRewardAmount(uint256 amount) external {
        /// @dev gate to minter which prevents bricking distribution
        require(msg.sender == minter, NOT_AUTHORIZED(msg.sender));
        /// @dev transfer the tokens to the voter
        IERC20(shadow).transferFrom(msg.sender, address(this), amount);
        /// @dev fetch the current period
        uint256 period = getPeriod();
        /// @dev add to the totalReward for the period
        totalRewardPerPeriod[period] += amount;
        /// @dev emit an event
        emit NotifyReward(msg.sender, shadow, amount);
    }

    ///////////////////////////
    // Emission Distribution //
    ///////////////////////////
    /// @inheritdoc IVoter
    function distribute(address _gauge) public nonReentrant {
        /// @dev update the period if not already done
        IMinter(minter).updatePeriod();
        /// @dev fetch the last distribution
        uint256 _lastDistro = lastDistro[_gauge];
        /// @dev fetch the current period
        uint256 currentPeriod = getPeriod();
        /// @dev fetch the pool address from the gauge
        address pool = poolForGauge[_gauge];
        /// @dev loop through _lastDistro + 1 up to and including the currentPeriod
        for (
            uint256 period = _lastDistro + 1;
            period <= currentPeriod;
            ++period
        ) {
            /// @dev fetch the claimable amount
            uint256 claimable = _claimablePerPeriod(pool, period);
            /// @dev distribute for the period
            _distribute(_gauge, claimable, period);
        }
        /// @dev set the last distribution for the gauge as the currentPeriod
        lastDistro[_gauge] = currentPeriod;
    }
    /// @inheritdoc IVoter
    function distributeForPeriod(
        address _gauge,
        uint256 _period
    ) public nonReentrant {
        /// @dev attempt to update the period
        IMinter(minter).updatePeriod();
        /// @dev fetch the pool address from the gauge
        address pool = poolForGauge[_gauge];
        /// @dev fetch the claimable amount for the period
        uint256 claimable = _claimablePerPeriod(pool, _period);

        /// @dev we dont update lastDistro here
        _distribute(_gauge, claimable, _period);
    }
    /// @inheritdoc IVoter
    function distributeAll() external {
        /// @dev grab the length of all gauges in the set
        uint256 gaugesLength = gauges.length();
        /// @dev loop through and call distribute for every index
        for (uint256 i; i < gaugesLength; ++i) {
            distribute(gauges.at(i));
        }
    }

    /// @inheritdoc IVoter
    function batchDistributeByIndex(
        uint256 startIndex,
        uint256 endIndex
    ) external {
        /// @dev grab the length of all gauges in the set
        uint256 gaugesLength = gauges.length();
        /// @dev if the end value is too high, set to end
        if (endIndex > gaugesLength) {
            endIndex = gaugesLength;
        }
        /// @dev loop through and distribute
        for (uint256 i = startIndex; i < endIndex; ++i) {
            distribute(gauges.at(i));
        }
    }

    ////////////////////
    // View Functions //
    ////////////////////

    /// @inheritdoc IVoter
    function getAllGauges() external view returns (address[] memory _gauges) {
        _gauges = gauges.values();
    }
    /// @inheritdoc IVoter
    function getAllFeeDistributors()
        external
        view
        returns (address[] memory _feeDistributors)
    {
        return feeDistributors.values();
    }
    /// @inheritdoc IVoter
    function isGauge(address _gauge) external view returns (bool) {
        return gauges.contains(_gauge);
    }
    /// @inheritdoc IVoter
    function isFeeDistributor(
        address _feeDistributor
    ) external view returns (bool) {
        return feeDistributors.contains(_feeDistributor);
    }

    /// @dev shows how much is claimable per period
    function _claimablePerPeriod(
        address pool,
        uint256 period
    ) internal view returns (uint256) {
        address gauge = gaugeForPool[pool];
        uint256 totalReward = totalRewardPerPeriod[period];
        
        if (totalReward == 0) return 0;

        uint256 preallocationAmount = 0;
        
        // Check if this is a SigmaGauge with preallocation
        if (isSigmaGauge[gauge] && sigmaGaugePreallocation[gauge] > 0) {
            preallocationAmount = (totalReward * sigmaGaugePreallocation[gauge]) / BASIS;
        } 

        uint256 remainingReward = totalReward - _getTotalPreallocationForPeriod(period);
        if (remainingReward == 0 || totalVotesPerPeriod[period] == 0) {
            return preallocationAmount;
        }
        
        // Calculate base allocation from votes
        uint256 numerator = (remainingReward * poolTotalVotesPerPeriod[pool][period]) * 1e18;
        uint256 baseAllocation = numerator / totalVotesPerPeriod[period] / 1e18;
        return preallocationAmount + baseAllocation;
    }

    /// @dev calculates total preallocation for all SigmaGauges in a period
    function _getTotalPreallocationForPeriod(uint256 period) internal view returns (uint256) {
        uint256 totalReward = totalRewardPerPeriod[period];
        if (totalReward == 0) return 0;
        
        uint256 totalPreallocation = 0;
        uint256 gaugesLength = gauges.length();
        
        for (uint256 i = 0; i < gaugesLength; i++) {
            address gauge = gauges.at(i);
            if (isSigmaGauge[gauge] && isAlive[gauge]) {
                totalPreallocation += (totalReward * sigmaGaugePreallocation[gauge]) / BASIS;
            }
        }
        
        return totalPreallocation;
    }

    /// @dev calculates current total preallocation for all active SigmaGauges
    function _getCurrentTotalSigmaGaugePreallocation() internal view returns (uint256) {
        uint256 totalPreallocation = 0;
        uint256 gaugesLength = gauges.length();
        
        for (uint256 i = 0; i < gaugesLength; i++) {
            address gauge = gauges.at(i);
            if (isSigmaGauge[gauge] && isAlive[gauge]) {
                totalPreallocation += sigmaGaugePreallocation[gauge];
            }
        }
        
        return totalPreallocation;
    }
}
