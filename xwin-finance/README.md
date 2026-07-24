# Agentic Audit Brief: xWin Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 1 across 1 audit(s)
- Eligible audit results: 1 (1 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: xWin Finance (`xwin-finance`)
- Website: [https://xwin.finance](https://xwin.finance)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, bsc, polygon
- Contract surface: 134 unique implementations (297 raw deployments)
- Coverage basis: 1/4 confirmed own live verified implementations (25.0%); conservative 25.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $4,565,346.90
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for xWin Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 7 contract row(s) across arbitrum, bsc, polygon. Structural roles: 3 unclassified, 2 core, 2 infra. 3 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 7
- Structural roles: unclassified (3), core (2), infra (2)
- Contract kinds: contract (7)
- Detected standards: erc1967proxy (2), erc20 (2), ownable (2), accesscontrol (1)
- Frameworks: openzeppelin (3), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 3

## Fork Analysis

0 of 5 contracts are derived from known codebases. 5 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- TransparentUpgradeableProxy (`0xa4ae0dcc89af9855946c0b2ad4a10ff27125a9fc`, chain 56)
- TransparentUpgradeableProxy (`0xd09774e3d5dc02fa969896c53d3cbb5bc8900a60`, chain 56)
- xWinLockedStake (`0xd6f8548cffd8d37b0be85b563e73c082b961b810`, chain 56)
- xWinMasterChef (`0x367712b4be88d71cc82dd9b18640d3718ed979e7`, chain 56)
- XWINToken (`0xd88ca08d8eec1e9e09562213ae83a7853ebb5d28`, chain 56)

## Contract Surface Quality

- Logic-topography rows: 7; live-surface rows included: 7 (7 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 4/4 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/4 (25.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 4 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 130 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 144
- Confirmed-live implementations: 4 of 134 unique; 130 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/99
- Verified + Unaudited implementations: 98
- Verified by bytecode match: 0
- Unverified implementations: 35
- Unique implementations: 134
- Raw deployments: 297
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-06 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| CertiK | Tier 2 | 1 | 1.0% | 2023-06 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| xWinBuddyChef | unknown | project_anchor | own_supporting | 1 | bsc | unit-397355 | 2 deployments: bsc `0x4b87a60fc5a94e5ac886867977e29c9711c2e903`; bsc `0xda728cf7a18e81a5a15329ca8d21268316899092` | ✅ Audited |

### ⚠️ Verified + Unaudited (98)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| FundV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 7 | bsc | n/a | 8 deployments: bsc `0x0a0817454710102f2bcb2215d616cbe3aff495e5`; bsc `0x284b4add0c9669f635ea64418c216821c45d0b48`; bsc `0x3809f24eaece0d829eb052badc567d988bbe1563`; bsc `0x4d4f948c8e9ec3d1ce1b80d598f57f8c75c64e4a`; bsc `0x61d5722290f8755b2f31d260064658d6ad837f37`; bsc `0xaaff5efe1376474a520ffe9129d8aa8d7422aabe`; bsc `0xe949d266e8740470a15dfb1f40a795b5a2b63f02`; bsc `0xfa4d4b4243dda1f5f4d09269f61d57d02470635c` | ⚠️ Unaudited |
| FundV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 5 | arbitrum | n/a | 6 deployments: arbitrum `0x00cc95c352f783438c0a95515b79620d8c3c74a8`; arbitrum `0x03d6fe36281cb82ddb52e7e5aff190abcc9a6988`; arbitrum `0x5b0d58149cbd7f041a8833f8efe4b2ddadac47d2`; arbitrum `0x70223e133a512396fcdbe5752bc3b629ed33a1b5`; arbitrum `0xc9f5559faf40c515932a2a18ae1d676af83a0221`; arbitrum `0xed83fdfaae296674d13672a629a8740724eeeed7` | ⚠️ Unaudited |
| FundV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 5 deployments: bsc `0x31518c844114c72982f2fc7bc3c4249de260ba38`; bsc `0x76d6cc66f2e29b979224aaa6f500902a10edc447`; arbitrum `0x263e488747f48b7839d14ccc263a571712a5b5ae`; arbitrum `0x813b16f668fdff16a36ee6a5e253cdc24ea58415`; arbitrum `0x8ec9c001f8985611106b779494723898ec802b8e` | ⚠️ Unaudited |
| FundV2Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x8d25007f07de6902f468e1fee73391bd8f5c2048`; arbitrum `0x935b12d8953d59a86aee8bf5ed0255a0ddd3deaa` | ⚠️ Unaudited |
| FundV2Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x91d8816beafe8256f75b0f2156c741d76489db25`; bsc `0x9ab3c504de0fda0087d378123bdc318aadbc60a0` | ⚠️ Unaudited |
| FundV2Factory | registry | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x9ebc52d849f961b43289d6da55663f3b9f628a68` | ⚠️ Unaudited |
| FundV2Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x22c0fa31871adbb005a18b12d6339544ba707eeb`; arbitrum `0x6cc1cad8b330731e6ff469eaebf19961ea1dfc03` | ⚠️ Unaudited |
| PancakePair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd4a3dcf47887636b19ed1b54aab722bd620e5fb4` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x44195aa5f3116d99373c080c49732c4bb6748edb`; bsc `0xfbcddb82bb31e57a65bda79fe0ed9862f5b369e7`; arbitrum `0x7e2177468d51a1863d600996abf674a98de2f137` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x02c7276516fe7d7ea97bac6f205cc30be5f0efb6`; bsc `0xed302cc0bb21b5942513639d4cc5bb59b0935b46` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x06cabf4a2ff704827295a1daefc00d0dc6c4e248`; bsc `0x4aaff5e3584e6aa68422d2a491a7c751961ced31` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x0803309830d5949939222f64e479d7c7afbd096b`; bsc `0xaf91db52bee0b35efed1024fef4b8f7d6c8535f9` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 4 | bsc | n/a | 5 deployments: bsc `0x0f0414c6ec3e132301eff1b0d343a71a5595e46a`; bsc `0x30f77aa64f69285efb077c3813d10c6f908d9146`; bsc `0x74f33aae19795536603591ba14386d029d10a2ae`; bsc `0xdcd5d7e1e16eee8d7e5f3630e933b00d942d4884`; bsc `0xeb0228659e3618bb428a507bb621a59aed890010` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x15e58d79de97dae7e1b3b47d2e83843919b8ffb1`; bsc `0xe4cc29694e891733d59d1cc48d967fc6b4bbae86` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x178063ba8e1616579391373111190391d34183d1`; bsc `0x278b829766e8243d42881023933c834c0f0f0871` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | bsc | n/a | 4 deployments: bsc `0x1aa2c649dc580b5df546c8a7690c1f7fb3bbaf94`; bsc `0x5747deb0a6823001352d7fb7a0a507afaa0f1b2c`; bsc `0x5f334892f50f95fa91c7fe92dec72f96af2117be`; bsc `0xef499508b44a3d2b98d960be675148bb6620fe71` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x2088a8aaf5c5bfc6d0b801683fa78fe6c0522678`; bsc `0xc82d141ad3cd7f5c73b8bf15b492ad7cb815dcbe` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x21ad7ab671fa02b3b9906130e268710528e151c8`; bsc `0x64b117132f8ae3a587b37816edddec5cbbd8e569` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | bsc | n/a | 4 deployments: bsc `0x27f30d83554e2ae856ffb50187f565e54a7a8611`; bsc `0x8961f212d5d077a353295ea69a7fadbafefa6008`; bsc `0xa9c087e8b46c508682334979915e18414c208463`; bsc `0xab731d8657cff08be761b55fcb39c99fdaead19d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x3bb0aed80a82f7482d99f76736e25d8057d09cb5`; bsc `0x51631691b7f7b378be923b23a4113d24a49796e2` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 6 deployments: bsc `0x41b74417e869918fd89574014fd0d303526d124e`; bsc `0x52d40ea26d7f9c076eea85ef1aa4dd4669b7c8ab`; bsc `0x77d2ffa19cbd57b4a549640fd69c4467f2134b0b`; bsc `0x88c0262564da1dc8d287dabd5040e0e977271304`; bsc `0x9006ae9351cf64d92c867eb7c6fe3073d5dde617`; bsc `0xb0bc79e36855419038a7da20b86ea45578081d6e` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x42e58ff070e3a88e840ea3c788a961c49e60a1d2`; bsc `0xa09e6e1d1166ed74a99395ce8bd8d390a0678c78` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | bsc | n/a | 3 deployments: bsc `0x4601fa376816d4d6f797f08605110fb4b20e95e3`; bsc `0xc1bc3350b679e37873658d30a688962ddb8a0c15`; bsc `0xe1f3c7f1469f1cbc55bb3ca73185d8b86801267b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | bsc | n/a | 3 deployments: bsc `0x475b0d12123daa402fe80d374ed0817b43b62d52`; bsc `0x61469ea6b0eb34901c8b64a322b246dca81b534c`; bsc `0xef3ca7e5fca386c9c4e6dc240426eabd86262626` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x513a2ecc09205be2cad68104364d1c71938cce5b`; bsc `0x59fade40962bb235474d489caf09d6f4e9ccb69d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x519b6333e06a01a2ec300c658d5e2ebb4c1cba69`; bsc `0xc50a878a8bb25123c6cc223370247d26ff6960e3` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x51c6d9b7724ad8694de67ad3c7e18c5e0448f15b`; bsc `0x63c6032c7cf0c7a1ff45c07cf90802583e0ad1d2` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x593a506e5877ca165bc4013943361d71ca21fac8`; bsc `0xcde95911aab99096dbc638432f51c961fd0470d5` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x6079ceae730ed70923fb14637a697ea74de86acd`; bsc `0xcf590046aa638d9c88ed9f6ecbe2f5637b71c56d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x659f88eabd9608346e65c176edb3538b8a1dd5d4`; bsc `0xd2ff6d54762bfc02b0960045bccbf217b5fd45a8` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x66c88cbfedbeeb621b389ce308ca4e742d3bac62`; bsc `0xcd009b429a4dc576ed5b3ca7795479668d0b9edc` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x82be05c0ad016f9c5d114296d5ae2d434602d285`; bsc `0xc9145ec677a1791c4bb97d1bfc62ca63c1bee46a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | bsc | n/a | 3 deployments: bsc `0x87fbe91cfebb88553702a296538dcde868249b90`; bsc `0x9a54717818e89d6d99af2353fa53a865734cc78f`; bsc `0xb26012db23683b823c6ca317e228e225f3845944` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x8987f3282ae26c5029bd6c8ce6f5ede450e9952f`; bsc `0x9a9b49063a5fda58ed0b41c8b39fd9709d38e3da` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x9031dee43b8697985fbc0c603f891ff7a8661221`; bsc `0x9dc471f0ef7089ab07c0855a83d6fc98db90aaa2` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | bsc | n/a | 4 deployments: bsc `0x9dfba2f32816d540ad2f883bfe98fc93660058c0`; bsc `0xc733d2ffd7fb949b48d2c4838908243123d37447`; bsc `0xd560f9a96ec16fb0d7079ea1563b8d3c82e9864d`; bsc `0xef860598adbef118f16cc6f69c748b3030d27e63` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xa95228111d4092407154acab120f82c79330ef07`; bsc `0xfdf5ebe1b620135681f231366b88905bcc83fd62` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xac01d131c04546c8db2eace57e323046caf3d390`; bsc `0xe1a24f7b9cdf4379841c692a368b65b4178daf17` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xae65220661f27164313131f33d9c775f59345c6a`; bsc `0xb805048ee58a7d8bc46e5c3b1faab7f5492bd505` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xc79d647090ecd8fd4481014b3e951171e2cb3c8e`; bsc `0xf15a03c5f24ce9e580773e645a0560e8e402f186` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xc9471c28dbb275400d6721d74598d40964c94cb8`; bsc `0xdd3e73cffdb6280d410a0b248e3fe7bf6064c5ec` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xdc5be5626ad9995d8e380e61539e16f612f1e99e`; bsc `0xf209df022f888891ea1a64f32973402a1c3cb575` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xf3a926d6b6d34018d2a3434894b52a1acabc0222`; bsc `0xf9390d3687a155a106f21c7dbaf874b19929320a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 6 | arbitrum | n/a | 7 deployments: arbitrum `0x107c86796d5f76c7319e2e3e913220a2f0bbb428`; arbitrum `0x2adac8ca6c089aa34e359a95651192916462cab3`; arbitrum `0x438c6fd1ee1d25536b851a495d4baffa86a95250`; arbitrum `0x827a3e0c671b073f7acb37f7a5625e40fffb3083`; arbitrum `0xa5de4fac8eff39a6bda854d11116ffb6e442ce65`; arbitrum `0xee56939d0a02ea8d30f53fd62e9a37cf76df7c79`; arbitrum `0xffd33048185ac99acf2e2ef8e8cbc75417eff011` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x190d055eb4ad2b50908ee8178492fa4dd35912b2`; arbitrum `0x92fa5d8d2f8cb46a22e2e0a49b738f91121b34e0` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x2070f6b27a8338303bb0abad3d0367d1f0c77026`; arbitrum `0xb65fce638c4549fedb2949baaf176c17504e07cd` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x5aacdb8328901e459d6f7fc8c0465d0bd075de8a`; arbitrum `0xe77dc6ccf4431823ffb10a5be8731ca8cf2bdd2e` | ⚠️ Unaudited |
| UniSwapV2TWAPOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7a8aa080eada0b670fb719d7e53f87898a1299ac` | ⚠️ Unaudited |
| UpgradeableBeacon | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x072f09c9adbe49cc16d9eec37d3d5727d5b08462`; bsc `0x5f1adce43f9b8e35d861d868106a2f31abc654e2`; bsc `0xbf694dd2f1124db06ddfeb60e4cd9c4787aac9b4`; bsc `0xc54a8d86befbef35244b5b2a06fd70a1db97e62c` | ⚠️ Unaudited |
| xWinAllocations | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | bsc | n/a | 3 deployments: bsc `0x24cfbb02c24eeb0bef09031c737964832e6ae62a`; bsc `0x60baf23a9344ca808f55c3b29783b14fb642f4f4`; bsc `0xde6a27d35179f459e992824eed028af1a09558e1` | ⚠️ Unaudited |
| xWinAllocations | unknown | non_address_book | non_address_book_inventory (excluded) | 8 | bsc | n/a | 9 deployments: bsc `0x396d759cb982bc5f7a9b714a97ab66d135ba106c`; bsc `0x3b62af067bd036b8c9f0d1b9193ec41b25496f4b`; bsc `0x57951bc27bff4cce165eaa8038de13c982201a37`; bsc `0x5c85e550bf88c5c38929dc2a0afe7b975124c9f6`; bsc `0x6559fb1e0b518b1e67fb2adc40a0154abf69c57a`; bsc `0x92befe8daa544b73b2889da286c36540b85d06a5`; bsc `0xc9fa9bf57be37ef0b0e0f18910f5ed9be06e398e`; bsc `0xda9814a5f5eaee62e21238ccd9b241a85066785f`; bsc `0xfc560c380a73f108592b28db7c06976e844af0fb` | ⚠️ Unaudited |
| xWinAllocations | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0xd60373aecd0c6241002441b86111c80c0c1b15ab`; bsc `0xe7b6bb294aef17e627c973b8eabc94d8c030f226` | ⚠️ Unaudited |
| xWinAllocations | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | polygon | n/a | 3 deployments: polygon `0x75dab5000af15e7a9dd9c2365ae69e394c252a5a`; polygon `0xb4319e7dfbb84c8160846359eba6d3b9b9440f69`; polygon `0xc1c53b4a16b834599b1f6acfd869765b08d422ac` | ⚠️ Unaudited |
| xWinBBMA | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x5efaabc34a3ba66f1fd02f056ac457aebaf57d55`; bsc `0xbeac3585a91e0bd15e955dcc572ee2f3dd8db739` | ⚠️ Unaudited |
| xWinBBMA | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x91faf1bc82b3d333d2e73bffc7579210f621421c` | ⚠️ Unaudited |
| xWinDCA | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2e0dd8927716e459ff6d3ef4f57dbe44e35895d7` | ⚠️ Unaudited |
| xWinDCA | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x482ae949e4a70953fca090717b68359b73b8602a`; bsc `0xcd591966cab588b80a14f8665a26147904ae7705` | ⚠️ Unaudited |
| xWinDCAArb | unknown | non_address_book | non_address_book_inventory (excluded) | 8 | bsc | n/a | 9 deployments: bsc `0x2680012956191349f2be7d3a2b27e5a2d30ed7eb`; bsc `0x3914a81d1a1f6cab9b8cf26ad2919247ee86f166`; bsc `0x5a20bdaec3f409114eebd654f792802f6691f479`; bsc `0x5b36a673c7a01224b35b010de0281c979c74f1a3`; bsc `0x8d77d4d5667316fa7186cbf95b3f59c84f5ef474`; bsc `0xa0c558c95a400fccf5348e3301715a0ae95782d1`; bsc `0xc224cd00a4d1c23845e9478e2a3417824e964608`; bsc `0xfb1072895e734b5308448d7b2d9c9521420e06d1`; bsc `0xfe641d2bc92a92227de4a5d05ecdc8c55d8f9beb` | ⚠️ Unaudited |
| xWinDCAArb | unknown | non_address_book | non_address_book_inventory (excluded) | 5 | arbitrum | n/a | 6 deployments: arbitrum `0x48334ec0cfeaef6bb6b857a32c5ce3323b1f6ce4`; arbitrum `0x4917b129c45709b0fe8ad0b0580d70b244e99184`; arbitrum `0x5834542ee7b6fe644cd568e3ad48a5b0d58ec8ba`; arbitrum `0x72d24bd13eebd6747bf1724583d826bb9f170534`; arbitrum `0x9ccd1d6c0992c57d064745b8261cc7d5fbad8c80`; arbitrum `0xc9471c28dbb275400d6721d74598d40964c94cb8` | ⚠️ Unaudited |
| xWinDCAArb | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x556aa1a4e4941bdde0c7a2c834600100d35cf1d0` | ⚠️ Unaudited |
| xWinDefi | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1bf7fe7568211ecff68b6bc7ccad31ecd8fe8092` | ⚠️ Unaudited |
| xWinEmitEvent | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x05542f7f07574848c222b50df298037bf7202ed2`; bsc `0xc4c0171a31b6ced6daa4342343425f2eea703cc6` | ⚠️ Unaudited |
| xWinEmitEvent | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x3f2bef656821fac3a969d6a1f831e5f3ce25c062` | ⚠️ Unaudited |
| xWinEmitEvent | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x87b34058a5d38bf6cabd0a1ac497183a1f7b8e5a`; arbitrum `0xdb0b5ef474db9b8216a8b2fdac0e7edc4668533d` | ⚠️ Unaudited |
| xWinERC20Alpha | token | non_address_book | non_address_book_inventory (excluded) | 2 | bsc | n/a | 3 deployments: bsc `0x0a652784df3f8abde85daeeee77d1ea97f5c5b24`; bsc `0x39623135eaeb7a007f19fe8a7672de0168b2882b`; bsc `0xb97f617e22c3f02916ae94f40e2ab9817c55ecb5` | ⚠️ Unaudited |
| xWinERC20Alpha | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x3c7a18b2f36002da46ce10e7dc3c5a4beb634240`; arbitrum `0x5daa157604918fd37c031636f3f7a9668d709578` | ⚠️ Unaudited |
| xWinERC20Alpha | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | arbitrum | n/a | 3 deployments: arbitrum `0x07f42f4972cf2b8d59ab9543741f21f772bfb537`; arbitrum `0x4c4cbc2aa5c477747b32530d2edd83254f61fa71`; arbitrum `0xa3960cb557872d5f68ef06dc63a14b7e6b64d552` | ⚠️ Unaudited |
| xWinFarm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x4fdca7b4c19c70ad1f275934160400f9ded0bc18`; bsc `0x8f52e0c41164169818c1fb04b263fdc7c1e56088`; bsc `0x9236a0e741e688f89dd697404611c81eb8269b22` | ⚠️ Unaudited |
| xWinFeeCollectionWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x1cf446839b95a21211f79871f8cd344b056be53b`; bsc `0x212569983a44df05e4784ad5256443d90076d35c` | ⚠️ Unaudited |
| xWinFeeCollectionWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x83202e0505c192e49a9383c39feac509ba2717c9`; arbitrum `0xc6c06ef7377bb1e13fa8ae05f63e82bb710ad65e` | ⚠️ Unaudited |
| xWinFixedRateStableCoin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x076cb2200f7904ed51348145623720a315054c40` | ⚠️ Unaudited |
| xWinFund | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x548c42fe3d1a44496491d09db2457d671f3c7488`; bsc `0x96303976fc1df9aaa2707861c7e44b365e4b9dc5`; bsc `0xfccdbbc9f8c8ded6faeb8bf876f2420d15c1feba` | ⚠️ Unaudited |
| xWinIRT | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x5a8a66df53df88844c60829967b88d00ed208e08`; bsc `0xf995f6386e7dc6f997f9f1daa5849716fa403395` | ⚠️ Unaudited |
| xWinIRT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa7ccd3ad01af923e4e9494a324fde73f4c3bfd25` | ⚠️ Unaudited |
| xWinLiquidStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x051dcb25cd999f88d0bc43eedeee27c605361fe1`; bsc `0x9fd5bfa4ab63ca608cc99ece69723f0242fc1099` | ⚠️ Unaudited |
| xWinLockedStake | unknown | project_anchor | own_supporting | 1 | bsc | unit-397354 | 2 deployments: bsc `0xa4ae0dcc89af9855946c0b2ad4a10ff27125a9fc`; bsc `0xd6f8548cffd8d37b0be85b563e73c082b961b810` | ⚠️ Unaudited |
| xWinMasterChef | unknown | project_anchor | own_supporting | 1 | bsc | unit-397353 | 2 deployments: bsc `0x367712b4be88d71cc82dd9b18640d3718ed979e7`; bsc `0xd09774e3d5dc02fa969896c53d3cbb5bc8900a60` | ⚠️ Unaudited |
| xWinPriceMaster | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xb1233713fea0984fff84c7456d2cced43e5e48e2`; bsc `0xd712df1d0d82f9e244418b467a4d923a0d90c77a` | ⚠️ Unaudited |
| xWinPriceMaster | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x4259ed91681159e455629a35d81c0b0020e3feed` | ⚠️ Unaudited |
| xWinPriceMaster | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: bsc `0x7fc355b6b3b6c53d0dcfe7b199345dd5991d1110`; arbitrum `0x3986e36b1451c1fef62a312941c95d47d192bff7` | ⚠️ Unaudited |
| xWinPriceMaster | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x631b0f08fa93fbbcf78dfd8224efd5ab5aaabd52`; arbitrum `0x8a3c24716447992c85a86231606759931f83c667` | ⚠️ Unaudited |
| xWinSingleAsset | unknown | non_address_book | non_address_book_inventory (excluded) | 7 | bsc | n/a | 8 deployments: bsc `0x0c34aa4e36983ab6ec11bc557a3b8cf79a7a9ae7`; bsc `0x1d2430bbfe86432e36a7c7286e99f78546f23de9`; bsc `0x605926f795fd9b4c3a8b1a2db33cbe01c66ba83f`; bsc `0x7348bea317beb7273bfd69fd60abb5780e4da53e`; bsc `0x7a0dec70473602cd0ef3dc3d909b6dc3fa42116c`; bsc `0x8b7fcacb99124f009c8470fda6f5fcf60277bdb2`; bsc `0x911ba5335233de5d2f44a82e73a231104e314a5e`; bsc `0xcbca44d60c5a2b3c56acfb51afc66ea04b8a2742` | ⚠️ Unaudited |
| xWinSingleAsset | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x1aa6d605b6fea44d3aaf98a5a0a3c6ee9743fb8d`; bsc `0x5a65a6d940e040eba6d88e5f76cf117a0709efaa` | ⚠️ Unaudited |
| xWinSingleAsset | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | bsc | n/a | 3 deployments: bsc `0x9e0039feb55f00d4183b150f48d205242e6a8803`; bsc `0xf4979c043df6f7d5da929deab11b220a82886395`; bsc `0xf538ab600cc1a7d6af2027b417bf84977a4de84a` | ⚠️ Unaudited |
| xWinSingleAssetAave | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x1db49d9871a61101275ea72d9b9498948434af2c` | ⚠️ Unaudited |
| xWinSingleAssetAave | unknown | non_address_book | non_address_book_inventory (excluded) | 6 | arbitrum | n/a | 6 deployments: arbitrum `0x093d0496303de127806aefd8050ebb3ea44125d5`; arbitrum `0x1602d4ecf7f2ca9f7159e27d6149c90f39b4d763`; arbitrum `0x69fa363dbb41f64e491bb6f3dedec8f6cc93b0f0`; arbitrum `0x6ae47584953ee351db0c089ece8e69429daebda6`; arbitrum `0x8a0fa3b0010c76099e935e2c8909d5441390ff62`; arbitrum `0xc41f7e081d99010be7ad4f085d6cf10c772f688e` | ⚠️ Unaudited |
| xWinSingleAssetOla | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x431de8a6e3c1cdc850a69cb576226cd58a848291`; bsc `0x9446be446ab789c4224aa50ca0adbb724b60c7f2` | ⚠️ Unaudited |
| xWinSingleAssetOla | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | bsc | n/a | 3 deployments: bsc `0x6641609d8e2574d2d4f66739677d070052dc43b1`; bsc `0x69764856e82180150f5366be610e40c2f812d7d6`; bsc `0xcebd365e4bfd8589fd6bde21898db35a8095f956` | ⚠️ Unaudited |
| xWinSplitFeeWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 5 | bsc | n/a | 6 deployments: bsc `0x16c4866ea0d5f690f2149faea9e661fafcbfa29e`; bsc `0x50c0e179b8b99ee93ec5145c65d4b3a4b88211d1`; bsc `0x7ae2299163f21581cadd9156d4121cecf1791329`; bsc `0x91501708e806a33e9a4a769db75502318ecac3dc`; bsc `0xba37d829e1f64633b013837cb135c098267cdf7f`; bsc `0xd66b0f31e921f220e36f2a8ed382e853220097c2` | ⚠️ Unaudited |
| xWinSplitFeeWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x72111518fc8973b9e334fcbb81d85cd8a92241de`; bsc `0x949b90fa0c192bf909d0148b4c246b23279d1c24` | ⚠️ Unaudited |
| xWinSwapV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x5493881d5fc68be3519cb25f2a4717d192800707` | ⚠️ Unaudited |
| xWinSwapV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: bsc `0x5125b2666a0c3ad3991a1444451c918008720499`; arbitrum `0x24745cd498a41904677725afe224a74c4a1fed3f`; arbitrum `0x2d119a6d43f897907ac5810105d887939958f6b1`; arbitrum `0x3d40f1a7e18653152fac61b3e93f8032bfcbcca5` | ⚠️ Unaudited |
| xWinSwapV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x667b40645f9b2ea7b369548585a240d8f52978a1`; arbitrum `0x800b4980bcd3218761f43ac2098fc82a9670406a` | ⚠️ Unaudited |
| xWinSwapV3Pancake | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5dd2606592f387ef4c4736a8a3caa548a6dc9fb9` | ⚠️ Unaudited |
| xWinSwapV3Pancake | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x9ce3fcffaeb4b7fbdf39e9313f845d977393d8d1`; bsc `0xcd839b9a77ed09fab43e4a09bc71502144cbf578` | ⚠️ Unaudited |
| xWinSystemExecutor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x1ed78999ae4f0d3411df8cac348e83016e86b73f`; bsc `0x96160da74d56e311ab7b5f0a9ee93703d61c948c` | ⚠️ Unaudited |
| xWinSystemExecutor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0xa26e810850ce282217b3c251b99299725bbdad8c`; arbitrum `0xba083e47d729be0978cd3dcfca8c2ee688b46d3d` | ⚠️ Unaudited |
| XWINToken | token | project_anchor | own_supporting | 0 | bsc | unit-397352 | `0xd88ca08d8eec1e9e09562213ae83a7853ebb5d28` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (35)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x018bacba81b5281f0c39f4ee78feccde243d38ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1a0088095e71bc65e7dbc19e183bf5a322600948` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x24478c3fef22fe810c3c2c2d48dc885081860489` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x24745cd498a41904677725afe224a74c4a1fed3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2b4b7301de95ac9934fb2797d41f973e3fd3366a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2d119a6d43f897907ac5810105d887939958f6b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x321c78984db2b330d9c51d04fe507e08d4c8c511` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x32ad48354528304b9b8c9f90fc328b0189d036f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x35ff1d9ce0aa7fd884f76a6a55debf0774093ea5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x36ccaee12432ef99aee7e0bcfe68b315895726b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x373a8affcf912cd0540ab1d043beb5a2dec68bca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4259ed91681159e455629a35d81c0b0020e3feed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x436769543f0a6835c0bf43ac26e81c11147094c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x44e5c1ad2d6c6da1813f4957ee772dbcadd129d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x476ae5342e1232b6bce507e1ec5c8b2c658e0e78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x532096b4fcb16f8ccc35934c93fb54e1c5dd3023` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x584f5855aae3819a4053b098c09dfcb4af0c84a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5d969a41af726943910733f0384a680de20cb568` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x637ccebf5b221fee9a1ac827d144a2f82811e585` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6384f45b55e8ac20173f79ecb2fbe6d57f292888` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7f4ac499699c83e33f92716b1ed5eb698e9886da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x935b12d8953d59a86aee8bf5ed0255a0ddd3deaa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9d7371be81a373fffb2894950e8a8f7a88247f42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa26e810850ce282217b3c251b99299725bbdad8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xab1ec2753707668d28b480f247b718272f1c067a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc9ea91f6734ff2d9cfc1ff46d8381afd756b5350` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcc624a0b42a506dd84e432c1d1df0bccefd5ef20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcf8244c9c5f5c62d1556cd989ad012b6039b88af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd43b0acfd12a959df4c843d902ef5942f222710b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe2d8b215e22843d09c278100f3a1c79a5ccca8c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe7d83113d8f15a8a22e35a577ce52f66b4385d35` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe8786df547fb9758ff8c6e7950a3e6b077fdb95c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf4ed0bee8782eb18d2c233aaa7414c606c0fc43e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf5c65b076ad1ff5391f2111465a0ab208489f405` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf6a9259e2f561e970f8d8fdc565ba6aaf015a119` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 254
- Live contracts: 4
- Unknown liveness contracts: 250
- Source-verified contracts: 182
- Currently scope-matched contracts retained as-is: 1
- Classification counts: currently scope matched=1, candidate review=132, source verified unclassified=49, unverified unclassified=72

Showing first 200 of 254 contracts. The complete deployer expansion list is in `brief.json`.

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| currently scope matched | TransparentUpgradeableProxy<br>`0x4b87a60fc5a94e5ac886867977e29c9711c2e903` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| candidate review | FundV2<br>`0x31518c844114c72982f2fc7bc3c4249de260ba38` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| candidate review | FundV2<br>`0x3809f24eaece0d829eb052badc567d988bbe1563` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| candidate review | FundV2<br>`0x76d6cc66f2e29b979224aaa6f500902a10edc447` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| candidate review | ProxyAdmin<br>`0x44195aa5f3116d99373c080c49732c4bb6748edb` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| candidate review | ProxyAdmin<br>`0xfbcddb82bb31e57a65bda79fe0ed9862f5b369e7` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| candidate review | TransparentUpgradeableProxy<br>`0x051dcb25cd999f88d0bc43eedeee27c605361fe1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| candidate review | TransparentUpgradeableProxy<br>`0x0c34aa4e36983ab6ec11bc557a3b8cf79a7a9ae7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| candidate review | TransparentUpgradeableProxy<br>`0x0f0414c6ec3e132301eff1b0d343a71a5595e46a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| candidate review | TransparentUpgradeableProxy<br>`0x16c4866ea0d5f690f2149faea9e661fafcbfa29e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| candidate review | TransparentUpgradeableProxy<br>`0x1aa2c649dc580b5df546c8a7690c1f7fb3bbaf94` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| candidate review | TransparentUpgradeableProxy<br>`0x1d2430bbfe86432e36a7c7286e99f78546f23de9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| candidate review | TransparentUpgradeableProxy<br>`0x1ed78999ae4f0d3411df8cac348e83016e86b73f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| candidate review | TransparentUpgradeableProxy<br>`0x2088a8aaf5c5bfc6d0b801683fa78fe6c0522678` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| candidate review | TransparentUpgradeableProxy<br>`0x212569983a44df05e4784ad5256443d90076d35c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| candidate review | TransparentUpgradeableProxy<br>`0x21ad7ab671fa02b3b9906130e268710528e151c8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| candidate review | TransparentUpgradeableProxy<br>`0x24cfbb02c24eeb0bef09031c737964832e6ae62a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| candidate review | TransparentUpgradeableProxy<br>`0x2680012956191349f2be7d3a2b27e5a2d30ed7eb` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| candidate review | TransparentUpgradeableProxy<br>`0x278b829766e8243d42881023933c834c0f0f0871` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| candidate review | TransparentUpgradeableProxy<br>`0x27f30d83554e2ae856ffb50187f565e54a7a8611` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| candidate review | TransparentUpgradeableProxy<br>`0x30f77aa64f69285efb077c3813d10c6f908d9146` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| candidate review | TransparentUpgradeableProxy<br>`0x3914a81d1a1f6cab9b8cf26ad2919247ee86f166` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| candidate review | TransparentUpgradeableProxy<br>`0x39623135eaeb7a007f19fe8a7672de0168b2882b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| candidate review | TransparentUpgradeableProxy<br>`0x396d759cb982bc5f7a9b714a97ab66d135ba106c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| candidate review | TransparentUpgradeableProxy<br>`0x3b62af067bd036b8c9f0d1b9193ec41b25496f4b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| candidate review | TransparentUpgradeableProxy<br>`0x41b74417e869918fd89574014fd0d303526d124e` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| candidate review | TransparentUpgradeableProxy<br>`0x431de8a6e3c1cdc850a69cb576226cd58a848291` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| candidate review | TransparentUpgradeableProxy<br>`0x4601fa376816d4d6f797f08605110fb4b20e95e3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| candidate review | TransparentUpgradeableProxy<br>`0x4aaff5e3584e6aa68422d2a491a7c751961ced31` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| candidate review | TransparentUpgradeableProxy<br>`0x50c0e179b8b99ee93ec5145c65d4b3a4b88211d1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| candidate review | TransparentUpgradeableProxy<br>`0x513a2ecc09205be2cad68104364d1c71938cce5b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| candidate review | TransparentUpgradeableProxy<br>`0x51631691b7f7b378be923b23a4113d24a49796e2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| candidate review | TransparentUpgradeableProxy<br>`0x52d40ea26d7f9c076eea85ef1aa4dd4669b7c8ab` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| candidate review | TransparentUpgradeableProxy<br>`0x57951bc27bff4cce165eaa8038de13c982201a37` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| candidate review | TransparentUpgradeableProxy<br>`0x593a506e5877ca165bc4013943361d71ca21fac8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| candidate review | TransparentUpgradeableProxy<br>`0x5a20bdaec3f409114eebd654f792802f6691f479` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| candidate review | TransparentUpgradeableProxy<br>`0x5a8a66df53df88844c60829967b88d00ed208e08` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| candidate review | TransparentUpgradeableProxy<br>`0x5b36a673c7a01224b35b010de0281c979c74f1a3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| candidate review | TransparentUpgradeableProxy<br>`0x5c85e550bf88c5c38929dc2a0afe7b975124c9f6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| candidate review | TransparentUpgradeableProxy<br>`0x5efaabc34a3ba66f1fd02f056ac457aebaf57d55` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| candidate review | TransparentUpgradeableProxy<br>`0x5f334892f50f95fa91c7fe92dec72f96af2117be` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| candidate review | TransparentUpgradeableProxy<br>`0x605926f795fd9b4c3a8b1a2db33cbe01c66ba83f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| candidate review | TransparentUpgradeableProxy<br>`0x6079ceae730ed70923fb14637a697ea74de86acd` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| candidate review | TransparentUpgradeableProxy<br>`0x60baf23a9344ca808f55c3b29783b14fb642f4f4` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| candidate review | TransparentUpgradeableProxy<br>`0x61469ea6b0eb34901c8b64a322b246dca81b534c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| candidate review | TransparentUpgradeableProxy<br>`0x63c6032c7cf0c7a1ff45c07cf90802583e0ad1d2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| candidate review | TransparentUpgradeableProxy<br>`0x6559fb1e0b518b1e67fb2adc40a0154abf69c57a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| candidate review | TransparentUpgradeableProxy<br>`0x66c88cbfedbeeb621b389ce308ca4e742d3bac62` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| candidate review | TransparentUpgradeableProxy<br>`0x69764856e82180150f5366be610e40c2f812d7d6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| candidate review | TransparentUpgradeableProxy<br>`0x7348bea317beb7273bfd69fd60abb5780e4da53e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| candidate review | TransparentUpgradeableProxy<br>`0x74f33aae19795536603591ba14386d029d10a2ae` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| candidate review | TransparentUpgradeableProxy<br>`0x77d2ffa19cbd57b4a549640fd69c4467f2134b0b` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| candidate review | TransparentUpgradeableProxy<br>`0x7a0dec70473602cd0ef3dc3d909b6dc3fa42116c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| candidate review | TransparentUpgradeableProxy<br>`0x7ae2299163f21581cadd9156d4121cecf1791329` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| candidate review | TransparentUpgradeableProxy<br>`0x82be05c0ad016f9c5d114296d5ae2d434602d285` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| candidate review | TransparentUpgradeableProxy<br>`0x88c0262564da1dc8d287dabd5040e0e977271304` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| candidate review | TransparentUpgradeableProxy<br>`0x8987f3282ae26c5029bd6c8ce6f5ede450e9952f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| candidate review | TransparentUpgradeableProxy<br>`0x8d77d4d5667316fa7186cbf95b3f59c84f5ef474` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| candidate review | TransparentUpgradeableProxy<br>`0x9006ae9351cf64d92c867eb7c6fe3073d5dde617` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| candidate review | TransparentUpgradeableProxy<br>`0x9031dee43b8697985fbc0c603f891ff7a8661221` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| candidate review | TransparentUpgradeableProxy<br>`0x91501708e806a33e9a4a769db75502318ecac3dc` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| candidate review | TransparentUpgradeableProxy<br>`0x949b90fa0c192bf909d0148b4c246b23279d1c24` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| candidate review | TransparentUpgradeableProxy<br>`0x9a54717818e89d6d99af2353fa53a865734cc78f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| candidate review | TransparentUpgradeableProxy<br>`0x9e0039feb55f00d4183b150f48d205242e6a8803` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| candidate review | TransparentUpgradeableProxy<br>`0xa09e6e1d1166ed74a99395ce8bd8d390a0678c78` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| candidate review | TransparentUpgradeableProxy<br>`0xa0c558c95a400fccf5348e3301715a0ae95782d1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| candidate review | TransparentUpgradeableProxy<br>`0xa95228111d4092407154acab120f82c79330ef07` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| candidate review | TransparentUpgradeableProxy<br>`0xa9c087e8b46c508682334979915e18414c208463` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| candidate review | TransparentUpgradeableProxy<br>`0xab731d8657cff08be761b55fcb39c99fdaead19d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| candidate review | TransparentUpgradeableProxy<br>`0xac01d131c04546c8db2eace57e323046caf3d390` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| candidate review | TransparentUpgradeableProxy<br>`0xaf91db52bee0b35efed1024fef4b8f7d6c8535f9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| candidate review | TransparentUpgradeableProxy<br>`0xb0bc79e36855419038a7da20b86ea45578081d6e` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| candidate review | TransparentUpgradeableProxy<br>`0xb26012db23683b823c6ca317e228e225f3845944` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| candidate review | TransparentUpgradeableProxy<br>`0xb805048ee58a7d8bc46e5c3b1faab7f5492bd505` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| candidate review | TransparentUpgradeableProxy<br>`0xba37d829e1f64633b013837cb135c098267cdf7f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| candidate review | TransparentUpgradeableProxy<br>`0xc50a878a8bb25123c6cc223370247d26ff6960e3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| candidate review | TransparentUpgradeableProxy<br>`0xc733d2ffd7fb949b48d2c4838908243123d37447` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| candidate review | TransparentUpgradeableProxy<br>`0xc9471c28dbb275400d6721d74598d40964c94cb8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| candidate review | TransparentUpgradeableProxy<br>`0xc9fa9bf57be37ef0b0e0f18910f5ed9be06e398e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| candidate review | TransparentUpgradeableProxy<br>`0xcbca44d60c5a2b3c56acfb51afc66ea04b8a2742` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| candidate review | TransparentUpgradeableProxy<br>`0xcebd365e4bfd8589fd6bde21898db35a8095f956` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| candidate review | TransparentUpgradeableProxy<br>`0xd2ff6d54762bfc02b0960045bccbf217b5fd45a8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| candidate review | TransparentUpgradeableProxy<br>`0xd560f9a96ec16fb0d7079ea1563b8d3c82e9864d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| candidate review | TransparentUpgradeableProxy<br>`0xda9814a5f5eaee62e21238ccd9b241a85066785f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| candidate review | TransparentUpgradeableProxy<br>`0xdcd5d7e1e16eee8d7e5f3630e933b00d942d4884` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| candidate review | TransparentUpgradeableProxy<br>`0xe1f3c7f1469f1cbc55bb3ca73185d8b86801267b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| candidate review | TransparentUpgradeableProxy<br>`0xe4cc29694e891733d59d1cc48d967fc6b4bbae86` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| candidate review | TransparentUpgradeableProxy<br>`0xed302cc0bb21b5942513639d4cc5bb59b0935b46` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| candidate review | TransparentUpgradeableProxy<br>`0xef3ca7e5fca386c9c4e6dc240426eabd86262626` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| candidate review | TransparentUpgradeableProxy<br>`0xef499508b44a3d2b98d960be675148bb6620fe71` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| candidate review | TransparentUpgradeableProxy<br>`0xef860598adbef118f16cc6f69c748b3030d27e63` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| candidate review | TransparentUpgradeableProxy<br>`0xf15a03c5f24ce9e580773e645a0560e8e402f186` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| candidate review | TransparentUpgradeableProxy<br>`0xf209df022f888891ea1a64f32973402a1c3cb575` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| candidate review | TransparentUpgradeableProxy<br>`0xf3a926d6b6d34018d2a3434894b52a1acabc0222` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| candidate review | TransparentUpgradeableProxy<br>`0xf4979c043df6f7d5da929deab11b220a82886395` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| candidate review | TransparentUpgradeableProxy<br>`0xfb1072895e734b5308448d7b2d9c9521420e06d1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| candidate review | TransparentUpgradeableProxy<br>`0xfc560c380a73f108592b28db7c06976e844af0fb` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| candidate review | TransparentUpgradeableProxy<br>`0xfe641d2bc92a92227de4a5d05ecdc8c55d8f9beb` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| candidate review | UpgradeableBeacon<br>`0x072f09c9adbe49cc16d9eec37d3d5727d5b08462` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| candidate review | UpgradeableBeacon<br>`0x5f1adce43f9b8e35d861d868106a2f31abc654e2` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| candidate review | UpgradeableBeacon<br>`0xbf694dd2f1124db06ddfeb60e4cd9c4787aac9b4` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| candidate review | UpgradeableBeacon<br>`0xc54a8d86befbef35244b5b2a06fd70a1db97e62c` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| candidate review | xWinBBMA<br>`0x91faf1bc82b3d333d2e73bffc7579210f621421c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| candidate review | xWinBBMA<br>`0xbeac3585a91e0bd15e955dcc572ee2f3dd8db739` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| candidate review | xWinBuddyChef<br>`0xda728cf7a18e81a5a15329ca8d21268316899092` | retained_scope_excluded_inventory | unknown | live | verified | review: no_fresh_structural_match | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| candidate review | FundV2<br>`0x00cc95c352f783438c0a95515b79620d8c3c74a8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| candidate review | FundV2<br>`0x263e488747f48b7839d14ccc263a571712a5b5ae` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| candidate review | FundV2<br>`0x813b16f668fdff16a36ee6a5e253cdc24ea58415` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| candidate review | FundV2<br>`0x8ec9c001f8985611106b779494723898ec802b8e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| candidate review | ProxyAdmin<br>`0x7e2177468d51a1863d600996abf674a98de2f137` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| candidate review | TransparentUpgradeableProxy<br>`0x093d0496303de127806aefd8050ebb3ea44125d5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| candidate review | TransparentUpgradeableProxy<br>`0x107c86796d5f76c7319e2e3e913220a2f0bbb428` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| candidate review | TransparentUpgradeableProxy<br>`0x1602d4ecf7f2ca9f7159e27d6149c90f39b4d763` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| candidate review | TransparentUpgradeableProxy<br>`0x190d055eb4ad2b50908ee8178492fa4dd35912b2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| candidate review | TransparentUpgradeableProxy<br>`0x2adac8ca6c089aa34e359a95651192916462cab3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| candidate review | TransparentUpgradeableProxy<br>`0x438c6fd1ee1d25536b851a495d4baffa86a95250` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| candidate review | TransparentUpgradeableProxy<br>`0x48334ec0cfeaef6bb6b857a32c5ce3323b1f6ce4` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| candidate review | TransparentUpgradeableProxy<br>`0x4917b129c45709b0fe8ad0b0580d70b244e99184` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| candidate review | TransparentUpgradeableProxy<br>`0x4c4cbc2aa5c477747b32530d2edd83254f61fa71` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| candidate review | TransparentUpgradeableProxy<br>`0x5834542ee7b6fe644cd568e3ad48a5b0d58ec8ba` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| candidate review | TransparentUpgradeableProxy<br>`0x69fa363dbb41f64e491bb6f3dedec8f6cc93b0f0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| candidate review | TransparentUpgradeableProxy<br>`0x9ccd1d6c0992c57d064745b8261cc7d5fbad8c80` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| candidate review | TransparentUpgradeableProxy<br>`0xa3960cb557872d5f68ef06dc63a14b7e6b64d552` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| candidate review | TransparentUpgradeableProxy<br>`0xa5de4fac8eff39a6bda854d11116ffb6e442ce65` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| candidate review | TransparentUpgradeableProxy<br>`0xb65fce638c4549fedb2949baaf176c17504e07cd` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| candidate review | TransparentUpgradeableProxy<br>`0xba083e47d729be0978cd3dcfca8c2ee688b46d3d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| candidate review | TransparentUpgradeableProxy<br>`0xc41f7e081d99010be7ad4f085d6cf10c772f688e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| candidate review | TransparentUpgradeableProxy<br>`0xc6c06ef7377bb1e13fa8ae05f63e82bb710ad65e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| candidate review | TransparentUpgradeableProxy<br>`0xc9471c28dbb275400d6721d74598d40964c94cb8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| candidate review | TransparentUpgradeableProxy<br>`0xe77dc6ccf4431823ffb10a5be8731ca8cf2bdd2e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| candidate review | TransparentUpgradeableProxy<br>`0xee56939d0a02ea8d30f53fd62e9a37cf76df7c79` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| candidate review | TransparentUpgradeableProxy<br>`0xffd33048185ac99acf2e2ef8e8cbc75417eff011` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| candidate review | UpgradeableBeacon<br>`0x70223e133a512396fcdbe5752bc3b629ed33a1b5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| source verified unclassified | FundV2Factory<br>`0x8d25007f07de6902f468e1fee73391bd8f5c2048` | non_address_book | unknown | unknown | verified | n/a | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| source verified unclassified | FundV2Factory<br>`0x91d8816beafe8256f75b0f2156c741d76489db25` | non_address_book | unknown | unknown | verified | n/a | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| source verified unclassified | xWinAllocations<br>`0x92befe8daa544b73b2889da286c36540b85d06a5` | non_address_book | unknown | unknown | verified | n/a | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| source verified unclassified | xWinAllocations<br>`0xd60373aecd0c6241002441b86111c80c0c1b15ab` | non_address_book | unknown | unknown | verified | n/a | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| source verified unclassified | xWinAllocations<br>`0xde6a27d35179f459e992824eed028af1a09558e1` | non_address_book | unknown | unknown | verified | n/a | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| source verified unclassified | xWinAllocations<br>`0xe7b6bb294aef17e627c973b8eabc94d8c030f226` | non_address_book | unknown | unknown | verified | n/a | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| source verified unclassified | xWinDCA<br>`0x2e0dd8927716e459ff6d3ef4f57dbe44e35895d7` | non_address_book | unknown | unknown | verified | n/a | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| source verified unclassified | xWinDCA<br>`0xcd591966cab588b80a14f8665a26147904ae7705` | non_address_book | unknown | unknown | verified | n/a | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| source verified unclassified | xWinDCAArb<br>`0xc224cd00a4d1c23845e9478e2a3417824e964608` | non_address_book | unknown | unknown | verified | n/a | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| source verified unclassified | xWinEmitEvent<br>`0x05542f7f07574848c222b50df298037bf7202ed2` | non_address_book | unknown | unknown | verified | n/a | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| source verified unclassified | xWinERC20Alpha<br>`0x3c7a18b2f36002da46ce10e7dc3c5a4beb634240` | non_address_book | unknown | unknown | verified | n/a | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| source verified unclassified | xWinERC20Alpha<br>`0xb97f617e22c3f02916ae94f40e2ab9817c55ecb5` | non_address_book | unknown | unknown | verified | n/a | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| source verified unclassified | xWinFeeCollectionWallet<br>`0x1cf446839b95a21211f79871f8cd344b056be53b` | non_address_book | unknown | unknown | verified | n/a | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| source verified unclassified | xWinFixedRateStableCoin<br>`0x076cb2200f7904ed51348145623720a315054c40` | non_address_book | unknown | unknown | verified | n/a | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| source verified unclassified | xWinFund<br>`0xfccdbbc9f8c8ded6faeb8bf876f2420d15c1feba` | non_address_book | unknown | unknown | verified | n/a | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| source verified unclassified | xWinIRT<br>`0xa7ccd3ad01af923e4e9494a324fde73f4c3bfd25` | non_address_book | unknown | unknown | verified | n/a | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| source verified unclassified | xWinIRT<br>`0xf995f6386e7dc6f997f9f1daa5849716fa403395` | non_address_book | unknown | unknown | verified | n/a | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| source verified unclassified | xWinLiquidStaking<br>`0x9fd5bfa4ab63ca608cc99ece69723f0242fc1099` | non_address_book | unknown | unknown | verified | n/a | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| source verified unclassified | xWinLockedStake<br>`0xd6f8548cffd8d37b0be85b563e73c082b961b810` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| source verified unclassified | xWinMasterChef<br>`0x367712b4be88d71cc82dd9b18640d3718ed979e7` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| source verified unclassified | xWinPriceMaster<br>`0x7fc355b6b3b6c53d0dcfe7b199345dd5991d1110` | non_address_book | unknown | unknown | verified | n/a | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| source verified unclassified | xWinPriceMaster<br>`0xd712df1d0d82f9e244418b467a4d923a0d90c77a` | non_address_book | unknown | unknown | verified | n/a | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| source verified unclassified | xWinSingleAsset<br>`0x1aa6d605b6fea44d3aaf98a5a0a3c6ee9743fb8d` | non_address_book | unknown | unknown | verified | n/a | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| source verified unclassified | xWinSingleAsset<br>`0x5a65a6d940e040eba6d88e5f76cf117a0709efaa` | non_address_book | unknown | unknown | verified | n/a | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| source verified unclassified | xWinSingleAsset<br>`0x911ba5335233de5d2f44a82e73a231104e314a5e` | non_address_book | unknown | unknown | verified | n/a | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| source verified unclassified | xWinSingleAsset<br>`0xf538ab600cc1a7d6af2027b417bf84977a4de84a` | non_address_book | unknown | unknown | verified | n/a | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| source verified unclassified | xWinSingleAssetOla<br>`0x6641609d8e2574d2d4f66739677d070052dc43b1` | non_address_book | unknown | unknown | verified | n/a | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| source verified unclassified | xWinSingleAssetOla<br>`0x9446be446ab789c4224aa50ca0adbb724b60c7f2` | non_address_book | unknown | unknown | verified | n/a | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| source verified unclassified | xWinSplitFeeWallet<br>`0x72111518fc8973b9e334fcbb81d85cd8a92241de` | non_address_book | unknown | unknown | verified | n/a | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| source verified unclassified | xWinSplitFeeWallet<br>`0xd66b0f31e921f220e36f2a8ed382e853220097c2` | non_address_book | unknown | unknown | verified | n/a | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| source verified unclassified | xWinSwapV3<br>`0x5125b2666a0c3ad3991a1444451c918008720499` | non_address_book | unknown | unknown | verified | n/a | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| source verified unclassified | xWinSwapV3Pancake<br>`0x5dd2606592f387ef4c4736a8a3caa548a6dc9fb9` | non_address_book | unknown | unknown | verified | n/a | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| source verified unclassified | xWinSwapV3Pancake<br>`0xcd839b9a77ed09fab43e4a09bc71502144cbf578` | non_address_book | unknown | unknown | verified | n/a | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| source verified unclassified | xWinSystemExecutor<br>`0x96160da74d56e311ab7b5f0a9ee93703d61c948c` | non_address_book | unknown | unknown | verified | n/a | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| source verified unclassified | FundV2Factory<br>`0x22c0fa31871adbb005a18b12d6339544ba707eeb` | non_address_book | unknown | unknown | verified | n/a | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| source verified unclassified | FundV2Factory<br>`0x935b12d8953d59a86aee8bf5ed0255a0ddd3deaa` | non_address_book | unknown | unknown | verified | n/a | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| source verified unclassified | xWinDCAArb<br>`0x556aa1a4e4941bdde0c7a2c834600100d35cf1d0` | non_address_book | unknown | unknown | verified | n/a | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| source verified unclassified | xWinDCAArb<br>`0x72d24bd13eebd6747bf1724583d826bb9f170534` | non_address_book | unknown | unknown | verified | n/a | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| source verified unclassified | xWinEmitEvent<br>`0xdb0b5ef474db9b8216a8b2fdac0e7edc4668533d` | non_address_book | unknown | unknown | verified | n/a | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| source verified unclassified | xWinERC20Alpha<br>`0x07f42f4972cf2b8d59ab9543741f21f772bfb537` | non_address_book | unknown | unknown | verified | n/a | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| source verified unclassified | xWinERC20Alpha<br>`0x5daa157604918fd37c031636f3f7a9668d709578` | non_address_book | unknown | unknown | verified | n/a | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| source verified unclassified | xWinFeeCollectionWallet<br>`0x83202e0505c192e49a9383c39feac509ba2717c9` | non_address_book | unknown | unknown | verified | n/a | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| source verified unclassified | xWinPriceMaster<br>`0x3986e36b1451c1fef62a312941c95d47d192bff7` | non_address_book | unknown | unknown | verified | n/a | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| source verified unclassified | xWinPriceMaster<br>`0x631b0f08fa93fbbcf78dfd8224efd5ab5aaabd52` | non_address_book | unknown | unknown | verified | n/a | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| source verified unclassified | xWinSwapV3<br>`0x24745cd498a41904677725afe224a74c4a1fed3f` | non_address_book | unknown | unknown | verified | n/a | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| source verified unclassified | xWinSwapV3<br>`0x2d119a6d43f897907ac5810105d887939958f6b1` | non_address_book | unknown | unknown | verified | n/a | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| source verified unclassified | xWinSwapV3<br>`0x3d40f1a7e18653152fac61b3e93f8032bfcbcca5` | non_address_book | unknown | unknown | verified | n/a | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| source verified unclassified | xWinSwapV3<br>`0x667b40645f9b2ea7b369548585a240d8f52978a1` | non_address_book | unknown | unknown | verified | n/a | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| source verified unclassified | xWinSystemExecutor<br>`0xa26e810850ce282217b3c251b99299725bbdad8c` | non_address_book | unknown | unknown | verified | n/a | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| unverified unclassified | UnnamedContract<br>`0x018bacba81b5281f0c39f4ee78feccde243d38ce` | non_address_book | unknown | unknown | unverified | n/a | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| unverified unclassified | UnnamedContract<br>`0x02c7276516fe7d7ea97bac6f205cc30be5f0efb6` | non_address_book | unknown | unknown | unverified | n/a | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| unverified unclassified | UnnamedContract<br>`0x06cabf4a2ff704827295a1daefc00d0dc6c4e248` | non_address_book | unknown | unknown | unverified | n/a | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| unverified unclassified | UnnamedContract<br>`0x0803309830d5949939222f64e479d7c7afbd096b` | non_address_book | unknown | unknown | unverified | n/a | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| unverified unclassified | UnnamedContract<br>`0x15e58d79de97dae7e1b3b47d2e83843919b8ffb1` | non_address_book | unknown | unknown | unverified | n/a | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| unverified unclassified | UnnamedContract<br>`0x178063ba8e1616579391373111190391d34183d1` | non_address_book | unknown | unknown | unverified | n/a | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| unverified unclassified | UnnamedContract<br>`0x1a0088095e71bc65e7dbc19e183bf5a322600948` | non_address_book | unknown | unknown | unverified | n/a | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| unverified unclassified | UnnamedContract<br>`0x24478c3fef22fe810c3c2c2d48dc885081860489` | non_address_book | unknown | unknown | unverified | n/a | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| unverified unclassified | UnnamedContract<br>`0x24745cd498a41904677725afe224a74c4a1fed3f` | non_address_book | unknown | unknown | unverified | n/a | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| unverified unclassified | UnnamedContract<br>`0x2b4b7301de95ac9934fb2797d41f973e3fd3366a` | non_address_book | unknown | unknown | unverified | n/a | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| unverified unclassified | UnnamedContract<br>`0x2d119a6d43f897907ac5810105d887939958f6b1` | non_address_book | unknown | unknown | unverified | n/a | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| unverified unclassified | UnnamedContract<br>`0x321c78984db2b330d9c51d04fe507e08d4c8c511` | non_address_book | unknown | unknown | unverified | n/a | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| unverified unclassified | UnnamedContract<br>`0x32ad48354528304b9b8c9f90fc328b0189d036f6` | non_address_book | unknown | unknown | unverified | n/a | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| unverified unclassified | UnnamedContract<br>`0x35ff1d9ce0aa7fd884f76a6a55debf0774093ea5` | non_address_book | unknown | unknown | unverified | n/a | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| unverified unclassified | UnnamedContract<br>`0x36ccaee12432ef99aee7e0bcfe68b315895726b9` | non_address_book | unknown | unknown | unverified | n/a | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| unverified unclassified | UnnamedContract<br>`0x373a8affcf912cd0540ab1d043beb5a2dec68bca` | non_address_book | unknown | unknown | unverified | n/a | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| unverified unclassified | UnnamedContract<br>`0x3bb0aed80a82f7482d99f76736e25d8057d09cb5` | non_address_book | unknown | unknown | unverified | n/a | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |
| unverified unclassified | UnnamedContract<br>`0x4259ed91681159e455629a35d81c0b0020e3feed` | non_address_book | unknown | unknown | unverified | n/a | `0xad8234bc07168d9f7e49c3780e4b5fefa6620f8a` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [skynet.certik.com/projects/xwinfinance](https://skynet.certik.com/projects/xwinfinance) | CertiK | Audit | 2023-06 | stale | Direct | contract_name | matched | 1 | 1 | 0 | 2 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2340] skynet.certik.com/projects/xwinfinance — matched: Extracted from audited files and assessed contracts sections. Audit date from 'Last Audit was delivered on 6/18/2023'.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| skynet.certik.com/projects/xwinfinance | xWinBBMA | unmatched — not counted | — | listed in audited files | no |
| skynet.certik.com/projects/xwinfinance | xWinBuddyChef | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x4b87a60fc5a94e5ac886867977e29c9711c2e903` — deployed 2023-06-11 06:05:49+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| skynet.certik.com/projects/xwinfinance | fundV2 | unmatched — not counted | — | listed in assessed contracts | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | `0xa4ae0dcc89af9855946c0b2ad4a10ff27125a9fc` | xWinLockedStake | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x367712b4be88d71cc82dd9b18640d3718ed979e7` | xWinMasterChef | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xd88ca08d8eec1e9e09562213ae83a7853ebb5d28` | XWINToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 57 |
| upstream | 1 |
| standard_library | 22 |
| needs_review | 54 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 1 own (1 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 2 unmatched
- Matched-own operational status: 1 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: unique_name=1

Fork inheritance lineage and inherited audits are included when available.
