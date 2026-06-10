# Agentic Audit Brief: NFTX

⚠️ Lifecycle status: DECLINING - TVL dropped 25.5% over 90 days

## Project Overview

- Project: NFTX (`nftx`)
- Website: [https://nftx.io](https://nftx.io)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-10T20:59:08.694Z
- Pipeline run: correction-skeletal-description-fix-all
- Chains: arbitrum, ethereum
- Contract surface: 184 unique implementations (431 raw deployments)
- DeFi Llama TVL: $1,577,327.18
- On-chain TVL (included contracts): $6,270,090.75
- TVL by chain: Ethereum $6,270,090.75

## Project Description

NFTX is a protocol that creates liquid ERC-20 tokens (vault tokens) backed by NFT collections, enabling users to fractionalize, trade, and provide liquidity for NFTs. It also offers staking mechanisms for these vault tokens to earn fees and rewards.

### Architecture

Vaults mint ERC-20 tokens that are used across staking and marketplace families; staking contracts distribute fees collected from vault and marketplace activity. Governance contracts control upgrades and parameters for vault factories, staking, and fee distributors, while marketplace zaps integrate with external DEX infrastructure (0x, Uniswap V3) to provide liquidity and swaps for vault tokens.

## Audit Coverage Summary

- Verified implementations audited: 15/135 (11.1%)
- Verified + Unaudited implementations: 120
- Verified by bytecode match: 0
- Unverified implementations: 49
- Unique implementations: 184
- Raw deployments: 431
- Audits discovered: 5
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): $6,270,090.75
- Latest audit: 2022-12 (stale)
- Staleness: 0 fresh, 0 aging, 4 stale, 1 unknown
- Tier 1 coverage: 9.6% (Code4rena)
- Note: This protocol is classified as [declining]. ASD of $6,270,090.75 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Code4rena | Tier 1 | 13 | 9.6% | 2022-12 |
| unknown | Tier 2 | 2 | 1.5% | 2020-11 |

## Contract Surface

### ✅ Verified + Audited (15)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| NFTXInventoryStaking | token | ethereum | 13 deployments: ethereum [`0x11e3f6...119f43`](./contracts/ethereum-1/0x11e3f6c1c5b751f2bf2cabc7d48e6a5af9119f43/); ethereum `0x3e135c...fab893`; ethereum `0x3e9f47...05bd74`; ethereum `0x608f0d...9d5798`; ethereum `0x72012a...ed6b66`; ethereum `0xccb1cf...485880`; ethereum `0xde74a8...961cb7`; arbitrum `0x1678c8...af4434`; arbitrum `0x1a2c03...8c4cc6`; arbitrum `0x3f8fdf...b8b742`; arbitrum `0x64029e...e5d557`; arbitrum `0x6fc85d...63c6a8`; arbitrum `0xd9a609...c5d857` | ✅ Audited |
| NFTXV1Buyout | token | ethereum | 2 deployments: ethereum [`0x28083d...8a6f1e`](./contracts/ethereum-1/0x28083d8bce883aa7b70130c915cd4308448a6f1e/); ethereum `0xba8880...f89075` | ✅ Audited |
| NFTX | token | ethereum | 2 deployments: ethereum [`0x3a2f04...afe868`](./contracts/ethereum-1/0x3a2f04faa1d39acb088bece5c2d6b00e81afe868/); ethereum `0x9f65a0...c1ba16` | ✅ Audited |
| NFTXFeeDistributor | operational_periphery | ethereum | 2 deployments: ethereum [`0x58efca...bb70b1`](./contracts/ethereum-1/0x58efca0e52f254b76aec95dbd8d8e687e1bb70b1/); ethereum `0x7ae9d7...4ae090` | ✅ Audited |
| NFTXLPStaking | token | ethereum | 19 deployments: ethereum [`0x0e3ab4...94ff3b`](./contracts/ethereum-1/0x0e3ab439db6504df11d19a2bc9107bdd6994ff3b/); ethereum `0x0e49a0...85029a`; ethereum `0x156911...dead37`; ethereum `0x4f566a...46188e`; ethereum `0x64651f...9cc86c`; ethereum `0x688c3e...538e37`; ethereum `0x703845...dd7649`; ethereum `0x8dceab...c3753b`; ethereum `0x95eadd...3df8be`; ethereum `0xa64c2f...04bf68`; ethereum `0xb9a6b3...7b22b7`; ethereum `0xbde654...f24da9`; ethereum `0xd9a609...c5d857`; ethereum `0xdde5a3...1976d6`; ethereum `0xf7a232...0b0687`; arbitrum `0x5326a7...df3934`; arbitrum `0x57c8aa...a59cd6`; arbitrum `0x5b3004...9fa41d`; arbitrum `0x7827bc...ecabd7` | ✅ Audited |
| NFTXMarketplaceZap | adapter | ethereum | 6 deployments: ethereum [`0x0fc584...c0c22d`](./contracts/ethereum-1/0x0fc584529a2aefa997697fafacba5831fac0c22d/); ethereum `0x3693ab...f67746`; ethereum `0x5542ab...dc98ad`; ethereum `0xceb0a5...d79ec8`; arbitrum `0x66f26e...8001b7`; arbitrum `0x95eadd...3df8be` | ✅ Audited |
| NFTXRangeEligibility | token | ethereum | 2 deployments: ethereum [`0x38141d...5db6d3`](./contracts/ethereum-1/0x38141d1fe316950b2dd5750c4fa8c1a1695db6d3/); arbitrum `0xafa950...f6c686` | ✅ Audited |
| NFTXSimpleFeeDistributor | operational_periphery | ethereum | 8 deployments: ethereum [`0x06c36f...79d8e1`](./contracts/ethereum-1/0x06c36fb81ee037139b1b44406ef70e565e79d8e1/); ethereum `0x0ef372...2d1680`; ethereum `0x309577...af562d`; ethereum `0xfd8a76...ae4a86`; arbitrum `0x0d74b7...4915c6`; arbitrum `0x4939f5...dd2765`; arbitrum `0x68a7f4...d3f78e`; arbitrum `0xc6d7e3...5d14ee` | ✅ Audited |
| NFTXStakingZap | adapter | ethereum | 10 deployments: ethereum [`0x0b8ee2...b65fb1`](./contracts/ethereum-1/0x0b8ee2ee7d6f3bfb73c9ae2127558d1172b65fb1/); ethereum `0x0d74b7...4915c6`; ethereum `0x26735b...b7a644`; ethereum `0x28e916...fce360`; ethereum `0x4939f5...dd2765`; ethereum `0x64029e...e5d557`; ethereum `0x7a5e0b...436791`; ethereum `0xdc774d...11345c`; arbitrum `0xa12d30...4c695e`; arbitrum `0xfb8664...c84959` | ✅ Audited |
| NFTXVaultFactoryUpgradeable | registry | ethereum | 15 deployments: ethereum [`0x367b2c...a46207`](./contracts/ethereum-1/0x367b2c045e15c3e653b55e08f18c1ee851a46207/); ethereum `0x612447...017812`; ethereum `0x668fa5...5a33c1`; ethereum `0x6a911d...cb0dab`; ethereum `0x7f899e...00f16d`; ethereum `0xb0652e...9705ba`; ethereum `0xbe86f6...558216`; ethereum `0xe2858f...e5b46a`; ethereum `0xfa7504...4b7062`; arbitrum `0x786bd8...e75a99`; arbitrum `0x86157f...e060e9`; arbitrum `0x91c0f0...e1f48c`; arbitrum `0xcb6230...2b4b08`; arbitrum `0xe01cf5...98afae`; arbitrum `0xe77b89...fbb33c` | ✅ Audited |
| NFTXVaultUpgradeable | core_logic | ethereum | 29 deployments: ethereum [`0x00c4a7...a64780`](./contracts/ethereum-1/0x00c4a73f10b05228c64e971cf81ae84426a64780/); ethereum `0x011671...6a307a`; ethereum `0x01b0b2...fd9d30`; ethereum `0x03f80e...f53c65`; ethereum `0x0fa0fd...d279ed`; ethereum `0x20ea6c...4db6a3`; ethereum `0x269616...11232a`; ethereum `0x2c556f...29d493`; ethereum `0x2d7db0...bb198e`; ethereum `0x36b799...7d321c`; ethereum `0x46c64e...463d12`; ethereum `0x4d6d11...8d3172`; ethereum `0x73d2ff...f6b52a`; ethereum `0x881ca9...0f6c14`; ethereum `0x8b0c35...30cd26`; ethereum `0xb13907...c31545`; ethereum `0xb14b8f...559d2e`; ethereum `0xcb6230...2b4b08`; ethereum `0xe0fbc3...3700b9`; ethereum `0xe8b682...d97bd1`; ethereum `0xf69d08...e8fa80`; ethereum `0xfd5fb4...646ee2`; ethereum `0xfe8e4f...0ace82`; arbitrum `0xb14b8f...559d2e`; arbitrum `0xca523f...a65baa`; arbitrum `0xd4031c...034338`; arbitrum `0xe7a3ee...a4f7ed`; arbitrum `0xf09bcf...6316b7`; arbitrum `0xfde612...b05342` | ✅ Audited |
| StakingTokenProvider | token | arbitrum | 10 deployments: ethereum `0x5fad0e...b1a5c7`; ethereum `0x930ebe...4c9041`; ethereum `0xacc36b...62f5a2`; ethereum `0xea478e...5ba71d`; arbitrum [`0x2d7775...05dd8e`](./contracts/arbitrum-42161/0x2d77756c139ed3c25472daf233f332e8f605dd8e/); arbitrum `0x31cb83...a02aed`; arbitrum `0x5ee78a...2a9543`; arbitrum `0x92b80f...5830d5`; arbitrum `0xe5ab39...4b0b7a`; arbitrum `0xfb3c37...3b842a` | ✅ Audited |
| TimelockRewardDistributionTokenImpl | governance | ethereum | 2 deployments: ethereum [`0xfb2f1c...1a280f`](./contracts/ethereum-1/0xfb2f1c0e0086bcef24757c3b9bfe91585b1a280f/); ethereum `0xfda2d4...a55ec0` | ✅ Audited |
| XStore | unknown | ethereum | 2 deployments: ethereum [`0x92abef...036198`](./contracts/ethereum-1/0x92abef50275abfb37bbf266c917b378d33036198/); ethereum `0xbe5473...92e7b7` | ✅ Audited |
| XTokenUpgradeable | token | ethereum | [`0x08765c...dd76fb`](./contracts/ethereum-1/0x08765c76c758da951dc73d3a8863b34752dd76fb/) | ✅ Audited |

### ⚠️ Verified + Unaudited (120)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| MiniMeToken | token | ethereum | [`0x87d73e...47f776`](./contracts/ethereum-1/0x87d73e916d7057945c9bcd8cdd94e42a6f47f776/) | ⚠️ Unaudited |
| XToken | token | ethereum | 25 deployments: ethereum [`0x04e6ba...0611f6`](./contracts/ethereum-1/0x04e6ba6b1e74f074df0a4d94395a8d05bd0611f6/); ethereum `0x0fe629...a48a3f`; ethereum `0x181380...3dd9b5`; ethereum `0x1aa177...1df428`; ethereum `0x1dc172...ad7347`; ethereum `0x27ffed...80a8a2`; ethereum `0x49706a...2ded4d`; ethereum `0x4acc9c...333f58`; ethereum `0x59a82f...fe1769`; ethereum `0x5b9f63...a49729`; ethereum `0x603002...061c21`; ethereum `0x69bbe2...786385`; ethereum `0x77ecd3...91e895`; ethereum `0x8712a5...cdf7b6`; ethereum `0x9cea2e...a61ea5`; ethereum `0xab9c92...4403c8`; ethereum `0xaba49d...70536e`; ethereum `0xb10d6a...b6244a`; ethereum `0xb547fa...40eb08`; ethereum `0xb5a093...1ae32d`; ethereum `0xb7acb1...dfcc3c`; ethereum `0xc4bf60...354849`; ethereum `0xc81203...20b505`; ethereum `0xc8aa43...2cb2b5`; ethereum `0xf18ade...4a3a74` | ⚠️ Unaudited |
| ERC721Sender | token | ethereum | [`0x006dd6...f3b218`](./contracts/ethereum-1/0x006dd6c488e90180d7346db5a026fd747af3b218/) | ⚠️ Unaudited |
| TransformERC20Feature | token | ethereum | [`0xdef1c0...b25eff`](./contracts/ethereum-1/0xdef1c0ded9bec7f1a1670819833240f027b25eff/) | ⚠️ Unaudited |
| CErc20Delegate | token | ethereum | 5 deployments: ethereum [`0x1ba12a...435357`](./contracts/ethereum-1/0x1ba12ae1fcfadd08fa37db849ef4b6e11e435357/); ethereum `0x4333b4...fc4671`; ethereum `0x59304d...e134ca`; ethereum `0xd55c20...024232`; ethereum `0xf13206...581c6a` | ⚠️ Unaudited |
| NFTStaker | core_logic | ethereum | [`0xc5802b...3339af`](./contracts/ethereum-1/0xc5802bcf619301bdc6b1b9eda4b6fd26e63339af/) | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | ethereum | [`0x4fffe9...a0c3d9`](./contracts/ethereum-1/0x4fffe97f444d97e9cfe63e89144c2667b8a0c3d9/) | ⚠️ Unaudited |
| aeWETH | token | arbitrum | [`0x82af49...3fbab1`](./contracts/arbitrum-42161/0x82af49447d8a07e3bd95bd0d56f35241523fbab1/) | ⚠️ Unaudited |
| Agent | unknown | ethereum | [`0x40d73d...16c7b2`](./contracts/ethereum-1/0x40d73df4f99bae688ce3c23a01022224fe16c7b2/) | ⚠️ Unaudited |
| Autoglyphs | unknown | ethereum | [`0xd4e407...197782`](./contracts/ethereum-1/0xd4e4078ca3495de5b1d4db434bebc5a986197782/) | ⚠️ Unaudited |
| BeaconProxy | registry | ethereum | 6 deployments: ethereum [`0x00d0a6...14f460`](./contracts/ethereum-1/0x00d0a61c5cb78f236a715fe08a6bb4a72514f460/); ethereum `0x0115bd...0dbc90`; ethereum `0x03b1a9...e0af59`; ethereum `0x04c5d2...178cd8`; ethereum `0x051218...231333`; ethereum `0x055c44...334712` | ⚠️ Unaudited |
| Blockmon | unknown | ethereum | [`0xaf4882...b33e15`](./contracts/ethereum-1/0xaf488234796ca27dba8ecf17f803ea1f4ab33e15/) | ⚠️ Unaudited |
| CErc20Delegator | token | ethereum | [`0x90a6e8...5ca98a`](./contracts/ethereum-1/0x90a6e8c436bd28fbd694cc4d31cad9d48e5ca98a/) | ⚠️ Unaudited |
| CEtherDelegate | unknown | ethereum | [`0x1e8bbd...f58e39`](./contracts/ethereum-1/0x1e8bbde11dfef31532c78260502ae0a629f58e39/) | ⚠️ Unaudited |
| Create2BeaconProxy | registry | ethereum | [`0x013cf7...7f9635`](./contracts/ethereum-1/0x013cf78239144abcf06bbd56d3d190c65d7f9635/) | ⚠️ Unaudited |
| CreateVaultZap | adapter | ethereum | 3 deployments: ethereum [`0x510c9f...587a0d`](./contracts/ethereum-1/0x510c9fb7d1ab8b0338b7434872f0d22633587a0d/); ethereum `0x56dab3...8e6f74`; arbitrum `0xf9e891...38946f` | ⚠️ Unaudited |
| CryptoPunks | unknown | ethereum | [`0x6ba6f2...66db8d`](./contracts/ethereum-1/0x6ba6f2207e343923ba692e5cae646fb0f566db8d/) | ⚠️ Unaudited |
| CryptopunksData | unknown | ethereum | [`0x16f5a3...3af3b2`](./contracts/ethereum-1/0x16f5a35647d6f03d5d3da7b35409d65ba03af3b2/) | ⚠️ Unaudited |
| CryptoPunksMarket | unknown | ethereum | [`0xb47e3c...193bbb`](./contracts/ethereum-1/0xb47e3cd837ddf8e4c57f05d70ab865de6e193bbb/) | ⚠️ Unaudited |
| DoomRewarder | unknown | ethereum | [`0x7166e7...ff84e5`](./contracts/ethereum-1/0x7166e7db426228ba180694e0621613fc84ff84e5/) | ⚠️ Unaudited |
| ERC721Batcher | token | ethereum | [`0xf83eee...0f0207`](./contracts/ethereum-1/0xf83eee39e723526605d784917b6e38ebcf0f0207/) | ⚠️ Unaudited |
| ERC721CreatorImplementation | token | ethereum | [`0x7fff03...cb1d96`](./contracts/ethereum-1/0x7fff0326e0de62676f1bf60af435cbe1c7cb1d96/) | ⚠️ Unaudited |
| FailSafe | unknown | ethereum | 3 deployments: ethereum [`0x6bb724...b0e698`](./contracts/ethereum-1/0x6bb724f11a8d7254800cf34922e0d54407b0e698/); ethereum `0x866566...fb8f2b`; arbitrum `0xbda73b...a06fb7` | ⚠️ Unaudited |
| GeneScience | unknown | ethereum | [`0xf97e0a...946a2b`](./contracts/ethereum-1/0xf97e0a5b616dffc913e72455fde9ea8bbe946a2b/) | ⚠️ Unaudited |
| HashmaskSwapper | adapter | ethereum | 2 deployments: ethereum [`0x078d3b...517452`](./contracts/ethereum-1/0x078d3b62e82b5cee3ebdc0754cda976230517452/); ethereum `0x9c41fa...ba7ae1` | ⚠️ Unaudited |
| InventoryStakingDescriptor | periphery | ethereum | 2 deployments: ethereum [`0x39d9a9...e9f8bb`](./contracts/ethereum-1/0x39d9a925d7fca17e430b731882b97e2d10e9f8bb/); arbitrum `0x7bd0ff...2bd732` | ⚠️ Unaudited |
| KittyCore | unknown | ethereum | [`0x06012c...7a266d`](./contracts/ethereum-1/0x06012c8cf97bead5deae237070f9587f8e7a266d/) | ⚠️ Unaudited |
| LSSVMPairEnumerableERC20 | token | ethereum | [`0xd42638...5541eb`](./contracts/ethereum-1/0xd42638863462d2f21bb7d4275d7637ee5d5541eb/) | ⚠️ Unaudited |
| LSSVMPairEnumerableETH | unknown | ethereum | [`0x08ce97...b3ef05`](./contracts/ethereum-1/0x08ce97807a81896e85841d74fb7e7b065ab3ef05/) | ⚠️ Unaudited |
| LSSVMPairFactory | registry | ethereum | [`0xb16c13...89c0a4`](./contracts/ethereum-1/0xb16c1342e617a5b6e4b631eb114483fdb289c0a4/) | ⚠️ Unaudited |
| LSSVMPairMissingEnumerableERC20 | token | ethereum | [`0x92de3a...755b22`](./contracts/ethereum-1/0x92de3a1511ef22abcf3526c302159882a4755b22/) | ⚠️ Unaudited |
| LSSVMPairMissingEnumerableETH | unknown | ethereum | [`0xcd80c9...436d56`](./contracts/ethereum-1/0xcd80c916b1194beb48abf007d0b79a7238436d56/) | ⚠️ Unaudited |
| LSSVMRouter | adapter | ethereum | 2 deployments: ethereum [`0x2b2e8c...d68329`](./contracts/ethereum-1/0x2b2e8cda09bba9660dca5cb6233787738ad68329/); ethereum `0xe5763f...fb50a4` | ⚠️ Unaudited |
| MarketplaceUniversalRouterZap | adapter | ethereum | 2 deployments: ethereum [`0x293a0c...79be3d`](./contracts/ethereum-1/0x293a0c49c85f1d8851c665ac3ce1f1dc2a79be3d/); arbitrum `0xf56296...b9ca40` | ⚠️ Unaudited |
| Meebits | unknown | ethereum | [`0x7bd294...716bc7`](./contracts/ethereum-1/0x7bd29408f11d2bfc23c34f18275bbf23bb716bc7/) | ⚠️ Unaudited |
| MGear | unknown | ethereum | 3 deployments: ethereum [`0x5d070a...9b4821`](./contracts/ethereum-1/0x5d070a1c9acdc38d853d8501f2740fab9e9b4821/); ethereum `0x65b394...3950e2`; ethereum `0x85aea7...3ce4fc` | ⚠️ Unaudited |
| Migrations | operational_periphery | ethereum | 6 deployments: ethereum [`0x08ea78...141751`](./contracts/ethereum-1/0x08ea78fb540fe5361afd39a6b421a0662e141751/); ethereum `0x129e0f...464154`; ethereum `0x43354d...e0a26b`; ethereum `0x9e3acb...e5a1d8`; ethereum `0xb12c68...b605d7`; ethereum `0xcc147a...924319` | ⚠️ Unaudited |
| MigratorZap | adapter | ethereum | 4 deployments: ethereum [`0x089610...e98cec`](./contracts/ethereum-1/0x089610fb04c34c014b4b391f4ecefaef94e98cec/); ethereum `0x946eca...6b3f51`; ethereum `0xd0999d...9b9fe3`; arbitrum `0x6e1537...d2cabd` | ⚠️ Unaudited |
| MineablePunks | unknown | ethereum | 2 deployments: ethereum [`0x3b5a69...e22a06`](./contracts/ethereum-1/0x3b5a6917e1c9cf9aa12975de71a2136dade22a06/); ethereum `0x595a89...bda687` | ⚠️ Unaudited |
| MonImageRegistry | registry | ethereum | [`0x2d824d...a13e67`](./contracts/ethereum-1/0x2d824d66e1b7ba0f73b5caf75886abf812a13e67/) | ⚠️ Unaudited |
| MonMinter | unknown | ethereum | [`0x042774...e0f750`](./contracts/ethereum-1/0x0427743df720801825a5c82e0582b1e915e0f750/) | ⚠️ Unaudited |
| MonSpawner | unknown | ethereum | [`0x4fad5d...dfc868`](./contracts/ethereum-1/0x4fad5ddc4e0186b932e27baa7d37d97457dfc868/) | ⚠️ Unaudited |
| MonStaker2 | core_logic | ethereum | [`0xd06337...c3c1c0`](./contracts/ethereum-1/0xd06337a401b468657de2f9d3e390ce5b21c3c1c0/) | ⚠️ Unaudited |
| MonStaker3 | core_logic | ethereum | [`0xa3300b...1c3197`](./contracts/ethereum-1/0xa3300bfc13556fa5146ffde34e92a0230a1c3197/) | ⚠️ Unaudited |
| MultiProxyController | governance | ethereum | 3 deployments: ethereum [`0x35fb40...48750c`](./contracts/ethereum-1/0x35fb4026dcf19f8ca37dcca4d2d68a549548750c/); arbitrum `0x732e5f...e164c1`; arbitrum `0x871e3e...60c737` | ⚠️ Unaudited |
| MultiRouter | adapter | ethereum | [`0x306262...dfb6c8`](./contracts/ethereum-1/0x3062627136de797f807bcb63f0d5399a21dfb6c8/) | ⚠️ Unaudited |
| Multisender | unknown | ethereum | [`0xc653e1...f3ad1f`](./contracts/ethereum-1/0xc653e1b3a971078812a72d11c45ad71e00f3ad1f/) | ⚠️ Unaudited |
| NFGas | unknown | ethereum | [`0x5c7704...9b4077`](./contracts/ethereum-1/0x5c770425aeb064135b5e625d46b12619189b4077/) | ⚠️ Unaudited |
| NFGasNames | unknown | ethereum | [`0x0f2f1b...cfe031`](./contracts/ethereum-1/0x0f2f1b0959fcfa6556f8b9479b996ecbb3cfe031/) | ⚠️ Unaudited |
| NFTClaim | token | ethereum | [`0xe354ac...9f027c`](./contracts/ethereum-1/0xe354ac0bb78a8013617fe0efa6099769749f027c/) | ⚠️ Unaudited |
| NFTDescriptor | token | arbitrum | 2 deployments: ethereum `0x4dfd47...2860fc`; arbitrum [`0x1b180e...f7ab09`](./contracts/arbitrum-42161/0x1b180e12e8f675831006389f8c7a3eb10df7ab09/) | ⚠️ Unaudited |
| Nftdns | token | ethereum | 3 deployments: ethereum [`0xe37bb1...6218da`](./contracts/ethereum-1/0xe37bb18b86d228831a61872f5df3b5f24b6218da/); ethereum `0xee4c82...0fc149`; ethereum `0xfc5a18...d8360f` | ⚠️ Unaudited |
| NFTLottery | token | ethereum | 2 deployments: ethereum [`0x3baa5a...e344fb`](./contracts/ethereum-1/0x3baa5ab805c7888e7a92cf6d32c20938ede344fb/); ethereum `0x9fd1e5...065560` | ⚠️ Unaudited |
| NFTLotteryPool | core_logic | ethereum | [`0x19dd2b...f4cd87`](./contracts/ethereum-1/0x19dd2b11b886a88aecf30f1c804e86c4daf4cd87/) | ⚠️ Unaudited |
| NFTLotteryPoolFactory | registry | ethereum | [`0xabd9c0...105026`](./contracts/ethereum-1/0xabd9c0bd5628c90db7a8cf787c2580d1ef105026/) | ⚠️ Unaudited |
| NFTLotteryURI | token | ethereum | 3 deployments: ethereum [`0x2031bd...8f9251`](./contracts/ethereum-1/0x2031bd6c7861509ab48bf338e280a401ee8f9251/); ethereum `0x513ca6...594e50`; ethereum `0xce060b...dd5656` | ⚠️ Unaudited |
| Nftnft | token | ethereum | [`0x537edf...c7ba40`](./contracts/ethereum-1/0x537edfb50100974af813f263ca7714ecc4c7ba40/) | ⚠️ Unaudited |
| NFTXEligibilityManager | governance | arbitrum | 8 deployments: ethereum `0x4086e9...ed94d5`; ethereum `0x74520b...d96674`; arbitrum [`0x0b8ee2...b65fb1`](./contracts/arbitrum-42161/0x0b8ee2ee7d6f3bfb73c9ae2127558d1172b65fb1/); arbitrum `0x1a0f3d...7f35a2`; arbitrum `0x2c556f...29d493`; arbitrum `0x6dcdfd...c2ad16`; arbitrum `0x8d03b9...11f9b7`; arbitrum `0xc88f4c...3a211e` | ⚠️ Unaudited |
| NFTXENSMerkleEligibility | operational_periphery | arbitrum | [`0x82dbee...753ecd`](./contracts/arbitrum-42161/0x82dbeec079aeca972c75334c0f52597def753ecd/) | ⚠️ Unaudited |
| NFTXFeeDistributorV3 | operational_periphery | arbitrum | 3 deployments: ethereum `0x6845ff...7406e7`; ethereum `0xf4d96c...9e21fe`; arbitrum [`0x0d5097...7de886`](./contracts/arbitrum-42161/0x0d50970c7848ebbe52661e70057d7d063b7de886/) | ⚠️ Unaudited |
| NFTXGen0KittyEligibility | token | arbitrum | 2 deployments: ethereum `0xa267eb...dcbceb`; arbitrum [`0x1efd76...5bc6c9`](./contracts/arbitrum-42161/0x1efd767e7b2beba1df70c18e8b4225e7795bc6c9/) | ⚠️ Unaudited |
| NFTXInventoryStakingV3Upgradeable | token | ethereum | 6 deployments: ethereum [`0x0b3d8f...a28e8e`](./contracts/ethereum-1/0x0b3d8fd85f43e2963d39e927d4a9ec1406a28e8e/); ethereum `0x889f31...cd6152`; ethereum `0x8e912c...61de33`; ethereum `0xf76e6b...45081a`; arbitrum `0x2c76d2...0433de`; arbitrum `0xe39a7e...47d155` | ⚠️ Unaudited |
| NFTXListEligibility | token | ethereum | 2 deployments: ethereum [`0x162d7a...821044`](./contracts/ethereum-1/0x162d7a0fb6104942df3615afc8861b2fbe821044/); arbitrum `0x81f56d...455ab1` | ⚠️ Unaudited |
| NFTXMarketplace0xZap | adapter | ethereum | 4 deployments: ethereum [`0x27eb56...ec3c22`](./contracts/ethereum-1/0x27eb56bce836f1068e12157d57c5083781ec3c22/); ethereum `0x941a6d...cd481c`; ethereum `0xbbc530...c14371`; arbitrum `0x3bd751...8a2904` | ⚠️ Unaudited |
| NFTXRouter | adapter | ethereum | 4 deployments: ethereum [`0x3b3e4e...254f5f`](./contracts/ethereum-1/0x3b3e4e76cac64eb29c399dcad1f3c401d2254f5f/); ethereum `0x70a741...ebe42a`; ethereum `0x833657...e13a94`; arbitrum `0x527317...a3ef4d` | ⚠️ Unaudited |
| NFTXUnstakingInventoryZap | adapter | arbitrum | 6 deployments: ethereum `0x2374a3...4868d3`; ethereum `0x51d660...f3543b`; ethereum `0xa8f152...6e8eef`; arbitrum [`0x009e41...de8c70`](./contracts/arbitrum-42161/0x009e4110fd68c603dd1f9189c4bac3d12cde8c70/); arbitrum `0xb25ea8...67bc07`; arbitrum `0xe8c93d...60dd28` | ⚠️ Unaudited |
| NFTXv12Migration | operational_periphery | ethereum | 3 deployments: ethereum [`0x47d9ac...876c72`](./contracts/ethereum-1/0x47d9acee6aa260c36f4368091be92f0824876c72/); ethereum `0xaf93fc...e8bf7e`; ethereum `0xed2431...8dab98` | ⚠️ Unaudited |
| NFTXv2 | token | ethereum | [`0xeaf638...59ec9f`](./contracts/ethereum-1/0xeaf638b2ec38724b95b384127893dc938a59ec9f/) | ⚠️ Unaudited |
| NFTXv3 | token | ethereum | [`0xcf912d...1dc04d`](./contracts/ethereum-1/0xcf912dafa570d6a97bd177b7b28e08097b1dc04d/) | ⚠️ Unaudited |
| NFTXv4 | token | ethereum | [`0x4d52e6...2e7f4f`](./contracts/ethereum-1/0x4d52e6451aaf7acd10a8c6102e354bdb482e7f4f/) | ⚠️ Unaudited |
| NFTXv5 | token | ethereum | [`0xb67f19...d58ac4`](./contracts/ethereum-1/0xb67f19b92210ca64c32defad5bed2898cdd58ac4/) | ⚠️ Unaudited |
| NFTXv6 | token | ethereum | [`0xb4114f...12137a`](./contracts/ethereum-1/0xb4114fccf310786d65cd43fb330aaf25bf12137a/) | ⚠️ Unaudited |
| NFTXv7 | token | ethereum | [`0x87665c...0305b8`](./contracts/ethereum-1/0x87665c29ea77c4285ea7443f5f71c54ea90305b8/) | ⚠️ Unaudited |
| NFTXVaultCreationZap | adapter | arbitrum | 2 deployments: ethereum `0xa42eca...506d37`; arbitrum [`0x4164c9...446103`](./contracts/arbitrum-42161/0x4164c90589e596239a31579417775c980f446103/) | ⚠️ Unaudited |
| NFTXVaultFactoryUpgradeableV3 | registry | arbitrum | 5 deployments: ethereum `0x9b85d7...441480`; ethereum `0xaba2eb...47b4db`; ethereum `0xc25533...858f01`; arbitrum [`0x4deeb9...1cb711`](./contracts/arbitrum-42161/0x4deeb9d2bff2e9c35ce1f013dcc4582f891cb711/); arbitrum `0xa96b03...f9ced2` | ⚠️ Unaudited |
| NFTXVaultUpgradeableV3 | core_logic | ethereum | 5 deployments: ethereum [`0x173233...6768af`](./contracts/ethereum-1/0x1732336586a5c27eb07eff5a4abed0400c6768af/); ethereum `0x1f8698...c7fdc0`; ethereum `0x4bdd44...e4066e`; ethereum `0x711b85...b79f16`; arbitrum `0xe263cf...527dda` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | ethereum | 3 deployments: ethereum [`0x26387f...4b71bf`](./contracts/ethereum-1/0x26387fca3692fcac1c1e8e4e2b22a6cf0d4b71bf/); ethereum `0xb38b19...072fda`; arbitrum `0x8ad238...5466ea` | ⚠️ Unaudited |
| OtherPunks | unknown | ethereum | [`0x1a9b1b...06389f`](./contracts/ethereum-1/0x1a9b1bb73ed02db2dc3cd0d25adb42ad4d06389f/) | ⚠️ Unaudited |
| OtherPunksConfiguration | governance | ethereum | [`0xf53ef0...face19`](./contracts/ethereum-1/0xf53ef091e6370f0d6dab82eb83dd632141face19/) | ⚠️ Unaudited |
| PenguSVG | unknown | ethereum | [`0x25b505...e05afb`](./contracts/ethereum-1/0x25b5058670211a6c39f821d01aa51f4671e05afb/) | ⚠️ Unaudited |
| Permit2 | unknown | ethereum | 2 deployments: ethereum [`0x000000...c78ba3`](./contracts/ethereum-1/0x000000000022d473030f116ddee9f6b43ac78ba3/); arbitrum [`0x000000...c78ba3`](./contracts/arbitrum-42161/0x000000000022d473030f116ddee9f6b43ac78ba3/) | ⚠️ Unaudited |
| ProtoCards0 | unknown | ethereum | [`0xa1c07d...9348a3`](./contracts/ethereum-1/0xa1c07dc4086af57db39821fd50417fda449348a3/) | ⚠️ Unaudited |
| ProxyAdmin | governance | arbitrum | 13 deployments: ethereum `0x1abdcb...a2ca5e`; ethereum `0x51a0df...fed976`; ethereum `0x57e266...108533`; ethereum `0x6ce71b...c52fab`; ethereum `0x7be610...b4a9db`; ethereum `0x99751a...535a62`; ethereum `0xbb270b...3c579c`; ethereum `0xdbaad4...687f91`; ethereum `0xf8cab5...325e58`; arbitrum [`0x19f319...229ba8`](./contracts/arbitrum-42161/0x19f3194e98f87367dcaa2ce502d8706a73229ba8/); arbitrum `0x2be289...5c7b77`; arbitrum `0xbab852...1b8be8`; arbitrum `0xda7c2f...468a54` | ⚠️ Unaudited |
| ProxyController | governance | ethereum | 4 deployments: ethereum [`0x4333d6...0437df`](./contracts/ethereum-1/0x4333d66ec59762d1626ec102d7700e64610437df/); ethereum `0x947c0b...8741c2`; ethereum `0xae9f6b...ffde7d`; ethereum `0xb359ee...fd98cc` | ⚠️ Unaudited |
| ProxyControllerSimple | governance | ethereum | 2 deployments: ethereum [`0x8e7488...e2ff30`](./contracts/ethereum-1/0x8e7488e4cec0381e7ac758234e1a8a793be2ff30/); ethereum `0xf5f191...5144df` | ⚠️ Unaudited |
| PublicCryptopunksData | unknown | ethereum | [`0x0f15e1...6cd1cc`](./contracts/ethereum-1/0x0f15e15b4b2b7e3c25afde61c424c82e186cd1cc/) | ⚠️ Unaudited |
| PunkToken | token | ethereum | [`0x92cca1...418539`](./contracts/ethereum-1/0x92cca15553f244196970eefcd45e13d459418539/) | ⚠️ Unaudited |
| PunkVault | core_logic | ethereum | [`0x5a99fa...79e491`](./contracts/ethereum-1/0x5a99fa495c894441180113515aab3b80ce79e491/) | ⚠️ Unaudited |
| QuoterV2 | periphery | ethereum | 2 deployments: ethereum [`0x5493df...c5294a`](./contracts/ethereum-1/0x5493df723c17b6a768aa61f79405ba56ffc5294a/); arbitrum `0xff3957...9e7d6d` | ⚠️ Unaudited |
| Renderer | unknown | ethereum | [`0x5d8a3a...ccb51a`](./contracts/ethereum-1/0x5d8a3ab1096297b99ec4feea43ebc2ef44ccb51a/) | ⚠️ Unaudited |
| RNGDistributor | operational_periphery | ethereum | [`0x8d514c...2fa546`](./contracts/ethereum-1/0x8d514cf4912c7ed280afe4cdf2738ef9282fa546/) | ⚠️ Unaudited |
| S3KS | unknown | ethereum | [`0xaed0c0...01801d`](./contracts/ethereum-1/0xaed0c09de6f851c1ff7540ecdc239c0e4b01801d/) | ⚠️ Unaudited |
| SaleClockAuction | unknown | ethereum | 3 deployments: ethereum [`0x7163cd...89a9e5`](./contracts/ethereum-1/0x7163cd869f445a0fe0c5049a979c9e27b589a9e5/); ethereum `0x98a46c...7183cf`; ethereum `0xb1690c...b57d8c` | ⚠️ Unaudited |
| Salt | unknown | ethereum | [`0xc17030...342d93`](./contracts/ethereum-1/0xc17030798a6d6e1a76382cf8f439182eb0342d93/) | ⚠️ Unaudited |
| SaltTokenURI | token | ethereum | [`0x4e4c16...ea4747`](./contracts/ethereum-1/0x4e4c16079d67c8058c89f1f8ce711c8b00ea4747/) | ⚠️ Unaudited |
| ShutdownRedeemerUpgradeable | unknown | ethereum | 4 deployments: ethereum [`0x1eabb6...ea6b45`](./contracts/ethereum-1/0x1eabb6eaa1854cd082fe293191b23ff868ea6b45/); ethereum `0x31333d...172d5a`; ethereum `0x96cf14...aa7f30`; ethereum `0xe27250...70337e` | ⚠️ Unaudited |
| ShutdownRedeemerV3Upgradeable | unknown | ethereum | 2 deployments: ethereum [`0x3b4e64...e4ae7e`](./contracts/ethereum-1/0x3b4e64beaa22c88844c53c122e9a290497e4ae7e/); ethereum `0xa9abbf...87cbe3` | ⚠️ Unaudited |
| SiringClockAuction | unknown | ethereum | 3 deployments: ethereum [`0x6b5a1e...2c4aac`](./contracts/ethereum-1/0x6b5a1ed9e51448c1c76dc4ddf24e243d402c4aac/); ethereum `0x795275...a36a86`; ethereum `0xc7af99...f27f26` | ⚠️ Unaudited |
| SVGGenerator2 | unknown | ethereum | 3 deployments: ethereum [`0x1036f5...87776a`](./contracts/ethereum-1/0x1036f5c5278358ea004e6530a86e4b968687776a/); ethereum `0x6c9f3e...b97464`; ethereum `0xdcec4a...1ef89e` | ⚠️ Unaudited |
| SwapRouter | adapter | ethereum | 2 deployments: ethereum [`0x1703f8...4277a3`](./contracts/ethereum-1/0x1703f8111b0e7a10e1d14f9073f53680d64277a3/); arbitrum `0xea6024...eef502` | ⚠️ Unaudited |
| TickLens | periphery | ethereum | 2 deployments: ethereum [`0x165011...a42c40`](./contracts/ethereum-1/0x1650115ddd287be6f4972180d290d0ff89a42c40/); arbitrum `0x3f2797...a7b081` | ⚠️ Unaudited |
| TimelockExcludeList | governance | arbitrum | 4 deployments: ethereum `0xd44198...c0d6b9`; ethereum `0xe614ae...76b49e`; arbitrum [`0x1c57d0...d152a3`](./contracts/arbitrum-42161/0x1c57d081ca022c6d707afb241e13690bf3d152a3/); arbitrum `0x96c394...4e1df9` | ⚠️ Unaudited |
| TokenAppController | governance | ethereum | [`0x13f89a...b8f4e2`](./contracts/ethereum-1/0x13f89adb711c18f8bc218f5e0ad508784eb8f4e2/) | ⚠️ Unaudited |
| TokenManager | governance | ethereum | [`0x5566b3...00eb33`](./contracts/ethereum-1/0x5566b3e5fc300a1b28c214b49a5950c34d00eb33/) | ⚠️ Unaudited |
| TokenMultiCall | token | ethereum | [`0xd62b2d...1b8df3`](./contracts/ethereum-1/0xd62b2dd08fca73b82f014107bf1cc888c61b8df3/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | arbitrum | [`0x33b381...5b6702`](./contracts/arbitrum-42161/0x33b381e2e0c4adc1dbd388888e9a29079e5b6702/) | ⚠️ Unaudited |
| Unexpected | unknown | ethereum | [`0xa3a835...462d22`](./contracts/ethereum-1/0xa3a83528d0aa752f3bbe2b6877e222ed02462d22/) | ⚠️ Unaudited |
| UniswapV2Pair | unknown | ethereum | 2 deployments: ethereum [`0x0463a0...99d332`](./contracts/ethereum-1/0x0463a06fbc8bf28b3f120cd1bfc59483f099d332/); ethereum `0xe7d5d6...2c4789` | ⚠️ Unaudited |
| UniswapV3FactoryUpgradeable | registry | ethereum | 2 deployments: ethereum [`0xa70e10...3db101`](./contracts/ethereum-1/0xa70e10beb02ff9a44007d9d3695d4b96003db101/); arbitrum `0xf4d051...1cabf8` | ⚠️ Unaudited |
| UniswapV3Staker | core_logic | arbitrum | [`0xd4e155...5fe31f`](./contracts/arbitrum-42161/0xd4e155135b7dff66c9c3b34eca4ae7d9555fe31f/) | ⚠️ Unaudited |
| UniversalRouter | adapter | arbitrum | 3 deployments: ethereum `0x250d62...0cc90f`; arbitrum [`0x0da692...32e5ad`](./contracts/arbitrum-42161/0x0da69287b4c1b28181e5d155dddda7fa5c32e5ad/); arbitrum `0x4529ad...c4b628` | ⚠️ Unaudited |
| WETH9 | token | ethereum | [`0xc02aaa...756cc2`](./contracts/ethereum-1/0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2/) | ⚠️ Unaudited |
| XBounties | unknown | ethereum | [`0x9c5a36...83e1dc`](./contracts/ethereum-1/0x9c5a36aef5a7b04b0123b2064bd20bc47183e1dc/) | ⚠️ Unaudited |
| XMON | unknown | ethereum | [`0x3aada3...70bf74`](./contracts/ethereum-1/0x3aada3e213abf8529606924d8d1c55cbdc70bf74/) | ⚠️ Unaudited |
| XStoreMultiCall | periphery | ethereum | [`0x0cca02...3aed62`](./contracts/ethereum-1/0x0cca025c7b8c264f7a569aff1a74907cd43aed62/) | ⚠️ Unaudited |
| XTokenClonable | token | ethereum | 2 deployments: ethereum [`0x925297...b864b0`](./contracts/ethereum-1/0x925297edcb4893d0d914e6d28f49381d47b864b0/); ethereum `0xb5f3c3...17fd3d` | ⚠️ Unaudited |
| XTokenFactory | registry | ethereum | 2 deployments: ethereum [`0xa76cee...929881`](./contracts/ethereum-1/0xa76cee17463bd34df43418e9b1acdf508e929881/); ethereum `0xe7ac17...3cefea` | ⚠️ Unaudited |
| XXMON | unknown | ethereum | [`0x0b5c90...6ab2f3`](./contracts/ethereum-1/0x0b5c9081e818e3b2cf677e7f42391de34d6ab2f3/) | ⚠️ Unaudited |
| ZeroExRouter | adapter | ethereum | [`0xb7a994...c10cd3`](./contracts/ethereum-1/0xb7a9942ecd1349793b72c246c3be7d6210c10cd3/) | ⚠️ Unaudited |
| ZeroExRouter2 | adapter | ethereum | [`0x608276...cd4664`](./contracts/ethereum-1/0x608276a7becb0f26a9a986b339033a3b74cd4664/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (49)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x02363a...c4f760` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x08cc6d...26cb56` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x091c7d...a1b9a2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x12680c...cbf349` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x143ba2...2f0cbc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1b2ab8...ad795e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2428f4...bc8e01` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x309558...d82314` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x39d327...4816c2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3a8881...d75cab` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x516431...85d764` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5296e8...f4290d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x58517b...f4eafa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5ba23b...fde32e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6731f4...c07455` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6a56a8...053485` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6bde06...f95ce7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x77f4df...a416c2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7a3ee7...f0fec5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7af7b1...5044db` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7c7336...8de419` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x82744d...91c821` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x83b28b...f71a05` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x84c902...576cf8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x86f6e5...52409d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8e2c1e...8f428e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8f2631...a9b277` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9683d9...19cc8d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x984976...aea346` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xac6dcf...869438` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xae9574...da67a7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xbd6bf3...37fd20` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc61735...f08839` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc8c0a6...cb5303` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc9a6e8...f6010b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd9377b...47d4bf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xed16db...3eb43b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf0202e...28f6dc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf81d6e...c0ead8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xfc5af9...e6bc46` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xfe56c3...e1d883` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x26735b...b7a644` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x3cd6fc...3f30ef` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x47d9ac...876c72` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x4d67ba...4175a1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x57ebf3...1065b1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x86e6ed...fd0bd7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xd8b9e6...95dd12` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xe9b081...b4c7a9` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [NFTX-final.pdf](https://github.com/NFTX-project/audit-level-k/blob/master/NFTX-final.pdf) | unknown | Audit | 2020-11 | stale | Direct | contract_name | 4 | high |
| [Code Arena competition 1](https://code4rena.com/reports/2021-05-nftx) | Code4rena | Contest | 2021-05 | stale | Direct | contract_name | 77 | high |
| [Code Arena competition 2](https://code4rena.com/reports/2021-12-nftx) | Code4rena | Contest | 2021-12 | stale | Direct | contract_name | 105 | high |
| [spaces/-MObsGdLeFkbdDe8_KiT-2910905616/uploads/xxMQXacJ9gspSb09eUCz/ToB_Audit.pdf](https://268710349-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-MObsGdLeFkbdDe8_KiT-2910905616%2Fuploads%2FxxMQXacJ9gspSb09eUCz%2FToB_Audit.pdf) | Trail of Bits | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [spaces/-MObsGdLeFkbdDe8_KiT-2910905616/uploads/f5r6lXZIs4rTMBTrt0eH/NFTX_V2_Periphery_Report_v1.1_2022_12_23.pdf](https://268710349-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-MObsGdLeFkbdDe8_KiT-2910905616%2Fuploads%2Ff5r6lXZIs4rTMBTrt0eH%2FNFTX_V2_Periphery_Report_v1.1_2022_12_23.pdf) | Code4rena | Contest | 2022-12 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x04e6ba...0611f6`](./contracts/ethereum-1/0x04e6ba6b1e74f074df0a4d94395a8d05bd0611f6/) | XToken | token | $510,681.78 | Verified native implementation with $510,681.78 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x006dd6...f3b218`](./contracts/ethereum-1/0x006dd6c488e90180d7346db5a026fd747af3b218/) | ERC721Sender | token | $8.86 | Verified native implementation with $8.86 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc5802b...3339af`](./contracts/ethereum-1/0xc5802bcf619301bdc6b1b9eda4b6fd26e63339af/) | NFTStaker | core_logic | $0.00 | Verified native implementation with $0.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xaf4882...b33e15`](./contracts/ethereum-1/0xaf488234796ca27dba8ecf17f803ea1f4ab33e15/) | Blockmon | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x510c9f...587a0d`](./contracts/ethereum-1/0x510c9fb7d1ab8b0338b7434872f0d22633587a0d/) | CreateVaultZap | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x16f5a3...3af3b2`](./contracts/ethereum-1/0x16f5a35647d6f03d5d3da7b35409d65ba03af3b2/) | CryptopunksData | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7166e7...ff84e5`](./contracts/ethereum-1/0x7166e7db426228ba180694e0621613fc84ff84e5/) | DoomRewarder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf83eee...0f0207`](./contracts/ethereum-1/0xf83eee39e723526605d784917b6e38ebcf0f0207/) | ERC721Batcher | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7fff03...cb1d96`](./contracts/ethereum-1/0x7fff0326e0de62676f1bf60af435cbe1c7cb1d96/) | ERC721CreatorImplementation | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6bb724...b0e698`](./contracts/ethereum-1/0x6bb724f11a8d7254800cf34922e0d54407b0e698/) | FailSafe | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x078d3b...517452`](./contracts/ethereum-1/0x078d3b62e82b5cee3ebdc0754cda976230517452/) | HashmaskSwapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x39d9a9...e9f8bb`](./contracts/ethereum-1/0x39d9a925d7fca17e430b731882b97e2d10e9f8bb/) | InventoryStakingDescriptor | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x293a0c...79be3d`](./contracts/ethereum-1/0x293a0c49c85f1d8851c665ac3ce1f1dc2a79be3d/) | MarketplaceUniversalRouterZap | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5d070a...9b4821`](./contracts/ethereum-1/0x5d070a1c9acdc38d853d8501f2740fab9e9b4821/) | MGear | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x089610...e98cec`](./contracts/ethereum-1/0x089610fb04c34c014b4b391f4ecefaef94e98cec/) | MigratorZap | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3b5a69...e22a06`](./contracts/ethereum-1/0x3b5a6917e1c9cf9aa12975de71a2136dade22a06/) | MineablePunks | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2d824d...a13e67`](./contracts/ethereum-1/0x2d824d66e1b7ba0f73b5caf75886abf812a13e67/) | MonImageRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x042774...e0f750`](./contracts/ethereum-1/0x0427743df720801825a5c82e0582b1e915e0f750/) | MonMinter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4fad5d...dfc868`](./contracts/ethereum-1/0x4fad5ddc4e0186b932e27baa7d37d97457dfc868/) | MonSpawner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd06337...c3c1c0`](./contracts/ethereum-1/0xd06337a401b468657de2f9d3e390ce5b21c3c1c0/) | MonStaker2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa3300b...1c3197`](./contracts/ethereum-1/0xa3300bfc13556fa5146ffde34e92a0230a1c3197/) | MonStaker3 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x35fb40...48750c`](./contracts/ethereum-1/0x35fb4026dcf19f8ca37dcca4d2d68a549548750c/) | MultiProxyController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc653e1...f3ad1f`](./contracts/ethereum-1/0xc653e1b3a971078812a72d11c45ad71e00f3ad1f/) | Multisender | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5c7704...9b4077`](./contracts/ethereum-1/0x5c770425aeb064135b5e625d46b12619189b4077/) | NFGas | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0f2f1b...cfe031`](./contracts/ethereum-1/0x0f2f1b0959fcfa6556f8b9479b996ecbb3cfe031/) | NFGasNames | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe354ac...9f027c`](./contracts/ethereum-1/0xe354ac0bb78a8013617fe0efa6099769749f027c/) | NFTClaim | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1b180e...f7ab09`](./contracts/arbitrum-42161/0x1b180e12e8f675831006389f8c7a3eb10df7ab09/) | NFTDescriptor | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe37bb1...6218da`](./contracts/ethereum-1/0xe37bb18b86d228831a61872f5df3b5f24b6218da/) | Nftdns | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3baa5a...e344fb`](./contracts/ethereum-1/0x3baa5ab805c7888e7a92cf6d32c20938ede344fb/) | NFTLottery | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x19dd2b...f4cd87`](./contracts/ethereum-1/0x19dd2b11b886a88aecf30f1c804e86c4daf4cd87/) | NFTLotteryPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xabd9c0...105026`](./contracts/ethereum-1/0xabd9c0bd5628c90db7a8cf787c2580d1ef105026/) | NFTLotteryPoolFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2031bd...8f9251`](./contracts/ethereum-1/0x2031bd6c7861509ab48bf338e280a401ee8f9251/) | NFTLotteryURI | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x537edf...c7ba40`](./contracts/ethereum-1/0x537edfb50100974af813f263ca7714ecc4c7ba40/) | Nftnft | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x82dbee...753ecd`](./contracts/arbitrum-42161/0x82dbeec079aeca972c75334c0f52597def753ecd/) | NFTXENSMerkleEligibility | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0d5097...7de886`](./contracts/arbitrum-42161/0x0d50970c7848ebbe52661e70057d7d063b7de886/) | NFTXFeeDistributorV3 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1efd76...5bc6c9`](./contracts/arbitrum-42161/0x1efd767e7b2beba1df70c18e8b4225e7795bc6c9/) | NFTXGen0KittyEligibility | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0b3d8f...a28e8e`](./contracts/ethereum-1/0x0b3d8fd85f43e2963d39e927d4a9ec1406a28e8e/) | NFTXInventoryStakingV3Upgradeable | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x162d7a...821044`](./contracts/ethereum-1/0x162d7a0fb6104942df3615afc8861b2fbe821044/) | NFTXListEligibility | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x27eb56...ec3c22`](./contracts/ethereum-1/0x27eb56bce836f1068e12157d57c5083781ec3c22/) | NFTXMarketplace0xZap | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3b3e4e...254f5f`](./contracts/ethereum-1/0x3b3e4e76cac64eb29c399dcad1f3c401d2254f5f/) | NFTXRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x009e41...de8c70`](./contracts/arbitrum-42161/0x009e4110fd68c603dd1f9189c4bac3d12cde8c70/) | NFTXUnstakingInventoryZap | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x47d9ac...876c72`](./contracts/ethereum-1/0x47d9acee6aa260c36f4368091be92f0824876c72/) | NFTXv12Migration | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xeaf638...59ec9f`](./contracts/ethereum-1/0xeaf638b2ec38724b95b384127893dc938a59ec9f/) | NFTXv2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcf912d...1dc04d`](./contracts/ethereum-1/0xcf912dafa570d6a97bd177b7b28e08097b1dc04d/) | NFTXv3 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4d52e6...2e7f4f`](./contracts/ethereum-1/0x4d52e6451aaf7acd10a8c6102e354bdb482e7f4f/) | NFTXv4 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb67f19...d58ac4`](./contracts/ethereum-1/0xb67f19b92210ca64c32defad5bed2898cdd58ac4/) | NFTXv5 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb4114f...12137a`](./contracts/ethereum-1/0xb4114fccf310786d65cd43fb330aaf25bf12137a/) | NFTXv6 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x87665c...0305b8`](./contracts/ethereum-1/0x87665c29ea77c4285ea7443f5f71c54ea90305b8/) | NFTXv7 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x4164c9...446103`](./contracts/arbitrum-42161/0x4164c90589e596239a31579417775c980f446103/) | NFTXVaultCreationZap | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x173233...6768af`](./contracts/ethereum-1/0x1732336586a5c27eb07eff5a4abed0400c6768af/) | NFTXVaultUpgradeableV3 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x26387f...4b71bf`](./contracts/ethereum-1/0x26387fca3692fcac1c1e8e4e2b22a6cf0d4b71bf/) | NonfungiblePositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1a9b1b...06389f`](./contracts/ethereum-1/0x1a9b1bb73ed02db2dc3cd0d25adb42ad4d06389f/) | OtherPunks | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf53ef0...face19`](./contracts/ethereum-1/0xf53ef091e6370f0d6dab82eb83dd632141face19/) | OtherPunksConfiguration | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x25b505...e05afb`](./contracts/ethereum-1/0x25b5058670211a6c39f821d01aa51f4671e05afb/) | PenguSVG | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa1c07d...9348a3`](./contracts/ethereum-1/0xa1c07dc4086af57db39821fd50417fda449348a3/) | ProtoCards0 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4333d6...0437df`](./contracts/ethereum-1/0x4333d66ec59762d1626ec102d7700e64610437df/) | ProxyController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8e7488...e2ff30`](./contracts/ethereum-1/0x8e7488e4cec0381e7ac758234e1a8a793be2ff30/) | ProxyControllerSimple | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0f15e1...6cd1cc`](./contracts/ethereum-1/0x0f15e15b4b2b7e3c25afde61c424c82e186cd1cc/) | PublicCryptopunksData | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x92cca1...418539`](./contracts/ethereum-1/0x92cca15553f244196970eefcd45e13d459418539/) | PunkToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5a99fa...79e491`](./contracts/ethereum-1/0x5a99fa495c894441180113515aab3b80ce79e491/) | PunkVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5d8a3a...ccb51a`](./contracts/ethereum-1/0x5d8a3ab1096297b99ec4feea43ebc2ef44ccb51a/) | Renderer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8d514c...2fa546`](./contracts/ethereum-1/0x8d514cf4912c7ed280afe4cdf2738ef9282fa546/) | RNGDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xaed0c0...01801d`](./contracts/ethereum-1/0xaed0c09de6f851c1ff7540ecdc239c0e4b01801d/) | S3KS | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc17030...342d93`](./contracts/ethereum-1/0xc17030798a6d6e1a76382cf8f439182eb0342d93/) | Salt | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4e4c16...ea4747`](./contracts/ethereum-1/0x4e4c16079d67c8058c89f1f8ce711c8b00ea4747/) | SaltTokenURI | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1eabb6...ea6b45`](./contracts/ethereum-1/0x1eabb6eaa1854cd082fe293191b23ff868ea6b45/) | ShutdownRedeemerUpgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3b4e64...e4ae7e`](./contracts/ethereum-1/0x3b4e64beaa22c88844c53c122e9a290497e4ae7e/) | ShutdownRedeemerV3Upgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1036f5...87776a`](./contracts/ethereum-1/0x1036f5c5278358ea004e6530a86e4b968687776a/) | SVGGenerator2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1703f8...4277a3`](./contracts/ethereum-1/0x1703f8111b0e7a10e1d14f9073f53680d64277a3/) | SwapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1c57d0...d152a3`](./contracts/arbitrum-42161/0x1c57d081ca022c6d707afb241e13690bf3d152a3/) | TimelockExcludeList | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x13f89a...b8f4e2`](./contracts/ethereum-1/0x13f89adb711c18f8bc218f5e0ad508784eb8f4e2/) | TokenAppController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd62b2d...1b8df3`](./contracts/ethereum-1/0xd62b2dd08fca73b82f014107bf1cc888c61b8df3/) | TokenMultiCall | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa3a835...462d22`](./contracts/ethereum-1/0xa3a83528d0aa752f3bbe2b6877e222ed02462d22/) | Unexpected | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9c5a36...83e1dc`](./contracts/ethereum-1/0x9c5a36aef5a7b04b0123b2064bd20bc47183e1dc/) | XBounties | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3aada3...70bf74`](./contracts/ethereum-1/0x3aada3e213abf8529606924d8d1c55cbdc70bf74/) | XMON | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0cca02...3aed62`](./contracts/ethereum-1/0x0cca025c7b8c264f7a569aff1a74907cd43aed62/) | XStoreMultiCall | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x925297...b864b0`](./contracts/ethereum-1/0x925297edcb4893d0d914e6d28f49381d47b864b0/) | XTokenClonable | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa76cee...929881`](./contracts/ethereum-1/0xa76cee17463bd34df43418e9b1acdf508e929881/) | XTokenFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0b5c90...6ab2f3`](./contracts/ethereum-1/0x0b5c9081e818e3b2cf677e7f42391de34d6ab2f3/) | XXMON | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 107 |
| upstream | 24 |
| standard_library | 15 |
| needs_review | 38 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=3
- Match method counts: extraction_exact=186

Zero-match audit list:

- [3025] spaces/-MObsGdLeFkbdDe8_KiT-2910905616/uploads/xxMQXacJ9gspSb09eUCz/ToB_Audit.pdf
- [3026] spaces/-MObsGdLeFkbdDe8_KiT-2910905616/uploads/f5r6lXZIs4rTMBTrt0eH/NFTX_V2_Periphery_Report_v1.1_2022_12_23.pdf

Fork inheritance lineage and inherited audits are included when available.
