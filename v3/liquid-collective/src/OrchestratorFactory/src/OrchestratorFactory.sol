// SPDX-License-Identifier: Proprietary
pragma solidity 0.8.29;

import { AccessControlUpgradeable } from
    "lib/openzeppelin-contracts-upgradeable/contracts/access/AccessControlUpgradeable.sol";
import { UUPSUpgradeable } from "lib/openzeppelin-contracts-upgradeable/contracts/proxy/utils/UUPSUpgradeable.sol";
import { ERC1967Proxy } from "lib/openzeppelin-contracts/contracts/proxy/ERC1967/ERC1967Proxy.sol";
import { Initializable } from "lib/openzeppelin-contracts-upgradeable/contracts/proxy/utils/Initializable.sol";
import { UpgradeableBeacon } from "lib/openzeppelin-contracts/contracts/proxy/beacon/UpgradeableBeacon.sol";
import { IOrchestratorFactory } from "src/interfaces/IOrchestratorFactory.sol";
import { InstanceID } from "src/state/orchestratorFactory/InstanceID.sol";
import { OrchestratorImplementationAddress } from "src/state/orchestratorFactory/OrchestratorImplementationAddress.sol";
import { ConfigManagerImplementationAddress } from
    "src/state/orchestratorFactory/ConfigManagerImplementationAddress.sol";
import { TVSImplementationAddress } from "src/state/orchestratorFactory/TVSImplementationAddress.sol";

contract OrchestratorFactory is Initializable, AccessControlUpgradeable, UUPSUpgradeable, IOrchestratorFactory {
    /// @notice The role for deploying orchestrators
    bytes32 public constant ORCHESTRATOR_DEPLOYER_ROLE = keccak256("DEPLOYER_ROLE");
    /// @notice The address of the beacon deposit contract
    address public immutable DEPOSIT_CONTRACT_ADDRESS;

    /// @notice Constructor for the OrchestratorFactory
    /// @param _depositContractAddress The address of the deposit contract
    constructor(address _depositContractAddress) {
        if (_depositContractAddress == address(0)) {
            revert InvalidZeroAddress();
        }
        DEPOSIT_CONTRACT_ADDRESS = _depositContractAddress;
        _disableInitializers();
    }

    /// @notice Initialize the OrchestratorFactory
    /// @param orchestratorImplementation The address of the orchestrator implementation
    /// @param configManagerImplementation The address of the config manager implementation
    /// @param tvsImplementation The address of the TVS implementation
    function initialize(
        address orchestratorImplementation,
        address configManagerImplementation,
        address tvsImplementation
    )
        public
        initializer
    {
        __UUPSUpgradeable_init();
        __AccessControl_init();

        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
        _grantRole(ORCHESTRATOR_DEPLOYER_ROLE, msg.sender);

        _setOrchestratorImplementation(orchestratorImplementation);
        _setConfigManagerImplementation(configManagerImplementation);
        _setTVSImplementation(tvsImplementation);
        InstanceID.set(0); // Initialize InstanceID to 0
    }

    /// @notice Get the version of the OrchestratorFactory
    /// @return The version of the OrchestratorFactory
    function version() external pure returns (string memory) {
        return "1.0.0";
    }

    /// @inheritdoc IOrchestratorFactory
    function getOrchestratorImplementation() external view returns (address) {
        return OrchestratorImplementationAddress.get();
    }

    /// @inheritdoc IOrchestratorFactory
    function getConfigManagerImplementation() external view returns (address) {
        return ConfigManagerImplementationAddress.get();
    }

    /// @inheritdoc IOrchestratorFactory
    function getTVSImplementation() external view returns (address) {
        return TVSImplementationAddress.get();
    }

    /// @inheritdoc IOrchestratorFactory
    function getCurrentInstanceID() external view returns (uint256) {
        return InstanceID.get();
    }

    /// @inheritdoc IOrchestratorFactory
    function setOrchestratorImplementation(address newOrchestratorImplementation)
        external
        onlyRole(DEFAULT_ADMIN_ROLE)
    {
        _setOrchestratorImplementation(newOrchestratorImplementation);
    }

    /// @inheritdoc IOrchestratorFactory
    function setConfigManagerImplementation(address newConfigManagerImplementation)
        external
        onlyRole(DEFAULT_ADMIN_ROLE)
    {
        _setConfigManagerImplementation(newConfigManagerImplementation);
    }

    /// @inheritdoc IOrchestratorFactory
    function setTVSImplementation(address newTVSImplementation) external onlyRole(DEFAULT_ADMIN_ROLE) {
        _setTVSImplementation(newTVSImplementation);
    }

    /// @inheritdoc IOrchestratorFactory
    function deployOrchestrator(
        address owner,
        address staker,
        address keeper,
        address beneficiaryAddress,
        bool transferToListEnabled
    )
        external
        onlyRole(ORCHESTRATOR_DEPLOYER_ROLE)
        returns (Deployment memory deployment)
    {
        deployment.orchestratorImplementation = OrchestratorImplementationAddress.get();
        deployment.configManagerImplementation = ConfigManagerImplementationAddress.get();
        deployment.tvsImplementation = TVSImplementationAddress.get();
        deployment.instanceId = InstanceID.get();
        InstanceID.set(deployment.instanceId + 1);

        // Deploy the UpgradeableBeacon with factory as initial owner
        deployment.tvsBeacon = address(new UpgradeableBeacon(deployment.tvsImplementation, address(this)));

        // Deploy the orchestrator with UUPS proxy
        bytes memory data = abi.encodeWithSignature(
            "initialize(address,address,address,address,address,address,address,bool)",
            owner,
            deployment.tvsBeacon,
            staker,
            keeper,
            beneficiaryAddress,
            deployment.configManagerImplementation,
            DEPOSIT_CONTRACT_ADDRESS,
            transferToListEnabled
        );
        deployment.orchestrator = _deployUUPSProxy(deployment.orchestratorImplementation, data);

        // Transfer beacon ownership to the orchestrator
        UpgradeableBeacon(deployment.tvsBeacon).transferOwnership(deployment.orchestrator);

        emit OrchestratorDeployed(deployment.instanceId, deployment.orchestrator, deployment.orchestratorImplementation);
    }

    /// @notice Deploy a UUPS proxy for the given implementation
    /// @param _implementation Address for the implementation of the contract
    /// @param _initializationData Data for initialization of the proxy
    /// @return _proxy Address of the deployed Proxy
    function _deployUUPSProxy(
        address _implementation,
        bytes memory _initializationData
    )
        internal
        returns (address _proxy)
    {
        _proxy = address(new ERC1967Proxy(_implementation, _initializationData));
    }

    ///@dev required by the OZ UUPS module
    function _authorizeUpgrade(address) internal override onlyRole(DEFAULT_ADMIN_ROLE) { }

    /// @notice Set the orchestrator implementation address
    /// @param newOrchestratorImplementation The new orchestrator implementation address
    function _setOrchestratorImplementation(address newOrchestratorImplementation) internal {
        OrchestratorImplementationAddress.set(newOrchestratorImplementation);
        emit OrchestratorImplementationUpdated(newOrchestratorImplementation, InstanceID.get());
    }

    /// @notice Set the config manager implementation address
    /// @param newConfigManagerImplementation The new config manager implementation address
    function _setConfigManagerImplementation(address newConfigManagerImplementation) internal {
        ConfigManagerImplementationAddress.set(newConfigManagerImplementation);
        emit ConfigManagerImplementationUpdated(newConfigManagerImplementation, InstanceID.get());
    }

    /// @notice Set the TVS implementation address
    /// @param newTVSImplementation The new TVS implementation address
    function _setTVSImplementation(address newTVSImplementation) internal {
        TVSImplementationAddress.set(newTVSImplementation);
        emit TVSImplementationUpdated(newTVSImplementation, InstanceID.get());
    }
}
