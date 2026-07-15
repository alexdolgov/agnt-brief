# Agentic Audit Brief: Salvor

## Export Authority

- Production state: **published scope**
- Raw selected rows: 4 across 4 audit(s)
- Eligible audit results: 5 (4 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Salvor (`salvor`)
- Website: [https://salvor.io](https://salvor.io)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: avalanche, base
- Contract surface: 312 unique implementations (638 raw deployments)
- Coverage basis: 2/2 confirmed own live verified implementations (100.0%); conservative 100.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $542,237.21
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Salvor. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 2 contract row(s) across avalanche, base. Structural roles: 1 core, 1 infra. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 2
- Structural roles: core (1), infra (1)
- Contract kinds: contract (2)
- Detected standards: erc1967proxy (1), erc20 (1), ownable (1)
- Frameworks: openzeppelin (2), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 21 contracts are derived from known codebases. 21 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x05c181...0ac966`, chain 43114)
- UnnamedContract (`0x0d15f9...c27e00`, chain 43114)
- UnnamedContract (`0x1425d8...d634d4`, chain 43114)
- UnnamedContract (`0x2266e5...db58ca`, chain 43114)
- UnnamedContract (`0x3deb76...932b7d`, chain 43114)
- UnnamedContract (`0x4085fb...11d6ae`, chain 43114)
- UnnamedContract (`0x44c961...26feb9`, chain 43114)
- UnnamedContract (`0x607b1d...49b632`, chain 43114)
- UnnamedContract (`0x8cfc37...005996`, chain 43114)
- UnnamedContract (`0xa5128f...772447`, chain 43114)
- UnnamedContract (`0xa9fb0a...fe90fa`, chain 43114)
- UnnamedContract (`0xaa7f72...dc732f`, chain 43114)
- UnnamedContract (`0xab4fe2...130c80`, chain 43114)
- UnnamedContract (`0xacb8ce...37d69a`, chain 43114)
- UnnamedContract (`0xd09966...74dd3f`, chain 43114)
- UnnamedContract (`0xd106ec...183dc3`, chain 43114)
- UnnamedContract (`0xd86456...bb9865`, chain 43114)
- UnnamedContract (`0xddde9d...6c82f0`, chain 43114)
- UnnamedContract (`0xf65e92...85ebd9`, chain 43114)
- SalvorGovernanceToken (`0xf99516...70a90e`, chain 43114)
- TransparentUpgradeableProxy (`0x72b73f...02ebaa`, chain 43114)

## Contract Surface Quality

- Logic-topography rows: 2; live-surface rows included: 2 (2 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 21/21 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 2/2 (100.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 21 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 291 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 52
- Confirmed-live implementations: 21 of 312 unique; 291 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 2/184
- Verified + Unaudited implementations: 182
- Verified by bytecode match: 0
- Unverified implementations: 128
- Unique implementations: 312
- Raw deployments: 638
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-03 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 3 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| SCAudit | Tier 2 | 2 | 1.1% | 2023-03 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| SalvorGovernanceToken | token | project_anchor | own_supporting | 0 | avalanche | unit-392070 | `0xf99516...70a90e` | ✅ Audited |
| VeArt | unknown | project_anchor | own_supporting | 1 | avalanche | unit-392071 | `0x72b73f...02ebaa` | ✅ Audited |

### ⚠️ Verified + Unaudited (182)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AirDropGEC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 3 deployments: avalanche `0x3cabb8...bebb59`; avalanche `0xa8700f...d4941e`; avalanche `0xc0ae43...006ca4` | ⚠️ Unaudited |
| AIVAX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x09d156...9f2542` | ⚠️ Unaudited |
| AntTokenV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x5424f5...43e32c`; avalanche `0xad25c7...4e1262` | ⚠️ Unaudited |
| ApexMaker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf98ea8...e4f18e` | ⚠️ Unaudited |
| ApexMakerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3bf597...4e53ab` | ⚠️ Unaudited |
| ApexPremier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd189d2...d8daac` | ⚠️ Unaudited |
| ApexPremierAccess | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x734d8c...d38f79` | ⚠️ Unaudited |
| ApexPremierFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0xd92558...c4929f`; avalanche `0xe3593d...8f8cfa` | ⚠️ Unaudited |
| ArtifactHardwareProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc095ec...24194c` | ⚠️ Unaudited |
| ArtMarketplace | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | `0x648133...b56f66` | ⚠️ Unaudited |
| AssetLocker | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x376862...6b8853`; avalanche `0xd7c8f6...cbd07b` | ⚠️ Unaudited |
| AvalancheHardwareRental | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x456a6e...76e87b`; avalanche `0xf45117...e27848` | ⚠️ Unaudited |
| BellumToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 4 deployments: avalanche `0x03f774...42f155`; avalanche `0x4a5bb4...e6e4d5`; avalanche `0x6ec180...4ab3d7`; avalanche `0xb44b64...006196` | ⚠️ Unaudited |
| BIFKN314 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 15 deployments: avalanche `0x1d2771...0e1192`; avalanche `0x301946...37cd6e`; avalanche `0x666a53...2d1909`; avalanche `0x6aba46...d788eb`; avalanche `0x801089...8b89e9`; avalanche `0x958704...486a92`; avalanche `0xa0de70...ce0a82`; avalanche `0xa55894...8d06d1`; avalanche `0xbc47f3...09890b`; avalanche `0xc6f992...05d89b`; avalanche `0xcbcc39...79d338`; avalanche `0xcffb86...9363dd`; avalanche `0xd74fd3...eab9e7`; avalanche `0xe0ee1a...ef035e`; avalanche `0xfe47b6...d529ee` | ⚠️ Unaudited |
| BIFKN314Factory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 3 deployments: avalanche `0x3d193d...106a87`; avalanche `0x96a97d...dab0f0`; avalanche `0xad2203...8bc71d` | ⚠️ Unaudited |
| BIFKN314FactoryV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x2aabaf...32a2b2`; avalanche `0xb39224...71e8c9` | ⚠️ Unaudited |
| BIFKN314FactoryV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 5 deployments: avalanche `0x4ecd8b...59f450`; avalanche `0x576fbd...da622b`; avalanche `0x58dd21...99eded`; avalanche `0xabfbfe...345e9a`; avalanche `0xeed436...afb465` | ⚠️ Unaudited |
| BIFKN314FactoryV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x4f7078...eaf769`; avalanche `0x72cf3a...7cd315` | ⚠️ Unaudited |
| BIFKN314FactoryV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x754a0c...820f01`; avalanche `0xdcaece...81f99a` | ⚠️ Unaudited |
| BIFKN314FactoryV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | `0x759a06...c7a8e5` | ⚠️ Unaudited |
| BIFKN314FeeHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x2af654...038306`; avalanche `0xa56b59...8ac70c` | ⚠️ Unaudited |
| BIFKN314FeeHookLegacyFix | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3aa19b...2bc262` | ⚠️ Unaudited |
| BIFKN314Locker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdfb880...845802` | ⚠️ Unaudited |
| BIFKN314Mintable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 31 deployments: avalanche `0x18e015...25a649`; avalanche `0x19b7cc...7f4fed`; avalanche `0x1b923f...3b1516`; avalanche `0x1c7b3f...aad39a`; avalanche `0x1ff575...914d2f`; avalanche `0x2aaad9...974761`; avalanche `0x2e3ac2...e536fb`; avalanche `0x463a7e...c75e9a`; avalanche `0x490bf7...02e3eb`; avalanche `0x4a8876...2e6138`; avalanche `0x4ab51b...404d80`; avalanche `0x4df08c...f5dc9a`; avalanche `0x5b5913...481ce1`; avalanche `0x5facc8...a26461`; avalanche `0x65fcc0...e053f0`; avalanche `0x772ebf...308cdc`; avalanche `0x836094...e47cd1`; avalanche `0x8ab6a0...c4aa02`; avalanche `0x8bb1e4...324bed`; avalanche `0x8e02a1...f65d96`; avalanche `0x9a25d8...f70736`; avalanche `0x9af107...5d697e`; avalanche `0x9fa9b0...92c15e`; avalanche `0xb643d9...5b5720`; avalanche `0xbe2ff4...fc545b`; avalanche `0xbf835b...ae176d`; avalanche `0xce6450...616da6`; avalanche `0xcec0b5...0442bd`; avalanche `0xda5d3f...b00947`; avalanche `0xdd4bfa...956d14`; avalanche `0xeb3dfd...6a8734` | ⚠️ Unaudited |
| BIFKN314Oracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 6 deployments: avalanche `0x2c4ea5...305c96`; avalanche `0x42bff7...255951`; avalanche `0xa0f24a...8f5760`; avalanche `0xc04d3a...c44020`; avalanche `0xca94e2...7b38e3`; avalanche `0xf8ac03...e98df1` | ⚠️ Unaudited |
| BIFKN314Router | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5f4378...03d8cd` | ⚠️ Unaudited |
| BIFKN314RouterV2 | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 3 deployments: avalanche `0x5d2dda...28082b`; avalanche `0x6242c8...2744fc`; avalanche `0xa6d21c...11a682` | ⚠️ Unaudited |
| BIFKN314Wrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 6 deployments: avalanche `0x36ef5b...624b00`; avalanche `0x884400...e2ec61`; avalanche `0x978f58...a7e951`; avalanche `0xd153fe...8d1e92`; avalanche `0xf43d68...33a15e`; avalanche `0xfd3a5a...1cdee3` | ⚠️ Unaudited |
| BIFKN314WrapperFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x39ab4a...83f4b4`; avalanche `0xa242da...23e8b5` | ⚠️ Unaudited |
| BIFKN314WrapperFactoryV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x709d66...6315cc`; avalanche `0xfb68c9...5c5bd2` | ⚠️ Unaudited |
| BIFKN314WrapperMintable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 31 deployments: avalanche `0x0133a8...374bff`; avalanche `0x098086...18b3da`; avalanche `0x1a308e...620f54`; avalanche `0x1f6c7e...f8e50f`; avalanche `0x1fb3f2...49c612`; avalanche `0x26ab72...3124d5`; avalanche `0x28f699...ad020c`; avalanche `0x430dde...ab2f46`; avalanche `0x485ea0...d6ed82`; avalanche `0x52e44b...e119ad`; avalanche `0x5c84b4...c3e9f9`; avalanche `0x5fe449...1ac6d6`; avalanche `0x636483...3b8941`; avalanche `0x69e852...87143b`; avalanche `0x6c5d31...5f05a2`; avalanche `0x737805...6a2e68`; avalanche `0x77cb12...9e8573`; avalanche `0x7e4126...811b5d`; avalanche `0x9dcde3...8be6c4`; avalanche `0xa28745...c00abe`; avalanche `0xae3f01...1b47a0`; avalanche `0xb47f0d...7ce5c3`; avalanche `0xb51dfb...361f31`; avalanche `0xbf2b86...97789e`; avalanche `0xbf88e0...31bb18`; avalanche `0xc80f88...fc817d`; avalanche `0xd714f2...fba4ec`; avalanche `0xde2468...0114a1`; avalanche `0xf31856...7d639a`; avalanche `0xfb0cf8...d29332`; avalanche `0xfc6c9b...4e3d81` | ⚠️ Unaudited |
| BIFKNChefStrategy | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x421d0d...128815` | ⚠️ Unaudited |
| BIFKNChefV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 3 deployments: avalanche `0x317828...ea4573`; avalanche `0x599587...ed38d3`; avalanche `0x87f073...74d66e` | ⚠️ Unaudited |
| BIFKNRewarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 38 deployments: avalanche `0x0d4c97...134a4b`; avalanche `0x273a7a...433025`; avalanche `0x3438fe...bc7c01`; avalanche `0x3f7229...a2416a`; avalanche `0x43b617...f30ddf`; avalanche `0x49070a...912382`; avalanche `0x4da6c4...9dd044`; avalanche `0x518a8d...6715b0`; avalanche `0x59c76d...bfb5ac`; avalanche `0x5a2d94...b51c64`; avalanche `0x6e33f5...36d041`; avalanche `0x70e5e1...71d058`; avalanche `0x78ce75...9ff37b`; avalanche `0x7d8416...4332b0`; avalanche `0x812f7e...c45248`; avalanche `0x882342...aed475`; avalanche `0x8890c4...1aad8b`; avalanche `0x88db87...9d97f3`; avalanche `0x8d7946...fa85b8`; avalanche `0x8df656...3cd581`; avalanche `0x982c47...da4418`; avalanche `0x9a78ec...0bb340`; avalanche `0x9f1908...745aeb`; avalanche `0xb32f18...d8163e`; avalanche `0xb683a3...eff7b0`; avalanche `0xc05d6a...e0d70a`; avalanche `0xc158d2...67194f`; avalanche `0xc36a0b...7da63d`; avalanche `0xc52749...f37727`; avalanche `0xc9b97d...3cc2f7`; avalanche `0xcc5cd9...361da7`; avalanche `0xdc35e5...42e34c`; avalanche `0xde7780...e015b2`; avalanche `0xe95da2...7c99e8`; avalanche `0xeda361...026a71`; avalanche `0xf07776...9296e1`; avalanche `0xf11e82...31f7ea`; avalanche `0xfde2ea...a81f19` | ⚠️ Unaudited |
| BLS | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x46b914...dcaf9d` | ⚠️ Unaudited |
| BnanaCourt | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 3 deployments: avalanche `0x1b8976...037389`; avalanche `0x73b425...74f921`; avalanche `0x80f5c1...9e2238` | ⚠️ Unaudited |
| Bonez | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4d6ec4...2ab677` | ⚠️ Unaudited |
| BonezClaim | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7ccff2...5a54cf` | ⚠️ Unaudited |
| BonezStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd63bbc...cfdfe8` | ⚠️ Unaudited |
| BonezSwapping | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4a3fb3...fda7c4` | ⚠️ Unaudited |
| BpayPortalz | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7147f6...c899b4` | ⚠️ Unaudited |
| BrevUniversity | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0xcf7b2c...ee3532`; avalanche `0xd13510...8bf5c8` | ⚠️ Unaudited |
| BSCSNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x66841c...30cef1` | ⚠️ Unaudited |
| BurstFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 4 deployments: avalanche `0x286fab...848205`; avalanche `0x2affb6...dcb9bb`; avalanche `0xbb6b57...a7d43a`; avalanche `0xcf5de4...e8f857` | ⚠️ Unaudited |
| BurstFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x7e71e4...ee4813`; avalanche `0x84926d...913d8b` | ⚠️ Unaudited |
| BurstFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | avalanche | n/a | 4 deployments: avalanche `0x8ade2c...1d591b`; avalanche `0xc331d7...3a9f8b`; avalanche `0xdd4d94...91ad42`; avalanche `0xdef673...ad5ef6` | ⚠️ Unaudited |
| BurstFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | `0xd49d18...bfb6e7` | ⚠️ Unaudited |
| BurstFactoryV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4a47cd...952c76` | ⚠️ Unaudited |
| BurstFactoryV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x6c8823...612602`; avalanche `0xef89a7...276644` | ⚠️ Unaudited |
| BurstFactoryV4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x1f62f4...36f1ba`; avalanche `0xce4d39...d9677b` | ⚠️ Unaudited |
| BurstFactoryV5 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 4 deployments: avalanche `0x27b12f...c84c7e`; avalanche `0xab9356...0d1ad6`; avalanche `0xb86490...0a2b6d`; avalanche `0xdaebd8...71b72a` | ⚠️ Unaudited |
| BurstFactoryV5 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0xb83ad9...13a903`; avalanche `0xb91b66...f463d1` | ⚠️ Unaudited |
| BurstFactoryV6 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0xbc74a3...c07cdd`; avalanche `0xde2762...d0c9a7` | ⚠️ Unaudited |
| BurstToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 10 deployments: avalanche `0x1c8df0...1d0dfc`; avalanche `0x2025ad...cffea8`; avalanche `0x52d370...1203b6`; avalanche `0x5410bb...15c0b6`; avalanche `0x6c0a29...b05e98`; avalanche `0x737729...ad4893`; avalanche `0x7824ef...5e3b5e`; avalanche `0x9e8502...ef486a`; avalanche `0xbb5deb...efff66`; avalanche `0xe33d44...b2928d` | ⚠️ Unaudited |
| Catnip | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x07a9f5...69260c` | ⚠️ Unaudited |
| ChiknPortalz | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x5a5f0c...3c3209`; avalanche `0xf4a52e...32b43e` | ⚠️ Unaudited |
| ChiknPortalzV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9cf31e...1e72a9` | ⚠️ Unaudited |
| ClaimNodeOp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb42cfa...afc35c` | ⚠️ Unaudited |
| ClaimProtocolDAO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x4169cf...49476c`; avalanche `0x6476a7...bb286c` | ⚠️ Unaudited |
| CloudzPortalz | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf755a8...393754` | ⚠️ Unaudited |
| ColonyGovernanceToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xec3492...1793e6` | ⚠️ Unaudited |
| ColonyRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa2e7ab...89a131` | ⚠️ Unaudited |
| CopperOrbMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0xae51aa...20770a`; avalanche `0xb41b3d...536978` | ⚠️ Unaudited |
| CoqnetHardwareRental | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x7a212f...b9a6dc`; avalanche `0x8a2de3...9ac366` | ⚠️ Unaudited |
| DataGalxe | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbee7db...78c0ad` | ⚠️ Unaudited |
| DirectDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x837d54...47ba53`; avalanche `0x8a3452...311ced` | ⚠️ Unaudited |
| DogWifTrainer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8e3751...85f63d` | ⚠️ Unaudited |
| Doorkeeper | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2598eb...ed1e56` | ⚠️ Unaudited |
| EarningsBayV2Token | token | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1c7c53...7a42f9` | ⚠️ Unaudited |
| EarthPortalz | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x42d6f9...e20653` | ⚠️ Unaudited |
| EmissionsToken | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xaaab9d...081c6b` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | avalanche | n/a | 4 deployments: avalanche `0x0d8db5...e18a15`; avalanche `0x2542d3...9a2521`; avalanche `0x31e9a8...d21d4e`; avalanche `0x85d148...05c927` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x143ddb...b4562c`; avalanche `0x5974d0...1be4a8` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x3fa691...691f9d`; avalanche `0xd52d1e...0586cb` | ⚠️ Unaudited |
| ERC20Tokensx | token | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 3 deployments: avalanche `0x201d04...062d38`; avalanche `0x56b9f5...09c304`; avalanche `0x8f5642...aa832a` | ⚠️ Unaudited |
| GECNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 3 deployments: avalanche `0x231cb2...fbc36f`; avalanche `0x2da215...6d4c8f`; avalanche `0x7f3590...b547e3` | ⚠️ Unaudited |
| GECToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe8385c...4881f3` | ⚠️ Unaudited |
| GEGGSINCUBATOR | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xaa2cee...6b1c4f` | ⚠️ Unaudited |
| getWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbfd603...f11d2d` | ⚠️ Unaudited |
| GGAVAXPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x358283...af8020` | ⚠️ Unaudited |
| GGAVAXRateProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1bb74e...9a0a7f` | ⚠️ Unaudited |
| GoGoGasStation | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x27ce13...f62b7e`; avalanche `0x52950f...8f7bd2` | ⚠️ Unaudited |
| GoldenOrbSwapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xaa2ef7...e04ba1` | ⚠️ Unaudited |
| Husky | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x65378b...f4a654` | ⚠️ Unaudited |
| IndexFeeDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 3 deployments: avalanche `0x3ec03d...b7d6b6`; avalanche `0x650a85...1fcd41`; avalanche `0x883594...8bb723` | ⚠️ Unaudited |
| Juicy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 4 deployments: avalanche `0x480d2e...44c4bd`; avalanche `0x9f7051...c43146`; avalanche `0xc65472...a6af55`; avalanche `0xeb0064...8bc48b` | ⚠️ Unaudited |
| JuicyAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x5c8f07...c51fdc`; avalanche `0x856ddc...664349` | ⚠️ Unaudited |
| JuicyAirdrops | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc3943c...2e9504` | ⚠️ Unaudited |
| JuicyStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 4 deployments: avalanche `0x02d14d...314064`; avalanche `0x58fc11...29f5f2`; avalanche `0x99ac35...7c88a2`; avalanche `0xc1c19f...d8ff1e` | ⚠️ Unaudited |
| JuicySubscriptions | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 3 deployments: avalanche `0x11522c...1453c9`; avalanche `0x1f49dd...f07b2e`; avalanche `0x37fa51...e5034e` | ⚠️ Unaudited |
| JuicyTokenSale | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 4 deployments: avalanche `0x2ce2ed...50a730`; avalanche `0x471a48...6de731`; avalanche `0xb1bb87...d0a93d`; avalanche `0xde485a...ddf650` | ⚠️ Unaudited |
| Ket | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xffff00...2b6ed7` | ⚠️ Unaudited |
| KetPfpMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x06d75d...18435d`; avalanche `0x7b1ccf...c75911` | ⚠️ Unaudited |
| KimboCollege | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4e6b2a...f4590c` | ⚠️ Unaudited |
| KimboTrainer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xaeb261...a06e22` | ⚠️ Unaudited |
| KONG | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0xac48e0...5026ba`; avalanche `0xebb5d4...1fc999` | ⚠️ Unaudited |
| KOVIN | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x31166b...7e27ec`; avalanche `0x694200...8c5cbb` | ⚠️ Unaudited |
| KovinButton | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 5 deployments: avalanche `0x2c31ea...6710eb`; avalanche `0x2e45e0...60e839`; avalanche `0x630164...86d147`; avalanche `0x736ee8...0dab57`; avalanche `0x8ed619...5d17e4` | ⚠️ Unaudited |
| kovinBuyer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 4 deployments: avalanche `0x284a2c...8d3b89`; avalanche `0x5a2c7b...5124b5`; avalanche `0x8e1b68...3445cc`; avalanche `0xe507d2...4d2f76` | ⚠️ Unaudited |
| KovinJeckpot | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 16 deployments: avalanche `0x11032f...14a4e0`; avalanche `0x1ec53e...bff06c`; avalanche `0x21c183...5292b1`; avalanche `0x30648f...c1fbbe`; avalanche `0x3d64aa...78d81f`; avalanche `0x5f2ccc...cf468e`; avalanche `0x60d912...d9cf20`; avalanche `0x61ea33...6e47d4`; avalanche `0x6fe737...f3907d`; avalanche `0x70b145...7febc3`; avalanche `0x85677d...2eab7e`; avalanche `0x995c59...92ec1b`; avalanche `0xac9563...8e26ed`; avalanche `0xd03003...21386f`; avalanche `0xe51e69...5e52bc`; avalanche `0xe7b25a...b9ac6b` | ⚠️ Unaudited |
| KovinJeckpotData | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 6 deployments: avalanche `0x10526c...d24c77`; avalanche `0x1f060a...4c7c7c`; avalanche `0x219775...96ad0b`; avalanche `0x4b2cd1...189142`; avalanche `0xc448e3...43d087`; avalanche `0xda44ff...e64251` | ⚠️ Unaudited |
| KovinVRF | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x516330...e5d7cb` | ⚠️ Unaudited |
| KycProofVerification | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x580ddd...3fa0e9` | ⚠️ Unaudited |
| KycStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x61ec16...254092` | ⚠️ Unaudited |
| Laifu | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x21e32d...93c24f` | ⚠️ Unaudited |
| Landwolf | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4f94b8...4438ec` | ⚠️ Unaudited |
| LitterBox | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x53d573...d0b53e` | ⚠️ Unaudited |
| LPTP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 4 deployments: avalanche `0x0ab862...d01664`; avalanche `0x0f4ee6...c3dcc5`; avalanche `0x6a945f...f60805`; avalanche `0xf7326b...d5f70a` | ⚠️ Unaudited |
| M1ZPortalz | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xda54f8...52e311` | ⚠️ Unaudited |
| MasterChefColony | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2ac45f...3947d0` | ⚠️ Unaudited |
| MemeToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7a842a...e6bc75` | ⚠️ Unaudited |
| Meow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8ad25b...8f6187` | ⚠️ Unaudited |
| MerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 3 deployments: avalanche `0x5463fb...95a9d0`; avalanche `0xe3418a...79c871`; avalanche `0xf23396...2bc14f` | ⚠️ Unaudited |
| Migrations | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 7 deployments: avalanche `0x49c3f3...7ef110`; avalanche `0x4c8607...6c5f40`; avalanche `0x7276e6...a3edea`; avalanche `0xa45701...e33fcd`; avalanche `0xcc4db7...08cd10`; avalanche `0xe9affc...3fbbc1`; avalanche `0xf93b7a...5cc4a8` | ⚠️ Unaudited |
| MinipoolManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 5 deployments: avalanche `0x9e6579...b280e9`; avalanche `0xb84fa0...d1ed08`; avalanche `0xc300bc...268ee7`; avalanche `0xc8de41...da7037`; avalanche `0xe51262...208dea` | ⚠️ Unaudited |
| MinipoolStreamliner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 3 deployments: avalanche `0x0a75a4...efa430`; avalanche `0x8c05d7...96115c`; avalanche `0xb5f2ed...90e560` | ⚠️ Unaudited |
| MinipoolStreamliner | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x746f2c...c1ecd8`; avalanche `0x752ab1...163ae1` | ⚠️ Unaudited |
| MinipoolStreamlinerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xae1e7b...3ce4b1` | ⚠️ Unaudited |
| MultisigManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7fff41...1b6a3b` | ⚠️ Unaudited |
| NFTradeNFTToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xba6a7a...9e60d2` | ⚠️ Unaudited |
| NodeAsAService | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x3ccef5...7e805a`; avalanche `0xb306c9...b20b04` | ⚠️ Unaudited |
| NOODS | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x206336...a869e1`; avalanche `0xffdb03...22da98` | ⚠️ Unaudited |
| Ocyticus | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x9189d1...ea210b`; avalanche `0xffdc3b...ad5542` | ⚠️ Unaudited |
| OgerzPortalz | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4962aa...bcfe0b` | ⚠️ Unaudited |
| OonodzHardwareProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfe6ca6...e8fe3e` | ⚠️ Unaudited |
| Oracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x30fb91...a16db7` | ⚠️ Unaudited |
| OrbMerger | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x412cb1...347839` | ⚠️ Unaudited |
| OrbRedeemer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x1f240d...f8b1d2`; avalanche `0xc874be...7b565a` | ⚠️ Unaudited |
| Orbs | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x62df6e...37fcc5`; avalanche `0xec18aa...f8450c` | ⚠️ Unaudited |
| Orbs | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 3 deployments: avalanche `0x9df15b...c08e2b`; avalanche `0xbca48e...626891`; avalanche `0xd491c8...0f9734` | ⚠️ Unaudited |
| PaymentManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0xef4364...856c7f` | ⚠️ Unaudited |
| PaymentManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: base `0x8e4fa9...ab19ab`; avalanche `0x174b0d...41df6a` | ⚠️ Unaudited |
| PitBonus | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe6666f...5926c9` | ⚠️ Unaudited |
| Png | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x60781c...aca982` | ⚠️ Unaudited |
| PortalzSquadz | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2644da...cf29e5` | ⚠️ Unaudited |
| ProtocolDAO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 4 deployments: avalanche `0x41a763...195d0b`; avalanche `0x70fd1a...fd1b65`; avalanche `0xa008cc...8ef546`; avalanche `0xfc3ea3...d8051a` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 10 deployments: avalanche `0x5313c3...b247cf`; avalanche `0x6e8fd3...aed940`; avalanche `0x741c5f...17690c`; avalanche `0x89cf78...b9b64d`; avalanche `0x9484d5...416c71`; avalanche `0xbc5627...e9e190`; avalanche `0xc7fef2...d7a6c6`; avalanche `0xdbfe1e...a56aa7`; avalanche `0xe4d695...4e3027`; avalanche `0xf4c562...1620a9` | ⚠️ Unaudited |
| RewardsPool | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xaa8fd0...7c1b1d` | ⚠️ Unaudited |
| SalvorGovernanceToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x623494...3c630a` | ⚠️ Unaudited |
| SalvorPortalz | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x992855...e1bb97` | ⚠️ Unaudited |
| SQRCAT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc8e7fb...03f2d5` | ⚠️ Unaudited |
| SQRCATMiner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2c3694...e9d1a9` | ⚠️ Unaudited |
| SquadzV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3136b9...bd8fa9` | ⚠️ Unaudited |
| Staking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 4 deployments: avalanche `0x439776...374a5f`; avalanche `0x5b0d74...1dc557`; avalanche `0x9946e6...531d00`; avalanche `0xb6ddbf...26aecb` | ⚠️ Unaudited |
| StakingV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0xbd2890...410bbc`; avalanche `0xf2501d...a040f9` | ⚠️ Unaudited |
| StakingV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | avalanche | n/a | 3 deployments: avalanche `0x2b8c3c...43751c`; avalanche `0x62685d...82de5b`; avalanche `0xb9ad5f...e318e1` | ⚠️ Unaudited |
| StAvaxWavaxOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x7759c6...cb618d`; avalanche `0xa582a3...bc3a4b` | ⚠️ Unaudited |
| Storage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 9 deployments: avalanche `0x081b0a...3e1f35`; avalanche `0x1bbbfa...1f9e72`; avalanche `0x3b9613...414ea4`; avalanche `0x3e186d...b54b7e`; avalanche `0x46ed33...79850b`; avalanche `0x6cb35a...c179dd`; avalanche `0x7a1164...6d078d`; avalanche `0xd9d021...ff1dc1`; avalanche `0xe0f912...56cca7` | ⚠️ Unaudited |
| SubnetHardwareRentalMapping | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x8b85ca...f33d0b`; avalanche `0xf04aa1...f8a9ed` | ⚠️ Unaudited |
| SubnetStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x697d7c...ba2c68`; avalanche `0x9bfade...590819` | ⚠️ Unaudited |
| swapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x7e37a6...1050a1`; avalanche `0xac7b33...3817b6` | ⚠️ Unaudited |
| ThePit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x96b905...19d672`; avalanche `0xc9871b...6fa33b` | ⚠️ Unaudited |
| Timelock | governance | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcd385f...14af41` | ⚠️ Unaudited |
| tip | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 11 deployments: avalanche `0x039f02...caaad3`; avalanche `0x1da7b5...618a53`; avalanche `0x722f29...a2d1bc`; avalanche `0x80df49...a604b6`; avalanche `0x9df2f8...e82840`; avalanche `0xb0c63b...57e320`; avalanche `0xb85aff...655d9e`; avalanche `0xca2efe...d644d3`; avalanche `0xd15bd1...50522d`; avalanche `0xd5e8ac...23bda6`; avalanche `0xf563cb...399106` | ⚠️ Unaudited |
| TokenggAVAX | token | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 4 deployments: avalanche `0x576d98...ca7323`; avalanche `0x84e71c...ceb922`; avalanche `0xd960ce...16e584`; avalanche `0xf80eb4...57843e` | ⚠️ Unaudited |
| TokenggAVAX | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0xa25eaf...b703e3`; avalanche `0xfad33e...163752` | ⚠️ Unaudited |
| TokenGGP | token | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x69260b...2cd11d` | ⚠️ Unaudited |
| TokenpstAVAX | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x6b3775...e5aaf8`; avalanche `0x82e153...79b241` | ⚠️ Unaudited |
| TokenVesting | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x49424f...1d5586`; avalanche `0x5d7dcc...a666fd` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x0146b8...9937af`; avalanche `0x22bafb...a1d073` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x0eb749...c52388`; avalanche `0xe6224b...ff9f08` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x146782...e1310d`; avalanche `0x23904c...f8d044` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x17ce2a...5520d4`; avalanche `0xad36f6...49a86b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x36e0e8...e0f6be`; avalanche `0xe8f9e1...5140b7` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x5377ca...377dac`; avalanche `0xe6befa...33bc55` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x60d0a8...858096`; avalanche `0x7ccda6...615a8d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x62b382...5c04b9`; avalanche `0xda88d0...fb1d61` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x708e88...858b6e`; avalanche `0xd071aa...d157d7` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x91c5f2...6a5f3f`; avalanche `0xe9b65e...34d9a9` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0xac59c2...d2f3ba`; avalanche `0xae7bd6...d1bc93` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | avalanche | n/a | 3 deployments: avalanche `0xb244b1...3c6c54`; avalanche `0xba239e...48885d`; avalanche `0xc2de17...de054b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | avalanche | n/a | 3 deployments: avalanche `0xb79a1f...a75c67`; avalanche `0xc54c0c...4bfad9`; avalanche `0xfa5951...b9ab76` | ⚠️ Unaudited |
| Tuna | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x833d1c...b7fde9` | ⚠️ Unaudited |
| TwapGGP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3155a8...d56cfe` | ⚠️ Unaudited |
| UniversalClaimer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc84c8b...276c20` | ⚠️ Unaudited |
| Unmasker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x00969a...b0b7dd`; avalanche `0x60c175...8d2ced` | ⚠️ Unaudited |
| USDCInvestmentPool | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x82d7d9...9c4050` | ⚠️ Unaudited |
| Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd45cb6...41e6ba` | ⚠️ Unaudited |
| Vesting | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x93640f...d7dcc5`; avalanche `0xefac81...c2be20` | ⚠️ Unaudited |
| WithdrawQueue | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 5 deployments: avalanche `0x3dc349...5d08e2`; avalanche `0x4043da...b45e6e`; avalanche `0x472e82...f56238`; avalanche `0x55eadf...bd8a16`; avalanche `0x87c1b4...b48a64` | ⚠️ Unaudited |
| WithdrawQueue | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x61f908...5849a3`; avalanche `0xf25dc8...c10afd` | ⚠️ Unaudited |
| xBIFKN314 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa43f06...86374f` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (128)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x00f9e4...07e51a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x019258...623001` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x043026...3b4416` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0521fc...cc509a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392051 | `0x05c181...0ac966` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x06b959...7f7216` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x08237f...fdfeb5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x091e3e...9dce7a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x096459...49cef6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x096c04...7560b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0a00a7...291641` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0c1992...e01244` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0cc748...43bd45` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392052 | `0x0d15f9...c27e00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0ea552...cede12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0ff749...4926fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x12005b...896754` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x12eeef...5c7c60` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392053 | `0x1425d8...d634d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x15dbf0...68ce47` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x15e567...798dd8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x171c78...1972e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x17395a...222199` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x18c7a6...a9f580` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x18e360...c18973` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1988aa...63cd2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x19da5d...d439f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x19fc17...fea3d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1a5bdc...71f4e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1c3fa0...bf6749` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1d3d3a...5e0bed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1e50ae...7224d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x202f0c...a15c1c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2042f4...2791fe` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392054 | `0x2266e5...db58ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x24d332...2aa064` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x257bff...5b6cad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x26760c...11c9ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x26a97b...53abba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3d1edf...fb0341` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3db497...79c071` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392055 | `0x3deb76...932b7d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392056 | `0x4085fb...11d6ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x41f2c5...bfea01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x423d18...20f093` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392057 | `0x44c961...26feb9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4bf0c9...f23d48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4f406e...6cab5d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x50c496...f29e11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x538a28...33dead` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x58c4b2...0740f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5906ca...ed62bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5bfdea...467ea5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5fb5d0...ee2666` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x602fe1...4cff1e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392058 | `0x607b1d...49b632` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x65b58c...b9cbc2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x662550...4ed596` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x686040...35c611` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x68bc23...affbd0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6973af...e3cf3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6aa881...d0985f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7aa41b...b52fae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7b080e...d3a344` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7cdf0d...fffb98` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7d36bd...afd168` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7e997f...aa250b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x81e542...0e6379` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x861aab...cd386a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392059 | `0x8cfc37...005996` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8d6b7e...ce0b31` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8f81fa...80803d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x950e56...878dcd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x96e40a...e78baa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9b7f4c...a87f2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9cbdcb...7f12d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9e1ac5...4bfa1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa043ae...bf8c47` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa224dd...fc6be0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa3d17b...180ee9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa4998c...2322bb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392060 | `0xa5128f...772447` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa7a925...1baeab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa915c4...205cd9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392061 | `0xa9fb0a...fe90fa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392062 | `0xaa7f72...dc732f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392063 | `0xab4fe2...130c80` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392064 | `0xacb8ce...37d69a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xaf85ae...ed31e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb023ad...84e15b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb3b054...13d0d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb6b70d...c9fd70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb746d1...4e75ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbb9207...7bdf0d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbbbc98...7e9328` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbbe885...f4deec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc1e38f...4df212` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc1eedc...d6adc0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc34cbc...3909c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc5d950...deb180` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc5f368...c82fcb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc6b285...c93845` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc6d086...1468dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc73aed...ef8ee6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc7492a...9eec20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc9fbf1...ce4e00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcc42c3...b1d780` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcc4af1...3515aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcfdcd7...5252ac` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392065 | `0xd09966...74dd3f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392066 | `0xd106ec...183dc3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd1dd6a...82392b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd40e60...22b577` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd4fea8...9d41c5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392067 | `0xd86456...bb9865` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xda9961...03ad32` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdc53b2...1bbfdb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392068 | `0xddde9d...6c82f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdfc2ec...fc7768` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdfc900...9cfbf2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe0ea31...30603b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe82b73...2f6203` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xeb0910...247df0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xec16d6...60144d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xedd549...c90648` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf13d43...e8cad1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-392069 | `0xf65e92...85ebd9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfe305a...116608` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [spaces/fUJhj5pOCZ1OqOS2mFCs/uploads/Lnkp7kxoSMTgU9Kh0q2A/Salvor_15082022_SCAudit_Report.pdf](https://3680626664-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FfUJhj5pOCZ1OqOS2mFCs%2Fuploads%2FLnkp7kxoSMTgU9Kh0q2A%2FSalvor_15082022_SCAudit_Report.pdf) | SCAudit | Audit | 2022-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 16 | high |
| [spaces/fUJhj5pOCZ1OqOS2mFCs/uploads/aHdorsVLkkSsvnJ1557L/Salvor_SC Audit Report_15022023__.pdf (also discovered via alternate URL)](https://3680626664-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FfUJhj5pOCZ1OqOS2mFCs%2Fuploads%2FaHdorsVLkkSsvnJ1557L%2FSalvor_SC%20Audit%20Report_15022023__.pdf) | SCAudit | Audit | 2023-03 | stale | Direct | contract_name|n/a | matched | 1 | 1 | 0 | 0 | high |
| [spaces/fUJhj5pOCZ1OqOS2mFCs/uploads/kvTuvmkMW2m2WJhcqjQB/Salvor_19122022_SCAudit_Report_[SA-871].pdf (also discovered via alternate URL)](https://3680626664-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FfUJhj5pOCZ1OqOS2mFCs%2Fuploads%2FkvTuvmkMW2m2WJhcqjQB%2FSalvor_19122022_SCAudit_Report_%5BSA-871%5D.pdf) | SCAudit | Audit | 2023-01 | stale | Direct | contract_name|n/a | matched | 1 | 0 | 0 | 1 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [13807] spaces/fUJhj5pOCZ1OqOS2mFCs/uploads/Lnkp7kxoSMTgU9Kh0q2A/Salvor_15082022_SCAudit_Report.pdf — no match: Extracted 16 contracts from initial and second review scope sections. Audit date from cover page: September 28th, 2022.
- [13808] spaces/fUJhj5pOCZ1OqOS2mFCs/uploads/aHdorsVLkkSsvnJ1557L/Salvor_SC Audit Report_15022023__.pdf — matched: Only one contract (VeArt) is in scope. The report mentions ISalvorMini as an external dependency not in scope.
- [13809] spaces/fUJhj5pOCZ1OqOS2mFCs/uploads/kvTuvmkMW2m2WJhcqjQB/Salvor_19122022_SCAudit_Report_[SA-871].pdf — matched: Two contracts in scope: SalvorGovernanceToken and Vesting. Audit date from cover page.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| spaces/fUJhj5pOCZ1OqOS2mFCs/uploads/Lnkp7kxoSMTgU9Kh0q2A/Salvor_15082022_SCAudit_Report.pdf | AuctionMarketplace | unmatched — not counted | — | listed in scope | no |
| spaces/fUJhj5pOCZ1OqOS2mFCs/uploads/Lnkp7kxoSMTgU9Kh0q2A/Salvor_15082022_SCAudit_Report.pdf | BlindAuctionMarketplace | unmatched — not counted | — | listed in scope | no |
| spaces/fUJhj5pOCZ1OqOS2mFCs/uploads/Lnkp7kxoSMTgU9Kh0q2A/Salvor_15082022_SCAudit_Report.pdf | LibBlindAuction | unmatched — not counted | — | listed in scope | no |
| spaces/fUJhj5pOCZ1OqOS2mFCs/uploads/Lnkp7kxoSMTgU9Kh0q2A/Salvor_15082022_SCAudit_Report.pdf | DutchAuctionMarketplace | unmatched — not counted | — | listed in scope | no |
| spaces/fUJhj5pOCZ1OqOS2mFCs/uploads/Lnkp7kxoSMTgU9Kh0q2A/Salvor_15082022_SCAudit_Report.pdf | LibShareholder | unmatched — not counted | — | listed in scope | no |
| spaces/fUJhj5pOCZ1OqOS2mFCs/uploads/Lnkp7kxoSMTgU9Kh0q2A/Salvor_15082022_SCAudit_Report.pdf | LibOrder | unmatched — not counted | — | listed in scope | no |
| spaces/fUJhj5pOCZ1OqOS2mFCs/uploads/Lnkp7kxoSMTgU9Kh0q2A/Salvor_15082022_SCAudit_Report.pdf | Marketplace | unmatched — not counted | — | listed in scope | no |
| spaces/fUJhj5pOCZ1OqOS2mFCs/uploads/Lnkp7kxoSMTgU9Kh0q2A/Salvor_15082022_SCAudit_Report.pdf | Migrations | unmatched — not counted | — | listed in scope | no |
| spaces/fUJhj5pOCZ1OqOS2mFCs/uploads/Lnkp7kxoSMTgU9Kh0q2A/Salvor_15082022_SCAudit_Report.pdf | INFTCollectible | unmatched — not counted | — | listed in scope | no |
| spaces/fUJhj5pOCZ1OqOS2mFCs/uploads/Lnkp7kxoSMTgU9Kh0q2A/Salvor_15082022_SCAudit_Report.pdf | NFTCollectible | unmatched — not counted | — | listed in scope | no |
| spaces/fUJhj5pOCZ1OqOS2mFCs/uploads/Lnkp7kxoSMTgU9Kh0q2A/Salvor_15082022_SCAudit_Report.pdf | IPaymentManager | unmatched — not counted | — | listed in scope | no |
| spaces/fUJhj5pOCZ1OqOS2mFCs/uploads/Lnkp7kxoSMTgU9Kh0q2A/Salvor_15082022_SCAudit_Report.pdf | PaymentManager | unmatched — not counted | — | listed in scope | no |
| spaces/fUJhj5pOCZ1OqOS2mFCs/uploads/Lnkp7kxoSMTgU9Kh0q2A/Salvor_15082022_SCAudit_Report.pdf | IRoyalty | unmatched — not counted | — | listed in scope | no |
| spaces/fUJhj5pOCZ1OqOS2mFCs/uploads/Lnkp7kxoSMTgU9Kh0q2A/Salvor_15082022_SCAudit_Report.pdf | LibRoyalty | unmatched — not counted | — | listed in scope | no |
| spaces/fUJhj5pOCZ1OqOS2mFCs/uploads/Lnkp7kxoSMTgU9Kh0q2A/Salvor_15082022_SCAudit_Report.pdf | Royalty | unmatched — not counted | — | listed in scope | no |
| spaces/fUJhj5pOCZ1OqOS2mFCs/uploads/Lnkp7kxoSMTgU9Kh0q2A/Salvor_15082022_SCAudit_Report.pdf | ERC721Dummy | unmatched — not counted | — | listed in scope (second review) | no |
| spaces/fUJhj5pOCZ1OqOS2mFCs/uploads/aHdorsVLkkSsvnJ1557L/Salvor_SC Audit Report_15022023__.pdf | VeArt | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x72b73f...02ebaa` — deployed 2023-03-09 18:52:56+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/fUJhj5pOCZ1OqOS2mFCs/uploads/kvTuvmkMW2m2WJhcqjQB/Salvor_19122022_SCAudit_Report_[SA-871].pdf | SalvorGovernanceToken | own contract | SalvorGovernanceToken (selected) `0xf99516...70a90e` — deployed 2023-03-09 17:02:46+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/fUJhj5pOCZ1OqOS2mFCs/uploads/kvTuvmkMW2m2WJhcqjQB/Salvor_19122022_SCAudit_Report_[SA-871].pdf | Vesting | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 167 |
| upstream | 0 |
| standard_library | 11 |
| needs_review | 134 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 2 own (1 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 17 unmatched
- Matched-own operational status: 2 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=3
- Match method counts: unique_name=4

Zero-match audit list:

- [13807] spaces/fUJhj5pOCZ1OqOS2mFCs/uploads/Lnkp7kxoSMTgU9Kh0q2A/Salvor_15082022_SCAudit_Report.pdf

Fork inheritance lineage and inherited audits are included when available.
