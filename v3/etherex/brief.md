# Agentic Audit Brief: Etherex

## Export Authority

- Production state: **published scope**
- Raw selected rows: 18 across 3 audit(s)
- Eligible audit results: 4 (3 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Etherex (`etherex`)
- Website: [https://etherex.finance/](https://etherex.finance/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: linea
- Contract surface: 85 unique implementations (143 raw deployments)
- Coverage basis: 13/29 confirmed own live verified implementations (44.8%); conservative 44.8% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,361,034.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Etherex. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 31 contract row(s) across linea. Structural roles: 22 supporting, 6 core, 2 infra, 1 unclassified. 5 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 31
- Structural roles: supporting (22), core (6), infra (2), unclassified (1)
- Contract kinds: contract (30), abstract (1)
- Detected standards: erc165 (4), erc20 (3), multicall (3), erc721 (2), accesscontrol (1), erc1967proxy (1), erc20permit (1), erc4626 (1), ownable (1), pausable (1)
- Frameworks: openzeppelin (22), openzeppelin-upgradeable (2), permit2 (1), solmate (1)
- Upgradeable-pattern rows: 5

## Fork Analysis

6 of 29 contracts are derived from known codebases. 23 contracts have no detected origin.

### Forked Contracts

**ClGaugeFactory** (`0x499aed38bdafd972e1cd2926d2b9088547dd8fcb`, chain 59144)
Origin: autofinance (`0x499aed38bdafd972e1cd2926d2b9088547dd8fcb`)
Containment: 100.0% - 25 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**PairFactory** (`0xc0b920f6f1d6122b8187c031554dc8194f644592`, chain 59144)
Origin: autofinance (`0xc0b920f6f1d6122b8187c031554dc8194f644592`)
Containment: 100.0% - 16 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**RamsesV3Factory** (`0xae334f70a7fc44fcc2df9e6a37bc032497cf80f1`, chain 59144)
Origin: autofinance (`0xae334f70a7fc44fcc2df9e6a37bc032497cf80f1`)
Containment: 100.0% - 18 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**REX33** (`0xe4eeb461ad1e4ef8b8ef71a33694ccd84af051c4`, chain 59144)
Origin: autofinance (`0xc4b578ffc2403b3911e233dc939157147f31509c`)
Containment: 100.0% - 20 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**VoteModule** (`0xedd7cbc9c47547d0b552d5bc2be76135f49c15b1`, chain 59144)
Origin: autofinance (`0xf70dc8cf16ee9a68249f35c36cd1c1ba9c631ee4`)
Containment: 100.0% - 20 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**XRex** (`0xc93b315971a4f260875103f5da84cb1e30f366cc`, chain 59144)
Origin: autofinance (`0x58d034c3c22851e9dc8fc2f07055659cf9146997`)
Containment: 100.0% - 24 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

### Original Contracts (no fork detected - full audit scope)

- Etherex (`0xefd81eec32b9a8222d1842ec3d99c7532c31e348`, chain 59144)
- FeeCollector (`0x532c15d1803f565ad37b77f5b20d9e3a4254e0f3`, chain 59144)
- FeeDistributorFactory (`0xfde48794f3ea7f26cd2b00f078366455b1e6b7bf`, chain 59144)
- FeeRecipientFactory (`0x75430c78a65bfb7dcdf89a3f0daa8da36402d6a7`, chain 59144)
- Minter (`0x0b6d3b42861ee8abfcaac818033694e758ecc3eb`, chain 59144)
- MixedRouteQuoterV1 (`0x59037f2c0337a5150c0cd08cb2df684e043712a6`, chain 59144)
- NonfungibleTokenPositionDescriptor (`0xfc65c6308765ebbb0d87df8b6502674b868453c4`, chain 59144)
- ProxyAdmin (`0x3950d9b43c77cf5e165ee9aa5c59efdc5a542dc3`, chain 59144)
- ProxyAdmin (`0xdc78e9400ba73dad459b6179b06e1e70853d384e`, chain 59144)
- Quoter (`0xb593fa9d853ad89bfcf77c9a22d24936774fe335`, chain 59144)
- QuoterV2 (`0xe660c95e17884b6c81b01445efc24556f8aba037`, chain 59144)
- RamsesV3PoolDeployer (`0x80dca113b33ce4da3a7aac15c2e62fc6d6c7bec8`, chain 59144)
- RamsesV3PositionManager (`0xb56542bf1822c3fea210d920c8ab0fcaabcd1798`, chain 59144)
- Router (`0x32db39c56c171b4c96e974ddede8e42498929c54`, chain 59144)
- SafeProxy (`0x007e783be0f271510ef919357466c122fd539cce`, chain 59144)
- SafeProxy (`0xde4b22eb9f9c2c55e72e330c87663b28e9d388f7`, chain 59144)
- SwapRouter (`0x8be024b5c546b5d45cbb23163e1a4dca8fa5052a`, chain 59144)
- TickLens (`0x432a5219320d4ae3ebf33a84ae9944f655e8e2b8`, chain 59144)
- TimeLock (`0xf9a15373c36f50e0dea03e80a568f03392d89944`, chain 59144)
- TransparentUpgradeableProxy (`0x683035188e3670fda1def2a7aa5742dea28ed5f3`, chain 59144)
- TransparentUpgradeableProxy (`0x942117ec0458a8aa08669e94b52001bd43f889c1`, chain 59144)
- UniswapInterfaceMulticall (`0x1211fb02d3c61fd576e76675ce9cb38230ee5b3e`, chain 59144)
- UniversalRouter (`0x85974429677c2a701af470b82f3118e74307826e`, chain 59144)

## Contract Surface Quality

- Logic-topography rows: 31; live-surface rows included: 31 (29 live, 2 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 29/32 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 13/29 (44.8%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 29 own, 2 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 54 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 11
- Confirmed-live implementations: 29 of 85 unique; 56 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 13/68
- Verified + Unaudited implementations: 55
- Verified by bytecode match: 0
- Unverified implementations: 17
- Unique implementations: 85
- Raw deployments: 143
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-10 (fresh)
- Audit staleness (calendar age): 1 fresh, 3 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 13 match-unverified
- Tier 1 coverage: 44.8% (Code4rena, ConsenSys Diligence, Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Spearbit | Tier 1 | 13 | 19.1% | 2025-10 |
| Code4rena | Tier 1 | 3 | 4.4% | 2024-10 |
| Consensys Diligence | Tier 1 | 2 | 2.9% | 2024-08 |

## Contract Surface

### ✅ Verified + Audited (13)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AccessHub | unknown | project_anchor | own_supporting | 1 | linea | unit-385023 | `0x683035188e3670fda1def2a7aa5742dea28ed5f3` | ✅ Audited |
| Etherex | unknown | project_anchor | own_supporting | 0 | linea | unit-385017 | `0xefd81eec32b9a8222d1842ec3d99c7532c31e348` | ✅ Audited |
| FeeCollector | unknown | project_anchor | own_supporting | 0 | linea | unit-385001 | `0x532c15d1803f565ad37b77f5b20d9e3a4254e0f3` | ✅ Audited |
| FeeDistributorFactory | operational_periphery | project_anchor | own_supporting | 0 | linea | unit-385020 | `0xfde48794f3ea7f26cd2b00f078366455b1e6b7bf` | ✅ Audited |
| GaugeV3 | operational_periphery | project_anchor | own_supporting | 1 | linea | unit-385022 | `0x499aed38bdafd972e1cd2926d2b9088547dd8fcb` | ✅ Audited |
| Minter | operational_periphery | project_anchor | own_supporting | 0 | linea | unit-384996 | `0x0b6d3b42861ee8abfcaac818033694e758ecc3eb` | ✅ Audited |
| RamsesV3Factory | registry | project_anchor | own_supporting | 0 | linea | unit-385008 | `0xae334f70a7fc44fcc2df9e6a37bc032497cf80f1` | ✅ Audited |
| RamsesV3PoolDeployer | core_logic | project_anchor | own_supporting | 0 | linea | unit-385005 | `0x80dca113b33ce4da3a7aac15c2e62fc6d6c7bec8` | ✅ Audited |
| RamsesV3PositionManager | governance | project_anchor | own_supporting | 1 | linea | unit-385026 | `0xb56542bf1822c3fea210d920c8ab0fcaabcd1798` | ✅ Audited |
| REX33 | unknown | project_anchor | own_supporting | 0 | linea | unit-385014 | `0xe4eeb461ad1e4ef8b8ef71a33694ccd84af051c4` | ✅ Audited |
| VoteModule | unknown | project_anchor | own_supporting | 0 | linea | unit-385016 | `0xedd7cbc9c47547d0b552d5bc2be76135f49c15b1` | ✅ Audited |
| Voter | unknown | project_anchor | own_supporting | 1 | linea | unit-385025 | `0x942117ec0458a8aa08669e94b52001bd43f889c1` | ✅ Audited |
| XRex | unknown | project_anchor | own_supporting | 0 | linea | unit-385011 | `0xc93b315971a4f260875103f5da84cb1e30f366cc` | ✅ Audited |

### ⚠️ Verified + Unaudited (55)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AccessHub | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 26 deployments: linea `0x00cc296010664ff909aa90795a919046d1423b67`; linea `0x09aaa525f9c4e5c5e0ac05a6b994d77e21fbea2a`; linea `0x09d128e0a38afc9846a9e7ede7d4b76601fc72a3`; linea `0x0cc5a720004de614ff515d073f362509dd2d666c`; linea `0x0d8ff344dd3fef004813ff7865e528c63de66422`; linea `0x3fd55d05fed2fb9c463b598bc52ab4b5f5d6d071`; linea `0x44f5512a453177c686bfcdef62b94ebfbf22f508`; linea `0x51a2690132cde2b66a3346932465b89ec3e80006`; linea `0x55cab4d2cd21e4fd5abde5667c490b87144b40b1`; linea `0x582f3f017ba12f142edf56310bdcbf95cc031c7a`; linea `0x5aae85c146bca912f1f7fb43ba3aaa54fbda036b`; linea `0x5e2f4d1b9ed30cdad1cff169562b5356f5e4b4e7`; linea `0x6a0673814258a7739241f77540744235321c99c1`; linea `0x7026f9a84b0727ccf310298065010ab3d18dd004`; linea `0x7ac7935df815efe423df95c8a52c35da558c9026`; linea `0x8af8a09161c4d0ee7e25f778a059dd7bbe71b734`; linea `0x8e394fb7e802a780958af4215498efd4875b49e1`; linea `0x93948c03a47b2a812dab7b36c40f982c6b4351ed`; linea `0x967a7a875a7ac07eb30fd9f6e9353dd4c537854c`; linea `0x9ce2fbc74e04c8b294435308838893ff95709346`; linea `0xb6139621e96f000e7a6e44d6d6196eb46d31a7b6`; linea `0xb66d0cd955345c270d5e9162e583bc33849fd40b`; linea `0xbb100bf42997e0d61e89b4a51ef68d93fd008e31`; linea `0xd434fe96a2aa23b0fabb07c1f837ff85c006805e`; linea `0xe345ada88f71c1f8215530c862fc6277b5ddc6bc`; linea `0xe6d0d3b6c26c568983ee0f0b6745c33bfacb5298` | ⚠️ Unaudited |
| AutomatedFeeNotifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 8 deployments: linea `0x2e5c9e4146f57c5dc6dcb88a86bdf5e8087c10df`; linea `0x4bc655bce615312fb703fdc3314e39570e6cb1f3`; linea `0x4dd0c28941e9edcca2ed559d4f15768e55ea2a4c`; linea `0x5ad9ec38ba13e493746a48a2bb7680818db0e48c`; linea `0xb0b55dbc4449fb5bcc127e81e3dece0035af5939`; linea `0xbf074374ec7307596963384f36fd2e514f780d36`; linea `0xd7cb73ffdea0da4d2b3551a30cf75f531a81ac2c`; linea `0xfd29fadd2c1edd0eb222a31d579c7367d7cf80e7` | ⚠️ Unaudited |
| BribeHolder | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xf7a8b3770f661059f4ea0d79ad7fe8d642f9ea9b` | ⚠️ Unaudited |
| Etherex | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 2 deployments: linea `0xbe8b8dcbc1e5cda63c667e76d539dbf5d369f11d`; linea `0xf0c89c8104707d2698288da2724b05881e0bd9eb` | ⚠️ Unaudited |
| FeeCollector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x51a2a0b162d27254e30473b7072d95f4b37f21a1` | ⚠️ Unaudited |
| FeeDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xc2b256f2977b4c7eff6d39e35dbe245efd767b7c` | ⚠️ Unaudited |
| FeeDistributorFactory | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x61c56ad143e364dacbb60fc901f7993e9e6f3f6f` | ⚠️ Unaudited |
| FeeLiquidator | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 2 deployments: linea `0x3add8307bcc1b6c757cf1d7664b2f37c9bba039b`; linea `0xe789668d8ccf7bac2ee852415e5b55487a98e856` | ⚠️ Unaudited |
| FeeRecipientFactory | operational_periphery | project_anchor | own_supporting | 0 | linea | unit-385004 | `0x75430c78a65bfb7dcdf89a3f0daa8da36402d6a7` | ⚠️ Unaudited |
| FrogAirdrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 2 deployments: linea `0x97b1b762ae52e1fe4a96dd6db6f15e117ee38912`; linea `0xbe9d8709a2f5a7d809de09f6eb48b600673a78c3` | ⚠️ Unaudited |
| GaugeFactory | operational_periphery | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | linea | unit-385012 | `0xd766d9da469c4a7d325b66ffcf33139650c4a200` | ⚠️ Unaudited |
| GaugeV3 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 5 deployments: linea `0x18068c050d237d46310f59f40559bd0c6b3b0b25`; linea `0x84b4654d0451b697b4764eacfbd4a9fdfa04201b`; linea `0x9270d3ccd5af75dfefcd4a4f79aa2ca8dbf81a74`; linea `0x9d5c0eea4de82aae5b3f71080c65b40806dc9cb4`; linea `0xeba9eba1be848fbcdcb073dd788e8453d1eacb40` | ⚠️ Unaudited |
| KingdomLocker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xf9edb34cd302e9bc3e9443beb5eb237cc463fd87` | ⚠️ Unaudited |
| LGEHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 2 deployments: linea `0x4c4190d22fedd723d7eba37149977767feb224ce`; linea `0x6b43ac8f075d325d9b5c8765fe6970dc857c8812` | ⚠️ Unaudited |
| MevModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 2 deployments: linea `0x614f116c0e64190512d4764b4c2122f9e2703abd`; linea `0xdf278799d1b15c6cecc5543c17f4821869088d5b` | ⚠️ Unaudited |
| MevModule | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | `0x90fc1f74cde75122a17db99c11597bf593b4940d` | ⚠️ Unaudited |
| MinimalizedFeePusher | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 2 deployments: linea `0x1b4e17d4263a7f751d8965ae514293c0461c4efb`; linea `0x98af61cfd44b5f5c7f4a79ff3492981a3aeb4a8c` | ⚠️ Unaudited |
| Minter | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 3 deployments: linea `0x462e26ddf2de188bc75afe74e6a31b2c56d2a966`; linea `0x76da798f9813be02d3635eca40ebd3db04da9f8f`; linea `0xf8396260bdb72b6708b293db3842cdced90b6255` | ⚠️ Unaudited |
| MixedRouteQuoterV1 | periphery | project_anchor | own_supporting | 0 | linea | unit-385002 | `0x59037f2c0337a5150c0cd08cb2df684e043712a6` | ⚠️ Unaudited |
| NileLGE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x5b93eb4c26d30688f1bd6eb6a9b3da3540d5a605` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | linea | unit-385024 | `0xa04a9f0a961f8fcc4a94bcf53e676b236cbb2f58` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptor | token | project_anchor | own_supporting | 0 | linea | unit-385019 | `0xfc65c6308765ebbb0d87df8b6502674b868453c4` | ⚠️ Unaudited |
| Oracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x389df9430143880ddb13bdd5fd30daf2d57e7d55` | ⚠️ Unaudited |
| Pair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x8418e91cf8cbf7dd37b6492e23bec75d0f4d81d8` | ⚠️ Unaudited |
| PairFactory | registry | project_anchor | own_supporting | 0 | linea | unit-385010 | `0xc0b920f6f1d6122b8187c031554dc8194f644592` | ⚠️ Unaudited |
| Position | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x2832e19221631e7082926e2bb354497613bf9d6f` | ⚠️ Unaudited |
| ProtocolActions | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x34413f3cddafef7db46f92296a7cea444b3140fd` | ⚠️ Unaudited |
| ProxyAdmin | governance | project_anchor | own_supporting | 0 | linea | unit-384999 | `0x3950d9b43c77cf5e165ee9aa5c59efdc5a542dc3` | ⚠️ Unaudited |
| ProxyAdmin | governance | project_anchor | own_supporting | 0 | linea | unit-385013 | `0xdc78e9400ba73dad459b6179b06e1e70853d384e` | ⚠️ Unaudited |
| Quoter | periphery | project_anchor | own_supporting | 0 | linea | unit-385009 | `0xb593fa9d853ad89bfcf77c9a22d24936774fe335` | ⚠️ Unaudited |
| QuoterV2 | periphery | project_anchor | own_supporting | 0 | linea | unit-385015 | `0xe660c95e17884b6c81b01445efc24556f8aba037` | ⚠️ Unaudited |
| RamsesSwapHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x222da5dc77c0fa93bd079f76a0b3a880e51e158e` | ⚠️ Unaudited |
| RamsesTreasuryHelper | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 2 deployments: linea `0x020079c6cb277ec22306a45e7d4eaefd24d3200e`; linea `0x0efaaec1b2e11ee89c0a29ebdcde846c8631693b` | ⚠️ Unaudited |
| RamsesTreasuryHelper | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | `0x15325a2ec4bf164d47cf48d5d6a9edda385636a5` | ⚠️ Unaudited |
| RamsesV3Pool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x90e8a5b881d211f418d77ba8978788b62544914b` | ⚠️ Unaudited |
| RamsesV3PositionManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x4e710feb1b2e784233893af659442e4739272bfb` | ⚠️ Unaudited |
| Revivoor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x5da9735b19cdd050b6ada1b31ef52ae704c5a3e9` | ⚠️ Unaudited |
| RewardValidator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | 2 deployments: linea `0x7930ec744ff2a62c34ac730afd9e7cc462b1e0fc`; linea `0xe576004e25750d9ec8eb493d0a3684948fc0a97c` | ⚠️ Unaudited |
| REX33 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 4 deployments: linea `0x312b67a8de4291ce2c3628d24fa62eb04f433ec0`; linea `0xbf42f61a1f176c43cb6fca7ea5afb55d59639dff`; linea `0xc4b578ffc2403b3911e233dc939157147f31509c`; linea `0xccfc11f393a3c7f79ad09c5be2f408215ef15749` | ⚠️ Unaudited |
| Router | adapter | project_anchor | own_supporting | 0 | linea | unit-384998 | `0x32db39c56c171b4c96e974ddede8e42498929c54` | ⚠️ Unaudited |
| SafeL2 | unknown | project_anchor | own_supporting | 1 | linea | unit-385021 | `0xde4b22eb9f9c2c55e72e330c87663b28e9d388f7` | ⚠️ Unaudited |
| SafeProxy | unknown | project_anchor | own_supporting | 0 | linea | unit-384995 | `0x007e783be0f271510ef919357466c122fd539cce` | ⚠️ Unaudited |
| SwapRouter | adapter | project_anchor | own_supporting | 0 | linea | unit-385007 | `0x8be024b5c546b5d45cbb23163e1a4dca8fa5052a` | ⚠️ Unaudited |
| TickLens | periphery | project_anchor | own_supporting | 0 | linea | unit-385000 | `0x432a5219320d4ae3ebf33a84ae9944f655e8e2b8` | ⚠️ Unaudited |
| TimeLock | governance | project_anchor | own_supporting | 0 | linea | unit-385018 | `0xf9a15373c36f50e0dea03e80a568f03392d89944` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | linea | n/a | `0xf2643190116ed2a9c3cfbd3c489a60d4a51bb458` | ⚠️ Unaudited |
| UniswapInterfaceMulticall | periphery | project_anchor | own_supporting | 0 | linea | unit-384997 | `0x1211fb02d3c61fd576e76675ce9cb38230ee5b3e` | ⚠️ Unaudited |
| UniversalAirdrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xae16b93d29aadccb9fc616aabfbca95682d13dcf` | ⚠️ Unaudited |
| UniversalRouter | adapter | project_anchor | own_supporting | 0 | linea | unit-385006 | `0x85974429677c2a701af470b82f3118e74307826e` | ⚠️ Unaudited |
| VeClaim | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 2 deployments: linea `0x9dec69a9d329b8431070774e299a54c0eb269cad`; linea `0xce65f3dbf8c98d9b250b3540868c3923bd2d4c6d` | ⚠️ Unaudited |
| VoteModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xf70dc8cf16ee9a68249f35c36cd1c1ba9c631ee4` | ⚠️ Unaudited |
| Voter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 8 deployments: linea `0x1dac11c6578c3a6ddffcb3bf1741cf3d11a94046`; linea `0x4961f781f6b9c3e795be0e3e550917291afc7679`; linea `0x5f26a63548f583f2c01669388aeeef5f9506fc19`; linea `0x706e4a3ebe40b017ec568d1fecbf20271df157e1`; linea `0x891d28ea942bb2c48808967af8b579591d45141c`; linea `0xa0b937aa848877b98a2c2d799ec3fc10fed4f116`; linea `0xade917f16f0aaef80f1ff5939635b18b629d56d1`; linea `0xe8e8e833f59d8e1fbd7caabe0e766f16a22f8468` | ⚠️ Unaudited |
| Voter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | 2 deployments: linea `0x56ebcffb07b86b87d1d344e5c483b18d07dd256f`; linea `0x982c01a16dd46670c1be8cead75699815fcaa125` | ⚠️ Unaudited |
| XRex | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x58d034c3c22851e9dc8fc2f07055659cf9146997` | ⚠️ Unaudited |
| YieldFarmingIndex | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x0449ecb33b40555bd957190c25eccce2cdb6b631` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (17)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x05733c9d96d67f7a572846be2d7105327fec3289` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x09666eaf650dc52cece84b1bcd2dd78997d239c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x0ed01d983d65a1d624d1942ec268656987750acc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x1ddf722c565ed8e9b6918a6bea34e9825a7944b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x35e755fac2e275629ff17647dcfad50f6bad5a69` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x3f91ddca18fc4ece913556012a5567ca013e7ce7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x4717509f8e89fa019bfe25191297dc1e19eb3e34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x4f919b2f681add2c0080cfbb1f3dd1ebc5af1415` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x7601dfc5c4ccac975e8b72f44f7dc5f8c07497b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x762e6134583f7ca0d0303ef82bda780d6a7ecb16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x88c9879e18abbd6ec40ee6be215756a442d56756` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x971634201e37854ea0c72fc652e9b1dbd4461ee0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xc0cd56e070e25913d631876218609f2191da1c2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xcd73c96e91ad14b4e243e49d5c0eea954e635d61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xd0dad85f058f2299c3dac8a3440cfd02d51c3f5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xf458a2aa188fc043f9b0ef4c729b36f20f7f3d8e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xfb8561b4d836225d2c82da00a7d4c753e6c4950d` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [cantina.xyz/portfolio/48fc9b98-ded3-43fa-80a2-5aedb3a5a51e](https://cantina.xyz/portfolio/48fc9b98-ded3-43fa-80a2-5aedb3a5a51e) | Spearbit | Audit | 2025-10 | fresh | Direct | n/a | matched | 14 | 5 | 0 | 9 | n/a |
| [cantina.xyz/portfolio/98695d75-ee7d-4e1c-aa96-6379f73c5b2c](https://cantina.xyz/portfolio/98695d75-ee7d-4e1c-aa96-6379f73c5b2c) | Spearbit | Audit | 2024-12 | aging | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [diligence.security/audits/2024/08/ramses-v3](https://diligence.security/audits/2024/08/ramses-v3) | Consensys Diligence | Audit | 2024-08 | aging | Direct | n/a | matched | 2 | 0 | 0 | 15 | n/a |
| [code4rena.com/reports/2024-10-ramses-exchange](https://code4rena.com/reports/2024-10-ramses-exchange) | Code4rena | Contest | 2024-10 | aging | Direct | n/a | matched | 3 | 1 | 0 | 3 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2724] cantina.xyz/portfolio/48fc9b98-ded3-43fa-80a2-5aedb3a5a51e — matched: No reason recorded
- [2725] cantina.xyz/portfolio/98695d75-ee7d-4e1c-aa96-6379f73c5b2c — no match: No scope section or contract names found in the provided text.
- [11903] diligence.security/audits/2024/08/ramses-v3 — matched: No reason recorded
- [11904] code4rena.com/reports/2024-10-ramses-exchange — matched: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| cantina.xyz/portfolio/48fc9b98-ded3-43fa-80a2-5aedb3a5a51e | AccessHub | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x683035188e3670fda1def2a7aa5742dea28ed5f3` — deployed 2025-07-25 04:42:22+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| cantina.xyz/portfolio/48fc9b98-ded3-43fa-80a2-5aedb3a5a51e | ClGaugeFactory | own proxy deployment | ClGaugeFactory (proxy) (selected) `0x499aed38bdafd972e1cd2926d2b9088547dd8fcb` — deployed 2025-08-04 06:55:36+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| cantina.xyz/portfolio/48fc9b98-ded3-43fa-80a2-5aedb3a5a51e | ClGaugeFactoryStorage | unmatched — not counted | — | — | no |
| cantina.xyz/portfolio/48fc9b98-ded3-43fa-80a2-5aedb3a5a51e | Etherex | own contract | Etherex (selected) `0xefd81eec32b9a8222d1842ec3d99c7532c31e348` — deployed 2025-08-04 06:55:26+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| cantina.xyz/portfolio/48fc9b98-ded3-43fa-80a2-5aedb3a5a51e | FeeCollector | own contract | FeeCollector (selected) `0x532c15d1803f565ad37b77f5b20d9e3a4254e0f3` — deployed 2025-08-07 06:39:28+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| cantina.xyz/portfolio/48fc9b98-ded3-43fa-80a2-5aedb3a5a51e | FeeDistributor | unmatched — not counted | — | — | no |
| cantina.xyz/portfolio/48fc9b98-ded3-43fa-80a2-5aedb3a5a51e | FeeDistributorFactory | own contract | FeeDistributorFactory (selected) `0xfde48794f3ea7f26cd2b00f078366455b1e6b7bf` — deployed 2025-08-04 06:55:36+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| cantina.xyz/portfolio/48fc9b98-ded3-43fa-80a2-5aedb3a5a51e | Gauge | unmatched — not counted | — | — | no |
| cantina.xyz/portfolio/48fc9b98-ded3-43fa-80a2-5aedb3a5a51e | GaugeV3 | own proxy deployment | ClGaugeFactory (proxy) (selected) `0x499aed38bdafd972e1cd2926d2b9088547dd8fcb` — deployed 2025-08-04 06:55:36+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| cantina.xyz/portfolio/48fc9b98-ded3-43fa-80a2-5aedb3a5a51e | Minter | own contract | Minter (selected) `0x0b6d3b42861ee8abfcaac818033694e758ecc3eb` — deployed 2025-08-04 06:55:22+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| cantina.xyz/portfolio/48fc9b98-ded3-43fa-80a2-5aedb3a5a51e | NonfungiblePositionManager | unmatched — not counted | — | — | no |
| cantina.xyz/portfolio/48fc9b98-ded3-43fa-80a2-5aedb3a5a51e | PositionKey | unmatched — not counted | — | — | no |
| cantina.xyz/portfolio/48fc9b98-ded3-43fa-80a2-5aedb3a5a51e | REX33 | own contract | REX33 (selected) `0xe4eeb461ad1e4ef8b8ef71a33694ccd84af051c4` — deployed 2025-08-11 22:21:55+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| cantina.xyz/portfolio/48fc9b98-ded3-43fa-80a2-5aedb3a5a51e | RamsesTreasuryHelper | unmatched — not counted | — | — | no |
| cantina.xyz/portfolio/48fc9b98-ded3-43fa-80a2-5aedb3a5a51e | RamsesV3Factory | own contract | RamsesV3Factory (selected) `0xae334f70a7fc44fcc2df9e6a37bc032497cf80f1` — deployed 2025-07-25 04:42:24+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| cantina.xyz/portfolio/48fc9b98-ded3-43fa-80a2-5aedb3a5a51e | RamsesV3Pool | unmatched — not counted | — | — | no |
| cantina.xyz/portfolio/48fc9b98-ded3-43fa-80a2-5aedb3a5a51e | RamsesV3PoolDeployer | own contract | RamsesV3PoolDeployer (selected) `0x80dca113b33ce4da3a7aac15c2e62fc6d6c7bec8` — deployed 2025-07-25 04:42:24+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| cantina.xyz/portfolio/48fc9b98-ded3-43fa-80a2-5aedb3a5a51e | RamsesV3PositionManager | own proxy deployment | RamsesV3PositionManager (proxy) (selected) `0xb56542bf1822c3fea210d920c8ab0fcaabcd1798` — deployed 2025-12-12 22:22:04+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| cantina.xyz/portfolio/48fc9b98-ded3-43fa-80a2-5aedb3a5a51e | RewardValidator | unmatched — not counted | — | — | no |
| cantina.xyz/portfolio/48fc9b98-ded3-43fa-80a2-5aedb3a5a51e | VoteModule | own contract | VoteModule (selected) `0xedd7cbc9c47547d0b552d5bc2be76135f49c15b1` — deployed 2025-08-04 06:55:30+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| cantina.xyz/portfolio/48fc9b98-ded3-43fa-80a2-5aedb3a5a51e | Voter | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x942117ec0458a8aa08669e94b52001bd43f889c1` — deployed 2025-08-04 06:55:30+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| cantina.xyz/portfolio/48fc9b98-ded3-43fa-80a2-5aedb3a5a51e | VoterGovernanceActions | unmatched — not counted | — | — | no |
| cantina.xyz/portfolio/48fc9b98-ded3-43fa-80a2-5aedb3a5a51e | XRex | own contract | XRex (selected) `0xc93b315971a4f260875103f5da84cb1e30f366cc` — deployed 2025-08-04 06:55:30+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| diligence.security/audits/2024/08/ramses-v3 | IERC20Minimal | unmatched — not counted | — | — | no |
| diligence.security/audits/2024/08/ramses-v3 | IRamsesV3Factory | unmatched — not counted | — | — | no |
| diligence.security/audits/2024/08/ramses-v3 | IRamsesV3Pool | unmatched — not counted | — | — | no |
| diligence.security/audits/2024/08/ramses-v3 | IRamsesV3PoolActions | unmatched — not counted | — | — | no |
| diligence.security/audits/2024/08/ramses-v3 | IRamsesV3PoolDeployer | unmatched — not counted | — | — | no |
| diligence.security/audits/2024/08/ramses-v3 | IRamsesV3PoolDerivedState | unmatched — not counted | — | — | no |
| diligence.security/audits/2024/08/ramses-v3 | IRamsesV3PoolImmutables | unmatched — not counted | — | — | no |
| diligence.security/audits/2024/08/ramses-v3 | IRamsesV3PoolOwnerActions | unmatched — not counted | — | — | no |
| diligence.security/audits/2024/08/ramses-v3 | IRamsesV3PoolState | unmatched — not counted | — | — | no |
| diligence.security/audits/2024/08/ramses-v3 | Oracle | unmatched — not counted | — | — | no |
| diligence.security/audits/2024/08/ramses-v3 | PoolStorage | unmatched — not counted | — | — | no |
| diligence.security/audits/2024/08/ramses-v3 | Position | unmatched — not counted | — | — | no |
| diligence.security/audits/2024/08/ramses-v3 | ProtocolActions | unmatched — not counted | — | — | no |
| diligence.security/audits/2024/08/ramses-v3 | RamsesV3Factory | own contract | RamsesV3Factory (selected) `0xae334f70a7fc44fcc2df9e6a37bc032497cf80f1` — deployed 2025-07-25 04:42:24+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| diligence.security/audits/2024/08/ramses-v3 | RamsesV3Pool | unmatched — not counted | — | — | no |
| diligence.security/audits/2024/08/ramses-v3 | RamsesV3PoolDeployer | own contract | RamsesV3PoolDeployer (selected) `0x80dca113b33ce4da3a7aac15c2e62fc6d6c7bec8` — deployed 2025-07-25 04:42:24+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| diligence.security/audits/2024/08/ramses-v3 | Tick | unmatched — not counted | — | — | no |
| code4rena.com/reports/2024-10-ramses-exchange | FeeCollector | own contract | FeeCollector (selected) `0x532c15d1803f565ad37b77f5b20d9e3a4254e0f3` — deployed 2025-08-07 06:39:28+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| code4rena.com/reports/2024-10-ramses-exchange | GaugeV3 | own proxy deployment | ClGaugeFactory (proxy) (selected) `0x499aed38bdafd972e1cd2926d2b9088547dd8fcb` — deployed 2025-08-04 06:55:36+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| code4rena.com/reports/2024-10-ramses-exchange | NonfungiblePositionManager | unmatched — not counted | — | — | no |
| code4rena.com/reports/2024-10-ramses-exchange | Oracle | unmatched — not counted | — | — | no |
| code4rena.com/reports/2024-10-ramses-exchange | RamsesV3Factory | own contract | RamsesV3Factory (selected) `0xae334f70a7fc44fcc2df9e6a37bc032497cf80f1` — deployed 2025-07-25 04:42:24+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| code4rena.com/reports/2024-10-ramses-exchange | RamsesV3Pool | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| linea | `0x75430c78a65bfb7dcdf89a3f0daa8da36402d6a7` | FeeRecipientFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x59037f2c0337a5150c0cd08cb2df684e043712a6` | MixedRouteQuoterV1 | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0xfc65c6308765ebbb0d87df8b6502674b868453c4` | NonfungibleTokenPositionDescriptor | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0xc0b920f6f1d6122b8187c031554dc8194f644592` | PairFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0xb593fa9d853ad89bfcf77c9a22d24936774fe335` | Quoter | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0xe660c95e17884b6c81b01445efc24556f8aba037` | QuoterV2 | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x32db39c56c171b4c96e974ddede8e42498929c54` | Router | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x8be024b5c546b5d45cbb23163e1a4dca8fa5052a` | SwapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x432a5219320d4ae3ebf33a84ae9944f655e8e2b8` | TickLens | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0xf9a15373c36f50e0dea03e80a568f03392d89944` | TimeLock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x85974429677c2a701af470b82f3118e74307826e` | UniversalRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 62 |
| upstream | 1 |
| standard_library | 5 |
| needs_review | 17 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 19 own (6 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 27 unmatched
- Matched-own operational status: 19 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: low=1
- Match method counts: unique_name=18

Zero-match audit list:

- [2725] cantina.xyz/portfolio/98695d75-ee7d-4e1c-aa96-6379f73c5b2c

Fork inheritance lineage and inherited audits are included when available.
