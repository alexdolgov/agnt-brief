// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import "./IStrategy.sol";

/**
 * @title Strategy
 * @notice Abstract base for all vault strategies.
 *
 * ─── Lifecycle ───────────────────────────────────────────────────────────────
 *
 *   Vault allocates funds:
 *     vault.allocate(strategy, amount)
 *       → token.transfer(strategy, amount)
 *       → strategy.deposit(amount)   ← _totalTrackedAssets += amount
 *
 *   Strategy deploys funds further (e.g. to a protocol, CEX, or cross-chain):
 *     owner → strategy.deployValue(to, amount)
 *       → token.transfer(to, amount)   (funds leave the contract)
 *
 *   Funds return to the strategy:
 *     owner → strategy.returnValue(amount)
 *       → token.transferFrom(msg.sender, strategy, amount)
 *
 *   Vault requests funds back:
 *     vault.deallocate(strategy, amount)
 *       → strategy.withdraw(amount)  ← _totalTrackedAssets -= amount
 *       → token.transferFrom(strategy, vault, amount)
 *
 *   Value reconciliation (for cross-chain / CEX strategies):
 *     keeper → strategy.updateTotalTrackedAssets(newValue)
 *     keeper → vault.harvest(strategy)
 *       → vault reads strategy.totalTrackedAssets()
 *       → vault applies staleness check
 *       → vault updates its internal strategyDeployedValue and accrues fees
 *
 * ─── Trust Model ─────────────────────────────────────────────────────────────
 *
 *   Only the vault can call deposit() / withdraw().
 *   Only the keeper can call updateTotalTrackedAssets() / deployValue().
 *   Only the owner can call setKeeper() / addDeployDestination() / removeDeployDestination().
 *   Any approvedDestination address can call returnValue().
 *   The vault enforces staleness checks — it does not blindly trust the
 *   strategy-reported value.
 *
 * ─── Extending ───────────────────────────────────────────────────────────────
 *
 *   On-chain strategy (e.g. Aave, Compound):
 *     Override _afterDeposit / _beforeWithdraw to interact with the protocol.
 *     Override totalTrackedAssets() to return a live on-chain balance instead
 *     of the stored _totalTrackedAssets.
 *
 *   Off-chain strategy (cross-chain / CEX):
 *     Use deployValue / returnValue to move funds in and out.
 *     Keeper calls updateTotalTrackedAssets() + vault.harvest() to reconcile.
 */
contract Strategy is IStrategy, Ownable, ReentrancyGuard {
    using SafeERC20 for IERC20;

    // ─── Immutables ──────────────────────────────────────────────────────

    /// @notice The vault this strategy belongs to.
    address public immutable vault;

    /// @notice The asset token managed by this strategy.
    address public immutable asset;

    // ─── State ───────────────────────────────────────────────────────────

    /// @notice Address authorized to reconcile totalTrackedAssets manually.
    address public keeper;

    /// @notice Whitelist of addresses that can receive funds via deployValue().
    mapping(address => bool) public approvedDestinations;

    /// @dev Single source of truth for the current value this strategy controls.
    ///      Increases on deposit, decreases on withdrawal, and can be updated
    ///      manually by the keeper for off-chain / cross-chain reconciliation.
    uint256 internal _totalTrackedAssets;

    /// @dev Timestamp of the last keeper reconciliation.
    ///      Used by the vault to enforce staleness checks.
    uint256 private _lastReconciledAt;

    // ─── Events ──────────────────────────────────────────────────────────

    event KeeperUpdated(address indexed oldKeeper, address indexed newKeeper);
    event TotalTrackedAssetsReconciled(uint256 oldValue, uint256 newValue, uint256 timestamp);
    event ValueDeployed(address indexed to, uint256 amount);
    event ValueReturned(uint256 amount);
    event DeployDestinationAdded(address indexed destination);
    event DeployDestinationRemoved(address indexed destination);

    // Note: Deposited / Withdrawn events are declared in IStrategy.

    // ─── Errors ──────────────────────────────────────────────────────────

    error NotVault();
    error NotKeeper();
    error ZeroAddress();
    error ZeroAmount();
    error DestinationNotWhitelisted();
    error DestinationAlreadyApproved();
    error DestinationNotApproved();

    // ─── Modifiers ───────────────────────────────────────────────────────

    modifier onlyVault() {
        if (msg.sender != vault) revert NotVault();
        _;
    }

    modifier onlyKeeper() {
        if (msg.sender != keeper) revert NotKeeper();
        _;
    }

    // ─── Constructor ─────────────────────────────────────────────────────

    constructor(address _vault, address _asset) Ownable(msg.sender) {
        if (_vault == address(0)) revert ZeroAddress();
        if (_asset == address(0)) revert ZeroAddress();

        vault  = _vault;
        asset  = _asset;
        keeper = msg.sender;

        _lastReconciledAt = block.timestamp;
    }

    // ─── Keeper: Reconciliation ───────────────────────────────────────────

    /**
     * @notice Manually updates totalTrackedAssets after reconciling off-chain
     *         or cross-chain balances. Called by the keeper.
     *         The vault reads lastReconciledAt() during harvest to enforce
     *         staleness checks before trusting this value.
     *
     * @param newValue Current total value of assets controlled by this strategy.
     */
    function updateTotalTrackedAssets(uint256 newValue) external onlyKeeper {
        uint256 old = _totalTrackedAssets;
        _totalTrackedAssets = newValue;
        _lastReconciledAt   = block.timestamp;
        emit TotalTrackedAssetsReconciled(old, newValue, block.timestamp);
    }

    // ─── Vault Operations ─────────────────────────────────────────────────

    /**
     * @notice Called by the vault after transferring tokens to this strategy.
     *         Increases _totalTrackedAssets and triggers the internal deployment hook.
     * @param amount Amount of asset tokens received from the vault.
     */
    function deposit(uint256 amount) external onlyVault nonReentrant {
        if (amount == 0) revert ZeroAmount();
        _totalTrackedAssets += amount;
        _afterDeposit(amount);
        emit Deposited(amount);
    }

    /**
     * @notice Called by the vault before pulling tokens back from this strategy.
     *         Decreases _totalTrackedAssets and triggers the internal withdrawal hook
     *         so funds are available in this contract when the vault pulls them.
     * @param amount Amount of asset tokens the vault intends to pull.
     */
    function withdraw(uint256 amount) external onlyVault nonReentrant {
        if (amount == 0) revert ZeroAmount();
        IERC20(asset).approve(vault, amount);

        _totalTrackedAssets -= amount;
        _beforeWithdraw(amount);
        emit Withdrawn(amount);
    }

    // ─── Owner: Destination Management ───────────────────────────────────

    /**
     * @notice Adds an address to the deployment whitelist.
     *         Only whitelisted addresses can receive funds via deployValue().
     * @param destination Address to approve.
     */
    function addDeployDestination(address destination) external onlyOwner {
        if (destination == address(0)) revert ZeroAddress();
        if (approvedDestinations[destination]) revert DestinationAlreadyApproved();
        approvedDestinations[destination] = true;
        emit DeployDestinationAdded(destination);
    }

    /**
     * @notice Removes an address from the deployment whitelist.
     * @param destination Address to revoke.
     */
    function removeDeployDestination(address destination) external onlyOwner {
        if (!approvedDestinations[destination]) revert DestinationNotApproved();
        approvedDestinations[destination] = false;
        emit DeployDestinationRemoved(destination);
    }

    /**
     * @notice Transfers the keeper role to a new address.
     *         Only callable by the owner.
     */
    function setKeeper(address newKeeper) external onlyOwner {
        if (newKeeper == address(0)) revert ZeroAddress();
        emit KeeperUpdated(keeper, newKeeper);
        keeper = newKeeper;
    }

    function renounceOwnership() public override onlyOwner {
        revert("Cannot renounce ownership - this feature is disabled");
    }

    // ─── Keeper: Fund Movement ────────────────────────────────────────────

    /**
     * @notice Sends tokens from this strategy to a whitelisted external address.
     *         Used to deploy idle funds to a protocol, bridge, or CEX.
     *         _totalTrackedAssets is unchanged — funds are still accounted for
     *         by the strategy; the keeper should reconcile via
     *         updateTotalTrackedAssets() once the value is confirmed off-chain.
     * @param to     Destination address — must be in the approvedDestinations whitelist.
     * @param amount Amount of asset tokens to send.
     */
    function deployValue(address to, uint256 amount) external onlyKeeper nonReentrant {
        if (to == address(0)) revert ZeroAddress();
        if (amount == 0) revert ZeroAmount();
        if (!approvedDestinations[to]) revert DestinationNotWhitelisted();
        IERC20(asset).safeTransfer(to, amount);
        emit ValueDeployed(to, amount);
    }

    /**
     * @notice Pulls tokens back into this strategy from msg.sender.
     *         Used when funds return from an external protocol, bridge, or CEX.
     *         Callable by any address in the approvedDestinations whitelist.
     *         _totalTrackedAssets is unchanged — the keeper should call
     *         updateTotalTrackedAssets() to reflect the current true value.
     * @param amount Amount of asset tokens to receive.
     */
    function returnValue(uint256 amount) external nonReentrant {
        if (amount == 0) revert ZeroAmount();
        if (!approvedDestinations[msg.sender]) revert DestinationNotWhitelisted();
        IERC20(asset).safeTransferFrom(msg.sender, address(this), amount);
        emit ValueReturned(amount);
    }

    // ─── View ─────────────────────────────────────────────────────────────

    /**
     * @notice Total value of assets currently controlled by this strategy.
     *         Default: returns the stored _totalTrackedAssets (updated on
     *         deposit/withdrawal and by keeper reconciliation).
     *         On-chain strategies should override this to return a live value.
     */
    function totalTrackedAssets() public view virtual returns (uint256) {
        return _totalTrackedAssets;
    }

    /**
     * @notice Timestamp of the last keeper reconciliation.
     *         Used by the vault to enforce staleness checks during harvest.
     */
    function lastReconciledAt() external view returns (uint256) {
        return _lastReconciledAt;
    }

    // ─── Internal Hooks ───────────────────────────────────────────────────

    /**
     * @dev Called after the vault deposits funds into this strategy.
     *      Override to deploy assets into the underlying protocol.
     *      Default: no-op (funds stay idle in the strategy contract).
     * @param amount Amount of asset tokens just received from the vault.
     */
    function _afterDeposit(uint256 amount) internal virtual {}

    /**
     * @dev Called before the vault pulls funds from this strategy.
     *      Override to unwind positions or initiate a bridge/withdrawal
     *      so that tokens are available when the vault pulls them.
     *      Default: no-op (assumes funds are already in this contract).
     * @param amount Amount of asset tokens the vault is about to pull.
     */
    function _beforeWithdraw(uint256 amount) internal virtual {}
}
