# Agentic Audit Brief: HyperLend

## Project Overview

- Project: HyperLend (`hyperlend`)
- Website: [https://app.hyperlend.finance/?ref=DEFILLAMA](https://app.hyperlend.finance/?ref=DEFILLAMA)
- Lifecycle: unknown
- Generated: 2026-07-03T21:25:27.177Z
- Pipeline run: v2-2026-07-02-3df6b3
- Chains: hyperliquid
- Contract surface: 89 unique implementations (89 raw deployments)
- DeFi Llama TVL: $922,609,652.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Lending. Structurally: 84 project-authored contract(s) across 1 chain(s); 1 ERC4626 vault, 7 ERC20 tokens, 7 Chainlink feeds; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 17 common project-authored base contract(s) (aavev3payload, baseimmutableadminupgradeabilityproxy, baseupgradeabilityproxy). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 89; live-surface contracts included: 89 (89 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 22/89 (24.7%)
- Deployed-live implementations: 89 of 89 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 22/89
- Verified + Unaudited implementations: 67
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 89
- Raw deployments: 89
- Audits discovered: 18 (18 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 11
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-02 (fresh)
- Audit staleness (calendar age): 2 fresh, 4 aging, 10 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 22 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 9.0% (Certora, MixBytes, OpenZeppelin, Trail of Bits)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| ABDK | Tier 2 | 7 | 7.9% | 2022-01 |
| Ackee Blockchain | Tier 2 | 4 | 4.5% | 2025-03 |
| Pashov Audit Group | Tier 2 | 4 | 4.5% | 2025-11 |
| Trail of Bits | Tier 1 | 4 | 4.5% | 2021-11 |
| MixBytes | Tier 1 | 3 | 3.4% | 2024-05 |
| OpenZeppelin | Tier 1 | 3 | 3.4% | n/a |
| CD Security | Tier 2 | 2 | 2.2% | 2026-02 |
| Certora | Tier 1 | 2 | 2.2% | 2024-09 |
| PeckShield | Tier 2 | 2 | 2.2% | 2022-12 |

## Contract Surface

### ✅ Verified + Audited (22)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AaveOracle | unknown | hyperliquid | n/a | [`0xc9fb4f...3a630e`](./contracts/hyperliquid-999/0xc9fb4fbe842d57eac1df3e641a281827493a630e/) | ✅ Audited |
| AaveProtocolDataProvider | unknown | hyperliquid | n/a | [`0x4f4d4c...eb4326`](./contracts/hyperliquid-999/0x4f4d4ca1e0a8a21fe0b460613bebe917f2eb4326/) | ✅ Audited |
| ACLManager | unknown | hyperliquid | n/a | [`0x10914e...00a04a`](./contracts/hyperliquid-999/0x10914ee2c2dd3f3def9effb75906ca067700a04a/) | ✅ Audited |
| DefaultReserveInterestRateStrategyV2 | unknown | hyperliquid | n/a | [`0xd01e9a...070822`](./contracts/hyperliquid-999/0xd01e9aa0ba6a4a06e756bc8c79579e6cef070822/) | ✅ Audited |
| DualFallbackOracle | unknown | hyperliquid | n/a | [`0x18b82b...f43ca9`](./contracts/hyperliquid-999/0x18b82bb96544ce87bb6dab46b9fe06a73cf43ca9/) | ✅ Audited |
| Executor | unknown | hyperliquid | n/a | [`0x06a6d9...248d00`](./contracts/hyperliquid-999/0x06a6d9f20018bd6db20981d46fe7bbe52f248d00/) | ✅ Audited |
| HyperlendPairDeployer | unknown | hyperliquid | n/a | [`0x235260...c1dd0e`](./contracts/hyperliquid-999/0x2352603b4bcd7d70956a087b17b53755c5c1dd0e/) | ✅ Audited |
| HyperlendPairRegistry | unknown | hyperliquid | n/a | [`0x43ba7e...e88885`](./contracts/hyperliquid-999/0x43ba7e2e99c05ac0829c16cb514e06eb82e88885/) | ✅ Audited |
| HyperlendWhitelist | unknown | hyperliquid | n/a | [`0x3e54ae...d27b61`](./contracts/hyperliquid-999/0x3e54ae58d5745c5d04f39a4b8c07006344d27b61/) | ✅ Audited |
| InitializableImmutableAdminUpgradeabilityProxy | unknown | hyperliquid | n/a | [`0x00a89d...9a1a8b`](./contracts/hyperliquid-999/0x00a89d7a5a02160f20150ebea7a2b5e4879a1a8b/) | ✅ Audited |
| InitializableImmutableAdminUpgradeabilityProxy | unknown | hyperliquid | n/a | [`0x044388...b0abf5`](./contracts/hyperliquid-999/0x044388eed86ef67c126db5a66428f30797b0abf5/) | ✅ Audited |
| InitializableImmutableAdminUpgradeabilityProxy | unknown | hyperliquid | n/a | [`0x0ab8aa...149d33`](./contracts/hyperliquid-999/0x0ab8aae3335ed4b373a33d9023b6a6585b149d33/) | ✅ Audited |
| InitializableImmutableAdminUpgradeabilityProxy | unknown | hyperliquid | n/a | [`0x2af0d6...99fe2f`](./contracts/hyperliquid-999/0x2af0d6754a58723c50b5e73e45d964bfdd99fe2f/) | ✅ Audited |
| MerkleDistributorForContracts | unknown | hyperliquid | n/a | [`0x9450b5...9b75e2`](./contracts/hyperliquid-999/0x9450b54a3d9586e117a9b00197cd8a938f9b75e2/) | ✅ Audited |
| MerkleDistributorWithDeadline | unknown | hyperliquid | n/a | [`0x3aa0a4...09cf39`](./contracts/hyperliquid-999/0x3aa0a4f916f6c3c9c9054e52cd5aafeb8a09cf39/) | ✅ Audited |
| PoolAddressesProvider | unknown | hyperliquid | n/a | [`0x72c982...97170c`](./contracts/hyperliquid-999/0x72c98246a98bfe64022a3190e7710e157497170c/) | ✅ Audited |
| PoolAddressesProviderRegistry | unknown | hyperliquid | n/a | [`0x24e301...728b20`](./contracts/hyperliquid-999/0x24e301bcba5c098b3b41ea61a52bfe95cb728b20/) | ✅ Audited |
| PoolConfiguratorInstance | unknown | hyperliquid | n/a | [`0x6fddde...579623`](./contracts/hyperliquid-999/0x6fddde45f777a4e461b0721a578b169b44579623/) | ✅ Audited |
| StataTokenV2 | unknown | hyperliquid | n/a | [`0x4376c0...3bfcf5`](./contracts/hyperliquid-999/0x4376c06d866557fac5d0b5813526639c403bfcf5/) | ✅ Audited |
| Timelock | unknown | hyperliquid | n/a | [`0x25348d...e0c04b`](./contracts/hyperliquid-999/0x25348df3e4481a0063bba113bc7ae2c72de0c04b/) | ✅ Audited |
| UiPoolDataProviderV3 | unknown | hyperliquid | n/a | [`0xfc05a3...36b9d4`](./contracts/hyperliquid-999/0xfc05a3fbf47094f53a8f98fda5dd8abdd336b9d4/) | ✅ Audited |
| WalletBalanceProvider | unknown | hyperliquid | n/a | [`0x99478e...96e149`](./contracts/hyperliquid-999/0x99478e5c8d0597730844fd93db8ab4723b96e149/) | ✅ Audited |

### ⚠️ Verified + Unaudited (67)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AaveV3ConfigEngine | unknown | hyperliquid | n/a | [`0xee9d3e...ccfb6f`](./contracts/hyperliquid-999/0xee9d3edbeda35156681ef28765e760eb75ccfb6f/) | ⚠️ Unaudited |
| CapAutomator | unknown | hyperliquid | n/a | [`0x01f550...1ba312`](./contracts/hyperliquid-999/0x01f550365b99ae5b76533241c5ba8255441ba312/) | ⚠️ Unaudited |
| Collector | unknown | hyperliquid | n/a | [`0x6a14a5...267503`](./contracts/hyperliquid-999/0x6a14a52bc00f60f6f13b960790cf9a3d90267503/) | ⚠️ Unaudited |
| Create2Factory | unknown | hyperliquid | n/a | [`0xce6828...52c7f1`](./contracts/hyperliquid-999/0xce682817a50924f4f1a826b6f4ab33f3e452c7f1/) | ⚠️ Unaudited |
| Emode | unknown | hyperliquid | n/a | [`0x4d64cf...167369`](./contracts/hyperliquid-999/0x4d64cfbaa29af83fc8409739f0cdfe9e47167369/) | ⚠️ Unaudited |
| Emode_kHYPE | unknown | hyperliquid | n/a | [`0x65b44b...cc917b`](./contracts/hyperliquid-999/0x65b44b1a749e172e193b9689c6d040ca1ecc917b/) | ⚠️ Unaudited |
| ENAOFT | unknown | hyperliquid | n/a | [`0x5d3a1f...52ef34`](./contracts/hyperliquid-999/0x5d3a1ff2b6bab83b63cd9ad0787074081a52ef34/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | hyperliquid | n/a | [`0x068f32...1c8a29`](./contracts/hyperliquid-999/0x068f321fa8fb9f0d135f290ef6a3e2813e1c8a29/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | hyperliquid | n/a | [`0x27ec64...6f4452`](./contracts/hyperliquid-999/0x27ec642013bcb3d80ca3706599d3cda04f6f4452/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | hyperliquid | n/a | [`0x3b4575...b2cedf`](./contracts/hyperliquid-999/0x3b4575e689ded21caad31d64c4df1f10f3b2cedf/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | hyperliquid | n/a | [`0x9fdbda...993463`](./contracts/hyperliquid-999/0x9fdbda0a5e284c32744d2f17ee5c74b284993463/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | hyperliquid | n/a | [`0xbe6727...cf7907`](./contracts/hyperliquid-999/0xbe6727b535545c67d5caa73dea54865b92cf7907/) | ⚠️ Unaudited |
| FeesClaimer | unknown | hyperliquid | n/a | [`0x3d0e46...52c107`](./contracts/hyperliquid-999/0x3d0e463c00c32b26eedd684149e0749b1f52c107/) | ⚠️ Unaudited |
| FiatTokenProxy | unknown | hyperliquid | n/a | [`0xb88339...ba630f`](./contracts/hyperliquid-999/0xb88339cb7199b77e23db6e890353e22632ba630f/) | ⚠️ Unaudited |
| GnosisSafeProxy | unknown | hyperliquid | n/a | [`0x2110e7...868e9c`](./contracts/hyperliquid-999/0x2110e7b8e925c387a88259ceac9bd82c47868e9c/) | ⚠️ Unaudited |
| GnosisSafeProxy | unknown | hyperliquid | n/a | [`0xc2a0f2...db7cac`](./contracts/hyperliquid-999/0xc2a0f2c78dd7e37c82aa3a8e37fc712a3ddb7cac/) | ⚠️ Unaudited |
| HlAlignedStableV3 | unknown | hyperliquid | n/a | [`0x111111...111111`](./contracts/hyperliquid-999/0x111111a1a0667d36bd57c0a9f569b98057111111/) | ⚠️ Unaudited |
| HplStaking | unknown | hyperliquid | n/a | [`0x8b71a6...b9b5c3`](./contracts/hyperliquid-999/0x8b71a658b49833bb7d14a456498f22ab0cb9b5c3/) | ⚠️ Unaudited |
| HyperLiquidComposer | unknown | hyperliquid | n/a | [`0x036afc...44484b`](./contracts/hyperliquid-999/0x036afc9e3498ec863239e9e3f7eeb5af9c44484b/) | ⚠️ Unaudited |
| Increase_caps | unknown | hyperliquid | n/a | [`0x004887...e384e0`](./contracts/hyperliquid-999/0x004887022661bf40d1eaf8503787397c80e384e0/) | ⚠️ Unaudited |
| LinearInterestRate | unknown | hyperliquid | n/a | [`0xaa352d...3f2381`](./contracts/hyperliquid-999/0xaa352d34f6e77c302337af2ab56a40bdbb3f2381/) | ⚠️ Unaudited |
| Listing_1 | unknown | hyperliquid | n/a | [`0x00394e...cc16df`](./contracts/hyperliquid-999/0x00394ebc54b64ebd95673b375507c6f089cc16df/) | ⚠️ Unaudited |
| Listing_beHYPE | unknown | hyperliquid | n/a | [`0xa90156...486943`](./contracts/hyperliquid-999/0xa901568b247b32a0901f9a4fbaf1ce456f486943/) | ⚠️ Unaudited |
| Listing_PT_kHYPE | unknown | hyperliquid | n/a | [`0x4cf254...5cf6dd`](./contracts/hyperliquid-999/0x4cf254ad7f0429a372b3579965a14ee6aa5cf6dd/) | ⚠️ Unaudited |
| Listing_PT_sUSDe | unknown | hyperliquid | n/a | [`0x1e87f0...11b4a2`](./contracts/hyperliquid-999/0x1e87f08099436569c8c95db1dc16957ed611b4a2/) | ⚠️ Unaudited |
| Listing_sUSDe | unknown | hyperliquid | n/a | [`0x363db2...42f10d`](./contracts/hyperliquid-999/0x363db264c967e9709e95d439941691a21742f10d/) | ⚠️ Unaudited |
| Listing_USDC | unknown | hyperliquid | n/a | [`0x8a7c61...b02522`](./contracts/hyperliquid-999/0x8a7c618bb4995c578ce581a39ea6afe4a1b02522/) | ⚠️ Unaudited |
| Listing_USDe | unknown | hyperliquid | n/a | [`0x7614ed...639941`](./contracts/hyperliquid-999/0x7614ed9d702977020253772bd6f9afe86a639941/) | ⚠️ Unaudited |
| Listing_USDH | unknown | hyperliquid | n/a | [`0xae2a6c...ba0ec8`](./contracts/hyperliquid-999/0xae2a6cc1d76415b27a94d87b8edee59b32ba0ec8/) | ⚠️ Unaudited |
| Listing_USDT0 | unknown | hyperliquid | n/a | [`0xa5e61e...9e5c9d`](./contracts/hyperliquid-999/0xa5e61e31e69ec330682585ed0238ff09c29e5c9d/) | ⚠️ Unaudited |
| Listing_USOL | unknown | hyperliquid | n/a | [`0xf76d44...322690`](./contracts/hyperliquid-999/0xf76d448a7dce6af71d1cdaf8537d321a59322690/) | ⚠️ Unaudited |
| Listing_wHYPE | unknown | hyperliquid | n/a | [`0x84e191...4c91d0`](./contracts/hyperliquid-999/0x84e19195f353638cb689f2e6df5ef2e1f04c91d0/) | ⚠️ Unaudited |
| Listing_wstHYPE | unknown | hyperliquid | n/a | [`0xcd999c...9c5089`](./contracts/hyperliquid-999/0xcd999cf2d3edd38c95fe1e748d91a8e4eb9c5089/) | ⚠️ Unaudited |
| PendlePrincipalToken | unknown | hyperliquid | n/a | [`0x311db0...e25329`](./contracts/hyperliquid-999/0x311db0fde558689550c68355783c95efdfe25329/) | ⚠️ Unaudited |
| Price_feed_update | unknown | hyperliquid | n/a | [`0x09b180...56cfb5`](./contracts/hyperliquid-999/0x09b1807e2b98c28a53ff5b3e638958cc2156cfb5/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | hyperliquid | n/a | [`0x779ded...713736`](./contracts/hyperliquid-999/0x779ded0c9e1022225f8e0630b35a9b54be713736/) | ⚠️ Unaudited |
| RateUpdates | unknown | hyperliquid | n/a | [`0x8a476d...2e46a0`](./contracts/hyperliquid-999/0x8a476d800cb3ed0ee970801135bdcf39d52e46a0/) | ⚠️ Unaudited |
| RatioAdapter | unknown | hyperliquid | n/a | [`0x1654f6...3a1d74`](./contracts/hyperliquid-999/0x1654f60f637f448d94562e3e18d0f967603a1d74/) | ⚠️ Unaudited |
| RewardsDistributor | unknown | hyperliquid | n/a | [`0x889b9d...5b8940`](./contracts/hyperliquid-999/0x889b9dbf1546e1dfd93bc4cacf47eeca7e5b8940/) | ⚠️ Unaudited |
| SafeProxy | unknown | hyperliquid | n/a | [`0x96f0fe...809691`](./contracts/hyperliquid-999/0x96f0fede38e23bac200a158f947d0c9955809691/) | ⚠️ Unaudited |
| SafeProxy | unknown | hyperliquid | n/a | [`0xf4bde1...53f327`](./contracts/hyperliquid-999/0xf4bde1e0755dd24255bb4dd49ef20bbbd153f327/) | ⚠️ Unaudited |
| Set_config | unknown | hyperliquid | n/a | [`0x492b2a...34b585`](./contracts/hyperliquid-999/0x492b2a469da034bbc1711713a79045e76734b585/) | ⚠️ Unaudited |
| SingleFeedProvider | unknown | hyperliquid | n/a | [`0x4c7b17...fd61a9`](./contracts/hyperliquid-999/0x4c7b17c8b4f3ff766889aaf2ac5a6db565fd61a9/) | ⚠️ Unaudited |
| StakedUSDeOFT | unknown | hyperliquid | n/a | [`0x211cc4...5fe5d2`](./contracts/hyperliquid-999/0x211cc4dd073734da055fbf44a2b4667d5e5fe5d2/) | ⚠️ Unaudited |
| StakingHpl | unknown | hyperliquid | n/a | [`0x09b223...a94292`](./contracts/hyperliquid-999/0x09b2236327d76fcd9e4b72db70a6608c21a94292/) | ⚠️ Unaudited |
| StaticOracle | unknown | hyperliquid | n/a | [`0x11e14a...f05c9f`](./contracts/hyperliquid-999/0x11e14a240d005ce3b3cbd3fc4fa08b0ac7f05c9f/) | ⚠️ Unaudited |
| StHypeAdapter | unknown | hyperliquid | n/a | [`0x92e86f...f9c272`](./contracts/hyperliquid-999/0x92e86f458ca07351cc31f9dbeeb55715fcf9c272/) | ⚠️ Unaudited |
| StHypeAdapterFundamental | unknown | hyperliquid | n/a | [`0x377280...be49b8`](./contracts/hyperliquid-999/0x377280bb72e75e7af763b98c35a75e873bbe49b8/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | hyperliquid | n/a | [`0x0a3d84...cc5c48`](./contracts/hyperliquid-999/0x0a3d8466f5de586fa5f6de117301e2f90bcc5c48/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | hyperliquid | n/a | [`0x28ab15...2f39ff`](./contracts/hyperliquid-999/0x28ab15e8ac2ed6af0cfd5ba95a6a9f00542f39ff/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | hyperliquid | n/a | [`0x3c051f...0c7321`](./contracts/hyperliquid-999/0x3c051fe8d02348c0034ea22221a99e89c50c7321/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | hyperliquid | n/a | [`0x561879...1aa9ad`](./contracts/hyperliquid-999/0x561879b3430dbfc0071004ae3bf640020a1aa9ad/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | hyperliquid | n/a | [`0x94e839...e1cf38`](./contracts/hyperliquid-999/0x94e8396e0869c9f2200760af0621afd240e1cf38/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | hyperliquid | n/a | [`0xb8ce59...625ebb`](./contracts/hyperliquid-999/0xb8ce59fc3717ada4c02eadf9682a9e934f625ebb/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | hyperliquid | n/a | [`0xb96f07...13eeae`](./contracts/hyperliquid-999/0xb96f07367e69e86d6e9c3f29215885104813eeae/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | hyperliquid | n/a | [`0xfd739d...7c296d`](./contracts/hyperliquid-999/0xfd739d4e423301ce9385c1fb8850539d657c296d/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | hyperliquid | n/a | [`0xffaa4a...f76cc1`](./contracts/hyperliquid-999/0xffaa4a3d97fe9107cef8a3f48c069f577ff76cc1/) | ⚠️ Unaudited |
| UiIncentiveDataProviderV3 | unknown | hyperliquid | n/a | [`0xd47dc1...203b54`](./contracts/hyperliquid-999/0xd47dc1f30994539b3fa000c70bb5e5d0be203b54/) | ⚠️ Unaudited |
| UnifiedTradingAccountHelper | unknown | hyperliquid | n/a | [`0x486e5f...4f5883`](./contracts/hyperliquid-999/0x486e5f8ca786fc0b3adb472a51e5fc67fd4f5883/) | ⚠️ Unaudited |
| UnitPlasma | unknown | hyperliquid | n/a | [`0x11e10b...0798a1`](./contracts/hyperliquid-999/0x11e10b315363d43e46b04f139fc051164e0798a1/) | ⚠️ Unaudited |
| Update_Caps | unknown | hyperliquid | n/a | [`0x8c21d0...d08daa`](./contracts/hyperliquid-999/0x8c21d02998885728173033c5ee5d7e4946d08daa/) | ⚠️ Unaudited |
| UpgradePayload | unknown | hyperliquid | n/a | [`0x7c3fa1...3adb5b`](./contracts/hyperliquid-999/0x7c3fa1493facb8b3b71455f4e128156ec73adb5b/) | ⚠️ Unaudited |
| UUPSProxy | unknown | hyperliquid | n/a | [`0xd8fc8f...e5dda9`](./contracts/hyperliquid-999/0xd8fc8f0b03eba61f64d08b0bef69d80916e5dda9/) | ⚠️ Unaudited |
| VariableInterestRate | unknown | hyperliquid | n/a | [`0x02ca3a...6af931`](./contracts/hyperliquid-999/0x02ca3a21136715a7a06b45df24383b18a56af931/) | ⚠️ Unaudited |
| wHlpAdapter | unknown | hyperliquid | n/a | [`0x190897...003d76`](./contracts/hyperliquid-999/0x190897a08371be59f309db2377832a462f003d76/) | ⚠️ Unaudited |
| WHYPE9 | unknown | hyperliquid | n/a | [`0x555555...555555`](./contracts/hyperliquid-999/0x5555555555555555555555555555555555555555/) | ⚠️ Unaudited |
| WrappedTokenGatewayV3 | unknown | hyperliquid | n/a | [`0x49558c...e99171`](./contracts/hyperliquid-999/0x49558c794ea2ac8974c9f27886ddfaa951e99171/) | ⚠️ Unaudited |

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
| [01-11-2021_OpenZeppelin_AaveV3.pdf](https://github.com/hyperlendx/audits/blob/master/aave/01-11-2021_OpenZeppelin_AaveV3.pdf) | OpenZeppelin | Audit | n/a | unknown | Direct | contract_name | 3 | high |
| [02-05-2024_MixBytes_AaveV3.1.pdf](https://github.com/hyperlendx/audits/blob/master/aave/02-05-2024_MixBytes_AaveV3.1.pdf) | MixBytes | Audit | 2024-05 | stale | Direct | contract_name | 3 | high |
| [02-06-2024-Cantina-contest-AaveV3.1.pdf](https://github.com/hyperlendx/audits/blob/master/aave/02-06-2024-Cantina-contest-AaveV3.1.pdf) | Spearbit | Audit | 2024-06 | stale | Direct | n/a | 0 | n/a |
| [03-2023_2023_Certora_AaveV3-0-2.pdf](https://github.com/hyperlendx/audits/blob/master/aave/03-2023_2023_Certora_AaveV3-0-2.pdf) | Certora | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [07-01-2022_TrailOfBits_AaveV3.pdf](https://github.com/hyperlendx/audits/blob/master/aave/07-01-2022_TrailOfBits_AaveV3.pdf) | Trail of Bits | Audit | 2021-11 | stale | Direct | contract_name | 4 | high |
| [09-12-2022_PeckShield_AaveV3-0-1.pdf](https://github.com/hyperlendx/audits/blob/master/aave/09-12-2022_PeckShield_AaveV3-0-1.pdf) | PeckShield | Audit | 2022-12 | stale | Direct | n/a | 0 | n/a |
| [11-09-2024_Certora_StataTokenV2.pdf](https://github.com/hyperlendx/audits/blob/master/aave/11-09-2024_Certora_StataTokenV2.pdf) | Certora | Audit | 2024-09 | aging | Direct | contract_name | 1 | high |
| [14-01-2022_PeckShield_AaveV3.pdf](https://github.com/hyperlendx/audits/blob/master/aave/14-01-2022_PeckShield_AaveV3.pdf) | PeckShield | Audit | 2022-01 | stale | Direct | contract_name | 2 | high |
| [19-04-2023_SigmaPrime_AaveV3-0-2.pdf](https://github.com/hyperlendx/audits/blob/master/aave/19-04-2023_SigmaPrime_AaveV3-0-2.pdf) | Sigma Prime | Audit | 2023-04 | stale | Direct | n/a | 0 | n/a |
| [23-12-2022_SigmaPrime_AaveV3-0-1.pdf](https://github.com/hyperlendx/audits/blob/master/aave/23-12-2022_SigmaPrime_AaveV3-0-1.pdf) | Sigma Prime | Audit | 2022-12 | stale | Direct | n/a | 0 | n/a |
| [27-01-2022_ABDK_AaveV3.pdf](https://github.com/hyperlendx/audits/blob/master/aave/27-01-2022_ABDK_AaveV3.pdf) | ABDK | Audit | 2022-01 | stale | Direct | contract_name | 7 | high |
| [27-01-2022_SigmaPrime_AaveV3.pdf](https://github.com/hyperlendx/audits/blob/master/aave/27-01-2022_SigmaPrime_AaveV3.pdf) | Sigma Prime | Audit | 2023-04 | stale | Direct | n/a | 0 | n/a |
| [30-04-2024_Certora_AaveV3.1.pdf](https://github.com/hyperlendx/audits/blob/master/aave/30-04-2024_Certora_AaveV3.1.pdf) | Certora | Audit | 2024-04 | stale | Direct | contract_name | 1 | medium |
| [2025-01-11-pashov-security-review-hyperlend.pdf](https://github.com/hyperlendx/audits/blob/master/hyperlend/2025-01-11-pashov-security-review-hyperlend.pdf) | Pashov Audit Group | Audit | 2025-01 | aging | Direct | contract_name | 3 | high |
| [2025-01-12-cantina-competition-hyperlend.pdf](https://github.com/hyperlendx/audits/blob/master/hyperlend/2025-01-12-cantina-competition-hyperlend.pdf) | Spearbit | Audit | 2025-01 | aging | Direct | n/a | 0 | n/a |
| [2025-03-24-ackee-audit-hyperlend.pdf](https://github.com/hyperlendx/audits/blob/master/hyperlend/2025-03-24-ackee-audit-hyperlend.pdf) | Ackee Blockchain | Audit | 2025-03 | aging | Direct | contract_name | 4 | high |
| [2025-11-21-pashov-uta-oracles.pdf](https://github.com/hyperlendx/audits/blob/master/hyperlend/2025-11-21-pashov-uta-oracles.pdf) | Pashov Audit Group | Audit | 2025-11 | fresh | Direct | contract_name | 1 | high |
| [2026-2-16-cd-security-token-merkle-distributor.pdf](https://github.com/hyperlendx/audits/blob/master/hyperlend/2026-2-16-cd-security-token-merkle-distributor.pdf) | CD Security | Audit | 2026-02 | fresh | Direct | contract_name | 2 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 89 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 7
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=10, medium=1
- Match method counts: extraction_exact=31

Zero-match audit list:

- [17443] 02-06-2024-Cantina-contest-AaveV3.1.pdf
- [17444] 03-2023_2023_Certora_AaveV3-0-2.pdf
- [17446] 09-12-2022_PeckShield_AaveV3-0-1.pdf
- [17449] 19-04-2023_SigmaPrime_AaveV3-0-2.pdf
- [17450] 23-12-2022_SigmaPrime_AaveV3-0-1.pdf
- [17452] 27-01-2022_SigmaPrime_AaveV3.pdf
- [17455] 2025-01-12-cantina-competition-hyperlend.pdf

Fork inheritance lineage and inherited audits are included when available.
