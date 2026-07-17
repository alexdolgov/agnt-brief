# Agentic Audit Brief: Goose

## Project Overview

- Project: Goose (`goose`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:19.888Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-dc67
- Chains: arbitrum, ethereum, opbnb
- Contract surface: 12 unique implementations (13 raw deployments)
- DeFi Llama TVL: $12,794,956.85
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

CeDeFi. Structurally: 7 project-authored contract(s) across 3 chain(s); upgradeable via ERC1967/UUPS proxies; built on openzeppelin-upgradeable.

### Architecture

The protocol comprises 3 functional families. Contracts are linked by 4 cross-contract reference(s). Dominant framework: openzeppelin-upgradeable.

## Contract Surface Quality

- Indexed contracts: 14; live-surface contracts included: 13 (6 live, 7 unknown).
- Excluded by liveness: 1 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/4 (0.0%)
- Deployed-live implementations: 5 of 12 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/5
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 7
- Unique implementations: 12
- Raw deployments: 13
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-03 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| DataStorage | unknown | arbitrum | n/a | [`0x7da1ea975cfa94c230fe527b9d36a62a77448ef3`](./contracts/arbitrum-42161/0x7da1ea975cfa94c230fe527b9d36a62a77448ef3/) | ⚠️ Unaudited |
| LRTVault | core_logic | ethereum | n/a | [`0x234c013dccb6af642fcb7060a91c9c71504f6299`](./contracts/ethereum-1/0x234c013dccb6af642fcb7060a91c9c71504f6299/) | ⚠️ Unaudited |
| Safe | unknown | ethereum | n/a | [`0x509b38c5f884067e2128c4fc89d1489813d695e0`](./contracts/ethereum-1/0x509b38c5f884067e2128c4fc89d1489813d695e0/) | ⚠️ Unaudited |
| USDVault | core_logic | arbitrum | n/a | 2 deployments: ethereum `0xe8a01d8dac4af19ec7a22cf87f3d141ce6e7e9fb`; arbitrum [`0x0874f961178879cdbde3500544c49f864f232899`](./contracts/arbitrum-42161/0x0874f961178879cdbde3500544c49f864f232899/) | ⚠️ Unaudited |
| VaultFactory | registry | arbitrum | n/a | [`0xa988bfe90492d701069702321e319628c9ae6e3f`](./contracts/arbitrum-42161/0xa988bfe90492d701069702321e319628c9ae6e3f/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (7)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | opbnb | n/a | `0x2618d3ab61ae9c7f8082e37c7e6aa14cf1a5230d` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x7da1ea975cfa94c230fe527b9d36a62a77448ef3` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x857ab0b4f236f7dd7e5ac5f96c0bbebf230c2d3b` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0xa988bfe90492d701069702321e319628c9ae6e3f` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0xbaa11f119d3209a506ffb5911f1812bfca97a6bb` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0xc5db819a2473961857f24c2bedf508def28563b9` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0xe4bf4e9be7004f081583952f34ed51efa66ec8d3` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [assets/-MT5Nug3dG0o_JI3n0I1/-MWf8Zs18Nw7znkqTiVb/-MWf8krbtSdOclfHHMVi/Goose_SC_Audit_Report.pdf](https://2939915961-files.gitbook.io/~/files/v0/b/gitbook-legacy-files/o/assets%2F-MT5Nug3dG0o_JI3n0I1%2F-MWf8Zs18Nw7znkqTiVb%2F-MWf8krbtSdOclfHHMVi%2FGoose_SC_Audit_Report.pdf) | unknown | Audit | 2021-03 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0x7da1ea975cfa94c230fe527b9d36a62a77448ef3`](./contracts/arbitrum-42161/0x7da1ea975cfa94c230fe527b9d36a62a77448ef3/) | DataStorage | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x234c013dccb6af642fcb7060a91c9c71504f6299`](./contracts/ethereum-1/0x234c013dccb6af642fcb7060a91c9c71504f6299/) | LRTVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0874f961178879cdbde3500544c49f864f232899`](./contracts/arbitrum-42161/0x0874f961178879cdbde3500544c49f864f232899/) | USDVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xa988bfe90492d701069702321e319628c9ae6e3f`](./contracts/arbitrum-42161/0xa988bfe90492d701069702321e319628c9ae6e3f/) | VaultFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 4 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 7 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [20719] assets/-MT5Nug3dG0o_JI3n0I1/-MWf8Zs18Nw7znkqTiVb/-MWf8krbtSdOclfHHMVi/Goose_SC_Audit_Report.pdf

Fork inheritance lineage and inherited audits are included when available.
