# Agentic Audit Brief: Granary Finance

## Project Overview

- Project: Granary Finance (`granary-finance`)
- Lifecycle: unknown
- Generated: 2026-07-03T21:05:56.794Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: arbitrum, ethereum
- Contract surface: 39 unique implementations (39 raw deployments)
- DeFi Llama TVL: $615,228.46
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Lending. Structurally: 37 project-authored contract(s) across 2 chain(s); 5 ERC20 tokens, 1 ERC721 NFT; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 4 common project-authored base contract(s) (versionedinitializable, lendingpoolstorage, debttokenbase). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 39; live-surface contracts included: 39 (39 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/39 (0.0%)
- Deployed-live implementations: 39 of 39 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/39
- Verified + Unaudited implementations: 39
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 39
- Raw deployments: 39
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-11 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (39)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AaveOracle | unknown | ethereum | n/a | [`0x9546f6...5a9995`](./contracts/ethereum-1/0x9546f673ef71ff666ae66d01fd6e7c6dae5a9995/) | ⚠️ Unaudited |
| AaveProtocolDataProvider | unknown | ethereum | n/a | [`0x33c62b...4645bf`](./contracts/ethereum-1/0x33c62bc416309f010c4941163abea3725e4645bf/) | ⚠️ Unaudited |
| AToken | unknown | arbitrum | n/a | [`0x3f45e5...7448fd`](./contracts/arbitrum-42161/0x3f45e5a462a4c7f0ed4bbd5c70bdded55b7448fd/) | ⚠️ Unaudited |
| ATokensAndRatesHelper | unknown | arbitrum | n/a | [`0x0ce5e7...1907e2`](./contracts/arbitrum-42161/0x0ce5e78139090cbf36fc6fb7f655204a981907e2/) | ⚠️ Unaudited |
| ChainlinkSourcesRegistry | unknown | ethereum | n/a | [`0x376824...ec587d`](./contracts/ethereum-1/0x37682435b24cc7ba3767c4abe3b81bfa65ec587d/) | ⚠️ Unaudited |
| DefaultReserveInterestRateStrategy | unknown | ethereum | n/a | [`0x025d9d...170947`](./contracts/ethereum-1/0x025d9d36c616946530ff8ea32d912abf73170947/) | ⚠️ Unaudited |
| FarmerNFT | unknown | arbitrum | n/a | [`0x9a6add...96af05`](./contracts/arbitrum-42161/0x9a6add057603d3366ac3ca97fe80126b7f96af05/) | ⚠️ Unaudited |
| FarmersMarket | unknown | arbitrum | n/a | [`0x582e07...d41008`](./contracts/arbitrum-42161/0x582e0759e35a93e35e6855d47ce6799ad2d41008/) | ⚠️ Unaudited |
| GenericLogic | unknown | ethereum | n/a | [`0x39dfc4...593cc4`](./contracts/ethereum-1/0x39dfc4f2d95210a06cd0ea79d53946e3c2593cc4/) | ⚠️ Unaudited |
| Grain | unknown | ethereum | n/a | [`0x12c261...2cdfbf`](./contracts/ethereum-1/0x12c26138b666360ab2b7a1b149df9cf6642cdfbf/) | ⚠️ Unaudited |
| GrainLGEUniV3 | unknown | arbitrum | n/a | [`0x1033fe...7b9428`](./contracts/arbitrum-42161/0x1033fe9cb2b097aa4d4c0a3fed9798dabf7b9428/) | ⚠️ Unaudited |
| GrainSaleClaim | unknown | arbitrum | n/a | [`0x037c66...6d3a52`](./contracts/arbitrum-42161/0x037c664ec37c6324d174140bde35a9e7596d3a52/) | ⚠️ Unaudited |
| GranaryRewardsVault | unknown | arbitrum | n/a | [`0x246824...f73d28`](./contracts/arbitrum-42161/0x2468246caa105d65b58bdaca216ab7a4b5f73d28/) | ⚠️ Unaudited |
| GranaryTreasury | unknown | arbitrum | n/a | [`0xb17844...4b8236`](./contracts/arbitrum-42161/0xb17844f6e50f4ee8f8fec7d9ba200b0e034b8236/) | ⚠️ Unaudited |
| Intermediary | unknown | arbitrum | n/a | [`0x27d723...13426a`](./contracts/arbitrum-42161/0x27d72395a9b6170b846dc9283d5b041a4413426a/) | ⚠️ Unaudited |
| LendingPool | unknown | ethereum | n/a | [`0xc01a7a...8a1783`](./contracts/ethereum-1/0xc01a7ad7fb8a085a3cc16be8eaa10302c78a1783/) | ⚠️ Unaudited |
| LendingPoolAddressesProvider | unknown | arbitrum | n/a | [`0x3884fc...24be95`](./contracts/arbitrum-42161/0x3884fcd0db58c0fe9f6da852fa43db898524be95/) | ⚠️ Unaudited |
| LendingPoolAddressesProviderRegistry | unknown | arbitrum | n/a | [`0x33c62b...4645bf`](./contracts/arbitrum-42161/0x33c62bc416309f010c4941163abea3725e4645bf/) | ⚠️ Unaudited |
| LendingPoolCollateralManager | unknown | arbitrum | n/a | [`0xc2cda5...4b16c2`](./contracts/arbitrum-42161/0xc2cda52c7dc64d4ff01b58b0981e1fcdd94b16c2/) | ⚠️ Unaudited |
| LendingPoolConfigurator | unknown | arbitrum | n/a | [`0x204f5c...a61831`](./contracts/arbitrum-42161/0x204f5ccc7b5217b8477c8fa45708144fb0a61831/) | ⚠️ Unaudited |
| LendingRateOracle | unknown | arbitrum | n/a | [`0x4a418c...f952c7`](./contracts/arbitrum-42161/0x4a418c8fe7c06f14849786a6f26be8333cf952c7/) | ⚠️ Unaudited |
| Leverager | unknown | arbitrum | n/a | [`0x21ba67...72e716`](./contracts/arbitrum-42161/0x21ba67fafad9bcb7e0aea9739dbfffd5ee72e716/) | ⚠️ Unaudited |
| RektCure | unknown | ethereum | n/a | [`0xec4ec3...9376fc`](./contracts/ethereum-1/0xec4ec3878d7e63ded964956a687e9fd34f9376fc/) | ⚠️ Unaudited |
| ReserveLogic | unknown | arbitrum | n/a | [`0x250b47...33e1e9`](./contracts/arbitrum-42161/0x250b47f097ec51225ece85b13273b70a4233e1e9/) | ⚠️ Unaudited |
| Rewarder | unknown | arbitrum | n/a | [`0x7a1919...bc717d`](./contracts/arbitrum-42161/0x7a191973eaf8cdcc4de683d10c1e11c5a5bc717d/) | ⚠️ Unaudited |
| StableAndVariableTokensHelper | unknown | ethereum | n/a | [`0x158b0b...34dd9d`](./contracts/ethereum-1/0x158b0b1414f153e58f8acac50e777feec234dd9d/) | ⚠️ Unaudited |
| StableDebtToken | unknown | arbitrum | n/a | [`0x8429d0...45a00b`](./contracts/arbitrum-42161/0x8429d0afade80498eadb9919e41437a14d45a00b/) | ⚠️ Unaudited |
| TestGrainLGEUniV3 | unknown | arbitrum | n/a | [`0x14d83b...66e36a`](./contracts/arbitrum-42161/0x14d83baa7a547fac51a13f92c7b0a2df8366e36a/) | ⚠️ Unaudited |
| Timelock | unknown | ethereum | n/a | [`0x198147...ed1975`](./contracts/ethereum-1/0x198147e0a57f009e337ea3f0e5fe9bbca3ed1975/) | ⚠️ Unaudited |
| Timestamp | unknown | arbitrum | n/a | [`0x22a639...9e2cd7`](./contracts/arbitrum-42161/0x22a6391ec86557174538b87fbe36c732919e2cd7/) | ⚠️ Unaudited |
| UiDataProvider | unknown | arbitrum | n/a | [`0x0fdbd7...c508be`](./contracts/arbitrum-42161/0x0fdbd7bab654b5444c96fcc4956b8df9ccc508be/) | ⚠️ Unaudited |
| UiIncentiveDataProvider | unknown | ethereum | n/a | [`0x48b61d...aa3b62`](./contracts/ethereum-1/0x48b61dc3149df0184383d57949655f05e5aa3b62/) | ⚠️ Unaudited |
| UiIncentiveDataProviderV2V3 | unknown | arbitrum | n/a | [`0xf742a0...5cba9a`](./contracts/arbitrum-42161/0xf742a05eb1a5755ba9a52243aebc514b9f5cba9a/) | ⚠️ Unaudited |
| UiPoolDataProvider | unknown | ethereum | n/a | [`0x0ce5e7...1907e2`](./contracts/ethereum-1/0x0ce5e78139090cbf36fc6fb7f655204a981907e2/) | ⚠️ Unaudited |
| UiPoolDataProviderV2 | unknown | ethereum | n/a | [`0x30a5a4...38f54c`](./contracts/ethereum-1/0x30a5a41c3c903a04f7fc1b9c7a58998ed038f54c/) | ⚠️ Unaudited |
| ValidationLogic | unknown | arbitrum | n/a | [`0x12c261...2cdfbf`](./contracts/arbitrum-42161/0x12c26138b666360ab2b7a1b149df9cf6642cdfbf/) | ⚠️ Unaudited |
| VariableDebtToken | unknown | arbitrum | n/a | [`0x3e45df...66c837`](./contracts/arbitrum-42161/0x3e45df33adf1b81e7b45ca468e8e41496a66c837/) | ⚠️ Unaudited |
| WalletBalanceProvider | unknown | arbitrum | n/a | [`0x7b48eb...f00e90`](./contracts/arbitrum-42161/0x7b48eb52c1314b4ee374315b343caae38ff00e90/) | ⚠️ Unaudited |
| WETHGateway | unknown | ethereum | n/a | [`0x2aa685...b747ea`](./contracts/ethereum-1/0x2aa6853ae999d47f86290022e5ebe0df9ab747ea/) | ⚠️ Unaudited |

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
| [skynet.certik.com/projects/granary](https://skynet.certik.com/projects/granary) | CertiK | Audit | 2022-11 | stale | Direct | n/a | 0 | n/a |
| [skynet.certik.com/projects/byte-masons-reliquary](https://skynet.certik.com/projects/byte-masons-reliquary) | CertiK | Audit | 2022-11 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 39 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [21364] skynet.certik.com/projects/granary
- [21365] skynet.certik.com/projects/byte-masons-reliquary

Fork inheritance lineage and inherited audits are included when available.
