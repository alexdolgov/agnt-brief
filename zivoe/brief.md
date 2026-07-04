# Agentic Audit Brief: Zivoe

## Project Overview

- Project: Zivoe (`zivoe`)
- Website: [https://zivoe.com/](https://zivoe.com/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:14.929Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-c970
- Chains: ethereum
- Contract surface: 19 unique implementations (23 raw deployments)
- DeFi Llama TVL: $13,777,805.68
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

RWA. Structurally: 31 project-authored contract(s) across 1 chain(s); 1 ERC4626 vault, 3 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 7 functional families. Its contracts share 9 common project-authored base contract(s) (zivoelocker, ownablelocked, erc1155holder). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 45; live-surface contracts included: 23 (22 live, 1 unknown).
- Excluded by liveness: 22 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 10/17 (58.8%)
- Deployed-live implementations: 18 of 19 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 10/18
- Verified + Unaudited implementations: 8
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 19
- Raw deployments: 23
- Audits discovered: 7 (7 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 5
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-03 (aging)
- Audit staleness (calendar age): 0 fresh, 2 aging, 4 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 10 match-unverified
- Tier 1 coverage: 23.5% (Sherlock)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 8 | 44.4% | 2023-08 |
| Sherlock | Tier 1 | 4 | 22.2% | 2024-06 |
| Runtime Verification | Tier 2 | 2 | 11.1% | 2025-03 |

## Contract Surface

### ✅ Verified + Audited (10)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| OCT_DAO | unknown | ethereum | n/a | [`0xd70233...78d108`](./contracts/ethereum-1/0xd702332915fddf588793d54d63872a97ad78d108/) | ✅ Audited |
| ZivoeGovernorV2 | governance | ethereum | n/a | [`0x94ac60...32a71e`](./contracts/ethereum-1/0x94ac60103b6b0df0cd828086b16eff2a3e32a71e/) | ✅ Audited |
| ZivoeRewards | unknown | ethereum | n/a | 3 deployments: ethereum [`0x0d45c2...9ded5d`](./contracts/ethereum-1/0x0d45c292bacdc47ce850e4c83a2fa2e8509ded5d/); ethereum `0xb397aa...6b2dce`; ethereum `0xcacdb1...78aa7c` | ✅ Audited |
| ZivoeRewardsVesting | operational_periphery | ethereum | n/a | [`0x520f2b...1168f6`](./contracts/ethereum-1/0x520f2b5766176fd94b62507c848599b6251168f6/) | ✅ Audited |
| ZivoeRouter | adapter | ethereum | n/a | [`0x420909...a2c3b6`](./contracts/ethereum-1/0x420909ba4b361853703668e19461b3a5dea2c3b6/) | ✅ Audited |
| ZivoeToken | token | ethereum | n/a | [`0xe412d4...19a9d2`](./contracts/ethereum-1/0xe412d46a0fbd567332b7689cfffe1f8a4f19a9d2/) | ✅ Audited |
| ZivoeTranches | core_logic | ethereum | n/a | [`0x6282b4...4715a8`](./contracts/ethereum-1/0x6282b480f0b989f0b603f821a840d964bc4715a8/) | ✅ Audited |
| ZivoeTrancheToken | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x7aa5bf...ad3bb6`](./contracts/ethereum-1/0x7aa5bf30042b2145b9f0629ea68de55b42ad3bb6/); ethereum `0xa923fa...ab6dd0` | ✅ Audited |
| ZivoeVault | core_logic | ethereum | n/a | [`0x94babe...fbedd4`](./contracts/ethereum-1/0x94babe9ee75c38034920bc6ed42748e8eefbedd4/) | ✅ Audited |
| ZivoeYDL | unknown | ethereum | n/a | [`0xfb7920...474b2b`](./contracts/ethereum-1/0xfb7920b55887840643e20952f22eb18ddc474b2b/) | ✅ Audited |

### ⚠️ Verified + Unaudited (8)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ATokenInstance | token | ethereum | n/a | [`0x98c23e...e16f5c`](./contracts/ethereum-1/0x98c23e9d8f34fefb1b7bd6a91b7ff122f4e16f5c/) | ⚠️ Unaudited |
| FrxUSD | unknown | ethereum | n/a | [`0xcacd6f...586e29`](./contracts/ethereum-1/0xcacd6fd266af91b8aed52accc382b4e165586e29/) | ⚠️ Unaudited |
| OCC_Cycle | unknown | ethereum | n/a | [`0x161c42...ccc17f`](./contracts/ethereum-1/0x161c42fb3ca3bae7755124b56d48a88bceccc17f/) | ⚠️ Unaudited |
| OCC_Variable | unknown | ethereum | n/a | [`0x26ac86...26f29e`](./contracts/ethereum-1/0x26ac8662f7502ef246f763311176e3131326f29e/) | ⚠️ Unaudited |
| OCR_Cycle | unknown | ethereum | n/a | [`0x12e46e...78ad6f`](./contracts/ethereum-1/0x12e46e69623350ab3ae6d52cab86a152a078ad6f/) | ⚠️ Unaudited |
| OCR_Instant | unknown | ethereum | n/a | [`0x7720e6...2a89ec`](./contracts/ethereum-1/0x7720e6eee8ef2457d4e1c38d6a9295967b2a89ec/) | ⚠️ Unaudited |
| Safe | unknown | ethereum | n/a | 2 deployments: ethereum [`0x50c72f...eb0fd5`](./contracts/ethereum-1/0x50c72ff8c5e7498f64beaeb8ed5be83cabeb0fd5/); ethereum `0xc8d624...d5f026` | ⚠️ Unaudited |
| ZivoeTLC | unknown | ethereum | n/a | [`0xe1a68a...3fc916`](./contracts/ethereum-1/0xe1a68a0404426d6bbc459794e576640dee3fc916/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0xd4b4e6...29c6d2` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [amp.runtimeverification.com/public-report/zivoe-vault](https://amp.runtimeverification.com/public-report/zivoe-vault) | Runtime Verification | Audit | 2025-03 | aging | Direct | contract_name | 2 | n/a |
| [2024.04.25 - Final - Zivoe Audit Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.04.25%20-%20Final%20-%20Zivoe%20Audit%20Report.pdf) | Sherlock | Contest | 2024-06 | stale | Direct | contract_name | 4 | n/a |
| [Zivoe_Core_Contracts.pdf](https://github.com/runtimeverification/publications/blob/main/reports/smart-contracts/Zivoe_Core_Contracts.pdf) | unknown | Audit | 2023-07 | stale | Direct | contract_name | 7 | n/a |
| [Zivoe_Locker_Contracts.pdf](https://github.com/runtimeverification/publications/blob/main/reports/smart-contracts/Zivoe_Locker_Contracts.pdf) | unknown | Audit | 2023-08 | stale | Direct | contract_name | 1 | n/a |
| [.gitkeep](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/.gitkeep) | Sherlock | Contest | n/a | unknown | Direct | n/a | 0 | n/a |
| [Alchemix_v2.pdf](https://github.com/runtimeverification/publications/blob/main/reports/smart-contracts/Alchemix_v2.pdf) | unknown | Audit | 2022-01 | stale | Direct | n/a | 0 | n/a |
| [Zivoe_Vault_FV_audit_report.pdf](https://github.com/runtimeverification/publications/blob/main/reports/smart-contracts/Zivoe_Vault_FV_audit_report.pdf) | Runtime Verification | Audit | 2025-03 | aging | Direct | contract_name | 2 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x98c23e...e16f5c`](./contracts/ethereum-1/0x98c23e9d8f34fefb1b7bd6a91b7ff122f4e16f5c/) | ATokenInstance | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcacd6f...586e29`](./contracts/ethereum-1/0xcacd6fd266af91b8aed52accc382b4e165586e29/) | FrxUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x161c42...ccc17f`](./contracts/ethereum-1/0x161c42fb3ca3bae7755124b56d48a88bceccc17f/) | OCC_Cycle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x26ac86...26f29e`](./contracts/ethereum-1/0x26ac8662f7502ef246f763311176e3131326f29e/) | OCC_Variable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x12e46e...78ad6f`](./contracts/ethereum-1/0x12e46e69623350ab3ae6d52cab86a152a078ad6f/) | OCR_Cycle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7720e6...2a89ec`](./contracts/ethereum-1/0x7720e6eee8ef2457d4e1c38d6a9295967b2a89ec/) | OCR_Instant | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe1a68a...3fc916`](./contracts/ethereum-1/0xe1a68a0404426d6bbc459794e576640dee3fc916/) | ZivoeTLC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 17 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=16

Zero-match audit list:

- [12020] .gitkeep
- [12021] Alchemix_v2.pdf

Fork inheritance lineage and inherited audits are included when available.
