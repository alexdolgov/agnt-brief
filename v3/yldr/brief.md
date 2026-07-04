# Agentic Audit Brief: yldr

## Project Overview

- Project: yldr (`yldr`)
- Lifecycle: unknown
- Generated: 2026-07-03T21:07:17.884Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: arbitrum, base, ethereum, polygon
- Contract surface: 53 unique implementations (53 raw deployments)
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Structural profile: 53 project-authored contract(s) across 4 chain(s); 8 ERC20 tokens, 8 ERC1155 multi-tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 7 common project-authored base contract(s) (ownableupgradeable, contextupgradeable, erc1155holder). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 53; live-surface contracts included: 53 (53 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/53 (0.0%)
- Deployed-live implementations: 53 of 53 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/53
- Verified + Unaudited implementations: 53
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 53
- Raw deployments: 53
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (53)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ACLManager | unknown | polygon | n/a | [`0x57c4b3...a0242d`](./contracts/polygon-137/0x57c4b31b7bcd2bbf5b133212a3c14a5267a0242d/) | ⚠️ Unaudited |
| AlgebraV1Adapter | unknown | arbitrum | n/a | [`0x6f20bf...7ab849`](./contracts/arbitrum-42161/0x6f20bfd19749fa9ac261a840d45030f0b77ab849/) | ⚠️ Unaudited |
| AlgebraV1CreateAndLeverage | unknown | arbitrum | n/a | [`0x14c41e...ec2b3f`](./contracts/arbitrum-42161/0x14c41e677edc9dffbe6b07f6046c8d373cec2b3f/) | ⚠️ Unaudited |
| AlgebraV1DataProvider | unknown | arbitrum | n/a | [`0xd8e5cc...73665a`](./contracts/arbitrum-42161/0xd8e5cc2215d058daf116dd818ff1aabaae73665a/) | ⚠️ Unaudited |
| AlgebraV1LeveragedPosition | unknown | arbitrum | n/a | [`0x681ced...06c57a`](./contracts/arbitrum-42161/0x681ced5c0bbf1d0af82450ff6f9f1e6dd906c57a/) | ⚠️ Unaudited |
| ALMCreateAndLeverage | unknown | polygon | n/a | [`0x1fb58c...bb4a00`](./contracts/polygon-137/0x1fb58c1af9301d941f1d61139b0955faf6bb4a00/) | ⚠️ Unaudited |
| ALMLeverageDataProvider | unknown | polygon | n/a | [`0x15bb68...c06c90`](./contracts/polygon-137/0x15bb689432138965cd1092fd63e958b291c06c90/) | ⚠️ Unaudited |
| ALMLeveragedPosition | unknown | polygon | n/a | [`0x7390ab...5287c7`](./contracts/polygon-137/0x7390ab40abf371e954c87104feba37b1ff5287c7/) | ⚠️ Unaudited |
| AssetConverter | unknown | ethereum | n/a | [`0x07b999...656283`](./contracts/ethereum-1/0x07b99965dbedf38322adfe48623e042aa0656283/) | ⚠️ Unaudited |
| BorrowLogic | unknown | base | n/a | [`0x26fc68...0224e6`](./contracts/base-8453/0x26fc68ce8ed4ef8c90ff3c90bf77bbb21c0224e6/) | ⚠️ Unaudited |
| CLDataProvider | unknown | arbitrum | n/a | [`0x1e3aaf...a61b46`](./contracts/arbitrum-42161/0x1e3aafd8b6bd3ae0276cbef74fe9def2e5a61b46/) | ⚠️ Unaudited |
| CLDepositZap | unknown | polygon | n/a | [`0x305ea6...f13cce`](./contracts/polygon-137/0x305ea6fbac2c75af3c87bd773d69da425ff13cce/) | ⚠️ Unaudited |
| CLLeverageDataProvider | unknown | arbitrum | n/a | [`0x3063f8...843cee`](./contracts/arbitrum-42161/0x3063f8b67f5d9123c9282d74caaa44b4bf843cee/) | ⚠️ Unaudited |
| CLLeveragedPosition | unknown | base | n/a | [`0x0812aa...ba6298`](./contracts/base-8453/0x0812aa1f5d32152b907cb8390697733e10ba6298/) | ⚠️ Unaudited |
| CombinedERC3156Wrapper | unknown | arbitrum | n/a | [`0x0b6b6a...81e714`](./contracts/arbitrum-42161/0x0b6b6abbc1ab8b5ce10dc197b663dec56c81e714/) | ⚠️ Unaudited |
| ConfiguratorLogic | unknown | base | n/a | [`0x8695ca...7c65f8`](./contracts/base-8453/0x8695ca6ababbd626c94ac8a74f49b32caf7c65f8/) | ⚠️ Unaudited |
| CreateAndLeverage | unknown | base | n/a | [`0x775f26...30f2bd`](./contracts/base-8453/0x775f2616557824bbcf2ea619ca2bacabd930f2bd/) | ⚠️ Unaudited |
| DefaultReserveInterestRateStrategy | unknown | arbitrum | n/a | [`0x094c74...ff9c30`](./contracts/arbitrum-42161/0x094c742a670860ba7db33d7bc175156954ff9c30/) | ⚠️ Unaudited |
| ERC1155AlgebraV1Wrapper | unknown | arbitrum | n/a | [`0x14da8d...cac83a`](./contracts/arbitrum-42161/0x14da8dfc4214a43d01240bd2adff2dbe73cac83a/) | ⚠️ Unaudited |
| ERC1155CLWrapper | unknown | arbitrum | n/a | [`0x07b999...656283`](./contracts/arbitrum-42161/0x07b99965dbedf38322adfe48623e042aa0656283/) | ⚠️ Unaudited |
| ERC1155CLWrapperConfigurationProvider | unknown | polygon | n/a | [`0x445c21...6d5a64`](./contracts/polygon-137/0x445c213f3abd0811ec5e14e294baedd5946d5a64/) | ⚠️ Unaudited |
| ERC1155CLWrapperOracle | unknown | polygon | n/a | [`0x4e868d...0622e5`](./contracts/polygon-137/0x4e868ddd5be1dac56df454b52dc31a708d0622e5/) | ⚠️ Unaudited |
| ERC1155UniswapV3Wrapper | unknown | ethereum | n/a | [`0x13f4dc...8674fc`](./contracts/ethereum-1/0x13f4dc963ddd2ec0160f6473c69b704b0e8674fc/) | ⚠️ Unaudited |
| ERC20Leverage | unknown | polygon | n/a | [`0x17f9a8...179b03`](./contracts/polygon-137/0x17f9a89cbedd20f9d5fd3c68cc85549e8b179b03/) | ⚠️ Unaudited |
| FlashLoanLogic | unknown | arbitrum | n/a | [`0x0918e8...1117d0`](./contracts/arbitrum-42161/0x0918e8a3ee191146410e84c6560622dc6e1117d0/) | ⚠️ Unaudited |
| GammaAdapter | unknown | polygon | n/a | [`0x82b5f7...5e045c`](./contracts/polygon-137/0x82b5f7987eb74b13e6daacc6dada3926565e045c/) | ⚠️ Unaudited |
| GammaVaultOracle | unknown | polygon | n/a | [`0xd5ef28...80cff0`](./contracts/polygon-137/0xd5ef282ea55f90af837aedff01d45b65dd80cff0/) | ⚠️ Unaudited |
| LiquidationLogic | unknown | ethereum | n/a | [`0x1d225d...743c33`](./contracts/ethereum-1/0x1d225d6975f77f2e9ff1f37fde85ebd752743c33/) | ⚠️ Unaudited |
| LiquidationsHelper | unknown | arbitrum | n/a | [`0x21c2ac...338da3`](./contracts/arbitrum-42161/0x21c2ac59f7f2a43ea0f745ebb275811699338da3/) | ⚠️ Unaudited |
| NToken | unknown | base | n/a | [`0x282194...491e16`](./contracts/base-8453/0x28219423fda748495e10dfa05f089233a5491e16/) | ⚠️ Unaudited |
| Pool | unknown | polygon | n/a | [`0x337b15...7bc704`](./contracts/polygon-137/0x337b15e9bc488b919fe6d2ede388df8f427bc704/) | ⚠️ Unaudited |
| PoolAddressesProvider | unknown | ethereum | n/a | [`0x16085e...8a7f8f`](./contracts/ethereum-1/0x16085e000eac286aa503326cbcee4564268a7f8f/) | ⚠️ Unaudited |
| PoolConfigurator | unknown | polygon | n/a | [`0x10e09d...d16007`](./contracts/polygon-137/0x10e09d6f65a30fed1ce6a9c2959f9322f7d16007/) | ⚠️ Unaudited |
| PoolLogic | unknown | arbitrum | n/a | [`0x38d99a...dc3392`](./contracts/arbitrum-42161/0x38d99a1e6bc87c6343c7c626bcf27b7b8ddc3392/) | ⚠️ Unaudited |
| PositionManagerLeverageWrapper | unknown | ethereum | n/a | [`0x16080f...d5029c`](./contracts/ethereum-1/0x16080fc8c9b51f573b17eb8a2a84ddcc70d5029c/) | ⚠️ Unaudited |
| PriceOracleSentinel | unknown | arbitrum | n/a | [`0xb71014...e0e158`](./contracts/arbitrum-42161/0xb71014315fb14247e18f8abc0fdb4ab224e0e158/) | ⚠️ Unaudited |
| RewardsDistributor | unknown | base | n/a | [`0x51de5c...ad6fb6`](./contracts/base-8453/0x51de5c2b717bdee1224309508043ad10a4ad6fb6/) | ⚠️ Unaudited |
| SteerAdapter | unknown | polygon | n/a | [`0x251695...33ccaf`](./contracts/polygon-137/0x2516956cba4ab1faa15c6d75cc3bd04fb833ccaf/) | ⚠️ Unaudited |
| SteerStrategy | unknown | polygon | n/a | [`0x7b2943...f27fa7`](./contracts/polygon-137/0x7b294385455cae809f286f3a1f91a19f89f27fa7/) | ⚠️ Unaudited |
| SteerVaultOracle | unknown | polygon | n/a | [`0x8bd493...57494c`](./contracts/polygon-137/0x8bd493f48af48f1c5199fe80bc0c57c08557494c/) | ⚠️ Unaudited |
| SupplyLogic | unknown | polygon | n/a | [`0x282194...491e16`](./contracts/polygon-137/0x28219423fda748495e10dfa05f089233a5491e16/) | ⚠️ Unaudited |
| UIPoolDataProvider | unknown | polygon | n/a | [`0x2464da...6413ad`](./contracts/polygon-137/0x2464da5c26651cdced9f6afa9afdc79b5f6413ad/) | ⚠️ Unaudited |
| VariableDebtToken | unknown | arbitrum | n/a | [`0x2a3102...f03051`](./contracts/arbitrum-42161/0x2a3102e6704141b789c12006bcd9d1b7c9f03051/) | ⚠️ Unaudited |
| WalletBalanceProvider | unknown | ethereum | n/a | [`0x1c46f2...dec33f`](./contracts/ethereum-1/0x1c46f275860c177bb535ba570a23c2fb47dec33f/) | ⚠️ Unaudited |
| WalletBalancesProvider | unknown | arbitrum | n/a | [`0x348f15...51ada2`](./contracts/arbitrum-42161/0x348f1512514c27c18275d61312e2387bd851ada2/) | ⚠️ Unaudited |
| WETHGateway | unknown | base | n/a | [`0x7bd231...794d69`](./contracts/base-8453/0x7bd23152d7005e9a3048a2ea74a686c579794d69/) | ⚠️ Unaudited |
| YLDRCLLeverage | unknown | polygon | n/a | [`0x7ed532...029135`](./contracts/polygon-137/0x7ed53235925d1f25ed765d8020984dadb0029135/) | ⚠️ Unaudited |
| YLDRERC3156Wrapper | unknown | polygon | n/a | [`0x090d62...85f9b7`](./contracts/polygon-137/0x090d62126276a6ec45fa84a32f7ca211bb85f9b7/) | ⚠️ Unaudited |
| YLDRFeeCollector | unknown | arbitrum | n/a | [`0x234b15...5d888f`](./contracts/arbitrum-42161/0x234b15e169c0694369077cdcaef54f3b995d888f/) | ⚠️ Unaudited |
| YLDRLeverageAutomations | unknown | arbitrum | n/a | [`0x470ec8...b6328e`](./contracts/arbitrum-42161/0x470ec8a2ce61562e026f4e7dd408d74cabb6328e/) | ⚠️ Unaudited |
| YLDROracle | unknown | base | n/a | [`0x0918e8...1117d0`](./contracts/base-8453/0x0918e8a3ee191146410e84c6560622dc6e1117d0/) | ⚠️ Unaudited |
| YLDRProtocolDataProvider | unknown | ethereum | n/a | [`0x2a6176...b17452`](./contracts/ethereum-1/0x2a61760f0413c7fc9e3120e3d51c961f6bb17452/) | ⚠️ Unaudited |
| YToken | unknown | ethereum | n/a | [`0x017c7f...97f6d1`](./contracts/ethereum-1/0x017c7f16e21a7c801377a8383fe20f7a7f97f6d1/) | ⚠️ Unaudited |

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
| [skynet.certik.com/projects/yldr](https://skynet.certik.com/projects/yldr) | CertiK | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 53 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [21099] skynet.certik.com/projects/yldr

Fork inheritance lineage and inherited audits are included when available.
