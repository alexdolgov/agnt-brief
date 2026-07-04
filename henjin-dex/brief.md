# Agentic Audit Brief: Henjin DEX

## Project Overview

- Project: Henjin DEX (`henjin-dex`)
- Website: [https://henjin.xyz/](https://henjin.xyz/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:21.414Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-ae05
- Chains: base
- Contract surface: 9 unique implementations (9 raw deployments)
- DeFi Llama TVL: $1,136.07
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 17 project-authored contract(s) across 1 chain(s); 2 ERC20 tokens, 1 ERC721 NFT; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 6 functional families. Its contracts share 7 common project-authored base contract(s) (peripheryimmutablestate, peripheryvalidation, blocktimestamp). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 16; live-surface contracts included: 9 (5 live, 4 unknown).
- Excluded by liveness: 7 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 3/5 (60.0%)
- Deployed-live implementations: 5 of 9 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 3/5
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 4
- Unique implementations: 9
- Raw deployments: 9
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-08 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 3 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 3 | 60.0% | 2024-05 |
| BailSec | Tier 2 | 1 | 20.0% | 2024-08 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AlgebraFactory | unknown | base | n/a | [`0x496381...ed101b`](./contracts/base-8453/0x4963818c35d5793d771bf8091c750b5a71ed101b/) | ✅ Audited |
| BasePluginV1Factory | unknown | base | n/a | [`0x07bc9a...e24356`](./contracts/base-8453/0x07bc9a408b385c7aa8de2783795759512fe24356/) | ✅ Audited |
| FarmingCenter | unknown | base | n/a | [`0x73d4bb...1cbef8`](./contracts/base-8453/0x73d4bb35c538a120f428c25693ae471b6e1cbef8/) | ✅ Audited |

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AlgebraCommunityVault | unknown | base | n/a | [`0xe52d07...67de53`](./contracts/base-8453/0xe52d07be37867ebf2e81b015ae867b355667de53/) | ⚠️ Unaudited |
| HENAIToken | unknown | base | n/a | [`0x42b08e...8d3509`](./contracts/base-8453/0x42b08e7a9211482d3643a126a7df1895448d3509/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (4)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | base | n/a | `0x0d855a...9efda9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6ced7b...f87f4b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9df686...554029` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xedfd8d...a2c54c` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Bailsec - Algebra Integral - Update Audit (differential) Final Report Github (+Resolution).pdf](https://github.com/bailsec/BailSec/blob/main/Bailsec%20-%20Algebra%20Integral%20-%20Update%20Audit%20(differential)%20Final%20Report%20Github%20(%2BResolution).pdf) | unknown | Audit | 2024-05 | stale | Direct | contract_name | 3 | high |
| [Bailsec - Algebra Core Update Audit (differential) - Final Report.pdf](https://github.com/bailsec/BailSec/blob/main/Bailsec%20-%20Algebra%20Core%20Update%20Audit%20(differential)%20-%20Final%20Report.pdf) | BailSec | Audit | 2024-08 | aging | Direct | contract_name | 1 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0xe52d07...67de53`](./contracts/base-8453/0xe52d07be37867ebf2e81b015ae867b355667de53/) | AlgebraCommunityVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x42b08e...8d3509`](./contracts/base-8453/0x42b08e7a9211482d3643a126a7df1895448d3509/) | HENAIToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 5 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 4 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=4

Fork inheritance lineage and inherited audits are included when available.
