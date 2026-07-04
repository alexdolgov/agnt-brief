# Agentic Audit Brief: BiFi

## Project Overview

- Project: BiFi (`bifi`)
- Website: [https://bifi.finance/](https://bifi.finance/)
- Lifecycle: active (Tier 0, 87.7% below peak)
- Generated: 2026-07-03T21:05:35.684Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-b097
- Chains: avalanche, bsc, ethereum, klaytn
- Contract surface: 224 unique implementations (294 raw deployments)
- DeFi Llama TVL: $5,863,316.09
- On-chain TVL (included contracts): $2,096,772.48
- TVL by chain: Ethereum $1,956,884.42 | Bsc $139,888.06

## Project Description

Lending. Structurally: 74 project-authored contract(s) across 3 chain(s); 1 ERC20 token, 2 ERC721 NFTs, 1 Chainlink feed; built on openzeppelin.

### Architecture

The protocol comprises 6 functional families. Its contracts share 26 common project-authored base contract(s) (interestmodel, interesterrors, modifier). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 370; live-surface contracts included: 293 (97 live, 196 unknown).
- Excluded by liveness: 77 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 28/35 (80.0%)
- Deployed-live implementations: 35 of 224 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 28/36
- Verified + Unaudited implementations: 8
- Verified by bytecode match: 0
- Unverified implementations: 188
- Unique implementations: 224
- Raw deployments: 294
- Audits discovered: 7 (7 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-08 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 7 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 28 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 26 | 72.2% | 2021-08 |
| Theori | Tier 2 | 20 | 55.6% | 2021-02 |

## Contract Surface

### ✅ Verified + Audited (28)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ERC20 | token | ethereum | n/a | [`0x2791bf...a2ba81`](./contracts/ethereum-1/0x2791bfd60d232150bff86b39b7146c0eaaa2ba81/) | ✅ Audited |
| TokenHandler | token | ethereum | n/a | 6 deployments: ethereum [`0x128647...e79217`](./contracts/ethereum-1/0x128647690c7733593aa3dd149eebc5e256e79217/); ethereum `0x255676...d10682`; ethereum `0x47be3d...91a65f`; ethereum `0x808c3b...67a9e3`; ethereum `0x93948a...476e9f`; ethereum `0xd76b70...6fc5e3` | ✅ Audited |
| tokenHandler | token | bsc | n/a | 3 deployments: bsc [`0x26d0e4...24c40b`](./contracts/bsc-56/0x26d0e4707af1c1daad8e9ba21b99cda7fd24c40b/); bsc `0xba9de5...34c9f0`; bsc `0xbb9ce7...e6052b` | ✅ Audited |
| TokenHandler | token | bsc | n/a | 5 deployments: bsc [`0x2a2959...57e6b8`](./contracts/bsc-56/0x2a29598cbc17ba112c8fd0e07fbf5402ef57e6b8/); bsc `0x77c59e...15941b`; bsc `0x829ed2...2e8c1e`; bsc `0xb67c54...666d9b`; bsc `0xf86d82...34c3eb` | ✅ Audited |
| CoinHandler | unknown | ethereum | n/a | 2 deployments: ethereum [`0x13000c...f92d78`](./contracts/ethereum-1/0x13000c4a215efe7e414bb329b2f11c39bcf92d78/); ethereum `0x64d18f...a25c33` | ✅ Audited |
| CoinHandler | unknown | ethereum | n/a | 3 deployments: ethereum [`0x58a059...f00580`](./contracts/ethereum-1/0x58a059180901fae4089ac5e775e3ce6333f00580/); ethereum `0xfa5685...46f92b`; bsc `0xcef776...fe2289` | ✅ Audited |
| CoinHandler | unknown | bsc | n/a | 2 deployments: bsc [`0x170b6a...563c18`](./contracts/bsc-56/0x170b6aa872166ec2f8515c2b855c34b6c7563c18/); bsc `0x5553bc...bfdcf1` | ✅ Audited |
| CoinHandler | unknown | avalanche | n/a | 2 deployments: avalanche [`0x3b4418...7f9f69`](./contracts/avalanche-43114/0x3b441812d2081366ae2422eef5a0ec592d7f9f69/); avalanche `0x446881...789db3` | ✅ Audited |
| CoinSI | unknown | avalanche | n/a | 3 deployments: ethereum `0x320c33...3517c7`; bsc `0x17aacf...361407`; avalanche [`0x0a58f7...89f577`](./contracts/avalanche-43114/0x0a58f7955497b9e56d1328512e1ca427d689f577/) | ✅ Audited |
| HandlerManager | governance | ethereum | n/a | 2 deployments: ethereum [`0x913f2d...e36fa5`](./contracts/ethereum-1/0x913f2dee2746cda2ab34106c47abc4a8f4e36fa5/); ethereum `0xfed2ed...8879fb` | ✅ Audited |
| HandlerManager | unknown | bsc | n/a | 2 deployments: bsc [`0x72e419...cf5d0a`](./contracts/bsc-56/0x72e419713551410297b407bf1b61a0dcc1cf5d0a/); bsc `0x8010f9...e2fc75` | ✅ Audited |
| HandlerManager | governance | avalanche | n/a | 2 deployments: ethereum `0x54b932...41b1b5`; avalanche [`0x23964e...95dbc2`](./contracts/avalanche-43114/0x23964e4677e178647bba6fb94f19e9b3ec95dbc2/) | ✅ Audited |
| InterestModel | unknown | bsc | n/a | 15 deployments: ethereum `0x105ea4...9bbf87`; ethereum `0x242310...658f7d`; ethereum `0x29ecab...a60db1`; ethereum `0x614661...97417e`; ethereum `0x7560ad...d68cb6`; ethereum `0x75a7ce...b229c2`; ethereum `0xaf9b1d...97994e`; ethereum `0xcbf361...955829`; bsc [`0x00a29c...267178`](./contracts/bsc-56/0x00a29c8e3a2a8171506b5d67ba4d59441c267178/); bsc `0x73e781...d00f20`; bsc `0xc7b7dc...612e8b`; avalanche `0x25cb77...27f2a0`; avalanche `0x2a8c94...8d71bf`; avalanche `0x46a9d5...079cd7`; avalanche `0xfc36ee...45c29c` | ✅ Audited |
| LiquidationManager | unknown | bsc | n/a | 2 deployments: bsc [`0x1cf842...f2df5f`](./contracts/bsc-56/0x1cf8428c23753d315840293f097bd6d702f2df5f/); avalanche `0x217db0...64b34b` | ✅ Audited |
| ManagerDataStorage | unknown | bsc | n/a | 3 deployments: ethereum `0x34e452...128f4a`; bsc [`0x0a95a3...dbb4d3`](./contracts/bsc-56/0x0a95a3b05da318983741360abe29dcda63dbb4d3/); avalanche `0xe0322f...88c427` | ✅ Audited |
| ManagerFlashLoan | unknown | bsc | n/a | 3 deployments: ethereum `0xe2f26b...8ace37`; bsc [`0x8cc8a0...5c4493`](./contracts/bsc-56/0x8cc8a0d4759d94ecd1e5a0ae2866b3cbe65c4493/); avalanche `0xdef0e8...c98f3b` | ✅ Audited |
| OracleProxy | operational_periphery | ethereum | n/a | 8 deployments: ethereum [`0x0c0420...01f668`](./contracts/ethereum-1/0x0c0420c7aed04b67d8ccef82563af4c8f801f668/); ethereum `0x6ba1dd...507beb`; bsc `0x0ed96e...f61567`; bsc `0xdd80fb...7fa89e`; avalanche `0x3bb4b7...df9fab`; avalanche `0x4d30d8...e21d5d`; avalanche `0x71c5e8...0a4f79`; avalanche `0xef0443...f75e4f` | ✅ Audited |
| PositionStorage | unknown | ethereum | n/a | 3 deployments: ethereum [`0x11a428...eded3a`](./contracts/ethereum-1/0x11a428566ef7039b1fc221992aecaba80aeded3a/); ethereum `0x836c3a...623ba9`; bsc `0x813884...f266f0` | ✅ Audited |
| StrategyLogic | unknown | bsc | n/a | [`0x3513ba...32993f`](./contracts/bsc-56/0x3513bab078e69209d5749291fc540f744d32993f/) | ✅ Audited |
| tokenHandler | token | ethereum | n/a | 5 deployments: ethereum [`0x04189e...bf2e16`](./contracts/ethereum-1/0x04189e20e4691136af0d9bff884cb122a8bf2e16/); ethereum `0x07038d...f84610`; ethereum `0x66a2ea...a33a57`; ethereum `0xf725c0...fa3e8d`; bsc `0xc712bf...2c9b6e` | ✅ Audited |
| TokenHandler | token | ethereum | n/a | 2 deployments: ethereum [`0x38b3a3...3369b8`](./contracts/ethereum-1/0x38b3a3b5b53987c9aaf4c41f3534425ac93369b8/); ethereum `0x986eb5...054076` | ✅ Audited |
| TokenHandler | token | avalanche | n/a | 2 deployments: avalanche [`0x739068...744c5e`](./contracts/avalanche-43114/0x739068b9cb728c18f04cd7e7f0fe2ef707744c5e/); avalanche `0x8385ea...e42d36` | ✅ Audited |
| TokenManager | governance | ethereum | n/a | [`0xfef197...79938f`](./contracts/ethereum-1/0xfef1974aeb87a92e8b8b99b7bc260f116679938f/) | ✅ Audited |
| TokenSI | token | avalanche | n/a | 2 deployments: bsc `0x965025...2e1929`; avalanche [`0x449e4e...eb465e`](./contracts/avalanche-43114/0x449e4e12d8fdc140c31f278352d64f5d1deb465e/) | ✅ Audited |
| UsdcInterestModel | unknown | bsc | n/a | 2 deployments: ethereum `0x864290...0760db`; bsc [`0x26363f...82184d`](./contracts/bsc-56/0x26363f6fb3a5dce8f9bdcf5ae40d772a1582184d/) | ✅ Audited |
| XFactory | registry | ethereum | n/a | 2 deployments: ethereum [`0x9f9347...e4736f`](./contracts/ethereum-1/0x9f9347afc304d5c3c0683a5ed523e5f010e4736f/); ethereum `0xb74e18...60c9b5` | ✅ Audited |
| XFactoryExternal | registry | ethereum | n/a | 2 deployments: ethereum [`0x3d6d4f...8b70e9`](./contracts/ethereum-1/0x3d6d4f3640ae84c0baef0a76c35d1ec5668b70e9/); ethereum `0x97ae43...2988af` | ✅ Audited |
| XFactoryLogic | unknown | bsc | n/a | 2 deployments: bsc [`0x81f2c2...dfc28e`](./contracts/bsc-56/0x81f2c2b38c2c347e353f6e6ee50f9814c3dfc28e/); bsc `0xbcc446...ea7d34` | ✅ Audited |

### ⚠️ Verified + Unaudited (8)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BFCETHModel | unknown | ethereum | n/a | [`0xeace4e...c2b37d`](./contracts/ethereum-1/0xeace4e60f68e20797fc696c870066f1e19c2b37d/) | ⚠️ Unaudited |
| BFCModel | unknown | ethereum | n/a | [`0x488933...ca19b5`](./contracts/ethereum-1/0x488933457e89656d7ef7e69c10f2f80c7aca19b5/) | ⚠️ Unaudited |
| BiFiETHModel | unknown | ethereum | n/a | [`0x18740c...4f11cb`](./contracts/ethereum-1/0x18740cea640cba9ce836dc80ce61c7b9ca4f11cb/) | ⚠️ Unaudited |
| callProxyManagerCallProxyHandlerCallProxyMarketCallProxyUser | governance | ethereum | n/a | [`0x4ce8ac...63b287`](./contracts/ethereum-1/0x4ce8acc2afc1ab5c77915fedb1f74f8d9b63b287/) | ⚠️ Unaudited |
| EtherHandlerProxy | unknown | avalanche | n/a | [`0x8aba88...e67984`](./contracts/avalanche-43114/0x8aba88e8a4ab28319b782199cb17f0001ee67984/) | ⚠️ Unaudited |
| etherLiquidationManager | governance | ethereum | n/a | [`0xfd514b...73285d`](./contracts/ethereum-1/0xfd514b33a361b82fe5d89070db6917cd4f73285d/) | ⚠️ Unaudited |
| Manager | governance | avalanche | n/a | [`0x74326d...a347fd`](./contracts/avalanche-43114/0x74326d2bfbf22312158850ac3b4f7ae8a0a347fd/) | ⚠️ Unaudited |
| ReqTokenProxy | unknown | bsc | n/a | 4 deployments: bsc [`0x1b0ba3...e3d996`](./contracts/bsc-56/0x1b0ba3b6fc27c4189869e4a2ecef2404e3e3d996/); avalanche `0x34da42...865f7e`; avalanche `0xc4d1e9...fc146a`; avalanche `0xe89323...837943` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (188)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x017da9...a949f1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x02574e...ecaa31` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x031c31...97bf89` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x043334...d3aaf4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x046eec...06c1ca` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x05af84...6fec4e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x09a692...8fb9fb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x09c4a0...7b7433` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x09f334...342d38` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0b31fe...17e32f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0d6b0c...4222bd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0e3d83...0c0b08` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x103de8...9d6a9b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x10a8ba...70b364` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x10de54...1876f2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x11851a...fe6bc9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x12186e...206550` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1324c5...33c664` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x13e626...a8397b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x15dccb...392ffd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x168b2d...06dedc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x170721...cb9a07` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x194ead...ed08af` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1bc872...c226cf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1d51c1...330977` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1e92f0...52c926` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1ecfcf...65ad10` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2168da...6fb45c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x26d0e4...24c40b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2747f0...4e5011` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2ae852...1c07e6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2c26bc...f8019a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2c716c...9b243f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x319961...2d3fc0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x325138...fdb8f8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x326e7b...956513` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x34da42...865f7e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x38cd38...cb5ac1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3c3439...5f0670` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3c6ef2...106b31` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4586fb...89af2b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x46043a...0705a5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4a3dbe...86a972` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4dbacd...55de67` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x501b7f...24adc8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x509338...4f36e9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x530357...0b843d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5881b8...740849` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x59fa8e...373917` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5ac691...ad2e93` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5c3cc8...ca5cfa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5ebb52...27944e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x61ce81...f7ebf1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x63e6c8...631f38` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6496ce...983a9f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6638b0...81df64` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6971db...14aeb9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6f46a1...32133e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7069e7...efb4cb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x736a34...7c5c50` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7638aa...b88960` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x78e9b4...ba4b9c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x79dcab...07b922` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7cb14c...50db27` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7d3a66...db5400` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7f9257...aad485` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x80fbd0...1a716c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x829ed2...2e8c1e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x82d48b...6047c5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x831b56...3568d1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8385ea...e42d36` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x844fde...a005a0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x857f5e...f94bee` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8606eb...8c38f7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x86dd17...a89592` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8aba88...e67984` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8d9da0...d16e9c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8dd0c2...434bfc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8eec50...029f12` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8fe43c...f179ae` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x942a9b...16cdd6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x953248...21387c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9a7849...05324a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9cc762...d0d8a0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9e1e4a...f2d43c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9ffef5...cae5d5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa1bd1d...25e220` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa2c2c3...923cba` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa7d0b0...217a45` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa8dcf3...e1e85b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaad3cf...020bcd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xad2690...884df1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xad56db...0502ef` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb169c9...4f1dc4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb25a5f...386da2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb7b1d0...b2878f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb8a621...278765` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb9537d...05e42a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb9e557...b555d7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xba9de5...34c9f0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbffa39...cbbb9f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc31fcb...f5583d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc4d1e9...fc146a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc54d4e...dff2e1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc80ab3...268d85` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xca56c9...38fe49` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcbf606...ac0a33` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcd3efc...73ea18` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcdead0...43d8a5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xceebae...1c972c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcf2fc1...7b611e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd07f52...64430a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd68e26...8c93fb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xddabbf...8c8f26` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe53bd4...5113b7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe89323...837943` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe899f1...df2785` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe8db0e...57689a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe8fe72...3b28b7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xea3b4a...d7c9ad` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xec25e2...54091b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xed0a7a...23237b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xed7b09...81b0f8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xedd2ba...9e8655` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf21dd2...836180` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf2dafc...61cfb5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf2f414...e77db5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf4f6ff...31f191` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf61cb7...7292dd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf86d82...34c3eb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfd36d0...941194` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xff4ad9...bbe079` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x027cb9...17b2e4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x087d63...3247f9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0c7d5a...1cab9c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0dd250...72a627` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x108bff...dd8576` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x16cf55...1808e7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x17cc53...036c3d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1c2cf2...941780` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1de101...903c4e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x24898e...ad8a50` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2ab6bc...dcf6cd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x30a392...da2fd7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x36fea6...45578a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x416a18...4645eb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x439f4f...db8c78` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x488933...ca19b5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4b1791...a9d11d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4bbf98...0c09b7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x517797...ebc8ef` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x52c6cc...5aadcc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x557703...f4ff90` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x60479f...a97c98` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x66d8dc...b9e9e8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6e183f...89858f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7fa719...092716` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x806059...ebf328` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x80f3c1...0ddeb9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x86873c...e85d1e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x875925...5506fb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8df562...10bf7e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9e8cb4...3c2ee9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xabd41c...609641` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb31fd6...7c8cf7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb483c1...4630f1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb503f3...24326c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb7b466...209879` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc127e5...5fdfbf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc59fdd...a88f2d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd41193...728437` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdddb02...929a11` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe0bcab...ebef39` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe33f9e...e40af6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe49900...68882d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xeee856...c85894` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf4e2d5...0055f8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf9b2f6...722b12` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfc4870...7c040d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfd9bbe...8c3758` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | 8 deployments: klaytn `0x07970f...adff89`; klaytn `0x480057...d5f0da`; klaytn `0x4bae7b...7666ee`; klaytn `0x808c70...5caae1`; klaytn `0x829fcf...dbad13`; klaytn `0xa6ade2...8c1598`; klaytn `0xe03487...615043`; klaytn `0xe0e67b...c1ec11` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x2791bf...a2ba81` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x156848...45b2c2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x249017...ef23e0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x66dc86...3949ed` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x8c3be3...e4dc49` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa3d95c...2c741e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb29560...261067` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [bifrost_bifix_audit.pdf](https://github.com/bifrost-platform/BiFi-X/blob/main/docs/bifrost_bifix_audit.pdf) | unknown | Audit | 2021-06 | stale | Direct | contract_name | 36 | high |
| [(ENG)_BiFi_BIFROST_Extension_Theori.pdf](https://github.com/bifrost-platform/BIFI/blob/master/docs/ENG/(ENG)_BiFi_BIFROST_Extension_Theori.pdf) | unknown | Audit | 2021-08 | stale | Direct | n/a | 0 | n/a |
| [(ENG)_BiFi_Lending_Sooho_EN_Public.pdf](https://github.com/bifrost-platform/BIFI/blob/master/docs/ENG/(ENG)_BiFi_Lending_Sooho_EN_Public.pdf) | unknown | Audit | 2020-11 | stale | Direct | contract_name | 65 | high |
| [(ENG)_BiFi_Token_Hexlant_EN.pdf](https://github.com/bifrost-platform/BIFI/blob/master/docs/ENG/(ENG)_BiFi_Token_Hexlant_EN.pdf) | unknown | Audit | 2021-05 | stale | Direct | contract_name | 1 | high |
| [(ENG)_BiFrost_BTC_Extension_CertiK.pdf](https://github.com/bifrost-platform/BIFI/blob/master/docs/ENG/(ENG)_BiFrost_BTC_Extension_CertiK.pdf) | CertiK | Audit | 2021-08 | stale | Direct | n/a | 0 | n/a |
| [bifrost_bifi_audit.pdf](https://github.com/bifrost-platform/BIFI/blob/master/docs/bifrost_bifi_audit.pdf) | Theori | Audit | 2021-02 | stale | Direct | contract_name | 70 | low |
| [theori-audit-rev-2.0.pdf](https://github.com/bifrost-platform/BiFi-staking-protocol/blob/main/docs/theori-audit-rev-2.0.pdf) | Theori | Audit | 2020-12 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x488933...ca19b5`](./contracts/ethereum-1/0x488933457e89656d7ef7e69c10f2f80c7aca19b5/) | BFCModel | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4ce8ac...63b287`](./contracts/ethereum-1/0x4ce8acc2afc1ab5c77915fedb1f74f8d9b63b287/) | callProxyManagerCallProxyHandlerCallProxyMarketCallProxyUser | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x8aba88...e67984`](./contracts/avalanche-43114/0x8aba88e8a4ab28319b782199cb17f0001ee67984/) | EtherHandlerProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfd514b...73285d`](./contracts/ethereum-1/0xfd514b33a361b82fe5d89070db6917cd4f73285d/) | etherLiquidationManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x74326d...a347fd`](./contracts/avalanche-43114/0x74326d2bfbf22312158850ac3b4f7ae8a0a347fd/) | Manager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 81 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 143 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=3, low=1
- Match method counts: extraction_exact=172

Zero-match audit list:

- [2155] (ENG)_BiFi_BIFROST_Extension_Theori.pdf
- [2158] (ENG)_BiFrost_BTC_Extension_CertiK.pdf
- [2160] theori-audit-rev-2.0.pdf

Fork inheritance lineage and inherited audits are included when available.
