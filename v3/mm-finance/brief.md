# Agentic Audit Brief: MM Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 3 (0 matched; 3 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: MM Finance (`mm-finance`)
- Website: [https://mmfinance.gitbook.io/docs](https://mmfinance.gitbook.io/docs)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, cronos, polygon
- Contract surface: 231 unique implementations (323 raw deployments)
- Coverage basis: 0/11 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,184,067.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for MM Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 11 contract row(s) across arbitrum, cronos, polygon. Structural roles: 9 core, 1 supporting, 1 unclassified. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 11
- Structural roles: core (9), supporting (1), unclassified (1)
- Contract kinds: contract (11)
- Detected standards: erc20 (8), erc20permit (7), ownable (3)
- Frameworks: openzeppelin (10), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 1

## Fork Analysis

1 of 11 contracts are derived from known codebases. 10 contracts have no detected origin.

### Forked Contracts

**MasterMeerkat** (`0xa2b417088d63400d211a4d5eb3c4c5363f834764`, chain 137)
Origin: citadelswap (`0x75776c...f85237`)
Containment: 86.4% - 19 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original):
- multiSet(uint256[],uint256[],bool)
- setProxy(address)
- setUnlockRate(uint16)

### Original Contracts (no fork detected - full audit scope)

- MeerkatPair (`0x1aec8ff1c39c34338327a32bbb35011432614172`, chain 137)
- MeerkatPair (`0x384c1b95027b73a98fe31ea5b4b7b031b9ddd724`, chain 137)
- MeerkatPair (`0x8ab47799cb0d49aeb9e3a47c369813a3a3236790`, chain 137)
- MeerkatPair (`0x8c26252b14f9b071585b81b240c4ae2176e8cd3c`, chain 137)
- MeerkatPair (`0xa789324e64268c5385ea7678435fa83532705b0f`, chain 137)
- MeerkatPair (`0xb965c131f1c48d89b1760860b782d2acdf87273b`, chain 137)
- MeerkatPair (`0xd15eb8710e28c23993968e671807d572189cc86e`, chain 137)
- MeerkatRouter02 (`0x51aba405de2b25e5506dea32a6697f450ceb1a17`, chain 137)
- MeerkatToken (`0x22a31bd4cb694433b6de19e0acc2899e553e9481`, chain 137)
- UnnamedContract (`0x97749c9b61f878a880dfe312d2594ae07aed7656`, chain 25)

## Contract Surface Quality

- Logic-topography rows: 11; live-surface rows included: 11 (11 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 12/12 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/11 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 12 own, 20 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 199 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 51
- Confirmed-live implementations: 12 of 231 unique; 219 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/87
- Verified + Unaudited implementations: 87
- Verified by bytecode match: 0
- Unverified implementations: 144
- Unique implementations: 231
- Raw deployments: 323
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-01 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (87)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AmplificationUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xff89646fe7ee62ea96050379a7a8c532dd431d10` | ⚠️ Unaudited |
| BatchSender | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x40d87d548743d3f5242d6eae2199e8c064eba807` | ⚠️ Unaudited |
| FastPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x00db5925892274f276846f25c7fe81dec3f3b769` | ⚠️ Unaudited |
| GlpManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: polygon `0x0554af706de9fc63a30ec08d78340c1ae2193678`; polygon `0xbc0627455ac9d7f28435342efa8e46cb2d43f851` | ⚠️ Unaudited |
| LaunchpadProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | arbitrum | n/a | 3 deployments: arbitrum `0x08382dd974322b9c292bbede5fef36dceda291f2`; arbitrum `0x52392cffc5e89c319da73370bd6af1c64a440da2`; arbitrum `0x5be85eaf3b031d42dd8441eda5b76fcf43ce093d` | ⚠️ Unaudited |
| LPToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x07a9aaf9c3d4fc53f112dfe0edffd585fe70b5a0` | ⚠️ Unaudited |
| MadMeerkatBurrowPoly | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2f5b31d2b4891f0ed183d56dd6ebd55249ca1d0c` | ⚠️ Unaudited |
| MasterMeerkat | unknown | project_anchor | own_supporting | 0 | polygon | unit-247628 | `0xa2b417088d63400d211a4d5eb3c4c5363f834764` | ⚠️ Unaudited |
| MasterMeerkat | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa73ae666ceb460d5e884a20fb30de2909604557a` | ⚠️ Unaudited |
| MeerkatFactory | unknown | project_anchor | own_supporting | 0 | polygon | unit-247625 | `0x7cfb780010e9c861e03bcbc7ac12e013137d47a5` | ⚠️ Unaudited |
| MeerkatFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfe3699303d3eb460638e8ada2bf1cff092c33f22` | ⚠️ Unaudited |
| MeerkatPair | unknown | project_anchor | own_supporting | 0 | polygon | unit-247621 | `0x1aec8ff1c39c34338327a32bbb35011432614172` | ⚠️ Unaudited |
| MeerkatPair | unknown | project_anchor | own_supporting | 0 | polygon | unit-247623 | `0x384c1b95027b73a98fe31ea5b4b7b031b9ddd724` | ⚠️ Unaudited |
| MeerkatPair | unknown | project_anchor | own_supporting | 0 | polygon | unit-247626 | `0x8ab47799cb0d49aeb9e3a47c369813a3a3236790` | ⚠️ Unaudited |
| MeerkatPair | unknown | project_anchor | own_supporting | 0 | polygon | unit-247627 | `0x8c26252b14f9b071585b81b240c4ae2176e8cd3c` | ⚠️ Unaudited |
| MeerkatPair | unknown | project_anchor | own_supporting | 0 | polygon | unit-247629 | `0xa789324e64268c5385ea7678435fa83532705b0f` | ⚠️ Unaudited |
| MeerkatPair | unknown | project_anchor | own_supporting | 0 | polygon | unit-247630 | `0xb965c131f1c48d89b1760860b782d2acdf87273b` | ⚠️ Unaudited |
| MeerkatPair | unknown | project_anchor | own_supporting | 0 | polygon | unit-247631 | `0xd15eb8710e28c23993968e671807d572189cc86e` | ⚠️ Unaudited |
| MeerkatPair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 6 deployments: arbitrum `0x1fba5288c108dfe673b4d8b3fe39fc6675bedb17`; arbitrum `0x32481a0466e66ee80e9d50a0da120f8d16041787`; arbitrum `0x4119fe7ef21809629239ed2496211d61af78546e`; arbitrum `0x446822663bc5a00798be82f5ceaff4cf10cf06bc`; arbitrum `0x590ff65633bb0cbdf323877d05539e47798786da`; arbitrum `0xc082398767ae77c73f0bc006b0efe460944177df` | ⚠️ Unaudited |
| MeerkatRouter02 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 4 deployments: polygon `0x315bdf3d88b5a28b9e02b366f9c39a4588aba565`; polygon `0x5686c0f3bf8dd487b45fead41fe53ddf8d9c5edc`; arbitrum `0x4f879a9d95e01041ddaa607a65f04e0edbd04139`; arbitrum `0xf0603a7292300acd97c103cff65d5c6978f54980` | ⚠️ Unaudited |
| MeerkatRouter02 | adapter | project_anchor | own_supporting | 0 | polygon | unit-247624 | `0x51aba405de2b25e5506dea32a6697f450ceb1a17` | ⚠️ Unaudited |
| MeerkatRouter03 | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7e5e5957de93d00c352df75159fbc37d5935f8bf` | ⚠️ Unaudited |
| MeerkatToken | token | project_anchor | own_supporting | 0 | polygon | unit-247622 | `0x22a31bd4cb694433b6de19e0acc2899e553e9481` | ⚠️ Unaudited |
| MeerkatToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x56b251d4b493ee3956e3f899d36b7290902d2326`; arbitrum `0x7d10fb7fcddd4f37f1395c318717c7f2727f1711` | ⚠️ Unaudited |
| MLP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0d5665a2319526a117e68e38ebea4610aa8298f8` | ⚠️ Unaudited |
| MMOToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x859a50979fdb2a2fd8ba1adcc66977c6f6b1cd5b` | ⚠️ Unaudited |
| NonfungiblePositionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0f148aae748d9989d263b3ca3f6f01ef8c691763` | ⚠️ Unaudited |
| OmniInterfaceMulticall | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfa34f4e90bb251e845d2ff8ced49c6454737c85e` | ⚠️ Unaudited |
| Oracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x651393533ccd66b037744900d6663931b78d2849` | ⚠️ Unaudited |
| OrderBook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4fd9fef216da72b1bc2ddf8924a036f3d780dcdf` | ⚠️ Unaudited |
| OrderBookReader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xcaf7a499ea5170487b7643f8d8f3cb5751791a99` | ⚠️ Unaudited |
| PancakeV3Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: arbitrum `0x0d55a4896524b7a0fe5cc3111ce475049cbd2f61`; arbitrum `0x236ffa966bcda8f2b7356eb5799316417909a1d3`; arbitrum `0x47e8f889c4c4db54a1c21bc486e30f818f61541d`; arbitrum `0x947bc57cefdd22420c9a6d61387fe4d4cf8a090d` | ⚠️ Unaudited |
| PancakeV3LmPoolDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1ce47d33023def9d5c34c23c80a948fe137c6d27` | ⚠️ Unaudited |
| PancakeV3PoolDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: arbitrum `0x0297c21333d2ca9357079f20db39b6d859da12a1`; arbitrum `0xcb6a1baffd41a8ef1fa53863f07ec4425742e998`; arbitrum `0xfb48cab056b673bacde3a806c9e1f957275cfd0d` | ⚠️ Unaudited |
| PositionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 4 deployments: polygon `0x14fb06c1fb67691c0a4fda22c75636e910178cbb`; polygon `0x24c44b91475648c68969896dcde97b80d290395f`; polygon `0x3ce0120440ce5add725288a44bfea7f91ac311bb`; polygon `0xed7f15f8ce013491f8f2a46e9b68d3242bb57f38` | ⚠️ Unaudited |
| PositionRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x327b9f9f143f8618cc90b0b09375e82db230a2d7` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 7 deployments: polygon `0x2cceb683ad516068e21b77f0a5da639d09f350d3`; polygon `0x490d0321bb9d894b1e6dc5247c65bf515778a87f`; polygon `0x8534c77eb6d0102316b797fdb7282c8a832561d3`; polygon `0x952ecd17e56fa894f3f905dc966b5f6d9203ba14`; arbitrum `0x0b22ac6c106e519d053b88e92b4937ba701a71c6`; arbitrum `0x14d54a3267bf00d3c9bfb1364ef3bcf051d19d38`; arbitrum `0x4d319d1a7e16a654317c778d2618627ef5669760` | ⚠️ Unaudited |
| ReferralStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe3eb5d1d601885113caa6a55372f8e0b2ccc762f` | ⚠️ Unaudited |
| Router | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa2508cc3185f4a9bb6fb5c5b8515e4ce05bec785` | ⚠️ Unaudited |
| SmartChefFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3b98577213bc7f595d25c0ce8f29abe0a829dc78` | ⚠️ Unaudited |
| SmartRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x20ab386813f59b92e1c4596f22591bee92935d83` | ⚠️ Unaudited |
| SmartRouterHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4c2eb7e8b5cc8ca2276041b835c5cbd330b7a2ef` | ⚠️ Unaudited |
| Swap | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x0ff317c94a31eb9b72766db892f77970eb488fb1`; polygon `0x9ee5794322ed1b53131459b44247cd0fe25dab56` | ⚠️ Unaudited |
| Swap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: polygon `0x45e46c9dc647d0f89b8e692f327553e5bab22368`; polygon `0x690bbaa9edbb762542fd198763092eab2b2a5350` | ⚠️ Unaudited |
| SwapDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x95d5d401d3c4eacf12d71b4f98995076d6a3a85d` | ⚠️ Unaudited |
| SwapRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x611c9f2f536e087be7d0f02d9f99e5ce9b7e175b` | ⚠️ Unaudited |
| SwapUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x855ccb701117dd34e30cfc0741c96cf8f56017a5` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x00c8ee42761c95b223676d6ea59c6b7f6f643a6e`; polygon `0x6e6175c993abd316090e8af94b74476fd92ce1a7` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x01a104728739a111e66b9d1e661ef2718bcdf702`; polygon `0x567e7e01db38131d36267bcd5917c03863296b04` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 4 | polygon | n/a | 5 deployments: polygon `0x01ab57a080c4434156b52993170a19ce02c48b84`; polygon `0x3d014c8b5e75a8b3e3706ac1a448e88c73df5c7d`; polygon `0x67a41ee6c5d807788477f7f66fe50876ed5655d1`; polygon `0x692db42f84bb6ce6a6ea62495c804c71aa6887a7`; polygon `0xeb6239d015d7d438dfb4180b53a639bc9f3f1227` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 5 | polygon | n/a | 6 deployments: polygon `0x06515aeb17448d0aee00a28e3eb617ce7afe9318`; polygon `0x446e64a0a627c29df90eb7400a0e57d22f82e95e`; polygon `0x56cb79209462a2e3454cc84fe6b3fe5dc62389f6`; polygon `0x5cfdf337993555e1fc3e94871642c13703eab3b9`; polygon `0x658188a45b84c36407776320b01b98bd9edce9cd`; polygon `0xdc58c5f1bf1090e44ab976eba60ba3bae89c1b07` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | polygon | n/a | 3 deployments: polygon `0x0c1f159119a6fc6f80accac675751ad9f22322f8`; polygon `0xac5c856ceb258b9128961c392b7ab04eac8f9f5d`; polygon `0xb9b3d475faf639178098de8635043d90a5f5acba` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | polygon | n/a | 4 deployments: polygon `0x0ece7bb403a5ec4534217e94dbf73111dc152155`; polygon `0x4725e3cf556bb4d1c20c7f7d717b7332137c844f`; polygon `0xa7896e6e9d701d85166a6ee7d298078aa184469b`; polygon `0xb3b364dbc29c2ab8e0c255c3f0eeee930785345c` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x102fcb495d3a63f8cf85905c7f755173214f57ca`; polygon `0x91b50ec30ef0e403994dd5ee638512dcb5b4993b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x145677fc4d9b8f19b5d56d1820c48e0443049a30`; polygon `0xb7e97cba2e86c8ccda81e1e9b0041914566a3ccb` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x1bc8889c3e7b9f2daf0a361feca56e2f8a15fd2a`; polygon `0xbeb921f177b482cf1e6c935adffe97a1198a0bcd` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | polygon | n/a | 3 deployments: polygon `0x244c4dd63eb51762c3933c8b71cc3434a138162b`; polygon `0xb64754d06d7fa94f443629717c6560d35680e6b4`; polygon `0xc5966ac38651aa7e68ddd5ce83b766d484868830` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x2b9299f80a644ca60c0d398e257cb72488875d2a`; polygon `0x9c5dc509425afd1deb21292b503089cd0c8badda` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x2ef58fd24101619b33ba6b1c18199909fd1d38c2`; polygon `0x920b6793b7df39a4119ccaa67c73eb2136a616c5` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x3026b243e5543b28fc76788b66a37dcbfa98e35a`; polygon `0x5c76583b78110a8d3fc149529793a8ada231d147` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x34b0bd5cc04ca6ae907ac1e07141c2ad948679b6`; polygon `0x9e3e9d59b6b1386f9f6a92318919913d3c58016e` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | polygon | n/a | 3 deployments: polygon `0x4724adf1278ac1ecf7b70db7f551286d858356fa`; polygon `0x804dc5352f1b3206ff3b0df58035b80b421cd456`; polygon `0x95258eb8a10ba6f8bb61666339ec65bdd380f941` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x47f6d98438026b23fb60706c3041e53cce45258a`; polygon `0xfaacea541e23f0d3ec7d4e202e791923ce273787` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x4a114b600f19c599e77e6f1181c2fd8bbaf39a2c`; polygon `0x7dc29143c099919d9380dc74b9eb95ff847e6536` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | polygon | n/a | 3 deployments: polygon `0x6b5c25ffa9edde9ea4d1c649247d041486a715fb`; polygon `0x7e41296cc8d695d9703fa99cbe1ce5f68fb69545`; polygon `0x9f799772430468bfe828a669269f8b3e856bfe30` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x7bb98a0f7c366777e7d4832136c085e0205fc052`; polygon `0xb05cef60cd447ef27a4426ba56a216fac268ba3a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x7f64624c36d8356e05e85d7afcd2f998d3c45bc1`; polygon `0x9629a082a638115c0867768e09ca78a02d5b8d01` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x8523e6cdc1c7f3c92d5ea13c9c9b9943732e30fd`; polygon `0xff39fad7f73fd8e1b31e5b7adedc6676774fc579` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | polygon | n/a | 3 deployments: polygon `0xa5cf7dbd4d2f6f2f964be27d5ca048adaa5afd6c`; polygon `0xcdff7e91f64c5e0772c8170b1e43b86b7ae4832a`; polygon `0xd56345f85c8e9862613fd64d28250fb9a817de4c` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0xc267bdb3a3d3da661f84878fb2a1756cb245d38d`; polygon `0xc4ba95b0174c1512100c8ab5e7573b70e0e0d254` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0xf0364d0c610ebdb14060a3d47954630a7f64c55f`; polygon `0xfa9f91a340e2efa47b67921f8809e98796d1f7f7` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x01751270cba9c1d0be04f31b19d4beaafb125cf5`; arbitrum `0x4d90b96483bbe0a498dc8e9be287bac110051d8c` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x060e247fda7410d508d3cdaec5bf1d013c53602f`; arbitrum `0xfd9c608e05e62500670e658611885bfa161b3982` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x0c042a5db2e4a5fa20cd98378e24961edd9cfd51`; arbitrum `0xd4a8a5617220f169444d91ac223b511c1924b643` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x3510e488087ccb216c93768248dfdef42b962ec3`; arbitrum `0xfa1bdc88ba88c2ee93bddbe3a9d1e6aad47d687d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x3cb6934bf0963fc77e0dfafb02f2d4e2f6936a8b`; arbitrum `0x7eee22621cab698d19733ab3702e421d938f9efe` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x4325a5b6ca1fbd395cfb8b01f06379bf813a1915`; arbitrum `0xa196f542c44057dba571a2cfb24a9cd37e628306` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x49650f30c5346f477f3d537c209d549c06fd977a`; arbitrum `0x53b901955e2b3aae663cebc04a0c7fbcb46d3615` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x4f0521537d55f1b4731ee5540d3c2273e0300a5e`; arbitrum `0xaea0b9ddb87c57b97291ec3341c36fb8790d5734` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x7309bffd55cc487def967ef5291eec9d65b5cea8`; arbitrum `0xe77c4ad5469145d486e3fb02509e0bf257e15b83` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x9a92b930a59a5361cecd8965f8533aa3008a1477`; arbitrum `0xa93dd64566b42adf4fd0db3a538d9856ba596e47` | ⚠️ Unaudited |
| USDG | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x06eaaea0b37badf17e33b0dd99e97c000808b304` | ⚠️ Unaudited |
| Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe990519f19dcc6c1589a544c331c4ec046593e7a` | ⚠️ Unaudited |
| VaultErrorController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb74f73978ac630715bc329e4fa997824e0f5f3b8` | ⚠️ Unaudited |
| VaultReader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x934427fa3fc5322fa00cc16d35bc25848ba2cbec` | ⚠️ Unaudited |
| Vyper_contract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 4 deployments: polygon `0x1eb430cac0ab8f84bbc646099a27955a688fa87d`; polygon `0x3a720cdf894e71c8d0f265621e795687db850ceb`; polygon `0xd8e873705cf228f8aa0122848a2ad567fd493e9e`; polygon `0xdb650ce48ebbefaba27e3223086edf8820d75ddd` | ⚠️ Unaudited |
| xMeerkatToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb8635f1644422e7ebca07c06b839075a74f57dbb` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (144)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | cronos | n/a | `0x0101112c7addb2e8197922e9cfa17cbaa935eccc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | cronos | n/a | `0x019d9479606fbdd4acb16488e0aae49e4684322b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | cronos | n/a | `0x145677fc4d9b8f19b5d56d1820c48e0443049a30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | 14 deployments: cronos `0x1a6ad4bac521a98556a4c0da5946654c5dc7ce0a`; cronos `0x2ccbfd9598116cdf9b94ff734ece9dcaf4c9d471`; cronos `0x2d03bece6747adc00e1a131bba1469c15fd11e03`; cronos `0x3827caa33557304e1ca5d89c2f85919da171c44d`; cronos `0x50c0c5bda591bc7e89a342a3ed672fb59b3c46a7`; cronos `0x654bac3ec77d6db497892478f854cf6e8245dca9`; cronos `0x692db42f84bb6ce6a6ea62495c804c71aa6887a7`; cronos `0xa51054bdf0910e3ce9b233e6b5bddc0931b2e2ed`; cronos `0xb6e1705bfafcf1efee83c135c0f0210653bab8f0`; cronos `0xb8df27c687c6af9afe845a2afad2d01e199f4878`; cronos `0xc924da29d37f3b8c62c4c3e4e6958bf2b5ebf677`; cronos `0xd7385f46ffb877d8c8fe78e5f5a7c6b2f18c05a7`; cronos `0xe25737b093626233877ec0777755c5c4081580be`; cronos `0xf8b9facb7b4410f5703eb29093302f2933d6e1aa` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | cronos | n/a | `0x3defb1183e8931353a8407a89a0bc864b018953a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | cronos | n/a | `0x520256f32783354c2fdccef81553e0ac3d4eef53` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | cronos | n/a | `0x5383202d48c24aaa19873366168f2ed558a00ff0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | cronos | n/a | `0x5801d37e04ab1f266c35a277e06c9d3afa1c9ca2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | cronos | n/a | `0x61bb2f4a4763114268a47fb990e633cb40f045f8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | cronos | n/a | `0x6be34986fdd1a91e4634eb6b9f8017439b7b5edc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | cronos | n/a | `0x6f186e4bed830d13dce638e40ba27fd6d91bad0b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | cronos | n/a | `0x722f19bd9a1e5ba97b3020c6028c279d27e4293c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | cronos | n/a | `0x74759c8bcb6787ef25ed2ff432fe33ed57cccb0d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | cronos | n/a | `0x8e07fce205bbf1982e7d3168a996b528a8167586` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | cronos | n/a | `0x95aeaf383e2e86a47c11cffde1f7944ecb2c38c2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | cronos | unit-247632 | `0x97749c9b61f878a880dfe312d2594ae07aed7656` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | cronos | n/a | `0xa68466208f1a3eb21650320d2520ee8eba5ba623` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | cronos | n/a | `0xba452a1c0875d33a440259b1ea4dca8f5d86d9ae` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | cronos | n/a | `0xd590cc180601aecd6eeadd9b7f2b7611519544f4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | cronos | n/a | `0xdb04e53ec3fab887be2f55c3fd79bc57855bc827` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | cronos | n/a | `0xe60c38d3046921f5687efc38e03d4ebfbf3750af` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | cronos | n/a | `0xeb28c926a7afc75fcc8d6671acd4c4a298b38419` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x01adf1b4a72b2c523f7f05e71a09ff103705c9b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x03c8e5b2f90e13e356a1fc51961fa258bcf631d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x095bc617b36ab227a379550633dfdcbf43f236f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0c617fc8fd80957bf3fd5e7ee26ca5143e90235d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0cec539edbae8dcbd3402978ddca8d08acd7ab2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0dff219cf53bf64dc39d6a8551c9dc0e65b966dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0faf67d16da185b143a5946d0a1d34860a2e884c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x11ee70bf955203cc72d70bf8b9db73d4dece6ec7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x15ec65425cc38ca82fb76be1c090a655a50858f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x17ba3512a42373ef8fc8824cdd2374b4851180ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x195ac6c9aa3ca737c51ea3bbbd639599e83b6159` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1fc85816583d73898e7a5d5ce4934bb589f80ad3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x295d8cfa5f9cdb102ae80f59d758e9a9f33fd0be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2ba9e50c8a3b728052860b4e0f55780c3b6f300a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2c456d1011c51ff6f22e6bdba878da4b13e40824` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2c6978a0503e81e26e3aff6ade45ba1f5d12b4a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x308c22454a9af006d409d900358cc8c16a5dccff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3392fbe3ad85bc4798c86acfb6efde30cee692b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x339f42cd876579e7ed31ebfd31d67a93a668f74b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3d03dbc66370acbeeacd1c821f02b2dfdef6e259` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3e1402ac0ef78390cac295c6713ae0b887d7749d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x443ec402bec44da7138a54413b6e09037cf9cf41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x48f27475d0f7cb9c28a3161525b0e9c3d38280af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4bca9cc1d6aa81fe295d51a30cd1dbf4c902f482` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4ed9beb8ee5987c1273d5fd3830e8d0d0ff1f526` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x59044e92beecd12900a1b2cefe0f3b9388fb5c53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5a64e6c0b5b3e7653291aadcdaefa0a053760c56` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x67b46290771c441eedbd1a040a3e0ebe1435f14e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6995860ce559d820fca1f5440524d8aa77add3e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6c563835b6208e0482336d404f5cad572bebe76b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6cc28c81fc9e387b6ed9fdeec32dd5cbac26b0bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6d4bed60fe9a3a3ab5e4a20807035dddeaa1fe88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6d713b7fc4639d30503cd14c00039a31efaf0c72` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7059137b388b2fd11bd863e6c8b80f4f19edd1a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x78408511e0d81732970a44ebca4bacff96540dda` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x799b03df21f5027e2a0ddcfceb383b3fd2c4cc39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7ae5b1385faddf0db5af1834a63c3ba5ace22221` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7aebfcecec91a1d42ad0869d1dae396c96f93c40` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8504f0c5bfe3cba5462d69a2e0bce8a65a92188d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8a3ae556e8108ae310be7888e2f136c611d75298` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8bb9cc60f830c1b78cdb94295fa756c28cfaa4d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8e0170370401463024c3343fcbd21a5723c97873` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x94ee0203fead86f7a00e908bfcf0e8b38b47e481` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x961c1d7005c9191b70e1cd505f80fc06a2d07494` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x979ed6507b81cd50f1273fb1f811734804449581` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x98c65fba93fb6a64e22cbc77a4584abbc83270e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x996a3deb54775e87b0edb043d09130ba83a187bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9bfd18b597e69f38c326e4b898aa9699468341d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9e91eef8135e4c30d3c02a1f369284938804a694` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa4dab5a7a2304faa580a35f781e82bdfb4ab4253` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa827b9cdfb366ae1822ed4f9853b2e9e42c8f275` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xab51cb53898e2b164c269c9955c2f03a684ff6e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb208c0e74318ca522a8a5a67d6c92ba01259fd84` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb36424da9f709dd3d3ddbd85a0e89d194c638116` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb9c4dbe6caed88ca406cf2a395aeef49ac3ad137` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbc67c7c5d597714d0b55cd7e43e7c80d302abc71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc2e0cb53121293321bafc9ffc0d6a1aed72ebba4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc5a3be9a51060d10c9164fd7f24d332537eada5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc664775f196838b63cd465f1335aa843263f3341` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc67aa9b90c5a72ca5bdc3d0fd2a70dfe82c849de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc821756abe653f7d221d25e9a27629318bf928ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xce6c2b3f5c774b835c1e9dbd4c25921b0807306f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd0130f8a2e63d68e91366a45c6a27a7e87934d8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd09fa8267f328e9b69aeed12f06aba04a5be2d06` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd32001f964405549951511063df11548b8b9e302` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd4cc2ca9836a3282abc63c7e0fe3a092db1a7612` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd6f8b2bb097158df4d5e3c048f40ace708a4f9bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd751f694737bfb06b17d47e39a0fec83f7172252` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xda6605dad9293328aa9ce6097ace8dfb7b6b4887` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xdfaf6fb7438605ef9a388f414be89e5377c42e02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe0d6b2eab2d793b0320ff002e6477372afdb0e5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe48105c589afde658aa14b8b5bad13d2b6b3437a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xed871d77bafb1bad042166e1bd69fa7c30984f6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xef71d267c97d0dd888de1285c4c965118f5945a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xef83cfac092bc5f53feebac962e397e610d3852f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf42de8060280c6d8afbf54ff7d8789cf4113c80d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf4b8f645b713f7d6983f137fe7f9b100505af225` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf8eed914a0bacaf30c13420989bb7c81b75d833a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfa461f2445503e2f3c0463033e4c1dedd2c2eac7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfa4dd8b1b85804396b104b7b1961bfeae903e2a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfeece287b1c6389217c11f014fcf9761732e8047` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1a4bc0e1000a267c1c9805116c15b2a01fc67cb6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1b1d67e7e56e22c1423523673d762ad39996a038` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x20bcbf8f6af0ef374a7b2da8bdbb948b4f076517` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x302b819564ccb961c6b3605f3049031e97b5ad24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x37e3529356c1b8c158e3a3a15c24982d1e2f94a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x39fe314d7080693086b3b00f0f1de89a2161fd19` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3b91d766c912f5488ca3a9def9493193936be6e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x48603ede60abe109d17f0d840530cb0147c8515d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4ac4e37e029bcdd83b507f08538e638e559a4f4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4de75dd900072b951dda763e318468d1f0b2ea55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6c09596ffbe03d3f1fa62456696e2bd3b9a69e12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7438b5afd2f38e16322ba24bc9c13b121859c5ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x79f00fd2d43c54f833ce0f283ec512793b29b007` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7b07d572ee081cdb2db04e6d7c4a66563cb8974c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x84cab6fe1ffba4867a8b394ec97863a21ca9cd08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x85b6b458ea75e733ebe7982c37e931fcdea65033` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8629cf1ae642bdb8015ed64137a14c0a719c8969` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8c3302e7f776b9853ff008dedd7d20fc5dbf03ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9092d61f30bcea09b804c4a1f7e17db40913bb06` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x940d1402162a6c7e197d11271fb785f65c13dd7e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x974778e386afe448c7ed7813fcbd7b7c44f400a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa2998f0d2c1e59cdce7521a726a169d611895ccd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa63c0fc35ce80674aa15fed2c9f306db6e9ebdd1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa739cd7e7e2e0834ef821f677a2582e1105b8985` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa761cb792a867156615b61cfbf213366d6d3f283` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb188e68236c82a791838228a0449b0b46a700bef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb4e5e3ca5a7a314bdd3bce733a13a547d090d2bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xce17f8ef13cf67da6eab86e31360102eea8609ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xce8ef56996c2f9e20fbfed800bde0cc2ccadb095` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd3545fd1c865a8cbb918db5edb03dfc91b5528db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd7208749c35dbacf666f9fdc523f7256ac43449c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xda421250e7169db2d9c126852c82a88f053a5c02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xda9b153a1ab9ddbd34b442c2d846be1e5bd1849a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdc7b23ce4ed494ceff31aa1bb5c2e3c687cbef81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe1243fb6c08c924202aa3b02f48e590855c17c41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe3bb7c72674c643d69b2898848668a11e58a28bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe4e391a7a7d38b5ece0724e66b132a8c011c2b20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xea660d16609fcf71ff020acf335d4cc6d9eee69b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf1803683b99f6bb669905ad8c9b509960f61529d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf6099733607090f0d61ebf296f4873f3eafbffe3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfb3e47fbbf99d48aa8fe847925dac8e9b4974778` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 258
- Live contracts: 1
- Unknown liveness contracts: 257
- Source-verified contracts: 108
- Currently scope-matched contracts retained as-is: 0
- Classification counts: candidate review=7, contamination review=13, source verified unclassified=88, unverified unclassified=150

Showing first 200 of 258 contracts. The complete deployer expansion list is in `brief.json`.

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| candidate review | AmplificationUtils<br>`0xff89646fe7ee62ea96050379a7a8c532dd431d10` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| candidate review | LPToken<br>`0x07a9aaf9c3d4fc53f112dfe0edffd585fe70b5a0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| candidate review | MeerkatFactory<br>`0x7cfb780010e9c861e03bcbc7ac12e013137d47a5` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| candidate review | Swap<br>`0x45e46c9dc647d0f89b8e692f327553e5bab22368` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| candidate review | Swap<br>`0x9ee5794322ed1b53131459b44247cd0fe25dab56` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| candidate review | SwapUtils<br>`0x855ccb701117dd34e30cfc0741c96cf8f56017a5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| candidate review | MeerkatFactory<br>`0xfe3699303d3eb460638e8ada2bf1cff092c33f22` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| contamination review | BatchSender<br>`0x40d87d548743d3f5242d6eae2199e8c064eba807` | non_address_book | unknown | unknown | verified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| contamination review | FastPriceFeed<br>`0x00db5925892274f276846f25c7fe81dec3f3b769` | non_address_book | unknown | unknown | verified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| contamination review | GlpManager<br>`0x0554af706de9fc63a30ec08d78340c1ae2193678` | non_address_book | unknown | unknown | verified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| contamination review | Oracle<br>`0x651393533ccd66b037744900d6663931b78d2849` | non_address_book | unknown | unknown | verified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| contamination review | OrderBookReader<br>`0xcaf7a499ea5170487b7643f8d8f3cb5751791a99` | non_address_book | unknown | unknown | verified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| contamination review | PositionManager<br>`0x14fb06c1fb67691c0a4fda22c75636e910178cbb` | non_address_book | unknown | unknown | verified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| contamination review | PositionRouter<br>`0x327b9f9f143f8618cc90b0b09375e82db230a2d7` | non_address_book | unknown | unknown | verified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| contamination review | VaultErrorController<br>`0xb74f73978ac630715bc329e4fa997824e0f5f3b8` | non_address_book | unknown | unknown | verified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| contamination review | VaultReader<br>`0x934427fa3fc5322fa00cc16d35bc25848ba2cbec` | non_address_book | unknown | unknown | verified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| contamination review | OmniInterfaceMulticall<br>`0xfa34f4e90bb251e845d2ff8ced49c6454737c85e` | non_address_book | unknown | unknown | verified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| contamination review | PancakeV3Factory<br>`0x0d55a4896524b7a0fe5cc3111ce475049cbd2f61` | non_address_book | unknown | unknown | verified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| contamination review | PancakeV3LmPoolDeployer<br>`0x1ce47d33023def9d5c34c23c80a948fe137c6d27` | non_address_book | unknown | unknown | verified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| contamination review | PancakeV3PoolDeployer<br>`0x0297c21333d2ca9357079f20db39b6d859da12a1` | non_address_book | unknown | unknown | verified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| source verified unclassified | GlpManager<br>`0xbc0627455ac9d7f28435342efa8e46cb2d43f851` | non_address_book | unknown | unknown | verified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| source verified unclassified | MeerkatRouter02<br>`0x315bdf3d88b5a28b9e02b366f9c39a4588aba565` | non_address_book | unknown | unknown | verified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| source verified unclassified | MeerkatRouter02<br>`0x5686c0f3bf8dd487b45fead41fe53ddf8d9c5edc` | non_address_book | unknown | unknown | verified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| source verified unclassified | MLP<br>`0x0d5665a2319526a117e68e38ebea4610aa8298f8` | non_address_book | unknown | unknown | verified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| source verified unclassified | OrderBook<br>`0x4fd9fef216da72b1bc2ddf8924a036f3d780dcdf` | non_address_book | unknown | unknown | verified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| source verified unclassified | PositionManager<br>`0x24c44b91475648c68969896dcde97b80d290395f` | non_address_book | unknown | unknown | verified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| source verified unclassified | PositionManager<br>`0x3ce0120440ce5add725288a44bfea7f91ac311bb` | non_address_book | unknown | unknown | verified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| source verified unclassified | PositionManager<br>`0xed7f15f8ce013491f8f2a46e9b68d3242bb57f38` | non_address_book | unknown | unknown | verified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| source verified unclassified | ProxyAdmin<br>`0x2cceb683ad516068e21b77f0a5da639d09f350d3` | non_address_book | unknown | unknown | verified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| source verified unclassified | ProxyAdmin<br>`0x490d0321bb9d894b1e6dc5247c65bf515778a87f` | non_address_book | unknown | unknown | verified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| source verified unclassified | ProxyAdmin<br>`0x8534c77eb6d0102316b797fdb7282c8a832561d3` | non_address_book | unknown | unknown | verified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| source verified unclassified | ProxyAdmin<br>`0x952ecd17e56fa894f3f905dc966b5f6d9203ba14` | non_address_book | unknown | unknown | verified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| source verified unclassified | ReferralStorage<br>`0xe3eb5d1d601885113caa6a55372f8e0b2ccc762f` | non_address_book | unknown | unknown | verified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| source verified unclassified | Router<br>`0xa2508cc3185f4a9bb6fb5c5b8515e4ce05bec785` | non_address_book | unknown | unknown | verified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| source verified unclassified | SmartChefFactory<br>`0x3b98577213bc7f595d25c0ce8f29abe0a829dc78` | non_address_book | unknown | unknown | verified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| source verified unclassified | SwapDeployer<br>`0x95d5d401d3c4eacf12d71b4f98995076d6a3a85d` | non_address_book | unknown | unknown | verified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0x00c8ee42761c95b223676d6ea59c6b7f6f643a6e` | non_address_book | unknown | unknown | verified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0x01a104728739a111e66b9d1e661ef2718bcdf702` | non_address_book | unknown | unknown | verified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0x01ab57a080c4434156b52993170a19ce02c48b84` | non_address_book | unknown | unknown | verified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0x06515aeb17448d0aee00a28e3eb617ce7afe9318` | non_address_book | unknown | unknown | verified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0x0c1f159119a6fc6f80accac675751ad9f22322f8` | non_address_book | unknown | unknown | verified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0x0ece7bb403a5ec4534217e94dbf73111dc152155` | non_address_book | unknown | unknown | verified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0x0ff317c94a31eb9b72766db892f77970eb488fb1` | non_address_book | unknown | unknown | verified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0x102fcb495d3a63f8cf85905c7f755173214f57ca` | non_address_book | unknown | unknown | verified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0x145677fc4d9b8f19b5d56d1820c48e0443049a30` | non_address_book | unknown | unknown | verified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0x1bc8889c3e7b9f2daf0a361feca56e2f8a15fd2a` | non_address_book | unknown | unknown | verified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0x244c4dd63eb51762c3933c8b71cc3434a138162b` | non_address_book | unknown | unknown | verified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0x2b9299f80a644ca60c0d398e257cb72488875d2a` | non_address_book | unknown | unknown | verified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0x3026b243e5543b28fc76788b66a37dcbfa98e35a` | non_address_book | unknown | unknown | verified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0x3d014c8b5e75a8b3e3706ac1a448e88c73df5c7d` | non_address_book | unknown | unknown | verified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0x4725e3cf556bb4d1c20c7f7d717b7332137c844f` | non_address_book | unknown | unknown | verified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0x56cb79209462a2e3454cc84fe6b3fe5dc62389f6` | non_address_book | unknown | unknown | verified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0x5cfdf337993555e1fc3e94871642c13703eab3b9` | non_address_book | unknown | unknown | verified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0x658188a45b84c36407776320b01b98bd9edce9cd` | non_address_book | unknown | unknown | verified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0x67a41ee6c5d807788477f7f66fe50876ed5655d1` | non_address_book | unknown | unknown | verified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0x6b5c25ffa9edde9ea4d1c649247d041486a715fb` | non_address_book | unknown | unknown | verified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0x7dc29143c099919d9380dc74b9eb95ff847e6536` | non_address_book | unknown | unknown | verified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0x7f64624c36d8356e05e85d7afcd2f998d3c45bc1` | non_address_book | unknown | unknown | verified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0x804dc5352f1b3206ff3b0df58035b80b421cd456` | non_address_book | unknown | unknown | verified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0x920b6793b7df39a4119ccaa67c73eb2136a616c5` | non_address_book | unknown | unknown | verified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0x95258eb8a10ba6f8bb61666339ec65bdd380f941` | non_address_book | unknown | unknown | verified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0x9e3e9d59b6b1386f9f6a92318919913d3c58016e` | non_address_book | unknown | unknown | verified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0x9f799772430468bfe828a669269f8b3e856bfe30` | non_address_book | unknown | unknown | verified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0xb05cef60cd447ef27a4426ba56a216fac268ba3a` | non_address_book | unknown | unknown | verified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0xb3b364dbc29c2ab8e0c255c3f0eeee930785345c` | non_address_book | unknown | unknown | verified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0xb9b3d475faf639178098de8635043d90a5f5acba` | non_address_book | unknown | unknown | verified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0xc267bdb3a3d3da661f84878fb2a1756cb245d38d` | non_address_book | unknown | unknown | verified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0xc5966ac38651aa7e68ddd5ce83b766d484868830` | non_address_book | unknown | unknown | verified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0xcdff7e91f64c5e0772c8170b1e43b86b7ae4832a` | non_address_book | unknown | unknown | verified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0xd56345f85c8e9862613fd64d28250fb9a817de4c` | non_address_book | unknown | unknown | verified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0xdc58c5f1bf1090e44ab976eba60ba3bae89c1b07` | non_address_book | unknown | unknown | verified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0xeb6239d015d7d438dfb4180b53a639bc9f3f1227` | non_address_book | unknown | unknown | verified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0xfa9f91a340e2efa47b67921f8809e98796d1f7f7` | non_address_book | unknown | unknown | verified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0xfaacea541e23f0d3ec7d4e202e791923ce273787` | non_address_book | unknown | unknown | verified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0xff39fad7f73fd8e1b31e5b7adedc6676774fc579` | non_address_book | unknown | unknown | verified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| source verified unclassified | USDG<br>`0x06eaaea0b37badf17e33b0dd99e97c000808b304` | non_address_book | unknown | unknown | verified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| source verified unclassified | Vault<br>`0xe990519f19dcc6c1589a544c331c4ec046593e7a` | non_address_book | unknown | unknown | verified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| source verified unclassified | Vyper_contract<br>`0x1eb430cac0ab8f84bbc646099a27955a688fa87d` | non_address_book | unknown | unknown | verified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| source verified unclassified | Vyper_contract<br>`0x3a720cdf894e71c8d0f265621e795687db850ceb` | non_address_book | unknown | unknown | verified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| source verified unclassified | Vyper_contract<br>`0xd8e873705cf228f8aa0122848a2ad567fd493e9e` | non_address_book | unknown | unknown | verified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| source verified unclassified | Vyper_contract<br>`0xdb650ce48ebbefaba27e3223086edf8820d75ddd` | non_address_book | unknown | unknown | verified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| source verified unclassified | LaunchpadProxy<br>`0x5be85eaf3b031d42dd8441eda5b76fcf43ce093d` | non_address_book | unknown | unknown | verified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| source verified unclassified | MeerkatRouter02<br>`0xf0603a7292300acd97c103cff65d5c6978f54980` | non_address_book | unknown | unknown | verified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| source verified unclassified | MeerkatToken<br>`0x7d10fb7fcddd4f37f1395c318717c7f2727f1711` | non_address_book | unknown | unknown | verified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| source verified unclassified | NonfungiblePositionManager<br>`0x0f148aae748d9989d263b3ca3f6f01ef8c691763` | non_address_book | unknown | unknown | verified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| source verified unclassified | PancakeV3Factory<br>`0x236ffa966bcda8f2b7356eb5799316417909a1d3` | non_address_book | unknown | unknown | verified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| source verified unclassified | PancakeV3Factory<br>`0x47e8f889c4c4db54a1c21bc486e30f818f61541d` | non_address_book | unknown | unknown | verified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| source verified unclassified | PancakeV3Factory<br>`0x947bc57cefdd22420c9a6d61387fe4d4cf8a090d` | non_address_book | unknown | unknown | verified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| source verified unclassified | PancakeV3PoolDeployer<br>`0xcb6a1baffd41a8ef1fa53863f07ec4425742e998` | non_address_book | unknown | unknown | verified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| source verified unclassified | PancakeV3PoolDeployer<br>`0xfb48cab056b673bacde3a806c9e1f957275cfd0d` | non_address_book | unknown | unknown | verified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| source verified unclassified | ProxyAdmin<br>`0x0b22ac6c106e519d053b88e92b4937ba701a71c6` | non_address_book | unknown | unknown | verified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| source verified unclassified | ProxyAdmin<br>`0x14d54a3267bf00d3c9bfb1364ef3bcf051d19d38` | non_address_book | unknown | unknown | verified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| source verified unclassified | ProxyAdmin<br>`0x4d319d1a7e16a654317c778d2618627ef5669760` | non_address_book | unknown | unknown | verified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| source verified unclassified | SmartRouter<br>`0x20ab386813f59b92e1c4596f22591bee92935d83` | non_address_book | unknown | unknown | verified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| source verified unclassified | SmartRouterHelper<br>`0x4c2eb7e8b5cc8ca2276041b835c5cbd330b7a2ef` | non_address_book | unknown | unknown | verified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| source verified unclassified | SwapRouter<br>`0x611c9f2f536e087be7d0f02d9f99e5ce9b7e175b` | non_address_book | unknown | unknown | verified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0x01751270cba9c1d0be04f31b19d4beaafb125cf5` | non_address_book | unknown | unknown | verified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0x060e247fda7410d508d3cdaec5bf1d013c53602f` | non_address_book | unknown | unknown | verified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0x08382dd974322b9c292bbede5fef36dceda291f2` | non_address_book | unknown | unknown | verified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0x3510e488087ccb216c93768248dfdef42b962ec3` | non_address_book | unknown | unknown | verified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0x52392cffc5e89c319da73370bd6af1c64a440da2` | non_address_book | unknown | unknown | verified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0x53b901955e2b3aae663cebc04a0c7fbcb46d3615` | non_address_book | unknown | unknown | verified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0x7309bffd55cc487def967ef5291eec9d65b5cea8` | non_address_book | unknown | unknown | verified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0x7eee22621cab698d19733ab3702e421d938f9efe` | non_address_book | unknown | unknown | verified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0x9a92b930a59a5361cecd8965f8533aa3008a1477` | non_address_book | unknown | unknown | verified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0xa196f542c44057dba571a2cfb24a9cd37e628306` | non_address_book | unknown | unknown | verified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0xaea0b9ddb87c57b97291ec3341c36fb8790d5734` | non_address_book | unknown | unknown | verified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0xd4a8a5617220f169444d91ac223b511c1924b643` | non_address_book | unknown | unknown | verified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| unverified unclassified | UnnamedContract<br>`0x01adf1b4a72b2c523f7f05e71a09ff103705c9b8` | non_address_book | unknown | unknown | unverified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| unverified unclassified | UnnamedContract<br>`0x03c8e5b2f90e13e356a1fc51961fa258bcf631d8` | non_address_book | unknown | unknown | unverified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| unverified unclassified | UnnamedContract<br>`0x0c617fc8fd80957bf3fd5e7ee26ca5143e90235d` | non_address_book | unknown | unknown | unverified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| unverified unclassified | UnnamedContract<br>`0x0cec539edbae8dcbd3402978ddca8d08acd7ab2d` | non_address_book | unknown | unknown | unverified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| unverified unclassified | UnnamedContract<br>`0x0dff219cf53bf64dc39d6a8551c9dc0e65b966dd` | non_address_book | unknown | unknown | unverified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| unverified unclassified | UnnamedContract<br>`0x0faf67d16da185b143a5946d0a1d34860a2e884c` | non_address_book | unknown | unknown | unverified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| unverified unclassified | UnnamedContract<br>`0x11ee70bf955203cc72d70bf8b9db73d4dece6ec7` | non_address_book | unknown | unknown | unverified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| unverified unclassified | UnnamedContract<br>`0x15ec65425cc38ca82fb76be1c090a655a50858f5` | non_address_book | unknown | unknown | unverified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| unverified unclassified | UnnamedContract<br>`0x17ba3512a42373ef8fc8824cdd2374b4851180ea` | non_address_book | unknown | unknown | unverified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| unverified unclassified | UnnamedContract<br>`0x195ac6c9aa3ca737c51ea3bbbd639599e83b6159` | non_address_book | unknown | unknown | unverified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| unverified unclassified | UnnamedContract<br>`0x1fc85816583d73898e7a5d5ce4934bb589f80ad3` | non_address_book | unknown | unknown | unverified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| unverified unclassified | UnnamedContract<br>`0x295d8cfa5f9cdb102ae80f59d758e9a9f33fd0be` | non_address_book | unknown | unknown | unverified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| unverified unclassified | UnnamedContract<br>`0x2ba9e50c8a3b728052860b4e0f55780c3b6f300a` | non_address_book | unknown | unknown | unverified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| unverified unclassified | UnnamedContract<br>`0x2c456d1011c51ff6f22e6bdba878da4b13e40824` | non_address_book | unknown | unknown | unverified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| unverified unclassified | UnnamedContract<br>`0x2c6978a0503e81e26e3aff6ade45ba1f5d12b4a2` | non_address_book | unknown | unknown | unverified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| unverified unclassified | UnnamedContract<br>`0x2ef58fd24101619b33ba6b1c18199909fd1d38c2` | non_address_book | unknown | unknown | unverified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| unverified unclassified | UnnamedContract<br>`0x308c22454a9af006d409d900358cc8c16a5dccff` | non_address_book | unknown | unknown | unverified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| unverified unclassified | UnnamedContract<br>`0x3392fbe3ad85bc4798c86acfb6efde30cee692b7` | non_address_book | unknown | unknown | unverified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| unverified unclassified | UnnamedContract<br>`0x339f42cd876579e7ed31ebfd31d67a93a668f74b` | non_address_book | unknown | unknown | unverified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| unverified unclassified | UnnamedContract<br>`0x34b0bd5cc04ca6ae907ac1e07141c2ad948679b6` | non_address_book | unknown | unknown | unverified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| unverified unclassified | UnnamedContract<br>`0x3d03dbc66370acbeeacd1c821f02b2dfdef6e259` | non_address_book | unknown | unknown | unverified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| unverified unclassified | UnnamedContract<br>`0x3e1402ac0ef78390cac295c6713ae0b887d7749d` | non_address_book | unknown | unknown | unverified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| unverified unclassified | UnnamedContract<br>`0x443ec402bec44da7138a54413b6e09037cf9cf41` | non_address_book | unknown | unknown | unverified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| unverified unclassified | UnnamedContract<br>`0x446e64a0a627c29df90eb7400a0e57d22f82e95e` | non_address_book | unknown | unknown | unverified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| unverified unclassified | UnnamedContract<br>`0x4724adf1278ac1ecf7b70db7f551286d858356fa` | non_address_book | unknown | unknown | unverified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| unverified unclassified | UnnamedContract<br>`0x47f6d98438026b23fb60706c3041e53cce45258a` | non_address_book | unknown | unknown | unverified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| unverified unclassified | UnnamedContract<br>`0x48f27475d0f7cb9c28a3161525b0e9c3d38280af` | non_address_book | unknown | unknown | unverified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| unverified unclassified | UnnamedContract<br>`0x4a114b600f19c599e77e6f1181c2fd8bbaf39a2c` | non_address_book | unknown | unknown | unverified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| unverified unclassified | UnnamedContract<br>`0x4bca9cc1d6aa81fe295d51a30cd1dbf4c902f482` | non_address_book | unknown | unknown | unverified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| unverified unclassified | UnnamedContract<br>`0x4ed9beb8ee5987c1273d5fd3830e8d0d0ff1f526` | non_address_book | unknown | unknown | unverified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| unverified unclassified | UnnamedContract<br>`0x567e7e01db38131d36267bcd5917c03863296b04` | non_address_book | unknown | unknown | unverified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| unverified unclassified | UnnamedContract<br>`0x59044e92beecd12900a1b2cefe0f3b9388fb5c53` | non_address_book | unknown | unknown | unverified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| unverified unclassified | UnnamedContract<br>`0x5a64e6c0b5b3e7653291aadcdaefa0a053760c56` | non_address_book | unknown | unknown | unverified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| unverified unclassified | UnnamedContract<br>`0x5c76583b78110a8d3fc149529793a8ada231d147` | non_address_book | unknown | unknown | unverified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| unverified unclassified | UnnamedContract<br>`0x67b46290771c441eedbd1a040a3e0ebe1435f14e` | non_address_book | unknown | unknown | unverified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| unverified unclassified | UnnamedContract<br>`0x692db42f84bb6ce6a6ea62495c804c71aa6887a7` | non_address_book | unknown | unknown | unverified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| unverified unclassified | UnnamedContract<br>`0x6995860ce559d820fca1f5440524d8aa77add3e9` | non_address_book | unknown | unknown | unverified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| unverified unclassified | UnnamedContract<br>`0x6c563835b6208e0482336d404f5cad572bebe76b` | non_address_book | unknown | unknown | unverified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| unverified unclassified | UnnamedContract<br>`0x6cc28c81fc9e387b6ed9fdeec32dd5cbac26b0bd` | non_address_book | unknown | unknown | unverified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| unverified unclassified | UnnamedContract<br>`0x6d4bed60fe9a3a3ab5e4a20807035dddeaa1fe88` | non_address_book | unknown | unknown | unverified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| unverified unclassified | UnnamedContract<br>`0x6d713b7fc4639d30503cd14c00039a31efaf0c72` | non_address_book | unknown | unknown | unverified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| unverified unclassified | UnnamedContract<br>`0x6e6175c993abd316090e8af94b74476fd92ce1a7` | non_address_book | unknown | unknown | unverified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| unverified unclassified | UnnamedContract<br>`0x7059137b388b2fd11bd863e6c8b80f4f19edd1a8` | non_address_book | unknown | unknown | unverified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| unverified unclassified | UnnamedContract<br>`0x78408511e0d81732970a44ebca4bacff96540dda` | non_address_book | unknown | unknown | unverified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| unverified unclassified | UnnamedContract<br>`0x7ae5b1385faddf0db5af1834a63c3ba5ace22221` | non_address_book | unknown | unknown | unverified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| unverified unclassified | UnnamedContract<br>`0x7aebfcecec91a1d42ad0869d1dae396c96f93c40` | non_address_book | unknown | unknown | unverified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| unverified unclassified | UnnamedContract<br>`0x7bb98a0f7c366777e7d4832136c085e0205fc052` | non_address_book | unknown | unknown | unverified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| unverified unclassified | UnnamedContract<br>`0x7e41296cc8d695d9703fa99cbe1ce5f68fb69545` | non_address_book | unknown | unknown | unverified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| unverified unclassified | UnnamedContract<br>`0x8504f0c5bfe3cba5462d69a2e0bce8a65a92188d` | non_address_book | unknown | unknown | unverified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| unverified unclassified | UnnamedContract<br>`0x8523e6cdc1c7f3c92d5ea13c9c9b9943732e30fd` | non_address_book | unknown | unknown | unverified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| unverified unclassified | UnnamedContract<br>`0x8a3ae556e8108ae310be7888e2f136c611d75298` | non_address_book | unknown | unknown | unverified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| unverified unclassified | UnnamedContract<br>`0x8bb9cc60f830c1b78cdb94295fa756c28cfaa4d5` | non_address_book | unknown | unknown | unverified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| unverified unclassified | UnnamedContract<br>`0x8e0170370401463024c3343fcbd21a5723c97873` | non_address_book | unknown | unknown | unverified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| unverified unclassified | UnnamedContract<br>`0x91b50ec30ef0e403994dd5ee638512dcb5b4993b` | non_address_book | unknown | unknown | unverified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| unverified unclassified | UnnamedContract<br>`0x94ee0203fead86f7a00e908bfcf0e8b38b47e481` | non_address_book | unknown | unknown | unverified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| unverified unclassified | UnnamedContract<br>`0x961c1d7005c9191b70e1cd505f80fc06a2d07494` | non_address_book | unknown | unknown | unverified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| unverified unclassified | UnnamedContract<br>`0x9629a082a638115c0867768e09ca78a02d5b8d01` | non_address_book | unknown | unknown | unverified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| unverified unclassified | UnnamedContract<br>`0x979ed6507b81cd50f1273fb1f811734804449581` | non_address_book | unknown | unknown | unverified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| unverified unclassified | UnnamedContract<br>`0x996a3deb54775e87b0edb043d09130ba83a187bf` | non_address_book | unknown | unknown | unverified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| unverified unclassified | UnnamedContract<br>`0x9bfd18b597e69f38c326e4b898aa9699468341d8` | non_address_book | unknown | unknown | unverified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| unverified unclassified | UnnamedContract<br>`0x9c5dc509425afd1deb21292b503089cd0c8badda` | non_address_book | unknown | unknown | unverified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| unverified unclassified | UnnamedContract<br>`0x9e91eef8135e4c30d3c02a1f369284938804a694` | non_address_book | unknown | unknown | unverified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| unverified unclassified | UnnamedContract<br>`0xa4dab5a7a2304faa580a35f781e82bdfb4ab4253` | non_address_book | unknown | unknown | unverified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| unverified unclassified | UnnamedContract<br>`0xa5cf7dbd4d2f6f2f964be27d5ca048adaa5afd6c` | non_address_book | unknown | unknown | unverified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| unverified unclassified | UnnamedContract<br>`0xa7896e6e9d701d85166a6ee7d298078aa184469b` | non_address_book | unknown | unknown | unverified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| unverified unclassified | UnnamedContract<br>`0xa827b9cdfb366ae1822ed4f9853b2e9e42c8f275` | non_address_book | unknown | unknown | unverified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| unverified unclassified | UnnamedContract<br>`0xab51cb53898e2b164c269c9955c2f03a684ff6e6` | non_address_book | unknown | unknown | unverified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| unverified unclassified | UnnamedContract<br>`0xac5c856ceb258b9128961c392b7ab04eac8f9f5d` | non_address_book | unknown | unknown | unverified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| unverified unclassified | UnnamedContract<br>`0xb208c0e74318ca522a8a5a67d6c92ba01259fd84` | non_address_book | unknown | unknown | unverified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| unverified unclassified | UnnamedContract<br>`0xb36424da9f709dd3d3ddbd85a0e89d194c638116` | non_address_book | unknown | unknown | unverified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| unverified unclassified | UnnamedContract<br>`0xb64754d06d7fa94f443629717c6560d35680e6b4` | non_address_book | unknown | unknown | unverified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| unverified unclassified | UnnamedContract<br>`0xb7e97cba2e86c8ccda81e1e9b0041914566a3ccb` | non_address_book | unknown | unknown | unverified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| unverified unclassified | UnnamedContract<br>`0xb9c4dbe6caed88ca406cf2a395aeef49ac3ad137` | non_address_book | unknown | unknown | unverified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| unverified unclassified | UnnamedContract<br>`0xbc67c7c5d597714d0b55cd7e43e7c80d302abc71` | non_address_book | unknown | unknown | unverified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| unverified unclassified | UnnamedContract<br>`0xbeb921f177b482cf1e6c935adffe97a1198a0bcd` | non_address_book | unknown | unknown | unverified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| unverified unclassified | UnnamedContract<br>`0xc2e0cb53121293321bafc9ffc0d6a1aed72ebba4` | non_address_book | unknown | unknown | unverified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| unverified unclassified | UnnamedContract<br>`0xc4ba95b0174c1512100c8ab5e7573b70e0e0d254` | non_address_book | unknown | unknown | unverified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| unverified unclassified | UnnamedContract<br>`0xc5a3be9a51060d10c9164fd7f24d332537eada5a` | non_address_book | unknown | unknown | unverified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| unverified unclassified | UnnamedContract<br>`0xc664775f196838b63cd465f1335aa843263f3341` | non_address_book | unknown | unknown | unverified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| unverified unclassified | UnnamedContract<br>`0xc67aa9b90c5a72ca5bdc3d0fd2a70dfe82c849de` | non_address_book | unknown | unknown | unverified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| unverified unclassified | UnnamedContract<br>`0xc821756abe653f7d221d25e9a27629318bf928ab` | non_address_book | unknown | unknown | unverified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| unverified unclassified | UnnamedContract<br>`0xce6c2b3f5c774b835c1e9dbd4c25921b0807306f` | non_address_book | unknown | unknown | unverified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| unverified unclassified | UnnamedContract<br>`0xd0130f8a2e63d68e91366a45c6a27a7e87934d8c` | non_address_book | unknown | unknown | unverified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| unverified unclassified | UnnamedContract<br>`0xd09fa8267f328e9b69aeed12f06aba04a5be2d06` | non_address_book | unknown | unknown | unverified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| unverified unclassified | UnnamedContract<br>`0xd32001f964405549951511063df11548b8b9e302` | non_address_book | unknown | unknown | unverified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| unverified unclassified | UnnamedContract<br>`0xd4cc2ca9836a3282abc63c7e0fe3a092db1a7612` | non_address_book | unknown | unknown | unverified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| unverified unclassified | UnnamedContract<br>`0xd6f8b2bb097158df4d5e3c048f40ace708a4f9bb` | non_address_book | unknown | unknown | unverified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| unverified unclassified | UnnamedContract<br>`0xd751f694737bfb06b17d47e39a0fec83f7172252` | non_address_book | unknown | unknown | unverified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| unverified unclassified | UnnamedContract<br>`0xda6605dad9293328aa9ce6097ace8dfb7b6b4887` | non_address_book | unknown | unknown | unverified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| unverified unclassified | UnnamedContract<br>`0xdfaf6fb7438605ef9a388f414be89e5377c42e02` | non_address_book | unknown | unknown | unverified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| unverified unclassified | UnnamedContract<br>`0xe0d6b2eab2d793b0320ff002e6477372afdb0e5f` | non_address_book | unknown | unknown | unverified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |
| unverified unclassified | UnnamedContract<br>`0xed871d77bafb1bad042166e1bd69fa7c30984f6a` | non_address_book | unknown | unknown | unverified | n/a | `0x61c20e2e1ded20856754321d585f7ad28e4d6b27` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [skynet.certik.com/projects/mmfinance](https://skynet.certik.com/projects/mmfinance) | CertiK | Audit | 2021-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | medium |
| [paladinsec.co/projects/mmfinance](https://paladinsec.co/projects/mmfinance) | Paladin | Audit | 2022-01 | stale | Direct | address | no match | 0 | 0 | 0 | 2 | high |
| [security-audit-certificate.html](https://www.slowmist.com/en/security-audit-certificate.html?id=765046458bfbfbdf114db4689625c2fd215c08f5175545d8b4bdc01cc4e140d3) | SlowMist | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3064] skynet.certik.com/projects/mmfinance — no match: Extracted from Audited Files section; only two files listed. Date from 'Last Audit was delivered on 12/22/2021'.
- [3065] paladinsec.co/projects/mmfinance — no match: Extracted from the audit report's 'Contracts Audited' section. The report date is ambiguous: 'Completed 30 Jan 2022' is used as the audit completion date. Note: The report also mentions 'Commissioned 27 Dec 2022' which seems inconsistent; likely a typo. The earlier date (2022) is used as it matches the completion date.
- [3066] security-audit-certificate.html — no match: The provided text is only a header/introduction and does not contain any contract names, scope section, or audit date.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| skynet.certik.com/projects/mmfinance | IERC20 | unmatched — not counted | — | Audited Files/SHA256 listing | no |
| skynet.certik.com/projects/mmfinance | ICrocERC20 | unmatched — not counted | — | Audited Files/SHA256 listing | no |
| paladinsec.co/projects/mmfinance | MeerkatRouter | unmatched — not counted | — | listed in scope | no |
| paladinsec.co/projects/mmfinance | MeerkatFactory | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| polygon | `0xa2b417088d63400d211a4d5eb3c4c5363f834764` | MasterMeerkat | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x7cfb780010e9c861e03bcbc7ac12e013137d47a5` | MeerkatFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x1aec8ff1c39c34338327a32bbb35011432614172` | MeerkatPair | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x384c1b95027b73a98fe31ea5b4b7b031b9ddd724` | MeerkatPair | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x8ab47799cb0d49aeb9e3a47c369813a3a3236790` | MeerkatPair | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x8c26252b14f9b071585b81b240c4ae2176e8cd3c` | MeerkatPair | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xa789324e64268c5385ea7678435fa83532705b0f` | MeerkatPair | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xb965c131f1c48d89b1760860b782d2acdf87273b` | MeerkatPair | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xd15eb8710e28c23993968e671807d572189cc86e` | MeerkatPair | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x51aba405de2b25e5506dea32a6697f450ceb1a17` | MeerkatRouter02 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x22a31bd4cb694433b6de19e0acc2899e553e9481` | MeerkatToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 52 |
| upstream | 0 |
| standard_library | 21 |
| needs_review | 158 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 4 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1, low=1, medium=1
- Match method counts: n/a

Zero-match audit list:

- [3064] skynet.certik.com/projects/mmfinance
- [3065] paladinsec.co/projects/mmfinance
- [3066] security-audit-certificate.html

Fork inheritance lineage and inherited audits are included when available.
