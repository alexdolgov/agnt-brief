// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;
import {IVoteModule} from "contracts/interfaces/IVoteModule.sol";
import {IVoter} from "contracts/interfaces/IVoter.sol";
import {ISigmaVesting} from "./ISigmaVesting.sol";

interface IAccessHub {
    error SAME_ADDRESS();
    error NOT_TIMELOCK(address);
    error MANUAL_EXECUTION_FAILURE(bytes);
    error KICK_FORBIDDEN(address);

    /// @dev Struct to hold initialization parameters
    struct InitParams {
        address timelock;
        address treasury;
        address voter;
        address minter;
        address launcherPlugin;
        address xShadow;
        address x33;
        address ramsesV3PoolFactory;
        address poolFactory;
        address clGaugeFactory;
        address gaugeFactory;
        address feeRecipientFactory;
        address feeDistributorFactory;
        address feeCollector;
        address voteModule;
        address sigmaVesting;
    }

    /// @notice protocol timelock address
    function timelock() external view returns (address timelock);

    /// @notice protocol treasury address
    function treasury() external view returns (address treasury);

    /// @notice vote module
    function voteModule() external view returns (IVoteModule voteModule);

    /// @notice voter
    function voter() external view returns (IVoter voter);

    /// @notice concentrated (v3) gauge factory
    function clGaugeFactory() external view returns (address _clGaugeFactory);

    /// @notice legacy gauge factory address
    function gaugeFactory() external view returns (address _gaugeFactory);

    /// @notice the feeDistributor factory address
    function feeDistributorFactory()
        external
        view
        returns (address _feeDistributorFactory);

    /// @notice initializing function for setting values in the AccessHub
    function initialize(InitParams calldata params) external;


    /** SigmaVesting Functions */

    function addVestingSchedule(
        address _beneficiary,
        address _tokenAddress,
        uint8 _category,
        ISigmaVesting.UnlockEntry[] calldata _entries
    ) external;

    function removeVestingSchedule(address _beneficiary, address _tokenAddress) external;

    function release() external;

    /** Voter governance */

    /// @notice sets a new governor address in the voter.sol contract
    function setNewGovernorInVoter(address _newGovernor) external;

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

    /** X33 Functions */

    /// @notice transfers the x33 operator address
    function transferOperatorInX33(address _newOperator) external;

    /** Minter Functions */

    /// @notice sets the inflation multiplier
    /// @param _multiplier the multiplier
    function setEmissionsMultiplierInMinter(uint256 _multiplier) external;

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

    /** LauncherPlugin specific functions */

    /// @notice allows migrating the parameters from one pool to the other
    /// @param _oldPool the current address of the pair
    /// @param _newPool the new pool's address
    function migratePoolInLauncherPlugin(
        address _oldPool,
        address _newPool
    ) external;

    /// @notice set launcher configurations for a pool
    /// @param _pool address of the pool
    /// @param _take the fee that goes to the designated recipient
    /// @param _recipient the address that receives the fees
    function setConfigsInLauncherPlugin(
        address _pool,
        uint256 _take,
        address _recipient
    ) external;

    /// @notice enables the pool for LauncherConfigs
    /// @param _pool address of the pool
    function enablePoolInLauncherPlugin(address _pool) external;

    /// @notice disables the pool for LauncherConfigs
    /// @dev clears mappings
    /// @param _pool address of the pool
    function disablePoolInLauncherPlugin(address _pool) external;

    /// @notice sets a new operator address
    /// @param _newOperator new operator address
    function setOperatorInLauncherPlugin(address _newOperator) external;

    /// @notice gives authority to a new contract/address
    /// @param _newAuthority the suggested new authority
    function grantAuthorityInLauncherPlugin(
        address _newAuthority,
        string calldata _label
    ) external;

    /// @notice governance ability to label each authority in the system with an arbitrary string
    function labelAuthorityInLauncherPlugin(
        address _authority,
        string calldata _label
    ) external;

    /// @notice removes authority from a contract/address
    /// @param _oldAuthority the to-be-removed authority
    function revokeAuthorityInLauncherPlugin(address _oldAuthority) external;


    /** FeeRecipientFactory functions */

    /// @notice set the fee % to be sent to the treasury
    /// @param _feeToTreasury the fee % to be sent to the treasury
    function setFeeToTreasuryInFeeRecipientFactory(
        uint256 _feeToTreasury
    ) external;

    /// @notice set a new treasury address
    /// @param _treasury the new address
    function setTreasuryInFeeRecipientFactory(address _treasury) external;


    /** Legacy Pool Factory functions */

    /// @notice sets the treasury address in the legacy factory
    function setTreasuryInLegacyFactory(address _treasury) external;

    /// @notice enables or disables if there is a feeSplit when no gauge for legacy pairs
    function setFeeSplitWhenNoGauge(bool status) external;

    /// @notice set the default feeSplit in the legacy factory
    function setLegacyFeeSplitGlobal(uint256 _feeSplit) external;

    /// @notice set the default swap fee for legacy pools
    function setLegacyFeeGlobal(uint256 _fee) external;

    /// @notice sets whether a pair can have skim() called or not for rebasing purposes
    function setSkimEnabledLegacy(address _pair, bool _status) external;

    /** VoteModule Functions*/

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

    /** Timelock gated functions */

    /// @notice timelock gated payload execution in case tokens get stuck or other unexpected behaviors
    function execute(address _target, bytes calldata _payload) external;

    /// @notice timelock gated function to change the timelock
    function setNewTimelock(address _timelock) external;

    /// @notice function for initializing the voter contract with its dependencies
    function initializeVoter(
        address _shadow,
        address _gauges,
        address _veFunderGaugeFactory,
        address _sigmaGaugeFactory,
        address _sigmaFeeDistributorFactory,
        address _minter,
        address _msig,
        address _xShadow,
        address _voteModule,
        uint256 _maxTotalSigmaGaugePreallocation
    ) external;
}
