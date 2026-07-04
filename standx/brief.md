# Agentic Audit Brief: StandX

## Project Overview

- Project: StandX (`standx`)
- Website: [https://standx.com/referral?code=defillama](https://standx.com/referral?code=defillama)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:58.886Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-ae05
- Chains: bsc
- Contract surface: 16 unique implementations (21 raw deployments)
- DeFi Llama TVL: $40,144,284.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Canonical Bridge. Structurally: 13 project-authored contract(s) across 1 chain(s); 4 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Contracts are linked by 4 cross-contract reference(s). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 29; live-surface contracts included: 21 (11 live, 10 unknown).
- Excluded by liveness: 8 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 4/5 (80.0%)
- Deployed-live implementations: 6 of 16 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 4/6
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 10
- Unique implementations: 16
- Raw deployments: 21
- Audits discovered: 6 (6 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 5
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-11 (fresh)
- Audit staleness (calendar age): 2 fresh, 4 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 4 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| WatchPug | Tier 2 | 3 | 50.0% | 2025-11 |
| RigSec | Tier 2 | 2 | 33.3% | 2025-05 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Gateway | unknown | bsc | n/a | 3 deployments: bsc [`0x22d957...34deda`](./contracts/bsc-56/0x22d957163d6a075cf05474ccd2633c27c134deda/); bsc `0x54b1cc...29f23e`; bsc `0xb6820f...b66760` | ✅ Audited |
| Highway | unknown | bsc | n/a | 2 deployments: bsc [`0x7f5a8e...12e419`](./contracts/bsc-56/0x7f5a8ee5149b9bbc462b2f4d5b03cb56ce12e419/); bsc `0xfdf12f...d29649` | ✅ Audited |
| Settler | unknown | bsc | n/a | 2 deployments: bsc [`0x23fd9d...3a04ed`](./contracts/bsc-56/0x23fd9dfb3f5772034ed677aeb15f048da53a04ed/); bsc `0xdf09eb...90caa1` | ✅ Audited |
| StandDUSD | unknown | bsc | n/a | 2 deployments: bsc [`0x2e8749...1ffdb2`](./contracts/bsc-56/0x2e8749ea4b3324376fa740f63abba2993d1ffdb2/); bsc `0x57f4df...d9e22d` | ✅ Audited |

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ERC1967Proxy | proxy | bsc | n/a | [`0x84603c...30766f`](./contracts/bsc-56/0x84603ca30da1ae131f624a4edf2d8ac8a030766f/) | ⚠️ Unaudited |
| PancakePair | unknown | bsc | n/a | [`0x2ad9c1...30b9c5`](./contracts/bsc-56/0x2ad9c1ad5b06f953b69d39d6685d725cd330b9c5/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (10)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0x77cf4e...554915` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x79864d...63d771` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x79d4d8...7c9223` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8c69ac...843053` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x96a4a8...b71652` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb69f4f...72dc3b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcb5f15...066874` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe17f50...39074f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe202fb...a14f1c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfb558c...5ac10f` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [WatchPug_StandX_DUSD_Solana_Audit.pdf](https://github.com/standx-labs/stand_audit/blob/main/WatchPug_StandX_DUSD_Solana_Audit.pdf) | WatchPug | Audit | 2025-03 | aging | Direct | contract_name | 1 | n/a |
| [WatchPug_StandX_DUSD_EVM_Audit.pdf](https://github.com/standx-labs/stand_audit/blob/main/WatchPug_StandX_DUSD_EVM_Audit.pdf) | WatchPug | Audit | 2025-04 | aging | Direct | contract_name | 2 | n/a |
| [WatchPug_StandX_Highway_EVM_Audit.pdf](https://github.com/standx-labs/stand_audit/blob/main/WatchPug_StandX_Highway_EVM_Audit.pdf) | WatchPug | Audit | 2025-10 | fresh | Direct | contract_name | 1 | n/a |
| [WatchPug_StandX_Highway_SVM_Audit.pdf](https://github.com/standx-labs/stand_audit/blob/main/WatchPug_StandX_Highway_SVM_Audit.pdf) | WatchPug | Audit | 2025-11 | fresh | Direct | contract_name | 1 | n/a |
| [RigSec_StandX_DUSD_Solana_Audit.pdf](https://github.com/standx-labs/stand_audit/blob/main/RigSec_StandX_DUSD_Solana_Audit.pdf) | RigSec | Audit | 2025-05 | aging | Direct | n/a | 0 | n/a |
| [RigSec_StandX_DUSD_EVM_Audit.pdf](https://github.com/standx-labs/stand_audit/blob/main/RigSec_StandX_DUSD_EVM_Audit.pdf) | RigSec | Audit | 2025-05 | aging | Direct | contract_name | 2 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x2ad9c1...30b9c5`](./contracts/bsc-56/0x2ad9c1ad5b06f953b69d39d6685d725cd330b9c5/) | PancakePair | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 5 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 10 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=7

Zero-match audit list:

- [3860] RigSec_StandX_DUSD_Solana_Audit.pdf

Fork inheritance lineage and inherited audits are included when available.
