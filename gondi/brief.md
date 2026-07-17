# Agentic Audit Brief: Gondi

## Project Overview

- Project: Gondi (`gondi`)
- Website: [https://www.gondi.xyz](https://www.gondi.xyz)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:19.879Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-dc67
- Chains: ethereum, hyperliquid
- Contract surface: 31 unique implementations (79 raw deployments)
- DeFi Llama TVL: $709,331.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

NFT Lending. Structurally: 21 project-authored contract(s) across 2 chain(s); 2 ERC721 NFTs; built on solmate.

### Architecture

The protocol comprises 7 functional families. Its contracts share 6 common project-authored base contract(s) (withprotocolfee, twostepowned, trademarketplace). Dominant framework: solmate.

## Contract Surface Quality

- Indexed contracts: 87; live-surface contracts included: 79 (64 live, 15 unknown).
- Excluded by liveness: 8 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 3/15 (20.0%)
- Deployed-live implementations: 16 of 31 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 3/16
- Verified + Unaudited implementations: 13
- Verified by bytecode match: 0
- Unverified implementations: 15
- Unique implementations: 31
- Raw deployments: 79
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-02 (fresh)
- Audit staleness (calendar age): 2 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 3 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 3 | 18.8% | 2026-02 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| MultiAddressValidator | unknown | hyperliquid | n/a | 2 deployments: ethereum `0xddce55af28fcd6c3f5c9a35d5a0ada9c8f103aa0`; hyperliquid [`0x7d60c8350267ff6d42741177056051d897cbb40e`](./contracts/hyperliquid-999/0x7d60c8350267ff6d42741177056051d897cbb40e/) | ✅ Audited |
| MultiSourceLoan | unknown | ethereum | n/a | 6 deployments: ethereum [`0x478f6f994c6fb3cf3e444a489b3ad9edb8ccae16`](./contracts/ethereum-1/0x478f6f994c6fb3cf3e444a489b3ad9edb8ccae16/); ethereum `0x52cdce4ebd1c6045765e4399ed2e4fffb9bf7e54`; ethereum `0xdff8873f99aa15036b60ff9d0a08bd0f55859634`; ethereum `0xf41b389e0c1950dc0b16c9498eae77131cc08a56`; ethereum `0xf65b99ce6dc5f6c556172bcc0ff27d3665a7d9a8`; hyperliquid `0x6ad675624ec8320e5806858cd5db101a0b927fd9` | ✅ Audited |
| PurchaseBundler | unknown | ethereum | n/a | 20 deployments: ethereum [`0x01981beeb1b36eb0aa3544161d3c4f4397377530`](./contracts/ethereum-1/0x01981beeb1b36eb0aa3544161d3c4f4397377530/); ethereum `0x0d886f84ebbae6dcb09c039063595fcdc305f166`; ethereum `0x1cef7ea779acf977a9b99050bc87d9763c50df96`; ethereum `0x1f87ea2e6217241dcf4c3b5228c2a04209b8f302`; ethereum `0x1fba531724ea2493a15bf5c4ea05f6ab5c0fcd62`; ethereum `0x2f3d5c443643dd20ac1cdfa47bdd63a3b151a53b`; ethereum `0x3b59bffe109e0f33f20887343759a98b48ecdf5f`; ethereum `0x468a9ac85112bbc5a97bf2f1ec1ef5908010527a`; ethereum `0x500007b5ccc7dc461dfc0f0ac99295b2e077c333`; ethereum `0x53ceda4c47585df08201955820e23bb261489140`; ethereum `0x6fee50a83ddfa8a18b40357d3e50f4beb9cc28fd`; ethereum `0x8572711a99f36dbefdc5defc82547e8fbc28fc25`; ethereum `0x893b2d55ae9ce531d3063b00201815782ce9c6ec`; ethereum `0xc10472ac1bf9f2e58ff2c83596b4535334c90814`; ethereum `0xcea7eea12c6fc82d0318704b9d35a4192c2d260a`; ethereum `0xd2f1c03010e85520726d981c9b8d97b8054a1445`; ethereum `0xe02d85e80c1ebda5aa43b8a1996332a83f855a59`; ethereum `0xf46a58cada29ff34cf62f72357d2b37815506feb`; ethereum `0xfd31a0cd628f0bab2cc174c3abd6bfc2d01aca61`; hyperliquid `0xfaaff69da43b8195e5b0945c4fea4476e4264157` | ✅ Audited |

### ⚠️ Verified + Unaudited (13)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AddressManager | governance | hyperliquid | n/a | 11 deployments: ethereum `0x307521f9650f6568bfe56521e3ed150f5a987803`; ethereum `0x4150ded32a6d3bfecae76e7558af480190344927`; ethereum `0x4fb610a0be1965b943ee17df7c7d80071835e056`; ethereum `0x52ac424ef7b283aa5badb8c6254832e3280d7398`; ethereum `0x8fb98cc4999de00f6ace797a195381c0b90c1487`; ethereum `0xe7faa723c65a1976e7441d188b14b78373ffe259`; ethereum `0xf0e9ecac11e9d319f3130a6be16f4d6b756e43af`; hyperliquid [`0x18905fc7f3aab462394f45b69308509a6b75573b`](./contracts/hyperliquid-999/0x18905fc7f3aab462394f45b69308509a6b75573b/); hyperliquid `0x350cd2c9d76625243993b079ade9d3e4f6fdc6ab`; hyperliquid `0x51dc8df5c17c2b7bd458fe758c2c322d739492fa`; hyperliquid `0xca5a494ca20483e21ec1e41fe1d9461da77595bd` | ⚠️ Unaudited |
| AddressMethodManager | governance | ethereum | n/a | 2 deployments: ethereum [`0x443f1640255f0c3f7337ddcf4e3872c887cdbf51`](./contracts/ethereum-1/0x443f1640255f0c3f7337ddcf4e3872c887cdbf51/); ethereum `0x4ecc15ded6e2eb38cce6b0bd0bb0e417813f8f09` | ⚠️ Unaudited |
| AuctionLoanLiquidator | unknown | ethereum | n/a | 2 deployments: ethereum [`0x237e4421c742d843fdd96d22294d338507e17091`](./contracts/ethereum-1/0x237e4421c742d843fdd96d22294d338507e17091/); ethereum `0x97d34635b605c2f1630d6b4c6c5d222b8a2ca47d` | ⚠️ Unaudited |
| AuctionWithBuyoutLoanLiquidator | operational_periphery | ethereum | n/a | 3 deployments: ethereum [`0x2995ae7233fa89b314b5a707465b57a582f440f0`](./contracts/ethereum-1/0x2995ae7233fa89b314b5a707465b57a582f440f0/); ethereum `0xb3d88d4a1dcd26bd3adfca69194db7810c90ada2`; hyperliquid `0xb166ec953fef89c6ee2e39e60fbd49b19cf4c6ad` | ⚠️ Unaudited |
| DelegateRegistry | registry | ethereum | n/a | [`0x00000000000000447e69651d841bd8d104bed493`](./contracts/ethereum-1/0x00000000000000447e69651d841bd8d104bed493/) | ⚠️ Unaudited |
| Leverage | unknown | ethereum | n/a | 4 deployments: ethereum [`0x13df570de8465f5319b6a2c60de21716400074e7`](./contracts/ethereum-1/0x13df570de8465f5319b6a2c60de21716400074e7/); ethereum `0x7b486ed3e4598afc9f15edba9ee683c0c6d3cebd`; ethereum `0x87ce6e8124ffd68fa721fcc7f35fda14a11e233e`; ethereum `0xe4a6accebcad474951a9e2abd90864ffb76c1225` | ⚠️ Unaudited |
| LiquidationDistributor | operational_periphery | hyperliquid | n/a | 3 deployments: ethereum `0x6e9122df87bfe08648ae4b77e97ce77d91b198be`; ethereum `0xedfbee5e877eb02307e9c9e40be4e440e52f51c5`; hyperliquid [`0x47a297bcadbe7c98991e3e7e3b7cc0109ace0a0c`](./contracts/hyperliquid-999/0x47a297bcadbe7c98991e3e7e3b7cc0109ace0a0c/) | ⚠️ Unaudited |
| LoanManagerRegistry | registry | ethereum | n/a | 2 deployments: ethereum [`0x1e09403be51029fe676e684743b6aad2dab7c9f5`](./contracts/ethereum-1/0x1e09403be51029fe676e684743b6aad2dab7c9f5/); hyperliquid `0x97ba36be389944f499495493a2246a96e55866d7` | ⚠️ Unaudited |
| OldERC721Wrapper | token | ethereum | n/a | [`0xc0ec4e4ba06dfb2dfaf21a69fc78310d80fc5497`](./contracts/ethereum-1/0xc0ec4e4ba06dfb2dfaf21a69fc78310d80fc5497/) | ⚠️ Unaudited |
| PositionMigrator | periphery | ethereum | n/a | [`0xdcd85fee491de4b1fc11cbc0ba0e78537732f5b8`](./contracts/ethereum-1/0xdcd85fee491de4b1fc11cbc0ba0e78537732f5b8/) | ⚠️ Unaudited |
| RangeValidator | unknown | ethereum | n/a | [`0x039bc1010f0295246d8004224600d65d804f2b0a`](./contracts/ethereum-1/0x039bc1010f0295246d8004224600d65d804f2b0a/) | ⚠️ Unaudited |
| UniswapV3TwapQuoter | periphery | ethereum | n/a | [`0xcad3b037b56cbd2b4cae2b35b878894e541af68a`](./contracts/ethereum-1/0xcad3b037b56cbd2b4cae2b35b878894e541af68a/) | ⚠️ Unaudited |
| UserVault | core_logic | ethereum | n/a | 4 deployments: ethereum [`0x14a6dcebb2bb73aae1b199ccaada75247b81976d`](./contracts/ethereum-1/0x14a6dcebb2bb73aae1b199ccaada75247b81976d/); ethereum `0x823de2c44369e94cac3da789ad4b6493e27e4bfe`; ethereum `0xc9f152168bc7b75f76b74e1f382f90bc2fedd15f`; hyperliquid `0x3f26ff30061d5a6777a01d7843b5f2b81f60a7ee` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (15)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x125e1d18e3a56f7a6257075b04109d8b8dacc2cc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x17cb965f3229dcd5feef23e0bc2fd817e0c1d8b4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8364dd89c416ca27accabf05b6b642943b49a57a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x869f5b01977152f39207d231a14d2c70849993fd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8aaad0e1bd64c77c42afc824819ab67c3d4886f7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xca5a494ca20483e21ec1e41fe1d9461da77595bd` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x125e1d18e3a56f7a6257075b04109d8b8dacc2cc` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x237e4421c742d843fdd96d22294d338507e17091` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x4150ded32a6d3bfecae76e7558af480190344927` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x4619901abc5a4e53cb997bc458722c0328c2f311` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x52ac424ef7b283aa5badb8c6254832e3280d7398` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x5bdcfadf9eddeec1ead112f85cd3c56192b3edd9` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x6c512df94b1a2cdf0e35fd8eda7b4e99f5c1c1c8` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x7545487a4749ab4a7c16f9185d574d5668220048` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xfe434ab7ff1ab690984adeade883a898e97870e6` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [spaces/W2WSJrV6PSLWo4p8vIGq/uploads/aRsUvzn1bAxcW38gJGOA/Gondi - Zenith Audit Report (5).pdf](https://2893171050-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FW2WSJrV6PSLWo4p8vIGq%2Fuploads%2FaRsUvzn1bAxcW38gJGOA%2FGondi%20-%20Zenith%20Audit%20Report%20(5).pdf) | unknown | Audit | 2026-02 | fresh | Direct | contract_name | 2 | n/a |
| [Gondi - Zenith Audit Report.pdf](https://raw.githubusercontent.com/zenith-security/reports/985c60dd51497dfd8540cdc16bf243265ba154b5/reports/Gondi%20-%20Zenith%20Audit%20Report.pdf) | unknown | Audit | 2025-08 | fresh | Direct | contract_name | 2 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| hyperliquid | [`0x18905fc7f3aab462394f45b69308509a6b75573b`](./contracts/hyperliquid-999/0x18905fc7f3aab462394f45b69308509a6b75573b/) | AddressManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x443f1640255f0c3f7337ddcf4e3872c887cdbf51`](./contracts/ethereum-1/0x443f1640255f0c3f7337ddcf4e3872c887cdbf51/) | AddressMethodManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x237e4421c742d843fdd96d22294d338507e17091`](./contracts/ethereum-1/0x237e4421c742d843fdd96d22294d338507e17091/) | AuctionLoanLiquidator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2995ae7233fa89b314b5a707465b57a582f440f0`](./contracts/ethereum-1/0x2995ae7233fa89b314b5a707465b57a582f440f0/) | AuctionWithBuyoutLoanLiquidator | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x00000000000000447e69651d841bd8d104bed493`](./contracts/ethereum-1/0x00000000000000447e69651d841bd8d104bed493/) | DelegateRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x13df570de8465f5319b6a2c60de21716400074e7`](./contracts/ethereum-1/0x13df570de8465f5319b6a2c60de21716400074e7/) | Leverage | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x47a297bcadbe7c98991e3e7e3b7cc0109ace0a0c`](./contracts/hyperliquid-999/0x47a297bcadbe7c98991e3e7e3b7cc0109ace0a0c/) | LiquidationDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1e09403be51029fe676e684743b6aad2dab7c9f5`](./contracts/ethereum-1/0x1e09403be51029fe676e684743b6aad2dab7c9f5/) | LoanManagerRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc0ec4e4ba06dfb2dfaf21a69fc78310d80fc5497`](./contracts/ethereum-1/0xc0ec4e4ba06dfb2dfaf21a69fc78310d80fc5497/) | OldERC721Wrapper | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdcd85fee491de4b1fc11cbc0ba0e78537732f5b8`](./contracts/ethereum-1/0xdcd85fee491de4b1fc11cbc0ba0e78537732f5b8/) | PositionMigrator | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x039bc1010f0295246d8004224600d65d804f2b0a`](./contracts/ethereum-1/0x039bc1010f0295246d8004224600d65d804f2b0a/) | RangeValidator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x14a6dcebb2bb73aae1b199ccaada75247b81976d`](./contracts/ethereum-1/0x14a6dcebb2bb73aae1b199ccaada75247b81976d/) | UserVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 15 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 15 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=4

Fork inheritance lineage and inherited audits are included when available.
