# Agentic Audit Brief: Plasma One

## Project Overview

- Project: Plasma One (`plasma-one`)
- Website: [https://www.plasma.to/one](https://www.plasma.to/one)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:43.195Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d094
- Chains: plasma
- Contract surface: 4 unique implementations (5 raw deployments)
- DeFi Llama TVL: $8,754,593.48
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Crypto Card Issuer. Structurally: 3 project-authored contract(s) across 1 chain(s); upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Contracts operate as largely independent structural surfaces. Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 5; live-surface contracts included: 5 (3 live, 2 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/1 (0.0%)
- Deployed-live implementations: 2 of 4 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/2
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 4
- Raw deployments: 5
- Audits discovered: 0 (0 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BoringVault | core_logic | plasma | n/a | [`0x1cf1c71440ebd9cc998ce0b1b25ccef275c53d77`](./contracts/plasma-9745/0x1cf1c71440ebd9cc998ce0b1b25ccef275c53d77/) | ⚠️ Unaudited |
| ProxyAdmin | governance | plasma | n/a | 2 deployments: plasma [`0x3224831b5f45c616f8accba907798c6236773772`](./contracts/plasma-9745/0x3224831b5f45c616f8accba907798c6236773772/); plasma `0x5be536efb28c8efbd2da6894996f5df88347d8b2` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (2)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | plasma | n/a | `0x42529da25d82ba7810d7f51d614915b8c7e11acc` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x779ded0c9e1022225f8e0630b35a9b54be713736` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| plasma | [`0x1cf1c71440ebd9cc998ce0b1b25ccef275c53d77`](./contracts/plasma-9745/0x1cf1c71440ebd9cc998ce0b1b25ccef275c53d77/) | BoringVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
