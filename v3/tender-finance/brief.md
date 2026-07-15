# Agentic Audit Brief: Tender Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Tender Finance (`tender-finance`)
- Website: [https://www.tenderfi.org/](https://www.tenderfi.org/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, metis
- Contract surface: 122 unique implementations (277 raw deployments)
- Coverage basis: 0/13 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,113,583.22
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Tender Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 15 contract row(s) across arbitrum, metis. Structural roles: 12 unclassified, 3 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 15
- Structural roles: unclassified (12), core (3)
- Contract kinds: contract (15)
- Detected standards: erc20 (2)
- Frameworks: openzeppelin (3)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 15 contracts are derived from known codebases. 15 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x670f22...7c1549`, chain 1088)
- UnnamedContract (`0x798752...e3fc02`, chain 1088)
- UnnamedContract (`0xb01f3d...b91658`, chain 1088)
- UnnamedContract (`0xd18601...b8819d`, chain 1088)
- BonusDistributor (`0x9aaac9...deb182`, chain 42161)
- RewardDistributor (`0x221ad5...ffd10d`, chain 42161)
- RewardDistributor (`0x4230b9...70eba3`, chain 42161)
- RewardRouterV2 (`0xe881db...8c96ad`, chain 42161)
- RewardTracker (`0x0597c6...522932`, chain 42161)
- RewardTracker (`0x6c6f25...69539c`, chain 42161)
- RewardTracker (`0xe5538b...f09e91`, chain 42161)
- TND (`0xc47d97...d2798c`, chain 42161)
- TransparentUpgradeableProxy (`0xbc2ae6...4a42fb`, chain 42161)
- TransparentUpgradeableProxy (`0xc5888f...b2bb0e`, chain 42161)
- VesterV2 (`0x432d51...1e1c6d`, chain 42161)

## Contract Surface Quality

- Logic-topography rows: 15; live-surface rows included: 15 (15 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 17/22 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/13 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 17 own, 5 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 100 discovered implementations shown in the inventory but excluded from coverage (5 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 39
- Confirmed-live implementations: 17 of 122 unique; 105 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/63
- Verified + Unaudited implementations: 63
- Verified by bytecode match: 0
- Unverified implementations: 59
- Unique implementations: 122
- Raw deployments: 277
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (63)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AlgebraPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe9d3e6...2a6741` | ⚠️ Unaudited |
| BonusDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x865ee8...522bf9` | ⚠️ Unaudited |
| BonusDistributor | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-393871 | `0x9aaac9...deb182` | ⚠️ Unaudited |
| Burner | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-393868 | `0x3e0b30...2011f9` | ⚠️ Unaudited |
| Burner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd9f5b3...092eaa` | ⚠️ Unaudited |
| CErc20Compounded | token | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0xff2073...43c943` | ⚠️ Unaudited |
| CErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 30 deployments: arbitrum `0x058945...2d61b3`; arbitrum `0x07155e...0d2370`; arbitrum `0x1400d8...8ae3f3`; arbitrum `0x2310eb...67aa81`; arbitrum `0x29d096...ac9af9`; arbitrum `0x2d7226...d90f98`; arbitrum `0x2d85f8...bca0c0`; arbitrum `0x335372...174643`; arbitrum `0x3ceb54...0b1fdd`; arbitrum `0x4da255...5f147c`; arbitrum `0x5a99dc...77d5ca`; arbitrum `0x644b7b...379f77`; arbitrum `0x677fa2...184a5c`; arbitrum `0x6d692b...74c7e7`; arbitrum `0x73c6cc...01953b`; arbitrum `0x7e8948...1781d5`; arbitrum `0x8025d3...65596d`; arbitrum `0x963aed...96f991`; arbitrum `0x9746b7...f80203`; arbitrum `0xa3d21b...a70bca`; arbitrum `0xacfa67...0f5c93`; arbitrum `0xc60a10...bb33ce`; arbitrum `0xc6c105...d18932`; arbitrum `0xc99661...32dad6`; arbitrum `0xcd2b51...d5d24f`; arbitrum `0xcffa8f...8aad4a`; arbitrum `0xd40872...94c843`; arbitrum `0xd47049...8b3c2c`; arbitrum `0xe03e85...ce915d`; arbitrum `0xfd97e0...8fe492` | ⚠️ Unaudited |
| CErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x0bdf3c...83b5f1`; arbitrum `0xfebfcc...9cf024` | ⚠️ Unaudited |
| CErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x1446f9...bcc7e9`; arbitrum `0x53f859...363b00` | ⚠️ Unaudited |
| CErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x1cfa3f...4168d2`; arbitrum `0xb1087a...c8fc85` | ⚠️ Unaudited |
| CErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 5 | arbitrum | n/a | 6 deployments: arbitrum `0x29d4cf...36801f`; arbitrum `0x750956...6b30bf`; arbitrum `0x863566...999b58`; arbitrum `0x8765b2...a34c6e`; arbitrum `0xcaa772...1cf731`; arbitrum `0xe30a6c...d9e2f1` | ⚠️ Unaudited |
| CErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x2aca71...7ee4f8`; arbitrum `0xe9d91a...9e17cb` | ⚠️ Unaudited |
| CErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x2d4491...7f3b6f`; arbitrum `0x3fd112...0798bd` | ⚠️ Unaudited |
| CErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x916b44...b70779`; arbitrum `0x974c10...f1a488` | ⚠️ Unaudited |
| CErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x93c029...613da0`; arbitrum `0xa79f8c...eb0a55` | ⚠️ Unaudited |
| CErc20DelegateGmx | token | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x20a676...7ad497`; arbitrum `0x628650...13ac5a` | ⚠️ Unaudited |
| CErc20DelegateGmx | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 18 deployments: arbitrum `0x24cfb5...d643b3`; arbitrum `0x2867fc...cd0fb4`; arbitrum `0x2cb608...4b75e6`; arbitrum `0x385b41...e1f899`; arbitrum `0x42ecb1...710f27`; arbitrum `0x4c8b54...3f352a`; arbitrum `0x746641...61417a`; arbitrum `0x8d700b...b2ca37`; arbitrum `0x8f944c...e043b7`; arbitrum `0x91fbec...c72f78`; arbitrum `0x979636...0525e1`; arbitrum `0x9bed1e...3463e9`; arbitrum `0x9d7ec3...dfa557`; arbitrum `0x9e092b...28b536`; arbitrum `0xbd14f1...856999`; arbitrum `0xcb0781...e64f16`; arbitrum `0xcfb0a6...ed5c56`; arbitrum `0xdae3f5...a7cab8` | ⚠️ Unaudited |
| CErc20DelegateGmx | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x323d21...7c2f9f`; arbitrum `0x60d332...589d91` | ⚠️ Unaudited |
| CErc20DelegateGmx | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x3d05be...dd1281`; arbitrum `0xb88a54...12a7fb` | ⚠️ Unaudited |
| CErc20DelegateGmx | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x82c335...f7b1df`; arbitrum `0xa476a9...bf30e5` | ⚠️ Unaudited |
| CErc20DelegateGmx | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0xdaa56a...11b0b6`; arbitrum `0xe15b37...237531` | ⚠️ Unaudited |
| CErc20Delegator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 18 deployments: arbitrum `0x038a8c...3ab722`; arbitrum `0x0920be...332d5d`; arbitrum `0x102517...efc607`; arbitrum `0x1b55b5...4c9bf8`; arbitrum `0x27ce5a...83d6b0`; arbitrum `0x29da69...8bab66`; arbitrum `0x439ff1...d743c9`; arbitrum `0x4d7751...0060c5`; arbitrum `0x5722ca...e9b7a3`; arbitrum `0x75f622...956ae0`; arbitrum `0x7a18c4...0481ca`; arbitrum `0x85419e...c989fe`; arbitrum `0x8abc48...bb72dc`; arbitrum `0xa2f156...4f44c9`; arbitrum `0xbcd79c...1f413b`; arbitrum `0xd0af14...0fb2fd`; arbitrum `0xd86f7f...9d8e6e`; arbitrum `0xdbc82b...d1639b` | ⚠️ Unaudited |
| CErc20DelegatorGmx | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2afeee...2cb9fd` | ⚠️ Unaudited |
| CErc20DelegatorMlp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd8d66f...d4ab2c` | ⚠️ Unaudited |
| CEther | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: arbitrum `0x070690...fcdcdf`; arbitrum `0x3effa4...2446cc`; arbitrum `0x593b3e...2fe48c`; arbitrum `0xf8fda6...fcc909` | ⚠️ Unaudited |
| Comptroller | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x0e9109...81ad70`; arbitrum `0x49ea2c...925db3` | ⚠️ Unaudited |
| Comptroller | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x1ffddc...6b4d2e`; arbitrum `0xeed247...808f8e` | ⚠️ Unaudited |
| Comptroller | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x421313...596e8e`; arbitrum `0xaeae92...578230` | ⚠️ Unaudited |
| Comptroller | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x4f2a26...f749b5`; arbitrum `0x60437f...067033` | ⚠️ Unaudited |
| Comptroller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x5d5732...303d54`; arbitrum `0xb7c1a9...eeb278` | ⚠️ Unaudited |
| EsTND | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 5 deployments: arbitrum `0x411380...9159c9`; arbitrum `0x4c3d0b...ee2af7`; arbitrum `0x6893ef...6c9719`; arbitrum `0xd49f6e...d736ed`; arbitrum `0xf518be...53100d` | ⚠️ Unaudited |
| EsTND | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-393875 | `0xff9bd4...654ab2` | ⚠️ Unaudited |
| GMXPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 10 deployments: arbitrum `0x614157...89272d`; arbitrum `0x626fee...509cea`; arbitrum `0x67c661...25e4b2`; arbitrum `0x6a7aa5...2912f2`; arbitrum `0x769d2c...602245`; arbitrum `0x7aa74f...152fdc`; arbitrum `0xd0b469...f49704`; arbitrum `0xd550a3...d83eae`; arbitrum `0xda6516...12c696`; arbitrum `0xfc2e8e...3b89ea` | ⚠️ Unaudited |
| HandledImpl | unknown | non_address_book | non_address_book_inventory (excluded) | 14 | arbitrum | n/a | 15 deployments: arbitrum `0x068485...c48b4e`; arbitrum `0x0a2f8b...6cf391`; arbitrum `0x242f91...f3fac5`; arbitrum `0x27846a...69b9ab`; arbitrum `0x4180f3...6842c3`; arbitrum `0x4a5806...bf7e31`; arbitrum `0x80aefb...74ceb9`; arbitrum `0x87d06b...7a1c35`; arbitrum `0x8b44d3...2b3a71`; arbitrum `0xb28718...2f6299`; arbitrum `0xb5dbdb...c91529`; arbitrum `0xb60ef5...cdcb9c`; arbitrum `0xc571c3...874a76`; arbitrum `0xc6121d...523539`; arbitrum `0xe4843e...f8ea16` | ⚠️ Unaudited |
| HandledImpl | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: arbitrum `0x41dcf4...4fde06`; arbitrum `0x948f56...44c96c`; arbitrum `0x96d413...4d72c3` | ⚠️ Unaudited |
| InstantVester | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x57437f...27c46f` | ⚠️ Unaudited |
| InstantVester | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-393877 | 2 deployments: arbitrum `0xbc2ae6...4a42fb`; arbitrum `0xc2378a...9d8df6` | ⚠️ Unaudited |
| JumpRateModelV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 11 deployments: arbitrum `0x18cf79...2be777`; arbitrum `0x49c67d...51be13`; arbitrum `0x598efc...7d3093`; arbitrum `0x8fa1b2...79781d`; arbitrum `0x98a0bf...9d4385`; arbitrum `0x9deb4b...c0c6be`; arbitrum `0xa3223e...462cc8`; arbitrum `0xa738b4...538158`; arbitrum `0xab75d9...72b051`; arbitrum `0xc2933e...229595`; arbitrum `0xe05e6d...615259` | ⚠️ Unaudited |
| JumpRateModelV2Gmx | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: arbitrum `0x5d9eaf...c69794`; arbitrum `0x81216b...1c5354`; arbitrum `0xc892cc...51e92c`; arbitrum `0xd10f2d...c0bf7c` | ⚠️ Unaudited |
| MintableBaseToken | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-393866 | `0x0d2ebf...9e3718` | ⚠️ Unaudited |
| MintableBaseToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x417d08...8d2433`; arbitrum `0x68407f...0a161c` | ⚠️ Unaudited |
| PriceHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: arbitrum `0x01928d...3eec1d`; arbitrum `0x5a6497...727116`; arbitrum `0xd8090c...65129f` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5b01ea...67970b` | ⚠️ Unaudited |
| PythOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x45e4bb...1fe962`; arbitrum `0x4853c1...8668da` | ⚠️ Unaudited |
| RewardDistributor | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-393867 | `0x221ad5...ffd10d` | ⚠️ Unaudited |
| RewardDistributor | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-393869 | `0x4230b9...70eba3` | ⚠️ Unaudited |
| RewardDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: arbitrum `0x68129f...bec2f9`; arbitrum `0x882a7c...b6997c`; arbitrum `0x936af2...4532cc` | ⚠️ Unaudited |
| RewardRouterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: arbitrum `0x21dd36...ec9662`; arbitrum `0x53fdd4...2016fd`; arbitrum `0x78d5a3...2a9e2f`; arbitrum `0xd9105a...4e9938` | ⚠️ Unaudited |
| RewardRouterV2 | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-393874 | `0xe881db...8c96ad` | ⚠️ Unaudited |
| RewardTracker | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-393865 | `0x0597c6...522932` | ⚠️ Unaudited |
| RewardTracker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: arbitrum `0x6bbbe5...837392`; arbitrum `0x6d295c...dc16b7`; arbitrum `0x7a644e...aedf30`; arbitrum `0xe3e721...098bb2` | ⚠️ Unaudited |
| RewardTracker | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-393870 | `0x6c6f25...69539c` | ⚠️ Unaudited |
| RewardTracker | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-393873 | `0xe5538b...f09e91` | ⚠️ Unaudited |
| TenderPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 5 deployments: arbitrum `0x0c2612...4d77d2`; arbitrum `0x4e8105...4637ba`; arbitrum `0x899635...2171db`; arbitrum `0xa11bad...6fd5c6`; arbitrum `0xc2dd40...150aec` | ⚠️ Unaudited |
| TND | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-393872 | `0xc47d97...d2798c` | ⚠️ Unaudited |
| TndOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x65785d...63b667` | ⚠️ Unaudited |
| TokenVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0xbc22f6...39c195`; arbitrum `0xe356ab...eb139d` | ⚠️ Unaudited |
| Unitroller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc825a1...97b8bf` | ⚠️ Unaudited |
| Vester | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: arbitrum `0x0980be...5aafa3`; arbitrum `0x2da159...4c5c7e`; arbitrum `0xaffcd2...955547` | ⚠️ Unaudited |
| VesterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x342ecc...524105`; arbitrum `0x80a62b...555d64` | ⚠️ Unaudited |
| VesterV2 | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-393876 | 2 deployments: arbitrum `0x432d51...1e1c6d`; arbitrum `0xc5888f...b2bb0e` | ⚠️ Unaudited |
| VesterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x438be5...382db0`; arbitrum `0x7f7186...f96027` | ⚠️ Unaudited |
| WithdrawLever | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: arbitrum `0x4e24a6...6dd929`; arbitrum `0x62e3a1...a492f6`; arbitrum `0xd16c3a...7f59a6` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (59)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | metis | unit-393856 | `0x08ee35...bce688` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | metis | unit-393857 | `0x0fb0d2...96db22` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | metis | unit-393858 | `0x183205...1b43f4` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | metis | unit-393859 | `0x2a0ddd...739025` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | metis | unit-393860 | `0x670f22...7c1549` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | metis | unit-393861 | `0x798752...e3fc02` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | metis | unit-393862 | `0xa1377d...dd6288` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | metis | unit-393863 | `0xb01f3d...b91658` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | metis | unit-393864 | `0xd18601...b8819d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x02c4f9...65ab64` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x034be4...1848b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x04ff5f...fcab76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0f5bdb...652a3c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x107761...1fb2b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x11cc44...3c89d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x142b1a...b67d02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x169939...007e40` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x16b044...22efc6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1b3436...b51177` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x21495b...416b8e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x29cb0f...1a26cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2e43be...0842b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2f207b...22a0ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x371329...0be572` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x43eb42...db3477` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x458f8b...cbeeb8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x45e6dc...b99935` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x46dae2...92148e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x484dfe...a37ed5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4ca3b1...85926b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4df9b2...be7473` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4f2385...0c4ec1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x52ec6c...45738b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5d281b...dd1413` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5d39f4...547c72` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5e7b4d...7635fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x62ab9b...0935c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x65e62a...4d6597` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6af1c1...7a0f1a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6d9bd6...d8586f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6f3446...fc2846` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6f55a9...7118bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7b6901...e6e43b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x827d52...f3c852` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x846e46...77817b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x89229b...e581c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x914f92...5d0883` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x92c2aa...c349b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xaa11b9...fb05a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbe983e...5f2e4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbfb06b...d965ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc4eb30...40294f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcb3bba...5a1275` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd233a6...198bcf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xde0f22...94b8a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xde52bf...0df05a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe86fd9...d4c1f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf7d4db...51c312` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfabadc...24b876` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [odex.vip](http://odex.vip/?sign=6100531bc2e5bf8b94dd7a7b87b53577) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3118] odex.vip — no match: The provided text contains only the word 'Armors' and dashes, which is insufficient to identify any contracts or audit details.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | `0x9aaac9...deb182` | BonusDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x3e0b30...2011f9` | Burner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xff9bd4...654ab2` | EsTND | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xbc2ae6...4a42fb` | InstantVester | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x0d2ebf...9e3718` | MintableBaseToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x221ad5...ffd10d` | RewardDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x4230b9...70eba3` | RewardDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xe881db...8c96ad` | RewardRouterV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x0597c6...522932` | RewardTracker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x6c6f25...69539c` | RewardTracker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xe5538b...f09e91` | RewardTracker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xc47d97...d2798c` | TND | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x432d51...1e1c6d` | VesterV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 62 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 59 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: low=1
- Match method counts: n/a

Zero-match audit list:

- [3118] odex.vip

Fork inheritance lineage and inherited audits are included when available.
