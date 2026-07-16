// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

import { IMultiPositionFactory } from "./interfaces/IMultiPositionFactory.sol";
import { IMultiPositionManager } from "./interfaces/IMultiPositionManager.sol";
import { MultiPositionDeployer } from "./MultiPositionDeployer.sol";
import { MultiPositionManager } from "./MultiPositionManager.sol";
import { IPoolManager } from "v4-core/interfaces/IPoolManager.sol";
import { PoolKey } from "v4-core/types/PoolKey.sol";
import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";
import { RebalanceLogic } from "./lib/RebalanceLogic.sol";

contract MultiPositionFactory is IMultiPositionFactory, Ownable {
    // Role constants
    bytes32 public constant override CLAIM_MANAGER = keccak256("CLAIM_MANAGER");

    // Role storage
    mapping(bytes32 => mapping(address => bool)) private _roles;

    // Deployed managers tracking
    mapping(address => ManagerInfo) public managers;
    // Track managers by owner
    mapping(address => address[]) public managersByOwner;
    // Track all managers for pagination
    address[] private allManagers;
    // Track used names to prevent duplicates
    mapping(string => bool) private usedNames;

    // Protocol fee recipient
    address public feeRecipient;

    // Protocol fee (denominator for fee calculation, e.g., 10 = 10%)
    uint16 public protocolFee = 10;

    // Pool manager for all deployments
    IPoolManager public immutable poolManager;

    // Deployer contract for MultiPositionManager
    MultiPositionDeployer public immutable deployer;
    
    // Custom errors
    error UnauthorizedAccess();
    error ManagerAlreadyExists();
    error InvalidAddress();
    error InitializationFailed();
    error InvalidFee();
    error InsufficientMsgValue();
    error NameAlreadyUsed(string name);
    
    constructor(
        address _owner,
        IPoolManager _poolManager
    ) Ownable(_owner) {
        if (_owner == address(0)) revert InvalidAddress();
        if (address(_poolManager) == address(0)) revert InvalidAddress();
        feeRecipient = _owner; // Initialize fee recipient to owner
        poolManager = _poolManager;
        deployer = new MultiPositionDeployer();
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
    function deployMultiPositionManager(
        PoolKey memory poolKey,
        address managerOwner,
        string memory name
    ) external returns (address) {
        if (managerOwner == address(0)) revert InvalidAddress();

        // Check if name is already used
        if (usedNames[name]) revert NameAlreadyUsed(name);

        // Generate deterministic salt for CREATE2
        // Include name to ensure unique deployments for same poolKey/owner with different names
        bytes32 salt = keccak256(abi.encode(poolKey, managerOwner, name));

        // Use fixed symbol for all deployments
        string memory symbol = "GAMMA-LP";

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

        // Mark name as used
        usedNames[name] = true;

        // Store manager info in mapping
        managers[managerAddress] = ManagerInfo({
            managerAddress: managerAddress,
            managerOwner: managerOwner,
            poolKey: poolKey,
            name: name
        });

        // Track manager by owner
        managersByOwner[managerOwner].push(managerAddress);

        // Track in global list
        allManagers.push(managerAddress);
        
        emit MultiPositionManagerDeployed(
            managerAddress,
            managerOwner,
            poolKey
        );
        
        return managerAddress;
    }

    /**
     * @notice Atomically deploys MPM, deposits liquidity, and rebalances to strategy
     * @param poolKey The pool key for the Uniswap V4 pool
     * @param managerOwner The owner of the new MultiPositionManager
     * @param name The name for the LP token
     * @param deposit0Desired Amount of token0 to deposit
     * @param deposit1Desired Amount of token1 to deposit
     * @param to Address to receive LP shares
     * @param inMin Minimum amounts for slippage protection
     * @param rebalanceParams Strategy and rebalance parameters
     * @return mpm The address of the deployed and initialized MultiPositionManager
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
    ) external payable returns (address mpm) {
        // Input validation
        if (managerOwner == address(0)) revert InvalidAddress();
        if (to == address(0)) revert InvalidAddress();

        // Deploy MPM (call external function using 'this')
        mpm = this.deployMultiPositionManager(poolKey, managerOwner, name);

        // Deposit liquidity (Factory can call because it's s.factory in MPM)
        MultiPositionManager(payable(mpm)).deposit{value: msg.value}(
            deposit0Desired,
            deposit1Desired,
            to,
            msg.sender  // from = msg.sender (the user calling this function)
        );

        // Rebalance to strategy (Factory can call because it's s.factory in MPM)
        MultiPositionManager(payable(mpm)).rebalance(
            rebalanceParams,
            new uint256[2][](0),  // outMin - empty for initial rebalance
            inMin                 // inMin from deposit
        );

        return mpm;
    }

    /**
     * @notice Deploy MPM, deposit, and rebalance with swap in one atomic transaction
     * @dev Enables single-token deposits by swapping to achieve strategy's target ratio
     * @param poolKey The pool key for the Uniswap V4 pool
     * @param managerOwner The owner of the new MultiPositionManager
     * @param name The name of the LP token
     * @param deposit0Desired Amount of token0 to deposit (can be 0)
     * @param deposit1Desired Amount of token1 to deposit (can be 0)
     * @param to Address to receive the LP shares
     * @param swapParams Complete swap parameters (aggregator, calldata, amounts, etc.)
     * @param inMin Minimum amounts for each position (slippage protection)
     * @param rebalanceParams Rebalance parameters (strategy, center, ticks, weights, etc.)
     * @return mpm Address of the deployed MultiPositionManager
     */
    function deployDepositAndRebalanceSwap(
        PoolKey memory poolKey,
        address managerOwner,
        string memory name,
        uint256 deposit0Desired,
        uint256 deposit1Desired,
        address to,
        RebalanceLogic.SwapParams calldata swapParams,
        uint256[2][] memory inMin,
        IMultiPositionManager.RebalanceParams memory rebalanceParams
    ) external payable returns (address mpm) {
        // Input validation
        if (managerOwner == address(0)) revert InvalidAddress();
        if (to == address(0)) revert InvalidAddress();
        if (swapParams.aggregatorAddress == address(0)) revert InvalidAddress();

        // Deploy MPM (call external function using 'this')
        mpm = this.deployMultiPositionManager(poolKey, managerOwner, name);

        // Deposit liquidity (tokens will sit idle in MPM, no positions yet)
        MultiPositionManager(payable(mpm)).deposit{value: msg.value}(
            deposit0Desired,
            deposit1Desired,
            to,
            msg.sender  // from = msg.sender (the user calling this function)
        );

        // RebalanceSwap: swaps to target ratio + creates positions
        MultiPositionManager(payable(mpm)).rebalanceSwap(
            IMultiPositionManager.RebalanceSwapParams({
                rebalanceParams: rebalanceParams,
                swapParams: swapParams
            }),
            new uint256[2][](0),  // outMin empty (no positions to burn)
            inMin                 // inMin for new positions after swap
        );

        return mpm;
    }

    /**
     * @notice Computes the address where a MultiPositionManager will be deployed
     * @param poolKey The pool key for the Uniswap V4 pool
     * @param managerOwner The owner of the new MultiPositionManager
     * @param name The name of the LP token
     * @return The address where the MultiPositionManager will be deployed
     */
    function computeAddress(
        PoolKey memory poolKey,
        address managerOwner,
        string memory name
    ) external view returns (address) {
        // Use fixed symbol for all deployments
        string memory symbol = "GAMMA-LP";
        // Use the same salt calculation as deployMultiPositionManager
        // Include name to ensure unique deployments for same poolKey/owner with different names
        bytes32 salt = keccak256(abi.encode(poolKey, managerOwner, name));

        // Delegate to deployer which has access to the bytecode
        return deployer.computeAddress(
            poolManager,
            poolKey,
            managerOwner,
            address(this),
            name,
            symbol,
            protocolFee,
            salt
        );
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
    function getAllManagersPaginated(
        uint256 offset,
        uint256 limit
    ) external view returns (
        ManagerInfo[] memory managersInfo,
        uint256 totalCount
    ) {
        totalCount = allManagers.length;

        if (limit == 0) {
            limit = totalCount;  // 0 means return all managers
        }

        if (offset >= totalCount) {
            return (new ManagerInfo[](0), totalCount);
        }

        uint256 count = (offset + limit > totalCount) ?
            (totalCount - offset) : limit;

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
     * @notice Sets the protocol fee recipient
     * @param _feeRecipient The new fee recipient address
     */
    function setFeeRecipient(address _feeRecipient) external onlyOwner {
        if (_feeRecipient == address(0)) revert InvalidAddress();
        feeRecipient = _feeRecipient;
    }

    /**
     * @notice Sets the protocol fee for all new deployments
     * @param _fee The new protocol fee denominator (e.g., 10 = 10%)
     */
    function setProtocolFee(uint16 _fee) external onlyOwner {
        if (_fee == 0) revert InvalidFee();
        protocolFee = _fee;
    }
}