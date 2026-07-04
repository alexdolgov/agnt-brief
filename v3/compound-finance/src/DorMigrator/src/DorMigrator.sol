// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {IMigrator} from "./interfaces/IMigrator.sol";
import {IDorStaking} from "./interfaces/IDorStaking.sol";

/**
 * @title DorMigrator
 * @notice Migrates TREE from a MasterPreDeposit vault into DorStaking undelegated pools.
 *
 * Migration is two-phase:
 *   Phase 1 — `pdv.migrate(vaultId)` calls `migrateVault(vaultId, amount)` here, pulling
 *              the vault's total TREE from the PDV into this contract.
 *   Phase 2 — Owner calls `distribute(vaultId, depositors, amounts)` to credit each
 *              depositor's undelegated pool in DorStaking. Can be called once per vault
 *              (all depositors in one tx) or in multiple batches if needed.
 *
 * Invariant: distributedAmount[vaultId] <= migratedAmount[vaultId] at all times.
 *
 * Off-chain data: depositor amounts are derived by indexing PDV's PreDeposited and Bail
 * events to compute net amounts per (vaultId, depositor).
 */
contract DorMigrator is IMigrator, Ownable {
    using SafeERC20 for IERC20;

    IERC20 public immutable TREE_TOKEN;
    address public immutable PDV;
    IDorStaking public immutable DOR_STAKING;

    /// @notice Total TREE received from PDV per vault via migrateVault().
    mapping(uint8 => uint256) public migratedAmount;

    /// @notice Total TREE distributed to depositors per vault via distribute().
    mapping(uint8 => uint256) public distributedAmount;

    error CallerNotPDV();
    error ExceedsMigratedAmount();
    error LengthMismatch();
    error ZeroAddress();

    event VaultReceived(uint8 indexed vaultId, uint256 amount);
    event VaultDistributed(uint8 indexed vaultId, uint256 depositorCount, uint256 batchTotal);

    constructor(address _pdv, address _dorStaking, address _treeToken, address _owner) Ownable(_owner) {
        if (_pdv == address(0) || _dorStaking == address(0) || _treeToken == address(0)) {
            revert ZeroAddress();
        }
        PDV = _pdv;
        DOR_STAKING = IDorStaking(_dorStaking);
        TREE_TOKEN = IERC20(_treeToken);
        // Approve DorStaking once — avoids per-distribute approve overhead.
        SafeERC20.forceApprove(IERC20(_treeToken), _dorStaking, type(uint256).max);
    }

    /**
     * @notice Called by MasterPreDeposit.migrate(). Pulls the vault's TREE into this contract.
     * @dev PDV approves this contract for `amount` before calling. Restricted to PDV address.
     * @param vaultId Vault being migrated.
     * @param amount  Total TREE approved by PDV for this vault.
     */
    function migrateVault(uint8 vaultId, uint256 amount) external override returns (bool) {
        if (msg.sender != PDV) revert CallerNotPDV();
        TREE_TOKEN.safeTransferFrom(PDV, address(this), amount);
        migratedAmount[vaultId] += amount;
        emit VaultReceived(vaultId, amount);
        return true;
    }

    /**
     * @notice Distribute migrated TREE to depositors' undelegated pools in DorStaking.
     * @dev Can be called in multiple batches; enforces cumulative distributedAmount <= migratedAmount.
     *      Depositor data must be derived off-chain from PDV PreDeposited and Bail events.
     * @param vaultId    Vault to distribute for.
     * @param depositors Depositor addresses.
     * @param amounts    Corresponding TREE amounts (must sum to <= remaining undistributed balance).
     */
    function distribute(uint8 vaultId, address[] calldata depositors, uint256[] calldata amounts)
        external
        onlyOwner
    {
        if (depositors.length != amounts.length) revert LengthMismatch();

        uint256 batchTotal;
        for (uint256 i; i < amounts.length; i++) {
            batchTotal += amounts[i];
        }

        if (distributedAmount[vaultId] + batchTotal > migratedAmount[vaultId]) revert ExceedsMigratedAmount();
        distributedAmount[vaultId] += batchTotal;

        for (uint256 i; i < depositors.length; i++) {
            if (amounts[i] == 0) continue;
            DOR_STAKING.depositUndelegated(depositors[i], amounts[i]);
        }

        emit VaultDistributed(vaultId, depositors.length, batchTotal);
    }

    /**
     * @notice Recover any tokens remaining in this contract after migration is complete.
     * @dev Handles TREE dust (e.g. rounding differences) or accidentally sent tokens.
     * @param token  Token contract address.
     * @param to     Recipient address.
     * @param amount Amount to transfer.
     */
    function rescueTokens(address token, address to, uint256 amount) external onlyOwner {
        if (to == address(0)) revert ZeroAddress();
        IERC20(token).safeTransfer(to, amount);
    }
}
