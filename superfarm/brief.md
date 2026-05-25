# Agentic Audit Brief: SuperFarm

⚠️ Lifecycle status: DECLINING - TVL changed 52.4% over 90 days

## Project Overview

- Project: SuperFarm (`superfarm`)
- Website: [https://superverse.co/](https://superverse.co/)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-05-25T20:13:23.791Z
- Pipeline run: v2-pipeline-2026-05-25-eff36e-79e6
- Chains: ethereum
- Contract surface: 50 unique implementations (78 raw deployments)
- DeFi Llama TVL: $1,160,879.22
- On-chain TVL (included contracts): $211,051,062.44
- TVL by chain: Ethereum $211,051,062.44

## Project Description

SuperFarm is a cross-chain DeFi protocol that enables users to stake assets and earn rewards, primarily through its native SUPER token and partner tokens. It provides staking pools and token infrastructure to facilitate yield generation and liquidity provision.

### Architecture

The Staker contracts interact with the SUPER token and partner tokens like InjectiveToken and REVV to distribute rewards. The UniswapV2Pair likely provides liquidity for the SUPER token, supporting the staking ecosystem.

## Audit Coverage Summary

- Verified implementations audited: 0/43 (0.0%)
- Verified + Unaudited implementations: 43
- Verified by bytecode match: 0
- Unverified implementations: 7
- Unique implementations: 50
- Raw deployments: 78
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $211,051,062.44
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $211,051,062.44 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (43)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Token | token | ethereum | [`0xe53ec7...b40a55`](./contracts/ethereum-1/0xe53ec727dbdeb9e2d5456c3be40cff031ab40a55/) | ⚠️ Unaudited |
| ERC20FixedSupply | token | ethereum | [`0x9cb7a4...e3da53`](./contracts/ethereum-1/0x9cb7a4ef0cae65b07362bc679a0b874041e3da53/) | ⚠️ Unaudited |
| TokenVault | core_logic | ethereum | 6 deployments: ethereum [`0x23a1fd...73fbcf`](./contracts/ethereum-1/0x23a1fd006d151e1d920d5de860e82c697e73fbcf/); ethereum `0x701354...f66da7`; ethereum `0x7080f6...ac3f2c`; ethereum `0x72267d...250cb1`; ethereum `0xbda122...3a4700`; ethereum `0xf6e479...2e14ca` | ⚠️ Unaudited |
| Staker | core_logic | ethereum | 4 deployments: ethereum [`0x439194...ed4430`](./contracts/ethereum-1/0x4391940003ee5d7502c41c539aa12d3f2aed4430/); ethereum `0x8e586d...d5fc9b`; ethereum `0xb3ea98...9edd80`; ethereum `0xf35a92...206207` | ⚠️ Unaudited |
| InjectiveToken | token | ethereum | [`0xe28b3b...ceca30`](./contracts/ethereum-1/0xe28b3b32b6c345a34ff64674606124dd5aceca30/) | ⚠️ Unaudited |
| NFTRepairCentre | token | ethereum | [`0xe4f3c9...d63996`](./contracts/ethereum-1/0xe4f3c9b9058d4b88f3c551c64e26e99a25d63996/) | ⚠️ Unaudited |
| AltcoinsPurchaseProxy | unknown | ethereum | [`0xde486e...e0bc8f`](./contracts/ethereum-1/0xde486e214cb0fb4a36cc4b0aea48379c66e0bc8f/) | ⚠️ Unaudited |
| CrateKeyFullSale | unknown | ethereum | [`0xaf309e...3c9bd0`](./contracts/ethereum-1/0xaf309e609e6b65913be7f77763152871bc3c9bd0/) | ⚠️ Unaudited |
| CrateKeySale | unknown | ethereum | [`0x6ee190...4d74fb`](./contracts/ethereum-1/0x6ee19055be98395933ff60b0f263e21e5f4d74fb/) | ⚠️ Unaudited |
| Crates2020Locksmith | unknown | ethereum | [`0x93c2ba...e04250`](./contracts/ethereum-1/0x93c2bad041fa79b4026654667dcb61e9fee04250/) | ⚠️ Unaudited |
| DeltaTimeInventory | unknown | ethereum | 2 deployments: ethereum [`0x1d72d4...9cb0f0`](./contracts/ethereum-1/0x1d72d4746647b7fe84e2bcdefd96c119fb9cb0f0/); ethereum `0x2af756...ad5576` | ⚠️ Unaudited |
| DeltaTimeNFT | token | ethereum | [`0x3c62e8...2a7e03`](./contracts/ethereum-1/0x3c62e8de798721963b439868d3ce22a5252a7e03/) | ⚠️ Unaudited |
| DeltaTimeStaking2021 | unknown | ethereum | [`0x410ef5...3caa71`](./contracts/ethereum-1/0x410ef532c1e4957806508d2b3928aad73f3caa71/) | ⚠️ Unaudited |
| DeltaTimeStakingBeta | unknown | ethereum | 2 deployments: ethereum [`0x820489...fde63b`](./contracts/ethereum-1/0x8204894c8ab1b3a322f2dae576cf9cbb3efde63b/); ethereum `0xfacbd9...775368` | ⚠️ Unaudited |
| ERC20EscrowPredicate | operational_periphery | ethereum | [`0x21ada4...bcd3e4`](./contracts/ethereum-1/0x21ada4d8a799c4b0adf100eb597a6f1321bcd3e4/) | ⚠️ Unaudited |
| F1DTCrateKey | unknown | ethereum | 4 deployments: ethereum [`0x012408...52a0dc`](./contracts/ethereum-1/0x012408dd7d43a6b3949bdaa281c123b19652a0dc/); ethereum `0x17acdd...56f557`; ethereum `0x5694bc...5a524b`; ethereum `0x7e439a...3a215b` | ⚠️ Unaudited |
| FixedOrderSandNftSale | token | ethereum | [`0xec2142...540b3c`](./contracts/ethereum-1/0xec21427cc1deb6fd0727d7a777dda9a9f5540b3c/) | ⚠️ Unaudited |
| FixedOrderTrackSale | unknown | ethereum | 2 deployments: ethereum [`0x0eb72c...c57645`](./contracts/ethereum-1/0x0eb72c624ce15958b79a6f3b06f0877f4cc57645/); ethereum `0x463db3...e69695` | ⚠️ Unaudited |
| FixedSupplyCratesSale | unknown | ethereum | [`0x2e61c6...bc82cd`](./contracts/ethereum-1/0x2e61c63e045a978b51c6517c79c2592fcfbc82cd/) | ⚠️ Unaudited |
| GameeVouchers | unknown | ethereum | [`0xe114bc...022c92`](./contracts/ethereum-1/0xe114bce907a86d81f321c6fd8d8c51d542022c92/) | ⚠️ Unaudited |
| LP_REVV_SAND_Unipool | core_logic | ethereum | [`0x7da2a5...9c1fe0`](./contracts/ethereum-1/0x7da2a5836f2f292fb65537a1c2610655089c1fe0/) | ⚠️ Unaudited |
| MintShop1155 | unknown | ethereum | 2 deployments: ethereum [`0x681a42...a51824`](./contracts/ethereum-1/0x681a4241c73037928838efde2fb5af401aa51824/); ethereum `0xcf4286...0f3bd3` | ⚠️ Unaudited |
| MultiSigWallet | governance | ethereum | 6 deployments: ethereum [`0x4289f1...7f91d2`](./contracts/ethereum-1/0x4289f116fbd3d861ca9001f4974f8fc7d17f91d2/); ethereum `0x47c9ba...753b28`; ethereum `0x8179d2...dbb4fc`; ethereum `0xeb5545...814edf`; ethereum `0xebaaba...6557e6`; ethereum `0xfc4504...f25197` | ⚠️ Unaudited |
| MyOFTAdapter | adapter | ethereum | [`0x879645...b4d5b1`](./contracts/ethereum-1/0x87964551caf340e17b7b00dfc1db2f6b67b4d5b1/) | ⚠️ Unaudited |
| OFTAdapterFixedSupply | adapter | ethereum | [`0xea614f...63b793`](./contracts/ethereum-1/0xea614f1d42af662199b0aac8e70ddabb7863b793/) | ⚠️ Unaudited |
| PolygonERC20MintBurnPredicate | token | ethereum | [`0x436f5b...f40cb5`](./contracts/ethereum-1/0x436f5ba0dcf22f991475fc7a6de75daae2f40cb5/) | ⚠️ Unaudited |
| PrePaid | unknown | ethereum | [`0x590df9...c730b8`](./contracts/ethereum-1/0x590df9dc51ea5e1c7a93e61f1a973cea1fc730b8/) | ⚠️ Unaudited |
| REDP | unknown | ethereum | [`0x2840a0...c1e6d0`](./contracts/ethereum-1/0x2840a0844310fc22292fe336e96ab1884bc1e6d0/) | ⚠️ Unaudited |
| REVV | unknown | ethereum | [`0x557b93...51a8ca`](./contracts/ethereum-1/0x557b933a7c2c45672b610f8954a3deb39a51a8ca/) | ⚠️ Unaudited |
| REVVInventory | unknown | ethereum | [`0xa7a05e...a6f954`](./contracts/ethereum-1/0xa7a05e655cbed5356d2fa851e96f7f68e4a6f954/) | ⚠️ Unaudited |
| REVVMotorsportShard | unknown | ethereum | 2 deployments: ethereum [`0x69a324...bc92a1`](./contracts/ethereum-1/0x69a3244fd4d81c800021f80127add5a684bc92a1/); ethereum `0x6d4a51...f55c4b` | ⚠️ Unaudited |
| REVVRacingCatalyst | unknown | ethereum | [`0xe33a01...8e3283`](./contracts/ethereum-1/0xe33a010e8ed8093ae496bb26449533d6b18e3283/) | ⚠️ Unaudited |
| REVVSale | unknown | ethereum | [`0xfb9ffb...466e27`](./contracts/ethereum-1/0xfb9ffbb289f3f261c16ca24eafbad4e9fe466e27/) | ⚠️ Unaudited |
| SimpleSale | unknown | ethereum | [`0x83bbca...2f0f9b`](./contracts/ethereum-1/0x83bbca966537302f6c5cd903ed0f7e614b2f0f9b/) | ⚠️ Unaudited |
| Super1155 | unknown | ethereum | [`0x6110dd...009af2`](./contracts/ethereum-1/0x6110dd87b7a6fbbebb0ea0f0dffb59ae59009af2/) | ⚠️ Unaudited |
| SuperStaking | unknown | ethereum | [`0x530433...86d03b`](./contracts/ethereum-1/0x5304334ac100a6576ac3c15e8fca41e18386d03b/) | ⚠️ Unaudited |
| Timelock | governance | ethereum | 6 deployments: ethereum [`0x0167ee...7a7e47`](./contracts/ethereum-1/0x0167eed0dd3e644fa06e6de44bf65503b37a7e47/); ethereum `0x0afa5d...3c0123`; ethereum `0x399a14...48aa60`; ethereum `0x6a6780...8fc2e6`; ethereum `0x7456d1...f66769`; ethereum `0x9935a8...b6362b` | ⚠️ Unaudited |
| TimeTrialEliteLeague | unknown | ethereum | 3 deployments: ethereum [`0x654291...b6cead`](./contracts/ethereum-1/0x654291175cdedc48679f290c318949d9b6b6cead/); ethereum `0x736a68...25a393`; ethereum `0x9d5919...52c91e` | ⚠️ Unaudited |
| TokenLaunchpadVoucherPacksSale | token | ethereum | [`0x58ce6c...54575b`](./contracts/ethereum-1/0x58ce6caa5b3c25804d9ebe59c1803f213a54575b/) | ⚠️ Unaudited |
| TokenLaunchpadVouchers | token | ethereum | [`0x87a374...a37c0d`](./contracts/ethereum-1/0x87a3747c9942d8351cc85aac2f94807b27a37c0d/) | ⚠️ Unaudited |
| TokenLaunchpadVouchersSale | token | ethereum | [`0x70ff3c...f591ad`](./contracts/ethereum-1/0x70ff3c8a979b7f4e6b8100da78a1b2ea9af591ad/) | ⚠️ Unaudited |
| Unipool | core_logic | ethereum | [`0x4ef639...1575f0`](./contracts/ethereum-1/0x4ef6394d1a857a7825ab51d6c482f1a5471575f0/) | ⚠️ Unaudited |
| UniswapV2Pair | unknown | ethereum | [`0x25647e...1d0888`](./contracts/ethereum-1/0x25647e01bd0967c1b9599fa3521939871d1d0888/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (7)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x038b0a...97e26b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3d592a...313921` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x581d18...bd2954` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5f698b...3cfc92` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa9748c...035b78` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc34bf5...9c31d2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe17bae...ad52ee` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xe53ec7...b40a55`](./contracts/ethereum-1/0xe53ec727dbdeb9e2d5456c3be40cff031ab40a55/) | Token | token | $121,843,315.10 | Verified native implementation with $121,843,315.10 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9cb7a4...e3da53`](./contracts/ethereum-1/0x9cb7a4ef0cae65b07362bc679a0b874041e3da53/) | ERC20FixedSupply | token | $45,118,759.76 | Verified native implementation with $45,118,759.76 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x23a1fd...73fbcf`](./contracts/ethereum-1/0x23a1fd006d151e1d920d5de860e82c697e73fbcf/) | TokenVault | core_logic | $43,843,628.53 | Verified native implementation with $43,843,628.53 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x439194...ed4430`](./contracts/ethereum-1/0x4391940003ee5d7502c41c539aa12d3f2aed4430/) | Staker | core_logic | $242,743.63 | Verified native implementation with $242,743.63 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe4f3c9...d63996`](./contracts/ethereum-1/0xe4f3c9b9058d4b88f3c551c64e26e99a25d63996/) | NFTRepairCentre | token | $4.64 | Verified native implementation with $4.64 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xde486e...e0bc8f`](./contracts/ethereum-1/0xde486e214cb0fb4a36cc4b0aea48379c66e0bc8f/) | AltcoinsPurchaseProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xaf309e...3c9bd0`](./contracts/ethereum-1/0xaf309e609e6b65913be7f77763152871bc3c9bd0/) | CrateKeyFullSale | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6ee190...4d74fb`](./contracts/ethereum-1/0x6ee19055be98395933ff60b0f263e21e5f4d74fb/) | CrateKeySale | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x93c2ba...e04250`](./contracts/ethereum-1/0x93c2bad041fa79b4026654667dcb61e9fee04250/) | Crates2020Locksmith | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1d72d4...9cb0f0`](./contracts/ethereum-1/0x1d72d4746647b7fe84e2bcdefd96c119fb9cb0f0/) | DeltaTimeInventory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3c62e8...2a7e03`](./contracts/ethereum-1/0x3c62e8de798721963b439868d3ce22a5252a7e03/) | DeltaTimeNFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x410ef5...3caa71`](./contracts/ethereum-1/0x410ef532c1e4957806508d2b3928aad73f3caa71/) | DeltaTimeStaking2021 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x820489...fde63b`](./contracts/ethereum-1/0x8204894c8ab1b3a322f2dae576cf9cbb3efde63b/) | DeltaTimeStakingBeta | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x012408...52a0dc`](./contracts/ethereum-1/0x012408dd7d43a6b3949bdaa281c123b19652a0dc/) | F1DTCrateKey | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xec2142...540b3c`](./contracts/ethereum-1/0xec21427cc1deb6fd0727d7a777dda9a9f5540b3c/) | FixedOrderSandNftSale | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0eb72c...c57645`](./contracts/ethereum-1/0x0eb72c624ce15958b79a6f3b06f0877f4cc57645/) | FixedOrderTrackSale | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2e61c6...bc82cd`](./contracts/ethereum-1/0x2e61c63e045a978b51c6517c79c2592fcfbc82cd/) | FixedSupplyCratesSale | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7da2a5...9c1fe0`](./contracts/ethereum-1/0x7da2a5836f2f292fb65537a1c2610655089c1fe0/) | LP_REVV_SAND_Unipool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x681a42...a51824`](./contracts/ethereum-1/0x681a4241c73037928838efde2fb5af401aa51824/) | MintShop1155 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x590df9...c730b8`](./contracts/ethereum-1/0x590df9dc51ea5e1c7a93e61f1a973cea1fc730b8/) | PrePaid | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2840a0...c1e6d0`](./contracts/ethereum-1/0x2840a0844310fc22292fe336e96ab1884bc1e6d0/) | REDP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x557b93...51a8ca`](./contracts/ethereum-1/0x557b933a7c2c45672b610f8954a3deb39a51a8ca/) | REVV | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x69a324...bc92a1`](./contracts/ethereum-1/0x69a3244fd4d81c800021f80127add5a684bc92a1/) | REVVMotorsportShard | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfb9ffb...466e27`](./contracts/ethereum-1/0xfb9ffbb289f3f261c16ca24eafbad4e9fe466e27/) | REVVSale | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x83bbca...2f0f9b`](./contracts/ethereum-1/0x83bbca966537302f6c5cd903ed0f7e614b2f0f9b/) | SimpleSale | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6110dd...009af2`](./contracts/ethereum-1/0x6110dd87b7a6fbbebb0ea0f0dffb59ae59009af2/) | Super1155 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x530433...86d03b`](./contracts/ethereum-1/0x5304334ac100a6576ac3c15e8fca41e18386d03b/) | SuperStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x654291...b6cead`](./contracts/ethereum-1/0x654291175cdedc48679f290c318949d9b6b6cead/) | TimeTrialEliteLeague | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x58ce6c...54575b`](./contracts/ethereum-1/0x58ce6caa5b3c25804d9ebe59c1803f213a54575b/) | TokenLaunchpadVoucherPacksSale | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x87a374...a37c0d`](./contracts/ethereum-1/0x87a3747c9942d8351cc85aac2f94807b27a37c0d/) | TokenLaunchpadVouchers | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x70ff3c...f591ad`](./contracts/ethereum-1/0x70ff3c8a979b7f4e6b8100da78a1b2ea9af591ad/) | TokenLaunchpadVouchersSale | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4ef639...1575f0`](./contracts/ethereum-1/0x4ef6394d1a857a7825ab51d6c482f1a5471575f0/) | Unipool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 36 |
| upstream | 3 |
| standard_library | 0 |
| needs_review | 11 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
