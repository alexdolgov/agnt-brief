// SPDX-License-Identifier: AGPL-3.0
pragma solidity ^0.8.18;

//import "./Roles.sol";
//import "./IAvatar.sol";
import {IStrategyInterface} from "../interfaces/IStrategyInterface.sol";
import {IVaultInterface} from "../interfaces/IVaultInterface.sol";
import {IAccountantInterface} from "../interfaces/IAccountantInterface.sol";
import "forge-std/console2.sol";

interface ISafe {    
    enum Operation {Call, DelegateCall}

    function setup(
        address[] calldata _owners,
        uint256 _threshold,
        address to,
        bytes calldata data,
        address fallbackHandler,
        address paymentToken,
        uint256 payment,
        address payable paymentReceiver
    ) external;
    function execTransaction(
        address to,
        uint256 value,
        bytes calldata data,
        Operation operation,
        uint256 safeTxGas,
        uint256 baseGas,
        uint256 gasPrice,
        address gasToken,
        address payable refundReceiver,
        bytes memory signatures
    ) external payable returns (bool success);
    function enableModule(address module) external;
    function swapOwner(
        address prevOwner,
        address oldOwner,
        address newOwner
    ) external;
}

interface IRoles {
    enum ExecutionOptions {
        None,
        Send,
        DelegateCall,
        Both
    }

    function setUp(bytes memory initParams) external;
    function scopeAllowFunction(
        uint16 role,
        address targetAddress,
        bytes4 functionSig,
        ExecutionOptions options
    ) external;
    function allowTarget(
        uint16 role,
        address targetAddress,
        ExecutionOptions options
    ) external;
    function assignRoles(
        address module,
        uint16[] calldata _roles,
        bool[] calldata memberOf
    ) external;
}

interface IDelay {
    function setUp(bytes memory initParams) external;
    function transferOwnership(address newOwner) external;
    function setTxNonce(uint256 _nonce) external;
}

interface ISafeProxyFactory {
    function createProxyWithNonce(
        address _singleton,
        bytes memory initializer,
        uint256 saltNonce
    ) external returns (address);
}

interface IModuleProxyFactory {
    function deployModule(
        address masterCopy,
        bytes memory initializer,
        uint256 saltNonce
    ) external returns (address proxy);
}

interface ISafeL2 {
    function setupToL2(address l2Singleton) external;
}

interface IDAOFactory {
    /// @notice The container for the DAO settings to be set during the DAO initialization.
    /// @param trustedForwarder The address of the trusted forwarder required for meta transactions.
    /// @param daoURI The DAO uri used with [EIP-4824](https://eips.ethereum.org/EIPS/eip-4824).
    /// @param subdomain The ENS subdomain to be registered for the DAO contract.
    /// @param metadata The metadata of the DAO.
    struct DAOSettings {
        address trustedForwarder;
        string daoURI;
        string subdomain;
        bytes metadata;
    }

    struct Tag {
        uint8 release;
        uint16 build;
    }

    struct PluginSetupRef {
        Tag versionTag;
        address pluginSetupRepo;
    }

    /// @notice The container with the information required to install a plugin on the DAO.
    /// @param pluginSetupRef The `PluginSetupRepo` address of the plugin and the version tag.
    /// @param data The bytes-encoded data containing the input parameters for the installation as specified in the plugin's build metadata JSON file.
    struct PluginSettings {
        PluginSetupRef pluginSetupRef;
        bytes data;
    }

    function createDao(
        DAOSettings calldata _daoSettings,
        PluginSettings[] calldata _pluginSettings
    ) external returns (address createdDao);
}

// Avax deployments
contract DeploymentsAvax {
    address public constant SAFE_PROXY_FACTORY = 0x4e1DCf7AD4e460CfD30791CCC4F9c8a4f820ec67;
    address public constant SAFE_IMPL = 0x29fcB43b46531BcA003ddC8FCB67FFE91900C762;
    address public constant SAFE_L2 = address(0);
    address public constant SAFE_L2_SINGLETON = address(0);
    address public constant SAFE_PAYMENT_RECEIVER = address(0);
    address public constant COMPAT_FALLBACK = 0xfd0732Dc9E303f09fCEf3a7388Ad10A83459Ec99;
    address public constant MODULE_PROXY_FACTORY = 0x000000000000aDdB49795b0f9bA5BC298cDda236;
    address public constant DELAY_MODULE_IMPL = 0xd54895B1121A2eE3f37b502F507631FA1331BED6;
    address public constant ROLES_MODULE_IMPL = 0x29188365448c17729e454Ba68B1a2D61511EF193;
    address public constant DEAD_OWNER = 0x000000000000000000000000000000000000dEaD;
    uint256 public constant CHAIN_ID = 43114;
}

struct DeploySafeParams {
    address proposer;
    address vault;
    address accountant;
    address governor;
    uint256 delayCooldown;
    uint256 delayExpiration;
}

contract VaultGovDeployerAvax is DeploymentsAvax {
    event SafesDeployed(
        address vault, 
        address accountant, 
        address dao, 
        address proposer, 
        address ownerless, 
        address roles, 
        address delay
    );

    bytes4 internal constant EIP1271_MAGIC_VALUE = 0x20c13b0b;
    bytes4 internal constant ACCEPT_ROLE_MANAGER_SELECTOR = bytes4(0xf776bf1f);
    bytes4 internal constant ACCEPT_FEE_MANAGER_SELECTOR = bytes4(0xf94c53c7);
    address internal constant SENTINEL_OWNERS = address(0x1);

    address public immutable OWNER;
    uint256 public saltNonce;

    constructor() {
        uint chainId;
        assembly {
            chainId := chainid()
        }
        require(chainId == CHAIN_ID);
        OWNER = msg.sender;
    }

    function deploySafe(DeploySafeParams calldata params) external {
        require(msg.sender == OWNER, "only owner");

        // Accept initial roles
        _acceptInitialRoles(params.vault, params.accountant);

        // Deploy safes
        address[] memory owners = new address[](1);
        owners[0] = address(this);
        
        address proposerSafe = _deployProposerSafe(owners);
        address ownerlessSafe = _deployOwnerlessSafe(owners);

        // Setup governance
        _setupGovernance(params.vault, params.accountant, ownerlessSafe);

        // Deploy and setup modules
        (address rolesModule, address delayModule) = _setupModules(
            ownerlessSafe,
            params.governor,
            params.delayCooldown,
            params.delayExpiration,
            proposerSafe
        );

        // Transfer final ownership
        _finalizeOwnership(proposerSafe, ownerlessSafe, params.proposer);

        emit SafesDeployed(
            params.vault,
            params.accountant,
            params.governor,
            proposerSafe,
            ownerlessSafe,
            rolesModule,
            delayModule
        );
    }

    function _acceptInitialRoles(address vault, address accountant) internal {
        IVaultInterface(vault).accept_role_manager();
        IAccountantInterface(accountant).acceptFeeManager();
    }

    function _deployProposerSafe(address[] memory owners) internal returns (address) {
        return ISafeProxyFactory(SAFE_PROXY_FACTORY).createProxyWithNonce(
            SAFE_IMPL,
            abi.encodeWithSelector(
                ISafe.setup.selector,
                owners,
                1,
                SAFE_L2,
                abi.encodeWithSelector(ISafeL2.setupToL2.selector, SAFE_L2_SINGLETON),
                COMPAT_FALLBACK,
                address(0),
                0,
                SAFE_PAYMENT_RECEIVER
            ),
            saltNonce++
        );
    }

    function _deployOwnerlessSafe(address[] memory owners) internal returns (address) {
        return ISafeProxyFactory(SAFE_PROXY_FACTORY).createProxyWithNonce(
            SAFE_IMPL,
            abi.encodeWithSelector(
                ISafe.setup.selector,
                owners,
                1,
                SAFE_L2,
                abi.encodeWithSelector(ISafeL2.setupToL2.selector, SAFE_L2_SINGLETON),
                COMPAT_FALLBACK,
                address(0),
                0,
                SAFE_PAYMENT_RECEIVER
            ),
            saltNonce++
        );
    }

    function _setupGovernance(
        address vault,
        address accountant,
        address ownerlessSafe
    ) internal {
        // Set initial roles and transfer ownership
        IVaultInterface(vault).set_role(ownerlessSafe, 16335);
        IVaultInterface(vault).transfer_role_manager(ownerlessSafe);
        IAccountantInterface(accountant).setFutureFeeManager(ownerlessSafe);

        // Accept transferred roles
        _acceptTransferredRoles(vault, accountant, ownerlessSafe);
    }

    function _acceptTransferredRoles(
        address vault,
        address accountant,
        address ownerlessSafe
    ) internal {
        // Accept role manager
        bytes memory acceptRoleManagerSelector = abi.encodePacked(ACCEPT_ROLE_MANAGER_SELECTOR);
        _executeTransaction(ownerlessSafe, vault, acceptRoleManagerSelector);

        // Accept fee manager
        bytes memory acceptFeeManagerSelector = abi.encodePacked(ACCEPT_FEE_MANAGER_SELECTOR);
        _executeTransaction(ownerlessSafe, accountant, acceptFeeManagerSelector);
    }

    function _setupModules(
        address ownerlessSafe,
        address governor,
        uint256 delayCooldown,
        uint256 delayExpiration,
        address proposerSafe
    ) internal returns (address rolesModule, address delayModule) {
        rolesModule = _deployRolesModule(ownerlessSafe);
        delayModule = _deployDelayModule(ownerlessSafe, delayCooldown, delayExpiration);

        _configureModules(
            ownerlessSafe,
            rolesModule,
            delayModule,
            governor,
            proposerSafe
        );

        return (rolesModule, delayModule);
    }

    function _deployRolesModule(address ownerlessSafe) internal returns (address) {
        address rolesModule = _deployModule(
            ROLES_MODULE_IMPL,
            abi.encodeWithSelector(
                IRoles.setUp.selector,
                abi.encode(ownerlessSafe, ownerlessSafe, ownerlessSafe)
            ),
            saltNonce++
        );

        _enableModule(ownerlessSafe, ownerlessSafe, rolesModule);
        return rolesModule;
    }

    function _deployDelayModule(
        address ownerlessSafe,
        uint256 delayCooldown,
        uint256 delayExpiration
    ) internal returns (address) {
        return _deployModule(
            DELAY_MODULE_IMPL,
            abi.encodeWithSelector(
                IDelay.setUp.selector,
                abi.encode(
                    ownerlessSafe,
                    ownerlessSafe,
                    ownerlessSafe,
                    delayCooldown,
                    delayExpiration
                )
            ),
            saltNonce++
        );
    }

    function _configureModules(
        address ownerlessSafe,
        address rolesModule,
        address delayModule,
        address governor,
        address proposerSafe
    ) internal {
        // Enable modules
        _enableModule(ownerlessSafe, ownerlessSafe, delayModule);
        _enableModule(ownerlessSafe, delayModule, proposerSafe);

        // Setup permissions
        _setupModulePermissions(ownerlessSafe, rolesModule, delayModule, governor);
    }

    function _setupModulePermissions(
        address ownerlessSafe,
        address rolesModule,
        address delayModule,
        address governor
    ) internal {
        // Transfer delay module ownership to roles module
        _callModuleFunc(
            ownerlessSafe,
            delayModule,
            abi.encodeWithSelector(IDelay.transferOwnership.selector, rolesModule)
        );

        // Configure roles and permissions
        _configureRolePermissions(ownerlessSafe, rolesModule, delayModule, governor);
    }

    function _configureRolePermissions(
        address ownerlessSafe,
        address rolesModule,
        address delayModule,
        address governor
    ) internal {
        // Set up function scope
        _callModuleFunc(
            ownerlessSafe,
            rolesModule,
            abi.encodeWithSelector(
                IRoles.scopeAllowFunction.selector,
                1,
                delayModule,
                IDelay.setTxNonce.selector,
                IRoles.ExecutionOptions.None
            )
        );

        // Enable governor module
        _callModuleFunc(
            ownerlessSafe,
            rolesModule,
            abi.encodeWithSelector(ISafe.enableModule.selector, governor)
        );

        // Assign roles to governor
        _assignGovernorRole(ownerlessSafe, rolesModule, governor);

        // Set target permissions
        _callModuleFunc(
            ownerlessSafe,
            rolesModule,
            abi.encodeWithSelector(
                IRoles.allowTarget.selector,
                1,
                delayModule,
                IRoles.ExecutionOptions.None
            )
        );
    }

    function _assignGovernorRole(
        address ownerlessSafe,
        address rolesModule,
        address governor
    ) internal {
        uint16[] memory daoRoles = new uint16[](1);
        bool[] memory roleMembers = new bool[](1);
        daoRoles[0] = 1;
        roleMembers[0] = true;

        _callModuleFunc(
            ownerlessSafe,
            rolesModule,
            abi.encodeWithSelector(
                IRoles.assignRoles.selector,
                governor,
                daoRoles,
                roleMembers
            )
        );
    }

    function _finalizeOwnership(
        address proposerSafe,
        address ownerlessSafe,
        address proposer
    ) internal {
        _swapOwner(proposerSafe, proposer);
        _swapOwner(ownerlessSafe, DEAD_OWNER);
    }

    function _executeTransaction(
        address safe,
        address target,
        bytes memory data
    ) internal {
        ISafe(safe).execTransaction(
            target,
            0,
            data,
            ISafe.Operation.Call,
            0,
            0,
            0,
            address(0),
            payable(address(0)),
            _getSignature()
        );
    }

    // Helper functions remain unchanged
    function _swapOwner(address safe, address newOwner) private {
        ISafe(safe).execTransaction(
            safe,
            0,
            abi.encodeWithSelector(
                ISafe.swapOwner.selector,
                SENTINEL_OWNERS,
                address(this),
                newOwner
            ),
            ISafe.Operation.Call,
            0,
            0,
            0,
            address(0),
            payable(address(0)),
            _getSignature()
        );
    }

    function _deployModule(
        address moduleImpl,
        bytes memory initializer,
        uint256 saltNonce
    ) private returns (address) {
        return IModuleProxyFactory(MODULE_PROXY_FACTORY).deployModule(
            moduleImpl,
            initializer,
            saltNonce
        );
    }

    function _callModuleFunc(
        address safe,
        address module,
        bytes memory data
    ) private {
        ISafe(safe).execTransaction(
            module,
            0,
            data,
            ISafe.Operation.Call,
            0,
            0,
            0,
            address(0),
            payable(address(0)),
            _getSignature()
        );
    }

    function _enableModule(address safe, address to, address module) private {
        ISafe(safe).execTransaction(
            to,
            0,
            abi.encodeWithSelector(ISafe.enableModule.selector, address(module)),
            ISafe.Operation.Call,
            0,
            0,
            0,
            address(0),
            payable(address(0)),
            _getSignature()
        );
    }

    function _getSignature() private view returns (bytes memory) {
        return abi.encodePacked(
            bytes32(uint256(uint160(address(this)))),
            bytes32(uint256(65)),
            uint8(0),
            uint256(32),
            bytes32(uint256(uint160(address(msg.sender))))
        );
    }

    function isValidSignature(
        bytes memory _data,
        bytes memory _signature
    ) public view returns (bytes4 magicValue) {
        return EIP1271_MAGIC_VALUE;
    }
}