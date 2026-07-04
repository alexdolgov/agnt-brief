# Agentic Audit Brief: Ithaca Protocol

## Project Overview

- Project: Ithaca Protocol (`ithaca-protocol`)
- Website: [https://app.ithacaprotocol.io](https://app.ithacaprotocol.io)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:14.177Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-dc67
- Chains: arbitrum, bsc
- Contract surface: 15 unique implementations (24 raw deployments)
- DeFi Llama TVL: $12,707.56
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Options. Structurally: 5 project-authored contract(s) across 2 chain(s); 1 ERC20 token; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 4 functional families. Its contracts share 1 common project-authored base contract(s) (accessrestricted). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 29; live-surface contracts included: 24 (18 live, 6 unknown).
- Excluded by liveness: 5 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 7/9 (77.8%)
- Deployed-live implementations: 9 of 15 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 7/9
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 6
- Unique implementations: 15
- Raw deployments: 24
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-01 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 7 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Halborn | Tier 2 | 7 | 77.8% | 2024-01 |

## Contract Surface

### ✅ Verified + Audited (7)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AaveV3Strategy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x9f4940...a6fc57`](./contracts/arbitrum-42161/0x9f494058e0501498f09fd0173d5024e1d3a6fc57/); arbitrum `0xe91c9f...358a75` | ✅ Audited |
| AccessController | unknown | arbitrum | n/a | [`0x31f409...525342`](./contracts/arbitrum-42161/0x31f40912d81ed3407b4e1238826e923601525342/) | ✅ Audited |
| Fundlock | unknown | arbitrum | n/a | 5 deployments: arbitrum [`0x62185e...1fa1bc`](./contracts/arbitrum-42161/0x62185e9fc1777f56425aee6f95128ed36d1fa1bc/); arbitrum `0x9139a5...86417b`; arbitrum `0xb55173...211632`; arbitrum `0xba1fa5...375f77`; arbitrum `0xc07fab...9cc9bc` | ✅ Audited |
| Ledger | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x2ba85e...ff36c4`](./contracts/arbitrum-42161/0x2ba85ed7ed154d90fe578a95c030edcadaff36c4/); arbitrum `0xc74354...5b2836` | ✅ Audited |
| Registry | unknown | arbitrum | n/a | [`0x3b555e...2557d9`](./contracts/arbitrum-42161/0x3b555e087099d05cdb850fac9e22b29d702557d9/) | ✅ Audited |
| Registry | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x4f6bdb...c19691`](./contracts/arbitrum-42161/0x4f6bdb9f750eb3681553b8af7523363ef7c19691/); arbitrum `0x64fe92...57a24a` | ✅ Audited |
| TokenValidator | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x73475f...7b7342`](./contracts/arbitrum-42161/0x73475f6c26ea814e2d247d57c6fc1ab8107b7342/); arbitrum `0xa6daea...f35c46` | ✅ Audited |

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ERC1967Proxy | proxy | arbitrum | n/a | 2 deployments: arbitrum [`0xba0412...4ea1db`](./contracts/arbitrum-42161/0xba041237bb5ae8202f0d5135c5f7fc71b64ea1db/); arbitrum `0xf43028...8286d2` | ⚠️ Unaudited |
| ITHACA | unknown | bsc | n/a | [`0x49f1d4...c007ca`](./contracts/bsc-56/0x49f1d4db3ea1a64390e990c6debeac88eac007ca/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | bsc | n/a | `0x550c55...0803f7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x058fc3...da1bb9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1a5250...64c2a1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x691b14...cac6f7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8ec12c...0b1e9b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc7b473...3d5cf0` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [index.html](https://certificate.quantstamp.com/full/ithaca-finance/8cacdbf3-9f47-4135-854d-1d004abad065/index.html) | Quantstamp | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ithacaprotocol.io_EVM_Contracts_Smart_Contract_Security_Assessment_Report_Halborn_Final.pdf](https://github.com/HalbornSecurity/PublicReports/blob/master/Solidity%20Smart%20Contract%20Audits/ithacaprotocol.io_EVM_Contracts_Smart_Contract_Security_Assessment_Report_Halborn_Final.pdf) | Halborn | Audit | 2024-01 | stale | Direct | contract_name | 15 | high |
| [Ithaca_Backend_WebApp_Pentest_ Report_Halborn_Final.pdf](https://github.com/HalbornSecurity/PublicReports/blob/master/Web%20Pentest/Ithaca_Backend_WebApp_Pentest_%20Report_Halborn_Final.pdf) | Halborn | Audit | 2023-10 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 15 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=15

Zero-match audit list:

- [13304] index.html
- [13306] Ithaca_Backend_WebApp_Pentest_ Report_Halborn_Final.pdf

Fork inheritance lineage and inherited audits are included when available.
