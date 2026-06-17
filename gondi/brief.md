# Agentic Audit Brief: Gondi

## Project Overview

- Project: Gondi (`gondi`)
- Website: [https://www.gondi.xyz](https://www.gondi.xyz)
- Lifecycle: active (Tier 1, declining)
- Generated: 2026-06-17T07:00:41.708Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: ethereum, hyperliquid
- Contract surface: 25 unique implementations (57 raw deployments)
- DeFi Llama TVL: $752,461.00
- On-chain TVL (included contracts): $35.59
- TVL by chain: Ethereum $35.59

## Project Description

Gondi is an NFT liquidity marketplace and lending protocol that enables users to borrow, lend, refinance loans, and sell or repay collateralized NFTs.

### Architecture

The Gondi family shares governance contracts like AddressManager and AddressMethodManager across its components. Core loan logic in MultiSourceLoan and UserVault relies on validators (RangeValidator, MultiAddressValidator) and liquidators (AuctionLoanLiquidator, AuctionWithBuyoutLoanLiquidator) for risk management, while PurchaseBundler and UniswapV3TwapQuoter support peripheral operations.

## Contract Surface Quality

- Indexed contracts: 84; live-surface contracts included: 57 (57 live, 0 unknown).
- Excluded by liveness: 27 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: aave-v2, uniswap-v3
- Unverified dependencies: 1/4.

## Audit Coverage Summary

- Verified implementations audited: 3/14 (21.4%)
- Verified + Unaudited implementations: 11
- Verified by bytecode match: 0
- Unverified implementations: 11
- Unique implementations: 25
- Raw deployments: 57
- Audits discovered: 2
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): $35.59
- Latest audit: 2026-02 (fresh)
- Staleness: 2 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 3 | 21.4% | 2026-02 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| MultiAddressValidator | unknown | hyperliquid | n/a | 2 deployments: ethereum `0xddce55...103aa0`; hyperliquid [`0x7d60c8...cbb40e`](./contracts/hyperliquid-999/0x7d60c8350267ff6d42741177056051d897cbb40e/) | ✅ Audited |
| MultiSourceLoan | unknown | ethereum | n/a | 4 deployments: ethereum [`0x478f6f...ccae16`](./contracts/ethereum-1/0x478f6f994c6fb3cf3e444a489b3ad9edb8ccae16/); ethereum `0xf41b38...c08a56`; ethereum `0xf65b99...a7d9a8`; hyperliquid `0x6ad675...927fd9` | ✅ Audited |
| PurchaseBundler | unknown | ethereum | n/a | 12 deployments: ethereum [`0x1cef7e...50df96`](./contracts/ethereum-1/0x1cef7ea779acf977a9b99050bc87d9763c50df96/); ethereum `0x1fba53...0fcd62`; ethereum `0x3b59bf...ecdf5f`; ethereum `0x500007...77c333`; ethereum `0x53ceda...489140`; ethereum `0x6fee50...cc28fd`; ethereum `0xc10472...c90814`; ethereum `0xcea7ee...2d260a`; ethereum `0xe02d85...855a59`; ethereum `0xf46a58...506feb`; ethereum `0xfd31a0...1aca61`; hyperliquid `0xfaaff6...264157` | ✅ Audited |

### ⚠️ Verified + Unaudited (11)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UserVault | core_logic | ethereum | n/a | 3 deployments: ethereum [`0x14a6dc...81976d`](./contracts/ethereum-1/0x14a6dcebb2bb73aae1b199ccaada75247b81976d/); ethereum `0x823de2...7e4bfe`; hyperliquid `0x3f26ff...60a7ee` | ⚠️ Unaudited |
| AddressManager | governance | hyperliquid | n/a | 10 deployments: ethereum `0x307521...987803`; ethereum `0x4150de...344927`; ethereum `0x52ac42...0d7398`; ethereum `0x8fb98c...0c1487`; ethereum `0xe7faa7...ffe259`; ethereum `0xf0e9ec...6e43af`; hyperliquid [`0x18905f...75573b`](./contracts/hyperliquid-999/0x18905fc7f3aab462394f45b69308509a6b75573b/); hyperliquid `0x350cd2...fdc6ab`; hyperliquid `0x51dc8d...9492fa`; hyperliquid `0xca5a49...7595bd` | ⚠️ Unaudited |
| AddressMethodManager | governance | ethereum | n/a | 2 deployments: ethereum [`0x443f16...cdbf51`](./contracts/ethereum-1/0x443f1640255f0c3f7337ddcf4e3872c887cdbf51/); ethereum `0x4ecc15...3f8f09` | ⚠️ Unaudited |
| AuctionLoanLiquidator | operational_periphery | ethereum | n/a | [`0x97d346...2ca47d`](./contracts/ethereum-1/0x97d34635b605c2f1630d6b4c6c5d222b8a2ca47d/) | ⚠️ Unaudited |
| AuctionWithBuyoutLoanLiquidator | operational_periphery | ethereum | n/a | 3 deployments: ethereum [`0x2995ae...f440f0`](./contracts/ethereum-1/0x2995ae7233fa89b314b5a707465b57a582f440f0/); ethereum `0xb3d88d...90ada2`; hyperliquid `0xb166ec...f4c6ad` | ⚠️ Unaudited |
| LiquidationDistributor | operational_periphery | hyperliquid | n/a | 3 deployments: ethereum `0x6e9122...b198be`; ethereum `0xedfbee...2f51c5`; hyperliquid [`0x47a297...ce0a0c`](./contracts/hyperliquid-999/0x47a297bcadbe7c98991e3e7e3b7cc0109ace0a0c/) | ⚠️ Unaudited |
| LoanManagerRegistry | registry | ethereum | n/a | 2 deployments: ethereum [`0x1e0940...b7c9f5`](./contracts/ethereum-1/0x1e09403be51029fe676e684743b6aad2dab7c9f5/); hyperliquid `0x97ba36...5866d7` | ⚠️ Unaudited |
| OldERC721Wrapper | token | ethereum | n/a | [`0xc0ec4e...fc5497`](./contracts/ethereum-1/0xc0ec4e4ba06dfb2dfaf21a69fc78310d80fc5497/) | ⚠️ Unaudited |
| PositionMigrator | periphery | ethereum | n/a | [`0xdcd85f...32f5b8`](./contracts/ethereum-1/0xdcd85fee491de4b1fc11cbc0ba0e78537732f5b8/) | ⚠️ Unaudited |
| RangeValidator | unknown | ethereum | n/a | [`0x039bc1...4f2b0a`](./contracts/ethereum-1/0x039bc1010f0295246d8004224600d65d804f2b0a/) | ⚠️ Unaudited |
| UniswapV3TwapQuoter | periphery | ethereum | n/a | [`0xcad3b0...1af68a`](./contracts/ethereum-1/0xcad3b037b56cbd2b4cae2b35b878894e541af68a/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (11)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x8aaad0...4886f7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xca5a49...7595bd` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x125e1d...acc2cc` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x237e44...e17091` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x4150de...344927` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x461990...c2f311` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x52ac42...0d7398` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x5bdcfa...b3edd9` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x6c512d...c1c1c8` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x754548...220048` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xfe434a...7870e6` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Rendered PDF capture](https://2893171050-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FW2WSJrV6PSLWo4p8vIGq%2Fuploads%2FaRsUvzn1bAxcW38gJGOA%2FGondi%20-%20Zenith%20Audit%20Report%20(5).pdf) | unknown | Audit | 2026-02 | fresh | Direct | contract_name | 16 | high |
| [Rendered PDF capture (also discovered via alternate URL)](https://raw.githubusercontent.com/zenith-security/reports/985c60dd51497dfd8540cdc16bf243265ba154b5/reports/Gondi%20-%20Zenith%20Audit%20Report.pdf) | unknown | Audit | 2025-08 | fresh | Direct | contract_name|n/a | 6 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x443f16...cdbf51`](./contracts/ethereum-1/0x443f1640255f0c3f7337ddcf4e3872c887cdbf51/) | AddressMethodManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x47a297...ce0a0c`](./contracts/hyperliquid-999/0x47a297bcadbe7c98991e3e7e3b7cc0109ace0a0c/) | LiquidationDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1e0940...b7c9f5`](./contracts/ethereum-1/0x1e09403be51029fe676e684743b6aad2dab7c9f5/) | LoanManagerRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdcd85f...32f5b8`](./contracts/ethereum-1/0xdcd85fee491de4b1fc11cbc0ba0e78537732f5b8/) | PositionMigrator | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x039bc1...4f2b0a`](./contracts/ethereum-1/0x039bc1010f0295246d8004224600d65d804f2b0a/) | RangeValidator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 15 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 9 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=34

Fork inheritance lineage and inherited audits are included when available.
