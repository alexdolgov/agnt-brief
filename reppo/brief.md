# Agentic Audit Brief: Reppo

## Project Overview

- Project: Reppo (`reppo`)
- Website: [https://reppo.xyz/](https://reppo.xyz/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:44.671Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d640
- Chains: base
- Contract surface: 10 unique implementations (11 raw deployments)
- DeFi Llama TVL: $5,591,598.09
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Prediction Market. Structurally: 51 project-authored contract(s) across 1 chain(s); 9 ERC20 tokens, 3 ERC721 NFTs; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 4 functional families. Its contracts share 4 common project-authored base contract(s) (tokensaver, coreregistry, validatorregistry). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 132; live-surface contracts included: 11 (2 live, 9 unknown).
- Excluded by liveness: 121 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/1 (0.0%)
- Deployed-live implementations: 1 of 10 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/1
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 9
- Unique implementations: 10
- Raw deployments: 11
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-03 (fresh)
- Audit staleness (calendar age): 1 fresh, 2 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AgentTokenV2 | token | base | n/a | 2 deployments: base [`0x7bab5d2e3ebde7293888b3f4c022aaaad88ae2db`](./contracts/base-8453/0x7bab5d2e3ebde7293888b3f4c022aaaad88ae2db/); base `0xff8104251e7761163fac3211ef5583fb3f8583d6` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (9)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | base | n/a | `0x13ee19f627d657db7965c7be02334057ff069950` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2fb74722d53dac5290515c477950f4292da06ccf` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x33f8120a17d504609e49c8eed4a0480f09e736af` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3650752d4dde21c6ed7df6d4840e15de48e25481` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x45c60adf130f21d54381be129bbe2abd0c574654` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6a5138c121bff6ac0aef60f3492e0243595ba0fe` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6e1c28791d9e9ef8b0d1821bb74fc5b5a3907641` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x70b0a7224ef45e2e3aa03743eca86159644630be` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa317137595ae79a31c36fae0012022e12d5603d8` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [2025-06-25.pdf](https://github.com/Reppo-Labs/audit-reports/blob/main/2025-06-25.pdf) | unknown | Audit | 2025-06 | aging | Direct | n/a | 0 | n/a |
| [2025-07-15.pdf](https://github.com/Reppo-Labs/audit-reports/blob/main/2025-07-15.pdf) | unknown | Audit | 2025-07 | aging | Direct | n/a | 0 | n/a |
| [2026-03-24.pdf](https://github.com/Reppo-Labs/audit-reports/blob/main/2026-03-24.pdf) | unknown | Audit | 2026-03 | fresh | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0x7bab5d2e3ebde7293888b3f4c022aaaad88ae2db`](./contracts/base-8453/0x7bab5d2e3ebde7293888b3f4c022aaaad88ae2db/) | AgentTokenV2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 9 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [2257] 2025-06-25.pdf
- [2258] 2025-07-15.pdf
- [2259] 2026-03-24.pdf

Fork inheritance lineage and inherited audits are included when available.
