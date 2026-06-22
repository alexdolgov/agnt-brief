# Agentic Audit Brief: Copump

⚠️ Lifecycle status: UNKNOWN - TVL dropped 18.5% over 90 days

## Project Overview

- Project: Copump (`copump`)
- Website: [https://copump.xyz/](https://copump.xyz/)
- Lifecycle: unknown (Tier 0, 72% below peak)
- Generated: 2026-06-19T18:14:37.960Z
- Pipeline run: v2-pipeline-2026-06-19-727228-a815
- Chains: celo, linea, sonic
- Contract surface: 4 unique implementations (4 raw deployments)
- DeFi Llama TVL: $1,656.76
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Copump is a launchpad protocol that enables users to create and launch new tokens on multiple chains. It provides factory contracts for token creation and integrates with decentralized exchanges like Uniswap and SyncSwap to facilitate initial liquidity and trading.

### Architecture

The Copump contract acts as a shared factory or registry, while the DEX-specific contracts (CopumpUniswap, CopumpSyncSwap, CopumpCelo) handle token creation and liquidity provisioning on their respective exchanges. All contracts are deployed by the same deployer cluster, indicating a unified infrastructure.

## Contract Surface Quality

- Indexed contracts: 34; live-surface contracts included: 4 (4 live, 0 unknown).
- Excluded by liveness: 30 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 4/4 (100.0%)
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 4
- Raw deployments: 4
- Audits discovered: 3
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-04 (aging)
- Staleness: 0 fresh, 2 aging, 0 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [unknown]. ASD of n/a represents exposure in a protocol with unknown activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 4 | 100.0% | 2025-04 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Copump | unknown | linea | n/a | [`0xbef631...67115b`](./contracts/linea-59144/0xbef63121a00916d88c4558f2a92f7d931c67115b/) | ✅ Audited |
| CopumpCelo | unknown | celo | n/a | [`0x797357...af1655`](./contracts/celo-42220/0x797357f76042d76523848ef9abb5e2e5c1af1655/) | ✅ Audited |
| CopumpSyncSwap | unknown | linea | n/a | [`0xa74e55...205036`](./contracts/linea-59144/0xa74e55412ffb46747dd45eefdb68bf1366205036/) | ✅ Audited |
| CopumpUniswap | unknown | sonic | n/a | [`0xbef631...67115b`](./contracts/sonic-146/0xbef63121a00916d88c4558f2a92f7d931c67115b/) | ✅ Audited |

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
| [DL audit link](https://copump.xyz/audits/aura.pdf) | unknown | Audit | 2024-12 | aging | Direct | contract_name | 1 | medium |
| [DL audit link](https://copump.xyz/audits/hashlock.pdf) | unknown | Audit | 2025-04 | aging | Direct | contract_name | 4 | high |
| [/URI ()>>](https://docs.google.com/document/d/1uPOgfxeo3xUsdXogh6SqOCuIHXHMa3ZFsxKyGCGwee4/edit) | Hashlock | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 4 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1, medium=1
- Match method counts: extraction_exact=48

Zero-match audit list:

- [12943] /URI ()>>

Fork inheritance lineage and inherited audits are included when available.
