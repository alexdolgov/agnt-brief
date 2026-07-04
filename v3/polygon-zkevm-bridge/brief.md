# Agentic Audit Brief: Polygon zkEVM Bridge

## Project Overview

- Project: Polygon zkEVM Bridge (`polygon-zkevm-bridge`)
- Website: [https://portal.polygon.technology/bridge](https://portal.polygon.technology/bridge)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:42.870Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d094
- Chains: ethereum
- Contract surface: 20 unique implementations (25 raw deployments)
- DeFi Llama TVL: $74,877,494.78
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Canonical Bridge. Structurally: 24 project-authored contract(s) across 1 chain(s); role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 6 functional families. Its contracts share 7 common project-authored base contract(s) (depositcontractbase, emergencymanager, polygonaccesscontrolupgradeable). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 30; live-surface contracts included: 23 (23 live, 0 unknown).
- Excluded by liveness: 7 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/20 (0.0%)
- Deployed-live implementations: 20 of 20 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/20
- Verified + Unaudited implementations: 20
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 20
- Raw deployments: 25
- Audits discovered: 6 (6 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-05 (aging)
- Audit staleness (calendar age): 0 fresh, 2 aging, 4 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (20)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AggchainECDSAMultisig | governance | ethereum | n/a | [`0x519e42...130987`](./contracts/ethereum-1/0x519e42c24163192dca44cd3fbdcebf6be9130987/) | ⚠️ Unaudited |
| AgglayerGER | unknown | ethereum | n/a | [`0x580bda...ce3cfb`](./contracts/ethereum-1/0x580bda1e7a0cfae92fa7f6c20a3794f169ce3cfb/) | ⚠️ Unaudited |
| AgglayerManager | governance | ethereum | n/a | [`0x5132a1...1b7ab2`](./contracts/ethereum-1/0x5132a183e9f3cb7c848b0aac5ae0c4f0491b7ab2/) | ⚠️ Unaudited |
| BridgeLib | operational_periphery | ethereum | n/a | [`0x3622fc...a68ab3`](./contracts/ethereum-1/0x3622fcf450ca40a340b7492ae5f60e7c7ea68ab3/) | ⚠️ Unaudited |
| FflonkVerifier | periphery | ethereum | n/a | [`0x4f9a0e...38e6e9`](./contracts/ethereum-1/0x4f9a0e7fd2bf6067db6994cf12e4495df938e6e9/) | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | n/a | 2 deployments: ethereum [`0x242dae...413e21`](./contracts/ethereum-1/0x242dae44f5d8fb54b198d03a94da45b5a4413e21/); ethereum `0xf694c9...fce904` | ⚠️ Unaudited |
| L1Escrow | operational_periphery | ethereum | n/a | [`0x4a27ac...2edb98`](./contracts/ethereum-1/0x4a27ac91c5cd3768f140ecabde3fc2b2d92edb98/) | ⚠️ Unaudited |
| L1Escrow | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x70e70e...d755eb`](./contracts/ethereum-1/0x70e70e58ed7b1cec0d8ef7464072ed8a52d755eb/); ethereum `0xa4e676...de14e6` | ⚠️ Unaudited |
| PolygonDataCommittee | unknown | ethereum | n/a | 2 deployments: ethereum [`0x9ccd20...1ee0b0`](./contracts/ethereum-1/0x9ccd205052c732ac1df2cf7bf8aacc0e371ee0b0/); ethereum `0xf4e876...02e456` | ⚠️ Unaudited |
| PolygonRollupManager | unknown | ethereum | n/a | [`0x3b82da...82053b`](./contracts/ethereum-1/0x3b82da772c825283d85d5d6717a77c6ff582053b/) | ⚠️ Unaudited |
| PolygonValidiumEtrog | unknown | ethereum | n/a | [`0x9cf80f...73ac30`](./contracts/ethereum-1/0x9cf80f7eb1c76ec5ae7a88b417e373449b73ac30/) | ⚠️ Unaudited |
| PolygonValidiumStorageMigration | unknown | ethereum | n/a | [`0x10d296...c6bd4c`](./contracts/ethereum-1/0x10d296e8add0535be71639e5d1d1c30ae1c6bd4c/) | ⚠️ Unaudited |
| PolygonZkEVM | unknown | ethereum | n/a | [`0xe262ea...03efef`](./contracts/ethereum-1/0xe262ea2782e2e8dbfe354048c3b5d6de9603efef/) | ⚠️ Unaudited |
| PolygonZkEVMEtrog | unknown | ethereum | n/a | [`0x2650a9...c46f71`](./contracts/ethereum-1/0x2650a9a4fc64f63f573ef0f405064ef54bc46f71/) | ⚠️ Unaudited |
| PolygonZkEVMExistentEtrog | unknown | ethereum | n/a | [`0x79bcb8...67cde0`](./contracts/ethereum-1/0x79bcb82b35a335cd8a8ec433b304a0c91f67cde0/) | ⚠️ Unaudited |
| PolygonZkEVMTimelock | governance | ethereum | n/a | [`0xef1462...7ca4ef`](./contracts/ethereum-1/0xef1462451c30ea7ad8555386226059fe837ca4ef/) | ⚠️ Unaudited |
| PolygonZkEVMUpgraded | unknown | ethereum | n/a | 2 deployments: ethereum [`0x301442...d9ef7f`](./contracts/ethereum-1/0x301442aa888701c8b86727d42f3c55fb0dd9ef7f/); ethereum `0xb15859...53b923` | ⚠️ Unaudited |
| ProxyAdmin | governance | ethereum | n/a | 2 deployments: ethereum [`0x0f9973...7bcc4a`](./contracts/ethereum-1/0x0f99738b2fc14d77308337f3e2596b63ae7bcc4a/); ethereum `0x1963d7...b3d50d` | ⚠️ Unaudited |
| SP1Verifier | periphery | ethereum | n/a | [`0x0459d5...84c459`](./contracts/ethereum-1/0x0459d576a6223feea177fb3df53c9c77bf84c459/) | ⚠️ Unaudited |
| WstETHBridgeL1 | operational_periphery | ethereum | n/a | [`0xf0cde1...582c01`](./contracts/ethereum-1/0xf0cde1e7f0fad79771cd526b1eb0a12f69582c01/) | ⚠️ Unaudited |

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
| [zkEVM-bridge-Spearbit-27-March.pdf](https://github.com/agglayer/agglayer-contracts/blob/main/audits/zkEVM-bridge-Spearbit-27-March.pdf) | Spearbit | Audit | 2023-03 | stale | Direct | n/a | 0 | n/a |
| [Hexens_Polygon_zkEVM_PUBLIC_27.02.23.pdf](https://github.com/agglayer/agglayer-contracts/blob/main/audits/Hexens_Polygon_zkEVM_PUBLIC_27.02.23.pdf) | Hexens | Audit | 2023-02 | stale | Direct | n/a | 0 | n/a |
| [Sigma_Prime_Polygon_LXLY_Bridge_Security_Assessment_Report.pdf](https://github.com/agglayer/agglayer-contracts/blob/main/audits/Sigma_Prime_Polygon_LXLY_Bridge_Security_Assessment_Report.pdf) | Sigma Prime | Audit | 2024-02 | stale | Direct | n/a | 0 | n/a |
| [Sigma Prime - Polygon - LXLY Banana - Security Assessment Report - 2.0.pdf](https://github.com/agglayer/agglayer-contracts/blob/main/audits/Sigma%20Prime%20-%20Polygon%20-%20LXLY%20Banana%20-%20Security%20Assessment%20Report%20-%202.0.pdf) | Sigma Prime | Audit | 2024-06 | stale | Direct | n/a | 0 | n/a |
| [Sigma_Prime_Polygon_LXLY_Sovereign_Chains_Security_Assessment_Report_v2_0.pdf](https://github.com/agglayer/agglayer-contracts/blob/main/audits/Sigma_Prime_Polygon_LXLY_Sovereign_Chains_Security_Assessment_Report_v2_0.pdf) | Sigma Prime | Audit | 2025-01 | aging | Direct | n/a | 0 | n/a |
| [Sigma_Prime_Polygon_Polygon_LXLY_UpgradeableWrappedTokens_Security_Assessment_Report_v2_0.pdf](https://github.com/agglayer/agglayer-contracts/blob/main/audits/Sigma_Prime_Polygon_Polygon_LXLY_UpgradeableWrappedTokens_Security_Assessment_Report_v2_0.pdf) | Sigma Prime | Audit | 2025-05 | aging | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 20 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 6
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [21259] zkEVM-bridge-Spearbit-27-March.pdf
- [21260] Hexens_Polygon_zkEVM_PUBLIC_27.02.23.pdf
- [21261] Sigma_Prime_Polygon_LXLY_Bridge_Security_Assessment_Report.pdf
- [21262] Sigma Prime - Polygon - LXLY Banana - Security Assessment Report - 2.0.pdf
- [21263] Sigma_Prime_Polygon_LXLY_Sovereign_Chains_Security_Assessment_Report_v2_0.pdf
- [21264] Sigma_Prime_Polygon_Polygon_LXLY_UpgradeableWrappedTokens_Security_Assessment_Report_v2_0.pdf

Fork inheritance lineage and inherited audits are included when available.
