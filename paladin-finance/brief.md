# Agentic Audit Brief: Paladin Finance

## Project Overview

- Project: Paladin Finance (`paladin-finance`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:39.391Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d094
- Chains: ethereum
- Contract surface: 35 unique implementations (54 raw deployments)
- DeFi Llama TVL: $27,608.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Structural profile: 60 project-authored contract(s) across 1 chain(s); 1 ERC4626 vault, 4 ERC20 tokens, 1 ERC721 NFT; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 7 functional families. Its contracts share 14 common project-authored base contract(s) (admin, owner, controllerstorage). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 74; live-surface contracts included: 54 (53 live, 1 unknown).
- Excluded by liveness: 20 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 10/32 (31.3%)
- Deployed-live implementations: 34 of 35 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 10/34
- Verified + Unaudited implementations: 24
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 35
- Raw deployments: 54
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-04 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 10 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Paladin | Tier 2 | 10 | 29.4% | 2023-04 |

## Contract Surface

### ✅ Verified + Audited (10)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AddressRegistry | registry | ethereum | n/a | 2 deployments: ethereum [`0x90e0f42f5c6cdcc77bc68a545f27e56e4398b75f`](./contracts/ethereum-1/0x90e0f42f5c6cdcc77bc68a545f27e56e4398b75f/); ethereum `0xee4fdbef2351bdaf6ff3d37202ac41d466976c13` | ✅ Audited |
| DullahanPod | unknown | ethereum | n/a | [`0xc2f3b8ed2f461d9a8a6ff9b67e2759f64540a947`](./contracts/ethereum-1/0xc2f3b8ed2f461d9a8a6ff9b67e2759f64540a947/) | ✅ Audited |
| DullahanPodManager | governance | ethereum | n/a | [`0xf3decc68c4ff828456696287b12e5ac0fa62fe56`](./contracts/ethereum-1/0xf3decc68c4ff828456696287b12e5ac0fa62fe56/) | ✅ Audited |
| DullahanRewardsStaking | unknown | ethereum | n/a | [`0x990f58570b4c7b8b7ae3bc28efeb2724be111545`](./contracts/ethereum-1/0x990f58570b4c7b8b7ae3bc28efeb2724be111545/) | ✅ Audited |
| DullahanVault | core_logic | ethereum | n/a | [`0x167c606be99dbf5a8af61e1983e5b309e8fa2ae7`](./contracts/ethereum-1/0x167c606be99dbf5a8af61e1983e5b309e8fa2ae7/) | ✅ Audited |
| PaladinController | unknown | ethereum | n/a | 4 deployments: ethereum [`0x4ede96cca981ff0ac6729e733a2bcb63ae43b704`](./contracts/ethereum-1/0x4ede96cca981ff0ac6729e733a2bcb63ae43b704/); ethereum `0x951cab249ca907313c9a510ae1b7a0dfb24dcbbd`; ethereum `0xbbfa3b05b2dae65fb4c05ec7f1598793a4bc0623`; ethereum `0xd67900988770d98e06bdd9805eaec5831ba6fe0f` | ✅ Audited |
| PalPool | unknown | ethereum | n/a | 6 deployments: ethereum [`0x414b947b37ee7e716ab11c72979f6d002417233e`](./contracts/ethereum-1/0x414b947b37ee7e716ab11c72979f6d002417233e/); ethereum `0x50be5fe4de4efc3a0adac6587254836972055423`; ethereum `0x7835d976516f82ca8a3ed2942c4c6f9c4e44bb74`; ethereum `0x7ba283b1ddcdd0abe9d0d3f36345645754315978`; ethereum `0xa8afa64c91356ff2a3fafd8324f0552eb8e76632`; ethereum `0xb7a5e68d89950a92f6c7da33919d8415b1384a25` | ✅ Audited |
| PalPoolStkAave | core_logic | ethereum | n/a | [`0xcdc3dd86c99b58749de0f697dfc1abe4be22216d`](./contracts/ethereum-1/0xcdc3dd86c99b58749de0f697dfc1abe4be22216d/) | ✅ Audited |
| PalToken | token | ethereum | n/a | 7 deployments: ethereum [`0x24e79e946dea5482212c38aab2d0782f04cdb0e0`](./contracts/ethereum-1/0x24e79e946dea5482212c38aab2d0782f04cdb0e0/); ethereum `0x7ffad0da714f4595fc9c48fe789d76b9137d7245`; ethereum `0x8f5c4486fd172a63f6e7f51902bb37cd5cd010b4`; ethereum `0x9757b78e2c72e3192786597b80c90ec9bf785706`; ethereum `0xa4dd29192b42c5039fd9356382a5d57218c9d650`; ethereum `0xb28305908af8f3ccc36b194cfcbca3a42212376f`; ethereum `0xcd1ce671c6fc7fa8115a255b307e0133ff1dfdff` | ✅ Audited |
| SnapshotDelegator | unknown | ethereum | n/a | [`0xd53d7e4a1e5d79083592e436570b34023f664b87`](./contracts/ethereum-1/0xd53d7e4a1e5d79083592e436570b34023f664b87/) | ✅ Audited |

### ⚠️ Verified + Unaudited (24)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AaveEcosystemReserveV2 | unknown | ethereum | n/a | [`0x25f2226b597e8f9514b3f68f00f494cf4f286491`](./contracts/ethereum-1/0x25f2226b597e8f9514b3f68f00f494cf4f286491/) | ⚠️ Unaudited |
| DoomsdayController | governance | ethereum | n/a | [`0x75062630838c18fd155dc638f99e09127701cf20`](./contracts/ethereum-1/0x75062630838c18fd155dc638f99e09127701cf20/) | ⚠️ Unaudited |
| DullahanDiscountCalculator | unknown | ethereum | n/a | [`0xc23a7e7c463bad1ae1fd9d962b04bbcb9441a10e`](./contracts/ethereum-1/0xc23a7e7c463bad1ae1fd9d962b04bbcb9441a10e/) | ⚠️ Unaudited |
| DullahanRegistry | registry | ethereum | n/a | [`0xec7d50d40917cf5c25a8aaae0093db165f93e2a0`](./contracts/ethereum-1/0xec7d50d40917cf5c25a8aaae0093db165f93e2a0/) | ⚠️ Unaudited |
| DullahanZapDeposit | adapter | ethereum | n/a | [`0x653050f11b5f20213c9d1ee62cc02a76518649c6`](./contracts/ethereum-1/0x653050f11b5f20213c9d1ee62cc02a76518649c6/) | ⚠️ Unaudited |
| HolyPalMultiplier | unknown | ethereum | n/a | [`0xb5b51a7da57fe6db797abd787ddfd923daabaadc`](./contracts/ethereum-1/0xb5b51a7da57fe6db797abd787ddfd923daabaadc/) | ⚠️ Unaudited |
| IndexMultiplier | unknown | ethereum | n/a | [`0xdcaa23fec70e0e867cd8cd77c9eaaf34e7c73a44`](./contracts/ethereum-1/0xdcaa23fec70e0e867cd8cd77c9eaaf34e7c73a44/) | ⚠️ Unaudited |
| InitializableAdminUpgradeabilityProxy | unknown | ethereum | n/a | [`0xb76289b5e22bd8acc7ab4d35d3c58a1830517e13`](./contracts/ethereum-1/0xb76289b5e22bd8acc7ab4d35d3c58a1830517e13/) | ⚠️ Unaudited |
| LendToAaveMigrator | periphery | ethereum | n/a | [`0x317625234562b1526ea2fac4030ea499c5291de4`](./contracts/ethereum-1/0x317625234562b1526ea2fac4030ea499c5291de4/) | ⚠️ Unaudited |
| LightQuestBoard | unknown | ethereum | n/a | [`0xcbd27bf506ab5580ef86fe6a169449bc24be471b`](./contracts/ethereum-1/0xcbd27bf506ab5580ef86fe6a169449bc24be471b/) | ⚠️ Unaudited |
| MultiMerkleDistributor | unknown | ethereum | n/a | [`0x069b449d8fd744ef09cbc07fe871f52627fe22b0`](./contracts/ethereum-1/0x069b449d8fd744ef09cbc07fe871f52627fe22b0/) | ⚠️ Unaudited |
| PaladinController | unknown | ethereum | n/a | 2 deployments: ethereum [`0x241326339ced11ecc7ca07e4aa350234c57f53e5`](./contracts/ethereum-1/0x241326339ced11ecc7ca07e4aa350234c57f53e5/); ethereum `0xcf131548b18d55fb29df2df47b360c41389ebb2b` | ⚠️ Unaudited |
| PalPoolhPal | unknown | ethereum | n/a | [`0x62f7790c49ba7f049dbb3ef2cc1046a3103f025e`](./contracts/ethereum-1/0x62f7790c49ba7f049dbb3ef2cc1046a3103f025e/) | ⚠️ Unaudited |
| PalZap | adapter | ethereum | n/a | [`0xe0fb13edc73fe156a636bc532fc2e56f9d54aa62`](./contracts/ethereum-1/0xe0fb13edc73fe156a636bc532fc2e56f9d54aa62/) | ⚠️ Unaudited |
| StakedAaveV3 | token | ethereum | n/a | [`0x4da27a545c0c5b758a6ba100e3a049001de870f5`](./contracts/ethereum-1/0x4da27a545c0c5b758a6ba100e3a049001de870f5/) | ⚠️ Unaudited |
| WarAuraLocker | unknown | ethereum | n/a | [`0x7b90e043aac79adea0dbb0690e3c832757207a3b`](./contracts/ethereum-1/0x7b90e043aac79adea0dbb0690e3c832757207a3b/) | ⚠️ Unaudited |
| WarController | governance | ethereum | n/a | [`0xfdeac9f9e4a5a7340ac57b47c67d383fb4f13dbb`](./contracts/ethereum-1/0xfdeac9f9e4a5a7340ac57b47c67d383fb4f13dbb/) | ⚠️ Unaudited |
| WarCvxCrvFarmer | unknown | ethereum | n/a | [`0x857ba41f7957a8d8a4c8a61820cad8b119eda619`](./contracts/ethereum-1/0x857ba41f7957a8d8a4c8a61820cad8b119eda619/) | ⚠️ Unaudited |
| WardenPledge | unknown | ethereum | n/a | 3 deployments: ethereum [`0x7afc5dc212a658b329e4d14e7d45d325c66c934d`](./contracts/ethereum-1/0x7afc5dc212a658b329e4d14e7d45d325c66c934d/); ethereum `0xaa0e430b97ac41a3d941973a4cfff1f8d2bf75d4`; ethereum `0xbeeea88401a1650c412fc380f08291f57c43c3b7` | ⚠️ Unaudited |
| WarRatiosV2 | unknown | ethereum | n/a | 2 deployments: ethereum [`0xcd7219ce5d6248c99693fa8239e680bd6c26cd48`](./contracts/ethereum-1/0xcd7219ce5d6248c99693fa8239e680bd6c26cd48/); ethereum `0xe40004395384455326c7a27a85204801c7f85f94` | ⚠️ Unaudited |
| WarStaker | core_logic | ethereum | n/a | [`0xa86c53af3aadf20be5d7a8136acfdbc4b074758a`](./contracts/ethereum-1/0xa86c53af3aadf20be5d7a8136acfdbc4b074758a/) | ⚠️ Unaudited |
| WarToken | token | ethereum | n/a | [`0xa8258dee2a677874a48f5320670a869d74f0cbc1`](./contracts/ethereum-1/0xa8258dee2a677874a48f5320670a869d74f0cbc1/) | ⚠️ Unaudited |
| WarZap | adapter | ethereum | n/a | [`0xf747744518099f44936d6d58041de6cd199c35af`](./contracts/ethereum-1/0xf747744518099f44936d6d58041de6cd199c35af/) | ⚠️ Unaudited |
| WrappedStakedWar | unknown | ethereum | n/a | [`0x8fef29604d16987e2a0c8ae1dfba47495ff4888a`](./contracts/ethereum-1/0x8fef29604d16987e2a0c8ae1dfba47495ff4888a/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | ethereum | n/a | `0x0a21c944f81ac774aa1e3aa4495dba6210a9635f` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Paladin Dullahan Security Analysis by Pessimistic.pdf](https://github.com/PaladinFinance/Dullahan/blob/main/audit/Paladin%20Dullahan%20Security%20Analysis%20by%20Pessimistic.pdf) | Paladin | Audit | 2023-04 | stale | Direct | contract_name | 4 | n/a |
| [Paladin Security Analysis by Pessimistic.pdf](https://github.com/pessimistic-io/audits/blob/914e35fdfc879451a61d2a3969f3be839b8c808f/Paladin%20Security%20Analysis%20by%20Pessimistic.pdf) | Paladin | Audit | 2021-10 | stale | Direct | contract_name | 6 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x75062630838c18fd155dc638f99e09127701cf20`](./contracts/ethereum-1/0x75062630838c18fd155dc638f99e09127701cf20/) | DoomsdayController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc23a7e7c463bad1ae1fd9d962b04bbcb9441a10e`](./contracts/ethereum-1/0xc23a7e7c463bad1ae1fd9d962b04bbcb9441a10e/) | DullahanDiscountCalculator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xec7d50d40917cf5c25a8aaae0093db165f93e2a0`](./contracts/ethereum-1/0xec7d50d40917cf5c25a8aaae0093db165f93e2a0/) | DullahanRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x653050f11b5f20213c9d1ee62cc02a76518649c6`](./contracts/ethereum-1/0x653050f11b5f20213c9d1ee62cc02a76518649c6/) | DullahanZapDeposit | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb5b51a7da57fe6db797abd787ddfd923daabaadc`](./contracts/ethereum-1/0xb5b51a7da57fe6db797abd787ddfd923daabaadc/) | HolyPalMultiplier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdcaa23fec70e0e867cd8cd77c9eaaf34e7c73a44`](./contracts/ethereum-1/0xdcaa23fec70e0e867cd8cd77c9eaaf34e7c73a44/) | IndexMultiplier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x317625234562b1526ea2fac4030ea499c5291de4`](./contracts/ethereum-1/0x317625234562b1526ea2fac4030ea499c5291de4/) | LendToAaveMigrator | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcbd27bf506ab5580ef86fe6a169449bc24be471b`](./contracts/ethereum-1/0xcbd27bf506ab5580ef86fe6a169449bc24be471b/) | LightQuestBoard | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x069b449d8fd744ef09cbc07fe871f52627fe22b0`](./contracts/ethereum-1/0x069b449d8fd744ef09cbc07fe871f52627fe22b0/) | MultiMerkleDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x241326339ced11ecc7ca07e4aa350234c57f53e5`](./contracts/ethereum-1/0x241326339ced11ecc7ca07e4aa350234c57f53e5/) | PaladinController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x62f7790c49ba7f049dbb3ef2cc1046a3103f025e`](./contracts/ethereum-1/0x62f7790c49ba7f049dbb3ef2cc1046a3103f025e/) | PalPoolhPal | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe0fb13edc73fe156a636bc532fc2e56f9d54aa62`](./contracts/ethereum-1/0xe0fb13edc73fe156a636bc532fc2e56f9d54aa62/) | PalZap | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4da27a545c0c5b758a6ba100e3a049001de870f5`](./contracts/ethereum-1/0x4da27a545c0c5b758a6ba100e3a049001de870f5/) | StakedAaveV3 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7b90e043aac79adea0dbb0690e3c832757207a3b`](./contracts/ethereum-1/0x7b90e043aac79adea0dbb0690e3c832757207a3b/) | WarAuraLocker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfdeac9f9e4a5a7340ac57b47c67d383fb4f13dbb`](./contracts/ethereum-1/0xfdeac9f9e4a5a7340ac57b47c67d383fb4f13dbb/) | WarController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x857ba41f7957a8d8a4c8a61820cad8b119eda619`](./contracts/ethereum-1/0x857ba41f7957a8d8a4c8a61820cad8b119eda619/) | WarCvxCrvFarmer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7afc5dc212a658b329e4d14e7d45d325c66c934d`](./contracts/ethereum-1/0x7afc5dc212a658b329e4d14e7d45d325c66c934d/) | WardenPledge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcd7219ce5d6248c99693fa8239e680bd6c26cd48`](./contracts/ethereum-1/0xcd7219ce5d6248c99693fa8239e680bd6c26cd48/) | WarRatiosV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa86c53af3aadf20be5d7a8136acfdbc4b074758a`](./contracts/ethereum-1/0xa86c53af3aadf20be5d7a8136acfdbc4b074758a/) | WarStaker | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa8258dee2a677874a48f5320670a869d74f0cbc1`](./contracts/ethereum-1/0xa8258dee2a677874a48f5320670a869d74f0cbc1/) | WarToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf747744518099f44936d6d58041de6cd199c35af`](./contracts/ethereum-1/0xf747744518099f44936d6d58041de6cd199c35af/) | WarZap | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8fef29604d16987e2a0c8ae1dfba47495ff4888a`](./contracts/ethereum-1/0x8fef29604d16987e2a0c8ae1dfba47495ff4888a/) | WrappedStakedWar | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 32 |
| upstream | 1 |
| standard_library | 1 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=10

Fork inheritance lineage and inherited audits are included when available.
