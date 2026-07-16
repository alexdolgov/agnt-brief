// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import "../IStrategy.sol";

/// @title RecoveryStrategy
/// @notice One-shot IStrategy implementation deployed per drained vault during the
///         2026-04-30 incident response. The original WasabiVault was attacked via
///         strategyDeposit() with a malicious strategy address; the resulting
///         strategyDebt[malicious] entry is being migrated to this contract via
///         WasabiVaultRecoveryV1.initializeRecovery() so that any subsequently
///         recovered funds can be routed back to the vault through the
///         existing strategyWithdraw() path.
///
///         Design notes:
///         - Non-upgradeable. If a bug is found, redeploy and re-migrate.
///         - vault, asset, owner are immutable (constructor-bound).
///         - deposit() reverts: this contract is *only* a recovery destination,
///           never a destination for new vault deposits.
///         - withdraw() transfers underlying back to the vault, used by the
///           vault during recovery (vault.strategyWithdraw(this, amount)).
///         - getNewInterest() / getAPR() return 0: no yield is generated here.
///         - depositRecoveredFunds() is the owner-only path for crediting
///           recovered amounts into the strategy. Funds then sit until the vault
///           pulls them via strategyWithdraw.
///         - rescue() is owner-only for non-underlying tokens accidentally sent here.
contract RecoveryStrategy is IStrategy, Ownable {
    using SafeERC20 for IERC20;

    /// @inheritdoc IStrategy
    address public immutable vault;
    /// @inheritdoc IStrategy
    address public immutable asset;

    error DepositNotAllowed();
    error InvalidAddress();
    error CannotRescueUnderlying();

    event RecoveredFundsDeposited(address indexed depositor, uint256 amount);
    event Rescued(address indexed token, uint256 amount, address indexed to);

    /// @param _vault The vault that this strategy is dedicated to.
    /// @param _asset The underlying asset of the vault (= the asset that was drained).
    /// @param _owner The address authorized to deposit recovered funds and rescue accidentally-sent tokens.
    ///               Should be the multisig that controls protocol-level recovery operations.
    constructor(address _vault, address _asset, address _owner) Ownable(_owner) {
        if (_vault == address(0) || _asset == address(0)) revert InvalidAddress();
        vault = _vault;
        asset = _asset;
    }

    modifier onlyVault() {
        if (msg.sender != vault) revert OnlyVault();
        _;
    }

    /// @inheritdoc IStrategy
    /// @dev Returns the underlying. The recovery strategy holds no separate yield-bearing token;
    ///      vault accounting treats `asset` and `collateralAsset` interchangeably here. The
    ///      vault's `_strategyClaim` only references `collateralAsset()` after a non-zero
    ///      `getNewInterest()` (which we always return 0), so this is rarely called in practice.
    function collateralAsset() external view returns (address) {
        return asset;
    }

    /// @inheritdoc IStrategy
    /// @notice Always reverts. The recovery strategy must not receive new vault deposits.
    ///         Use `depositRecoveredFunds` (owner-only) to credit recovered amounts.
    /// @dev Marked `onlyVault` so that off-chain callers see `OnlyVault` first; if the vault itself
    ///      tries to call (e.g., admin accidentally calling `vault.strategyDeposit(this, X)`), they
    ///      see `DepositNotAllowed` so they understand it's not a permission issue but a design choice.
    function deposit(uint256) external view onlyVault returns (address, uint256) {
        revert DepositNotAllowed();
    }

    /// @inheritdoc IStrategy
    /// @notice Transfers `amount` of underlying back to the vault. Used by the vault during the
    ///         recovery flow: `vault.strategyWithdraw(this, amount)` triggers this call, which
    ///         decreases `strategyDebt[this]` on the vault by `amount`.
    /// @dev If `amount > balanceOf(this)`, SafeERC20 will revert. The vault then short-circuits
    ///      and the debt is unchanged. Recovery operator must `depositRecoveredFunds` first.
    function withdraw(uint256 amount) external onlyVault returns (address, uint256) {
        IERC20(asset).safeTransfer(vault, amount);
        return (asset, amount);
    }

    /// @inheritdoc IStrategy
    /// @notice Always returns 0. The recovery strategy generates no yield; debt does not grow.
    function getNewInterest(uint256) external pure returns (uint256) {
        return 0;
    }

    /// @inheritdoc IStrategy
    /// @notice Always returns 0. No APR.
    function getAPR() external pure returns (uint256) {
        return 0;
    }

    /// @notice Owner deposits recovered underlying. Funds become available for the vault to
    ///         pull via strategyWithdraw. The owner must have approved this contract for
    ///         `amount` of `asset` before calling.
    function depositRecoveredFunds(uint256 amount) external onlyOwner {
        IERC20(asset).safeTransferFrom(msg.sender, address(this), amount);
        emit RecoveredFundsDeposited(msg.sender, amount);
    }

    /// @notice Owner-only emergency rescue for any non-underlying token accidentally sent here.
    ///         The underlying must NEVER bypass the vault — use strategyWithdraw for that.
    function rescue(address token) external onlyOwner {
        if (token == asset) revert CannotRescueUnderlying();
        uint256 bal = IERC20(token).balanceOf(address(this));
        IERC20(token).safeTransfer(owner(), bal);
        emit Rescued(token, bal, owner());
    }
}
