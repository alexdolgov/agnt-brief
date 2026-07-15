# Agentic Audit Brief: BiFi

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 7 (0 matched; 7 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: BiFi (`bifi`)
- Website: [https://bifi.finance/](https://bifi.finance/)
- Lifecycle: active (Tier 0, 87.7% below peak)
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: avalanche, bsc, ethereum, kaia
- Contract surface: 251 unique implementations (370 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $5,863,316.09
- On-chain TVL (included contracts): $2,096,772.48
- TVL by chain: Ethereum $1,956,884.42 | Bsc $139,888.06

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for BiFi in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 0; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 251 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 20
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/66
- Verified + Unaudited implementations: 65
- Verified by bytecode match: 1
- Unverified implementations: 185
- Unique implementations: 251
- Raw deployments: 370
- Audits discovered: 7 (7 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-08 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 7 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (65)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ERC20 | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2791bf...a2ba81` | ⚠️ Unaudited |
| TokenHandler | token | non_address_book | non_address_book_inventory (excluded) | 5 | ethereum | n/a | 6 deployments: ethereum `0x128647...e79217`; ethereum `0x255676...d10682`; ethereum `0x47be3d...91a65f`; ethereum `0x808c3b...67a9e3`; ethereum `0x93948a...476e9f`; ethereum `0xd76b70...6fc5e3` | ⚠️ Unaudited |
| tokenHandler | token | non_address_book | non_address_book_inventory (excluded) | 2 | bsc | n/a | 3 deployments: bsc `0x26d0e4...24c40b`; bsc `0xba9de5...34c9f0`; bsc `0xbb9ce7...e6052b` | ⚠️ Unaudited |
| TokenHandler | token | non_address_book | non_address_book_inventory (excluded) | 4 | bsc | n/a | 5 deployments: bsc `0x2a2959...57e6b8`; bsc `0x77c59e...15941b`; bsc `0x829ed2...2e8c1e`; bsc `0xb67c54...666d9b`; bsc `0xf86d82...34c3eb` | ⚠️ Unaudited |
| BEP721 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x522b3a...d526f0` | ⚠️ Unaudited |
| BFCETHModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeace4e...c2b37d` | ⚠️ Unaudited |
| BFCModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x488933...ca19b5` | ⚠️ Unaudited |
| BiFiETHModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x18740c...4f11cb` | ⚠️ Unaudited |
| callProxyManagerCallProxyHandlerCallProxyMarketCallProxyUser | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ce8ac...63b287` | ⚠️ Unaudited |
| callProxyManagerCallProxyHandlerCallProxyMarketCallProxyUserCallProxySISafeMath | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: ethereum `0xfa7a7e...9073ff`; bsc `0xea0c08...2926d5` | ⚠️ Unaudited |
| CoinHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x13000c...f92d78`; ethereum `0x64d18f...a25c33` | ⚠️ Unaudited |
| CoinHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x58a059...f00580`; ethereum `0xfa5685...46f92b`; bsc `0xcef776...fe2289` | ⚠️ Unaudited |
| CoinHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x170b6a...563c18`; bsc `0x5553bc...bfdcf1` | ⚠️ Unaudited |
| CoinHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x3b4418...7f9f69`; avalanche `0x446881...789db3` | ⚠️ Unaudited |
| CoinHandlerDataStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 3 deployments: ethereum `0xbb0aee...17db03`; bsc `0xfc2378...57cefe`; avalanche `0x56f243...ea0f18` | ⚠️ Unaudited |
| CoinInterestModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x00be03...e270e5`; bsc `0x18be17...127fc3`; avalanche `0x491f5e...e76f25`; avalanche `0x85b863...081d40` | ⚠️ Unaudited |
| CoinSI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 3 deployments: ethereum `0x320c33...3517c7`; bsc `0x17aacf...361407`; avalanche `0x0a58f7...89f577` | ⚠️ Unaudited |
| CoinSIDataStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x33672f...69fab0` | ⚠️ Unaudited |
| DaiHandlerDataStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x459630...c3cfba`; bsc `0x619817...ffc204` | ⚠️ Unaudited |
| DaiInterestModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x0b6ad8...53ac76`; bsc `0xb8621b...ea23c2` | ⚠️ Unaudited |
| DaiSI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x257d6f...2ecde4` | ⚠️ Unaudited |
| DaiSIDataStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1fb028...eb384e` | ⚠️ Unaudited |
| ERC721 | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3aff7b...915924` | ⚠️ Unaudited |
| EtherHandlerDataStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: bsc `0xf852d4...a101d2`; avalanche `0xd3ad10...ebd028` | ⚠️ Unaudited |
| EtherHandlerProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8aba88...e67984` | ⚠️ Unaudited |
| EtherInterestModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: bsc `0xca62d4...4a198e`; avalanche `0x7d2da8...ab7529` | ⚠️ Unaudited |
| etherLiquidationManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd514b...73285d` | ⚠️ Unaudited |
| etherManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x6e4644...d17a2f`; ethereum `0xc6c99a...99af0d` | ⚠️ Unaudited |
| EtherSIDataStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: bsc `0x3560c0...11a866`; avalanche `0x2b26d2...b6745c` | ⚠️ Unaudited |
| HandlerManager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x913f2d...e36fa5`; ethereum `0xfed2ed...8879fb` | ⚠️ Unaudited |
| HandlerManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x72e419...cf5d0a`; bsc `0x8010f9...e2fc75` | ⚠️ Unaudited |
| HandlerManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: ethereum `0x54b932...41b1b5`; avalanche `0x23964e...95dbc2` | ⚠️ Unaudited |
| InterestModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 15 deployments: ethereum `0x105ea4...9bbf87`; ethereum `0x242310...658f7d`; ethereum `0x29ecab...a60db1`; ethereum `0x614661...97417e`; ethereum `0x7560ad...d68cb6`; ethereum `0x75a7ce...b229c2`; ethereum `0xaf9b1d...97994e`; ethereum `0xcbf361...955829`; bsc `0x00a29c...267178`; bsc `0x73e781...d00f20`; bsc `0xc7b7dc...612e8b`; avalanche `0x25cb77...27f2a0`; avalanche `0x2a8c94...8d71bf`; avalanche `0x46a9d5...079cd7`; avalanche `0xfc36ee...45c29c` | ⚠️ Unaudited |
| LinkHandlerDataStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe4c383...9ae23c` | ⚠️ Unaudited |
| LinkInterestModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6323a4...272d7f` | ⚠️ Unaudited |
| LinkSI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc06b71...c37d13` | ⚠️ Unaudited |
| LiquidationManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x1cf842...f2df5f`; avalanche `0x217db0...64b34b` | ⚠️ Unaudited |
| Manager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: bsc `0x9c9d3a...1a9bd6`; avalanche `0x74326d...a347fd` | ⚠️ Unaudited |
| ManagerDataStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: ethereum `0x34e452...128f4a`; bsc `0x0a95a3...dbb4d3`; avalanche `0xe0322f...88c427` | ⚠️ Unaudited |
| ManagerFlashLoan | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: ethereum `0xe2f26b...8ace37`; bsc `0x8cc8a0...5c4493`; avalanche `0xdef0e8...c98f3b` | ⚠️ Unaudited |
| ManagerSlotSetter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: ethereum `0xcd9632...80a453`; bsc `0x8c0b65...ac49ad`; avalanche `0xeb86b3...f1b5b3` | ⚠️ Unaudited |
| MarketSIHandlerDataStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 13 deployments: ethereum `0x214692...0629c0`; ethereum `0x3ff1dd...26f1a0`; ethereum `0x83e0bd...4284c0`; ethereum `0x9c06a3...fb0fb6`; ethereum `0xba9b75...81586d`; ethereum `0xd0d87c...0e0500`; ethereum `0xdb6845...255025`; bsc `0x073646...11f7a7`; bsc `0x38f647...0f7712`; bsc `0x6b6106...06778d`; bsc `0xc86097...dd5488`; avalanche `0x9ee793...7cd9ed`; avalanche `0xbf8187...d5992c` | ⚠️ Unaudited |
| Observer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: ethereum `0x4acb9f...a23b6f`; bsc `0x2e092d...8df97e` | ⚠️ Unaudited |
| observerOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x06c8fe...f8828e`; bsc `0xaa2e64...360d60` | ⚠️ Unaudited |
| OracleProxy | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 8 deployments: ethereum `0x0c0420...01f668`; ethereum `0x6ba1dd...507beb`; bsc `0x0ed96e...f61567`; bsc `0xdd80fb...7fa89e`; avalanche `0x3bb4b7...df9fab`; avalanche `0x4d30d8...e21d5d`; avalanche `0x71c5e8...0a4f79`; avalanche `0xef0443...f75e4f` | ⚠️ Unaudited |
| PositionStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x11a428...eded3a`; ethereum `0x836c3a...623ba9`; bsc `0x813884...f266f0` | ⚠️ Unaudited |
| ReqTokenProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x1b0ba3...e3d996`; avalanche `0x34da42...865f7e`; avalanche `0xc4d1e9...fc146a`; avalanche `0xe89323...837943` | ⚠️ Unaudited |
| StrategyLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3513ba...32993f` | ⚠️ Unaudited |
| tokenHandler | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x04189e...bf2e16`; ethereum `0x07038d...f84610`; ethereum `0x66a2ea...a33a57`; ethereum `0xf725c0...fa3e8d`; bsc `0xc712bf...2c9b6e` | ⚠️ Unaudited |
| TokenHandler | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x38b3a3...3369b8`; ethereum `0x986eb5...054076` | ⚠️ Unaudited |
| TokenHandler | token | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x739068...744c5e`; avalanche `0x8385ea...e42d36` | ⚠️ Unaudited |
| TokenManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfef197...79938f` | ⚠️ Unaudited |
| TokenSI | token | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: bsc `0x965025...2e1929`; avalanche `0x449e4e...eb465e` | ⚠️ Unaudited |
| Updater | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: ethereum `0x52d5fd...5eb18c`; ethereum `0x9d4633...43b4b9`; bsc `0x17eeba...11573d`; bsc `0xe468f7...5b3b24` | ⚠️ Unaudited |
| UsdcHandlerDataStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0xa4917b...529b07`; avalanche `0xe6211b...9f682c` | ⚠️ Unaudited |
| UsdcInterestModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: ethereum `0x864290...0760db`; bsc `0x26363f...82184d` | ⚠️ Unaudited |
| UsdcSIDataStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: bsc `0xd32335...4c8910`; avalanche `0x186766...a8d85a` | ⚠️ Unaudited |
| UsdtHandlerDataStorage | token | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 3 deployments: ethereum `0xfdc7d0...6a1c42`; bsc `0x3a5444...72cb37`; avalanche `0x244911...37c95c` | ⚠️ Unaudited |
| UsdtInterestModel | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x4f5f62...18df97`; bsc `0x653db9...4c6b79` | ⚠️ Unaudited |
| UsdtSI | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2438b3...68ebae` | ⚠️ Unaudited |
| UsdtSIDataStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x327dce...cbf0b4`; avalanche `0xd78fdc...a4d9d5` | ⚠️ Unaudited |
| XFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x9f9347...e4736f`; ethereum `0xb74e18...60c9b5` | ⚠️ Unaudited |
| XFactoryExternal | registry | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x3d6d4f...8b70e9`; ethereum `0x97ae43...2988af` | ⚠️ Unaudited |
| XFactoryExternal | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x618343...852bae` | ⚠️ Unaudited |
| XFactoryLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x81f2c2...dfc28e`; bsc `0xbcc446...ea7d34` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (1)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| MarketHandlerDataStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 12 deployments: ethereum `0x23219f...743047`; ethereum `0x2ed04c...77bb1f`; ethereum `0x7146ed...9e89e8`; ethereum `0x8606eb...8c38f7`; ethereum `0xb7b1d0...b2878f`; ethereum `0xf2f414...e77db5`; ethereum `0xf54c97...32d76b`; bsc `0x042f2b...7c8766`; bsc `0x8f6181...844558`; bsc `0xb766ac...729fd7`; avalanche `0x1074fd...bcba65`; avalanche `0xd37775...3f592b` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (185)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x017da9...a949f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02574e...ecaa31` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x031c31...97bf89` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x043334...d3aaf4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x046eec...06c1ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x05af84...6fec4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09a692...8fb9fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09c4a0...7b7433` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09f334...342d38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b31fe...17e32f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d6b0c...4222bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e3d83...0c0b08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x103de8...9d6a9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10a8ba...70b364` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10de54...1876f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11851a...fe6bc9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x12186e...206550` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1324c5...33c664` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x13e626...a8397b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x15dccb...392ffd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x168b2d...06dedc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x170721...cb9a07` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x194ead...ed08af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1bc872...c226cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d51c1...330977` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e92f0...52c926` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ecfcf...65ad10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2168da...6fb45c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x26d0e4...24c40b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2747f0...4e5011` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ae852...1c07e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c26bc...f8019a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c716c...9b243f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x319961...2d3fc0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x325138...fdb8f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x326e7b...956513` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x34da42...865f7e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x38cd38...cb5ac1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c3439...5f0670` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c6ef2...106b31` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4586fb...89af2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x46043a...0705a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a3dbe...86a972` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4dbacd...55de67` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x501b7f...24adc8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x509338...4f36e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x530357...0b843d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5881b8...740849` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x59fa8e...373917` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ac691...ad2e93` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5c3cc8...ca5cfa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ebb52...27944e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x61ce81...f7ebf1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x63e6c8...631f38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6496ce...983a9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6638b0...81df64` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6971db...14aeb9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6f46a1...32133e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7069e7...efb4cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x736a34...7c5c50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7638aa...b88960` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x78e9b4...ba4b9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x79dcab...07b922` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7cb14c...50db27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d3a66...db5400` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f9257...aad485` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x80fbd0...1a716c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x829ed2...2e8c1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x82d48b...6047c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x831b56...3568d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8385ea...e42d36` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x844fde...a005a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x857f5e...f94bee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x86dd17...a89592` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8aba88...e67984` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d9da0...d16e9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8dd0c2...434bfc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8eec50...029f12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8fe43c...f179ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x942a9b...16cdd6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x953248...21387c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9a7849...05324a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9cc762...d0d8a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9e1e4a...f2d43c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9ffef5...cae5d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa1bd1d...25e220` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2c2c3...923cba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa7d0b0...217a45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa8dcf3...e1e85b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaad3cf...020bcd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xad2690...884df1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xad56db...0502ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb169c9...4f1dc4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb25a5f...386da2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8a621...278765` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb9537d...05e42a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb9e557...b555d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xba9de5...34c9f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbffa39...cbbb9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc31fcb...f5583d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc4d1e9...fc146a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc54d4e...dff2e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc80ab3...268d85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca56c9...38fe49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcbf606...ac0a33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcd3efc...73ea18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcdead0...43d8a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xceebae...1c972c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf2fc1...7b611e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd07f52...64430a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd68e26...8c93fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xddabbf...8c8f26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe53bd4...5113b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe89323...837943` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe899f1...df2785` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe8db0e...57689a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe8fe72...3b28b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xea3b4a...d7c9ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xec25e2...54091b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xed0a7a...23237b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xed7b09...81b0f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xedd2ba...9e8655` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf21dd2...836180` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf2dafc...61cfb5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf4f6ff...31f191` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf61cb7...7292dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf86d82...34c3eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd36d0...941194` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff4ad9...bbe079` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x027cb9...17b2e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x087d63...3247f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0c7d5a...1cab9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0dd250...72a627` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x108bff...dd8576` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x16cf55...1808e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x17cc53...036c3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1c2cf2...941780` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1de101...903c4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x24898e...ad8a50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2ab6bc...dcf6cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x30a392...da2fd7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x36fea6...45578a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x416a18...4645eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x439f4f...db8c78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x488933...ca19b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4b1791...a9d11d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4bbf98...0c09b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x517797...ebc8ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x52c6cc...5aadcc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x557703...f4ff90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x60479f...a97c98` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x66d8dc...b9e9e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6e183f...89858f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7fa719...092716` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x806059...ebf328` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x80f3c1...0ddeb9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x86873c...e85d1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x875925...5506fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8df562...10bf7e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9e8cb4...3c2ee9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xabd41c...609641` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb31fd6...7c8cf7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb483c1...4630f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb503f3...24326c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb7b466...209879` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc127e5...5fdfbf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc59fdd...a88f2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd41193...728437` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdddb02...929a11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe0bcab...ebef39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe33f9e...e40af6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe49900...68882d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xeee856...c85894` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf4e2d5...0055f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf9b2f6...722b12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfc4870...7c040d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfd9bbe...8c3758` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | kaia | n/a | 8 deployments: kaia `0x07970f...adff89`; kaia `0x480057...d5f0da`; kaia `0x4bae7b...7666ee`; kaia `0x808c70...5caae1`; kaia `0x829fcf...dbad13`; kaia `0xa6ade2...8c1598`; kaia `0xe03487...615043`; kaia `0xe0e67b...c1ec11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | kaia | n/a | `0x2791bf...a2ba81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x156848...45b2c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x249017...ef23e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x66dc86...3949ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8c3be3...e4dc49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa3d95c...2c741e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb29560...261067` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [bifrost_bifix_audit.pdf](https://github.com/bifrost-platform/BiFi-X/blob/main/docs/bifrost_bifix_audit.pdf) | unknown | Audit | 2021-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 11 | high |
| [(ENG)_BiFi_BIFROST_Extension_Theori.pdf](https://github.com/bifrost-platform/BIFI/blob/master/docs/ENG/(ENG)_BiFi_BIFROST_Extension_Theori.pdf) | unknown | Audit | 2021-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [(ENG)_BiFi_Lending_Sooho_EN_Public.pdf](https://github.com/bifrost-platform/BIFI/blob/master/docs/ENG/(ENG)_BiFi_Lending_Sooho_EN_Public.pdf) | unknown | Audit | 2020-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 22 | high |
| [(ENG)_BiFi_Token_Hexlant_EN.pdf](https://github.com/bifrost-platform/BIFI/blob/master/docs/ENG/(ENG)_BiFi_Token_Hexlant_EN.pdf) | unknown | Audit | 2021-05 | stale | Direct | address | no match | 0 | 0 | 0 | 1 | high |
| [(ENG)_BiFrost_BTC_Extension_CertiK.pdf](https://github.com/bifrost-platform/BIFI/blob/master/docs/ENG/(ENG)_BiFrost_BTC_Extension_CertiK.pdf) | CertiK | Audit | 2021-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 16 | high |
| [bifrost_bifi_audit.pdf](https://github.com/bifrost-platform/BIFI/blob/master/docs/bifrost_bifi_audit.pdf) | Theori | Audit | 2021-02 | stale | Direct | address | no match | 0 | 0 | 0 | 215 | low |
| [theori-audit-rev-2.0.pdf](https://github.com/bifrost-platform/BiFi-staking-protocol/blob/main/docs/theori-audit-rev-2.0.pdf) | Theori | Audit | 2020-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | medium |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2154] bifrost_bifix_audit.pdf — no match: Scope section explicitly mentions BiFi and BiFi-X. Appendix lists external APIs for ManagerFlashLoan, BiFiNFT, XFactory, PositionStorage, ProductProxy, StrategyLogic. TokenManager, HandlerManager, InterestModel are mentioned in findings/recommendations.
- [2155] (ENG)_BiFi_BIFROST_Extension_Theori.pdf — no match: Extracted contract names from findings and recommendations. Audit date from executive summary start date.
- [2156] (ENG)_BiFi_Lending_Sooho_EN_Public.pdf — no match: All contracts from the file tree and analysis sections are included. The audit date is from the cover page: 'NOV. 13, 2020'.
- [2157] (ENG)_BiFi_Token_Hexlant_EN.pdf — no match: The audit report covers a single contract named Bifi (ERC20 token). The contract address is provided in the certification section. The report date is explicitly given as '10 MAY 2021' on the cover and 'DATE 2021/05/10' in the published information.
- [2158] (ENG)_BiFrost_BTC_Extension_CertiK.pdf — no match: All contracts listed in the Audit Scope table were extracted. The audit date is explicitly given as 'Delivery Date Aug 03, 2021'.
- [2159] bifrost_bifi_audit.pdf — no match: The report text is garbled and contains many function names and variables, but the scope section lists only a few contract addresses. Most extracted names are functions or variables, not contracts. Only the addresses in the scope table are clearly in scope.
- [2160] theori-audit-rev-2.0.pdf — no match: The scope section lists 'Smart contract' without a specific name or file path. The contract is referred to as 'RewardLane' throughout the report. No other contract names are identifiable.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| bifrost_bifix_audit.pdf | BiFi | unmatched — not counted | — | mentioned as lending contract in scope | no |
| bifrost_bifix_audit.pdf | BiFi-X | unmatched — not counted | — | mentioned as companion product in scope | no |
| bifrost_bifix_audit.pdf | TokenManager | unmatched — not counted | — | mentioned in Issue #4 | no |
| bifrost_bifix_audit.pdf | HandlerManager | unmatched — not counted | — | mentioned in Issue #4 | no |
| bifrost_bifix_audit.pdf | ManagerFlashLoan | unmatched — not counted | — | listed in Appendix: External APIs – Flash Loan | no |
| bifrost_bifix_audit.pdf | BiFiNFT | unmatched — not counted | — | listed in Appendix: External APIs – BiFi-X | no |
| bifrost_bifix_audit.pdf | XFactory | unmatched — not counted | — | listed in Appendix: External APIs – BiFi-X | no |
| bifrost_bifix_audit.pdf | PositionStorage | unmatched — not counted | — | listed in Appendix: External APIs – BiFi-X | no |
| bifrost_bifix_audit.pdf | ProductProxy | unmatched — not counted | — | listed in Appendix: External APIs – BiFi-X | no |
| bifrost_bifix_audit.pdf | StrategyLogic | unmatched — not counted | — | listed in Appendix: External APIs – BiFi-X | no |
| bifrost_bifix_audit.pdf | InterestModel | unmatched — not counted | — | mentioned in Recommendation #1 | no |
| (ENG)_BiFi_BIFROST_Extension_Theori.pdf | BTCPureLibs | unmatched — not counted | — | mentioned in Issue #1 and #2 | no |
| (ENG)_BiFi_BIFROST_Extension_Theori.pdf | BTCEntryLogicExternal | unmatched — not counted | — | mentioned in Issue #3 | no |
| (ENG)_BiFi_BIFROST_Extension_Theori.pdf | FundInternal | unmatched — not counted | — | mentioned in Issue #4 | no |
| (ENG)_BiFi_BIFROST_Extension_Theori.pdf | FundExternal | unmatched — not counted | — | mentioned in Recommendation #2 | no |
| (ENG)_BiFi_BIFROST_Extension_Theori.pdf | BTCEntryLogicInternal | unmatched — not counted | — | mentioned in Recommendations #3, #4, #5 | no |
| (ENG)_BiFi_Lending_Sooho_EN_Public.pdf | callProxy | unmatched — not counted | — | listed in file tree and analysis | no |
| (ENG)_BiFi_Lending_Sooho_EN_Public.pdf | interestModel | unmatched — not counted | — | listed in file tree and analysis | no |
| (ENG)_BiFi_Lending_Sooho_EN_Public.pdf | coinHandler | unmatched — not counted | — | listed in file tree and analysis | no |
| (ENG)_BiFi_Lending_Sooho_EN_Public.pdf | tokenHandler | unmatched — not counted | — | listed in file tree and analysis | no |
| (ENG)_BiFi_Lending_Sooho_EN_Public.pdf | handlerDataStorage | unmatched — not counted | — | listed in file tree and analysis | no |
| (ENG)_BiFi_Lending_Sooho_EN_Public.pdf | liquidationManager | unmatched — not counted | — | listed in file tree and analysis | no |
| (ENG)_BiFi_Lending_Sooho_EN_Public.pdf | managerDataStorage | unmatched — not counted | — | listed in file tree | no |
| (ENG)_BiFi_Lending_Sooho_EN_Public.pdf | tokenManager | unmatched — not counted | — | listed in file tree and analysis | no |
| (ENG)_BiFi_Lending_Sooho_EN_Public.pdf | oracle | unmatched — not counted | — | listed in file tree | no |
| (ENG)_BiFi_Lending_Sooho_EN_Public.pdf | oracleProxy | unmatched — not counted | — | listed in file tree | no |
| (ENG)_BiFi_Lending_Sooho_EN_Public.pdf | safeMath | unmatched — not counted | — | listed in file tree | no |
| (ENG)_BiFi_Lending_Sooho_EN_Public.pdf | token | unmatched — not counted | — | listed in file tree | no |
| (ENG)_BiFi_Lending_Sooho_EN_Public.pdf | IERC20 | unmatched — not counted | — | listed in file tree | no |
| (ENG)_BiFi_Lending_Sooho_EN_Public.pdf | interestModelInterface | unmatched — not counted | — | listed in file tree | no |
| (ENG)_BiFi_Lending_Sooho_EN_Public.pdf | managerDataStorageInterface | unmatched — not counted | — | listed in file tree | no |
| (ENG)_BiFi_Lending_Sooho_EN_Public.pdf | marketHandlerDataStorageInterface | unmatched — not counted | — | listed in file tree | no |
| (ENG)_BiFi_Lending_Sooho_EN_Public.pdf | marketHandlerInterface | unmatched — not counted | — | listed in file tree | no |
| (ENG)_BiFi_Lending_Sooho_EN_Public.pdf | marketManagerInterface | unmatched — not counted | — | listed in file tree | no |
| (ENG)_BiFi_Lending_Sooho_EN_Public.pdf | oracleInterface | unmatched — not counted | — | listed in file tree | no |
| (ENG)_BiFi_Lending_Sooho_EN_Public.pdf | oracleProxyInterface | unmatched — not counted | — | listed in file tree | no |
| (ENG)_BiFi_Lending_Sooho_EN_Public.pdf | safeMathInterface | unmatched — not counted | — | listed in file tree | no |
| (ENG)_BiFi_Lending_Sooho_EN_Public.pdf | tokenInterface | unmatched — not counted | — | listed in file tree | no |
| (ENG)_BiFi_Token_Hexlant_EN.pdf | Bifi | unmatched — not counted | — | The report states 'The Bifi contract is designed with the contract code provided by OpenZeppelin' and includes the full source code of ERC20.sol which defines the Bifi token contract. | no |
| (ENG)_BiFrost_BTC_Extension_CertiK.pdf | BTCTokenAdapter | unmatched — not counted | — | listed in scope table | no |
| (ENG)_BiFrost_BTC_Extension_CertiK.pdf | BTCEvents | unmatched — not counted | — | listed in scope table | no |
| (ENG)_BiFrost_BTC_Extension_CertiK.pdf | BTCDataStructure | unmatched — not counted | — | listed in scope table | no |
| (ENG)_BiFrost_BTC_Extension_CertiK.pdf | BTCStorage | unmatched — not counted | — | listed in scope table | no |
| (ENG)_BiFrost_BTC_Extension_CertiK.pdf | BTCDataStorage | unmatched — not counted | — | listed in scope table | no |
| (ENG)_BiFrost_BTC_Extension_CertiK.pdf | BytesModule | unmatched — not counted | — | listed in scope table | no |
| (ENG)_BiFrost_BTC_Extension_CertiK.pdf | SetDataStructure | unmatched — not counted | — | listed in scope table | no |
| (ENG)_BiFrost_BTC_Extension_CertiK.pdf | BTCEntryLogicExternal | unmatched — not counted | — | listed in scope table | no |
| (ENG)_BiFrost_BTC_Extension_CertiK.pdf | BTCInternalBase | unmatched — not counted | — | listed in scope table | no |
| (ENG)_BiFrost_BTC_Extension_CertiK.pdf | ResolverStorage | unmatched — not counted | — | listed in scope table | no |
| (ENG)_BiFrost_BTC_Extension_CertiK.pdf | ResolverStructure | unmatched — not counted | — | listed in scope table | no |
| (ENG)_BiFrost_BTC_Extension_CertiK.pdf | ResolverEntryLogic | unmatched — not counted | — | listed in scope table | no |
| (ENG)_BiFrost_BTC_Extension_CertiK.pdf | ScorePotStorage | unmatched — not counted | — | listed in scope table | no |
| (ENG)_BiFrost_BTC_Extension_CertiK.pdf | ScorePotStructure | unmatched — not counted | — | listed in scope table | no |
| (ENG)_BiFrost_BTC_Extension_CertiK.pdf | ScorePot | unmatched — not counted | — | listed in scope table | no |
| (ENG)_BiFrost_BTC_Extension_CertiK.pdf | ScorePotInternal | unmatched — not counted | — | listed in scope table | no |
| bifrost_bifi_audit.pdf | handlerViewProxy | unmatched — not counted | — | listed in scope table | no |
| bifrost_bifi_audit.pdf | siViewProxy | unmatched — not counted | — | listed in scope table | no |
| bifrost_bifi_audit.pdf | partialLiquidationUserReward | unmatched — not counted | — | listed in scope table | no |
| bifrost_bifi_audit.pdf | _applyInterestHandlers | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | setNewCustomer | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | interestUpdateReward | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | withdrawableAsset | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | applyInterestHandlers | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | borrowAsset | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | borrowAssetSum | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | userDepositEXR | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | userBorrowEXR | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | unifiedPoint | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | _applyInterest | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | _updateInterestAmount | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | GlobalEXR | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | UserEXR | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | _getDeltaEXR | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | globalDepositEXR | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | globalBorrowEXR | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | _checkNewCustomer | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | interestUpdateRewardPerblock | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | interestRewardLastUpdated | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | managerDataStorage | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | setInterestRewardUpdated | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | setInterestUpdateRewardPerblock | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | deposit | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | reserveDeposit | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | _internalDeposit | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | _internalReserveDeposit | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | _calcInterestAmount | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | _calcGlobalInterestAmount | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | _checkFirstAction | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | blockDelta | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | handlerProxy | unmatched — not counted | — | listed in scope table | no |
| bifrost_bifi_audit.pdf | siProxy | unmatched — not counted | — | listed in scope table | no |
| bifrost_bifi_audit.pdf | onlyMarketManager | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | marketManager | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | updateRewardLane | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | rewardClaimAll | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | rewardUpdateOfInAction | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | updateRewardParams | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | setCircuitBreaker | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | onlyBreaker | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | partialLiquidationUser | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | onlyLiquidationManager | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | handlerRegister | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | onlyOwner | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | ownerRewardTransfer | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | ownershipTransfer | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | setBreakerTable | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | setHandlerSupport | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | setLiquidationManager | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | setOracleProxy | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | setRewardErc20 | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | setTokenHandlersLength | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getCircuitBreaker | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getGlobalRewardInfo | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getMaxLiquidationReward | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getOwner | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getRewardErc20 | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getTokenHandlerBorrowLimit | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getTokenHandlerID | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getTokenHandlerInfo | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getTokenHandlerMarginCallLimit | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getTokenHandlerPrice | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getTokenHandlersLength | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getTokenHandlerSupport | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getUserCollateralizableAmount | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getUserExtraLiquidityAmount | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getUserIntraHandlerAssetWithInterest | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getUserLimitIntraAsset | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getUserTotalIntraCreditAsset | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | setGlobalRewardDecrement | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | setGlobalRewardPerBlock | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | setGlobalRewardTotalAmount | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | setLiquidationManagerAddr | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | setRewardParamUpdated | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | setTokenHandler | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | setTokenHandlerSupport | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | setAlphaLastUpdated | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | setAlphaRate | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | setManagerAddr | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | setRewardParamUpdateRewardPerBlock | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | setTokenHandlerAddr | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | setTokenHandlerExist | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getAlphaLastUpdated | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getAlphaRate | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getGlobalRewardDecrement | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getGlobalRewardPerBlock | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getGlobalRewardTotalAmount | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getInterestRewardUpdated | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getInterestUpdateRewardPerblock | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getLiquidationManagerAddr | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getRewardParamUpdated | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getRewardParamUpdateRewardPerBlock | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getTokenHandlerAddr | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getTokenHandlerExist | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | applyInterest | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | borrow | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | repay | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | reserveWithdraw | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | withdraw | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | checkFirstAction | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | setCircuitBreakWithOwner | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | setTokenHandlerBorrowLimit | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | setTokenHandlerMarginCallLimit | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | setUnifiedTokenDecimal | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | setUnderlyingTokenDecimal | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | setMarketManager | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | setInterestModel | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | setHandlerDataStorage | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | setErc20 | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | setSiHandlerDataStorage | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getTokenName | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getTokenHandlerLimit | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getUserMaxBorrowAmount | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getUserMaxWithdrawAmount | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getSIRandBIR | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getUserMaxRepayAmount | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getERC20Addr | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getUserAmount | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getUserIntraDepositAmount | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getUserIntraBorrowAmount | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getDepositTotalAmount | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getBorrowTotalAmount | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getUserAmountWithInterest | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getTokenDecimals | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getUnifiedTokenDecimal | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getUnderlyingTokenDecimal | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getLimitOfAction | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getSiHandlerDataStorage | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getMarketManagerAddr | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getInterestModelAddr | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getHandlerDataStorageAddr | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | addBorrowAmount | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | addBorrowTotalAmount | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | addDepositAmount | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | addDepositTotalAmount | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | addReservedAmount | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | addUserIntraBorrowAmount | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | addUserIntraDepositAmount | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | setActionEXR | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | setAmount | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | setBlocks | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | setEXR | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | setInactiveActionDelta | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | setLastUpdatedBlock | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | setUserAccessed | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | setUserEXR | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | subBorrowAmount | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | subBorrowTotalAmount | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | subDepositAmount | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | subDepositTotalAmount | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | subReservedAmount | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | subUserIntraBorrowAmount | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | subUserIntraDepositAmount | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | syncActionEXR | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | updateSignedReservedAmount | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | setBorrowLimit | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | setCoinHandler | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | setInterestModelAddr | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | setLimitOfAction | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | setLiquidityLimit | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | setLiquiditySensitivity | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | setMarginCallLimit | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | setMarketHandlerAddr | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | setMinimumInterestRate | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | setReservedAddr | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getActionEXR | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getAmount | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getBorrowLimit | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getGlobalBorrowEXR | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getGlobalDepositEXR | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getGlobalEXR | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getHandlerAmount | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getInactiveActionDelta | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getLastUpdatedBlock | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getLimit | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getLiquidityLimit | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getLiquiditySensitivity | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getMarginCallLimit | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getMarketHandlerAddr | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getMinimumInterestRate | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getReservedAddr | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getReservedAmount | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getUserAccessed | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getUserEXR | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | claimRewardAmountUser | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | updateRewardPerBlockLogic | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getBetaRate | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getBetaRateBaseTotalAmount | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getBetaRateBaseUserAmount | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getMarketRewardInfo | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getUserRewardInfo | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | setBetaRate | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | setSIHandlerAddr | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | setMarketRewardInfo | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | setUserRewardInfo | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | updateRewardPerBlockStorage | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getRewardInfo | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getSIHandlerAddr | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | partialLiquidation | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | checkLiquidation | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getInterestAmount | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | viewInterestAmount | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | initialize | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | migration | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | setHandlerAddr | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | setHandlerID | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getHandlerAddr | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getHandlerID | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | setOracleFeed | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getOracleFeed | unmatched — not counted | — | — | no |
| bifrost_bifi_audit.pdf | getTokenPrice | unmatched — not counted | — | — | no |
| theori-audit-rev-2.0.pdf | RewardLane | unmatched — not counted | — | The report repeatedly refers to a smart contract named RewardLane (e.g., 'RewardLane contract', 'Solidity code: RewardLane'). The scope section mentions 'Smart contract' but does not list a specific file. The contract name is inferred from the text. | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 118 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 132 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 7
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 271 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=5, low=1, medium=1
- Match method counts: n/a

Zero-match audit list:

- [2154] bifrost_bifix_audit.pdf
- [2155] (ENG)_BiFi_BIFROST_Extension_Theori.pdf
- [2156] (ENG)_BiFi_Lending_Sooho_EN_Public.pdf
- [2157] (ENG)_BiFi_Token_Hexlant_EN.pdf
- [2158] (ENG)_BiFrost_BTC_Extension_CertiK.pdf
- [2159] bifrost_bifi_audit.pdf
- [2160] theori-audit-rev-2.0.pdf

Fork inheritance lineage and inherited audits are included when available.
