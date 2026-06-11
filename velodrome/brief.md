# Agentic Audit Brief: Velodrome

## Project Overview

- Project: Velodrome (`velodrome`)
- Website: [https://velodrome.finance](https://velodrome.finance)
- Lifecycle: active (Tier 0, 88.5% below peak)
- Generated: 2026-06-11T03:57:00.373Z
- Pipeline run: v2-pipeline-2026-06-11-5b3b54-7b75
- Chains: celo, optimism
- Contract surface: 52 unique implementations (120 raw deployments)
- DeFi Llama TVL: $40,174,427.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Velodrome is a decentralized AMM and liquidity hub for the Optimism/Superchain ecosystem, with current deployments beyond only Optimism and Celo. It facilitates token swaps and liquidity provision and uses a ve(3,3) model in which VELO holders can lock tokens to vote on gauge emissions and earn trading fees.

### Architecture

Velodrome V2 and V3 share the VELO token for governance and emissions, with both versions having their own factory and pool contracts. The Gnosis Safe governs the overall protocol, controlling parameters across both product families.

## Audit Coverage Summary

- Verified implementations audited: 19/47 (40.4%)
- Verified + Unaudited implementations: 28
- Verified by bytecode match: 0
- Unverified implementations: 5
- Unique implementations: 52
- Raw deployments: 120
- Audits discovered: 6
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-10 (aging)
- Staleness: 0 fresh, 1 aging, 3 stale, 2 unknown
- Tier 1 coverage: 40.4% (Sherlock, Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Spearbit | Tier 1 | 19 | 40.4% | 2024-01 |
| Sherlock | Tier 1 | 1 | 2.1% | 2024-10 |

## Contract Surface

### ✅ Verified + Audited (19)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| CLFactory | registry | celo | 7 deployments: optimism `0x3fc8e6...38e2eb`; optimism `0x548118...8ac758`; optimism `0x61f42c...f1cdde`; optimism `0x77c839...0f4b51`; optimism `0x8526d8...dcac42`; optimism `0xcc0bdd...1cd12f`; celo [`0x04625b...b5a55f`](./contracts/celo-42220/0x04625b046c69577efc40e6c0bb83cdbafab5a55f/) | ✅ Audited |
| CLGauge | operational_periphery | optimism | 7 deployments: optimism [`0x327147...7ad985`](./contracts/optimism-10/0x327147ee440252b893a771345025b41a267ad985/); optimism `0x629e12...7cd905`; optimism `0x6d600c...332bad`; optimism `0x7155b8...a962bb`; optimism `0xa22d25...1b5e14`; optimism `0xa5c362...6dfee2`; optimism `0xc9b828...af648e` | ✅ Audited |
| CLGaugeFactory | operational_periphery | optimism | 5 deployments: optimism [`0x282ac0...f1592a`](./contracts/optimism-10/0x282ac0ea96493650f1a5e5e5d20490c782f1592a/); optimism `0x5a41a5...c289de`; optimism `0x9630dd...82d1e3`; optimism `0xa8854e...aa5fc3`; optimism `0xdce58b...146ec0` | ✅ Audited |
| CLPool | core_logic | optimism | 6 deployments: optimism [`0x209ce0...98e3f5`](./contracts/optimism-10/0x209ce04710fb9a5c2147ca0fd30922b5e998e3f5/); optimism `0x301e46...943a1b`; optimism `0x380f23...12b4c2`; optimism `0xc28ad2...a3bcbb`; optimism `0xe0a596...a05d37`; optimism `0xf41f45...d32e04` | ✅ Audited |
| FactoryRegistry | registry | optimism | [`0xf4c67c...aa1d7b`](./contracts/optimism-10/0xf4c67cdeaab8360370f41514d06e32ccd8aa1d7b/) | ✅ Audited |
| Minter | operational_periphery | optimism | [`0x6dc9e1...d10982`](./contracts/optimism-10/0x6dc9e1c04ee59ed3531d73a72256c0da46d10982/) | ✅ Audited |
| NonfungiblePositionManager | operational_periphery | optimism | 6 deployments: optimism [`0x0b98e0...8a7356`](./contracts/optimism-10/0x0b98e071c552c3a70796589c0cc9d4f9a68a7356/); optimism `0x1d5951...9df276`; optimism `0x416b43...dc6f29`; optimism `0x785de6...350521`; optimism `0xbb5dfe...56adf4`; optimism `0xfb9155...1ff8a5` | ✅ Audited |
| Pool | core_logic | optimism | 2 deployments: optimism [`0x95885a...64e531`](./contracts/optimism-10/0x95885af5492195f0754be71ad1545fe81364e531/); optimism `0xf10460...e5ff5a` | ✅ Audited |
| PoolFactory | registry | celo | [`0x31832f...ce4bc0`](./contracts/celo-42220/0x31832f2a97fd20664d76cc421207669b55ce4bc0/) | ✅ Audited |
| RewardsDistributor | operational_periphery | optimism | [`0x9d4736...1ea99b`](./contracts/optimism-10/0x9d4736ec60715e71afe72973f7885dcbc21ea99b/) | ✅ Audited |
| Router | adapter | optimism | [`0xa062ae...8b2858`](./contracts/optimism-10/0xa062ae8a9c5e11aaa026fc2670b0d65ccc8b2858/) | ✅ Audited |
| SinkConverter | unknown | optimism | [`0x585af0...34f18d`](./contracts/optimism-10/0x585af0b397ac42dbef7f18395426bf878634f18d/) | ✅ Audited |
| SinkManager | governance | optimism | [`0x5aee5f...abcdae`](./contracts/optimism-10/0x5aee5f0e6c2055ebd776db25f48f6c9a68abcdae/) | ✅ Audited |
| SwapRouter | adapter | optimism | [`0x0792a6...cc9676`](./contracts/optimism-10/0x0792a633f0c19c351081cf4b211f68f79bcc9676/) | ✅ Audited |
| UniversalRouter | adapter | optimism | 6 deployments: optimism [`0x0b3ba5...3f12d1`](./contracts/optimism-10/0x0b3ba5b030b95e5d861448d77db7bee3403f12d1/); optimism `0x1f3f75...e5078f`; optimism `0x4bf3e3...1142fc`; optimism `0x7ef270...dc1d9e`; optimism `0x8f8fef...ffc08d`; optimism `0xf132bd...3eb817` | ✅ Audited |
| Velo | token | optimism | [`0x9560e8...1088db`](./contracts/optimism-10/0x9560e827af36c94d2ac33a39bce1fe78631088db/) | ✅ Audited |
| VeloGovernor | governance | optimism | [`0x1f82e1...cbe989`](./contracts/optimism-10/0x1f82e10d58aef03dea2e478029fb0387a1cbe989/) | ✅ Audited |
| Voter | unknown | optimism | [`0x41c914...5abf3c`](./contracts/optimism-10/0x41c914ee0c7e1a5edcd0295623e6dc557b5abf3c/) | ✅ Audited |
| VotingEscrow | operational_periphery | optimism | [`0xfaf8fd...06787d`](./contracts/optimism-10/0xfaf8fd17d9840595845582fcb047df13f006787d/) | ✅ Audited |

### ⚠️ Verified + Unaudited (28)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| BalanceLogicLibrary | unknown | optimism | [`0x79bca9...1f8dce`](./contracts/optimism-10/0x79bca9bcc19e157cb5f8c5a2f4d6cb951b1f8dce/) | ⚠️ Unaudited |
| CustomSwapFeeModule | unknown | optimism | 6 deployments: optimism [`0x4bc0e3...bf1c8f`](./contracts/optimism-10/0x4bc0e3f3699d152ecb9c80f3de73a4ff78bf1c8f/); optimism `0x71c05b...3b660a`; optimism `0x7361e9...049d5f`; optimism `0x90a1de...5b0e96`; optimism `0xa90991...3aea73`; optimism `0xa9c319...69e9c1` | ⚠️ Unaudited |
| CustomUnstakedFeeModule | unknown | optimism | 6 deployments: optimism [`0x5a6f7f...26678a`](./contracts/optimism-10/0x5a6f7f478cd55904216f1354b2a36d56b826678a/); optimism `0x5a9932...9345d0`; optimism `0xc565f7...6c59d9`; optimism `0xdf9db1...560653`; optimism `0xe07eaa...eced54`; optimism `0xe9321c...bc6f50` | ⚠️ Unaudited |
| DelegationLogicLibrary | unknown | optimism | [`0x737464...aefd30`](./contracts/optimism-10/0x73746410b0dd4526e1fa00d0854e99ba54aefd30/) | ⚠️ Unaudited |
| Forwarder | unknown | optimism | [`0x06824d...29ab74`](./contracts/optimism-10/0x06824df38d1d77eadeb6bafcb03904e27429ab74/) | ⚠️ Unaudited |
| GaugeFactory | operational_periphery | optimism | [`0x8391fe...835071`](./contracts/optimism-10/0x8391fe399640e7228a059f8fa104b8a7b4835071/) | ⚠️ Unaudited |
| GnosisSafeL2 | governance | optimism | [`0x838352...ee2b3f`](./contracts/optimism-10/0x838352f4e3992187a33a04826273db3992ee2b3f/) | ⚠️ Unaudited |
| LpMigrator | periphery | optimism | 2 deployments: optimism [`0x3fdb48...534e71`](./contracts/optimism-10/0x3fdb481b25b24824a2339a4a1abd0b0bc7534e71/); optimism `0x87222d...2668a0` | ⚠️ Unaudited |
| ManagedRewardsFactory | registry | optimism | [`0xcdd958...05cff0`](./contracts/optimism-10/0xcdd9585005095ac7447d1fdbc990c5cfb805cff0/) | ⚠️ Unaudited |
| MixedRouteQuoterV1 | periphery | optimism | 6 deployments: optimism [`0x6315dc...3056a3`](./contracts/optimism-10/0x6315dc8ffeaf4278f062a3a9137eeee54f3056a3/); optimism `0x7e4b99...aa7406`; optimism `0xa4ac92...76df62`; optimism `0xb81774...632777`; optimism `0xfaa0a0...4301f2`; optimism `0xff79ec...b44722` | ⚠️ Unaudited |
| NFTDescriptor | token | optimism | 5 deployments: optimism [`0x829f78...61bea9`](./contracts/optimism-10/0x829f7819ef21301f423bbf406f6fc3f22b61bea9/); optimism `0x848cfd...7ca13c`; optimism `0x98f3df...2c8279`; optimism `0xe92752...074eba`; optimism `0xf3488a...211b1a` | ⚠️ Unaudited |
| NFTSVG | token | optimism | 3 deployments: optimism [`0x005c6a...f9fa16`](./contracts/optimism-10/0x005c6ac3a3e1543e5ff6c8f37641fa313af9fa16/); optimism `0x628ee3...9a678f`; optimism `0x88d3cd...b82690` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptor | token | optimism | 6 deployments: optimism [`0x0452df...02e3c7`](./contracts/optimism-10/0x0452dfdf6e6fa85e53d476434df634b4fd02e3c7/); optimism `0x2c9988...834ff8`; optimism `0x388c59...832f15`; optimism `0x49f248...30d3a4`; optimism `0xb18cb9...9497de`; optimism `0xccdf41...dea165` | ⚠️ Unaudited |
| OffchainOracle | operational_periphery | optimism | [`0xc3f14f...e67783`](./contracts/optimism-10/0xc3f14f34ea43943e6fd677a2bdcea65882e67783/) | ⚠️ Unaudited |
| PatchedManagedRewardsFactory | registry | optimism | [`0x3f468e...142e9c`](./contracts/optimism-10/0x3f468e35f5c262a6e796bfe3be831bf8b9142e9c/) | ⚠️ Unaudited |
| PerlinNoise | unknown | optimism | [`0x08947e...3f75d4`](./contracts/optimism-10/0x08947e304064b3f3ef2b99fca7e549c5fc3f75d4/) | ⚠️ Unaudited |
| QuoterV2 | periphery | optimism | 6 deployments: optimism [`0x1486aa...11465f`](./contracts/optimism-10/0x1486aaf64e0b45334acfdbef524d49eede11465f/); optimism `0x53ca9c...2611e3`; optimism `0x5d467a...3f5900`; optimism `0x81944c...4c5e85`; optimism `0x89d821...621466`; optimism `0xa2decf...63ce45` | ⚠️ Unaudited |
| RestrictedTeam | adapter | optimism | [`0x0a16cb...41d305`](./contracts/optimism-10/0x0a16cb36b553ba2bb2339f3b206a965e9841d305/) | ⚠️ Unaudited |
| SinkDrain | unknown | optimism | 2 deployments: optimism [`0x58f62e...cbfca2`](./contracts/optimism-10/0x58f62efb1528d006d22771623c3c3e7953cbfca2/); optimism `0xda03dc...3b17ec` | ⚠️ Unaudited |
| SinkManagerFacilitator | governance | optimism | [`0x45ff00...ce78a4`](./contracts/optimism-10/0x45ff00822e8235b86cb605ac8295c14628ce78a4/) | ⚠️ Unaudited |
| SlipstreamOracle | operational_periphery | optimism | [`0x629157...d45478`](./contracts/optimism-10/0x629157747ee3a635f9ea1ed37fd0dc7187d45478/) | ⚠️ Unaudited |
| Splitter | operational_periphery | optimism | [`0x6666b2...39ec4c`](./contracts/optimism-10/0x6666b2df7a328cf775778ebad368f5f13e39ec4c/) | ⚠️ Unaudited |
| SugarHelper | periphery | optimism | 4 deployments: optimism [`0x495193...447a69`](./contracts/optimism-10/0x495193daebde03e12857f4d3bb8984da2d447a69/); optimism `0x4d5787...74dc40`; optimism `0x8e5433...5e6700`; optimism `0xba81ec...283896` | ⚠️ Unaudited |
| Trig | unknown | optimism | [`0xbdd6f9...5170ef`](./contracts/optimism-10/0xbdd6f9662e904a9176aafcbdded45d076b5170ef/) | ⚠️ Unaudited |
| VeArtProxy | unknown | optimism | [`0x4a9ea0...1782dd`](./contracts/optimism-10/0x4a9ea0dd5649ec4b6745c60d1769e2184c1782dd/) | ⚠️ Unaudited |
| VelodromeV2Oracle | operational_periphery | optimism | [`0xdf49ff...013e25`](./contracts/optimism-10/0xdf49ff386344d3b687f56c02d0b1784b19013e25/) | ⚠️ Unaudited |
| VeloOracle | operational_periphery | optimism | [`0x07f544...36f5ce`](./contracts/optimism-10/0x07f544813e9fb63d57a92f28fbd3ff0f7136f5ce/) | ⚠️ Unaudited |
| VotingRewardsFactory | registry | optimism | [`0x756e7c...ada8ec`](./contracts/optimism-10/0x756e7c245c69d351fffbfb88ba234aa395ada8ec/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (5)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | optimism | `0x133606...f6f78a` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x20ffdb...3655ec` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x3bf15b...1e9f88` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xc38c3c...7d71e1` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xf74741...318cb8` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Audit](https://code4rena.com/audits/2022-05-velodrome-finance-contest) | Code4rena | Contest | 2022-05 | stale | Direct | n/a | 0 | n/a |
| [Audit](https://raw.githubusercontent.com/spearbit/portfolio/master/pdfs/Velodrome-Spearbit-Security-Review.pdf) | Spearbit | Audit | 2023-07 | stale | Direct | contract_name | 10 | medium |
| [Audit](https://raw.githubusercontent.com/spearbit/portfolio/master/pdfs/Velodrome-Spearbit-Security-Review-Nov23.pdf) | Spearbit | Audit | 2024-01 | stale | Direct | contract_name | 44 | high |
| [ChainSecurity Audit](https://www.chainsecurity.com/security-audit/velodrome-superchain-interoperability) | ChainSecurity | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ChainSecurity Slipstream Audit](https://www.chainsecurity.com/security-audit/velodrome-superchain-slipstream) | ChainSecurity | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Sherlock Audit](https://raw.githubusercontent.com/sherlock-protocol/sherlock-reports/main/audits/2024.11.13%20-%20Final%20-%20Velodrome.pdf) | Sherlock | Contest | 2024-10 | aging | Direct | contract_name | 1 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| optimism | [`0x79bca9...1f8dce`](./contracts/optimism-10/0x79bca9bcc19e157cb5f8c5a2f4d6cb951b1f8dce/) | BalanceLogicLibrary | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x4bc0e3...bf1c8f`](./contracts/optimism-10/0x4bc0e3f3699d152ecb9c80f3de73a4ff78bf1c8f/) | CustomSwapFeeModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x5a6f7f...26678a`](./contracts/optimism-10/0x5a6f7f478cd55904216f1354b2a36d56b826678a/) | CustomUnstakedFeeModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x737464...aefd30`](./contracts/optimism-10/0x73746410b0dd4526e1fa00d0854e99ba54aefd30/) | DelegationLogicLibrary | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x8391fe...835071`](./contracts/optimism-10/0x8391fe399640e7228a059f8fa104b8a7b4835071/) | GaugeFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x3fdb48...534e71`](./contracts/optimism-10/0x3fdb481b25b24824a2339a4a1abd0b0bc7534e71/) | LpMigrator | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xcdd958...05cff0`](./contracts/optimism-10/0xcdd9585005095ac7447d1fdbc990c5cfb805cff0/) | ManagedRewardsFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x6315dc...3056a3`](./contracts/optimism-10/0x6315dc8ffeaf4278f062a3a9137eeee54f3056a3/) | MixedRouteQuoterV1 | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x829f78...61bea9`](./contracts/optimism-10/0x829f7819ef21301f423bbf406f6fc3f22b61bea9/) | NFTDescriptor | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x005c6a...f9fa16`](./contracts/optimism-10/0x005c6ac3a3e1543e5ff6c8f37641fa313af9fa16/) | NFTSVG | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x0452df...02e3c7`](./contracts/optimism-10/0x0452dfdf6e6fa85e53d476434df634b4fd02e3c7/) | NonfungibleTokenPositionDescriptor | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xc3f14f...e67783`](./contracts/optimism-10/0xc3f14f34ea43943e6fd677a2bdcea65882e67783/) | OffchainOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x3f468e...142e9c`](./contracts/optimism-10/0x3f468e35f5c262a6e796bfe3be831bf8b9142e9c/) | PatchedManagedRewardsFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x0a16cb...41d305`](./contracts/optimism-10/0x0a16cb36b553ba2bb2339f3b206a965e9841d305/) | RestrictedTeam | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x58f62e...cbfca2`](./contracts/optimism-10/0x58f62efb1528d006d22771623c3c3e7953cbfca2/) | SinkDrain | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x45ff00...ce78a4`](./contracts/optimism-10/0x45ff00822e8235b86cb605ac8295c14628ce78a4/) | SinkManagerFacilitator | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x629157...d45478`](./contracts/optimism-10/0x629157747ee3a635f9ea1ed37fd0dc7187d45478/) | SlipstreamOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x6666b2...39ec4c`](./contracts/optimism-10/0x6666b2df7a328cf775778ebad368f5f13e39ec4c/) | Splitter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x495193...447a69`](./contracts/optimism-10/0x495193daebde03e12857f4d3bb8984da2d447a69/) | SugarHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x4a9ea0...1782dd`](./contracts/optimism-10/0x4a9ea0dd5649ec4b6745c60d1769e2184c1782dd/) | VeArtProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xdf49ff...013e25`](./contracts/optimism-10/0xdf49ff386344d3b687f56c02d0b1784b19013e25/) | VelodromeV2Oracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x07f544...36f5ce`](./contracts/optimism-10/0x07f544813e9fb63d57a92f28fbd3ff0f7136f5ce/) | VeloOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x756e7c...ada8ec`](./contracts/optimism-10/0x756e7c245c69d351fffbfb88ba234aa395ada8ec/) | VotingRewardsFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 41 |
| upstream | 2 |
| standard_library | 4 |
| needs_review | 5 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2, medium=1
- Match method counts: extraction_exact=55

Zero-match audit list:

- [3918] Audit
- [3921] ChainSecurity Audit
- [3923] ChainSecurity Slipstream Audit

Fork inheritance lineage and inherited audits are included when available.
