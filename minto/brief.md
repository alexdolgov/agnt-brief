# Agentic Audit Brief: Minto

⚠️ Lifecycle status: UNKNOWN - TVL trajectory indicates non-active lifecycle.

## Project Overview

- Project: Minto (`minto`)
- Website: [https://minto.finance](https://minto.finance)
- Lifecycle: unknown (Tier 0, TVL trajectory)
- Generated: 2026-05-31T09:59:10.737Z
- Pipeline run: v2-pipeline-2026-05-31-ab6275-1b32
- Chains: bsc, ethereum, heco
- Contract surface: 11 unique implementations (12 raw deployments)
- DeFi Llama TVL: $3,797,520.69
- On-chain TVL (included contracts): $1,664,699.88
- TVL by chain: Bsc $1,664,699.88

## Project Description

Minto is a yield optimization protocol that automates staking and farming strategies across multiple chains. It offers users tokenized yield-bearing assets and auto-compounding vaults to maximize returns.

### Architecture

The GnosisSafeProxy serves as a shared governance contract for both families, while the StakingOwn contract likely manages staking for the BTCMT token. The TransparentUpgradeableProxy points to MintoAutofarmV2, indicating a single upgradeable vault implementation used across deployments.

## Audit Coverage Summary

- Verified implementations audited: 1/8 (12.5%)
- Verified + Unaudited implementations: 7
- Verified by bytecode match: 0
- Unverified implementations: 3
- Unique implementations: 11
- Raw deployments: 12
- Audits discovered: 1
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): $1,664,699.88
- Latest audit: 2021-07 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [unknown]. ASD of $1,664,699.88 represents exposure in a protocol with unknown activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| yAudit | Tier 2 | 1 | 12.5% | 2021-07 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| BTCMT | unknown | bsc | [`0x410a56...f09567`](./contracts/bsc-56/0x410a56541bd912f9b60943fcb344f1e3d6f09567/) | ✅ Audited |

### ⚠️ Verified + Unaudited (7)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| PancakeV3Pool | core_logic | bsc | [`0x11bd73...3f065f`](./contracts/bsc-56/0x11bd737757b86c16646313fdf9e86681dd3f065f/) | ⚠️ Unaudited |
| BTCMTSale | unknown | bsc | [`0x2b775b...741827`](./contracts/bsc-56/0x2b775b778f84b10877a41b78d6724634c7741827/) | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | [`0x005fe0...e7c1c1`](./contracts/ethereum-1/0x005fe03e5d3a3390f7ec43d95adf08be4ee7c1c1/) | ⚠️ Unaudited |
| MintoAutofarmV2 | unknown | bsc | 2 deployments: bsc [`0x572b06...b1e746`](./contracts/bsc-56/0x572b0666e801f3ba80d4a66d7f10460658b1e746/); bsc `0xe5c659...53105a` | ⚠️ Unaudited |
| PancakePair | unknown | bsc | [`0x00951a...97625a`](./contracts/bsc-56/0x00951a8d4f9bdfae11bb9e5da9bd50c03297625a/) | ⚠️ Unaudited |
| ProxyAdmin | governance | bsc | [`0xb64ea1...08976c`](./contracts/bsc-56/0xb64ea148a6b9975ad335e56a688b4a11b508976c/) | ⚠️ Unaudited |
| StakingOwn | unknown | bsc | [`0x78ae30...5ebcfb`](./contracts/bsc-56/0x78ae303182fca96a4629a78ee13235e6525ebcfb/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (3)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | heco | `0x410a56...f09567` | ❓ Unverified |
| UnnamedContract | unknown | heco | `0x78ae30...5ebcfb` | ❓ Unverified |
| UnnamedContract | unknown | heco | `0xe742fc...5a7e12` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Audit report](https://files.minto.finance/MintoAuditReport.pdf) | yAudit | Audit | 2021-07 | stale | Direct | contract_name | 1 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x2b775b...741827`](./contracts/bsc-56/0x2b775b778f84b10877a41b78d6724634c7741827/) | BTCMTSale | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x572b06...b1e746`](./contracts/bsc-56/0x572b0666e801f3ba80d4a66d7f10460658b1e746/) | MintoAutofarmV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x78ae30...5ebcfb`](./contracts/bsc-56/0x78ae303182fca96a4629a78ee13235e6525ebcfb/) | StakingOwn | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 4 |
| upstream | 2 |
| standard_library | 2 |
| needs_review | 3 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=1

Fork inheritance lineage and inherited audits are included when available.
