// SPDX-License-Identifier: AGPL-3.0
pragma solidity ^0.8.18;

import {IStrategyInterface} from "../interfaces/IStrategyInterface.sol";
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

contract Deployments {
    address public constant SAFE_PROXY_FACTORY = 0xa6B71E26C5e0845f74c812102Ca7114b6a896AB2;
    address public constant SAFE_IMPL = 0xd9Db270c1B5E3Bd161E8c8503c55cEABeE709552;
    address public constant SAFE_L2 = address(0);
    address public constant SAFE_L2_SINGLETON = address(0);
    address public constant SAFE_PAYMENT_RECEIVER = address(0);
    address public constant COMPAT_FALLBACK = 0xf48f2B2d2a534e402487b3ee7C18c33Aec0Fe5e4;
    address public constant MODULE_PROXY_FACTORY = 0x000000000000aDdB49795b0f9bA5BC298cDda236;
    address public constant DELAY_MODULE_IMPL = 0xd54895B1121A2eE3f37b502F507631FA1331BED6;
    address public constant ROLES_MODULE_IMPL = 0x52BcB5C9408ffC5C7D7510e16F75A54c56D3Bc84;
    address public constant DEAD_OWNER = 0x000000000000000000000000000000000000dEaD;
    uint256 public constant CHAIN_ID = 1;
}

struct DeploySafeParams {
    address proposer;
    address strategy;
    address governor;
    address[] vaultGovernors;
    uint256 delayCooldown;
    uint256 delayExpiration;
}

contract StrategyGovDeployer is Deployments {
    event SafesDeployed(
        address strategy, 
        address dao, 
        address proposer, 
        address ownerless, 
        address roles, 
        address delay
    );

    bytes4 internal constant EIP1271_MAGIC_VALUE = 0x20c13b0b;
    bytes4 internal constant ACCEPT_GOVERNOR_SELECTOR = bytes4(0xe58bb639);
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

        IStrategyInterface(params.strategy).acceptGovernor();

        // Create safes
        address[] memory owners = new address[](1);
        owners[0] = address(this);
        
        address proposerSafe = _deployProposerSafe(owners);
        address ownerlessSafe = _deployOwnerlessSafe(owners);

        // Setup strategy governance
        _setupStrategyGovernance(params.strategy, ownerlessSafe);

        // Deploy and setup modules
        (address rolesModule, address delayModule) = _setupModules(
            ownerlessSafe,
            params.governor,
            params.vaultGovernors,
            params.delayCooldown,
            params.delayExpiration,
            proposerSafe
        );

        // Final ownership transfers
        _swapOwner(proposerSafe, params.proposer);
        _swapOwner(ownerlessSafe, DEAD_OWNER);

        emit SafesDeployed(
            params.strategy,
            params.governor,
            proposerSafe,
            ownerlessSafe,
            rolesModule,
            delayModule
        );
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

    function _setupStrategyGovernance(address strategy, address ownerlessSafe) internal {
        IStrategyInterface(strategy).setPendingGovernor(ownerlessSafe);
        bytes memory acceptGovernorSelector = abi.encodePacked(ACCEPT_GOVERNOR_SELECTOR);

        ISafe(ownerlessSafe).execTransaction(
            strategy,
            0,
            acceptGovernorSelector,
            ISafe.Operation.Call,
            0,
            0,
            0,
            address(0),
            payable(address(0)),
            _getSignature()
        );
    }

    function _setupModules(
        address ownerlessSafe,
        address governor,
        address[] calldata vaultGovernors,
        uint256 delayCooldown,
        uint256 delayExpiration,
        address proposerSafe
    ) internal returns (address rolesModule, address delayModule) {
        rolesModule = _deployModule(
            ROLES_MODULE_IMPL,
            abi.encodeWithSelector(
                IRoles.setUp.selector,
                abi.encode(ownerlessSafe, ownerlessSafe, ownerlessSafe)
            ),
            saltNonce++
        );

        _enableModule(ownerlessSafe, ownerlessSafe, address(rolesModule));

        delayModule = _deployModule(
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

        _configureModules(
            ownerlessSafe, 
            rolesModule, 
            delayModule, 
            governor, 
            vaultGovernors,
            proposerSafe
        );

        return (rolesModule, delayModule);
    }

    function _configureModules(
        address ownerlessSafe,
        address rolesModule,
        address delayModule,
        address governor,
        address[] calldata vaultGovernors,
        address proposerSafe
    ) internal {
        _enableModule(ownerlessSafe, ownerlessSafe, delayModule);
        _enableModule(ownerlessSafe, delayModule, proposerSafe);

        _setupModulePermissions(ownerlessSafe, rolesModule, delayModule);
        _setupGovernorPermissions(ownerlessSafe, rolesModule, governor, vaultGovernors);
    }

    function _setupModulePermissions(
        address ownerlessSafe,
        address rolesModule,
        address delayModule
    ) internal {
        _callModuleFunc(
            ownerlessSafe,
            delayModule,
            abi.encodeWithSelector(
                IDelay.transferOwnership.selector,
                address(rolesModule)
            )
        );

        _callModuleFunc(
            ownerlessSafe,
            address(rolesModule),
            abi.encodeWithSelector(
                IRoles.scopeAllowFunction.selector,
                1,
                delayModule,
                IDelay.setTxNonce.selector,
                IRoles.ExecutionOptions.None
            )
        );

        _callModuleFunc(
            ownerlessSafe,
            address(rolesModule),
            abi.encodeWithSelector(
                IRoles.allowTarget.selector,
                1,
                delayModule,
                IRoles.ExecutionOptions.None
            )
        );
    }

    function _setupGovernorPermissions(
        address ownerlessSafe,
        address rolesModule,
        address governor,
        address[] calldata vaultGovernors
    ) internal {
        uint16[] memory daoRoles = new uint16[](1);
        bool[] memory roleMembers = new bool[](1);
        daoRoles[0] = 1;
        roleMembers[0] = true;
        if (governor != address(0)) {
            _callModuleFunc(
                ownerlessSafe,
                address(rolesModule),
                abi.encodeWithSelector(ISafe.enableModule.selector, governor)
            );
            _assignRoles(ownerlessSafe, rolesModule, governor, daoRoles, roleMembers);
        }
      

        for (uint256 i = 0; i < vaultGovernors.length; i++) {
            _callModuleFunc(
                ownerlessSafe,
                address(rolesModule),
                abi.encodeWithSelector(ISafe.enableModule.selector, vaultGovernors[i])
            );
            _assignRoles(ownerlessSafe, rolesModule, vaultGovernors[i], daoRoles, roleMembers);
        }
    }

    function _assignRoles(
        address ownerlessSafe,
        address rolesModule,
        address target,
        uint16[] memory daoRoles,
        bool[] memory roleMembers
    ) internal {
        _callModuleFunc(
            ownerlessSafe,
            address(rolesModule),
            abi.encodeWithSelector(
                IRoles.assignRoles.selector,
                target,
                daoRoles,
                roleMembers
            )
        );
    }

    // Helper functions
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