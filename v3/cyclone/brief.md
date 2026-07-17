# Agentic Audit Brief: Cyclone

## Export Authority

- Production state: **published scope**
- Raw selected rows: 6 across 2 audit(s)
- Eligible audit results: 5 (2 matched; 3 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Cyclone (`cyclone`)
- Website: [https://cyclone.xyz](https://cyclone.xyz)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: bsc, ethereum, polygon
- Contract surface: 87 unique implementations (158 raw deployments)
- Coverage basis: 4/20 confirmed own live verified implementations (20.0%); conservative 20.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,117,986.94
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Cyclone. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 20 contract row(s) across bsc, ethereum, polygon. Structural roles: 13 core, 4 unclassified, 3 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 20
- Structural roles: core (13), unclassified (4), supporting (3)
- Contract kinds: contract (20)
- Detected standards: erc20 (3)
- Frameworks: openzeppelin (15)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 21 contracts are derived from known codebases. 21 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x7c994fb3a8c208c1750df937d473040c604292d6`, chain 1)
- UnnamedContract (`0x949452e32db13a5771445cf20b304474b866202b`, chain 1)
- UnnamedContract (`0xb6e9ea062a7719846bc9e3e3ae8712e74faad376`, chain 137)
- AeolusV2 (`0x92a737097d711bec4c31351997254e98e5f0d430`, chain 56)
- AeolusV2dot1 (`0xdc71bc29d12960a3ee5452fac6f033a1b8e756fb`, chain 1)
- AeolusV2dot1 (`0xa8c187d8773bc9e49a10554715ff49bdcf39d55d`, chain 137)
- CycloneToken (`0x8861cff2366c1128fd699b68304ad99a0764ef9a`, chain 1)
- CycloneToken (`0x810ee35443639348adbbc467b33310d2ab43c168`, chain 56)
- CycloneToken (`0xcfb54a6d2da14abecd231174fc5735b4436965d8`, chain 137)
- CycloneV2 (`0x66b5e322dc31f8c7a33ffd23975163795f8d16c7`, chain 56)
- CycloneV2 (`0x79459751f6882868d1299bfa412428488b434541`, chain 56)
- CycloneV2 (`0xbe19d541389c9d3e03efc08f3d5008e8c9cc42a5`, chain 56)
- CycloneV2dot1 (`0xd90a6bf8439ef7214cf00da83e926068b6a507ec`, chain 56)
- CycloneV2dot2 (`0xd619c8da0a58b63be7fa69b4cc648916fe95fa1b`, chain 1)
- CycloneV2dot3 (`0x09f03488291063a8f3c67d2aab7002419d11c113`, chain 1)
- CycloneV2dot3 (`0xa38b6742cef9573f7f97c387278fa31482539c3d`, chain 1)
- CycloneV2dot3 (`0x517ceee661b57ed7d5b615bf700cb307d87a025b`, chain 137)
- CycloneV2dot3 (`0x5194932ad0f889b1e31041b8006a58ff70a11f43`, chain 137)
- CycloneV2dot3 (`0x8e6e472e4a3f8b1951d2970f59b3944eff707e10`, chain 137)
- PancakeRouter (`0x10ed43c718714eb63d5aa57b78b54704e256024e`, chain 56)
- UniswapV2CycloneRouter (`0xfcb851ad3d98bd241dbe395ca1e6080f489d4624`, chain 137)

## Contract Surface Quality

- Logic-topography rows: 20; live-surface rows included: 20 (20 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 23/23 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 4/20 (20.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 23 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 64 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 2
- Confirmed-live implementations: 23 of 87 unique; 64 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 4/41
- Verified + Unaudited implementations: 37
- Verified by bytecode match: 0
- Unverified implementations: 46
- Unique implementations: 87
- Raw deployments: 158
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-04 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 4 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 2 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 3 match-unverified
- Tier 1 coverage: 10.0% (SlowMist)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| yAudit | Tier 2 | 3 | 7.3% | 2021-04 |
| Slowmist | Tier 1 | 2 | 4.9% | 2021-03 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AeolusV2 | unknown | project_anchor | own_supporting | 0 | bsc | unit-234796 | `0x92a737097d711bec4c31351997254e98e5f0d430` | ✅ Audited |
| CycloneToken | token | project_anchor | own_supporting | 0 | bsc | unit-234794 | `0x810ee35443639348adbbc467b33310d2ab43c168` | ✅ Audited |
| CycloneV2dot1 | unknown | project_anchor | own_supporting | 0 | bsc | unit-234798 | `0xd90a6bf8439ef7214cf00da83e926068b6a507ec` | ✅ Audited |
| UniswapV2CycloneRouter | adapter | project_anchor | own_supporting | 0 | polygon | unit-234790 | `0xfcb851ad3d98bd241dbe395ca1e6080f489d4624` | ✅ Audited |

### ⚠️ Verified + Unaudited (37)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AeolusV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x1fb0e0a9c8afb1be54f570fee1085a3dd9f9009a`; bsc `0x567da514637cfd7f9e1f185ae4aa163b3ebb5363`; bsc `0x74fb687ad9c2c7635a8cab7dbb97d2b025fa85fa` | ⚠️ Unaudited |
| AeolusV2dot1 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-234783 | `0xdc71bc29d12960a3ee5452fac6f033a1b8e756fb` | ⚠️ Unaudited |
| AeolusV2dot1 | unknown | project_anchor | own_supporting | 0 | polygon | unit-234787 | `0xa8c187d8773bc9e49a10554715ff49bdcf39d55d` | ⚠️ Unaudited |
| ChildChainManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: polygon `0x195fe6ee6639665cceb15bcceb9980fc445dfa0b`; polygon `0x316c79f8fb55eddb4e7b0710aff920e1c05548d0` | ⚠️ Unaudited |
| ChildChainManager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0xa6fa4fb5f76172d178d61b04b0ecd319c5d1c0aa` | ⚠️ Unaudited |
| ChildChainManagerProxy | governance | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xafeea1de9d660d3cb53031cfe1a58de40b171ce8` | ⚠️ Unaudited |
| ChildERC1155 | token | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa0c68c638235ee32657e8f720a23cec1bfc77c77` | ⚠️ Unaudited |
| ChildERC20 | token | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 16 deployments: polygon `0x0b9020d4e32990d67559b1317c7bf0c15d6eb88f`; polygon `0x46ca157573005281774be9be9a4187cce4ec1871`; polygon `0x4a8766156f3614731614bb4573a3bd245de1f2b9`; polygon `0x4e5612d10ccbe6a029b8e5258f1a191eea1f6db6`; polygon `0x53e0bca35ec356bd5dddfebbd1fc0fd03fabad39`; polygon `0x556f501cf8a43216df5bc9cc57eb04d4ffaa9e6d`; polygon `0x578360adf0bbb2f10ec9cec7ef89ef495511ed5f`; polygon `0x5fab5764f263c5ce93424f8c45e46a742cc5c8d6`; polygon `0x6bfb5bfa7753ba1ce0f60017a16d8dd67aa19243`; polygon `0x71b821aa52a49f32eed535fca6eb5aa130085978`; polygon `0x8484ef722627bf18ca5ae6bcf031c23e6e922b30`; polygon `0xadc0c4a3d39bb1107bfe86099dd855360e69ea73`; polygon `0xb6a508b418d49080ce4ae4f140e585a0f95c1326`; polygon `0xca34415601f4f050d77bfe939ba68c96e228a223`; polygon `0xeffdcb49c2d0ef813764b709ca3c6fe71f230e3e`; polygon `0xf2f3bd7ca5746c5fac518f67d1be87805a2be82a` | ⚠️ Unaudited |
| ChildERC721 | token | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6ebeac13f6403d19c95b6b75008b12fd21a93aab` | ⚠️ Unaudited |
| ChildMintableERC721 | token | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd4888fab8bd39a663b63161f5ee1eae31a25b653` | ⚠️ Unaudited |
| CycloneToken | token | project_anchor | own_supporting | 0 | ethereum | unit-234779 | `0x8861cff2366c1128fd699b68304ad99a0764ef9a` | ⚠️ Unaudited |
| CycloneToken | token | project_anchor | own_supporting | 0 | polygon | unit-234789 | `0xcfb54a6d2da14abecd231174fc5735b4436965d8` | ⚠️ Unaudited |
| CycloneV2 | unknown | project_anchor | own_supporting | 0 | bsc | unit-234792 | `0x66b5e322dc31f8c7a33ffd23975163795f8d16c7` | ⚠️ Unaudited |
| CycloneV2 | unknown | project_anchor | own_supporting | 0 | bsc | unit-234793 | `0x79459751f6882868d1299bfa412428488b434541` | ⚠️ Unaudited |
| CycloneV2 | unknown | project_anchor | own_supporting | 0 | bsc | unit-234797 | `0xbe19d541389c9d3e03efc08f3d5008e8c9cc42a5` | ⚠️ Unaudited |
| CycloneV2dot2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-234782 | `0xd619c8da0a58b63be7fa69b4cc648916fe95fa1b` | ⚠️ Unaudited |
| CycloneV2dot2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 5 deployments: ethereum `0xdff08832bbebd7a42521321486763f7027f95370`; ethereum `0xf12e50e546ed86523e796aa05c7270a5ec2c15ee`; bsc `0x0d09090d68ae09245794028082a255b255db031d`; bsc `0x182d03ad6b0e5314f197455ed6d9c818fd2b8215`; bsc `0xc7be3547c223d4d163c157cff5e1dcdf4ac30317` | ⚠️ Unaudited |
| CycloneV2dot3 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-234776 | `0x09f03488291063a8f3c67d2aab7002419d11c113` | ⚠️ Unaudited |
| CycloneV2dot3 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-234781 | `0xa38b6742cef9573f7f97c387278fa31482539c3d` | ⚠️ Unaudited |
| CycloneV2dot3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 14 deployments: ethereum `0xbb95a50eab815edb4f7a7bf94c540caced34f194`; polygon `0x39fa48bf36a65834c88ec4ecb44c867f7e071a69`; polygon `0x3e2c1b4dfa868a6ffd8cdc20d7bfa9abb4462284`; polygon `0x438d30b10a6404face43ee7156eef9daee8bacd6`; polygon `0x4df9a49a8fdbf7452219f1f244448156f7f92e29`; polygon `0x52609307f2f6c43b7df63364ef65718d299ac246`; polygon `0x87059fdff1dc655acf8652ba530d89f38de22f16`; polygon `0x8a6e1b15ac7681b13d134c0d5baaa61841958751`; polygon `0x8b144b25598dbb20dc6ad579cc5e78c077b6925b`; polygon `0xb00f333894ea91523d288424e1f8947022319722`; polygon `0xb5aee5f2743a9f4abce9c964d1530e3e96725be7`; polygon `0xb8415bea2097147aa15e882f984d54adb3139db9`; polygon `0xd483280fa9ec8c9f1870567353e2ac9d446154a9`; polygon `0xe6eecdc1935115c9add30e0809aae61bc119d155` | ⚠️ Unaudited |
| CycloneV2dot3 | unknown | project_anchor | own_supporting | 0 | polygon | unit-234784 | `0x517ceee661b57ed7d5b615bf700cb307d87a025b` | ⚠️ Unaudited |
| CycloneV2dot3 | unknown | project_anchor | own_supporting | 0 | polygon | unit-234785 | `0x5194932ad0f889b1e31041b8006a58ff70a11f43` | ⚠️ Unaudited |
| CycloneV2dot3 | unknown | project_anchor | own_supporting | 0 | polygon | unit-234786 | `0x8e6e472e4a3f8b1951d2970f59b3944eff707e10` | ⚠️ Unaudited |
| CycloneWrapper | unknown | project_anchor | own_supporting | 0 | ethereum | unit-234777 | `0x602b40bf327c10370483ae5ecde15a7bb480dcca` | ⚠️ Unaudited |
| FxChild | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8397259c983751daf40400790063935a11afa28a` | ⚠️ Unaudited |
| MaticWETH | token | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7ceb23fd6bc0add59e62ac25578270cff1b9f619` | ⚠️ Unaudited |
| PancakeFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xca143ce32fe78f1f7019d7d551a6402fc5350c73` | ⚠️ Unaudited |
| PancakeRouter | adapter | project_anchor | own_supporting | 0 | bsc | unit-234791 | `0x10ed43c718714eb63d5aa57b78b54704e256024e` | ⚠️ Unaudited |
| PancakeRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2ad2c5314028897aecfcf37fd923c079beeb2c56` | ⚠️ Unaudited |
| Quick | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x831753dd7087cac61ab5644b308642cc1c33dc13` | ⚠️ Unaudited |
| Recovery | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x02ee06c137a106255299589b3184f5ba438b689f`; ethereum `0x10ed43c718714eb63d5aa57b78b54704e256024e`; ethereum `0x1f5ecb6efb4e1fd82ae6ff6f200e262329ff1996`; ethereum `0x2ad2c5314028897aecfcf37fd923c079beeb2c56`; ethereum `0x877fe7f4e22e21be397cd9364fafd4af4e15edb6`; ethereum `0xca143ce32fe78f1f7019d7d551a6402fc5350c73`; ethereum `0xe47d22efe36d67b2df11090113df30071981f408` | ⚠️ Unaudited |
| TetherToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdac17f958d2ee523a2206206994597c13d831ec7` | ⚠️ Unaudited |
| UChildERC20 | token | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 18 deployments: polygon `0x0735a62b0b6e837fa67130589988436fd26f0e12`; polygon `0x12aa9deb3ca4b26aa71cb9589f972e5ebc38621e`; polygon `0x15e22deaeb0e04cc551c8eaf4ae2ce5836fb0269`; polygon `0x1ce2aa0137211f14835f975994ae8e9dccdba776`; polygon `0x42243231fb4a64a5bcfc7f4b7a9ad92576804046`; polygon `0x5e81f3c3a52aa0233b3b2546a2f55ebfe90f1299`; polygon `0x77d58f5803a26c9a17f33dd6420a69d89d86a32e`; polygon `0x8234e18b466581431b4c6eb516305ae4a4bcb209`; polygon `0x9b7a8c8262d5e9bbd9ea4a079801741e8fefe32e`; polygon `0x9cceed7b651da6b9e623d7a73363511384622c38`; polygon `0xa4254439e51e196ac1f54c2ac958f928864aea96`; polygon `0xa48e39b99a7e0cf67a7d8d31dc700abfa02d180b`; polygon `0xa5b0efb02ba421422b4858870350bb5ea94a1f8f`; polygon `0xb2223ab7be81d16b98e0d1f29afc474c93fe24d8`; polygon `0xbfbd8837a4e08c396dd5e29b7ebee36b300468f7`; polygon `0xcd7f85136bfa9dec904ab81304607994705752a3`; polygon `0xe47efb7f49bd4402e0f227df14f1632a49c4f718`; polygon `0xea0d6554bcf40fbce93138266e4de324df685586` | ⚠️ Unaudited |
| UChildERC20Proxy | token | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 13 deployments: polygon `0x02daefc2e8aad089d094579499508398e3057966`; polygon `0x313d009888329c9d1cf4f75ca3f32566335bd604`; polygon `0x5a2fdf906ada9353ebe496fa5d351b39f8908d19`; polygon `0x5adf17a97ef5db18ad4cfc4b3f05128b922e0a58`; polygon `0x6bd27b07e954d698988d5a52336e7c313e58ea99`; polygon `0x7d836da4dd2afda1d09992980569e22597f09981`; polygon `0x81a9d2eced101479fad8c9663f4a997fbe5c83ca`; polygon `0xa4892914b3eca4318abad280dbf73a8a5a8d5c8f`; polygon `0xc10aacff41af60bfcfaba3a03099c4aedb113e15`; polygon `0xc576e8bb0017affc2cb245609e304e57401ee78a`; polygon `0xcf46c5bf01deae14a272f89a7b6c9e96a48f5546`; polygon `0xf316a6cf68ed69c9b7ad9dc6d83ad974df676ed9`; polygon `0xfdf922e54b3586964688536b1b81bfce13b39c4c` | ⚠️ Unaudited |
| UChildUSDT0 | token | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0xc2132d05d31c914a87c6611c10748aeb04b58e8f` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x37d9c7f451e5c619a7d4ca01e06761eb7dae6f89`; polygon `0x6ea88502bc127ef1a7f45fac6b7168fc0633ba51` | ⚠️ Unaudited |
| Verifier | unknown | project_anchor | own_supporting | 0 | bsc | unit-234795 | `0x9286e9271bf497ec39b3fdaef53e38bfc6b4cf14` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (46)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24908e5da07d7c48f1ea6edf37e4f984246c5abc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x45b39fc83540dd0b20115fd46023e0252ba9defb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x517ceee661b57ed7d5b615bf700cb307d87a025b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5194932ad0f889b1e31041b8006a58ff70a11f43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6264987a7392923012e94f91325437118cba2078` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x66b5e322dc31f8c7a33ffd23975163795f8d16c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x71e6a3b8746870ae5e21130d59d5eabbfeaea37c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7772343bebcd733497ecd1a971a56775508111fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x79459751f6882868d1299bfa412428488b434541` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-234778 | `0x7c994fb3a8c208c1750df937d473040c604292d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x810ee35443639348adbbc467b33310d2ab43c168` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e6e472e4a3f8b1951d2970f59b3944eff707e10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9286e9271bf497ec39b3fdaef53e38bfc6b4cf14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x92a737097d711bec4c31351997254e98e5f0d430` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-234780 | `0x949452e32db13a5771445cf20b304474b866202b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa8c187d8773bc9e49a10554715ff49bdcf39d55d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb6e9ea062a7719846bc9e3e3ae8712e74faad376` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe19d541389c9d3e03efc08f3d5008e8c9cc42a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcfb54a6d2da14abecd231174fc5735b4436965d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd90a6bf8439ef7214cf00da83e926068b6a507ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfcb851ad3d98bd241dbe395ca1e6080f489d4624` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0254a22c18b9924c4c8b6396b51fb0605538d0a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1c02d67f21ee4ae3213b91b6281ea87d578db8e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x225945a3b9e52c5e364d38e0388d2f619603eff3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x407ee7e32eaaecea74c6101338746744e7b12110` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x56b94edf88baf45248cc103881b3d1a977d664d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6264987a7392923012e94f91325437118cba2078` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x631f80ef57954b178a8a3b2cb9c844efcd3b1f4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8691ab4b94039338edb607596283df9a5ef51dd8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8c485513a29c9a455e9da8eba97cb165aeea8270` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa3f65ca2b7a0b1e528a4f5bbe79ea79fb3c68c41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xafcc4cbe43aa0dcb82cb9b42b992210be01725fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc00a7c98563c3890ef590e062065744e0ad11dc5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdc71bc29d12960a3ee5452fac6f033a1b8e756fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdfb43c43f2eacf81552c19827d9083cfd2a5b642` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe6a1ffc539feb9acc6358e2862c05cfaf791708c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xec05c62ab576d4510d01d418dec989a8184630b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3e772e2a0cf2c177c29afd745900b3a1475458f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x624dfa3bd13207438f00d1a9346e0879c2f93e5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8f94fb8f0960d4c0e24b641cad53313e475e4126` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9d170170fe5731bb70eeae41a353d3520087de74` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xacf00a84559f536ba64064a4c73b74698013ef36` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-234788 | `0xb6e9ea062a7719846bc9e3e3ae8712e74faad376` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc760defb87e5194e62b282c2a76cbce4766d7345` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xce7edba33e2b3f4260d7110c17b8a9695b366859` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfbb4a19a2a5ef4d1861b6b6e1150e1e2d453fdb7` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Tornado_circuit_audit.pdf](https://tornado.cash/Tornado_circuit_audit.pdf) | yAudit | Audit | 2019-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | medium |
| [Tornado_solidity_audit.pdf](https://tornado.cash/Tornado_solidity_audit.pdf) | yAudit | Audit | 2019-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [chainshield.io](https://chainshield.io/) | ChainShield | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Smart Contract Audit Report - Cyclone Protocol v2.pdf](https://4040024839-files.gitbook.io/~/files/v0/b/gitbook-legacy-files/o/assets%2F-MNeAQGL5skC11vu82Sy%2F-MVwM2h1RmXM94Ik7NAO%2F-MVwMB3sAAKGp9zma217%2FSmart%20Contract%20Audit%20Report%20-%20Cyclone%20Protocol%20v2.pdf) | Slowmist | Audit | 2021-03 | stale | Direct | contract_name | matched | 2 | 0 | 0 | 1 | high |
| [Smart Contract Security Audit Report - Cyclone.pdf](https://4040024839-files.gitbook.io/~/files/v0/b/gitbook-legacy-files/o/assets%2F-MNeAQGL5skC11vu82Sy%2F-MY3RBSlDMhVlkrMsx5Y%2F-MY3RKd1R4T7nq41E4hA%2FSmart%20Contract%20Security%20Audit%20Report%20-%20Cyclone.pdf) | yAudit | Audit | 2021-04 | stale | Direct | address | matched | 4 | 0 | 0 | 33 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [11566] Tornado_circuit_audit.pdf — no match: Audit report does not have a formal scope section; contract names extracted from templates discussed in findings.
- [11567] Tornado_solidity_audit.pdf — no match: Contracts are explicitly listed in section headers of the audit report. No formal scope table, but each section corresponds to a contract file.
- [11568] chainshield.io — no match: The document is a marketing page for ChainShield's audit services, not an actual audit report. No contracts, scope, or audit date are present.
- [26669] Smart Contract Audit Report - Cyclone Protocol v2.pdf — matched: The report explicitly lists three contracts in scope: CycloneV2.sol, AeolusV2.sol, UniswapV2CycloneRouter.sol. Standard and zkSNARK contracts are mentioned but not audited in detail. Date found on cover page: '12th March, 2021'.
- [26670] Smart Contract Security Audit Report - Cyclone.pdf — matched: All contracts listed in the project structure section (pages 4-6) are considered in scope. The audit report also mentions main contract addresses and analyzes specific contracts like AeolusV2, CycloneV2, CycloneV2dot1, and CycloneToken.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Tornado_circuit_audit.pdf | Selector | unmatched — not counted | — | mentioned as template in audit | no |
| Tornado_circuit_audit.pdf | MerkleTreeChecker | unmatched — not counted | — | mentioned as template in audit | no |
| Tornado_circuit_audit.pdf | Withdraw | unmatched — not counted | — | mentioned as template in audit | no |
| Tornado_circuit_audit.pdf | HashLeftRight | unmatched — not counted | — | mentioned as template in audit | no |
| Tornado_circuit_audit.pdf | MiMCSponge | unmatched — not counted | — | mentioned as template from circomlib | no |
| Tornado_circuit_audit.pdf | MerkleTree | unmatched — not counted | — | mentioned as template in audit | no |
| Tornado_solidity_audit.pdf | ERC20Mixer | unmatched — not counted | — | Section 2 header | no |
| Tornado_solidity_audit.pdf | ETHMixer | unmatched — not counted | — | Section 3 header | no |
| Tornado_solidity_audit.pdf | Mixer | unmatched — not counted | — | Section 4 header | no |
| Tornado_solidity_audit.pdf | MerkleTreeWithHistory | unmatched — not counted | — | Section 5 header | no |
| Smart Contract Audit Report - Cyclone Protocol v2.pdf | CycloneV2.sol | ambiguous — not counted | CycloneV2 (alternative) `0xbe19d541389c9d3e03efc08f3d5008e8c9cc42a5` — deployed 2021-03-12 08:58:56+03 — liveness: live (current_address_book_code)<br>CycloneV2 (alternative) `0x79459751f6882868d1299bfa412428488b434541` — deployed 2021-03-12 09:17:29+03 — liveness: live (current_address_book_code)<br>CycloneV2 (alternative) `0x66b5e322dc31f8c7a33ffd23975163795f8d16c7` — deployed 2021-03-12 09:22:56+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Smart Contract Audit Report - Cyclone Protocol v2.pdf | AeolusV2.sol | own contract | AeolusV2 (selected) `0x92a737097d711bec4c31351997254e98e5f0d430` — deployed 2021-04-26 20:45:55+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Smart Contract Audit Report - Cyclone Protocol v2.pdf | UniswapV2CycloneRouter.sol | own contract | UniswapV2CycloneRouter (selected) `0xfcb851ad3d98bd241dbe395ca1e6080f489d4624` — deployed 2021-06-21 18:02:52+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Smart Contract Security Audit Report - Cyclone.pdf | Aeolus | unmatched — not counted | — | listed in project structure | no |
| Smart Contract Security Audit Report - Cyclone.pdf | AeolusV2 | unmatched — not counted | — | listed in project structure and main contract addresses | no |
| Smart Contract Security Audit Report - Cyclone.pdf | Cyclone | unmatched — not counted | — | listed in project structure | no |
| Smart Contract Security Audit Report - Cyclone.pdf | CycloneV2 | ambiguous — not counted | CycloneV2 (alternative) `0xbe19d541389c9d3e03efc08f3d5008e8c9cc42a5` — deployed 2021-03-12 08:58:56+03 — liveness: live (current_address_book_code)<br>CycloneV2 (alternative) `0x79459751f6882868d1299bfa412428488b434541` — deployed 2021-03-12 09:17:29+03 — liveness: live (current_address_book_code)<br>CycloneV2 (alternative) `0x66b5e322dc31f8c7a33ffd23975163795f8d16c7` — deployed 2021-03-12 09:22:56+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Smart Contract Security Audit Report - Cyclone.pdf | CycloneV2dot1 | own contract | CycloneV2dot1 (selected) `0xd90a6bf8439ef7214cf00da83e926068b6a507ec` — deployed 2021-03-19 19:43:58+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Smart Contract Security Audit Report - Cyclone.pdf | ICycloneV2 | unmatched — not counted | — | listed in project structure | no |
| Smart Contract Security Audit Report - Cyclone.pdf | Migrations | unmatched — not counted | — | listed in project structure | no |
| Smart Contract Security Audit Report - Cyclone.pdf | GovernorAlpha | unmatched — not counted | — | listed in project structure | no |
| Smart Contract Security Audit Report - Cyclone.pdf | ITimelock | unmatched — not counted | — | listed in project structure | no |
| Smart Contract Security Audit Report - Cyclone.pdf | Timelock | unmatched — not counted | — | listed in project structure | no |
| Smart Contract Security Audit Report - Cyclone.pdf | Pausable | unmatched — not counted | — | listed in project structure | no |
| Smart Contract Security Audit Report - Cyclone.pdf | SafeMath | unmatched — not counted | — | listed in project structure | no |
| Smart Contract Security Audit Report - Cyclone.pdf | CoinCyclone | unmatched — not counted | — | listed in project structure | no |
| Smart Contract Security Audit Report - Cyclone.pdf | ERC20Cyclone | unmatched — not counted | — | listed in project structure | no |
| Smart Contract Security Audit Report - Cyclone.pdf | IMimoExchange | unmatched — not counted | — | listed in project structure | no |
| Smart Contract Security Audit Report - Cyclone.pdf | IMimoFactory | unmatched — not counted | — | listed in project structure | no |
| Smart Contract Security Audit Report - Cyclone.pdf | ERC20 | unmatched — not counted | — | listed in project structure | no |
| Smart Contract Security Audit Report - Cyclone.pdf | MimoExchange | unmatched — not counted | — | listed in project structure | no |
| Smart Contract Security Audit Report - Cyclone.pdf | MimoFactory | unmatched — not counted | — | listed in project structure | no |
| Smart Contract Security Audit Report - Cyclone.pdf | MockUniswapV2Router | unmatched — not counted | — | listed in project structure | no |
| Smart Contract Security Audit Report - Cyclone.pdf | TestCycloneDelegate | unmatched — not counted | — | listed in project structure | no |
| Smart Contract Security Audit Report - Cyclone.pdf | Ownable | unmatched — not counted | — | listed in project structure | no |
| Smart Contract Security Audit Report - Cyclone.pdf | Whitelist | unmatched — not counted | — | listed in project structure | no |
| Smart Contract Security Audit Report - Cyclone.pdf | BasicToken | unmatched — not counted | — | listed in project structure | no |
| Smart Contract Security Audit Report - Cyclone.pdf | CycloneToken | own contract | CycloneToken (selected) `0x810ee35443639348adbbc467b33310d2ab43c168` — deployed 2021-03-11 23:16:56+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Smart Contract Security Audit Report - Cyclone.pdf | IERC20 | unmatched — not counted | — | listed in project structure | no |
| Smart Contract Security Audit Report - Cyclone.pdf | IERC20Basic | unmatched — not counted | — | listed in project structure | no |
| Smart Contract Security Audit Report - Cyclone.pdf | IMintableToken | unmatched — not counted | — | listed in project structure | no |
| Smart Contract Security Audit Report - Cyclone.pdf | SafeERC20 | unmatched — not counted | — | listed in project structure | no |
| Smart Contract Security Audit Report - Cyclone.pdf | ShadowToken | unmatched — not counted | — | listed in project structure | no |
| Smart Contract Security Audit Report - Cyclone.pdf | StandardToken | unmatched — not counted | — | listed in project structure | no |
| Smart Contract Security Audit Report - Cyclone.pdf | IRouter | unmatched — not counted | — | listed in project structure | no |
| Smart Contract Security Audit Report - Cyclone.pdf | UniswapV2CycloneRouter | own contract | UniswapV2CycloneRouter (selected) `0xfcb851ad3d98bd241dbe395ca1e6080f489d4624` — deployed 2021-06-21 18:02:52+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Smart Contract Security Audit Report - Cyclone.pdf | Address | unmatched — not counted | — | listed in project structure | no |
| Smart Contract Security Audit Report - Cyclone.pdf | IVerifier | unmatched — not counted | — | listed in project structure | no |
| Smart Contract Security Audit Report - Cyclone.pdf | MerkleTreeWithHistory | unmatched — not counted | — | listed in project structure | no |
| Smart Contract Security Audit Report - Cyclone.pdf | Verifier | own contract | 0xb6e9ea… (alternative) `0xb6e9ea062a7719846bc9e3e3ae8712e74faad376` — deployed 2021-06-21 14:31:11+03 — liveness: live (current_address_book_code)<br>Verifier (alternative) `0x9286e9271bf497ec39b3fdaef53e38bfc6b4cf14` — deployed 2021-03-12 02:41:02+03 — liveness: live (code_present_context)<br>0x7c994f… (selected) `0x7c994fb3a8c208c1750df937d473040c604292d6` — deployed 2021-04-14 02:11:02+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2021-04-14 was 8d from audit; next candidate 25d; normalized_full_corpus:project_anchor:matcher_anchor | yes |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0xdc71bc29d12960a3ee5452fac6f033a1b8e756fb` | AeolusV2dot1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xa8c187d8773bc9e49a10554715ff49bdcf39d55d` | AeolusV2dot1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x8861cff2366c1128fd699b68304ad99a0764ef9a` | CycloneToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xcfb54a6d2da14abecd231174fc5735b4436965d8` | CycloneToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x66b5e322dc31f8c7a33ffd23975163795f8d16c7` | CycloneV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x79459751f6882868d1299bfa412428488b434541` | CycloneV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xbe19d541389c9d3e03efc08f3d5008e8c9cc42a5` | CycloneV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd619c8da0a58b63be7fa69b4cc648916fe95fa1b` | CycloneV2dot2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x09f03488291063a8f3c67d2aab7002419d11c113` | CycloneV2dot3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa38b6742cef9573f7f97c387278fa31482539c3d` | CycloneV2dot3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x517ceee661b57ed7d5b615bf700cb307d87a025b` | CycloneV2dot3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x5194932ad0f889b1e31041b8006a58ff70a11f43` | CycloneV2dot3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x8e6e472e4a3f8b1951d2970f59b3944eff707e10` | CycloneV2dot3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x602b40bf327c10370483ae5ecde15a7bb480dcca` | CycloneWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x10ed43c718714eb63d5aa57b78b54704e256024e` | PancakeRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x9286e9271bf497ec39b3fdaef53e38bfc6b4cf14` | Verifier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 40 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 46 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Address-book scope dispositions: 6 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 2 ambiguous, 42 unmatched
- Matched-own operational status: 6 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=3, low=1, medium=1
- Match method counts: address=2, temporal_name=1, unique_name=3

Zero-match audit list:

- [11566] Tornado_circuit_audit.pdf
- [11567] Tornado_solidity_audit.pdf
- [11568] chainshield.io

Fork inheritance lineage and inherited audits are included when available.
