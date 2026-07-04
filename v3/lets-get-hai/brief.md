# Agentic Audit Brief: Lets Get HAI

## Project Overview

- Project: Lets Get HAI (`lets-get-hai`)
- Website: [https://www.letsgethai.com](https://www.letsgethai.com)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:21.445Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-1cbb
- Chains: optimism
- Contract surface: 25 unique implementations (35 raw deployments)
- DeFi Llama TVL: $969,423.70
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

CDP. Structurally: 49 project-authored contract(s) across 1 chain(s); 7 ERC20 tokens, 1 Chainlink feed; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 7 functional families. Its contracts share 8 common project-authored base contract(s) (authorizable, modifiable, disableable). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 63; live-surface contracts included: 34 (33 live, 1 unknown).
- Excluded by liveness: 29 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 16/24 (66.7%)
- Deployed-live implementations: 24 of 25 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 16/24
- Verified + Unaudited implementations: 8
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 25
- Raw deployments: 35
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-02 (fresh)
- Audit staleness (calendar age): 2 fresh, 1 aging, 1 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 16 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Solidified | Tier 2 | 11 | 45.8% | 2023-11 |
| dMakers | Tier 2 | 7 | 29.2% | n/a |
| Ackee Blockchain | Tier 2 | 4 | 16.7% | 2025-04 |
| Electisec | Tier 2 | 1 | 4.2% | 2025-08 |

## Contract Surface

### ✅ Verified + Audited (16)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AccountingEngine | unknown | optimism | n/a | [`0xa49007...65bd10`](./contracts/optimism-10/0xa4900795ebffadc12790f05f7c4ac42cd765bd10/) | ✅ Audited |
| AccountingJob | unknown | optimism | n/a | [`0xc256c3...729ef0`](./contracts/optimism-10/0xc256c3aa404ab74ce050bcf8a05256b6a1729ef0/) | ✅ Audited |
| CoinJoin | unknown | optimism | n/a | [`0x30ce72...7c6ea3`](./contracts/optimism-10/0x30ce72230a47a0967b7e52a1bae0178dbd7c6ea3/) | ✅ Audited |
| HaiProxyFactory | registry | optimism | n/a | [`0xbafbcd...e03a27`](./contracts/optimism-10/0xbafbcdbfbb1569722253ed4d491d2fb3b5e03a27/) | ✅ Audited |
| LiquidationEngine | unknown | optimism | n/a | [`0x8be588...891b56`](./contracts/optimism-10/0x8be588895be9b75f9a9daee185e0c2ad89891b56/) | ✅ Audited |
| OracleJob | operational_periphery | optimism | n/a | [`0xf4f182...f9fc22`](./contracts/optimism-10/0xf4f18205d8d46638489865e42c0a71a3d4f9fc22/) | ✅ Audited |
| OracleRelayer | operational_periphery | optimism | n/a | [`0x627040...fdb3a6`](./contracts/optimism-10/0x6270403b908505f02da05be5c1956abb59fdb3a6/) | ✅ Audited |
| ProtocolToken | token | optimism | n/a | [`0xf467c7...1e1404`](./contracts/optimism-10/0xf467c7d5a4a9c4687ffc7986ac6ad5a4c81e1404/) | ✅ Audited |
| RewardDistributor | operational_periphery | optimism | n/a | [`0xfed2eb...ac3d4d`](./contracts/optimism-10/0xfed2eb6325432f0bf7110dce2ccc5ff811ac3d4d/) | ✅ Audited |
| SAFEEngine | unknown | optimism | n/a | [`0x9ff826...75a700`](./contracts/optimism-10/0x9ff826860689483181c5fac9628fd2f70275a700/) | ✅ Audited |
| StakingManager | governance | optimism | n/a | 3 deployments: optimism [`0x1250f2...e6bc90`](./contracts/optimism-10/0x1250f2326f04ac61ee5aed92fef74bcac6e6bc90/); optimism `0x13531b...fcd1d9`; optimism `0x70bf15...279e93` | ✅ Audited |
| StakingToken | token | optimism | n/a | 3 deployments: optimism [`0xaa46f6...62be0a`](./contracts/optimism-10/0xaa46f6e234d52cc8c3b387a44584a9fb1a62be0a/); optimism `0xcb7e5b...d1980f`; optimism `0xf632d7...881fc3` | ✅ Audited |
| SystemCoin | unknown | optimism | n/a | [`0x10398a...10dc71`](./contracts/optimism-10/0x10398abc267496e49106b07dd6be13364d10dc71/) | ✅ Audited |
| TaxCollector | unknown | optimism | n/a | [`0x62b82c...1973c3`](./contracts/optimism-10/0x62b82cce08f8f2d808348409e9418c65eb1973c3/) | ✅ Audited |
| WrappedToken | token | optimism | n/a | [`0x70f371...b1bb6a`](./contracts/optimism-10/0x70f3713512089736661f928b291d1443c8b1bb6a/) | ✅ Audited |
| WrappedTokenV2 | token | optimism | n/a | [`0x20a7ea...b5ddd6`](./contracts/optimism-10/0x20a7eaf4a922df50b312ef61aea8b6e1deb5ddd6/) | ✅ Audited |

### ⚠️ Verified + Unaudited (8)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| GovernanceToken | token | optimism | n/a | [`0x420000...000042`](./contracts/optimism-10/0x4200000000000000000000000000000000000042/) | ⚠️ Unaudited |
| HaiGovernor | governance | optimism | n/a | [`0xe807f3...a23777`](./contracts/optimism-10/0xe807f3282f3391d237ba8b9becb0d8ea3ba23777/) | ⚠️ Unaudited |
| HypERC20 | unknown | optimism | n/a | 2 deployments: optimism [`0xbdf4a4...1f1152`](./contracts/optimism-10/0xbdf4a4cc124d9a83a5774574fcbe45dc5d1f1152/); optimism `0xfdf059...aba0b1` | ⚠️ Unaudited |
| PessimisticVeloSingleOracle | operational_periphery | optimism | n/a | 5 deployments: optimism [`0x2d442a...e26585`](./contracts/optimism-10/0x2d442a71e7dc14068168a7e0680abcc043e26585/); optimism `0x557c24...a19e6c`; optimism `0x898e74...d1c91a`; optimism `0x8cb126...9d7bcb`; optimism `0xdfeb54...ff5448` | ⚠️ Unaudited |
| Pool | core_logic | optimism | n/a | 2 deployments: optimism [`0xbded65...ea6b86`](./contracts/optimism-10/0xbded651c03e2bc332aa49c1ffca391eaa3ea6b86/); optimism `0xf4638d...447238` | ⚠️ Unaudited |
| ProxyAdmin | governance | optimism | n/a | [`0x1a3cbf...c66091`](./contracts/optimism-10/0x1a3cbf11da1b799c521a655a258c45c852c66091/) | ⚠️ Unaudited |
| ProxyERC20 | token | optimism | n/a | [`0x8c6f28...1ec8d9`](./contracts/optimism-10/0x8c6f28f2f1a3c87f0f938b96d27520d9751ec8d9/) | ⚠️ Unaudited |
| WETH9 | token | optimism | n/a | [`0x420000...000006`](./contracts/optimism-10/0x4200000000000000000000000000000000000006/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | optimism | n/a | `0x6c797b...a0c200` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [2026-02-HAI-CurveStableSwapNG-Oracle-Review-report.pdf](https://github.com/hai-on-op/audit-reports/blob/main/2026-02-HAI-CurveStableSwapNG-Oracle-Review-report.pdf) | unknown | Audit | 2026-02 | fresh | Direct | n/a | 0 | n/a |
| [HaiVELO V2 Electisec.pdf](https://github.com/hai-on-op/audit-reports/blob/main/HaiVELO%20V2%20Electisec.pdf) | Electisec | Audit | 2025-08 | fresh | Direct | contract_name | 1 | n/a |
| [ackee_HAI_new-core-features_report.pdf](https://github.com/hai-on-op/audit-reports/blob/main/ackee_HAI_new-core-features_report.pdf) | Ackee Blockchain | Audit | 2025-04 | aging | Direct | contract_name | 4 | n/a |
| [dMakers_HAI_audit_report.pdf](https://github.com/hai-on-op/audit-reports/blob/main/dMakers_HAI_audit_report.pdf) | dMakers | Audit | n/a | unknown | Direct | contract_name | 7 | n/a |
| [solidified_HAI_audit_report.pdf](https://github.com/hai-on-op/audit-reports/blob/main/solidified_HAI_audit_report.pdf) | Solidified | Audit | 2023-11 | stale | Direct | contract_name | 11 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 25 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=23

Zero-match audit list:

- [3166] 2026-02-HAI-CurveStableSwapNG-Oracle-Review-report.pdf

Fork inheritance lineage and inherited audits are included when available.
