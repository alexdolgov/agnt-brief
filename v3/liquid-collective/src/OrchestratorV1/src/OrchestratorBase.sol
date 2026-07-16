// SPDX-License-Identifier: Proprietary
pragma solidity 0.8.29;

import { LibUnstructuredStorage } from "src/libraries/LibUnstructuredStorage.sol";

import { IOrchestrator } from "src/interfaces/IOrchestrator.sol";
import { IConfigManager } from "src/interfaces/IConfigManager.sol";

import { BatchSweep } from "src/batchContracts/BatchSweep.sol";
import { BatchPectra } from "src/batchContracts/BatchPectra.sol";
import { BatchDeposit } from "src/batchContracts/BatchDeposit.sol";
import { BatchSetTVS } from "src/batchContracts/BatchSetTVS.sol";
import { BatchTVSTransfer } from "src/batchContracts/BatchTVSTransfer.sol";
import { ConfigManagerAddress } from "src/state/orchestratorUpgradeable/ConfigManagerAddress.sol";
import { TransferToListEnabled } from "src/state/orchestratorUpgradeable/TransferToListEnabled.sol";

import { Address } from "openzeppelin-contracts/contracts/utils/Address.sol";

import { DepositContractAddress } from "src/batchContracts/state/DepositContractAddress.sol";
import { BeneficiaryAddress } from "src/state/orchestratorUpgradeable/BeneficiaryAddress.sol";
import { TVSBeaconAddress } from "src/state/orchestratorUpgradeable/TVSBeaconAddress.sol";
import { AccessControlUpgradeable } from
    "lib/openzeppelin-contracts-upgradeable/contracts/access/AccessControlUpgradeable.sol";
import { ReentrancyGuardTransientUpgradeable } from
    "lib/openzeppelin-contracts-upgradeable/contracts/utils/ReentrancyGuardTransientUpgradeable.sol";
import { UpgradeableBeacon } from "lib/openzeppelin-contracts/contracts/proxy/beacon/UpgradeableBeacon.sol";

import { MinSweepAmount } from "src/components/state/configManager/MinSweepAmount.sol";
import { AllocationConfig } from "src/components/state/configManager/AllocationConfig.sol";

/// @title Orchestrator (v1)
/// @author Alluvial Finance Inc.
/// @notice Orchestrator base implementation.
abstract contract OrchestratorBase is
    BatchSweep,
    BatchPectra,
    BatchDeposit,
    BatchTVSTransfer,
    BatchSetTVS,
    AccessControlUpgradeable,
    ReentrancyGuardTransientUpgradeable,
    IOrchestrator,
    IConfigManager
{
    using Address for address;
    using Address for address payable;

    /// @notice Storage slot of the pause status value
    bytes32 private constant _PAUSE_SLOT = bytes32(uint256(keccak256("orchestrator.state.pause")) - 1);

    ///--------------------------------------------------------------------///
    ///                           ROLES START                              ///
    ///--------------------------------------------------------------------///

    /// @dev This role would allow the address to pause the contract
    bytes32 public constant PAUSER_ROLE = keccak256("PAUSER_ROLE");

    /// @dev This role would allow the address to deposit ETH into the contract
    bytes32 public constant DEPOSITOR_ROLE = keccak256("DEPOSITOR_ROLE");

    /// @dev This role would allow the address to update the config manager
    bytes32 public constant CONFIG_MANAGER_ROLE = keccak256("CONFIG_MANAGER_ROLE");

    /// @dev This role would allow the address to withdraw ETH from the contract
    bytes32 public constant ETH_WITHDRAWER_ROLE = keccak256("ETH_WITHDRAWER_ROLE");

    /// @dev This role would allow calling the following functions:
    /// - depositValidatorSetToConsensusLayer
    bytes32 public constant DEPOSIT_CONSENSUS_LAYER_ROLE = keccak256("DEPOSIT_CONSENSUS_LAYER_ROLE");

    /// @dev This role would allow the address to set the transfer to list enabled state
    bytes32 public constant TRANSFER_TO_LIST_ROLE = keccak256("TRANSFER_TO_LIST_ROLE");

    /// ----------- ROLES RELATED TO VALIDATOR SETS OPERATIONS ----------- ///

    ///  @dev This role would allow the address to set the beneficiary of a validator set
    bytes32 public constant BENEFICIARY_ROLE = keccak256("BENEFICIARY_ROLE");

    /// @dev This role would allow the address to create validator sets
    bytes32 public constant VALIDATOR_SET_CREATOR_ROLE = keccak256("VALIDATOR_SET_CREATOR_ROLE");

    /// @dev This role would allow the address to transfer validator sets to other addresses
    bytes32 public constant VALIDATOR_SET_TRANSFER_ROLE = keccak256("VALIDATOR_SET_TRANSFER_ROLE");

    /// @dev This role would allow the address to receive the transferred validator sets
    bytes32 public constant VALIDATOR_SET_RECIPIENT_ROLE = keccak256("VALIDATOR_SET_RECIPIENT_ROLE");

    /// @dev This role would allow the address to:
    /// - Do partial or full withdrawals on-chain
    /// - Signal the off-chain process to trigger validator exits
    bytes32 public constant VALIDATOR_MANAGER_ROLE = keccak256("VALIDATOR_MANAGER_ROLE");

    ///--------------------------------------------------------------------///
    ///                             ROLES END                              ///
    ///--------------------------------------------------------------------///

    /// @dev Ensures the system is not paused before executing the function
    modifier isNotPaused() {
        if (LibUnstructuredStorage.getStorageBool(_PAUSE_SLOT)) {
            revert OrchestratorIsPaused();
        }
        _;
    }

    /// @dev Constructor to set the deposit contract address
    /// @param beaconDepositContract The address of the beacon deposit contract
    constructor(address beaconDepositContract) BatchDeposit(beaconDepositContract) {
        _disableInitializers();
    }

    /// @dev Save the base config
    /// @param _beneficiaryAddress The beneficiary address
    /// @param _configManagerAddress The config manager address
    /// @param _depositContractAddress The deposit contract address
    function _saveBaseConfig(
        address _beneficiaryAddress,
        address _configManagerAddress,
        address _depositContractAddress
    )
        internal
    {
        _setBeneficiary(_beneficiaryAddress);
        ConfigManagerAddress.set(_configManagerAddress);
        DepositContractAddress.set(_depositContractAddress);
    }

    /// @notice Pauses the contract
    function pause() external isNotPaused onlyRole(PAUSER_ROLE) {
        LibUnstructuredStorage.setStorageBool(_PAUSE_SLOT, true);
        emit Paused();
    }

    /// @notice Unpauses the contract
    function unpause() external onlyRole(DEFAULT_ADMIN_ROLE) {
        if (!LibUnstructuredStorage.getStorageBool(_PAUSE_SLOT)) {
            revert OrchestratorIsNotPaused();
        }
        LibUnstructuredStorage.setStorageBool(_PAUSE_SLOT, false);
        emit Unpaused();
    }

    /// @inheritdoc IOrchestrator
    function deposit() external payable onlyRole(DEPOSITOR_ROLE) isNotPaused {
        emit ETHDeposited(msg.sender, msg.value);
    }

    /// @inheritdoc IOrchestrator
    function requestExits(uint256 amount) external onlyRole(VALIDATOR_MANAGER_ROLE) isNotPaused {
        emit ExitsRequested(msg.sender, amount);
    }

    /// @inheritdoc IOrchestrator
    function withdrawETH(uint256 amount, address destination) external onlyRole(ETH_WITHDRAWER_ROLE) isNotPaused {
        if (destination == address(0)) {
            _withdrawETH(msg.sender, amount);
        } else {
            _withdrawETH(destination, amount);
        }
    }

    /// @notice Withdraw ETH from the contract
    /// @param _destination The address to send the ETH to
    /// @param _amount The amount of ETH to withdraw
    function _withdrawETH(address _destination, uint256 _amount) internal isNotPaused {
        payable(_destination).sendValue(_amount);
        emit ETHWithdrawn(msg.sender, _destination, _amount);
    }

    /// @inheritdoc IOrchestrator
    function setBeneficiary(address beneficiary) external onlyRole(BENEFICIARY_ROLE) isNotPaused {
        _setBeneficiary(beneficiary);
    }

    /// @inheritdoc IOrchestrator
    function setBeneficiaryAndSyncToTVSs(
        address beneficiary,
        address[] calldata validatorSets
    )
        external
        onlyRole(BENEFICIARY_ROLE)
        isNotPaused
    {
        _setBeneficiary(beneficiary);
        _setTVSBeneficiary(validatorSets, beneficiary);
    }

    /// @notice Sets the config manager address on the Orchestrator
    /// @param configManagerAddress The new config manager address
    function setConfigManagerAddress(address configManagerAddress) external onlyRole(DEFAULT_ADMIN_ROLE) isNotPaused {
        address oldConfigManagerAddress = ConfigManagerAddress.get();
        ConfigManagerAddress.set(configManagerAddress);
        emit ConfigManagerAddressUpdated(oldConfigManagerAddress, configManagerAddress);
    }

    /// @inheritdoc IOrchestrator
    function setTVSBeaconImplementation(address tvsBeaconImplementation) external onlyRole(DEFAULT_ADMIN_ROLE) {
        UpgradeableBeacon(TVSBeaconAddress.get()).upgradeTo(tvsBeaconImplementation);
        emit TVSBeaconUpdated(tvsBeaconImplementation);
    }

    /// @inheritdoc IOrchestrator
    function getTVSBeacon() external view returns (address) {
        return TVSBeaconAddress.get();
    }

    /// @inheritdoc IOrchestrator
    function getBeneficiary() external view returns (address) {
        return BeneficiaryAddress.get();
    }

    /// @inheritdoc IOrchestrator
    function getConfigManagerAddress() external view returns (address) {
        return ConfigManagerAddress.get();
    }

    ///--------------------------------------------------------------------///
    ///                          BATCH CONTRACTS                           ///
    ///--------------------------------------------------------------------///

    /// @inheritdoc BatchSweep
    function _sweepToBeneficiary(address[] calldata from, uint256[] calldata amount) internal override isNotPaused {
        super._sweepToBeneficiary(from, amount);
    }

    /// @inheritdoc BatchDeposit
    function _depositValidatorSetToConsensusLayer(
        bytes32 _depositRoot,
        ValidatorSet[] calldata _validatorSets
    )
        internal
        override
        onlyRole(DEPOSIT_CONSENSUS_LAYER_ROLE)
        isNotPaused
    {
        super._depositValidatorSetToConsensusLayer(_depositRoot, _validatorSets);
    }

    /// @inheritdoc BatchSetTVS
    function _setTVSBeneficiary(
        address[] calldata _validatorSets,
        address _beneficiary
    )
        internal
        override
        onlyRole(BENEFICIARY_ROLE)
        isNotPaused
    {
        super._setTVSBeneficiary(_validatorSets, _beneficiary);
    }

    /// @inheritdoc BatchSetTVS
    function _setTVSBeacon(
        address[] calldata _validatorSets,
        address _beacon
    )
        internal
        override
        onlyRole(DEFAULT_ADMIN_ROLE)
        isNotPaused
    {
        super._setTVSBeacon(_validatorSets, _beacon);
    }

    /// @inheritdoc BatchPectra
    function _withdrawFromValidatorSets(
        ValidatorWithdrawSelection[] calldata _validatorWithdrawSelections,
        address _excessFeeRecipient,
        uint256 _maxFeePerRequest
    )
        internal
        override
        onlyRole(VALIDATOR_MANAGER_ROLE)
        isNotPaused
    {
        super._withdrawFromValidatorSets(_validatorWithdrawSelections, _excessFeeRecipient, _maxFeePerRequest);
    }

    /// @inheritdoc IOrchestrator
    function sweepAndTransferTVSs(
        address[] calldata validatorSets,
        address newBeneficiary,
        address newOwner,
        bool requestValidatorExists
    )
        external
        onlyRole(VALIDATOR_SET_TRANSFER_ROLE)
        isNotPaused
    {
        _helperTransferTVSs(validatorSets, newBeneficiary, newOwner, true, requestValidatorExists);
    }

    /// @inheritdoc BatchTVSTransfer
    function transferTVSs(
        address[] calldata validatorSets,
        address newBeneficiary,
        address newOwner,
        bool requestValidatorExits
    )
        external
        override
        onlyRole(VALIDATOR_SET_TRANSFER_ROLE)
        isNotPaused
    {
        _helperTransferTVSs(validatorSets, newBeneficiary, newOwner, false, requestValidatorExits);
    }

    /// @dev Helper function to transfer validator sets
    /// @param validatorSets The validator sets to transfer
    /// @param newBeneficiary The new beneficiary of the validator sets
    /// @param newOwner The new owner of the validator sets
    /// @param sweep Whether to sweep the validator sets
    /// @param requestValidatorExits Whether to request validator exits
    function _helperTransferTVSs(
        address[] calldata validatorSets,
        address newBeneficiary,
        address newOwner,
        bool sweep,
        bool requestValidatorExits
    )
        internal
    {
        if (TransferToListEnabled.get()) {
            if (!hasRole(VALIDATOR_SET_RECIPIENT_ROLE, newOwner)) {
                revert NoTransferToRole();
            }
        }
        _transferTVSs(validatorSets, newBeneficiary, newOwner, sweep, requestValidatorExits);
    }

    /// @inheritdoc IOrchestrator
    function changeOwner(address to) external isNotPaused onlyRole(DEFAULT_ADMIN_ROLE) {
        _changeOwner(to);
    }

    /// @dev Changes the owner of the Orchestrator
    /// @param _to The new owner of the Orchestrator
    function _changeOwner(address _to) internal {
        if (_to == address(0)) revert InvalidZeroAddress();
        _revokeRoles(msg.sender, _getOwnerRoles());
        _configureOwner(_to);
        emit OwnerChanged(msg.sender, _to);
    }

    /// @inheritdoc IOrchestrator
    function setTransferToListEnabled(bool enabled) external isNotPaused onlyRole(TRANSFER_TO_LIST_ROLE) {
        _setTransferToListEnabled(enabled);
    }

    /// @dev Sets the transfer to list enabled state
    /// @param enabled Whether to enable or disable the transfer to list
    function _setTransferToListEnabled(bool enabled) internal {
        TransferToListEnabled.set(enabled);
        emit TransferToListEnabledUpdated(enabled);
    }

    /// @inheritdoc IOrchestrator
    function isTransferToListEnabled() external view returns (bool) {
        return TransferToListEnabled.get();
    }

    /// @dev Get the roles of the owner
    /// @return roles The roles of the owner
    function _getOwnerRoles() internal view returns (bytes32[] memory roles) {
        roles = new bytes32[](12);
        roles[0] = DEFAULT_ADMIN_ROLE;
        roles[1] = DEPOSIT_CONSENSUS_LAYER_ROLE;
        roles[2] = DEPOSITOR_ROLE;
        roles[3] = VALIDATOR_MANAGER_ROLE;
        roles[4] = BENEFICIARY_ROLE;
        roles[5] = ETH_WITHDRAWER_ROLE;
        roles[6] = CONFIG_MANAGER_ROLE;
        roles[7] = VALIDATOR_SET_CREATOR_ROLE;
        roles[8] = VALIDATOR_SET_TRANSFER_ROLE;
        roles[9] = VALIDATOR_SET_RECIPIENT_ROLE;
        roles[10] = PAUSER_ROLE;
        roles[11] = TRANSFER_TO_LIST_ROLE;
    }

    ///--------------------------------------------------------------------///
    ///                          CONFIG MANAGER                            ///
    ///--------------------------------------------------------------------///

    /// @notice Retrieve the current minimum sweep amount of the SMS
    /// @return The current minimum sweep amount - a multiple of 32 ETH
    function getMinSweepAmount() external view returns (uint256) {
        return MinSweepAmount.get();
    }

    /// @notice Get the current allocation configuration of the SMS
    /// @return allocationConfig The allocation configuration
    function getAllocationConfig() external view returns (StoredAllocationConfig memory allocationConfig) {
        allocationConfig.binWeightings = AllocationConfig.getBinWeightings();
        IConfigManager.Bin[] storage storedBins = AllocationConfig.getBins();

        // Create memory copy of bins
        allocationConfig.bins = new IConfigManager.Bin[](storedBins.length);
        for (uint256 i = 0; i < storedBins.length; i++) {
            allocationConfig.bins[i] = storedBins[i];
        }
        return allocationConfig;
    }

    /// @inheritdoc IConfigManager
    function setMinSweepAmount(uint256) external onlyRole(CONFIG_MANAGER_ROLE) isNotPaused {
        ConfigManagerAddress.get().functionDelegateCall(msg.data);
    }

    /// @inheritdoc IConfigManager
    function setAllocationConfig(StoredAllocationConfig calldata) external onlyRole(CONFIG_MANAGER_ROLE) isNotPaused {
        ConfigManagerAddress.get().functionDelegateCall(msg.data);
    }

    /// @inheritdoc IConfigManager
    function addBin(Bin calldata, uint16[] calldata) external onlyRole(CONFIG_MANAGER_ROLE) isNotPaused {
        ConfigManagerAddress.get().functionDelegateCall(msg.data);
    }

    /// @inheritdoc IConfigManager
    function updateBinWeightings(uint16[] calldata) external onlyRole(CONFIG_MANAGER_ROLE) isNotPaused {
        ConfigManagerAddress.get().functionDelegateCall(msg.data);
    }

    /// @inheritdoc IConfigManager
    function updateValidatorSetSizes(uint32[] calldata) external onlyRole(CONFIG_MANAGER_ROLE) isNotPaused {
        ConfigManagerAddress.get().functionDelegateCall(msg.data);
    }

    /// @inheritdoc IConfigManager
    function updateNodeOperatorWeightings(
        uint256,
        uint16[] calldata
    )
        external
        onlyRole(CONFIG_MANAGER_ROLE)
        isNotPaused
    {
        ConfigManagerAddress.get().functionDelegateCall(msg.data);
    }

    /// ------------------------------------------------------------------------ ///
    ///                            CONFIG MANAGER END                            ///
    /// ------------------------------------------------------------------------ ///

    /// ------------------------------------------------------------------------ ///
    ///                            ROLE MANAGEMENT                               ///
    /// ------------------------------------------------------------------------ ///

    /// @dev Sets staker & keeper roles for supplied addresses at the time of deployment
    /// @param _staker The address to configure as a staker
    /// @param _keeper The address to configure as a keeper
    function _preConfigRoles(address _staker, address _keeper) internal {
        if (_staker != address(0)) {
            _configureStaker(_staker);
        }

        if (_keeper != address(0)) {
            _configureKeeper(_keeper);
        }
    }

    /// @dev Configures the owner role
    /// @param _owner The address to configure as the owner
    function _configureOwner(address _owner) internal {
        _grantRoles(_owner, _getOwnerRoles());
    }

    /// @dev Configures a staker role
    /// @param _staker The address to configure as a staker
    function _configureStaker(address _staker) internal {
        bytes32[] memory roles = new bytes32[](5);
        roles[0] = PAUSER_ROLE;
        roles[1] = DEPOSITOR_ROLE;
        roles[2] = CONFIG_MANAGER_ROLE;
        roles[3] = VALIDATOR_MANAGER_ROLE;
        roles[4] = VALIDATOR_SET_TRANSFER_ROLE;
        _grantRoles(_staker, roles);
    }

    /// @dev Configures a keeper role
    /// @param _keeper The address to configure as a keeper
    function _configureKeeper(address _keeper) internal {
        bytes32[] memory roles = new bytes32[](2);
        roles[0] = VALIDATOR_SET_CREATOR_ROLE;
        roles[1] = DEPOSIT_CONSENSUS_LAYER_ROLE;

        _grantRoles(_keeper, roles);
    }

    /// @dev Helper function to grant multiple roles to an account
    /// @param _account The address to grant the roles to
    /// @param _roles The roles to grant to the account
    function _grantRoles(address _account, bytes32[] memory _roles) internal {
        for (uint256 i = 0; i < _roles.length; i++) {
            _grantRole(_roles[i], _account);
        }
    }

    /// @dev Helper function to revoke multiple roles from an account
    /// @param _account The address to revoke the roles from
    /// @param _roles The roles to revoke from the account
    function _revokeRoles(address _account, bytes32[] memory _roles) internal {
        for (uint256 i = 0; i < _roles.length; i++) {
            _revokeRole(_roles[i], _account);
        }
    }

    /// @inheritdoc IOrchestrator
    function grantAndRevokeRoles(
        RoleMapping[] calldata grantRoles,
        RoleMapping[] calldata revokeRoles
    )
        external
        onlyRole(DEFAULT_ADMIN_ROLE)
        isNotPaused
    {
        for (uint256 i = 0; i < grantRoles.length; i++) {
            for (uint256 j = 0; j < grantRoles[i].roles.length; j++) {
                if (grantRoles[i].roles[j] == DEFAULT_ADMIN_ROLE) {
                    revert InvalidOperation();
                }
                _grantRole(grantRoles[i].roles[j], grantRoles[i].account);
            }
        }

        for (uint256 i = 0; i < revokeRoles.length; i++) {
            for (uint256 j = 0; j < revokeRoles[i].roles.length; j++) {
                if (revokeRoles[i].roles[j] == DEFAULT_ADMIN_ROLE) {
                    revert InvalidOperation();
                }
                _revokeRole(revokeRoles[i].roles[j], revokeRoles[i].account);
            }
        }
    }

    /// @dev Sets the beneficiary address
    /// @param beneficiary The address to set as the beneficiary

    function _setBeneficiary(address beneficiary) internal {
        address oldBeneficiary = BeneficiaryAddress.get();
        BeneficiaryAddress.set(beneficiary);
        emit BeneficiaryUpdated(oldBeneficiary, beneficiary);
    }

    /// @notice Grants roles to an account
    /// @param account The account to grant the roles to
    /// @param roles The roles to grant to the account
    function grantRoles(address account, bytes32[] calldata roles) external onlyRole(DEFAULT_ADMIN_ROLE) isNotPaused {
        for (uint256 i = 0; i < roles.length; i++) {
            if (roles[i] == DEFAULT_ADMIN_ROLE) {
                revert InvalidOperation();
            }
            _grantRole(roles[i], account);
        }
    }

    /// @notice Revokes roles from an account
    /// @param account The account to revoke the roles from
    /// @param roles The roles to revoke from the account
    function revokeRoles(address account, bytes32[] calldata roles) external onlyRole(DEFAULT_ADMIN_ROLE) isNotPaused {
        for (uint256 i = 0; i < roles.length; i++) {
            if (roles[i] == DEFAULT_ADMIN_ROLE) {
                revert InvalidOperation();
            }
            _revokeRole(roles[i], account);
        }
    }

    /// ACCESS CONTROL SAFEGUARDING
    /// We are overriding the following functions to prevent the DEFAULT_ADMIN_ROLE from being revoked & granted.
    /// We only want the changeOwner function to be able to do that.

    /// @inheritdoc AccessControlUpgradeable
    function grantRole(bytes32 role, address account) public override onlyRole(DEFAULT_ADMIN_ROLE) isNotPaused {
        if (role == DEFAULT_ADMIN_ROLE) {
            revert InvalidOperation();
        }
        _grantRole(role, account);
    }

    /// @inheritdoc AccessControlUpgradeable
    function revokeRole(bytes32 role, address account) public override onlyRole(DEFAULT_ADMIN_ROLE) isNotPaused {
        if (role == DEFAULT_ADMIN_ROLE) {
            revert InvalidOperation();
        }
        _revokeRole(role, account);
    }

    /// @inheritdoc AccessControlUpgradeable
    function renounceRole(bytes32, address) public override {
        revert InvalidOperation();
    }

    /// @notice Returns the version of the Orchestrator
    /// @return The version of the Orchestrator
    function version() external pure returns (string memory) {
        return "1.0.0";
    }
}
