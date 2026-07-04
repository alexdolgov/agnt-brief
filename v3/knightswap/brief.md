# Agentic Audit Brief: KnightSwap

## Project Overview

- Project: KnightSwap (`knightswap`)
- Website: [https://knightswap.financial](https://knightswap.financial)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:20.022Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-ae05
- Chains: bsc, fantom
- Contract surface: 11 unique implementations (12 raw deployments)
- DeFi Llama TVL: $875,758.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 17 project-authored contract(s) across 1 chain(s); 7 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 5 functional families. Contracts are linked by 5 cross-contract reference(s). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 31; live-surface contracts included: 12 (6 live, 6 unknown).
- Excluded by liveness: 19 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/5 (0.0%)
- Deployed-live implementations: 5 of 11 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/5
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 6
- Unique implementations: 11
- Raw deployments: 12
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-11 (stale)
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
| KnightFactory | registry | bsc | n/a | [`0xf0bc2e...90751f`](./contracts/bsc-56/0xf0bc2e21a76513aa7cc2730c7a1d6dee0790751f/) | ⚠️ Unaudited |
| KnightRouter | adapter | bsc | n/a | [`0x05e61e...d6c46f`](./contracts/bsc-56/0x05e61e0cdcd2170a76f9568a110cee3afdd6c46f/) | ⚠️ Unaudited |
| KnightToken | token | bsc | n/a | [`0xd23811...c4abba`](./contracts/bsc-56/0xd23811058eb6e7967d9a00dc3886e75610c4abba/) | ⚠️ Unaudited |
| MasterChef | unknown | bsc | n/a | 2 deployments: bsc [`0xe50cb7...407414`](./contracts/bsc-56/0xe50cb76a71b0c52ab091860cd61b9ba2fa407414/); bsc `0xf5d8c5...bc1a49` | ⚠️ Unaudited |
| NFTHELPER | token | bsc | n/a | [`0xe186af...6edc34`](./contracts/bsc-56/0xe186af8f9bfd6385df4340a87650c425506edc34/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | bsc | n/a | `0x1ea8fb...9d02b9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x77e6d5...8b3f27` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcaeb6e...ad8262` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcc84b3...f61620` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xff16d3...5ad8c1` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x7d82f5...732218` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [KnightSwap.pdf](https://github.com/TechRate/Smart-Contract-Audits/blob/main/November/KnightSwap.pdf) | unknown | Audit | 2021-11 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 11 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [13350] KnightSwap.pdf

Fork inheritance lineage and inherited audits are included when available.
