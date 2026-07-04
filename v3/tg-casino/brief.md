# Agentic Audit Brief: TG Casino

## Project Overview

- Project: TG Casino (`tg-casino`)
- Website: [https://token.tg.casino/staking](https://token.tg.casino/staking)
- Lifecycle: unknown
- Generated: 2026-07-03T21:07:00.177Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-66d5
- Chains: ethereum
- Contract surface: 5 unique implementations (6 raw deployments)
- DeFi Llama TVL: $1,071,299.63
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Luck Games. Structurally: 13 project-authored contract(s) across 1 chain(s); 2 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin-upgradeable.

### Architecture

The protocol comprises 4 functional families. Contracts are linked by 4 cross-contract reference(s). Dominant framework: openzeppelin-upgradeable.

## Contract Surface Quality

- Indexed contracts: 21; live-surface contracts included: 6 (6 live, 0 unknown).
- Excluded by liveness: 15 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 3/5 (60.0%)
- Deployed-live implementations: 5 of 5 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 3/5
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 5
- Raw deployments: 6
- Audits discovered: 8 (8 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 5
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-01 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 8 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 1 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 2 | 40.0% | 2024-01 |
| Coinsult | Tier 2 | 1 | 20.0% | 2023-09 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| PresaleV1 | unknown | ethereum | n/a | [`0xa87e79...73009a`](./contracts/ethereum-1/0xa87e79652814a0239bf752d4d7be70f61b73009a/) | ✅ Audited |
| StakingManagerV1 | governance | ethereum | n/a | [`0x21d6d6...540ae8`](./contracts/ethereum-1/0x21d6d6d6ffd8b68e94bf5159bb029635af540ae8/) | ✅ Audited |
| TGCToken | token | ethereum | n/a | 2 deployments: ethereum [`0x14bc78...b547b0`](./contracts/ethereum-1/0x14bc78f0e6b9854da2a92f43a0526b31ceb547b0/); ethereum `0x25b4f5...7cb7cf` | ✅ Audited |

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| StakingManagerV2 | governance | ethereum | n/a | [`0xfad6ef...f77b42`](./contracts/ethereum-1/0xfad6ef2b6e30a4854b7fc2e3de09ba4c88f77b42/) | ⚠️ Unaudited |
| UniswapV2Pair | unknown | ethereum | n/a | [`0x85aa97...2122bf`](./contracts/ethereum-1/0x85aa97537837514a9229fcaeb66eeef7242122bf/) | ⚠️ Unaudited |

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
| [Coinsult_TG.Casino_0x25...b7cf_Audit.pdf](https://github.com/Coinsult/solidity/blob/main/Coinsult_TG.Casino_0x25...b7cf_Audit.pdf) | Coinsult | Audit | 2023-09 | stale | Direct | contract_name | 1 | n/a |
| [TGB_PRESALE_12_11_23.pdf](https://github.com/Assure-DeFi/Audits/blob/main/TGB_PRESALE_12_11_23.pdf) | unknown | Audit | 2024-01 | stale | Direct | contract_name | 1 | high |
| [TGB_PreSaleV1_01_12_2024.pdf](https://github.com/Assure-DeFi/Audits/blob/main/TGB_PreSaleV1_01_12_2024.pdf) | unknown | Audit | 2024-01 | stale | Direct | contract_name | 1 | high |
| [TGB_STAKING MANAGER_12_11_23.pdf](https://github.com/Assure-DeFi/Audits/blob/main/TGB_STAKING%20MANAGER_12_11_23.pdf) | unknown | Audit | 2024-01 | stale | Direct | contract_name | 1 | n/a |
| [TGB_StakingManager_01_12_2024.pdf](https://github.com/Assure-DeFi/Audits/blob/main/TGB_StakingManager_01_12_2024.pdf) | unknown | Audit | 2024-01 | stale | Direct | contract_name | 1 | n/a |
| [TGB_TOKEN_12_11_23.pdf](https://github.com/Assure-DeFi/Audits/blob/main/TGB_TOKEN_12_11_23.pdf) | unknown | Audit | 2024-01 | stale | Direct | n/a | 0 | n/a |
| [TGB_TOKEN_12_28_23.pdf](https://github.com/Assure-DeFi/Audits/blob/main/TGB_TOKEN_12_28_23.pdf) | unknown | Audit | 2023-12 | stale | Direct | n/a | 0 | n/a |
| [TGB_Token_01_12_2024.pdf](https://github.com/Assure-DeFi/Audits/blob/main/TGB_Token_01_12_2024.pdf) | unknown | Audit | 2024-01 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 5 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: contract_name=3, extraction_exact=2

Zero-match audit list:

- [11259] TGB_TOKEN_12_11_23.pdf
- [11260] TGB_TOKEN_12_28_23.pdf
- [11261] TGB_Token_01_12_2024.pdf

Fork inheritance lineage and inherited audits are included when available.
