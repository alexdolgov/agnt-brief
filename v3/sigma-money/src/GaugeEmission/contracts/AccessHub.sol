// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;
import {IAccessHub} from "./interfaces/IAccessHub.sol";
import {AccessControlEnumerableUpgradeable, Initializable} from "@openzeppelin/contracts-upgradeable/access/extensions/AccessControlEnumerableUpgradeable.sol";
import {IVoter} from "./interfaces/IVoter.sol";
import {IGaugeEmission} from "./interfaces/IGaugeEmission.sol";
import {IXShadow} from "./interfaces/IXShadow.sol";
import {IVoteModule} from "./interfaces/IVoteModule.sol";

contract AccessHub is
    IAccessHub,
    Initializable,
    AccessControlEnumerableUpgradeable
{
    /** Start of Storage Slots */

    /// @notice operator role for daily operations
    bytes32 public constant PROTOCOL_OPERATOR = keccak256("PROTOCOL_OPERATOR");

    /// @inheritdoc IAccessHub
    address public owner;
    /// @inheritdoc IAccessHub
    address public operator;

    /** "nice-to-have" addresses for quickly finding contracts within the system */

    /// @inheritdoc IAccessHub
    address public sigmaGaugeFactory;
    /// @inheritdoc IAccessHub
    address public veFunderGaugeFactory;
    /// @inheritdoc IAccessHub
    address public sigmaFeeDistributorFactory;

    /** core contracts */

    /// @notice central voter contract
    IVoter public voter;
    /// @notice gauge emission controller
    IGaugeEmission public gaugeEmission;
    /// @notice xShadow contract
    IXShadow public xShadow;
    /// @notice voteModule contract
    IVoteModule public voteModule;

    /**  End of Storage Slots */

    modifier onlyOwner() {
        require(msg.sender == owner, NOT_OWNER(msg.sender));
        _;
    }

    constructor() {
        _disableInitializers();
    }

    /// @inheritdoc IAccessHub
    function initialize(InitParams calldata params) external initializer {
        /// @dev initialize all external interfaces
        owner = params.owner;
        operator = params.operator;
        voter = IVoter(params.voter);
        gaugeEmission = IGaugeEmission(params.gaugeEmission);
        xShadow = IXShadow(params.xShadow);
        voteModule = IVoteModule(params.voteModule);

        /// @dev reference addresses
        sigmaGaugeFactory = params.sigmaGaugeFactory;
        veFunderGaugeFactory = params.veFunderGaugeFactory;
        sigmaFeeDistributorFactory = params.sigmaFeeDistributorFactory;

        /// @dev owner gets all roles (highest authority)
        _grantRole(DEFAULT_ADMIN_ROLE, params.owner);
        _grantRole(PROTOCOL_OPERATOR, params.owner);

        /// @dev operator gets daily operation roles
        _grantRole(PROTOCOL_OPERATOR, params.operator);
    }

    /// @inheritdoc IAccessHub
    function reinit(InitParams calldata params) external onlyOwner {
        voter = IVoter(params.voter);
        gaugeEmission = IGaugeEmission(params.gaugeEmission);
        xShadow = IXShadow(params.xShadow);
        voteModule = IVoteModule(params.voteModule);

        /// @dev reference addresses
        sigmaGaugeFactory = params.sigmaGaugeFactory;
        veFunderGaugeFactory = params.veFunderGaugeFactory;
        sigmaFeeDistributorFactory = params.sigmaFeeDistributorFactory;
    }

    /// @inheritdoc IAccessHub
    function initializeVoter(
        address _shadow,
        address _veFunderGaugeFactory,
        address _sigmaGaugeFactory,
        address _sigmaFeeDistributorFactory,
        address _gaugeEmission,
        address _msig,
        address _xShadow,
        address _voteModule,
        uint256 _maxTotalSigmaGaugePreallocation,
        uint256 _maxVeFunderGaugeCap
    ) external onlyOwner {
        voter.initialize(
            _shadow,
            _veFunderGaugeFactory,
            _sigmaGaugeFactory,
            _sigmaFeeDistributorFactory,
            _gaugeEmission,
            _msig,
            _xShadow,
            _voteModule,
            _maxTotalSigmaGaugePreallocation,
            _maxVeFunderGaugeCap
        );
    }

    /// @inheritdoc IAccessHub
    function startRebase(address _voteModule, address _voter) external onlyRole(PROTOCOL_OPERATOR) {
        xShadow.startRebase(_voteModule, _voter);
    }

    /** Voter governance */

    /// @inheritdoc IAccessHub
    function setNewGovernorInVoter(
        address _newGovernor
    ) external onlyRole(PROTOCOL_OPERATOR) {
        /// @dev no checks are needed as the voter handles this already
        voter.setGovernor(_newGovernor);
    }

    /// @inheritdoc IAccessHub
    function createSigmaGauge(
        address _pool,
        uint256 _preallocationBps
    ) external onlyRole(PROTOCOL_OPERATOR) {
        voter.createSigmaGauge(_pool, _preallocationBps);
    }

    /// @inheritdoc IAccessHub
    function createVeFunderGauge(
        address _receiver,
        uint256 _maxEmission,
        address _pool,
        uint256 _preallocationBps
    ) external onlyRole(PROTOCOL_OPERATOR) {
        voter.createVeFunderGauge(_receiver, _maxEmission, _pool, _preallocationBps);
    }

    /// @inheritdoc IAccessHub
    function governanceWhitelist(
        address[] calldata _token,
        bool[] calldata _whitelisted
    ) external onlyRole(PROTOCOL_OPERATOR) {
        require(_token.length == _whitelisted.length, IVoter.LENGTH_MISMATCH());
        for (uint256 i; i < _token.length; ++i) {
            if (_whitelisted[i]) {
                voter.whitelist(_token[i]);
            } else {
                voter.revokeWhitelist(_token[i]);
            }
        }
    }

    /// @inheritdoc IAccessHub
    function killGauge(
        address[] calldata _pairs
    ) external onlyRole(PROTOCOL_OPERATOR) {
        for (uint256 i; i < _pairs.length; ++i) {
            address pair = _pairs[i];
            voter.killGauge(voter.gaugeForPool(pair));
        }
    }

    /// @inheritdoc IAccessHub
    function reviveGauge(
        address[] calldata _pairs
    ) external onlyRole(PROTOCOL_OPERATOR) {
        for (uint256 i; i < _pairs.length; ++i) {
            address pair = _pairs[i];
            voter.reviveGauge(voter.gaugeForPool(pair));
        }
    }

    /// @inheritdoc IAccessHub
    function setEmissionsRatioInVoter(
        uint256 _pct
    ) external onlyRole(PROTOCOL_OPERATOR) {
        voter.setGlobalRatio(_pct);
    }

    /// @inheritdoc IAccessHub
    function retrieveStuckEmissionsToGovernance(
        address _gauge,
        uint256 _period
    ) external onlyRole(PROTOCOL_OPERATOR) {
        voter.stuckEmissionsRecovery(_gauge, _period);
    }

    /// @inheritdoc IAccessHub
    function setGaugePreallocation(
        address _gauge,
        uint256 _preallocationBps
    ) external onlyRole(PROTOCOL_OPERATOR) {
        voter.setGaugePreallocation(_gauge, _preallocationBps);
    }

    /** xShadow Functions */

    /// @inheritdoc IAccessHub
    function transferWhitelistInXShadow(
        address[] calldata _who,
        bool[] calldata _whitelisted
    ) external onlyRole(PROTOCOL_OPERATOR) {
        require(_who.length == _whitelisted.length, IVoter.LENGTH_MISMATCH());
        xShadow.setExemption(_who, _whitelisted);
    }

    /// @inheritdoc IAccessHub
    function toggleXShadowGovernance(
        bool enable
    ) external onlyRole(PROTOCOL_OPERATOR) {
        enable ? xShadow.unpause() : xShadow.pause();
    }

    /// @inheritdoc IAccessHub
    function operatorRedeemXShadow(
        uint256 _amount
    ) external onlyRole(PROTOCOL_OPERATOR) {
        xShadow.operatorRedeem(_amount);
    }

    /// @inheritdoc IAccessHub
    function migrateOperator(
        address _operator
    ) external onlyRole(PROTOCOL_OPERATOR) {
        xShadow.migrateOperator(_operator);
    }

    /// @inheritdoc IAccessHub
    function rescueTrappedTokens(
        address[] calldata _tokens,
        uint256[] calldata _amounts
    ) external onlyRole(PROTOCOL_OPERATOR) {
        xShadow.rescueTrappedTokens(_tokens, _amounts);
    }

    /// @inheritdoc IAccessHub
    function setExemptionToInXShadow(
        address[] calldata _who,
        bool[] calldata _whitelisted
    ) external onlyRole(PROTOCOL_OPERATOR) {
        require(_who.length == _whitelisted.length, IVoter.LENGTH_MISMATCH());
        xShadow.setExemptionTo(_who, _whitelisted);
    }

    /** GaugeEmission Functions */

    /// @inheritdoc IAccessHub
    function kickoffGaugeEmission(
        address _shadow,
        uint256 _initialWeeklyEmissions,
        uint256 _initialMultiplier,
        uint256 _multiplierUpdatePeriod,
        address _xShadow
    ) external onlyRole(PROTOCOL_OPERATOR) {
        gaugeEmission.kickoff(_shadow, _initialWeeklyEmissions, _initialMultiplier, _multiplierUpdatePeriod, _xShadow);
    }

    /// @inheritdoc IAccessHub
    function startGaugeEmissions(address _voter) external onlyRole(PROTOCOL_OPERATOR) {
        gaugeEmission.startEmissions(_voter);
    }

    /// @inheritdoc IAccessHub
    function setEmissionsMultiplier(
        uint256 _multiplier
    ) external onlyRole(PROTOCOL_OPERATOR) {
        gaugeEmission.updateEmissionsMultiplier(_multiplier);
    }

    /// @inheritdoc IAccessHub
    function setGaugeActive(
        bool _isGaugeActive
    ) external onlyRole(PROTOCOL_OPERATOR) {
        gaugeEmission.setGaugeActive(_isGaugeActive);
    }

    /// @inheritdoc IAccessHub
    function emergencyWithdrawFromGaugeEmission(
        address _token,
        address _to,
        uint256 _amount
    ) external onlyOwner {
        gaugeEmission.emergencyWithdraw(_token, _to, _amount);
    }

    /** Reward List Functions */

    /// @inheritdoc IAccessHub
    function augmentGaugeRewardsForPair(
        address[] calldata _pools,
        address[] calldata _rewards,
        bool[] calldata _addReward
    ) external onlyRole(PROTOCOL_OPERATOR) {
        require(
            _pools.length == _rewards.length &&
                _rewards.length == _addReward.length,
            IVoter.LENGTH_MISMATCH()
        );
        for (uint256 i; i < _pools.length; ++i) {
            address gauge = voter.gaugeForPool(_pools[i]);
            if (_addReward[i]) {
                voter.whitelistGaugeRewards(gauge, _rewards[i]);
            } else {
                voter.removeGaugeRewardWhitelist(gauge, _rewards[i]);
            }
        }
    }

    /// @inheritdoc IAccessHub
    function removeFeeDistributorRewards(
        address[] calldata _pools,
        address[] calldata _rewards
    ) external onlyRole(PROTOCOL_OPERATOR) {
        require(_pools.length == _rewards.length, IVoter.LENGTH_MISMATCH());
        for (uint256 i; i < _pools.length; ++i) {
            voter.removeFeeDistributorReward(
                voter.feeDistributorForGauge(voter.gaugeForPool(_pools[i])),
                _rewards[i]
            );
        }
    }

    /** VoteModule Functions */

    /// @inheritdoc IAccessHub
    function setCooldownExemption(
        address[] calldata _candidates,
        bool[] calldata _exempt
    ) external onlyOwner {
        for (uint256 i; i < _candidates.length; ++i) {
            voteModule.setCooldownExemption(_candidates[i], _exempt[i]);
        }
    }

    /// @inheritdoc IAccessHub
    function setNewRebaseStreamingDuration(
        uint256 _newDuration
    ) external onlyOwner {
        voteModule.setNewDuration(_newDuration);
    }

    /// @inheritdoc IAccessHub
    function setNewVoteModuleCooldown(
        uint256 _newCooldown
    ) external onlyOwner {
        voteModule.setNewCooldown(_newCooldown);
    }

    /// @inheritdoc IAccessHub
    function kickInactive(
        address[] calldata _nonparticipants
    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
        IVoter voterContract = IVoter(voter);
        uint256 nextPeriod = voterContract.getPeriod() + 1;

        for (uint256 i; i < _nonparticipants.length; ++i) {
            address nonparticipant = _nonparticipants[i];
            (address[] memory _pools, uint256[] memory _weights) = voterContract
                .getVotes(nonparticipant, nextPeriod);

            require(
                _pools.length == 0 && _weights.length == 0,
                KICK_FORBIDDEN(nonparticipant)
            );
            voterContract.reset(nonparticipant);
        }
    }

    /** Owner specific functions */

    /// @inheritdoc IAccessHub
    function execute(
        address _target,
        bytes calldata _payload
    ) external onlyOwner {
        (bool success, ) = _target.call(_payload);
        require(success, MANUAL_EXECUTION_FAILURE(_payload));
    }

    /// @inheritdoc IAccessHub
    function setNewOwner(address _owner) external onlyOwner {
        require(owner != _owner, SAME_ADDRESS());
        owner = _owner;
    }

    /// @inheritdoc IAccessHub
    function setNewOperator(address _operator) external onlyOwner {
        require(operator != _operator, SAME_ADDRESS());
        /// @dev revoke old operator's role
        _revokeRole(PROTOCOL_OPERATOR, operator);
        /// @dev grant new operator the role
        _grantRole(PROTOCOL_OPERATOR, _operator);
        operator = _operator;
    }
}
