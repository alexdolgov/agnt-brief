// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

import {ILaunchpadPositionFactory} from "./interfaces/ILaunchpadPositionFactory.sol";
import {LaunchpadPositionDeployer} from "./LaunchpadPositionDeployer.sol";
import {LaunchpadPositionManager} from "./LaunchpadPositionManager.sol";
import {IPoolManager} from "v4-core/interfaces/IPoolManager.sol";
import {PoolKey} from "v4-core/types/PoolKey.sol";
import {PoolId, PoolIdLibrary} from "v4-core/types/PoolId.sol";
import {Currency} from "v4-core/types/Currency.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {Strings} from "@openzeppelin/contracts/utils/Strings.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {IMultiPositionManager} from "./interfaces/IMultiPositionManager.sol";
import {UniformStrategy} from "./strategies/UniformStrategy.sol";

/// @title LimitedPositionFactory
/// @notice Factory for deploying LaunchpadPositionManager contracts with locked liquidity
/// @dev LimitedPositionManagers have no withdraw functions and enforce min rebalance parameters
contract LaunchpadPositionFactory is ILaunchpadPositionFactory, Ownable {
    using PoolIdLibrary for PoolKey;

    /// @notice Address receiving 25% of fees from zeroBurn
    address public feeRecipient;

    /// @notice Minimum ticks left required for rebalancing
    uint256 public minTicksLeft;

    /// @notice Minimum ticks right required for rebalancing
    uint256 public minTicksRight;

    /// @notice Pool manager for all deployments
    IPoolManager public immutable poolManager;

    /// @notice Deployer contract for LaunchpadPositionManager
    LaunchpadPositionDeployer public immutable deployer;

    /// @notice Hardcoded UniformStrategy for all managers
    UniformStrategy public immutable uniformStrategy;

    /// @notice Fixed protocol fee (denominator = 4, so fee = 25%)
    uint16 public constant PROTOCOL_FEE = 4;

    /// @notice Role for claiming fees
    bytes32 public constant CLAIM_MANAGER = keccak256("CLAIM_MANAGER");

    /// @notice Role for managing fees
    bytes32 public constant FEE_MANAGER = keccak256("FEE_MANAGER");

    /// @notice Role assignments
    mapping(bytes32 => mapping(address => bool)) private _roles;

    /// @notice Mapping of deployed managers
    mapping(address => ManagerInfo) public managers;

    /// @notice Track managers by owner
    mapping(address => address[]) public managersByOwner;

    /// @notice Track all managers for pagination
    address[] private allManagers;

    /// @notice Counter for auto-generating manager names
    uint256 public managerCounter;

    /// @notice LaunchpadOrderBookFactory that is authorized to call deployDepositAndRebalance
    address public launchpadOrderBookFactory;

    error InvalidAddress();
    error ManagerAlreadyExists();
    error OnlyLaunchpadOrderBookFactory();

    /// @param _owner Owner of the factory
    /// @param _poolManager Uniswap V4 pool manager
    /// @param _feeRecipient Initial fee recipient (receives 25% of fees)
    /// @param _minTicksLeft Initial minimum ticks left (default 2,000,000)
    /// @param _minTicksRight Initial minimum ticks right (default 2,000,000)
    /// @param _launchpadOrderBookFactory LaunchpadOrderBookFactory authorized to call deployDepositAndRebalance
    constructor(
        address _owner,
        IPoolManager _poolManager,
        address _feeRecipient,
        uint256 _minTicksLeft,
        uint256 _minTicksRight,
        address _launchpadOrderBookFactory
    ) Ownable(_owner) {
        if (_owner == address(0)) revert InvalidAddress();
        if (address(_poolManager) == address(0)) revert InvalidAddress();
        if (_feeRecipient == address(0)) revert InvalidAddress();
        // _launchpadOrderBookFactory can be address(0) during deployment to break circular dependency
        // Use setLaunchpadOrderBookFactory() to set it after LaunchpadOrderBookFactory is deployed

        poolManager = _poolManager;
        feeRecipient = _feeRecipient;
        minTicksLeft = _minTicksLeft;
        minTicksRight = _minTicksRight;
        launchpadOrderBookFactory = _launchpadOrderBookFactory;

        deployer = new LaunchpadPositionDeployer();
        uniformStrategy = new UniformStrategy();
    }

    /// @notice Deploy LaunchpadPositionManager, deposit liquidity, and rebalance in one atomic transaction
    /// @dev Auto-generates manager name as "LaunchpadManager-{counter}" and uses hardcoded UniformStrategy
    /// @param poolKey The pool key for the Uniswap V4 pool
    /// @param managerOwner The owner of the new LaunchpadPositionManager
    /// @param deposit0Desired Amount of token0 to deposit
    /// @param deposit1Desired Amount of token1 to deposit
    /// @param to Address to receive the LP shares
    /// @param from Address to pull tokens from (must have approved the manager)
    /// @param inMin Minimum amounts for each position (slippage protection)
    /// @return mpm Address of the deployed LaunchpadPositionManager
    function deployDepositAndRebalance(
        PoolKey memory poolKey,
        address managerOwner,
        uint256 deposit0Desired,
        uint256 deposit1Desired,
        address to,
        address from,
        uint256[2][] memory inMin
    ) external payable returns (address mpm) {
        // Access control
        if (msg.sender != launchpadOrderBookFactory) revert OnlyLaunchpadOrderBookFactory();

        // Input validation
        if (managerOwner == address(0)) revert InvalidAddress();
        if (to == address(0)) revert InvalidAddress();

        // Increment counter and generate name
        managerCounter++;
        string memory name = string(abi.encodePacked("LaunchpadManager-", Strings.toString(managerCounter)));

        // Fixed symbol for all launchpad managers
        string memory symbol = "LAUNCHPAD-LP";

        // Deploy using deployer contract
        mpm = deployer.deploy(
            poolManager,
            poolKey,
            managerOwner,
            address(this), // factory address
            name,
            symbol,
            PROTOCOL_FEE
        );

        // Check if manager already exists
        if (managers[mpm].manager != address(0)) {
            revert ManagerAlreadyExists();
        }

        // Store manager info
        managers[mpm] = ManagerInfo({
            manager: mpm,
            owner: managerOwner,
            deployedAt: block.timestamp
        });

        // Track manager by owner
        managersByOwner[managerOwner].push(mpm);

        // Track all managers
        allManagers.push(mpm);

        emit ManagerDeployed(mpm, managerOwner, poolKey);

        // Approve the manager to spend tokens from the `from` address
        // For token launches, `from` is typically this factory (LaunchpadPositionFactory)
        // which received tokens from LaunchpadOrderBookFactory
        if (deposit1Desired > 0) {
            IERC20(Currency.unwrap(poolKey.currency1)).approve(mpm, deposit1Desired);
        }

        // Deposit liquidity (Factory can call because it's s.factory in LaunchpadPositionManager)
        LaunchpadPositionManager(payable(mpm)).deposit{value: msg.value}(
            deposit0Desired,
            deposit1Desired,
            to,
            address(this)  // from = this factory (LaunchpadPositionFactory) which holds the tokens
        );

        // Rebalance with hardcoded UniformStrategy
        // Use current tick as center, with factory's min ticks as width
        IMultiPositionManager.RebalanceParams memory rebalanceParams = IMultiPositionManager.RebalanceParams({
            strategy: address(uniformStrategy),
            center: 0,  // Will use current tick
            tLeft: uint24(minTicksLeft),
            tRight: uint24(minTicksRight),
            limitWidth: 0,  // No limit orders for locked liquidity
            weight0: 0,     // No custom weights
            weight1: 0,     // No custom weights
            useCarpet: false // No carpet
        });

        LaunchpadPositionManager(payable(mpm)).rebalance(
            rebalanceParams,
            new uint256[2][](0),  // outMin - empty for initial rebalance
            inMin                 // inMin from deposit
        );

        return mpm;
    }

    /// @inheritdoc ILaunchpadPositionFactory
    function updateMinParams(uint256 _minTicksLeft, uint256 _minTicksRight) external onlyOwner {
        minTicksLeft = _minTicksLeft;
        minTicksRight = _minTicksRight;
        emit MinParamsUpdated(_minTicksLeft, _minTicksRight);
    }

    /// @inheritdoc ILaunchpadPositionFactory
    function setFeeRecipient(address _feeRecipient) external onlyOwner {
        if (_feeRecipient == address(0)) revert InvalidAddress();
        address oldRecipient = feeRecipient;
        feeRecipient = _feeRecipient;
        emit FeeRecipientUpdated(oldRecipient, _feeRecipient);
    }

    /// @inheritdoc ILaunchpadPositionFactory
    function setLaunchpadOrderBookFactory(address _launchpadOrderBookFactory) external onlyOwner {
        if (_launchpadOrderBookFactory == address(0)) revert InvalidAddress();
        launchpadOrderBookFactory = _launchpadOrderBookFactory;
        emit LaunchpadOrderBookFactorySet(_launchpadOrderBookFactory);
    }

    /// @inheritdoc ILaunchpadPositionFactory
    function hasRoleOrOwner(bytes32 role, address account) external view returns (bool) {
        return account == owner() || _roles[role][account];
    }

    /// @inheritdoc ILaunchpadPositionFactory
    function hasRole(bytes32 role, address account) external view returns (bool) {
        return _roles[role][account];
    }

    /// @notice Grant a role to an account
    /// @param role The role to grant
    /// @param account The account to grant the role to
    function grantRole(bytes32 role, address account) external onlyOwner {
        _roles[role][account] = true;
    }

    /// @notice Revoke a role from an account
    /// @param role The role to revoke
    /// @param account The account to revoke the role from
    function revokeRole(bytes32 role, address account) external onlyOwner {
        _roles[role][account] = false;
    }

    /// @notice Get list of all deployed managers
    /// @return address[] Array of manager addresses
    function getAllManagers() external view returns (address[] memory) {
        return allManagers;
    }

    /// @notice Get managers deployed by a specific owner
    /// @param owner The owner address
    /// @return address[] Array of manager addresses
    function getManagersByOwner(address owner) external view returns (address[] memory) {
        return managersByOwner[owner];
    }

    /// @notice Get total number of deployed managers
    /// @return uint256 Total count
    function getManagerCount() external view returns (uint256) {
        return allManagers.length;
    }

    /// @notice Get paginated list of managers
    /// @param offset Starting index
    /// @param limit Number of items to return
    /// @return address[] Array of manager addresses
    function getManagersPaginated(uint256 offset, uint256 limit)
        external
        view
        returns (address[] memory)
    {
        if (offset >= allManagers.length) {
            return new address[](0);
        }

        uint256 end = offset + limit;
        if (end > allManagers.length) {
            end = allManagers.length;
        }

        address[] memory result = new address[](end - offset);
        for (uint256 i = 0; i < end - offset; i++) {
            result[i] = allManagers[offset + i];
        }

        return result;
    }
}
