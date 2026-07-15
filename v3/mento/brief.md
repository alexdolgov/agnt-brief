# Agentic Audit Brief: Mento

## Export Authority

- Production state: **published scope**
- Raw selected rows: 31 across 9 audit(s)
- Eligible audit results: 23 (9 matched; 14 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Mento (`mento`)
- Website: [https://www.mento.org/](https://www.mento.org/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: celo, ethereum
- Contract surface: 111 unique implementations (135 raw deployments)
- Coverage basis: 17/21 confirmed own live verified implementations (81.0%); conservative 81.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $13,334,653.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Mento. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 21 contract row(s) across celo. Structural roles: 11 core, 10 supporting. 2 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 21
- Structural roles: core (11), supporting (10)
- Contract kinds: contract (21)
- Detected standards: ownable (4), erc20 (2), erc165 (1), erc1967proxy (1), erc20permit (1), erc721 (1), pausable (1)
- Frameworks: openzeppelin (14), solady (13), openzeppelin-upgradeable (2)
- Upgradeable-pattern rows: 2

## Fork Analysis

5 of 77 contracts are derived from known codebases. 72 contracts have no detected origin.

### Forked Contracts

**ActivePool** (`0xa7873f...8473b2`, chain 42220)
Origin: liquity (`0xeb5a8c...b16afe`)
Containment: 100.0% - 26 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**AddressesRegistry** (`0xb3136d...fe0c6e`, chain 42220)
Origin: liquity (`0x8d733f...3aac54`)
Containment: 74.5% - 17 functions inherited
Centroid audit status: pending_validation

Additions (unaudited):
- gasToken()
- liquidityStrategy()

Removals (removed from original):
- BCR()
- CCR()
- LIQUIDATION_PENALTY_REDISTRIBUTION()
- LIQUIDATION_PENALTY_SP()
- MCR()
- SCR()

**BorrowerOperations** (`0x8ec9a8...943b8a`, chain 42220)
Origin: liquity (`0x372abd...46bc65`)
Containment: 97.5% - 39 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original):
- SCR()

**SortedTroves** (`0x46d0c9...12bf9b`, chain 42220)
Origin: liquity (`0xa25269...3063f4`)
Containment: 100.0% - 22 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**TroveManager** (`0xb38aef...3885c9`, chain 42220)
Origin: liquity (`0x7bcb64...76cf5a`)
Containment: 100.0% - 36 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x06346c...8aaa15`, chain 42220)
- UnnamedContract (`0x064d8b...cd74e9`, chain 42220)
- UnnamedContract (`0x0c0712...06dddb`, chain 42220)
- UnnamedContract (`0x0feba7...53228d`, chain 42220)
- UnnamedContract (`0x105d4a...c20d7b`, chain 42220)
- UnnamedContract (`0x1b78f6...143e37`, chain 42220)
- UnnamedContract (`0x247cb6...211663`, chain 42220)
- UnnamedContract (`0x2d5d7e...e8c1a5`, chain 42220)
- UnnamedContract (`0x303ed1...24ab39`, chain 42220)
- UnnamedContract (`0x34c5bb...485d73`, chain 42220)
- UnnamedContract (`0x3efad8...c5a2d0`, chain 42220)
- UnnamedContract (`0x420fbd...dee148`, chain 42220)
- UnnamedContract (`0x4255cf...853806`, chain 42220)
- UnnamedContract (`0x434563...d8850e`, chain 42220)
- UnnamedContract (`0x456a3d...53b0d0`, chain 42220)
- UnnamedContract (`0x462fe0...aaa19e`, chain 42220)
- UnnamedContract (`0x47036d...a59852`, chain 42220)
- UnnamedContract (`0x49349f...f9b5d9`, chain 42220)
- UnnamedContract (`0x4b6214...ce304a`, chain 42220)
- UnnamedContract (`0x4c3585...410bf6`, chain 42220)
- UnnamedContract (`0x4dbc33...87bf68`, chain 42220)
- UnnamedContract (`0x4e78bd...dcb985`, chain 42220)
- UnnamedContract (`0x70536e...f0de51`, chain 42220)
- UnnamedContract (`0x717550...f492f9`, chain 42220)
- UnnamedContract (`0x73f93d...f29a08`, chain 42220)
- UnnamedContract (`0x765de8...b1282a`, chain 42220)
- UnnamedContract (`0x777a82...6b4cad`, chain 42220)
- UnnamedContract (`0x7b2f7d...10adf6`, chain 42220)
- UnnamedContract (`0x8124b6...219311`, chain 42220)
- UnnamedContract (`0x815795...74c318`, chain 42220)
- UnnamedContract (`0x890db8...6e2147`, chain 42220)
- UnnamedContract (`0x8a567e...4041ea`, chain 42220)
- UnnamedContract (`0x8c0014...3fcb56`, chain 42220)
- UnnamedContract (`0x8cb051...b77f30`, chain 42220)
- UnnamedContract (`0x9380fa...ed4eb9`, chain 42220)
- UnnamedContract (`0xa0fb8b...ae4f0b`, chain 42220)
- UnnamedContract (`0xa3d754...58fd65`, chain 42220)
- UnnamedContract (`0xa472fb...c4383a`, chain 42220)
- UnnamedContract (`0xa849b4...07613b`, chain 42220)
- UnnamedContract (`0xaa6a9b...e31823`, chain 42220)
- UnnamedContract (`0xb285d4...3ddd2d`, chain 42220)
- UnnamedContract (`0xb55a79...ee131d`, chain 42220)
- UnnamedContract (`0xb910a7...671cdf`, chain 42220)
- UnnamedContract (`0xc16d23...1df5ff`, chain 42220)
- UnnamedContract (`0xc1b767...256059`, chain 42220)
- UnnamedContract (`0xc45ecf...892e20`, chain 42220)
- UnnamedContract (`0xcc5bb0...872a8a`, chain 42220)
- UnnamedContract (`0xccf663...a40746`, chain 42220)
- UnnamedContract (`0xcf7031...5b4ced`, chain 42220)
- UnnamedContract (`0xd8763c...d6ca73`, chain 42220)
- UnnamedContract (`0xdebed1...7550fb`, chain 42220)
- UnnamedContract (`0xe2702b...a76f71`, chain 42220)
- UnnamedContract (`0xe8537a...ab4787`, chain 42220)
- UnnamedContract (`0xefb849...7b7b33`, chain 42220)
- UnnamedContract (`0xfaea5f...3c7313`, chain 42220)
- UnnamedContract (`0xfd9651...93b57d`, chain 42220)
- BiPoolManagerProxy (`0x22d9db...4ec901`, chain 42220)
- CollateralRegistry (`0x1bedd4...a605fb`, chain 42220)
- CollSurplusPool (`0xfff48e...09d4b6`, chain 42220)
- DefaultPool (`0x95191e...8d0047`, chain 42220)
- GasPool (`0x8b61f9...79817b`, chain 42220)
- HintHelpers (`0xafd741...374d82`, chain 42220)
- MarketHoursBreaker (`0x0a18b8...4e0daf`, chain 42220)
- MentoToken (`0x7ff62f...77cfb6`, chain 42220)
- MultiTroveGetter (`0x78fd33...f8327f`, chain 42220)
- ReserveTroveFactory (`0x028594...9519e1`, chain 42220)
- Router (`0x486184...f9b6f6`, chain 42220)
- StableTokenCADProxy (`0xff4ab1...2b6325`, chain 42220)
- StableTokenV3 (`0x4b9b0e...e7a2a2`, chain 42220)
- TransparentUpgradeableProxy (`0x001bb6...80279c`, chain 42220)
- TroveNFT (`0x46273a...72c6b6`, chain 42220)
- VirtualPoolFactory (`0x22abd4...e5acb3`, chain 42220)

## Contract Surface Quality

- Logic-topography rows: 21; live-surface rows included: 21 (21 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 77/77 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 17/21 (81.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 77 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 34 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 3
- Confirmed-live implementations: 77 of 111 unique; 34 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 17/33
- Verified + Unaudited implementations: 16
- Verified by bytecode match: 0
- Unverified implementations: 78
- Unique implementations: 111
- Raw deployments: 135
- Audits discovered: 23 (23 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 9
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-02 (fresh)
- Audit staleness (calendar age): 3 fresh, 3 aging, 9 stale, 8 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 24 match-unverified
- Tier 1 coverage: 66.7% (ChainSecurity, Cyfrin, OpenZeppelin)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| ChainSecurity | Tier 1 | 14 | 42.4% | 2026-02 |
| 0xMacro | Tier 2 | 3 | 9.1% | 2024-03 |
| Cyfrin | Tier 1 | 1 | 3.0% | 2024-07 |
| OpenZeppelin | Tier 1 | 1 | 3.0% | 2021-02 |

## Contract Surface

### ✅ Verified + Audited (17)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ActivePool | core_logic | project_anchor | own_supporting | 0 | celo | unit-389143 | `0xa7873f...8473b2` | ✅ Audited |
| AddressesRegistry | registry | project_anchor | own_supporting | 0 | celo | unit-389148 | `0xb3136d...fe0c6e` | ✅ Audited |
| BiPoolManager | core_logic | project_anchor | own_supporting | 1 | celo | unit-389168 | `0x22d9db...4ec901` | ✅ Audited |
| BorrowerOperations | core_logic | project_anchor | own_supporting | 0 | celo | unit-389137 | `0x8ec9a8...943b8a` | ✅ Audited |
| CollateralRegistry | registry | project_anchor | own_supporting | 0 | celo | unit-389100 | `0x1bedd4...a605fb` | ✅ Audited |
| CollSurplusPool | core_logic | project_anchor | own_supporting | 0 | celo | unit-389166 | `0xfff48e...09d4b6` | ✅ Audited |
| DefaultPool | core_logic | project_anchor | own_supporting | 0 | celo | unit-389139 | `0x95191e...8d0047` | ✅ Audited |
| GasPool | core_logic | project_anchor | own_supporting | 0 | celo | unit-389134 | `0x8b61f9...79817b` | ✅ Audited |
| Locking | unknown | project_anchor | own_supporting | 1 | celo | unit-389167 | `0x001bb6...80279c` | ✅ Audited |
| MarketHoursBreaker | unknown | project_anchor | own_supporting | 0 | celo | unit-389095 | `0x0a18b8...4e0daf` | ✅ Audited |
| MentoToken | token | project_anchor | own_supporting | 0 | celo | unit-389129 | `0x7ff62f...77cfb6` | ✅ Audited |
| Router | adapter | project_anchor | own_supporting | 0 | celo | unit-389115 | `0x486184...f9b6f6` | ✅ Audited |
| SortedTroves | unknown | project_anchor | own_supporting | 0 | celo | unit-389113 | `0x46d0c9...12bf9b` | ✅ Audited |
| StableTokenV3 | token | project_anchor | own_supporting | 0 | celo | unit-389118 | `0x4b9b0e...e7a2a2` | ✅ Audited |
| TroveManager | governance | project_anchor | own_supporting | 0 | celo | unit-389149 | `0xb38aef...3885c9` | ✅ Audited |
| TroveNFT | token | project_anchor | own_supporting | 0 | celo | unit-389111 | `0x46273a...72c6b6` | ✅ Audited |
| VirtualPoolFactory | registry | project_anchor | own_supporting | 0 | celo | unit-389101 | `0x22abd4...e5acb3` | ✅ Audited |

### ⚠️ Verified + Unaudited (16)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Accounts | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | 3 deployments: celo `0x0fe151...67ef53`; celo `0x565677...e2b98c`; celo `0xbac4a3...05f603` | ⚠️ Unaudited |
| AttestationsProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | 18 deployments: celo `0x2496fd...8e9a3d`; celo `0x252b03...5f1649`; celo `0x30b3c1...0595ac`; celo `0x3a4936...edb3f4`; celo `0x488deb...6c8fa6`; celo `0x4a241b...877da9`; celo `0x65e25c...799411`; celo `0x673f19...74eecb`; celo `0x68da81...504785`; celo `0x93d52a...a0ecf7`; celo `0xb53ce2...d8d96a`; celo `0xc834e7...359afd`; celo `0xcc6517...9e8fbe`; celo `0xdadd05...6f9303`; celo `0xdd944d...99f451`; celo `0xeaaf55...bc9149`; celo `0xf114c7...f5406a`; celo `0xff2ba5...c9fd2d` | ⚠️ Unaudited |
| Election | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | 2 deployments: celo `0x169c94...3009bc`; celo `0x3db69c...9f6f28` | ⚠️ Unaudited |
| EpochManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x91e35c...dfc535` | ⚠️ Unaudited |
| EpochRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | 2 deployments: celo `0x4cadba...562aba`; celo `0x9dc549...f050d9` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | non_address_book | standard_proxy_or_library (excluded) | 1 | celo | n/a | `0x876477...9e9ae1` | ⚠️ Unaudited |
| GoldToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | 2 deployments: celo `0x04a182...c7edb2`; celo `0xb16516...b2c19d` | ⚠️ Unaudited |
| Governance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | 2 deployments: celo `0x40bca4...1824e6`; celo `0xf51d27...7a215d` | ⚠️ Unaudited |
| GovernanceSlasher | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xb1b7b6...c51e9e` | ⚠️ Unaudited |
| HintHelpers | periphery | project_anchor | own_supporting | 0 | celo | unit-389146 | `0xafd741...374d82` | ⚠️ Unaudited |
| IntegerSortedLinkedList | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xa86051...0d047c` | ⚠️ Unaudited |
| MultiSig | governance | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | 2 deployments: celo `0x68e231...ee3903`; celo `0xad52b8...14e7fc` | ⚠️ Unaudited |
| MultiTroveGetter | unknown | project_anchor | own_supporting | 0 | celo | unit-389127 | `0x78fd33...f8327f` | ⚠️ Unaudited |
| ReserveTroveFactory | registry | project_anchor | own_supporting | 0 | celo | unit-389092 | `0x028594...9519e1` | ⚠️ Unaudited |
| SafeProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xd3d2e5...2137e1` | ⚠️ Unaudited |
| StableTokenCADProxy | token | project_anchor | own_supporting | 0 | celo | unit-389165 | `0xff4ab1...2b6325` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (78)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x03e39a...7d1089` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-389093 | `0x06346c...8aaa15` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-389094 | `0x064d8b...cd74e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x066f67...bd25f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x08a4b5...f0bd29` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-389096 | `0x0c0712...06dddb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x0cb6fd...42422f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-389097 | `0x0feba7...53228d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-389098 | `0x105d4a...c20d7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x120c00...49e892` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-389099 | `0x1b78f6...143e37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x1e3d01...42ba5f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-389102 | `0x247cb6...211663` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-389103 | `0x2d5d7e...e8c1a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x2dad1c...64f261` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-389104 | `0x303ed1...24ab39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x30584e...9f3f7d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-389105 | `0x34c5bb...485d73` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-389106 | `0x3efad8...c5a2d0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-389107 | `0x420fbd...dee148` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-389108 | `0x4255cf...853806` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-389109 | `0x434563...d8850e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-389110 | `0x456a3d...53b0d0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-389112 | `0x462fe0...aaa19e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-389114 | `0x47036d...a59852` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-389116 | `0x49349f...f9b5d9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-389117 | `0x4b6214...ce304a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-389119 | `0x4c3585...410bf6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-389120 | `0x4dbc33...87bf68` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-389121 | `0x4e78bd...dcb985` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x4efa94...8bc05e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x55f3b4...ecb381` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x65534a...043372` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-389122 | `0x70536e...f0de51` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-389123 | `0x717550...f492f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x72306f...72c33d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-389124 | `0x73f93d...f29a08` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-389125 | `0x765de8...b1282a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-389126 | `0x777a82...6b4cad` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-389128 | `0x7b2f7d...10adf6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-389130 | `0x8124b6...219311` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-389131 | `0x815795...74c318` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-389132 | `0x890db8...6e2147` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-389133 | `0x8a567e...4041ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x8bc96d...272e59` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-389135 | `0x8c0014...3fcb56` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-389136 | `0x8cb051...b77f30` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-389138 | `0x9380fa...ed4eb9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-389140 | `0xa0fb8b...ae4f0b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-389141 | `0xa3d754...58fd65` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-389142 | `0xa472fb...c4383a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-389144 | `0xa849b4...07613b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-389145 | `0xaa6a9b...e31823` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-389147 | `0xb285d4...3ddd2d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-389150 | `0xb55a79...ee131d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xb658b5...be2b54` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xb7feac...ff582a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-389151 | `0xb910a7...671cdf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xb98746...ae9feb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xbcb789...c3a567` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-389152 | `0xc16d23...1df5ff` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-389153 | `0xc1b767...256059` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-389154 | `0xc45ecf...892e20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xc682c3...67330d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xc99d54...dd411e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xcb32ea...d10f3f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-389155 | `0xcc5bb0...872a8a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-389156 | `0xccf663...a40746` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-389157 | `0xcf7031...5b4ced` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xd0716c...015c3f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-389158 | `0xd8763c...d6ca73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xddf776...0b27fe` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-389159 | `0xdebed1...7550fb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-389160 | `0xe2702b...a76f71` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-389161 | `0xe8537a...ab4787` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-389162 | `0xefb849...7b7b33` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-389163 | `0xfaea5f...3c7313` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-389164 | `0xfd9651...93b57d` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [2024-04-11-cyfrin-wormhole-evm-ntt.pdf](https://github.com/mento-protocol/mento-stabletoken-ntt/blob/main/audits/evm/2024-04-11-cyfrin-wormhole-evm-ntt.pdf) | Cyfrin | Audit | 2024-04 | stale | Direct | n/a | matched | 1 | 0 | 0 | 21 | n/a |
| [2024-07-23-cyfrin-wormhole-evm-ntt-diff-v1.1.0.pdf](https://github.com/mento-protocol/mento-stabletoken-ntt/blob/main/audits/evm/2024-07-23-cyfrin-wormhole-evm-ntt-diff-v1.1.0.pdf) | Cyfrin | Audit | 2024-07 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [2024-03-28-ottersec-solana-ntt.pdf](https://github.com/mento-protocol/mento-stabletoken-ntt/blob/main/audits/solana/2024-03-28-ottersec-solana-ntt.pdf) | unknown | Audit | 2024-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | medium |
| [2024-04-12-neodyme-solana-ntt.pdf](https://github.com/mento-protocol/mento-stabletoken-ntt/blob/main/audits/solana/2024-04-12-neodyme-solana-ntt.pdf) | unknown | Audit | 2024-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [2024-08-02-ottersec-solana-ntt-token-extensions.pdf](https://github.com/mento-protocol/mento-stabletoken-ntt/blob/main/audits/solana/2024-08-02-ottersec-solana-ntt-token-extensions.pdf) | unknown | Audit | 2024-08 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | medium |
| [2025-04-18-wormhole-ottersec-ntt-v3.pdf](https://github.com/mento-protocol/mento-stabletoken-ntt/blob/main/audits/solana/2025-04-18-wormhole-ottersec-ntt-v3.pdf) | unknown | Audit | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [2025-05-05-wormhole-ottersec-ntt-v3-solana.pdf](https://github.com/mento-protocol/mento-stabletoken-ntt/blob/main/audits/solana/2025-05-05-wormhole-ottersec-ntt-v3-solana.pdf) | unknown | Audit | 2025-05 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | medium |
| [2025-08-22-ottersec-sui-ntt.pdf](https://github.com/mento-protocol/mento-stabletoken-ntt/blob/main/audits/sui/2025-08-22-ottersec-sui-ntt.pdf) | unknown | Audit | 2025-08 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 1 | medium |
| [README.md](https://github.com/mento-protocol/docs/blob/main/dive-deeper/security/README.md) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [audit-reports.md](https://github.com/mento-protocol/docs/blob/main/dive-deeper/security/audit-reports.md) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [risk-overview.md](https://github.com/mento-protocol/docs/blob/main/dive-deeper/security/risk-overview.md) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [celo.org/audits](https://celo.org/audits) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [www.chainsecurity.com/security-audit/mento-core-v3](https://www.chainsecurity.com/security-audit/mento-core-v3) | ChainSecurity | Audit | n/a | unknown | Direct | contract_name | matched | 1 | 0 | 0 | 0 | low |
| [ChainSecurity_Mento_MentoCoreV3_Audit.pdf](https://reports.chainsecurity.com/Mento/ChainSecurity_Mento_MentoCoreV3_Audit.pdf) | ChainSecurity | Audit | 2026-02 | fresh | Direct | n/a | matched | 10 | 0 | 0 | 8 | n/a |
| [www.chainsecurity.com/security-audit/mento-liquity-v2](https://www.chainsecurity.com/security-audit/mento-liquity-v2) | ChainSecurity | Audit | n/a | unknown | Direct | contract_name | matched | 1 | 0 | 0 | 3 | low |
| [ChainSecurity_Mento_MentoLiquityV2_Audit.pdf](https://reports.chainsecurity.com/Mento/ChainSecurity_Mento_MentoLiquityV2_Audit.pdf) | ChainSecurity | Audit | 2026-02 | fresh | Direct | n/a | matched | 12 | 0 | 0 | 17 | n/a |
| [0xmacro.com/library/audits/mento-3](https://0xmacro.com/library/audits/mento-3) | 0xMacro | Audit | 2024-03 | stale | Direct | n/a | matched | 2 | 1 | 0 | 7 | n/a |
| [audits.sherlock.xyz/dashboard/404ec017225af69f6deff9b722393a44](https://audits.sherlock.xyz/dashboard/404ec017225af69f6deff9b722393a44) | Sherlock | Contest | 2024-03 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [0xmacro.com/library/audits/mento-2](https://0xmacro.com/library/audits/mento-2) | 0xMacro | Audit | 2024-01 | stale | Direct | n/a | matched | 2 | 1 | 0 | 12 | n/a |
| [0xmacro.com/library/audits/mento-1](https://0xmacro.com/library/audits/mento-1) | 0xMacro | Audit | 2023-08 | stale | Direct | n/a | matched | 1 | 1 | 0 | 11 | n/a |
| [www.verilog.solutions/audits/mento](https://www.verilog.solutions/audits/mento) | Verilog Solutions | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [www.openzeppelin.com/news/celo-contracts-audit](https://www.openzeppelin.com/news/celo-contracts-audit) | OpenZeppelin | Audit | 2021-02 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 37 | high |
| [audits.sherlock.xyz/contests/187](https://audits.sherlock.xyz/contests/187) | Sherlock | Contest | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [6138] 2024-04-11-cyfrin-wormhole-evm-ntt.pdf — matched: No reason recorded
- [6140] 2024-07-23-cyfrin-wormhole-evm-ntt-diff-v1.1.0.pdf — no match: The audit scope describes directories (evm/src/interfaces/, evm/src/NttManager/, evm/src/Transceiver/, evm/src/libraries/, evm/src/wormhole/) but does not list specific contract names. The findings mention interfaces like IWormholeTransceiver, INttManager, and contracts like NttManager, but these are not explicitly listed as in-scope contracts. The report is a diff audit, so the scope is the changes between commits, not a fixed set of contracts.
- [6141] 2024-03-28-ottersec-solana-ntt.pdf — no match: The scope section describes the program 'example-native-token-transfers' but does not list individual contract files. The audit date is from the cover page.
- [6142] 2024-04-12-neodyme-solana-ntt.pdf — no match: Scope section explicitly lists three Solana programs: NTT, NTT Quoter, and Wormhole Governance. Also includes ntt-messages library but that is a module, not a contract. Audit date is April 12, 2024 from cover page.
- [6143] 2024-08-02-ottersec-solana-ntt-token-extensions.pdf — no match: The scope section mentions only the program name 'native-token-transfers' without specific contract names. The audit date is inferred from the engagement period end date (July 16th, 2024).
- [6144] 2025-04-18-wormhole-ottersec-ntt-v3.pdf — no match: The audit report scope describes the 'sui-ntt' program as a whole, not individual contracts. No specific contract names are listed in scope.
- [6145] 2025-05-05-wormhole-ottersec-ntt-v3-solana.pdf — no match: Only the program name 'example-native-token-transfers' is explicitly in scope. No individual contract or file names are listed.
- [6146] 2025-08-22-ottersec-sui-ntt.pdf — no match: Only the program name 'sui-ntt' is listed in scope; no individual contract files or module names are explicitly provided.
- [6184] README.md — no match: The provided text is a security overview section that mentions Mento V3 components (FPMM, liquidity strategies, CDP integration) but does not list specific contract names, file paths, or a scope table. No audit date is present.
- [6185] audit-reports.md — no match: The document is an overview page listing multiple audits with dates and links, but does not contain a detailed scope section with specific contract names for a single audit. No individual contract names are explicitly listed.
- [6186] risk-overview.md — no match: The document is an overview of the Mento Protocol's risk and security architecture, not an audit report. It mentions contract names like FPMM, OracleAdapter, BreakerBox, SortedOracles, and Watchdog multisig, but does not provide a scope section or list of audited contracts. No audit date is present.
- [12415] celo.org/audits — no match: The provided text is a navigation menu listing audit reports for various contract releases, but does not contain the actual audit report content with a scope section or contract names.
- [12416] www.chainsecurity.com/security-audit/mento-core-v3 — matched: Only one contract name explicitly mentioned in the report text; no scope section or file paths provided.
- [12417] ChainSecurity_Mento_MentoCoreV3_Audit.pdf — matched: No reason recorded
- [12418] www.chainsecurity.com/security-audit/mento-liquity-v2 — matched: No explicit scope section or file paths found; contract names inferred from findings and overview text.
- [12419] ChainSecurity_Mento_MentoLiquityV2_Audit.pdf — matched: No reason recorded
- [12420] 0xmacro.com/library/audits/mento-3 — matched: No reason recorded
- [12421] audits.sherlock.xyz/dashboard/404ec017225af69f6deff9b722393a44 — no match: The provided text is a summary page for a Sherlock audit contest, not the full audit report. It mentions 'Mento' as the project name but does not list specific contracts in scope. The date 'Mar 22, 2024' is the end of the audit contest period.
- [12422] 0xmacro.com/library/audits/mento-2 — matched: No reason recorded
- [12423] 0xmacro.com/library/audits/mento-1 — matched: No reason recorded
- [12424] www.verilog.solutions/audits/mento — no match: The provided text is incomplete and does not contain any contract names or scope information.
- [12425] www.openzeppelin.com/news/celo-contracts-audit — matched: All contracts in the contracts folder of celo-monorepo are in scope. The report date is February 5, 2021 from the blog header.
- [12426] audits.sherlock.xyz/contests/187 — no match: The provided text is a header snippet from a contest page, not a full audit report. No contract names or audit date are identifiable.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 2024-04-11-cyfrin-wormhole-evm-ntt.pdf | DummyToken | unmatched — not counted | — | — | no |
| 2024-04-11-cyfrin-wormhole-evm-ntt.pdf | DummyTokenMintAndBurn | unmatched — not counted | — | — | no |
| 2024-04-11-cyfrin-wormhole-evm-ntt.pdf | Governance | own contract | TroveManager (selected) `0xb38aef...3885c9` — deployed 2026-03-03 23:15:25+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-04-11-cyfrin-wormhole-evm-ntt.pdf | INTTManagerEvents | unmatched — not counted | — | — | no |
| 2024-04-11-cyfrin-wormhole-evm-ntt.pdf | IRateLimiterEvents | unmatched — not counted | — | — | no |
| 2024-04-11-cyfrin-wormhole-evm-ntt.pdf | ITransceiver | unmatched — not counted | — | — | no |
| 2024-04-11-cyfrin-wormhole-evm-ntt.pdf | Implementation | unmatched — not counted | — | — | no |
| 2024-04-11-cyfrin-wormhole-evm-ntt.pdf | MockNttManagerContract | unmatched — not counted | — | — | no |
| 2024-04-11-cyfrin-wormhole-evm-ntt.pdf | MockWormholeTransceiverContract | unmatched — not counted | — | — | no |
| 2024-04-11-cyfrin-wormhole-evm-ntt.pdf | MockWormholeTransceiverImmutableAllow | unmatched — not counted | — | — | no |
| 2024-04-11-cyfrin-wormhole-evm-ntt.pdf | NttManager | unmatched — not counted | — | — | no |
| 2024-04-11-cyfrin-wormhole-evm-ntt.pdf | NttManagerState | unmatched — not counted | — | — | no |
| 2024-04-11-cyfrin-wormhole-evm-ntt.pdf | PausableOwnable | unmatched — not counted | — | — | no |
| 2024-04-11-cyfrin-wormhole-evm-ntt.pdf | PausableUpgradeable | unmatched — not counted | — | — | no |
| 2024-04-11-cyfrin-wormhole-evm-ntt.pdf | RateLimiter | unmatched — not counted | — | — | no |
| 2024-04-11-cyfrin-wormhole-evm-ntt.pdf | Transceiver | unmatched — not counted | — | — | no |
| 2024-04-11-cyfrin-wormhole-evm-ntt.pdf | TransceiverRegistry | unmatched — not counted | — | — | no |
| 2024-04-11-cyfrin-wormhole-evm-ntt.pdf | TransceiverStructs | unmatched — not counted | — | — | no |
| 2024-04-11-cyfrin-wormhole-evm-ntt.pdf | TrimmedAmount | unmatched — not counted | — | — | no |
| 2024-04-11-cyfrin-wormhole-evm-ntt.pdf | WormholeSimulator | unmatched — not counted | — | — | no |
| 2024-04-11-cyfrin-wormhole-evm-ntt.pdf | WormholeTransceiver | unmatched — not counted | — | — | no |
| 2024-04-11-cyfrin-wormhole-evm-ntt.pdf | WormholeTransceiverState | unmatched — not counted | — | — | no |
| 2024-03-28-ottersec-solana-ntt.pdf | example-native-token-transfers | unmatched — not counted | — | listed in scope as the program name | no |
| 2024-04-12-neodyme-solana-ntt.pdf | NTT | unmatched — not counted | — | Scope section: 'the example NTT, NTT quoter and Wormhole governance program found at solana/programs' | no |
| 2024-04-12-neodyme-solana-ntt.pdf | NTT Quoter | unmatched — not counted | — | Scope section: 'the example NTT, NTT quoter and Wormhole governance program found at solana/programs' | no |
| 2024-04-12-neodyme-solana-ntt.pdf | Wormhole Governance | unmatched — not counted | — | Scope section: 'the example NTT, NTT quoter and Wormhole governance program found at solana/programs' | no |
| 2024-08-02-ottersec-solana-ntt-token-extensions.pdf | native-token-transfers | unmatched — not counted | — | Scope section: 'native-token-transfers' is described as the program under audit. | no |
| 2025-04-18-wormhole-ottersec-ntt-v3.pdf | sui-ntt | unmatched — not counted | — | Scope section: 'sui-ntt Sui NTT enables secure, modular cross-chain transfers...' | no |
| 2025-05-05-wormhole-ottersec-ntt-v3-solana.pdf | example-native-token-transfers | unmatched — not counted | — | listed in scope as the program name | no |
| 2025-08-22-ottersec-sui-ntt.pdf | sui-ntt | unmatched — not counted | — | Scope section: 'Name: sui-ntt, Description: Sui NTT enables secure, modular cross-chain transfers...' | no |
| www.chainsecurity.com/security-audit/mento-core-v3 | CDPLiquidityStrategy | own contract | 0x4e78bd… (selected) `0x4e78bd...dcb985` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity_Mento_MentoCoreV3_Audit.pdf | CDPLiquidityStrategy | own contract | 0x4e78bd… (selected) `0x4e78bd...dcb985` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity_Mento_MentoCoreV3_Audit.pdf | FPMM | unmatched — not counted | — | — | no |
| ChainSecurity_Mento_MentoCoreV3_Audit.pdf | FPMMFactory | own contract | 0xa849b4… (selected) `0xa849b4...07613b` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity_Mento_MentoCoreV3_Audit.pdf | FPMMProxy | unmatched — not counted | — | — | no |
| ChainSecurity_Mento_MentoCoreV3_Audit.pdf | FactoryRegistry | own contract | 0x7b2f7d… (selected) `0x7b2f7d...10adf6` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity_Mento_MentoCoreV3_Audit.pdf | LiquidityStrategy | unmatched — not counted | — | — | no |
| ChainSecurity_Mento_MentoCoreV3_Audit.pdf | LiquidityStrategyTypes | unmatched — not counted | — | — | no |
| ChainSecurity_Mento_MentoCoreV3_Audit.pdf | MarketHoursBreaker | own contract | MarketHoursBreaker (selected) `0x0a18b8...4e0daf` — deployed 2026-03-03 22:14:31+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity_Mento_MentoCoreV3_Audit.pdf | OneToOneFPMM | unmatched — not counted | — | — | no |
| ChainSecurity_Mento_MentoCoreV3_Audit.pdf | OracleAdapter | own contract | 0xa472fb… (selected) `0xa472fb...c4383a` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity_Mento_MentoCoreV3_Audit.pdf | ReserveLiquidityStrategy | own contract | 0xa0fb8b… (selected) `0xa0fb8b...ae4f0b` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity_Mento_MentoCoreV3_Audit.pdf | ReserveV2 | own contract | 0x4255cf… (selected) `0x4255cf...853806` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity_Mento_MentoCoreV3_Audit.pdf | Router | own contract | Router (selected) `0x486184...f9b6f6` — deployed 2026-03-03 22:14:37+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity_Mento_MentoCoreV3_Audit.pdf | StableTokenSpoke | unmatched — not counted | — | — | no |
| ChainSecurity_Mento_MentoCoreV3_Audit.pdf | StableTokenV3 | own contract | StableTokenV3 (selected) `0x4b9b0e...e7a2a2` — deployed 2026-03-03 22:14:37+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity_Mento_MentoCoreV3_Audit.pdf | TradingLimitsV2 | unmatched — not counted | — | — | no |
| ChainSecurity_Mento_MentoCoreV3_Audit.pdf | VirtualPool | unmatched — not counted | — | — | no |
| ChainSecurity_Mento_MentoCoreV3_Audit.pdf | VirtualPoolFactory | own contract | VirtualPoolFactory (selected) `0x22abd4...e5acb3` — deployed 2026-03-03 22:14:31+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| www.chainsecurity.com/security-audit/mento-liquity-v2 | BatchManager | unmatched — not counted | — | mentioned in finding 'Batch Manager is not deleted in kickFromBatch' | no |
| www.chainsecurity.com/security-audit/mento-liquity-v2 | SystemParams | unmatched — not counted | — | mentioned as 'governance-controlled SystemParams' in overview | no |
| www.chainsecurity.com/security-audit/mento-liquity-v2 | StabilityPool | own contract | 0x2d5d7e… (selected) `0x2d5d7e...e8c1a5` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| www.chainsecurity.com/security-audit/mento-liquity-v2 | FXPriceFeed | unmatched — not counted | — | mentioned as 'FX price feed' in overview | no |
| ChainSecurity_Mento_MentoLiquityV2_Audit.pdf | ActivePool | own contract | ActivePool (selected) `0xa7873f...8473b2` — deployed 2026-03-03 23:15:31+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity_Mento_MentoLiquityV2_Audit.pdf | AddRemoveManagers | unmatched — not counted | — | — | no |
| ChainSecurity_Mento_MentoLiquityV2_Audit.pdf | AddressesRegistry | own contract | AddressesRegistry (selected) `0xb3136d...fe0c6e` — deployed 2026-03-03 23:15:20+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity_Mento_MentoLiquityV2_Audit.pdf | AggregatorV3Interface | unmatched — not counted | — | — | no |
| ChainSecurity_Mento_MentoLiquityV2_Audit.pdf | BatchId | unmatched — not counted | — | — | no |
| ChainSecurity_Mento_MentoLiquityV2_Audit.pdf | BatchManagerOperations | unmatched — not counted | — | — | no |
| ChainSecurity_Mento_MentoLiquityV2_Audit.pdf | BorrowerOperations | own contract | BorrowerOperations (selected) `0x8ec9a8...943b8a` — deployed 2026-03-03 23:15:25+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity_Mento_MentoLiquityV2_Audit.pdf | CollSurplusPool | own contract | CollSurplusPool (selected) `0xfff48e...09d4b6` — deployed 2026-03-03 23:15:31+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity_Mento_MentoLiquityV2_Audit.pdf | CollateralRegistry | own contract | CollateralRegistry (selected) `0x1bedd4...a605fb` — deployed 2026-03-03 23:15:20+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity_Mento_MentoLiquityV2_Audit.pdf | Constants | unmatched — not counted | — | — | no |
| ChainSecurity_Mento_MentoLiquityV2_Audit.pdf | DefaultPool | own contract | DefaultPool (selected) `0x95191e...8d0047` — deployed 2026-03-03 23:15:31+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity_Mento_MentoLiquityV2_Audit.pdf | ERC20PermitUpgradeable | unmatched — not counted | — | — | no |
| ChainSecurity_Mento_MentoLiquityV2_Audit.pdf | ERC20Upgradeable | unmatched — not counted | — | — | no |
| ChainSecurity_Mento_MentoLiquityV2_Audit.pdf | FXPriceFeed | unmatched — not counted | — | — | no |
| ChainSecurity_Mento_MentoLiquityV2_Audit.pdf | GasPool | own contract | GasPool (selected) `0x8b61f9...79817b` — deployed 2026-03-03 23:15:31+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity_Mento_MentoLiquityV2_Audit.pdf | LatestBatchData | unmatched — not counted | — | — | no |
| ChainSecurity_Mento_MentoLiquityV2_Audit.pdf | LatestTroveData | unmatched — not counted | — | — | no |
| ChainSecurity_Mento_MentoLiquityV2_Audit.pdf | LiquityBase | unmatched — not counted | — | — | no |
| ChainSecurity_Mento_MentoLiquityV2_Audit.pdf | LiquityBaseInit | unmatched — not counted | — | — | no |
| ChainSecurity_Mento_MentoLiquityV2_Audit.pdf | LiquityMath | unmatched — not counted | — | — | no |
| ChainSecurity_Mento_MentoLiquityV2_Audit.pdf | Ownable | unmatched — not counted | — | — | no |
| ChainSecurity_Mento_MentoLiquityV2_Audit.pdf | SortedTroves | own contract | SortedTroves (selected) `0x46d0c9...12bf9b` — deployed 2026-03-03 23:15:31+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity_Mento_MentoLiquityV2_Audit.pdf | StabilityPool | own contract | 0x2d5d7e… (selected) `0x2d5d7e...e8c1a5` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity_Mento_MentoLiquityV2_Audit.pdf | StableTokenV3 | own contract | StableTokenV3 (selected) `0x4b9b0e...e7a2a2` — deployed 2026-03-03 22:14:37+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity_Mento_MentoLiquityV2_Audit.pdf | SystemParams | unmatched — not counted | — | — | no |
| ChainSecurity_Mento_MentoLiquityV2_Audit.pdf | TroveChange | unmatched — not counted | — | — | no |
| ChainSecurity_Mento_MentoLiquityV2_Audit.pdf | TroveId | unmatched — not counted | — | — | no |
| ChainSecurity_Mento_MentoLiquityV2_Audit.pdf | TroveManager | own contract | TroveManager (selected) `0xb38aef...3885c9` — deployed 2026-03-03 23:15:25+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity_Mento_MentoLiquityV2_Audit.pdf | TroveNFT | own contract | TroveNFT (selected) `0x46273a...72c6b6` — deployed 2026-03-03 23:15:25+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 0xmacro.com/library/audits/mento-3 | Emission | unmatched — not counted | — | — | no |
| 0xmacro.com/library/audits/mento-3 | EmissionDeployerLib | unmatched — not counted | — | — | no |
| 0xmacro.com/library/audits/mento-3 | GovernanceFactory | unmatched — not counted | — | — | no |
| 0xmacro.com/library/audits/mento-3 | Locking | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x001bb6...80279c` — deployed 2024-05-31 21:06:53+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 0xmacro.com/library/audits/mento-3 | LockingBase | unmatched — not counted | — | — | no |
| 0xmacro.com/library/audits/mento-3 | LockingRelock | unmatched — not counted | — | — | no |
| 0xmacro.com/library/audits/mento-3 | LockingVotes | unmatched — not counted | — | — | no |
| 0xmacro.com/library/audits/mento-3 | MentoToken | own contract | MentoToken (selected) `0x7ff62f...77cfb6` — deployed 2024-05-31 21:06:53+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 0xmacro.com/library/audits/mento-3 | MentoTokenDeployerLib | unmatched — not counted | — | — | no |
| 0xmacro.com/library/audits/mento-2 | Airgrab | unmatched — not counted | — | — | no |
| 0xmacro.com/library/audits/mento-2 | Emission | unmatched — not counted | — | — | no |
| 0xmacro.com/library/audits/mento-2 | Factory | unmatched — not counted | — | — | no |
| 0xmacro.com/library/audits/mento-2 | ILocking | unmatched — not counted | — | — | no |
| 0xmacro.com/library/audits/mento-2 | INextVersionLock | unmatched — not counted | — | — | no |
| 0xmacro.com/library/audits/mento-2 | LibBrokenLine | unmatched — not counted | — | — | no |
| 0xmacro.com/library/audits/mento-2 | LibIntMapping | unmatched — not counted | — | — | no |
| 0xmacro.com/library/audits/mento-2 | Locking | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x001bb6...80279c` — deployed 2024-05-31 21:06:53+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 0xmacro.com/library/audits/mento-2 | LockingBase | unmatched — not counted | — | — | no |
| 0xmacro.com/library/audits/mento-2 | LockingRelock | unmatched — not counted | — | — | no |
| 0xmacro.com/library/audits/mento-2 | LockingVotes | unmatched — not counted | — | — | no |
| 0xmacro.com/library/audits/mento-2 | MentoGovernor | unmatched — not counted | — | — | no |
| 0xmacro.com/library/audits/mento-2 | MentoToken | own contract | MentoToken (selected) `0x7ff62f...77cfb6` — deployed 2024-05-31 21:06:53+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 0xmacro.com/library/audits/mento-2 | TimelockController | unmatched — not counted | — | — | no |
| 0xmacro.com/library/audits/mento-1 | BiPoolManager | own proxy deployment | BiPoolManagerProxy (proxy) (selected) `0x22d9db...4ec901` — deployed 2023-03-07 08:50:54+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 0xmacro.com/library/audits/mento-1 | BreakerBox | unmatched — not counted | — | — | no |
| 0xmacro.com/library/audits/mento-1 | ConstantSumPricingModule | unmatched — not counted | — | — | no |
| 0xmacro.com/library/audits/mento-1 | ERC20PermitUpgradeable | unmatched — not counted | — | — | no |
| 0xmacro.com/library/audits/mento-1 | ERC20Upgradeable | unmatched — not counted | — | — | no |
| 0xmacro.com/library/audits/mento-1 | IBiPoolManager | unmatched — not counted | — | — | no |
| 0xmacro.com/library/audits/mento-1 | IBreaker | unmatched — not counted | — | — | no |
| 0xmacro.com/library/audits/mento-1 | IBreakerBox | unmatched — not counted | — | — | no |
| 0xmacro.com/library/audits/mento-1 | IPricingModule | unmatched — not counted | — | — | no |
| 0xmacro.com/library/audits/mento-1 | IStableTokenV2 | unmatched — not counted | — | — | no |
| 0xmacro.com/library/audits/mento-1 | MedianDeltaBreaker | unmatched — not counted | — | — | no |
| 0xmacro.com/library/audits/mento-1 | StableTokenV2 | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/celo-contracts-audit | Accounts | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/celo-contracts-audit | Attestations | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/celo-contracts-audit | BlockchainParameters | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/celo-contracts-audit | DoubleSigningSlasher | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/celo-contracts-audit | DowntimeSlasher | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/celo-contracts-audit | Election | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/celo-contracts-audit | EpochRewards | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/celo-contracts-audit | Escrow | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/celo-contracts-audit | Exchange | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/celo-contracts-audit | Freezable | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/celo-contracts-audit | GasPriceMinimum | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/celo-contracts-audit | GoldToken | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/celo-contracts-audit | Governance | own contract | TroveManager (selected) `0xb38aef...3885c9` — deployed 2026-03-03 23:15:25+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| www.openzeppelin.com/news/celo-contracts-audit | LockedGold | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/celo-contracts-audit | MultiSig | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/celo-contracts-audit | Proxy | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/celo-contracts-audit | Random | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/celo-contracts-audit | Registry | ambiguous — not counted | AddressesRegistry (alternative) `0xb3136d...fe0c6e` — deployed 2026-03-03 23:15:20+03 — liveness: live (current_address_book_code)<br>ReserveTroveFactory (alternative) `0x028594...9519e1` — deployed 2026-03-03 23:17:20+03 — liveness: live (current_address_book_code)<br>CollateralRegistry (alternative) `0x1bedd4...a605fb` — deployed 2026-03-03 23:15:20+03 — liveness: live (code_present_context)<br>VirtualPoolFactory (alternative) `0x22abd4...e5acb3` — deployed 2026-03-03 22:14:31+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| www.openzeppelin.com/news/celo-contracts-audit | Reserve | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/celo-contracts-audit | SlasherUtil | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/celo-contracts-audit | SortedOracles | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/celo-contracts-audit | StableToken | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/celo-contracts-audit | Validators | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/celo-contracts-audit | AddressLinkedList | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/celo-contracts-audit | AddressSortedLinkedList | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/celo-contracts-audit | AddressSortedLinkedListWithMedian | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/celo-contracts-audit | FixidityLib | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/celo-contracts-audit | FractionUtil | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/celo-contracts-audit | IntegerSortedList | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/celo-contracts-audit | LinkedList | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/celo-contracts-audit | Proposals | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/celo-contracts-audit | Signatures | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/celo-contracts-audit | SortedLinkedList | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/celo-contracts-audit | SortedLinkedListWithMedian | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/celo-contracts-audit | UsingPrecompiles | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/celo-contracts-audit | UsingRegistry | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/celo-contracts-audit | SafeCast | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/celo-contracts-audit | AddressHelper | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| celo | `0xafd741...374d82` | HintHelpers | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | `0x78fd33...f8327f` | MultiTroveGetter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | `0x028594...9519e1` | ReserveTroveFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | `0xff4ab1...2b6325` | StableTokenCADProxy | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 31 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 78 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 14
- Inherited remapped matches: 0
- Address-book scope dispositions: 31 own (3 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 1 ambiguous, 123 unmatched
- Matched-own operational status: 31 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=3, low=10, medium=4
- Match method counts: unique_name=31

Zero-match audit list:

- [6140] 2024-07-23-cyfrin-wormhole-evm-ntt-diff-v1.1.0.pdf
- [6141] 2024-03-28-ottersec-solana-ntt.pdf
- [6142] 2024-04-12-neodyme-solana-ntt.pdf
- [6143] 2024-08-02-ottersec-solana-ntt-token-extensions.pdf
- [6144] 2025-04-18-wormhole-ottersec-ntt-v3.pdf
- [6145] 2025-05-05-wormhole-ottersec-ntt-v3-solana.pdf
- [6146] 2025-08-22-ottersec-sui-ntt.pdf
- [6184] README.md
- [6185] audit-reports.md
- [6186] risk-overview.md
- [12415] celo.org/audits
- [12421] audits.sherlock.xyz/dashboard/404ec017225af69f6deff9b722393a44
- [12424] www.verilog.solutions/audits/mento
- [12426] audits.sherlock.xyz/contests/187

Fork inheritance lineage and inherited audits are included when available.
