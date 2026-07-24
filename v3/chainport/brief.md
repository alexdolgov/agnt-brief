# Agentic Audit Brief: ChainPort

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 4 (0 matched; 4 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: ChainPort (`chainport`)
- Website: [https://app.chainport.io](https://app.chainport.io)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, base, boba, bsc, ethereum, fantom, linea, opbnb, optimism, polygon
- Contract surface: 496 unique implementations (496 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $597,159.76
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

No contract logic was present for ChainPort in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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

0 of 15 contracts are derived from known codebases. 15 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x763a0ca93af05ade98a52dc1e5b936b89bf8b89a`, chain 1)
- UnnamedContract (`0x97fecf8229b005285f15b18c10482192bd183843`, chain 1)
- UnnamedContract (`0xca9a74c22f0a2eb91909d59a98f48f9357499a46`, chain 1)
- UnnamedContract (`0x26ab6291b0d6cb62f23fd6cb2ef19560a5d3bb6c`, chain 10)
- UnnamedContract (`0x5c80ae9c3396ca4394f9d8e6786ed9aa74489afe`, chain 56)
- UnnamedContract (`0xe4bb1a781ff979e4da5fe98686c5fcac64c8d425`, chain 56)
- UnnamedContract (`0x088884253ac8fbda22b40b40104a891f8c44337d`, chain 137)
- UnnamedContract (`0x118cbd7a4769846ad4928598d1f805a509cc8c0d`, chain 137)
- UnnamedContract (`0xf9ac9365a23d837f97078dad50638a12c9e256c8`, chain 137)
- UnnamedContract (`0x48d20dd5b1fc3b0700c7fcfabd9788d91bc99bf9`, chain 204)
- UnnamedContract (`0xd80466c6fceb87ae1bb4443d4a6ecc2f4e06d7aa`, chain 250)
- UnnamedContract (`0x395c2eaa45865870d735074093720819359b6d0a`, chain 288)
- UnnamedContract (`0x24ce7735dd9d0567982dd73f9c1f8441586713f8`, chain 8453)
- UnnamedContract (`0xc56de547270ba3339c45994552780d45b6c96814`, chain 42161)
- UnnamedContract (`0x395c2eaa45865870d735074093720819359b6d0a`, chain 59144)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 15/29 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 15 own, 4 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 477 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Confirmed-live implementations: 15 of 496 unique; 481 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/11
- Verified + Unaudited implementations: 11
- Verified by bytecode match: 0
- Unverified implementations: 485
- Unique implementations: 496
- Raw deployments: 496
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-07 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (11)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BridgeMintableTokenV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x104f3152d8ebfc3f679392977356962ff36566ac` | ⚠️ Unaudited |
| ChainportBridgeBsc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x71b4ea7af852bbbdce96348974c7ea1f34c48aa0` | ⚠️ Unaudited |
| ChainportCongress | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x71d57ee5471b720642a129621ea694da8f949621` | ⚠️ Unaudited |
| ChainportCongressMembersRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1dee7be5415f6fdcc8515ca06ae8d9afb550abca` | ⚠️ Unaudited |
| ChainportMainBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x93307c7de0f1b54814135f06321639a9f5c7ddff` | ⚠️ Unaudited |
| ChainportSideBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb198814fc92a50017701485dc554bd08d047de1a` | ⚠️ Unaudited |
| ChainportToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x241663b6ae912f2a5dffdcb7a3550bf60c0a5df5` | ⚠️ Unaudited |
| MaintainersRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x33e6a5fb807bb361c4ff3b539b9fbb019a6eeb13` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2861f4fcadeb5be5ca47d306d139ec97439fc35c` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x104f3152d8ebfc3f679392977356962ff36566ac` | ⚠️ Unaudited |
| Validator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x451b0d1022edecffce8a4c6b97c0de3a46f36769` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (485)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x21aebe5b5b7a33930b3c5c10fbd77117501a9552` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2245a40c3e4714d831eb651a86d003ecc47848e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2861f4fcadeb5be5ca47d306d139ec97439fc35c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2cd90158baae285010a5ed7c549c2e5b4c0715f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x351bb8e7c7243202f58a75d9e640b7282a0ef6ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3a535d5c5094420a6603560952f6b28d56434f48` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x4f98a258aa1181ff866067c9ed099177af97c469` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x578d73b9c8310997893118bd17f6c0b4c92ef61e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x62b0ec34afa04f8dbc64d1d8c28b744002c83b85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x63d572d781ed8d18d823462aa2a4d51d7ac4f29f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x660deb7a33bfe78058cee83fd1954353958f3a21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6dac711ff2bffc37a14e08c35a38a1e0c7dfc9b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x71d57ee5471b720642a129621ea694da8f949621` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-231817 | `0x763a0ca93af05ade98a52dc1e5b936b89bf8b89a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8637d273285faa6794e3d4d1ca180ad52575dce6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x875441460a25abbaf1a6a0e466a6f80084687320` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x877d233c59741f36154bb7fbaea853e317fbdcd6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-231818 | `0x97fecf8229b005285f15b18c10482192bd183843` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb1d20acaa7bfdf30cb4acf7a500ab6938a5ff7cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb28906a38795b7a221c64ebc8a87898caf4132a6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xc2b3debf24381ca542b496097a0c25d047f4d6b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc30da5144d1b9f47ff86345fee14fe2da94c7203` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xc455b83c4f71fd6c44ba1eddc9eb1daf31869400` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-231819 | `0xca9a74c22f0a2eb91909d59a98f48f9357499a46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe317bf1cf456875f37f1d1c5a63848d0ab25653c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf7362af99cc1f48a1e50d304ed23baf8f9fd16f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x088884253ac8fbda22b40b40104a891f8c44337d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0ad8432193f79de3dc88a5bb732640d69e1089c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0e5526f15f2d5db7520c71e32ab15a5e7ad58616` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0fc3a046d9148e3df38335308fb2278ccbb7e258` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x118cbd7a4769846ad4928598d1f805a509cc8c0d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1281c59f67cab072bcadb0e6db42bc0166918b76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x133ab20d465e4cdd29cf8b337f7b6cadd223ff7e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x17501ef7d64298c194f2da364d1d9d9b9d69c87c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1e18f5e96e25adcdd5b2e47ceb77ef124e84672a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x24ce7735dd9d0567982dd73f9c1f8441586713f8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-231821 | `0x26ab6291b0d6cb62f23fd6cb2ef19560a5d3bb6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x28bd7ce439242017df2b1c38719f15c09b5713c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x2a877b926cf1e63205cf1870d03e506bbe8b1f86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x30e4cac119d50dc895302725f527877aebe0332f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x395c2eaa45865870d735074093720819359b6d0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x3c07adb8cb71ab3a79d10e05799b0e4d4758b225` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x3d00d30cf5ac322df4a4755a4ca623b2784cc41d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x3e9213953f8ee5bbfdca66a144a067c99792b892` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x451e0798ea808e5a382acb4ccb8f5e076dc13721` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x4899eb3c7db4c3b31ee412fbcf2cfba60ca5c568` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x48d20dd5b1fc3b0700c7fcfabd9788d91bc99bf9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x4b1d5397934548663f0e2afc964996cb7430480e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x4c030f0de98ae50288ae9b61e7c99be508ebb168` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x4f98a258aa1181ff866067c9ed099177af97c469` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x509a1898b2925be39149610e9e5fbcbb68f3fb5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5393a26fd95149b9d7df556fe0030a27b7a53aee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5394e9bd5f4372f142f2a56d6c4ef13a67533334` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x57bd3701a82e416bb89f57261ccf2a97ad911fc7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5d6f289a6a31c618a600d61984140877991e90f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x6493d89a1f3dc0082e206f181b2c01e7dee56638` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x6ec1529ed77ff46cbc0a78b492c97c6c0174a8f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x76f3cd086f06b32f2a52ec67d06b96ab1bea5c11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x77fa6b67b5fc1cc6116082981d1db098b8980843` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x7ed090bb2c8b053e9377fe653d21bb988df3b7db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x85291d977d7095959118d6a3f6d6c5db5d645f90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x877d233c59741f36154bb7fbaea853e317fbdcd6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x8e2e3cc56c6ef653754bdb1646645b4f3eb53fcf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x9004ab6c97f6ddc1dc1db5ccb4defc302f53368c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x927f5f422bafd00df2ae817945b6e8694ad2f852` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x966faf57cd5187f53c047b0d461d2bf6bd968a56` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x97fecf8229b005285f15b18c10482192bd183843` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xa1ed955d215517c5f96b019d29e1e7d413fc191d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xa37936f56249965d407e39347528a1a91eb1cbef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xa89056a43c730a4c8d5c345c592fe3fcec1885c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xaa7a77cd6d9cd8dcd4c85a63afb4d195d4975c4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb115b55d0dfc53d41a4ce7097c76cbe06e5a8026` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb4d72f0fccd3db4dd79b1ada71cf2ecd4d11e8cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc2b3debf24381ca542b496097a0c25d047f4d6b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc455b83c4f71fd6c44ba1eddc9eb1daf31869400` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc48532ca546c5b9201f3b24fb9c6719ba48ff984` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc97c01ab261abeee8c633065e560cf46b09ea5a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xca6417169ea17bae210cd27b18eef813839797cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xca9a74c22f0a2eb91909d59a98f48f9357499a46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xce145f7451060ed1ec49c522c75cd24d0044c1e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xce4584ab70b9a43e7e84de859e16bb0966627a5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd4ee9f0030e0687d54d4dc6d932f10b7aa8abd1d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd7773e715549f305461ec37d304f221be3b93261` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd80466c6fceb87ae1bb4443d4a6ecc2f4e06d7aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xdad355c484ef034dcd9c353cee1e485627f20df6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xdbd0bc24d1ea06d1235cedb1867ef1ff7ec42375` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe2855e69e8cc4a423e828a2016979826a0318e00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe4bb1a781ff979e4da5fe98686c5fcac64c8d425` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe93caaf59c23ed6d0b5ef1ae015db32117d0cdd6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xecbc25afe7974e6cbd8e29609acc8b40801f6e1c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xeef01094de6e8e14c8fd35ae3d841cdb448db737` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xef360a537ab5d04a20005cf66e37badba3ac1f63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf6a67305b841584181239f42194bd48c5c7478f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf803e8ca755ae4770b5e6072a1e3cb97631d76ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf8d68c2f4884fd0ee82aa3214bee3a3ee1ba1ccf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf9363ed678a1e376a041bbedac50969010ac278e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xfaf529960fd248cac0aee1e13fe99ccabdd0b035` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0ad8432193f79de3dc88a5bb732640d69e1089c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0e5526f15f2d5db7520c71e32ab15a5e7ad58616` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0fc3a046d9148e3df38335308fb2278ccbb7e258` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x118cbd7a4769846ad4928598d1f805a509cc8c0d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1281c59f67cab072bcadb0e6db42bc0166918b76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x133ab20d465e4cdd29cf8b337f7b6cadd223ff7e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x21aebe5b5b7a33930b3c5c10fbd77117501a9552` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2351e9451a739c23b10a92e86737ee334eaec4ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x241663b6ae912f2a5dffdcb7a3550bf60c0a5df5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2861f4fcadeb5be5ca47d306d139ec97439fc35c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x28bd7ce439242017df2b1c38719f15c09b5713c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2a877b926cf1e63205cf1870d03e506bbe8b1f86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2cd90158baae285010a5ed7c549c2e5b4c0715f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x30e4cac119d50dc895302725f527877aebe0332f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x326eb9271f0427c31bd646381a59e04713ab6fb2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x351bb8e7c7243202f58a75d9e640b7282a0ef6ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3c07adb8cb71ab3a79d10e05799b0e4d4758b225` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3cad20efba95e9c10ed90bb49f65ea22163da7d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3d00d30cf5ac322df4a4755a4ca623b2784cc41d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3e9213953f8ee5bbfdca66a144a067c99792b892` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x411290b28508947fbe3283bde48686414a683646` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x42d7c7684825bbaa9741caca45fbb502be05f662` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x442be00c47c7b1d3a972d179dc696ded006862b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4899eb3c7db4c3b31ee412fbcf2cfba60ca5c568` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4b1d5397934548663f0e2afc964996cb7430480e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4c030f0de98ae50288ae9b61e7c99be508ebb168` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4c4a1c76b6ffb10c08415b8f79abaf361dbbf7ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5393a26fd95149b9d7df556fe0030a27b7a53aee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x57bd3701a82e416bb89f57261ccf2a97ad911fc7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-231839 | `0x5c80ae9c3396ca4394f9d8e6786ed9aa74489afe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5d9a457ce3f6ab74b7854da7cdc8ac5cc5bbb16c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5e023b1f361f944ebfcacd4dda2e134ec8e93bbd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x62b0ec34afa04f8dbc64d1d8c28b744002c83b85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6493d89a1f3dc0082e206f181b2c01e7dee56638` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x660deb7a33bfe78058cee83fd1954353958f3a21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x69793e9c0bf98f52b1113443516c2b98a90e7a18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6bf2e8432e8a7b54e56de38fb6f8a9561b34effb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x75a54b8ca253d50451d778fbadf7a9292f5a57e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x76f3cd086f06b32f2a52ec67d06b96ab1bea5c11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x77fa6b67b5fc1cc6116082981d1db098b8980843` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7ed090bb2c8b053e9377fe653d21bb988df3b7db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x85291d977d7095959118d6a3f6d6c5db5d645f90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x875441460a25abbaf1a6a0e466a6f80084687320` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x877d233c59741f36154bb7fbaea853e317fbdcd6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8e2e3cc56c6ef653754bdb1646645b4f3eb53fcf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9004ab6c97f6ddc1dc1db5ccb4defc302f53368c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x923db29120c70a2077be40403ee9edf4a8a4de6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x927f5f422bafd00df2ae817945b6e8694ad2f852` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x966faf57cd5187f53c047b0d461d2bf6bd968a56` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x97fecf8229b005285f15b18c10482192bd183843` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9a1649bb726894548371adf4c9e8a5f6993cf553` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa1ed955d215517c5f96b019d29e1e7d413fc191d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa3590dfe373eb8f5f8261aa6675a320b48924fd9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa72fd60723d1687171d98f72bb9359962151ce58` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa89056a43c730a4c8d5c345c592fe3fcec1885c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb115b55d0dfc53d41a4ce7097c76cbe06e5a8026` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb1d20acaa7bfdf30cb4acf7a500ab6938a5ff7cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb4d72f0fccd3db4dd79b1ada71cf2ecd4d11e8cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb6b4c7ac240b1f176c5589d064733066a83884a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb77d520a296dcccf737041a69268b9e7e77e2d17` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb7ac60c1479bdd1e2344f2f41c7c4e1313a6de19` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc2b3debf24381ca542b496097a0c25d047f4d6b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc30da5144d1b9f47ff86345fee14fe2da94c7203` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc455b83c4f71fd6c44ba1eddc9eb1daf31869400` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc48532ca546c5b9201f3b24fb9c6719ba48ff984` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc97c01ab261abeee8c633065e560cf46b09ea5a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xca6417169ea17bae210cd27b18eef813839797cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xca9a74c22f0a2eb91909d59a98f48f9357499a46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xca9dc171ab63cc726830ac70670210f332e27cef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xce145f7451060ed1ec49c522c75cd24d0044c1e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xce4584ab70b9a43e7e84de859e16bb0966627a5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcffba044541c975a4c35d3564570acea4751f1a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd4ee9f0030e0687d54d4dc6d932f10b7aa8abd1d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd7773e715549f305461ec37d304f221be3b93261` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd80466c6fceb87ae1bb4443d4a6ecc2f4e06d7aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdab6c424d4333d40a95fb40fd2797f309ad07214` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe2855e69e8cc4a423e828a2016979826a0318e00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe317bf1cf456875f37f1d1c5a63848d0ab25653c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-231840 | `0xe4bb1a781ff979e4da5fe98686c5fcac64c8d425` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe93caaf59c23ed6d0b5ef1ae015db32117d0cdd6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xecbc25afe7974e6cbd8e29609acc8b40801f6e1c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf6a67305b841584181239f42194bd48c5c7478f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf803e8ca755ae4770b5e6072a1e3cb97631d76ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf8d68c2f4884fd0ee82aa3214bee3a3ee1ba1ccf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf8f86d0d44736b25bc638a59f2f3a98d6b3cd59a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf9363ed678a1e376a041bbedac50969010ac278e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfa09cc64dc2c3c59af926c028ab3214103e3c78a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfaf529960fd248cac0aee1e13fe99ccabdd0b035` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfdf202f9efe8dd49766ce1bed6ec2eafa9e513e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfe445f302943f37c6fbca65c36fffa949d378062` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xff41dfcca7e332bb2ccc744779640c2340a0cea4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xffcf87445d23b4357ddb3d6cc0bc66f6d480d900` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x00fc8f0cf43567eb565ed84f20f552ef0c69c896` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x02f1f46db8392bb16b1459149e77050bf2bb8784` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x03b9726e4381bffac551a694f98780e1982f285b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-231825 | `0x088884253ac8fbda22b40b40104a891f8c44337d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0ad8432193f79de3dc88a5bb732640d69e1089c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0e5526f15f2d5db7520c71e32ab15a5e7ad58616` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x104f3152d8ebfc3f679392977356962ff36566ac` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-231826 | `0x118cbd7a4769846ad4928598d1f805a509cc8c0d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x17501ef7d64298c194f2da364d1d9d9b9d69c87c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1a306a6d3b248ffd8e74d20a9be682f75e9bfdc7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1e18f5e96e25adcdd5b2e47ceb77ef124e84672a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1e684a56f88591e23fca66a32e858a6496d5d32b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2034103b6a9d4712904bacf135b623bfd7284b2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x21aebe5b5b7a33930b3c5c10fbd77117501a9552` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2245a40c3e4714d831eb651a86d003ecc47848e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x224c722050e55e9ae7f2ca33e40aa2678dbb8d48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2351e9451a739c23b10a92e86737ee334eaec4ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x241663b6ae912f2a5dffdcb7a3550bf60c0a5df5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x24ce7735dd9d0567982dd73f9c1f8441586713f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x26ab6291b0d6cb62f23fd6cb2ef19560a5d3bb6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x28bd7ce439242017df2b1c38719f15c09b5713c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2970a51ff52986675b3a384c2e22c2e2e466681c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2a877b926cf1e63205cf1870d03e506bbe8b1f86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2cd90158baae285010a5ed7c549c2e5b4c0715f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x33b43965a288c3ab24740ac092d8a214b8ddd0ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x351bb8e7c7243202f58a75d9e640b7282a0ef6ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x395c2eaa45865870d735074093720819359b6d0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3c07adb8cb71ab3a79d10e05799b0e4d4758b225` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3e9213953f8ee5bbfdca66a144a067c99792b892` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x42d7c7684825bbaa9741caca45fbb502be05f662` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x442be00c47c7b1d3a972d179dc696ded006862b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x465c11fb709899735c28fd6a2df5a76595f211a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4899eb3c7db4c3b31ee412fbcf2cfba60ca5c568` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x48d20dd5b1fc3b0700c7fcfabd9788d91bc99bf9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4b1d5397934548663f0e2afc964996cb7430480e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4c030f0de98ae50288ae9b61e7c99be508ebb168` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4f98a258aa1181ff866067c9ed099177af97c469` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x509a1898b2925be39149610e9e5fbcbb68f3fb5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5393a26fd95149b9d7df556fe0030a27b7a53aee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5394e9bd5f4372f142f2a56d6c4ef13a67533334` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x578d73b9c8310997893118bd17f6c0b4c92ef61e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x57bd3701a82e416bb89f57261ccf2a97ad911fc7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5cfa900d531610083f957c37babbd72035df02bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5d6f289a6a31c618a600d61984140877991e90f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5d9a457ce3f6ab74b7854da7cdc8ac5cc5bbb16c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5e023b1f361f944ebfcacd4dda2e134ec8e93bbd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x60f7e62e758193d49cd7512b026ca68ff2cdd57e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x62b0ec34afa04f8dbc64d1d8c28b744002c83b85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x63d572d781ed8d18d823462aa2a4d51d7ac4f29f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x660deb7a33bfe78058cee83fd1954353958f3a21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6bf2e8432e8a7b54e56de38fb6f8a9561b34effb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6ec1529ed77ff46cbc0a78b492c97c6c0174a8f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x75a54b8ca253d50451d778fbadf7a9292f5a57e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x763a0ca93af05ade98a52dc1e5b936b89bf8b89a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x76f3cd086f06b32f2a52ec67d06b96ab1bea5c11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x77fa6b67b5fc1cc6116082981d1db098b8980843` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x792d4f10e6757d525df962646af666beadb860a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7ed090bb2c8b053e9377fe653d21bb988df3b7db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x85291d977d7095959118d6a3f6d6c5db5d645f90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8637d273285faa6794e3d4d1ca180ad52575dce6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x875441460a25abbaf1a6a0e466a6f80084687320` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x877d233c59741f36154bb7fbaea853e317fbdcd6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8c5d0b49973327a02418c0a84608bcd08fdfe3b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8e2e3cc56c6ef653754bdb1646645b4f3eb53fcf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9004ab6c97f6ddc1dc1db5ccb4defc302f53368c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x90596f1f874ae8a9ee66ce3713a82161941c6ae3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x923db29120c70a2077be40403ee9edf4a8a4de6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x927f5f422bafd00df2ae817945b6e8694ad2f852` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x93307c7de0f1b54814135f06321639a9f5c7ddff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x934775d6f625bcb5528c5f145b3818fcd434b312` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x966faf57cd5187f53c047b0d461d2bf6bd968a56` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x97fecf8229b005285f15b18c10482192bd183843` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa3e950bf4a0e9239db6f3a08c658db42544746f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa6cb9a1d36580a9cd45c08b3f2da55696c364379` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa89056a43c730a4c8d5c345c592fe3fcec1885c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xaa7a77cd6d9cd8dcd4c85a63afb4d195d4975c4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb115b55d0dfc53d41a4ce7097c76cbe06e5a8026` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb1d20acaa7bfdf30cb4acf7a500ab6938a5ff7cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb4d72f0fccd3db4dd79b1ada71cf2ecd4d11e8cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb5312f45f20b40e34b6ac91816071a4ab223d0de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb60a90dc01beec79547ff675e8ee43390833404b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb77d520a296dcccf737041a69268b9e7e77e2d17` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb7ac60c1479bdd1e2344f2f41c7c4e1313a6de19` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc07cd7fcda887119bff8e1eed2256ad433bee125` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc2b3debf24381ca542b496097a0c25d047f4d6b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc455b83c4f71fd6c44ba1eddc9eb1daf31869400` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc48532ca546c5b9201f3b24fb9c6719ba48ff984` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc56de547270ba3339c45994552780d45b6c96814` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc97c01ab261abeee8c633065e560cf46b09ea5a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xca6417169ea17bae210cd27b18eef813839797cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xca9a74c22f0a2eb91909d59a98f48f9357499a46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xce145f7451060ed1ec49c522c75cd24d0044c1e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xce4584ab70b9a43e7e84de859e16bb0966627a5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xcffba044541c975a4c35d3564570acea4751f1a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd4ee9f0030e0687d54d4dc6d932f10b7aa8abd1d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd5a1324997b16414171e13be4d2e88173c331259` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xdab6c424d4333d40a95fb40fd2797f309ad07214` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xdad355c484ef034dcd9c353cee1e485627f20df6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xdbd0bc24d1ea06d1235cedb1867ef1ff7ec42375` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe16dc4cab6607301f3cc28dd5bda257b67443b39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe317bf1cf456875f37f1d1c5a63848d0ab25653c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe4bb1a781ff979e4da5fe98686c5fcac64c8d425` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe93caaf59c23ed6d0b5ef1ae015db32117d0cdd6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xecbc25afe7974e6cbd8e29609acc8b40801f6e1c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xed8347eab0a2a0be91ac8bd5285985312ad0d244` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xeef01094de6e8e14c8fd35ae3d841cdb448db737` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf06572ef5ca7af50ac07798726f20f9bb8dfa83d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf6a67305b841584181239f42194bd48c5c7478f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf7362af99cc1f48a1e50d304ed23baf8f9fd16f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf803e8ca755ae4770b5e6072a1e3cb97631d76ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf8d68c2f4884fd0ee82aa3214bee3a3ee1ba1ccf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf9363ed678a1e376a041bbedac50969010ac278e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-231827 | `0xf9ac9365a23d837f97078dad50638a12c9e256c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfaf529960fd248cac0aee1e13fe99ccabdd0b035` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfc0cd88f032d25c02c9457624db4a1903a71ab38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfd7157a2286964062657c305440f6a9f61b727fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfe90a8434905fdde7f9cc349cc4958dc99a0735b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0x0e5526f15f2d5db7520c71e32ab15a5e7ad58616` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0x1e18f5e96e25adcdd5b2e47ceb77ef124e84672a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0x28bd7ce439242017df2b1c38719f15c09b5713c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0x2a877b926cf1e63205cf1870d03e506bbe8b1f86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0x3c07adb8cb71ab3a79d10e05799b0e4d4758b225` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | opbnb | unit-231829 | `0x48d20dd5b1fc3b0700c7fcfabd9788d91bc99bf9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0x5d6f289a6a31c618a600d61984140877991e90f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0x60f7e62e758193d49cd7512b026ca68ff2cdd57e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0x76f3cd086f06b32f2a52ec67d06b96ab1bea5c11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0x77fa6b67b5fc1cc6116082981d1db098b8980843` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0x7ed090bb2c8b053e9377fe653d21bb988df3b7db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0x877d233c59741f36154bb7fbaea853e317fbdcd6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0x927f5f422bafd00df2ae817945b6e8694ad2f852` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0xc97c01ab261abeee8c633065e560cf46b09ea5a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0xce4584ab70b9a43e7e84de859e16bb0966627a5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0xecbc25afe7974e6cbd8e29609acc8b40801f6e1c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0xeef01094de6e8e14c8fd35ae3d841cdb448db737` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0xf6a67305b841584181239f42194bd48c5c7478f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0xf803e8ca755ae4770b5e6072a1e3cb97631d76ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0xf8d68c2f4884fd0ee82aa3214bee3a3ee1ba1ccf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-231831 | `0xd80466c6fceb87ae1bb4443d4a6ecc2f4e06d7aa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | boba | unit-231833 | `0x395c2eaa45865870d735074093720819359b6d0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x088884253ac8fbda22b40b40104a891f8c44337d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0ad8432193f79de3dc88a5bb732640d69e1089c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0e5526f15f2d5db7520c71e32ab15a5e7ad58616` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0fc3a046d9148e3df38335308fb2278ccbb7e258` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x118cbd7a4769846ad4928598d1f805a509cc8c0d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1281c59f67cab072bcadb0e6db42bc0166918b76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x133ab20d465e4cdd29cf8b337f7b6cadd223ff7e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x17501ef7d64298c194f2da364d1d9d9b9d69c87c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1e18f5e96e25adcdd5b2e47ceb77ef124e84672a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-231844 | `0x24ce7735dd9d0567982dd73f9c1f8441586713f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x26ab6291b0d6cb62f23fd6cb2ef19560a5d3bb6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x28bd7ce439242017df2b1c38719f15c09b5713c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2a877b926cf1e63205cf1870d03e506bbe8b1f86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x30e4cac119d50dc895302725f527877aebe0332f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x395c2eaa45865870d735074093720819359b6d0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3c07adb8cb71ab3a79d10e05799b0e4d4758b225` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3d00d30cf5ac322df4a4755a4ca623b2784cc41d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x48d20dd5b1fc3b0700c7fcfabd9788d91bc99bf9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4c030f0de98ae50288ae9b61e7c99be508ebb168` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4f98a258aa1181ff866067c9ed099177af97c469` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x509a1898b2925be39149610e9e5fbcbb68f3fb5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5393a26fd95149b9d7df556fe0030a27b7a53aee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5394e9bd5f4372f142f2a56d6c4ef13a67533334` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x57bd3701a82e416bb89f57261ccf2a97ad911fc7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5cfa900d531610083f957c37babbd72035df02bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5d6f289a6a31c618a600d61984140877991e90f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5d9a457ce3f6ab74b7854da7cdc8ac5cc5bbb16c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5e023b1f361f944ebfcacd4dda2e134ec8e93bbd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x60f7e62e758193d49cd7512b026ca68ff2cdd57e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6493d89a1f3dc0082e206f181b2c01e7dee56638` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x69793e9c0bf98f52b1113443516c2b98a90e7a18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6ec1529ed77ff46cbc0a78b492c97c6c0174a8f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x76f3cd086f06b32f2a52ec67d06b96ab1bea5c11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x77fa6b67b5fc1cc6116082981d1db098b8980843` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7ed090bb2c8b053e9377fe653d21bb988df3b7db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x85291d977d7095959118d6a3f6d6c5db5d645f90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x927f5f422bafd00df2ae817945b6e8694ad2f852` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x966faf57cd5187f53c047b0d461d2bf6bd968a56` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x97fecf8229b005285f15b18c10482192bd183843` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa1ed955d215517c5f96b019d29e1e7d413fc191d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa37936f56249965d407e39347528a1a91eb1cbef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa89056a43c730a4c8d5c345c592fe3fcec1885c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb115b55d0dfc53d41a4ce7097c76cbe06e5a8026` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb4d72f0fccd3db4dd79b1ada71cf2ecd4d11e8cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc2b3debf24381ca542b496097a0c25d047f4d6b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc455b83c4f71fd6c44ba1eddc9eb1daf31869400` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc48532ca546c5b9201f3b24fb9c6719ba48ff984` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc56de547270ba3339c45994552780d45b6c96814` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc97c01ab261abeee8c633065e560cf46b09ea5a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xca6417169ea17bae210cd27b18eef813839797cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xca9a74c22f0a2eb91909d59a98f48f9357499a46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xce4584ab70b9a43e7e84de859e16bb0966627a5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd4ee9f0030e0687d54d4dc6d932f10b7aa8abd1d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd7773e715549f305461ec37d304f221be3b93261` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd80466c6fceb87ae1bb4443d4a6ecc2f4e06d7aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdad355c484ef034dcd9c353cee1e485627f20df6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe2855e69e8cc4a423e828a2016979826a0318e00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe93caaf59c23ed6d0b5ef1ae015db32117d0cdd6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xeef01094de6e8e14c8fd35ae3d841cdb448db737` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xef360a537ab5d04a20005cf66e37badba3ac1f63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf803e8ca755ae4770b5e6072a1e3cb97631d76ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf8d68c2f4884fd0ee82aa3214bee3a3ee1ba1ccf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf9363ed678a1e376a041bbedac50969010ac278e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x02f1f46db8392bb16b1459149e77050bf2bb8784` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0e5526f15f2d5db7520c71e32ab15a5e7ad58616` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x118cbd7a4769846ad4928598d1f805a509cc8c0d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x133ab20d465e4cdd29cf8b337f7b6cadd223ff7e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x17501ef7d64298c194f2da364d1d9d9b9d69c87c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1e18f5e96e25adcdd5b2e47ceb77ef124e84672a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2351e9451a739c23b10a92e86737ee334eaec4ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x26ab6291b0d6cb62f23fd6cb2ef19560a5d3bb6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x28bd7ce439242017df2b1c38719f15c09b5713c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2a877b926cf1e63205cf1870d03e506bbe8b1f86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x30e4cac119d50dc895302725f527877aebe0332f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x395c2eaa45865870d735074093720819359b6d0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3e9213953f8ee5bbfdca66a144a067c99792b892` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x411290b28508947fbe3283bde48686414a683646` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x442be00c47c7b1d3a972d179dc696ded006862b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4899eb3c7db4c3b31ee412fbcf2cfba60ca5c568` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x48d20dd5b1fc3b0700c7fcfabd9788d91bc99bf9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4b1d5397934548663f0e2afc964996cb7430480e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4c030f0de98ae50288ae9b61e7c99be508ebb168` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4f98a258aa1181ff866067c9ed099177af97c469` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x509a1898b2925be39149610e9e5fbcbb68f3fb5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5393a26fd95149b9d7df556fe0030a27b7a53aee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x57bd3701a82e416bb89f57261ccf2a97ad911fc7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5cfa900d531610083f957c37babbd72035df02bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5d6f289a6a31c618a600d61984140877991e90f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5e023b1f361f944ebfcacd4dda2e134ec8e93bbd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6ec1529ed77ff46cbc0a78b492c97c6c0174a8f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x76f3cd086f06b32f2a52ec67d06b96ab1bea5c11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x77fa6b67b5fc1cc6116082981d1db098b8980843` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7ed090bb2c8b053e9377fe653d21bb988df3b7db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x85291d977d7095959118d6a3f6d6c5db5d645f90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x877d233c59741f36154bb7fbaea853e317fbdcd6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9004ab6c97f6ddc1dc1db5ccb4defc302f53368c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x923db29120c70a2077be40403ee9edf4a8a4de6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x927f5f422bafd00df2ae817945b6e8694ad2f852` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x966faf57cd5187f53c047b0d461d2bf6bd968a56` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x97fecf8229b005285f15b18c10482192bd183843` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa1ed955d215517c5f96b019d29e1e7d413fc191d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa37936f56249965d407e39347528a1a91eb1cbef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa89056a43c730a4c8d5c345c592fe3fcec1885c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb4d72f0fccd3db4dd79b1ada71cf2ecd4d11e8cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc2b3debf24381ca542b496097a0c25d047f4d6b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc455b83c4f71fd6c44ba1eddc9eb1daf31869400` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc48532ca546c5b9201f3b24fb9c6719ba48ff984` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-231835 | `0xc56de547270ba3339c45994552780d45b6c96814` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xca6417169ea17bae210cd27b18eef813839797cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xca9a74c22f0a2eb91909d59a98f48f9357499a46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xce4584ab70b9a43e7e84de859e16bb0966627a5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd80466c6fceb87ae1bb4443d4a6ecc2f4e06d7aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdab6c424d4333d40a95fb40fd2797f309ad07214` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdad355c484ef034dcd9c353cee1e485627f20df6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe2855e69e8cc4a423e828a2016979826a0318e00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe4bb1a781ff979e4da5fe98686c5fcac64c8d425` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe93caaf59c23ed6d0b5ef1ae015db32117d0cdd6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xecbc25afe7974e6cbd8e29609acc8b40801f6e1c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xef360a537ab5d04a20005cf66e37badba3ac1f63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf6a67305b841584181239f42194bd48c5c7478f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf803e8ca755ae4770b5e6072a1e3cb97631d76ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf8d68c2f4884fd0ee82aa3214bee3a3ee1ba1ccf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf9363ed678a1e376a041bbedac50969010ac278e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfaf529960fd248cac0aee1e13fe99ccabdd0b035` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x0e5526f15f2d5db7520c71e32ab15a5e7ad58616` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x118cbd7a4769846ad4928598d1f805a509cc8c0d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x1e18f5e96e25adcdd5b2e47ceb77ef124e84672a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x28bd7ce439242017df2b1c38719f15c09b5713c3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-231842 | `0x395c2eaa45865870d735074093720819359b6d0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x4899eb3c7db4c3b31ee412fbcf2cfba60ca5c568` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x48d20dd5b1fc3b0700c7fcfabd9788d91bc99bf9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x4b1d5397934548663f0e2afc964996cb7430480e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x57bd3701a82e416bb89f57261ccf2a97ad911fc7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x5cfa900d531610083f957c37babbd72035df02bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x5d6f289a6a31c618a600d61984140877991e90f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x5e023b1f361f944ebfcacd4dda2e134ec8e93bbd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x76f3cd086f06b32f2a52ec67d06b96ab1bea5c11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x7ed090bb2c8b053e9377fe653d21bb988df3b7db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x927f5f422bafd00df2ae817945b6e8694ad2f852` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x97fecf8229b005285f15b18c10482192bd183843` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xa37936f56249965d407e39347528a1a91eb1cbef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xc2b3debf24381ca542b496097a0c25d047f4d6b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xc455b83c4f71fd6c44ba1eddc9eb1daf31869400` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xc48532ca546c5b9201f3b24fb9c6719ba48ff984` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xc56de547270ba3339c45994552780d45b6c96814` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xca9a74c22f0a2eb91909d59a98f48f9357499a46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xce145f7451060ed1ec49c522c75cd24d0044c1e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xce4584ab70b9a43e7e84de859e16bb0966627a5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xd80466c6fceb87ae1bb4443d4a6ecc2f4e06d7aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xdad355c484ef034dcd9c353cee1e485627f20df6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xe93caaf59c23ed6d0b5ef1ae015db32117d0cdd6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xecbc25afe7974e6cbd8e29609acc8b40801f6e1c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xeef01094de6e8e14c8fd35ae3d841cdb448db737` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xf6a67305b841584181239f42194bd48c5c7478f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xf803e8ca755ae4770b5e6072a1e3cb97631d76ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xf8d68c2f4884fd0ee82aa3214bee3a3ee1ba1ccf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xf9363ed678a1e376a041bbedac50969010ac278e` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 466
- Live contracts: 0
- Unknown liveness contracts: 466
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: unverified unclassified=466

Showing first 200 of 466 contracts. The complete deployer expansion list is in `brief.json`.

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| unverified unclassified | UnnamedContract<br>`0x21aebe5b5b7a33930b3c5c10fbd77117501a9552` | non_address_book | unknown | unknown | unverified | n/a | `0xb0b599dae2aff825543cfeb061eb206365da921f` |
| unverified unclassified | UnnamedContract<br>`0x2245a40c3e4714d831eb651a86d003ecc47848e4` | non_address_book | unknown | unknown | unverified | n/a | `0xb0b599dae2aff825543cfeb061eb206365da921f` |
| unverified unclassified | UnnamedContract<br>`0x2861f4fcadeb5be5ca47d306d139ec97439fc35c` | non_address_book | unknown | unknown | unverified | n/a | `0xb0b599dae2aff825543cfeb061eb206365da921f` |
| unverified unclassified | UnnamedContract<br>`0x2cd90158baae285010a5ed7c549c2e5b4c0715f4` | non_address_book | unknown | unknown | unverified | n/a | `0xb0b599dae2aff825543cfeb061eb206365da921f` |
| unverified unclassified | UnnamedContract<br>`0x351bb8e7c7243202f58a75d9e640b7282a0ef6ee` | non_address_book | unknown | unknown | unverified | n/a | `0xb0b599dae2aff825543cfeb061eb206365da921f` |
| unverified unclassified | UnnamedContract<br>`0x3a535d5c5094420a6603560952f6b28d56434f48` | non_address_book | unknown | unknown | unverified | n/a | `0xb0b599dae2aff825543cfeb061eb206365da921f` |
| unverified unclassified | UnnamedContract<br>`0x578d73b9c8310997893118bd17f6c0b4c92ef61e` | non_address_book | unknown | unknown | unverified | n/a | `0xf0b75573e87e8d7b3146228c80b350bece64866a` |
| unverified unclassified | UnnamedContract<br>`0x62b0ec34afa04f8dbc64d1d8c28b744002c83b85` | non_address_book | unknown | unknown | unverified | n/a | `0xb0b599dae2aff825543cfeb061eb206365da921f` |
| unverified unclassified | UnnamedContract<br>`0x63d572d781ed8d18d823462aa2a4d51d7ac4f29f` | non_address_book | unknown | unknown | unverified | n/a | `0xf0b75573e87e8d7b3146228c80b350bece64866a` |
| unverified unclassified | UnnamedContract<br>`0x660deb7a33bfe78058cee83fd1954353958f3a21` | non_address_book | unknown | unknown | unverified | n/a | `0xb0b599dae2aff825543cfeb061eb206365da921f` |
| unverified unclassified | UnnamedContract<br>`0x6dac711ff2bffc37a14e08c35a38a1e0c7dfc9b8` | non_address_book | unknown | unknown | unverified | n/a | `0xb0b599dae2aff825543cfeb061eb206365da921f` |
| unverified unclassified | UnnamedContract<br>`0x71d57ee5471b720642a129621ea694da8f949621` | non_address_book | unknown | unknown | unverified | n/a | `0xf0b75573e87e8d7b3146228c80b350bece64866a` |
| unverified unclassified | UnnamedContract<br>`0x8637d273285faa6794e3d4d1ca180ad52575dce6` | non_address_book | unknown | unknown | unverified | n/a | `0xf0b75573e87e8d7b3146228c80b350bece64866a` |
| unverified unclassified | UnnamedContract<br>`0x875441460a25abbaf1a6a0e466a6f80084687320` | non_address_book | unknown | unknown | unverified | n/a | `0xb0b599dae2aff825543cfeb061eb206365da921f` |
| unverified unclassified | UnnamedContract<br>`0xb1d20acaa7bfdf30cb4acf7a500ab6938a5ff7cb` | non_address_book | unknown | unknown | unverified | n/a | `0xb0b599dae2aff825543cfeb061eb206365da921f` |
| unverified unclassified | UnnamedContract<br>`0xb28906a38795b7a221c64ebc8a87898caf4132a6` | non_address_book | unknown | unknown | unverified | n/a | `0xf0b75573e87e8d7b3146228c80b350bece64866a` |
| unverified unclassified | UnnamedContract<br>`0xc30da5144d1b9f47ff86345fee14fe2da94c7203` | non_address_book | unknown | unknown | unverified | n/a | `0xb0b599dae2aff825543cfeb061eb206365da921f` |
| unverified unclassified | UnnamedContract<br>`0xe317bf1cf456875f37f1d1c5a63848d0ab25653c` | non_address_book | unknown | unknown | unverified | n/a | `0xb0b599dae2aff825543cfeb061eb206365da921f` |
| unverified unclassified | UnnamedContract<br>`0xf7362af99cc1f48a1e50d304ed23baf8f9fd16f2` | non_address_book | unknown | unknown | unverified | n/a | `0xf0b75573e87e8d7b3146228c80b350bece64866a` |
| unverified unclassified | UnnamedContract<br>`0x088884253ac8fbda22b40b40104a891f8c44337d` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0x0ad8432193f79de3dc88a5bb732640d69e1089c1` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0x0e5526f15f2d5db7520c71e32ab15a5e7ad58616` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0x0fc3a046d9148e3df38335308fb2278ccbb7e258` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0x118cbd7a4769846ad4928598d1f805a509cc8c0d` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0x1281c59f67cab072bcadb0e6db42bc0166918b76` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0x133ab20d465e4cdd29cf8b337f7b6cadd223ff7e` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0x17501ef7d64298c194f2da364d1d9d9b9d69c87c` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0x1e18f5e96e25adcdd5b2e47ceb77ef124e84672a` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0x24ce7735dd9d0567982dd73f9c1f8441586713f8` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0x28bd7ce439242017df2b1c38719f15c09b5713c3` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0x2a877b926cf1e63205cf1870d03e506bbe8b1f86` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0x30e4cac119d50dc895302725f527877aebe0332f` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0x395c2eaa45865870d735074093720819359b6d0a` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0x3c07adb8cb71ab3a79d10e05799b0e4d4758b225` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0x3d00d30cf5ac322df4a4755a4ca623b2784cc41d` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0x3e9213953f8ee5bbfdca66a144a067c99792b892` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0x451e0798ea808e5a382acb4ccb8f5e076dc13721` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0x4899eb3c7db4c3b31ee412fbcf2cfba60ca5c568` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0x48d20dd5b1fc3b0700c7fcfabd9788d91bc99bf9` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0x4b1d5397934548663f0e2afc964996cb7430480e` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0x4c030f0de98ae50288ae9b61e7c99be508ebb168` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0x4f98a258aa1181ff866067c9ed099177af97c469` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0x509a1898b2925be39149610e9e5fbcbb68f3fb5a` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0x5393a26fd95149b9d7df556fe0030a27b7a53aee` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0x5394e9bd5f4372f142f2a56d6c4ef13a67533334` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0x57bd3701a82e416bb89f57261ccf2a97ad911fc7` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0x5d6f289a6a31c618a600d61984140877991e90f7` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0x6493d89a1f3dc0082e206f181b2c01e7dee56638` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0x6ec1529ed77ff46cbc0a78b492c97c6c0174a8f5` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0x76f3cd086f06b32f2a52ec67d06b96ab1bea5c11` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0x77fa6b67b5fc1cc6116082981d1db098b8980843` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0x7ed090bb2c8b053e9377fe653d21bb988df3b7db` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0x85291d977d7095959118d6a3f6d6c5db5d645f90` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0x877d233c59741f36154bb7fbaea853e317fbdcd6` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0x8e2e3cc56c6ef653754bdb1646645b4f3eb53fcf` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0x9004ab6c97f6ddc1dc1db5ccb4defc302f53368c` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0x927f5f422bafd00df2ae817945b6e8694ad2f852` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0x966faf57cd5187f53c047b0d461d2bf6bd968a56` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0x97fecf8229b005285f15b18c10482192bd183843` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0xa1ed955d215517c5f96b019d29e1e7d413fc191d` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0xa37936f56249965d407e39347528a1a91eb1cbef` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0xa89056a43c730a4c8d5c345c592fe3fcec1885c4` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0xaa7a77cd6d9cd8dcd4c85a63afb4d195d4975c4f` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0xb115b55d0dfc53d41a4ce7097c76cbe06e5a8026` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0xb4d72f0fccd3db4dd79b1ada71cf2ecd4d11e8cd` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0xc2b3debf24381ca542b496097a0c25d047f4d6b5` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0xc455b83c4f71fd6c44ba1eddc9eb1daf31869400` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0xc48532ca546c5b9201f3b24fb9c6719ba48ff984` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0xc97c01ab261abeee8c633065e560cf46b09ea5a1` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0xca6417169ea17bae210cd27b18eef813839797cc` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0xca9a74c22f0a2eb91909d59a98f48f9357499a46` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0xce145f7451060ed1ec49c522c75cd24d0044c1e6` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0xce4584ab70b9a43e7e84de859e16bb0966627a5c` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0xd4ee9f0030e0687d54d4dc6d932f10b7aa8abd1d` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0xd7773e715549f305461ec37d304f221be3b93261` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0xd80466c6fceb87ae1bb4443d4a6ecc2f4e06d7aa` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0xdad355c484ef034dcd9c353cee1e485627f20df6` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0xdbd0bc24d1ea06d1235cedb1867ef1ff7ec42375` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0xe2855e69e8cc4a423e828a2016979826a0318e00` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0xe4bb1a781ff979e4da5fe98686c5fcac64c8d425` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0xe93caaf59c23ed6d0b5ef1ae015db32117d0cdd6` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0xecbc25afe7974e6cbd8e29609acc8b40801f6e1c` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0xeef01094de6e8e14c8fd35ae3d841cdb448db737` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0xef360a537ab5d04a20005cf66e37badba3ac1f63` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0xf6a67305b841584181239f42194bd48c5c7478f4` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0xf803e8ca755ae4770b5e6072a1e3cb97631d76ee` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0xf8d68c2f4884fd0ee82aa3214bee3a3ee1ba1ccf` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0xf9363ed678a1e376a041bbedac50969010ac278e` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0xfaf529960fd248cac0aee1e13fe99ccabdd0b035` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0x0ad8432193f79de3dc88a5bb732640d69e1089c1` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0x0e5526f15f2d5db7520c71e32ab15a5e7ad58616` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0x0fc3a046d9148e3df38335308fb2278ccbb7e258` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0x118cbd7a4769846ad4928598d1f805a509cc8c0d` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0x1281c59f67cab072bcadb0e6db42bc0166918b76` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0x133ab20d465e4cdd29cf8b337f7b6cadd223ff7e` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0x21aebe5b5b7a33930b3c5c10fbd77117501a9552` | non_address_book | unknown | unknown | unverified | n/a | `0xb0b599dae2aff825543cfeb061eb206365da921f` |
| unverified unclassified | UnnamedContract<br>`0x2351e9451a739c23b10a92e86737ee334eaec4ed` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0x241663b6ae912f2a5dffdcb7a3550bf60c0a5df5` | non_address_book | unknown | unknown | unverified | n/a | `0xb0b599dae2aff825543cfeb061eb206365da921f` |
| unverified unclassified | UnnamedContract<br>`0x2861f4fcadeb5be5ca47d306d139ec97439fc35c` | non_address_book | unknown | unknown | unverified | n/a | `0xb0b599dae2aff825543cfeb061eb206365da921f` |
| unverified unclassified | UnnamedContract<br>`0x28bd7ce439242017df2b1c38719f15c09b5713c3` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0x2a877b926cf1e63205cf1870d03e506bbe8b1f86` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0x2cd90158baae285010a5ed7c549c2e5b4c0715f4` | non_address_book | unknown | unknown | unverified | n/a | `0xb0b599dae2aff825543cfeb061eb206365da921f` |
| unverified unclassified | UnnamedContract<br>`0x30e4cac119d50dc895302725f527877aebe0332f` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0x326eb9271f0427c31bd646381a59e04713ab6fb2` | non_address_book | unknown | unknown | unverified | n/a | `0x5767b43548cfd6b55dabb439dbd8dfba21980607` |
| unverified unclassified | UnnamedContract<br>`0x351bb8e7c7243202f58a75d9e640b7282a0ef6ee` | non_address_book | unknown | unknown | unverified | n/a | `0xb0b599dae2aff825543cfeb061eb206365da921f` |
| unverified unclassified | UnnamedContract<br>`0x3c07adb8cb71ab3a79d10e05799b0e4d4758b225` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0x3cad20efba95e9c10ed90bb49f65ea22163da7d4` | non_address_book | unknown | unknown | unverified | n/a | `0x5767b43548cfd6b55dabb439dbd8dfba21980607` |
| unverified unclassified | UnnamedContract<br>`0x3d00d30cf5ac322df4a4755a4ca623b2784cc41d` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0x3e9213953f8ee5bbfdca66a144a067c99792b892` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0x411290b28508947fbe3283bde48686414a683646` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0x42d7c7684825bbaa9741caca45fbb502be05f662` | non_address_book | unknown | unknown | unverified | n/a | `0xb0b599dae2aff825543cfeb061eb206365da921f` |
| unverified unclassified | UnnamedContract<br>`0x442be00c47c7b1d3a972d179dc696ded006862b8` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0x4899eb3c7db4c3b31ee412fbcf2cfba60ca5c568` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0x4b1d5397934548663f0e2afc964996cb7430480e` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0x4c030f0de98ae50288ae9b61e7c99be508ebb168` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0x4c4a1c76b6ffb10c08415b8f79abaf361dbbf7ae` | non_address_book | unknown | unknown | unverified | n/a | `0x5767b43548cfd6b55dabb439dbd8dfba21980607` |
| unverified unclassified | UnnamedContract<br>`0x5393a26fd95149b9d7df556fe0030a27b7a53aee` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0x57bd3701a82e416bb89f57261ccf2a97ad911fc7` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0x5d9a457ce3f6ab74b7854da7cdc8ac5cc5bbb16c` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0x5e023b1f361f944ebfcacd4dda2e134ec8e93bbd` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0x62b0ec34afa04f8dbc64d1d8c28b744002c83b85` | non_address_book | unknown | unknown | unverified | n/a | `0xb0b599dae2aff825543cfeb061eb206365da921f` |
| unverified unclassified | UnnamedContract<br>`0x6493d89a1f3dc0082e206f181b2c01e7dee56638` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0x660deb7a33bfe78058cee83fd1954353958f3a21` | non_address_book | unknown | unknown | unverified | n/a | `0xb0b599dae2aff825543cfeb061eb206365da921f` |
| unverified unclassified | UnnamedContract<br>`0x69793e9c0bf98f52b1113443516c2b98a90e7a18` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0x6bf2e8432e8a7b54e56de38fb6f8a9561b34effb` | non_address_book | unknown | unknown | unverified | n/a | `0xb0b599dae2aff825543cfeb061eb206365da921f` |
| unverified unclassified | UnnamedContract<br>`0x75a54b8ca253d50451d778fbadf7a9292f5a57e5` | non_address_book | unknown | unknown | unverified | n/a | `0xb0b599dae2aff825543cfeb061eb206365da921f` |
| unverified unclassified | UnnamedContract<br>`0x76f3cd086f06b32f2a52ec67d06b96ab1bea5c11` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0x77fa6b67b5fc1cc6116082981d1db098b8980843` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0x7ed090bb2c8b053e9377fe653d21bb988df3b7db` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0x85291d977d7095959118d6a3f6d6c5db5d645f90` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0x875441460a25abbaf1a6a0e466a6f80084687320` | non_address_book | unknown | unknown | unverified | n/a | `0xb0b599dae2aff825543cfeb061eb206365da921f` |
| unverified unclassified | UnnamedContract<br>`0x877d233c59741f36154bb7fbaea853e317fbdcd6` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0x8e2e3cc56c6ef653754bdb1646645b4f3eb53fcf` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0x9004ab6c97f6ddc1dc1db5ccb4defc302f53368c` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0x923db29120c70a2077be40403ee9edf4a8a4de6f` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0x927f5f422bafd00df2ae817945b6e8694ad2f852` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0x966faf57cd5187f53c047b0d461d2bf6bd968a56` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0x97fecf8229b005285f15b18c10482192bd183843` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0x9a1649bb726894548371adf4c9e8a5f6993cf553` | non_address_book | unknown | unknown | unverified | n/a | `0x5767b43548cfd6b55dabb439dbd8dfba21980607` |
| unverified unclassified | UnnamedContract<br>`0xa1ed955d215517c5f96b019d29e1e7d413fc191d` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0xa3590dfe373eb8f5f8261aa6675a320b48924fd9` | non_address_book | unknown | unknown | unverified | n/a | `0x5767b43548cfd6b55dabb439dbd8dfba21980607` |
| unverified unclassified | UnnamedContract<br>`0xa72fd60723d1687171d98f72bb9359962151ce58` | non_address_book | unknown | unknown | unverified | n/a | `0x5767b43548cfd6b55dabb439dbd8dfba21980607` |
| unverified unclassified | UnnamedContract<br>`0xa89056a43c730a4c8d5c345c592fe3fcec1885c4` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0xb115b55d0dfc53d41a4ce7097c76cbe06e5a8026` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0xb1d20acaa7bfdf30cb4acf7a500ab6938a5ff7cb` | non_address_book | unknown | unknown | unverified | n/a | `0xb0b599dae2aff825543cfeb061eb206365da921f` |
| unverified unclassified | UnnamedContract<br>`0xb4d72f0fccd3db4dd79b1ada71cf2ecd4d11e8cd` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0xb6b4c7ac240b1f176c5589d064733066a83884a1` | non_address_book | unknown | unknown | unverified | n/a | `0x5767b43548cfd6b55dabb439dbd8dfba21980607` |
| unverified unclassified | UnnamedContract<br>`0xb77d520a296dcccf737041a69268b9e7e77e2d17` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0xb7ac60c1479bdd1e2344f2f41c7c4e1313a6de19` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0xc2b3debf24381ca542b496097a0c25d047f4d6b5` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0xc30da5144d1b9f47ff86345fee14fe2da94c7203` | non_address_book | unknown | unknown | unverified | n/a | `0xb0b599dae2aff825543cfeb061eb206365da921f` |
| unverified unclassified | UnnamedContract<br>`0xc455b83c4f71fd6c44ba1eddc9eb1daf31869400` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0xc48532ca546c5b9201f3b24fb9c6719ba48ff984` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0xc97c01ab261abeee8c633065e560cf46b09ea5a1` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0xca6417169ea17bae210cd27b18eef813839797cc` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0xca9a74c22f0a2eb91909d59a98f48f9357499a46` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0xca9dc171ab63cc726830ac70670210f332e27cef` | non_address_book | unknown | unknown | unverified | n/a | `0x5767b43548cfd6b55dabb439dbd8dfba21980607` |
| unverified unclassified | UnnamedContract<br>`0xce145f7451060ed1ec49c522c75cd24d0044c1e6` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0xce4584ab70b9a43e7e84de859e16bb0966627a5c` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0xcffba044541c975a4c35d3564570acea4751f1a4` | non_address_book | unknown | unknown | unverified | n/a | `0xb0b599dae2aff825543cfeb061eb206365da921f` |
| unverified unclassified | UnnamedContract<br>`0xd4ee9f0030e0687d54d4dc6d932f10b7aa8abd1d` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0xd7773e715549f305461ec37d304f221be3b93261` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0xd80466c6fceb87ae1bb4443d4a6ecc2f4e06d7aa` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0xdab6c424d4333d40a95fb40fd2797f309ad07214` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0xe2855e69e8cc4a423e828a2016979826a0318e00` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0xe317bf1cf456875f37f1d1c5a63848d0ab25653c` | non_address_book | unknown | unknown | unverified | n/a | `0xb0b599dae2aff825543cfeb061eb206365da921f` |
| unverified unclassified | UnnamedContract<br>`0xe93caaf59c23ed6d0b5ef1ae015db32117d0cdd6` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0xecbc25afe7974e6cbd8e29609acc8b40801f6e1c` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0xf6a67305b841584181239f42194bd48c5c7478f4` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0xf803e8ca755ae4770b5e6072a1e3cb97631d76ee` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0xf8d68c2f4884fd0ee82aa3214bee3a3ee1ba1ccf` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0xf8f86d0d44736b25bc638a59f2f3a98d6b3cd59a` | non_address_book | unknown | unknown | unverified | n/a | `0x5767b43548cfd6b55dabb439dbd8dfba21980607` |
| unverified unclassified | UnnamedContract<br>`0xf9363ed678a1e376a041bbedac50969010ac278e` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0xfa09cc64dc2c3c59af926c028ab3214103e3c78a` | non_address_book | unknown | unknown | unverified | n/a | `0x5767b43548cfd6b55dabb439dbd8dfba21980607` |
| unverified unclassified | UnnamedContract<br>`0xfaf529960fd248cac0aee1e13fe99ccabdd0b035` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0xfdf202f9efe8dd49766ce1bed6ec2eafa9e513e8` | non_address_book | unknown | unknown | unverified | n/a | `0x5767b43548cfd6b55dabb439dbd8dfba21980607` |
| unverified unclassified | UnnamedContract<br>`0xfe445f302943f37c6fbca65c36fffa949d378062` | non_address_book | unknown | unknown | unverified | n/a | `0x5767b43548cfd6b55dabb439dbd8dfba21980607` |
| unverified unclassified | UnnamedContract<br>`0xff41dfcca7e332bb2ccc744779640c2340a0cea4` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0xffcf87445d23b4357ddb3d6cc0bc66f6d480d900` | non_address_book | unknown | unknown | unverified | n/a | `0x5767b43548cfd6b55dabb439dbd8dfba21980607` |
| unverified unclassified | UnnamedContract<br>`0x00fc8f0cf43567eb565ed84f20f552ef0c69c896` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0x02f1f46db8392bb16b1459149e77050bf2bb8784` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0x03b9726e4381bffac551a694f98780e1982f285b` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0x0ad8432193f79de3dc88a5bb732640d69e1089c1` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0x0e5526f15f2d5db7520c71e32ab15a5e7ad58616` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0x104f3152d8ebfc3f679392977356962ff36566ac` | non_address_book | unknown | unknown | unverified | n/a | `0xb0b599dae2aff825543cfeb061eb206365da921f` |
| unverified unclassified | UnnamedContract<br>`0x17501ef7d64298c194f2da364d1d9d9b9d69c87c` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0x1a306a6d3b248ffd8e74d20a9be682f75e9bfdc7` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0x1e18f5e96e25adcdd5b2e47ceb77ef124e84672a` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0x1e684a56f88591e23fca66a32e858a6496d5d32b` | non_address_book | unknown | unknown | unverified | n/a | `0xf0b75573e87e8d7b3146228c80b350bece64866a` |
| unverified unclassified | UnnamedContract<br>`0x2034103b6a9d4712904bacf135b623bfd7284b2d` | non_address_book | unknown | unknown | unverified | n/a | `0xb0b599dae2aff825543cfeb061eb206365da921f` |
| unverified unclassified | UnnamedContract<br>`0x21aebe5b5b7a33930b3c5c10fbd77117501a9552` | non_address_book | unknown | unknown | unverified | n/a | `0xb0b599dae2aff825543cfeb061eb206365da921f` |
| unverified unclassified | UnnamedContract<br>`0x2245a40c3e4714d831eb651a86d003ecc47848e4` | non_address_book | unknown | unknown | unverified | n/a | `0xb0b599dae2aff825543cfeb061eb206365da921f` |
| unverified unclassified | UnnamedContract<br>`0x224c722050e55e9ae7f2ca33e40aa2678dbb8d48` | non_address_book | unknown | unknown | unverified | n/a | `0xb0b599dae2aff825543cfeb061eb206365da921f` |
| unverified unclassified | UnnamedContract<br>`0x2351e9451a739c23b10a92e86737ee334eaec4ed` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0x241663b6ae912f2a5dffdcb7a3550bf60c0a5df5` | non_address_book | unknown | unknown | unverified | n/a | `0xb0b599dae2aff825543cfeb061eb206365da921f` |
| unverified unclassified | UnnamedContract<br>`0x24ce7735dd9d0567982dd73f9c1f8441586713f8` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0x26ab6291b0d6cb62f23fd6cb2ef19560a5d3bb6c` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0x28bd7ce439242017df2b1c38719f15c09b5713c3` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |
| unverified unclassified | UnnamedContract<br>`0x2970a51ff52986675b3a384c2e22c2e2e466681c` | non_address_book | unknown | unknown | unverified | n/a | `0xf0b75573e87e8d7b3146228c80b350bece64866a` |
| unverified unclassified | UnnamedContract<br>`0x2a877b926cf1e63205cf1870d03e506bbe8b1f86` | non_address_book | unknown | unknown | unverified | n/a | `0xcced97e9bc38921e6ce0c66363535ed2958fda3d` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [DL audit link](https://skynet.certik.com/projects/chainport) | CertiK | Audit | 2023-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | medium |
| [**CyberUnit:** <>](https://www.chainport.io/audits/cyberunit) | CyberUnit | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [**Zokyo:** <>](https://www.chainport.io/audits/zokyo-audit) | Zokyo | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [**Trail of Bits:** <>](https://github.com/trailofbits/publications/blob/master/reviews/2023-02-chainport-fixreview.pdf) | Trail of Bits | Audit | 2023-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [19639] DL audit link — no match: Extracted from audit history list; no detailed scope table or file paths provided.
- [19640] **CyberUnit:** <> — no match: The provided text is not an audit report; it appears to be a website cookie consent and newsletter subscription prompt. No contract names or audit details are present.
- [19641] **Zokyo:** <> — no match: The provided text is not an audit report but a cookie consent banner and newsletter subscription prompt. No contract names or audit details are present.
- [19642] **Trail of Bits:** <> — no match: Extracted contract names from findings targets and scope section. Audit date from cover page.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| DL audit link | Chainport | unmatched — not counted | — | listed in audit history | no |
| DL audit link | Chainport (PORT) | unmatched — not counted | — | listed in audit history | no |
| DL audit link | Chainport (PORTX) | unmatched — not counted | — | listed in audit history | no |
| DL audit link | Chainport (Sol part) | unmatched — not counted | — | listed in audit history | no |
| DL audit link | Chainport Protocol | unmatched — not counted | — | listed in audit history | no |
| DL audit link | ChainPort-Cardano Bridge | unmatched — not counted | — | listed in audit history | no |
| **Trail of Bits:** <> | ChainportMainBridge | unmatched — not counted | — | Target in finding 7, 8 | no |
| **Trail of Bits:** <> | ChainportSideBridge | unmatched — not counted | — | Target in finding 7, 8 | no |
| **Trail of Bits:** <> | Validator | unmatched — not counted | — | Target in finding 7 | no |
| **Trail of Bits:** <> | ChainportMiddleware | unmatched — not counted | — | Target in finding 8 | no |
| **Trail of Bits:** <> | ChainportCongressMembersRegistry | unmatched — not counted | — | Target in finding 14 | no |
| **Trail of Bits:** <> | ChainportFeeManager | unmatched — not counted | — | Target in finding 15 | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 9 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 485 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 12 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1, low=2, medium=1
- Match method counts: n/a

Zero-match audit list:

- [19639] DL audit link
- [19640] **CyberUnit:** <>
- [19641] **Zokyo:** <>
- [19642] **Trail of Bits:** <>

Fork inheritance lineage and inherited audits are included when available.
