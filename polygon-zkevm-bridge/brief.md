# Agentic Audit Brief: Polygon zkEVM Bridge

## Project Overview

- Project: Polygon zkEVM Bridge (`polygon-zkevm-bridge`)
- Website: [https://portal.polygon.technology/bridge](https://portal.polygon.technology/bridge)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:43.998Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d094
- Chains: ethereum
- Contract surface: 21 unique implementations (26 raw deployments)
- DeFi Llama TVL: $74,877,494.78
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Canonical Bridge. Structurally: 24 project-authored contract(s) across 1 chain(s); role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 6 functional families. Its contracts share 7 common project-authored base contract(s) (depositcontractbase, emergencymanager, polygonaccesscontrolupgradeable). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 32; live-surface contracts included: 25 (25 live, 0 unknown).
- Excluded by liveness: 7 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 10/19 (52.6%)
- Deployed-live implementations: 21 of 21 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 10/21
- Verified + Unaudited implementations: 11
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 21
- Raw deployments: 26
- Audits discovered: 6 (6 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 5
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-05 (aging)
- Audit staleness (calendar age): 0 fresh, 2 aging, 4 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 10 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 10.5% (Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Sigma Prime | Tier 2 | 8 | 38.1% | 2025-05 |
| Spearbit | Tier 1 | 2 | 9.5% | 2023-03 |
| Hexens | Tier 2 | 1 | 4.8% | 2023-02 |

## Contract Surface

### ✅ Verified + Audited (10)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AggchainECDSAMultisig | governance | ethereum | n/a | [`0x519e42c24163192dca44cd3fbdcebf6be9130987`](./contracts/ethereum-1/0x519e42c24163192dca44cd3fbdcebf6be9130987/) | ✅ Audited |
| PolygonDataCommittee | unknown | ethereum | n/a | 2 deployments: ethereum [`0x9ccd205052c732ac1df2cf7bf8aacc0e371ee0b0`](./contracts/ethereum-1/0x9ccd205052c732ac1df2cf7bf8aacc0e371ee0b0/); ethereum `0xf4e87685e323818e0ae35dcdfc3b65106002e456` | ✅ Audited |
| PolygonRollupManager | unknown | ethereum | n/a | [`0x3b82da772c825283d85d5d6717a77c6ff582053b`](./contracts/ethereum-1/0x3b82da772c825283d85d5d6717a77c6ff582053b/) | ✅ Audited |
| PolygonValidiumEtrog | unknown | ethereum | n/a | [`0x9cf80f7eb1c76ec5ae7a88b417e373449b73ac30`](./contracts/ethereum-1/0x9cf80f7eb1c76ec5ae7a88b417e373449b73ac30/) | ✅ Audited |
| PolygonValidiumStorageMigration | unknown | ethereum | n/a | [`0x10d296e8add0535be71639e5d1d1c30ae1c6bd4c`](./contracts/ethereum-1/0x10d296e8add0535be71639e5d1d1c30ae1c6bd4c/) | ✅ Audited |
| PolygonZkEVM | unknown | ethereum | n/a | [`0xe262ea2782e2e8dbfe354048c3b5d6de9603efef`](./contracts/ethereum-1/0xe262ea2782e2e8dbfe354048c3b5d6de9603efef/) | ✅ Audited |
| PolygonZkEVMBridgeV2 | unknown | ethereum | n/a | [`0x0feb850b183c57534b56b7d56520133c8f9bdb65`](./contracts/ethereum-1/0x0feb850b183c57534b56b7d56520133c8f9bdb65/) | ✅ Audited |
| PolygonZkEVMEtrog | unknown | ethereum | n/a | [`0x2650a9a4fc64f63f573ef0f405064ef54bc46f71`](./contracts/ethereum-1/0x2650a9a4fc64f63f573ef0f405064ef54bc46f71/) | ✅ Audited |
| PolygonZkEVMExistentEtrog | unknown | ethereum | n/a | [`0x79bcb82b35a335cd8a8ec433b304a0c91f67cde0`](./contracts/ethereum-1/0x79bcb82b35a335cd8a8ec433b304a0c91f67cde0/) | ✅ Audited |
| PolygonZkEVMTimelock | governance | ethereum | n/a | [`0xef1462451c30ea7ad8555386226059fe837ca4ef`](./contracts/ethereum-1/0xef1462451c30ea7ad8555386226059fe837ca4ef/) | ✅ Audited |

### ⚠️ Verified + Unaudited (11)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AgglayerGER | unknown | ethereum | n/a | [`0x580bda1e7a0cfae92fa7f6c20a3794f169ce3cfb`](./contracts/ethereum-1/0x580bda1e7a0cfae92fa7f6c20a3794f169ce3cfb/) | ⚠️ Unaudited |
| AgglayerManager | governance | ethereum | n/a | [`0x5132a183e9f3cb7c848b0aac5ae0c4f0491b7ab2`](./contracts/ethereum-1/0x5132a183e9f3cb7c848b0aac5ae0c4f0491b7ab2/) | ⚠️ Unaudited |
| BridgeLib | operational_periphery | ethereum | n/a | [`0x3622fcf450ca40a340b7492ae5f60e7c7ea68ab3`](./contracts/ethereum-1/0x3622fcf450ca40a340b7492ae5f60e7c7ea68ab3/) | ⚠️ Unaudited |
| FflonkVerifier | periphery | ethereum | n/a | [`0x4f9a0e7fd2bf6067db6994cf12e4495df938e6e9`](./contracts/ethereum-1/0x4f9a0e7fd2bf6067db6994cf12e4495df938e6e9/) | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | n/a | 2 deployments: ethereum [`0x242dae44f5d8fb54b198d03a94da45b5a4413e21`](./contracts/ethereum-1/0x242dae44f5d8fb54b198d03a94da45b5a4413e21/); ethereum `0xf694c9e3a34f5fa48b6f3a0ff186c1c6c4fce904` | ⚠️ Unaudited |
| L1Escrow | operational_periphery | ethereum | n/a | [`0x4a27ac91c5cd3768f140ecabde3fc2b2d92edb98`](./contracts/ethereum-1/0x4a27ac91c5cd3768f140ecabde3fc2b2d92edb98/) | ⚠️ Unaudited |
| L1Escrow | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x70e70e58ed7b1cec0d8ef7464072ed8a52d755eb`](./contracts/ethereum-1/0x70e70e58ed7b1cec0d8ef7464072ed8a52d755eb/); ethereum `0xa4e6762eaaf259da74696f46faaf79ba9dde14e6` | ⚠️ Unaudited |
| PolygonZkEVMUpgraded | unknown | ethereum | n/a | 2 deployments: ethereum [`0x301442aa888701c8b86727d42f3c55fb0dd9ef7f`](./contracts/ethereum-1/0x301442aa888701c8b86727d42f3c55fb0dd9ef7f/); ethereum `0xb1585916487acedd99952086f2950763d253b923` | ⚠️ Unaudited |
| ProxyAdmin | governance | ethereum | n/a | 2 deployments: ethereum [`0x0f99738b2fc14d77308337f3e2596b63ae7bcc4a`](./contracts/ethereum-1/0x0f99738b2fc14d77308337f3e2596b63ae7bcc4a/); ethereum `0x1963d7b78e75a5edff9e5376e7a07a935fb3d50d` | ⚠️ Unaudited |
| SP1Verifier | periphery | ethereum | n/a | [`0x0459d576a6223feea177fb3df53c9c77bf84c459`](./contracts/ethereum-1/0x0459d576a6223feea177fb3df53c9c77bf84c459/) | ⚠️ Unaudited |
| WstETHBridgeL1 | operational_periphery | ethereum | n/a | [`0xf0cde1e7f0fad79771cd526b1eb0a12f69582c01`](./contracts/ethereum-1/0xf0cde1e7f0fad79771cd526b1eb0a12f69582c01/) | ⚠️ Unaudited |

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
| [zkEVM-bridge-Spearbit-27-March.pdf](https://github.com/agglayer/agglayer-contracts/blob/main/audits/zkEVM-bridge-Spearbit-27-March.pdf) | Spearbit | Audit | 2023-03 | stale | Direct | contract_name | 2 | high |
| [Hexens_Polygon_zkEVM_PUBLIC_27.02.23.pdf](https://github.com/agglayer/agglayer-contracts/blob/main/audits/Hexens_Polygon_zkEVM_PUBLIC_27.02.23.pdf) | Hexens | Audit | 2023-02 | stale | Direct | contract_name | 1 | high |
| [Sigma_Prime_Polygon_LXLY_Bridge_Security_Assessment_Report.pdf](https://github.com/agglayer/agglayer-contracts/blob/main/audits/Sigma_Prime_Polygon_LXLY_Bridge_Security_Assessment_Report.pdf) | Sigma Prime | Audit | 2024-02 | stale | Direct | contract_name | 9 | high |
| [Sigma Prime - Polygon - LXLY Banana - Security Assessment Report - 2.0.pdf](https://github.com/agglayer/agglayer-contracts/blob/main/audits/Sigma%20Prime%20-%20Polygon%20-%20LXLY%20Banana%20-%20Security%20Assessment%20Report%20-%202.0.pdf) | Sigma Prime | Audit | 2024-06 | stale | Direct | contract_name | 5 | high |
| [Sigma_Prime_Polygon_LXLY_Sovereign_Chains_Security_Assessment_Report_v2_0.pdf](https://github.com/agglayer/agglayer-contracts/blob/main/audits/Sigma_Prime_Polygon_LXLY_Sovereign_Chains_Security_Assessment_Report_v2_0.pdf) | Sigma Prime | Audit | 2025-01 | aging | Direct | contract_name | 0 | n/a |
| [Sigma_Prime_Polygon_Polygon_LXLY_UpgradeableWrappedTokens_Security_Assessment_Report_v2_0.pdf](https://github.com/agglayer/agglayer-contracts/blob/main/audits/Sigma_Prime_Polygon_Polygon_LXLY_UpgradeableWrappedTokens_Security_Assessment_Report_v2_0.pdf) | Sigma Prime | Audit | 2025-05 | aging | Direct | contract_name | 1 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x580bda1e7a0cfae92fa7f6c20a3794f169ce3cfb`](./contracts/ethereum-1/0x580bda1e7a0cfae92fa7f6c20a3794f169ce3cfb/) | AgglayerGER | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5132a183e9f3cb7c848b0aac5ae0c4f0491b7ab2`](./contracts/ethereum-1/0x5132a183e9f3cb7c848b0aac5ae0c4f0491b7ab2/) | AgglayerManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3622fcf450ca40a340b7492ae5f60e7c7ea68ab3`](./contracts/ethereum-1/0x3622fcf450ca40a340b7492ae5f60e7c7ea68ab3/) | BridgeLib | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4f9a0e7fd2bf6067db6994cf12e4495df938e6e9`](./contracts/ethereum-1/0x4f9a0e7fd2bf6067db6994cf12e4495df938e6e9/) | FflonkVerifier | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4a27ac91c5cd3768f140ecabde3fc2b2d92edb98`](./contracts/ethereum-1/0x4a27ac91c5cd3768f140ecabde3fc2b2d92edb98/) | L1Escrow | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x70e70e58ed7b1cec0d8ef7464072ed8a52d755eb`](./contracts/ethereum-1/0x70e70e58ed7b1cec0d8ef7464072ed8a52d755eb/) | L1Escrow | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x301442aa888701c8b86727d42f3c55fb0dd9ef7f`](./contracts/ethereum-1/0x301442aa888701c8b86727d42f3c55fb0dd9ef7f/) | PolygonZkEVMUpgraded | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0459d576a6223feea177fb3df53c9c77bf84c459`](./contracts/ethereum-1/0x0459d576a6223feea177fb3df53c9c77bf84c459/) | SP1Verifier | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf0cde1e7f0fad79771cd526b1eb0a12f69582c01`](./contracts/ethereum-1/0xf0cde1e7f0fad79771cd526b1eb0a12f69582c01/) | WstETHBridgeL1 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=5
- Match method counts: extraction_exact=19

Zero-match audit list:

- [21263] Sigma_Prime_Polygon_LXLY_Sovereign_Chains_Security_Assessment_Report_v2_0.pdf

Fork inheritance lineage and inherited audits are included when available.
