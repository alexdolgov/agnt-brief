pragma solidity ^0.8.20;

// node_modules/@openzeppelin/contracts/utils/Context.sol

// OpenZeppelin Contracts (last updated v5.0.1) (utils/Context.sol)

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

// node_modules/@openzeppelin/contracts/access/Ownable.sol

// OpenZeppelin Contracts (last updated v5.0.0) (access/Ownable.sol)

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

// contracts/DragonswapStakerFactory.sol

contract DragonswapStakerFactory is Ownable {
    enum Impl {
        NONE,
        CLASSIC,
        BOOSTED
    }

    // Type of contracts deployed by factory
    mapping(address => Impl) public deploymentToImplType;
    // Array of all sale deployments
    address[] public deployments;
    // Classic staker contract implementation
    address public implClassic;
    // Boosted staker contract implementation
    address public implBoosted;

    // Events
    event Deployed(
        address indexed instance,
        Impl indexed impType,
        address indexed rewardToken,
        address boosterToken,
        uint256 rewardPerSecond,
        uint256 startTimestamp
    );
    event ImplementationSet(address implementation, Impl impType);

    // Errors
    error CloneCreationFailed();
    error ImplementationNotSet();
    error ImplementationAlreadySet();
    error InvalidIndexRange();

    constructor(address owner_) Ownable(owner_) {}

    /**
     * @dev Function to set new classic staker implementation
     */
    function setImplementationClassic(address implementation) external onlyOwner {
        // Require that implementation is different from current one
        if (implClassic == implementation) {
            revert ImplementationAlreadySet();
        }
        // Set new implementation
        implClassic = implementation;
        // Emit relevant event
        emit ImplementationSet(implementation, Impl.CLASSIC);
    }

    /**
     * @dev Function to set new boosted staker implementation
     */
    function setImplementationBoosted(address implementation) external onlyOwner {
        // Require that implementation is different from current one
        if (implBoosted == implementation) {
            revert ImplementationAlreadySet();
        }
        // Set new implementation
        implBoosted = implementation;
        // Emit relevant event
        emit ImplementationSet(implementation, Impl.BOOSTED);
    }

    /**
     * @dev Deployment wrapper for classic staker implementation
     */
    function deployClassic(address rewardToken, uint256 rewardPerSecond, uint256 startTimestamp) external onlyOwner {
        bytes memory data = abi.encodeWithSignature(
            "initialize(address,address,uint256,uint256)",
            owner(),
            rewardToken,
            rewardPerSecond,
            startTimestamp
        );
        address instance = deploy(data, Impl.CLASSIC);
        emit Deployed(instance, Impl.CLASSIC, rewardToken, address(0), rewardPerSecond, startTimestamp);
    }

    /**
     * @dev Deployment wrapper for boosted staker implementation
     */
    function deployBoosted(
        address rewardToken,
        address boosterToken,
        uint256 rewardPerSecond,
        uint256 startTimestamp
    ) external onlyOwner {
        bytes memory data = abi.encodeWithSignature(
            "initialize(address,address,address,uint256,uint256)",
            owner(),
            rewardToken,
            boosterToken,
            rewardPerSecond,
            startTimestamp
        );
        address instance = deploy(data, Impl.BOOSTED);
        emit Deployed(instance, Impl.BOOSTED, rewardToken, boosterToken, rewardPerSecond, startTimestamp);
    }

    /**
     * @dev Function to make a new deployment and initialize clone instance
     */
    function deploy(bytes memory data, Impl implType) private returns (address instance) {
        address impl = implType == Impl.CLASSIC
            ? implClassic
            : implType == Impl.BOOSTED
                ? implBoosted
                : address(0);

        // Require that implementation is set
        if (impl == address(0)) {
            revert ImplementationNotSet();
        }

        /// @solidity memory-safe-assembly
        assembly {
            // Cleans the upper 96 bits of the `implementation` word, then packs the first 3 bytes
            // of the `implementation` address with the bytecode before the address.
            mstore(0x00, or(shr(0xe8, shl(0x60, impl)), 0x3d602d80600a3d3981f3363d3d373d3d3d363d73000000))
            // Packs the remaining 17 bytes of `implementation` with the bytecode after the address.
            mstore(0x20, or(shl(0x78, impl), 0x5af43d82803e903d91602b57fd5bf3))
            instance := create(0, 0x09, 0x37)
        }
        // Require that clone is created
        if (instance == address(0)) {
            revert CloneCreationFailed();
        }

        // Mark sale as created through official factory
        deploymentToImplType[instance] = implType;
        // Add sale to allSales
        deployments.push(instance);

        // Initialize
        if (data.length > 0) {
            (bool success, ) = instance.call{value: msg.value}(data);
            if (!success) revert();
        }
    }

    /**
     * @dev Function to retrieve total number of deployments made by this factory
     */
    function noOfDeployments() public view returns (uint256) {
        return deployments.length;
    }

    /**
     * @dev Function to retrieve the address of the latest deployment made by this factory
     * @return Latest deployment address
     */
    function getLatestDeployment() external view returns (address) {
        uint256 _noOfDeployments = noOfDeployments();
        if (_noOfDeployments > 0) return deployments[_noOfDeployments - 1];
        // Return zero address if no deployments were made
        return address(0);
    }

    /**
     * @dev Function to retrieve all deployments between indexes
     * @param startIndex First index
     * @param endIndex Last index
     * @return _deployments All deployments between provided indexes, inclusive
     */
    function getAllDeployments(
        uint256 startIndex,
        uint256 endIndex
    ) external view returns (address[] memory _deployments) {
        // Require valid index input
        if (endIndex < startIndex || endIndex >= deployments.length) {
            revert InvalidIndexRange();
        }
        // Initialize new array
        _deployments = new address[](endIndex - startIndex + 1);
        uint index = 0;
        // Fill the array with sale addresses
        for (uint i = startIndex; i <= endIndex; i++) {
            _deployments[index] = deployments[i];
            index++;
        }
    }

    /**
     * @dev See if a clone was deployed through this factory
     */
    function isDeployedThroughFactory(address deployment) external view returns (bool) {
        return uint8(deploymentToImplType[deployment]) > 0;
    }
}