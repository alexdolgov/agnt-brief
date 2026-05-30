// Sources flattened with hardhat v2.22.5 https://hardhat.org

// SPDX-License-Identifier: MIT

// File @openzeppelin/contracts/utils/Context.sol@v5.0.2

// Original license: SPDX_License_Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.1) (utils/Context.sol)

pragma solidity ^0.8.20;

/**
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
        return msg.data;
    }

    function _contextSuffixLength() internal view virtual returns (uint256) {
        return 0;
    }
}


// File @openzeppelin/contracts/access/Ownable.sol@v5.0.2

// Original license: SPDX_License_Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (access/Ownable.sol)

pragma solidity ^0.8.20;

/**
 * @dev Contract module which provides a basic access control mechanism, where
 * there is an account (an owner) that can be granted exclusive access to
 * specific functions.
 *
 * The initial owner is set to the address provided by the deployer. This can
 * later be changed with {transferOwnership}.
 *
 * This module is used through inheritance. It will make available the modifier
 * `onlyOwner`, which can be applied to your functions to restrict their use to
 * the owner.
 */
abstract contract Ownable is Context {
    address private _owner;

    /**
     * @dev The caller account is not authorized to perform an operation.
     */
    error OwnableUnauthorizedAccount(address account);

    /**
     * @dev The owner is not a valid owner account. (eg. `address(0)`)
     */
    error OwnableInvalidOwner(address owner);

    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);

    /**
     * @dev Initializes the contract setting the address provided by the deployer as the initial owner.
     */
    constructor(address initialOwner) {
        if (initialOwner == address(0)) {
            revert OwnableInvalidOwner(address(0));
        }
        _transferOwnership(initialOwner);
    }

    /**
     * @dev Throws if called by any account other than the owner.
     */
    modifier onlyOwner() {
        _checkOwner();
        _;
    }

    /**
     * @dev Returns the address of the current owner.
     */
    function owner() public view virtual returns (address) {
        return _owner;
    }

    /**
     * @dev Throws if the sender is not the owner.
     */
    function _checkOwner() internal view virtual {
        if (owner() != _msgSender()) {
            revert OwnableUnauthorizedAccount(_msgSender());
        }
    }

    /**
     * @dev Leaves the contract without owner. It will not be possible to call
     * `onlyOwner` functions. Can only be called by the current owner.
     *
     * NOTE: Renouncing ownership will leave the contract without an owner,
     * thereby disabling any functionality that is only available to the owner.
     */
    function renounceOwnership() public virtual onlyOwner {
        _transferOwnership(address(0));
    }

    /**
     * @dev Transfers ownership of the contract to a new account (`newOwner`).
     * Can only be called by the current owner.
     */
    function transferOwnership(address newOwner) public virtual onlyOwner {
        if (newOwner == address(0)) {
            revert OwnableInvalidOwner(address(0));
        }
        _transferOwnership(newOwner);
    }

    /**
     * @dev Transfers ownership of the contract to a new account (`newOwner`).
     * Internal function without access restriction.
     */
    function _transferOwnership(address newOwner) internal virtual {
        address oldOwner = _owner;
        _owner = newOwner;
        emit OwnershipTransferred(oldOwner, newOwner);
    }
}


// File src/interfaces/IOstiumRegistry.sol

// Original license: SPDX_License_Identifier: MIT
pragma solidity ^0.8.24;

interface IOstiumRegistry {
    event DevUpdated(address a);
    event GovUpdated(address a);
    event ManagerUpdated(address a);
    event ContractRegistered(bytes32 name, address contractAddress);
    event ContractUpdated(bytes32 name, address contractAddress);
    event ContractUnregistered(bytes32 name, address contractAddress);

    error NullAddr();
    error WrongParams();
    error NotFound(bytes32 name);
    error HasAlreadyRole(address a);
    error NotGov(address a);
    error AlreadyRegistered(bytes32 name);
    error NotContract(address contractAddress);

    function gov() external view returns (address);
    function manager() external view returns (address);
    function dev() external view returns (address);
    function getContractAddress(bytes32) external view returns (address);
    function setGov(address) external;
    function setDev(address) external;
    function unregisterContract(bytes32) external;
    function unregisterContracts(bytes32[] memory) external;
    function registerContract(bytes32, address) external;
    function registerContracts(bytes32[] memory, address[] memory) external;
    function updateContract(bytes32 name, address contractAddress) external;
    function updateContracts(bytes32[] memory names, address[] memory contractAddresses) external;
}


// File src/OstiumRegistry.sol

// Original license: SPDX_License_Identifier: MIT

pragma solidity ^0.8.24;

contract OstiumRegistry is IOstiumRegistry, Ownable {
    address public gov;
    address public dev;
    address public manager;

    mapping(bytes32 => address) private contracts;

    modifier isContract(address _contract) {
        _isContract(_contract);
        _;
    }

    function _isContract(address _contract) internal view {
        uint256 size;
        assembly {
            size := extcodesize(_contract)
        }
        if (size == 0) {
            revert NotContract(_contract);
        }
    }

    modifier onlyGov() {
        _onlyGov();
        _;
    }

    function _onlyGov() internal view {
        if (msg.sender != gov) {
            revert NotGov(msg.sender);
        }
    }

    constructor(address _gov, address _dev, address _manager, address owner) Ownable(msg.sender) {
        setGov(_gov);
        setDev(_dev);
        setManager(_manager);
        _transferOwnership(owner);
    }

    function setGov(address _gov) public onlyOwner {
        if (_gov == address(0)) revert NullAddr();
        if (_gov == dev || _gov == manager || _gov == owner()) {
            revert HasAlreadyRole(_gov);
        }
        gov = _gov;
        emit GovUpdated(_gov);
    }

    function setDev(address _dev) public onlyOwner {
        if (_dev == address(0)) revert NullAddr();
        if (_dev == gov || _dev == manager || _dev == owner()) {
            revert HasAlreadyRole(_dev);
        }
        dev = _dev;
        emit DevUpdated(_dev);
    }

    function setManager(address _manager) public onlyOwner {
        if (_manager == address(0)) revert NullAddr();
        if (_manager == gov || _manager == dev || _manager == owner()) {
            revert HasAlreadyRole(_manager);
        }
        manager = _manager;
        emit ManagerUpdated(_manager);
    }

    function registerContract(bytes32 name, address contractAddress) public onlyGov isContract(contractAddress) {
        if (contracts[name] != address(0)) revert AlreadyRegistered(name);

        contracts[name] = contractAddress;

        emit ContractRegistered(name, contractAddress);
    }

    function registerContracts(bytes32[] memory names, address[] memory contractAddresses) external onlyGov {
        if (names.length != contractAddresses.length) revert WrongParams();

        for (uint256 i = 0; i < names.length; i++) {
            registerContract(names[i], contractAddresses[i]);
        }
    }

    function updateContract(bytes32 name, address contractAddress) public onlyGov isContract(contractAddress) {
        if (contracts[name] == address(0)) revert NotFound(name);

        contracts[name] = contractAddress;

        emit ContractUpdated(name, contractAddress);
    }

    function updateContracts(bytes32[] memory names, address[] memory contractAddresses) external onlyGov {
        if (names.length != contractAddresses.length) revert WrongParams();
        for (uint256 i = 0; i < names.length; i++) {
            updateContract(names[i], contractAddresses[i]);
        }
    }

    function unregisterContract(bytes32 name) public onlyGov {
        if (contracts[name] == address(0)) revert NotFound(name);
        emit ContractUnregistered(name, contracts[name]);
        delete contracts[name];
    }

    function unregisterContracts(bytes32[] memory names) external onlyGov {
        for (uint256 i = 0; i < names.length; i++) {
            unregisterContract(names[i]);
        }
    }

    function getContractAddress(bytes32 name) external view returns (address) {
        if (contracts[name] == address(0)) revert NotFound(name);
        return contracts[name];
    }
}