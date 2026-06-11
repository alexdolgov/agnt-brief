# Agentic Audit Brief: Minto

## Project Overview

- Project: Minto (`minto`)
- Website: [https://minto.finance](https://minto.finance)
- Lifecycle: active (Tier 0, TVL trajectory)
- Generated: 2026-06-11T15:54:46.256Z
- Pipeline run: v2-pipeline-2026-06-11-e34b49-4ec3
- Chains: bsc, ethereum, heco
- Contract surface: 9 unique implementations (10 raw deployments)
- DeFi Llama TVL: $3,761,396.56
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Minto is a Bitcoin mining hashpower tokenization and staking project centered on BTCMT, a token representing exposure to mining power, with staking/mining-related participation rather than multi-chain yield optimization, farming strategies, or auto-compounding vaults.

### Architecture

The GnosisSafeProxy serves as a shared governance contract for both families, while the StakingOwn contract likely manages staking for the BTCMT token. The TransparentUpgradeableProxy points to MintoAutofarmV2, indicating a single upgradeable vault implementation used across deployments.

## Audit Coverage Summary

- Verified implementations audited: 1/6 (16.7%)
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 3
- Unique implementations: 9
- Raw deployments: 10
- Audits discovered: 2
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-07 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| yAudit | Tier 2 | 1 | 16.7% | 2021-07 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| BTCMT | unknown | bsc | [`0x410a56...f09567`](./contracts/bsc-56/0x410a56541bd912f9b60943fcb344f1e3d6f09567/) | ✅ Audited |

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| BTCMTSale | unknown | bsc | [`0x2b775b...741827`](./contracts/bsc-56/0x2b775b778f84b10877a41b78d6724634c7741827/) | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | [`0x005fe0...e7c1c1`](./contracts/ethereum-1/0x005fe03e5d3a3390f7ec43d95adf08be4ee7c1c1/) | ⚠️ Unaudited |
| MintoAutofarmV2 | unknown | bsc | 2 deployments: bsc [`0x572b06...b1e746`](./contracts/bsc-56/0x572b0666e801f3ba80d4a66d7f10460658b1e746/); bsc `0xe5c659...53105a` | ⚠️ Unaudited |
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
| [DL audit link](https://devcfirma.cconducir.com/ingreso.php) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

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
| upstream | 0 |
| standard_library | 2 |
| needs_review | 3 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=1

Zero-match audit list:

- [12203] DL audit link

Fork inheritance lineage and inherited audits are included when available.
