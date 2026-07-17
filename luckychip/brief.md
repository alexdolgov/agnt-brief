# Agentic Audit Brief: LuckyChip

## Project Overview

- Project: LuckyChip (`luckychip`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:30.222Z
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
| BetMining | unknown | bsc | n/a | [`0xdb4a019aa054b0c04cb7d1e25e59d6fe2c966cc0`](./contracts/bsc-56/0xdb4a019aa054b0c04cb7d1e25e59d6fe2c966cc0/) | ✅ Audited |
| LCToken | token | bsc | n/a | 2 deployments: bsc [`0x6012c3a742f92103d238f1c8306cf8fbcdeca8b3`](./contracts/bsc-56/0x6012c3a742f92103d238f1c8306cf8fbcdeca8b3/); bsc `0x640c4126f68543ff0d33487831f608a7898f842a` | ✅ Audited |
| LuckyPower | unknown | bsc | n/a | [`0x7353ba5e34b69c623ab552276c6ec89da8332c5b`](./contracts/bsc-56/0x7353ba5e34b69c623ab552276c6ec89da8332c5b/) | ✅ Audited |
| MasterChef | unknown | bsc | n/a | [`0x15d2a6fc45af66a2952dc27c40450c1f06a1ec2b`](./contracts/bsc-56/0x15d2a6fc45af66a2952dc27c40450c1f06a1ec2b/) | ✅ Audited |

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Dice | unknown | bsc | n/a | 4 deployments: bsc [`0x42276d807749cecc25f9e8e25a2a09bb1e6b043f`](./contracts/bsc-56/0x42276d807749cecc25f9e8e25a2a09bb1e6b043f/); bsc `0x682ce0e340a0248b4554e14e834969f2e421db2d`; bsc `0x9a877744dfb9fb314ff5c50d34e4f8efd7cfcb2b`; bsc `0xda271857e7c560e6571d6585d6ac6a8683e123fe` | ⚠️ Unaudited |
| DiceBNB | unknown | bsc | n/a | 3 deployments: bsc [`0x40bd59e5297cfe3cf0b65a4dc4074ddeac53e2cc`](./contracts/bsc-56/0x40bd59e5297cfe3cf0b65a4dc4074ddeac53e2cc/); bsc `0x61730d50624a89c0f8a864d32bb0ed2aaba95ba5`; bsc `0xdf3e96a5d4a0c9aef5f15c642eb736e2a2f49630` | ⚠️ Unaudited |
| DiceToken | unknown | bsc | n/a | 11 deployments: bsc [`0x51c7e2091ba35052485e745120097b81b08cf261`](./contracts/bsc-56/0x51c7e2091ba35052485e745120097b81b08cf261/); bsc `0x6323b8f77bd1c7129e134697bb8024f68831403e`; bsc `0x79668624c329f605735a10525c12f6eddc14add8`; bsc `0x928262c8b92def1dab5076d53f60e0531cd09bc2`; bsc `0xa247b0b8c8baeb974ae0c64ad4504b30ab4a8aa4`; bsc `0xb48859f5f9154be1d9b239b43471ef665b30d436`; bsc `0xd2b1d99d2e5d2058cce7c267f1f87a78158b022d`; bsc `0xe26f357e9d4cff2d01bd1d4a7b55fb77b86b6f88`; bsc `0xe48cc1803c1310f35879c6e2bf085f78b579c36f`; bsc `0xe500cda37b89bc10cb9329029959a69a3bf778d6`; bsc `0xfb4ee5ed160d4c2658c963aefebc22f7b707c626` | ⚠️ Unaudited |
| LuckyFlipBNB | unknown | bsc | n/a | 2 deployments: bsc [`0x1934438465f3f312f913250336e4ff826b6a4e7a`](./contracts/bsc-56/0x1934438465f3f312f913250336e4ff826b6a4e7a/); bsc `0x615116667689a49c3c2432984ed5e373bda055ca` | ⚠️ Unaudited |
| LuckyGameBNB | unknown | bsc | n/a | [`0x45218ede6f026f0994c55b6fa3554a8ea989f819`](./contracts/bsc-56/0x45218ede6f026f0994c55b6fa3554a8ea989f819/) | ⚠️ Unaudited |

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

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x42276d807749cecc25f9e8e25a2a09bb1e6b043f`](./contracts/bsc-56/0x42276d807749cecc25f9e8e25a2a09bb1e6b043f/) | Dice | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x40bd59e5297cfe3cf0b65a4dc4074ddeac53e2cc`](./contracts/bsc-56/0x40bd59e5297cfe3cf0b65a4dc4074ddeac53e2cc/) | DiceBNB | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x51c7e2091ba35052485e745120097b81b08cf261`](./contracts/bsc-56/0x51c7e2091ba35052485e745120097b81b08cf261/) | DiceToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1934438465f3f312f913250336e4ff826b6a4e7a`](./contracts/bsc-56/0x1934438465f3f312f913250336e4ff826b6a4e7a/) | LuckyFlipBNB | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x45218ede6f026f0994c55b6fa3554a8ea989f819`](./contracts/bsc-56/0x45218ede6f026f0994c55b6fa3554a8ea989f819/) | LuckyGameBNB | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 9 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: contract_name=3, extraction_exact=2

Fork inheritance lineage and inherited audits are included when available.
