# Agentic Audit Brief: LatteSwap

## Project Overview

- Project: LatteSwap (`latteswap`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:29.414Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-43c7
- Chains: bsc
- Contract surface: 4 unique implementations (4 raw deployments)
- DeFi Llama TVL: $52,934.89
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 33 project-authored contract(s) across 1 chain(s); 3 ERC20 tokens, 2 ERC721 NFTs; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 4 functional families. Its contracts share 10 common project-authored base contract(s) (ownableupgradeable, contextupgradeable, pausableupgradeable). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 90; live-surface contracts included: 4 (3 live, 1 unknown).
- Excluded by liveness: 86 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 2/3 (66.7%)
- Deployed-live implementations: 3 of 4 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 2/3
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 4
- Raw deployments: 4
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-10 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 1 | 33.3% | 2021-07 |
| WatchPug | Tier 2 | 1 | 33.3% | 2021-10 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| LATTE | unknown | bsc | n/a | [`0x8d78c2...91c81a`](./contracts/bsc-56/0x8d78c2ff1fb4fba08c7691dfeac7bb425a91c81a/) | ✅ Audited |
| LATTEV2 | unknown | bsc | n/a | [`0xa269a9...f2b6cb`](./contracts/bsc-56/0xa269a9942086f5f87930499dc8317ccc9df2b6cb/) | ✅ Audited |

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| LatteSwapRouter | adapter | bsc | n/a | [`0x4ec82e...bf071d`](./contracts/bsc-56/0x4ec82ecd19529ff50a467f522029f69459bf071d/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0x5f7a11...6fa609` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [PeckShield-Audit-Report-LatteSwap-v1.0.pdf](https://github.com/latteswap-official/latteswap-contract/blob/main/audit/protocol/PeckShield-Audit-Report-LatteSwap-v1.0.pdf) | PeckShield | Audit | 2021-07 | stale | Direct | contract_name | 1 | n/a |
| [LatteSwap_v2_Audit_Report_by_WatchPug_v1.1.pdf](https://github.com/latteswap-official/latteswap-contract/blob/main/audit/latte-v2/LatteSwap_v2_Audit_Report_by_WatchPug_v1.1.pdf) | WatchPug | Audit | 2021-10 | stale | Direct | contract_name | 1 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x4ec82e...bf071d`](./contracts/bsc-56/0x4ec82ecd19529ff50a467f522029f69459bf071d/) | LatteSwapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=2

Fork inheritance lineage and inherited audits are included when available.
