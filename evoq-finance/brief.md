# Agentic Audit Brief: Evoq Finance

⚠️ Lifecycle status: DECLINING - TVL changed 0.8% over 90 days

## Project Overview

- Project: Evoq Finance (`evoq-finance`)
- Website: [https://evoq.finance](https://evoq.finance)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-19T17:52:04.151Z
- Pipeline run: v2-pipeline-2026-06-19-727228-a815
- Chains: bsc
- Contract surface: 6 unique implementations (27 raw deployments)
- DeFi Llama TVL: $268.06
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Evoq Finance is a lending protocol on BSC that enables users to supply and borrow assets through interest-bearing vTokens, with governance and rewards managed by peripheral contracts.

### Architecture

The 'Evoq Finance' family provides the core vToken lending contracts, while the 'List of Evoq Contracts' family supplies governance, rewards, and data infrastructure that interacts with these vTokens to manage incentives and protocol parameters.

## Contract Surface Quality

- Indexed contracts: 83; live-surface contracts included: 27 (27 live, 0 unknown).
- Excluded by liveness: 43 inactive, 13 singleton, 0 uninitialized.
- Deployment units: 3/12 live.
- Detected codebases: compound-v2
- Dependencies extracted: 34; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/6 (0.0%)
- Verified + Unaudited implementations: 6
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 6
- Raw deployments: 27
- Audits discovered: 3
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-01 (aging)
- Staleness: 0 fresh, 1 aging, 0 stale, 2 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (6)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Comptroller | unknown | bsc | n/a | [`0xf6c14d...94e59c`](./contracts/bsc-56/0xf6c14d4dfe45c132822ce28c646753c54994e59c/) | ⚠️ Unaudited |
| Diamond | unknown | bsc | unit-39834 | [`0xfd36e2...158384`](./contracts/bsc-56/0xfd36e2c2a6789db23113685031d7f16329158384/) | ⚠️ Unaudited |
| VAIVault | core_logic | bsc | unit-39824 | [`0x0667ee...94f216`](./contracts/bsc-56/0x0667eed0a0aab930af74a3dfedd263a73994f216/) | ⚠️ Unaudited |
| VBep20Delegate | unknown | bsc | unit-39825 (22 proxies) | 22 deployments: bsc [`0x08ceb3...8084c3`](./contracts/bsc-56/0x08ceb3f4a7ed3500ca0982bcd0fc7816688084c3/); bsc `0x151b1e...fe3e1d`; bsc `0x1610bc...6ad217`; bsc `0x26da28...2c6f94`; bsc `0x2ff3d0...2eb6d0`; bsc `0x334b3e...80fbf1`; bsc `0x57a529...b50c6b`; bsc `0x5c9476...bbbbc8`; bsc `0x5f0388...b29176`; bsc `0x650b94...c11f1f`; bsc `0x86ac39...09df5c`; bsc `0x882c17...e7847b`; bsc `0x95c782...67ab9d`; bsc `0x972207...eb7c07`; bsc `0x9a0af7...da28ec`; bsc `0xb248a2...3b9c10`; bsc `0xc4ef42...0ba0ba`; bsc `0xec3422...ed8d71`; bsc `0xeca881...2867c8`; bsc `0xf508fc...3592c8`; bsc `0xf91d58...cb0343`; bsc `0xfd5840...bc0255` | ⚠️ Unaudited |
| VBNB | unknown | bsc | n/a | [`0xa07c5b...bbea36`](./contracts/bsc-56/0xa07c5b74c9b40447a954e1466938b865b6bbea36/) | ⚠️ Unaudited |
| VTreasury | operational_periphery | bsc | n/a | [`0xf32294...9f35e9`](./contracts/bsc-56/0xf322942f644a996a617bd29c16bd7d231d9f35e9/) | ⚠️ Unaudited |

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
| [DL audit link](https://drive.google.com/file/d/1lMosZQvcDvGoX60d-h8C0YxJD_IhyxJD/view) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Evoq Finance_Zokyo_audit_report_Jan9th_2025.pdf](https://github.com/zokyo-sec/audit-reports/blob/main/Evoq%20Finance/Evoq%20Finance_Zokyo_audit_report_Jan9th_2025.pdf) | unknown | Audit | 2025-01 | aging | Direct | contract_name | 0 | n/a |
| [drive.google.com/file/u/1/d/1lMosZQvcDvGoX60d-h8C0YxJD_IhyxJD/view](https://drive.google.com/file/u/1/d/1lMosZQvcDvGoX60d-h8C0YxJD_IhyxJD/view?usp=drive_link) | HashDit | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0xf6c14d...94e59c`](./contracts/bsc-56/0xf6c14d4dfe45c132822ce28c646753c54994e59c/) | Comptroller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xfd36e2...158384`](./contracts/bsc-56/0xfd36e2c2a6789db23113685031d7f16329158384/) | Diamond | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0667ee...94f216`](./contracts/bsc-56/0x0667eed0a0aab930af74a3dfedd263a73994f216/) | VAIVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x08ceb3...8084c3`](./contracts/bsc-56/0x08ceb3f4a7ed3500ca0982bcd0fc7816688084c3/) | VBep20Delegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xa07c5b...bbea36`](./contracts/bsc-56/0xa07c5b74c9b40447a954e1466938b865b6bbea36/) | VBNB | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xf32294...9f35e9`](./contracts/bsc-56/0xf322942f644a996a617bd29c16bd7d231d9f35e9/) | VTreasury | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 6 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: extraction_exact=10

Zero-match audit list:

- [13115] DL audit link
- [13116] Evoq Finance_Zokyo_audit_report_Jan9th_2025.pdf
- [13117] drive.google.com/file/u/1/d/1lMosZQvcDvGoX60d-h8C0YxJD_IhyxJD/view

Fork inheritance lineage and inherited audits are included when available.
