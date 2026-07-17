# Agentic Audit Brief: Rivera Money

## Project Overview

- Project: Rivera Money (`rivera-money`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:47.101Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-0679
- Chains: arbitrum, manta, polygon
- Contract surface: 8 unique implementations (12 raw deployments)
- DeFi Llama TVL: $769.53
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Liquidity Manager. Structurally: 2 project-authored contract(s) across 2 chain(s); 1 ERC4626 vault, 1 ERC20 token; upgradeable via ERC1967/UUPS proxies; built on foundry.

### Architecture

The protocol forms a single structural family (Core Logic) of 2 contract(s).

## Contract Surface Quality

- Indexed contracts: 12; live-surface contracts included: 12 (2 live, 10 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/1 (100.0%)
- Deployed-live implementations: 1 of 8 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/2
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 6
- Unique implementations: 8
- Raw deployments: 12
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-09 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 1 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 1 | 50.0% | 2023-09 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| RiveraAutoCompoundingVaultV2Public | core_logic | polygon | n/a | 2 deployments: polygon [`0x67e07bffce318adba7b08618cbf4b8e271499197`](./contracts/polygon-137/0x67e07bffce318adba7b08618cbf4b8e271499197/); arbitrum `0x8e99b66de170b53b39d9b54f189a12d7c6ac0cd9` | ✅ Audited |

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| RiveraConcNoStaking | unknown | manta | n/a | 4 deployments: manta [`0x4778caaa0e52f0b58eaf5e947ae81a0a10cde707`](./contracts/manta-169/0x4778caaa0e52f0b58eaf5e947ae81a0a10cde707/); manta `0x67e07bffce318adba7b08618cbf4b8e271499197`; manta `0x70527810cb658fadbe16845485fc79ec7722c860`; manta `0xa0dd02ef78570a4d93b7ee334ea9c593f7a0ebc4` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | manta | n/a | `0x0db2ba00bccf4f5e20b950bf954cadf768d158aa` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x241d09ec72809c4c390bc81b81def4d1e0e88626` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x45c3bb1a0f0827bf03c089842334b861474e7714` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x5f247b216e46fd86a09dfab377d9dbe62e9decda` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x713c1300f82009162cc908dc9d82304a51f05a3e` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xdc63179cc57783493dd8a4ffd7367df489ae93bf` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [spaces/Lpn0ro0rTFSY7pLROElj/uploads/JVxJuuhKySaFxumakZMo/RiveraMoney_Audit_Report.pdf](https://4021155802-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FLpn0ro0rTFSY7pLROElj%2Fuploads%2FJVxJuuhKySaFxumakZMo%2FRiveraMoney_Audit_Report.pdf) | unknown | Audit | 2023-09 | stale | Direct | contract_name | 1 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| manta | [`0x4778caaa0e52f0b58eaf5e947ae81a0a10cde707`](./contracts/manta-169/0x4778caaa0e52f0b58eaf5e947ae81a0a10cde707/) | RiveraConcNoStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 6 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=1

Fork inheritance lineage and inherited audits are included when available.
