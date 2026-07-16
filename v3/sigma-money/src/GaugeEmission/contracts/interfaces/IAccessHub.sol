// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;
import {IVoteModule} from "contracts/interfaces/IVoteModule.sol";
import {IVoter} from "contracts/interfaces/IVoter.sol";
import {IGaugeEmission} from "contracts/interfaces/IGaugeEmission.sol";

interface IAccessHub {
    error SAME_ADDRESS();
    error NOT_OWNER(address);
    error MANUAL_EXECUTION_FAILURE(bytes);
    error KICK_FORBIDDEN(address);

    /// @dev Struct to hold initialization parameters
    struct InitParams {
        address owner;
        address operator;
        address voter;
        address gaugeEmission;
        address xShadow;
        address voteModule;
        address sigmaGaugeFactory;
        address veFunderGaugeFactory;
        address sigmaFeeDistributorFactory;
    }

    /// @notice protocol owner (highest authority, replaces timelock + treasury)
    function owner() external view returns (address owner);

    /// @notice protocol operator (daily operations)
    function operator() external view returns (address operator);

    /// @notice vote module
    function voteModule() external view returns (IVoteModule voteModule);

    /// @notice voter
    function voter() external view returns (IVoter voter);

    /// @notice gauge emission controller
    function gaugeEmission() external view returns (IGaugeEmission gaugeEmission);

    /// @notice sigma gauge factory address
    function sigmaGaugeFactory() external view returns (address _sigmaGaugeFactory);

    /// @notice veFunderGauge factory address
    function veFunderGaugeFactory() external view returns (address _veFunderGaugeFactory);

    /// @notice the feeDistributor factory address
    function sigmaFeeDistributorFactory()
        external
        view
        returns (address _sigmaFeeDistributorFactory);

    /// @notice initializing function for setting values in the AccessHub
    function initialize(InitParams calldata params) external;

    /// @notice starts the rebase in xShadow
    function startRebase(address _voteModule, address _voter) external;

    /** Voter governance */

    /// @notice sets a new governor address in the voter.sol contract
    function setNewGovernorInVoter(address _newGovernor) external;

    /// @notice creates a sigma gauge for the pool
    function createSigmaGauge(address _pool, uint256 _preallocationBps) external;

    /// @notice creates a veFunder gauge
    function createVeFunderGauge(address _receiver, uint256 _maxEmission, address _pool, uint256 _preallocationBps) external;

    /// @notice whitelists a token for governance, or removes if boolean is set to false
    function governanceWhitelist(
        address[] calldata _token,
        bool[] calldata _whitelisted
    ) external;

    /// @notice kills active gauges, removing them from earning further emissions, and claims their fees prior
    function killGauge(address[] calldata _pairs) external;

    /// @notice revives inactive/killed gauges
    function reviveGauge(address[] calldata _pairs) external;

    /// @notice sets the ratio of xShadow/Shadow awarded globally to LPs
    function setEmissionsRatioInVoter(uint256 _pct) external;

    /// @notice allows governance to retrieve emissions in the voter contract that will not be distributed due to the gauge being inactive
    /// @dev allows per-period retrieval for granularity
    function retrieveStuckEmissionsToGovernance(
        address _gauge,
        uint256 _period
    ) external;

    /// @notice Sets preallocation percentage for a SigmaGauge or VeFunderGauge
    function setGaugePreallocation(
        address _gauge,
        uint256 _preallocationBps
    ) external;

    /** xShadow Functions */

    /// @notice enables or disables the transfer whitelist in xShadow
    function transferWhitelistInXShadow(
        address[] calldata _who,
        bool[] calldata _whitelisted
    ) external;

    /// @notice enables or disables the governance in xShadow
    function toggleXShadowGovernance(bool enable) external;

    /// @notice allows redemption from the operator
    function operatorRedeemXShadow(uint256 _amount) external;

    /// @notice migrates the xShadow operator
    function migrateOperator(address _operator) external;

    /// @notice rescues any trapped tokens in xShadow
    function rescueTrappedTokens(
        address[] calldata _tokens,
        uint256[] calldata _amounts
    ) external;

    /// @notice enables or disables the transfer whitelist in xShadow for the to address
    function setExemptionToInXShadow(
        address[] calldata _who,
        bool[] calldata _whitelisted
    ) external;

    /** GaugeEmission Functions */

    /// @notice kicks off the GaugeEmission with initial parameters
    function kickoffGaugeEmission(
        address _shadow,
        uint256 _initialWeeklyEmissions,
        uint256 _initialMultiplier,
        uint256 _multiplierUpdatePeriod,
        address _xShadow
    ) external;

    /// @notice starts emissions in GaugeEmission
    function startGaugeEmissions(address _voter) external;

    /// @notice sets the emissions multiplier in GaugeEmission
    /// @param _multiplier the multiplier
    function setEmissionsMultiplier(uint256 _multiplier) external;

    /// @notice sets the gauge active in GaugeEmission
    function setGaugeActive(bool _isGaugeActive) external;

    /// @notice emergency withdraw tokens from GaugeEmission
    function emergencyWithdrawFromGaugeEmission(address _token, address _to, uint256 _amount) external;

    /** Reward List Functions */

    /// @notice function for adding or removing rewards for pools
    function augmentGaugeRewardsForPair(
        address[] calldata _pools,
        address[] calldata _rewards,
        bool[] calldata _addReward
    ) external;

    /// @notice function for removing rewards for feeDistributors
    function removeFeeDistributorRewards(
        address[] calldata _pools,
        address[] calldata _rewards
    ) external;

    /** VoteModule Functions */

    /// @notice sets addresses as exempt or removes their exemption
    function setCooldownExemption(
        address[] calldata _candidates,
        bool[] calldata _exempt
    ) external;

    /// @notice function to alter the duration that rebases are streamed in the voteModule
    function setNewRebaseStreamingDuration(uint256 _newDuration) external;

    /// @notice function to change the cooldown in the voteModule
    function setNewVoteModuleCooldown(uint256 _newCooldown) external;

    /// @notice allows resetting of inactive votes to prevent dead votes
    function kickInactive(address[] calldata _nonparticipants) external;

    /** Owner gated functions */

    /// @notice owner gated payload execution in case tokens get stuck or other unexpected behaviors
    function execute(address _target, bytes calldata _payload) external;

    /// @notice owner gated function to change the owner
    function setNewOwner(address _owner) external;

    /// @notice owner gated function to change the operator
    function setNewOperator(address _operator) external;

    /// @notice function for initializing the voter contract with its dependencies
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
    ) external;

    /// @notice reinitialize AccessHub with new params (owner gated)
    function reinit(InitParams calldata params) external;
}
