# Agentic Audit Brief: MortgageFi

## Project Overview

- Project: MortgageFi (`mortgagefi`)
- Website: [https://mortgagefi.app](https://mortgagefi.app)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:31.865Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-ae05
- Chains: arbitrum, base
- Contract surface: 21 unique implementations (24 raw deployments)
- DeFi Llama TVL: $730,636.48
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Lending. Structurally: 6 project-authored contract(s) across 2 chain(s); 2 ERC721 NFTs; role-gated via AccessControl; built on openzeppelin.

### Architecture

The protocol forms a single structural family (Core Logic) of 6 contract(s).

## Contract Surface Quality

- Indexed contracts: 30; live-surface contracts included: 24 (8 live, 16 unknown).
- Excluded by liveness: 6 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 2/5 (40.0%)
- Deployed-live implementations: 5 of 21 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 2/5
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 16
- Unique implementations: 21
- Raw deployments: 24
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-08 (aging)
- Audit staleness (calendar age): 0 fresh, 3 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Decurity | Tier 2 | 2 | 40.0% | 2024-08 |
| Hashlock | Tier 2 | 2 | 40.0% | 2024-08 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| mortgagecontracts | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0xa702f6...059109`](./contracts/arbitrum-42161/0xa702f61b6e055be8d394754f59814254f7059109/); arbitrum `0xede6f5...92bfe1` | ✅ Audited |
| mortgageconversionvault | core_logic | arbitrum | n/a | 2 deployments: arbitrum [`0x61d268...33fbed`](./contracts/arbitrum-42161/0x61d2688121676ed8123ad62e71994c66ee33fbed/); arbitrum `0xa468d9...9f8988` | ✅ Audited |

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| mortgagefipoolusdcweth | core_logic | base | n/a | [`0x1be87d...de9eea`](./contracts/base-8453/0x1be87d273d47c3832ab7853812e9a995a4de9eea/) | ⚠️ Unaudited |
| mortgagefipoolusdtwbtc | core_logic | arbitrum | n/a | 2 deployments: arbitrum [`0x2f5aac...520a91`](./contracts/arbitrum-42161/0x2f5aac46575f68fe600e99096ca38301a4520a91/); arbitrum `0x9be2cf...22a33f` | ⚠️ Unaudited |
| mortgagefiusdccbbtcupgraded | unknown | base | n/a | [`0xe93131...b62dc7`](./contracts/base-8453/0xe93131620945a1273b48f57f453983d270b62dc7/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (16)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | base | n/a | `0x0aea2d...2f71b6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x32ff6c...2bd0a9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x392574...5d0e5b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x45306c...bf1f75` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x646a9d...f58c12` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa49204...05ea10` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xafcf31...533817` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb5a79b...9b3152` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbbd3e8...c0b002` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd5f28c...f8c766` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe0dc45...16f2f3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xfd7457...7648d8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2fe514...b37cda` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3bccf0...c72051` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x59f888...ca5bf9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9dd3f2...6d6db8` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [mortgagefi-audit-report-1.1.pdf](https://github.com/Decurity/audits/blob/master/MortgageFi/mortgagefi-audit-report-1.1.pdf) | Decurity | Audit | 2024-08 | aging | Direct | contract_name | 2 | n/a |
| [hashlock.com/audits/mortgagefi](https://hashlock.com/audits/mortgagefi) | unknown | Audit | 2024-08 | aging | Direct | n/a | 0 | n/a |
| [MortageFi-Smart-Contract-Audit-Report-Final-Report.pdf](https://hashlock.com/wp-content/uploads/2024/10/MortageFi-Smart-Contract-Audit-Report-Final-Report.pdf) | Hashlock | Audit | 2024-08 | aging | Direct | contract_name | 2 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 21 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=4

Zero-match audit list:

- [13525] hashlock.com/audits/mortgagefi

Fork inheritance lineage and inherited audits are included when available.
