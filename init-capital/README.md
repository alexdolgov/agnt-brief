# Agentic Audit Brief: INIT Capital

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 7 (0 matched; 7 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: INIT Capital (`init-capital`)
- Website: [https://app.init.capital](https://app.init.capital)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: blast, mantle
- Contract surface: 116 unique implementations (149 raw deployments)
- Coverage basis: 0/20 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,971,814.69
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for INIT Capital. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 37 contract row(s) across blast, ethereum, mantle. Structural roles: 32 unclassified, 4 core, 1 supporting. 2 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 37
- Structural roles: unclassified (32), core (4), supporting (1)
- Contract kinds: contract (37)
- Detected standards: accesscontrol (1), erc165 (1)
- Frameworks: openzeppelin (3), openzeppelin-upgradeable (2)
- Upgradeable-pattern rows: 2

## Fork Analysis

0 of 35 contracts are derived from known codebases. 35 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x233493e9dc68e548ac27e4933a600a3a4682c0c3`, chain 5000)
- UnnamedContract (`0x32f533eabd0b128e7ebe391dcc3f012701618b62`, chain 5000)
- UnnamedContract (`0x442d034b4bc112a1194eef8544b2f98b467c4bda`, chain 5000)
- UnnamedContract (`0xc01c9933763c8105f4510bcd486ccc9fb82ae25b`, chain 5000)
- UnnamedContract (`0xeed8a04876ceee12ddaf4fd1eb59663a62d9be34`, chain 5000)
- UnnamedContract (`0xf525f9a23db5fa9bea0f64e5427a103752977a0c`, chain 5000)
- UnnamedContract (`0x027296054f8181fbc0df26174e7640652bb28b40`, chain 81457)
- UnnamedContract (`0x17f18794ece38ee3f17ab7bcc41cf99486a3b85c`, chain 81457)
- UnnamedContract (`0x265daa697489968aebd650c665f4fb241b560785`, chain 81457)
- UnnamedContract (`0x4b246c4c41c4e5ec1d4a8453c313cbc57bf0993a`, chain 81457)
- UnnamedContract (`0x5313428df205273dcd4100b2fbc0803aba13ff28`, chain 81457)
- UnnamedContract (`0x57200d2b0c36244b3c8ebf99e5724c7536cea2f7`, chain 81457)
- UnnamedContract (`0x72ee68fc1d6650b32314188321e92a8b4f3b552a`, chain 81457)
- UnnamedContract (`0x85babafa73c3499247d937f7abb877e0e6250f68`, chain 81457)
- UnnamedContract (`0x95b8640e5a9a496427d089b14f6736de212852d0`, chain 81457)
- UnnamedContract (`0xa0e172f8bdc18854903959b8f7f73f0d332633fe`, chain 81457)
- UnnamedContract (`0xa7d36f2106b5a5d528a7e2e7a3f436d703113a10`, chain 81457)
- UnnamedContract (`0xc02819a157320ba2859951a1dfc1a5e76c424dd4`, chain 81457)
- UnnamedContract (`0xc5eac92633af47c0023afa0116500ab86fab430f`, chain 81457)
- UnnamedContract (`0xcd5fc13390b55aaa21a2c92ac3ff37fb2e22012e`, chain 81457)
- UnnamedContract (`0xd20989eb39348994aa99f686bb4554090d0c09f3`, chain 81457)
- UnnamedContract (`0xd501a57d404a4bedb2c911512d79b9087ad6bf39`, chain 81457)
- UnnamedContract (`0xd97bb363b5b925cf95acd7c463045750514c68c1`, chain 81457)
- UnnamedContract (`0xd9c0154a09f09988e8f4be6d1e8d8bc9bd805640`, chain 81457)
- UnnamedContract (`0xe31686e5590e4fd5d5418fe3c4e9368efd75e2ef`, chain 81457)
- UnnamedContract (`0xed9d7e89309b060e876098f4695ab9fd3011904b`, chain 81457)
- UnnamedContract (`0xf683ce59521aa464066783d78e40cd9412f33d21`, chain 81457)
- AccessControlManager (`0xce3292ca5abbdfa1db02142a67cffc708530675a`, chain 5000)
- DoubleSlopeIRM (`0x0959a65ab35cbf335abadc7793e2e8cac81ae7e4`, chain 5000)
- DoubleSlopeIRM (`0x59448551523a4d244f26759e48d83e432ed1fdbf`, chain 5000)
- DoubleSlopeIRM (`0x71e0b2e5ddcdd509d1da7029b09d310c108b2cf6`, chain 5000)
- DoubleSlopeIRM (`0xf25e438efad5a865a72f9fe39ffd9aec1f18398e`, chain 5000)
- InitLens (`0x7d2b278b8ef87beb83aec01243ff2fed57456042`, chain 5000)
- PosManager (`0x995b3d3cf83d5a0040b56b0201d3d2db6e369dbf`, chain 5000)
- RiskManager (`0xf3416748553ea93643aa8b5a7879f2c40018002b`, chain 5000)

## Contract Surface Quality

- Logic-topography rows: 37; live-surface rows included: 37 (37 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 44/46 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/20 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 44 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 72 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 38
- Confirmed-live implementations: 44 of 116 unique; 72 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/51
- Verified + Unaudited implementations: 51
- Verified by bytecode match: 0
- Unverified implementations: 65
- Unique implementations: 116
- Raw deployments: 149
- Audits discovered: 7 (7 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-01 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 5 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (51)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AccessControlManager | unknown | project_anchor | own_supporting | 0 | mantle | unit-387451 | `0xce3292ca5abbdfa1db02142a67cffc708530675a` | ⚠️ Unaudited |
| AgniSwapHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x2ac430616af369d20ad3007b0e40e3ef99a8ac13` | ⚠️ Unaudited |
| Api3OracleReader | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | mantle | n/a | 2 deployments: mantle `0x1450e76f4e969778d1ffb5b700b416fa9c41b4ae`; mantle `0x5fd18fa97f96b546848c729201794456640f6198` | ⚠️ Unaudited |
| BVM_ETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xdeaddeaddeaddeaddeaddeaddeaddeaddead1111` | ⚠️ Unaudited |
| Config | unknown | project_anchor | own_supporting | 1 | mantle | unit-387478 | 2 deployments: mantle `0x007f91636e0f986068ef27c950fa18734ba553ac`; mantle `0x1dbd1e94373b3163f4376d6ae1a39db9fda334cb` | ⚠️ Unaudited |
| DoubleSlopeIRM | unknown | project_anchor | own_supporting | 0 | mantle | unit-387442 | `0x00fa41248f6c3a26863ec56634fe78ad4e4748ec` | ⚠️ Unaudited |
| DoubleSlopeIRM | unknown | project_anchor | own_supporting | 0 | mantle | unit-387443 | `0x0959a65ab35cbf335abadc7793e2e8cac81ae7e4` | ⚠️ Unaudited |
| DoubleSlopeIRM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | 2 deployments: mantle `0x204e802c5678ca959980cdcb339e78d4c8712255`; mantle `0xb4d7876024a6c68e7aa004b3a6764fdc59bb640b` | ⚠️ Unaudited |
| DoubleSlopeIRM | unknown | project_anchor | own_supporting | 0 | mantle | unit-387446 | `0x59448551523a4d244f26759e48d83e432ed1fdbf` | ⚠️ Unaudited |
| DoubleSlopeIRM | unknown | project_anchor | own_supporting | 0 | mantle | unit-387447 | `0x71e0b2e5ddcdd509d1da7029b09d310c108b2cf6` | ⚠️ Unaudited |
| DoubleSlopeIRM | unknown | project_anchor | own_supporting | 0 | mantle | unit-387454 | `0xf25e438efad5a865a72f9fe39ffd9aec1f18398e` | ⚠️ Unaudited |
| FusionXSwapHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xa0338a506ff1c2d60a0462c9723c5d3f9c238a48` | ⚠️ Unaudited |
| InitCore | unknown | project_anchor | own_supporting | 1 | mantle | unit-387485 | 2 deployments: mantle `0x972bcb0284cca0152527c4f70f8f689852bcafc5`; mantle `0xf8b8552d52986f06ffaf14bc88bfcf6dcbdba05d` | ⚠️ Unaudited |
| InitCore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x815e63d6b5e1b8d74876fc9a2c08b79d4185494b` | ⚠️ Unaudited |
| InitLens | unknown | project_anchor | own_supporting | 0 | mantle | unit-387448 | `0x7d2b278b8ef87beb83aec01243ff2fed57456042` | ⚠️ Unaudited |
| InitLens | unknown | project_anchor | own_supporting | 0 | blast | unit-387460 | `0x56fba2cc045c02d7adae5a9dfdce795900b2860e` | ⚠️ Unaudited |
| InitOracle | unknown | project_anchor | own_supporting | 1 | mantle | unit-387482 | 2 deployments: mantle `0x4e195a32b2f6eba9c4565ba49bef34f23c2c0350`; mantle `0x7928419135ce5427858f0f5c0cba3151b9b14f81` | ⚠️ Unaudited |
| L2cmETH | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | mantle | n/a | `0xe6829d9a7ee3040e1276fa75293bde931859e8fa` | ⚠️ Unaudited |
| LendingPool | unknown | project_anchor | own_supporting | 8 | mantle | unit-387479 (8 proxies) | 9 deployments: mantle `0x00a55649e597d463fd212fbe48a3b40f0e227d06`; mantle `0x3282437c436ee6aa9861a6a46ab0822d82581b1c`; mantle `0x423bb7577bcf594df986d9646b44d3144b3329fd`; mantle `0x44949636f778fad2b139e665aee11a2dc84a2976`; mantle `0x5071c003bb45e49110a905c1915ebdd2383a89df`; mantle `0x51ab74f8b03f0305d8dce936b473ab587911aec4`; mantle `0x9c9f28672c4a8ad5fb2c9aca6d8d68b02eafd552`; mantle `0xada66a8722b5cdfe3bc504007a5d793e7100ad09`; mantle `0xf084813f1be067d980a0171f067f084f27b3f63a` | ⚠️ Unaudited |
| LendingPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x22eb74ab07ce90138f0fe4b2fdafee1738b0de11` | ⚠️ Unaudited |
| LiqIncentiveCalculator | unknown | project_anchor | own_supporting | 0 | mantle | unit-387452 | `0xddc99aeef7d5f87118a3a2636f7d0fb6c60dacf3` | ⚠️ Unaudited |
| MarginTradingHook | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | mantle | n/a | 3 deployments: mantle `0x2137546635595919a66468cf08cb9e9e879718b5`; mantle `0x8bc7dfca30717ae4303afe93b22c3add334dfcbb`; mantle `0xebf3edf5db89777f6ade33c27fbce94c4a8cdefd` | ⚠️ Unaudited |
| MarginTradingHook | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | mantle | n/a | `0x42aa4e76404ae974d825dde2128adab3716aa7f9` | ⚠️ Unaudited |
| MarginTradingHook | unknown | project_anchor | own_supporting | 3 | mantle | unit-387481 (3 proxies) | 4 deployments: mantle `0x497949e7a3cd1352980a1b2c27da27b5a71c94bd`; mantle `0x9567940746fda24aa98160ae3dacdbd51dae7d33`; mantle `0xe4fe22f64f37ba62bddfed3b05dabcc1f01ad1ad`; mantle `0xefb43e833058cd3464497e57428efb00db000763` | ⚠️ Unaudited |
| MarginTradingHook | unknown | project_anchor | own_supporting | 0 | mantle | unit-387449 | `0x917a9fa5606e7bb6a9bf7eb0abb00fe152d3dc14` | ⚠️ Unaudited |
| METHL2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xa1f06b96f082c470e9759d1090d281b2493c6a2c` | ⚠️ Unaudited |
| METHL2 | token | non_address_book | non_address_book_inventory (excluded) | 1 | mantle | n/a | `0xcda86a272531e8640cd7f1a92c01839911b90bb0` | ⚠️ Unaudited |
| MoeSwapHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x31a09939e3be956b08097bcb65acdc99ba5f7cee` | ⚠️ Unaudited |
| MoneyMarketHook | unknown | project_anchor | own_supporting | 1 | mantle | unit-387476 | 2 deployments: mantle `0x06cab8cbd9bb02db40eba963a8c38d4c5924da84`; mantle `0xf82cbcab75c1138a8f1f20179613e7c0c8337346` | ⚠️ Unaudited |
| MoneyMarketHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x214d40dc973802859afcda42333ba98fa78e4e4a` | ⚠️ Unaudited |
| PepeToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x8baf44b350ef672232a6673e1e128c7875640477` | ⚠️ Unaudited |
| PosManager | unknown | project_anchor | own_supporting | 1 | mantle | unit-387483 | 2 deployments: mantle `0x0e7401707cd08c03cdb53daef3295ddfb68bba92`; mantle `0x995b3d3cf83d5a0040b56b0201d3d2db6e369dbf` | ⚠️ Unaudited |
| PosManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x65d8d9dcaec8373f79328b59798629506599f232` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xa55a591f91103d84106ba79eda446ebdbfe26f7a` | ⚠️ Unaudited |
| Puff | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x26a6b0dcdcfb981362afa56d581e4a7dba3be140` | ⚠️ Unaudited |
| RiskManager | unknown | project_anchor | own_supporting | 1 | mantle | unit-387484 | 2 deployments: mantle `0x0c03cd3e8b669680bf306fc72f1dc2cac592f951`; mantle `0xf3416748553ea93643aa8b5a7879f2c40018002b` | ⚠️ Unaudited |
| StakedUSDeOFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x211cc4dd073734da055fbf44a2b4667d5e5fe5d2` | ⚠️ Unaudited |
| TimelockController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x91a19402818ec3da51ead9db15a4776827ec65e5` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | mantle | n/a | 2 deployments: mantle `0x013d02a11779662164f945f477cff4abfd253285`; mantle `0xb45206cbb8913495ea08cf418de3a9d2076f9d68` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | mantle | n/a | 2 deployments: mantle `0x089d92727b68c58a931d240dd99a8246019046b7`; mantle `0x580df5483aae4761b82808654ad3c88ed960ac6e` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | mantle | n/a | 2 deployments: mantle `0x0b375d3a58a58e72db7ce5d7ca0994c5c1ae6197`; mantle `0xf42c7ba5e3f555b56b7765269fa8f2605e40995f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | mantle | n/a | 2 deployments: mantle `0x1fe6b7cab3df27058ba3a8f60acbf0a0322b5d14`; mantle `0xe576e46b1a0403bf0ecf05d7e414a6efae866b33` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | mantle | n/a | 2 deployments: mantle `0x3ab7de27aef7c235af6c835e44ec5e8f60664452`; mantle `0xb8020c1ff28faf21cde1096ae792fcb5ae02ad72` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | mantle | n/a | 2 deployments: mantle `0x58fb832cd2368ee14f31d6a18f9fca06697ae7ec`; mantle `0x6a905e427ad41cb8acd4aabaa69efbd6c5a0b27b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | mantle | unit-387477 | `0x66bdbf2eefc84f83b476db238574ca5cb00550ad` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | mantle | n/a | 2 deployments: mantle `0xdc9311f1ffd2cc42f3de7ec26e8cdda5a7b99a01`; mantle `0xe6239b9eaeaec464098911c15700e4e0ccb2f092` | ⚠️ Unaudited |
| TransparentUpgradeableProxyReceiveETH | unknown | project_anchor | own_supporting | 1 | mantle | unit-387480 | 2 deployments: mantle `0x442d034b4bc112a1194eef8544b2f98b467c4bda`; mantle `0x7fa704e73262e5a9f48382087f69c6aba0408eaa` | ⚠️ Unaudited |
| UniversalSwapHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xb6c2f11a656c0c1ae71c392cf3b7897af900b638` | ⚠️ Unaudited |
| USDeOFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x5d3a1ff2b6bab83b63cd9ad0787074081a52ef34` | ⚠️ Unaudited |
| USDYW | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | mantle | n/a | `0x5be26527e817998a7206475496fde1e68957c5a6` | ⚠️ Unaudited |
| WMANTLE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x78c1b0c915c4faa5fffa6cabf0219da63d7f4cb8` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (65)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Proxy (impl: 0x2529c5e48ddcec4c235f7dba6cf3ce994899ddad) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | blast | n/a | 2 deployments: blast `0x0bca18a2dd966a22d15a649301ef2753ea4c9a02`; blast `0x2529c5e48ddcec4c235f7dba6cf3ce994899ddad` | ❓ Unverified |
| Proxy (impl: 0xd9c0154a09f09988e8f4be6d1e8d8bc9bd805640) | unknown | project_anchor | own_supporting | 2 | blast | unit-387486 (2 proxies) | 3 deployments: blast `0x5313428df205273dcd4100b2fbc0803aba13ff28`; blast `0x85babafa73c3499247d937f7abb877e0e6250f68`; blast `0xd9c0154a09f09988e8f4be6d1e8d8bc9bd805640` | ❓ Unverified |
| Proxy (impl: 0xfdb3cc1a63e6de98e7d9a36c683bd30a9b5237fa) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | blast | n/a | 2 deployments: blast `0x5e51d998989a521a61c7177d9afccd6ab28cac67`; blast `0xfdb3cc1a63e6de98e7d9a36c683bd30a9b5237fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x1017627ea8191531c4d07419fb49cff1c986838e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x13437755bb87ce61810d25a2e16b1cfd37944283` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x137f43efb7e33759f536e7b097c1270953b31634` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x196d4e073687e8a61810725c1a299584494367e9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-387444 | `0x233493e9dc68e548ac27e4933a600a3a4682c0c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x2a81ff6d7c962dda30cf943619d087750ed0bd7d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-387445 | `0x32f533eabd0b128e7ebe391dcc3f012701618b62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x3384894ce52161f806cd52e3cf1fa8ef137746ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x592c91ac727da556dc90ddf5630e1901efcd0c92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x6859b1b4921f69e6fd92f0d346b9b0807d85df2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x6cc1039746803bc325ec6eb7262def3a672ae243` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x7ae5741ee60064d934297b4eb0031cefb49f9915` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x7bda6ea4d793e004ac776b5f96f24ad5528e08a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xac5e09dfd21d785510014c3b54f3d38b6da3ce81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xb21f3b665f230ddb0710a2c6082d363cef45048f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xb5695d6b72a8afc6384a2a9251cc539727d3520b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xbe7d352805feb1bdb3d48769d5957c5446f518d3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-387450 | `0xc01c9933763c8105f4510bcd486ccc9fb82ae25b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xccadc0fc7060b7b94327fb07e8976454e6ca7f33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xee619435de204914c71df9ac7bbb4becd3c9eaf0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-387453 | `0xeed8a04876ceee12ddaf4fd1eb59663a62d9be34` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-387455 | `0xf525f9a23db5fa9bea0f64e5427a103752977a0c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-387456 | `0x027296054f8181fbc0df26174e7640652bb28b40` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x0d87d19004ef1a20085f37108ab0f05398365d32` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x126dcccf3d49c9cd1ab94fb52f0302128c29a957` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-387457 | `0x17f18794ece38ee3f17ab7bcc41cf99486a3b85c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x1dac52bd9ccc0283c71a2a06ef9d0b1f8cbb4257` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-387458 | `0x265daa697489968aebd650c665f4fb241b560785` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x340b6c30e012ec9903ebb6b8d468576e60d8d1f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x3816edcf24f0717db08e50725e55bdf084ae697a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x47dc5921527a6f8138ec7ef8945f09b182dfba3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x4a7ccbe0b4f01e3d30b203c087e67b72065a011d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-387459 | `0x4b246c4c41c4e5ec1d4a8453c313cbc57bf0993a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x5468516592b98f60f5416cc4544932656ac834f2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-387461 | `0x57200d2b0c36244b3c8ebf99e5724c7536cea2f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x5f1a7dbd31f0ded2f8a1ca3fc79919f9866248fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x721ad8f7ef913c7b9775f9f90d35321b23577ce7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-387462 | `0x72ee68fc1d6650b32314188321e92a8b4f3b552a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x75d40bec66182a989d4b5e40fd76680aacff1836` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x7971ad62c585ff0fe042792ffd7005a3c2172df9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x812607160c85139e67031486b60309525e095afe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x8aa1cff97dd5746529eddd19519c76deed0cb288` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x92aa51001f0bcc060e3b3d1824a79f4b5bcee445` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x92e4af57bafe3f94569a729dd0be3abe4615e542` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-387463 | `0x95b8640e5a9a496427d089b14f6736de212852d0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-387464 | `0xa0e172f8bdc18854903959b8f7f73f0d332633fe` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-387465 | `0xa7d36f2106b5a5d528a7e2e7a3f436d703113a10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xaf8512b4dd03c06678cb7fc9d9cbf80a58dbfa47` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-387466 | `0xc02819a157320ba2859951a1dfc1a5e76c424dd4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-387467 | `0xc5eac92633af47c0023afa0116500ab86fab430f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-387468 | `0xcd5fc13390b55aaa21a2c92ac3ff37fb2e22012e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xcd8175f1e567ccae4543fd1af192a3ecf9dde280` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-387469 | `0xd20989eb39348994aa99f686bb4554090d0c09f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xd23ec372a82d199872dd45fe4e3241cee30b08e9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-387470 | `0xd501a57d404a4bedb2c911512d79b9087ad6bf39` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-387471 | `0xd97bb363b5b925cf95acd7c463045750514c68c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xd9bb55f09cccaf68cde12a7a999c71d0e9ea5cfa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xdad14045abb80b78c2882bb61716e6fcd7dde412` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xe1d36e2790dd75ab34e789192e146e8a3a32b18d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-387472 | `0xe31686e5590e4fd5d5418fe3c4e9368efd75e2ef` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-387473 | `0xed9d7e89309b060e876098f4695ab9fd3011904b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-387475 | `0xf683ce59521aa464066783d78e40cd9412f33d21` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 124
- Live contracts: 48
- Unknown liveness contracts: 76
- Source-verified contracts: 66
- Currently scope-matched contracts retained as-is: 0
- Classification counts: candidate review=41, contamination review=7, exact address book overlap=17, source verified unclassified=10, unverified unclassified=49

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| candidate review | Config<br>`0x1dbd1e94373b3163f4376d6ae1a39db9fda334cb` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x60045e6de3080d3a6271e635616dbbc20886dfcb` |
| candidate review | InitCore<br>`0xf8b8552d52986f06ffaf14bc88bfcf6dcbdba05d` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x60045e6de3080d3a6271e635616dbbc20886dfcb` |
| candidate review | InitOracle<br>`0x7928419135ce5427858f0f5c0cba3151b9b14f81` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x60045e6de3080d3a6271e635616dbbc20886dfcb` |
| candidate review | LendingPool<br>`0x423bb7577bcf594df986d9646b44d3144b3329fd` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x60045e6de3080d3a6271e635616dbbc20886dfcb` |
| candidate review | MarginTradingHook<br>`0x497949e7a3cd1352980a1b2c27da27b5a71c94bd` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x60045e6de3080d3a6271e635616dbbc20886dfcb` |
| candidate review | MarginTradingHook<br>`0x917a9fa5606e7bb6a9bf7eb0abb00fe152d3dc14` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x60045e6de3080d3a6271e635616dbbc20886dfcb` |
| candidate review | ProxyAdmin<br>`0xa55a591f91103d84106ba79eda446ebdbfe26f7a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x60045e6de3080d3a6271e635616dbbc20886dfcb` |
| candidate review | StakedUSDeOFT<br>`0x211cc4dd073734da055fbf44a2b4667d5e5fe5d2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xaa439fb33e55306c7c79841f20121b4c4139f3dc` |
| candidate review | TransparentUpgradeableProxy<br>`0x007f91636e0f986068ef27c950fa18734ba553ac` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x60045e6de3080d3a6271e635616dbbc20886dfcb` |
| candidate review | TransparentUpgradeableProxy<br>`0x00a55649e597d463fd212fbe48a3b40f0e227d06` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x60045e6de3080d3a6271e635616dbbc20886dfcb` |
| candidate review | TransparentUpgradeableProxy<br>`0x013d02a11779662164f945f477cff4abfd253285` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x60045e6de3080d3a6271e635616dbbc20886dfcb` |
| candidate review | TransparentUpgradeableProxy<br>`0x0b375d3a58a58e72db7ce5d7ca0994c5c1ae6197` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x60045e6de3080d3a6271e635616dbbc20886dfcb` |
| candidate review | TransparentUpgradeableProxy<br>`0x0c03cd3e8b669680bf306fc72f1dc2cac592f951` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x60045e6de3080d3a6271e635616dbbc20886dfcb` |
| candidate review | TransparentUpgradeableProxy<br>`0x0e7401707cd08c03cdb53daef3295ddfb68bba92` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x60045e6de3080d3a6271e635616dbbc20886dfcb` |
| candidate review | TransparentUpgradeableProxy<br>`0x3282437c436ee6aa9861a6a46ab0822d82581b1c` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x60045e6de3080d3a6271e635616dbbc20886dfcb` |
| candidate review | TransparentUpgradeableProxy<br>`0x3ab7de27aef7c235af6c835e44ec5e8f60664452` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x60045e6de3080d3a6271e635616dbbc20886dfcb` |
| candidate review | TransparentUpgradeableProxy<br>`0x44949636f778fad2b139e665aee11a2dc84a2976` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x60045e6de3080d3a6271e635616dbbc20886dfcb` |
| candidate review | TransparentUpgradeableProxy<br>`0x4e195a32b2f6eba9c4565ba49bef34f23c2c0350` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x60045e6de3080d3a6271e635616dbbc20886dfcb` |
| candidate review | TransparentUpgradeableProxy<br>`0x5071c003bb45e49110a905c1915ebdd2383a89df` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x60045e6de3080d3a6271e635616dbbc20886dfcb` |
| candidate review | TransparentUpgradeableProxy<br>`0x51ab74f8b03f0305d8dce936b473ab587911aec4` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x60045e6de3080d3a6271e635616dbbc20886dfcb` |
| candidate review | TransparentUpgradeableProxy<br>`0x580df5483aae4761b82808654ad3c88ed960ac6e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x60045e6de3080d3a6271e635616dbbc20886dfcb` |
| candidate review | TransparentUpgradeableProxy<br>`0x5fd18fa97f96b546848c729201794456640f6198` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x60045e6de3080d3a6271e635616dbbc20886dfcb` |
| candidate review | TransparentUpgradeableProxy<br>`0x66bdbf2eefc84f83b476db238574ca5cb00550ad` | project_anchor | unknown | live | verified | review: missing_fingerprint | `0x60045e6de3080d3a6271e635616dbbc20886dfcb` |
| candidate review | TransparentUpgradeableProxy<br>`0x6a905e427ad41cb8acd4aabaa69efbd6c5a0b27b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x60045e6de3080d3a6271e635616dbbc20886dfcb` |
| candidate review | TransparentUpgradeableProxy<br>`0x972bcb0284cca0152527c4f70f8f689852bcafc5` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x60045e6de3080d3a6271e635616dbbc20886dfcb` |
| candidate review | TransparentUpgradeableProxy<br>`0x9c9f28672c4a8ad5fb2c9aca6d8d68b02eafd552` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x60045e6de3080d3a6271e635616dbbc20886dfcb` |
| candidate review | TransparentUpgradeableProxy<br>`0xada66a8722b5cdfe3bc504007a5d793e7100ad09` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x60045e6de3080d3a6271e635616dbbc20886dfcb` |
| candidate review | TransparentUpgradeableProxy<br>`0xe576e46b1a0403bf0ecf05d7e414a6efae866b33` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x60045e6de3080d3a6271e635616dbbc20886dfcb` |
| candidate review | TransparentUpgradeableProxy<br>`0xe6239b9eaeaec464098911c15700e4e0ccb2f092` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x60045e6de3080d3a6271e635616dbbc20886dfcb` |
| candidate review | TransparentUpgradeableProxy<br>`0xf084813f1be067d980a0171f067f084f27b3f63a` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x60045e6de3080d3a6271e635616dbbc20886dfcb` |
| candidate review | TransparentUpgradeableProxyReceiveETH<br>`0x2137546635595919a66468cf08cb9e9e879718b5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x60045e6de3080d3a6271e635616dbbc20886dfcb` |
| candidate review | TransparentUpgradeableProxyReceiveETH<br>`0x42aa4e76404ae974d825dde2128adab3716aa7f9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x60045e6de3080d3a6271e635616dbbc20886dfcb` |
| candidate review | TransparentUpgradeableProxyReceiveETH<br>`0x7fa704e73262e5a9f48382087f69c6aba0408eaa` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x60045e6de3080d3a6271e635616dbbc20886dfcb` |
| candidate review | TransparentUpgradeableProxyReceiveETH<br>`0x8bc7dfca30717ae4303afe93b22c3add334dfcbb` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x60045e6de3080d3a6271e635616dbbc20886dfcb` |
| candidate review | TransparentUpgradeableProxyReceiveETH<br>`0x9567940746fda24aa98160ae3dacdbd51dae7d33` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x60045e6de3080d3a6271e635616dbbc20886dfcb` |
| candidate review | TransparentUpgradeableProxyReceiveETH<br>`0xe4fe22f64f37ba62bddfed3b05dabcc1f01ad1ad` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x60045e6de3080d3a6271e635616dbbc20886dfcb` |
| candidate review | TransparentUpgradeableProxyReceiveETH<br>`0xebf3edf5db89777f6ade33c27fbce94c4a8cdefd` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x60045e6de3080d3a6271e635616dbbc20886dfcb` |
| candidate review | TransparentUpgradeableProxyReceiveETH<br>`0xefb43e833058cd3464497e57428efb00db000763` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x60045e6de3080d3a6271e635616dbbc20886dfcb` |
| candidate review | TransparentUpgradeableProxyReceiveETH<br>`0xf82cbcab75c1138a8f1f20179613e7c0c8337346` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x60045e6de3080d3a6271e635616dbbc20886dfcb` |
| candidate review | InitCore<br>`0x815e63d6b5e1b8d74876fc9a2c08b79d4185494b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf843c0c5116c2cd261f9eb951f5e82d210b1dd33` |
| candidate review | LendingPool<br>`0x22eb74ab07ce90138f0fe4b2fdafee1738b0de11` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf843c0c5116c2cd261f9eb951f5e82d210b1dd33` |
| contamination review | Api3OracleReader<br>`0x1450e76f4e969778d1ffb5b700b416fa9c41b4ae` | non_address_book | unknown | unknown | verified | n/a | `0x60045e6de3080d3a6271e635616dbbc20886dfcb` |
| contamination review | DoubleSlopeIRM<br>`0x00fa41248f6c3a26863ec56634fe78ad4e4748ec` | project_anchor | unknown | live | verified | n/a | `0x60045e6de3080d3a6271e635616dbbc20886dfcb` |
| contamination review | LiqIncentiveCalculator<br>`0xddc99aeef7d5f87118a3a2636f7d0fb6c60dacf3` | project_anchor | unknown | live | verified | n/a | `0x60045e6de3080d3a6271e635616dbbc20886dfcb` |
| contamination review | MoeSwapHelper<br>`0x31a09939e3be956b08097bcb65acdc99ba5f7cee` | non_address_book | unknown | unknown | verified | n/a | `0x60045e6de3080d3a6271e635616dbbc20886dfcb` |
| contamination review | MoneyMarketHook<br>`0x06cab8cbd9bb02db40eba963a8c38d4c5924da84` | project_anchor | unknown | live | verified | n/a | `0x60045e6de3080d3a6271e635616dbbc20886dfcb` |
| contamination review | UniversalSwapHelper<br>`0xb6c2f11a656c0c1ae71c392cf3b7897af900b638` | non_address_book | unknown | unknown | verified | n/a | `0x60045e6de3080d3a6271e635616dbbc20886dfcb` |
| contamination review | InitLens<br>`0x56fba2cc045c02d7adae5a9dfdce795900b2860e` | project_anchor | unknown | live | verified | n/a | `0xf843c0c5116c2cd261f9eb951f5e82d210b1dd33` |
| exact address book overlap | AccessControlManager<br>`0xce3292ca5abbdfa1db02142a67cffc708530675a` | project_anchor | unknown | live | verified | n/a | `0x60045e6de3080d3a6271e635616dbbc20886dfcb` |
| exact address book overlap | DoubleSlopeIRM<br>`0x0959a65ab35cbf335abadc7793e2e8cac81ae7e4` | project_anchor | unknown | live | verified | n/a | `0x60045e6de3080d3a6271e635616dbbc20886dfcb` |
| exact address book overlap | DoubleSlopeIRM<br>`0x59448551523a4d244f26759e48d83e432ed1fdbf` | project_anchor | unknown | live | verified | n/a | `0x60045e6de3080d3a6271e635616dbbc20886dfcb` |
| exact address book overlap | DoubleSlopeIRM<br>`0x71e0b2e5ddcdd509d1da7029b09d310c108b2cf6` | project_anchor | unknown | live | verified | n/a | `0x60045e6de3080d3a6271e635616dbbc20886dfcb` |
| exact address book overlap | DoubleSlopeIRM<br>`0xf25e438efad5a865a72f9fe39ffd9aec1f18398e` | project_anchor | unknown | live | verified | n/a | `0x60045e6de3080d3a6271e635616dbbc20886dfcb` |
| exact address book overlap | InitLens<br>`0x7d2b278b8ef87beb83aec01243ff2fed57456042` | project_anchor | unknown | live | verified | n/a | `0x60045e6de3080d3a6271e635616dbbc20886dfcb` |
| exact address book overlap | PosManager<br>`0x995b3d3cf83d5a0040b56b0201d3d2db6e369dbf` | project_anchor | unknown | live | verified | n/a | `0x60045e6de3080d3a6271e635616dbbc20886dfcb` |
| exact address book overlap | RiskManager<br>`0xf3416748553ea93643aa8b5a7879f2c40018002b` | project_anchor | unknown | live | verified | n/a | `0x60045e6de3080d3a6271e635616dbbc20886dfcb` |
| exact address book overlap | UnnamedContract<br>`0x32f533eabd0b128e7ebe391dcc3f012701618b62` | project_anchor | unknown | live | unverified | n/a | `0x60045e6de3080d3a6271e635616dbbc20886dfcb` |
| exact address book overlap | UnnamedContract<br>`0xeed8a04876ceee12ddaf4fd1eb59663a62d9be34` | project_anchor | unknown | live | unverified | n/a | `0x60045e6de3080d3a6271e635616dbbc20886dfcb` |
| exact address book overlap | UnnamedContract<br>`0xf525f9a23db5fa9bea0f64e5427a103752977a0c` | project_anchor | unknown | live | unverified | n/a | `0x60045e6de3080d3a6271e635616dbbc20886dfcb` |
| exact address book overlap | 0xd9c0154a09f09988e8f4be6d1e8d8bc9bd805640<br>`0x5313428df205273dcd4100b2fbc0803aba13ff28` | project_anchor | unknown | live | unverified | n/a | `0xf843c0c5116c2cd261f9eb951f5e82d210b1dd33` |
| exact address book overlap | 0xd9c0154a09f09988e8f4be6d1e8d8bc9bd805640<br>`0x85babafa73c3499247d937f7abb877e0e6250f68` | project_anchor | unknown | live | unverified | n/a | `0xf843c0c5116c2cd261f9eb951f5e82d210b1dd33` |
| exact address book overlap | UnnamedContract<br>`0x265daa697489968aebd650c665f4fb241b560785` | project_anchor | unknown | live | unverified | n/a | `0xf843c0c5116c2cd261f9eb951f5e82d210b1dd33` |
| exact address book overlap | UnnamedContract<br>`0x72ee68fc1d6650b32314188321e92a8b4f3b552a` | project_anchor | unknown | live | unverified | n/a | `0xf843c0c5116c2cd261f9eb951f5e82d210b1dd33` |
| exact address book overlap | UnnamedContract<br>`0x95b8640e5a9a496427d089b14f6736de212852d0` | project_anchor | unknown | live | unverified | n/a | `0xf843c0c5116c2cd261f9eb951f5e82d210b1dd33` |
| exact address book overlap | UnnamedContract<br>`0xd501a57d404a4bedb2c911512d79b9087ad6bf39` | project_anchor | unknown | live | unverified | n/a | `0xf843c0c5116c2cd261f9eb951f5e82d210b1dd33` |
| source verified unclassified | AgniSwapHelper<br>`0x2ac430616af369d20ad3007b0e40e3ef99a8ac13` | non_address_book | unknown | unknown | verified | n/a | `0x60045e6de3080d3a6271e635616dbbc20886dfcb` |
| source verified unclassified | DoubleSlopeIRM<br>`0x204e802c5678ca959980cdcb339e78d4c8712255` | non_address_book | unknown | unknown | verified | n/a | `0x60045e6de3080d3a6271e635616dbbc20886dfcb` |
| source verified unclassified | DoubleSlopeIRM<br>`0xb4d7876024a6c68e7aa004b3a6764fdc59bb640b` | non_address_book | unknown | unknown | verified | n/a | `0x60045e6de3080d3a6271e635616dbbc20886dfcb` |
| source verified unclassified | FusionXSwapHelper<br>`0xa0338a506ff1c2d60a0462c9723c5d3f9c238a48` | non_address_book | unknown | unknown | verified | n/a | `0x60045e6de3080d3a6271e635616dbbc20886dfcb` |
| source verified unclassified | METHL2<br>`0xa1f06b96f082c470e9759d1090d281b2493c6a2c` | non_address_book | unknown | unknown | verified | n/a | `0xddca452ccc19cdf8f426d88e65e4f1d226597ef9` |
| source verified unclassified | PepeToken<br>`0x8baf44b350ef672232a6673e1e128c7875640477` | non_address_book | unknown | unknown | verified | n/a | `0xddca452ccc19cdf8f426d88e65e4f1d226597ef9` |
| source verified unclassified | Puff<br>`0x26a6b0dcdcfb981362afa56d581e4a7dba3be140` | non_address_book | unknown | unknown | verified | n/a | `0xddca452ccc19cdf8f426d88e65e4f1d226597ef9` |
| source verified unclassified | TimelockController<br>`0x91a19402818ec3da51ead9db15a4776827ec65e5` | non_address_book | unknown | unknown | verified | n/a | `0xddca452ccc19cdf8f426d88e65e4f1d226597ef9` |
| source verified unclassified | MoneyMarketHook<br>`0x214d40dc973802859afcda42333ba98fa78e4e4a` | non_address_book | unknown | unknown | verified | n/a | `0xf843c0c5116c2cd261f9eb951f5e82d210b1dd33` |
| source verified unclassified | PosManager<br>`0x65d8d9dcaec8373f79328b59798629506599f232` | non_address_book | unknown | unknown | verified | n/a | `0xf843c0c5116c2cd261f9eb951f5e82d210b1dd33` |
| unverified unclassified | UnnamedContract<br>`0x089d92727b68c58a931d240dd99a8246019046b7` | non_address_book | unknown | unknown | unverified | n/a | `0x60045e6de3080d3a6271e635616dbbc20886dfcb` |
| unverified unclassified | UnnamedContract<br>`0x1017627ea8191531c4d07419fb49cff1c986838e` | non_address_book | unknown | unknown | unverified | n/a | `0x60045e6de3080d3a6271e635616dbbc20886dfcb` |
| unverified unclassified | UnnamedContract<br>`0x13437755bb87ce61810d25a2e16b1cfd37944283` | non_address_book | unknown | unknown | unverified | n/a | `0x60045e6de3080d3a6271e635616dbbc20886dfcb` |
| unverified unclassified | UnnamedContract<br>`0x137f43efb7e33759f536e7b097c1270953b31634` | non_address_book | unknown | unknown | unverified | n/a | `0xe392d3851dd2bb2d8f0807d4320f2059abad269b` |
| unverified unclassified | UnnamedContract<br>`0x196d4e073687e8a61810725c1a299584494367e9` | non_address_book | unknown | unknown | unverified | n/a | `0x60045e6de3080d3a6271e635616dbbc20886dfcb` |
| unverified unclassified | UnnamedContract<br>`0x1fe6b7cab3df27058ba3a8f60acbf0a0322b5d14` | non_address_book | unknown | unknown | unverified | n/a | `0x60045e6de3080d3a6271e635616dbbc20886dfcb` |
| unverified unclassified | UnnamedContract<br>`0x2a81ff6d7c962dda30cf943619d087750ed0bd7d` | non_address_book | unknown | unknown | unverified | n/a | `0x60045e6de3080d3a6271e635616dbbc20886dfcb` |
| unverified unclassified | UnnamedContract<br>`0x3384894ce52161f806cd52e3cf1fa8ef137746ef` | non_address_book | unknown | unknown | unverified | n/a | `0x60045e6de3080d3a6271e635616dbbc20886dfcb` |
| unverified unclassified | UnnamedContract<br>`0x442d034b4bc112a1194eef8544b2f98b467c4bda` | retained_scope_excluded_inventory | unknown | live | unverified | n/a | `0x60045e6de3080d3a6271e635616dbbc20886dfcb` |
| unverified unclassified | UnnamedContract<br>`0x58fb832cd2368ee14f31d6a18f9fca06697ae7ec` | non_address_book | unknown | unknown | unverified | n/a | `0x60045e6de3080d3a6271e635616dbbc20886dfcb` |
| unverified unclassified | UnnamedContract<br>`0x592c91ac727da556dc90ddf5630e1901efcd0c92` | non_address_book | unknown | unknown | unverified | n/a | `0xe392d3851dd2bb2d8f0807d4320f2059abad269b` |
| unverified unclassified | UnnamedContract<br>`0x6859b1b4921f69e6fd92f0d346b9b0807d85df2e` | non_address_book | unknown | unknown | unverified | n/a | `0x60045e6de3080d3a6271e635616dbbc20886dfcb` |
| unverified unclassified | UnnamedContract<br>`0x6cc1039746803bc325ec6eb7262def3a672ae243` | non_address_book | unknown | unknown | unverified | n/a | `0xe392d3851dd2bb2d8f0807d4320f2059abad269b` |
| unverified unclassified | UnnamedContract<br>`0x7ae5741ee60064d934297b4eb0031cefb49f9915` | non_address_book | unknown | unknown | unverified | n/a | `0x60045e6de3080d3a6271e635616dbbc20886dfcb` |
| unverified unclassified | UnnamedContract<br>`0x7bda6ea4d793e004ac776b5f96f24ad5528e08a0` | non_address_book | unknown | unknown | unverified | n/a | `0xe392d3851dd2bb2d8f0807d4320f2059abad269b` |
| unverified unclassified | UnnamedContract<br>`0xac5e09dfd21d785510014c3b54f3d38b6da3ce81` | non_address_book | unknown | unknown | unverified | n/a | `0xe392d3851dd2bb2d8f0807d4320f2059abad269b` |
| unverified unclassified | UnnamedContract<br>`0xb21f3b665f230ddb0710a2c6082d363cef45048f` | non_address_book | unknown | unknown | unverified | n/a | `0xe392d3851dd2bb2d8f0807d4320f2059abad269b` |
| unverified unclassified | UnnamedContract<br>`0xb45206cbb8913495ea08cf418de3a9d2076f9d68` | non_address_book | unknown | unknown | unverified | n/a | `0x60045e6de3080d3a6271e635616dbbc20886dfcb` |
| unverified unclassified | UnnamedContract<br>`0xb8020c1ff28faf21cde1096ae792fcb5ae02ad72` | non_address_book | unknown | unknown | unverified | n/a | `0x60045e6de3080d3a6271e635616dbbc20886dfcb` |
| unverified unclassified | UnnamedContract<br>`0xbe7d352805feb1bdb3d48769d5957c5446f518d3` | non_address_book | unknown | unknown | unverified | n/a | `0x60045e6de3080d3a6271e635616dbbc20886dfcb` |
| unverified unclassified | UnnamedContract<br>`0xccadc0fc7060b7b94327fb07e8976454e6ca7f33` | non_address_book | unknown | unknown | unverified | n/a | `0x60045e6de3080d3a6271e635616dbbc20886dfcb` |
| unverified unclassified | UnnamedContract<br>`0xdc9311f1ffd2cc42f3de7ec26e8cdda5a7b99a01` | non_address_book | unknown | unknown | unverified | n/a | `0x60045e6de3080d3a6271e635616dbbc20886dfcb` |
| unverified unclassified | UnnamedContract<br>`0xee619435de204914c71df9ac7bbb4becd3c9eaf0` | non_address_book | unknown | unknown | unverified | n/a | `0x60045e6de3080d3a6271e635616dbbc20886dfcb` |
| unverified unclassified | UnnamedContract<br>`0xf42c7ba5e3f555b56b7765269fa8f2605e40995f` | non_address_book | unknown | unknown | unverified | n/a | `0x60045e6de3080d3a6271e635616dbbc20886dfcb` |
| unverified unclassified | 0x2529c5e48ddcec4c235f7dba6cf3ce994899ddad<br>`0x0bca18a2dd966a22d15a649301ef2753ea4c9a02` | non_address_book | unknown | unknown | unverified | n/a | `0xf843c0c5116c2cd261f9eb951f5e82d210b1dd33` |
| unverified unclassified | 0xfdb3cc1a63e6de98e7d9a36c683bd30a9b5237fa<br>`0x5e51d998989a521a61c7177d9afccd6ab28cac67` | non_address_book | unknown | unknown | unverified | n/a | `0xf843c0c5116c2cd261f9eb951f5e82d210b1dd33` |
| unverified unclassified | UnnamedContract<br>`0x0d87d19004ef1a20085f37108ab0f05398365d32` | non_address_book | unknown | unknown | unverified | n/a | `0xf843c0c5116c2cd261f9eb951f5e82d210b1dd33` |
| unverified unclassified | UnnamedContract<br>`0x126dcccf3d49c9cd1ab94fb52f0302128c29a957` | non_address_book | unknown | unknown | unverified | n/a | `0xf843c0c5116c2cd261f9eb951f5e82d210b1dd33` |
| unverified unclassified | UnnamedContract<br>`0x1dac52bd9ccc0283c71a2a06ef9d0b1f8cbb4257` | non_address_book | unknown | unknown | unverified | n/a | `0xf843c0c5116c2cd261f9eb951f5e82d210b1dd33` |
| unverified unclassified | UnnamedContract<br>`0x2529c5e48ddcec4c235f7dba6cf3ce994899ddad` | non_address_book | unknown | unknown | unverified | n/a | `0xf843c0c5116c2cd261f9eb951f5e82d210b1dd33` |
| unverified unclassified | UnnamedContract<br>`0x340b6c30e012ec9903ebb6b8d468576e60d8d1f4` | non_address_book | unknown | unknown | unverified | n/a | `0xf843c0c5116c2cd261f9eb951f5e82d210b1dd33` |
| unverified unclassified | UnnamedContract<br>`0x3816edcf24f0717db08e50725e55bdf084ae697a` | non_address_book | unknown | unknown | unverified | n/a | `0xf843c0c5116c2cd261f9eb951f5e82d210b1dd33` |
| unverified unclassified | UnnamedContract<br>`0x47dc5921527a6f8138ec7ef8945f09b182dfba3a` | non_address_book | unknown | unknown | unverified | n/a | `0xf843c0c5116c2cd261f9eb951f5e82d210b1dd33` |
| unverified unclassified | UnnamedContract<br>`0x4a7ccbe0b4f01e3d30b203c087e67b72065a011d` | non_address_book | unknown | unknown | unverified | n/a | `0xf843c0c5116c2cd261f9eb951f5e82d210b1dd33` |
| unverified unclassified | UnnamedContract<br>`0x5f1a7dbd31f0ded2f8a1ca3fc79919f9866248fc` | non_address_book | unknown | unknown | unverified | n/a | `0xf843c0c5116c2cd261f9eb951f5e82d210b1dd33` |
| unverified unclassified | UnnamedContract<br>`0x721ad8f7ef913c7b9775f9f90d35321b23577ce7` | non_address_book | unknown | unknown | unverified | n/a | `0xf843c0c5116c2cd261f9eb951f5e82d210b1dd33` |
| unverified unclassified | UnnamedContract<br>`0x75d40bec66182a989d4b5e40fd76680aacff1836` | non_address_book | unknown | unknown | unverified | n/a | `0xf843c0c5116c2cd261f9eb951f5e82d210b1dd33` |
| unverified unclassified | UnnamedContract<br>`0x812607160c85139e67031486b60309525e095afe` | non_address_book | unknown | unknown | unverified | n/a | `0xf843c0c5116c2cd261f9eb951f5e82d210b1dd33` |
| unverified unclassified | UnnamedContract<br>`0x8aa1cff97dd5746529eddd19519c76deed0cb288` | non_address_book | unknown | unknown | unverified | n/a | `0xf843c0c5116c2cd261f9eb951f5e82d210b1dd33` |
| unverified unclassified | UnnamedContract<br>`0x92aa51001f0bcc060e3b3d1824a79f4b5bcee445` | non_address_book | unknown | unknown | unverified | n/a | `0xf843c0c5116c2cd261f9eb951f5e82d210b1dd33` |
| unverified unclassified | UnnamedContract<br>`0x92e4af57bafe3f94569a729dd0be3abe4615e542` | non_address_book | unknown | unknown | unverified | n/a | `0xf843c0c5116c2cd261f9eb951f5e82d210b1dd33` |
| unverified unclassified | UnnamedContract<br>`0xaf8512b4dd03c06678cb7fc9d9cbf80a58dbfa47` | non_address_book | unknown | unknown | unverified | n/a | `0xf843c0c5116c2cd261f9eb951f5e82d210b1dd33` |
| unverified unclassified | UnnamedContract<br>`0xcd8175f1e567ccae4543fd1af192a3ecf9dde280` | non_address_book | unknown | unknown | unverified | n/a | `0xf843c0c5116c2cd261f9eb951f5e82d210b1dd33` |
| unverified unclassified | UnnamedContract<br>`0xd23ec372a82d199872dd45fe4e3241cee30b08e9` | non_address_book | unknown | unknown | unverified | n/a | `0xf843c0c5116c2cd261f9eb951f5e82d210b1dd33` |
| unverified unclassified | UnnamedContract<br>`0xd9bb55f09cccaf68cde12a7a999c71d0e9ea5cfa` | non_address_book | unknown | unknown | unverified | n/a | `0xf843c0c5116c2cd261f9eb951f5e82d210b1dd33` |
| unverified unclassified | UnnamedContract<br>`0xd9c0154a09f09988e8f4be6d1e8d8bc9bd805640` | retained_scope_excluded_inventory | unknown | live | unverified | n/a | `0xf843c0c5116c2cd261f9eb951f5e82d210b1dd33` |
| unverified unclassified | UnnamedContract<br>`0xdad14045abb80b78c2882bb61716e6fcd7dde412` | non_address_book | unknown | unknown | unverified | n/a | `0xf843c0c5116c2cd261f9eb951f5e82d210b1dd33` |
| unverified unclassified | UnnamedContract<br>`0xe1d36e2790dd75ab34e789192e146e8a3a32b18d` | non_address_book | unknown | unknown | unverified | n/a | `0xf843c0c5116c2cd261f9eb951f5e82d210b1dd33` |
| unverified unclassified | UnnamedContract<br>`0xfdb3cc1a63e6de98e7d9a36c683bd30a9b5237fa` | non_address_book | unknown | unknown | unverified | n/a | `0xf843c0c5116c2cd261f9eb951f5e82d210b1dd33` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Code4rena_Audit_Report_1.md](https://github.com/init-capital/init-core-public/blob/master/audits/Code4rena_Audit_Report_1.md) | Code4rena | Contest | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Code4rena_Audit_Report_2.md](https://github.com/init-capital/init-core-public/blob/master/audits/Code4rena_Audit_Report_2.md) | Code4rena | Contest | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [PeckShield_Audit_Report_v1.pdf](https://github.com/init-capital/init-core-public/blob/master/audits/PeckShield_Audit_Report_v1.pdf) | PeckShield | Audit | 2024-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | medium |
| [Sparkware_Security_Audit_Report_1.pdf](https://github.com/init-capital/init-core-public/blob/master/audits/Sparkware_Security_Audit_Report_1.pdf) | Sparkware | Audit | n/a | unknown | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Sparkware_Security_Audit_Report_2.pdf](https://github.com/init-capital/init-core-public/blob/master/audits/Sparkware_Security_Audit_Report_2.pdf) | Sparkware | Audit | n/a | unknown | Direct | contract_name | no match | 0 | 0 | 0 | 3 | low |
| [Sparkware_Security_Audit_Report_3.pdf](https://github.com/init-capital/init-core-public/blob/master/audits/Sparkware_Security_Audit_Report_3.pdf) | Sparkware | Audit | n/a | unknown | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [Trust_Security_Audit_Report_v1.pdf](https://github.com/init-capital/init-core-public/blob/master/audits/Trust_Security_Audit_Report_v1.pdf) | Trust | Audit | 2023-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [15096] Code4rena_Audit_Report_1.md — no match: The provided text is only a header with a URL; no contract names or scope information is present.
- [15097] Code4rena_Audit_Report_2.md — no match: The provided text is only a header with a link to an external report. No contract names, scope section, or audit date are present in the given content.
- [15098] PeckShield_Audit_Report_v1.pdf — no match: No explicit scope table; contracts extracted from findings targets and code references.
- [15099] Sparkware_Security_Audit_Report_1.pdf — no match: Scope explicitly lists three contracts. No audit date found in the provided text.
- [15100] Sparkware_Security_Audit_Report_2.pdf — no match: No explicit scope table or date found; contracts inferred from fix review sections.
- [15101] Sparkware_Security_Audit_Report_3.pdf — no match: Scope section lists four contracts: MarginTradingHook.sol, ThrusterSwapHelper.sol, MoeLBSwapHelper.sol, UniversalSwapHelper.sol. No audit date found in the provided text.
- [15102] Trust_Security_Audit_Report_v1.pdf — no match: Scope section explicitly lists 10 files. Audit date from document title and versioning.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| PeckShield_Audit_Report_v1.pdf | InitCore | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0x972bcb0284cca0152527c4f70f8f689852bcafc5` — deployed 2024-01-08 21:27:34+03 — liveness: live (proxy_unit_reachable)<br>InitCore (alternative) `0xf8b8552d52986f06ffaf14bc88bfcf6dcbdba05d` — deployed 2024-01-08 21:27:29+03 — liveness: live (proxy_unit_reachable) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| PeckShield_Audit_Report_v1.pdf | Config | ambiguous — not counted | 0x57200d… (alternative) `0x57200d2b0c36244b3c8ebf99e5724c7536cea2f7` — deployed 2024-03-05 11:02:21+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x007f91636e0f986068ef27c950fa18734ba553ac` — deployed 2024-01-08 21:26:54+03 — liveness: live (code_present_context)<br>Config (alternative) `0x1dbd1e94373b3163f4376d6ae1a39db9fda334cb` — deployed 2024-01-08 21:26:49+03 — liveness: live (proxy_unit_reachable) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| PeckShield_Audit_Report_v1.pdf | PythOracleReader | unmatched — not counted | — | Target in finding PVE-004 | no |
| PeckShield_Audit_Report_v1.pdf | WrapCenter | unmatched — not counted | — | Mentioned in finding PVE-005 | no |
| PeckShield_Audit_Report_v1.pdf | LendingPool | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0x00a55649e597d463fd212fbe48a3b40f0e227d06` — deployed 2024-01-08 22:08:38+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x3282437c436ee6aa9861a6a46ab0822d82581b1c` — deployed 2024-04-01 13:05:20+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x44949636f778fad2b139e665aee11a2dc84a2976` — deployed 2024-01-08 22:08:22+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x5071c003bb45e49110a905c1915ebdd2383a89df` — deployed 2024-01-18 06:39:22+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x51ab74f8b03f0305d8dce936b473ab587911aec4` — deployed 2024-01-08 22:08:02+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xf084813f1be067d980a0171f067f084f27b3f63a` — deployed 2024-02-19 09:46:43+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x9c9f28672c4a8ad5fb2c9aca6d8d68b02eafd552` — deployed 2024-01-08 22:08:12+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xada66a8722b5cdfe3bc504007a5d793e7100ad09` — deployed 2024-01-08 22:08:48+03 — liveness: live (current_address_book_code)<br>LendingPool (alternative) `0x423bb7577bcf594df986d9646b44d3144b3329fd` — deployed 2024-01-08 21:27:59+03 — liveness: live (proxy_unit_reachable) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| PeckShield_Audit_Report_v1.pdf | PositionManager | unmatched — not counted | — | Referenced in InitCore code | no |
| Sparkware_Security_Audit_Report_1.pdf | AgniSwapHelper | unmatched — not counted | — | listed in scope | no |
| Sparkware_Security_Audit_Report_1.pdf | FusionXSwapHelper | unmatched — not counted | — | listed in scope | no |
| Sparkware_Security_Audit_Report_1.pdf | UsdyOracleReader | unmatched — not counted | — | listed in scope | no |
| Sparkware_Security_Audit_Report_2.pdf | WLPMoeMasterChef | unmatched — not counted | — | mentioned in R-01 fix review | no |
| Sparkware_Security_Audit_Report_2.pdf | MarginTradingHook | ambiguous — not counted | MarginTradingHook (alternative) `0x497949e7a3cd1352980a1b2c27da27b5a71c94bd` — deployed 2024-02-21 16:03:06+03 — liveness: live (proxy_unit_reachable)<br>TransparentUpgradeableProxyReceiveETH (proxy) (alternative) `0x9567940746fda24aa98160ae3dacdbd51dae7d33` — deployed 2024-02-21 16:08:31+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxyReceiveETH (proxy) (alternative) `0xefb43e833058cd3464497e57428efb00db000763` — deployed 2024-02-21 16:08:20+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxyReceiveETH (proxy) (alternative) `0xe4fe22f64f37ba62bddfed3b05dabcc1f01ad1ad` — deployed 2024-02-21 16:08:25+03 — liveness: live (current_address_book_code)<br>MarginTradingHook (alternative) `0x917a9fa5606e7bb6a9bf7eb0abb00fe152d3dc14` — deployed 2024-04-04 08:02:10+03 — liveness: live (current_address_book_code)<br>0x531342… (proxy) (alternative) `0x5313428df205273dcd4100b2fbc0803aba13ff28` — deployed 2024-05-10 10:50:39+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Sparkware_Security_Audit_Report_2.pdf | LsdApi3OracleReader | unmatched — not counted | — | mentioned in fix review section | no |
| Sparkware_Security_Audit_Report_3.pdf | MarginTradingHook | ambiguous — not counted | MarginTradingHook (alternative) `0x497949e7a3cd1352980a1b2c27da27b5a71c94bd` — deployed 2024-02-21 16:03:06+03 — liveness: live (proxy_unit_reachable)<br>TransparentUpgradeableProxyReceiveETH (proxy) (alternative) `0x9567940746fda24aa98160ae3dacdbd51dae7d33` — deployed 2024-02-21 16:08:31+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxyReceiveETH (proxy) (alternative) `0xefb43e833058cd3464497e57428efb00db000763` — deployed 2024-02-21 16:08:20+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxyReceiveETH (proxy) (alternative) `0xe4fe22f64f37ba62bddfed3b05dabcc1f01ad1ad` — deployed 2024-02-21 16:08:25+03 — liveness: live (current_address_book_code)<br>MarginTradingHook (alternative) `0x917a9fa5606e7bb6a9bf7eb0abb00fe152d3dc14` — deployed 2024-04-04 08:02:10+03 — liveness: live (current_address_book_code)<br>0x531342… (proxy) (alternative) `0x5313428df205273dcd4100b2fbc0803aba13ff28` — deployed 2024-05-10 10:50:39+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Sparkware_Security_Audit_Report_3.pdf | ThrusterSwapHelper | unmatched — not counted | — | listed in scope | no |
| Sparkware_Security_Audit_Report_3.pdf | MoeLBSwapHelper | unmatched — not counted | — | listed in scope | no |
| Sparkware_Security_Audit_Report_3.pdf | UniversalSwapHelper | unmatched — not counted | — | listed in scope | no |
| Trust_Security_Audit_Report_v1.pdf | InitCore | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0x972bcb0284cca0152527c4f70f8f689852bcafc5` — deployed 2024-01-08 21:27:34+03 — liveness: live (proxy_unit_reachable)<br>InitCore (alternative) `0xf8b8552d52986f06ffaf14bc88bfcf6dcbdba05d` — deployed 2024-01-08 21:27:29+03 — liveness: live (proxy_unit_reachable) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Trust_Security_Audit_Report_v1.pdf | PositionManager | unmatched — not counted | — | listed in scope | no |
| Trust_Security_Audit_Report_v1.pdf | Config | ambiguous — not counted | 0x57200d… (alternative) `0x57200d2b0c36244b3c8ebf99e5724c7536cea2f7` — deployed 2024-03-05 11:02:21+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x007f91636e0f986068ef27c950fa18734ba553ac` — deployed 2024-01-08 21:26:54+03 — liveness: live (code_present_context)<br>Config (alternative) `0x1dbd1e94373b3163f4376d6ae1a39db9fda334cb` — deployed 2024-01-08 21:26:49+03 — liveness: live (proxy_unit_reachable) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Trust_Security_Audit_Report_v1.pdf | IncentiveCalculator | unmatched — not counted | — | listed in scope | no |
| Trust_Security_Audit_Report_v1.pdf | InitOracle | ambiguous — not counted | InitOracle (alternative) `0x7928419135ce5427858f0f5c0cba3151b9b14f81` — deployed 2024-01-08 21:26:39+03 — liveness: live (proxy_unit_reachable)<br>0xe31686… (alternative) `0xe31686e5590e4fd5d5418fe3c4e9368efd75e2ef` — deployed 2024-03-05 11:02:03+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x4e195a32b2f6eba9c4565ba49bef34f23c2c0350` — deployed 2024-01-08 21:26:44+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Trust_Security_Audit_Report_v1.pdf | PythOracleReader | unmatched — not counted | — | listed in scope | no |
| Trust_Security_Audit_Report_v1.pdf | Api3OracleReader | unmatched — not counted | — | listed in scope | no |
| Trust_Security_Audit_Report_v1.pdf | WrapCenter | unmatched — not counted | — | listed in scope | no |
| Trust_Security_Audit_Report_v1.pdf | LendingPool | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0x00a55649e597d463fd212fbe48a3b40f0e227d06` — deployed 2024-01-08 22:08:38+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x3282437c436ee6aa9861a6a46ab0822d82581b1c` — deployed 2024-04-01 13:05:20+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x44949636f778fad2b139e665aee11a2dc84a2976` — deployed 2024-01-08 22:08:22+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x5071c003bb45e49110a905c1915ebdd2383a89df` — deployed 2024-01-18 06:39:22+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x51ab74f8b03f0305d8dce936b473ab587911aec4` — deployed 2024-01-08 22:08:02+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xf084813f1be067d980a0171f067f084f27b3f63a` — deployed 2024-02-19 09:46:43+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x9c9f28672c4a8ad5fb2c9aca6d8d68b02eafd552` — deployed 2024-01-08 22:08:12+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xada66a8722b5cdfe3bc504007a5d793e7100ad09` — deployed 2024-01-08 22:08:48+03 — liveness: live (current_address_book_code)<br>LendingPool (alternative) `0x423bb7577bcf594df986d9646b44d3144b3329fd` — deployed 2024-01-08 21:27:59+03 — liveness: live (proxy_unit_reachable) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Trust_Security_Audit_Report_v1.pdf | UncheckedIncrement | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| mantle | `0xce3292ca5abbdfa1db02142a67cffc708530675a` | AccessControlManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0x007f91636e0f986068ef27c950fa18734ba553ac` | Config | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0x00fa41248f6c3a26863ec56634fe78ad4e4748ec` | DoubleSlopeIRM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0x0959a65ab35cbf335abadc7793e2e8cac81ae7e4` | DoubleSlopeIRM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0x59448551523a4d244f26759e48d83e432ed1fdbf` | DoubleSlopeIRM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0x71e0b2e5ddcdd509d1da7029b09d310c108b2cf6` | DoubleSlopeIRM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0xf25e438efad5a865a72f9fe39ffd9aec1f18398e` | DoubleSlopeIRM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0x972bcb0284cca0152527c4f70f8f689852bcafc5` | InitCore | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0x7d2b278b8ef87beb83aec01243ff2fed57456042` | InitLens | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | `0x56fba2cc045c02d7adae5a9dfdce795900b2860e` | InitLens | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0x4e195a32b2f6eba9c4565ba49bef34f23c2c0350` | InitOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0x00a55649e597d463fd212fbe48a3b40f0e227d06` | LendingPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0xddc99aeef7d5f87118a3a2636f7d0fb6c60dacf3` | LiqIncentiveCalculator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0x497949e7a3cd1352980a1b2c27da27b5a71c94bd` | MarginTradingHook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0x917a9fa5606e7bb6a9bf7eb0abb00fe152d3dc14` | MarginTradingHook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0x06cab8cbd9bb02db40eba963a8c38d4c5924da84` | MoneyMarketHook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0x0e7401707cd08c03cdb53daef3295ddfb68bba92` | PosManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0x0c03cd3e8b669680bf306fc72f1dc2cac592f951` | RiskManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 40 |
| upstream | 0 |
| standard_library | 6 |
| needs_review | 70 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 7
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 9 ambiguous, 17 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=3, low=3, medium=1
- Match method counts: n/a

Zero-match audit list:

- [15096] Code4rena_Audit_Report_1.md
- [15097] Code4rena_Audit_Report_2.md
- [15098] PeckShield_Audit_Report_v1.pdf
- [15099] Sparkware_Security_Audit_Report_1.pdf
- [15100] Sparkware_Security_Audit_Report_2.pdf
- [15101] Sparkware_Security_Audit_Report_3.pdf
- [15102] Trust_Security_Audit_Report_v1.pdf

Fork inheritance lineage and inherited audits are included when available.
