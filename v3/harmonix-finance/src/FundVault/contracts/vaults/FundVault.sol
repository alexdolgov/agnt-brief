// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.34;

import {ReentrancyGuardTransient} from "@openzeppelin/contracts/utils/ReentrancyGuardTransient.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {EnumerableSet} from "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";

import {IFundVault} from "../interfaces/IFundVault.sol";
import {IStrategy} from "../interfaces/IStrategy.sol";
import {ErrorsLib} from "../libraries/ErrorsLib.sol";
import {HaBaseUpgradeable} from "../base/HaBaseUpgradeable.sol";

contract FundVault is IFundVault, HaBaseUpgradeable, ReentrancyGuardTransient {
    using SafeERC20 for IERC20;
    using EnumerableSet for EnumerableSet.AddressSet;

    bytes32 public constant CURATOR_ROLE = keccak256("CURATOR_ROLE");

    // ================ STORAGE ====================

    /// @notice Set of whitelisted strategies per asset. Enumerable for NAV aggregation.
    mapping(address asset => EnumerableSet.AddressSet) private _strategies;

    /// @notice Cumulative amount ever allocated into each strategy across all `allocate` calls.
    mapping(address strategy => uint256) public totalAllocated;

    /// @notice Cumulative amount ever deallocated from each strategy across all `deallocate` calls.
    mapping(address strategy => uint256) public totalDeallocated;

    /**
     * @notice Maximum deployed balance allowed per strategy at any time.
     * @dev 0 = fully blocked. Managed by CURATOR_ROLE via setStrategyCap().
     *      Enforced in allocate(): strategy.totalAssets() + amount must be <= cap.
     */
    mapping(address strategy => uint256) public strategyCap;

    // =================== INITIALIZE ===================

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(address vaultManagerAddr) external initializer {
        __HaBase_init(vaultManagerAddr);
    }

    // =================== VAULT MANAGER ONLY ===========

    /// @inheritdoc IFundVault
    function allocate(address strategy, uint256 amount) external onlyRole(CURATOR_ROLE) isNotPaused nonReentrant {
        require(amount > 0, ErrorsLib.ZeroAmount());
        address asset = IStrategy(strategy).asset();
        require(_strategies[asset].contains(strategy), UnknownStrategy(asset, strategy));

        uint256 idle = idleAssets(asset);
        require(idle >= amount, InsufficientIdle(asset, amount, idle));

        uint256 cap = strategyCap[strategy];
        uint256 wouldBe = IStrategy(strategy).totalAssets() + amount;
        require(wouldBe <= cap, CapExceeded(strategy, cap, wouldBe));

        IERC20(asset).safeTransfer(strategy, amount);

        totalAllocated[strategy] += amount;
        emit Allocated(asset, strategy, amount);
    }

    /// @inheritdoc IFundVault
    function deallocate(address strategy, uint256 amount) external onlyRole(CURATOR_ROLE) isNotPaused nonReentrant {
        require(amount > 0, ErrorsLib.ZeroAmount());
        address asset = IStrategy(strategy).asset();
        require(_strategies[asset].contains(strategy), UnknownStrategy(asset, strategy));

        IStrategy(strategy).withdraw(amount);

        totalDeallocated[strategy] += amount;
        emit Deallocated(asset, strategy, amount);
    }

    /// @inheritdoc IFundVault
    function releaseAssets(uint256 amount) external override isNotPaused nonReentrant {
        address asset = _validateVault(msg.sender);
        require(amount > 0, ErrorsLib.ZeroAmount());
        uint256 idle = idleAssets(asset);
        require(idle >= amount, InsufficientIdle(asset, amount, idle));

        IERC20(asset).safeTransfer(msg.sender, amount);

        emit AssetsReleased(asset, msg.sender, amount);
    }

    /// @inheritdoc IFundVault
    function addStrategy(address strategy) external override onlyRole(CURATOR_ROLE) {
        _timelocked();
        require(strategy != address(0), ErrorsLib.ZeroAddress());
        address asset = IStrategy(strategy).asset();
        require(_strategies[asset].add(strategy), DuplicateStrategy(asset, strategy));
        emit StrategyAdded(asset, strategy);
    }

    /// @inheritdoc IFundVault
    function removeStrategy(address strategy) external override onlyRole(CURATOR_ROLE) {
        _timelocked();
        address asset = IStrategy(strategy).asset();
        require(_strategies[asset].remove(strategy), UnknownStrategy(asset, strategy));
        emit StrategyRemoved(asset, strategy);
    }

    /// @inheritdoc IFundVault
    function setStrategyCap(address strategy, uint256 cap) external onlyRole(CURATOR_ROLE) {
        _timelocked();
        address asset = IStrategy(strategy).asset();
        require(_strategies[asset].contains(strategy), UnknownStrategy(asset, strategy));
        strategyCap[strategy] = cap;
        emit StrategyCapSet(strategy, cap);
    }

    // ================= VIEW FUNCIONS ===========================

    /// @inheritdoc IFundVault
    function idleAssets(address asset) public view returns (uint256) {
        return IERC20(asset).balanceOf(address(this));
    }

    /// @inheritdoc IFundVault
    function totalDeployedAssets(address asset) public view returns (uint256 total) {
        uint256 count = _strategies[asset].length();
        for (uint256 i = 0; i < count; i++) {
            total += IStrategy(_strategies[asset].at(i)).totalAssets();
        }
    }

    /// @inheritdoc IFundVault
    function totalManagedAssets(address asset) public view returns (uint256) {
        return totalDeployedAssets(asset) + idleAssets(asset);
    }

    /// @inheritdoc IFundVault
    function allocated(address strategy) external view returns (uint256) {
        return IStrategy(strategy).totalAssets();
    }

    /// @inheritdoc IFundVault
    function isStrategyWhitelisted(address asset, address strategy) external view returns (bool) {
        return _strategies[asset].contains(strategy);
    }

    /// @inheritdoc IFundVault
    function strategies(address asset) external view returns (address[] memory) {
        return _strategies[asset].values();
    }

    /// @inheritdoc IFundVault
    function strategyCount(address asset) external view returns (uint256) {
        return _strategies[asset].length();
    }
}
