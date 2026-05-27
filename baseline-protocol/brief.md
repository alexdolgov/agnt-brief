# Agentic Audit Brief: Baseline Protocol

⚠️ Lifecycle status: DECLINING - TVL dropped 7.5% over 90 days

## Project Overview

- Project: Baseline Protocol (`baseline-protocol`)
- Website: [https://www.baseline.markets/](https://www.baseline.markets/)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-05-27T14:54:05.795Z
- Pipeline run: v2-pipeline-2026-05-27-de70dc-1ce2
- Chains: base, blast, ethereum
- Contract surface: 115 unique implementations (116 raw deployments)
- DeFi Llama TVL: $69,255,851.63
- On-chain TVL (included contracts): $997,693.68
- TVL by chain: Blast $997,671.52 | Base $22.15

## Project Description

Baseline Protocol is a liquidity manager that automates liquidity provision and management across decentralized exchanges. It deploys strategies to optimize yields for users by managing positions in pools like Uniswap V3 and Thruster.

### Architecture

Baseline Legacy and Baseline Mercury are separate product lines deployed on different chains, sharing no direct contract dependencies but both relying on the Operational family for governance. The Operational multisigs likely control upgrades and parameters across both families, ensuring consistent management.

## Audit Coverage Summary

- Verified implementations audited: 1/7 (14.3%)
- Verified + Unaudited implementations: 6
- Verified by bytecode match: 0
- Unverified implementations: 108
- Unique implementations: 115
- Raw deployments: 116
- Audits discovered: 9
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): $997,693.68
- Latest audit: 2025-02 (aging)
- Staleness: 0 fresh, 7 aging, 2 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $997,693.68 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Trust Security | Tier 2 | 1 | 14.3% | 2024-02 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| PreAsset | unknown | blast | [`0x60bf64...159f61`](./contracts/blast-81457/0x60bf64ccaa52da304d456892dc0a8f1c5b159f61/) | ✅ Audited |

### ⚠️ Verified + Unaudited (6)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| ThrusterPool | core_logic | blast | 2 deployments: blast [`0x1d1678...7faa00`](./contracts/blast-81457/0x1d16788b97edb7d9a6ae66d5c5c16469037faa00/); blast `0xd0f1e1...56dc13` | ⚠️ Unaudited |
| UniswapV3Pool | core_logic | base | [`0xdfcfdf...09e3cb`](./contracts/base-8453/0xdfcfdf5dd0569d591e0bce28b5da3b13de09e3cb/) | ⚠️ Unaudited |
| GnosisSafeL2 | governance | ethereum | [`0x8044f7...f7d1b2`](./contracts/ethereum-1/0x8044f710c58b6ea6a178cc540f9f1cd758f7d1b2/) | ⚠️ Unaudited |
| Safe | unknown | ethereum | [`0xff0034...41ee5a`](./contracts/ethereum-1/0xff0034bbf2a92d0e27717387f3f829f37241ee5a/) | ⚠️ Unaudited |
| WETH9 | token | base | [`0x420000...000006`](./contracts/base-8453/0x4200000000000000000000000000000000000006/) | ⚠️ Unaudited |
| Yev | unknown | blast | [`0xc7b96d...5f25bb`](./contracts/blast-81457/0xc7b96d7f622e0a3a24cf333e84c29e36955f25bb/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (108)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Proxy (impl: 0x1117c9c13d152e2c84504533066676163b3b7470) | proxy | ethereum | `0xc81fd8...3568e8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x10ad8d...838083` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1117c9...3b7470` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x15b28f...606b45` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2c5206...a3bc4d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x30dba5...36b615` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5375ea...8c838f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x627163...4527cc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x66d600...eb6f8f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x71addf...b75f05` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x772254...f239cc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa6f49d...e596f1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xafaa95...27c058` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb2a9f3...685c64` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb47a28...1d879d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb54cb9...a851ff` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xbc1449...d2d895` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc44cc6...189682` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf36a13...741bba` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x0c056b...765275` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x143eba...60208e` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x1a7190...9560cb` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x1b6824...8a8bf9` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x3a6f1b...e11377` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x5b9a90...f92b22` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x60bf64...159f61` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x6b129c...e777ef` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x7ba0fc...e09a4f` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x831b68...353fb0` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x92c567...66d661` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xa35e4a...3511d9` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xc9329c...436c8d` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xe9b2fa...c0c34f` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xf57fe8...df219c` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x002838...6a330a` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x028916...b12b31` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x058fc2...b6511e` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x086310...372c3d` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x0c056b...765275` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x0d65a9...01a8c9` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x0daf25...2e4958` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x0fb90e...8d344d` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x0fcada...77bed3` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x143eba...60208e` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x14cf81...1c5075` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x14eb8d...561f27` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x158d92...e0e67b` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x1a4935...e8c2d8` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x1d5232...c16966` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x20fe91...ac3a9c` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x2273ec...9ca74a` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x23fdf4...96d87f` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x25380d...90f8ed` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x257a59...c21dde` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x2782e7...1eb9de` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x278490...042903` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x2c5adf...5347b9` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x304d95...e7a42e` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x38d287...4f1ca2` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x397f4d...30b59c` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x3c9442...4f967f` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x3d5dab...8999d3` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x3e01c2...bc7b67` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x3f29e2...167056` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x461fb1...432443` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x4d9a5d...ea343d` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x592b8c...36851f` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x61b563...6c2ef5` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x643521...825a2f` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x677106...5f1a32` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x6978db...78d5c0` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x7208dd...64664b` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x72c768...fac683` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x76b7a2...abec04` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x7ba0fc...e09a4f` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x7c400a...72c0c9` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x7d88d9...e89c84` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x831b68...353fb0` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x882fcf...2b6147` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x8b8728...fde38d` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x8c6e30...64ccd1` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x8e85f4...b2d0a0` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x9092a4...d9e568` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x92c567...66d661` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x96c72d...78515b` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x99509b...0d3788` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x9b4fbb...436d2f` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x9c628c...5d6fd1` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x9efbd1...1cda34` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xaabde7...f088b5` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xab5ece...6cf65f` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xac866e...74ff87` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xb87950...915ccb` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xbd7e83...7622ff` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xbd85fc...c93852` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xbe341f...66bbec` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xbe660e...a161fc` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xc3831b...e1c8ac` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xc3c85d...e86796` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xc944a7...3ce145` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xd7e6ad...58745a` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xda9909...3b2f93` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xe931f5...a8925c` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xeca6a6...9cc83d` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xf370a1...7ecdc6` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xf4c2b8...20ffd0` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xf9d9a9...ac3e52` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xfe49b8...18dd84` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [2025-02-27_Baseline_Fixed_Supply.pdf](https://www.baseline.markets/assets/2025-02-27_Baseline_Fixed_Supply.pdf) | Guardian Audits | Audit | 2025-02 | aging | Direct | n/a | 0 | n/a |
| [2025-02-03_Baseline_MM_Looping_2.pdf](https://www.baseline.markets/assets/2025-02-03_Baseline_MM_Looping_2.pdf) | Guardian Audits | Audit | 2025-02 | aging | Direct | n/a | 0 | n/a |
| [2025-01-22_Baseline_MM_Looping.pdf](https://www.baseline.markets/assets/2025-01-22_Baseline_MM_Looping.pdf) | Guardian Audits | Audit | 2025-01 | aging | Direct | n/a | 0 | n/a |
| [2024-11-28_Baseline_Credit_Migrator.pdf](https://www.baseline.markets/assets/2024-11-28_Baseline_Credit_Migrator.pdf) | Guardian Audits | Audit | 2024-11 | aging | Direct | n/a | 0 | n/a |
| [2024-10-27_Baseline_BToken.pdf](https://www.baseline.markets/assets/2024-10-27_Baseline_BToken.pdf) | Guardian Audits | Audit | 2024-10 | aging | Direct | n/a | 0 | n/a |
| [2024-08-23_Baseline_Loops.pdf](https://www.baseline.markets/assets/2024-08-23_Baseline_Loops.pdf) | Guardian Audits | Audit | 2024-08 | aging | Direct | n/a | 0 | n/a |
| [guardian_v2.pdf](https://www.baseline.markets/assets/guardian_v2.pdf) | Guardian | Audit | 2024-06 | aging | Direct | n/a | 0 | n/a |
| [audit_trust_security.pdf](https://www.baseline.markets/assets/audit_trust_security.pdf) | Trust Security | Audit | 2024-02 | stale | Direct | contract_name | 1 | high |
| [| Baseline V1 | [audit\_trust\_security.pdf](/assets/audit_trust_security.pdf) | 2024-02-27 | [Trust Security]() |](https://trustsec.xyz/) | Guardian | Audit | 2024-02 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| blast | [`0xc7b96d...5f25bb`](./contracts/blast-81457/0xc7b96d7f622e0a3a24cf333e84c29e36955f25bb/) | Yev | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 8 |
| upstream | 2 |
| standard_library | 3 |
| needs_review | 102 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 8
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=1

Zero-match audit list:

- [4654] 2025-02-27_Baseline_Fixed_Supply.pdf
- [4655] 2025-02-03_Baseline_MM_Looping_2.pdf
- [4656] 2025-01-22_Baseline_MM_Looping.pdf
- [4657] 2024-11-28_Baseline_Credit_Migrator.pdf
- [4658] 2024-10-27_Baseline_BToken.pdf
- [4659] 2024-08-23_Baseline_Loops.pdf
- [4660] guardian_v2.pdf
- [4662] | Baseline V1 | [audit\_trust\_security.pdf](/assets/audit_trust_security.pdf) | 2024-02-27 | [Trust Security]() |

Fork inheritance lineage and inherited audits are included when available.
