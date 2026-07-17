# Agentic Audit Brief: Mezo Bridge

## Project Overview

- Project: Mezo Bridge (`mezo-bridge`)
- Website: [https://mezo.org](https://mezo.org)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:32.507Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-b097
- Chains: ethereum
- Contract surface: 17 unique implementations (27 raw deployments)
- DeFi Llama TVL: $13,707,134.41
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Bridge. Structurally: 135 project-authored contract(s) across 1 chain(s); 4 ERC20 tokens, 2 ERC721 NFTs; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 5 functional families. Its contracts share 30 common project-authored base contract(s) (erc20withpermit, checkpoints, authorizations). Dominant framework: openzeppelin.

## Fork Lineage

This project reuses audited code from **Mellow Protocol** (`mellow-protocol`) in the AssetPool, BeaconBackportRewards, BeaconRewards, BondedECDSAKeep, BondedECDSAKeepFactory, BridgeGovernance, … subsystem.
16 audits inherited from `mellow-protocol`, scoped to that subsystem.

Total inherited audits: 16. Inherited coverage reflects forked/shared code audited by the origin project — it is not a direct audit of this project.

## Contract Surface Quality

- Indexed contracts: 43; live-surface contracts included: 27 (27 live, 0 unknown).
- Excluded by liveness: 16 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 3/13 (23.1%)
- Deployed-live implementations: 17 of 17 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 3/17
- Verified + Unaudited implementations: 14
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 17
- Raw deployments: 27
- Audits discovered: 16 (0 direct, 16 inherited from forked code)
- Scoreable audits (matched contracts): 16
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-03 (fresh)
- Audit staleness (calendar age): 8 fresh, 0 aging, 1 stale, 7 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 3 match-unverified
- Tier 1 coverage: 23.1% (ChainSecurity, Sherlock)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| BlockSec | Tier 2 | 3 | 17.6% | 2022 |
| ChainSecurity | Tier 1 | 3 | 17.6% | n/a |
| N/A | Tier 2 | 3 | 17.6% | 2025-11 |
| Nethermind | Tier 2 | 3 | 17.6% | 2026-03 |
| Pessimistic | Tier 2 | 3 | 17.6% | n/a |
| Sherlock | Tier 1 | 3 | 17.6% | n/a |
| StateMind | Tier 2 | 3 | 17.6% | n/a |
| yAudit | Tier 2 | 3 | 17.6% | n/a |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| NttManager | governance | ethereum | n/a | [`0x13916d0dab357dcbaa1600b594d62c641840686a`](./contracts/ethereum-1/0x13916d0dab357dcbaa1600b594d62c641840686a/) | ✅ Audited |
| NttManager | governance | ethereum | n/a | [`0x5293158bf7a81ed05418da497a80f7e6dbf4477e`](./contracts/ethereum-1/0x5293158bf7a81ed05418da497a80f7e6dbf4477e/) | ✅ Audited |
| Portal | unknown | ethereum | n/a | [`0xab13b8eecf5aa2460841d75da5d5d861fd5b8a39`](./contracts/ethereum-1/0xab13b8eecf5aa2460841d75da5d5d861fd5b8a39/) | ✅ Audited |

### ⚠️ Verified + Unaudited (14)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BAMM | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1f490764473eb1013461d6079f827db95d8b4dc5`](./contracts/ethereum-1/0x1f490764473eb1013461d6079f827db95d8b4dc5/); ethereum `0x920623acba785ed9a70d33acab53631e1e834675` | ⚠️ Unaudited |
| BLens | unknown | ethereum | n/a | 2 deployments: ethereum [`0x65222d72f13860913fef03f088c385cbfc11a50c`](./contracts/ethereum-1/0x65222d72f13860913fef03f088c385cbfc11a50c/); ethereum `0xf21acb3c2e8418fc5466bc794f9970df7255ae28` | ⚠️ Unaudited |
| BorrowerOperations | unknown | ethereum | n/a | 2 deployments: ethereum [`0x874a8ee5b4cc0b9973c7c002fa891fc28666caa9`](./contracts/ethereum-1/0x874a8ee5b4cc0b9973c7c002fa891fc28666caa9/); ethereum `0xf5e4ffeb7d2183b61753aa4074d72e51873c1d0a` | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | n/a | [`0x98d8899c3030741925be630c710a98b57f397c7a`](./contracts/ethereum-1/0x98d8899c3030741925be630c710a98b57f397c7a/) | ⚠️ Unaudited |
| MultiTroveGetter | unknown | ethereum | n/a | 2 deployments: ethereum [`0x8836b66727bbde25974110442bb46b7a4805b36c`](./contracts/ethereum-1/0x8836b66727bbde25974110442bb46b7a4805b36c/); ethereum `0xd74dffdc614b84610329af4707d8dcc484c735d0` | ⚠️ Unaudited |
| PCV | unknown | ethereum | n/a | 2 deployments: ethereum [`0x097f1ee62e63acfc3bf64c1a61d96b3771dd06cb`](./contracts/ethereum-1/0x097f1ee62e63acfc3bf64c1a61d96b3771dd06cb/); ethereum `0x1a4739509f50e683927472b03e251e36d07dd872` | ⚠️ Unaudited |
| ProxyAdmin | governance | ethereum | n/a | 3 deployments: ethereum [`0x260ca2abef5d38181e2562f00fa92ad1dc681734`](./contracts/ethereum-1/0x260ca2abef5d38181e2562f00fa92ad1dc681734/); ethereum `0x66ce24b68d9feb092bc8e6c47c0fa318e48f1267`; ethereum `0xef619b73f424506b8ada0e05c2935ab36ec096a2` | ⚠️ Unaudited |
| SolvBTCYieldTokenV3_1 | token | ethereum | n/a | [`0xd9d920aa40f578ab794426f5c90f6c731d159def`](./contracts/ethereum-1/0xd9d920aa40f578ab794426f5c90f6c731d159def/) | ⚠️ Unaudited |
| SortedTroves | unknown | ethereum | n/a | 2 deployments: ethereum [`0xa5626cba9a4448019e73ce59784bd22736986711`](./contracts/ethereum-1/0xa5626cba9a4448019e73ce59784bd22736986711/); ethereum `0xe5ada07ace9412a623b0a282cd67d16a3a094e17` | ⚠️ Unaudited |
| StabilityPool | unknown | ethereum | n/a | 2 deployments: ethereum [`0xa18ab4fa9a44a72c58e64bfb33d425ec48475a9f`](./contracts/ethereum-1/0xa18ab4fa9a44a72c58e64bfb33d425ec48475a9f/); ethereum `0xf6374aefb1e69a21ee516ea4b803b2ea96d06f29` | ⚠️ Unaudited |
| T | unknown | ethereum | n/a | [`0xcdf7028ceab81fa0c6971208e83fa7872994bee5`](./contracts/ethereum-1/0xcdf7028ceab81fa0c6971208e83fa7872994bee5/) | ⚠️ Unaudited |
| TroveManager | unknown | ethereum | n/a | 2 deployments: ethereum [`0x27d7d02aed6c4f95ada2faf02dccb9666d3abb8c`](./contracts/ethereum-1/0x27d7d02aed6c4f95ada2faf02dccb9666d3abb8c/); ethereum `0xfc7d41a684b7db7c817a9ddd028f9a31c2f6f893` | ⚠️ Unaudited |
| WormholeTransceiver | unknown | ethereum | n/a | [`0x76ddb3f1dde02391ef0a28664499b74c29d18d3e`](./contracts/ethereum-1/0x76ddb3f1dde02391ef0a28664499b74c29d18d3e/) | ⚠️ Unaudited |
| WormholeTransceiver | unknown | ethereum | n/a | [`0x920871af2d4106e76d204fea7122fa129c9283b1`](./contracts/ethereum-1/0x920871af2d4106e76d204fea7122fa129c9283b1/) | ⚠️ Unaudited |

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
| [blocksec_mellow_vaults_v1.3-signed.pdf](https://github.com/mellow-finance/mellow-audits/blob/main/202208_BlockSec_vaults_v1/blocksec_mellow_vaults_v1.3-signed.pdf) | BlockSec | Audit | 2022 | stale | Inherited from Mellow Protocol — forked code, scoped to AssetPool, BeaconBackportRewards, BeaconRewards, BondedECDSAKeep, +25 more | inherited | 3 | n/a |
| [ChainSecurity_Mellow_Finance_Mellow_Vaults_audit.pdf](https://github.com/mellow-finance/mellow-audits/blob/main/202208_Chainsecurity_vaults_v1/ChainSecurity_Mellow_Finance_Mellow_Vaults_audit.pdf) | ChainSecurity | Audit | n/a | unknown | Inherited from Mellow Protocol — forked code, scoped to AssetPool, BeaconBackportRewards, BeaconRewards, BondedECDSAKeep, +25 more | inherited | 3 | n/a |
| [Mellow Protocol HStrategy Security Analysis.pdf](https://github.com/mellow-finance/mellow-audits/blob/main/202211_Pessimistic_HStrategy/Mellow%20Protocol%20HStrategy%20Security%20Analysis.pdf) | Pessimistic | Audit | n/a | unknown | Inherited from Mellow Protocol — forked code, scoped to AssetPool, BeaconBackportRewards, BeaconRewards, BondedECDSAKeep, +25 more | inherited | 3 | n/a |
| [Mellow protocol Gearbox integration Security Analysis by Pessimistic.pdf](https://github.com/mellow-finance/mellow-audits/blob/main/202212_Pessimistic_Gearbox/Mellow%20protocol%20Gearbox%20integration%20Security%20Analysis%20by%20Pessimistic.pdf) | Pessimistic | Audit | n/a | unknown | Inherited from Mellow Protocol — forked code, scoped to AssetPool, BeaconBackportRewards, BeaconRewards, BondedECDSAKeep, +25 more | inherited | 3 | n/a |
| [spaces/-Mk3LEacyGwD8y6mb9-2/uploads/kF9WEmdIYGcCPdAPltyL/StateMind Mellow LRT report with deployment.pdf](https://1022099409-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-Mk3LEacyGwD8y6mb9-2%2Fuploads%2FkF9WEmdIYGcCPdAPltyL%2FStateMind%20Mellow%20LRT%20report%20with%20deployment.pdf) | StateMind | Audit | n/a | unknown | Inherited from Mellow Protocol — forked code, scoped to AssetPool, BeaconBackportRewards, BeaconRewards, BondedECDSAKeep, +25 more | inherited | 3 | n/a |
| [spaces/-Mk3LEacyGwD8y6mb9-2/uploads/T65xUuoxB4TbuaSjSyst/Sherlock Mellow Modular LRTs Audit Report.pdf](https://1022099409-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-Mk3LEacyGwD8y6mb9-2%2Fuploads%2FT65xUuoxB4TbuaSjSyst%2FSherlock%20Mellow%20Modular%20LRTs%20Audit%20Report.pdf) | Sherlock | Contest | n/a | unknown | Inherited from Mellow Protocol — forked code, scoped to AssetPool, BeaconBackportRewards, BeaconRewards, BondedECDSAKeep, +25 more | inherited | 3 | n/a |
| [spaces/-Mk3LEacyGwD8y6mb9-2/uploads/z1vRTE4p2jsyru2NDTW5/Mellow Finance Simple-LRT and DVV Vault Security Audit Report.pdf](https://1022099409-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-Mk3LEacyGwD8y6mb9-2%2Fuploads%2Fz1vRTE4p2jsyru2NDTW5%2FMellow%20Finance%20Simple-LRT%20and%20DVV%20Vault%20Security%20Audit%20Report.pdf) | yAudit | Audit | n/a | unknown | Inherited from Mellow Protocol — forked code, scoped to AssetPool, BeaconBackportRewards, BeaconRewards, BondedECDSAKeep, +25 more | inherited | 3 | n/a |
| [spaces/-Mk3LEacyGwD8y6mb9-2/uploads/VOe4RlDJHDolkm4fiVZM/ChainSecurity_MellowFinance_MellowLRT_Audit.pdf](https://1022099409-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-Mk3LEacyGwD8y6mb9-2%2Fuploads%2FVOe4RlDJHDolkm4fiVZM%2FChainSecurity_MellowFinance_MellowLRT_Audit.pdf) | ChainSecurity | Audit | n/a | unknown | Inherited from Mellow Protocol — forked code, scoped to AssetPool, BeaconBackportRewards, BeaconRewards, BondedECDSAKeep, +25 more | inherited | 3 | n/a |
| [spaces/-Mk3LEacyGwD8y6mb9-2/uploads/2GBCylSChOvXlBDteguf/NM_0758_Mellow-1.pdf](https://1022099409-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-Mk3LEacyGwD8y6mb9-2%2Fuploads%2F2GBCylSChOvXlBDteguf%2FNM_0758_Mellow-1.pdf) | Nethermind | Audit | 2026-03 | fresh | Inherited from Mellow Protocol — forked code, scoped to AssetPool, BeaconBackportRewards, BeaconRewards, BondedECDSAKeep, +25 more | inherited | 3 | n/a |
| [spaces/-Mk3LEacyGwD8y6mb9-2/uploads/iJpqr8BmY5Fdjfd1fw5n/NM0812-FINAL_Mellow (1).pdf](https://1022099409-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-Mk3LEacyGwD8y6mb9-2%2Fuploads%2FiJpqr8BmY5Fdjfd1fw5n%2FNM0812-FINAL_Mellow%20(1).pdf) | Nethermind | Audit | 2026-01 | fresh | Inherited from Mellow Protocol — forked code, scoped to AssetPool, BeaconBackportRewards, BeaconRewards, BondedECDSAKeep, +25 more | inherited | 3 | n/a |
| [spaces/-Mk3LEacyGwD8y6mb9-2/uploads/3pkyCLIShMV1QdiygMDh/NM0798-FINAL_MELLOW (1).pdf](https://1022099409-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-Mk3LEacyGwD8y6mb9-2%2Fuploads%2F3pkyCLIShMV1QdiygMDh%2FNM0798-FINAL_MELLOW%20(1).pdf) | Nethermind | Audit | 2026-01 | fresh | Inherited from Mellow Protocol — forked code, scoped to AssetPool, BeaconBackportRewards, BeaconRewards, BondedECDSAKeep, +25 more | inherited | 3 | n/a |
| [spaces/-Mk3LEacyGwD8y6mb9-2/uploads/qiqkyRtS5hyeGOGEkUlO/NM0758-FINAL_Mellow (1).pdf](https://1022099409-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-Mk3LEacyGwD8y6mb9-2%2Fuploads%2FqiqkyRtS5hyeGOGEkUlO%2FNM0758-FINAL_Mellow%20(1).pdf) | Nethermind | Audit | 2025-12 | fresh | Inherited from Mellow Protocol — forked code, scoped to AssetPool, BeaconBackportRewards, BeaconRewards, BondedECDSAKeep, +25 more | inherited | 3 | n/a |
| [spaces/-Mk3LEacyGwD8y6mb9-2/uploads/EKdTZHaxv3h0qKauW9TU/NM0735-FINAL_MELLOW (1).pdf](https://1022099409-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-Mk3LEacyGwD8y6mb9-2%2Fuploads%2FEKdTZHaxv3h0qKauW9TU%2FNM0735-FINAL_MELLOW%20(1).pdf) | Nethermind | Audit | 2025-11 | fresh | Inherited from Mellow Protocol — forked code, scoped to AssetPool, BeaconBackportRewards, BeaconRewards, BondedECDSAKeep, +25 more | inherited | 3 | n/a |
| [spaces/-Mk3LEacyGwD8y6mb9-2/uploads/M2HU6Mm6042D009NBVaa/NM0703-FINAL_MELLOW (1).pdf](https://1022099409-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-Mk3LEacyGwD8y6mb9-2%2Fuploads%2FM2HU6Mm6042D009NBVaa%2FNM0703-FINAL_MELLOW%20(1).pdf) | N/A | Audit | 2025-11 | fresh | Inherited from Mellow Protocol — forked code, scoped to AssetPool, BeaconBackportRewards, BeaconRewards, BondedECDSAKeep, +25 more | inherited | 3 | n/a |
| [spaces/-Mk3LEacyGwD8y6mb9-2/uploads/uoD71STRiDu2ON8SHpvK/NM0682-FINAL_Mellow (1).pdf](https://1022099409-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-Mk3LEacyGwD8y6mb9-2%2Fuploads%2FuoD71STRiDu2ON8SHpvK%2FNM0682-FINAL_Mellow%20(1).pdf) | N/A | Audit | 2025-10 | fresh | Inherited from Mellow Protocol — forked code, scoped to AssetPool, BeaconBackportRewards, BeaconRewards, BondedECDSAKeep, +25 more | inherited | 3 | n/a |
| [spaces/-Mk3LEacyGwD8y6mb9-2/uploads/Ns4351hVFYzadiFii2az/Nethermind_Mellow-Core-Vaults_20250903.pdf](https://1022099409-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-Mk3LEacyGwD8y6mb9-2%2Fuploads%2FNs4351hVFYzadiFii2az%2FNethermind_Mellow-Core-Vaults_20250903.pdf) | Nethermind | Audit | 2025-09 | fresh | Inherited from Mellow Protocol — forked code, scoped to AssetPool, BeaconBackportRewards, BeaconRewards, BondedECDSAKeep, +25 more | inherited | 3 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x1f490764473eb1013461d6079f827db95d8b4dc5`](./contracts/ethereum-1/0x1f490764473eb1013461d6079f827db95d8b4dc5/) | BAMM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x65222d72f13860913fef03f088c385cbfc11a50c`](./contracts/ethereum-1/0x65222d72f13860913fef03f088c385cbfc11a50c/) | BLens | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x874a8ee5b4cc0b9973c7c002fa891fc28666caa9`](./contracts/ethereum-1/0x874a8ee5b4cc0b9973c7c002fa891fc28666caa9/) | BorrowerOperations | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8836b66727bbde25974110442bb46b7a4805b36c`](./contracts/ethereum-1/0x8836b66727bbde25974110442bb46b7a4805b36c/) | MultiTroveGetter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x097f1ee62e63acfc3bf64c1a61d96b3771dd06cb`](./contracts/ethereum-1/0x097f1ee62e63acfc3bf64c1a61d96b3771dd06cb/) | PCV | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd9d920aa40f578ab794426f5c90f6c731d159def`](./contracts/ethereum-1/0xd9d920aa40f578ab794426f5c90f6c731d159def/) | SolvBTCYieldTokenV3_1 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa5626cba9a4448019e73ce59784bd22736986711`](./contracts/ethereum-1/0xa5626cba9a4448019e73ce59784bd22736986711/) | SortedTroves | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa18ab4fa9a44a72c58e64bfb33d425ec48475a9f`](./contracts/ethereum-1/0xa18ab4fa9a44a72c58e64bfb33d425ec48475a9f/) | StabilityPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcdf7028ceab81fa0c6971208e83fa7872994bee5`](./contracts/ethereum-1/0xcdf7028ceab81fa0c6971208e83fa7872994bee5/) | T | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x27d7d02aed6c4f95ada2faf02dccb9666d3abb8c`](./contracts/ethereum-1/0x27d7d02aed6c4f95ada2faf02dccb9666d3abb8c/) | TroveManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 13 |
| upstream | 2 |
| standard_library | 2 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: inherited_name_remap=880

Fork inheritance lineage and inherited audits are included when available.
