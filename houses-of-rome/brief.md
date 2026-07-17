# Agentic Audit Brief: Houses of Rome

## Project Overview

- Project: Houses of Rome (`houses-of-rome`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:21.654Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-dc67
- Chains: moonriver
- Contract surface: 22 unique implementations (23 raw deployments)
- DeFi Llama TVL: $0.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Reserve Currency. Structurally: 31 project-authored contract(s) across 1 chain(s); 6 ERC20 tokens, 2 Chainlink feeds; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 4 functional families. Its contracts share 8 common project-authored base contract(s) (owned, policy, ipolicy). Dominant framework: openzeppelin.

## Fork Lineage

This project reuses audited code from **Frax Finance** (`frax-finance`) in the CrossChainBridgeBacker_OPTI_Celer subsystem.
13 audits inherited from `frax-finance`, scoped to that subsystem.

Total inherited audits: 13. Inherited coverage reflects forked/shared code audited by the origin project — it is not a direct audit of this project.

## Contract Surface Quality

- Indexed contracts: 56; live-surface contracts included: 23 (14 live, 9 unknown).
- Excluded by liveness: 33 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/12 (0.0%)
- Deployed-live implementations: 13 of 22 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/13
- Verified + Unaudited implementations: 13
- Verified by bytecode match: 0
- Unverified implementations: 9
- Unique implementations: 22
- Raw deployments: 23
- Audits discovered: 13 (0 direct, 13 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-09 (fresh)
- Audit staleness (calendar age): 1 fresh, 5 aging, 7 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (13)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AnyswapV5ERC20 | token | moonriver | n/a | 2 deployments: moonriver [`0x0cae51e1032e8461f4806e26332c030e34de3adb`](./contracts/moonriver-1285/0x0cae51e1032e8461f4806e26332c030e34de3adb/); moonriver `0x80a16016cc4a2e6a2caca8a4a498b1699ff0f844` | ⚠️ Unaudited |
| aRome | unknown | moonriver | n/a | [`0x3d2d044e8c6dad46b4f7896418d3d4dfaad902be`](./contracts/moonriver-1285/0x3d2d044e8c6dad46b4f7896418d3d4dfaad902be/) | ⚠️ Unaudited |
| CrossChainBridgeBacker_MOON_AnySwap | operational_periphery | moonriver | n/a | [`0xc7f48fb6dbb6f8a3eed90553017cdf5725dc44ac`](./contracts/moonriver-1285/0xc7f48fb6dbb6f8a3eed90553017cdf5725dc44ac/) | ⚠️ Unaudited |
| CrossChainCanonicalFRAX | unknown | moonriver | n/a | [`0x1a93b23281cc1cde4c4741353f3064709a16197d`](./contracts/moonriver-1285/0x1a93b23281cc1cde4c4741353f3064709a16197d/) | ⚠️ Unaudited |
| CrossChainOracle | operational_periphery | moonriver | n/a | [`0xbce6f81b8d154b8df09d287d05826f2b34b71be4`](./contracts/moonriver-1285/0xbce6f81b8d154b8df09d287d05826f2b34b71be4/) | ⚠️ Unaudited |
| CrossChainOracleSingleAsset | operational_periphery | moonriver | n/a | [`0xcbd0d3c8bb0edd9a542d22b4a0de3228affeba9a`](./contracts/moonriver-1285/0xcbd0d3c8bb0edd9a542d22b4a0de3228affeba9a/) | ⚠️ Unaudited |
| DaiRomePresale | unknown | moonriver | n/a | [`0x093973dca8f8dab14398b7e472e69f75869bc824`](./contracts/moonriver-1285/0x093973dca8f8dab14398b7e472e69f75869bc824/) | ⚠️ Unaudited |
| Rome | unknown | moonriver | n/a | [`0x4a436073552044d5f2f49b176853ad3ad473d9d6`](./contracts/moonriver-1285/0x4a436073552044d5f2f49b176853ad3ad473d9d6/) | ⚠️ Unaudited |
| RomeConscription | unknown | moonriver | n/a | [`0x3718bc4389cc4d960cedf9ff68e96c731bc8f685`](./contracts/moonriver-1285/0x3718bc4389cc4d960cedf9ff68e96c731bc8f685/) | ⚠️ Unaudited |
| ROMEFRAXBondDepository | unknown | moonriver | n/a | [`0x065588602bd7206b15f9630fdb2e81e4ca51ad8a`](./contracts/moonriver-1285/0x065588602bd7206b15f9630fdb2e81e4ca51ad8a/) | ⚠️ Unaudited |
| RomeStaking | unknown | moonriver | n/a | [`0x6f7d019502e17f1ef24ac67a260c65dd23b759f1`](./contracts/moonriver-1285/0x6f7d019502e17f1ef24ac67a260c65dd23b759f1/) | ⚠️ Unaudited |
| SolarPair | unknown | moonriver | n/a | [`0x069c2065100b4d3d982383f7ef3ecd1b95c05894`](./contracts/moonriver-1285/0x069c2065100b4d3d982383f7ef3ecd1b95c05894/) | ⚠️ Unaudited |
| sRome | unknown | moonriver | n/a | [`0x89f52002e544585b42f8c7cf557609ca4c8ce12a`](./contracts/moonriver-1285/0x89f52002e544585b42f8c7cf557609ca4c8ce12a/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (9)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | moonriver | n/a | `0x1d7ca62f6af49ec66f6680b8606e634e55ef22c1` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x218c3c3d49d0e7b37aff0d8bb079de36ae61a4c0` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x2c78f1b70ccf63cdee49f9233e9faa99d43aa07e` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x340fe1d898eccaad394e2ba0fc1f93d27c7b717a` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xc1be9a4d5d45beeacae296a7bd5fadbfc14602c4` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xc8bc73f917b8beef6ea444ffdcc76b71fe67d9f8` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xcb3c890bf2914f1cd76b20b7230c566717580c0a` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xd67de0e0a0fd7b15dc8348bb9be742f3c5850454` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xe0ce60af0850bf54072635e66e79df17082a1109` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Fraxtal North Star Audit Report.pdf](https://github.com/FraxFinance/frax-solidity/blob/master/src/audits/Fraxtal%20North%20Star%20Audit%20Report.pdf) | Frax Security Cartel | Audit | 2025-03 | aging | Inherited from Frax Finance — forked code, scoped to CrossChainBridgeBacker_OPTI_Celer | n/a | 0 | n/a |
| [Curve AMO Audit Report - Frax Security Cartel - May 2024.pdf](https://github.com/FraxFinance/frax-solidity/blob/master/src/audits/Curve%20AMO%20Audit%20Report%20-%20Frax%20Security%20Cartel%20-%20May%202024.pdf) | Code4rena | Contest | 2024-05 | stale | Inherited from Frax Finance — forked code, scoped to CrossChainBridgeBacker_OPTI_Celer | n/a | 0 | n/a |
| [Fraxtal Audit - April 2024 - Frax Security Cartel.pdf](https://github.com/FraxFinance/frax-solidity/blob/master/src/audits/Fraxtal%20Audit%20-%20April%202024%20-%20Frax%20Security%20Cartel.pdf) | Frax Security Cartel | Audit | 2024-04 | stale | Inherited from Frax Finance — forked code, scoped to CrossChainBridgeBacker_OPTI_Celer | n/a | 0 | n/a |
| [frxETH V2 Audit Report - Frax Security Cartel - March 2024.pdf](https://github.com/FraxFinance/frax-solidity/blob/master/src/audits/frxETH%20V2%20Audit%20Report%20-%20Frax%20Security%20Cartel%20-%20March%202024.pdf) | Trail of Bits | Audit | 2024-03 | stale | Inherited from Frax Finance — forked code, scoped to CrossChainBridgeBacker_OPTI_Celer | n/a | 0 | n/a |
| [FXB, sFRAX, frxETH Redemption Queue, Frax Oracles - Trail of Bits - Oct 2023.pdf](https://github.com/FraxFinance/frax-solidity/blob/master/src/audits/FXB%2C%20sFRAX%2C%20frxETH%20Redemption%20Queue%2C%20Frax%20Oracles%20-%20Trail%20of%20Bits%20-%20Oct%202023.pdf) | Trail of Bits | Audit | 2023-10 | stale | Inherited from Frax Finance — forked code, scoped to CrossChainBridgeBacker_OPTI_Celer | n/a | 0 | n/a |
| [2023-05-fraxgov-securityreview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/2023-05-fraxgov-securityreview.pdf) | Trail of Bits | Audit | 2023-05 | stale | Inherited from Frax Finance — forked code, scoped to CrossChainBridgeBacker_OPTI_Celer | n/a | 0 | n/a |
| [2022-10-fraxfinance-fraxlend-fraxferry-securityreview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/2022-10-fraxfinance-fraxlend-fraxferry-securityreview.pdf) | Trail of Bits | Audit | 2022-10 | stale | Inherited from Frax Finance — forked code, scoped to CrossChainBridgeBacker_OPTI_Celer | n/a | 0 | n/a |
| [code4rena.com/reports/2022-09-frax](https://code4rena.com/reports/2022-09-frax) | Code4rena | Contest | 2022-09 | stale | Inherited from Frax Finance — forked code, scoped to CrossChainBridgeBacker_OPTI_Celer | n/a | 0 | n/a |
| [Frax0 Mesh - Zellic Audit Report.pdf](https://github.com/FraxFinance/frax-solidity/blob/master/src/audits/Frax0%20Mesh%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2025-09 | fresh | Inherited from Frax Finance — forked code, scoped to CrossChainBridgeBacker_OPTI_Celer | n/a | 0 | n/a |
| [ChainSecurity_Frax_FXB_sfrxUSD_Upgrade_Audit.pdf](https://github.com/FraxFinance/frax-solidity/blob/master/src/audits/ChainSecurity_Frax_FXB_sfrxUSD_Upgrade_Audit.pdf) | ChainSecurity | Audit | 2025-07 | aging | Inherited from Frax Finance — forked code, scoped to CrossChainBridgeBacker_OPTI_Celer | n/a | 0 | n/a |
| [Frax - Zellic Audit Report.pdf](https://github.com/FraxFinance/frax-solidity/blob/master/src/audits/Frax%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2025-07 | aging | Inherited from Frax Finance — forked code, scoped to CrossChainBridgeBacker_OPTI_Celer | n/a | 0 | n/a |
| [Frax-Certora (Bamm) report - Final.pdf](https://github.com/FraxFinance/frax-solidity/blob/master/src/audits/Frax-Certora%20(Bamm)%20report%20-%20%20Final.pdf) | Certora | Audit | 2024-10 | aging | Inherited from Frax Finance — forked code, scoped to CrossChainBridgeBacker_OPTI_Celer | n/a | 0 | n/a |
| [FPISLocker + FraxtalERC4626MintRedeemer (Fraxtal sFRAX) - May 2024 - Frax Security Cartel.pdf](https://github.com/FraxFinance/frax-solidity/blob/master/src/audits/FPISLocker%20%2B%20FraxtalERC4626MintRedeemer%20(Fraxtal%20sFRAX)%20-%20May%202024%20-%20Frax%20Security%20Cartel.pdf) | Code4rena | Contest | 2024-10 | aging | Inherited from Frax Finance — forked code, scoped to CrossChainBridgeBacker_OPTI_Celer | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| moonriver | [`0x3d2d044e8c6dad46b4f7896418d3d4dfaad902be`](./contracts/moonriver-1285/0x3d2d044e8c6dad46b4f7896418d3d4dfaad902be/) | aRome | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | [`0xc7f48fb6dbb6f8a3eed90553017cdf5725dc44ac`](./contracts/moonriver-1285/0xc7f48fb6dbb6f8a3eed90553017cdf5725dc44ac/) | CrossChainBridgeBacker_MOON_AnySwap | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | [`0x1a93b23281cc1cde4c4741353f3064709a16197d`](./contracts/moonriver-1285/0x1a93b23281cc1cde4c4741353f3064709a16197d/) | CrossChainCanonicalFRAX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | [`0xbce6f81b8d154b8df09d287d05826f2b34b71be4`](./contracts/moonriver-1285/0xbce6f81b8d154b8df09d287d05826f2b34b71be4/) | CrossChainOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | [`0xcbd0d3c8bb0edd9a542d22b4a0de3228affeba9a`](./contracts/moonriver-1285/0xcbd0d3c8bb0edd9a542d22b4a0de3228affeba9a/) | CrossChainOracleSingleAsset | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | [`0x093973dca8f8dab14398b7e472e69f75869bc824`](./contracts/moonriver-1285/0x093973dca8f8dab14398b7e472e69f75869bc824/) | DaiRomePresale | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | [`0x4a436073552044d5f2f49b176853ad3ad473d9d6`](./contracts/moonriver-1285/0x4a436073552044d5f2f49b176853ad3ad473d9d6/) | Rome | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | [`0x3718bc4389cc4d960cedf9ff68e96c731bc8f685`](./contracts/moonriver-1285/0x3718bc4389cc4d960cedf9ff68e96c731bc8f685/) | RomeConscription | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | [`0x065588602bd7206b15f9630fdb2e81e4ca51ad8a`](./contracts/moonriver-1285/0x065588602bd7206b15f9630fdb2e81e4ca51ad8a/) | ROMEFRAXBondDepository | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | [`0x6f7d019502e17f1ef24ac67a260c65dd23b759f1`](./contracts/moonriver-1285/0x6f7d019502e17f1ef24ac67a260c65dd23b759f1/) | RomeStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | [`0x069c2065100b4d3d982383f7ef3ecd1b95c05894`](./contracts/moonriver-1285/0x069c2065100b4d3d982383f7ef3ecd1b95c05894/) | SolarPair | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | [`0x89f52002e544585b42f8c7cf557609ca4c8ce12a`](./contracts/moonriver-1285/0x89f52002e544585b42f8c7cf557609ca4c8ce12a/) | sRome | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 12 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 9 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 13
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [18971] Fraxtal North Star Audit Report.pdf
- [18972] Curve AMO Audit Report - Frax Security Cartel - May 2024.pdf
- [18973] Fraxtal Audit - April 2024 - Frax Security Cartel.pdf
- [18974] frxETH V2 Audit Report - Frax Security Cartel - March 2024.pdf
- [18975] FXB, sFRAX, frxETH Redemption Queue, Frax Oracles - Trail of Bits - Oct 2023.pdf
- [18976] 2023-05-fraxgov-securityreview.pdf
- [18977] 2022-10-fraxfinance-fraxlend-fraxferry-securityreview.pdf
- [18978] code4rena.com/reports/2022-09-frax
- [24754] Frax0 Mesh - Zellic Audit Report.pdf
- [24755] ChainSecurity_Frax_FXB_sfrxUSD_Upgrade_Audit.pdf
- [24756] Frax - Zellic Audit Report.pdf
- [24758] Frax-Certora (Bamm) report - Final.pdf
- [24759] FPISLocker + FraxtalERC4626MintRedeemer (Fraxtal sFRAX) - May 2024 - Frax Security Cartel.pdf

Fork inheritance lineage and inherited audits are included when available.
