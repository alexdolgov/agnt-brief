# Agentic Audit Brief: Liquid Driver

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

- Project: Liquid Driver (`liquid-driver`)
- Website: [https://www.liquiddriver.finance](https://www.liquiddriver.finance)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: bsc, fantom
- Contract surface: 143 unique implementations (149 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $142,272.69
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 3 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for Liquid Driver in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 3 contracts are derived from known codebases. 3 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x05b7109b2dae299d882c410c1a281fc194658e89`, chain 250)
- UnnamedContract (`0x10b620b2dbac4faa7d7ffd71da486f5d44cd86f9`, chain 250)
- UnnamedContract (`0x742474dae70fa2ab063ab786b1fbe5704e861a0c`, chain 250)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 3/3 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 3 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 140 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 3 standard proxy/library)
- Proxy deployments represented within implementation groups: 9
- Confirmed-live implementations: 3 of 143 unique; 140 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/23
- Verified + Unaudited implementations: 23
- Verified by bytecode match: 0
- Unverified implementations: 120
- Unique implementations: 143
- Raw deployments: 149
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-08 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (23)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AnyswapV3ERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x04068da6c83afcfa0e13ba15a6696662335d5b75` | ⚠️ Unaudited |
| liveThe | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7f49a90103419aff919bdbf53833cad6e230ea5a` | ⚠️ Unaudited |
| LiveTheChef | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0c214c8f68e10efb66e1ca03d29036e8a32ccc35` | ⚠️ Unaudited |
| LiveTheChefRewardSeeder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3c73571026fb57d59917233e700570aba5742119` | ⚠️ Unaudited |
| LiveTheChefSecondRewarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x301e2d3a8336aba9dbe6ad50f65e4e3e8c4ddbba` | ⚠️ Unaudited |
| LiveTheFeeManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x053a5b18c5cc0c03786be4f75ebf62cdf1a234e9` | ⚠️ Unaudited |
| LiveTheManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0b843e695b23bfbc89db97ea07ca9664fd338142` | ⚠️ Unaudited |
| MiniChefV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x21c8b25ac1adf0b3163c868fb94e1f44586bc4b5` | ⚠️ Unaudited |
| MockERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2301d8074f606cc8bd418f819770dab0e0ba6a4a` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x60ae73bd198be2a7867f10038d9f367836fda22c` | ⚠️ Unaudited |
| QLqdr | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x082debec62b09770162a12f6b898176c5b466616` | ⚠️ Unaudited |
| SmartWalletWhitelist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xaf1123d03fc668fc25b085896899ea5b2fd3719b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x15a678c004a91e101940ce1499f0cb2d223bf86f`; bsc `0x1e596516eaa20be44028263a12e634266f9271dd` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x1f1570ab469088c6c79210516a1dea66976ad7ef`; bsc `0xf4230d880f52edefdeae5d1debb269afe4dbcc36` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x219b1da33fdcc75b7be1f51889c1fdfa61bf9b6d`; bsc `0x330c43d22bd65a60ffea93a197f04e87faa27b70` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x2835814d519f1bbf469c80205ec99e45b071a212`; bsc `0xed8299bb5086920e4801831ff3a9264b3cc7a76b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x326c6c675338435a7e1cdea7cddb1d2f11b05432` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x4099327ac3c356cb1ac3babe7484a153fff3933c`; bsc `0xe94c300df2b7de942e671a9e84a4c12e50e331db` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x72d18a5de8d5524fa537ed716aee7d264601403b`; bsc `0xa1954737421d4506b2f1042d24dfd5969b2b13aa` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x8081c959bc0386225e0e56a844d5e64df2e1349b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0xc1f5c8141027e7d38268b9e0924606a183a31799` | ⚠️ Unaudited |
| V2Migrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0e5cce16a88e37db7608673a5b9894be76138cf2` | ⚠️ Unaudited |
| Vyper_contract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1e73885fdc69fd232a1650d7753fef654e40de45` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (120)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x05982f691a06bc1afd4afe1e64496c7abed1c8bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x06953866281d0f9cdbfc661f081c29f60feb6e7f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0bdf44b1b560d8baca9815ca9b19b5a5fd7ce2a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x13299aa4ed80beac1b2be03a25ec39bd18fd4675` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1f2f5b34be5c4f6a414492f5642d0bcfcf86e4a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2854180637e453a44deb0e820a74e5dfc649b713` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2d489ec186468ebd3315360b27ad0f63f3312f22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2ff4c3a364c421eb7a017cdf5c3c6f9ef537413e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x308eea5aa5e4ecaf214a6d0e60d005123d4acf7d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x34c0076038d64dbac3b1a13bbb97dfdf417beb3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x35c1da5ac500dd3a839ed49c219b9783047e73b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x37e46c030e0d843b39f692c9108e54945f4cccf7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3ae658656d1c526144db371faef2fff7170654ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3ec0cd0a5dbcb6efaf32a6a8bb6e80b7232f5879` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x40c601cf392bcb7acd9cd50565c338a1e40485fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x44b3e385e5357d0618cf404140efca11f1393023` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x458ccab1c2d1ec77fccd91deb541802531455e6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x47e1f21fba62a057edaca9a991a31a984ae3674e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x49d6cac644db3953872de73b1f6648c742fe63e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4b0765f58aa97483f8ffa87fa9d8ee7a6d99601d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4b4026a52cef1f29900b2ca14504e5d9991a014c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4da0efb59626add46e12cce8e5b93687175ad1e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4fd444cbc34ce4493472782c665c235645d8d814` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4fe500d6687ee03eb511c13c48c7f9c3eb51b4ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5442b41dd7f3ba3e17ee119c384bb06023e035a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5d2f909d5022eaddaf2a03b9410dc93eb286b088` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x60e26dad7e099f8f69319751db493133ad34c5fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x651793c2c4273112762b832114f9d719b95da110` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x655157817e602fb72ed23ab0188f6c9ab89d83ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6646f6dd710e67cc38728737ce9dbd919cf6be55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x669dd6b299beb7e5994c9f4471df1212bca8571d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x67b9583b2ce3eb54f4078df7d2259e47d3b774ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6c9033b1e3e2477143533cf6242ca9886a3dc132` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6d94dc6bcbe5e963e6750af232731d1a43913675` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6e2ad6527901c9664f016466b8da1357a004db0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6e4e372a1301b073eca79930413a77140eca6e6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6fa0b543773039c6d76a4465396a4197c8351ef8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x76ead0921396f595e822f409ce423ca240ea9440` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x770d9e89e7aadc61a3cf500f9f36ae2110882050` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x77b2e888ebc29cc20c9a9662674740c02de78bc3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x78eeef5ad007c00191380a5b949276271c61d3d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7c342a16a8e1b9b0751fe3109049ed0787197283` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x816e21c33fa5f8440ebcdf6e01d39314541bea72` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x82c429cb6fd8f97569e16760b69eab9e10212417` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x848e87b5aa478b6daf4d7855f4e6e87531c862fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x852f09a55a13819093662ed19fd0e89d425b388c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x859bf33412dd63323f55c8b83939c0cfb79920a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x87dab519ff7e36c2d82f1f42abeda27a881ded63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8a704cc35ca5f0a97e1f84022341e1bce7b43214` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8cd3af05de8af2af5be21c64ccabbff1b40db831` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8cdcd7484c423b9855ed4548fd8858e321d6fe45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8e8d930ffa6a8a323680e933a371ea4df86ab47a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8eb8d4c1e7c826624dc886d3580ca427317c54fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8f8bbdbae2814aa1c41a4000e213eb89c7ddefb5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x929c697c557d2ed4c8c446e60614cfcce0b1d680` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x952c806a0db819767b7948d0f4c9ac9ee7d37320` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x958ed8d4be3b6eda845c7e40c1147591a753ef64` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9622009746de4cecdc649148a0d11e5bb5aa245c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9682b8831f380b71cc79e16aa33e3576ad50ef33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9722c0e99d5dd6edee977f945b1276963b2b193f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x979264480157761d738ab900f11837783cc4098d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9a34bce8ef1e3c707bd13d83d39f98f81f812f84` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9b637c9f03b50622b3b77964a449a93650d52adf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9f1b96018ebdb48915f14a51dbec0585ae9ff17b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa03f3a43831de53c1587636f5006830dd294ae63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa0af049d10498e10edcd6c3058c5b939fffcf8f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa31f3d51baa9a672b97449f70346a36821c864f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa368ae0ae3d099a3b40a9d23b59dab02ac680687` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa45213cee5e1035d3643faf87a72e090482a6260` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa76333714c1c7003be982cf1f9d2669e0ca73318` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xaa5316ba3333d22f4a7e858645eb2d089de11144` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xab082352fbbb4ad602b91efa770124a380bbed64` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xad8f86ca323682de38bb3d4236f39866c6c70c27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xaf949f43c07dfdce1f346b930b4b1691f0e67675` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb16312bd2746886c6f96e40a217531f4dd8357d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb608c7aba0296124bbe9e4ace6c7339d618625f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb6fa1a980f61e998b01b7a79fb1b992e5f4b1b50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb7a689dbc0c55774b4658c79d967cc8c8f3177ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb806f8c28030fb02b58f359d2b3d126ebf1ef7b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb8d047ccff7c4be334173562d021692a6fb0312d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbc1ededef442ec5273ae53989cb87b74910b4f3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbd5e4f651d59e7791bc1402cb61bde1b91e124ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbede24890bfeb121c38e09a3a5b532fdb04ee385` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbfdbf7aa739a6a9f501f00360aad30e855f3482f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc2ec3451d50ee3f866609c4beda04e87ae0b54de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc34c37e4da4aaae53beb6e53c19a715930399630` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc3737b9317958b84541d537cea5d608315fb8640` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc448267e9ebe3526a102cd2a87186c349b441e55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc6cd41a04768c473360e2394471c59635264a8ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc915ced9e74c2f91a16dc44ea98b0fe50ca84e4b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xca496eeab79eb32f8164f9a9a998e624aabe5bfa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcdc3a010a3473c0c4b2cb03d8489d6ba387b83cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd119f93275eb655c9f0e08a97551c320e173e0e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd189e609f9b375f0224930a7e2412e7e253234a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd20b980aea4aa8356e2279223cdfc630fde9a40b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd30ec028c85a635234c4e20fba563e0b1520f154` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd46db083de31c64af3f680f139a31ff37bac004f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd5b14289f0ce84720e450621bc1c108bf3ee87aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd5d0a9b3f2c264b955ae7161cfa6d38a7aea60a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd77ccd348767e0c2ecbad96389781ac9409e3aac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd8c61ede8cd9ee7b93855c3f110191e95edf2979` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdb7bba9bfc6ae20849f533380787d5cdd2d7f9c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdc295b748aef43006f45253d6fe27607adccb683` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xddfc6b230656010f314f2f659ec8ff33fab7a9db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xded42103e3a3e2a5abc1a86cb7a4d0b3c22b9391` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe0983ef842e2ec3ba54435877534c638391fc5a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe3560b6e6c807100aa8e0d3ced64c97e3359405f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe38d3eeb164d00b3dda50b511582ddadb7b0d81f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe928bf2c8277642d9f2d014f3cd83fdd5a15608f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xeb86893316c35a681ba84a35410bfd82c4f2914d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xebb6b3f36f26601b97a7f4b569057a0119c2f575` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xecd1e223b501551544309fa31f6c2c79f51876bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xef3c2bbacbf15193639e6697600be6ea23af5b89` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf14f3bd905049773f4cfabc1cd233810ae0a7edb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf41a956f8326de6ad799bdbe3466074ace28558a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf50c44a4054194191ee9cadadbb5d35eeb69a570` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfad03dccc4db5d48604854d3b571f993fe3ec715` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-388513 | `0x05b7109b2dae299d882c410c1a281fc194658e89` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-388514 | `0x10b620b2dbac4faa7d7ffd71da486f5d44cd86f9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-388515 | `0x742474dae70fa2ab063ab786b1fbe5704e861a0c` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 123
- Live contracts: 0
- Unknown liveness contracts: 123
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: unverified unclassified=123

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| unverified unclassified | UnnamedContract<br>`0x05982f691a06bc1afd4afe1e64496c7abed1c8bd` | non_address_book | unknown | unknown | unverified | n/a | `0x383ea12347e56932e08638767b8a2b3c18700493` |
| unverified unclassified | UnnamedContract<br>`0x06953866281d0f9cdbfc661f081c29f60feb6e7f` | non_address_book | unknown | unknown | unverified | n/a | `0x383ea12347e56932e08638767b8a2b3c18700493` |
| unverified unclassified | UnnamedContract<br>`0x0bdf44b1b560d8baca9815ca9b19b5a5fd7ce2a2` | non_address_book | unknown | unknown | unverified | n/a | `0x383ea12347e56932e08638767b8a2b3c18700493` |
| unverified unclassified | UnnamedContract<br>`0x13299aa4ed80beac1b2be03a25ec39bd18fd4675` | non_address_book | unknown | unknown | unverified | n/a | `0x383ea12347e56932e08638767b8a2b3c18700493` |
| unverified unclassified | UnnamedContract<br>`0x1e596516eaa20be44028263a12e634266f9271dd` | non_address_book | unknown | unknown | unverified | n/a | `0x383ea12347e56932e08638767b8a2b3c18700493` |
| unverified unclassified | UnnamedContract<br>`0x1f2f5b34be5c4f6a414492f5642d0bcfcf86e4a7` | non_address_book | unknown | unknown | unverified | n/a | `0x383ea12347e56932e08638767b8a2b3c18700493` |
| unverified unclassified | UnnamedContract<br>`0x2854180637e453a44deb0e820a74e5dfc649b713` | non_address_book | unknown | unknown | unverified | n/a | `0x383ea12347e56932e08638767b8a2b3c18700493` |
| unverified unclassified | UnnamedContract<br>`0x2d489ec186468ebd3315360b27ad0f63f3312f22` | non_address_book | unknown | unknown | unverified | n/a | `0x383ea12347e56932e08638767b8a2b3c18700493` |
| unverified unclassified | UnnamedContract<br>`0x2ff4c3a364c421eb7a017cdf5c3c6f9ef537413e` | non_address_book | unknown | unknown | unverified | n/a | `0x383ea12347e56932e08638767b8a2b3c18700493` |
| unverified unclassified | UnnamedContract<br>`0x308eea5aa5e4ecaf214a6d0e60d005123d4acf7d` | non_address_book | unknown | unknown | unverified | n/a | `0x383ea12347e56932e08638767b8a2b3c18700493` |
| unverified unclassified | UnnamedContract<br>`0x330c43d22bd65a60ffea93a197f04e87faa27b70` | non_address_book | unknown | unknown | unverified | n/a | `0x383ea12347e56932e08638767b8a2b3c18700493` |
| unverified unclassified | UnnamedContract<br>`0x34c0076038d64dbac3b1a13bbb97dfdf417beb3b` | non_address_book | unknown | unknown | unverified | n/a | `0x383ea12347e56932e08638767b8a2b3c18700493` |
| unverified unclassified | UnnamedContract<br>`0x35c1da5ac500dd3a839ed49c219b9783047e73b0` | non_address_book | unknown | unknown | unverified | n/a | `0x383ea12347e56932e08638767b8a2b3c18700493` |
| unverified unclassified | UnnamedContract<br>`0x37e46c030e0d843b39f692c9108e54945f4cccf7` | non_address_book | unknown | unknown | unverified | n/a | `0x383ea12347e56932e08638767b8a2b3c18700493` |
| unverified unclassified | UnnamedContract<br>`0x3ae658656d1c526144db371faef2fff7170654ee` | non_address_book | unknown | unknown | unverified | n/a | `0x383ea12347e56932e08638767b8a2b3c18700493` |
| unverified unclassified | UnnamedContract<br>`0x3ec0cd0a5dbcb6efaf32a6a8bb6e80b7232f5879` | non_address_book | unknown | unknown | unverified | n/a | `0x383ea12347e56932e08638767b8a2b3c18700493` |
| unverified unclassified | UnnamedContract<br>`0x40c601cf392bcb7acd9cd50565c338a1e40485fd` | non_address_book | unknown | unknown | unverified | n/a | `0x383ea12347e56932e08638767b8a2b3c18700493` |
| unverified unclassified | UnnamedContract<br>`0x44b3e385e5357d0618cf404140efca11f1393023` | non_address_book | unknown | unknown | unverified | n/a | `0x383ea12347e56932e08638767b8a2b3c18700493` |
| unverified unclassified | UnnamedContract<br>`0x458ccab1c2d1ec77fccd91deb541802531455e6c` | non_address_book | unknown | unknown | unverified | n/a | `0x383ea12347e56932e08638767b8a2b3c18700493` |
| unverified unclassified | UnnamedContract<br>`0x47e1f21fba62a057edaca9a991a31a984ae3674e` | non_address_book | unknown | unknown | unverified | n/a | `0x383ea12347e56932e08638767b8a2b3c18700493` |
| unverified unclassified | UnnamedContract<br>`0x49d6cac644db3953872de73b1f6648c742fe63e9` | non_address_book | unknown | unknown | unverified | n/a | `0x383ea12347e56932e08638767b8a2b3c18700493` |
| unverified unclassified | UnnamedContract<br>`0x4b0765f58aa97483f8ffa87fa9d8ee7a6d99601d` | non_address_book | unknown | unknown | unverified | n/a | `0x383ea12347e56932e08638767b8a2b3c18700493` |
| unverified unclassified | UnnamedContract<br>`0x4b4026a52cef1f29900b2ca14504e5d9991a014c` | non_address_book | unknown | unknown | unverified | n/a | `0x383ea12347e56932e08638767b8a2b3c18700493` |
| unverified unclassified | UnnamedContract<br>`0x4da0efb59626add46e12cce8e5b93687175ad1e7` | non_address_book | unknown | unknown | unverified | n/a | `0x383ea12347e56932e08638767b8a2b3c18700493` |
| unverified unclassified | UnnamedContract<br>`0x4fd444cbc34ce4493472782c665c235645d8d814` | non_address_book | unknown | unknown | unverified | n/a | `0x383ea12347e56932e08638767b8a2b3c18700493` |
| unverified unclassified | UnnamedContract<br>`0x4fe500d6687ee03eb511c13c48c7f9c3eb51b4ca` | non_address_book | unknown | unknown | unverified | n/a | `0x383ea12347e56932e08638767b8a2b3c18700493` |
| unverified unclassified | UnnamedContract<br>`0x5442b41dd7f3ba3e17ee119c384bb06023e035a1` | non_address_book | unknown | unknown | unverified | n/a | `0x383ea12347e56932e08638767b8a2b3c18700493` |
| unverified unclassified | UnnamedContract<br>`0x5d2f909d5022eaddaf2a03b9410dc93eb286b088` | non_address_book | unknown | unknown | unverified | n/a | `0x383ea12347e56932e08638767b8a2b3c18700493` |
| unverified unclassified | UnnamedContract<br>`0x60e26dad7e099f8f69319751db493133ad34c5fe` | non_address_book | unknown | unknown | unverified | n/a | `0x383ea12347e56932e08638767b8a2b3c18700493` |
| unverified unclassified | UnnamedContract<br>`0x651793c2c4273112762b832114f9d719b95da110` | non_address_book | unknown | unknown | unverified | n/a | `0x383ea12347e56932e08638767b8a2b3c18700493` |
| unverified unclassified | UnnamedContract<br>`0x655157817e602fb72ed23ab0188f6c9ab89d83ff` | non_address_book | unknown | unknown | unverified | n/a | `0x383ea12347e56932e08638767b8a2b3c18700493` |
| unverified unclassified | UnnamedContract<br>`0x6646f6dd710e67cc38728737ce9dbd919cf6be55` | non_address_book | unknown | unknown | unverified | n/a | `0x383ea12347e56932e08638767b8a2b3c18700493` |
| unverified unclassified | UnnamedContract<br>`0x669dd6b299beb7e5994c9f4471df1212bca8571d` | non_address_book | unknown | unknown | unverified | n/a | `0x383ea12347e56932e08638767b8a2b3c18700493` |
| unverified unclassified | UnnamedContract<br>`0x67b9583b2ce3eb54f4078df7d2259e47d3b774ce` | non_address_book | unknown | unknown | unverified | n/a | `0x383ea12347e56932e08638767b8a2b3c18700493` |
| unverified unclassified | UnnamedContract<br>`0x6c9033b1e3e2477143533cf6242ca9886a3dc132` | non_address_book | unknown | unknown | unverified | n/a | `0x383ea12347e56932e08638767b8a2b3c18700493` |
| unverified unclassified | UnnamedContract<br>`0x6d94dc6bcbe5e963e6750af232731d1a43913675` | non_address_book | unknown | unknown | unverified | n/a | `0x383ea12347e56932e08638767b8a2b3c18700493` |
| unverified unclassified | UnnamedContract<br>`0x6e2ad6527901c9664f016466b8da1357a004db0f` | non_address_book | unknown | unknown | unverified | n/a | `0x383ea12347e56932e08638767b8a2b3c18700493` |
| unverified unclassified | UnnamedContract<br>`0x6e4e372a1301b073eca79930413a77140eca6e6f` | non_address_book | unknown | unknown | unverified | n/a | `0x383ea12347e56932e08638767b8a2b3c18700493` |
| unverified unclassified | UnnamedContract<br>`0x6fa0b543773039c6d76a4465396a4197c8351ef8` | non_address_book | unknown | unknown | unverified | n/a | `0x383ea12347e56932e08638767b8a2b3c18700493` |
| unverified unclassified | UnnamedContract<br>`0x72d18a5de8d5524fa537ed716aee7d264601403b` | non_address_book | unknown | unknown | unverified | n/a | `0x383ea12347e56932e08638767b8a2b3c18700493` |
| unverified unclassified | UnnamedContract<br>`0x76ead0921396f595e822f409ce423ca240ea9440` | non_address_book | unknown | unknown | unverified | n/a | `0x383ea12347e56932e08638767b8a2b3c18700493` |
| unverified unclassified | UnnamedContract<br>`0x770d9e89e7aadc61a3cf500f9f36ae2110882050` | non_address_book | unknown | unknown | unverified | n/a | `0x383ea12347e56932e08638767b8a2b3c18700493` |
| unverified unclassified | UnnamedContract<br>`0x77b2e888ebc29cc20c9a9662674740c02de78bc3` | non_address_book | unknown | unknown | unverified | n/a | `0x383ea12347e56932e08638767b8a2b3c18700493` |
| unverified unclassified | UnnamedContract<br>`0x78eeef5ad007c00191380a5b949276271c61d3d2` | non_address_book | unknown | unknown | unverified | n/a | `0x383ea12347e56932e08638767b8a2b3c18700493` |
| unverified unclassified | UnnamedContract<br>`0x7c342a16a8e1b9b0751fe3109049ed0787197283` | non_address_book | unknown | unknown | unverified | n/a | `0x383ea12347e56932e08638767b8a2b3c18700493` |
| unverified unclassified | UnnamedContract<br>`0x816e21c33fa5f8440ebcdf6e01d39314541bea72` | non_address_book | unknown | unknown | unverified | n/a | `0x383ea12347e56932e08638767b8a2b3c18700493` |
| unverified unclassified | UnnamedContract<br>`0x82c429cb6fd8f97569e16760b69eab9e10212417` | non_address_book | unknown | unknown | unverified | n/a | `0x383ea12347e56932e08638767b8a2b3c18700493` |
| unverified unclassified | UnnamedContract<br>`0x848e87b5aa478b6daf4d7855f4e6e87531c862fc` | non_address_book | unknown | unknown | unverified | n/a | `0x383ea12347e56932e08638767b8a2b3c18700493` |
| unverified unclassified | UnnamedContract<br>`0x852f09a55a13819093662ed19fd0e89d425b388c` | non_address_book | unknown | unknown | unverified | n/a | `0x383ea12347e56932e08638767b8a2b3c18700493` |
| unverified unclassified | UnnamedContract<br>`0x859bf33412dd63323f55c8b83939c0cfb79920a5` | non_address_book | unknown | unknown | unverified | n/a | `0x383ea12347e56932e08638767b8a2b3c18700493` |
| unverified unclassified | UnnamedContract<br>`0x87dab519ff7e36c2d82f1f42abeda27a881ded63` | non_address_book | unknown | unknown | unverified | n/a | `0x383ea12347e56932e08638767b8a2b3c18700493` |
| unverified unclassified | UnnamedContract<br>`0x8a704cc35ca5f0a97e1f84022341e1bce7b43214` | non_address_book | unknown | unknown | unverified | n/a | `0x383ea12347e56932e08638767b8a2b3c18700493` |
| unverified unclassified | UnnamedContract<br>`0x8cd3af05de8af2af5be21c64ccabbff1b40db831` | non_address_book | unknown | unknown | unverified | n/a | `0x383ea12347e56932e08638767b8a2b3c18700493` |
| unverified unclassified | UnnamedContract<br>`0x8cdcd7484c423b9855ed4548fd8858e321d6fe45` | non_address_book | unknown | unknown | unverified | n/a | `0x383ea12347e56932e08638767b8a2b3c18700493` |
| unverified unclassified | UnnamedContract<br>`0x8e8d930ffa6a8a323680e933a371ea4df86ab47a` | non_address_book | unknown | unknown | unverified | n/a | `0x383ea12347e56932e08638767b8a2b3c18700493` |
| unverified unclassified | UnnamedContract<br>`0x8eb8d4c1e7c826624dc886d3580ca427317c54fb` | non_address_book | unknown | unknown | unverified | n/a | `0x383ea12347e56932e08638767b8a2b3c18700493` |
| unverified unclassified | UnnamedContract<br>`0x8f8bbdbae2814aa1c41a4000e213eb89c7ddefb5` | non_address_book | unknown | unknown | unverified | n/a | `0x383ea12347e56932e08638767b8a2b3c18700493` |
| unverified unclassified | UnnamedContract<br>`0x929c697c557d2ed4c8c446e60614cfcce0b1d680` | non_address_book | unknown | unknown | unverified | n/a | `0x383ea12347e56932e08638767b8a2b3c18700493` |
| unverified unclassified | UnnamedContract<br>`0x952c806a0db819767b7948d0f4c9ac9ee7d37320` | non_address_book | unknown | unknown | unverified | n/a | `0x383ea12347e56932e08638767b8a2b3c18700493` |
| unverified unclassified | UnnamedContract<br>`0x958ed8d4be3b6eda845c7e40c1147591a753ef64` | non_address_book | unknown | unknown | unverified | n/a | `0x383ea12347e56932e08638767b8a2b3c18700493` |
| unverified unclassified | UnnamedContract<br>`0x9622009746de4cecdc649148a0d11e5bb5aa245c` | non_address_book | unknown | unknown | unverified | n/a | `0x383ea12347e56932e08638767b8a2b3c18700493` |
| unverified unclassified | UnnamedContract<br>`0x9682b8831f380b71cc79e16aa33e3576ad50ef33` | non_address_book | unknown | unknown | unverified | n/a | `0x383ea12347e56932e08638767b8a2b3c18700493` |
| unverified unclassified | UnnamedContract<br>`0x9722c0e99d5dd6edee977f945b1276963b2b193f` | non_address_book | unknown | unknown | unverified | n/a | `0x383ea12347e56932e08638767b8a2b3c18700493` |
| unverified unclassified | UnnamedContract<br>`0x979264480157761d738ab900f11837783cc4098d` | non_address_book | unknown | unknown | unverified | n/a | `0x383ea12347e56932e08638767b8a2b3c18700493` |
| unverified unclassified | UnnamedContract<br>`0x9a34bce8ef1e3c707bd13d83d39f98f81f812f84` | non_address_book | unknown | unknown | unverified | n/a | `0x383ea12347e56932e08638767b8a2b3c18700493` |
| unverified unclassified | UnnamedContract<br>`0x9b637c9f03b50622b3b77964a449a93650d52adf` | non_address_book | unknown | unknown | unverified | n/a | `0x383ea12347e56932e08638767b8a2b3c18700493` |
| unverified unclassified | UnnamedContract<br>`0x9f1b96018ebdb48915f14a51dbec0585ae9ff17b` | non_address_book | unknown | unknown | unverified | n/a | `0x383ea12347e56932e08638767b8a2b3c18700493` |
| unverified unclassified | UnnamedContract<br>`0xa03f3a43831de53c1587636f5006830dd294ae63` | non_address_book | unknown | unknown | unverified | n/a | `0x383ea12347e56932e08638767b8a2b3c18700493` |
| unverified unclassified | UnnamedContract<br>`0xa0af049d10498e10edcd6c3058c5b939fffcf8f7` | non_address_book | unknown | unknown | unverified | n/a | `0x383ea12347e56932e08638767b8a2b3c18700493` |
| unverified unclassified | UnnamedContract<br>`0xa31f3d51baa9a672b97449f70346a36821c864f9` | non_address_book | unknown | unknown | unverified | n/a | `0x383ea12347e56932e08638767b8a2b3c18700493` |
| unverified unclassified | UnnamedContract<br>`0xa368ae0ae3d099a3b40a9d23b59dab02ac680687` | non_address_book | unknown | unknown | unverified | n/a | `0x383ea12347e56932e08638767b8a2b3c18700493` |
| unverified unclassified | UnnamedContract<br>`0xa45213cee5e1035d3643faf87a72e090482a6260` | non_address_book | unknown | unknown | unverified | n/a | `0x383ea12347e56932e08638767b8a2b3c18700493` |
| unverified unclassified | UnnamedContract<br>`0xa76333714c1c7003be982cf1f9d2669e0ca73318` | non_address_book | unknown | unknown | unverified | n/a | `0x383ea12347e56932e08638767b8a2b3c18700493` |
| unverified unclassified | UnnamedContract<br>`0xaa5316ba3333d22f4a7e858645eb2d089de11144` | non_address_book | unknown | unknown | unverified | n/a | `0x383ea12347e56932e08638767b8a2b3c18700493` |
| unverified unclassified | UnnamedContract<br>`0xab082352fbbb4ad602b91efa770124a380bbed64` | non_address_book | unknown | unknown | unverified | n/a | `0x383ea12347e56932e08638767b8a2b3c18700493` |
| unverified unclassified | UnnamedContract<br>`0xad8f86ca323682de38bb3d4236f39866c6c70c27` | non_address_book | unknown | unknown | unverified | n/a | `0x383ea12347e56932e08638767b8a2b3c18700493` |
| unverified unclassified | UnnamedContract<br>`0xaf949f43c07dfdce1f346b930b4b1691f0e67675` | non_address_book | unknown | unknown | unverified | n/a | `0x383ea12347e56932e08638767b8a2b3c18700493` |
| unverified unclassified | UnnamedContract<br>`0xb16312bd2746886c6f96e40a217531f4dd8357d8` | non_address_book | unknown | unknown | unverified | n/a | `0x383ea12347e56932e08638767b8a2b3c18700493` |
| unverified unclassified | UnnamedContract<br>`0xb608c7aba0296124bbe9e4ace6c7339d618625f2` | non_address_book | unknown | unknown | unverified | n/a | `0x383ea12347e56932e08638767b8a2b3c18700493` |
| unverified unclassified | UnnamedContract<br>`0xb6fa1a980f61e998b01b7a79fb1b992e5f4b1b50` | non_address_book | unknown | unknown | unverified | n/a | `0x383ea12347e56932e08638767b8a2b3c18700493` |
| unverified unclassified | UnnamedContract<br>`0xb7a689dbc0c55774b4658c79d967cc8c8f3177ee` | non_address_book | unknown | unknown | unverified | n/a | `0x383ea12347e56932e08638767b8a2b3c18700493` |
| unverified unclassified | UnnamedContract<br>`0xb806f8c28030fb02b58f359d2b3d126ebf1ef7b9` | non_address_book | unknown | unknown | unverified | n/a | `0x383ea12347e56932e08638767b8a2b3c18700493` |
| unverified unclassified | UnnamedContract<br>`0xb8d047ccff7c4be334173562d021692a6fb0312d` | non_address_book | unknown | unknown | unverified | n/a | `0x383ea12347e56932e08638767b8a2b3c18700493` |
| unverified unclassified | UnnamedContract<br>`0xbc1ededef442ec5273ae53989cb87b74910b4f3e` | non_address_book | unknown | unknown | unverified | n/a | `0x383ea12347e56932e08638767b8a2b3c18700493` |
| unverified unclassified | UnnamedContract<br>`0xbd5e4f651d59e7791bc1402cb61bde1b91e124ba` | non_address_book | unknown | unknown | unverified | n/a | `0x383ea12347e56932e08638767b8a2b3c18700493` |
| unverified unclassified | UnnamedContract<br>`0xbede24890bfeb121c38e09a3a5b532fdb04ee385` | non_address_book | unknown | unknown | unverified | n/a | `0x383ea12347e56932e08638767b8a2b3c18700493` |
| unverified unclassified | UnnamedContract<br>`0xbfdbf7aa739a6a9f501f00360aad30e855f3482f` | non_address_book | unknown | unknown | unverified | n/a | `0x383ea12347e56932e08638767b8a2b3c18700493` |
| unverified unclassified | UnnamedContract<br>`0xc2ec3451d50ee3f866609c4beda04e87ae0b54de` | non_address_book | unknown | unknown | unverified | n/a | `0x383ea12347e56932e08638767b8a2b3c18700493` |
| unverified unclassified | UnnamedContract<br>`0xc34c37e4da4aaae53beb6e53c19a715930399630` | non_address_book | unknown | unknown | unverified | n/a | `0x383ea12347e56932e08638767b8a2b3c18700493` |
| unverified unclassified | UnnamedContract<br>`0xc3737b9317958b84541d537cea5d608315fb8640` | non_address_book | unknown | unknown | unverified | n/a | `0x383ea12347e56932e08638767b8a2b3c18700493` |
| unverified unclassified | UnnamedContract<br>`0xc448267e9ebe3526a102cd2a87186c349b441e55` | non_address_book | unknown | unknown | unverified | n/a | `0x383ea12347e56932e08638767b8a2b3c18700493` |
| unverified unclassified | UnnamedContract<br>`0xc6cd41a04768c473360e2394471c59635264a8ba` | non_address_book | unknown | unknown | unverified | n/a | `0x383ea12347e56932e08638767b8a2b3c18700493` |
| unverified unclassified | UnnamedContract<br>`0xc915ced9e74c2f91a16dc44ea98b0fe50ca84e4b` | non_address_book | unknown | unknown | unverified | n/a | `0x383ea12347e56932e08638767b8a2b3c18700493` |
| unverified unclassified | UnnamedContract<br>`0xca496eeab79eb32f8164f9a9a998e624aabe5bfa` | non_address_book | unknown | unknown | unverified | n/a | `0x383ea12347e56932e08638767b8a2b3c18700493` |
| unverified unclassified | UnnamedContract<br>`0xcdc3a010a3473c0c4b2cb03d8489d6ba387b83cd` | non_address_book | unknown | unknown | unverified | n/a | `0x383ea12347e56932e08638767b8a2b3c18700493` |
| unverified unclassified | UnnamedContract<br>`0xd119f93275eb655c9f0e08a97551c320e173e0e9` | non_address_book | unknown | unknown | unverified | n/a | `0x383ea12347e56932e08638767b8a2b3c18700493` |
| unverified unclassified | UnnamedContract<br>`0xd189e609f9b375f0224930a7e2412e7e253234a2` | non_address_book | unknown | unknown | unverified | n/a | `0x383ea12347e56932e08638767b8a2b3c18700493` |
| unverified unclassified | UnnamedContract<br>`0xd20b980aea4aa8356e2279223cdfc630fde9a40b` | non_address_book | unknown | unknown | unverified | n/a | `0x383ea12347e56932e08638767b8a2b3c18700493` |
| unverified unclassified | UnnamedContract<br>`0xd30ec028c85a635234c4e20fba563e0b1520f154` | non_address_book | unknown | unknown | unverified | n/a | `0x383ea12347e56932e08638767b8a2b3c18700493` |
| unverified unclassified | UnnamedContract<br>`0xd46db083de31c64af3f680f139a31ff37bac004f` | non_address_book | unknown | unknown | unverified | n/a | `0x383ea12347e56932e08638767b8a2b3c18700493` |
| unverified unclassified | UnnamedContract<br>`0xd5b14289f0ce84720e450621bc1c108bf3ee87aa` | non_address_book | unknown | unknown | unverified | n/a | `0x383ea12347e56932e08638767b8a2b3c18700493` |
| unverified unclassified | UnnamedContract<br>`0xd5d0a9b3f2c264b955ae7161cfa6d38a7aea60a7` | non_address_book | unknown | unknown | unverified | n/a | `0x383ea12347e56932e08638767b8a2b3c18700493` |
| unverified unclassified | UnnamedContract<br>`0xd77ccd348767e0c2ecbad96389781ac9409e3aac` | non_address_book | unknown | unknown | unverified | n/a | `0x383ea12347e56932e08638767b8a2b3c18700493` |
| unverified unclassified | UnnamedContract<br>`0xd8c61ede8cd9ee7b93855c3f110191e95edf2979` | non_address_book | unknown | unknown | unverified | n/a | `0x383ea12347e56932e08638767b8a2b3c18700493` |
| unverified unclassified | UnnamedContract<br>`0xdb7bba9bfc6ae20849f533380787d5cdd2d7f9c8` | non_address_book | unknown | unknown | unverified | n/a | `0x383ea12347e56932e08638767b8a2b3c18700493` |
| unverified unclassified | UnnamedContract<br>`0xdc295b748aef43006f45253d6fe27607adccb683` | non_address_book | unknown | unknown | unverified | n/a | `0x383ea12347e56932e08638767b8a2b3c18700493` |
| unverified unclassified | UnnamedContract<br>`0xddfc6b230656010f314f2f659ec8ff33fab7a9db` | non_address_book | unknown | unknown | unverified | n/a | `0x383ea12347e56932e08638767b8a2b3c18700493` |
| unverified unclassified | UnnamedContract<br>`0xded42103e3a3e2a5abc1a86cb7a4d0b3c22b9391` | non_address_book | unknown | unknown | unverified | n/a | `0x383ea12347e56932e08638767b8a2b3c18700493` |
| unverified unclassified | UnnamedContract<br>`0xe0983ef842e2ec3ba54435877534c638391fc5a9` | non_address_book | unknown | unknown | unverified | n/a | `0x383ea12347e56932e08638767b8a2b3c18700493` |
| unverified unclassified | UnnamedContract<br>`0xe3560b6e6c807100aa8e0d3ced64c97e3359405f` | non_address_book | unknown | unknown | unverified | n/a | `0x383ea12347e56932e08638767b8a2b3c18700493` |
| unverified unclassified | UnnamedContract<br>`0xe38d3eeb164d00b3dda50b511582ddadb7b0d81f` | non_address_book | unknown | unknown | unverified | n/a | `0x383ea12347e56932e08638767b8a2b3c18700493` |
| unverified unclassified | UnnamedContract<br>`0xe928bf2c8277642d9f2d014f3cd83fdd5a15608f` | non_address_book | unknown | unknown | unverified | n/a | `0x383ea12347e56932e08638767b8a2b3c18700493` |
| unverified unclassified | UnnamedContract<br>`0xe94c300df2b7de942e671a9e84a4c12e50e331db` | non_address_book | unknown | unknown | unverified | n/a | `0x383ea12347e56932e08638767b8a2b3c18700493` |
| unverified unclassified | UnnamedContract<br>`0xeb86893316c35a681ba84a35410bfd82c4f2914d` | non_address_book | unknown | unknown | unverified | n/a | `0x383ea12347e56932e08638767b8a2b3c18700493` |
| unverified unclassified | UnnamedContract<br>`0xebb6b3f36f26601b97a7f4b569057a0119c2f575` | non_address_book | unknown | unknown | unverified | n/a | `0x383ea12347e56932e08638767b8a2b3c18700493` |
| unverified unclassified | UnnamedContract<br>`0xecd1e223b501551544309fa31f6c2c79f51876bc` | non_address_book | unknown | unknown | unverified | n/a | `0x383ea12347e56932e08638767b8a2b3c18700493` |
| unverified unclassified | UnnamedContract<br>`0xed8299bb5086920e4801831ff3a9264b3cc7a76b` | non_address_book | unknown | unknown | unverified | n/a | `0x383ea12347e56932e08638767b8a2b3c18700493` |
| unverified unclassified | UnnamedContract<br>`0xef3c2bbacbf15193639e6697600be6ea23af5b89` | non_address_book | unknown | unknown | unverified | n/a | `0x383ea12347e56932e08638767b8a2b3c18700493` |
| unverified unclassified | UnnamedContract<br>`0xf14f3bd905049773f4cfabc1cd233810ae0a7edb` | non_address_book | unknown | unknown | unverified | n/a | `0x383ea12347e56932e08638767b8a2b3c18700493` |
| unverified unclassified | UnnamedContract<br>`0xf41a956f8326de6ad799bdbe3466074ace28558a` | non_address_book | unknown | unknown | unverified | n/a | `0x383ea12347e56932e08638767b8a2b3c18700493` |
| unverified unclassified | UnnamedContract<br>`0xf4230d880f52edefdeae5d1debb269afe4dbcc36` | non_address_book | unknown | unknown | unverified | n/a | `0x383ea12347e56932e08638767b8a2b3c18700493` |
| unverified unclassified | UnnamedContract<br>`0xf50c44a4054194191ee9cadadbb5d35eeb69a570` | non_address_book | unknown | unknown | unverified | n/a | `0x383ea12347e56932e08638767b8a2b3c18700493` |
| unverified unclassified | UnnamedContract<br>`0xfad03dccc4db5d48604854d3b571f993fe3ec715` | non_address_book | unknown | unknown | unverified | n/a | `0x383ea12347e56932e08638767b8a2b3c18700493` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [sourcehat.com/audits/LiquidDriver](https://sourcehat.com/audits/LiquidDriver) | SourceHat (formerly Solidity Finance) | Audit | 2021-08 | stale | Direct | address | no match | 0 | 0 | 0 | 2 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21396] sourcehat.com/audits/LiquidDriver — no match: Two contracts explicitly in scope: MasterChefV2 and StrategySpiritLqdrSpirit, both with addresses on Fantom mainnet. Audit date found in text: 'Date: August 17th, 2021'.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| sourcehat.com/audits/LiquidDriver | MasterChefV2 | unmatched — not counted | — | listed in scope with address on Fantom mainnet | no |
| sourcehat.com/audits/LiquidDriver | StrategySpiritLqdrSpirit | unmatched — not counted | — | listed in scope with address on Fantom mainnet | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 12 |
| upstream | 1 |
| standard_library | 9 |
| needs_review | 121 |

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

- [21396] sourcehat.com/audits/LiquidDriver

Fork inheritance lineage and inherited audits are included when available.
