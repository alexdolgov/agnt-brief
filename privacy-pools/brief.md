# Agentic Audit Brief: Privacy Pools

## Project Overview

- Project: Privacy Pools (`privacy-pools`)
- Website: [https://privacypools.com/](https://privacypools.com/)
- Lifecycle: active (Tier 0, TVL trajectory)
- Generated: 2026-05-29T12:50:14.136Z
- Pipeline run: v2-pipeline-2026-05-29-8b27fb-df0f
- Chains: arbitrum, ethereum, optimism
- Contract surface: 1 unique implementations (3 raw deployments)
- DeFi Llama TVL: $6,624,610.42
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Privacy Pools is a protocol enabling private transactions on Ethereum, Optimism, and Arbitrum One. It allows users to deposit and withdraw funds while preserving privacy through zero-knowledge proofs.

### Architecture

The protocol consists of a single product family with Entrypoint contracts deployed behind ERC1967Proxy proxies. All contracts share the same deployer and are deployed on multiple chains, indicating a unified infrastructure.

## Audit Coverage Summary

- Verified implementations audited: 1/1 (100.0%)
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 1
- Raw deployments: 3
- Audits discovered: 28
- Scoreable audits (matched contracts): 9
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-05 (aging)
- Staleness: 0 fresh, 3 aging, 0 stale, 25 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 1 | 100.0% | 2025-05 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Entrypoint | unknown | optimism | 3 deployments: ethereum `0x681880...526b46`; optimism [`0x441922...25d15e`](./contracts/optimism-10/0x44192215fed782896be2ce24e0bfbf0bf825d15e/); arbitrum [`0x441922...25d15e`](./contracts/arbitrum-42161/0x44192215fed782896be2ce24e0bfbf0bf825d15e/) | ✅ Audited |

### ⚠️ Verified + Unaudited (0)

- None

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (0)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

- None

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [0001-dataset-cache-manifest-and-runtime-adapters.md](https://github.com/DefiLlama/defillama-app/blob/main/docs/adr/0001-dataset-cache-manifest-and-runtime-adapters.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [0002-metadata-manifest-and-pull-command.md](https://github.com/DefiLlama/defillama-app/blob/main/docs/adr/0002-metadata-manifest-and-pull-command.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [0003-bun-package-manager-node-runtime.md](https://github.com/DefiLlama/defillama-app/blob/main/docs/adr/0003-bun-package-manager-node-runtime.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [circuits_audit_oxorio.md](https://github.com/0xbow-io/privacy-pools-core/blob/main/audit/circuits_audit_oxorio.md) | unknown | Audit | 2025-02 | aging | Direct | n/a | 0 | n/a |
| [contracts_audit_auditware.md](https://github.com/0xbow-io/privacy-pools-core/blob/main/audit/contracts_audit_auditware.md) | unknown | Audit | n/a | unknown | Direct | contract_name | 3 | high |
| [contracts_audit_oxorio.md](https://github.com/0xbow-io/privacy-pools-core/blob/main/audit/contracts_audit_oxorio.md) | unknown | Audit | 2025-03 | aging | Direct | contract_name | 3 | high |
| [entrypoint_upgrade_audit_oxorio.md](https://github.com/0xbow-io/privacy-pools-core/blob/main/audit/entrypoint_upgrade_audit_oxorio.md) | unknown | Audit | 2025-05 | aging | Direct | contract_name | 3 | high |
| [README.md](https://github.com/0xbow-io/privacy-pools-core/blob/main/docs/README.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [deployments.md](https://github.com/0xbow-io/privacy-pools-core/blob/main/docs/docs/deployments.md) | unknown | Audit | n/a | unknown | Direct | contract_name | 3 | low |
| [dev-guide.md](https://github.com/0xbow-io/privacy-pools-core/blob/main/docs/docs/dev-guide.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [hello.md](https://github.com/0xbow-io/privacy-pools-core/blob/main/docs/docs/hello.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [intro.md](https://github.com/0xbow-io/privacy-pools-core/blob/main/docs/docs/intro.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [asp.md](https://github.com/0xbow-io/privacy-pools-core/blob/main/docs/docs/layers/asp.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [contracts.md (also discovered via alternate URL)](https://github.com/0xbow-io/privacy-pools-core/blob/main/docs/docs/layers/contracts.md) | unknown | Audit | n/a | unknown | Direct | contract_name|n/a | 3 | medium |
| [entrypoint.md](https://github.com/0xbow-io/privacy-pools-core/blob/main/docs/docs/layers/contracts/entrypoint.md) | unknown | Audit | n/a | unknown | Direct | contract_name | 3 | low |
| [privacy-pools.md](https://github.com/0xbow-io/privacy-pools-core/blob/main/docs/docs/layers/contracts/privacy-pools.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [zk.md](https://github.com/0xbow-io/privacy-pools-core/blob/main/docs/docs/layers/zk.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [commitment.md](https://github.com/0xbow-io/privacy-pools-core/blob/main/docs/docs/layers/zk/commitment.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [lean-imt.md](https://github.com/0xbow-io/privacy-pools-core/blob/main/docs/docs/layers/zk/lean-imt.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [core-concepts.md](https://github.com/0xbow-io/privacy-pools-core/blob/main/docs/docs/overview/core-concepts.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [what-is-privacy-pools.md](https://github.com/0xbow-io/privacy-pools-core/blob/main/docs/docs/overview/what-is-privacy-pools.md) | unknown | Audit | n/a | unknown | Direct | contract_name | 3 | low |
| [privacy-policy.md](https://github.com/0xbow-io/privacy-pools-core/blob/main/docs/docs/privacy-policy.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [deposit.md](https://github.com/0xbow-io/privacy-pools-core/blob/main/docs/docs/protocol/deposit.md) | unknown | Audit | n/a | unknown | Direct | contract_name | 3 | low |
| [ragequit.md](https://github.com/0xbow-io/privacy-pools-core/blob/main/docs/docs/protocol/ragequit.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [withdrawal.md (also discovered via alternate URL)](https://github.com/0xbow-io/privacy-pools-core/blob/main/docs/docs/protocol/withdrawal.md) | unknown | Audit | n/a | unknown | Direct | contract_name|n/a | 3 | low |
| [circuits.md](https://github.com/0xbow-io/privacy-pools-core/blob/main/docs/docs/reference/circuits.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [sdk.md](https://github.com/0xbow-io/privacy-pools-core/blob/main/docs/docs/reference/sdk.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [toc.md](https://github.com/0xbow-io/privacy-pools-core/blob/main/docs/docs/toc.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 19
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=3, low=5, medium=1
- Match method counts: extraction_exact=27

Zero-match audit list:

- [7626] 0001-dataset-cache-manifest-and-runtime-adapters.md
- [7627] 0002-metadata-manifest-and-pull-command.md
- [7628] 0003-bun-package-manager-node-runtime.md
- [7629] circuits_audit_oxorio.md
- [7633] README.md
- [7635] dev-guide.md
- [7636] hello.md
- [7637] intro.md
- [7638] asp.md
- [7641] privacy-pools.md
- [7642] zk.md
- [7643] commitment.md
- [7644] lean-imt.md
- [7646] core-concepts.md
- [7648] privacy-policy.md
- [7650] ragequit.md
- [7652] circuits.md
- [7654] sdk.md
- [7655] toc.md

Fork inheritance lineage and inherited audits are included when available.
