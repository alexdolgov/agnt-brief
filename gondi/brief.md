# Agentic Audit Brief: Gondi

## Project Overview

- Project: Gondi (`gondi`)
- Website: [https://www.gondi.xyz](https://www.gondi.xyz)
- Lifecycle: active (Tier 1, declining)
- Generated: 2026-06-10T20:59:04.372Z
- Pipeline run: correction-skeletal-description-fix-all
- Chains: ethereum, hyperliquid
- Contract surface: 30 unique implementations (84 raw deployments)
- DeFi Llama TVL: $1,367,523.00
- On-chain TVL (included contracts): $35.59
- TVL by chain: Ethereum $35.59

## Project Description

Gondi is an NFT liquidity marketplace and lending protocol that enables users to borrow, lend, refinance loans, and sell or repay collateralized NFTs.

### Architecture

The Gondi family shares governance contracts like AddressManager and AddressMethodManager across its components. Core loan logic in MultiSourceLoan and UserVault relies on validators (RangeValidator, MultiAddressValidator) and liquidators (AuctionLoanLiquidator, AuctionWithBuyoutLoanLiquidator) for risk management, while PurchaseBundler and UniswapV3TwapQuoter support peripheral operations.

## Audit Coverage Summary

- Verified implementations audited: 3/15 (20.0%)
- Verified + Unaudited implementations: 12
- Verified by bytecode match: 0
- Unverified implementations: 15
- Unique implementations: 30
- Raw deployments: 84
- Audits discovered: 2
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): $35.59
- Latest audit: 2026-02 (fresh)
- Staleness: 2 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 3 | 20.0% | 2026-02 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| MultiAddressValidator | unknown | hyperliquid | 2 deployments: ethereum `0xddce55...103aa0`; hyperliquid [`0x7d60c8...cbb40e`](./contracts/hyperliquid-999/0x7d60c8350267ff6d42741177056051d897cbb40e/) | ✅ Audited |
| MultiSourceLoan | unknown | ethereum | 6 deployments: ethereum [`0x478f6f...ccae16`](./contracts/ethereum-1/0x478f6f994c6fb3cf3e444a489b3ad9edb8ccae16/); ethereum `0x52cdce...bf7e54`; ethereum `0xdff887...859634`; ethereum `0xf41b38...c08a56`; ethereum `0xf65b99...a7d9a8`; hyperliquid `0x6ad675...927fd9` | ✅ Audited |
| PurchaseBundler | unknown | ethereum | 20 deployments: ethereum [`0x01981b...377530`](./contracts/ethereum-1/0x01981beeb1b36eb0aa3544161d3c4f4397377530/); ethereum `0x0d886f...05f166`; ethereum `0x1cef7e...50df96`; ethereum `0x1f87ea...b8f302`; ethereum `0x1fba53...0fcd62`; ethereum `0x2f3d5c...51a53b`; ethereum `0x3b59bf...ecdf5f`; ethereum `0x468a9a...10527a`; ethereum `0x500007...77c333`; ethereum `0x53ceda...489140`; ethereum `0x6fee50...cc28fd`; ethereum `0x857271...28fc25`; ethereum `0x893b2d...e9c6ec`; ethereum `0xc10472...c90814`; ethereum `0xcea7ee...2d260a`; ethereum `0xd2f1c0...4a1445`; ethereum `0xe02d85...855a59`; ethereum `0xf46a58...506feb`; ethereum `0xfd31a0...1aca61`; hyperliquid `0xfaaff6...264157` | ✅ Audited |

### ⚠️ Verified + Unaudited (12)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UserVault | core_logic | ethereum | 4 deployments: ethereum [`0x14a6dc...81976d`](./contracts/ethereum-1/0x14a6dcebb2bb73aae1b199ccaada75247b81976d/); ethereum `0x823de2...7e4bfe`; ethereum `0xc9f152...edd15f`; hyperliquid `0x3f26ff...60a7ee` | ⚠️ Unaudited |
| AddressManager | governance | hyperliquid | 11 deployments: ethereum `0x307521...987803`; ethereum `0x4150de...344927`; ethereum `0x4fb610...35e056`; ethereum `0x52ac42...0d7398`; ethereum `0x8fb98c...0c1487`; ethereum `0xe7faa7...ffe259`; ethereum `0xf0e9ec...6e43af`; hyperliquid [`0x18905f...75573b`](./contracts/hyperliquid-999/0x18905fc7f3aab462394f45b69308509a6b75573b/); hyperliquid `0x350cd2...fdc6ab`; hyperliquid `0x51dc8d...9492fa`; hyperliquid `0xca5a49...7595bd` | ⚠️ Unaudited |
| AddressMethodManager | governance | ethereum | 2 deployments: ethereum [`0x443f16...cdbf51`](./contracts/ethereum-1/0x443f1640255f0c3f7337ddcf4e3872c887cdbf51/); ethereum `0x4ecc15...3f8f09` | ⚠️ Unaudited |
| AuctionLoanLiquidator | operational_periphery | ethereum | 2 deployments: ethereum [`0x237e44...e17091`](./contracts/ethereum-1/0x237e4421c742d843fdd96d22294d338507e17091/); ethereum `0x97d346...2ca47d` | ⚠️ Unaudited |
| AuctionWithBuyoutLoanLiquidator | operational_periphery | ethereum | 3 deployments: ethereum [`0x2995ae...f440f0`](./contracts/ethereum-1/0x2995ae7233fa89b314b5a707465b57a582f440f0/); ethereum `0xb3d88d...90ada2`; hyperliquid `0xb166ec...f4c6ad` | ⚠️ Unaudited |
| Leverage | unknown | ethereum | 4 deployments: ethereum [`0x13df57...0074e7`](./contracts/ethereum-1/0x13df570de8465f5319b6a2c60de21716400074e7/); ethereum `0x7b486e...d3cebd`; ethereum `0x87ce6e...1e233e`; ethereum `0xe4a6ac...6c1225` | ⚠️ Unaudited |
| LiquidationDistributor | operational_periphery | hyperliquid | 3 deployments: ethereum `0x6e9122...b198be`; ethereum `0xedfbee...2f51c5`; hyperliquid [`0x47a297...ce0a0c`](./contracts/hyperliquid-999/0x47a297bcadbe7c98991e3e7e3b7cc0109ace0a0c/) | ⚠️ Unaudited |
| LoanManagerRegistry | registry | ethereum | 3 deployments: ethereum [`0x1e0940...b7c9f5`](./contracts/ethereum-1/0x1e09403be51029fe676e684743b6aad2dab7c9f5/); ethereum `0xcf0f38...0740f3`; hyperliquid `0x97ba36...5866d7` | ⚠️ Unaudited |
| OldERC721Wrapper | token | ethereum | 3 deployments: ethereum [`0x17770d...5dafff`](./contracts/ethereum-1/0x17770d9d996b8266fd07b736a014d8f06a5dafff/); ethereum `0xb14b31...46e0b9`; ethereum `0xc0ec4e...fc5497` | ⚠️ Unaudited |
| PositionMigrator | periphery | ethereum | [`0xdcd85f...32f5b8`](./contracts/ethereum-1/0xdcd85fee491de4b1fc11cbc0ba0e78537732f5b8/) | ⚠️ Unaudited |
| RangeValidator | unknown | ethereum | 4 deployments: ethereum [`0x039bc1...4f2b0a`](./contracts/ethereum-1/0x039bc1010f0295246d8004224600d65d804f2b0a/); ethereum `0x18905f...75573b`; ethereum `0x265a38...d1fb00`; ethereum `0xac9cd5...43a8b6` | ⚠️ Unaudited |
| UniswapV3TwapQuoter | periphery | ethereum | [`0xcad3b0...1af68a`](./contracts/ethereum-1/0xcad3b037b56cbd2b4cae2b35b878894e541af68a/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (15)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x125e1d...acc2cc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x17cb96...c1d8b4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8364dd...49a57a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x869f5b...9993fd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8aaad0...4886f7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xca5a49...7595bd` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x125e1d...acc2cc` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x237e44...e17091` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x4150de...344927` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x461990...c2f311` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x52ac42...0d7398` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x5bdcfa...b3edd9` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x6c512d...c1c1c8` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x754548...220048` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0xfe434a...7870e6` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Rendered PDF capture](https://2893171050-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FW2WSJrV6PSLWo4p8vIGq%2Fuploads%2FaRsUvzn1bAxcW38gJGOA%2FGondi%20-%20Zenith%20Audit%20Report%20(5).pdf) | unknown | Audit | 2026-02 | fresh | Direct | contract_name | 26 | high |
| [Rendered PDF capture](https://raw.githubusercontent.com/zenith-security/reports/985c60dd51497dfd8540cdc16bf243265ba154b5/reports/Gondi%20-%20Zenith%20Audit%20Report.pdf) | unknown | Audit | 2025-08 | fresh | Direct | contract_name | 8 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x443f16...cdbf51`](./contracts/ethereum-1/0x443f1640255f0c3f7337ddcf4e3872c887cdbf51/) | AddressMethodManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x13df57...0074e7`](./contracts/ethereum-1/0x13df570de8465f5319b6a2c60de21716400074e7/) | Leverage | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x47a297...ce0a0c`](./contracts/hyperliquid-999/0x47a297bcadbe7c98991e3e7e3b7cc0109ace0a0c/) | LiquidationDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1e0940...b7c9f5`](./contracts/ethereum-1/0x1e09403be51029fe676e684743b6aad2dab7c9f5/) | LoanManagerRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x17770d...5dafff`](./contracts/ethereum-1/0x17770d9d996b8266fd07b736a014d8f06a5dafff/) | OldERC721Wrapper | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdcd85f...32f5b8`](./contracts/ethereum-1/0xdcd85fee491de4b1fc11cbc0ba0e78537732f5b8/) | PositionMigrator | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x039bc1...4f2b0a`](./contracts/ethereum-1/0x039bc1010f0295246d8004224600d65d804f2b0a/) | RangeValidator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 21 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 8 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=34

Fork inheritance lineage and inherited audits are included when available.
