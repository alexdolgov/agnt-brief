# Agentic Audit Brief: Aegis

## Project Overview

- Project: Aegis (`aegis`)
- Website: [https://aegis.im/](https://aegis.im/)
- Lifecycle: active (Tier 0, 19.4% below peak)
- Generated: 2026-07-04T14:52:58.030Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-1cbb
- Chains: bsc, ethereum
- Contract surface: 22 unique implementations (58 raw deployments)
- DeFi Llama TVL: $35,767,707.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Basis Trading. Structurally: 21 project-authored contract(s) across 2 chain(s); 1 ERC4626 vault, 4 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 5 functional families. Its contracts share 6 common project-authored base contract(s) (oapp, oappsender, oappcore). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 63; live-surface contracts included: 57 (55 live, 2 unknown).
- Excluded by liveness: 6 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 19/20 (95.0%)
- Deployed-live implementations: 20 of 22 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 19/20
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 22
- Raw deployments: 58
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-12 (fresh)
- Audit staleness (calendar age): 1 fresh, 0 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 19 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| FailSafe | Tier 2 | 19 | 95.0% | 2025-12 |
| unknown | Tier 2 | 3 | 15.0% | n/a |

## Contract Surface

### ✅ Verified + Audited (19)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AegisConfig | governance | ethereum | n/a | 2 deployments: ethereum [`0x90ccf2...f1db00`](./contracts/ethereum-1/0x90ccf2c4b3dee7aeac9af5950a7c60f89af1db00/); bsc `0xb9f1e8...4ca9da` | ✅ Audited |
| AegisMinting | unknown | bsc | n/a | 11 deployments: ethereum `0x03a346...93dea7`; ethereum `0x90ad8f...0b6f77`; ethereum `0x9e2707...16b87f`; ethereum `0xa30644...bd815b`; ethereum `0xad8fe6...b5cda5`; ethereum `0xb341d7...153c94`; ethereum `0xc4df68...820fc2`; ethereum `0xe91710...f875c2`; bsc [`0x02bf8f...ce65cf`](./contracts/bsc-56/0x02bf8f0e046f471709e578b1e633077096ce65cf/); bsc `0x39df2d...a2e141`; bsc `0x7c3f89...579134` | ✅ Audited |
| AegisMintingJUSD | unknown | ethereum | n/a | 3 deployments: ethereum [`0x7438a6...d7273e`](./contracts/ethereum-1/0x7438a699e597794392376889bc7dd3dd1ad7273e/); ethereum `0xbb0f32...09b520`; ethereum `0xf21a16...888a5d` | ✅ Audited |
| AegisOracle | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x2b4ad1...041aec`](./contracts/ethereum-1/0x2b4ad1d479561064cd1c311004aca93d15041aec/); bsc `0x588fd0...d8cf15` | ✅ Audited |
| AegisOracleJUSD | operational_periphery | ethereum | n/a | [`0xfa449d...17e0e7`](./contracts/ethereum-1/0xfa449dc17194fdaca1dd2237c828938f1917e0e7/) | ✅ Audited |
| AegisRewards | unknown | ethereum | n/a | 2 deployments: ethereum [`0x8adcfa...ddeafd`](./contracts/ethereum-1/0x8adcfaf1b64cc514524b80565bcc732273ddeafd/); bsc `0x93efaa...e5b75e` | ✅ Audited |
| JUSD | unknown | ethereum | n/a | [`0xc86168...9e4900`](./contracts/ethereum-1/0xc86168d2424d28942ee0866f043c1206bc9e4900/) | ✅ Audited |
| JUSDMintBurnOFTAdapter | unknown | ethereum | n/a | [`0x70d4c4...a11f52`](./contracts/ethereum-1/0x70d4c4f48f230037a9e154470ece79db85a11f52/) | ✅ Audited |
| sJUSD | unknown | ethereum | n/a | 2 deployments: ethereum [`0x4aa894...90bdb3`](./contracts/ethereum-1/0x4aa8949bb47da4b4f27345404ba1e5e7ea90bdb3/); ethereum `0x4ccd1a...947e81` | ✅ Audited |
| sJUSD | unknown | ethereum | n/a | 2 deployments: ethereum [`0x616e4d...2ab792`](./contracts/ethereum-1/0x616e4d7d31a978e624f79f1a7e20ee37042ab792/); ethereum `0xa7f1de...152474` | ✅ Audited |
| sJUSDOFTAdapter | unknown | ethereum | n/a | [`0x8edd6a...84ce0f`](./contracts/ethereum-1/0x8edd6a7c9b635490f4a94e0cb85d63d6a084ce0f/) | ✅ Audited |
| sJUSDSilo | unknown | ethereum | n/a | [`0x22dace...688d9a`](./contracts/ethereum-1/0x22daceed48d7ee53f964a5aa3bdb6e4d3d688d9a/) | ✅ Audited |
| sYUSD | unknown | ethereum | n/a | 12 deployments: ethereum [`0x180da2...4e1997`](./contracts/ethereum-1/0x180da28d5e9e9827a3d43a0c94e7a3ee684e1997/); ethereum `0x29dd50...1a9b63`; ethereum `0x4aa42b...ed735e`; ethereum `0x7c9428...32fd69`; ethereum `0xd2188c...27d08e`; ethereum `0xf07781...9ff9f7`; bsc `0x29dd50...1a9b63`; bsc `0x738338...976bb7`; bsc `0x7de450...89bbb5`; bsc `0xc48ea8...9382ec`; bsc `0xe13d56...faa55d`; bsc `0xf07781...9ff9f7` | ✅ Audited |
| sYUSD | unknown | ethereum | n/a | 2 deployments: ethereum [`0xb0c63b...2676fe`](./contracts/ethereum-1/0xb0c63bb1667b6e9215aee562af2957739b2676fe/); ethereum `0xfe0ccc...a4cb64` | ✅ Audited |
| sYUSD | unknown | bsc | n/a | 2 deployments: bsc [`0x24db05...f93af2`](./contracts/bsc-56/0x24db057b19241eefb9b522e8627c293ed8f93af2/); bsc `0x42940c...65415e` | ✅ Audited |
| sYUSDOFT | unknown | bsc | n/a | [`0x85636b...f2691e`](./contracts/bsc-56/0x85636bf94ea95c32e945b0db30a7cdc614f2691e/) | ✅ Audited |
| sYUSDOFTAdapter | adapter | ethereum | n/a | [`0x1a7cde...0b41fc`](./contracts/ethereum-1/0x1a7cde558d318052add800ca30dc7464920b41fc/) | ✅ Audited |
| YUSD | unknown | ethereum | n/a | 3 deployments: ethereum [`0x2332e3...646cf9`](./contracts/ethereum-1/0x2332e3fdecb44695bad61428cacbd717c8646cf9/); ethereum `0x4274cd...a8da0a`; bsc `0xab3dbc...22c61f` | ✅ Audited |
| YUSDMintBurnOFTAdapter | adapter | bsc | n/a | 4 deployments: ethereum `0x7552d1...9b82a4`; ethereum `0xaf12b0...143565`; bsc [`0x539e46...e602e3`](./contracts/bsc-56/0x539e46827c37a3ef11c7ce521cc56b4d59e602e3/); bsc `0xd2188c...27d08e` | ✅ Audited |

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| sYUSDV1OptOut | unknown | ethereum | n/a | 2 deployments: ethereum [`0x2d701a...5ea7f6`](./contracts/ethereum-1/0x2d701a7b84b75746404ed27662d897bf6c5ea7f6/); ethereum `0xec8430...32408a` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | ethereum | n/a | `0x399b1c...45cd4a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xab3dbc...22c61f` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [getfailsafe.com/aegis-jusd-smart-contract-audit](https://getfailsafe.com/aegis-jusd-smart-contract-audit) | unknown | Audit | n/a | unknown | Direct | contract_name | 5 | low |
| [Aegis-FailSafe-Smart-Contract-Audit-Report.pdf](https://getfailsafe.com/pdfs/Aegis-FailSafe-Smart-Contract-Audit-Report.pdf) | FailSafe | Audit | 2025-12 | fresh | Direct | contract_name | 54 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x2d701a...5ea7f6`](./contracts/ethereum-1/0x2d701a7b84b75746404ed27662d897bf6c5ea7f6/) | sYUSDV1OptOut | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 19 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1, low=1
- Match method counts: extraction_exact=59

Fork inheritance lineage and inherited audits are included when available.
