# Agentic Audit Brief: Rank Trading

## Project Overview

- Project: Rank Trading (`rank-trading`)
- Website: [https://rank.trading/](https://rank.trading/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:44.176Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-1cbb
- Chains: bsc
- Contract surface: 12 unique implementations (21 raw deployments)
- DeFi Llama TVL: $1,804,906.58
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield. Structurally: 17 project-authored contract(s) across 1 chain(s); 2 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 5 functional families. Contracts are linked by 15 cross-contract reference(s). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 43; live-surface contracts included: 21 (15 live, 6 unknown).
- Excluded by liveness: 22 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 2/6 (33.3%)
- Deployed-live implementations: 6 of 12 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 2/6
- Verified + Unaudited implementations: 4
- Verified by bytecode match: 0
- Unverified implementations: 6
- Unique implementations: 12
- Raw deployments: 21
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-01 (aging)
- Audit staleness (calendar age): 0 fresh, 2 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Hashlock | Tier 2 | 2 | 33.3% | 2025-01 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| RankFactory | registry | bsc | n/a | 10 deployments: bsc [`0x1563c9...447227`](./contracts/bsc-56/0x1563c9837f9b71ba6f69342276deda6158447227/); bsc `0x185f8b...31c82e`; bsc `0x276ee9...a17eb8`; bsc `0x6e9d30...286a3f`; bsc `0x7cd6ea...e7dc19`; bsc `0x8e9fc0...a90601`; bsc `0x95defc...b573f3`; bsc `0xab5389...40e452`; bsc `0xcbabba...b5a679`; bsc `0xf86ada...5b70db` | ✅ Audited |
| RankToken | token | bsc | n/a | [`0x978ab3...cbf952`](./contracts/bsc-56/0x978ab3d5a5c39bcbb2a15f2ad324187dd7cbf952/) | ✅ Audited |

### ⚠️ Verified + Unaudited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| FullRangeConvertorV2 | adapter | bsc | n/a | [`0xf8ec48...c51066`](./contracts/bsc-56/0xf8ec48e0022f4b59f120579dba3b472580c51066/) | ⚠️ Unaudited |
| RankStrategy | unknown | bsc | n/a | [`0xf9b185...1aaffd`](./contracts/bsc-56/0xf9b1859266b21dfc02c8bd31e11103f97a1aaffd/) | ⚠️ Unaudited |
| StakingPool | core_logic | bsc | n/a | [`0xd6a07b...cd1074`](./contracts/bsc-56/0xd6a07b8065f9e8386a9a5bba6a754a10a9cd1074/) | ⚠️ Unaudited |
| UNCX_LiquidityLocker_UniV3 | unknown | bsc | n/a | [`0xfe88da...bf1557`](./contracts/bsc-56/0xfe88dab083964c56429baa01f37ec2265abf1557/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | bsc | n/a | `0x3d413f...ad7a36` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x582c5a...31a3b0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcb8b00...fb62ec` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd041c5...e441c2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd2b1c1...bb53f0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe0c497...200ec3` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [hashlock.com/audits/rank-trading](https://hashlock.com/audits/rank-trading) | unknown | Audit | 2025-01 | aging | Direct | n/a | 0 | n/a |
| [RankTrading-Smart-Contract-Audit-Report-Final-Report.pdf](https://hashlock.com/wp-content/uploads/2025/02/RankTrading-Smart-Contract-Audit-Report-Final-Report.pdf) | Hashlock | Audit | 2025-01 | aging | Direct | contract_name | 2 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 12 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=2

Zero-match audit list:

- [2836] hashlock.com/audits/rank-trading

Fork inheritance lineage and inherited audits are included when available.
