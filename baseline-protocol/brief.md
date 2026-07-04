# Agentic Audit Brief: Baseline Protocol

⚠️ Lifecycle status: DECLINING - TVL changed 30.5% over 90 days

## Project Overview

- Project: Baseline Protocol (`baseline-protocol`)
- Website: [https://www.baseline.markets/](https://www.baseline.markets/)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-07-04T14:53:05.295Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d640
- Chains: base, blast, ethereum
- Contract surface: 121 unique implementations (121 raw deployments)
- DeFi Llama TVL: $102,316,796.84
- On-chain TVL (included contracts): $48,164,252.97
- TVL by chain: Ethereum $47,395,333.95 | Blast $768,896.86 | Base $22.15

## Project Description

Liquidity Manager. Structurally: 13 project-authored contract(s) across 3 chain(s); built on solmate.

### Architecture

The protocol comprises 5 functional families. Its contracts share 1 common project-authored base contract(s) (nodelegatecall). Dominant framework: solmate.

## Contract Surface Quality

- Indexed contracts: 130; live-surface contracts included: 121 (7 live, 114 unknown).
- Excluded by liveness: 9 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 2/3 (66.7%)
- Deployed-live implementations: 7 of 121 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 2/7
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 114
- Unique implementations: 121
- Raw deployments: 121
- Audits discovered: 9 (9 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): $768,919.01
- Latest audit: 2025-02 (aging)
- Audit staleness (calendar age): 0 fresh, 6 aging, 3 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 2 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $768,919.01 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Guardian Audits | Tier 2 | 1 | 14.3% | 2025-02 |
| Trust Security | Tier 2 | 1 | 14.3% | 2024-02 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BToken | token | ethereum | n/a | [`0x9fdbde...6a1d63`](./contracts/ethereum-1/0x9fdbde76236998dc2836fe67a9954ede456a1d63/) | ✅ Audited |
| PreAsset | unknown | blast | n/a | [`0x60bf64...159f61`](./contracts/blast-81457/0x60bf64ccaa52da304d456892dc0a8f1c5b159f61/) | ✅ Audited |

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ThrusterPool | core_logic | blast | n/a | [`0x1d1678...7faa00`](./contracts/blast-81457/0x1d16788b97edb7d9a6ae66d5c5c16469037faa00/) | ⚠️ Unaudited |
| UniswapV3Pool | core_logic | base | n/a | [`0xdfcfdf...09e3cb`](./contracts/base-8453/0xdfcfdf5dd0569d591e0bce28b5da3b13de09e3cb/) | ⚠️ Unaudited |
| BaselineClankerExtension | adapter | ethereum | n/a | [`0x4795ce...e98035`](./contracts/ethereum-1/0x4795ce4ed9292a9ca74e88389b97d50123e98035/) | ⚠️ Unaudited |
| GnosisSafeL2 | governance | ethereum | n/a | [`0x8044f7...f7d1b2`](./contracts/ethereum-1/0x8044f710c58b6ea6a178cc540f9f1cd758f7d1b2/) | ⚠️ Unaudited |
| Safe | unknown | ethereum | n/a | [`0xff0034...41ee5a`](./contracts/ethereum-1/0xff0034bbf2a92d0e27717387f3f829f37241ee5a/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (114)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x10ad8d...838083` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1117c9...3b7470` | ❓ Unverified |
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
| UnnamedContract | unknown | base | n/a | `0x0c056b...765275` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x143eba...60208e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1a7190...9560cb` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1b6824...8a8bf9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3a6f1b...e11377` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5b9a90...f92b22` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x60bf64...159f61` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6b129c...e777ef` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7ba0fc...e09a4f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x831b68...353fb0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x92c567...66d661` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9fdbde...6a1d63` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa35e4a...3511d9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc81fd8...3568e8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc9329c...436c8d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe9b2fa...c0c34f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf57fe8...df219c` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x002838...6a330a` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x028916...b12b31` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x058fc2...b6511e` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x086310...372c3d` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x0c056b...765275` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x0d65a9...01a8c9` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x0daf25...2e4958` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x0fb90e...8d344d` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x0fcada...77bed3` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x143eba...60208e` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x14cf81...1c5075` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x158d92...e0e67b` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x1a4935...e8c2d8` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x1d5232...c16966` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x20fe91...ac3a9c` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x2273ec...9ca74a` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x23fdf4...96d87f` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x25380d...90f8ed` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x257a59...c21dde` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x2782e7...1eb9de` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x278490...042903` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x2c5adf...5347b9` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x304d95...e7a42e` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x38d287...4f1ca2` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x397f4d...30b59c` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x3c9442...4f967f` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x3d5dab...8999d3` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x3e01c2...bc7b67` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x3f29e2...167056` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x461fb1...432443` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x4d9a5d...ea343d` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x592b8c...36851f` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x61b563...6c2ef5` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x643521...825a2f` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x677106...5f1a32` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x6978db...78d5c0` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x7208dd...64664b` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x72c768...fac683` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x76b7a2...abec04` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x7ba0fc...e09a4f` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x7c400a...72c0c9` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x7d88d9...e89c84` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x831b68...353fb0` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x882fcf...2b6147` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x8b8728...fde38d` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x8c6e30...64ccd1` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x8e85f4...b2d0a0` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x9092a4...d9e568` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x92c567...66d661` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x96c72d...78515b` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x99509b...0d3788` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x9b4fbb...436d2f` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x9c628c...5d6fd1` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x9efbd1...1cda34` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xaabde7...f088b5` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xab5ece...6cf65f` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xac866e...74ff87` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xb87950...915ccb` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xbd7e83...7622ff` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xbd85fc...c93852` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xbe341f...66bbec` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xbe660e...a161fc` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xc3831b...e1c8ac` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xc3c85d...e86796` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xc944a7...3ce145` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xd7e6ad...58745a` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xda9909...3b2f93` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xe931f5...a8925c` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xeca6a6...9cc83d` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xf370a1...7ecdc6` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xf4c2b8...20ffd0` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xf9d9a9...ac3e52` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xfe49b8...18dd84` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [2025-02-27_Baseline_Fixed_Supply.pdf](https://www.baseline.markets/assets/2025-02-27_Baseline_Fixed_Supply.pdf) | Guardian Audits | Audit | 2025-02 | aging | Direct | contract_name | 1 | high |
| [2025-02-03_Baseline_MM_Looping_2.pdf](https://www.baseline.markets/assets/2025-02-03_Baseline_MM_Looping_2.pdf) | Guardian Audits | Audit | 2025-02 | aging | Direct | n/a | 0 | n/a |
| [2025-01-22_Baseline_MM_Looping.pdf](https://www.baseline.markets/assets/2025-01-22_Baseline_MM_Looping.pdf) | Guardian Audits | Audit | 2025-01 | aging | Direct | n/a | 0 | n/a |
| [2024-11-28_Baseline_Credit_Migrator.pdf](https://www.baseline.markets/assets/2024-11-28_Baseline_Credit_Migrator.pdf) | Guardian Audits | Audit | 2024-11 | aging | Direct | n/a | 0 | n/a |
| [2024-10-27_Baseline_BToken.pdf](https://www.baseline.markets/assets/2024-10-27_Baseline_BToken.pdf) | Guardian Audits | Audit | 2024-10 | aging | Direct | contract_name | 1 | high |
| [2024-08-23_Baseline_Loops.pdf](https://www.baseline.markets/assets/2024-08-23_Baseline_Loops.pdf) | Guardian Audits | Audit | 2024-08 | aging | Direct | n/a | 0 | n/a |
| [guardian_v2.pdf](https://www.baseline.markets/assets/guardian_v2.pdf) | Guardian | Audit | 2024-06 | stale | Direct | n/a | 0 | n/a |
| [audit_trust_security.pdf](https://www.baseline.markets/assets/audit_trust_security.pdf) | Trust Security | Audit | 2024-02 | stale | Direct | contract_name | 1 | high |
| [trustsec.xyz](https://trustsec.xyz/) | Guardian | Audit | 2024-02 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x4795ce...e98035`](./contracts/ethereum-1/0x4795ce4ed9292a9ca74e88389b97d50123e98035/) | BaselineClankerExtension | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 2 |
| standard_library | 2 |
| needs_review | 114 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 6
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=3
- Match method counts: extraction_exact=3

Zero-match audit list:

- [4655] 2025-02-03_Baseline_MM_Looping_2.pdf
- [4656] 2025-01-22_Baseline_MM_Looping.pdf
- [4657] 2024-11-28_Baseline_Credit_Migrator.pdf
- [4659] 2024-08-23_Baseline_Loops.pdf
- [4660] guardian_v2.pdf
- [14627] trustsec.xyz

Fork inheritance lineage and inherited audits are included when available.
