# Agentic Audit Brief: Bass Exchange

## Project Overview

- Project: Bass Exchange (`bass-exchange`)
- Lifecycle: active (Tier 0, 73.2% below peak)
- Generated: 2026-07-04T14:53:05.330Z
- Pipeline run: v2-pipeline-2026-07-01-2b719a-f2f0
- Chains: base
- Contract surface: 10 unique implementations (17 raw deployments)
- DeFi Llama TVL: $248,448.20
- On-chain TVL (included contracts): $49,223.00
- TVL by chain: Base $49,223.00

## Project Description

Dexs. Structurally: 16 project-authored contract(s) across 1 chain(s); 4 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 8 functional families. Its contracts share 4 common project-authored base contract(s) (proxy, erc1967upgrade, pausableassets). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 34; live-surface contracts included: 16 (10 live, 6 unknown).
- Excluded by liveness: 18 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/4 (25.0%)
- Deployed-live implementations: 4 of 10 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/4
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 6
- Unique implementations: 10
- Raw deployments: 17
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): $49,223.00
- Latest audit: 2023-09 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 1 | 25.0% | 2023-09 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Asset | unknown | base | n/a | 5 deployments: base [`0x127fce...e49dec`](./contracts/base-8453/0x127fce29004451beb4e62869adac635353e49dec/); base `0x1dd576...3bec6d`; base `0x38c9d8...a7d731`; base `0x57d00d...968c39`; base `0x65c252...45d8a9` | ✅ Audited |

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Token | token | base | n/a | [`0x1f23b7...aebad8`](./contracts/base-8453/0x1f23b787053802108fed5b67cf703f0778aebad8/) | ⚠️ Unaudited |
| SkimmableAsset | unknown | base | n/a | 2 deployments: base [`0x2bcaa7...ec0a6a`](./contracts/base-8453/0x2bcaa79ab66af39a1d1d83749407845394ec0a6a/); base `0x2f4588...6ebff2` | ⚠️ Unaudited |
| StakedDistributor | operational_periphery | base | n/a | 3 deployments: base [`0x62087a...5880c5`](./contracts/base-8453/0x62087a1ea1fab540e3da3c5ddd0c8721035880c5/); base `0xa5895b...344333`; base `0xb6d740...7f2832` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | base | n/a | `0x0a6156...e48fb4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x37917e...383eda` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x515829...521ba0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x66a55a...8a82e0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6ba897...2ecaf2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb11f5e...8f9a9c` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Bass Exchange.pdf](https://github.com/EtherAuthority/Audit/blob/main/Bass%20Exchange.pdf) | unknown | Audit | 2023-09 | stale | Direct | contract_name | 1 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0x1f23b7...aebad8`](./contracts/base-8453/0x1f23b787053802108fed5b67cf703f0778aebad8/) | Token | token | $49,223.00 | Verified native implementation with $49,223.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2bcaa7...ec0a6a`](./contracts/base-8453/0x2bcaa79ab66af39a1d1d83749407845394ec0a6a/) | SkimmableAsset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x62087a...5880c5`](./contracts/base-8453/0x62087a1ea1fab540e3da3c5ddd0c8721035880c5/) | StakedDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 4 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 6 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=1

Fork inheritance lineage and inherited audits are included when available.
