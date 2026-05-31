# Agentic Audit Brief: Gravity Bridge

## Project Overview

- Project: Gravity Bridge (`gravity-bridge`)
- Website: [https://www.gravitybridge.net](https://www.gravitybridge.net)
- Lifecycle: active (Tier 0, 89.3% below peak)
- Generated: 2026-05-31T08:15:02.127Z
- Pipeline run: v2-pipeline-2026-05-31-ab6275-1b32
- Chains: ethereum
- Contract surface: 152 unique implementations (225 raw deployments)
- DeFi Llama TVL: $12,141,492.35
- On-chain TVL (included contracts): $91,299,805.77
- TVL by chain: Ethereum $91,299,805.77

## Project Description

Gravity Bridge is a cross-chain bridge protocol that enables the transfer of assets between Ethereum and the Cosmos ecosystem. It uses a set of bridge contracts and token representations to lock assets on Ethereum and mint corresponding tokens on Cosmos, and vice versa.

### Architecture

The Gravity Bridge family relies on a set of proxy contracts (AdminUpgradeabilityProxy, TransparentUpgradeableProxy) to manage upgradeability of core bridge logic (CosmosBridge, BridgeBank, BridgeRegistry). Token representations (CosmosERC20, BridgeToken) are deployed via factories or beacons and interact with the bridge contracts to lock and release assets.

## Audit Coverage Summary

- Verified implementations audited: 1/74 (1.4%)
- Verified + Unaudited implementations: 73
- Verified by bytecode match: 0
- Unverified implementations: 78
- Unique implementations: 152
- Raw deployments: 225
- Audits discovered: 1
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): $91,299,805.77
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 1 | 1.4% | n/a |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Gravity | unknown | ethereum | [`0xa4108a...f2d906`](./contracts/ethereum-1/0xa4108aa1ec4967f8b52220a4f7e94a8201f2d906/) | ✅ Audited |

### ⚠️ Verified + Unaudited (73)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| OraiToken | token | ethereum | [`0x4c1124...28c1b5`](./contracts/ethereum-1/0x4c11249814f11b9346808179cf06e71ac328c1b5/) | ⚠️ Unaudited |
| BandToken | token | ethereum | [`0xba11d0...6d7f55`](./contracts/ethereum-1/0xba11d00c5f74255f56a5e366f4f77f5a186d7f55/) | ⚠️ Unaudited |
| BurnableMintableCappedERC20 | token | ethereum | [`0x467719...a5e5f3`](./contracts/ethereum-1/0x467719ad09025fcc6cf6f8311755809d45a5e5f3/) | ⚠️ Unaudited |
| CudosToken | token | ethereum | [`0x817bbd...e3db35`](./contracts/ethereum-1/0x817bbdbc3e8a1204f3691d14bb44992841e3db35/) | ⚠️ Unaudited |
| TokenImplementation | token | ethereum | 2 deployments: ethereum [`0x43373a...bf55e6`](./contracts/ethereum-1/0x43373ae537945085ee1001928e96204034bf55e6/); ethereum `0xa693b1...ee87a5` | ⚠️ Unaudited |
| IbcToken | token | ethereum | 11 deployments: ethereum [`0x0c356b...c9ab76`](./contracts/ethereum-1/0x0c356b7fd36a5357e5a017ef11887ba100c9ab76/); ethereum `0x1c700f...4cd310`; ethereum `0x76c4a2...b1463f`; ethereum `0x8d983c...0cb7bb`; ethereum `0x93a62c...9f4ba2`; ethereum `0xa7e560...84ded3`; ethereum `0xae837e...12835c`; ethereum `0xafd70a...e40062`; ethereum `0xc727f8...29aad6`; ethereum `0xee59b4...c8a6fb`; ethereum `0xeee10b...95128b` | ⚠️ Unaudited |
| CosmosERC20 | token | ethereum | 5 deployments: ethereum [`0x454725...4b8fcf`](./contracts/ethereum-1/0x4547254e6e3195ce57bc50352193a25c2f4b8fcf/); ethereum `0x7be486...6ea876`; ethereum `0xa670d7...010fd1`; ethereum `0xc0a4df...eeddac`; ethereum `0xea5a82...7d2951` | ⚠️ Unaudited |
| GeoToken | token | ethereum | [`0x147faf...126750`](./contracts/ethereum-1/0x147faf8de9d8d8daae129b187f0d02d819126750/) | ⚠️ Unaudited |
| InjectiveToken | token | ethereum | [`0xe28b3b...ceca30`](./contracts/ethereum-1/0xe28b3b32b6c345a34ff64674606124dd5aceca30/) | ⚠️ Unaudited |
| aiUSDT | token | ethereum | [`0x504108...e798d7`](./contracts/ethereum-1/0x50410884462a075f27fd1c9030b955f2abe798d7/) | ⚠️ Unaudited |
| oVault | core_logic | ethereum | [`0x52746b...fee128`](./contracts/ethereum-1/0x52746b187f6544b0d590dcd34f3ababf5ffee128/) | ⚠️ Unaudited |
| Address | unknown | ethereum | [`0xa325ad...6441c0`](./contracts/ethereum-1/0xa325ad6d9c92b55a3fc5ad7e412b1518f96441c0/) | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | ethereum | 14 deployments: ethereum [`0x094a30...e12a6a`](./contracts/ethereum-1/0x094a306d8b0abe28e2b994a064b71f2161e12a6a/); ethereum `0x1fbb4e...231927`; ethereum `0x407be3...72ba85`; ethereum `0x440175...b28dde`; ethereum `0x446e02...0132b3`; ethereum `0x5510a6...326cee`; ethereum `0x57f10d...5cdfc9`; ethereum `0x9c2570...859f66`; ethereum `0xa0c76f...0018bd`; ethereum `0xa9739b...7bc1d6`; ethereum `0xce3f57...fcf480`; ethereum `0xd30651...045d88`; ethereum `0xf668f3...723cdd`; ethereum `0xf6c20f...f9d762` | ⚠️ Unaudited |
| AidSquadToken | token | ethereum | [`0x76b16a...f6e28d`](./contracts/ethereum-1/0x76b16aa88f932c309abc421f1a9e5c545ff6e28d/) | ⚠️ Unaudited |
| aiORAI | unknown | ethereum | [`0x8dcff4...c577c8`](./contracts/ethereum-1/0x8dcff4f1653f45cf418b0b3a5080a0fdcac577c8/) | ⚠️ Unaudited |
| AnyswapV6ERC20 | token | ethereum | [`0xd23ed8...debb7b`](./contracts/ethereum-1/0xd23ed8ca350ce2631f7ecdc5e6bf80d0a1debb7b/) | ⚠️ Unaudited |
| BatchTransfer | periphery | ethereum | [`0xebdaba...c0f932`](./contracts/ethereum-1/0xebdaba95213c13bbd738680dbfc3e1b856c0f932/) | ⚠️ Unaudited |
| Blocklist | unknown | ethereum | [`0x1fbef5...daea82`](./contracts/ethereum-1/0x1fbef5a068bfcc4cb1fae9039ea716eaaadaea82/) | ⚠️ Unaudited |
| BridgeBank | operational_periphery | ethereum | 3 deployments: ethereum [`0x2034c9...2c3f53`](./contracts/ethereum-1/0x2034c9194de45ffe5ba382868115daebe32c3f53/); ethereum `0xb5f54a...5b7ba8`; ethereum `0xeca46b...3b7f9f` | ⚠️ Unaudited |
| BridgeRegistry | operational_periphery | ethereum | 2 deployments: ethereum [`0x5c350c...1dd0bd`](./contracts/ethereum-1/0x5c350c858035a5dc8a64faa52a13bb926b1dd0bd/); ethereum `0xaab00d...87a4b3` | ⚠️ Unaudited |
| BridgeToken | operational_periphery | ethereum | 14 deployments: ethereum [`0x07bac3...f2dcbe`](./contracts/ethereum-1/0x07bac35846e5ed502aa91adf6a9e7aa210f2dcbe/); ethereum `0x3de800...339470`; ethereum `0x413e81...7ea479`; ethereum `0x4c67b8...85be50`; ethereum `0x55e9d7...d615e8`; ethereum `0x566677...ed62c4`; ethereum `0x714bfd...1bf439`; ethereum `0x7588fe...449b28`; ethereum `0x8ea264...926cf2`; ethereum `0x935819...bdee7b`; ethereum `0xa4bfc5...f7c1d2`; ethereum `0xc81978...2bd410`; ethereum `0xcf9902...fc4ec5`; ethereum `0xeb5bea...823a29` | ⚠️ Unaudited |
| Controller | governance | ethereum | 2 deployments: ethereum [`0x35e05e...17100d`](./contracts/ethereum-1/0x35e05ea793eb20fe9b75c55bc0c51d8a7017100d/); ethereum `0xe48b40...2dfd0a` | ⚠️ Unaudited |
| CosmosBridge | operational_periphery | ethereum | 3 deployments: ethereum [`0x72eb0d...25adc3`](./contracts/ethereum-1/0x72eb0df009b8ea2441de78f073338620b625adc3/); ethereum `0x7e5b2a...5eaf65`; ethereum `0xe1fa4a...bb6b4a` | ⚠️ Unaudited |
| CroToken | token | ethereum | 2 deployments: ethereum [`0xa0b73e...34450b`](./contracts/ethereum-1/0xa0b73e1ff0b80914ab6fe0444e65848c4c34450b/); ethereum `0xe88591...74f71e` | ⚠️ Unaudited |
| CudosAccessControls | governance | ethereum | [`0xefb546...680993`](./contracts/ethereum-1/0xefb546ec7babc97af3791033cc3ca1cc1f680993/) | ⚠️ Unaudited |
| eCHF | unknown | ethereum | [`0xfdbcd3...667e23`](./contracts/ethereum-1/0xfdbcd3a491ca357e8ce347e6b45c146e28667e23/) | ⚠️ Unaudited |
| eDKK | unknown | ethereum | [`0x60db53...c14d0e`](./contracts/ethereum-1/0x60db53521c1563c89e55d9fceda8d47f55c14d0e/) | ⚠️ Unaudited |
| eEUR | unknown | ethereum | [`0x0badd7...e6c17c`](./contracts/ethereum-1/0x0badd7af129efac1f7bb7253716a589cc5e6c17c/) | ⚠️ Unaudited |
| eNOK | unknown | ethereum | [`0x9ec749...f47ea5`](./contracts/ethereum-1/0x9ec749faa086bb604b96bfe02bd49c53cef47ea5/) | ⚠️ Unaudited |
| eSEK | unknown | ethereum | [`0x0f7f65...d63a23`](./contracts/ethereum-1/0x0f7f6531af9792c9a42e2befced5ed81c0d63a23/) | ⚠️ Unaudited |
| FetchToken | token | ethereum | 2 deployments: ethereum [`0x031b41...91fa7f`](./contracts/ethereum-1/0x031b41e504677879370e9dbcf937283a8691fa7f/); ethereum `0xaea46a...41ad85` | ⚠️ Unaudited |
| MNW | unknown | ethereum | [`0xd3e4ba...d7f6e4`](./contracts/ethereum-1/0xd3e4ba569045546d09cf021ecc5dfe42b1d7f6e4/) | ⚠️ Unaudited |
| MNW_tokenswap | token | ethereum | 2 deployments: ethereum [`0x1a226f...b2051a`](./contracts/ethereum-1/0x1a226fefd114ec0fe0ea87bc9d0b371dd2b2051a/); ethereum `0x795826...1e20fe` | ⚠️ Unaudited |
| MobixToken | token | ethereum | [`0x5311cf...cb9999`](./contracts/ethereum-1/0x5311cf987ad2b8087d7d83efc379d6f916cb9999/) | ⚠️ Unaudited |
| MultiSigWallet | governance | ethereum | [`0x794811...31eb7d`](./contracts/ethereum-1/0x79481133237e468c326bb7a8e54dc249d231eb7d/) | ⚠️ Unaudited |
| NGM | unknown | ethereum | [`0xed0d57...45b75d`](./contracts/ethereum-1/0xed0d5747a9ab03a75fbfec3228cd55848245b75d/) | ⚠️ Unaudited |
| Orchestrator | unknown | ethereum | [`0x92feba...7a2c50`](./contracts/ethereum-1/0x92febab0073d48aa600d95d19e579d4a667a2c50/) | ⚠️ Unaudited |
| PAXGImplementation | unknown | ethereum | 2 deployments: ethereum [`0x458048...cbaf78`](./contracts/ethereum-1/0x45804880de22913dafe09f4980848ece6ecbaf78/); ethereum `0x74271f...4be42a` | ⚠️ Unaudited |
| PepeToken | token | ethereum | [`0x698250...311933`](./contracts/ethereum-1/0x6982508145454ce325ddbe47a25d4ec3d2311933/) | ⚠️ Unaudited |
| Pluton | unknown | ethereum | [`0xd8912c...12264e`](./contracts/ethereum-1/0xd8912c10681d8b21fd3742244f44658dba12264e/) | ⚠️ Unaudited |
| ProxyAdmin | governance | ethereum | 7 deployments: ethereum [`0x24aa9d...53b6c6`](./contracts/ethereum-1/0x24aa9d0e9f89cff6709f98653b0ea4641553b6c6/); ethereum `0x2d8586...e8572b`; ethereum `0x5838e2...35529e`; ethereum `0x6d013a...f6caa2`; ethereum `0x8d1210...4fae1b`; ethereum `0xa9e5e0...f18569`; ethereum `0xd60500...725133` | ⚠️ Unaudited |
| pStake | unknown | ethereum | [`0xfb5c68...f77006`](./contracts/ethereum-1/0xfb5c6815ca3ac72ce9f5006869ae67f18bf77006/) | ⚠️ Unaudited |
| StrategyDForceUSDT | core_logic | ethereum | [`0x0bf729...fce791`](./contracts/ethereum-1/0x0bf729b3ed116501cb0912ece261ad9e1bfce791/) | ⚠️ Unaudited |
| TokenContinuousDistribution | token | ethereum | [`0x35f517...e0bc85`](./contracts/ethereum-1/0x35f517cab9a37bc31091c2f155d965af84e0bc85/) | ⚠️ Unaudited |
| TokenGeyser | token | ethereum | 2 deployments: ethereum [`0x7b1be7...81b4b2`](./contracts/ethereum-1/0x7b1be7f8e6431514b20029cb7f2242ff9081b4b2/); ethereum `0x8cfad3...9a0d58` | ⚠️ Unaudited |
| TokenMintERC20Token | token | ethereum | [`0x35a532...a398e7`](./contracts/ethereum-1/0x35a532d376ffd9a705d0bb319532837337a398e7/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | ethereum | 14 deployments: ethereum [`0x04673b...d345d3`](./contracts/ethereum-1/0x04673b12a4b61c10e174d6e72b1a8e7393d345d3/); ethereum `0x0d5cd7...20e928`; ethereum `0x2891c5...2675da`; ethereum `0x2e16a1...ce3d69`; ethereum `0x310d5a...f672b3`; ethereum `0x3ea536...b49be7`; ethereum `0x45e007...02c499`; ethereum `0x4be059...56d721`; ethereum `0x504e71...45a6c8`; ethereum `0x7b2d02...d18864`; ethereum `0x8793cd...40d50b`; ethereum `0x8ad562...f591ce`; ethereum `0xa1cf35...615f58`; ethereum `0xdda269...5784f2` | ⚠️ Unaudited |
| VestingContract | operational_periphery | ethereum | [`0xb3ccb8...aea97b`](./contracts/ethereum-1/0xb3ccb8fb2533e51893915908ceb85763ceaea97b/) | ⚠️ Unaudited |
| Wallet | unknown | ethereum | [`0x6024a5...653404`](./contracts/ethereum-1/0x6024a56a731447eba57f5733aa65d8a519653404/) | ⚠️ Unaudited |
| wATOM | unknown | ethereum | [`0x1cdb22...398b53`](./contracts/ethereum-1/0x1cdb2230dda231dbf3ebbd2a5ef9570a24398b53/) | ⚠️ Unaudited |
| WrappedKRT | unknown | ethereum | [`0xcaaff7...65bff1`](./contracts/ethereum-1/0xcaaff72a8cbbfc5cf343ba4e26f65a257065bff1/) | ⚠️ Unaudited |
| WrappedLuna | unknown | ethereum | [`0xd28777...c91ea9`](./contracts/ethereum-1/0xd2877702675e6ceb975b4a1dff9fb7baf4c91ea9/) | ⚠️ Unaudited |
| WrappedmAAPL | unknown | ethereum | 2 deployments: ethereum [`0xc199e7...df0d42`](./contracts/ethereum-1/0xc199e74f633af6c2f5978a6e4598aaf47edf0d42/); ethereum `0xd36932...d15a84` | ⚠️ Unaudited |
| WrappedmAMZN | unknown | ethereum | [`0x0cae9e...b9caa7`](./contracts/ethereum-1/0x0cae9e4d663793c2a2a0b211c1cf4bbca2b9caa7/) | ⚠️ Unaudited |
| WrappedmBABA | unknown | ethereum | [`0x56aa29...c0af72`](./contracts/ethereum-1/0x56aa298a19c93c6801fdde870fa63ef75cc0af72/) | ⚠️ Unaudited |
| WrappedmGOOGL | unknown | ethereum | [`0x59a921...653442`](./contracts/ethereum-1/0x59a921db27dd6d4d974745b7ffc5c33932653442/) | ⚠️ Unaudited |
| WrappedmIAU | unknown | ethereum | [`0x1d3504...91f373`](./contracts/ethereum-1/0x1d350417d9787e000cc1b95d70e9536dcd91f373/) | ⚠️ Unaudited |
| WrappedMIR | unknown | ethereum | [`0x09a3ec...f2e608`](./contracts/ethereum-1/0x09a3ecafa817268f77be1283176b946c4ff2e608/) | ⚠️ Unaudited |
| WrappedmMSFT | unknown | ethereum | [`0x41bbed...852bd7`](./contracts/ethereum-1/0x41bbedd7286daab5910a1f15d12cbda839852bd7/) | ⚠️ Unaudited |
| WrappedmNFLX | unknown | ethereum | [`0xc8d674...0f9dcd`](./contracts/ethereum-1/0xc8d674114bac90148d11d3c1d33c61835a0f9dcd/) | ⚠️ Unaudited |
| WrappedMNT | unknown | ethereum | [`0x156b36...4bde45`](./contracts/ethereum-1/0x156b36ec68fdbf84a925230ba96cb1ca4c4bde45/) | ⚠️ Unaudited |
| WrappedmQQQ | unknown | ethereum | [`0x13b02c...f57d15`](./contracts/ethereum-1/0x13b02c8de71680e71f0820c996e4be43c2f57d15/) | ⚠️ Unaudited |
| WrappedmSLV | unknown | ethereum | [`0x9d1555...166676`](./contracts/ethereum-1/0x9d1555d8cb3c846bb4f7d5b1b1080872c3166676/) | ⚠️ Unaudited |
| WrappedmTSLA | unknown | ethereum | [`0x21ca39...66fd63`](./contracts/ethereum-1/0x21ca39943e91d704678f5d00b6616650f066fd63/) | ⚠️ Unaudited |
| WrappedmTWTR | unknown | ethereum | [`0xedb041...78cca9`](./contracts/ethereum-1/0xedb0414627e6f1e3f082de65cd4f9c693d78cca9/) | ⚠️ Unaudited |
| WrappedmUSO | unknown | ethereum | 2 deployments: ethereum [`0x31c631...356991`](./contracts/ethereum-1/0x31c63146a635eb7465e5853020b39713ac356991/); ethereum `0x4fd69d...50f214` | ⚠️ Unaudited |
| WrappedmVIXY | unknown | ethereum | [`0xf72fcd...33fc86`](./contracts/ethereum-1/0xf72fcd9dcf0190923fadd44811e240ef4533fc86/) | ⚠️ Unaudited |
| WrappedSCRT | unknown | ethereum | [`0x2b89bf...6968be`](./contracts/ethereum-1/0x2b89bf8ba858cd2fcee1fada378d5cd6936968be/) | ⚠️ Unaudited |
| WrappedSDT | unknown | ethereum | [`0x676ad1...f39ee5`](./contracts/ethereum-1/0x676ad1b33ae6423c6618c1aecf53baa29cf39ee5/) | ⚠️ Unaudited |
| WrappedUST | unknown | ethereum | [`0xa47c8b...661acd`](./contracts/ethereum-1/0xa47c8bf37f92abed4a126bda807a7b7498661acd/) | ⚠️ Unaudited |
| wTAO | unknown | ethereum | [`0x77e06c...5b0a44`](./contracts/ethereum-1/0x77e06c9eccf2e797fd462a92b6d7642ef85b0a44/) | ⚠️ Unaudited |
| XFUND | unknown | ethereum | [`0x892a6f...c87881`](./contracts/ethereum-1/0x892a6f9df0147e5f079b0993f486f9aca3c87881/) | ⚠️ Unaudited |
| XKI | unknown | ethereum | [`0x4f6103...b7f585`](./contracts/ethereum-1/0x4f6103bad230295bacf30f914fda7d4273b7f585/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (78)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Proxy (impl: 0x3b3d57a4205cf54276e79bf53b9748ec8a44a4a2) | proxy | ethereum | `0xc187c9...d1b43a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x076c4a...d9a127` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x079422...0f1e8f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x07e2e3...7403d3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x081b3b...246947` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0a2573...72b621` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x16c86f...cee991` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1d1e70...88d3a5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1d74be...c02250` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x24c3db...abfe93` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x27d026...186786` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x289268...7696a0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x29dbb7...3153a1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2a6fcf...84ddfc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2a9714...73ba2c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2e1b58...ae8c7e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2f97a9...1bc9c4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x308866...1ebf47` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3354fd...97a314` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x33ecc0...60cc92` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x34e26e...96cbef` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x34fe84...480260` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x35abb2...c46216` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x38f8a0...8ff417` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3a3240...92fd7a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3d5c50...73278f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x40209f...a71366` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x439b9e...316623` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x49abac...36978a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4d03d7...4b7068` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x51ad05...5ef28a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5aaa72...195cfd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5dcacd...f7205e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5ee76d...3c9612` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5f82c5...ff418a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6aa9cd...c4f46c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6c5c0d...4338e6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x71b460...75cb5c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x744b85...c57e23` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x78850f...94105e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7bc16c...d25b56` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7caa8e...ef8438` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7ea02a...9a3c30` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8dca56...16b893` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8e16b1...492a4e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8f38e2...c2b8f0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x90ee3b...d16769` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9584ed...b2b3a3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x98590c...3aac4a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x98ecbd...172fa0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9d7f97...cfdfdd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa3fb6d...6f1320` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa643b2...3478d6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xab6bc3...6f001c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xaed340...39b116` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xaf8b85...fbc7d4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xaf9136...cd6373` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb4d6ba...3f22cf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb97ce4...cea3ec` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xbd6221...f106aa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc01a90...9b6080` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc6dc5f...ea1ab5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc79486...05af78` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc8cbec...420ed3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xcb75d3...8624d2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xcd9535...5e4beb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xceac44...7428f6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd1db51...e1afa4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd7419f...fefc92` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe190d4...1b7a9e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe5b29b...ebd81c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe5eb74...db1e28` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe5f262...abe0a0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe96dcc...8c5f26` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xec59e1...e32f6e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf86b84...e80513` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xfbec1c...268f7f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xffe646...311e0f` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [security.md](https://github.com/Gravity-Bridge/Gravity-Docs/blob/main/docs/security.md) | unknown | Audit | n/a | unknown | Direct | contract_name | 1 | low |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x817bbd...e3db35`](./contracts/ethereum-1/0x817bbdbc3e8a1204f3691d14bb44992841e3db35/) | CudosToken | token | $17,273,644.03 | Verified native implementation with $17,273,644.03 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x43373a...bf55e6`](./contracts/ethereum-1/0x43373ae537945085ee1001928e96204034bf55e6/) | TokenImplementation | token | $536,855.84 | Verified native implementation with $536,855.84 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x454725...4b8fcf`](./contracts/ethereum-1/0x4547254e6e3195ce57bc50352193a25c2f4b8fcf/) | CosmosERC20 | token | $20,187.44 | Verified native implementation with $20,187.44 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x147faf...126750`](./contracts/ethereum-1/0x147faf8de9d8d8daae129b187f0d02d819126750/) | GeoToken | token | $7,719.44 | Verified native implementation with $7,719.44 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xebdaba...c0f932`](./contracts/ethereum-1/0xebdaba95213c13bbd738680dbfc3e1b856c0f932/) | BatchTransfer | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1fbef5...daea82`](./contracts/ethereum-1/0x1fbef5a068bfcc4cb1fae9039ea716eaaadaea82/) | Blocklist | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2034c9...2c3f53`](./contracts/ethereum-1/0x2034c9194de45ffe5ba382868115daebe32c3f53/) | BridgeBank | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x07bac3...f2dcbe`](./contracts/ethereum-1/0x07bac35846e5ed502aa91adf6a9e7aa210f2dcbe/) | BridgeToken | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x35e05e...17100d`](./contracts/ethereum-1/0x35e05ea793eb20fe9b75c55bc0c51d8a7017100d/) | Controller | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x72eb0d...25adc3`](./contracts/ethereum-1/0x72eb0df009b8ea2441de78f073338620b625adc3/) | CosmosBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xefb546...680993`](./contracts/ethereum-1/0xefb546ec7babc97af3791033cc3ca1cc1f680993/) | CudosAccessControls | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x92feba...7a2c50`](./contracts/ethereum-1/0x92febab0073d48aa600d95d19e579d4a667a2c50/) | Orchestrator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfb5c68...f77006`](./contracts/ethereum-1/0xfb5c6815ca3ac72ce9f5006869ae67f18bf77006/) | pStake | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb3ccb8...aea97b`](./contracts/ethereum-1/0xb3ccb8fb2533e51893915908ceb85763ceaea97b/) | VestingContract | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcaaff7...65bff1`](./contracts/ethereum-1/0xcaaff72a8cbbfc5cf343ba4e26f65a257065bff1/) | WrappedKRT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd28777...c91ea9`](./contracts/ethereum-1/0xd2877702675e6ceb975b4a1dff9fb7baf4c91ea9/) | WrappedLuna | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc199e7...df0d42`](./contracts/ethereum-1/0xc199e74f633af6c2f5978a6e4598aaf47edf0d42/) | WrappedmAAPL | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0cae9e...b9caa7`](./contracts/ethereum-1/0x0cae9e4d663793c2a2a0b211c1cf4bbca2b9caa7/) | WrappedmAMZN | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x56aa29...c0af72`](./contracts/ethereum-1/0x56aa298a19c93c6801fdde870fa63ef75cc0af72/) | WrappedmBABA | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x59a921...653442`](./contracts/ethereum-1/0x59a921db27dd6d4d974745b7ffc5c33932653442/) | WrappedmGOOGL | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1d3504...91f373`](./contracts/ethereum-1/0x1d350417d9787e000cc1b95d70e9536dcd91f373/) | WrappedmIAU | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x09a3ec...f2e608`](./contracts/ethereum-1/0x09a3ecafa817268f77be1283176b946c4ff2e608/) | WrappedMIR | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x41bbed...852bd7`](./contracts/ethereum-1/0x41bbedd7286daab5910a1f15d12cbda839852bd7/) | WrappedmMSFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc8d674...0f9dcd`](./contracts/ethereum-1/0xc8d674114bac90148d11d3c1d33c61835a0f9dcd/) | WrappedmNFLX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x13b02c...f57d15`](./contracts/ethereum-1/0x13b02c8de71680e71f0820c996e4be43c2f57d15/) | WrappedmQQQ | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9d1555...166676`](./contracts/ethereum-1/0x9d1555d8cb3c846bb4f7d5b1b1080872c3166676/) | WrappedmSLV | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x21ca39...66fd63`](./contracts/ethereum-1/0x21ca39943e91d704678f5d00b6616650f066fd63/) | WrappedmTSLA | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x31c631...356991`](./contracts/ethereum-1/0x31c63146a635eb7465e5853020b39713ac356991/) | WrappedmUSO | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf72fcd...33fc86`](./contracts/ethereum-1/0xf72fcd9dcf0190923fadd44811e240ef4533fc86/) | WrappedmVIXY | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa47c8b...661acd`](./contracts/ethereum-1/0xa47c8bf37f92abed4a126bda807a7b7498661acd/) | WrappedUST | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4f6103...b7f585`](./contracts/ethereum-1/0x4f6103bad230295bacf30f914fda7d4273b7f585/) | XKI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 32 |
| upstream | 9 |
| standard_library | 6 |
| needs_review | 105 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: low=1
- Match method counts: extraction_exact=1

Fork inheritance lineage and inherited audits are included when available.
