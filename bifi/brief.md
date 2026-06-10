# Agentic Audit Brief: BiFi

## Project Overview

- Project: BiFi (`bifi`)
- Website: [https://bifi.finance/](https://bifi.finance/)
- Lifecycle: active (Tier 0, 84.2% below peak)
- Generated: 2026-06-10T21:57:56.287Z
- Pipeline run: v2-pipeline-2026-06-10-5b3b54-7a87
- Chains: avalanche, ethereum, klaytn
- Contract surface: 170 unique implementations (238 raw deployments)
- DeFi Llama TVL: $7,429,579.52
- On-chain TVL (included contracts): $236,661.09
- TVL by chain: Ethereum $236,661.09

## Project Description

BiFi is a cross-chain lending and borrowing platform powered by Bifrost, positioned around native cross-chain functionality without relying on bridges or wrapped tokens. Its current Cross-chain BiFi deployment on Bifrost Network and Binance/BSC should be distinguished from legacy Ethereum, Avalanche, and Klaytn lending deployments that used handler/manager-style contracts and proxy-based upgradeability.

### Architecture

All handler proxies (e.g., UsdtHandlerProxy, DaiHandlerProxy) delegate to shared implementation contracts (TokenHandler or CoinHandler) and are managed by the TokenManager (HandlerManager implementation). The XFactory likely deploys or configures these handlers, forming a unified lending infrastructure.

## Audit Coverage Summary

- Verified implementations audited: 14/46 (30.4%)
- Verified + Unaudited implementations: 31
- Verified by bytecode match: 1
- Unverified implementations: 124
- Unique implementations: 170
- Raw deployments: 238
- Audits discovered: 7
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-08 (stale)
- Staleness: 0 fresh, 0 aging, 7 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 12 | 26.1% | 2021-08 |
| Theori | Tier 2 | 10 | 21.7% | 2021-02 |

## Contract Surface

### ✅ Verified + Audited (14)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| tokenHandler | token | ethereum | 14 deployments: ethereum [`0x04189e...bf2e16`](./contracts/ethereum-1/0x04189e20e4691136af0d9bff884cb122a8bf2e16/); ethereum `0x07038d...f84610`; ethereum `0x128647...e79217`; ethereum `0x255676...d10682`; ethereum `0x38b3a3...3369b8`; ethereum `0x47be3d...91a65f`; ethereum `0x66a2ea...a33a57`; ethereum `0x808c3b...67a9e3`; ethereum `0x93948a...476e9f`; ethereum `0x986eb5...054076`; ethereum `0xd76b70...6fc5e3`; ethereum `0xf725c0...fa3e8d`; avalanche `0x739068...744c5e`; avalanche `0x8385ea...e42d36` | ✅ Audited |
| CoinHandler | unknown | ethereum | 6 deployments: ethereum [`0x13000c...f92d78`](./contracts/ethereum-1/0x13000c4a215efe7e414bb329b2f11c39bcf92d78/); ethereum `0x58a059...f00580`; ethereum `0x64d18f...a25c33`; ethereum `0xfa5685...46f92b`; avalanche `0x3b4418...7f9f69`; avalanche `0x446881...789db3` | ✅ Audited |
| CoinSI | unknown | avalanche | 2 deployments: ethereum `0x320c33...3517c7`; avalanche [`0x0a58f7...89f577`](./contracts/avalanche-43114/0x0a58f7955497b9e56d1328512e1ca427d689f577/) | ✅ Audited |
| HandlerManager | governance | avalanche | 4 deployments: ethereum `0x54b932...41b1b5`; ethereum `0x913f2d...e36fa5`; ethereum `0xfed2ed...8879fb`; avalanche [`0x23964e...95dbc2`](./contracts/avalanche-43114/0x23964e4677e178647bba6fb94f19e9b3ec95dbc2/) | ✅ Audited |
| interestModel | unknown | ethereum | 12 deployments: ethereum [`0x105ea4...9bbf87`](./contracts/ethereum-1/0x105ea44ffa77f517e31f20d7c22ebebf739bbf87/); ethereum `0x242310...658f7d`; ethereum `0x29ecab...a60db1`; ethereum `0x614661...97417e`; ethereum `0x7560ad...d68cb6`; ethereum `0x75a7ce...b229c2`; ethereum `0xaf9b1d...97994e`; ethereum `0xcbf361...955829`; avalanche `0x25cb77...27f2a0`; avalanche `0x2a8c94...8d71bf`; avalanche `0x46a9d5...079cd7`; avalanche `0xfc36ee...45c29c` | ✅ Audited |
| LiquidationManager | governance | avalanche | [`0x217db0...64b34b`](./contracts/avalanche-43114/0x217db0d688889b5b151d26f267082f12f364b34b/) | ✅ Audited |
| managerDataStorage | governance | ethereum | 2 deployments: ethereum [`0x34e452...128f4a`](./contracts/ethereum-1/0x34e45203669aadd0d6ac342538aa7b62c9128f4a/); avalanche `0xe0322f...88c427` | ✅ Audited |
| ManagerFlashLoan | governance | avalanche | 2 deployments: ethereum `0xe2f26b...8ace37`; avalanche [`0xdef0e8...c98f3b`](./contracts/avalanche-43114/0xdef0e8f0c3ab944a015554c83fbcf346d3c98f3b/) | ✅ Audited |
| OracleProxy | operational_periphery | ethereum | 6 deployments: ethereum [`0x0c0420...01f668`](./contracts/ethereum-1/0x0c0420c7aed04b67d8ccef82563af4c8f801f668/); ethereum `0x6ba1dd...507beb`; avalanche `0x3bb4b7...df9fab`; avalanche `0x4d30d8...e21d5d`; avalanche `0x71c5e8...0a4f79`; avalanche `0xef0443...f75e4f` | ✅ Audited |
| PositionStorage | unknown | ethereum | 2 deployments: ethereum [`0x11a428...eded3a`](./contracts/ethereum-1/0x11a428566ef7039b1fc221992aecaba80aeded3a/); ethereum `0x836c3a...623ba9` | ✅ Audited |
| TokenManager | governance | ethereum | [`0xfef197...79938f`](./contracts/ethereum-1/0xfef1974aeb87a92e8b8b99b7bc260f116679938f/) | ✅ Audited |
| TokenSI | token | avalanche | [`0x449e4e...eb465e`](./contracts/avalanche-43114/0x449e4e12d8fdc140c31f278352d64f5d1deb465e/) | ✅ Audited |
| XFactory | registry | ethereum | 2 deployments: ethereum [`0x9f9347...e4736f`](./contracts/ethereum-1/0x9f9347afc304d5c3c0683a5ed523e5f010e4736f/); ethereum `0xb74e18...60c9b5` | ✅ Audited |
| XFactoryExternal | registry | ethereum | 2 deployments: ethereum [`0x3d6d4f...8b70e9`](./contracts/ethereum-1/0x3d6d4f3640ae84c0baef0a76c35d1ec5668b70e9/); ethereum `0x97ae43...2988af` | ✅ Audited |

### ⚠️ Verified + Unaudited (31)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| callProxyManagerCallProxyHandlerCallProxyMarketCallProxyUser | governance | ethereum | [`0x4ce8ac...63b287`](./contracts/ethereum-1/0x4ce8acc2afc1ab5c77915fedb1f74f8d9b63b287/) | ⚠️ Unaudited |
| callProxyManagerCallProxyHandlerCallProxyMarketCallProxyUserCallProxySISafeMath | governance | ethereum | [`0xfa7a7e...9073ff`](./contracts/ethereum-1/0xfa7a7e8639d88e6d024df967401f7c208e9073ff/) | ⚠️ Unaudited |
| CoinHandlerDataStorage | unknown | avalanche | 2 deployments: ethereum `0xbb0aee...17db03`; avalanche [`0x56f243...ea0f18`](./contracts/avalanche-43114/0x56f243c149cae1c3bd5bea8fdc697181e0ea0f18/) | ⚠️ Unaudited |
| CoinInterestModel | unknown | ethereum | 3 deployments: ethereum [`0x00be03...e270e5`](./contracts/ethereum-1/0x00be030392f68736a79415e4c5f378933fe270e5/); avalanche `0x491f5e...e76f25`; avalanche `0x85b863...081d40` | ⚠️ Unaudited |
| CoinSIDataStorage | unknown | avalanche | [`0x33672f...69fab0`](./contracts/avalanche-43114/0x33672fe5df9539ca391e57332557c882c469fab0/) | ⚠️ Unaudited |
| DaiHandlerDataStorage | unknown | ethereum | [`0x459630...c3cfba`](./contracts/ethereum-1/0x4596302baaaeae0732fbdd9cdf7aec5e83c3cfba/) | ⚠️ Unaudited |
| DaiInterestModel | unknown | ethereum | [`0x0b6ad8...53ac76`](./contracts/ethereum-1/0x0b6ad863edd550712c63ff799f28a59d4a53ac76/) | ⚠️ Unaudited |
| DaiSI | unknown | ethereum | [`0x257d6f...2ecde4`](./contracts/ethereum-1/0x257d6f962f23b7848792665ed9513a1ab72ecde4/) | ⚠️ Unaudited |
| EtherHandlerDataStorage | unknown | avalanche | [`0xd3ad10...ebd028`](./contracts/avalanche-43114/0xd3ad10e22f8d74dd73a225b281bbf07cddebd028/) | ⚠️ Unaudited |
| EtherHandlerProxy | unknown | avalanche | [`0x8aba88...e67984`](./contracts/avalanche-43114/0x8aba88e8a4ab28319b782199cb17f0001ee67984/) | ⚠️ Unaudited |
| EtherInterestModel | unknown | avalanche | [`0x7d2da8...ab7529`](./contracts/avalanche-43114/0x7d2da860c2a22f6c6c58d5f004346fcf61ab7529/) | ⚠️ Unaudited |
| etherLiquidationManager | governance | ethereum | [`0xfd514b...73285d`](./contracts/ethereum-1/0xfd514b33a361b82fe5d89070db6917cd4f73285d/) | ⚠️ Unaudited |
| etherManager | governance | ethereum | 2 deployments: ethereum [`0x6e4644...d17a2f`](./contracts/ethereum-1/0x6e464417a4523ae2f3d59665b0b1fc37c1d17a2f/); ethereum `0xc6c99a...99af0d` | ⚠️ Unaudited |
| EtherSIDataStorage | unknown | avalanche | [`0x2b26d2...b6745c`](./contracts/avalanche-43114/0x2b26d2fbd439de9ebdf2b681da32dacbeab6745c/) | ⚠️ Unaudited |
| LinkHandlerDataStorage | unknown | ethereum | [`0xe4c383...9ae23c`](./contracts/ethereum-1/0xe4c383fb3d7046ce7f9e5c537493cd192e9ae23c/) | ⚠️ Unaudited |
| LinkInterestModel | unknown | ethereum | [`0x6323a4...272d7f`](./contracts/ethereum-1/0x6323a4e6fa95a100db47c925d369581e38272d7f/) | ⚠️ Unaudited |
| LinkSI | unknown | ethereum | [`0xc06b71...c37d13`](./contracts/ethereum-1/0xc06b71ec195ccaa98a57dd4ba9e90a7469c37d13/) | ⚠️ Unaudited |
| Manager | governance | avalanche | [`0x74326d...a347fd`](./contracts/avalanche-43114/0x74326d2bfbf22312158850ac3b4f7ae8a0a347fd/) | ⚠️ Unaudited |
| ManagerSlotSetter | governance | ethereum | 2 deployments: ethereum [`0xcd9632...80a453`](./contracts/ethereum-1/0xcd9632707ec422759be2a5b348f8178ff280a453/); avalanche `0xeb86b3...f1b5b3` | ⚠️ Unaudited |
| MarketSIHandlerDataStorage | unknown | ethereum | 9 deployments: ethereum [`0x214692...0629c0`](./contracts/ethereum-1/0x2146922c1d5a8a553afbc051da276814dd0629c0/); ethereum `0x3ff1dd...26f1a0`; ethereum `0x83e0bd...4284c0`; ethereum `0x9c06a3...fb0fb6`; ethereum `0xba9b75...81586d`; ethereum `0xd0d87c...0e0500`; ethereum `0xdb6845...255025`; avalanche `0x9ee793...7cd9ed`; avalanche `0xbf8187...d5992c` | ⚠️ Unaudited |
| Observer | unknown | ethereum | [`0x4acb9f...a23b6f`](./contracts/ethereum-1/0x4acb9f0c1a266fbfbe455a4bbc85f14672a23b6f/) | ⚠️ Unaudited |
| observerOracle | operational_periphery | ethereum | [`0x06c8fe...f8828e`](./contracts/ethereum-1/0x06c8fec203be5b45fadc3f139efdf4444cf8828e/) | ⚠️ Unaudited |
| ReqTokenProxy | token | avalanche | 3 deployments: avalanche [`0x34da42...865f7e`](./contracts/avalanche-43114/0x34da42143b0c6e321ceb76931c637c12bd865f7e/); avalanche `0xc4d1e9...fc146a`; avalanche `0xe89323...837943` | ⚠️ Unaudited |
| Updater | unknown | ethereum | 2 deployments: ethereum [`0x52d5fd...5eb18c`](./contracts/ethereum-1/0x52d5fd317cb3bd71d1c7b24960a8f4b7275eb18c/); ethereum `0x9d4633...43b4b9` | ⚠️ Unaudited |
| UsdcHandlerDataStorage | unknown | avalanche | [`0xe6211b...9f682c`](./contracts/avalanche-43114/0xe6211b248d624e57051a92d5614d12b37f9f682c/) | ⚠️ Unaudited |
| UsdcInterestModel | unknown | ethereum | [`0x864290...0760db`](./contracts/ethereum-1/0x864290a03fa4d75b6f0a2afdf5e2b6213f0760db/) | ⚠️ Unaudited |
| UsdcSIDataStorage | unknown | avalanche | [`0x186766...a8d85a`](./contracts/avalanche-43114/0x18676678690985a08e5a541200ae0df924a8d85a/) | ⚠️ Unaudited |
| UsdtHandlerDataStorage | token | avalanche | 2 deployments: ethereum `0xfdc7d0...6a1c42`; avalanche [`0x244911...37c95c`](./contracts/avalanche-43114/0x2449119d95753bb87fec59bc2ae02ad94137c95c/) | ⚠️ Unaudited |
| UsdtInterestModel | token | ethereum | [`0x4f5f62...18df97`](./contracts/ethereum-1/0x4f5f62a3e013e56be3fcfc9e3b2182525f18df97/) | ⚠️ Unaudited |
| UsdtSI | token | ethereum | [`0x2438b3...68ebae`](./contracts/ethereum-1/0x2438b33ee508069ba1e3feb0ee7eb1a47568ebae/) | ⚠️ Unaudited |
| UsdtSIDataStorage | token | avalanche | [`0xd78fdc...a4d9d5`](./contracts/avalanche-43114/0xd78fdca4864b8c888940765990043dc635a4d9d5/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (1)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| MarketHandlerDataStorage | unknown | avalanche | 9 deployments: ethereum `0x23219f...743047`; ethereum `0x2ed04c...77bb1f`; ethereum `0x7146ed...9e89e8`; ethereum `0x8606eb...8c38f7`; ethereum `0xb7b1d0...b2878f`; ethereum `0xf2f414...e77db5`; ethereum `0xf54c97...32d76b`; avalanche [`0x1074fd...bcba65`](./contracts/avalanche-43114/0x1074fd06b7b1c65f5a450e81ed0245bc90bcba65/); avalanche `0xd37775...3f592b` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (124)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x017da9...a949f1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x02574e...ecaa31` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x031c31...97bf89` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x043334...d3aaf4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x046eec...06c1ca` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x05af84...6fec4e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x09a692...8fb9fb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x09c4a0...7b7433` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x09f334...342d38` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0d6b0c...4222bd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0e3d83...0c0b08` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x103de8...9d6a9b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x10a8ba...70b364` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x10de54...1876f2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x11851a...fe6bc9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x12186e...206550` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1324c5...33c664` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x13e626...a8397b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x15dccb...392ffd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x170721...cb9a07` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x194ead...ed08af` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1bc872...c226cf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1d51c1...330977` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1e92f0...52c926` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1ecfcf...65ad10` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2747f0...4e5011` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2ae852...1c07e6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2c26bc...f8019a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2c716c...9b243f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x319961...2d3fc0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x325138...fdb8f8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x326e7b...956513` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x38cd38...cb5ac1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3c3439...5f0670` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3c6ef2...106b31` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4586fb...89af2b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x46043a...0705a5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4a3dbe...86a972` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4dbacd...55de67` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x501b7f...24adc8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x509338...4f36e9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x530357...0b843d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5881b8...740849` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x59fa8e...373917` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5ac691...ad2e93` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5c3cc8...ca5cfa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5ebb52...27944e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x61ce81...f7ebf1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x63e6c8...631f38` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6496ce...983a9f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6638b0...81df64` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6971db...14aeb9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6f46a1...32133e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7069e7...efb4cb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x736a34...7c5c50` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7638aa...b88960` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x78e9b4...ba4b9c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x79dcab...07b922` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7cb14c...50db27` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7d3a66...db5400` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7f9257...aad485` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x80fbd0...1a716c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x82d48b...6047c5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x831b56...3568d1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x844fde...a005a0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x857f5e...f94bee` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x86dd17...a89592` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8d9da0...d16e9c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8dd0c2...434bfc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8eec50...029f12` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8fe43c...f179ae` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x953248...21387c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9a7849...05324a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9cc762...d0d8a0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9e1e4a...f2d43c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9ffef5...cae5d5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa2c2c3...923cba` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa7d0b0...217a45` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa8dcf3...e1e85b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xaad3cf...020bcd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xad2690...884df1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xad56db...0502ef` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb169c9...4f1dc4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb25a5f...386da2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb8a621...278765` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb9537d...05e42a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb9e557...b555d7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xbffa39...cbbb9f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc31fcb...f5583d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc54d4e...dff2e1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc80ab3...268d85` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xca56c9...38fe49` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xcd3efc...73ea18` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xcdead0...43d8a5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xceebae...1c972c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd07f52...64430a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd68e26...8c93fb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xddabbf...8c8f26` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe53bd4...5113b7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe899f1...df2785` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe8db0e...57689a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe8fe72...3b28b7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xec25e2...54091b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xed0a7a...23237b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xedd2ba...9e8655` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf2dafc...61cfb5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf4f6ff...31f191` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf61cb7...7292dd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xfd36d0...941194` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xff4ad9...bbe079` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | `0x07970f...adff89` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | `0x480057...d5f0da` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | `0x4bae7b...7666ee` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | `0x808c70...5caae1` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | `0x829fcf...dbad13` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | `0xa6ade2...8c1598` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | `0xe03487...615043` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | `0xe0e67b...c1ec11` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x156848...45b2c2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x249017...ef23e0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x66dc86...3949ed` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x8c3be3...e4dc49` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xa3d95c...2c741e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xb29560...261067` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [bifrost_bifix_audit.pdf](https://github.com/bifrost-platform/BiFi-X/blob/main/docs/bifrost_bifix_audit.pdf) | unknown | Audit | 2021-06 | stale | Direct | contract_name | 24 | high |
| [(ENG)_BiFi_BIFROST_Extension_Theori.pdf](https://github.com/bifrost-platform/BIFI/blob/master/docs/ENG/(ENG)_BiFi_BIFROST_Extension_Theori.pdf) | unknown | Audit | 2021-08 | stale | Direct | n/a | 0 | n/a |
| [(ENG)_BiFi_Lending_Sooho_EN_Public.pdf](https://github.com/bifrost-platform/BIFI/blob/master/docs/ENG/(ENG)_BiFi_Lending_Sooho_EN_Public.pdf) | unknown | Audit | 2020-11 | stale | Direct | contract_name | 43 | high |
| [(ENG)_BiFi_Token_Hexlant_EN.pdf](https://github.com/bifrost-platform/BIFI/blob/master/docs/ENG/(ENG)_BiFi_Token_Hexlant_EN.pdf) | unknown | Audit | 2021-05 | stale | Direct | n/a | 0 | n/a |
| [(ENG)_BiFrost_BTC_Extension_CertiK.pdf](https://github.com/bifrost-platform/BIFI/blob/master/docs/ENG/(ENG)_BiFrost_BTC_Extension_CertiK.pdf) | CertiK | Audit | 2021-08 | stale | Direct | n/a | 0 | n/a |
| [BiFi Lending Protocol](https://github.com/bifrost-platform/BIFI/blob/master/docs/bifrost_bifi_audit.pdf) | Theori | Audit | 2021-02 | stale | Direct | contract_name | 46 | low |
| [BiFi Staking & Pooling Protocol](https://github.com/bifrost-platform/BiFi-staking-protocol/blob/main/docs/theori-audit-rev-2.0.pdf) | Theori | Audit | 2020-12 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x4ce8ac...63b287`](./contracts/ethereum-1/0x4ce8acc2afc1ab5c77915fedb1f74f8d9b63b287/) | callProxyManagerCallProxyHandlerCallProxyMarketCallProxyUser | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfa7a7e...9073ff`](./contracts/ethereum-1/0xfa7a7e8639d88e6d024df967401f7c208e9073ff/) | callProxyManagerCallProxyHandlerCallProxyMarketCallProxyUserCallProxySISafeMath | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x56f243...ea0f18`](./contracts/avalanche-43114/0x56f243c149cae1c3bd5bea8fdc697181e0ea0f18/) | CoinHandlerDataStorage | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x00be03...e270e5`](./contracts/ethereum-1/0x00be030392f68736a79415e4c5f378933fe270e5/) | CoinInterestModel | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x33672f...69fab0`](./contracts/avalanche-43114/0x33672fe5df9539ca391e57332557c882c469fab0/) | CoinSIDataStorage | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x459630...c3cfba`](./contracts/ethereum-1/0x4596302baaaeae0732fbdd9cdf7aec5e83c3cfba/) | DaiHandlerDataStorage | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0b6ad8...53ac76`](./contracts/ethereum-1/0x0b6ad863edd550712c63ff799f28a59d4a53ac76/) | DaiInterestModel | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x257d6f...2ecde4`](./contracts/ethereum-1/0x257d6f962f23b7848792665ed9513a1ab72ecde4/) | DaiSI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xd3ad10...ebd028`](./contracts/avalanche-43114/0xd3ad10e22f8d74dd73a225b281bbf07cddebd028/) | EtherHandlerDataStorage | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x8aba88...e67984`](./contracts/avalanche-43114/0x8aba88e8a4ab28319b782199cb17f0001ee67984/) | EtherHandlerProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x7d2da8...ab7529`](./contracts/avalanche-43114/0x7d2da860c2a22f6c6c58d5f004346fcf61ab7529/) | EtherInterestModel | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfd514b...73285d`](./contracts/ethereum-1/0xfd514b33a361b82fe5d89070db6917cd4f73285d/) | etherLiquidationManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6e4644...d17a2f`](./contracts/ethereum-1/0x6e464417a4523ae2f3d59665b0b1fc37c1d17a2f/) | etherManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x2b26d2...b6745c`](./contracts/avalanche-43114/0x2b26d2fbd439de9ebdf2b681da32dacbeab6745c/) | EtherSIDataStorage | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe4c383...9ae23c`](./contracts/ethereum-1/0xe4c383fb3d7046ce7f9e5c537493cd192e9ae23c/) | LinkHandlerDataStorage | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6323a4...272d7f`](./contracts/ethereum-1/0x6323a4e6fa95a100db47c925d369581e38272d7f/) | LinkInterestModel | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc06b71...c37d13`](./contracts/ethereum-1/0xc06b71ec195ccaa98a57dd4ba9e90a7469c37d13/) | LinkSI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x74326d...a347fd`](./contracts/avalanche-43114/0x74326d2bfbf22312158850ac3b4f7ae8a0a347fd/) | Manager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcd9632...80a453`](./contracts/ethereum-1/0xcd9632707ec422759be2a5b348f8178ff280a453/) | ManagerSlotSetter | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x1074fd...bcba65`](./contracts/avalanche-43114/0x1074fd06b7b1c65f5a450e81ed0245bc90bcba65/) | MarketHandlerDataStorage | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x214692...0629c0`](./contracts/ethereum-1/0x2146922c1d5a8a553afbc051da276814dd0629c0/) | MarketSIHandlerDataStorage | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4acb9f...a23b6f`](./contracts/ethereum-1/0x4acb9f0c1a266fbfbe455a4bbc85f14672a23b6f/) | Observer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x06c8fe...f8828e`](./contracts/ethereum-1/0x06c8fec203be5b45fadc3f139efdf4444cf8828e/) | observerOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x34da42...865f7e`](./contracts/avalanche-43114/0x34da42143b0c6e321ceb76931c637c12bd865f7e/) | ReqTokenProxy | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x52d5fd...5eb18c`](./contracts/ethereum-1/0x52d5fd317cb3bd71d1c7b24960a8f4b7275eb18c/) | Updater | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xe6211b...9f682c`](./contracts/avalanche-43114/0xe6211b248d624e57051a92d5614d12b37f9f682c/) | UsdcHandlerDataStorage | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x864290...0760db`](./contracts/ethereum-1/0x864290a03fa4d75b6f0a2afdf5e2b6213f0760db/) | UsdcInterestModel | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x186766...a8d85a`](./contracts/avalanche-43114/0x18676678690985a08e5a541200ae0df924a8d85a/) | UsdcSIDataStorage | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x244911...37c95c`](./contracts/avalanche-43114/0x2449119d95753bb87fec59bc2ae02ad94137c95c/) | UsdtHandlerDataStorage | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4f5f62...18df97`](./contracts/ethereum-1/0x4f5f62a3e013e56be3fcfc9e3b2182525f18df97/) | UsdtInterestModel | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2438b3...68ebae`](./contracts/ethereum-1/0x2438b33ee508069ba1e3feb0ee7eb1a47568ebae/) | UsdtSI | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xd78fdc...a4d9d5`](./contracts/avalanche-43114/0xd78fdca4864b8c888940765990043dc635a4d9d5/) | UsdtSIDataStorage | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 131 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 39 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2, low=1
- Match method counts: extraction_exact=113

Zero-match audit list:

- [2155] (ENG)_BiFi_BIFROST_Extension_Theori.pdf
- [2157] (ENG)_BiFi_Token_Hexlant_EN.pdf
- [2158] (ENG)_BiFrost_BTC_Extension_CertiK.pdf
- [2160] BiFi Staking & Pooling Protocol

Fork inheritance lineage and inherited audits are included when available.
