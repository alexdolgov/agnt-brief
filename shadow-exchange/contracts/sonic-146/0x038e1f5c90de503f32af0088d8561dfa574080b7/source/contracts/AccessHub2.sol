// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {IAccessHub, IAccessHub0, IAccessHub1} from "./interfaces/IAccessHub.sol";
import {AccessHubStorage} from "contracts/libraries/AccessHubStorage.sol";
import {Errors} from "contracts/libraries/Errors.sol";
import {
    AccessControlEnumerableUpgradeable,
    Initializable
} from "@openzeppelin-contracts-upgradeable/access/extensions/AccessControlEnumerableUpgradeable.sol";
import {EnumerableSet} from "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";

import {ILauncherPlugin} from "./interfaces/ILauncherPlugin.sol";
import {IXShadow} from "./interfaces/IXShadow.sol";
import {IX33} from "./interfaces/IX33.sol";

import {IShadowV3Factory} from "./CL/core/interfaces/IShadowV3Factory.sol";
import {IShadowV3Pool} from "./CL/core/interfaces/IShadowV3Pool.sol";
import {IGaugeV3} from "./CL/gauge/interfaces/IGaugeV3.sol";
import {IFeeCollector} from "./CL/gauge/interfaces/IFeeCollector.sol";
import {INonfungiblePositionManager} from "./CL/periphery/interfaces/INonfungiblePositionManager.sol";

import {IPairFactory} from "./interfaces/IPairFactory.sol";
import {IFeeRecipientFactory} from "./interfaces/IFeeRecipientFactory.sol";

import {IVoter} from "./interfaces/IVoter.sol";
import {IMinter} from "./interfaces/IMinter.sol";
import {IMarbleMinter} from "./interfaces/IMarbleMinter.sol";
import {IVoteModule} from "./interfaces/IVoteModule.sol";
import {IGaugeV3} from "./CL/gauge/interfaces/IGaugeV3.sol";
import {IFeeDistributor} from "./interfaces/IFeeDistributor.sol";

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {IERC4626} from "@openzeppelin/contracts/interfaces/IERC4626.sol";
import {Pausable} from "@openzeppelin/contracts/utils/Pausable.sol";

contract AccessHub2 is IAccessHub {
    using EnumerableSet for EnumerableSet.AddressSet;

    modifier useExpansionPack() {
        _;
        bytes memory data;

        // copies calldata to data
        // not memory-safe
        assembly {
            data := mload(0x40) // reassign data to free space
            mstore(data, calldatasize()) // store data length
            calldatacopy(add(data, 0x20), 0, calldatasize()) // copy calldata to memory
            mstore(0x40, add(0x20, add(mload(0x40), calldatasize()))) // reassign free memory pointer
        }

        _useExpansionPack(data);
    }

    modifier viewExpansionPack() {
        _;
        bytes memory data;

        // copies calldata to data
        // not memory-safe
        assembly {
            data := mload(0x40) // reassign data to free space
            mstore(data, calldatasize()) // store data length
            calldatacopy(add(data, 0x20), 0, calldatasize()) // copy calldata to memory
            mstore(0x40, add(0x20, add(mload(0x40), calldatasize()))) // reassign free memory pointer
        }

        _viewExpansionPack(data);
    }

    function _useExpansionPack(bytes memory data) public returns (bytes memory) {
        EnumerableSet.AddressSet storage expansionPacks = AccessHubStorage.getStorage().expansionPacks;
        uint256 length = expansionPacks.length();

        for (uint256 i = 0; i < length; i++) {
            (bool success, bytes memory returnData) = expansionPacks.at(i).delegatecall(data);

            if (!success) {
                assembly ("memory-safe") {
                    returndatacopy(0, 0, returndatasize())
                    revert(0, returndatasize())
                }
            }

            if (
                returnData.length != 0x20
                    || abi.decode(returnData, (bytes32)) != AccessHubStorage.FUNCTION_NOT_FOUND_MAGIC_VALUE
            ) {
                assembly ("memory-safe") {
                    returndatacopy(0, 0, returndatasize())
                    return(0, returndatasize())
                }
            }
        }

        revert Errors.FUNCTION_NOT_FOUND();
    }

    function _viewExpansionPack(bytes memory data) internal view {
        (bool success, bytes memory returnData) =
            address(this).staticcall(abi.encodeCall(this._useExpansionPack, (data)));

        if (!success) {
            assembly ("memory-safe") {
                returndatacopy(0, 0, returndatasize())
                revert(0, returndatasize())
            }
        }

        if (
            returnData.length != 0x20
                || abi.decode(returnData, (bytes32)) != AccessHubStorage.FUNCTION_NOT_FOUND_MAGIC_VALUE
        ) {
            assembly ("memory-safe") {
                returndatacopy(0, 0, returndatasize())
                return(0, returndatasize())
            }
        }
    }

    function hasRole(bytes32 role, address account) external view viewExpansionPack returns (bool) {}

    function getRoleAdmin(bytes32 role) external view viewExpansionPack returns (bytes32) {}

    function grantRole(bytes32 role, address account) external useExpansionPack {}

    function revokeRole(bytes32 role, address account) external useExpansionPack {}

    function renounceRole(bytes32 role, address callerConfirmation) external useExpansionPack {}

    function getRoleMember(bytes32 role, uint256 index) external view viewExpansionPack returns (address) {}

    function getRoleMemberCount(bytes32 role) external view viewExpansionPack returns (uint256) {}

    function DEFAULT_ADMIN_ROLE() external view viewExpansionPack returns (bytes32) {}

    function SWAP_FEE_SETTER() external view viewExpansionPack returns (bytes32) {}

    function PROTOCOL_OPERATOR() external view viewExpansionPack returns (bytes32) {}

    /// @notice initializing function for setting values in the AccessHub
    function initialize(InitParams calldata params) external useExpansionPack {}

    /// @notice function for reinitializing values in the AccessHub
    function reinit(InitParams calldata params) external useExpansionPack {}

    /// @notice function for adding expansion packs to AccessHub
    function registerExpansionPack(address _newExpansionPack) external useExpansionPack {}

    /// @notice function for replacing an expansion pack on AccessHub
    function replaceExpansionPack(address _oldExpansionPack, address _newExpansionPack) external useExpansionPack {}

    /// @notice function for removing expansion packs from AccessHub
    function removeExpansionPack(address _expansionPack) external useExpansionPack {}

    /// @notice returns all expansion packs
    function getAllExpansionPacks() external view viewExpansionPack returns (address[] memory) {}

    /// @notice returns expansion pack length
    function getAllExpansionPackLength() external view viewExpansionPack returns (uint256) {}

    /// @notice returns expansion pack at index
    function getExpansionPack(uint256 index) external view viewExpansionPack returns (address) {}

    /// @notice sets the swap fees for multiple pairs
    function setSwapFees(address[] calldata _pools, uint24[] calldata _swapFees, bool[] calldata _concentrated)
        external
        useExpansionPack
    {}

    /// @notice sets the split of fees between LPs and voters
    function setFeeSplitCL(address[] calldata _pools, uint8[] calldata _feeProtocol) external useExpansionPack {}

    /// @notice sets the split of fees between LPs and voters for legacy pools
    function setFeeSplitLegacy(address[] calldata _pools, uint256[] calldata _feeSplits) external useExpansionPack {}

    /**
     * Voter governance
     */

    /// @notice sets a new governor address in the voter.sol contract
    function setNewGovernorInVoter(address _newGovernor) external useExpansionPack {}

    /// @notice sets a new governor address in the voter.sol contract
    function setNewGovernorInOldVoter(address _newGovernor) external useExpansionPack {}

    /// @notice whitelists a token for governance, or removes if boolean is set to false
    function governanceWhitelist(address[] calldata _token, bool[] calldata _whitelisted) external useExpansionPack {}

    /// @notice kills active gauges, removing them from earning further emissions, and claims their fees prior
    function killGauge(address[] calldata _pairs) external useExpansionPack {}

    /// @notice revives inactive/killed gauges
    function reviveGauge(address[] calldata _pairs) external useExpansionPack {}

    /// @notice sets a new NFP Manager
    function setNfpManager(address _nfpManager) external useExpansionPack {}

    /// @notice syncs NFP Managers for gauges
    function syncNfpManager(address[] calldata gauges) external useExpansionPack {}

    /// @notice sets the ratio of xShadow/Shadow awarded globally to LPs
    function setEmissionsRatioInVoter(uint256 _pct) external useExpansionPack {}

    /// @notice sets the ratio of xShadow/Shadow awarded globally to LPs
    function setEmissionsRatioInOldVoter(uint256 _pct) external useExpansionPack {}

    /// @notice allows governance to retrieve emissions in the voter contract that will not be distributed due to the gauge being inactive
    /// @dev allows per-period retrieval for granularity
    function retrieveStuckEmissionsToGovernance(address _gauge, uint256 _period) external useExpansionPack {}

    /// @notice allows governance to retrieve emissions in the voter contract that will not be distributed due to the gauge being inactive
    /// @dev allows per-period retrieval for granularity
    function retrieveStuckEmissionsToGovernanceFromOldVoter(address _gauge, uint256 _period)
        external
        useExpansionPack
    {}

    /// @notice allows governance to designate a gauge as the "main" one, to prevent governance spam and confusion
    function setMainGaugeForClPair(address tokenA, address tokenB, address gauge) external useExpansionPack {}
    function createGaugeForPool(address _pool) external useExpansionPack {}
    function resetVotesOnBehalfOf(address _user) external useExpansionPack {}
    function pokeVotesOnBehalfOf(address _user) external useExpansionPack {}
    function votesOnBehalfOf(address _user, address[] calldata _pools, uint256[] calldata _weights)
        external
        useExpansionPack
    {}

    /**
     * Reward List Functions
     */

    /// @notice function for removing rewards for feeDistributors
    function removeFeeDistributorRewards(address[] calldata _pools, address[] calldata _rewards)
        external
        useExpansionPack
    {}

    /**
     * FeeCollector functions
     */

    /// @notice Sets the treasury address to a new value.
    /// @param newTreasury The new address to set as the treasury.
    function setTreasuryInFeeCollector(address newTreasury) external useExpansionPack {}

    /// @notice Sets the value of treasury fees to a new amount.
    /// @param _treasuryFees The new amount of treasury fees to be set.
    function setTreasuryFeesInFeeCollector(uint256 _treasuryFees) external useExpansionPack {}

    /**
     * FeeRecipientFactory functions
     */

    /// @notice set the fee % to be sent to the treasury
    /// @param _feeToTreasury the fee % to be sent to the treasury
    function setFeeToTreasuryInFeeRecipientFactory(uint256 _feeToTreasury) external useExpansionPack {}

    /// @notice set a new treasury address
    /// @param _treasury the new address
    function setTreasuryInFeeRecipientFactory(address _treasury) external useExpansionPack {}

    /**
     * CL Pool Factory functions
     */

    /// @notice enables a tickSpacing with the given initialFee amount
    /// @dev unlike UniswapV3, we map via the tickSpacing rather than the fee tier
    /// @dev tickSpacings may never be removed once enabled
    /// @param tickSpacing The spacing between ticks to be enforced for all pools created
    /// @param initialFee The initial fee amount, denominated in hundredths of a bip (i.e. 1e-6)
    function enableTickSpacing(int24 tickSpacing, uint24 initialFee) external useExpansionPack {}

    /// @notice sets the feeProtocol (feeSplit) for new CL pools and stored in the factory
    function setGlobalClFeeProtocol(uint8 _feeProtocolGlobal) external useExpansionPack {}

    /// @notice sets the address of the voter in the v3 factory for gauge fee setting
    function setVoterAddressInFactoryV3(address _voter) external useExpansionPack {}

    /// @notice sets the address of the feeCollector in the v3 factory for fee routing
    function setFeeCollectorInFactoryV3(address _newFeeCollector) external useExpansionPack {}

    /**
     * Legacy Pool Factory functions
     */

    /// @notice sets the treasury address in the legacy factory
    function setTreasuryInLegacyFactory(address _treasury) external useExpansionPack {}

    /// @notice enables or disables if there is a feeSplit when no gauge for legacy pairs
    function setFeeSplitWhenNoGauge(bool status) external useExpansionPack {}

    /// @notice set the default feeSplit in the legacy factory
    function setLegacyFeeSplitGlobal(uint256 _feeSplit) external useExpansionPack {}

    /// @notice set the fee recipient for legacy pairs
    function setLegacyFeeRecipient(address _pair, address _feeRecipient) external useExpansionPack {}

    /// @notice set the default swap fee for legacy pools
    function setLegacyFeeGlobal(uint256 _fee) external useExpansionPack {}

    /// @notice sets whether a pair can have skim() called or not for rebasing purposes
    function setSkimEnabledLegacy(address _pair, bool _status) external useExpansionPack {}

    /**
     * VoteModule Functions
     */

    /// @notice sets addresses as exempt or removes their exemption
    function setCooldownExemption(address[] calldata _candidates, bool[] calldata _exempt) external useExpansionPack {}

    /// @notice function to change the cooldown in the voteModule
    function setNewVoteModuleCooldown(uint256 _newCooldown) external useExpansionPack {}

    /// @notice allows resetting of inactive votes to prevent dead votes
    function kickInactive(address[] calldata _nonparticipants) external useExpansionPack {}

    /**
     * Timelock gated functions
     */

    /// @notice timelock gated payload execution in case tokens get stuck or other unexpected behaviors
    function execute(address _target, bytes calldata _payload) external useExpansionPack {}

    /// @notice timelock gated function to change the timelock
    function setNewTimelock(address _timelock) external useExpansionPack {}

    /// @notice function for initializing the voter contract with its dependencies
    function initializeVoter(IVoter.InitializationParams memory inputs) external useExpansionPack {}

    function backupDistribute() external useExpansionPack {}
    function backupDistributeBatch(uint256 startIndex, uint256 batchSize) external useExpansionPack {}

    /// @notice protocol timelock address
    function timelock() external view viewExpansionPack returns (address) {}

    /// @notice protocol treasury address
    function treasury() external view viewExpansionPack returns (address) {}

    /// @notice central voter contract
    function voter() external view viewExpansionPack returns (address) {}

    /// @notice central voter contract
    function oldVoter() external view viewExpansionPack returns (address) {}

    /// @notice weekly emissions minter
    function minter() external view viewExpansionPack returns (address) {}

    /// @notice weekly emissions minter
    function oldMinter() external view viewExpansionPack returns (address) {}

    /// @notice launchpad plugin for augmenting feeshare
    function launcherPlugin() external view viewExpansionPack returns (address) {}

    /// @notice launchpad plugin for augmenting feeshare
    function oldLauncherPlugin() external view viewExpansionPack returns (address) {}

    /// @notice xShadow contract
    function xShadow() external view viewExpansionPack returns (address) {}

    /// @notice X33 contract
    function x33() external view viewExpansionPack returns (address) {}

    /// @notice adapter for X33 contract
    function x33Adapter() external view viewExpansionPack returns (address) {}

    /// @notice CL V3 factory
    function shadowV3PoolFactory() external view viewExpansionPack returns (address) {}

    /// @notice legacy pair factory
    function poolFactory() external view viewExpansionPack returns (address) {}

    /// @notice legacy fees holder contract
    function feeRecipientFactory() external view viewExpansionPack returns (address) {}

    /// @notice legacy fees holder contract
    function oldFeeRecipientFactory() external view viewExpansionPack returns (address) {}

    /// @notice fee collector contract
    function feeCollector() external view viewExpansionPack returns (address) {}

    /// @notice fee collector contract
    function oldFeeCollector() external view viewExpansionPack returns (address) {}

    /// @notice voteModule contract
    function voteModule() external view viewExpansionPack returns (address) {}

    /// @notice NFPManager contract
    function nfpManager() external view viewExpansionPack returns (address) {}

    /// @notice concentrated (v3) gauge factory
    function clGaugeFactory() external view viewExpansionPack returns (address _clGaugeFactory) {}

    /// @notice concentrated (v3) gauge factory
    function oldClGaugeFactory() external view viewExpansionPack returns (address _clGaugeFactory) {}

    /// @notice legacy gauge factory address
    function gaugeFactory() external view viewExpansionPack returns (address _gaugeFactory) {}

    /// @notice legacy gauge factory address
    function oldGaugeFactory() external view viewExpansionPack returns (address _gaugeFactory) {}

    /// @notice the feeDistributor factory address
    function feeDistributorFactory() external view viewExpansionPack returns (address _feeDistributorFactory) {}

    /// @notice the feeDistributor factory address
    function oldFeeDistributorFactory() external view viewExpansionPack returns (address _feeDistributorFactory) {}

    /**
     * xShadow Functions
     */

    /// @notice enables or disables the transfer whitelist in xShadow
    function transferWhitelistInXShadow(address[] calldata _who, bool[] calldata _whitelisted)
        external
        useExpansionPack
    {}

    /// @notice enables or disables the transfer TO whitelists in xShadow
    function transferToWhitelistInXShadow(address[] calldata _who, bool[] calldata _whitelisted)
        external
        useExpansionPack
    {}

    /// @notice enables or disables the governance in xShadow
    function toggleXShadowGovernance(bool enable) external useExpansionPack {}

    /// @notice allows redemption from the operator
    function operatorRedeemXShadow(uint256 _amount) external useExpansionPack {}

    /// @notice migrates the xShadow operator
    function migrateOperator(address _operator) external useExpansionPack {}

    /// @notice rescues any trapped tokens in xShadow
    function rescueTrappedTokens(address[] calldata _tokens, uint256[] calldata _amounts) external useExpansionPack {}

    /// @notice set dust threshold before a rebase can happen
    function setRebaseThreshold(uint256 _newThreshold) external useExpansionPack {}

    /**
     * LauncherPlugin specific functions
     */

    /// @notice allows migrating the parameters from one pool to the other
    /// @param _oldPool the current address of the pair
    /// @param _newPool the new pool's address
    function migratePoolInLauncherPlugin(address _oldPool, address _newPool) external useExpansionPack {}

    /// @notice set launcher configurations for a pool
    /// @param _pool address of the pool
    /// @param _take the fee that goes to the designated recipient
    /// @param _recipient the address that receives the fees
    function setConfigsInLauncherPlugin(address _pool, uint256 _take, address _recipient) external useExpansionPack {}

    /// @notice enables the pool for LauncherConfigs
    /// @param _pool address of the pool
    function enablePoolInLauncherPlugin(address _pool) external useExpansionPack {}

    /// @notice disables the pool for LauncherConfigs
    /// @dev clears mappings
    /// @param _pool address of the pool
    function disablePoolInLauncherPlugin(address _pool) external useExpansionPack {}

    /// @notice sets a new operator address
    /// @param _newOperator new operator address
    function setOperatorInLauncherPlugin(address _newOperator) external useExpansionPack {}

    /// @notice gives authority to a new contract/address
    /// @param _newAuthority the suggested new authority
    function grantAuthorityInLauncherPlugin(address _newAuthority, string calldata _label) external useExpansionPack {}

    /// @notice governance ability to label each authority in the system with an arbitrary string
    function labelAuthorityInLauncherPlugin(address _authority, string calldata _label) external useExpansionPack {}

    /// @notice removes authority from a contract/address
    /// @param _oldAuthority the to-be-removed authority
    function revokeAuthorityInLauncherPlugin(address _oldAuthority) external useExpansionPack {}

    /**
     * X33 Functions
     */

    /// @notice transfers the x33 operator address
    function transferOperatorInX33(address _newOperator) external useExpansionPack {}

    /// @notice whitelists aggregators in x33
    function whitelistAggregatorInX33(address _newAggregator) external useExpansionPack {}

    /**
     * Minter Functions
     */

    /// @notice sets the inflation multiplier
    /// @param _multiplier the multiplier
    function setEmissionsMultiplierInMinter(uint256 _multiplier) external useExpansionPack {}

    /// @notice sets the inflation multiplier
    /// @param _multiplier the multiplier
    function setEmissionsMultiplierInOldMinter(uint256 _multiplier) external useExpansionPack {}

    ///////////////////////////
    /// Unordered Functions ///
    ///////////////////////////

    // These functions are not ordered according to contracts since AccessHub is full

    /// @notice poke votes for multiple users
    function pokeVotesOnBehalfOf(address[] calldata _users) external useExpansionPack {}

    /// @notice rebase using x33 tokens within the x33 contract
    function rebaseX33() external useExpansionPack {}

    /// @notice whitelist new gauge and fee distributor
    function whitelistGaugeAndFeeDistributorOnXShadow(address gauge, address feeDistributor)
        external
        useExpansionPack
    {}

    /// @notice create gauge on new voter
    function migrateGauges(address[] calldata gauges) external useExpansionPack {}

    /// @notice process required state changes before x33 updates
    function preX33UpdateHook(address user) external useExpansionPack {}

    /// @notice process required state changes after x33 updates
    function postX33UpdateHook() external useExpansionPack {}

    /// @notice flash operations that needs a helper contract
    function flashExpand(address _flashExpansion, bytes memory data) external useExpansionPack {}

    fallback(bytes calldata data) external returns (bytes memory) {
        return _useExpansionPack(data);
    }
}
