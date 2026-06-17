// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "./interfaces/IPositionAdapter.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

/// @title FeeTransferHelper
/// @notice Enables StakingManager to transfer earned fees from the vault to treasury/referrers
/// @dev M-03 ARCHITECTURE NOTE — Phantom Pool Pattern:
///
///      PROBLEM: StakingManager needs to move tokens OUT of the vault (performance fees to
///      treasury, referral fees to referrers). But the vault's tokens sit in the vault contract
///      itself, and the vault has no generic `transferToken()` function to keep the attack surface
///      small. The vault only grants ERC20 approvals through `addPool()`.
///
///      SOLUTION: FeeTransferHelper implements IPositionAdapter so it can be registered via
///      addPool(). When addPool() is called with this contract as the adapter, the vault calls:
///        IERC20(token0).approve(address(this), type(uint256).max)
///        IERC20(token1).approve(address(this), type(uint256).max)
///      This gives the helper transferFrom rights on vault tokens. The helper then exposes a
///      single function `transferFromVault()` callable only by StakingManager.
///
///      WHY NOT ADD approveHelper() TO THE VAULT?  Adding a new approval function to the vault
///      would increase bytecode (vault is near 24KB limit) and create a new admin-controlled
///      approval vector. Reusing addPool() leverages existing, audited approval logic.
///
///      WHY NOT APPROVE StakingManager DIRECTLY?  StakingManager is upgradeable (can be replaced
///      via setStakingManager). The helper is immutable and acts as a narrow permission bridge.
///
///      SECURITY:
///      - Only StakingManager can call transferFromVault() — enforced by msg.sender check
///      - StakingManager is onlyVault-gated — only the vault can trigger fee distributions
///      - All IPositionAdapter functions revert NotImplemented() — the phantom pool cannot be
///        used for deposits, withdrawals, or any position management
///      - The phantom pool appears in poolIds[] but has no real liquidity or positions
///
///      V19-I-06 DEPLOYMENT SEQUENCE (required for fee compounding to work):
///      1. Deploy SnuggleVaultUpgradeable (proxy + implementation + initialize)
///      2. Deploy FeeTransferHelper(vault, stakingManager, referenceAdapter)
///      3. Deploy StakingManager(vault, feeTransferHelper)
///      4. Call satellite.addPool() with FeeTransferHelper as positionAdapter (registers phantom pool)
///      5. Call satellite.setInitialStakingManager(stakingManager)
///      If step 4 is missed, StakingManager.processFeesForCompounding() will fail on transferFromVault().
contract FeeTransferHelper is IPositionAdapter {
    using SafeERC20 for IERC20;

    address public immutable vault;
    address public immutable stakingManager;

    // Store a real pool address to pass addPool validation
    address public immutable referencePool;
    address public immutable referencePositionManager;
    int24 public immutable referenceTickSpacing;

    error OnlyStakingManager();
    error NotImplemented();
    error InvalidAddress();

    constructor(
        address _vault,
        address _stakingManager,
        address _referencePool,
        address _referencePositionManager,
        int24 _referenceTickSpacing
    ) {
        // V14-L-05: Validate all addresses are contracts (not EOAs)
        if (_vault.code.length == 0) revert InvalidAddress();
        if (_stakingManager.code.length == 0) revert InvalidAddress();
        if (_referencePool.code.length == 0) revert InvalidAddress();
        if (_referencePositionManager.code.length == 0) revert InvalidAddress();
        vault = _vault;
        stakingManager = _stakingManager;
        referencePool = _referencePool;
        referencePositionManager = _referencePositionManager;
        referenceTickSpacing = _referenceTickSpacing;
    }

    /// @notice Transfer tokens from vault to recipient
    /// @dev Only callable by StakingManager
    function transferFromVault(
        address token,
        address to,
        uint256 amount
    ) external {
        if (msg.sender != stakingManager) revert OnlyStakingManager();
        IERC20(token).safeTransferFrom(vault, to, amount);
    }

    // ═══════════════════════════════════════════════════════════════════════════
    // IPositionAdapter STUBS — Required to pass addPool() validation.
    // These are never called in production. All revert NotImplemented().
    // getPool() and getTickSpacing() return real values so addPool() succeeds.
    // ═══════════════════════════════════════════════════════════════════════════

    function getPool(address, address, uint24) external view override returns (address) {
        return referencePool; // Return real pool to pass validation
    }

    function getTickSpacing(address) external view override returns (int24) {
        return referenceTickSpacing;
    }

    function getCurrentTick(address) external pure override returns (int24) {
        revert NotImplemented();
    }

    function getTWAPTick(address, uint32) external pure override returns (int24) {
        revert NotImplemented();
    }

    function mint(address, address, uint24, int24, int24, uint256, uint256, uint256, uint256, address, uint256)
        external pure override returns (uint256, uint128, uint256, uint256)
    {
        revert NotImplemented();
    }

    function decreaseLiquidity(uint256, uint128, uint256, uint256, uint256)
        external pure override returns (uint256, uint256)
    {
        revert NotImplemented();
    }

    function collect(uint256, address) external pure override returns (uint256, uint256) {
        revert NotImplemented();
    }

    function burn(uint256) external pure override {
        revert NotImplemented();
    }

    function getPosition(uint256) external pure override returns (address, address, uint24, int24, int24, uint128) {
        revert NotImplemented();
    }

    function positionManager() external view override returns (address) {
        return referencePositionManager;
    }

    function approvePosition(uint256) external pure override {
        revert NotImplemented();
    }
}
