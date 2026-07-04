# Agentic Audit Brief: Theoriq

## Project Overview

- Project: Theoriq (`theoriq`)
- Website: [https://theoriq.ai/](https://theoriq.ai/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:01.441Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: ethereum
- Contract surface: 21 unique implementations (21 raw deployments)
- DeFi Llama TVL: $294,323.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Onchain Capital Allocator. Structurally: 21 project-authored contract(s) across 1 chain(s); role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 16 common project-authored base contract(s) (baseupgradeabilityproxy, proxy, accesscontrolenumerable). Dominant framework: openzeppelin.

## Fork Lineage

This project reuses audited code from **Lido** (`lido`) in the DepositSecurityModule, HashConsensus, LegacyOracle subsystem.
15 audits inherited from `lido`, scoped to that subsystem.

Total inherited audits: 15. Inherited coverage reflects forked/shared code audited by the origin project — it is not a direct audit of this project.

## Contract Surface Quality

- Indexed contracts: 21; live-surface contracts included: 21 (21 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 3/19 (15.8%)
- Deployed-live implementations: 21 of 21 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 3/21
- Verified + Unaudited implementations: 18
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 21
- Raw deployments: 21
- Audits discovered: 15 (0 direct, 15 inherited from forked code)
- Scoreable audits (matched contracts): 15
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-06 (fresh)
- Audit staleness (calendar age): 15 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 3 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 15.8% (Code4rena, Cyfrin, MixBytes, Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Code4rena | Tier 1 | 3 | 14.3% | 2026-03 |
| Composable Security | Tier 2 | 3 | 14.3% | 2026-06 |
| Cyfrin | Tier 1 | 3 | 14.3% | 2026-05 |
| MixBytes | Tier 1 | 3 | 14.3% | 2026-05 |
| Nethermind | Tier 2 | 3 | 14.3% | 2026-04 |
| Spearbit | Tier 1 | 3 | 14.3% | 2026-03 |
| yAudit | Tier 2 | 3 | 14.3% | 2026-04 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| DepositSecurityModule | unknown | ethereum | n/a | [`0xc77f87...3cfc09`](./contracts/ethereum-1/0xc77f8768774e1c9244beed705c4354f2113cfc09/) | ✅ Audited |
| HashConsensus | unknown | ethereum | n/a | [`0x7fadb6...df355a`](./contracts/ethereum-1/0x7fadb6358950c5faa66cb5eb8ee5147de3df355a/) | ✅ Audited |
| LegacyOracle | unknown | ethereum | n/a | [`0xa29b81...2d7e0e`](./contracts/ethereum-1/0xa29b819654ce6224a222bb5f586920105e2d7e0e/) | ✅ Audited |

### ⚠️ Verified + Unaudited (18)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AToken | unknown | ethereum | n/a | [`0x12b540...a566e9`](./contracts/ethereum-1/0x12b54025c112aa61face2cdb7118740875a566e9/) | ⚠️ Unaudited |
| Burner | unknown | ethereum | n/a | [`0xd15a67...9046d3`](./contracts/ethereum-1/0xd15a672319cf0352560ee76d9e89eab0889046d3/) | ⚠️ Unaudited |
| DummyEmptyContract | unknown | ethereum | n/a | [`0x6f6541...beda31`](./contracts/ethereum-1/0x6f6541c2203196feedd14cd2c09550da1cbeda31/) | ⚠️ Unaudited |
| EIP712StETH | unknown | ethereum | n/a | [`0x8f73e4...3228b7`](./contracts/ethereum-1/0x8f73e4c2a6d852bb4ab2a45e6a9cf5715b3228b7/) | ⚠️ Unaudited |
| InitializableImmutableAdminUpgradeabilityProxy | unknown | ethereum | n/a | [`0x0b925e...9e9371`](./contracts/ethereum-1/0x0b925ed163218f6662a35e0f0371ac234f9e9371/) | ⚠️ Unaudited |
| NodeOperatorsRegistry | unknown | ethereum | n/a | [`0x853893...b6d8ed`](./contracts/ethereum-1/0x8538930c385c0438a357d2c25cb3ead95ab6d8ed/) | ⚠️ Unaudited |
| OracleDaemonConfig | unknown | ethereum | n/a | [`0xbf05a9...c23b09`](./contracts/ethereum-1/0xbf05a929c3d7885a6aead833a992da6e5ac23b09/) | ⚠️ Unaudited |
| OracleReportSanityChecker | unknown | ethereum | n/a | [`0x9305c1...f0f1cc`](./contracts/ethereum-1/0x9305c1dbfe22c12c66339184c0025d7006f0f1cc/) | ⚠️ Unaudited |
| OssifiableProxy | unknown | ethereum | n/a | [`0x0de4ea...bf5c6e`](./contracts/ethereum-1/0x0de4ea0184c2ad0baca7183356aea5b8d5bf5c6e/) | ⚠️ Unaudited |
| OssifiableProxy | unknown | ethereum | n/a | [`0x852ded...503cee`](./contracts/ethereum-1/0x852ded011285fe67063a08005c71a85690503cee/) | ⚠️ Unaudited |
| OssifiableProxy | unknown | ethereum | n/a | [`0x889edc...12f9b1`](./contracts/ethereum-1/0x889edc2edab5f40e902b864ad4d7ade8e412f9b1/) | ⚠️ Unaudited |
| ShapellaUpgradeTemplate | unknown | ethereum | n/a | [`0xa818ff...cd600a`](./contracts/ethereum-1/0xa818ff9ec93122bf9401ab4340c42de638cd600a/) | ⚠️ Unaudited |
| StakingRouter | unknown | ethereum | n/a | [`0xd8784e...0fb6df`](./contracts/ethereum-1/0xd8784e748f59ba711fb5643191ec3fadd50fb6df/) | ⚠️ Unaudited |
| TokenizedVault | unknown | ethereum | n/a | [`0x0f5409...e31c8f`](./contracts/ethereum-1/0x0f54097295e97ce61736bb9a0a1066cdf3e31c8f/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0xdbc81b...56fe8d`](./contracts/ethereum-1/0xdbc81b33a23375a90c8ba4039d5738cb6f56fe8d/) | ⚠️ Unaudited |
| VariableDebtToken | unknown | ethereum | n/a | [`0x2e7576...6ae70d`](./contracts/ethereum-1/0x2e7576042566f8d6990e07a1b61ad1efd86ae70d/) | ⚠️ Unaudited |
| VariableDebtTokenInstance | unknown | ethereum | n/a | [`0x015396...465145`](./contracts/ethereum-1/0x015396e1f286289ae23a762088e863b3ec465145/) | ⚠️ Unaudited |
| WithdrawalVault | unknown | ethereum | n/a | [`0xcc52f1...7f69fd`](./contracts/ethereum-1/0xcc52f17756c04bba7e377716d7062fc36d7f69fd/) | ⚠️ Unaudited |

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
| [2026-04-13_Nethermind_NM-0891_Mellow-5507eaaf13402e03f180e0342c78c045.pdf](https://docs.lido.fi/assets/files/2026-04-13_Nethermind_NM-0891_Mellow-5507eaaf13402e03f180e0342c78c045.pdf) | Nethermind | Audit | 2026-04 | fresh | Inherited from Lido — forked code, scoped to DepositSecurityModule, HashConsensus, LegacyOracle | inherited | 3 | n/a |
| [zkSync-2026-03-05-Cantina-PR-85-fix-report.pdf](https://github.com/lidofinance/audits/blob/main/L2/zkSync-2026-03-05-Cantina-PR-85-fix-report.pdf) | Spearbit | Audit | 2026-03 | fresh | Inherited from Lido — forked code, scoped to DepositSecurityModule, HashConsensus, LegacyOracle | inherited | 3 | n/a |
| [2026-03-02_Nethermind_NM-0758_Mellow.pdf](https://docs.lido.fi/audits/mellow/2026-03-02_Nethermind_NM-0758_Mellow.pdf) | Nethermind | Audit | 2026-03 | fresh | Inherited from Lido — forked code, scoped to DepositSecurityModule, HashConsensus, LegacyOracle | inherited | 3 | n/a |
| [2026-03-02_Nethermind_NM-0758_Mellow-16bc93dbff41496cfb995655c453cf0f.pdf](https://docs.lido.fi/assets/files/2026-03-02_Nethermind_NM-0758_Mellow-16bc93dbff41496cfb995655c453cf0f.pdf) | Code4rena | Contest | 2026-03 | fresh | Inherited from Lido — forked code, scoped to DepositSecurityModule, HashConsensus, LegacyOracle | inherited | 3 | n/a |
| [2026-01-07_Nethermind_NM-0798_Mellow.pdf](https://docs.lido.fi/audits/mellow/2026-01-07_Nethermind_NM-0798_Mellow.pdf) | Nethermind | Audit | 2026-01 | fresh | Inherited from Lido — forked code, scoped to DepositSecurityModule, HashConsensus, LegacyOracle | inherited | 3 | n/a |
| [2026-01-21_Nethermind_NM-0812_Mellow.pdf](https://docs.lido.fi/audits/mellow/2026-01-21_Nethermind_NM-0812_Mellow.pdf) | Nethermind | Audit | 2026-01 | fresh | Inherited from Lido — forked code, scoped to DepositSecurityModule, HashConsensus, LegacyOracle | inherited | 3 | n/a |
| [2026-01-07_Nethermind_NM-0798_Mellow-234cd31bcfcfe7e0239fa7c3da25fda8.pdf](https://docs.lido.fi/assets/files/2026-01-07_Nethermind_NM-0798_Mellow-234cd31bcfcfe7e0239fa7c3da25fda8.pdf) | Nethermind | Audit | 2026-01 | fresh | Inherited from Lido — forked code, scoped to DepositSecurityModule, HashConsensus, LegacyOracle | inherited | 3 | n/a |
| [2026-01-21_Nethermind_NM-0812_Mellow-a9c3d364fc476f68a4f82d6bc5c993ac.pdf](https://docs.lido.fi/assets/files/2026-01-21_Nethermind_NM-0812_Mellow-a9c3d364fc476f68a4f82d6bc5c993ac.pdf) | Code4rena | Contest | 2026-01 | fresh | Inherited from Lido — forked code, scoped to DepositSecurityModule, HashConsensus, LegacyOracle | inherited | 3 | n/a |
| [Composable Security Lido Oracle V8 Audit Report.pdf](https://github.com/lidofinance/audits/blob/main/Composable%20Security%20Lido%20Oracle%20V8%20Audit%20Report.pdf) | Composable Security | Audit | 2026-06 | fresh | Inherited from Lido — forked code, scoped to DepositSecurityModule, HashConsensus, LegacyOracle | inherited | 3 | n/a |
| [Cyfrin CircuitBreaker Audit Report 04-2026.pdf](https://github.com/lidofinance/audits/blob/main/Cyfrin%20CircuitBreaker%20Audit%20Report%2004-2026.pdf) | Cyfrin | Audit | 2026-05 | fresh | Inherited from Lido — forked code, scoped to DepositSecurityModule, HashConsensus, LegacyOracle | inherited | 3 | n/a |
| [MixBytes CircuitBreaker Audit Report 04-2026.pdf](https://github.com/lidofinance/audits/blob/main/MixBytes%20CircuitBreaker%20Audit%20Report%2004-2026.pdf) | MixBytes | Audit | 2026-05 | fresh | Inherited from Lido — forked code, scoped to DepositSecurityModule, HashConsensus, LegacyOracle | inherited | 3 | n/a |
| [MixBytes Lido v3 Security Audit Report 03-26.pdf](https://github.com/lidofinance/audits/blob/main/MixBytes%20Lido%20v3%20Security%20Audit%20Report%2003-26.pdf) | yAudit | Audit | 2026-04 | fresh | Inherited from Lido — forked code, scoped to DepositSecurityModule, HashConsensus, LegacyOracle | inherited | 3 | n/a |
| [MixBytes Lido Easy Track stVaults Security Audit Report 03-26.pdf](https://github.com/lidofinance/audits/blob/main/MixBytes%20Lido%20Easy%20Track%20stVaults%20Security%20Audit%20Report%2003-26.pdf) | yAudit | Audit | 2026-04 | fresh | Inherited from Lido — forked code, scoped to DepositSecurityModule, HashConsensus, LegacyOracle | inherited | 3 | n/a |
| [Cyfrin CircuitBreaker Formal Verification Report 04-2026.pdf](https://github.com/lidofinance/audits/blob/main/Cyfrin%20CircuitBreaker%20Formal%20Verification%20Report%2004-2026.pdf) | Cyfrin | Audit | 2026-04 | fresh | Inherited from Lido — forked code, scoped to DepositSecurityModule, HashConsensus, LegacyOracle | inherited | 3 | n/a |
| [MixBytes Lido DeFi Wrapper MellowStrategyAdapter Security Audit Report 03-2026.pdf](https://github.com/lidofinance/audits/blob/main/MixBytes%20Lido%20DeFi%20Wrapper%20MellowStrategyAdapter%20Security%20Audit%20Report%2003-2026.pdf) | yAudit | Audit | 2026-03 | fresh | Inherited from Lido — forked code, scoped to DepositSecurityModule, HashConsensus, LegacyOracle | inherited | 3 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x12b540...a566e9`](./contracts/ethereum-1/0x12b54025c112aa61face2cdb7118740875a566e9/) | AToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd15a67...9046d3`](./contracts/ethereum-1/0xd15a672319cf0352560ee76d9e89eab0889046d3/) | Burner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6f6541...beda31`](./contracts/ethereum-1/0x6f6541c2203196feedd14cd2c09550da1cbeda31/) | DummyEmptyContract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8f73e4...3228b7`](./contracts/ethereum-1/0x8f73e4c2a6d852bb4ab2a45e6a9cf5715b3228b7/) | EIP712StETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x853893...b6d8ed`](./contracts/ethereum-1/0x8538930c385c0438a357d2c25cb3ead95ab6d8ed/) | NodeOperatorsRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbf05a9...c23b09`](./contracts/ethereum-1/0xbf05a929c3d7885a6aead833a992da6e5ac23b09/) | OracleDaemonConfig | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9305c1...f0f1cc`](./contracts/ethereum-1/0x9305c1dbfe22c12c66339184c0025d7006f0f1cc/) | OracleReportSanityChecker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0de4ea...bf5c6e`](./contracts/ethereum-1/0x0de4ea0184c2ad0baca7183356aea5b8d5bf5c6e/) | OssifiableProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x852ded...503cee`](./contracts/ethereum-1/0x852ded011285fe67063a08005c71a85690503cee/) | OssifiableProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x889edc...12f9b1`](./contracts/ethereum-1/0x889edc2edab5f40e902b864ad4d7ade8e412f9b1/) | OssifiableProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa818ff...cd600a`](./contracts/ethereum-1/0xa818ff9ec93122bf9401ab4340c42de638cd600a/) | ShapellaUpgradeTemplate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd8784e...0fb6df`](./contracts/ethereum-1/0xd8784e748f59ba711fb5643191ec3fadd50fb6df/) | StakingRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0f5409...e31c8f`](./contracts/ethereum-1/0x0f54097295e97ce61736bb9a0a1066cdf3e31c8f/) | TokenizedVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2e7576...6ae70d`](./contracts/ethereum-1/0x2e7576042566f8d6990e07a1b61ad1efd86ae70d/) | VariableDebtToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x015396...465145`](./contracts/ethereum-1/0x015396e1f286289ae23a762088e863b3ec465145/) | VariableDebtTokenInstance | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcc52f1...7f69fd`](./contracts/ethereum-1/0xcc52f17756c04bba7e377716d7062fc36d7f69fd/) | WithdrawalVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 19 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: inherited_name_remap=45

Fork inheritance lineage and inherited audits are included when available.
