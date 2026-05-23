// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {IAccessControlEnumerable} from "@openzeppelin/contracts/access/extensions/IAccessControlEnumerable.sol";

import {IVoteModule} from "contracts/interfaces/IVoteModule.sol";
import {IVoter} from "contracts/interfaces/IVoter.sol";

interface IAccessHub0 {
    /// @dev Struct to hold initialization parameters
    struct InitParams {
        address timelock;
        address treasury;
        address voter;
        address minter;
        address launcherPlugin;
        address xShadow;
        address x33;
        address shadowV3PoolFactory;
        address poolFactory;
        address clGaugeFactory;
        address gaugeFactory;
        address feeRecipientFactory;
        address feeDistributorFactory;
        address feeCollector;
        address voteModule;
        address x33Adapter;
    }

    /// @notice initializing function for setting values in the AccessHub
    function initialize(InitParams calldata params) external;

    /// @notice function for reinitializing values in the AccessHub
    function reinit(InitParams calldata params) external;

    /// @notice function for adding expansion packs to AccessHub
    function registerExpansionPack(address _newExpansionPack) external;

    /// @notice function for replacing an expansion pack on AccessHub
    function replaceExpansionPack(address _oldExpansionPack, address _newExpansionPack) external;

    /// @notice function for removing expansion packs from AccessHub
    function removeExpansionPack(address _expansionPack) external;

    /// @notice returns all expansion packs
    function getAllExpansionPacks() external view returns (address[] memory);

    /// @notice returns expansion pack length
    function getAllExpansionPackLength() external view returns (uint256);

    /// @notice returns expansion pack at index
    function getExpansionPack(uint256 index) external view returns (address);

    /// @notice sets the swap fees for multiple pairs
    function setSwapFees(address[] calldata _pools, uint24[] calldata _swapFees, bool[] calldata _concentrated)
        external;

    /// @notice sets the split of fees between LPs and voters
    function setFeeSplitCL(address[] calldata _pools, uint8[] calldata _feeProtocol) external;

    /// @notice sets the split of fees between LPs and voters for legacy pools
    function setFeeSplitLegacy(address[] calldata _pools, uint256[] calldata _feeSplits) external;

    /**
     * Voter governance
     */

    /// @notice sets a new governor address in the voter.sol contract
    function setNewGovernorInVoter(address _newGovernor) external;

    /// @notice sets a new governor address in the voter.sol contract
    function setNewGovernorInOldVoter(address _newGovernor) external;

    /// @notice whitelists a token for governance, or removes if boolean is set to false
    function governanceWhitelist(address[] calldata _token, bool[] calldata _whitelisted) external;

    /// @notice kills active gauges, removing them from earning further emissions, and claims their fees prior
    function killGauge(address[] calldata _pairs) external;

    /// @notice revives inactive/killed gauges
    function reviveGauge(address[] calldata _pairs) external;

    /// @notice sets a new NFP Manager
    function setNfpManager(address _nfpManager) external;

    /// @notice syncs NFP Managers for gauges
    function syncNfpManager(address[] calldata gauges) external;

    /// @notice sets the ratio of xShadow/Shadow awarded globally to LPs
    function setEmissionsRatioInVoter(uint256 _pct) external;

    /// @notice sets the ratio of xShadow/Shadow awarded globally to LPs
    function setEmissionsRatioInOldVoter(uint256 _pct) external;

    /// @notice allows governance to retrieve emissions in the voter contract that will not be distributed due to the gauge being inactive
    /// @dev allows per-period retrieval for granularity
    function retrieveStuckEmissionsToGovernance(address _gauge, uint256 _period) external;

    /// @notice allows governance to retrieve emissions in the voter contract that will not be distributed due to the gauge being inactive
    /// @dev allows per-period retrieval for granularity
    function retrieveStuckEmissionsToGovernanceFromOldVoter(address _gauge, uint256 _period) external;

    /// @notice allows governance to designate a gauge as the "main" one, to prevent governance spam and confusion
    function setMainGaugeForClPair(address tokenA, address tokenB, address gauge) external;
    function resetVotesOnBehalfOf(address _user) external;
    function pokeVotesOnBehalfOf(address _user) external;
    function votesOnBehalfOf(address _user, address[] calldata _pools, uint256[] calldata _weights) external;

    /**
     * Reward List Functions
     */

    /// @notice function for removing rewards for feeDistributors
    function removeFeeDistributorRewards(address[] calldata _pools, address[] calldata _rewards) external;

    /**
     * FeeCollector functions
     */

    /// @notice Sets the treasury address to a new value.
    /// @param newTreasury The new address to set as the treasury.
    function setTreasuryInFeeCollector(address newTreasury) external;

    /// @notice Sets the value of treasury fees to a new amount.
    /// @param _treasuryFees The new amount of treasury fees to be set.
    function setTreasuryFeesInFeeCollector(uint256 _treasuryFees) external;

    /**
     * FeeRecipientFactory functions
     */

    /// @notice set the fee % to be sent to the treasury
    /// @param _feeToTreasury the fee % to be sent to the treasury
    function setFeeToTreasuryInFeeRecipientFactory(uint256 _feeToTreasury) external;

    /// @notice set a new treasury address
    /// @param _treasury the new address
    function setTreasuryInFeeRecipientFactory(address _treasury) external;

    /**
     * CL Pool Factory functions
     */

    /// @notice enables a tickSpacing with the given initialFee amount
    /// @dev unlike UniswapV3, we map via the tickSpacing rather than the fee tier
    /// @dev tickSpacings may never be removed once enabled
    /// @param tickSpacing The spacing between ticks to be enforced for all pools created
    /// @param initialFee The initial fee amount, denominated in hundredths of a bip (i.e. 1e-6)
    function enableTickSpacing(int24 tickSpacing, uint24 initialFee) external;

    /// @notice sets the feeProtocol (feeSplit) for new CL pools and stored in the factory
    function setGlobalClFeeProtocol(uint8 _feeProtocolGlobal) external;

    /// @notice sets the address of the voter in the v3 factory for gauge fee setting
    function setVoterAddressInFactoryV3(address _voter) external;

    /// @notice sets the address of the feeCollector in the v3 factory for fee routing
    function setFeeCollectorInFactoryV3(address _newFeeCollector) external;

    /**
     * Legacy Pool Factory functions
     */

    /// @notice sets the treasury address in the legacy factory
    function setTreasuryInLegacyFactory(address _treasury) external;

    /// @notice enables or disables if there is a feeSplit when no gauge for legacy pairs
    function setFeeSplitWhenNoGauge(bool status) external;

    /// @notice set the default feeSplit in the legacy factory
    function setLegacyFeeSplitGlobal(uint256 _feeSplit) external;

    /// @notice set the fee recipient for legacy pairs
    function setLegacyFeeRecipient(address _pair, address _feeRecipient) external;

    /// @notice set the default swap fee for legacy pools
    function setLegacyFeeGlobal(uint256 _fee) external;

    /// @notice sets whether a pair can have skim() called or not for rebasing purposes
    function setSkimEnabledLegacy(address _pair, bool _status) external;

    /**
     * VoteModule Functions
     */

    /// @notice sets addresses as exempt or removes their exemption
    function setCooldownExemption(address[] calldata _candidates, bool[] calldata _exempt) external;

    /// @notice function to change the cooldown in the voteModule
    function setNewVoteModuleCooldown(uint256 _newCooldown) external;

    /// @notice allows resetting of inactive votes to prevent dead votes
    function kickInactive(address[] calldata _nonparticipants) external;

    /**
     * Timelock gated functions
     */

    /// @notice timelock gated payload execution in case tokens get stuck or other unexpected behaviors
    function execute(address _target, bytes calldata _payload) external;

    /// @notice timelock gated function to change the timelock
    function setNewTimelock(address _timelock) external;

    /// @notice function for initializing the voter contract with its dependencies
    function initializeVoter(IVoter.InitializationParams memory inputs) external;

    /// @notice backup distribute
    function backupDistribute() external;

    /// @notice backup distribute batch
    function backupDistributeBatch(uint256 startIndex, uint256 batchSize) external;

    /// @notice process required state changes before x33 updates
    function preX33UpdateHook(address user) external;

    /// @notice process required state changes after x33 updates
    function postX33UpdateHook() external;

    /// @notice allow distributing emissions via the accessHub
    function notifyEmissions(address[] calldata pools, uint256[] calldata emissions) external;

    /// @notice rescues token from Access Hub
    function rescue(address token) external;

    /// @notice rescues token from x33
    function rescueFromX33(address _token, uint256 _amount) external;

    /// @notice rescues token from x33 adapater
    function rescueFromX33Adapter(address _token) external;
}

interface IAccessHub1 {
    /// @notice protocol timelock address
    function timelock() external view returns (address timelock);

    /// @notice protocol treasury address
    function treasury() external view returns (address treasury);

    /// @notice central voter contract
    function voter() external view returns (address);

    /// @notice weekly emissions minter
    function minter() external view returns (address);

    /// @notice launchpad plugin for augmenting feeshare
    function launcherPlugin() external view returns (address);

    /// @notice xShadow contract
    function xShadow() external view returns (address);

    /// @notice X33 contract
    function x33() external view returns (address);

    /// @notice adapter for X33 contract
    function x33Adapter() external view returns (address);

    /// @notice CL V3 factory
    function shadowV3PoolFactory() external view returns (address);

    /// @notice legacy pair factory
    function poolFactory() external view returns (address);

    /// @notice legacy fees holder contract
    function feeRecipientFactory() external view returns (address);

    /// @notice fee collector contract
    function feeCollector() external view returns (address);

    /// @notice voteModule contract
    function voteModule() external view returns (address);

    /// @notice NFPManager contract
    function nfpManager() external view returns (address);

    /// @notice concentrated (v3) gauge factory
    function clGaugeFactory() external view returns (address _clGaugeFactory);

    /// @notice legacy gauge factory address
    function gaugeFactory() external view returns (address _gaugeFactory);

    /// @notice the feeDistributor factory address
    function feeDistributorFactory() external view returns (address _feeDistributorFactory);

    /**
     * xShadow Functions
     */

    /// @notice enables or disables the transfer whitelist in xShadow
    function transferWhitelistInXShadow(address[] calldata _who, bool[] calldata _whitelisted) external;

    /// @notice enables or disables the transfer TO whitelists in xShadow
    function transferToWhitelistInXShadow(address[] calldata _who, bool[] calldata _whitelisted) external;

    /// @notice enables or disables the governance in xShadow
    function toggleXShadowGovernance(bool enable) external;

    /// @notice allows redemption from the operator
    function operatorRedeemXShadow(uint256 _amount) external;

    /// @notice migrates the xShadow operator
    function migrateOperator(address _operator) external;

    /// @notice rescues any trapped tokens in xShadow
    function rescueTrappedTokens(address[] calldata _tokens, uint256[] calldata _amounts) external;

    /// @notice set dust threshold before a rebase can happen
    function setRebaseThreshold(uint256 _newThreshold) external;

    /**
     * LauncherPlugin specific functions
     */

    /// @notice allows migrating the parameters from one pool to the other
    /// @param _oldPool the current address of the pair
    /// @param _newPool the new pool's address
    function migratePoolInLauncherPlugin(address _oldPool, address _newPool) external;

    /// @notice set launcher configurations for a pool
    /// @param _pool address of the pool
    /// @param _take the fee that goes to the designated recipient
    /// @param _recipient the address that receives the fees
    function setConfigsInLauncherPlugin(address _pool, uint256 _take, address _recipient) external;

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
    function grantAuthorityInLauncherPlugin(address _newAuthority, string calldata _label) external;

    /// @notice governance ability to label each authority in the system with an arbitrary string
    function labelAuthorityInLauncherPlugin(address _authority, string calldata _label) external;

    /// @notice removes authority from a contract/address
    /// @param _oldAuthority the to-be-removed authority
    function revokeAuthorityInLauncherPlugin(address _oldAuthority) external;

    /**
     * X33 Functions
     */

    /// @notice transfers the x33 operator address
    function transferOperatorInX33(address _newOperator) external;

    /// @notice whitelists aggregators in x33
    function whitelistAggregatorInX33(address _newAggregator) external;

    /// @notice transfers the x33 Adapter operator address
    function transferOperatorInX33Adapter(address _newOperator) external;

    /**
     * Minter Functions
     */

    /// @notice sets the inflation multiplier
    /// @param _multiplier the multiplier
    function setEmissionsMultiplierInMinter(uint256 _multiplier) external;

    /// @notice sets the inflation multiplier
    /// @param _multiplier the multiplier
    function setEmissionsMultiplierInOldMinter(uint256 _multiplier) external;

    ///////////////////////////
    /// Unordered Functions ///
    ///////////////////////////

    // These functions are not ordered according to contracts since AccessHub is full

    /// @notice poke votes for multiple users
    function pokeVotesOnBehalfOf(address[] calldata _users) external;

    /// @notice rebase using x33 tokens within the x33 contract
    function rebaseX33() external;

    /// @notice flash operations that needs a helper contract
    function flashExpand(address _flashExpansion, bytes memory data) external;

    /// @notice whitelist new gauge and fee distributor
    function whitelistGaugeAndFeeDistributorOnXShadow(address gauge, address feeDistributor) external;

    /// @notice create gauge on new voter
    function migrateGauges(address[] calldata gauges) external;

    /// @notice upgrades voter implementation
    function upgradeVoterImplementation(address _newVoterImplementation, bytes memory data) external;

    /// @notice upgrade minter implementation
    function upgradeMinterImplementation(address _newMinterImplementation, bytes memory data) external;

    /// @notice Sets implementation for all GaugeV3s
    function upgradeGaugeV3Implementation(address _newGaugeV3Implementation) external;

    /// @notice create gauge for pool, seeds the pool if needed
    function createGaugeForPool(address _pool) external;

    /// @notice returns the amount of tokens needs to seed a cl pool
    function amountForSeed(address pool) external view returns (uint256 amount0, uint256 amount1);

    /// @notice for when distribute is called too late and the team needs to update period data
    function updatePeriodDataInClGauge(
        address gauge,
        uint256 period,
        uint160 periodEndSecondsPerLiquidityCumulativeX128
    ) external;
}

interface IAccessHubTemp {
    function registerExpansionPack2(address _newExpansionPack) external;

    function replaceExpansionPack2(address _oldExpansionPack, address _newExpansionPack) external;

    function removeExpansionPack2(address _expansionPack) external;

    function flashExpand2(address _flashExpansion, bytes memory data) external;

    /// @notice migrates fees to marble
    function migrateGaugeToMarble(address[] calldata gauges) external;
}

interface IAccessHub is IAccessControlEnumerable, IAccessHub0, IAccessHub1 {
    function DEFAULT_ADMIN_ROLE() external view returns (bytes32);

    function SWAP_FEE_SETTER() external view returns (bytes32);

    function PROTOCOL_OPERATOR() external view returns (bytes32);

    /// @notice central voter contract
    function oldVoter() external view returns (address);

    /// @notice weekly emissions minter
    function oldMinter() external view returns (address);

    /// @notice launchpad plugin for augmenting feeshare
    function oldLauncherPlugin() external view returns (address);

    /// @notice legacy fees holder contract
    function oldFeeRecipientFactory() external view returns (address);

    /// @notice fee collector contract
    function oldFeeCollector() external view returns (address);

    /// @notice concentrated (v3) gauge factory
    function oldClGaugeFactory() external view returns (address);

    /// @notice legacy gauge factory address
    function oldGaugeFactory() external view returns (address);

    /// @notice the feeDistributor factory address
    function oldFeeDistributorFactory() external view returns (address);

    /// @notice the voter proxy admin address
    function voterProxyAdmin() external view returns (address);

    /// @notice the minter proxy admin address
    function minterProxyAdmin() external view returns (address);
}
