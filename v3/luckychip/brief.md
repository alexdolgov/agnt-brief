# Agentic Audit Brief: LuckyChip

## Project Overview

- Project: LuckyChip (`luckychip`)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:21.724Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-1cbb
- Chains: bsc
- Contract surface: 9 unique implementations (26 raw deployments)
- DeFi Llama TVL: $488.37
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Luck Games. Structurally: 24 project-authored contract(s) across 1 chain(s); 3 ERC20 tokens; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 1 common project-authored base contract(s) (bep20). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 55; live-surface contracts included: 26 (26 live, 0 unknown).
- Excluded by liveness: 29 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 4/9 (44.4%)
- Deployed-live implementations: 9 of 9 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 4/9
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 9
- Raw deployments: 26
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-02 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 4 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 2 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 4 | 44.4% | 2022-02 |
| CertiK | Tier 2 | 1 | 11.1% | 2021-10 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BetMining | unknown | bsc | n/a | [`0xdb4a01...966cc0`](./contracts/bsc-56/0xdb4a019aa054b0c04cb7d1e25e59d6fe2c966cc0/) | ✅ Audited |
| LCToken | token | bsc | n/a | 2 deployments: bsc [`0x6012c3...eca8b3`](./contracts/bsc-56/0x6012c3a742f92103d238f1c8306cf8fbcdeca8b3/); bsc `0x640c41...8f842a` | ✅ Audited |
| LuckyPower | unknown | bsc | n/a | [`0x7353ba...332c5b`](./contracts/bsc-56/0x7353ba5e34b69c623ab552276c6ec89da8332c5b/) | ✅ Audited |
| MasterChef | unknown | bsc | n/a | [`0x15d2a6...a1ec2b`](./contracts/bsc-56/0x15d2a6fc45af66a2952dc27c40450c1f06a1ec2b/) | ✅ Audited |

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Dice | unknown | bsc | n/a | 4 deployments: bsc [`0x42276d...6b043f`](./contracts/bsc-56/0x42276d807749cecc25f9e8e25a2a09bb1e6b043f/); bsc `0x682ce0...21db2d`; bsc `0x9a8777...cfcb2b`; bsc `0xda2718...e123fe` | ⚠️ Unaudited |
| DiceBNB | unknown | bsc | n/a | 3 deployments: bsc [`0x40bd59...53e2cc`](./contracts/bsc-56/0x40bd59e5297cfe3cf0b65a4dc4074ddeac53e2cc/); bsc `0x61730d...a95ba5`; bsc `0xdf3e96...f49630` | ⚠️ Unaudited |
| DiceToken | unknown | bsc | n/a | 11 deployments: bsc [`0x51c7e2...8cf261`](./contracts/bsc-56/0x51c7e2091ba35052485e745120097b81b08cf261/); bsc `0x6323b8...31403e`; bsc `0x796686...14add8`; bsc `0x928262...d09bc2`; bsc `0xa247b0...4a8aa4`; bsc `0xb48859...30d436`; bsc `0xd2b1d9...8b022d`; bsc `0xe26f35...6b6f88`; bsc `0xe48cc1...79c36f`; bsc `0xe500cd...f778d6`; bsc `0xfb4ee5...07c626` | ⚠️ Unaudited |
| LuckyFlipBNB | unknown | bsc | n/a | 2 deployments: bsc [`0x193443...6a4e7a`](./contracts/bsc-56/0x1934438465f3f312f913250336e4ff826b6a4e7a/); bsc `0x615116...a055ca` | ⚠️ Unaudited |
| LuckyGameBNB | unknown | bsc | n/a | [`0x45218e...89f819`](./contracts/bsc-56/0x45218ede6f026f0994c55b6fa3554a8ea989f819/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (0)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

- None

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [skynet.certik.com/projects/luckychip](https://skynet.certik.com/projects/luckychip) | CertiK | Audit | 2021-10 | stale | Direct | contract_name | 1 | n/a |
| [PeckShield-Audit-Report-LuckyChip-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-LuckyChip-v1.0.pdf) | PeckShield | Audit | 2021-09 | stale | Direct | contract_name | 1 | n/a |
| [PeckShield-Audit-Report-LuckyChipStaking-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-LuckyChipStaking-v1.0.pdf) | PeckShield | Audit | 2021-12 | stale | Direct | contract_name | 2 | high |
| [PeckShield-Audit-Report-ERC20-LuckyChip-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-ERC20-LuckyChip-v1.0.pdf) | PeckShield | Audit | 2022-02 | stale | Direct | contract_name | 1 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 9 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: contract_name=3, extraction_exact=2

Fork inheritance lineage and inherited audits are included when available.
