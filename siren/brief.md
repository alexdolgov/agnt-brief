# Agentic Audit Brief: Siren

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Siren (`siren`)
- Website: [https://siren.xyz/](https://siren.xyz/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, ethereum, polygon
- Contract surface: 222 unique implementations (222 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $240,981.15
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Siren. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across arbitrum, ethereum, polygon. Structural roles: 1 supporting. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: supporting (1)
- Contract kinds: contract (1)
- Detected standards: erc1967proxy (1)
- Frameworks: openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 1

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 1; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 7 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 215 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 4
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/16
- Verified + Unaudited implementations: 16
- Verified by bytecode match: 0
- Unverified implementations: 206
- Unique implementations: 222
- Raw deployments: 222
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-02 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (16)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AmmDataProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x249094de3ad806dcefcd7a36c95d3d007337d8b8` | ⚠️ Unaudited |
| AmmFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x024b823643382be2a71a4e62f60c81e26af7118b` | ⚠️ Unaudited |
| ERC1155Controller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x01d02501a2b7734b50a70d2e358a593bd52a84f2` | ⚠️ Unaudited |
| HedgedPool | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x07835de4f96164758fe68283a5466e066c1885dc` | ⚠️ Unaudited |
| Market | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x7b63ecbc78402553a2d7f01ea3d10079c3aaa469` | ⚠️ Unaudited |
| MarketsRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x58dd75e6560f4636130bba5c9a03af3a21def4e1` | ⚠️ Unaudited |
| MinterAmm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1695d5ef25fd29582ec296ebd7a510ddd71e332a` | ⚠️ Unaudited |
| PriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x112dfee006b8e84fc630aad89ad2858d78a598a0` | ⚠️ Unaudited |
| Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0ad92b6f500affbe07ed65f9abb6fac90d322cae` | ⚠️ Unaudited |
| Proxy | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | polygon | unit-254868 | `0x716c543b39a85aac0240ba7ed07e79f06e1fed48` | ⚠️ Unaudited |
| SeriesVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x602de81711fa86fd97520cbd5ff023469bc15077` | ⚠️ Unaudited |
| SimpleToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x122bf95a3f9b2e593a2ed8dcdc22f5aded3ab84a` | ⚠️ Unaudited |
| SirenAccessKey | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe8f8347b33f5bbb691277ede23f55ac5d5c2d100` | ⚠️ Unaudited |
| SirenToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd23ac27148af6a2f339bd82d0e3cff380b5093de` | ⚠️ Unaudited |
| SirenUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb80e321fa8ecf53e354e72a254438ec6cab837ef` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | arbitrum | n/a | `0x39e3a206cc8b236265dac96090b20c286c6e45a7` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (206)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6800eb35f2cc1d11b70dd76f8b070611a614c566` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8c50862320e97ac1bb8d914805397e8de848b5fa` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xb8623477ea6f39b63598ceac4559728dca81af63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda9d13d9517eda83bfbf14b2234f9a6100effef9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xec2e3060eb71f4ac9210449c7adb68e0a31ae198` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x085492a200016ee66e944fef2d54fd2c2c561834` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0x0cdaa64b47474e02cdfbd811ec9fd2d265cd3a0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1193ac73335cb59082cfee84f6857293f5294277` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1599d5436b7dae6c8742b50681c054f794273645` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x16123e5a384bf03a17dabf99e4757c325114eced` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x16179dcf326aff5a89f1141b40ba883cd24ad86a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1f66ee876db9130148a5fdd70f281fc4eced89dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x261e63034343304c1eabef035f33e0b49abd73bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2b47786540a3ca3a0beb0fd004ce98f29731768b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0x2cd7169891e7a206743a4e608f097377177bcd23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2f76da7571c09b309048327f2f5feaeb0f829261` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3343ffca6b70bb16e1809e4cf2cfd4eba531848d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3be3e8598db63ffaa1e9264db06662e8d7592ec5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x41f1b4df9d737101d9571af1342038e267d1d11c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4413665d259ad53bf57a22e4053c4d5a99b3a128` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4619a1dc2cd4c9ff7d5916d05d36435c9ce1f4ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4951d438fa5f9b02a123efc878902b6dec4b1c10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4a00ea513d0fd7947f8218d81c5bb2cbcba283e2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0x509fe9c9712f9a895a9adbf2f96bad09abf79988` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5442bd16310fd8fcea28bc9577f61a3431e49298` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5909ebaf1ca202ee295029af89c94118f1db1cb0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x59b2ed9189517c4c151ab5ea37894c5727c4fb71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5b33baaadbce3cdbf01875affc82f1f6f75d8e06` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5e01651bc195e038483b722eceaab93e64173f0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x608756c8896deabac6a3af38456be2567f13db7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6312434abd8177ef96959f157b13f92d3ef3482e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x67f1b3f1916937c311b9d1e1f862b3e212b5e3ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x72a4a2656f87a3ce73481361f939b0abcb7a1025` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7aa28a3403b4489e56d7c2d3202889368488141d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7afcd546e9d4c8fbc00db5eb45374c0f3099a516` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x800f1fff2a39d8205bc2b94eb426655c79d37713` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x802682be90c4c8c47d1faf7106d7ba4ff83b8047` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x821e81c8b744b2c4d36728afdfe0a76963c13f4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x83723982dcdc219c30497cdc583a271d7223a44c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8553aa3440c6a86224d67c9bc831241b06795e5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x87725599d0c3c805d660431ddd4aefa8f05bdcde` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x88ef5ce688e9c499cadfda08dc07adc2a353d76f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8bedc799a71d956cadc6a6ecfad76020ae79908e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8e4f754362d961915ac897e5e704791adffa5f4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8ff3236e0e32bc7116a30f37c05b49e6a4802694` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x92d730277a7eb0f6ef2698f216e9270143fc3a4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x95c4385ecdbef5a71108d628897bed83c11c48c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x97de22a0497c68bd558f0e38f7ca2342e2124326` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x981f042fc8a2260ff226de82acbba6c256495347` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x99d6a8d8b3266f0bf6dfd8798a817333bea8c0d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9b9b256ce516ae142792cf56bd152470baf7253e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9ee4b96bda7dab8a3583f042162f67365cf811f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa2857fad3430880fbe3564957b815aa38518c430` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa3264917f978941a0e6c0da52a8079325514a899` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa82112c37798ecbe07eaf9a76d09b945c45ce76c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa9a88758068e7c0172e52cb8d6ed0cd4c44f1b9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb1c5e0f92bed0d926d37d334133e3f8c10c977e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb314b1dd2d810b97585b0f70e35d81e1d03185a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb6ded41129c6ed38ad72a58e0257754ba0bfaf0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbbce104c3a5fc03b0bfbc4ba6136eaa96eb16c50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbda30ebd5a3d37a0414dbb9d1ced6c0ed116a057` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc0730b92e08ae01eb7a7c839b6cc1563bab6a49b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc09f19e73c5f093cdfc511bf18297e19ec7b7844` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0xc40a31bd9fed1569ce647bb7de7ff93facca36e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xca4dea9cd9c2c6334dc625ecd00a57bec4d03357` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xca84835655a8e863d34875326419a46f823320f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xcbcae36b425ce1a94d055602b3b514aed976c383` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xcbe86f2839319e7fa8ba62275e7e24886b882592` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xccaa9adea42be5e32552eaadf8f9638c66c41269` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xcfc20b96a47abeb5db61eef81e454d13b9a688e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd4642b769c413a014382ceb2c58285eef7d6b9c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd73561c23364582d3ad93f6a4c02d20653ee073b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd8a3771365d4ccc7f880fa63c30a59464508d8ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xdec01d6aac7356a01a528ca079148301ebde5e0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xdf52efa60ad11a66c7218ee4cc311fd0c35e093f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe013fea2601922d40017650fc4a7c202724072d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe159c9952d70519d6483c86b4f1af9c09d501873` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe20304d75516ef2e67ad99a39ab3365b3b01f3fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe31efa1577901b54cc3ec765d4d3748a2c0ab328` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe452d459f2930b87e15b6c05a7512158fe02a16e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe50dddd477241953df249db2cbb50c9554dd1c2b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0xe58e0345e3ae36a3c42ed335815fe0acaf4f71f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe5c0d48fbc830107e12cbdb95a780eebff08db6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xeb51f77d2af39c405d6c8f6694ec3998fafc1455` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xebc110bdbd9c6b0c5156b85c91b9666b501ded43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xed77e46f592940486dbabf8414ff883546751215` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xeedae48372cefef30ab8d53a53aae4dfa2a5da93` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf0f576169f5192b92ea45bb78f6111b9d8a5b1f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf2c9deff7269dd44c87eba68feb791c6995ca508` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf3c8efcb173fb11424496f355f1972cf8d9a2c52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf405bf3512702080cb0b25690bacddd69484c51f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfbee2c51999e5ace075eb81ac8160794c6d3f919` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x037497eb21b4283a91d152f17b8d343388b67f9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0482e5d6739ed2f66fb758c7b3c4a67230a4d2e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x063c1028a3b7a94e556cd4e3ca6a044dbbd88007` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0863f1d7ee413bf85b793c585f98b136fd1f44d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0884c8b8752302a7a9e65e09d11d2bed7701c867` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x08c0f1a475e36b7d1872c99c4bec10a2f92c0ee2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0caa8f1ba5db86c85de5d30295f34500322cc489` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0cdfdb3677109e391f7026c44fee19405af7a524` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0f1d5a2d299f3d87169f2b2e142123e7f405cfa5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x14cc2b737de9bdb6dae3824dc537b2490fe7c611` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1a3007f488a27100f7be0042182928445cd50969` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1c90c34da80ed64f339867c92ce3142f194c54b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1d8d111b5e06a870a152b9ef4ea1fa96c1b5fce5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1f62bdd1ed49bdae316df317a5789dbac1ab7daa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2177dff0ae5f6c4737cd33fcc0c0740e54964c1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x21948f4679968be4e7df3ef31abc0c7a3c2539f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2283bc43bc657d1b3237ed27457266e131bc6627` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2706db9fc41f5784d460e8264df7e51685a21875` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x29f8b7c75da855a0c6018f9b2fd5efea89184027` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2ac605f8d96d73210472bb333950fccb0d1ce721` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2b5430c621c365012d704138b936516d4699c26f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2c268ef3062f115f0d10cfbd176abb077056c414` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2c4ad2b01ff0e38c24e2c5db2f75a63f2c2cee37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2f2acac05c8d6fb29191a20f3a305320076c3d2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x31a905619c60f24c01afa341e11667af362a1743` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x33467c84c34928ddef73722d0c5bf78c5ef7e4b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x35da8ec620831c001c98f543b75d7f385e586533` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x37701ee82bdeb23d679baf3046bca9a79d732789` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x38fd7e534a2e302f55b1e8d483a4d040a98bf141` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x39a70db570862c03ad5ab3951df770df6a7b0234` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3dee3e9e61cee1f8ba8cd9e4709209312e0d3dae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x41331c683b991f6883a3cbd5c8beb8ce84d99418` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x44b97b68fbec65a1fcfbe1411d22fd9aefce4d8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4a38418d85a0132781aa38ce0cc63cfa24a98ebd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4cc665baf6ac7e52affe4b002e4fb6587d3503e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x507e911a81055e6e6b832a36e3fe3b767bb8ce68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x50dc33b3b17de7d7dd57d8ebdf2d0ef899691bbc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5213af839667cbaf42a08a80052f629863f6a28a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x529b4b1c43be35321900984428b08825495abd73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x55b4352a278521e809e3384c35b4a8bb925b63eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5afc1be02162f470b0f51fcba0525339180fad3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5e572f80678af4ee380fc59463c0495e80870b73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x69225385fc9e6f2da4039779cf9ab81100f6408a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6db04e6164d91a1448f888d840b30bcd7473a956` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6fc80a3f393a1feb60c710a1c446bc350f4ba3ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x77f80c74f86b853dc9da0c2e917f278e9825be52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7811a94849a46f5b498534539f459b5c0511f638` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x796af24d17e0de7df6bb250ab1c37e4e42b36221` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7aef760764071484bd0455c4052312d7a9e672f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7b39da79db77bda65dadf4d86d0a5a9e864d6d8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7babdbdd0c6152e21e137008561bc75e99141024` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7f15f1ef81b1d89326694a29b29f4797672d425d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8472443a0e2e4d214c361f2564e37cc2c316feb6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x88e97d1f177f8a7e27966d1042990d613322c86b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x89b46b95aaec2fd319f9839c7f01d59df485c5ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x89fc045512cf992553a430bcfb91017775a6aefe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8a5317f7bc6ef5a743cf2454bddc1e31ff9e86f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8c493a72e71bb7876c7fa77ec4d5a86516473bfa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8ecba2b172a7071628aece2361a9b51489c11211` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x940406a3db3542af2ff8943a415fc047c585537e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x96b11330b8e8fb4ec676a8489e42a11e31f8378a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9b0a9ce98ede917530b1e7f1842290a27ac0b263` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa0154014b375b58ea581d1fb0f0b20f0302355ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa632b33a9153e49c3b385fa40db061c3905125cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa7998c952fafc55d701a08d288785720778822c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xaa3ba0ab16606e7da729fa87f6e9801be533e286` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xaacbc7faee6c477d805704821b372e04cd9a1c14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xadc553036d3e6bc067e0eef18cb8992950ecd1da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xaf4aaaa8365f91cf41fb37f1f427a2a45c735964` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb26013faa579adbaf5a0bb7a155cc02ec93cc423` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb284ad34aff4393b084c638d7e0057c68c4d3706` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb409667fcbcf74804355ed7ffc046215673655c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb4332fc3b2202eda6bea10a2a7a0938930faabb3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb7e63e25048c2b8bf9fa97d9ca42dcf751651c7f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb9b9eaea8acd2ab3483dca5e3258c7afb8602140` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbf16a1f5f612b37d1854ad171492afaa359aca76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc063da626547c245e5e3975fd2dcf1c94009a6c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc0b14d7d23ab7ed6c2a42be4a128c0db23304dc9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc111282a3b57d5b5f77b15fbd7f5fd335dc584c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc1efc14df8519bf8789529e9a83b4498c5f16506` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc28da455b0f731acd0b97f3d730ec160af4f7609` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc2d9fae7d10a9043688906cd3c03ac781c711e0b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc45f7515b04e4f2415e300a48216d77d92f541c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc843637282f26b2716489527deeee51a441154e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc8ee92cebeb85ecd78f7c26ed6451d88edc19395` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcab0d4d823101cee57f786a4d235f1d4e183e97e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcaee1cad7c63458485417cc66b16c4c38e92626d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcc27f876128d87a98f152c7a2bc755cedebadc25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcde06e3fb8eb29c5e0e548d3a002f0fddfce8a59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcf2dbae38332ea6ee8e6d7bc4f7ace668887bbfc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd0d24f3f7cc438716d0f2deabc216370fd0ed5db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd2ed9440263c0c2daba47bf6c483c0da39f32a0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd611e54de82b511ee2668ec2c561e8d807afd41e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd70516453ec1e378c9dc5d2da92b27d97ca3de3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdb164aba7784c3c5ea30850117548652c85d0127` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe041e7ace93a80f43abc74082aaba45e58605dca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe06b1e3165a99574047488264e7f6a5076237805` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe3ba4cdb67ca3baa9442f8b0989d5930c6884128` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe3f360da860fc54f57b70ad56f2d001414f939f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe48ca8ebb56a1fbbe52849e3f7f31ab9be16787b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe610d35ef2a00f7233f20f2afb987f25476a3556` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe74984a6ab8624931d246a2f1b5fc85dbeecc45d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe7e88fcbb2ee0d86d7bb7bdf5663f281f9ccfad9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe95fca116d2a3e4d2a00b88bf9b02a22a71efcec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xeca7dbcb5860e9ddad53bc39bc113339aeaab784` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xecc42336120b1fb289438dcce3e3830ac9e29ff9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xeebbfe744c1e5b6b4403d385fddfc17684dff011` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf091ef62f8877e9f4c58f17b32e4c12b3df69fbd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf0f9757e2ef83a451f2d23bc6df867f86a52c2c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf87988f1f5e39ec39dfc518defce483643cfa99d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf8c729651d3502e999fa3eae2efcb12827b04b76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfdd1e19240c0d9303e9e076dbdfd464dbde7807f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xff53fe6901a239ecf2907effabe2308d0c65bea7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xff7ba810aa3d053f88e112eb77d445b2fd5936fa` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 204
- Live contracts: 0
- Unknown liveness contracts: 204
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: exact address book overlap=4, unverified unclassified=200

Showing first 200 of 204 contracts. The complete deployer expansion list is in `brief.json`.

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| arbitrum | unverified unclassified | UnnamedContract<br>`0x037497eb21b4283a91d152f17b8d343388b67f9b` | non_address_book | unknown | unknown | unverified | n/a | `0x5da2b995bf62904cb442d91b306eee01f58294d5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x0482e5d6739ed2f66fb758c7b3c4a67230a4d2e7` | non_address_book | unknown | unknown | unverified | n/a | `0x5da2b995bf62904cb442d91b306eee01f58294d5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x063c1028a3b7a94e556cd4e3ca6a044dbbd88007` | non_address_book | unknown | unknown | unverified | n/a | `0x5da2b995bf62904cb442d91b306eee01f58294d5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x0863f1d7ee413bf85b793c585f98b136fd1f44d1` | non_address_book | unknown | unknown | unverified | n/a | `0x5da2b995bf62904cb442d91b306eee01f58294d5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x0884c8b8752302a7a9e65e09d11d2bed7701c867` | non_address_book | unknown | unknown | unverified | n/a | `0x5da2b995bf62904cb442d91b306eee01f58294d5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x08c0f1a475e36b7d1872c99c4bec10a2f92c0ee2` | non_address_book | unknown | unknown | unverified | n/a | `0x5da2b995bf62904cb442d91b306eee01f58294d5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x0caa8f1ba5db86c85de5d30295f34500322cc489` | non_address_book | unknown | unknown | unverified | n/a | `0x5da2b995bf62904cb442d91b306eee01f58294d5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x0cdfdb3677109e391f7026c44fee19405af7a524` | non_address_book | unknown | unknown | unverified | n/a | `0x5da2b995bf62904cb442d91b306eee01f58294d5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x0f1d5a2d299f3d87169f2b2e142123e7f405cfa5` | non_address_book | unknown | unknown | unverified | n/a | `0x5da2b995bf62904cb442d91b306eee01f58294d5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x14cc2b737de9bdb6dae3824dc537b2490fe7c611` | non_address_book | unknown | unknown | unverified | n/a | `0x5da2b995bf62904cb442d91b306eee01f58294d5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x1a3007f488a27100f7be0042182928445cd50969` | non_address_book | unknown | unknown | unverified | n/a | `0x5da2b995bf62904cb442d91b306eee01f58294d5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x1c90c34da80ed64f339867c92ce3142f194c54b1` | non_address_book | unknown | unknown | unverified | n/a | `0x5da2b995bf62904cb442d91b306eee01f58294d5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x1d8d111b5e06a870a152b9ef4ea1fa96c1b5fce5` | non_address_book | unknown | unknown | unverified | n/a | `0x5da2b995bf62904cb442d91b306eee01f58294d5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x1f62bdd1ed49bdae316df317a5789dbac1ab7daa` | non_address_book | unknown | unknown | unverified | n/a | `0x5da2b995bf62904cb442d91b306eee01f58294d5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x2177dff0ae5f6c4737cd33fcc0c0740e54964c1b` | non_address_book | unknown | unknown | unverified | n/a | `0x5da2b995bf62904cb442d91b306eee01f58294d5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x21948f4679968be4e7df3ef31abc0c7a3c2539f2` | non_address_book | unknown | unknown | unverified | n/a | `0x5da2b995bf62904cb442d91b306eee01f58294d5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x2283bc43bc657d1b3237ed27457266e131bc6627` | non_address_book | unknown | unknown | unverified | n/a | `0x5da2b995bf62904cb442d91b306eee01f58294d5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x2706db9fc41f5784d460e8264df7e51685a21875` | non_address_book | unknown | unknown | unverified | n/a | `0x5da2b995bf62904cb442d91b306eee01f58294d5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x29f8b7c75da855a0c6018f9b2fd5efea89184027` | non_address_book | unknown | unknown | unverified | n/a | `0x5da2b995bf62904cb442d91b306eee01f58294d5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x2ac605f8d96d73210472bb333950fccb0d1ce721` | non_address_book | unknown | unknown | unverified | n/a | `0x5da2b995bf62904cb442d91b306eee01f58294d5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x2b5430c621c365012d704138b936516d4699c26f` | non_address_book | unknown | unknown | unverified | n/a | `0x5da2b995bf62904cb442d91b306eee01f58294d5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x2c268ef3062f115f0d10cfbd176abb077056c414` | non_address_book | unknown | unknown | unverified | n/a | `0x5da2b995bf62904cb442d91b306eee01f58294d5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x2c4ad2b01ff0e38c24e2c5db2f75a63f2c2cee37` | non_address_book | unknown | unknown | unverified | n/a | `0x5da2b995bf62904cb442d91b306eee01f58294d5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x2f2acac05c8d6fb29191a20f3a305320076c3d2b` | non_address_book | unknown | unknown | unverified | n/a | `0x5da2b995bf62904cb442d91b306eee01f58294d5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x31a905619c60f24c01afa341e11667af362a1743` | non_address_book | unknown | unknown | unverified | n/a | `0x5da2b995bf62904cb442d91b306eee01f58294d5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x33467c84c34928ddef73722d0c5bf78c5ef7e4b4` | non_address_book | unknown | unknown | unverified | n/a | `0x5da2b995bf62904cb442d91b306eee01f58294d5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x35da8ec620831c001c98f543b75d7f385e586533` | non_address_book | unknown | unknown | unverified | n/a | `0x5da2b995bf62904cb442d91b306eee01f58294d5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x37701ee82bdeb23d679baf3046bca9a79d732789` | non_address_book | unknown | unknown | unverified | n/a | `0x5da2b995bf62904cb442d91b306eee01f58294d5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x38fd7e534a2e302f55b1e8d483a4d040a98bf141` | non_address_book | unknown | unknown | unverified | n/a | `0x5da2b995bf62904cb442d91b306eee01f58294d5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x39a70db570862c03ad5ab3951df770df6a7b0234` | non_address_book | unknown | unknown | unverified | n/a | `0x5da2b995bf62904cb442d91b306eee01f58294d5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x3dee3e9e61cee1f8ba8cd9e4709209312e0d3dae` | non_address_book | unknown | unknown | unverified | n/a | `0x5da2b995bf62904cb442d91b306eee01f58294d5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x41331c683b991f6883a3cbd5c8beb8ce84d99418` | non_address_book | unknown | unknown | unverified | n/a | `0x5da2b995bf62904cb442d91b306eee01f58294d5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x44b97b68fbec65a1fcfbe1411d22fd9aefce4d8a` | non_address_book | unknown | unknown | unverified | n/a | `0x5da2b995bf62904cb442d91b306eee01f58294d5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x4a38418d85a0132781aa38ce0cc63cfa24a98ebd` | non_address_book | unknown | unknown | unverified | n/a | `0x5da2b995bf62904cb442d91b306eee01f58294d5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x4cc665baf6ac7e52affe4b002e4fb6587d3503e0` | non_address_book | unknown | unknown | unverified | n/a | `0x5da2b995bf62904cb442d91b306eee01f58294d5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x507e911a81055e6e6b832a36e3fe3b767bb8ce68` | non_address_book | unknown | unknown | unverified | n/a | `0x5da2b995bf62904cb442d91b306eee01f58294d5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x50dc33b3b17de7d7dd57d8ebdf2d0ef899691bbc` | non_address_book | unknown | unknown | unverified | n/a | `0x5da2b995bf62904cb442d91b306eee01f58294d5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x5213af839667cbaf42a08a80052f629863f6a28a` | non_address_book | unknown | unknown | unverified | n/a | `0x5da2b995bf62904cb442d91b306eee01f58294d5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x529b4b1c43be35321900984428b08825495abd73` | non_address_book | unknown | unknown | unverified | n/a | `0x5da2b995bf62904cb442d91b306eee01f58294d5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x55b4352a278521e809e3384c35b4a8bb925b63eb` | non_address_book | unknown | unknown | unverified | n/a | `0x5da2b995bf62904cb442d91b306eee01f58294d5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x5afc1be02162f470b0f51fcba0525339180fad3f` | non_address_book | unknown | unknown | unverified | n/a | `0x5da2b995bf62904cb442d91b306eee01f58294d5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x5e572f80678af4ee380fc59463c0495e80870b73` | non_address_book | unknown | unknown | unverified | n/a | `0x5da2b995bf62904cb442d91b306eee01f58294d5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x69225385fc9e6f2da4039779cf9ab81100f6408a` | non_address_book | unknown | unknown | unverified | n/a | `0x5da2b995bf62904cb442d91b306eee01f58294d5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x6db04e6164d91a1448f888d840b30bcd7473a956` | non_address_book | unknown | unknown | unverified | n/a | `0x5da2b995bf62904cb442d91b306eee01f58294d5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x6fc80a3f393a1feb60c710a1c446bc350f4ba3ee` | non_address_book | unknown | unknown | unverified | n/a | `0x5da2b995bf62904cb442d91b306eee01f58294d5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x77f80c74f86b853dc9da0c2e917f278e9825be52` | non_address_book | unknown | unknown | unverified | n/a | `0x5da2b995bf62904cb442d91b306eee01f58294d5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x7811a94849a46f5b498534539f459b5c0511f638` | non_address_book | unknown | unknown | unverified | n/a | `0x5da2b995bf62904cb442d91b306eee01f58294d5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x796af24d17e0de7df6bb250ab1c37e4e42b36221` | non_address_book | unknown | unknown | unverified | n/a | `0x5da2b995bf62904cb442d91b306eee01f58294d5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x7aef760764071484bd0455c4052312d7a9e672f7` | non_address_book | unknown | unknown | unverified | n/a | `0x5da2b995bf62904cb442d91b306eee01f58294d5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x7b39da79db77bda65dadf4d86d0a5a9e864d6d8f` | non_address_book | unknown | unknown | unverified | n/a | `0x5da2b995bf62904cb442d91b306eee01f58294d5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x7babdbdd0c6152e21e137008561bc75e99141024` | non_address_book | unknown | unknown | unverified | n/a | `0x5da2b995bf62904cb442d91b306eee01f58294d5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x7f15f1ef81b1d89326694a29b29f4797672d425d` | non_address_book | unknown | unknown | unverified | n/a | `0x5da2b995bf62904cb442d91b306eee01f58294d5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x8472443a0e2e4d214c361f2564e37cc2c316feb6` | non_address_book | unknown | unknown | unverified | n/a | `0x5da2b995bf62904cb442d91b306eee01f58294d5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x88e97d1f177f8a7e27966d1042990d613322c86b` | non_address_book | unknown | unknown | unverified | n/a | `0x5da2b995bf62904cb442d91b306eee01f58294d5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x89b46b95aaec2fd319f9839c7f01d59df485c5ae` | non_address_book | unknown | unknown | unverified | n/a | `0x5da2b995bf62904cb442d91b306eee01f58294d5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x89fc045512cf992553a430bcfb91017775a6aefe` | non_address_book | unknown | unknown | unverified | n/a | `0x5da2b995bf62904cb442d91b306eee01f58294d5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x8a5317f7bc6ef5a743cf2454bddc1e31ff9e86f7` | non_address_book | unknown | unknown | unverified | n/a | `0x5da2b995bf62904cb442d91b306eee01f58294d5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x8c493a72e71bb7876c7fa77ec4d5a86516473bfa` | non_address_book | unknown | unknown | unverified | n/a | `0x5da2b995bf62904cb442d91b306eee01f58294d5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x8ecba2b172a7071628aece2361a9b51489c11211` | non_address_book | unknown | unknown | unverified | n/a | `0x5da2b995bf62904cb442d91b306eee01f58294d5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x940406a3db3542af2ff8943a415fc047c585537e` | non_address_book | unknown | unknown | unverified | n/a | `0x5da2b995bf62904cb442d91b306eee01f58294d5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x96b11330b8e8fb4ec676a8489e42a11e31f8378a` | non_address_book | unknown | unknown | unverified | n/a | `0x5da2b995bf62904cb442d91b306eee01f58294d5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x9b0a9ce98ede917530b1e7f1842290a27ac0b263` | non_address_book | unknown | unknown | unverified | n/a | `0x5da2b995bf62904cb442d91b306eee01f58294d5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xa0154014b375b58ea581d1fb0f0b20f0302355ac` | non_address_book | unknown | unknown | unverified | n/a | `0x5da2b995bf62904cb442d91b306eee01f58294d5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xa632b33a9153e49c3b385fa40db061c3905125cb` | non_address_book | unknown | unknown | unverified | n/a | `0x5da2b995bf62904cb442d91b306eee01f58294d5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xa7998c952fafc55d701a08d288785720778822c6` | non_address_book | unknown | unknown | unverified | n/a | `0x5da2b995bf62904cb442d91b306eee01f58294d5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xaa3ba0ab16606e7da729fa87f6e9801be533e286` | non_address_book | unknown | unknown | unverified | n/a | `0x5da2b995bf62904cb442d91b306eee01f58294d5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xaacbc7faee6c477d805704821b372e04cd9a1c14` | non_address_book | unknown | unknown | unverified | n/a | `0x5da2b995bf62904cb442d91b306eee01f58294d5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xadc553036d3e6bc067e0eef18cb8992950ecd1da` | non_address_book | unknown | unknown | unverified | n/a | `0x5da2b995bf62904cb442d91b306eee01f58294d5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xaf4aaaa8365f91cf41fb37f1f427a2a45c735964` | non_address_book | unknown | unknown | unverified | n/a | `0x5da2b995bf62904cb442d91b306eee01f58294d5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xb26013faa579adbaf5a0bb7a155cc02ec93cc423` | non_address_book | unknown | unknown | unverified | n/a | `0x5da2b995bf62904cb442d91b306eee01f58294d5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xb284ad34aff4393b084c638d7e0057c68c4d3706` | non_address_book | unknown | unknown | unverified | n/a | `0x5da2b995bf62904cb442d91b306eee01f58294d5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xb409667fcbcf74804355ed7ffc046215673655c6` | non_address_book | unknown | unknown | unverified | n/a | `0x5da2b995bf62904cb442d91b306eee01f58294d5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xb4332fc3b2202eda6bea10a2a7a0938930faabb3` | non_address_book | unknown | unknown | unverified | n/a | `0x5da2b995bf62904cb442d91b306eee01f58294d5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xb7e63e25048c2b8bf9fa97d9ca42dcf751651c7f` | non_address_book | unknown | unknown | unverified | n/a | `0x5da2b995bf62904cb442d91b306eee01f58294d5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xb9b9eaea8acd2ab3483dca5e3258c7afb8602140` | non_address_book | unknown | unknown | unverified | n/a | `0x5da2b995bf62904cb442d91b306eee01f58294d5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xbf16a1f5f612b37d1854ad171492afaa359aca76` | non_address_book | unknown | unknown | unverified | n/a | `0x5da2b995bf62904cb442d91b306eee01f58294d5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xc063da626547c245e5e3975fd2dcf1c94009a6c1` | non_address_book | unknown | unknown | unverified | n/a | `0x5da2b995bf62904cb442d91b306eee01f58294d5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xc0b14d7d23ab7ed6c2a42be4a128c0db23304dc9` | non_address_book | unknown | unknown | unverified | n/a | `0x5da2b995bf62904cb442d91b306eee01f58294d5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xc111282a3b57d5b5f77b15fbd7f5fd335dc584c6` | non_address_book | unknown | unknown | unverified | n/a | `0x5da2b995bf62904cb442d91b306eee01f58294d5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xc1efc14df8519bf8789529e9a83b4498c5f16506` | non_address_book | unknown | unknown | unverified | n/a | `0x5da2b995bf62904cb442d91b306eee01f58294d5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xc28da455b0f731acd0b97f3d730ec160af4f7609` | non_address_book | unknown | unknown | unverified | n/a | `0x5da2b995bf62904cb442d91b306eee01f58294d5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xc2d9fae7d10a9043688906cd3c03ac781c711e0b` | non_address_book | unknown | unknown | unverified | n/a | `0x5da2b995bf62904cb442d91b306eee01f58294d5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xc45f7515b04e4f2415e300a48216d77d92f541c3` | non_address_book | unknown | unknown | unverified | n/a | `0x5da2b995bf62904cb442d91b306eee01f58294d5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xc843637282f26b2716489527deeee51a441154e2` | non_address_book | unknown | unknown | unverified | n/a | `0x5da2b995bf62904cb442d91b306eee01f58294d5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xc8ee92cebeb85ecd78f7c26ed6451d88edc19395` | non_address_book | unknown | unknown | unverified | n/a | `0x5da2b995bf62904cb442d91b306eee01f58294d5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xcab0d4d823101cee57f786a4d235f1d4e183e97e` | non_address_book | unknown | unknown | unverified | n/a | `0x5da2b995bf62904cb442d91b306eee01f58294d5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xcaee1cad7c63458485417cc66b16c4c38e92626d` | non_address_book | unknown | unknown | unverified | n/a | `0x5da2b995bf62904cb442d91b306eee01f58294d5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xcc27f876128d87a98f152c7a2bc755cedebadc25` | non_address_book | unknown | unknown | unverified | n/a | `0x5da2b995bf62904cb442d91b306eee01f58294d5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xcde06e3fb8eb29c5e0e548d3a002f0fddfce8a59` | non_address_book | unknown | unknown | unverified | n/a | `0x5da2b995bf62904cb442d91b306eee01f58294d5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xcf2dbae38332ea6ee8e6d7bc4f7ace668887bbfc` | non_address_book | unknown | unknown | unverified | n/a | `0x5da2b995bf62904cb442d91b306eee01f58294d5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xd0d24f3f7cc438716d0f2deabc216370fd0ed5db` | non_address_book | unknown | unknown | unverified | n/a | `0x5da2b995bf62904cb442d91b306eee01f58294d5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xd2ed9440263c0c2daba47bf6c483c0da39f32a0c` | non_address_book | unknown | unknown | unverified | n/a | `0x5da2b995bf62904cb442d91b306eee01f58294d5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xd611e54de82b511ee2668ec2c561e8d807afd41e` | non_address_book | unknown | unknown | unverified | n/a | `0x5da2b995bf62904cb442d91b306eee01f58294d5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xd70516453ec1e378c9dc5d2da92b27d97ca3de3e` | non_address_book | unknown | unknown | unverified | n/a | `0x5da2b995bf62904cb442d91b306eee01f58294d5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xdb164aba7784c3c5ea30850117548652c85d0127` | non_address_book | unknown | unknown | unverified | n/a | `0x5da2b995bf62904cb442d91b306eee01f58294d5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xe041e7ace93a80f43abc74082aaba45e58605dca` | non_address_book | unknown | unknown | unverified | n/a | `0x5da2b995bf62904cb442d91b306eee01f58294d5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xe06b1e3165a99574047488264e7f6a5076237805` | non_address_book | unknown | unknown | unverified | n/a | `0x5da2b995bf62904cb442d91b306eee01f58294d5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xe3ba4cdb67ca3baa9442f8b0989d5930c6884128` | non_address_book | unknown | unknown | unverified | n/a | `0x5da2b995bf62904cb442d91b306eee01f58294d5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xe3f360da860fc54f57b70ad56f2d001414f939f0` | non_address_book | unknown | unknown | unverified | n/a | `0x5da2b995bf62904cb442d91b306eee01f58294d5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xe48ca8ebb56a1fbbe52849e3f7f31ab9be16787b` | non_address_book | unknown | unknown | unverified | n/a | `0x5da2b995bf62904cb442d91b306eee01f58294d5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xe610d35ef2a00f7233f20f2afb987f25476a3556` | non_address_book | unknown | unknown | unverified | n/a | `0x5da2b995bf62904cb442d91b306eee01f58294d5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xe74984a6ab8624931d246a2f1b5fc85dbeecc45d` | non_address_book | unknown | unknown | unverified | n/a | `0x5da2b995bf62904cb442d91b306eee01f58294d5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xe7e88fcbb2ee0d86d7bb7bdf5663f281f9ccfad9` | non_address_book | unknown | unknown | unverified | n/a | `0x5da2b995bf62904cb442d91b306eee01f58294d5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xe95fca116d2a3e4d2a00b88bf9b02a22a71efcec` | non_address_book | unknown | unknown | unverified | n/a | `0x5da2b995bf62904cb442d91b306eee01f58294d5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xeca7dbcb5860e9ddad53bc39bc113339aeaab784` | non_address_book | unknown | unknown | unverified | n/a | `0x5da2b995bf62904cb442d91b306eee01f58294d5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xecc42336120b1fb289438dcce3e3830ac9e29ff9` | non_address_book | unknown | unknown | unverified | n/a | `0x5da2b995bf62904cb442d91b306eee01f58294d5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xeebbfe744c1e5b6b4403d385fddfc17684dff011` | non_address_book | unknown | unknown | unverified | n/a | `0x5da2b995bf62904cb442d91b306eee01f58294d5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xf091ef62f8877e9f4c58f17b32e4c12b3df69fbd` | non_address_book | unknown | unknown | unverified | n/a | `0x5da2b995bf62904cb442d91b306eee01f58294d5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xf0f9757e2ef83a451f2d23bc6df867f86a52c2c6` | non_address_book | unknown | unknown | unverified | n/a | `0x5da2b995bf62904cb442d91b306eee01f58294d5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xf87988f1f5e39ec39dfc518defce483643cfa99d` | non_address_book | unknown | unknown | unverified | n/a | `0x5da2b995bf62904cb442d91b306eee01f58294d5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xf8c729651d3502e999fa3eae2efcb12827b04b76` | non_address_book | unknown | unknown | unverified | n/a | `0x5da2b995bf62904cb442d91b306eee01f58294d5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xfdd1e19240c0d9303e9e076dbdfd464dbde7807f` | non_address_book | unknown | unknown | unverified | n/a | `0x5da2b995bf62904cb442d91b306eee01f58294d5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xff53fe6901a239ecf2907effabe2308d0c65bea7` | non_address_book | unknown | unknown | unverified | n/a | `0x5da2b995bf62904cb442d91b306eee01f58294d5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xff7ba810aa3d053f88e112eb77d445b2fd5936fa` | non_address_book | unknown | unknown | unverified | n/a | `0x5da2b995bf62904cb442d91b306eee01f58294d5` |
| ethereum | exact address book overlap | UnnamedContract<br>`0xb8623477ea6f39b63598ceac4559728dca81af63` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xe4d5c80ea2a16bf27bba1048fd06d79d9c2e7f48` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6800eb35f2cc1d11b70dd76f8b070611a614c566` | non_address_book | unknown | unknown | unverified | n/a | `0xe4d5c80ea2a16bf27bba1048fd06d79d9c2e7f48` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8c50862320e97ac1bb8d914805397e8de848b5fa` | non_address_book | unknown | unknown | unverified | n/a | `0xe4d5c80ea2a16bf27bba1048fd06d79d9c2e7f48` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xda9d13d9517eda83bfbf14b2234f9a6100effef9` | non_address_book | unknown | unknown | unverified | n/a | `0xe4d5c80ea2a16bf27bba1048fd06d79d9c2e7f48` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xec2e3060eb71f4ac9210449c7adb68e0a31ae198` | non_address_book | unknown | unknown | unverified | n/a | `0xe4d5c80ea2a16bf27bba1048fd06d79d9c2e7f48` |
| polygon | exact address book overlap | UnnamedContract<br>`0x0cdaa64b47474e02cdfbd811ec9fd2d265cd3a0a` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xacaabb76e70c7a99693e9057e627088f5fec443d` |
| polygon | exact address book overlap | UnnamedContract<br>`0x509fe9c9712f9a895a9adbf2f96bad09abf79988` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xacaabb76e70c7a99693e9057e627088f5fec443d` |
| polygon | exact address book overlap | UnnamedContract<br>`0xc40a31bd9fed1569ce647bb7de7ff93facca36e9` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xacaabb76e70c7a99693e9057e627088f5fec443d` |
| polygon | unverified unclassified | UnnamedContract<br>`0x085492a200016ee66e944fef2d54fd2c2c561834` | non_address_book | unknown | unknown | unverified | n/a | `0xacaabb76e70c7a99693e9057e627088f5fec443d` |
| polygon | unverified unclassified | UnnamedContract<br>`0x1193ac73335cb59082cfee84f6857293f5294277` | non_address_book | unknown | unknown | unverified | n/a | `0xacaabb76e70c7a99693e9057e627088f5fec443d` |
| polygon | unverified unclassified | UnnamedContract<br>`0x1599d5436b7dae6c8742b50681c054f794273645` | non_address_book | unknown | unknown | unverified | n/a | `0xacaabb76e70c7a99693e9057e627088f5fec443d` |
| polygon | unverified unclassified | UnnamedContract<br>`0x16123e5a384bf03a17dabf99e4757c325114eced` | non_address_book | unknown | unknown | unverified | n/a | `0xacaabb76e70c7a99693e9057e627088f5fec443d` |
| polygon | unverified unclassified | UnnamedContract<br>`0x16179dcf326aff5a89f1141b40ba883cd24ad86a` | non_address_book | unknown | unknown | unverified | n/a | `0xacaabb76e70c7a99693e9057e627088f5fec443d` |
| polygon | unverified unclassified | UnnamedContract<br>`0x1f66ee876db9130148a5fdd70f281fc4eced89dd` | non_address_book | unknown | unknown | unverified | n/a | `0xacaabb76e70c7a99693e9057e627088f5fec443d` |
| polygon | unverified unclassified | UnnamedContract<br>`0x261e63034343304c1eabef035f33e0b49abd73bf` | non_address_book | unknown | unknown | unverified | n/a | `0xacaabb76e70c7a99693e9057e627088f5fec443d` |
| polygon | unverified unclassified | UnnamedContract<br>`0x2b47786540a3ca3a0beb0fd004ce98f29731768b` | non_address_book | unknown | unknown | unverified | n/a | `0xacaabb76e70c7a99693e9057e627088f5fec443d` |
| polygon | unverified unclassified | UnnamedContract<br>`0x2f76da7571c09b309048327f2f5feaeb0f829261` | non_address_book | unknown | unknown | unverified | n/a | `0xacaabb76e70c7a99693e9057e627088f5fec443d` |
| polygon | unverified unclassified | UnnamedContract<br>`0x3343ffca6b70bb16e1809e4cf2cfd4eba531848d` | non_address_book | unknown | unknown | unverified | n/a | `0xacaabb76e70c7a99693e9057e627088f5fec443d` |
| polygon | unverified unclassified | UnnamedContract<br>`0x3be3e8598db63ffaa1e9264db06662e8d7592ec5` | non_address_book | unknown | unknown | unverified | n/a | `0xacaabb76e70c7a99693e9057e627088f5fec443d` |
| polygon | unverified unclassified | UnnamedContract<br>`0x41f1b4df9d737101d9571af1342038e267d1d11c` | non_address_book | unknown | unknown | unverified | n/a | `0xacaabb76e70c7a99693e9057e627088f5fec443d` |
| polygon | unverified unclassified | UnnamedContract<br>`0x4413665d259ad53bf57a22e4053c4d5a99b3a128` | non_address_book | unknown | unknown | unverified | n/a | `0xacaabb76e70c7a99693e9057e627088f5fec443d` |
| polygon | unverified unclassified | UnnamedContract<br>`0x4619a1dc2cd4c9ff7d5916d05d36435c9ce1f4ff` | non_address_book | unknown | unknown | unverified | n/a | `0xacaabb76e70c7a99693e9057e627088f5fec443d` |
| polygon | unverified unclassified | UnnamedContract<br>`0x4951d438fa5f9b02a123efc878902b6dec4b1c10` | non_address_book | unknown | unknown | unverified | n/a | `0xacaabb76e70c7a99693e9057e627088f5fec443d` |
| polygon | unverified unclassified | UnnamedContract<br>`0x4a00ea513d0fd7947f8218d81c5bb2cbcba283e2` | non_address_book | unknown | unknown | unverified | n/a | `0xacaabb76e70c7a99693e9057e627088f5fec443d` |
| polygon | unverified unclassified | UnnamedContract<br>`0x5442bd16310fd8fcea28bc9577f61a3431e49298` | non_address_book | unknown | unknown | unverified | n/a | `0xacaabb76e70c7a99693e9057e627088f5fec443d` |
| polygon | unverified unclassified | UnnamedContract<br>`0x5909ebaf1ca202ee295029af89c94118f1db1cb0` | non_address_book | unknown | unknown | unverified | n/a | `0xacaabb76e70c7a99693e9057e627088f5fec443d` |
| polygon | unverified unclassified | UnnamedContract<br>`0x59b2ed9189517c4c151ab5ea37894c5727c4fb71` | non_address_book | unknown | unknown | unverified | n/a | `0xacaabb76e70c7a99693e9057e627088f5fec443d` |
| polygon | unverified unclassified | UnnamedContract<br>`0x5b33baaadbce3cdbf01875affc82f1f6f75d8e06` | non_address_book | unknown | unknown | unverified | n/a | `0xacaabb76e70c7a99693e9057e627088f5fec443d` |
| polygon | unverified unclassified | UnnamedContract<br>`0x5e01651bc195e038483b722eceaab93e64173f0f` | non_address_book | unknown | unknown | unverified | n/a | `0xacaabb76e70c7a99693e9057e627088f5fec443d` |
| polygon | unverified unclassified | UnnamedContract<br>`0x608756c8896deabac6a3af38456be2567f13db7b` | non_address_book | unknown | unknown | unverified | n/a | `0xacaabb76e70c7a99693e9057e627088f5fec443d` |
| polygon | unverified unclassified | UnnamedContract<br>`0x6312434abd8177ef96959f157b13f92d3ef3482e` | non_address_book | unknown | unknown | unverified | n/a | `0xacaabb76e70c7a99693e9057e627088f5fec443d` |
| polygon | unverified unclassified | UnnamedContract<br>`0x67f1b3f1916937c311b9d1e1f862b3e212b5e3ac` | non_address_book | unknown | unknown | unverified | n/a | `0xacaabb76e70c7a99693e9057e627088f5fec443d` |
| polygon | unverified unclassified | UnnamedContract<br>`0x72a4a2656f87a3ce73481361f939b0abcb7a1025` | non_address_book | unknown | unknown | unverified | n/a | `0xacaabb76e70c7a99693e9057e627088f5fec443d` |
| polygon | unverified unclassified | UnnamedContract<br>`0x7aa28a3403b4489e56d7c2d3202889368488141d` | non_address_book | unknown | unknown | unverified | n/a | `0xacaabb76e70c7a99693e9057e627088f5fec443d` |
| polygon | unverified unclassified | UnnamedContract<br>`0x7afcd546e9d4c8fbc00db5eb45374c0f3099a516` | non_address_book | unknown | unknown | unverified | n/a | `0xacaabb76e70c7a99693e9057e627088f5fec443d` |
| polygon | unverified unclassified | UnnamedContract<br>`0x800f1fff2a39d8205bc2b94eb426655c79d37713` | non_address_book | unknown | unknown | unverified | n/a | `0xacaabb76e70c7a99693e9057e627088f5fec443d` |
| polygon | unverified unclassified | UnnamedContract<br>`0x802682be90c4c8c47d1faf7106d7ba4ff83b8047` | non_address_book | unknown | unknown | unverified | n/a | `0xacaabb76e70c7a99693e9057e627088f5fec443d` |
| polygon | unverified unclassified | UnnamedContract<br>`0x821e81c8b744b2c4d36728afdfe0a76963c13f4d` | non_address_book | unknown | unknown | unverified | n/a | `0xacaabb76e70c7a99693e9057e627088f5fec443d` |
| polygon | unverified unclassified | UnnamedContract<br>`0x83723982dcdc219c30497cdc583a271d7223a44c` | non_address_book | unknown | unknown | unverified | n/a | `0xacaabb76e70c7a99693e9057e627088f5fec443d` |
| polygon | unverified unclassified | UnnamedContract<br>`0x8553aa3440c6a86224d67c9bc831241b06795e5a` | non_address_book | unknown | unknown | unverified | n/a | `0xacaabb76e70c7a99693e9057e627088f5fec443d` |
| polygon | unverified unclassified | UnnamedContract<br>`0x87725599d0c3c805d660431ddd4aefa8f05bdcde` | non_address_book | unknown | unknown | unverified | n/a | `0xacaabb76e70c7a99693e9057e627088f5fec443d` |
| polygon | unverified unclassified | UnnamedContract<br>`0x88ef5ce688e9c499cadfda08dc07adc2a353d76f` | non_address_book | unknown | unknown | unverified | n/a | `0xacaabb76e70c7a99693e9057e627088f5fec443d` |
| polygon | unverified unclassified | UnnamedContract<br>`0x8bedc799a71d956cadc6a6ecfad76020ae79908e` | non_address_book | unknown | unknown | unverified | n/a | `0xacaabb76e70c7a99693e9057e627088f5fec443d` |
| polygon | unverified unclassified | UnnamedContract<br>`0x8e4f754362d961915ac897e5e704791adffa5f4e` | non_address_book | unknown | unknown | unverified | n/a | `0xacaabb76e70c7a99693e9057e627088f5fec443d` |
| polygon | unverified unclassified | UnnamedContract<br>`0x8ff3236e0e32bc7116a30f37c05b49e6a4802694` | non_address_book | unknown | unknown | unverified | n/a | `0xacaabb76e70c7a99693e9057e627088f5fec443d` |
| polygon | unverified unclassified | UnnamedContract<br>`0x92d730277a7eb0f6ef2698f216e9270143fc3a4e` | non_address_book | unknown | unknown | unverified | n/a | `0xacaabb76e70c7a99693e9057e627088f5fec443d` |
| polygon | unverified unclassified | UnnamedContract<br>`0x95c4385ecdbef5a71108d628897bed83c11c48c6` | non_address_book | unknown | unknown | unverified | n/a | `0xacaabb76e70c7a99693e9057e627088f5fec443d` |
| polygon | unverified unclassified | UnnamedContract<br>`0x97de22a0497c68bd558f0e38f7ca2342e2124326` | non_address_book | unknown | unknown | unverified | n/a | `0xacaabb76e70c7a99693e9057e627088f5fec443d` |
| polygon | unverified unclassified | UnnamedContract<br>`0x981f042fc8a2260ff226de82acbba6c256495347` | non_address_book | unknown | unknown | unverified | n/a | `0xacaabb76e70c7a99693e9057e627088f5fec443d` |
| polygon | unverified unclassified | UnnamedContract<br>`0x99d6a8d8b3266f0bf6dfd8798a817333bea8c0d0` | non_address_book | unknown | unknown | unverified | n/a | `0xacaabb76e70c7a99693e9057e627088f5fec443d` |
| polygon | unverified unclassified | UnnamedContract<br>`0x9b9b256ce516ae142792cf56bd152470baf7253e` | non_address_book | unknown | unknown | unverified | n/a | `0xacaabb76e70c7a99693e9057e627088f5fec443d` |
| polygon | unverified unclassified | UnnamedContract<br>`0x9ee4b96bda7dab8a3583f042162f67365cf811f2` | non_address_book | unknown | unknown | unverified | n/a | `0xacaabb76e70c7a99693e9057e627088f5fec443d` |
| polygon | unverified unclassified | UnnamedContract<br>`0xa2857fad3430880fbe3564957b815aa38518c430` | non_address_book | unknown | unknown | unverified | n/a | `0xacaabb76e70c7a99693e9057e627088f5fec443d` |
| polygon | unverified unclassified | UnnamedContract<br>`0xa3264917f978941a0e6c0da52a8079325514a899` | non_address_book | unknown | unknown | unverified | n/a | `0xacaabb76e70c7a99693e9057e627088f5fec443d` |
| polygon | unverified unclassified | UnnamedContract<br>`0xa82112c37798ecbe07eaf9a76d09b945c45ce76c` | non_address_book | unknown | unknown | unverified | n/a | `0xacaabb76e70c7a99693e9057e627088f5fec443d` |
| polygon | unverified unclassified | UnnamedContract<br>`0xa9a88758068e7c0172e52cb8d6ed0cd4c44f1b9e` | non_address_book | unknown | unknown | unverified | n/a | `0xacaabb76e70c7a99693e9057e627088f5fec443d` |
| polygon | unverified unclassified | UnnamedContract<br>`0xb1c5e0f92bed0d926d37d334133e3f8c10c977e4` | non_address_book | unknown | unknown | unverified | n/a | `0xacaabb76e70c7a99693e9057e627088f5fec443d` |
| polygon | unverified unclassified | UnnamedContract<br>`0xb314b1dd2d810b97585b0f70e35d81e1d03185a1` | non_address_book | unknown | unknown | unverified | n/a | `0xacaabb76e70c7a99693e9057e627088f5fec443d` |
| polygon | unverified unclassified | UnnamedContract<br>`0xb6ded41129c6ed38ad72a58e0257754ba0bfaf0e` | non_address_book | unknown | unknown | unverified | n/a | `0xacaabb76e70c7a99693e9057e627088f5fec443d` |
| polygon | unverified unclassified | UnnamedContract<br>`0xbbce104c3a5fc03b0bfbc4ba6136eaa96eb16c50` | non_address_book | unknown | unknown | unverified | n/a | `0xacaabb76e70c7a99693e9057e627088f5fec443d` |
| polygon | unverified unclassified | UnnamedContract<br>`0xbda30ebd5a3d37a0414dbb9d1ced6c0ed116a057` | non_address_book | unknown | unknown | unverified | n/a | `0xacaabb76e70c7a99693e9057e627088f5fec443d` |
| polygon | unverified unclassified | UnnamedContract<br>`0xc0730b92e08ae01eb7a7c839b6cc1563bab6a49b` | non_address_book | unknown | unknown | unverified | n/a | `0xacaabb76e70c7a99693e9057e627088f5fec443d` |
| polygon | unverified unclassified | UnnamedContract<br>`0xc09f19e73c5f093cdfc511bf18297e19ec7b7844` | non_address_book | unknown | unknown | unverified | n/a | `0xacaabb76e70c7a99693e9057e627088f5fec443d` |
| polygon | unverified unclassified | UnnamedContract<br>`0xca4dea9cd9c2c6334dc625ecd00a57bec4d03357` | non_address_book | unknown | unknown | unverified | n/a | `0xacaabb76e70c7a99693e9057e627088f5fec443d` |
| polygon | unverified unclassified | UnnamedContract<br>`0xca84835655a8e863d34875326419a46f823320f6` | non_address_book | unknown | unknown | unverified | n/a | `0xacaabb76e70c7a99693e9057e627088f5fec443d` |
| polygon | unverified unclassified | UnnamedContract<br>`0xcbcae36b425ce1a94d055602b3b514aed976c383` | non_address_book | unknown | unknown | unverified | n/a | `0xacaabb76e70c7a99693e9057e627088f5fec443d` |
| polygon | unverified unclassified | UnnamedContract<br>`0xcbe86f2839319e7fa8ba62275e7e24886b882592` | non_address_book | unknown | unknown | unverified | n/a | `0xacaabb76e70c7a99693e9057e627088f5fec443d` |
| polygon | unverified unclassified | UnnamedContract<br>`0xccaa9adea42be5e32552eaadf8f9638c66c41269` | non_address_book | unknown | unknown | unverified | n/a | `0xacaabb76e70c7a99693e9057e627088f5fec443d` |
| polygon | unverified unclassified | UnnamedContract<br>`0xcfc20b96a47abeb5db61eef81e454d13b9a688e0` | non_address_book | unknown | unknown | unverified | n/a | `0xacaabb76e70c7a99693e9057e627088f5fec443d` |
| polygon | unverified unclassified | UnnamedContract<br>`0xd4642b769c413a014382ceb2c58285eef7d6b9c2` | non_address_book | unknown | unknown | unverified | n/a | `0xacaabb76e70c7a99693e9057e627088f5fec443d` |
| polygon | unverified unclassified | UnnamedContract<br>`0xd73561c23364582d3ad93f6a4c02d20653ee073b` | non_address_book | unknown | unknown | unverified | n/a | `0xacaabb76e70c7a99693e9057e627088f5fec443d` |
| polygon | unverified unclassified | UnnamedContract<br>`0xd8a3771365d4ccc7f880fa63c30a59464508d8ec` | non_address_book | unknown | unknown | unverified | n/a | `0xacaabb76e70c7a99693e9057e627088f5fec443d` |
| polygon | unverified unclassified | UnnamedContract<br>`0xdec01d6aac7356a01a528ca079148301ebde5e0f` | non_address_book | unknown | unknown | unverified | n/a | `0xacaabb76e70c7a99693e9057e627088f5fec443d` |
| polygon | unverified unclassified | UnnamedContract<br>`0xdf52efa60ad11a66c7218ee4cc311fd0c35e093f` | non_address_book | unknown | unknown | unverified | n/a | `0xacaabb76e70c7a99693e9057e627088f5fec443d` |
| polygon | unverified unclassified | UnnamedContract<br>`0xe013fea2601922d40017650fc4a7c202724072d8` | non_address_book | unknown | unknown | unverified | n/a | `0xacaabb76e70c7a99693e9057e627088f5fec443d` |
| polygon | unverified unclassified | UnnamedContract<br>`0xe159c9952d70519d6483c86b4f1af9c09d501873` | non_address_book | unknown | unknown | unverified | n/a | `0xacaabb76e70c7a99693e9057e627088f5fec443d` |
| polygon | unverified unclassified | UnnamedContract<br>`0xe20304d75516ef2e67ad99a39ab3365b3b01f3fe` | non_address_book | unknown | unknown | unverified | n/a | `0xacaabb76e70c7a99693e9057e627088f5fec443d` |
| polygon | unverified unclassified | UnnamedContract<br>`0xe31efa1577901b54cc3ec765d4d3748a2c0ab328` | non_address_book | unknown | unknown | unverified | n/a | `0xacaabb76e70c7a99693e9057e627088f5fec443d` |
| polygon | unverified unclassified | UnnamedContract<br>`0xe452d459f2930b87e15b6c05a7512158fe02a16e` | non_address_book | unknown | unknown | unverified | n/a | `0xacaabb76e70c7a99693e9057e627088f5fec443d` |
| polygon | unverified unclassified | UnnamedContract<br>`0xe50dddd477241953df249db2cbb50c9554dd1c2b` | non_address_book | unknown | unknown | unverified | n/a | `0xacaabb76e70c7a99693e9057e627088f5fec443d` |
| polygon | unverified unclassified | UnnamedContract<br>`0xe5c0d48fbc830107e12cbdb95a780eebff08db6f` | non_address_book | unknown | unknown | unverified | n/a | `0xacaabb76e70c7a99693e9057e627088f5fec443d` |
| polygon | unverified unclassified | UnnamedContract<br>`0xeb51f77d2af39c405d6c8f6694ec3998fafc1455` | non_address_book | unknown | unknown | unverified | n/a | `0xacaabb76e70c7a99693e9057e627088f5fec443d` |
| polygon | unverified unclassified | UnnamedContract<br>`0xebc110bdbd9c6b0c5156b85c91b9666b501ded43` | non_address_book | unknown | unknown | unverified | n/a | `0xacaabb76e70c7a99693e9057e627088f5fec443d` |
| polygon | unverified unclassified | UnnamedContract<br>`0xed77e46f592940486dbabf8414ff883546751215` | non_address_book | unknown | unknown | unverified | n/a | `0xacaabb76e70c7a99693e9057e627088f5fec443d` |
| polygon | unverified unclassified | UnnamedContract<br>`0xeedae48372cefef30ab8d53a53aae4dfa2a5da93` | non_address_book | unknown | unknown | unverified | n/a | `0xacaabb76e70c7a99693e9057e627088f5fec443d` |
| polygon | unverified unclassified | UnnamedContract<br>`0xf0f576169f5192b92ea45bb78f6111b9d8a5b1f4` | non_address_book | unknown | unknown | unverified | n/a | `0xacaabb76e70c7a99693e9057e627088f5fec443d` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Reports](https://cdn.prod.website-files.com/610fc6a1e961affb229320ba/633e9d068baa7b5a0d741afc_abch-siren-amm-report-feb-2022.pdf) | yAudit | Audit | 2022-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 17 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [18102] Reports — no match: Extracted contracts from scope section 4.1 and dependencies mentioned in findings. Audit date from cover page and document revisions.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Reports | AddressesProvider | unmatched — not counted | — | listed in scope section 4.1 | no |
| Reports | ChainlinkEthUsdProxy | unmatched — not counted | — | listed in scope section 4.1 | no |
| Reports | Welford | unmatched — not counted | — | listed in scope section 4.1 | no |
| Reports | VolatilityOracle | unmatched — not counted | — | listed in scope section 4.1 | no |
| Reports | BlackScholes | unmatched — not counted | — | listed in scope section 4.1 | no |
| Reports | SeriesDeployer | unmatched — not counted | — | listed in scope section 4.1 | no |
| Reports | WTokenVault | unmatched — not counted | — | listed in scope section 4.1 | no |
| Reports | AmmDataProvider | unmatched — not counted | — | listed in scope section 4.1 | no |
| Reports | AmmFactory | unmatched — not counted | — | listed in scope section 4.1 | no |
| Reports | MinterAmm | unmatched — not counted | — | listed in scope section 4.1 | no |
| Reports | SirenExchange | unmatched — not counted | — | listed in scope section 4.1 | no |
| Reports | SeriesController | unmatched — not counted | — | mentioned as dependency in scope section 3 | no |
| Reports | Proxiable | unmatched — not counted | — | mentioned as dependency in scope section 3 | no |
| Reports | EnumerableSet | unmatched — not counted | — | listed as dependency in finding 6.8 | no |
| Reports | DSMath | unmatched — not counted | — | listed as dependency in finding 6.8 | no |
| Reports | Math | unmatched — not counted | — | listed as dependency in finding 6.8 | no |
| Reports | PRBMathSD59x18 | unmatched — not counted | — | listed as dependency in finding 6.8 | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 13 |
| upstream | 0 |
| standard_library | 3 |
| needs_review | 206 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 17 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: n/a

Zero-match audit list:

- [18102] Reports

Fork inheritance lineage and inherited audits are included when available.
