// Sources flattened with hardhat v2.3.0 https://hardhat.org
// SPDX-License-Identifier: MIT
// File @openzeppelin/contracts/utils/Context.sol@v4.1.0

pragma solidity ^0.8.0;

/*
 * @dev Provides information about the current execution context, including the
 * sender of the transaction and its data. While these are generally available
 * via msg.sender and msg.data, they should not be accessed in such a direct
 * manner, since when dealing with meta-transactions the account sending and
 * paying for execution may not be the actual sender (as far as an application
 * is concerned).
 *
 * This contract is only required for intermediate, library-like contracts.
 */
abstract contract Context {
    function _msgSender() internal view virtual returns (address) {
        return msg.sender;
    }

    function _msgData() internal view virtual returns (bytes calldata) {
        this; // silence state mutability warning without generating bytecode - see https://github.com/ethereum/solidity/issues/2691
        return msg.data;
    }
}

// File @openzeppelin/contracts/access/Ownable.sol@v4.1.0

pragma solidity ^0.8.0;

/**
 * @dev Contract module which provides a basic access control mechanism, where
 * there is an account (an owner) that can be granted exclusive access to
 * specific functions.
 *
 * By default, the owner account will be the one that deploys the contract. This
 * can later be changed with {transferOwnership}.
 *
 * This module is used through inheritance. It will make available the modifier
 * `onlyOwner`, which can be applied to your functions to restrict their use to
 * the owner.
 */
abstract contract Ownable is Context {
    address private _owner;

    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);

    /**
     * @dev Initializes the contract setting the deployer as the initial owner.
     */
    constructor() {
        address msgSender = _msgSender();
        _owner = msgSender;
        emit OwnershipTransferred(address(0), msgSender);
    }

    /**
     * @dev Returns the address of the current owner.
     */
    function owner() public view virtual returns (address) {
        return _owner;
    }

    /**
     * @dev Throws if called by any account other than the owner.
     */
    modifier onlyOwner() {
        require(owner() == _msgSender(), "Ownable: caller is not the owner");
        _;
    }

    /**
     * @dev Leaves the contract without owner. It will not be possible to call
     * `onlyOwner` functions anymore. Can only be called by the current owner.
     *
     * NOTE: Renouncing ownership will leave the contract without an owner,
     * thereby removing any functionality that is only available to the owner.
     */
    function renounceOwnership() public virtual onlyOwner {
        emit OwnershipTransferred(_owner, address(0));
        _owner = address(0);
    }

    /**
     * @dev Transfers ownership of the contract to a new account (`newOwner`).
     * Can only be called by the current owner.
     */
    function transferOwnership(address newOwner) public virtual onlyOwner {
        require(newOwner != address(0), "Ownable: new owner is the zero address");
        emit OwnershipTransferred(_owner, newOwner);
        _owner = newOwner;
    }
}

// File @openzeppelin/contracts/proxy/utils/Initializable.sol@v4.1.0

// solhint-disable-next-line compiler-version
pragma solidity ^0.8.0;

/**
 * @dev This is a base contract to aid in writing upgradeable contracts, or any kind of contract that will be deployed
 * behind a proxy. Since a proxied contract can't have a constructor, it's common to move constructor logic to an
 * external initializer function, usually called `initialize`. It then becomes necessary to protect this initializer
 * function so it can only be called once. The {initializer} modifier provided by this contract will have this effect.
 *
 * TIP: To avoid leaving the proxy in an uninitialized state, the initializer function should be called as early as
 * possible by providing the encoded function call as the `_data` argument to {ERC1967Proxy-constructor}.
 *
 * CAUTION: When used with inheritance, manual care must be taken to not invoke a parent initializer twice, or to ensure
 * that all initializers are idempotent. This is not verified automatically as constructors are by Solidity.
 */
abstract contract Initializable {
    /**
     * @dev Indicates that the contract has been initialized.
     */
    bool private _initialized;

    /**
     * @dev Indicates that the contract is in the process of being initialized.
     */
    bool private _initializing;

    /**
     * @dev Modifier to protect an initializer function from being invoked twice.
     */
    modifier initializer() {
        require(_initializing || !_initialized, "Initializable: contract is already initialized");

        bool isTopLevelCall = !_initializing;
        if (isTopLevelCall) {
            _initializing = true;
            _initialized = true;
        }

        _;

        if (isTopLevelCall) {
            _initializing = false;
        }
    }
}

// File contracts/interfaces/IVault.sol

pragma solidity 0.8.4;

interface IVault {
    function owner() external view returns (address);

    function wantAddress() external view returns (address);

    function balanceInFarm() external view returns (uint256);

    function pending() external view returns (uint256);

    function abandoned() external view returns (bool);

    function initialize(
        address _owner,
        address _vaultPolicy,
        address _router,
        uint256 _vaultTemplateId
    ) external;

    function compound() external;

    function abandon() external;

    function deposit(uint256 _wantAmt) external returns (uint256);

    function withdraw(uint256 _wantAmt) external returns (uint256);

    function withdrawAll() external returns (uint256);

    function updateSlippage(uint256 _slippage) external;

    function rescueFund(address _token, uint256 _amount) external;

    function canAbandon() external returns (bool);

    function info()
        external
        view
        returns (
            uint256 _templateId,
            uint256 _balanceInFarm,
            uint256 _pendingRewards,
            bool _abandoned,
            bool _canDeposit,
            bool _canAbandon
        );
}

// File contracts/VaultFactory.sol

pragma solidity 0.8.4;

contract VaultFactory is Ownable, Initializable {
    struct VaultTemplate {
        bytes code;
        bytes arguments;
    }

    VaultTemplate[] public vaultTemplates;
    mapping(address => address[]) public userVaults;
    address public policy;
    address public router;

    // EVENTS

    event PolicySet(address _policy);
    event RouterSet(address _policy);
    event VaultAdded(address indexed _owner, address _vault);

    // CONSTRUCTORS

    function initialize(address _policy, address _router) external onlyOwner initializer {
        policy = _policy;
        router = _router;
    }

    // PUBLIC FUNCTIONS

    function createVault(uint256 _templateId) external returns (address _vault) {
        VaultTemplate storage _template = vaultTemplates[_templateId];
        bytes memory bytecode = _template.code;
        require(bytecode.length != 0, "vault is not supported");
        bytes memory arguments = _template.arguments;
        require(arguments.length != 0, "invalid vault arguments");

        bytecode = abi.encodePacked(bytecode, arguments);
        bytes32 salt = keccak256(abi.encodePacked(msg.sender, arguments, block.number));

        // solhint-disable no-inline-assembly
        assembly {
            _vault := create2(0, add(bytecode, 0x20), mload(bytecode), salt)
            if iszero(extcodesize(_vault)) {
                revert(0, 0)
            }
        }

        IVault(_vault).initialize(msg.sender, policy, router, _templateId);
        userVaults[msg.sender].push(_vault);
        emit VaultAdded(msg.sender, _vault);
    }

    // RESTRICTER FUNCTION

    function setPolicy(address _policy) external onlyOwner {
        require(_policy != address(0x0), "emptyAddress");
        require(_policy != policy, "unchanged");
        policy = _policy;
        emit PolicySet(_policy);
    }

    function setRouter(address _router) external onlyOwner {
        require(_router != address(0x0), "emptyAddress");
        require(_router != router, "unchanged");
        router = _router;
        emit RouterSet(_router);
    }

    function addTemplate(bytes calldata _code, bytes calldata _initArguments) external onlyOwner {
        VaultTemplate memory _template = VaultTemplate(_code, _initArguments);
        vaultTemplates.push(_template);
    }

    function removeTemplate(uint256 tid) external onlyOwner {
        vaultTemplates[tid] = VaultTemplate("", "");
    }
}
