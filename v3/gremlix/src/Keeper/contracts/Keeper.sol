// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import "./IVault.sol";
import "./strategies/IStrategy.sol";

/**
 * @title Keeper
 * @notice Authorized operator that can reconcile off-chain / cross-chain strategies
 *         and trigger vault harvests in a single atomic transaction.
 *
 * ─── Typical flow ────────────────────────────────────────────────────────────
 *
 *   1. Off-chain process confirms the current value held by the strategy.
 *   2. Keeper calls reconcileAndHarvest(vault, strategy, newValue):
 *        → strategy.updateTotalTrackedAssets(newValue)   // update reported value
 *        → vault.harvest(strategy)                       // vault reads & accrues fees
 *
 * ─── Trust model ─────────────────────────────────────────────────────────────
 *
 *   Only addresses in the `operators` mapping may call reconcileAndHarvest.
 *   The owner manages operators and can update the operator set at any time.
 *
 *   This contract must be set as:
 *     - vault.keeper  (via vault.setKeeper(address(this)))
 *     - strategy.keeper (via strategy.setKeeper(address(this)))
 *   before it can be used.
 */
contract Keeper is Ownable, ReentrancyGuard {

    // ─── State ────────────────────────────────────────────────────────────

    /// @notice Authorized operators
    mapping(address => bool) public operators;

    // ─── Events ──────────────────────────────────────────────────────────

    event OperatorAdded(address indexed operator);
    event OperatorRemoved(address indexed operator);
    event Reconciled(address indexed vault, address indexed strategy, uint256 newValue);
    event Allocated(address indexed vault, address indexed strategy, uint256 amount);
    event Deallocated(address indexed vault, address indexed strategy, uint256 amount);
    event ValueDeployed(address indexed strategy, address indexed to, uint256 amount);

    // ─── Errors ───────────────────────────────────────────────────────────

    error NotOperator();
    error ZeroAddress();

    // ─── Modifiers ────────────────────────────────────────────────────────

    modifier onlyOperator() {
        if (!operators[msg.sender]) revert NotOperator();
        _;
    }

    // ─── Constructor ──────────────────────────────────────────────────────

    constructor() Ownable(msg.sender) {
        operators[msg.sender] = true;
        emit OperatorAdded(msg.sender);
    }

    // ─── Operator Management ──────────────────────────────────────────────

    function addOperator(address operator) external onlyOwner {
        if (operator == address(0)) revert ZeroAddress();
        operators[operator] = true;
        emit OperatorAdded(operator);
    }

    function removeOperator(address operator) external onlyOwner {
        operators[operator] = false;
        emit OperatorRemoved(operator);
    }

    // ─── Vault Management ─────────────────────────────────────────────────

    /**
     * @notice Allocates `amount` of idle vault assets into `strategy`.
     * @param vault    Address of the IVault.
     * @param strategy Address of the strategy to fund.
     * @param amount   Amount of assets (in vault's asset units) to deploy.
     */
    function allocate(
        address vault,
        address strategy,
        uint256 amount
    ) external onlyOperator nonReentrant {
        IVault(vault).allocate(strategy, amount);
        emit Allocated(vault, strategy, amount);
    }

    /**
     * @notice Withdraws `amount` of assets from `strategy` back to the vault.
     * @param vault    Address of the IVault.
     * @param strategy Address of the strategy to withdraw from.
     * @param amount   Amount of assets to pull back.
     */
    function deallocate(
        address vault,
        address strategy,
        uint256 amount
    ) external onlyOperator nonReentrant {
        IVault(vault).deallocate(strategy, amount);
        emit Deallocated(vault, strategy, amount);
    }

    /**
     * @notice Withdraws all available asset amount from `strategy` back to the vault.
     * @param vault    Address of the IVault.
     * @param strategy Address of the strategy to withdraw from.
     */
    function deallocateAllAvailable(
        address vault,
        address strategy
    ) external onlyOperator nonReentrant {
        uint256 amount = IVault(vault).deallocateAllAvailable(strategy);
        emit Deallocated(vault, strategy, amount);
    }

    // ─── Strategy: Deploy Value ───────────────────────────────────────────

    /**
     * @notice Sends tokens from the strategy to a whitelisted destination.
     * @param strategy Address of the IStrategy to deploy from.
     * @param to       Destination address (must be in strategy's approvedDestinations).
     * @param amount   Amount of asset tokens to send.
     */
    function deployValue(
        address strategy,
        address to,
        uint256 amount
    ) external onlyOperator nonReentrant {
        IStrategy(strategy).deployValue(to, amount);
        emit ValueDeployed(strategy, to, amount);
    }

    // ─── Core: Reconcile + Harvest ────────────────────────────────────────

    /**
     * @notice Updates the strategy's tracked value and immediately triggers
     *         a vault harvest — all in one transaction.
     *
     * @param vault      Address of the IVault whose strategy is being harvested.
     * @param strategy   Address of the IStrategy to reconcile.
     * @param newValue   New total value (in asset units) the strategy controls.
     */
    function reconcileAndHarvest(
        address vault,
        address strategy,
        uint256 newValue
    ) external onlyOperator nonReentrant {
        IStrategy(strategy).updateTotalTrackedAssets(newValue);
        IVault(vault).harvest(strategy);
        emit Reconciled(vault, strategy, newValue);
    }

    /**
     * @notice Batch version: reconcile and harvest multiple strategies in one tx.
     *         Each entry in the arrays corresponds to one (vault, strategy, newValue) tuple.
     *
     * @param vaults     Vault addresses (parallel array).
     * @param strategies Strategy addresses (parallel array).
     * @param newValues  New total values (parallel array).
     */
    function reconcileAndHarvestBatch(
        address[] calldata vaults,
        address[] calldata strategies,
        uint256[] calldata newValues
    ) external onlyOperator nonReentrant {
        uint256 len = vaults.length;
        require(strategies.length == len && newValues.length == len, "Array length mismatch");
        for (uint256 i = 0; i < len; i++) {
            IStrategy(strategies[i]).updateTotalTrackedAssets(newValues[i]);
            IVault(vaults[i]).harvest(strategies[i]);
            emit Reconciled(vaults[i], strategies[i], newValues[i]);
        }
    }

    function renounceOwnership() public override onlyOwner {
        revert("Cannot renounce ownership - this feature is disabled");
    }
}
