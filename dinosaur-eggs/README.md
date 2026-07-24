# Agentic Audit Brief: Dinosaur Eggs

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Dinosaur Eggs (`dinosaur-eggs`)
- Website: [https://dinosaur-eggs.gitbook.io/dinosaur-eggs-1](https://dinosaur-eggs.gitbook.io/dinosaur-eggs-1)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: bsc
- Contract surface: 136 unique implementations (137 raw deployments)
- Coverage basis: 0/1 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $580,446.92
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Dinosaur Eggs. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across bsc, ethereum. Structural roles: 1 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: core (1)
- Contract kinds: contract (1)
- Detected standards: erc20 (1), ownable (1)
- Frameworks: openzeppelin (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 1 contracts are derived from known codebases. 1 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- DSGToken (`0x9a78649501bbaac285ea4187299471b7ad4abd35`, chain 56)

## Contract Surface Quality

- Logic-topography rows: 1; live-surface rows included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 1/8 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/1 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 1 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 135 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Confirmed-live implementations: 1 of 136 unique; 135 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/21
- Verified + Unaudited implementations: 21
- Verified by bytecode match: 0
- Unverified implementations: 115
- Unique implementations: 136
- Raw deployments: 137
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-09 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (21)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| DODOAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf49eab292f38f840dc52f5bafbf3067352d42f9e` | ⚠️ Unaudited |
| DsgNftFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2b0e390ff8f8ee5424de0b6556f475f512823d74` | ⚠️ Unaudited |
| DsgProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x18f3146b75538f7982cf59486d74a6875a25d657`; bsc `0xea75629b60bf7b3e94d5da06097cb16d87a4a614` | ⚠️ Unaudited |
| DSGToken | unknown | project_anchor | own_supporting | 0 | bsc | unit-383996 | `0x9a78649501bbaac285ea4187299471b7ad4abd35` | ⚠️ Unaudited |
| Erc20EarnNftPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x984e2cbcdc4a818c3f523010b43fe0259a0dd080` | ⚠️ Unaudited |
| FragmentToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x129776b15dd8b102d2a131df32038782e0428741` | ⚠️ Unaudited |
| LiquidityPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4747eeeeb4fc60630403d775264fdd4848109bf7` | ⚠️ Unaudited |
| Meta | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6da59176fbc92f227853e17202b62d79b82f6a40` | ⚠️ Unaudited |
| MysteryBox | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x47953a414c7f61a5dfa29ef7df713adb699019b3` | ⚠️ Unaudited |
| NftEarnErc20Pool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb3fbfef698799ce355887ae74c3f83c6e390b838` | ⚠️ Unaudited |
| NFTMarket | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x30a5190d1a212a42383970a1faa207000555e6f7` | ⚠️ Unaudited |
| Oracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd22ac2a29a483e2a1385c248974a9535f3270279` | ⚠️ Unaudited |
| SwapFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x73d9f93d53505cb8c4c7f952ae42450d9e859d10` | ⚠️ Unaudited |
| SwapRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe9c7650b97712c0ec958ff270fbf4189fb99c071` | ⚠️ Unaudited |
| Time | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc7184a87d9443a52f6e578e3c0a611468536487f` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x32b03c76d8b3301981777ea5ecf7f8478b9798b7` | ⚠️ Unaudited |
| TradingPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x14a495b23a6fe7938ae5da73cfa153b5e67f2681` | ⚠️ Unaudited |
| Treasury | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcb62632cecaa0ba91370dd0be6acc5d067aa31f5` | ⚠️ Unaudited |
| UniAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7d873fdb5d2eb852d376d14be18c3ac034037f02` | ⚠️ Unaudited |
| vDSGToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x718da2e74fff28b0a0d62aeb4f2afa8f7b521154` | ⚠️ Unaudited |
| vDsgTreasury | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xccf1c8fa4598689236541faa82522691cf40d472` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (115)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0343f91e92662271bbb9884cd730233a3ecbf435` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x03a7c6c99280f0afca2f53ddb9245039b962ca46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0d454c64e4313556fba9a9336aa0babbf3ac9fb2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0de54fb249e1cac06f8190d2588e4c2bb0bbc462` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1052adbf0d3b1d3e2c867afaf69ad37aad6708ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1153fcd94d498fc9a34b68ef060159173c8e9ec4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x123f947a780aa49f20600ddacc182f44c8470fd3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1475ab9e643d053046b88b961c3b4244f257c216` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x171ca1a4e73aee50c736020e83f337bf7382c575` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1b7b8292bf0996a00fc95445213815a0ef2cc6f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1c0484e57f0f6347211ddc6e3e7da61fcb03ea39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1f2b0f5d7dd5791779e7d603f97d5ebccb77dc08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x243e769d279de54c8f39f0129a0557f20c5cefe7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x29b59e0d1ff15ea0e4c580c76e1b563898f0be06` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2de6a186717e6d1652dd442c99a60ba3b6edf1b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2eb53c0ffec4509af4bc7f5ac5a104322a9be8a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x33ae14320402b6d6705b0a8067e8bdc59f3cda16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x367884506318ad8d5a91945b393e6c1676f80de8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3f91a3434eabd3bf2aa30d0f5b60001760b2975d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x42a066197d8075346051400968a11da4cce491d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x47c270f619bee871af2437684ba3af16dbdf1001` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x48bb61ed65690ebcf84c08195c19025dac612d3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4c3307bfdbd09d0d0f7a8914c1633f58b94f69ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x53b971dfde359b1ba80d9a90e1a7247a44940dc1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x556e4c04b6f79b3f6ee5269ac13b62de97681b14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x565083bc0bc8ac8ea6971d42a38b4be10faff16c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5acc2d6f034ec3e05ea9a8085c847662f3774caf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x646c95f47626d18218017c5442b453b6bf9bac09` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6add9430c2853bb0f9724897bdf169052b520b34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6bf722fd26653af510fa7afa32aa473196945223` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6f0d32d0484216965c8e16aeef81142ae8c62e44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7012134ed1add553de0ad6c1732faee1431adb32` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x75712b4d318fd602fc75bd1c3a1142db33979e13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x758289b91ee44de7e6d13c9b7a66536b31f0c35d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7a3d81d2faf35dca05ac569489e217da09d4789b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7b1d00fbb036382bd68a7d773e4d3009571f0eae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7cd583fcfba17bb0d1f4c66431a28c389c976512` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7ee7ba9b7bf8345b76ba5c2095dc30b5dbda8273` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x837120f486b0cf77c97f8a049ca0cd8720d8a15b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8398803ea5eac87451eed4fac325f2924a447b72` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8446d347bed3b02656ce1a066178f5a4f0152430` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x85653058bd7d2caf1aada1b13918b93eea43e58b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x85b8ce5adc058cc81e556c65b190171027e810b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x89690bbc6553c407608d75dca7c623a5373d3d79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8c276d02f01afcc64b72c9b222d7de98a586337a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8ee0eebefddc5f672680e9d3d165bc1dc7591919` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8f5d7535d4c2162d1410720244ea506059ac6f6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9118466853073b6f9b47b97c06a5a6f22a86ebfd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9249cf81fd88d0a1edc69a91c50e95a56bd04ffb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x93987d7862f75911248e26143f095b351528fd92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x97729ac822788de92b6cdeceb83063e1c79bc64e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x99739fc07a6b2b46f2fee5438849a21afc5bde71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9a68512604888a666baa367f587da489a20d8095` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9b338700cbb01f0c4ed3edadcf800c338b303531` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9b5611f1441b1dbd0eb4b16fd4fcc01e3e32290d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9cb483514bc4d2ee3a18697f8e681f96dfe2c0d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9d2acfb36d074b0945b086cf33f65ed75c111d96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa04e157251042c56d260228267c4f3a721f46033` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa062419741f83b2d209ddd399a202f5c8b0161c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa622d7794044bb63e024a3efab4354f9fbf7293c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa6d3c43681b9de5d73bc796611dde36901f7e71c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa7260ffd250ab4621f2f171433204784ab054074` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa7e77ed285d0e59db7b722b311bd47fee04c3d01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xaa8f3f169c3841cdfb70d5687ca5bc6feb7c4560` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xadcb980312e2d4ecc8ff74745646e8da5b031d77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xae9872d37e4ae27eb023c61afc1dc248b88f12b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xaf9b52589711567f62c6524d2d935933113131f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb0913166a20fbb1ac5011794a40a895008a2bec0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb15a1cd571581f6579036805b372f22993e8ba2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb20d9e4bcb6fafaf84e188b9f3de9384621637da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb453d58d864a7f31a81d117d462af51edd3ff473` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb7c2247c95caa349ff187a0c9efbf2f8a315bd9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb7c7cd4239d0852507cba6e3bcfcd2903961bc23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbc1a2ffdb7f0841d6b127617ffedeeb30b6ce3c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbc210c949fd99025d11be63222e7b88a7d4c428c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbc44f2408192c2f853d953b370d449b9fdb9b1f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbe18bc4947d052fa9dab8b5fdbab1ea00c8c3103` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbf7c1ced0c47fa4155d3cda8c468a0e030067446` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc0f162812aecf69bc315ac63d7e7f63ed13cce7d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc3ca5ed971479285e0e7e58fd6b9c0b60a25cdb8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc4ffaf4a6fd74bdbb8671060ef554e715e29a2a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc51508aa27bb755136bd5f3db00708e2476a9c80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc791c37bbbb6c4787a85651a3c6db3967592ba6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc7b6e687c91effed58840ecf81093d163ab3de1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc8317e497d0b7fc2e96d7325f06f3d3bd1eb8d99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd257964a863c71320ef9afa9b0e5e516052d6218` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd2e132786bc6571fd8cc2604927aa779c7a4008b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd509dd9f9f26ed4a052aa48e60d999017a435dbe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd5815a18b7eeb5e0818583ab54a0def7a3f89b88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd749f3a439975d22ca474f02c4253352a84a3b47` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd7b708f7b35341bb3bebc0ae876c901a518ba228` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd7d4d2fe1eb012d011c6ee048be16537c1f9df01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd8a09505a93d97de6fe3fd251027a74a5999eeed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd9e7c9c34d9eb7f94e9cc8837b4b81ea2d71d7f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdab6d282ab3241d39a1c1c62e255c6074f8af002` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdd8a822259b073ad14197a1ebd10ee5705803c6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe106d474ef87fac183d1d1c94ad7261b99759788` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe32c5352d3ba108374701d5333daa3db35345cf0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe36caff3ddc12acdc7ce676f4bd7e97fc7e7c2e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe3d5fdfbb8dafa41e0222f508a0470d21c115404` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe8aa79bc99e81842a4a3c790f9c62ed88fe6b596` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xef750320ae0f10fe5a950704e0ce81aed69671a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf0058e6d6879ad183643633be1d1ffd64f2990e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf02da7c684f56b4e51969489bf033d8ed90e5b3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf4183e68938d8fc67aaa8c76a35804f5148dd890` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf54d9f13934b5fe8e6873ca145cd284b2061b7eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf5aa92c90209c1e5bff9e51aa7ed641d2e410de5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf80e8bea6af0018474123c986059d5483fafab3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf891d415d4764b3c5188cdd0f1eb408e78a252bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfb3626422ee73cf41d369d3a8ff9a5bed8a5fbd5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfb3ef79c23e5941583487c288e4d8f131a2d9ee4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfb6824d1b6f94385dbf90c0796786a9ac05d863a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfb7421220911675b9e06e9ebad68ae32d8645d48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfbd1e13d0611693561c23a84d8c52b3d7cb0c070` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfd1016add140a8998200ac2bdfb3f8e6aeddc2b8` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 116
- Live contracts: 0
- Unknown liveness contracts: 116
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: unverified unclassified=116

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| unverified unclassified | UnnamedContract<br>`0x0343f91e92662271bbb9884cd730233a3ecbf435` | non_address_book | unknown | unknown | unverified | n/a | `0x8e8c01e78f15912c815407117893cf0226ca4f88` |
| unverified unclassified | UnnamedContract<br>`0x03a7c6c99280f0afca2f53ddb9245039b962ca46` | non_address_book | unknown | unknown | unverified | n/a | `0x8e8c01e78f15912c815407117893cf0226ca4f88` |
| unverified unclassified | UnnamedContract<br>`0x0d454c64e4313556fba9a9336aa0babbf3ac9fb2` | non_address_book | unknown | unknown | unverified | n/a | `0x8e8c01e78f15912c815407117893cf0226ca4f88` |
| unverified unclassified | UnnamedContract<br>`0x0de54fb249e1cac06f8190d2588e4c2bb0bbc462` | non_address_book | unknown | unknown | unverified | n/a | `0x8e8c01e78f15912c815407117893cf0226ca4f88` |
| unverified unclassified | UnnamedContract<br>`0x1052adbf0d3b1d3e2c867afaf69ad37aad6708ea` | non_address_book | unknown | unknown | unverified | n/a | `0x8e8c01e78f15912c815407117893cf0226ca4f88` |
| unverified unclassified | UnnamedContract<br>`0x1153fcd94d498fc9a34b68ef060159173c8e9ec4` | non_address_book | unknown | unknown | unverified | n/a | `0x8e8c01e78f15912c815407117893cf0226ca4f88` |
| unverified unclassified | UnnamedContract<br>`0x123f947a780aa49f20600ddacc182f44c8470fd3` | non_address_book | unknown | unknown | unverified | n/a | `0x8e8c01e78f15912c815407117893cf0226ca4f88` |
| unverified unclassified | UnnamedContract<br>`0x1475ab9e643d053046b88b961c3b4244f257c216` | non_address_book | unknown | unknown | unverified | n/a | `0x8e8c01e78f15912c815407117893cf0226ca4f88` |
| unverified unclassified | UnnamedContract<br>`0x171ca1a4e73aee50c736020e83f337bf7382c575` | non_address_book | unknown | unknown | unverified | n/a | `0x8e8c01e78f15912c815407117893cf0226ca4f88` |
| unverified unclassified | UnnamedContract<br>`0x1b7b8292bf0996a00fc95445213815a0ef2cc6f7` | non_address_book | unknown | unknown | unverified | n/a | `0x8e8c01e78f15912c815407117893cf0226ca4f88` |
| unverified unclassified | UnnamedContract<br>`0x1c0484e57f0f6347211ddc6e3e7da61fcb03ea39` | non_address_book | unknown | unknown | unverified | n/a | `0x8e8c01e78f15912c815407117893cf0226ca4f88` |
| unverified unclassified | UnnamedContract<br>`0x1f2b0f5d7dd5791779e7d603f97d5ebccb77dc08` | non_address_book | unknown | unknown | unverified | n/a | `0x8e8c01e78f15912c815407117893cf0226ca4f88` |
| unverified unclassified | UnnamedContract<br>`0x243e769d279de54c8f39f0129a0557f20c5cefe7` | non_address_book | unknown | unknown | unverified | n/a | `0x8e8c01e78f15912c815407117893cf0226ca4f88` |
| unverified unclassified | UnnamedContract<br>`0x29b59e0d1ff15ea0e4c580c76e1b563898f0be06` | non_address_book | unknown | unknown | unverified | n/a | `0x8e8c01e78f15912c815407117893cf0226ca4f88` |
| unverified unclassified | UnnamedContract<br>`0x2de6a186717e6d1652dd442c99a60ba3b6edf1b4` | non_address_book | unknown | unknown | unverified | n/a | `0x8e8c01e78f15912c815407117893cf0226ca4f88` |
| unverified unclassified | UnnamedContract<br>`0x2eb53c0ffec4509af4bc7f5ac5a104322a9be8a5` | non_address_book | unknown | unknown | unverified | n/a | `0x8e8c01e78f15912c815407117893cf0226ca4f88` |
| unverified unclassified | UnnamedContract<br>`0x33ae14320402b6d6705b0a8067e8bdc59f3cda16` | non_address_book | unknown | unknown | unverified | n/a | `0x8e8c01e78f15912c815407117893cf0226ca4f88` |
| unverified unclassified | UnnamedContract<br>`0x367884506318ad8d5a91945b393e6c1676f80de8` | non_address_book | unknown | unknown | unverified | n/a | `0x8e8c01e78f15912c815407117893cf0226ca4f88` |
| unverified unclassified | UnnamedContract<br>`0x3f91a3434eabd3bf2aa30d0f5b60001760b2975d` | non_address_book | unknown | unknown | unverified | n/a | `0x8e8c01e78f15912c815407117893cf0226ca4f88` |
| unverified unclassified | UnnamedContract<br>`0x42a066197d8075346051400968a11da4cce491d4` | non_address_book | unknown | unknown | unverified | n/a | `0x8e8c01e78f15912c815407117893cf0226ca4f88` |
| unverified unclassified | UnnamedContract<br>`0x47c270f619bee871af2437684ba3af16dbdf1001` | non_address_book | unknown | unknown | unverified | n/a | `0x8e8c01e78f15912c815407117893cf0226ca4f88` |
| unverified unclassified | UnnamedContract<br>`0x48bb61ed65690ebcf84c08195c19025dac612d3a` | non_address_book | unknown | unknown | unverified | n/a | `0x8e8c01e78f15912c815407117893cf0226ca4f88` |
| unverified unclassified | UnnamedContract<br>`0x4c3307bfdbd09d0d0f7a8914c1633f58b94f69ab` | non_address_book | unknown | unknown | unverified | n/a | `0x8e8c01e78f15912c815407117893cf0226ca4f88` |
| unverified unclassified | UnnamedContract<br>`0x53b971dfde359b1ba80d9a90e1a7247a44940dc1` | non_address_book | unknown | unknown | unverified | n/a | `0x8e8c01e78f15912c815407117893cf0226ca4f88` |
| unverified unclassified | UnnamedContract<br>`0x556e4c04b6f79b3f6ee5269ac13b62de97681b14` | non_address_book | unknown | unknown | unverified | n/a | `0x8e8c01e78f15912c815407117893cf0226ca4f88` |
| unverified unclassified | UnnamedContract<br>`0x565083bc0bc8ac8ea6971d42a38b4be10faff16c` | non_address_book | unknown | unknown | unverified | n/a | `0x8e8c01e78f15912c815407117893cf0226ca4f88` |
| unverified unclassified | UnnamedContract<br>`0x5acc2d6f034ec3e05ea9a8085c847662f3774caf` | non_address_book | unknown | unknown | unverified | n/a | `0x8e8c01e78f15912c815407117893cf0226ca4f88` |
| unverified unclassified | UnnamedContract<br>`0x646c95f47626d18218017c5442b453b6bf9bac09` | non_address_book | unknown | unknown | unverified | n/a | `0x8e8c01e78f15912c815407117893cf0226ca4f88` |
| unverified unclassified | UnnamedContract<br>`0x6add9430c2853bb0f9724897bdf169052b520b34` | non_address_book | unknown | unknown | unverified | n/a | `0x8e8c01e78f15912c815407117893cf0226ca4f88` |
| unverified unclassified | UnnamedContract<br>`0x6bf722fd26653af510fa7afa32aa473196945223` | non_address_book | unknown | unknown | unverified | n/a | `0x8e8c01e78f15912c815407117893cf0226ca4f88` |
| unverified unclassified | UnnamedContract<br>`0x6f0d32d0484216965c8e16aeef81142ae8c62e44` | non_address_book | unknown | unknown | unverified | n/a | `0x8e8c01e78f15912c815407117893cf0226ca4f88` |
| unverified unclassified | UnnamedContract<br>`0x7012134ed1add553de0ad6c1732faee1431adb32` | non_address_book | unknown | unknown | unverified | n/a | `0x8e8c01e78f15912c815407117893cf0226ca4f88` |
| unverified unclassified | UnnamedContract<br>`0x75712b4d318fd602fc75bd1c3a1142db33979e13` | non_address_book | unknown | unknown | unverified | n/a | `0x8e8c01e78f15912c815407117893cf0226ca4f88` |
| unverified unclassified | UnnamedContract<br>`0x758289b91ee44de7e6d13c9b7a66536b31f0c35d` | non_address_book | unknown | unknown | unverified | n/a | `0x8e8c01e78f15912c815407117893cf0226ca4f88` |
| unverified unclassified | UnnamedContract<br>`0x7a3d81d2faf35dca05ac569489e217da09d4789b` | non_address_book | unknown | unknown | unverified | n/a | `0x8e8c01e78f15912c815407117893cf0226ca4f88` |
| unverified unclassified | UnnamedContract<br>`0x7b1d00fbb036382bd68a7d773e4d3009571f0eae` | non_address_book | unknown | unknown | unverified | n/a | `0x8e8c01e78f15912c815407117893cf0226ca4f88` |
| unverified unclassified | UnnamedContract<br>`0x7cd583fcfba17bb0d1f4c66431a28c389c976512` | non_address_book | unknown | unknown | unverified | n/a | `0x8e8c01e78f15912c815407117893cf0226ca4f88` |
| unverified unclassified | UnnamedContract<br>`0x7ee7ba9b7bf8345b76ba5c2095dc30b5dbda8273` | non_address_book | unknown | unknown | unverified | n/a | `0x8e8c01e78f15912c815407117893cf0226ca4f88` |
| unverified unclassified | UnnamedContract<br>`0x837120f486b0cf77c97f8a049ca0cd8720d8a15b` | non_address_book | unknown | unknown | unverified | n/a | `0x8e8c01e78f15912c815407117893cf0226ca4f88` |
| unverified unclassified | UnnamedContract<br>`0x8398803ea5eac87451eed4fac325f2924a447b72` | non_address_book | unknown | unknown | unverified | n/a | `0x8e8c01e78f15912c815407117893cf0226ca4f88` |
| unverified unclassified | UnnamedContract<br>`0x8446d347bed3b02656ce1a066178f5a4f0152430` | non_address_book | unknown | unknown | unverified | n/a | `0x8e8c01e78f15912c815407117893cf0226ca4f88` |
| unverified unclassified | UnnamedContract<br>`0x85653058bd7d2caf1aada1b13918b93eea43e58b` | non_address_book | unknown | unknown | unverified | n/a | `0x8e8c01e78f15912c815407117893cf0226ca4f88` |
| unverified unclassified | UnnamedContract<br>`0x85b8ce5adc058cc81e556c65b190171027e810b3` | non_address_book | unknown | unknown | unverified | n/a | `0x8e8c01e78f15912c815407117893cf0226ca4f88` |
| unverified unclassified | UnnamedContract<br>`0x89690bbc6553c407608d75dca7c623a5373d3d79` | non_address_book | unknown | unknown | unverified | n/a | `0x8e8c01e78f15912c815407117893cf0226ca4f88` |
| unverified unclassified | UnnamedContract<br>`0x8c276d02f01afcc64b72c9b222d7de98a586337a` | non_address_book | unknown | unknown | unverified | n/a | `0x8e8c01e78f15912c815407117893cf0226ca4f88` |
| unverified unclassified | UnnamedContract<br>`0x8ee0eebefddc5f672680e9d3d165bc1dc7591919` | non_address_book | unknown | unknown | unverified | n/a | `0x8e8c01e78f15912c815407117893cf0226ca4f88` |
| unverified unclassified | UnnamedContract<br>`0x8f5d7535d4c2162d1410720244ea506059ac6f6d` | non_address_book | unknown | unknown | unverified | n/a | `0x8e8c01e78f15912c815407117893cf0226ca4f88` |
| unverified unclassified | UnnamedContract<br>`0x9118466853073b6f9b47b97c06a5a6f22a86ebfd` | non_address_book | unknown | unknown | unverified | n/a | `0x8e8c01e78f15912c815407117893cf0226ca4f88` |
| unverified unclassified | UnnamedContract<br>`0x9249cf81fd88d0a1edc69a91c50e95a56bd04ffb` | non_address_book | unknown | unknown | unverified | n/a | `0x8e8c01e78f15912c815407117893cf0226ca4f88` |
| unverified unclassified | UnnamedContract<br>`0x93987d7862f75911248e26143f095b351528fd92` | non_address_book | unknown | unknown | unverified | n/a | `0x8e8c01e78f15912c815407117893cf0226ca4f88` |
| unverified unclassified | UnnamedContract<br>`0x97729ac822788de92b6cdeceb83063e1c79bc64e` | non_address_book | unknown | unknown | unverified | n/a | `0x8e8c01e78f15912c815407117893cf0226ca4f88` |
| unverified unclassified | UnnamedContract<br>`0x99739fc07a6b2b46f2fee5438849a21afc5bde71` | non_address_book | unknown | unknown | unverified | n/a | `0x8e8c01e78f15912c815407117893cf0226ca4f88` |
| unverified unclassified | UnnamedContract<br>`0x9a68512604888a666baa367f587da489a20d8095` | non_address_book | unknown | unknown | unverified | n/a | `0x8e8c01e78f15912c815407117893cf0226ca4f88` |
| unverified unclassified | UnnamedContract<br>`0x9b338700cbb01f0c4ed3edadcf800c338b303531` | non_address_book | unknown | unknown | unverified | n/a | `0x8e8c01e78f15912c815407117893cf0226ca4f88` |
| unverified unclassified | UnnamedContract<br>`0x9b5611f1441b1dbd0eb4b16fd4fcc01e3e32290d` | non_address_book | unknown | unknown | unverified | n/a | `0x8e8c01e78f15912c815407117893cf0226ca4f88` |
| unverified unclassified | UnnamedContract<br>`0x9cb483514bc4d2ee3a18697f8e681f96dfe2c0d1` | non_address_book | unknown | unknown | unverified | n/a | `0x8e8c01e78f15912c815407117893cf0226ca4f88` |
| unverified unclassified | UnnamedContract<br>`0x9d2acfb36d074b0945b086cf33f65ed75c111d96` | non_address_book | unknown | unknown | unverified | n/a | `0x8e8c01e78f15912c815407117893cf0226ca4f88` |
| unverified unclassified | UnnamedContract<br>`0xa04e157251042c56d260228267c4f3a721f46033` | non_address_book | unknown | unknown | unverified | n/a | `0x8e8c01e78f15912c815407117893cf0226ca4f88` |
| unverified unclassified | UnnamedContract<br>`0xa062419741f83b2d209ddd399a202f5c8b0161c3` | non_address_book | unknown | unknown | unverified | n/a | `0x8e8c01e78f15912c815407117893cf0226ca4f88` |
| unverified unclassified | UnnamedContract<br>`0xa622d7794044bb63e024a3efab4354f9fbf7293c` | non_address_book | unknown | unknown | unverified | n/a | `0x8e8c01e78f15912c815407117893cf0226ca4f88` |
| unverified unclassified | UnnamedContract<br>`0xa6d3c43681b9de5d73bc796611dde36901f7e71c` | non_address_book | unknown | unknown | unverified | n/a | `0x8e8c01e78f15912c815407117893cf0226ca4f88` |
| unverified unclassified | UnnamedContract<br>`0xa7260ffd250ab4621f2f171433204784ab054074` | non_address_book | unknown | unknown | unverified | n/a | `0x8e8c01e78f15912c815407117893cf0226ca4f88` |
| unverified unclassified | UnnamedContract<br>`0xa7e77ed285d0e59db7b722b311bd47fee04c3d01` | non_address_book | unknown | unknown | unverified | n/a | `0x8e8c01e78f15912c815407117893cf0226ca4f88` |
| unverified unclassified | UnnamedContract<br>`0xaa8f3f169c3841cdfb70d5687ca5bc6feb7c4560` | non_address_book | unknown | unknown | unverified | n/a | `0x8e8c01e78f15912c815407117893cf0226ca4f88` |
| unverified unclassified | UnnamedContract<br>`0xadcb980312e2d4ecc8ff74745646e8da5b031d77` | non_address_book | unknown | unknown | unverified | n/a | `0x8e8c01e78f15912c815407117893cf0226ca4f88` |
| unverified unclassified | UnnamedContract<br>`0xae9872d37e4ae27eb023c61afc1dc248b88f12b9` | non_address_book | unknown | unknown | unverified | n/a | `0x8e8c01e78f15912c815407117893cf0226ca4f88` |
| unverified unclassified | UnnamedContract<br>`0xaf9b52589711567f62c6524d2d935933113131f1` | non_address_book | unknown | unknown | unverified | n/a | `0x8e8c01e78f15912c815407117893cf0226ca4f88` |
| unverified unclassified | UnnamedContract<br>`0xb0913166a20fbb1ac5011794a40a895008a2bec0` | non_address_book | unknown | unknown | unverified | n/a | `0x8e8c01e78f15912c815407117893cf0226ca4f88` |
| unverified unclassified | UnnamedContract<br>`0xb15a1cd571581f6579036805b372f22993e8ba2a` | non_address_book | unknown | unknown | unverified | n/a | `0x8e8c01e78f15912c815407117893cf0226ca4f88` |
| unverified unclassified | UnnamedContract<br>`0xb20d9e4bcb6fafaf84e188b9f3de9384621637da` | non_address_book | unknown | unknown | unverified | n/a | `0x8e8c01e78f15912c815407117893cf0226ca4f88` |
| unverified unclassified | UnnamedContract<br>`0xb453d58d864a7f31a81d117d462af51edd3ff473` | non_address_book | unknown | unknown | unverified | n/a | `0x8e8c01e78f15912c815407117893cf0226ca4f88` |
| unverified unclassified | UnnamedContract<br>`0xb7c2247c95caa349ff187a0c9efbf2f8a315bd9b` | non_address_book | unknown | unknown | unverified | n/a | `0x8e8c01e78f15912c815407117893cf0226ca4f88` |
| unverified unclassified | UnnamedContract<br>`0xb7c7cd4239d0852507cba6e3bcfcd2903961bc23` | non_address_book | unknown | unknown | unverified | n/a | `0x8e8c01e78f15912c815407117893cf0226ca4f88` |
| unverified unclassified | UnnamedContract<br>`0xbc1a2ffdb7f0841d6b127617ffedeeb30b6ce3c2` | non_address_book | unknown | unknown | unverified | n/a | `0x8e8c01e78f15912c815407117893cf0226ca4f88` |
| unverified unclassified | UnnamedContract<br>`0xbc210c949fd99025d11be63222e7b88a7d4c428c` | non_address_book | unknown | unknown | unverified | n/a | `0x8e8c01e78f15912c815407117893cf0226ca4f88` |
| unverified unclassified | UnnamedContract<br>`0xbc44f2408192c2f853d953b370d449b9fdb9b1f6` | non_address_book | unknown | unknown | unverified | n/a | `0x8e8c01e78f15912c815407117893cf0226ca4f88` |
| unverified unclassified | UnnamedContract<br>`0xbe18bc4947d052fa9dab8b5fdbab1ea00c8c3103` | non_address_book | unknown | unknown | unverified | n/a | `0x8e8c01e78f15912c815407117893cf0226ca4f88` |
| unverified unclassified | UnnamedContract<br>`0xbf7c1ced0c47fa4155d3cda8c468a0e030067446` | non_address_book | unknown | unknown | unverified | n/a | `0x8e8c01e78f15912c815407117893cf0226ca4f88` |
| unverified unclassified | UnnamedContract<br>`0xc0f162812aecf69bc315ac63d7e7f63ed13cce7d` | non_address_book | unknown | unknown | unverified | n/a | `0x8e8c01e78f15912c815407117893cf0226ca4f88` |
| unverified unclassified | UnnamedContract<br>`0xc3ca5ed971479285e0e7e58fd6b9c0b60a25cdb8` | non_address_book | unknown | unknown | unverified | n/a | `0x8e8c01e78f15912c815407117893cf0226ca4f88` |
| unverified unclassified | UnnamedContract<br>`0xc4ffaf4a6fd74bdbb8671060ef554e715e29a2a6` | non_address_book | unknown | unknown | unverified | n/a | `0x8e8c01e78f15912c815407117893cf0226ca4f88` |
| unverified unclassified | UnnamedContract<br>`0xc51508aa27bb755136bd5f3db00708e2476a9c80` | non_address_book | unknown | unknown | unverified | n/a | `0x8e8c01e78f15912c815407117893cf0226ca4f88` |
| unverified unclassified | UnnamedContract<br>`0xc791c37bbbb6c4787a85651a3c6db3967592ba6a` | non_address_book | unknown | unknown | unverified | n/a | `0x8e8c01e78f15912c815407117893cf0226ca4f88` |
| unverified unclassified | UnnamedContract<br>`0xc7b6e687c91effed58840ecf81093d163ab3de1f` | non_address_book | unknown | unknown | unverified | n/a | `0x8e8c01e78f15912c815407117893cf0226ca4f88` |
| unverified unclassified | UnnamedContract<br>`0xc8317e497d0b7fc2e96d7325f06f3d3bd1eb8d99` | non_address_book | unknown | unknown | unverified | n/a | `0x8e8c01e78f15912c815407117893cf0226ca4f88` |
| unverified unclassified | UnnamedContract<br>`0xd257964a863c71320ef9afa9b0e5e516052d6218` | non_address_book | unknown | unknown | unverified | n/a | `0x8e8c01e78f15912c815407117893cf0226ca4f88` |
| unverified unclassified | UnnamedContract<br>`0xd2e132786bc6571fd8cc2604927aa779c7a4008b` | non_address_book | unknown | unknown | unverified | n/a | `0x8e8c01e78f15912c815407117893cf0226ca4f88` |
| unverified unclassified | UnnamedContract<br>`0xd509dd9f9f26ed4a052aa48e60d999017a435dbe` | non_address_book | unknown | unknown | unverified | n/a | `0x8e8c01e78f15912c815407117893cf0226ca4f88` |
| unverified unclassified | UnnamedContract<br>`0xd5815a18b7eeb5e0818583ab54a0def7a3f89b88` | non_address_book | unknown | unknown | unverified | n/a | `0x8e8c01e78f15912c815407117893cf0226ca4f88` |
| unverified unclassified | UnnamedContract<br>`0xd749f3a439975d22ca474f02c4253352a84a3b47` | non_address_book | unknown | unknown | unverified | n/a | `0x8e8c01e78f15912c815407117893cf0226ca4f88` |
| unverified unclassified | UnnamedContract<br>`0xd7b708f7b35341bb3bebc0ae876c901a518ba228` | non_address_book | unknown | unknown | unverified | n/a | `0x8e8c01e78f15912c815407117893cf0226ca4f88` |
| unverified unclassified | UnnamedContract<br>`0xd7d4d2fe1eb012d011c6ee048be16537c1f9df01` | non_address_book | unknown | unknown | unverified | n/a | `0x8e8c01e78f15912c815407117893cf0226ca4f88` |
| unverified unclassified | UnnamedContract<br>`0xd8a09505a93d97de6fe3fd251027a74a5999eeed` | non_address_book | unknown | unknown | unverified | n/a | `0x8e8c01e78f15912c815407117893cf0226ca4f88` |
| unverified unclassified | UnnamedContract<br>`0xd9e7c9c34d9eb7f94e9cc8837b4b81ea2d71d7f3` | non_address_book | unknown | unknown | unverified | n/a | `0x8e8c01e78f15912c815407117893cf0226ca4f88` |
| unverified unclassified | UnnamedContract<br>`0xdab6d282ab3241d39a1c1c62e255c6074f8af002` | non_address_book | unknown | unknown | unverified | n/a | `0x8e8c01e78f15912c815407117893cf0226ca4f88` |
| unverified unclassified | UnnamedContract<br>`0xdd8a822259b073ad14197a1ebd10ee5705803c6d` | non_address_book | unknown | unknown | unverified | n/a | `0x8e8c01e78f15912c815407117893cf0226ca4f88` |
| unverified unclassified | UnnamedContract<br>`0xe106d474ef87fac183d1d1c94ad7261b99759788` | non_address_book | unknown | unknown | unverified | n/a | `0x8e8c01e78f15912c815407117893cf0226ca4f88` |
| unverified unclassified | UnnamedContract<br>`0xe32c5352d3ba108374701d5333daa3db35345cf0` | non_address_book | unknown | unknown | unverified | n/a | `0x8e8c01e78f15912c815407117893cf0226ca4f88` |
| unverified unclassified | UnnamedContract<br>`0xe36caff3ddc12acdc7ce676f4bd7e97fc7e7c2e3` | non_address_book | unknown | unknown | unverified | n/a | `0x8e8c01e78f15912c815407117893cf0226ca4f88` |
| unverified unclassified | UnnamedContract<br>`0xe3d5fdfbb8dafa41e0222f508a0470d21c115404` | non_address_book | unknown | unknown | unverified | n/a | `0x8e8c01e78f15912c815407117893cf0226ca4f88` |
| unverified unclassified | UnnamedContract<br>`0xe8aa79bc99e81842a4a3c790f9c62ed88fe6b596` | non_address_book | unknown | unknown | unverified | n/a | `0x8e8c01e78f15912c815407117893cf0226ca4f88` |
| unverified unclassified | UnnamedContract<br>`0xea75629b60bf7b3e94d5da06097cb16d87a4a614` | non_address_book | unknown | unknown | unverified | n/a | `0x8e8c01e78f15912c815407117893cf0226ca4f88` |
| unverified unclassified | UnnamedContract<br>`0xef750320ae0f10fe5a950704e0ce81aed69671a9` | non_address_book | unknown | unknown | unverified | n/a | `0x8e8c01e78f15912c815407117893cf0226ca4f88` |
| unverified unclassified | UnnamedContract<br>`0xf0058e6d6879ad183643633be1d1ffd64f2990e4` | non_address_book | unknown | unknown | unverified | n/a | `0x8e8c01e78f15912c815407117893cf0226ca4f88` |
| unverified unclassified | UnnamedContract<br>`0xf02da7c684f56b4e51969489bf033d8ed90e5b3d` | non_address_book | unknown | unknown | unverified | n/a | `0x8e8c01e78f15912c815407117893cf0226ca4f88` |
| unverified unclassified | UnnamedContract<br>`0xf4183e68938d8fc67aaa8c76a35804f5148dd890` | non_address_book | unknown | unknown | unverified | n/a | `0x8e8c01e78f15912c815407117893cf0226ca4f88` |
| unverified unclassified | UnnamedContract<br>`0xf54d9f13934b5fe8e6873ca145cd284b2061b7eb` | non_address_book | unknown | unknown | unverified | n/a | `0x8e8c01e78f15912c815407117893cf0226ca4f88` |
| unverified unclassified | UnnamedContract<br>`0xf5aa92c90209c1e5bff9e51aa7ed641d2e410de5` | non_address_book | unknown | unknown | unverified | n/a | `0x8e8c01e78f15912c815407117893cf0226ca4f88` |
| unverified unclassified | UnnamedContract<br>`0xf80e8bea6af0018474123c986059d5483fafab3b` | non_address_book | unknown | unknown | unverified | n/a | `0x8e8c01e78f15912c815407117893cf0226ca4f88` |
| unverified unclassified | UnnamedContract<br>`0xf891d415d4764b3c5188cdd0f1eb408e78a252bf` | non_address_book | unknown | unknown | unverified | n/a | `0x8e8c01e78f15912c815407117893cf0226ca4f88` |
| unverified unclassified | UnnamedContract<br>`0xfb3626422ee73cf41d369d3a8ff9a5bed8a5fbd5` | non_address_book | unknown | unknown | unverified | n/a | `0x8e8c01e78f15912c815407117893cf0226ca4f88` |
| unverified unclassified | UnnamedContract<br>`0xfb3ef79c23e5941583487c288e4d8f131a2d9ee4` | non_address_book | unknown | unknown | unverified | n/a | `0x8e8c01e78f15912c815407117893cf0226ca4f88` |
| unverified unclassified | UnnamedContract<br>`0xfb6824d1b6f94385dbf90c0796786a9ac05d863a` | non_address_book | unknown | unknown | unverified | n/a | `0x8e8c01e78f15912c815407117893cf0226ca4f88` |
| unverified unclassified | UnnamedContract<br>`0xfb7421220911675b9e06e9ebad68ae32d8645d48` | non_address_book | unknown | unknown | unverified | n/a | `0x8e8c01e78f15912c815407117893cf0226ca4f88` |
| unverified unclassified | UnnamedContract<br>`0xfbd1e13d0611693561c23a84d8c52b3d7cb0c070` | non_address_book | unknown | unknown | unverified | n/a | `0x8e8c01e78f15912c815407117893cf0226ca4f88` |
| unverified unclassified | UnnamedContract<br>`0xfd1016add140a8998200ac2bdfb3f8e6aeddc2b8` | non_address_book | unknown | unknown | unverified | n/a | `0x8e8c01e78f15912c815407117893cf0226ca4f88` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [DL audit link](https://skynet.certik.com/projects/dinosaureggs) | CertiK | Audit | 2021-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [19714] DL audit link — no match: Extracted from Audited Files section; only two files explicitly listed.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| DL audit link | MysteryBox | unmatched — not counted | — | listed in Audited Files | no |
| DL audit link | NftMarket | unmatched — not counted | — | listed in Audited Files | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | `0x9a78649501bbaac285ea4187299471b7ad4abd35` | DSGToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 21 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 115 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 2 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: n/a

Zero-match audit list:

- [19714] DL audit link

Fork inheritance lineage and inherited audits are included when available.
