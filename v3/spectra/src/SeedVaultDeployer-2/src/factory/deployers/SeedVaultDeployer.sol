// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.22;

import {IDeployer} from "src/interfaces/IDeployer.sol";
import {RegistryEntry} from "src/interfaces/IMetaVaultsRegistryV2.sol";
import {IMetaVaultFactory} from "src/interfaces/IMetaVaultFactory.sol";
import {IMetaVaultsRegistryV2} from "src/interfaces/IMetaVaultsRegistryV2.sol";
import {IOwnable} from "src/interfaces/IOwnable.sol";
import {IVault} from "src/interfaces/IVault.sol";
import {PipelineIds} from "src/factory/PipelineIds.sol";

/// @title SeedVaultDeployer
/// @notice Seeds an AsyncVault: approves the underlying token, deposits into the vault,
///         and closes the first epoch. All three operations are returned as SafeCalls
///         executed by the Safe in Phase 3.
///
/// @dev The vault is resolved via, in order:
///      1. `previousResults` — when VaultDeployer ran earlier in the same deploy() call.
///      2. Registry fallback — `factory.registry().getAddress(safe, keccak256("core.vault"))`.
///         This unlocks seeding a vault that was deployed in a prior transaction (split
///         deployment or delayed seed). For this path, the Safe must already own the
///         resolved vault — we verify with an `IOwnable.owner()` check to guard against
///         a compromised/malicious registry returning an attacker-controlled address.
///         The same-tx path skips the check because `acceptOwnership` runs in Phase 3
///         after this deployer's Phase 1.
///
contract SeedVaultDeployer is IDeployer {
    error VaultStepNotFound();
    error UnsafeVaultOwnership(address vault, address owner);

    struct SeedVaultParams {
        uint256 seedAmount; // Amount of underlying to seed.
    }

    function deploy(
        address safe,
        address factory,
        bytes calldata params,
        uint256 /* stepIndex */,
        bytes32 /* pipelineId */,
        IMetaVaultFactory.StepResult[] calldata previousResults
    ) external override returns (DeploymentOutput memory output) {
        if (msg.sender != factory) revert OnlyFactory();
        SeedVaultParams memory p = abi.decode(params, (SeedVaultParams));

        // 1. Find vault from VaultDeployer's output using the canonical pipeline ID.
        address vault;
        for (uint256 i = 0; i < previousResults.length; i++) {
            if (
                previousResults[i].pipelineId == PipelineIds.VAULT &&
                previousResults[i].contracts.length > 0
            ) {
                vault = previousResults[i].contracts[0];
                break;
            }
        }
        // 2. Fallback: query RegistryV2 via the factory for a previously-registered vault.
        //    Same-tx seed finds it via previousResults above — the registry entry is only
        //    written in factory Phase 5, after all deployers run.
        bool resolvedViaRegistry;
        if (vault == address(0)) {
            address registry = IMetaVaultFactory(factory).registry();
            if (registry != address(0)) {
                vault = IMetaVaultsRegistryV2(registry).getAddress(safe, keccak256("core.vault"));
                resolvedViaRegistry = vault != address(0);
            }
        }
        if (vault == address(0)) revert VaultStepNotFound();

        // Defensive: registry-resolved vaults must already be owned by the Safe.
        // Same-tx path skips this check because `acceptOwnership` runs in Phase 3
        // after this deployer's Phase 1, so `owner()` is still the deployer here.
        if (resolvedViaRegistry) {
            address vaultOwner = IOwnable(vault).owner();
            if (vaultOwner != safe) revert UnsafeVaultOwnership(vault, vaultOwner);
        }

        // Read underlying token from the already-deployed vault
        address underlying = IVault(vault).asset();

        // Build SafeCalls — executed by Safe in Phase 3
        output.contracts = new address[](0);
        output.registryEntries = new RegistryEntry[](0);
        output.safeCalls = new SafeCall[](3);

        // 1. Approve vault to pull underlying from Safe
        output.safeCalls[0] = SafeCall({
            to: underlying,
            data: abi.encodeWithSignature("approve(address,uint256)", vault, p.seedAmount)
        });

        // 2. Deposit underlying into vault — shares go to Safe
        output.safeCalls[1] = SafeCall({
            to: vault,
            data: abi.encodeWithSignature("deposit(uint256,address)", p.seedAmount, safe)
        });

        // 3. Close first epoch — settles the vault
        output.safeCalls[2] = SafeCall({to: vault, data: abi.encodeWithSignature("close()")});
    }
}
