# Agentic Audit Brief: Notional

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

- Project: Notional (`notional`)
- Website: [https://notional.finance](https://notional.finance)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, ethereum
- Contract surface: 163 unique implementations (371 raw deployments)
- Coverage basis: 0/7 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $3,098,834.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Notional. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 44 contract row(s) across arbitrum, ethereum. Structural roles: 35 core, 5 supporting, 4 unclassified. 40 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 44
- Structural roles: core (35), supporting (5), unclassified (4)
- Contract kinds: contract (35), abstract (9)
- Detected standards: erc1967proxy (9), erc20 (1)
- Frameworks: openzeppelin (40), openzeppelin-upgradeable (39), chainlink (1)
- Upgradeable-pattern rows: 40

## Fork Analysis

0 of 73 contracts are derived from known codebases. 73 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x0da210f60a179ee3364123943930dadbab8b210e`, chain 1)
- UnnamedContract (`0x11de34ce32147ba4e913470a5013da80fe3eb2b6`, chain 1)
- UnnamedContract (`0x161d33f4b968d714f71c4dface094e961e44ddfa`, chain 1)
- UnnamedContract (`0x19fe8c76f62b4cd875db4f2a167e4865797598a5`, chain 1)
- UnnamedContract (`0x265329c8f15671d7ca501710e3bd0e6cb257948f`, chain 1)
- UnnamedContract (`0x2920f9fc667e780c0cb5a78a104d21413377f97e`, chain 1)
- UnnamedContract (`0x2f7350cb5e434c2d177922110c7e314953b84afc`, chain 1)
- UnnamedContract (`0x3410463726a7a22ce0809367a4418fe82fc31fd3`, chain 1)
- UnnamedContract (`0x39a1f8e5d2422ccc5e08c5b4019ab70147f5cc95`, chain 1)
- UnnamedContract (`0x40bf200eeee9e172f1f8de99c6c5778a4d33a057`, chain 1)
- UnnamedContract (`0x4a9e282635567cc4d3c6a24e16c2335f10dee9b8`, chain 1)
- UnnamedContract (`0x4ebfc11ad2dd1c2a450ba194558d797ee5d305a6`, chain 1)
- UnnamedContract (`0x54fa13a38a690bc69584a7ac8b834c1770959974`, chain 1)
- UnnamedContract (`0x6e7058c91f85e0f6db4fc9da2ca41241f5e4263f`, chain 1)
- UnnamedContract (`0x794a782c2f9a859e1947e371f8621b0838bc423e`, chain 1)
- UnnamedContract (`0x7ef4d0168b12b168f14b67c708bc16f7e8bf3dec`, chain 1)
- UnnamedContract (`0x81a2b6c536c058ef678ed91212fee48f29ce86d7`, chain 1)
- UnnamedContract (`0x83706a2ec580fe1fdb84744366fa02fb8e25d29d`, chain 1)
- UnnamedContract (`0x87c478f00999d65f88d3088291a6928b55703444`, chain 1)
- UnnamedContract (`0x9499ad68cd1b00a869853a986ac3f82401650933`, chain 1)
- UnnamedContract (`0x96be0c426ea53ecb6f154bed27c9de85722a5c6f`, chain 1)
- UnnamedContract (`0xa2adbc0d7c8da646f9d5f6cfa9eb396403067da0`, chain 1)
- UnnamedContract (`0xaa57dd2a403471d9731b6cad914bcc2f0c466a03`, chain 1)
- UnnamedContract (`0xaeeafb1259f01f363d09d7027ad80a9d442de762`, chain 1)
- UnnamedContract (`0xbb828e3d0c96b334fe2cf8f18382bb11f533e878`, chain 1)
- UnnamedContract (`0xcc6fb21312f69ef558ec925e00596123cbcf747f`, chain 1)
- UnnamedContract (`0xd5c341e94674cbb603e74e6065211630c1bab6dc`, chain 1)
- UnnamedContract (`0xd623646da89f9264547272f268785d9c64af9ce3`, chain 1)
- UnnamedContract (`0xda7f29617b2838829abab9a34d3f98b7bb0a116b`, chain 1)
- UnnamedContract (`0xe25d4079f6c303d151dde2e34d1c56d044a1a13d`, chain 1)
- UnnamedContract (`0xf3c275d450fe624c1f5e31f3bcb2f8894e96cdf1`, chain 1)
- UnnamedContract (`0xfbadc4f18ddc7ebdbc920d3f9b0ca7a1296788d1`, chain 1)
- ClonableBeaconProxy (`0x019be259bc299f3f653688c7655c87f998bc7bc1`, chain 42161)
- EmptyProxy (`0x90c3c405716b8ff965dc905c91eee82a0b41a4ff`, chain 42161)
- FinalRouterV3_Arbitrum (`0xc3209ce9e2e8a51350775678b8a188f236b03574`, chain 42161)
- nBeaconProxy (`0x0519614643a019feb53b9f2c395b243253f75db7`, chain 42161)
- nBeaconProxy (`0x06d45ef1f8b3c37b0de66f156b11f10b4837619a`, chain 42161)
- nBeaconProxy (`0x0ace2dc3995acd739ae5e0599e71a5524b93b886`, chain 42161)
- nBeaconProxy (`0x0f13fb925edc3e1fe947209010d9c0e072986adc`, chain 42161)
- nBeaconProxy (`0x18b0fc5a233acf1586da7c199ca9e3f486305a29`, chain 42161)
- nBeaconProxy (`0x1fd865a55eaf5333e6374fb3ad66d22e9885d3aa`, chain 42161)
- nBeaconProxy (`0x2c42940a06a3f78b3cb7fc62b5fc7de404c9216f`, chain 42161)
- nBeaconProxy (`0x2ddb08f2757909537bdf2d2eb2bd4f7a64e8e5dd`, chain 42161)
- nBeaconProxy (`0x3482db39b1ffdfa3ca99f0f829aab0855088e707`, chain 42161)
- nBeaconProxy (`0x4068a40e229c9e8df8deaf716266ef008d673efe`, chain 42161)
- nBeaconProxy (`0x41be0117864dc317d1cc8100b01c8ac90da3ba90`, chain 42161)
- nBeaconProxy (`0x452f5c6238c05e980a235f63dbc11bfbe004cc56`, chain 42161)
- nBeaconProxy (`0x4ee6573a7bf74f6dfed54bc9a9de15a81b92e081`, chain 42161)
- nBeaconProxy (`0x52602a1075645845a303f86b2bd0b7e7227f99d6`, chain 42161)
- nBeaconProxy (`0x63ffcfb69edf8c9cb19a36401cf88c8939c40650`, chain 42161)
- nBeaconProxy (`0x65ea9aff1b12fc8dac52a9e07ce2928741159a6c`, chain 42161)
- nBeaconProxy (`0x692749e5bd565c37f5f562f71b335eefe046eaa0`, chain 42161)
- nBeaconProxy (`0x69633657acfb930d5a97a2662dd32ef1ac8a2f57`, chain 42161)
- nBeaconProxy (`0x6d13d3c51e75f9970733ff8c32715773e1ed73c4`, chain 42161)
- nBeaconProxy (`0x6ebce2453398af200c688c7c4ebd479171231818`, chain 42161)
- nBeaconProxy (`0x6f28cafe12bd97e474a52bcbfea6f2c18ae0f53d`, chain 42161)
- nBeaconProxy (`0x6f6603f12af215bdba1f55f643e098530dd45b8f`, chain 42161)
- nBeaconProxy (`0x7366d16800c3ca83a085e193ae626d7d565d13b3`, chain 42161)
- nBeaconProxy (`0x809b43d2a81a34c4d91bf4815a544d839d0773bb`, chain 42161)
- nBeaconProxy (`0x8652de5310746e8de24cbe17ee8b5fe1e78febcc`, chain 42161)
- nBeaconProxy (`0x866eb09d3d1397b8a28cfe5dceeaed9362840385`, chain 42161)
- nBeaconProxy (`0x9c0fbb8cade7b178b135fd2f1da125a37b27f442`, chain 42161)
- nBeaconProxy (`0xa135d7f10545e3a45e24e79ecd4e4c3c78cf56bf`, chain 42161)
- nBeaconProxy (`0xabc07bf91469c5450d6941dd0770e6e6761b90d6`, chain 42161)
- nBeaconProxy (`0xb9bfbb35c2ed588a42f9fd1120929c607b463192`, chain 42161)
- nBeaconProxy (`0xbc323e3564fb498e55cdc83a3ea6bb1af8402d6b`, chain 42161)
- nBeaconProxy (`0xc12d27954d9122d971c67ef188736f36629ff958`, chain 42161)
- nBeaconProxy (`0xc3882b132011ff3cea4da81f3303138368dd5d75`, chain 42161)
- nBeaconProxy (`0xc9c5e5f79738ddd3924c6f02356291eace665ea3`, chain 42161)
- nBeaconProxy (`0xd63ace62b925361fc588734022718e919a8081ac`, chain 42161)
- nBeaconProxy (`0xef3f53046c9b00702f25186d7342d73c789f547a`, chain 42161)
- nBeaconProxy (`0xfbd9e818ac30311896f7d7e5bc18f613ba644b56`, chain 42161)
- NoteERC20 (`0x95df7e34403becd532f2be160cacda56f0bd6ba3`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 44; live-surface rows included: 44 (44 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 39/71 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/7 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 39 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 124 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 92
- Confirmed-live implementations: 39 of 163 unique; 124 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/116
- Verified + Unaudited implementations: 116
- Verified by bytecode match: 0
- Unverified implementations: 47
- Unique implementations: 163
- Raw deployments: 371
- Audits discovered: 7 (7 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-03 (fresh)
- Audit staleness (calendar age): 3 fresh, 1 aging, 2 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (116)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AccountAction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 8 deployments: ethereum `0x5f11e94e0a69ac8490f45eb27a6478dcddb0227e`; ethereum `0x7f9536cf7826ede9abe6019c035338a60335768c`; ethereum `0x8a096f6c6d89dbd3c3df3eeba45710aa367f9a8c`; ethereum `0x922e6e0b80ee037b32266bca33713b2043bc87d0`; ethereum `0x95ed5156158872dd3f2a01c8c444346a00cc94ae`; ethereum `0x97cc93e87655d3d0f41aa0f54f86973fbd4b9af7`; ethereum `0xf9fdb607d8b843cdf65898df4e08d1479b69002a`; arbitrum `0xc2763a6465f5c86769a1af826db270a6367b03b7` | ⚠️ Unaudited |
| AddressRegistry | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x46a2373fb541a5049dc31fc740e8b4036a5a2d74`; ethereum `0x6a273b8e100bde88a34e3eb7283597d160a6f7bc` | ⚠️ Unaudited |
| AddressRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xe335d314bd4ef7dd44f103dc124fefb7ce63ec95`; ethereum `0xe569a3c7c1376cf871a46203304020932c8d49c8` | ⚠️ Unaudited |
| BalancerComposableAuraVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x32d82a1c8618c7be7fe85b2f1c44357a871d52d1` | ⚠️ Unaudited |
| BalancerComposableAuraVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x914255c0c289aea36e378ebb5e28293b5ed278ca` | ⚠️ Unaudited |
| BalancerComposableAuraVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xeeb885af7c8075aa3b93e2f95e1c0bd51c758f91` | ⚠️ Unaudited |
| BalancerComposableAuraVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xf94507f3dece4cc4c73b6cf228912b85eadc9cfb` | ⚠️ Unaudited |
| BalancerComposableAuraVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x91b79f4081d3522af2760b7698810d501ebc8010` | ⚠️ Unaudited |
| BalancerComposableAuraVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0xa0d61c08e642103158fc6a1495e7ff82baf25857` | ⚠️ Unaudited |
| BalancerComposableAuraVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0xcac9c01d1207e5d06bb0fd5b854832f35fe97e68` | ⚠️ Unaudited |
| BalancerComposableAuraVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0xd7c3dc1c36d19cf4e8cea4ea143a2f4458dd1937` | ⚠️ Unaudited |
| BatchAction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 11 deployments: ethereum `0x112170998a34dd9fad0a92f4d2808fa7e059283f`; ethereum `0x1d1a531cbcb969040da7527bf1092dfc4ff7dd46`; ethereum `0x3b8b09e679fd545d5b8ab1f03221497e8c0708af`; ethereum `0x4fc792418b8901d5593dc89d7627d2daf2ebede9`; ethereum `0x53423db7ac663aa1941a809a6d787bffc7a5c8a9`; ethereum `0x59074a5e588de093fc5f04a7173d86b2b48e9d39`; ethereum `0x63757f772b8aab66f4de09617e8f257249efcb93`; ethereum `0xb484dd00b0f41a42e927b601f6c10a16b265f59f`; ethereum `0xb87afd4b93235c155d60d578998e0aa94c9a9263`; ethereum `0xdb7a1be29d3d3ad8231d4808ac555119ed8762e1`; arbitrum `0x0092a5552162f911ccf7f456e85f473ce259707f` | ⚠️ Unaudited |
| CalculationViews | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: ethereum `0x851a28260227f9a8e6bf39a5fa3b5132fa49c7f3`; ethereum `0xbe4aba25915bad390edf83b7e1ca44b6145f261e`; ethereum `0xc6f5ba780b78db117233d5f76da9e2032a312a9e`; arbitrum `0x280decd520da16e5571a6f2fb803a57e0c16f423` | ⚠️ Unaudited |
| cTokenAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x181900d998a8a922e68b3fc186ce0fa525c3c424`; ethereum `0x1ce3d734aaafaa06c46048d2371c2e507692c988`; ethereum `0x5fbf4539a89fbd1e5d784db3f7ba6c394ac450fc`; ethereum `0x913f575653c933ac15c8eb5996ed71a5547977d8`; ethereum `0xc7b9c53d345ec7a00d5c085085cb882dce79d2e9` | ⚠️ Unaudited |
| cTokenLegacyAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x612741825acedc6f88d8709319fe65bcb015c693`; ethereum `0x8e3d447ebe244db6d28e2303bca86ef3033cfad6` | ⚠️ Unaudited |
| cTokenV2Aggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x39d9590721331b13c8e9a42941a2b961b513e69d`; ethereum `0x719993e82974f5b5ea0c5eba25c260cd5af78e00`; ethereum `0x7b0cc121abd20acd77482b5aa95126db2e597987`; ethereum `0xe329e81800219aefeef79d74db35f8877fe1abde` | ⚠️ Unaudited |
| Curve2TokenConvexVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x30fba4a7ec8591f25b4d37fd79943a4bb6e553e2` | ⚠️ Unaudited |
| Curve2TokenConvexVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x84e58d8faa4e3b74d55d9fc762230f15d95570b8` | ⚠️ Unaudited |
| Curve2TokenConvexVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x86b222d44ac6cc56e75b3df01fdad5dc371ef538` | ⚠️ Unaudited |
| Curve2TokenConvexVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xba4eb30f7f2e378249cf94e08f581e704326e9c6` | ⚠️ Unaudited |
| Curve2TokenConvexVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xe20048fa0f165a49b780dfa9a8caba845332f848` | ⚠️ Unaudited |
| Curve2TokenConvexVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x3533f05b2c54ce1c2321cfe3c6f693a3cbbaea10` | ⚠️ Unaudited |
| Curve2TokenConvexVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x5c36a0deab3531d29d848e684e8bdf5f81cdb643` | ⚠️ Unaudited |
| Curve2TokenConvexVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0xae04e4887cbf5f25c05ac1384bcd0b7e885a1f4a` | ⚠️ Unaudited |
| Curve2TokenConvexVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0xf95441f348eb2fd3d5d82f9b7b961137a734eedd` | ⚠️ Unaudited |
| Curve2TokenVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xb1113cf888a019693b254da3d90f841072d85172` | ⚠️ Unaudited |
| Curve2TokenVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xd6aa58cf21a0edb33375d6c0434b8bb5b589f021` | ⚠️ Unaudited |
| CurveConvex2Token | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x2716561755154eef59bc48eb13712510b27f167f` | ⚠️ Unaudited |
| EmptyProxy | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-389990 | 2 deployments: arbitrum `0x90c3c405716b8ff965dc905c91eee82a0b41a4ff`; arbitrum `0xcfeaead4947f0705a14ec42ac3d44129e1ef3ed5` | ⚠️ Unaudited |
| ERC1155Action | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x51888550902159f2eb7c43b8589dbe975379aa10`; ethereum `0xbf12d7e41a25f449293ab8cd1364fe74a175bfa5`; ethereum `0xffd7531ed937f703b269815950cb75bdaaa341c9`; arbitrum `0xde14d5f07456c86f070c108a04ae2fafdbd2a939` | ⚠️ Unaudited |
| ERC4626OracleAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x227eb3f8e867b4917553a616a550d629085bd330`; ethereum `0x5165b17e4e0513356e91975e5a67f32e2470cfa5` | ⚠️ Unaudited |
| EthenaWithdrawRequestManager | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x8c7c9a45916550c6fe04cdaa139672a1b5803c9f` | ⚠️ Unaudited |
| EtherFiWithdrawRequestManager | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x71ba37c7c0eab9f86de6d8745771c66fd3962f20` | ⚠️ Unaudited |
| FinalRouterV3_Arbitrum | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-389992 | 2 deployments: arbitrum `0x1344a36a1b56144c3bc62e7757377d288fde0369`; arbitrum `0xc3209ce9e2e8a51350775678b8a188f236b03574` | ⚠️ Unaudited |
| FinalRouterV3_Arbitrum | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: arbitrum `0x1b3534ca262343e57e837a351100a6db9e0292d7`; arbitrum `0x634a5270cfde2a3d763772c7fc2517c4660d2cf7`; arbitrum `0xf3f7dd5de37a7b41e92776e6577454612ec0dee7` | ⚠️ Unaudited |
| FinalRouterV3_Mainnet | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x15ce5192b844a7a45e13864ac9969dc4f95b90fe`; ethereum `0xfe294434753a44f1a9e7ad13cfea6606fcf6ea8e` | ⚠️ Unaudited |
| FinalV2Router | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x1344a36a1b56144c3bc62e7757377d288fde0369`; ethereum `0x5c424c3d0f32b21cb3d51b780eb1b38b6ae8923f` | ⚠️ Unaudited |
| FlashLiquidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 11 deployments: ethereum `0x0a058e89b904a701063fec9d0e770ba087ed3e76`; ethereum `0x430ea56adb01df07f23a591f2021519ab78f1a7b`; ethereum `0x572dcc74c291aac86860c59ef81a69a886282f4e`; ethereum `0x61f1fb3b53c79b2898b9f593be24c4f2423e645b`; ethereum `0x7e9819c4fd31efdd16abb9e4c2b87f9991195493`; ethereum `0x9bfc1ca64e8065514fed89c85aa0e98161f64395`; arbitrum `0x0158fc072ff5dde8f7b9e2d00e8782093db888db`; arbitrum `0x326746fd16fda81599a80280ac94d3ede71e2ce1`; arbitrum `0x48a18d9e10dfcbec38d31884712dea5a24120fd6`; arbitrum `0x53423db7ac663aa1941a809a6d787bffc7a5c8a9`; arbitrum `0xa44a8729d139b39a322a9c7754fae98b6cff6c71` | ⚠️ Unaudited |
| FreeCollateralExternal | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x422a2e95009f11e9e144fe7fd1a7c7a9c759bb6a`; ethereum `0xea7aa69dbeea9deb4294109bd344f69c79c6fdf7`; arbitrum `0x72ec9de3efd22552b6dc17142ead505a48940d4e` | ⚠️ Unaudited |
| GenericERC20WithdrawRequestManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x2d8295b1c42d9055596d5a5f4c6429baf02a936c`; ethereum `0xe854ceb7e57988b083b93195d092d289fed1d0ff` | ⚠️ Unaudited |
| GnosisSafe | governance | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x02479bfc7dce53a02e26fe7baea45a0852cb0909` | ⚠️ Unaudited |
| GovernanceAction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: ethereum `0x514f9563ace90bde2f0f00091208236e1864690f`; ethereum `0xd2b104a30518abee70e5b77023d8966a2234253d`; arbitrum `0x10aae34011c256a9e63ab5ac50154c2539c0f51d` | ⚠️ Unaudited |
| GovernorAlpha | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x086b4ecd75c494dd36641195e89c25373e06d7cb` | ⚠️ Unaudited |
| InfiniFiOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x7ee5ffa27debf9f94e00dac79bc498ea98f151f6`; ethereum `0xb3b111ffddef82d0d519d1732d157c82c2e14761`; ethereum `0xbecf0e2d89f17de8f575a80c41bfdc9ad18d2d79` | ⚠️ Unaudited |
| InfiniFiWithdrawRequestManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x46c423e27e88c002c3643e332d8f62b7513a9898`; ethereum `0x49b1945510ce1f95479477dd867da6cd21da20ec` | ⚠️ Unaudited |
| InfiniFiWithdrawRequestManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x955580c99a4c64055e8cb592d1e471f72c24c133`; ethereum `0xf72c1cf4aab54c39ff4ea0f2c6179d62f3b79348` | ⚠️ Unaudited |
| InitializeMarketsAction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x280decd520da16e5571a6f2fb803a57e0c16f423`; ethereum `0x6a351699bec7966cdd3ba2bb47b5fc89f626881f`; ethereum `0x884b74912be39e925d60ef3aa13b6321e645c893`; ethereum `0xa44a8729d139b39a322a9c7754fae98b6cff6c71`; ethereum `0xf35431fa697bdd436d8c4e8490e71bdcb52f6a09`; arbitrum `0x422a2e95009f11e9e144fe7fd1a7c7a9c759bb6a` | ⚠️ Unaudited |
| LeveragedNTokenAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25ee011b6af5537ecd520f40ca759899a064cfcf` | ⚠️ Unaudited |
| LiquidateCurrencyAction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x0ff45fd2ad282b7e6e29dc10dbe6b3fc907284b0`; ethereum `0x3abbd5fad059fc2b966b2de879e936a73268a0b2`; ethereum `0x6b986a60216aca687457782adfa0b002ad392ce7`; ethereum `0x885d3dd787b9d417f912f4507241e771097181a6`; arbitrum `0xdfb618098fc858f43fe0e5fb906adfe96786832f` | ⚠️ Unaudited |
| LiquidatefCashAction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: ethereum `0xb12b08045c2fb403fcae579641d0a011aad8ed70`; ethereum `0xf38a93ee78912b10ff722d187554406b0416a800`; arbitrum `0x1c510763432c0e65d86f313612d4e1e2d26e4332` | ⚠️ Unaudited |
| MerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x3728081cc9668b206665cae9dc2b43aff35acc0c`; ethereum `0xa40aedaac28f9574124d7c8eff59732cc77f1dd4` | ⚠️ Unaudited |
| MidasOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x3cda3599cfe80ea1c74d6d77a5857ada83914e5d`; ethereum `0xde9b77de6eceac4db6ef47eedd204c58817dcd6c` | ⚠️ Unaudited |
| MidasStakingStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x091356e6793a0d960174eaab4d470e39a99dd673`; ethereum `0x780e287ea2ef2dce34b66f1ed5a2225d8148deaa` | ⚠️ Unaudited |
| MidasStakingStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x2a5c94fe8fa6c0c8d2a87e5c71ad628caa092ce4`; ethereum `0x3519ba8a550973100676f1f00f67263e62da467d` | ⚠️ Unaudited |
| MidasStakingStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x496135b4421304872974cc0c01c5f0e59b7f4ad0`; ethereum `0xb9cd42168d53836b45751774f757132ece4f5d42` | ⚠️ Unaudited |
| MidasStakingStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x7697202a29acd384c889f879dfbffb6dcab17fa4`; ethereum `0x94f6cb4fae0eb3fa74e9847dff2ff52fd5ec7e6e` | ⚠️ Unaudited |
| MidasWithdrawRequestManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x18f86644781fc9f7b4641d371f377c96744ec10f`; ethereum `0x6e447195e3ff98e11ccba52e02676bec7cbacdb0` | ⚠️ Unaudited |
| MidasWithdrawRequestManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xe4ebb6ea270a70491c3af06376a5862a0fda7268`; ethereum `0xefb95036bf8d2d31e8fb24355e8ec76a2e341014` | ⚠️ Unaudited |
| MigrateCTokens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02551ded3f5b25f60ea67f258d907ed051e042b2` | ⚠️ Unaudited |
| MigrateIncentives | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6085b0a8f4c7ffa2e8ca578037792d6535d1e29b` | ⚠️ Unaudited |
| MigrateV2ToV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa9f0fb2528a8ada9b11be582ac1d13bdbfb8d437` | ⚠️ Unaudited |
| MorphoLendingRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x9a0c630c310030c4602d1a76583a3b16972ecaa0` | ⚠️ Unaudited |
| NoteERC20 | unknown | project_anchor | own_supporting | 1 | ethereum | unit-389986 | 2 deployments: ethereum `0x95df7e34403becd532f2be160cacda56f0bd6ba3`; ethereum `0xcfeaead4947f0705a14ec42ac3d44129e1ef3ed5` | ⚠️ Unaudited |
| NotionalV1ToNotionalV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf47d7192413ac6558f48594ecce6d2dfe38b7876` | ⚠️ Unaudited |
| nTokenAction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x1cd33f81420bfce8a3622dc56bbd617b7fa3c93a`; ethereum `0x3533f05b2c54ce1c2321cfe3c6f693a3cbbaea10`; arbitrum `0x662f1be7f07c90031f7b5264f71bd1ac0e975526` | ⚠️ Unaudited |
| nTokenERC20Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb2577109a7c636f0e65b75d2c1cb55a54fd8ec5` | ⚠️ Unaudited |
| nTokenERC20Proxy | token | project_anchor | own_supporting | 9 | arbitrum | unit-389989 (9 proxies) | 9 deployments: arbitrum `0x06d45ef1f8b3c37b0de66f156b11f10b4837619a`; arbitrum `0x0f13fb925edc3e1fe947209010d9c0e072986adc`; arbitrum `0x18b0fc5a233acf1586da7c199ca9e3f486305a29`; arbitrum `0x2c42940a06a3f78b3cb7fc62b5fc7de404c9216f`; arbitrum `0x52602a1075645845a303f86b2bd0b7e7227f99d6`; arbitrum `0x69633657acfb930d5a97a2662dd32ef1ac8a2f57`; arbitrum `0x6f6603f12af215bdba1f55f643e098530dd45b8f`; arbitrum `0x809b43d2a81a34c4d91bf4815a544d839d0773bb`; arbitrum `0x9c0fbb8cade7b178b135fd2f1da125a37b27f442` | ⚠️ Unaudited |
| nTokenMintAction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x0092a5552162f911ccf7f456e85f473ce259707f`; ethereum `0x0e01dbe8e854780e60491429d7adafbb84003573`; ethereum `0x380cdf83748249c14a575673325aba9bd7e1ff55`; ethereum `0x65c23f235a630ca918cb1acc37533597a413ca2e`; ethereum `0xe5ae18de0bdd7003e3b74613554f58484e432de7`; ethereum `0xf95441f348eb2fd3d5d82f9b7b961137a734eedd`; arbitrum `0x086b4ecd75c494dd36641195e89c25373e06d7cb` | ⚠️ Unaudited |
| nTokenRedeemAction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x1c510763432c0e65d86f313612d4e1e2d26e4332`; ethereum `0x2f77cdd140d0ec7db9306b91959003872a7ceb92`; ethereum `0x91b79f4081d3522af2760b7698810d501ebc8010`; ethereum `0xce3f1d83cecee26b1d4a7010123b86ced67a48d4`; arbitrum `0x95df7e34403becd532f2be160cacda56f0bd6ba3` | ⚠️ Unaudited |
| nUpgradeableBeacon | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd676d720e4e8b14f545f9116f0cad47af32329dd` | ⚠️ Unaudited |
| nwToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x0f12b85a331acb515e1626f707aade62e9960187`; ethereum `0x24b5ff402440ab10618f3798253d2cd5801e40f7` | ⚠️ Unaudited |
| nwToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x47b320b42b9cbbe256010388c97acd88f5038640`; ethereum `0xaac5145f5286a3c6a06256fdfbf5b499aa965c9c` | ⚠️ Unaudited |
| nwToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xba43bf371a615ffabc215596b4212628833cdde0`; ethereum `0xdbbb034a50c436359fb6d87d3d669647e0fa24d5` | ⚠️ Unaudited |
| nwToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xc91864be1b097c9c85565cdb013ba2307ffb492a`; ethereum `0xe8f28cf944abcfd98dacdcba284acfc56a6e929b` | ⚠️ Unaudited |
| OriginWithdrawRequestManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x0bc6d6c4f7ca318c07de9ce75bbad6cc0fbb7251`; ethereum `0x59aa04b190ec76c95a1eb02d9a184b7fdd64b9fb` | ⚠️ Unaudited |
| PauseAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x078dc7e61b410e461328aba0022197ea6a969d08`; ethereum `0xee8086b240e38dfca32c466dda709ee1020fba0d` | ⚠️ Unaudited |
| PauseRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x0f9e06c4180418b781d2816914834710360055f8`; ethereum `0x7652d9873f48b803fc57859f2190a4bf9f16b949`; ethereum `0x8470516910062633bbf959f940232f9d300ef0f6`; ethereum `0xb15b2c8da9b9a83fad34180db28be607c54e5ca1`; ethereum `0xbe401d7e76bb71bf7fa5a4aed7f3b650c6e0bd25`; arbitrum `0x6b986a60216aca687457782adfa0b002ad392ce7` | ⚠️ Unaudited |
| PendlePT_sUSDe | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x0e61e810f0918081cbfd2ac8c97e5866daf3f622` | ⚠️ Unaudited |
| PendlePTGeneric | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x5fc3fc6263b16f665d78075784f5a6abed00e1dd` | ⚠️ Unaudited |
| PendlePTGeneric | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xc87a900078f04c45b7f14e46c520d4a6f37296b0` | ⚠️ Unaudited |
| PendlePTGeneric | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xe47d1584a6dbb98cc889bb1c9cbe5387173c282b` | ⚠️ Unaudited |
| PendlePTGeneric | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x851a28260227f9a8e6bf39a5fa3b5132fa49c7f3` | ⚠️ Unaudited |
| PendlePTGeneric | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x878c46978ac67e43d9d27e510f98e087e9940b12` | ⚠️ Unaudited |
| PrimeCashProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x92dc86b93fb564131aa6f961a98465355d58a560` | ⚠️ Unaudited |
| PrimeCashProxy | unknown | project_anchor | own_supporting | 14 | arbitrum | unit-389991 (14 proxies) | 14 deployments: arbitrum `0x0519614643a019feb53b9f2c395b243253f75db7`; arbitrum `0x0ace2dc3995acd739ae5e0599e71a5524b93b886`; arbitrum `0x1fd865a55eaf5333e6374fb3ad66d22e9885d3aa`; arbitrum `0x63ffcfb69edf8c9cb19a36401cf88c8939c40650`; arbitrum `0x6d13d3c51e75f9970733ff8c32715773e1ed73c4`; arbitrum `0x6f28cafe12bd97e474a52bcbfea6f2c18ae0f53d`; arbitrum `0x8652de5310746e8de24cbe17ee8b5fe1e78febcc`; arbitrum `0x866eb09d3d1397b8a28cfe5dceeaed9362840385`; arbitrum `0xa135d7f10545e3a45e24e79ecd4e4c3c78cf56bf`; arbitrum `0xabc07bf91469c5450d6941dd0770e6e6761b90d6`; arbitrum `0xb9bfbb35c2ed588a42f9fd1120929c607b463192`; arbitrum `0xbc323e3564fb498e55cdc83a3ea6bb1af8402d6b`; arbitrum `0xd63ace62b925361fc588734022718e919a8081ac`; arbitrum `0xef3f53046c9b00702f25186d7342d73c789f547a` | ⚠️ Unaudited |
| PrimeDebtProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x366d5b255d97c5fee2283561bd89fce5566b178f` | ⚠️ Unaudited |
| PrimeDebtProxy | unknown | project_anchor | own_supporting | 14 | arbitrum | unit-389988 (14 proxies) | 14 deployments: arbitrum `0x2ddb08f2757909537bdf2d2eb2bd4f7a64e8e5dd`; arbitrum `0x3482db39b1ffdfa3ca99f0f829aab0855088e707`; arbitrum `0x4068a40e229c9e8df8deaf716266ef008d673efe`; arbitrum `0x41be0117864dc317d1cc8100b01c8ac90da3ba90`; arbitrum `0x452f5c6238c05e980a235f63dbc11bfbe004cc56`; arbitrum `0x4ee6573a7bf74f6dfed54bc9a9de15a81b92e081`; arbitrum `0x65ea9aff1b12fc8dac52a9e07ce2928741159a6c`; arbitrum `0x692749e5bd565c37f5f562f71b335eefe046eaa0`; arbitrum `0x6ebce2453398af200c688c7c4ebd479171231818`; arbitrum `0x7366d16800c3ca83a085e193ae626d7d565d13b3`; arbitrum `0xc12d27954d9122d971c67ef188736f36629ff958`; arbitrum `0xc3882b132011ff3cea4da81f3303138368dd5d75`; arbitrum `0xc9c5e5f79738ddd3924c6f02356291eace665ea3`; arbitrum `0xfbd9e818ac30311896f7d7e5bc18f613ba644b56` | ⚠️ Unaudited |
| RebalanceHelper | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x366d5b255d97c5fee2283561bd89fce5566b178f` | ⚠️ Unaudited |
| Router | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 16 deployments: ethereum `0x0158fc072ff5dde8f7b9e2d00e8782093db888db`; ethereum `0x123fca954ea894305b684f56a0d043169a5aa7e4`; ethereum `0x16ed130f7a6dcac7e3b0617a7bafa4b470189962`; ethereum `0x19152dda25a96d0ca244f0d7f3f13a966f392b23`; ethereum `0x2c67b0c0493e358cf368073bc0b5fa6f01e981e0`; ethereum `0x2cc280279b8572fcdc100e2d01ca594a00031cb0`; ethereum `0x3da72a5d6fa2a46585f01a09bc6e2ee1481ee555`; ethereum `0x42c74c3d5d0cc020627dc7074a40a83636f6fb23`; ethereum `0x58784379c844a00d4f572917d43f991c971f96ca`; ethereum `0x878c46978ac67e43d9d27e510f98e087e9940b12`; ethereum `0x9a419cd788aaa88b485c50144cbcf76bf0c2e0bd`; ethereum `0xd7c3dc1c36d19cf4e8cea4ea143a2f4458dd1937`; ethereum `0xed1546defca671d4a64d3bd7d25571355c23f4b0`; ethereum `0xfab3b28f7c1ae22c4abc185673ed96e8e815eaad`; ethereum `0xfea323486456f26b6a0a9074fd4df508a6e9fa0a`; arbitrum `0xb12b08045c2fb403fcae579641d0a011aad8ed70` | ⚠️ Unaudited |
| SecondaryRewarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbf35529d9333feee50c17aa0a39eeabea2b3abb2` | ⚠️ Unaudited |
| SettleAssetsExternal | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: ethereum `0xb15167fff26202aa3d20ecfd7f46a34fa4126e49`; ethereum `0xe10836ba543be91e978fc9b455bf483572a44b21`; arbitrum `0xa40aedaac28f9574124d7c8eff59732cc77f1dd4` | ⚠️ Unaudited |
| StakingStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x0409d36ba4bad176ed62a97faf05253b6b206a3e`; ethereum `0xa9f31d1535e5430ae335975eb0dac378c82e9b31` | ⚠️ Unaudited |
| StakingStrategy | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x04b5179ea1ce7b3bf69e05bb7082f11af9fad718`; ethereum `0x0fa90c028179cf116561f322edf01994fc9d84de`; ethereum `0x5fdc7e6695ec594a721f207574ffd75145c41810`; ethereum `0xaa7c543bae1de85c36841d55f3d6eae7856efca0`; ethereum `0xc02b6dfe6bb8a791c4a36655890ce393d1dfd31f` | ⚠️ Unaudited |
| StakingStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x2838f999c23b480324314ac8d0c1f84d795135ba`; ethereum `0xaf14d06a65c91541a5b2db627ecd1c92d7d9c48b` | ⚠️ Unaudited |
| StakingStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x48ba5c2ef57b45de7736345f7f4db67818002dab`; ethereum `0x9fb57943926749b49a644f237a28b491c9b465e0` | ⚠️ Unaudited |
| StakingStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x4eed2b20f63e3bc38e804535982f8c70a6767d93`; ethereum `0x7f723fee1e65a7d26be51a05af0b5efee4a7d5ae` | ⚠️ Unaudited |
| StandardArbERC20 | token | project_anchor | own_supporting | 1 | arbitrum | unit-389987 | `0x019be259bc299f3f653688c7655c87f998bc7bc1` | ⚠️ Unaudited |
| StrategyUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe78d09c8b6ccf9c1732d14353a708b75f6c67c67` | ⚠️ Unaudited |
| TimelockController | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x375eafe4348c6aa851cdfa5f84ec268f73643235`; ethereum `0xad20780e69257c62d107bbd43a1db628a075416b` | ⚠️ Unaudited |
| TimelockRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7cfe986657a2ccb8d7b173976cf78beb3a7b0068` | ⚠️ Unaudited |
| TradingAction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x111a2f8b843b7a20d9b1a2535c837e6cc23cc5d7`; ethereum `0x5c36a0deab3531d29d848e684e8bdf5f81cdb643`; ethereum `0x662f1be7f07c90031f7b5264f71bd1ac0e975526`; ethereum `0xcac9c01d1207e5d06bb0fd5b854832f35fe97e68`; ethereum `0xf6b3064a20efff9c3495fedf10f19a376510761a`; arbitrum `0xca2848903d7b5896796fe2687e76ccec16b89b90` | ⚠️ Unaudited |
| TradingModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x179a2d2408bfbc21b72d59c4a74e5010f07dc823`; ethereum `0x86bece3dce75dde030e0c9c2e955f8f0fb3908b0`; ethereum `0xf1dfc222b42233b9947183611f6edf6d1d7dca3d`; arbitrum `0x514f9563ace90bde2f0f00091208236e1864690f` | ⚠️ Unaudited |
| TreasuryAction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: ethereum `0x3965d75bfe40435246c22f75db2e170210b8bc68`; arbitrum `0x1cd33f81420bfce8a3622dc56bbd617b7fa3c93a` | ⚠️ Unaudited |
| TreasuryManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: ethereum `0xe728eac44f19db83f7ce847ce7cdb90fd43b07b7`; ethereum `0xe801b59eb9f6dddd58f35772afdd89e499ec5b0a`; arbitrum `0x92dc86b93fb564131aa6f961a98465355d58a560` | ⚠️ Unaudited |
| UnderlyingHoldingsOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 18 deployments: ethereum `0x1d1c4ba73f23606ca843871eaf82be9514131494`; ethereum `0x218af5cb9d59edb85dcb3d58e51b09a98792ef29`; ethereum `0x25bbd37e79fe182fcbdc0f98521cca0649a24067`; ethereum `0x269689d148ab0615b329bf092f6f6193d3754549`; ethereum `0x3a04991503dba313fe8bb93c38312c9e1f7d985f`; ethereum `0x7cb8922521055a1054acecddb8a34eecd8bce3f7`; ethereum `0x84edde510f22dc69841660aa21c73aca7bb73680`; ethereum `0x85ced2ea5b044b2d6e9064a2845951df209f01f0`; ethereum `0x99745f4fe818d98bcee35abf3a2cfc80d42fc6aa`; ethereum `0xa7d22600f5937cb58567deb8d9063915a0acbf61`; ethereum `0xb8129e6545f5feaa67a42c750ad9f36f9f1b4505`; ethereum `0xc0ab10848ffa1d5422925e21acf2fd0070de9d25`; arbitrum `0x0eae7badef8f95de91fddb74a89a786cf891eb0e`; arbitrum `0x253b767f9086d04d7f38c467f75ae9044b27ce13`; arbitrum `0x4af053d9dbc7cbb4345f63c0d2bf71154551207f`; arbitrum `0x614bc6ebd3048498078fb2f8303c4c217d05c914`; arbitrum `0x913f575653c933ac15c8eb5996ed71a5547977d8`; arbitrum `0x96d2c6d81ccfabc45179caa72091f3192fcf1052` | ⚠️ Unaudited |
| VaultAccountAction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x1a751cd714910929017ce1417ead6d0732db1a78`; ethereum `0x602f8e2fdb449bb3a9933aa3da5e2349c668090b`; ethereum `0x8d3d711dd5be47f00bd11ac24eea7bc0efb92cbd`; ethereum `0x9414609789c179e1295e9a0559d629bf832b3c04`; ethereum `0xf8b25da34367e5fe6d9cd03d1ecfd227ee06021a`; arbitrum `0xabd096049e0cdcecfe26a3b1bc7bb38438f1b488` | ⚠️ Unaudited |
| VaultAccountHealth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x7d764650690e60a7a6647f2d12708f8434b87052`; arbitrum `0xffd7531ed937f703b269815950cb75bdaaa341c9` | ⚠️ Unaudited |
| VaultAction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: ethereum `0x67e5f0db833e7e4f000a768d1eb7a8e87b31aa75`; ethereum `0xae04e4887cbf5f25c05ac1384bcd0b7e885a1f4a`; ethereum `0xd162738705cdcdba11eae86794606a7fb24655f4`; arbitrum `0x63757f772b8aab66f4de09617e8f257249efcb93` | ⚠️ Unaudited |
| VaultLiquidationAction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x49d0e97ba2f4cf0e5e4f86c0d9c5c8acbacff50c`; arbitrum `0x5f11e94e0a69ac8490f45eb27a6478dcddb0227e` | ⚠️ Unaudited |
| VaultRewarderLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 5 deployments: ethereum `0x96b1ebf4877136af2f935395c3c4b179d66c4974`; ethereum `0x9c7b863f8eadfe000c2b6ff0f43f58223ec29d84`; arbitrum `0x3965d75bfe40435246c22f75db2e170210b8bc68`; arbitrum `0x54bb219281fe0eef1483bc4421e6502fe1e30a97`; arbitrum `0xf38a93ee78912b10ff722d187554406b0416a800` | ⚠️ Unaudited |
| Views | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x54bb219281fe0eef1483bc4421e6502fe1e30a97`; ethereum `0xfebc565a1c8c70dbbdc11f0e6ad8cc33b6f3dd1b` | ⚠️ Unaudited |
| Views | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: ethereum `0xde14d5f07456c86f070c108a04ae2fafdbd2a939`; arbitrum `0xb15167fff26202aa3d20ecfd7f46a34fa4126e49` | ⚠️ Unaudited |
| wfCashERC4626 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x895f0630d604fd7140d84ef9920c71171ae40fbf`; arbitrum `0x895f0630d604fd7140d84ef9920c71171ae40fbf` | ⚠️ Unaudited |
| wfCashERC4626 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0xd676d720e4e8b14f545f9116f0cad47af32329dd` | ⚠️ Unaudited |
| WrappedfCashFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x5d051deb5db151c2172dcdccd42e6a2953e27261`; arbitrum `0x5d051deb5db151c2172dcdccd42e6a2953e27261` | ⚠️ Unaudited |
| wstETHOracleAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa37a279bcb057bcfc544de7d953f940599f74c35` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (47)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389922 | `0x0da210f60a179ee3364123943930dadbab8b210e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389923 | `0x11de34ce32147ba4e913470a5013da80fe3eb2b6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389924 | `0x161d33f4b968d714f71c4dface094e961e44ddfa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389925 | `0x19fe8c76f62b4cd875db4f2a167e4865797598a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1f681977af5392d9ca5572fb394bc4d12939a6a9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389926 | `0x265329c8f15671d7ca501710e3bd0e6cb257948f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389927 | `0x2920f9fc667e780c0cb5a78a104d21413377f97e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389928 | `0x2f7350cb5e434c2d177922110c7e314953b84afc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389929 | `0x3410463726a7a22ce0809367a4418fe82fc31fd3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389930 | `0x39a1f8e5d2422ccc5e08c5b4019ab70147f5cc95` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389931 | `0x40bf200eeee9e172f1f8de99c6c5778a4d33a057` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x44919c298cc2dd295fd2b2de10e944491cdb8c48` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389932 | `0x4a9e282635567cc4d3c6a24e16c2335f10dee9b8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389933 | `0x4ebfc11ad2dd1c2a450ba194558d797ee5d305a6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389934 | `0x54fa13a38a690bc69584a7ac8b834c1770959974` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x56408a51b96609c10b005a2fc599ee36b534d01b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b3dd2d21bae032cc91d898efb97d995020095d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69e7f686d192413a2e5f7b193dc9648a31f0037b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389935 | `0x6e7058c91f85e0f6db4fc9da2ca41241f5e4263f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x72ec9de3efd22552b6dc17142ead505a48940d4e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389936 | `0x794a782c2f9a859e1947e371f8621b0838bc423e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389937 | `0x7ef4d0168b12b168f14b67c708bc16f7e8bf3dec` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389938 | `0x81a2b6c536c058ef678ed91212fee48f29ce86d7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389939 | `0x83706a2ec580fe1fdb84744366fa02fb8e25d29d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389940 | `0x87c478f00999d65f88d3088291a6928b55703444` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x90c3c405716b8ff965dc905c91eee82a0b41a4ff` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389941 | `0x9499ad68cd1b00a869853a986ac3f82401650933` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389942 | `0x96be0c426ea53ecb6f154bed27c9de85722a5c6f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389943 | `0xa2adbc0d7c8da646f9d5f6cfa9eb396403067da0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389944 | `0xaa57dd2a403471d9731b6cad914bcc2f0c466a03` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389945 | `0xaeeafb1259f01f363d09d7027ad80a9d442de762` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389946 | `0xbb828e3d0c96b334fe2cf8f18382bb11f533e878` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc2763a6465f5c86769a1af826db270a6367b03b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc381701140f65d54e62339d2138f8728fea21e1a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc4fd259b816d081c8bdd22d6bbd3495db1573db7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389947 | `0xcc6fb21312f69ef558ec925e00596123cbcf747f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389948 | `0xd5c341e94674cbb603e74e6065211630c1bab6dc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389949 | `0xd623646da89f9264547272f268785d9c64af9ce3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389950 | `0xda7f29617b2838829abab9a34d3f98b7bb0a116b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf08039c0af34e34660ac7c2705c0da953247640` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389951 | `0xe25d4079f6c303d151dde2e34d1c56d044a1a13d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xebe1bf1653d55d31f6ed38b1a4ccfe2a92338f66` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389952 | `0xf3c275d450fe624c1f5e31f3bcb2f8894e96cdf1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389953 | `0xfbadc4f18ddc7ebdbc920d3f9b0ca7a1296788d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x68225f47813af66f186b3714ffe6a91850bc76b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdbbb034a50c436359fb6d87d3d669647e0fa24d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf1dfc222b42233b9947183611f6edf6d1d7dca3d` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 277
- Live contracts: 6
- Unknown liveness contracts: 271
- Source-verified contracts: 262
- Currently scope-matched contracts retained as-is: 0
- Classification counts: candidate review=192, contamination review=7, source verified unclassified=63, unverified unclassified=15

Showing first 200 of 277 contracts. The complete deployer expansion list is in `brief.json`.

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| candidate review | AccountAction<br>`0x5f11e94e0a69ac8490f45eb27a6478dcddb0227e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | AccountAction<br>`0x7f9536cf7826ede9abe6019c035338a60335768c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | AccountAction<br>`0x8a096f6c6d89dbd3c3df3eeba45710aa367f9a8c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | AccountAction<br>`0x922e6e0b80ee037b32266bca33713b2043bc87d0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | AccountAction<br>`0x95ed5156158872dd3f2a01c8c444346a00cc94ae` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | AccountAction<br>`0x97cc93e87655d3d0f41aa0f54f86973fbd4b9af7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | AccountAction<br>`0xf9fdb607d8b843cdf65898df4e08d1479b69002a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | AddressRegistry<br>`0xe569a3c7c1376cf871a46203304020932c8d49c8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | BatchAction<br>`0x112170998a34dd9fad0a92f4d2808fa7e059283f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | BatchAction<br>`0x1d1a531cbcb969040da7527bf1092dfc4ff7dd46` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | BatchAction<br>`0x3b8b09e679fd545d5b8ab1f03221497e8c0708af` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | BatchAction<br>`0x4fc792418b8901d5593dc89d7627d2daf2ebede9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | BatchAction<br>`0x53423db7ac663aa1941a809a6d787bffc7a5c8a9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | BatchAction<br>`0x59074a5e588de093fc5f04a7173d86b2b48e9d39` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | BatchAction<br>`0x63757f772b8aab66f4de09617e8f257249efcb93` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | BatchAction<br>`0xb484dd00b0f41a42e927b601f6c10a16b265f59f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | BatchAction<br>`0xb87afd4b93235c155d60d578998e0aa94c9a9263` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | BatchAction<br>`0xdb7a1be29d3d3ad8231d4808ac555119ed8762e1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | CalculationViews<br>`0x851a28260227f9a8e6bf39a5fa3b5132fa49c7f3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | CalculationViews<br>`0xbe4aba25915bad390edf83b7e1ca44b6145f261e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | CalculationViews<br>`0xc6f5ba780b78db117233d5f76da9e2032a312a9e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | ERC1155Action<br>`0x51888550902159f2eb7c43b8589dbe975379aa10` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | ERC1155Action<br>`0xbf12d7e41a25f449293ab8cd1364fe74a175bfa5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | ERC1155Action<br>`0xffd7531ed937f703b269815950cb75bdaaa341c9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | FlashLiquidator<br>`0x0a058e89b904a701063fec9d0e770ba087ed3e76` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | FlashLiquidator<br>`0x7e9819c4fd31efdd16abb9e4c2b87f9991195493` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | FlashLiquidator<br>`0x9bfc1ca64e8065514fed89c85aa0e98161f64395` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | FreeCollateralExternal<br>`0x422a2e95009f11e9e144fe7fd1a7c7a9c759bb6a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | FreeCollateralExternal<br>`0xea7aa69dbeea9deb4294109bd344f69c79c6fdf7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | GenericERC20WithdrawRequestManager<br>`0x2d8295b1c42d9055596d5a5f4c6429baf02a936c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | GovernanceAction<br>`0x514f9563ace90bde2f0f00091208236e1864690f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | GovernanceAction<br>`0xd2b104a30518abee70e5b77023d8966a2234253d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | GovernorAlpha<br>`0x086b4ecd75c494dd36641195e89c25373e06d7cb` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | InfiniFiOracle<br>`0x7ee5ffa27debf9f94e00dac79bc498ea98f151f6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | InfiniFiOracle<br>`0xb3b111ffddef82d0d519d1732d157c82c2e14761` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | InfiniFiOracle<br>`0xbecf0e2d89f17de8f575a80c41bfdc9ad18d2d79` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | InfiniFiWithdrawRequestManager<br>`0x49b1945510ce1f95479477dd867da6cd21da20ec` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | InfiniFiWithdrawRequestManager<br>`0x955580c99a4c64055e8cb592d1e471f72c24c133` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | InitializeMarketsAction<br>`0x280decd520da16e5571a6f2fb803a57e0c16f423` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | InitializeMarketsAction<br>`0x6a351699bec7966cdd3ba2bb47b5fc89f626881f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | InitializeMarketsAction<br>`0x884b74912be39e925d60ef3aa13b6321e645c893` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | InitializeMarketsAction<br>`0xa44a8729d139b39a322a9c7754fae98b6cff6c71` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | InitializeMarketsAction<br>`0xf35431fa697bdd436d8c4e8490e71bdcb52f6a09` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | LiquidateCurrencyAction<br>`0x0ff45fd2ad282b7e6e29dc10dbe6b3fc907284b0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | LiquidateCurrencyAction<br>`0x3abbd5fad059fc2b966b2de879e936a73268a0b2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | LiquidateCurrencyAction<br>`0x6b986a60216aca687457782adfa0b002ad392ce7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | LiquidateCurrencyAction<br>`0x885d3dd787b9d417f912f4507241e771097181a6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | LiquidatefCashAction<br>`0xb12b08045c2fb403fcae579641d0a011aad8ed70` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | LiquidatefCashAction<br>`0xf38a93ee78912b10ff722d187554406b0416a800` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | MidasOracle<br>`0x3cda3599cfe80ea1c74d6d77a5857ada83914e5d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | MidasOracle<br>`0xde9b77de6eceac4db6ef47eedd204c58817dcd6c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | MidasStakingStrategy<br>`0x3519ba8a550973100676f1f00f67263e62da467d` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | MidasStakingStrategy<br>`0x496135b4421304872974cc0c01c5f0e59b7f4ad0` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | MidasStakingStrategy<br>`0x7697202a29acd384c889f879dfbffb6dcab17fa4` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | MidasStakingStrategy<br>`0x780e287ea2ef2dce34b66f1ed5a2225d8148deaa` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | MidasStakingStrategy<br>`0xb9cd42168d53836b45751774f757132ece4f5d42` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | MidasWithdrawRequestManager<br>`0x6e447195e3ff98e11ccba52e02676bec7cbacdb0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | MidasWithdrawRequestManager<br>`0xefb95036bf8d2d31e8fb24355e8ec76a2e341014` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | nProxy<br>`0x0f12b85a331acb515e1626f707aade62e9960187` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | nProxy<br>`0x1344a36a1b56144c3bc62e7757377d288fde0369` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | nProxy<br>`0x30fba4a7ec8591f25b4d37fd79943a4bb6e553e2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | nProxy<br>`0x32d82a1c8618c7be7fe85b2f1c44357a871d52d1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | nProxy<br>`0x5fc3fc6263b16f665d78075784f5a6abed00e1dd` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | nProxy<br>`0x84e58d8faa4e3b74d55d9fc762230f15d95570b8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | nProxy<br>`0x86b222d44ac6cc56e75b3df01fdad5dc371ef538` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | nProxy<br>`0x914255c0c289aea36e378ebb5e28293b5ed278ca` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | nProxy<br>`0xaac5145f5286a3c6a06256fdfbf5b499aa965c9c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | nProxy<br>`0xb1113cf888a019693b254da3d90f841072d85172` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | nProxy<br>`0xba4eb30f7f2e378249cf94e08f581e704326e9c6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | nProxy<br>`0xc87a900078f04c45b7f14e46c520d4a6f37296b0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | nProxy<br>`0xc91864be1b097c9c85565cdb013ba2307ffb492a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | nProxy<br>`0xcfeaead4947f0705a14ec42ac3d44129e1ef3ed5` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | nProxy<br>`0xd6aa58cf21a0edb33375d6c0434b8bb5b589f021` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | nProxy<br>`0xdbbb034a50c436359fb6d87d3d669647e0fa24d5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | nProxy<br>`0xe20048fa0f165a49b780dfa9a8caba845332f848` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | nProxy<br>`0xe47d1584a6dbb98cc889bb1c9cbe5387173c282b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | nProxy<br>`0xeeb885af7c8075aa3b93e2f95e1c0bd51c758f91` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | nProxy<br>`0xf94507f3dece4cc4c73b6cf228912b85eadc9cfb` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | nTokenAction<br>`0x1cd33f81420bfce8a3622dc56bbd617b7fa3c93a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | nTokenAction<br>`0x3533f05b2c54ce1c2321cfe3c6f693a3cbbaea10` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | nTokenERC20Proxy<br>`0xeb2577109a7c636f0e65b75d2c1cb55a54fd8ec5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | nTokenMintAction<br>`0x0092a5552162f911ccf7f456e85f473ce259707f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | nTokenMintAction<br>`0x0e01dbe8e854780e60491429d7adafbb84003573` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | nTokenMintAction<br>`0x380cdf83748249c14a575673325aba9bd7e1ff55` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | nTokenMintAction<br>`0x65c23f235a630ca918cb1acc37533597a413ca2e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | nTokenMintAction<br>`0xe5ae18de0bdd7003e3b74613554f58484e432de7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | nTokenMintAction<br>`0xf95441f348eb2fd3d5d82f9b7b961137a734eedd` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | nTokenRedeemAction<br>`0x1c510763432c0e65d86f313612d4e1e2d26e4332` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | nTokenRedeemAction<br>`0x2f77cdd140d0ec7db9306b91959003872a7ceb92` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | nTokenRedeemAction<br>`0x91b79f4081d3522af2760b7698810d501ebc8010` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | nTokenRedeemAction<br>`0xce3f1d83cecee26b1d4a7010123b86ced67a48d4` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | OriginWithdrawRequestManager<br>`0x0bc6d6c4f7ca318c07de9ce75bbad6cc0fbb7251` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | Router<br>`0x0158fc072ff5dde8f7b9e2d00e8782093db888db` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | Router<br>`0x123fca954ea894305b684f56a0d043169a5aa7e4` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | Router<br>`0x16ed130f7a6dcac7e3b0617a7bafa4b470189962` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | Router<br>`0x19152dda25a96d0ca244f0d7f3f13a966f392b23` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | Router<br>`0x2c67b0c0493e358cf368073bc0b5fa6f01e981e0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | Router<br>`0x2cc280279b8572fcdc100e2d01ca594a00031cb0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | Router<br>`0x3da72a5d6fa2a46585f01a09bc6e2ee1481ee555` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | Router<br>`0x42c74c3d5d0cc020627dc7074a40a83636f6fb23` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | Router<br>`0x58784379c844a00d4f572917d43f991c971f96ca` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | Router<br>`0x878c46978ac67e43d9d27e510f98e087e9940b12` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | Router<br>`0x9a419cd788aaa88b485c50144cbcf76bf0c2e0bd` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | Router<br>`0xd7c3dc1c36d19cf4e8cea4ea143a2f4458dd1937` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | Router<br>`0xed1546defca671d4a64d3bd7d25571355c23f4b0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | Router<br>`0xfab3b28f7c1ae22c4abc185673ed96e8e815eaad` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | Router<br>`0xfea323486456f26b6a0a9074fd4df508a6e9fa0a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | Router<br>`0xfebc565a1c8c70dbbdc11f0e6ad8cc33b6f3dd1b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | SettleAssetsExternal<br>`0xb15167fff26202aa3d20ecfd7f46a34fa4126e49` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | SettleAssetsExternal<br>`0xe10836ba543be91e978fc9b455bf483572a44b21` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | StakingStrategy<br>`0x2838f999c23b480324314ac8d0c1f84d795135ba` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | StakingStrategy<br>`0x48ba5c2ef57b45de7736345f7f4db67818002dab` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | StakingStrategy<br>`0x4eed2b20f63e3bc38e804535982f8c70a6767d93` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | StakingStrategy<br>`0xa9f31d1535e5430ae335975eb0dac378c82e9b31` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | StrategyUtils<br>`0xe78d09c8b6ccf9c1732d14353a708b75f6c67c67` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | TimelockUpgradeableProxy<br>`0x0409d36ba4bad176ed62a97faf05253b6b206a3e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | TimelockUpgradeableProxy<br>`0x091356e6793a0d960174eaab4d470e39a99dd673` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | TimelockUpgradeableProxy<br>`0x18f86644781fc9f7b4641d371f377c96744ec10f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | TimelockUpgradeableProxy<br>`0x2a5c94fe8fa6c0c8d2a87e5c71ad628caa092ce4` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | TimelockUpgradeableProxy<br>`0x46c423e27e88c002c3643e332d8f62b7513a9898` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | TimelockUpgradeableProxy<br>`0x59aa04b190ec76c95a1eb02d9a184b7fdd64b9fb` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | TimelockUpgradeableProxy<br>`0x7f723fee1e65a7d26be51a05af0b5efee4a7d5ae` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | TimelockUpgradeableProxy<br>`0x94f6cb4fae0eb3fa74e9847dff2ff52fd5ec7e6e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | TimelockUpgradeableProxy<br>`0x9fb57943926749b49a644f237a28b491c9b465e0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | TimelockUpgradeableProxy<br>`0xaf14d06a65c91541a5b2db627ecd1c92d7d9c48b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | TimelockUpgradeableProxy<br>`0xe335d314bd4ef7dd44f103dc124fefb7ce63ec95` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | TimelockUpgradeableProxy<br>`0xe4ebb6ea270a70491c3af06376a5862a0fda7268` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | TimelockUpgradeableProxy<br>`0xe854ceb7e57988b083b93195d092d289fed1d0ff` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | TimelockUpgradeableProxy<br>`0xf72c1cf4aab54c39ff4ea0f2c6179d62f3b79348` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | TradingAction<br>`0x111a2f8b843b7a20d9b1a2535c837e6cc23cc5d7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | TradingAction<br>`0x5c36a0deab3531d29d848e684e8bdf5f81cdb643` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | TradingAction<br>`0x662f1be7f07c90031f7b5264f71bd1ac0e975526` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | TradingAction<br>`0xcac9c01d1207e5d06bb0fd5b854832f35fe97e68` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | TradingAction<br>`0xf6b3064a20efff9c3495fedf10f19a376510761a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | TradingModule<br>`0x179a2d2408bfbc21b72d59c4a74e5010f07dc823` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | TradingModule<br>`0x86bece3dce75dde030e0c9c2e955f8f0fb3908b0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | TradingModule<br>`0xf1dfc222b42233b9947183611f6edf6d1d7dca3d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | TreasuryManager<br>`0xe728eac44f19db83f7ce847ce7cdb90fd43b07b7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | TreasuryManager<br>`0xe801b59eb9f6dddd58f35772afdd89e499ec5b0a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | VaultAccountAction<br>`0x1a751cd714910929017ce1417ead6d0732db1a78` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | VaultAccountAction<br>`0x602f8e2fdb449bb3a9933aa3da5e2349c668090b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | VaultAccountAction<br>`0x8d3d711dd5be47f00bd11ac24eea7bc0efb92cbd` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | VaultAccountAction<br>`0x9414609789c179e1295e9a0559d629bf832b3c04` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | VaultAccountAction<br>`0xf8b25da34367e5fe6d9cd03d1ecfd227ee06021a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | VaultAccountHealth<br>`0x7d764650690e60a7a6647f2d12708f8434b87052` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | VaultAction<br>`0x67e5f0db833e7e4f000a768d1eb7a8e87b31aa75` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | VaultAction<br>`0xae04e4887cbf5f25c05ac1384bcd0b7e885a1f4a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | VaultAction<br>`0xd162738705cdcdba11eae86794606a7fb24655f4` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | VaultLiquidationAction<br>`0x49d0e97ba2f4cf0e5e4f86c0d9c5c8acbacff50c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | Views<br>`0x54bb219281fe0eef1483bc4421e6502fe1e30a97` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | Views<br>`0xde14d5f07456c86f070c108a04ae2fafdbd2a939` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | WrappedfCashFactory<br>`0x5d051deb5db151c2172dcdccd42e6a2953e27261` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | AccountAction<br>`0xc2763a6465f5c86769a1af826db270a6367b03b7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | BatchAction<br>`0x0092a5552162f911ccf7f456e85f473ce259707f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | CalculationViews<br>`0x280decd520da16e5571a6f2fb803a57e0c16f423` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | ERC1155Action<br>`0xde14d5f07456c86f070c108a04ae2fafdbd2a939` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | FlashLiquidator<br>`0x326746fd16fda81599a80280ac94d3ede71e2ce1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | FlashLiquidator<br>`0x48a18d9e10dfcbec38d31884712dea5a24120fd6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | FreeCollateralExternal<br>`0x72ec9de3efd22552b6dc17142ead505a48940d4e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | GovernanceAction<br>`0x10aae34011c256a9e63ab5ac50154c2539c0f51d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | InitializeMarketsAction<br>`0x422a2e95009f11e9e144fe7fd1a7c7a9c759bb6a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | LiquidateCurrencyAction<br>`0xdfb618098fc858f43fe0e5fb906adfe96786832f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | LiquidatefCashAction<br>`0x1c510763432c0e65d86f313612d4e1e2d26e4332` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | MigrateIncentives<br>`0x6085b0a8f4c7ffa2e8ca578037792d6535d1e29b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | nProxy<br>`0x1344a36a1b56144c3bc62e7757377d288fde0369` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | nProxy<br>`0x3533f05b2c54ce1c2321cfe3c6f693a3cbbaea10` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | nProxy<br>`0x5c36a0deab3531d29d848e684e8bdf5f81cdb643` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | nProxy<br>`0x851a28260227f9a8e6bf39a5fa3b5132fa49c7f3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | nProxy<br>`0x878c46978ac67e43d9d27e510f98e087e9940b12` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | nProxy<br>`0x91b79f4081d3522af2760b7698810d501ebc8010` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | nProxy<br>`0xa0d61c08e642103158fc6a1495e7ff82baf25857` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | nProxy<br>`0xae04e4887cbf5f25c05ac1384bcd0b7e885a1f4a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | nProxy<br>`0xcac9c01d1207e5d06bb0fd5b854832f35fe97e68` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | nProxy<br>`0xcfeaead4947f0705a14ec42ac3d44129e1ef3ed5` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | nProxy<br>`0xd7c3dc1c36d19cf4e8cea4ea143a2f4458dd1937` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | nProxy<br>`0xf95441f348eb2fd3d5d82f9b7b961137a734eedd` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | nTokenAction<br>`0x662f1be7f07c90031f7b5264f71bd1ac0e975526` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | nTokenMintAction<br>`0x086b4ecd75c494dd36641195e89c25373e06d7cb` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | nTokenRedeemAction<br>`0x95df7e34403becd532f2be160cacda56f0bd6ba3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | PauseRouter<br>`0x6b986a60216aca687457782adfa0b002ad392ce7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | Router<br>`0xb12b08045c2fb403fcae579641d0a011aad8ed70` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | SettleAssetsExternal<br>`0xa40aedaac28f9574124d7c8eff59732cc77f1dd4` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | TradingAction<br>`0xca2848903d7b5896796fe2687e76ccec16b89b90` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | TradingModule<br>`0x514f9563ace90bde2f0f00091208236e1864690f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | TreasuryAction<br>`0x1cd33f81420bfce8a3622dc56bbd617b7fa3c93a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | TreasuryManager<br>`0x92dc86b93fb564131aa6f961a98465355d58a560` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | VaultAccountAction<br>`0xabd096049e0cdcecfe26a3b1bc7bb38438f1b488` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | VaultAccountHealth<br>`0xffd7531ed937f703b269815950cb75bdaaa341c9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | VaultAction<br>`0x63757f772b8aab66f4de09617e8f257249efcb93` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | VaultLiquidationAction<br>`0x5f11e94e0a69ac8490f45eb27a6478dcddb0227e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | Views<br>`0xb15167fff26202aa3d20ecfd7f46a34fa4126e49` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| candidate review | WrappedfCashFactory<br>`0x5d051deb5db151c2172dcdccd42e6a2953e27261` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| contamination review | MerkleDistributor<br>`0x3728081cc9668b206665cae9dc2b43aff35acc0c` | non_address_book | unknown | unknown | verified | n/a | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| contamination review | MigrateV2ToV3<br>`0xa9f0fb2528a8ada9b11be582ac1d13bdbfb8d437` | non_address_book | unknown | unknown | verified | n/a | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| contamination review | NotionalV1ToNotionalV2<br>`0xf47d7192413ac6558f48594ecce6d2dfe38b7876` | non_address_book | unknown | unknown | verified | n/a | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| contamination review | SecondaryRewarder<br>`0xbf35529d9333feee50c17aa0a39eeabea2b3abb2` | non_address_book | unknown | unknown | verified | n/a | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| contamination review | FlashLiquidator<br>`0x0158fc072ff5dde8f7b9e2d00e8782093db888db` | non_address_book | unknown | unknown | verified | n/a | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| contamination review | UnderlyingHoldingsOracle<br>`0x0eae7badef8f95de91fddb74a89a786cf891eb0e` | non_address_book | unknown | unknown | verified | n/a | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| contamination review | VaultRewarderLib<br>`0x3965d75bfe40435246c22f75db2e170210b8bc68` | non_address_book | unknown | unknown | verified | n/a | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| source verified unclassified | cTokenAggregator<br>`0x181900d998a8a922e68b3fc186ce0fa525c3c424` | non_address_book | unknown | unknown | verified | n/a | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [2025.07.18 - Final - Notional Exponent Audit Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2025.07.18%20-%20Final%20-%20Notional%20Exponent%20Audit%20Report.pdf) | Sherlock | Contest | 2025-07 | aging | Direct | n/a | no match | 0 | 0 | 0 | 31 | n/a |
| [2026.01.17 - Final - Notional Collaborative Audit Report 1768611627.pdf](https://sherlock-files.ams3.digitaloceanspaces.com/reports/2026.01.17%20-%20Final%20-%20Notional%20Collaborative%20Audit%20Report%201768611627.pdf) | Sherlock | Contest | 2026-01 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 8 | n/a |
| [Audit_Report.pdf](https://github.com/sherlock-audit/2022-09-notional-judging/blob/main/Audit_Report.pdf) | Sherlock | Contest | 2022-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 22 | high |
| [2026.03.06 - Final - Notional Collaborative Audit Report 1772819509.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2026.03.06%20-%20Final%20-%20Notional%20Collaborative%20Audit%20Report%201772819509.pdf) | Sherlock | Contest | 2026-03 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 4 | n/a |
| [www.openzeppelin.com/news/notional-audit](https://www.openzeppelin.com/news/notional-audit) | OpenZeppelin | Audit | 2020-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 14 | high |
| [audits.sherlock.xyz/contests/59](https://audits.sherlock.xyz/contests/59) | Sherlock | Contest | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Notional v4 Security Audit Report.pdf](https://github.com/mixbytes/audits_public/blob/master/Notional%20Finance/Notional%20v4/Notional%20v4%20Security%20Audit%20Report.pdf) | yAudit | Audit | 2025-11 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 35 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2728] 2025.07.18 - Final - Notional Exponent Audit Report.pdf — no match: No reason recorded
- [2729] 2026.01.17 - Final - Notional Collaborative Audit Report 1768611627.pdf — no match: No reason recorded
- [2730] Audit_Report.pdf — no match: Extracted contract names from findings and file paths in the audit report. No explicit scope section found, but contracts are clearly in scope as they are the subject of findings.
- [2731] 2026.03.06 - Final - Notional Collaborative Audit Report 1772819509.pdf — no match: No reason recorded
- [2733] www.openzeppelin.com/news/notional-audit — no match: The report covers two audits: first audit (commit 66ce8f3e...) and second audit (commit b6fc6be...). The scope for the second audit includes all contracts in /contracts directory except MockLiquidation.sol. The first audit scope includes all contracts in /packages/contracts/contracts excluding some interfaces and mocks. Extracted names are from both audits, focusing on contracts explicitly mentioned in scope or findings.
- [2734] audits.sherlock.xyz/contests/59 — no match: The provided text is a header snippet from a contest page, not a full audit report. No contract names, file paths, or audit date are identifiable.
- [14895] Notional v4 Security Audit Report.pdf — no match: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 2025.07.18 - Final - Notional Exponent Audit Report.pdf | AbstractCustomOracle | unmatched — not counted | — | — | no |
| 2025.07.18 - Final - Notional Exponent Audit Report.pdf | AbstractLPOracle | unmatched — not counted | — | — | no |
| 2025.07.18 - Final - Notional Exponent Audit Report.pdf | AbstractLendingRouter | unmatched — not counted | — | — | no |
| 2025.07.18 - Final - Notional Exponent Audit Report.pdf | AbstractRewardManager | unmatched — not counted | — | — | no |
| 2025.07.18 - Final - Notional Exponent Audit Report.pdf | AbstractSingleSidedLP | unmatched — not counted | — | — | no |
| 2025.07.18 - Final - Notional Exponent Audit Report.pdf | AbstractStakingStrategy | unmatched — not counted | — | — | no |
| 2025.07.18 - Final - Notional Exponent Audit Report.pdf | AbstractWithdrawRequestManager | unmatched — not counted | — | — | no |
| 2025.07.18 - Final - Notional Exponent Audit Report.pdf | AbstractYieldStrategy | unmatched — not counted | — | — | no |
| 2025.07.18 - Final - Notional Exponent Audit Report.pdf | AddressRegistry | unmatched — not counted | — | — | no |
| 2025.07.18 - Final - Notional Exponent Audit Report.pdf | ClonedCooldownHolder | unmatched — not counted | — | — | no |
| 2025.07.18 - Final - Notional Exponent Audit Report.pdf | Constants | unmatched — not counted | — | — | no |
| 2025.07.18 - Final - Notional Exponent Audit Report.pdf | ConvexRewardManager | unmatched — not counted | — | — | no |
| 2025.07.18 - Final - Notional Exponent Audit Report.pdf | Curve2TokenOracle | unmatched — not counted | — | — | no |
| 2025.07.18 - Final - Notional Exponent Audit Report.pdf | CurveConvex2Token | unmatched — not counted | — | — | no |
| 2025.07.18 - Final - Notional Exponent Audit Report.pdf | Dinero | unmatched — not counted | — | — | no |
| 2025.07.18 - Final - Notional Exponent Audit Report.pdf | Ethena | unmatched — not counted | — | — | no |
| 2025.07.18 - Final - Notional Exponent Audit Report.pdf | EtherFi | unmatched — not counted | — | — | no |
| 2025.07.18 - Final - Notional Exponent Audit Report.pdf | GenericERC20 | unmatched — not counted | — | — | no |
| 2025.07.18 - Final - Notional Exponent Audit Report.pdf | GenericERC4626 | unmatched — not counted | — | — | no |
| 2025.07.18 - Final - Notional Exponent Audit Report.pdf | Initializable | unmatched — not counted | — | — | no |
| 2025.07.18 - Final - Notional Exponent Audit Report.pdf | MorphoLendingRouter | unmatched — not counted | — | — | no |
| 2025.07.18 - Final - Notional Exponent Audit Report.pdf | Origin | unmatched — not counted | — | — | no |
| 2025.07.18 - Final - Notional Exponent Audit Report.pdf | PendlePT | unmatched — not counted | — | — | no |
| 2025.07.18 - Final - Notional Exponent Audit Report.pdf | PendlePTLib | unmatched — not counted | — | — | no |
| 2025.07.18 - Final - Notional Exponent Audit Report.pdf | PendlePTOracle | unmatched — not counted | — | — | no |
| 2025.07.18 - Final - Notional Exponent Audit Report.pdf | PendlePT_sUSDe | unmatched — not counted | — | — | no |
| 2025.07.18 - Final - Notional Exponent Audit Report.pdf | RewardManagerMixin | unmatched — not counted | — | — | no |
| 2025.07.18 - Final - Notional Exponent Audit Report.pdf | StakingStrategy | unmatched — not counted | — | — | no |
| 2025.07.18 - Final - Notional Exponent Audit Report.pdf | TimelockUpgradeableProxy | unmatched — not counted | — | — | no |
| 2025.07.18 - Final - Notional Exponent Audit Report.pdf | TokenUtils | unmatched — not counted | — | — | no |
| 2025.07.18 - Final - Notional Exponent Audit Report.pdf | TypeConvert | unmatched — not counted | — | — | no |
| 2026.01.17 - Final - Notional Collaborative Audit Report 1768611627.pdf | AbstractStakingStrategy | unmatched — not counted | — | — | no |
| 2026.01.17 - Final - Notional Collaborative Audit Report 1768611627.pdf | AddressRegistry | unmatched — not counted | — | — | no |
| 2026.01.17 - Final - Notional Collaborative Audit Report 1768611627.pdf | IMidas | unmatched — not counted | — | — | no |
| 2026.01.17 - Final - Notional Collaborative Audit Report 1768611627.pdf | Midas | unmatched — not counted | — | — | no |
| 2026.01.17 - Final - Notional Collaborative Audit Report 1768611627.pdf | MidasStakingStrategy | unmatched — not counted | — | — | no |
| 2026.01.17 - Final - Notional Collaborative Audit Report 1768611627.pdf | MidasUSDOracle | unmatched — not counted | — | — | no |
| 2026.01.17 - Final - Notional Collaborative Audit Report 1768611627.pdf | PendlePT | unmatched — not counted | — | — | no |
| 2026.01.17 - Final - Notional Collaborative Audit Report 1768611627.pdf | PendlePT_sUSDe | unmatched — not counted | — | — | no |
| Audit_Report.pdf | TradingUtils | unmatched — not counted | — | listed in scope and findings | no |
| Audit_Report.pdf | StrategyUtils | unmatched — not counted | — | listed in scope and findings | no |
| Audit_Report.pdf | ZeroExAdapter | unmatched — not counted | — | listed in scope and findings | no |
| Audit_Report.pdf | Boosted3TokenAuraHelper | unmatched — not counted | — | listed in scope and findings | no |
| Audit_Report.pdf | MetaStable2TokenAuraHelper | unmatched — not counted | — | listed in scope and findings | no |
| Audit_Report.pdf | MetaStable2TokenAuraVault | unmatched — not counted | — | listed in scope and findings | no |
| Audit_Report.pdf | TwoTokenPoolUtils | unmatched — not counted | — | listed in scope and findings | no |
| Audit_Report.pdf | Stable2TokenOracleMath | unmatched — not counted | — | listed in scope and findings | no |
| Audit_Report.pdf | TwoTokenPoolMixin | unmatched — not counted | — | listed in scope and findings | no |
| Audit_Report.pdf | AuraStakingMixin | unmatched — not counted | — | listed in scope and findings | no |
| Audit_Report.pdf | CrossCurrencyfCashVault | unmatched — not counted | — | listed in scope and findings | no |
| Audit_Report.pdf | SettlementUtils | unmatched — not counted | — | listed in scope and findings | no |
| Audit_Report.pdf | TradingModule | unmatched — not counted | — | listed in scope and findings | no |
| Audit_Report.pdf | PoolMixin | unmatched — not counted | — | listed in scope and findings | no |
| Audit_Report.pdf | Boosted3TokenPoolUtils | unmatched — not counted | — | listed in scope and findings | no |
| Audit_Report.pdf | Boosted3TokenPoolMixin | unmatched — not counted | — | listed in scope and findings | no |
| Audit_Report.pdf | MetaStable2TokenVaultMixin | unmatched — not counted | — | listed in scope and findings | no |
| Audit_Report.pdf | BalancerConstants | unmatched — not counted | — | listed in scope and findings | no |
| Audit_Report.pdf | BalancerVaultStorage | unmatched — not counted | — | listed in scope and findings | no |
| Audit_Report.pdf | BalancerUtils | unmatched — not counted | — | listed in scope and findings | no |
| Audit_Report.pdf | StableMath | unmatched — not counted | — | listed in scope and findings | no |
| Audit_Report.pdf | wstETHChainlinkOracle | unmatched — not counted | — | listed in scope and findings | no |
| 2026.03.06 - Final - Notional Collaborative Audit Report 1772819509.pdf | AbstractLendingRouter | unmatched — not counted | — | — | no |
| 2026.03.06 - Final - Notional Collaborative Audit Report 1772819509.pdf | AbstractYieldStrategy | unmatched — not counted | — | — | no |
| 2026.03.06 - Final - Notional Collaborative Audit Report 1772819509.pdf | InfiniFi | unmatched — not counted | — | — | no |
| 2026.03.06 - Final - Notional Collaborative Audit Report 1772819509.pdf | MorphoLendingRouter | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/notional-audit | CashMarket | unmatched — not counted | — | mentioned in scope and findings | no |
| www.openzeppelin.com/news/notional-audit | Common | unmatched — not counted | — | mentioned in findings | no |
| www.openzeppelin.com/news/notional-audit | Directory | unmatched — not counted | — | mentioned in scope and findings | no |
| www.openzeppelin.com/news/notional-audit | ERC1155Token | unmatched — not counted | — | mentioned in findings | no |
| www.openzeppelin.com/news/notional-audit | ERC1155Trade | unmatched — not counted | — | mentioned in findings | no |
| www.openzeppelin.com/news/notional-audit | Escrow | unmatched — not counted | — | mentioned in scope and findings | no |
| www.openzeppelin.com/news/notional-audit | ExchangeRate | unmatched — not counted | — | mentioned in findings | no |
| www.openzeppelin.com/news/notional-audit | FutureCash | unmatched — not counted | — | mentioned in findings | no |
| www.openzeppelin.com/news/notional-audit | Governed | unmatched — not counted | — | mentioned in scope and findings | no |
| www.openzeppelin.com/news/notional-audit | Liquidation | unmatched — not counted | — | mentioned in findings | no |
| www.openzeppelin.com/news/notional-audit | Portfolios | unmatched — not counted | — | mentioned in scope and findings | no |
| www.openzeppelin.com/news/notional-audit | PortfoliosStorage | unmatched — not counted | — | mentioned in findings | no |
| www.openzeppelin.com/news/notional-audit | RiskFramework | unmatched — not counted | — | mentioned in findings | no |
| www.openzeppelin.com/news/notional-audit | SafeInt256 | unmatched — not counted | — | mentioned in findings | no |
| Notional v4 Security Audit Report.pdf | AbstractCustomOracle | unmatched — not counted | — | — | no |
| Notional v4 Security Audit Report.pdf | AbstractLPOracle | unmatched — not counted | — | — | no |
| Notional v4 Security Audit Report.pdf | AbstractLendingRouter | unmatched — not counted | — | — | no |
| Notional v4 Security Audit Report.pdf | AbstractRewardManager | unmatched — not counted | — | — | no |
| Notional v4 Security Audit Report.pdf | AbstractSingleSidedLP | unmatched — not counted | — | — | no |
| Notional v4 Security Audit Report.pdf | AbstractStakingStrategy | unmatched — not counted | — | — | no |
| Notional v4 Security Audit Report.pdf | AbstractWithdrawRequestManager | unmatched — not counted | — | — | no |
| Notional v4 Security Audit Report.pdf | AbstractYieldStrategy | unmatched — not counted | — | — | no |
| Notional v4 Security Audit Report.pdf | AddressRegistry | unmatched — not counted | — | — | no |
| Notional v4 Security Audit Report.pdf | ClonedCooldownHolder | unmatched — not counted | — | — | no |
| Notional v4 Security Audit Report.pdf | Constants | unmatched — not counted | — | — | no |
| Notional v4 Security Audit Report.pdf | ConvexRewardManager | unmatched — not counted | — | — | no |
| Notional v4 Security Audit Report.pdf | Curve2TokenOracle | unmatched — not counted | — | — | no |
| Notional v4 Security Audit Report.pdf | CurveConvex2Token | unmatched — not counted | — | — | no |
| Notional v4 Security Audit Report.pdf | Dinero | unmatched — not counted | — | — | no |
| Notional v4 Security Audit Report.pdf | Ethena | unmatched — not counted | — | — | no |
| Notional v4 Security Audit Report.pdf | EthenaWithdrawRequestManager | unmatched — not counted | — | — | no |
| Notional v4 Security Audit Report.pdf | EtherFi | unmatched — not counted | — | — | no |
| Notional v4 Security Audit Report.pdf | EtherFiWithdrawRequestManager | unmatched — not counted | — | — | no |
| Notional v4 Security Audit Report.pdf | GenericERC20 | unmatched — not counted | — | — | no |
| Notional v4 Security Audit Report.pdf | GenericERC20WithdrawRequestManager | unmatched — not counted | — | — | no |
| Notional v4 Security Audit Report.pdf | GenericERC4626 | unmatched — not counted | — | — | no |
| Notional v4 Security Audit Report.pdf | Initializable | unmatched — not counted | — | — | no |
| Notional v4 Security Audit Report.pdf | MorphoLendingRouter | unmatched — not counted | — | — | no |
| Notional v4 Security Audit Report.pdf | Origin | unmatched — not counted | — | — | no |
| Notional v4 Security Audit Report.pdf | OriginWithdrawRequestManager | unmatched — not counted | — | — | no |
| Notional v4 Security Audit Report.pdf | PendlePT | unmatched — not counted | — | — | no |
| Notional v4 Security Audit Report.pdf | PendlePTLib | unmatched — not counted | — | — | no |
| Notional v4 Security Audit Report.pdf | PendlePTOracle | unmatched — not counted | — | — | no |
| Notional v4 Security Audit Report.pdf | PendlePT_sUSDe | unmatched — not counted | — | — | no |
| Notional v4 Security Audit Report.pdf | RewardManagerMixin | unmatched — not counted | — | — | no |
| Notional v4 Security Audit Report.pdf | StakingStrategy | unmatched — not counted | — | — | no |
| Notional v4 Security Audit Report.pdf | TimelockUpgradeableProxy | unmatched — not counted | — | — | no |
| Notional v4 Security Audit Report.pdf | TokenUtils | unmatched — not counted | — | — | no |
| Notional v4 Security Audit Report.pdf | TypeConvert | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | `0x90c3c405716b8ff965dc905c91eee82a0b41a4ff` | EmptyProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x1344a36a1b56144c3bc62e7757377d288fde0369` | FinalRouterV3_Arbitrum | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x95df7e34403becd532f2be160cacda56f0bd6ba3` | NoteERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x06d45ef1f8b3c37b0de66f156b11f10b4837619a` | nTokenERC20Proxy | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x0519614643a019feb53b9f2c395b243253f75db7` | PrimeCashProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x2ddb08f2757909537bdf2d2eb2bd4f7a64e8e5dd` | PrimeDebtProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x019be259bc299f3f653688c7655c87f998bc7bc1` | StandardArbERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 86 |
| upstream | 28 |
| standard_library | 2 |
| needs_review | 47 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 7
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 114 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2, low=1
- Match method counts: n/a

Zero-match audit list:

- [2728] 2025.07.18 - Final - Notional Exponent Audit Report.pdf
- [2729] 2026.01.17 - Final - Notional Collaborative Audit Report 1768611627.pdf
- [2730] Audit_Report.pdf
- [2731] 2026.03.06 - Final - Notional Collaborative Audit Report 1772819509.pdf
- [2733] www.openzeppelin.com/news/notional-audit
- [2734] audits.sherlock.xyz/contests/59
- [14895] Notional v4 Security Audit Report.pdf

Fork inheritance lineage and inherited audits are included when available.
