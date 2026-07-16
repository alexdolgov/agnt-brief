// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.8.29;

import { Ownable } from "solady/auth/Ownable.sol";
import { MultiRolesAuthority } from "solmate/auth/authorities/MultiRolesAuthority.sol";
import { VaultStructs } from "./interfaces/IVaultContracts.sol";
import { IVaultToken, IPricer, IDepositReceiver, IDepositor, IWithdrawalQueue, IExchangeRateUpdater, IDnCoreWriterVault } from "./interfaces/IVaultContracts.sol";

/**
 * @title VaultFactoryLite
 * @notice Lightweight factory for deploying DN vault systems with full configuration
 * @dev Uses interfaces to minimize contract size while maintaining full functionality
 */
contract VaultFactoryLite is Ownable {
    
    // Implementation contract - deployed once, reused for all vaults
    address public dnCoreWriterImplementation;

    // Role constants
    uint8 public constant ADMIN_ROLE = 0;
    uint8 public constant SOLVER_ROLE = 1;
    uint8 public constant ALLOCATOR_ROLE = 2;
    uint8 public constant UPDATE_EXCHANGE_RATE_ROLE = 3;
    uint8 public constant FEE_CLAIMER_ROLE = 4;
    uint8 public constant KEEPER_ROLE = 5;
    uint8 public constant MINTER_ROLE = 6;
    uint8 public constant BURNER_ROLE = 7;

    event VaultDeployed(
        address indexed authority,
        address indexed vaultToken,
        address indexed pricer,
        address depositReceiver,
        address depositor,
        address withdrawalQueue,
        address dnCoreWriter,
        address exchangeRateUpdater
    );

    constructor(address _owner) {
        _initializeOwner(_owner);
    }

    /**
     * @notice Deploys a complete DN token vault system using bytecode parameters
     * @param bytecodes Array of contract bytecodes [authority, vaultToken, pricer, depositReceiver, depositor, withdrawalQueue, dnCoreWriter, exchangeRateUpdater]
     * @param _params Deployment parameters for configuration
     * @return deployed The deployed contract addresses
     */
    function deployDnToken(
        bytes[] memory bytecodes,
        VaultStructs.DeploymentParams memory _params
    )
        external
        onlyOwner
        returns (VaultStructs.DeployedContracts memory deployed)
    {
        require(dnCoreWriterImplementation != address(0), "Implementation not deployed");
        require(bytecodes.length == 8, "Invalid bytecode count");
        
        // Deploy all contracts using bytecode
        deployed = _deployAllContracts(bytecodes, _params);
        
        // Setup contract connections
        _setupContractConnections(deployed);

        // Setup permissions
        _setupAllPermissions(deployed.authority, deployed, _params.roles);

        // Finalize setup and transfer roles
        _finalizeSetupAndTransferRoles(deployed.authority, deployed, _params);

        emit VaultDeployed(
            address(deployed.authority),
            address(deployed.vaultToken),
            address(deployed.pricer),
            address(deployed.depositReceiver),
            address(deployed.depositor),
            address(deployed.withdrawalQueue),
            address(deployed.dnCoreWriter),
            address(deployed.exchangeRateUpdater)
        );
    }

    function deployDnCoreWriterImplementation(bytes memory implementationBytecode) external onlyOwner {
        dnCoreWriterImplementation = _create2Deploy(implementationBytecode, keccak256("DnCoreWriterImpl"), 0);
    }

    function _deployAllContracts(
        bytes[] memory bytecodes,
        VaultStructs.DeploymentParams memory _params
    ) 
        internal 
        returns (VaultStructs.DeployedContracts memory deployed) 
    {
        bytes32 salt = keccak256(abi.encodePacked(_params.vaultTokenName, _params.vaultTokenSymbol, block.timestamp));

        // Deploy all contracts using CREATE2 with provided bytecode
        deployed.authority = MultiRolesAuthority(_create2Deploy(bytecodes[0], salt, 0));
        deployed.vaultToken = IVaultToken(_create2Deploy(bytecodes[1], salt, 1));
        deployed.pricer = IPricer(_create2Deploy(bytecodes[2], salt, 2));
        deployed.depositReceiver = IDepositReceiver(_create2Deploy(bytecodes[3], salt, 3));
        deployed.depositor = IDepositor(_create2Deploy(bytecodes[4], salt, 4));
        deployed.withdrawalQueue = IWithdrawalQueue(_create2Deploy(bytecodes[5], salt, 5));
        deployed.dnCoreWriter = IDnCoreWriterVault(_create2Deploy(bytecodes[6], salt, 6));
        deployed.exchangeRateUpdater = IExchangeRateUpdater(_create2Deploy(bytecodes[7], salt, 7));
    }

    function _create2Deploy(bytes memory bytecode, bytes32 salt, uint256 nonce) internal returns (address deployed) {
        bytes32 finalSalt = keccak256(abi.encodePacked(salt, nonce));
        assembly {
            deployed := create2(0, add(bytecode, 0x20), mload(bytecode), finalSalt)
            if iszero(deployed) {
                revert(0, 0)
            }
        }
    }


    function _setupContractConnections(VaultStructs.DeployedContracts memory _deployed) internal {
        // Set authorities
        _deployed.vaultToken.setAuthority(_deployed.authority);
        _deployed.pricer.setAuthority(_deployed.authority);
        _deployed.depositor.setAuthority(_deployed.authority);
        _deployed.withdrawalQueue.setAuthority(_deployed.authority);
        _deployed.depositReceiver.setAuthority(_deployed.authority);
        _deployed.exchangeRateUpdater.setAuthority(_deployed.authority);

        // Complete setup
        _deployed.depositReceiver.setWithdrawalQueue(address(_deployed.withdrawalQueue));
        _deployed.depositReceiver.setPricer(address(_deployed.pricer));
        _deployed.pricer.updateDepositReceiver(address(_deployed.depositReceiver));
        _deployed.dnCoreWriter.setWithdrawalQueue(address(_deployed.withdrawalQueue));
        _deployed.depositReceiver.setDnCoreWriter(address(_deployed.dnCoreWriter), true);
    }

    function _setupAllPermissions(
        MultiRolesAuthority _authority,
        VaultStructs.DeployedContracts memory _deployed,
        VaultStructs.RoleAssignments memory _roles
    ) internal {
        
        // Set contract roles
        _authority.setUserRole(address(_deployed.depositor), MINTER_ROLE, true);
        _authority.setUserRole(address(_deployed.withdrawalQueue), BURNER_ROLE, true);
        _authority.setUserRole(address(_deployed.exchangeRateUpdater), UPDATE_EXCHANGE_RATE_ROLE, true);

        // Set external user roles
        if (_roles.finalAdmin != address(0)) {
            _authority.setUserRole(_roles.finalAdmin, ADMIN_ROLE, true);
        }
        if (_roles.solver != address(0)) {
            _authority.setUserRole(_roles.solver, SOLVER_ROLE, true);
        }
        if (_roles.allocator != address(0)) {
            _authority.setUserRole(_roles.allocator, ALLOCATOR_ROLE, true);
        }
        if (_roles.exchangeRateUpdater != address(0)) {
            _authority.setUserRole(_roles.exchangeRateUpdater, KEEPER_ROLE, true);
        }
        if (_roles.feeClaimer != address(0)) {
            _authority.setUserRole(_roles.feeClaimer, FEE_CLAIMER_ROLE, true);
        }

        // Grant factory temporary admin role for setup
        _authority.setUserRole(address(this), ADMIN_ROLE, true);

        // Setup all role capabilities (simplified version)
        _setupRoleCapabilities(_authority);
    }

    function _setupRoleCapabilities(MultiRolesAuthority _authority) internal {
        // Basic role capabilities - add more as needed
        // For now, keeping minimal to avoid stack too deep
    }

    function _finalizeSetupAndTransferRoles(
        MultiRolesAuthority _authority,
        VaultStructs.DeployedContracts memory _deployed,
        VaultStructs.DeploymentParams memory _params
    ) internal {
        require(_params.roles.finalAdmin != address(0), "Final admin cannot be zero address");

        _configureAssets(_deployed, _params);
        _setupDnCoreWriterRoles(_deployed, _params);
        _transferOwnership(_authority, _params.roles.finalAdmin);
    }

    function _configureAssets(
        VaultStructs.DeployedContracts memory _deployed,
        VaultStructs.DeploymentParams memory _params
    ) internal {
        // Configure Pricer asset configs
        for (uint256 i = 0; i < _params.pricerAssetConfigs.length; i++) {
            _deployed.pricer.setAssetConfig(_params.pricerAssetConfigs[i].token, _params.pricerAssetConfigs[i].priceProvider);
        }

        // Configure Depositor token allowlist
        for (uint256 i = 0; i < _params.depositTokenConfigs.length; i++) {
            _deployed.depositor.toggleDepositToken(_params.depositTokenConfigs[i].token, _params.depositTokenConfigs[i].enabled);
        }

        // Configure DN Core Writer
        _deployed.dnCoreWriter.toggleWithdrawalToken(_deployed.pricer.baseAsset());
    }

    function _setupDnCoreWriterRoles(
        VaultStructs.DeployedContracts memory _deployed,
        VaultStructs.DeploymentParams memory _params
    ) internal {
        // Grant admin role to final admin
        _deployed.dnCoreWriter.grantRole(_deployed.dnCoreWriter.ADMIN_ROLE(), _params.roles.finalAdmin);

        // Grant specific roles
        if (_params.roles.allocator != address(0)) {
            _deployed.dnCoreWriter.grantRole(_deployed.dnCoreWriter.WITHDRAWAL_ROLE(), _params.roles.allocator);
            _deployed.dnCoreWriter.grantRole(_deployed.dnCoreWriter.BRIDGE_ROLE(), _params.roles.allocator);
        }
        if (_params.roles.solver != address(0)) {
            _deployed.dnCoreWriter.grantRole(_deployed.dnCoreWriter.TRADING_AGENT_ROLE(), _params.roles.solver);
        }

        // Revoke factory's admin role
        _deployed.dnCoreWriter.revokeRole(_deployed.dnCoreWriter.ADMIN_ROLE(), address(this));
    }

    function _transferOwnership(MultiRolesAuthority _authority, address finalAdmin) internal {
        // Transfer authority ownership
        _authority.transferOwnership(finalAdmin);
        // Revoke factory's temporary admin role
        _authority.setUserRole(address(this), ADMIN_ROLE, false);
    }
}