# Agentic Audit Brief: LuckyChip

⚠️ Lifecycle status: DEAD - TVL dropped 8.0% over 90 days

## Project Overview

- Project: LuckyChip (`luckychip`)
- Lifecycle: dead (Tier 0, 99.8% below peak)
- Generated: 2026-06-19T17:47:51.693Z
- Pipeline run: v2-pipeline-2026-06-19-727228-a815
- Chains: bsc
- Contract surface: 4 unique implementations (4 raw deployments)
- DeFi Llama TVL: $532.07
- On-chain TVL (included contracts): $192,206.30
- TVL by chain: Bsc $192,206.30

## Project Description

LuckyChip is a gambling and gaming protocol on BSC that allows users to play dice games and earn yield through staking. It features a native token (LCToken) used for betting and rewards, with a MasterChef contract for staking incentives.

### Architecture

All contracts are part of a single product family deployed by the same address. LCToken serves as the core utility and reward token, used in Dice and LuckyGameBNB for betting, and in MasterChef for staking rewards.

## Contract Surface Quality

- Indexed contracts: 55; live-surface contracts included: 4 (4 live, 0 unknown).
- Excluded by liveness: 51 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: uniswap-v2
- Dependencies extracted: 51; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 2/4 (50.0%)
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 4
- Raw deployments: 4
- Audits discovered: 4
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-02 (stale)
- Staleness: 0 fresh, 0 aging, 4 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of n/a represents exposure in a protocol with dead activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 2 | 50.0% | 2022-02 |
| CertiK | Tier 2 | 1 | 25.0% | 2021-10 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| LCToken | token | bsc | n/a | [`0x6012c3...eca8b3`](./contracts/bsc-56/0x6012c3a742f92103d238f1c8306cf8fbcdeca8b3/) | ✅ Audited |
| MasterChef | unknown | bsc | n/a | [`0x15d2a6...a1ec2b`](./contracts/bsc-56/0x15d2a6fc45af66a2952dc27c40450c1f06a1ec2b/) | ✅ Audited |

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| DiceToken | token | bsc | n/a | [`0xb48859...30d436`](./contracts/bsc-56/0xb48859f5f9154be1d9b239b43471ef665b30d436/) | ⚠️ Unaudited |
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
| [DL audit link](https://skynet.certik.com/projects/luckychip) | CertiK | Audit | 2021-10 | stale | Direct | contract_name | 1 | high |
| [PeckShield-Audit-Report-LuckyChip-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-LuckyChip-v1.0.pdf) | PeckShield | Audit | 2021-09 | stale | Direct | contract_name | 1 | high |
| [PeckShield-Audit-Report-LuckyChipStaking-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-LuckyChipStaking-v1.0.pdf) | PeckShield | Audit | 2021-12 | stale | Direct | contract_name | 0 | n/a |
| [PeckShield-Audit-Report-ERC20-LuckyChip-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-ERC20-LuckyChip-v1.0.pdf) | PeckShield | Audit | 2022-02 | stale | Direct | contract_name | 1 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0xb48859...30d436`](./contracts/bsc-56/0xb48859f5f9154be1d9b239b43471ef665b30d436/) | DiceToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x45218e...89f819`](./contracts/bsc-56/0x45218ede6f026f0994c55b6fa3554a8ea989f819/) | LuckyGameBNB | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 4 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=3
- Match method counts: extraction_exact=10

Zero-match audit list:

- [13438] PeckShield-Audit-Report-LuckyChipStaking-v1.0.pdf

Fork inheritance lineage and inherited audits are included when available.
