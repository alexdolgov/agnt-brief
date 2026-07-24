# Agentic Audit Brief: Zoth

## Export Authority

- Production state: **published scope**
- Raw selected rows: 1 across 1 audit(s)
- Eligible audit results: 5 (1 matched; 4 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Zoth (`zoth`)
- Website: [https://zoth.io](https://zoth.io)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: avalanche, base, ethereum, manta-pacific, metis
- Contract surface: 138 unique implementations (160 raw deployments)
- Coverage basis: 1/8 confirmed own live verified implementations (12.5%); conservative 12.5% with 0 needs-review implementation(s)
- DeFi Llama TVL: $2,197,730.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Zoth. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 18 contract row(s) across avalanche, base, ethereum, manta-pacific, metis. Structural roles: 11 unclassified, 4 infra, 3 core. 7 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 18
- Structural roles: unclassified (11), infra (4), core (3)
- Contract kinds: contract (18)
- Detected standards: erc1967proxy (5), erc165 (1), erc721 (1)
- Frameworks: openzeppelin (7), openzeppelin-upgradeable (7)
- Upgradeable-pattern rows: 7

## Fork Analysis

0 of 30 contracts are derived from known codebases. 30 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x2243c2e006103720f0a02bf1971d6495e9cdefff`, chain 1)
- UnnamedContract (`0x2ed553b1d1fc27a7b888e21973311c9b181ca1dc`, chain 1)
- UnnamedContract (`0x3854702034855287be0fb4a040580cb89621290b`, chain 1)
- UnnamedContract (`0x5dafc0ee88997a2a2aa4b8e9c4411fab82fe2b16`, chain 1)
- UnnamedContract (`0x5ec9696b19e06dbfd47808bf314024b5eb32dafa`, chain 1)
- UnnamedContract (`0x6283f77db630d6fe69a454ef6cf626e98b117c9b`, chain 1)
- UnnamedContract (`0x7dc9748da8e762e569f9269f48f69a1a9f8ea761`, chain 1)
- UnnamedContract (`0x7f0cb69fa200807a13e61ebdb0c43d078a6ecfe5`, chain 1)
- UnnamedContract (`0x800bae296599d2cab2202cf7d21de96504b5aca8`, chain 1)
- UnnamedContract (`0x82f3a0392f58c50fa90542519832471bae93e43e`, chain 1)
- UnnamedContract (`0x9716501620cd6e0bd6297efc2559cdca2f941aac`, chain 1)
- UnnamedContract (`0xadb41aee4c5cd373199f3509298824c473f671f7`, chain 1)
- UnnamedContract (`0xbf1060028b212896f799cfbaea1ed4eebd060978`, chain 1)
- UnnamedContract (`0xd7cbaa06d43a248627af105c1944963143e38056`, chain 1)
- UnnamedContract (`0xe81250ed196e45881b78ae92bc978e1de4d61a22`, chain 1)
- UnnamedContract (`0xfed3d6557dc46a1b25d0a6f666513cb33835864b`, chain 1)
- UnnamedContract (`0x2d3d1a6982840dd88bc2380fd557f8a9d5e27a77`, chain 1088)
- AccessManager (`0xb027570ae95a3d546b166d805ecd216d86b7ab18`, chain 1)
- ERC1967Proxyy (`0x061a5839b9057e5ed675c6982fdfab31a3011d95`, chain 1)
- ERC1967Proxyy (`0x255f6bbec8c3310fd78cb679da529da9aa0d25a6`, chain 1)
- ERC1967Proxyy (`0x400b1894b0b68d359622f79e961915b36e454803`, chain 1)
- ERC1967Proxyy (`0x4fb32d9cc9540e002fcf78bfe6ffdcb3aa4008b8`, chain 1)
- ERC1967Proxyy (`0x675d73734546b2f668b27659bebfad7582902a18`, chain 1)
- ERC1967Proxyy (`0x70072cdbf497ce235d3d55695db6842c8a31d36d`, chain 1)
- ERC1967Proxyy (`0xc59f3b833a6366b2fb45008156253f11885f34ec`, chain 1)
- Registry (`0xc3274b69929be2213350cb28d41eed6ded464309`, chain 1)
- USYCVault (`0x598fed1b9e26a9427fa04fa01c4f110545c393b2`, chain 1)
- VaultRegistry (`0x2dfc03b5eca6823bc527e26c4a4b9dc1219dbe1c`, chain 1)
- WithdrawalSystem (`0xe1ad814210e5c95f6c849c7ac08402ab3969c0fb`, chain 1)
- ZeUSD_CDP (`0x1ba928070771d3fb148f37209cf8a6d0fe4507b0`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 18; live-surface rows included: 18 (16 live, 2 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 25/26 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/8 (12.5%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 25 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 112 discovered implementations shown in the inventory but excluded from coverage (1 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 17
- Confirmed-live implementations: 25 of 138 unique; 113 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/25
- Verified + Unaudited implementations: 24
- Verified by bytecode match: 0
- Unverified implementations: 113
- Unique implementations: 138
- Raw deployments: 160
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-03 (fresh)
- Audit staleness (calendar age): 3 fresh, 2 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| SolidityScan | Tier 2 | 1 | 4.0% | 2025-01 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ZeUSD | unknown | project_anchor | own_supporting | 1 | ethereum | unit-264005 | 2 deployments: ethereum `0xb16eb11db006230d13fc0d9679e50a5a4d389809`; ethereum `0xf2552a508618b98463192e445def1ddb88b8377d` | ✅ Audited |

### ⚠️ Verified + Unaudited (24)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AccessManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x062b7697fd492270732295e5486e405a5999c672`; ethereum `0x600b26a360097294bd6af423b7a237bf8b420430`; ethereum `0x7e43e3e643e1087cfcd3929bdaf70141675c8d58`; ethereum `0x80099b3503c4c3df597bce153d901e151643ee02`; ethereum `0xc1ce245cdf41f33b880db1cd3be2fec1fea2be5f` | ⚠️ Unaudited |
| AccessManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x19af4ae09e51e59dbfda2146ae9011f77e5fbbd6`; ethereum `0xfafede56cf18c2f75ef19a6b6c70d3f1125d8a6f` | ⚠️ Unaudited |
| AccessManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x4daffd1d2952eb68a175cb85cf79b0a9673ebedc`; ethereum `0xc148143a001798e9b03064e303016167a237b934` | ⚠️ Unaudited |
| AccessManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x63f4773fffd83a6eaa313194e2e8e111995f84e5`; ethereum `0xd48d7a3af809f31144abe3e14ed38381755a9951` | ⚠️ Unaudited |
| AccessManager | unknown | project_anchor | own_supporting | 1 | ethereum | unit-264002 | 2 deployments: ethereum `0xb027570ae95a3d546b166d805ecd216d86b7ab18`; ethereum `0xc59f3b833a6366b2fb45008156253f11885f34ec` | ⚠️ Unaudited |
| FunctionsAccessControl | governance | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x58722c4f1a8bca491dcf074ae3c6b519cc859cb7` | ⚠️ Unaudited |
| PriceOracle | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-263997 | 2 deployments: ethereum `0x0c6c7e5772184e7c26be42282f642beccde5bbb4`; ethereum `0xdd5f6461fe8503b98f0aab53ff390d327515c17f` | ⚠️ Unaudited |
| PriceOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2756bf902563b6e767a6e9ec20abfab3706715eb` | ⚠️ Unaudited |
| ProxyAdmin | governance | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5a9916c8b89f4cc97b782d5138ea54a17eb79b84` | ⚠️ Unaudited |
| RedemptionVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x87e86d6930f7e922e02cd92821fbaaf9d5e9b403`; base `0xe644034f52c816bc54d8ab8163390db2ae454734` | ⚠️ Unaudited |
| RedemptionVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbaa2de224e2161cc95d1eb97fa4769a54c81755e` | ⚠️ Unaudited |
| Registry | unknown | project_anchor | own_supporting | 1 | ethereum | unit-264003 | 2 deployments: ethereum `0x675d73734546b2f668b27659bebfad7582902a18`; ethereum `0xc3274b69929be2213350cb28d41eed6ded464309` | ⚠️ Unaudited |
| UpgradeTimelock | governance | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xff082079c027f01d61045b8eceafab92ddfd6856` | ⚠️ Unaudited |
| USYCVault | unknown | project_anchor | own_supporting | 1 | ethereum | unit-264000 | 2 deployments: ethereum `0x255f6bbec8c3310fd78cb679da529da9aa0d25a6`; ethereum `0x598fed1b9e26a9427fa04fa01c4f110545c393b2` | ⚠️ Unaudited |
| VaultRegistry | unknown | project_anchor | own_supporting | 1 | ethereum | unit-263999 | 2 deployments: ethereum `0x2dfc03b5eca6823bc527e26c4a4b9dc1219dbe1c`; ethereum `0x70072cdbf497ce235d3d55695db6842c8a31d36d` | ⚠️ Unaudited |
| WithdrawalSystem | unknown | project_anchor | own_supporting | 1 | ethereum | unit-264004 | 2 deployments: ethereum `0x4fb32d9cc9540e002fcf78bfe6ffdcb3aa4008b8`; ethereum `0xe1ad814210e5c95f6c849c7ac08402ab3969c0fb` | ⚠️ Unaudited |
| ZeUSD_CDP | unknown | project_anchor | own_supporting | 1 | ethereum | unit-263998 | 2 deployments: ethereum `0x1ba928070771d3fb148f37209cf8a6d0fe4507b0`; ethereum `0x400b1894b0b68d359622f79e961915b36e454803` | ⚠️ Unaudited |
| ZeUSD_OFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x7dc9748da8e762e569f9269f48f69a1a9f8ea761` | ⚠️ Unaudited |
| ZeUSDRouterV2 | unknown | project_anchor | own_supporting | 1 | ethereum | unit-264001 | 2 deployments: ethereum `0x061a5839b9057e5ed675c6982fdfab31a3011d95`; ethereum `0xac6e62717e8803cf119e591a0bf401d504505bd8` | ⚠️ Unaudited |
| ZeUSDRouterV2 | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x8154db5007d78dd2deb7d4d6940752feb5498551`; ethereum `0xf1fd735f81e306743eff3850a39656d156681f5c` | ⚠️ Unaudited |
| zOPAL | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x2e9705d95f1624fab9caaba775234571bd557f24`; base `0x79c89e7bc0db947b4194ebf8b35e1e00ad68bccb` | ⚠️ Unaudited |
| zOPAL | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x83ca3db8d431b769b2260ff2ecd4fa15001203e5`; base `0xe603206d9d1869023b548d2f5daba3a07852a1d8` | ⚠️ Unaudited |
| zOPALDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x06ff0ba6a53a42e20599eddb6bcae481b779a751`; base `0x6578fe7a4a8c0b8c34fc8c85a8f99cc16affe850` | ⚠️ Unaudited |
| ZothAccessControl | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x11e5c20a11e8b75bb2ae6f136dab1cbb1da9cbb1`; base `0x5325875510f29686553fc213494a6842aefcfa14` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (113)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Proxy (impl: 0x6f4d7192e66feacf6e3f65cfeae3f69c49ef9b03) | proxy | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | `0x7dc9748da8e762e569f9269f48f69a1a9f8ea761` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00656c1a6ba0d06875080a3972dd3799554f39f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x06897cef8e835c93c7f0b461b02cd6e00e95988a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d176a4d178623f6e2897b8884215e244fdfe578` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x128eeae767040c06211e1cb823f90fbf2ade3754` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x149a027c2fae84fb01d8e63cb497dc4649ec0db7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x19f59d2d5a8c83a8698879ac8f3c6c4b024866dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a0cd2e04d91ddb1ff714986d043bb0539afac76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1bab53c4c0743006a925ee4a2007b24184e13485` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e53b208e80482c631e650118e24dd29a6e15d11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1f10cf706b82dff39a7853f3cb64b9481d02d67b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263980 | `0x2243c2e006103720f0a02bf1971d6495e9cdefff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24196cc8581e2b7560a1eadf34c0d22fe02b08c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x29810c05eb9919f79330462edf5f32e8e9b760ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d3d1a6982840dd88bc2380fd557f8a9d5e27a77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e3bb9c02db18ae354c69361f8f3c562675156b9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263981 | `0x2ed553b1d1fc27a7b888e21973311c9b181ca1dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2f52c3664ff2b12a1a8bc7b6020c7e92dba781ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x34ceee4b1e84c42b21dacb91b383fba31682f6bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x358ff3e7c56c306a5840bc4f4cce4b27e641e481` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x36d37b361eece99b61a5b39579919ffb71fac01f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263982 | `0x3854702034855287be0fb4a040580cb89621290b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3959adc937bf30c783e8feff29cf51fa2070bebd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ac2c309613c14db31e3831bca16e8213627b141` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3bf1e2836bc9b84ecb2f0e090db481e0adeb3d68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c3d92c2b6d2bf1744b25937abbcfbc95bf8978c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ec472c9cf3d7507e4c2503d289437fa1afcf246` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41c14728f3fafb746cae053e1f6f2df4927c26ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41d0022e2fde1e83dc0ba0960712649c12f67b83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41d9db45dd3ec3eea036ee4176e1b9f941e6da45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4928c8164ec9b42eb4c0e6d0d4c7adc42f6d14df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a052ddbbfc1819b1ecd81b82ce19bc85ca18415` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4caae272a178b47cc99ff2bfc5440346f7be6793` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4d063dabc72092694c1fceddc3571d82928efd2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e3adf3f61ff41981afe9cd61269e15ffad2047e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x56340f3ebf1beca5abdd7d3c32cd66095d5429a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x589fa331247e85383a00971502a12d13edcbb48a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5957c4157b328011b7ddfb3f358e418a33b7ae0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b780875ee3a6484393d8787d5d38bf405778e94` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263983 | `0x5dafc0ee88997a2a2aa4b8e9c4411fab82fe2b16` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263984 | `0x5ec9696b19e06dbfd47808bf314024b5eb32dafa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5f7c53fb8ece35f5312090e6dfff92b5dc7d754a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5fe5f088fef3c9b8f020eba3756fa133bbddfb1c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x60c4d33e67bdfb31af1d27636a0bde6d1d2c5976` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263985 | `0x6283f77db630d6fe69a454ef6cf626e98b117c9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x654874447194fda97613a18bcfb952e237309c26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6886b1d8d477c868c0473111f4b974d072e7f430` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x699e4478b8aa5dbcd2f7b6b191bdb1fece42476a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6f7b2d26cf567d3ef0f27a7a990becb95c4612e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7105a8d323a4171c7cbec35beb8c99553efdcc94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7254aa8b084ac515bff2934966b5e81854d11607` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x793dc48a30314a85c568226c4f6b4eb5d15c28ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a82a21cbd454cadba6c8b80842fcd0148352a79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7b88e4b7ff60b0914d83906da48b182b8dd4a43c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7cb771ca7b9abcccfdc19564e7260795cd51629e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263986 | `0x7dc9748da8e762e569f9269f48f69a1a9f8ea761` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7e3b91d82dad2999bf61d8df72731648552945eb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263987 | `0x7f0cb69fa200807a13e61ebdb0c43d078a6ecfe5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f1c1f2f3ff0a5a16f9ad11e1e28f0fb77967c50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7fe7597b4ce4f66d7d1c4a1524b9eab37b8beed6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263988 | `0x800bae296599d2cab2202cf7d21de96504b5aca8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x814c4c71f0bb0cee4b94c74f00695aef781c6711` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263989 | `0x82f3a0392f58c50fa90542519832471bae93e43e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x84a0d07987b36b5c9a44fd7cf8557a91181346ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8884fdd0768484fdbcc789908deefa8e6b78bf5d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f0ce8e3779c18464f9dbcdd15c437aebd88525f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263990 | `0x9716501620cd6e0bd6297efc2559cdca2f941aac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x982daa73b74a9ce2b02bb0f0e7a15592f26da318` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9eebf68ea2ba812599db21e5c7108f38575bb6b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa02a2628e6003cf23b2d82b61c30fc2a01304cdc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa20a448a24903939b2b2616533fbbac451db44f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa26c113974ea4f40837065fdd783e27bfa285e50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa40e2177d292952afba9222c9bf1563c7c2a2b29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa5518b599e3e7607f956f8f732aab8d431a683b3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263991 | `0xadb41aee4c5cd373199f3509298824c473f671f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb15237c97ca387473e1076db4c801aceac2bf52b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe1b3a0268b4153d9a1633ab184826365ff06a14` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263992 | `0xbf1060028b212896f799cfbaea1ed4eebd060978` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc1ee8d30940a40fadf6bf48b00a5c5faf8e7bbb1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc41aa668987784ddea4327f50f2a943ef22e500a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc80a5a2658fd44e76b0940773bd3c2c2cd9454de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc949e66d4abae250bbd2466343ed0115fb2cdfcb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcbb10f0f04b0a6e709f1847551e902eaf1a21cfe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd052456a69e75dc26deac8d068e84bfe8a832cc5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263993 | `0xd7cbaa06d43a248627af105c1944963143e38056` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd8036100e7198d81fa4bf3acbc66aa37b8b808bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd9f0ae5ec8a1ac2aa2f3bbec96c2e92a4ed3e3fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda7556179d7d7039a7725b90373d50b8d6cdf907` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdd94632290f0a75c30e346eda0f265fa3a372203` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdff1f34e59a14f5cd07d14ccc5d5007e9cddd14c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe1f8d488f16a5502bf6034f013738aa2e6526be5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe257495224eb1bd710ff18c3758c8a87cde46137` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe47408a72ddaf5c0c963ccf7d8db375c362d3cc3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe5170379fddece85e312ba5f4848231ba8bcd88c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe7bde856c071b7528b2bc2cdec3fb336d7402a38` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263994 | `0xe81250ed196e45881b78ae92bc978e1de4d61a22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe9d1bd3075167bca28578a253ce7bbec92406c35` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xea25b537209ec4aefbc7252c6a49b132639ea677` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeac01224a99f50ba3935647c12fad63122df5343` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb3729b41aceceb59dd7b7ffec8481b3dea183a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeceb107102abad928712c0a3b68842750afaeebd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf2afe5814a1f3b143844fe50a0f8a9bce3c16f99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf5429683a15340a859dfdbd1b2de37b1ea77c2d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf5b0831cbd2e44e13254847077dd0e8be9a94424` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf5b1084b3f68f347a6099e3eabb279d9e8be122b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfa00703b9213af238c166f58d24c528f00d59ba3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfdfc611e17298df89c0ff6ef9c5059a4bd9602b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe5e701a67879b0fdcfbf2d1d978cf820633e29a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263995 | `0xfed3d6557dc46a1b25d0a6f666513cb33835864b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | metis | unit-263996 | `0x2d3d1a6982840dd88bc2380fd557f8a9d5e27a77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x15925a7571f5bd7ce67eeeddfaa31136e565683e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x973bd2510d866b1f2494c97ca9fd9595037b2f04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb9dd4396f0f849508e96e656af1a10f83ea314c6` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 123
- Live contracts: 16
- Unknown liveness contracts: 107
- Source-verified contracts: 32
- Currently scope-matched contracts retained as-is: 1
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: currently scope matched=1, candidate review=10, third party or infra=1, exact address book overlap=7, source verified unclassified=13, unverified unclassified=91

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| base | candidate review | RedemptionVault<br>`0xe644034f52c816bc54d8ab8163390db2ae454734` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x2e62214157d3ec2a05771cd230292591bb15b6a2` |
| base | candidate review | TransparentUpgradeableProxy<br>`0x11e5c20a11e8b75bb2ae6f136dab1cbb1da9cbb1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x2e62214157d3ec2a05771cd230292591bb15b6a2` |
| base | candidate review | TransparentUpgradeableProxy<br>`0x2e9705d95f1624fab9caaba775234571bd557f24` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x2e62214157d3ec2a05771cd230292591bb15b6a2` |
| base | candidate review | TransparentUpgradeableProxy<br>`0x6578fe7a4a8c0b8c34fc8c85a8f99cc16affe850` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x2e62214157d3ec2a05771cd230292591bb15b6a2` |
| base | candidate review | TransparentUpgradeableProxy<br>`0x87e86d6930f7e922e02cd92821fbaaf9d5e9b403` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x2e62214157d3ec2a05771cd230292591bb15b6a2` |
| base | candidate review | zOPAL<br>`0x79c89e7bc0db947b4194ebf8b35e1e00ad68bccb` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x2e62214157d3ec2a05771cd230292591bb15b6a2` |
| base | candidate review | zOPALDepositVault<br>`0x06ff0ba6a53a42e20599eddb6bcae481b779a751` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x2e62214157d3ec2a05771cd230292591bb15b6a2` |
| base | candidate review | ZothAccessControl<br>`0x5325875510f29686553fc213494a6842aefcfa14` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x2e62214157d3ec2a05771cd230292591bb15b6a2` |
| ethereum | currently scope matched | ERC1967Proxyy<br>`0xb16eb11db006230d13fc0d9679e50a5a4d389809` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x09782da5bbc13dbbb2a32dd0b0ed62136278c59c` |
| ethereum | candidate review | ZeUSD<br>`0xf2552a508618b98463192e445def1ddb88b8377d` | retained_scope_excluded_inventory | unknown | live | verified | review: no_fresh_structural_match | `0x09782da5bbc13dbbb2a32dd0b0ed62136278c59c` |
| ethereum | candidate review | ZeUSDRouterV2<br>`0xac6e62717e8803cf119e591a0bf401d504505bd8` | retained_scope_excluded_inventory | unknown | live | verified | review: no_fresh_structural_match | `0x09782da5bbc13dbbb2a32dd0b0ed62136278c59c` |
| ethereum | third party or infra | ERC1967Proxyy<br>`0xdd5f6461fe8503b98f0aab53ff390d327515c17f` | external_dependency_or_infra | unknown | unknown | verified | n/a | `0x09782da5bbc13dbbb2a32dd0b0ed62136278c59c` |
| ethereum | exact address book overlap | ERC1967Proxyy<br>`0x061a5839b9057e5ed675c6982fdfab31a3011d95` | project_anchor | unknown | live | verified | n/a | `0x09782da5bbc13dbbb2a32dd0b0ed62136278c59c` |
| ethereum | exact address book overlap | ERC1967Proxyy<br>`0x255f6bbec8c3310fd78cb679da529da9aa0d25a6` | project_anchor | unknown | live | verified | n/a | `0x09782da5bbc13dbbb2a32dd0b0ed62136278c59c` |
| ethereum | exact address book overlap | ERC1967Proxyy<br>`0x400b1894b0b68d359622f79e961915b36e454803` | project_anchor | unknown | live | verified | n/a | `0x09782da5bbc13dbbb2a32dd0b0ed62136278c59c` |
| ethereum | exact address book overlap | ERC1967Proxyy<br>`0x4fb32d9cc9540e002fcf78bfe6ffdcb3aa4008b8` | project_anchor | unknown | live | verified | n/a | `0x09782da5bbc13dbbb2a32dd0b0ed62136278c59c` |
| ethereum | exact address book overlap | ERC1967Proxyy<br>`0x675d73734546b2f668b27659bebfad7582902a18` | project_anchor | unknown | live | verified | n/a | `0x09782da5bbc13dbbb2a32dd0b0ed62136278c59c` |
| ethereum | exact address book overlap | ERC1967Proxyy<br>`0x70072cdbf497ce235d3d55695db6842c8a31d36d` | project_anchor | unknown | live | verified | n/a | `0x09782da5bbc13dbbb2a32dd0b0ed62136278c59c` |
| ethereum | exact address book overlap | ERC1967Proxyy<br>`0xc59f3b833a6366b2fb45008156253f11885f34ec` | project_anchor | unknown | live | verified | n/a | `0x09782da5bbc13dbbb2a32dd0b0ed62136278c59c` |
| ethereum | source verified unclassified | AccessManager<br>`0x63f4773fffd83a6eaa313194e2e8e111995f84e5` | non_address_book | unknown | unknown | verified | n/a | `0x09782da5bbc13dbbb2a32dd0b0ed62136278c59c` |
| ethereum | source verified unclassified | AccessManager<br>`0xb027570ae95a3d546b166d805ecd216d86b7ab18` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x09782da5bbc13dbbb2a32dd0b0ed62136278c59c` |
| ethereum | source verified unclassified | AccessManager<br>`0xc148143a001798e9b03064e303016167a237b934` | non_address_book | unknown | unknown | verified | n/a | `0x09782da5bbc13dbbb2a32dd0b0ed62136278c59c` |
| ethereum | source verified unclassified | AccessManager<br>`0xfafede56cf18c2f75ef19a6b6c70d3f1125d8a6f` | non_address_book | unknown | unknown | verified | n/a | `0x09782da5bbc13dbbb2a32dd0b0ed62136278c59c` |
| ethereum | source verified unclassified | ERC1967Proxyy<br>`0x19af4ae09e51e59dbfda2146ae9011f77e5fbbd6` | non_address_book | unknown | unknown | verified | n/a | `0x09782da5bbc13dbbb2a32dd0b0ed62136278c59c` |
| ethereum | source verified unclassified | ERC1967Proxyy<br>`0x4daffd1d2952eb68a175cb85cf79b0a9673ebedc` | non_address_book | unknown | unknown | verified | n/a | `0x09782da5bbc13dbbb2a32dd0b0ed62136278c59c` |
| ethereum | source verified unclassified | ERC1967Proxyy<br>`0xd48d7a3af809f31144abe3e14ed38381755a9951` | non_address_book | unknown | unknown | verified | n/a | `0x09782da5bbc13dbbb2a32dd0b0ed62136278c59c` |
| ethereum | source verified unclassified | PriceOracle<br>`0x0c6c7e5772184e7c26be42282f642beccde5bbb4` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0x09782da5bbc13dbbb2a32dd0b0ed62136278c59c` |
| ethereum | source verified unclassified | Registry<br>`0xc3274b69929be2213350cb28d41eed6ded464309` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x09782da5bbc13dbbb2a32dd0b0ed62136278c59c` |
| ethereum | source verified unclassified | USYCVault<br>`0x598fed1b9e26a9427fa04fa01c4f110545c393b2` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x09782da5bbc13dbbb2a32dd0b0ed62136278c59c` |
| ethereum | source verified unclassified | VaultRegistry<br>`0x2dfc03b5eca6823bc527e26c4a4b9dc1219dbe1c` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x09782da5bbc13dbbb2a32dd0b0ed62136278c59c` |
| ethereum | source verified unclassified | WithdrawalSystem<br>`0xe1ad814210e5c95f6c849c7ac08402ab3969c0fb` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x09782da5bbc13dbbb2a32dd0b0ed62136278c59c` |
| ethereum | source verified unclassified | ZeUSD_CDP<br>`0x1ba928070771d3fb148f37209cf8a6d0fe4507b0` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x09782da5bbc13dbbb2a32dd0b0ed62136278c59c` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x00656c1a6ba0d06875080a3972dd3799554f39f8` | non_address_book | unknown | unknown | unverified | n/a | `0x3604582f56565d7060d73829ffb9ebd579218dca` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x06897cef8e835c93c7f0b461b02cd6e00e95988a` | non_address_book | unknown | unknown | unverified | n/a | `0x3604582f56565d7060d73829ffb9ebd579218dca` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0d176a4d178623f6e2897b8884215e244fdfe578` | non_address_book | unknown | unknown | unverified | n/a | `0x3604582f56565d7060d73829ffb9ebd579218dca` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x128eeae767040c06211e1cb823f90fbf2ade3754` | non_address_book | unknown | unknown | unverified | n/a | `0x3604582f56565d7060d73829ffb9ebd579218dca` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x149a027c2fae84fb01d8e63cb497dc4649ec0db7` | non_address_book | unknown | unknown | unverified | n/a | `0x3604582f56565d7060d73829ffb9ebd579218dca` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x19f59d2d5a8c83a8698879ac8f3c6c4b024866dd` | non_address_book | unknown | unknown | unverified | n/a | `0x3604582f56565d7060d73829ffb9ebd579218dca` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1a0cd2e04d91ddb1ff714986d043bb0539afac76` | non_address_book | unknown | unknown | unverified | n/a | `0x3604582f56565d7060d73829ffb9ebd579218dca` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1bab53c4c0743006a925ee4a2007b24184e13485` | non_address_book | unknown | unknown | unverified | n/a | `0x3604582f56565d7060d73829ffb9ebd579218dca` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1e53b208e80482c631e650118e24dd29a6e15d11` | non_address_book | unknown | unknown | unverified | n/a | `0x3604582f56565d7060d73829ffb9ebd579218dca` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1f10cf706b82dff39a7853f3cb64b9481d02d67b` | non_address_book | unknown | unknown | unverified | n/a | `0x3604582f56565d7060d73829ffb9ebd579218dca` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x24196cc8581e2b7560a1eadf34c0d22fe02b08c4` | non_address_book | unknown | unknown | unverified | n/a | `0x3604582f56565d7060d73829ffb9ebd579218dca` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x29810c05eb9919f79330462edf5f32e8e9b760ff` | non_address_book | unknown | unknown | unverified | n/a | `0x3604582f56565d7060d73829ffb9ebd579218dca` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2e3bb9c02db18ae354c69361f8f3c562675156b9` | non_address_book | unknown | unknown | unverified | n/a | `0x3604582f56565d7060d73829ffb9ebd579218dca` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2f52c3664ff2b12a1a8bc7b6020c7e92dba781ae` | non_address_book | unknown | unknown | unverified | n/a | `0x3604582f56565d7060d73829ffb9ebd579218dca` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x34ceee4b1e84c42b21dacb91b383fba31682f6bc` | non_address_book | unknown | unknown | unverified | n/a | `0x3604582f56565d7060d73829ffb9ebd579218dca` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x358ff3e7c56c306a5840bc4f4cce4b27e641e481` | non_address_book | unknown | unknown | unverified | n/a | `0x3604582f56565d7060d73829ffb9ebd579218dca` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x36d37b361eece99b61a5b39579919ffb71fac01f` | non_address_book | unknown | unknown | unverified | n/a | `0x3604582f56565d7060d73829ffb9ebd579218dca` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3959adc937bf30c783e8feff29cf51fa2070bebd` | non_address_book | unknown | unknown | unverified | n/a | `0x3604582f56565d7060d73829ffb9ebd579218dca` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3ac2c309613c14db31e3831bca16e8213627b141` | non_address_book | unknown | unknown | unverified | n/a | `0x3604582f56565d7060d73829ffb9ebd579218dca` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3bf1e2836bc9b84ecb2f0e090db481e0adeb3d68` | non_address_book | unknown | unknown | unverified | n/a | `0x3604582f56565d7060d73829ffb9ebd579218dca` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3c3d92c2b6d2bf1744b25937abbcfbc95bf8978c` | non_address_book | unknown | unknown | unverified | n/a | `0x3604582f56565d7060d73829ffb9ebd579218dca` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3ec472c9cf3d7507e4c2503d289437fa1afcf246` | non_address_book | unknown | unknown | unverified | n/a | `0x3604582f56565d7060d73829ffb9ebd579218dca` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x41c14728f3fafb746cae053e1f6f2df4927c26ea` | non_address_book | unknown | unknown | unverified | n/a | `0x3604582f56565d7060d73829ffb9ebd579218dca` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x41d0022e2fde1e83dc0ba0960712649c12f67b83` | non_address_book | unknown | unknown | unverified | n/a | `0x3604582f56565d7060d73829ffb9ebd579218dca` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x41d9db45dd3ec3eea036ee4176e1b9f941e6da45` | non_address_book | unknown | unknown | unverified | n/a | `0x3604582f56565d7060d73829ffb9ebd579218dca` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4928c8164ec9b42eb4c0e6d0d4c7adc42f6d14df` | non_address_book | unknown | unknown | unverified | n/a | `0x3604582f56565d7060d73829ffb9ebd579218dca` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4a052ddbbfc1819b1ecd81b82ce19bc85ca18415` | non_address_book | unknown | unknown | unverified | n/a | `0x3604582f56565d7060d73829ffb9ebd579218dca` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4caae272a178b47cc99ff2bfc5440346f7be6793` | non_address_book | unknown | unknown | unverified | n/a | `0x3604582f56565d7060d73829ffb9ebd579218dca` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4d063dabc72092694c1fceddc3571d82928efd2b` | non_address_book | unknown | unknown | unverified | n/a | `0x3604582f56565d7060d73829ffb9ebd579218dca` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4e3adf3f61ff41981afe9cd61269e15ffad2047e` | non_address_book | unknown | unknown | unverified | n/a | `0x3604582f56565d7060d73829ffb9ebd579218dca` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x589fa331247e85383a00971502a12d13edcbb48a` | non_address_book | unknown | unknown | unverified | n/a | `0x3604582f56565d7060d73829ffb9ebd579218dca` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5957c4157b328011b7ddfb3f358e418a33b7ae0a` | non_address_book | unknown | unknown | unverified | n/a | `0x3604582f56565d7060d73829ffb9ebd579218dca` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5b780875ee3a6484393d8787d5d38bf405778e94` | non_address_book | unknown | unknown | unverified | n/a | `0x3604582f56565d7060d73829ffb9ebd579218dca` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5f7c53fb8ece35f5312090e6dfff92b5dc7d754a` | non_address_book | unknown | unknown | unverified | n/a | `0x3604582f56565d7060d73829ffb9ebd579218dca` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5fe5f088fef3c9b8f020eba3756fa133bbddfb1c` | non_address_book | unknown | unknown | unverified | n/a | `0x3604582f56565d7060d73829ffb9ebd579218dca` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x60c4d33e67bdfb31af1d27636a0bde6d1d2c5976` | non_address_book | unknown | unknown | unverified | n/a | `0x3604582f56565d7060d73829ffb9ebd579218dca` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x654874447194fda97613a18bcfb952e237309c26` | non_address_book | unknown | unknown | unverified | n/a | `0x3604582f56565d7060d73829ffb9ebd579218dca` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6886b1d8d477c868c0473111f4b974d072e7f430` | non_address_book | unknown | unknown | unverified | n/a | `0x3604582f56565d7060d73829ffb9ebd579218dca` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x699e4478b8aa5dbcd2f7b6b191bdb1fece42476a` | non_address_book | unknown | unknown | unverified | n/a | `0x3604582f56565d7060d73829ffb9ebd579218dca` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6f7b2d26cf567d3ef0f27a7a990becb95c4612e7` | non_address_book | unknown | unknown | unverified | n/a | `0x3604582f56565d7060d73829ffb9ebd579218dca` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7105a8d323a4171c7cbec35beb8c99553efdcc94` | non_address_book | unknown | unknown | unverified | n/a | `0x3604582f56565d7060d73829ffb9ebd579218dca` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7254aa8b084ac515bff2934966b5e81854d11607` | non_address_book | unknown | unknown | unverified | n/a | `0x3604582f56565d7060d73829ffb9ebd579218dca` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x793dc48a30314a85c568226c4f6b4eb5d15c28ef` | non_address_book | unknown | unknown | unverified | n/a | `0x3604582f56565d7060d73829ffb9ebd579218dca` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7a82a21cbd454cadba6c8b80842fcd0148352a79` | non_address_book | unknown | unknown | unverified | n/a | `0x3604582f56565d7060d73829ffb9ebd579218dca` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7b88e4b7ff60b0914d83906da48b182b8dd4a43c` | non_address_book | unknown | unknown | unverified | n/a | `0x3604582f56565d7060d73829ffb9ebd579218dca` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7cb771ca7b9abcccfdc19564e7260795cd51629e` | non_address_book | unknown | unknown | unverified | n/a | `0x3604582f56565d7060d73829ffb9ebd579218dca` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7e3b91d82dad2999bf61d8df72731648552945eb` | non_address_book | unknown | unknown | unverified | n/a | `0x3604582f56565d7060d73829ffb9ebd579218dca` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7f1c1f2f3ff0a5a16f9ad11e1e28f0fb77967c50` | non_address_book | unknown | unknown | unverified | n/a | `0x3604582f56565d7060d73829ffb9ebd579218dca` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7fe7597b4ce4f66d7d1c4a1524b9eab37b8beed6` | non_address_book | unknown | unknown | unverified | n/a | `0x3604582f56565d7060d73829ffb9ebd579218dca` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x814c4c71f0bb0cee4b94c74f00695aef781c6711` | non_address_book | unknown | unknown | unverified | n/a | `0x3604582f56565d7060d73829ffb9ebd579218dca` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x84a0d07987b36b5c9a44fd7cf8557a91181346ec` | non_address_book | unknown | unknown | unverified | n/a | `0x3604582f56565d7060d73829ffb9ebd579218dca` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8884fdd0768484fdbcc789908deefa8e6b78bf5d` | non_address_book | unknown | unknown | unverified | n/a | `0x3604582f56565d7060d73829ffb9ebd579218dca` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8f0ce8e3779c18464f9dbcdd15c437aebd88525f` | non_address_book | unknown | unknown | unverified | n/a | `0x3604582f56565d7060d73829ffb9ebd579218dca` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9eebf68ea2ba812599db21e5c7108f38575bb6b4` | non_address_book | unknown | unknown | unverified | n/a | `0x3604582f56565d7060d73829ffb9ebd579218dca` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa02a2628e6003cf23b2d82b61c30fc2a01304cdc` | non_address_book | unknown | unknown | unverified | n/a | `0x3604582f56565d7060d73829ffb9ebd579218dca` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa20a448a24903939b2b2616533fbbac451db44f8` | non_address_book | unknown | unknown | unverified | n/a | `0x3604582f56565d7060d73829ffb9ebd579218dca` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa26c113974ea4f40837065fdd783e27bfa285e50` | non_address_book | unknown | unknown | unverified | n/a | `0x3604582f56565d7060d73829ffb9ebd579218dca` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa40e2177d292952afba9222c9bf1563c7c2a2b29` | non_address_book | unknown | unknown | unverified | n/a | `0x3604582f56565d7060d73829ffb9ebd579218dca` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa5518b599e3e7607f956f8f732aab8d431a683b3` | non_address_book | unknown | unknown | unverified | n/a | `0x3604582f56565d7060d73829ffb9ebd579218dca` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb15237c97ca387473e1076db4c801aceac2bf52b` | non_address_book | unknown | unknown | unverified | n/a | `0x3604582f56565d7060d73829ffb9ebd579218dca` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xbe1b3a0268b4153d9a1633ab184826365ff06a14` | non_address_book | unknown | unknown | unverified | n/a | `0x3604582f56565d7060d73829ffb9ebd579218dca` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc1ee8d30940a40fadf6bf48b00a5c5faf8e7bbb1` | non_address_book | unknown | unknown | unverified | n/a | `0x3604582f56565d7060d73829ffb9ebd579218dca` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc41aa668987784ddea4327f50f2a943ef22e500a` | non_address_book | unknown | unknown | unverified | n/a | `0x3604582f56565d7060d73829ffb9ebd579218dca` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc80a5a2658fd44e76b0940773bd3c2c2cd9454de` | non_address_book | unknown | unknown | unverified | n/a | `0x3604582f56565d7060d73829ffb9ebd579218dca` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc949e66d4abae250bbd2466343ed0115fb2cdfcb` | non_address_book | unknown | unknown | unverified | n/a | `0x3604582f56565d7060d73829ffb9ebd579218dca` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xcbb10f0f04b0a6e709f1847551e902eaf1a21cfe` | non_address_book | unknown | unknown | unverified | n/a | `0x3604582f56565d7060d73829ffb9ebd579218dca` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd052456a69e75dc26deac8d068e84bfe8a832cc5` | non_address_book | unknown | unknown | unverified | n/a | `0x3604582f56565d7060d73829ffb9ebd579218dca` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd8036100e7198d81fa4bf3acbc66aa37b8b808bf` | non_address_book | unknown | unknown | unverified | n/a | `0x3604582f56565d7060d73829ffb9ebd579218dca` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd9f0ae5ec8a1ac2aa2f3bbec96c2e92a4ed3e3fd` | non_address_book | unknown | unknown | unverified | n/a | `0x3604582f56565d7060d73829ffb9ebd579218dca` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xda7556179d7d7039a7725b90373d50b8d6cdf907` | non_address_book | unknown | unknown | unverified | n/a | `0x3604582f56565d7060d73829ffb9ebd579218dca` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xdd94632290f0a75c30e346eda0f265fa3a372203` | non_address_book | unknown | unknown | unverified | n/a | `0x3604582f56565d7060d73829ffb9ebd579218dca` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xdff1f34e59a14f5cd07d14ccc5d5007e9cddd14c` | non_address_book | unknown | unknown | unverified | n/a | `0x3604582f56565d7060d73829ffb9ebd579218dca` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe1f8d488f16a5502bf6034f013738aa2e6526be5` | non_address_book | unknown | unknown | unverified | n/a | `0x3604582f56565d7060d73829ffb9ebd579218dca` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe257495224eb1bd710ff18c3758c8a87cde46137` | non_address_book | unknown | unknown | unverified | n/a | `0x3604582f56565d7060d73829ffb9ebd579218dca` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe47408a72ddaf5c0c963ccf7d8db375c362d3cc3` | non_address_book | unknown | unknown | unverified | n/a | `0x3604582f56565d7060d73829ffb9ebd579218dca` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe5170379fddece85e312ba5f4848231ba8bcd88c` | non_address_book | unknown | unknown | unverified | n/a | `0x3604582f56565d7060d73829ffb9ebd579218dca` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe7bde856c071b7528b2bc2cdec3fb336d7402a38` | non_address_book | unknown | unknown | unverified | n/a | `0x3604582f56565d7060d73829ffb9ebd579218dca` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe9d1bd3075167bca28578a253ce7bbec92406c35` | non_address_book | unknown | unknown | unverified | n/a | `0x3604582f56565d7060d73829ffb9ebd579218dca` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xea25b537209ec4aefbc7252c6a49b132639ea677` | non_address_book | unknown | unknown | unverified | n/a | `0x3604582f56565d7060d73829ffb9ebd579218dca` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xeac01224a99f50ba3935647c12fad63122df5343` | non_address_book | unknown | unknown | unverified | n/a | `0x3604582f56565d7060d73829ffb9ebd579218dca` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xeb3729b41aceceb59dd7b7ffec8481b3dea183a9` | non_address_book | unknown | unknown | unverified | n/a | `0x3604582f56565d7060d73829ffb9ebd579218dca` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xeceb107102abad928712c0a3b68842750afaeebd` | non_address_book | unknown | unknown | unverified | n/a | `0x3604582f56565d7060d73829ffb9ebd579218dca` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf2afe5814a1f3b143844fe50a0f8a9bce3c16f99` | non_address_book | unknown | unknown | unverified | n/a | `0x3604582f56565d7060d73829ffb9ebd579218dca` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf5b0831cbd2e44e13254847077dd0e8be9a94424` | non_address_book | unknown | unknown | unverified | n/a | `0x3604582f56565d7060d73829ffb9ebd579218dca` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf5b1084b3f68f347a6099e3eabb279d9e8be122b` | non_address_book | unknown | unknown | unverified | n/a | `0x3604582f56565d7060d73829ffb9ebd579218dca` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfa00703b9213af238c166f58d24c528f00d59ba3` | non_address_book | unknown | unknown | unverified | n/a | `0x3604582f56565d7060d73829ffb9ebd579218dca` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfdfc611e17298df89c0ff6ef9c5059a4bd9602b1` | non_address_book | unknown | unknown | unverified | n/a | `0x3604582f56565d7060d73829ffb9ebd579218dca` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfe5e701a67879b0fdcfbf2d1d978cf820633e29a` | non_address_book | unknown | unknown | unverified | n/a | `0x3604582f56565d7060d73829ffb9ebd579218dca` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x56340f3ebf1beca5abdd7d3c32cd66095d5429a2` | non_address_book | unknown | unknown | unverified | n/a | `0xd8b026b8d382f8feaac5a6a1567fe19d47cd1691` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x982daa73b74a9ce2b02bb0f0e7a15592f26da318` | non_address_book | unknown | unknown | unverified | n/a | `0xd8b026b8d382f8feaac5a6a1567fe19d47cd1691` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf5429683a15340a859dfdbd1b2de37b1ea77c2d5` | non_address_book | unknown | unknown | unverified | n/a | `0xd8b026b8d382f8feaac5a6a1567fe19d47cd1691` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [spaces/mMWQLQN0GHKRXP2us07C/uploads/8csMoFUI4T4MyCctrCfQ/Hacken Zeusd Contracts Dec2024.pdf](https://3583014216-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FmMWQLQN0GHKRXP2us07C%2Fuploads%2F8csMoFUI4T4MyCctrCfQ%2FHacken%20Zeusd%20Contracts%20Dec2024.pdf) | Hacken | Audit | 2025-01 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 11 | high |
| [spaces/mMWQLQN0GHKRXP2us07C/uploads/CIkyRzhjzbJxAdhVDwfV/SolidityScan ZeUSD Contracts Dec2024.pdf](https://3583014216-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FmMWQLQN0GHKRXP2us07C%2Fuploads%2FCIkyRzhjzbJxAdhVDwfV%2FSolidityScan%20ZeUSD%20Contracts%20Dec2024.pdf) | SolidityScan | Audit | 2025-01 | aging | Direct | n/a | matched | 1 | 1 | 0 | 4 | n/a |
| [ENTERSOFT.pdf](https://github.com/0xZothio/zVault/blob/dev/audits/ENTERSOFT.pdf) | ENTERSOFT | Audit | 2026-02 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 30 | n/a |
| [CLAUDE.pdf](https://github.com/0xZothio/zVault/blob/dev/audits/CLAUDE.pdf) | Claude | Audit | 2026-03 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 30 | n/a |
| [EVMBENCH.pdf](https://github.com/0xZothio/zVault/blob/dev/audits/EVMBENCH.pdf) | EVM Bench | Audit | 2026-03 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 30 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2868] spaces/mMWQLQN0GHKRXP2us07C/uploads/8csMoFUI4T4MyCctrCfQ/Hacken Zeusd Contracts Dec2024.pdf — no match: Scope section explicitly lists 11 smart contracts from the repository. Audit date is 02/01/2025 (January 2, 2025).
- [2869] spaces/mMWQLQN0GHKRXP2us07C/uploads/CIkyRzhjzbJxAdhVDwfV/SolidityScan ZeUSD Contracts Dec2024.pdf — matched: No reason recorded
- [2870] ENTERSOFT.pdf — no match: No reason recorded
- [2871] CLAUDE.pdf — no match: No reason recorded
- [2872] EVMBENCH.pdf — no match: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| spaces/mMWQLQN0GHKRXP2us07C/uploads/8csMoFUI4T4MyCctrCfQ/Hacken Zeusd Contracts Dec2024.pdf | CollateralVault | unmatched — not counted | — | listed in scope | no |
| spaces/mMWQLQN0GHKRXP2us07C/uploads/8csMoFUI4T4MyCctrCfQ/Hacken Zeusd Contracts Dec2024.pdf | ICollateralVault | unmatched — not counted | — | listed in scope | no |
| spaces/mMWQLQN0GHKRXP2us07C/uploads/8csMoFUI4T4MyCctrCfQ/Hacken Zeusd Contracts Dec2024.pdf | IFundVaultV2 | unmatched — not counted | — | listed in scope | no |
| spaces/mMWQLQN0GHKRXP2us07C/uploads/8csMoFUI4T4MyCctrCfQ/Hacken Zeusd Contracts Dec2024.pdf | IPriceOracle | unmatched — not counted | — | listed in scope | no |
| spaces/mMWQLQN0GHKRXP2us07C/uploads/8csMoFUI4T4MyCctrCfQ/Hacken Zeusd Contracts Dec2024.pdf | ISubVault | unmatched — not counted | — | listed in scope | no |
| spaces/mMWQLQN0GHKRXP2us07C/uploads/8csMoFUI4T4MyCctrCfQ/Hacken Zeusd Contracts Dec2024.pdf | IZeUSD | unmatched — not counted | — | listed in scope | no |
| spaces/mMWQLQN0GHKRXP2us07C/uploads/8csMoFUI4T4MyCctrCfQ/Hacken Zeusd Contracts Dec2024.pdf | IZeUSDOFT | unmatched — not counted | — | listed in scope | no |
| spaces/mMWQLQN0GHKRXP2us07C/uploads/8csMoFUI4T4MyCctrCfQ/Hacken Zeusd Contracts Dec2024.pdf | IZeUSDRouter | unmatched — not counted | — | listed in scope | no |
| spaces/mMWQLQN0GHKRXP2us07C/uploads/8csMoFUI4T4MyCctrCfQ/Hacken Zeusd Contracts Dec2024.pdf | DataTypes | unmatched — not counted | — | listed in scope | no |
| spaces/mMWQLQN0GHKRXP2us07C/uploads/8csMoFUI4T4MyCctrCfQ/Hacken Zeusd Contracts Dec2024.pdf | USD0PPSubVault | unmatched — not counted | — | listed in scope | no |
| spaces/mMWQLQN0GHKRXP2us07C/uploads/8csMoFUI4T4MyCctrCfQ/Hacken Zeusd Contracts Dec2024.pdf | ZeUSD_Router | unmatched — not counted | — | listed in scope | no |
| spaces/mMWQLQN0GHKRXP2us07C/uploads/CIkyRzhjzbJxAdhVDwfV/SolidityScan ZeUSD Contracts Dec2024.pdf | LZAdapter | unmatched — not counted | — | — | no |
| spaces/mMWQLQN0GHKRXP2us07C/uploads/CIkyRzhjzbJxAdhVDwfV/SolidityScan ZeUSD Contracts Dec2024.pdf | USYCSubVault | unmatched — not counted | — | — | no |
| spaces/mMWQLQN0GHKRXP2us07C/uploads/CIkyRzhjzbJxAdhVDwfV/SolidityScan ZeUSD Contracts Dec2024.pdf | ZTLNPrimeSubVault | unmatched — not counted | — | — | no |
| spaces/mMWQLQN0GHKRXP2us07C/uploads/CIkyRzhjzbJxAdhVDwfV/SolidityScan ZeUSD Contracts Dec2024.pdf | ZeUSD | own proxy deployment | ERC1967Proxyy (proxy) (selected) `0xb16eb11db006230d13fc0d9679e50a5a4d389809` — deployed 2025-07-08 13:19:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/mMWQLQN0GHKRXP2us07C/uploads/CIkyRzhjzbJxAdhVDwfV/SolidityScan ZeUSD Contracts Dec2024.pdf | ZeUSD_OFT | unmatched — not counted | — | — | no |
| ENTERSOFT.pdf | Blacklistable | unmatched — not counted | — | — | no |
| ENTERSOFT.pdf | DecimalsCorrectionLibrary | unmatched — not counted | — | — | no |
| ENTERSOFT.pdf | DepositVault | unmatched — not counted | — | — | no |
| ENTERSOFT.pdf | ERC1967Proxy | unmatched — not counted | — | — | no |
| ENTERSOFT.pdf | FunctionsAccessControl | unmatched — not counted | — | — | no |
| ENTERSOFT.pdf | Greenlistable | unmatched — not counted | — | — | no |
| ENTERSOFT.pdf | IDataFeed | unmatched — not counted | — | — | no |
| ENTERSOFT.pdf | IDepositVault | unmatched — not counted | — | — | no |
| ENTERSOFT.pdf | IDepositVault copy | unmatched — not counted | — | — | no |
| ENTERSOFT.pdf | IManageableVault | unmatched — not counted | — | — | no |
| ENTERSOFT.pdf | IManageableVaultRedeem | unmatched — not counted | — | — | no |
| ENTERSOFT.pdf | IRedemptionVault | unmatched — not counted | — | — | no |
| ENTERSOFT.pdf | ISanctionsList | unmatched — not counted | — | — | no |
| ENTERSOFT.pdf | IVaultShared | unmatched — not counted | — | — | no |
| ENTERSOFT.pdf | IZToken | unmatched — not counted | — | — | no |
| ENTERSOFT.pdf | ManageableVault | unmatched — not counted | — | — | no |
| ENTERSOFT.pdf | ManageableVaultRedeem | unmatched — not counted | — | — | no |
| ENTERSOFT.pdf | Pausable | unmatched — not counted | — | — | no |
| ENTERSOFT.pdf | PriceOracle | unmatched — not counted | — | — | no |
| ENTERSOFT.pdf | RedemptionVault | unmatched — not counted | — | — | no |
| ENTERSOFT.pdf | WithFunctionsAccessControl | unmatched — not counted | — | — | no |
| ENTERSOFT.pdf | WithSanctionsList | unmatched — not counted | — | — | no |
| ENTERSOFT.pdf | WithZothAccessControl | unmatched — not counted | — | — | no |
| ENTERSOFT.pdf | ZHyperDepositVault | unmatched — not counted | — | — | no |
| ENTERSOFT.pdf | ZHyperZothAccessControlRoles | unmatched — not counted | — | — | no |
| ENTERSOFT.pdf | ZothAccessControl | unmatched — not counted | — | — | no |
| ENTERSOFT.pdf | ZothAccessControlRoles | unmatched — not counted | — | — | no |
| ENTERSOFT.pdf | ZothInitializable | unmatched — not counted | — | — | no |
| ENTERSOFT.pdf | mHYPER | unmatched — not counted | — | — | no |
| ENTERSOFT.pdf | zHYPER | unmatched — not counted | — | — | no |
| CLAUDE.pdf | Blacklistable | unmatched — not counted | — | — | no |
| CLAUDE.pdf | DecimalsCorrectionLibrary | unmatched — not counted | — | — | no |
| CLAUDE.pdf | DepositVault | unmatched — not counted | — | — | no |
| CLAUDE.pdf | ERC1967Proxy | unmatched — not counted | — | — | no |
| CLAUDE.pdf | FunctionsAccessControl | unmatched — not counted | — | — | no |
| CLAUDE.pdf | Greenlistable | unmatched — not counted | — | — | no |
| CLAUDE.pdf | IDataFeed | unmatched — not counted | — | — | no |
| CLAUDE.pdf | IDepositVault | unmatched — not counted | — | — | no |
| CLAUDE.pdf | IManageableVault | unmatched — not counted | — | — | no |
| CLAUDE.pdf | IManageableVaultRedeem | unmatched — not counted | — | — | no |
| CLAUDE.pdf | IRedemptionVault | unmatched — not counted | — | — | no |
| CLAUDE.pdf | ISanctionsList | unmatched — not counted | — | — | no |
| CLAUDE.pdf | IVaultShared | unmatched — not counted | — | — | no |
| CLAUDE.pdf | IZToken | unmatched — not counted | — | — | no |
| CLAUDE.pdf | ManageableVault | unmatched — not counted | — | — | no |
| CLAUDE.pdf | ManageableVaultRedeem | unmatched — not counted | — | — | no |
| CLAUDE.pdf | MockERC20 | unmatched — not counted | — | — | no |
| CLAUDE.pdf | Pausable | unmatched — not counted | — | — | no |
| CLAUDE.pdf | PriceOracle | unmatched — not counted | — | — | no |
| CLAUDE.pdf | RedemptionVault | unmatched — not counted | — | — | no |
| CLAUDE.pdf | TransparentUpgradeableProxy | unmatched — not counted | — | — | no |
| CLAUDE.pdf | WithFunctionsAccessControl | unmatched — not counted | — | — | no |
| CLAUDE.pdf | WithSanctionsList | unmatched — not counted | — | — | no |
| CLAUDE.pdf | WithZothAccessControl | unmatched — not counted | — | — | no |
| CLAUDE.pdf | ZothAccessControl | unmatched — not counted | — | — | no |
| CLAUDE.pdf | ZothAccessControlRoles | unmatched — not counted | — | — | no |
| CLAUDE.pdf | ZothInitializable | unmatched — not counted | — | — | no |
| CLAUDE.pdf | zOPAL | unmatched — not counted | — | — | no |
| CLAUDE.pdf | zOPALDepositVault | unmatched — not counted | — | — | no |
| CLAUDE.pdf | zOPALZothAccessControlRoles | unmatched — not counted | — | — | no |
| EVMBENCH.pdf | Blacklistable | unmatched — not counted | — | — | no |
| EVMBENCH.pdf | DecimalsCorrectionLibrary | unmatched — not counted | — | — | no |
| EVMBENCH.pdf | DepositVault | unmatched — not counted | — | — | no |
| EVMBENCH.pdf | ERC1967Proxy | unmatched — not counted | — | — | no |
| EVMBENCH.pdf | FunctionsAccessControl | unmatched — not counted | — | — | no |
| EVMBENCH.pdf | Greenlistable | unmatched — not counted | — | — | no |
| EVMBENCH.pdf | IDataFeed | unmatched — not counted | — | — | no |
| EVMBENCH.pdf | IDepositVault | unmatched — not counted | — | — | no |
| EVMBENCH.pdf | IManageableVault | unmatched — not counted | — | — | no |
| EVMBENCH.pdf | IManageableVaultRedeem | unmatched — not counted | — | — | no |
| EVMBENCH.pdf | IRedemptionVault | unmatched — not counted | — | — | no |
| EVMBENCH.pdf | ISanctionsList | unmatched — not counted | — | — | no |
| EVMBENCH.pdf | IVaultShared | unmatched — not counted | — | — | no |
| EVMBENCH.pdf | IZToken | unmatched — not counted | — | — | no |
| EVMBENCH.pdf | ManageableVault | unmatched — not counted | — | — | no |
| EVMBENCH.pdf | ManageableVaultRedeem | unmatched — not counted | — | — | no |
| EVMBENCH.pdf | MockERC20 | unmatched — not counted | — | — | no |
| EVMBENCH.pdf | Pausable | unmatched — not counted | — | — | no |
| EVMBENCH.pdf | PriceOracle | unmatched — not counted | — | — | no |
| EVMBENCH.pdf | RedemptionVault | unmatched — not counted | — | — | no |
| EVMBENCH.pdf | TransparentUpgradeableProxy | unmatched — not counted | — | — | no |
| EVMBENCH.pdf | WithFunctionsAccessControl | unmatched — not counted | — | — | no |
| EVMBENCH.pdf | WithSanctionsList | unmatched — not counted | — | — | no |
| EVMBENCH.pdf | WithZothAccessControl | unmatched — not counted | — | — | no |
| EVMBENCH.pdf | ZothAccessControl | unmatched — not counted | — | — | no |
| EVMBENCH.pdf | ZothAccessControlRoles | unmatched — not counted | — | — | no |
| EVMBENCH.pdf | ZothInitializable | unmatched — not counted | — | — | no |
| EVMBENCH.pdf | zOPAL | unmatched — not counted | — | — | no |
| EVMBENCH.pdf | zOPALDepositVault | unmatched — not counted | — | — | no |
| EVMBENCH.pdf | zOPALZothAccessControlRoles | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0xb027570ae95a3d546b166d805ecd216d86b7ab18` | AccessManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x675d73734546b2f668b27659bebfad7582902a18` | Registry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x255f6bbec8c3310fd78cb679da529da9aa0d25a6` | USYCVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2dfc03b5eca6823bc527e26c4a4b9dc1219dbe1c` | VaultRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4fb32d9cc9540e002fcf78bfe6ffdcb3aa4008b8` | WithdrawalSystem | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1ba928070771d3fb148f37209cf8a6d0fe4507b0` | ZeUSD_CDP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x061a5839b9057e5ed675c6982fdfab31a3011d95` | ZeUSDRouterV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 24 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 113 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Address-book scope dispositions: 1 own (1 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 105 unmatched
- Matched-own operational status: 1 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: unique_name=1

Zero-match audit list:

- [2868] spaces/mMWQLQN0GHKRXP2us07C/uploads/8csMoFUI4T4MyCctrCfQ/Hacken Zeusd Contracts Dec2024.pdf
- [2870] ENTERSOFT.pdf
- [2871] CLAUDE.pdf
- [2872] EVMBENCH.pdf

Fork inheritance lineage and inherited audits are included when available.
