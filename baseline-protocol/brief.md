# Agentic Audit Brief: Baseline Protocol

## Project Overview

- Project: Baseline Protocol (`baseline-protocol`)
- Website: [https://www.baseline.markets/](https://www.baseline.markets/)
- Lifecycle: active (Tier 1, declining)
- Generated: 2026-06-17T22:19:15.075Z
- Pipeline run: v2-pipeline-2026-06-17-2a130c-9ddf
- Chains: base, blast, ethereum
- Contract surface: 38 unique implementations (38 raw deployments)
- DeFi Llama TVL: $106,155,696.92
- On-chain TVL (included contracts): $836,656.44
- TVL by chain: Blast $836,634.29 | Base $22.15

## Project Description

Baseline Protocol is an asset issuance and token-owned-liquidity protocol centered on Baseline/Mercury markets. It uses its own market-maker and AMM mechanics, floor-price backing, bTokens, staking rewards, borrowing, and no-liquidation leverage to support protocol-issued assets and liquidity. External venues such as Uniswap V3 or Thruster may be dependencies or liquidity venues, but they should not be treated as Baseline-owned core contracts or as the primary protocol model.

### Architecture

Baseline Legacy and Baseline Mercury are separate product lines deployed on different chains, sharing no direct contract dependencies but both relying on the Operational family for governance. The Operational multisigs likely control upgrades and parameters across both families, ensuring consistent management.

## Contract Surface Quality

- Indexed contracts: 123; live-surface contracts included: 38 (36 live, 2 unknown).
- Excluded by liveness: 83 inactive, 2 singleton, 0 uninitialized.
- Deployment units: 1/3 live.
- Detected codebases: uniswap-v3
- Dependencies extracted: 3; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/5 (0.0%)
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 33
- Unique implementations: 38
- Raw deployments: 38
- Audits discovered: 9
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $836,656.44
- Latest audit: 2025-02 (aging)
- Staleness: 0 fresh, 6 aging, 3 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ThrusterPool | core_logic | blast | n/a | [`0x1d1678...7faa00`](./contracts/blast-81457/0x1d16788b97edb7d9a6ae66d5c5c16469037faa00/) | ⚠️ Unaudited |
| UniswapV3Pool | core_logic | base | n/a | [`0xdfcfdf...09e3cb`](./contracts/base-8453/0xdfcfdf5dd0569d591e0bce28b5da3b13de09e3cb/) | ⚠️ Unaudited |
| BaselineClankerExtension | adapter | ethereum | n/a | [`0x4795ce...e98035`](./contracts/ethereum-1/0x4795ce4ed9292a9ca74e88389b97d50123e98035/) | ⚠️ Unaudited |
| GnosisSafeL2 | governance | ethereum | unit-33249 | [`0x8044f7...f7d1b2`](./contracts/ethereum-1/0x8044f710c58b6ea6a178cc540f9f1cd758f7d1b2/) | ⚠️ Unaudited |
| Safe | unknown | ethereum | unit-33251 | [`0xff0034...41ee5a`](./contracts/ethereum-1/0xff0034bbf2a92d0e27717387f3f829f37241ee5a/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (33)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x10ad8d...838083` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x15b28f...606b45` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2c5206...a3bc4d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x30dba5...36b615` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x312a20...eed1b5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4488f7...01bba0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x52b8a6...3542bc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5375ea...8c838f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x627163...4527cc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x66d600...eb6f8f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x71addf...b75f05` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x772254...f239cc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7e0353...d53cd4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x91d947...6b6fbb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa6f49d...e596f1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xafaa95...27c058` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb2a9f3...685c64` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb2f8e9...266d4d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb47a28...1d879d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb54cb9...a851ff` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbc1449...d2d895` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc44cc6...189682` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf36a13...741bba` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1a7190...9560cb` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1b6824...8a8bf9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7ba0fc...e09a4f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x92c567...66d661` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc81fd8...3568e8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc9329c...436c8d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe9b2fa...c0c34f` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x1a4935...e8c2d8` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x20fe91...ac3a9c` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x7ba0fc...e09a4f` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [2025-02-27_Baseline_Fixed_Supply.pdf](https://www.baseline.markets/assets/2025-02-27_Baseline_Fixed_Supply.pdf) | Guardian Audits | Audit | 2025-02 | aging | Direct | n/a | 0 | n/a |
| [2025-02-03_Baseline_MM_Looping_2.pdf](https://www.baseline.markets/assets/2025-02-03_Baseline_MM_Looping_2.pdf) | Guardian Audits | Audit | 2025-02 | aging | Direct | n/a | 0 | n/a |
| [2025-01-22_Baseline_MM_Looping.pdf](https://www.baseline.markets/assets/2025-01-22_Baseline_MM_Looping.pdf) | Guardian Audits | Audit | 2025-01 | aging | Direct | n/a | 0 | n/a |
| [2024-11-28_Baseline_Credit_Migrator.pdf](https://www.baseline.markets/assets/2024-11-28_Baseline_Credit_Migrator.pdf) | Guardian Audits | Audit | 2024-11 | aging | Direct | n/a | 0 | n/a |
| [2024-10-27_Baseline_BToken.pdf](https://www.baseline.markets/assets/2024-10-27_Baseline_BToken.pdf) | Guardian Audits | Audit | 2024-10 | aging | Direct | n/a | 0 | n/a |
| [2024-08-23_Baseline_Loops.pdf](https://www.baseline.markets/assets/2024-08-23_Baseline_Loops.pdf) | Guardian Audits | Audit | 2024-08 | aging | Direct | n/a | 0 | n/a |
| [guardian_v2.pdf](https://www.baseline.markets/assets/guardian_v2.pdf) | Guardian | Audit | 2024-06 | stale | Direct | n/a | 0 | n/a |
| [audit_trust_security.pdf](https://www.baseline.markets/assets/audit_trust_security.pdf) | Trust Security | Audit | 2024-02 | stale | Direct | contract_name | 0 | n/a |
| [| Baseline V1 | [audit\_trust\_security.pdf](/assets/audit_trust_security.pdf) | 2024-02-27 | [Trust Security]() |](https://trustsec.xyz/) | Guardian | Audit | 2024-02 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x4795ce...e98035`](./contracts/ethereum-1/0x4795ce4ed9292a9ca74e88389b97d50123e98035/) | BaselineClankerExtension | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 5 |
| upstream | 2 |
| standard_library | 2 |
| needs_review | 29 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 9
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: extraction_exact=1

Zero-match audit list:

- [4654] 2025-02-27_Baseline_Fixed_Supply.pdf
- [4655] 2025-02-03_Baseline_MM_Looping_2.pdf
- [4656] 2025-01-22_Baseline_MM_Looping.pdf
- [4657] 2024-11-28_Baseline_Credit_Migrator.pdf
- [4658] 2024-10-27_Baseline_BToken.pdf
- [4659] 2024-08-23_Baseline_Loops.pdf
- [4660] guardian_v2.pdf
- [4661] audit_trust_security.pdf
- [14627] | Baseline V1 | [audit\_trust\_security.pdf](/assets/audit_trust_security.pdf) | 2024-02-27 | [Trust Security]() |

Fork inheritance lineage and inherited audits are included when available.
