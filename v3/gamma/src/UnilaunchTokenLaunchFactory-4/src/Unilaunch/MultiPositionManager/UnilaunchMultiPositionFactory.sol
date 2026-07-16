// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.26;

import {IMultiPositionFactory} from "./interfaces/IMultiPositionFactory.sol";
import {IMultiPositionManager} from "./interfaces/IMultiPositionManager.sol";
import {UnilaunchMultiPositionDeployer} from "./UnilaunchMultiPositionDeployer.sol";
import {UnilaunchMultiPositionManager} from "./UnilaunchMultiPositionManager.sol";
import {IPoolManager} from "v4-core/interfaces/IPoolManager.sol";
import {PoolKey} from "v4-core/types/PoolKey.sol";
import {PoolId, PoolIdLibrary} from "v4-core/types/PoolId.sol";
import {Currency} from "v4-core/types/Currency.sol";
import {StateLibrary} from "v4-core/libraries/StateLibrary.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {Multicall} from "./base/Multicall.sol";

contract UnilaunchMultiPositionFactory is IMultiPositionFactory, Ownable, Multicall {
    using PoolIdLibrary for PoolKey;
    using StateLibrary for IPoolManager;

    // Role constants
    bytes32 public constant override CLAIM_MANAGER = keccak256("CLAIM_MANAGER");
    bytes32 public constant FEE_MANAGER = keccak256("FEE_MANAGER");

    // Role storage
    mapping(bytes32 => mapping(address => bool)) private _roles;
    // Aggregator allowlist (enum index -> router)
    mapping(uint8 => address) public override aggregatorAddress;

    // Deployed managers tracking
    mapping(address => ManagerInfo) public managers;
    // Track managers by owner
    mapping(address => address[]) public managersByOwner;
    // Track all managers for pagination
    address[] private allManagers;
    // Track managers by token pair (key = keccak256(currency0, currency1))
    mapping(bytes32 => address[]) private _managersByTokenPair;
    // Track all unique token pairs
    TokenPairInfo[] private _allTokenPairs;
    /// @dev Maps pairKey to index+1 in _allTokenPairs (0 = doesn't exist)
    mapping(bytes32 => uint256) private _tokenPairIndex;

    // Protocol fee recipient
    address public feeRecipient;

    // Protocol fee (denominator for fee calculation, e.g., 10 = 10%, 20 = 5%)
    uint16 public protocolFee = 4;

    // Pool manager for all deployments
    IPoolManager public immutable poolManager;

    // Deployer contract for MultiPositionManager
    UnilaunchMultiPositionDeployer public immutable deployer;

    address public orderBookFactory;
    bool public orderBookFactorySet;

    uint256 public lockDuration = 180 days;
    uint24 public minTicksLeftInitial = 100000;
    uint24 public minTicksRightInitial = 100000;
    uint24 public minLimitWidthInitial = 50000;
    uint24 public minTicksLeftAfter = 5000;
    uint24 public minTicksRightAfter = 5000;
    uint24 public minLimitWidthAfter = 1000;
    uint32 public twapSeconds = 30;
    uint24 public maxTwapTickDelta = 1000;

    // Custom errors
    error UnauthorizedAccess();
    error UnauthorizedCaller();
    error OrderBookFactoryAlreadySet();
    error ManagerAlreadyExists();
    error InvalidAddress();
    error InitializationFailed();
    error InvalidFee();
    error InsufficientMsgValue();
    error PoolNotInitialized();
    error InvalidSqrtPriceX96();
    error MPMAlreadyInitialized();
    error InvalidAmount();

    constructor(address _owner, IPoolManager _poolManager) Ownable(_owner) {
        if (_owner == address(0)) revert InvalidAddress();
        if (address(_poolManager) == address(0)) revert InvalidAddress();
        feeRecipient = _owner; // Initialize fee recipient to owner
        poolManager = _poolManager;
        deployer = new UnilaunchMultiPositionDeployer(address(this));
    }

    modifier onlyOrderBookFactory() {
        if (msg.sender != orderBookFactory) revert UnauthorizedCaller();
        _;
    }

    function setOrderBookFactory(address newOrderBookFactory) external onlyOwner {
        if (newOrderBookFactory == address(0)) revert InvalidAddress();
        if (orderBookFactorySet) revert OrderBookFactoryAlreadySet();
        orderBookFactory = newOrderBookFactory;
        orderBookFactorySet = true;
    }

    /**
     * @notice Checks if an account has a specific role or is the owner
     * @param role The role to check
     * @param account The account to check
     * @return True if the account has the role or is the owner
     */
    function hasRoleOrOwner(bytes32 role, address account) external view override returns (bool) {
        return account == owner() || _roles[role][account];
    }

    /**
     * @notice Checks if an account has a specific role
     * @param role The role to check
     * @param account The account to check
     * @return True if the account has the role
     */
    function hasRole(bytes32 role, address account) external view override returns (bool) {
        return _roles[role][account];
    }

    /**
     * @notice Grants a role to an account
     * @param role The role to grant
     * @param account The account to grant the role to
     */
    function grantRole(bytes32 role, address account) external override onlyOwner {
        if (account == address(0)) revert InvalidAddress();
        if (!_roles[role][account]) {
            _roles[role][account] = true;
            emit RoleGranted(role, account, msg.sender);
        }
    }

    /**
     * @notice Revokes a role from an account
     * @param role The role to revoke
     * @param account The account to revoke the role from
     */
    function revokeRole(bytes32 role, address account) external override onlyOwner {
        if (_roles[role][account]) {
            _roles[role][account] = false;
            emit RoleRevoked(role, account, msg.sender);
        }
    }

    /**
     * @notice Deploys a new MultiPositionManager
     * @param poolKey The pool key for the Uniswap V4 pool
     * @param managerOwner The owner of the new MultiPositionManager
     * @param name The name for the LP token
     * @return The address of the deployed MultiPositionManager
     */
    function deployMultiPositionManager(PoolKey memory poolKey, address managerOwner, string memory name)
        external
        onlyOrderBookFactory
        returns (address)
    {
        return _deployMultiPositionManager(poolKey, managerOwner, name);
    }

    function _deployMultiPositionManager(PoolKey memory poolKey, address managerOwner, string memory name)
        internal
        returns (address)
    {
        if (managerOwner == address(0)) revert InvalidAddress();

        address predicted = _computeAddress(poolKey, managerOwner, name);
        if (predicted.code.length > 0) {
            _validateExistingManager(predicted, poolKey, managerOwner);
            return predicted;
        }

        // Generate deterministic salt for CREATE2
        // Include name to ensure unique deployments for same poolKey/owner with different names
        bytes32 salt = keccak256(abi.encode(poolKey, managerOwner, name));

        // Use fixed symbol for all deployments
        string memory symbol = "UNILAUNCH-LP";

        // Deploy using deployer contract
        address managerAddress = deployer.deploy(
            poolManager,
            poolKey,
            managerOwner,
            address(this), // factory address
            name,
            symbol,
            protocolFee,
            salt
        );

        // Store manager info in mapping
        managers[managerAddress] =
            ManagerInfo({managerAddress: managerAddress, managerOwner: managerOwner, poolKey: poolKey, name: name});

        // Track manager by owner
        managersByOwner[managerOwner].push(managerAddress);

        // Track in global list
        allManagers.push(managerAddress);

        // Track by token pair
        address currency0 = Currency.unwrap(poolKey.currency0);
        address currency1 = Currency.unwrap(poolKey.currency1);
        bytes32 pairKey = keccak256(abi.encodePacked(currency0, currency1));
        _managersByTokenPair[pairKey].push(managerAddress);

        // Track unique token pair if new (O(1) lookup via index+1 pattern)
        uint256 indexPlusOne = _tokenPairIndex[pairKey];
        if (indexPlusOne == 0) {
            // New pair - store index+1 before pushing
            _tokenPairIndex[pairKey] = _allTokenPairs.length + 1;
            _allTokenPairs.push(TokenPairInfo({currency0: currency0, currency1: currency1, managerCount: 1}));
        } else {
            // Existing pair - direct O(1) access
            _allTokenPairs[indexPlusOne - 1].managerCount++;
        }

        emit MultiPositionManagerDeployed(managerAddress, managerOwner, poolKey);

        return managerAddress;
    }

    function _validateExistingManager(address managerAddress, PoolKey memory poolKey, address managerOwner)
        private
        view
    {
        IMultiPositionManager existing = IMultiPositionManager(managerAddress);
        if (existing.factory() != address(this)) revert ManagerAlreadyExists();
        if (!_poolKeysEqual(existing.poolKey(), poolKey)) revert ManagerAlreadyExists();
        if (Ownable(managerAddress).owner() != managerOwner) revert ManagerAlreadyExists();
    }

    function _poolKeysEqual(PoolKey memory a, PoolKey memory b) private pure returns (bool) {
        return Currency.unwrap(a.currency0) == Currency.unwrap(b.currency0)
            && Currency.unwrap(a.currency1) == Currency.unwrap(b.currency1)
            && a.fee == b.fee
            && a.tickSpacing == b.tickSpacing
            && address(a.hooks) == address(b.hooks);
    }

    /**
     * @notice Atomically deploys MPM, deposits liquidity, and rebalances to strategy
     * @param poolKey The pool key for the Uniswap V4 pool
     * @param managerOwner The owner of the new MultiPositionManager (also receives LP shares)
     * @param name The name for the LP token
     * @param deposit0Desired Amount of token0 to deposit
     * @param deposit1Desired Amount of token1 to deposit
     * @param inMin Minimum amounts for slippage protection
     * @param rebalanceParams Strategy and rebalance parameters
     * @return mpm The address of the deployed and initialized MultiPositionManager
     * @dev LP shares are always minted to managerOwner
     */
    function deployDepositAndRebalance(
        PoolKey memory poolKey,
        address managerOwner,
        string memory name,
        uint256 deposit0Desired,
        uint256 deposit1Desired,
        address to,
        uint256[2][] memory inMin,
        IMultiPositionManager.RebalanceParams memory rebalanceParams
    ) external payable onlyOrderBookFactory returns (address mpm) {
        // Input validation
        if (managerOwner == address(0)) revert InvalidAddress();
        if (to == address(0)) revert InvalidAddress();

        address predicted = _computeAddress(poolKey, managerOwner, name);
        if (predicted.code.length > 0) {
            _ensureFreshManager(predicted);
        }

        // Deploy MPM (idempotent if already deployed at predicted address)
        mpm = _deployMultiPositionManager(poolKey, managerOwner, name);

        // Deposit liquidity (Factory can call because it's s.factory in MPM)
        // Tokens pulled from msg.sender (user), shares minted to 'to'
        UnilaunchMultiPositionManager(payable(mpm)).deposit{value: msg.value}(
            deposit0Desired,
            deposit1Desired,
            to,
            msg.sender // from = msg.sender (the user calling this function)
        );

        // Rebalance to strategy (Factory can call because it's s.factory in MPM)
        UnilaunchMultiPositionManager(payable(mpm)).rebalance(
            rebalanceParams,
            new uint256[2][](0), // outMin - empty for initial rebalance
            inMin // inMin from deposit
        );

        return mpm;
    }

    /**
     * @notice Deploy MPM, deposit, and rebalance with swap in one atomic transaction
     * @dev Enables single-token deposits by swapping to achieve strategy's target ratio
     * @param poolKey The pool key for the Uniswap V4 pool
     * @param managerOwner The owner of the new MultiPositionManager (also receives LP shares)
     * @param name The name of the LP token
     * @param deposit0Desired Amount of token0 to deposit (can be 0)
     * @param deposit1Desired Amount of token1 to deposit (can be 0)
     * @param swapParams Complete swap parameters (aggregator, calldata, amounts, etc.)
     * @param inMin Minimum amounts for each position (slippage protection)
     * @param rebalanceParams Rebalance parameters (strategy, center, ticks, weights, etc.)
     * @return mpm Address of the deployed MultiPositionManager
     * @dev LP shares are always minted to managerOwner
     */
    /**
     * @notice Computes the address where a MultiPositionManager will be deployed
     * @param poolKey The pool key for the Uniswap V4 pool
     * @param managerOwner The owner of the new MultiPositionManager
     * @param name The name of the LP token
     * @return The address where the MultiPositionManager will be deployed
     */
    function computeAddress(PoolKey memory poolKey, address managerOwner, string memory name)
        external
        view
        returns (address)
    {
        return _computeAddress(poolKey, managerOwner, name);
    }

    function _computeAddress(PoolKey memory poolKey, address managerOwner, string memory name)
        private
        view
        returns (address)
    {
        // Use fixed symbol for all deployments
        string memory symbol = "UNILAUNCH-LP";
        // Use the same salt calculation as deployMultiPositionManager
        // Include name to ensure unique deployments for same poolKey/owner with different names
        bytes32 salt = keccak256(abi.encode(poolKey, managerOwner, name));

        // Delegate to deployer which has access to the bytecode
        return
            deployer.computeAddress(poolManager, poolKey, managerOwner, address(this), name, symbol, protocolFee, salt);
    }

    function _ensureFreshManager(address managerAddress) private view {
        IMultiPositionManager existing = IMultiPositionManager(managerAddress);
        if (existing.totalSupply() != 0) revert MPMAlreadyInitialized();
        if (existing.basePositionsLength() != 0 || existing.limitPositionsLength() != 0) {
            revert MPMAlreadyInitialized();
        }
        (address strategy,,,,,,,,,) = existing.lastStrategyParams();
        if (strategy != address(0)) revert MPMAlreadyInitialized();
    }

    /**
     * @notice Gets all managers owned by a specific address
     * @param managerOwner The owner address to query
     * @return Array of ManagerInfo for all managers owned by the address
     */
    function getManagersByOwner(address managerOwner) external view returns (ManagerInfo[] memory) {
        address[] memory ownerManagers = managersByOwner[managerOwner];
        ManagerInfo[] memory result = new ManagerInfo[](ownerManagers.length);

        for (uint256 i = 0; i < ownerManagers.length; i++) {
            address managerAddress = ownerManagers[i];
            result[i] = managers[managerAddress];
            result[i].managerAddress = managerAddress;
        }

        return result;
    }

    /**
     * @notice Get all deployed managers with pagination
     * @param offset Starting index in the global manager list
     * @param limit Maximum number of managers to return (0 for all remaining)
     * @return managersInfo Array of ManagerInfo structs
     * @return totalCount Total number of deployed managers
     */
    function getAllManagersPaginated(uint256 offset, uint256 limit)
        external
        view
        returns (ManagerInfo[] memory managersInfo, uint256 totalCount)
    {
        totalCount = allManagers.length;

        if (limit == 0) {
            limit = totalCount; // 0 means return all managers
        }

        if (offset >= totalCount) {
            return (new ManagerInfo[](0), totalCount);
        }

        uint256 count = (offset + limit > totalCount) ? (totalCount - offset) : limit;

        managersInfo = new ManagerInfo[](count);

        for (uint256 i = 0; i < count; i++) {
            address managerAddress = allManagers[offset + i];
            managersInfo[i] = managers[managerAddress];
            managersInfo[i].managerAddress = managerAddress;
        }

        return (managersInfo, totalCount);
    }

    /**
     * @notice Get the total number of deployed managers
     * @return The total count of deployed managers
     */
    function getTotalManagersCount() external view returns (uint256) {
        return allManagers.length;
    }

    /**
     * @notice Checks if a pool has been initialized in the PoolManager
     * @param poolKey The pool key to check
     * @return initialized True if the pool has been initialized (sqrtPriceX96 != 0)
     */
    function isPoolInitialized(PoolKey memory poolKey) public view returns (bool initialized) {
        PoolId poolId = poolKey.toId();
        (uint160 sqrtPriceX96,,,) = poolManager.getSlot0(poolId);
        return sqrtPriceX96 != 0;
    }

    /**
     * @notice Initializes a pool if it hasn't been initialized yet
     * @param poolKey The pool key to initialize
     * @param sqrtPriceX96 The initial sqrt price (Q64.96 format)
     * @return tick The initial tick of the pool
     * @dev Reverts if sqrtPriceX96 is 0 or if pool is already initialized
     *      Marked payable for multicall compatibility - msg.value persists across delegatecalls.
     *      Does not consume msg.value; it just needs to accept it to prevent multicall reverts.
     */
    function initializePoolIfNeeded(PoolKey memory poolKey, uint160 sqrtPriceX96)
        external
        payable
        returns (int24 tick)
    {
        if (sqrtPriceX96 == 0) revert InvalidSqrtPriceX96();

        if (!isPoolInitialized(poolKey)) {
            tick = poolManager.initialize(poolKey, sqrtPriceX96);
        } else {
            // Pool already initialized, return current tick
            PoolId poolId = poolKey.toId();
            (, tick,,) = poolManager.getSlot0(poolId);
        }
    }

    /**
     * @notice Sets the protocol fee recipient
     * @param _feeRecipient The new fee recipient address
     */
    function setFeeRecipient(address _feeRecipient) external onlyOwner {
        if (_feeRecipient == address(0)) revert InvalidAddress();
        feeRecipient = _feeRecipient;
    }

    function setLockDuration(uint256 newDuration) external onlyOwner {
        lockDuration = newDuration;
    }

    function setMinTicksInitial(uint24 left, uint24 right, uint24 limitWidth) external onlyOwner {
        minTicksLeftInitial = left;
        minTicksRightInitial = right;
        minLimitWidthInitial = limitWidth;
    }

    function setMinTicksAfter(uint24 left, uint24 right, uint24 limitWidth) external onlyOwner {
        minTicksLeftAfter = left;
        minTicksRightAfter = right;
        minLimitWidthAfter = limitWidth;
    }

    function setTwapConfig(uint32 newTwapSeconds, uint24 newMaxTickDelta) external onlyOwner {
        if (newTwapSeconds == 0) revert InvalidAmount();
        if (newMaxTickDelta == 0) revert InvalidAmount();
        twapSeconds = newTwapSeconds;
        maxTwapTickDelta = newMaxTickDelta;
    }

    /**
     * @notice Sets the protocol fee for all new deployments
     * @param _fee The new protocol fee denominator (e.g., 10 = 10%)
     */
    function setProtocolFee(uint16 _fee) external onlyOwner {
        if (_fee == 0) revert InvalidFee();
        protocolFee = _fee;
    }

    /**
     * @notice Set the approved router for a swap aggregator
     * @param aggregator Aggregator enum index
     * @param router Approved router address
     */
    function setAggregatorAddress(uint8 aggregator, address router) external onlyOwner {
        if (router == address(0)) revert InvalidAddress();
        aggregatorAddress[aggregator] = router;
    }

    /**
     * @notice Get all unique token pairs with pagination
     * @param offset Starting index in the token pairs list
     * @param limit Maximum number of pairs to return (0 for all remaining)
     * @return pairsInfo Array of TokenPairInfo structs with currency addresses and manager counts
     * @return totalCount Total number of unique token pairs
     */
    function getAllTokenPairsPaginated(uint256 offset, uint256 limit)
        external
        view
        returns (TokenPairInfo[] memory pairsInfo, uint256 totalCount)
    {
        totalCount = _allTokenPairs.length;

        if (limit == 0) {
            limit = totalCount;
        }

        if (offset >= totalCount) {
            return (new TokenPairInfo[](0), totalCount);
        }

        uint256 count = (offset + limit > totalCount) ? (totalCount - offset) : limit;

        pairsInfo = new TokenPairInfo[](count);

        for (uint256 i = 0; i < count; i++) {
            pairsInfo[i] = _allTokenPairs[offset + i];
        }

        return (pairsInfo, totalCount);
    }

    /**
     * @notice Get all managers for a specific token pair with pagination
     * @param currency0 The first currency address (token0)
     * @param currency1 The second currency address (token1)
     * @param offset Starting index in the managers list for this pair
     * @param limit Maximum number of managers to return (0 for all remaining)
     * @return managersInfo Array of ManagerInfo structs
     * @return totalCount Total number of managers for this token pair
     */
    function getAllManagersByTokenPair(address currency0, address currency1, uint256 offset, uint256 limit)
        external
        view
        returns (ManagerInfo[] memory managersInfo, uint256 totalCount)
    {
        bytes32 pairKey = keccak256(abi.encodePacked(currency0, currency1));
        address[] storage pairManagers = _managersByTokenPair[pairKey];
        totalCount = pairManagers.length;

        if (limit == 0) {
            limit = totalCount;
        }

        if (offset >= totalCount) {
            return (new ManagerInfo[](0), totalCount);
        }

        uint256 count = (offset + limit > totalCount) ? (totalCount - offset) : limit;

        managersInfo = new ManagerInfo[](count);

        for (uint256 i = 0; i < count; i++) {
            address managerAddress = pairManagers[offset + i];
            managersInfo[i] = managers[managerAddress];
            managersInfo[i].managerAddress = managerAddress;
        }

        return (managersInfo, totalCount);
    }
}
