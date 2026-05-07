# Agentic Brief: Mitosis

## Project Overview

- **Project:** Mitosis (mitosis)
- **Website:** mitosis.org
- **Category:** Onchain Capital Allocator
- **Chains (topography):** 1, 10, 56, 5000, 8453, 34443, 42161, 59144, 81457, 534352
- **Chains (DeFiLlama):** 1, 10, 56, 169, 5000, 8453, 34443, 42161, 59144, 81457, 534352
- **TVL:** $36,805,928 (1 DL slug(s), queried 2026-04-29)
- **Lifecycle:** rugged - latest deployment 2025-09-15
- **Audit history:** 46 audits; most recent 2026-05-03 (2 days ago)
- **Tier:** 4 - project_dead_or_rugged (Excluded)
- **Commercial fit:** large_tvl_marketing_asset

Mitosis has 84 deployed contract rows in current topography. This brief renders the 81 rows present in scope-match run recovery-full-v5-fixed-matcher-2026-05-05-c067f024; any topography rows absent from that run are outside the visible contract tables until the scope matcher is regenerated over them.

---

## Lifecycle and Recent Activity

**Lifecycle warning:** rugged. Source: project_lifecycle_status_v1. Outreach not recommended without operator review.

---

## Audit Targeting Recommendation

Audit-evaluable surface in this run: 81 contracts across 10 chains. 8 have TP audit coverage (9.9%); 73 do not.

Large-TVL protocol with partial coverage; scope should emphasize high-value uncovered surface.

Existing coverage by category is summarized below; re-audit of TP-covered rows is lower priority than unmatched and likely-in-scope rows.

---

## Scope - Core Logic

Provenance-based classification not available for this project. The table below shows the flat scope inventory from topography with audit-match verdicts where available; distinguishing core logic from operational periphery requires the provenance pass.

### ethereum (chain_id 1)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| ArbitrumBridgeAdapter | bridge | bridge | audited (TP) | [0xb883ee...b1d2](https://etherscan.io/address/0xb883ee478d3b7fea8a5357a3c3e27e2d2292b1d2) |
| BasicVaultMigration | vault_pool | vault_pool | likely in scope | [0xe322e8...c320](https://etherscan.io/address/0xe322e8c197cf7d83a686bbd1e19f7f0085cdc320) |
| BeaconProxy | proxy | proxy | likely in scope | [0x0109e9...5358](https://etherscan.io/address/0x0109e9f292516dab3e15efc61811c5e5a7fa5358) |
| BeaconProxy | proxy | proxy | likely in scope | [0x02ff1f...4cf3](https://etherscan.io/address/0x02ff1f648ff443b5d88214341f0ace6ecfb94cf3) |
| BeaconProxy | proxy | proxy | likely in scope | [0xa1ebd2...9182](https://etherscan.io/address/0xa1ebd23c4364e7491633237a0d9359d82c629182) |
| BeaconProxy | proxy | proxy | likely in scope | [0xe4cf2d...a3ec](https://etherscan.io/address/0xe4cf2d4eb9c01784798679f2fed4cf47cc59a3ec) |
| Cap | core | core | unmatched | [0x7671f4...0c41](https://etherscan.io/address/0x7671f415c76baa3ed21beb8e16a9c971934e0c41) |
| ERC1967Proxy | proxy | proxy | likely in scope | [0xdfb48a...042d](https://etherscan.io/address/0xdfb48ac96c69aab9e80e02e50f7b371749c1042d) |
| ExtensibleVaultWithExtraData | vault_pool | vault_pool | audited (TP) | [0x9954c9...ccc1](https://etherscan.io/address/0x9954c95c504f7dd9a072df7b8759a34ec323ccc1) |
| TheoDepositVault | vault_pool | vault_pool | likely in scope | [0x0b75e1...a2fa](https://etherscan.io/address/0x0b75e167f8a37179b7044414ee43e94cabeaa2fa) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x451d79...16f9](https://etherscan.io/address/0x451d791b6e9a9b8c9237bb55e58a7757342b16f9) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0xf1376b...51f4](https://etherscan.io/address/0xf1376bcef0f78459c0ed0ba5ddce976f1ddf51f4) |
| unnamed | unknown | unknown | unmatched | [0x77b6f9...2300](https://etherscan.io/address/0x77b6f99970f488cfa8bd41892900b6ce881c2300) |

### optimism (chain_id 10)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| BasicVaultMigration | vault_pool | vault_pool | likely in scope | [0x4e2293...90ea](https://optimistic.etherscan.io/address/0x4e2293f5a7346aa4047edbac49a458bc8f1690ea) |
| BeaconProxy | proxy | proxy | likely in scope | [0x5616fe...21be](https://optimistic.etherscan.io/address/0x5616fe2762687cd8a9158c27f62aff84e36821be) |
| BeaconProxy | proxy | proxy | likely in scope | [0xea8edd...0dd7](https://optimistic.etherscan.io/address/0xea8eddb19a980b6d9d77167ca08a70a692da0dd7) |
| Cap | core | core | unmatched | [0x1d28de...7c56](https://optimistic.etherscan.io/address/0x1d28ded4ff512c0e80af2b459d86a9169cc57c56) |
| OptimismMintableERC20 | token | token | unmatched | [0x346e03...08f0](https://optimistic.etherscan.io/address/0x346e03f8cce9fe01dcb3d0da3e9d00dc2c0e08f0) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0xb883ee...b1d2](https://optimistic.etherscan.io/address/0xb883ee478d3b7fea8a5357a3c3e27e2d2292b1d2) |

### bsc (chain_id 56)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| BasicVaultMigration | vault_pool | vault_pool | likely in scope | [0x7b3117...ed2c](https://bscscan.com/address/0x7b31172106f9eb35cc0e364ca0f07af5fa27ed2c) |
| BeaconProxy | proxy | proxy | likely in scope | [0xadd585...bfc2](https://bscscan.com/address/0xadd58517c5d45c8ed361986f193785f8ed1abfc2) |
| ERC1967Proxy | proxy | proxy | likely in scope | [0x4320e5...6de9](https://bscscan.com/address/0x4320e5ae6f08ffcf6175fb558ee4c0ec41b86de9) |
| ExtensibleVaultWithExtraData | vault_pool | vault_pool | audited (TP) | [0xb9c297...c635](https://bscscan.com/address/0xb9c2970be7e433d1df9e4598e339955a32b3c635) |
| HypERC20 | token | token | unmatched | [0xb87827...53c1](https://bscscan.com/address/0xb87827592f4f75ec5610751156e4e2044a4853c1) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x8e1e6b...caef](https://bscscan.com/address/0x8e1e6bf7e13c400269987b65ab2b5724b016caef) |

### mantle (chain_id 5000)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| BasicVaultMigration | vault_pool | vault_pool | likely in scope | [0x68fc16...8a36](https://mantlescan.xyz/address/0x68fc16e59f1e58b8d5ea1ae57db0f44f7ce18a36) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0xe6829d...e8fa](https://mantlescan.xyz/address/0xe6829d9a7ee3040e1276fa75293bde931859e8fa) |
| unnamed | unknown | unknown | likely in scope | [0x6ff000...ce55](https://mantlescan.xyz/address/0x6ff000453a9c14f7d3bf381925c8cde565dbce55) |

### base (chain_id 8453)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| ERC1967Proxy | proxy | proxy | unmatched | [0x8a7f54...a98b](https://basescan.org/address/0x8a7f5457eb8dab4d48abb6bd2bdf9ebebe97a98b) |
| MitosisHypERC20 | token | token | unmatched | [0x40ae80...1d42](https://basescan.org/address/0x40ae801ca27bde15413d4056f041773090901d42) |

### mode (chain_id 34443)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| unnamed | unknown | unknown | unmatched | [0xb883ee...b1d2](https://explorer.mode.network/address/0xb883ee478d3b7fea8a5357a3c3e27e2d2292b1d2) |
| unnamed | unknown | unknown | unmatched | [0xbed575...9471](https://explorer.mode.network/address/0xbed575b0feda4f84b71144634693dacc07749471) |

### arbitrum (chain_id 42161)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| BasicVaultMigration | vault_pool | vault_pool | likely in scope | [0x96d98f...7b23](https://arbiscan.io/address/0x96d98f13a1515a65705728703d29b9ede7087b23) |
| BeaconProxy | proxy | proxy | likely in scope | [0x73981b...a007](https://arbiscan.io/address/0x73981b0496fc08e9136baf74b79d32a4d4f2a007) |
| BeaconProxy | proxy | proxy | likely in scope | [0x7e8cff...e8ba](https://arbiscan.io/address/0x7e8cffbe165c6905a8acec0f37b341c00353e8ba) |
| BeaconProxy | proxy | proxy | likely in scope | [0xbed575...9471](https://arbiscan.io/address/0xbed575b0feda4f84b71144634693dacc07749471) |
| Cap | core | core | unmatched | [0x1d28de...7c56](https://arbiscan.io/address/0x1d28ded4ff512c0e80af2b459d86a9169cc57c56) |
| MultiBridgeToken | token | token | unmatched | [0x3d15fd...c3a0](https://arbiscan.io/address/0x3d15fd46ce9e551498328b1c83071d9509e2c3a0) |
| TheoDepositVault | vault_pool | vault_pool | likely in scope | [0x54602e...ee34](https://arbiscan.io/address/0x54602e5cba09e01eee9b2050f1f4f0dc902cee34) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0xb883ee...b1d2](https://arbiscan.io/address/0xb883ee478d3b7fea8a5357a3c3e27e2d2292b1d2) |

### linea (chain_id 59144)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| BasicVaultMigration | vault_pool | vault_pool | likely in scope | [0x6000ed...7e9b](https://lineascan.build/address/0x6000edabd1f4ccf538051501d86406ff77487e9b) |
| BeaconProxy | proxy | proxy | likely in scope | [0x56ced4...8768](https://lineascan.build/address/0x56ced49205e5d9b4d8d9b29f4abfbe7bb8b08768) |
| BeaconProxy | proxy | proxy | likely in scope | [0x96d6ce...ec2d](https://lineascan.build/address/0x96d6ce4e83db947ff6bd1ab0b377f23cd5d9ec2d) |
| Cap | core | core | unmatched | [0x3cda62...0f1f](https://lineascan.build/address/0x3cda62917dae24d153c102b3db9bb5c058fc0f1f) |
| TheoDepositVault | vault_pool | vault_pool | likely in scope | [0xcf101e...b28c](https://lineascan.build/address/0xcf101e13b5181f79094b0726b03e89d1cb95b28c) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x1bf74c...8aa6](https://lineascan.build/address/0x1bf74c010e6320bab11e2e5a532b5ac15e0b8aa6) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0xcd3287...3a91](https://lineascan.build/address/0xcd32876b9b483eb75e8ca74935e4b51725f33a91) |

### blast (chain_id 81457)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| BasicVaultMigration | vault_pool | vault_pool | likely in scope | [0x244cbb...61dd](https://blastscan.io/address/0x244cbbd78c9360772ab64588def9faf4e9f861dd) |
| BeaconProxy | proxy | proxy | likely in scope | [0x8506fd...60a0](https://blastscan.io/address/0x8506fd66fced711c11f9e837ecaec0f87c3f60a0) |
| Cap | core | core | unmatched | [0xd1945a...0be2](https://blastscan.io/address/0xd1945acfe40e0a2941d24fc39fb57e5790780be2) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x096430...69de](https://blastscan.io/address/0x096430ef0a653c067df32e93ff77090e084169de) |

### scroll (chain_id 534352)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| ATM | core | core | unmatched | [0x1d28de...7c56](https://scrollscan.com/address/0x1d28ded4ff512c0e80af2b459d86a9169cc57c56) |
| BasicVault | vault_pool | vault_pool | audited (TP) | [0x3cda62...0f1f](https://scrollscan.com/address/0x3cda62917dae24d153c102b3db9bb5c058fc0f1f) |
| BasicVaultFactory | factory | factory | audited (TP) | [0x7671f4...0c41](https://scrollscan.com/address/0x7671f415c76baa3ed21beb8e16a9c971934e0c41) |
| BasicVaultMigration | vault_pool | vault_pool | likely in scope | [0x86fc78...17fb](https://scrollscan.com/address/0x86fc783c579e27c99ec16fe4ac00e49caaef17fb) |
| BeaconProxy | proxy | proxy | likely in scope | [0xa0eeb4...bd28](https://scrollscan.com/address/0xa0eeb418213f8472cba2c842378e1bb64e28bd28) |
| BeaconProxy | proxy | proxy | likely in scope | [0xb9ca61...08d6](https://scrollscan.com/address/0xb9ca61a6d5fa0c443f3c48ab1fbf0118964308d6) |
| Cap | core | core | unmatched | [0x4a6219...a382](https://scrollscan.com/address/0x4a6219e25a41fd4165fbd158d89723a7175ea382) |
| CCDMClient | core | core | audited (TP) | [0xd1945a...0be2](https://scrollscan.com/address/0xd1945acfe40e0a2941d24fc39fb57e5790780be2) |
| CCDMHost | core | core | audited (TP) | [0x877b9e...6031](https://scrollscan.com/address/0x877b9ea7ce0358ef7982b2967ae7e538530a6031) |
| Empty | core | core | unmatched | [0x13cad3...aab4](https://scrollscan.com/address/0x13cad3aa86df1233dc9930a8f88f43237056aab4) |
| ERC1967Proxy | proxy | proxy | unmatched | [0x2bfbb9...67d4](https://scrollscan.com/address/0x2bfbb9fefd8bdcdc49ed4f5188036f16fff567d4) |
| LiFiMigrationHelper | migration | migration | unmatched | [0x046076...67a3](https://scrollscan.com/address/0x04607620e45d945af31d42690d0c3a10ec8767a3) |
| LiFiMigrationHelper | migration | migration | unmatched | [0x34a40e...5923](https://scrollscan.com/address/0x34a40ecd41236b8cfa54fee973196f54445f5923) |
| LiFiMigrationHelper | migration | migration | unmatched | [0x373c48...ec6d](https://scrollscan.com/address/0x373c48fe7c70414dfd7f9e7f6d2eedc7b8d4ec6d) |
| LiFiMigrationHelper | migration | migration | unmatched | [0x5d2d6a...a28f](https://scrollscan.com/address/0x5d2d6a15959cdd9610adafca422f135794aaa28f) |
| ProxyAdmin | proxy | proxy | unmatched | [0x5bd649...b5e2](https://scrollscan.com/address/0x5bd64950b2885070e172d01e49b69842a5a4b5e2) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x01f0a3...c506](https://scrollscan.com/address/0x01f0a31698c4d065659b9bdc21b3610292a1c506) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x86c4dc...6e99](https://scrollscan.com/address/0x86c4dc0a667312d2584ba8856257db9a545f6e99) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0xb883ee...b1d2](https://scrollscan.com/address/0xb883ee478d3b7fea8a5357a3c3e27e2d2292b1d2) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0xbc33eb...b46c](https://scrollscan.com/address/0xbc33eb5352a92918c3698e75b573baba25a1b46c) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0xcd3287...3a91](https://scrollscan.com/address/0xcd32876b9b483eb75e8ca74935e4b51725f33a91) |
| VaultHub | vault_pool | vault_pool | audited (TP) | [0xf57104...d1b3](https://scrollscan.com/address/0xf57104f5bbb90b27f169361b065a4e88d73ad1b3) |
| unnamed | unknown | unknown | unmatched | [0x0b75e1...a2fa](https://scrollscan.com/address/0x0b75e167f8a37179b7044414ee43e94cabeaa2fa) |
| unnamed | unknown | unknown | unmatched | [0x0b8ed2...7c7f](https://scrollscan.com/address/0x0b8ed2102ef99603e1e3d819cf7a46db68467c7f) |
| unnamed | unknown | unknown | unmatched | [0x1316be...e0fd](https://scrollscan.com/address/0x1316bec12f20d09f6b4c6c0477ea8fa17612e0fd) |
| unnamed | unknown | unknown | unmatched | [0x512886...ec07](https://scrollscan.com/address/0x5128868509c9663d57a0fc91b465547ae519ec07) |
| unnamed | unknown | unknown | unmatched | [0x54602e...ee34](https://scrollscan.com/address/0x54602e5cba09e01eee9b2050f1f4f0dc902cee34) |
| unnamed | unknown | unknown | unmatched | [0x70d7e0...8aa9](https://scrollscan.com/address/0x70d7e0c93d8443325550ba3f71576f5f346b8aa9) |
| unnamed | unknown | unknown | unmatched | [0x7485e3...2590](https://scrollscan.com/address/0x7485e3746bb5db5330d5b9195f81b984e48c2590) |
| unnamed | unknown | unknown | unmatched | [0xcf101e...b28c](https://scrollscan.com/address/0xcf101e13b5181f79094b0726b03e89d1cb95b28c) |

---

## Scope - Operational Periphery

Operational periphery is not classified for this project. Admin, fee-collection, keeper, and timelock contracts may exist within the flat scope inventory in the core logic section.

---

## Scope - Factory Architecture

No factories detected in topography.

---

## Scope - Proxy and Upgrade Architecture

Protocol uses 30 proxies on 1, 10, 56, 5000, 8453, 42161, 59144, 81457, 534352. 14 follow EIP-1967 / UUPS patterns; 15 are beacon proxies. 13 proxies share an implementation with other proxies in the project.

Upgrade authority concentrates in 9 distinct deployer addresses: 0x1e4f1d...7b36, 0x207e80...82f8, 0x2ab43e...f0d2, 0x587006...c58a, 0x867270...4c11. Multisig membership, timelock duration, and governance-gate parameters are not extracted by the current pipeline.

---

## Scope - Integration Surface

No external integrations detected in topography.

---

## Audit Coverage

### Coverage by Scope Category

| Category | Contracts | Audited | Unaudited | Coverage % |
|---|---:|---:|---:|---:|
| No provenance | 81 | 8 | 73 | 9.9% |
| **Total** | 81 | 8 | 73 | 9.9% |

### Past Audits

| Date | Auditor | Scope Described | Coverage Claim | Relationship | Link |
|---|---|---|---|---|---|
| 2025-08-13 | Zellic | Extensible Vaults Smart Contract Patch Review | unspecified | direct | [report](https://github.com/Zellic/publications/blob/master/Mitosis%20Extensible%20Vaults%20-%20Zellic%20Audit%20Reports.pdf) |
| 2025-05-22 | Zellic | Mitosis Smart Contract Security Assessment | unspecified | direct | [report](https://github.com/Zellic/publications/blob/master/Mitosis%20-%20Zellic%20Audit%20Report.pdf) |
| unknown | Omniscia | omniscia.io/reports/mitosis-core-protocol-65d72c4f31a85a00186cf5f8/code-style/CCDMClient-CCM | unspecified | direct | not available |

### Gap Analysis

Core logic: 0 of 0 contracts covered (0.0%). Operational periphery: 0 of 0 covered (0.0%). Last audit 2 days ago.

14 contracts deployed after the most recent audit. These are by definition not covered by any existing audit.

---

## Appendix

### Docs Pages Referenced

- [https://docs.mitosis.org/learn/audit-reports](https://docs.mitosis.org/learn/audit-reports) - audit_report_link
- [https://docs.mitosis.org/learn/audit-reports.md](https://docs.mitosis.org/learn/audit-reports.md) - audit_report_link
- [https://drive.google.com/drive/folders/1W2m-Fj4e11W23P4FIjJiVbsSvDMV1rZF?usp=drive_link](https://drive.google.com/drive/folders/1W2m-Fj4e11W23P4FIjJiVbsSvDMV1rZF?usp=drive_link) - audit_report_link
- [https://github.com/mitosis-org/chain/blob/main/audits/2025-05-22_Zellic_Mainnet.pdf](https://github.com/mitosis-org/chain/blob/main/audits/2025-05-22_Zellic_Mainnet.pdf) - audit_report_link
- [https://github.com/mitosis-org/protocol/blob/main/audits/2025-05-22_Zellic_Mainnet.pdf](https://github.com/mitosis-org/protocol/blob/main/audits/2025-05-22_Zellic_Mainnet.pdf) - audit_report_link
- [https://omniscia.io/reports/mitosis-core-protocol-65d72c4f31a85a00186cf5f8](https://omniscia.io/reports/mitosis-core-protocol-65d72c4f31a85a00186cf5f8) - audit_report_link
- [https://omniscia.io/reports/mitosis-core-protocol-65d72c4f31a85a00186cf5f8/](https://omniscia.io/reports/mitosis-core-protocol-65d72c4f31a85a00186cf5f8/) - audit_report_link
- [https://omniscia.io/reports/mitosis-core-protocol-65d72c4f31a85a00186cf5f8/appendix/disclaimer](https://omniscia.io/reports/mitosis-core-protocol-65d72c4f31a85a00186cf5f8/appendix/disclaimer) - audit_report_link
- [https://omniscia.io/reports/mitosis-core-protocol-65d72c4f31a85a00186cf5f8/appendix/finding-types](https://omniscia.io/reports/mitosis-core-protocol-65d72c4f31a85a00186cf5f8/appendix/finding-types) - audit_report_link
- [https://omniscia.io/reports/mitosis-core-protocol-65d72c4f31a85a00186cf5f8/appendix/severity-definition](https://omniscia.io/reports/mitosis-core-protocol-65d72c4f31a85a00186cf5f8/appendix/severity-definition) - audit_report_link
- [https://omniscia.io/reports/mitosis-core-protocol-65d72c4f31a85a00186cf5f8/code-style](https://omniscia.io/reports/mitosis-core-protocol-65d72c4f31a85a00186cf5f8/code-style) - audit_report_link
- [https://omniscia.io/reports/mitosis-core-protocol-65d72c4f31a85a00186cf5f8/code-style/BasicVault-BVT](https://omniscia.io/reports/mitosis-core-protocol-65d72c4f31a85a00186cf5f8/code-style/BasicVault-BVT) - audit_report_link
- [https://omniscia.io/reports/mitosis-core-protocol-65d72c4f31a85a00186cf5f8/code-style/BasicVaultFactory-BVF](https://omniscia.io/reports/mitosis-core-protocol-65d72c4f31a85a00186cf5f8/code-style/BasicVaultFactory-BVF) - audit_report_link
- [https://omniscia.io/reports/mitosis-core-protocol-65d72c4f31a85a00186cf5f8/code-style/Cap-CPA](https://omniscia.io/reports/mitosis-core-protocol-65d72c4f31a85a00186cf5f8/code-style/Cap-CPA) - audit_report_link
- [https://omniscia.io/reports/mitosis-core-protocol-65d72c4f31a85a00186cf5f8/code-style/CCDMClient-CCM](https://omniscia.io/reports/mitosis-core-protocol-65d72c4f31a85a00186cf5f8/code-style/CCDMClient-CCM) - audit_report_link
- [https://omniscia.io/reports/mitosis-core-protocol-65d72c4f31a85a00186cf5f8/code-style/CCDMHost-CCD](https://omniscia.io/reports/mitosis-core-protocol-65d72c4f31a85a00186cf5f8/code-style/CCDMHost-CCD) - audit_report_link
- [https://omniscia.io/reports/mitosis-core-protocol-65d72c4f31a85a00186cf5f8/code-style/EETHDepositHelper-EET](https://omniscia.io/reports/mitosis-core-protocol-65d72c4f31a85a00186cf5f8/code-style/EETHDepositHelper-EET) - audit_report_link
- [https://omniscia.io/reports/mitosis-core-protocol-65d72c4f31a85a00186cf5f8/code-style/Message-MEG](https://omniscia.io/reports/mitosis-core-protocol-65d72c4f31a85a00186cf5f8/code-style/Message-MEG) - audit_report_link
- [https://omniscia.io/reports/mitosis-core-protocol-65d72c4f31a85a00186cf5f8/code-style/VaultHub-VHB](https://omniscia.io/reports/mitosis-core-protocol-65d72c4f31a85a00186cf5f8/code-style/VaultHub-VHB) - audit_report_link
- [https://omniscia.io/reports/mitosis-core-protocol-65d72c4f31a85a00186cf5f8/compilation](https://omniscia.io/reports/mitosis-core-protocol-65d72c4f31a85a00186cf5f8/compilation) - audit_report_link
- [https://omniscia.io/reports/mitosis-core-protocol-65d72c4f31a85a00186cf5f8/manual-review](https://omniscia.io/reports/mitosis-core-protocol-65d72c4f31a85a00186cf5f8/manual-review) - audit_report_link
- [https://omniscia.io/reports/mitosis-core-protocol-65d72c4f31a85a00186cf5f8/manual-review/ArbitrumBridgeAdapter-ABA](https://omniscia.io/reports/mitosis-core-protocol-65d72c4f31a85a00186cf5f8/manual-review/ArbitrumBridgeAdapter-ABA) - audit_report_link
- [https://omniscia.io/reports/mitosis-core-protocol-65d72c4f31a85a00186cf5f8/manual-review/ATM-ATM](https://omniscia.io/reports/mitosis-core-protocol-65d72c4f31a85a00186cf5f8/manual-review/ATM-ATM) - audit_report_link
- [https://omniscia.io/reports/mitosis-core-protocol-65d72c4f31a85a00186cf5f8/manual-review/BasicVault-BVT](https://omniscia.io/reports/mitosis-core-protocol-65d72c4f31a85a00186cf5f8/manual-review/BasicVault-BVT) - audit_report_link
- [https://omniscia.io/reports/mitosis-core-protocol-65d72c4f31a85a00186cf5f8/manual-review/BasicVaultFactory-BVF](https://omniscia.io/reports/mitosis-core-protocol-65d72c4f31a85a00186cf5f8/manual-review/BasicVaultFactory-BVF) - audit_report_link
- [https://omniscia.io/reports/mitosis-core-protocol-65d72c4f31a85a00186cf5f8/manual-review/Cap-CPA](https://omniscia.io/reports/mitosis-core-protocol-65d72c4f31a85a00186cf5f8/manual-review/Cap-CPA) - audit_report_link
- [https://omniscia.io/reports/mitosis-core-protocol-65d72c4f31a85a00186cf5f8/manual-review/CCDMClient-CCM](https://omniscia.io/reports/mitosis-core-protocol-65d72c4f31a85a00186cf5f8/manual-review/CCDMClient-CCM) - audit_report_link
- [https://omniscia.io/reports/mitosis-core-protocol-65d72c4f31a85a00186cf5f8/manual-review/CCDMHost-CCD](https://omniscia.io/reports/mitosis-core-protocol-65d72c4f31a85a00186cf5f8/manual-review/CCDMHost-CCD) - audit_report_link
- [https://omniscia.io/reports/mitosis-core-protocol-65d72c4f31a85a00186cf5f8/manual-review/Conv-CVN](https://omniscia.io/reports/mitosis-core-protocol-65d72c4f31a85a00186cf5f8/manual-review/Conv-CVN) - audit_report_link
- [https://omniscia.io/reports/mitosis-core-protocol-65d72c4f31a85a00186cf5f8/manual-review/EETHDepositHelper-EET](https://omniscia.io/reports/mitosis-core-protocol-65d72c4f31a85a00186cf5f8/manual-review/EETHDepositHelper-EET) - audit_report_link
- [https://omniscia.io/reports/mitosis-core-protocol-65d72c4f31a85a00186cf5f8/manual-review/Entrypoint-ETN](https://omniscia.io/reports/mitosis-core-protocol-65d72c4f31a85a00186cf5f8/manual-review/Entrypoint-ETN) - audit_report_link
- [https://omniscia.io/reports/mitosis-core-protocol-65d72c4f31a85a00186cf5f8/manual-review/Message-MEG](https://omniscia.io/reports/mitosis-core-protocol-65d72c4f31a85a00186cf5f8/manual-review/Message-MEG) - audit_report_link
- [https://omniscia.io/reports/mitosis-core-protocol-65d72c4f31a85a00186cf5f8/manual-review/OptimismBridgeAdapter-OBA](https://omniscia.io/reports/mitosis-core-protocol-65d72c4f31a85a00186cf5f8/manual-review/OptimismBridgeAdapter-OBA) - audit_report_link
- [https://omniscia.io/reports/mitosis-core-protocol-65d72c4f31a85a00186cf5f8/manual-review/PolygonZkEvmBridgeAdapter-PZE](https://omniscia.io/reports/mitosis-core-protocol-65d72c4f31a85a00186cf5f8/manual-review/PolygonZkEvmBridgeAdapter-PZE) - audit_report_link
- [https://omniscia.io/reports/mitosis-core-protocol-65d72c4f31a85a00186cf5f8/manual-review/VaultHub-VHB](https://omniscia.io/reports/mitosis-core-protocol-65d72c4f31a85a00186cf5f8/manual-review/VaultHub-VHB) - audit_report_link
- [https://omniscia.io/reports/mitosis-core-protocol-65d72c4f31a85a00186cf5f8/scope](https://omniscia.io/reports/mitosis-core-protocol-65d72c4f31a85a00186cf5f8/scope) - audit_report_link
- [https://omniscia.io/reports/mitosis-core-protocol-65d72c4f31a85a00186cf5f8/static-analysis](https://omniscia.io/reports/mitosis-core-protocol-65d72c4f31a85a00186cf5f8/static-analysis) - audit_report_link
- [https://omniscia.io/reports/mitosis-core-protocol-65d72c4f31a85a00186cf5f8/static-analysis/ArbitrumBridgeAdapter-ABA](https://omniscia.io/reports/mitosis-core-protocol-65d72c4f31a85a00186cf5f8/static-analysis/ArbitrumBridgeAdapter-ABA) - audit_report_link
- [https://omniscia.io/reports/mitosis-core-protocol-65d72c4f31a85a00186cf5f8/static-analysis/BasicVault-BVT](https://omniscia.io/reports/mitosis-core-protocol-65d72c4f31a85a00186cf5f8/static-analysis/BasicVault-BVT) - audit_report_link
- [https://omniscia.io/reports/mitosis-core-protocol-65d72c4f31a85a00186cf5f8/static-analysis/BasicVaultFactory-BVF](https://omniscia.io/reports/mitosis-core-protocol-65d72c4f31a85a00186cf5f8/static-analysis/BasicVaultFactory-BVF) - audit_report_link
- [https://omniscia.io/reports/mitosis-core-protocol-65d72c4f31a85a00186cf5f8/static-analysis/Cap-CPA](https://omniscia.io/reports/mitosis-core-protocol-65d72c4f31a85a00186cf5f8/static-analysis/Cap-CPA) - audit_report_link
- [https://omniscia.io/reports/mitosis-core-protocol-65d72c4f31a85a00186cf5f8/static-analysis/EETHDepositHelper-EET](https://omniscia.io/reports/mitosis-core-protocol-65d72c4f31a85a00186cf5f8/static-analysis/EETHDepositHelper-EET) - audit_report_link
- [https://omniscia.io/reports/mitosis-core-protocol-65d72c4f31a85a00186cf5f8/static-analysis/OptimismBridgeAdapter-OBA](https://omniscia.io/reports/mitosis-core-protocol-65d72c4f31a85a00186cf5f8/static-analysis/OptimismBridgeAdapter-OBA) - audit_report_link
- [https://omniscia.io/reports/mitosis-core-protocol-65d72c4f31a85a00186cf5f8/static-analysis/PolygonZkEvmBridgeAdapter-PZE](https://omniscia.io/reports/mitosis-core-protocol-65d72c4f31a85a00186cf5f8/static-analysis/PolygonZkEvmBridgeAdapter-PZE) - audit_report_link
- [https://omniscia.io/reports/mitosis-core-protocol-65d72c4f31a85a00186cf5f8/static-analysis/VaultHub-VHB](https://omniscia.io/reports/mitosis-core-protocol-65d72c4f31a85a00186cf5f8/static-analysis/VaultHub-VHB) - audit_report_link

### Audit Reports (full list)

- 2025-08-13 - Zellic - Extensible Vaults Smart Contract Patch Review - https://github.com/Zellic/publications/blob/master/Mitosis%20Extensible%20Vaults%20-%20Zellic%20Audit%20Reports.pdf
- 2025-05-22 - Zellic - Mitosis Smart Contract Security Assessment - https://github.com/Zellic/publications/blob/master/Mitosis%20-%20Zellic%20Audit%20Report.pdf
- unknown - Omniscia - omniscia.io/reports/mitosis-core-protocol-65d72c4f31a85a00186cf5f8/code-style/CCDMClient-CCM

### Contract Inventory (sibling artifact)

- **Structural data:** exports/agentic_briefs_v2/mitosis.json
- **Source code:** not fetched in v1

### Excluded Contracts (summary counts)

| Exclusion Reason | Count | Notes |
|---|---:|---|
| infrastructure blocklist | 0 | Summary from p2 provenance classifications |
| shared deployer contamination | 0 | Summary from p2 provenance classifications |
| opaque enrichment only | 0 | Summary from p2 provenance classifications |
| deployer expansion untethered | 0 | Summary from p2 provenance classifications |
| factory rpc expansion untethered | 0 | Summary from p2 provenance classifications |
| considered but unpromoted docs only | 0 | Summary from p2 provenance classifications |
| never evaluated docs only | 0 | Summary from p2 provenance classifications |
| external placeholder docs only | 0 | Summary from p2 provenance classifications |

### Data Availability Notes

- **Provenance classification:** not run for this project.
- **Multisig / timelock metadata:** not extracted by current pipeline.
- **Per-contract TVL:** available; latest total on-chain TVL snapshot is $234,811.
- **Docs extraction status:** Call 1 unknown, Call 2 unknown, Call 5 unknown.

### Generation Metadata

- **Generated at:** 2026-05-05T20:46:00.230Z
- **Scope-match run_id:** recovery-full-v5-fixed-matcher-2026-05-05-c067f024
- **Brief exporter:** v2
- **DL snapshot:** defillama_project_enrichment_v1_defillama_20260429T183806Z (2026-04-29)
- **Topography refresh:** 2026-05-04T12:46:24.531Z

---

## Caveats

- **Audit coverage** is derived from scope matching against audit-report extracted scope data, not from operator confirmation. Contracts labeled `unmatched` may still be covered by an audit whose scope data was too sparse to extract structured coverage from.
- Upgrade admin membership, timelock duration, and governance-gate parameters are NOT extracted by the pipeline. Operator must confirm before scoping.
- Provenance classification was not run for this project. Role-category distinctions are not available here.
- Per-contract TVL snapshot available with total on-chain TVL $234,811.
