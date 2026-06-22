# Agentic Audit Brief: Rivera Money

⚠️ Lifecycle status: DEAD - TVL dropped 0.5% over 90 days

## Project Overview

- Project: Rivera Money (`rivera-money`)
- Lifecycle: dead (Tier 0, 99.8% below peak)
- Generated: 2026-06-19T17:58:20.031Z
- Pipeline run: v2-pipeline-2026-06-19-727228-a815
- Chains: arbitrum, manta, polygon
- Contract surface: 8 unique implementations (12 raw deployments)
- DeFi Llama TVL: $766.74
- On-chain TVL (included contracts): $576.37
- TVL by chain: Arbitrum $554.42 | Polygon $21.96

## Project Description

Rivera Money is a liquidity management protocol that offers auto-compounding vaults for yield optimization. Users deposit assets into these vaults, which automatically reinvest rewards to maximize returns.

### Architecture

The protocol consists of a single product family with multiple instances of auto-compounding vaults and non-staking contracts deployed across chains. All contracts share the same core logic and are deployed from a few deployer clusters, indicating a unified infrastructure without separate supporting contracts.

## Contract Surface Quality

- Indexed contracts: 26; live-surface contracts included: 12 (2 live, 10 unknown).
- Excluded by liveness: 14 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Unverified dependencies: 1/1.

## Audit Coverage Summary

- Verified implementations audited: 0/2 (0.0%)
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 6
- Unique implementations: 8
- Raw deployments: 12
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $576.37
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of $576.37 represents exposure in a protocol with dead activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| RiveraAutoCompoundingVaultV2Public | core_logic | polygon | n/a | 2 deployments: polygon [`0x67e07b...499197`](./contracts/polygon-137/0x67e07bffce318adba7b08618cbf4b8e271499197/); arbitrum `0x8e99b6...ac0cd9` | ⚠️ Unaudited |
| RiveraConcNoStaking | unknown | manta | n/a | 4 deployments: manta [`0x4778ca...cde707`](./contracts/manta-169/0x4778caaa0e52f0b58eaf5e947ae81a0a10cde707/); manta `0x67e07b...499197`; manta `0x705278...22c860`; manta `0xa0dd02...a0ebc4` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (6)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | manta | n/a | `0x0db2ba...d158aa` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x241d09...e88626` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x45c3bb...4e7714` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x5f247b...9decda` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x713c13...f05a3e` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xdc6317...ae93bf` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DL audit link](https://4021155802-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FLpn0ro0rTFSY7pLROElj%2Fuploads%2FJVxJuuhKySaFxumakZMo%2FRiveraMoney_Audit_Report.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| polygon | [`0x67e07b...499197`](./contracts/polygon-137/0x67e07bffce318adba7b08618cbf4b8e271499197/) | RiveraAutoCompoundingVaultV2Public | core_logic | $576.37 | Verified native implementation with $576.37 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x4778ca...cde707`](./contracts/manta-169/0x4778caaa0e52f0b58eaf5e947ae81a0a10cde707/) | RiveraConcNoStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 8 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [13754] DL audit link

Fork inheritance lineage and inherited audits are included when available.
