# Agentic Audit Brief: DeFIL

## Project Overview

- Project: DeFIL (`defil`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:10.868Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-43c7
- Chains: ethereum
- Contract surface: 23 unique implementations (25 raw deployments)
- DeFi Llama TVL: $1,800,957.56
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Lending. Structurally: 37 project-authored contract(s) across 1 chain(s); 11 ERC20 tokens, 1 ERC1155 multi-token; role-gated via AccessControl; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 23 common project-authored base contract(s) (redistributor, exponentialnoerror, ctokeninterface). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 77; live-surface contracts included: 25 (9 live, 16 unknown).
- Excluded by liveness: 52 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/6 (0.0%)
- Deployed-live implementations: 7 of 23 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/9
- Verified + Unaudited implementations: 9
- Verified by bytecode match: 0
- Unverified implementations: 14
- Unique implementations: 23
- Raw deployments: 25
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2018-03 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (9)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BatchDistributor | unknown | ethereum | n/a | [`0x94a189...7c0d18`](./contracts/ethereum-1/0x94a189022b0fe3072f0313b8cf21721ca97c0d18/) | ⚠️ Unaudited |
| CErc20Delegator | token | ethereum | n/a | [`0x036cf3...c1dbb0`](./contracts/ethereum-1/0x036cf3821ea246e935feef1c29ed8ddffac1dbb0/) | ⚠️ Unaudited |
| DFL | unknown | ethereum | n/a | 2 deployments: ethereum [`0x09ce2b...f095ab`](./contracts/ethereum-1/0x09ce2b746c32528b7d864a1e3979bd97d2f095ab/); ethereum `0x6ded0f...67c9d7` | ⚠️ Unaudited |
| EFIL | unknown | ethereum | n/a | 2 deployments: ethereum [`0x22b475...e56c2c`](./contracts/ethereum-1/0x22b475f3e93390b7e523873ad7073337f4e56c2c/); ethereum `0x2a2cb9...5cb628` | ⚠️ Unaudited |
| FILST | token | ethereum | n/a | [`0x7346ad...c24ca2`](./contracts/ethereum-1/0x7346ad4c8cd1886ff6d16072bcea5dfc0bc24ca2/) | ⚠️ Unaudited |
| FILSTUtils | unknown | ethereum | n/a | [`0x987dd3...f25928`](./contracts/ethereum-1/0x987dd30f57e51a732e4dcad0890ad6631ff25928/) | ⚠️ Unaudited |
| MFIL | unknown | ethereum | n/a | [`0x3c392c...b27b0c`](./contracts/ethereum-1/0x3c392c3fbe6ada6049373478a4f8dd668ab27b0c/) | ⚠️ Unaudited |
| MiningNFT | token | ethereum | n/a | [`0xad1ed3...a4a9cf`](./contracts/ethereum-1/0xad1ed31e70b569d78d1930537179a940dda4a9cf/) | ⚠️ Unaudited |
| UniswapV2Pair | unknown | ethereum | n/a | [`0xd372a3...57e163`](./contracts/ethereum-1/0xd372a3221021df72eda38f77117d3a95f057e163/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (14)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x18c87f...a9d7c9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x19e47d...ac3396` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1c7f77...99103c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2542ac...21fedc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x312c6f...c55199` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4cd7b5...8315d5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4d5f20...abb9b8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6d4e77...8bc145` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x75ca1e...a0c0dd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7a664a...408405` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9b1322...821e82` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb94e91...f6fa82` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc8f017...b2197b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfb2fd2...e1adac` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [security-audit-certificate.html](https://www.slowmist.com/security-audit-certificate.html?id=e84a975074cb9aef9299f9dec92311fd1458d0bbb4163adfadac8e16e0da3c61) | SlowMist | Audit | 2018-03 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x94a189...7c0d18`](./contracts/ethereum-1/0x94a189022b0fe3072f0313b8cf21721ca97c0d18/) | BatchDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x036cf3...c1dbb0`](./contracts/ethereum-1/0x036cf3821ea246e935feef1c29ed8ddffac1dbb0/) | CErc20Delegator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x09ce2b...f095ab`](./contracts/ethereum-1/0x09ce2b746c32528b7d864a1e3979bd97d2f095ab/) | DFL | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x22b475...e56c2c`](./contracts/ethereum-1/0x22b475f3e93390b7e523873ad7073337f4e56c2c/) | EFIL | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7346ad...c24ca2`](./contracts/ethereum-1/0x7346ad4c8cd1886ff6d16072bcea5dfc0bc24ca2/) | FILST | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x987dd3...f25928`](./contracts/ethereum-1/0x987dd30f57e51a732e4dcad0890ad6631ff25928/) | FILSTUtils | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3c392c...b27b0c`](./contracts/ethereum-1/0x3c392c3fbe6ada6049373478a4f8dd668ab27b0c/) | MFIL | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xad1ed3...a4a9cf`](./contracts/ethereum-1/0xad1ed31e70b569d78d1930537179a940dda4a9cf/) | MiningNFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 8 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 14 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [2975] security-audit-certificate.html

Fork inheritance lineage and inherited audits are included when available.
