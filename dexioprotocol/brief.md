# Agentic Audit Brief: Dexioprotocol

⚠️ Lifecycle status: UNKNOWN - TVL trajectory indicates non-active lifecycle.

## Project Overview

- Project: Dexioprotocol (`dexioprotocol`)
- Lifecycle: unknown (Tier 0, TVL trajectory)
- Generated: 2026-06-19T09:46:00.023Z
- Pipeline run: v2-pipeline-2026-06-19-727228-cc10
- Chains: kava, polygon
- Contract surface: 6 unique implementations (6 raw deployments)
- DeFi Llama TVL: $0.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexioprotocol is a gaming-focused DeFi protocol that provides staking and token infrastructure for its ecosystem. It enables users to stake DEXI tokens and interact with gaming-related smart contracts on Polygon and Kava.

### Architecture

The DEXI token contract serves as the core asset, while multiple DexiStake contracts enable staking functionality. Proxy contracts (BeaconProxy, UpgradeableBeacon) provide upgradeability and shared infrastructure across the protocol.

## Contract Surface Quality

- Indexed contracts: 75; live-surface contracts included: 6 (1 live, 5 unknown).
- Excluded by liveness: 57 inactive, 12 singleton, 0 uninitialized.
- Deployment units: 0/4 live.
- Detected codebases: none
- Dependencies extracted: 2; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 1/1 (100.0%)
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 5
- Unique implementations: 6
- Raw deployments: 6
- Audits discovered: 3
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-12 (stale)
- Staleness: 0 fresh, 0 aging, 3 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [unknown]. ASD of n/a represents exposure in a protocol with unknown activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 1 | 100.0% | 2022-12 |
| yAudit | Tier 2 | 1 | 100.0% | 2022-08 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| DEXI | unknown | polygon | n/a | [`0x65ba64...81c78b`](./contracts/polygon-137/0x65ba64899c2c7dbfdb5130e42e2cc56de281c78b/) | ✅ Audited |

### ⚠️ Verified + Unaudited (0)

- None

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (5)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | kava | n/a | `0x5a4c7c...5ce212` | ❓ Unverified |
| UnnamedContract | unknown | kava | n/a | `0x6fa2d4...bce959` | ❓ Unverified |
| UnnamedContract | unknown | kava | n/a | `0x732bb0...430266` | ❓ Unverified |
| UnnamedContract | unknown | kava | n/a | `0xb8e29c...0189f5` | ❓ Unverified |
| UnnamedContract | unknown | kava | n/a | `0xd22a58...34b68b` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DL audit link](https://global-uploads.webflow.com/63bd414670efa3b8c932ad2b/63bd414670efa34d8e32b1b9_Final%20Security%20Audit%20of%20DEXI%20token-2022-08-22%20(1).pdf) | yAudit | Audit | 2022-08 | stale | Direct | contract_name | 1 | high |
| [DL audit link](https://global-uploads.webflow.com/63bd414670efa3b8c932ad2b/63bd414670efa3125f32b1b8_8e64c255-ad07-4326-8e73-1446db7a72d6%20(1).pdf) | unknown | Audit | 2022-08 | stale | Direct | n/a | 0 | n/a |
| [DL audit link](https://global-uploads.webflow.com/63bd414670efa3b8c932ad2b/63bd414670efa32a4032b263_audit%20(1).pdf) | unknown | Audit | 2022-12 | stale | Direct | contract_name | 1 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 6 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=2

Zero-match audit list:

- [13024] DL audit link

Fork inheritance lineage and inherited audits are included when available.
