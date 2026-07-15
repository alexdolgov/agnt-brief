# Agentic Audit Brief: Velora

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

- Project: Velora (`velora`)
- Website: [https://app.velora.xyz](https://app.velora.xyz)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, avalanche, base, bsc, ethereum, gnosis, optimism, polygon, unichain
- Contract surface: 95 unique implementations (251 raw deployments)
- Coverage basis: 0/9 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $226,515.14
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Velora. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 9 contract row(s) across arbitrum, avalanche, base, bsc, ethereum, gnosis, optimism, polygon, unichain. Structural roles: 9 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 9
- Structural roles: core (9)
- Contract kinds: contract (9)
- Detected standards: ownable (2), erc20 (1), erc20permit (1), pausable (1)
- Frameworks: openzeppelin (7), solady (2), permit2 (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 41 contracts are derived from known codebases. 41 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x000000...33c96d`, chain 10)
- UnnamedContract (`0x007000...0010cc`, chain 10)
- UnnamedContract (`0x0927fd...849f6d`, chain 10)
- UnnamedContract (`0x0a0d53...406742`, chain 10)
- UnnamedContract (`0x6a000f...001068`, chain 10)
- UnnamedContract (`0x000000...33c96d`, chain 56)
- UnnamedContract (`0x007000...0010cc`, chain 56)
- UnnamedContract (`0x0a0d53...406742`, chain 56)
- UnnamedContract (`0x6a000f...001068`, chain 56)
- UnnamedContract (`0x007000...0010cc`, chain 100)
- UnnamedContract (`0x6a000f...001068`, chain 100)
- UnnamedContract (`0x92ead5...7ca241`, chain 100)
- UnnamedContract (`0x000000...33c96d`, chain 130)
- UnnamedContract (`0x007000...0010cc`, chain 130)
- UnnamedContract (`0x0a0d53...406742`, chain 130)
- UnnamedContract (`0x6a000f...001068`, chain 130)
- UnnamedContract (`0x92ead5...7ca241`, chain 130)
- UnnamedContract (`0x000000...33c96d`, chain 137)
- UnnamedContract (`0x007000...0010cc`, chain 137)
- UnnamedContract (`0x0a0d53...406742`, chain 137)
- UnnamedContract (`0x6a000f...001068`, chain 137)
- UnnamedContract (`0x000000...33c96d`, chain 8453)
- UnnamedContract (`0x007000...0010cc`, chain 8453)
- UnnamedContract (`0x0a0d53...406742`, chain 8453)
- UnnamedContract (`0x6a000f...001068`, chain 8453)
- UnnamedContract (`0x000000...33c96d`, chain 42161)
- UnnamedContract (`0x007000...0010cc`, chain 42161)
- UnnamedContract (`0x0927fd...849f6d`, chain 42161)
- UnnamedContract (`0x0a0d53...406742`, chain 42161)
- UnnamedContract (`0x6a000f...001068`, chain 42161)
- UnnamedContract (`0x007000...0010cc`, chain 43114)
- UnnamedContract (`0x6a000f...001068`, chain 43114)
- Adapter (`0x000000...33c96d`, chain 1)
- AugustusFeeVault (`0x007000...0010cc`, chain 1)
- AugustusRFQ (`0xe92b58...f55a06`, chain 1)
- AugustusRFQ (`0x8dcdfe...0288bb`, chain 56)
- AugustusRFQ (`0xf3cd47...09a043`, chain 137)
- AugustusRFQ (`0xa003df...ac5eed`, chain 8453)
- AugustusRFQ (`0x34302c...9df51f`, chain 43114)
- AugustusV6 (`0x6a000f...001068`, chain 1)
- DeltaWrappedNative (`0x0a0d53...406742`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 9; live-surface rows included: 9 (9 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 41/41 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/9 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 41 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 54 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Confirmed-live implementations: 41 of 95 unique; 54 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/61
- Verified + Unaudited implementations: 61
- Verified by bytecode match: 0
- Unverified implementations: 34
- Unique implementations: 95
- Raw deployments: 251
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-01 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (61)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Adapter01 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x9be264...3a6a73`; ethereum `0xbdd13a...e8f3be` | ⚠️ Unaudited |
| Adapter02 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8fa7a0...f81304` | ⚠️ Unaudited |
| Adapter03 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x43dad5...c8cca2`; ethereum `0x793592...33ee98`; ethereum `0xe59936...4b3879`; ethereum `0xe609ae...24818a`; ethereum `0xe6a36f...4b0c26` | ⚠️ Unaudited |
| Adapter04 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x21ab8a...357be2`; ethereum `0x92bc94...8caa8b` | ⚠️ Unaudited |
| Adapter05 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x155510...f132f8`; ethereum `0x221cf6...36c4fc`; ethereum `0x3329df...8e656d`; ethereum `0x4bdfff...66ba39` | ⚠️ Unaudited |
| AlgebraStateMulticall | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x23d574...e08a7b`; base `0xe4b8d1...b45b2f` | ⚠️ Unaudited |
| AugustusFeeVault | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-395680 | `0x007000...0010cc` | ⚠️ Unaudited |
| AugustusRFQ | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395683 | `0xe92b58...f55a06` | ⚠️ Unaudited |
| AugustusRFQ | unknown | project_anchor | own_supporting | 0 | bsc | unit-395714 | `0x8dcdfe...0288bb` | ⚠️ Unaudited |
| AugustusRFQ | unknown | project_anchor | own_supporting | 0 | polygon | unit-395701 | `0xf3cd47...09a043` | ⚠️ Unaudited |
| AugustusRFQ | unknown | project_anchor | own_supporting | 0 | base | unit-395719 | `0xa003df...ac5eed` | ⚠️ Unaudited |
| AugustusRFQ | unknown | project_anchor | own_supporting | 0 | avalanche | unit-395708 | `0x34302c...9df51f` | ⚠️ Unaudited |
| AugustusRFQRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x64f72f...83aafc` | ⚠️ Unaudited |
| AugustusSwapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 4 deployments: polygon `0x64f72f...83aafc`; polygon `0xbd0950...6dac33`; base `0x59c7c8...a08a52`; base `0x793a0b...db9443` | ⚠️ Unaudited |
| AugustusV6 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395682 | `0x6a000f...001068` | ⚠️ Unaudited |
| AvalancheAdapter01 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 8 deployments: avalanche `0x23e9bb...27e6b0`; avalanche `0x2df174...b89347`; avalanche `0x5b9909...87b340`; avalanche `0x5f7cf1...8c1bb9`; avalanche `0x6e8b66...bfc82d`; avalanche `0x749015...192147`; avalanche `0xb41ec6...4f19e7`; avalanche `0xc79cf5...e53184` | ⚠️ Unaudited |
| AvalancheBuyAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe92b58...f55a06` | ⚠️ Unaudited |
| BscAdapter01 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x27eb32...4611b9`; bsc `0x7ee3c9...c9a9fe`; bsc `0xc9229e...575ec5` | ⚠️ Unaudited |
| BscAdapter02 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5e09f0...63e0e8` | ⚠️ Unaudited |
| BscBuyAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf52523...48c37a` | ⚠️ Unaudited |
| BuyAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x737e64...f74383`; ethereum `0x760870...b1fdc1`; ethereum `0xd8b276...499eba`; ethereum `0xe56823...24bd3a` | ⚠️ Unaudited |
| CumulativeMerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 10 deployments: ethereum `0x2cf552...b36892`; ethereum `0xea6cc6...41016d`; optimism `0x26efeb...8458d8`; optimism `0x73564a...9231b1`; optimism `0x7e202c...d1cd4a`; optimism `0x7eda33...83a5a0`; optimism `0x963aed...550ec2`; optimism `0xa769dd...211686`; optimism `0xeb1ec6...4c30f1`; optimism `0xf2eb5d...d70e2a` | ⚠️ Unaudited |
| DeltaWrappedNative | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395681 | `0x0a0d53...406742` | ⚠️ Unaudited |
| DirectSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: ethereum `0xdffd70...9beb2c`; base `0x3a43e3...22ba24`; base `0xed4e00...d3c311` | ⚠️ Unaudited |
| DistributorController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 5 deployments: ethereum `0x8d8673...897cdb`; optimism `0x17e29f...3cb739`; optimism `0x23e4af...fb0e5c`; optimism `0x75d199...9e834f`; optimism `0xf455d4...2db328` | ⚠️ Unaudited |
| DystopiaExchangeRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x5b39e7...db0eac`; bsc `0xc2b5a8...f81f8b`; polygon `0xc8db35...0cd64d` | ⚠️ Unaudited |
| ERC165 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 7 deployments: ethereum `0x2a1b5d...01409c`; bsc `0x031098...ea551f`; polygon `0x3c5117...34dcfb`; polygon `0xd76d3f...1b7f32`; base `0x23f412...15338a`; base `0xc4401b...ac9165`; avalanche `0xc2b5a8...f81f8b` | ⚠️ Unaudited |
| ERC20BalanceProbeUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x6904a3...7e8fa7`; optimism `0xe37ea2...4ccd1b` | ⚠️ Unaudited |
| Faucet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x793a0b...db9443` | ⚠️ Unaudited |
| FeeClaimer | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 8 deployments: ethereum `0xef1310...6952f7`; bsc `0x2df174...b89347`; polygon `0x8b5cf4...96c060`; polygon `0x8dcdfe...0288bb`; polygon `0xabb580...0b4fc3`; base `0x6c33c7...f1525b`; base `0x9aab4b...efb3c7`; avalanche `0xbfcd68...a29e67` | ⚠️ Unaudited |
| L2StandardERC20 | token | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd3594e...d49d48` | ⚠️ Unaudited |
| MerkleRedeem | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 2 deployments: optimism `0x2a192c...7fbe99`; optimism `0xd57fd7...c21ce6` | ⚠️ Unaudited |
| MultiPath | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 9 deployments: ethereum `0xb41ec6...4f19e7`; ethereum `0xbd7b55...5c406e`; bsc `0x4f14fe...f587de`; polygon `0x2df174...b89347`; polygon `0x45d70b...2322e0`; polygon `0x7719cc...172e19`; base `0x8eeeb2...783f54`; base `0xd5717e...7159fa`; avalanche `0x031098...ea551f` | ⚠️ Unaudited |
| OnERC1155Received | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 7 deployments: ethereum `0x56a14a...a708b9`; bsc `0xbfcd68...a29e67`; polygon `0x21f9a8...fbf9f4`; polygon `0xbe0139...18f421`; base `0x1bc9c7...37d2c1`; base `0x564884...c4336e`; avalanche `0x5e09f0...63e0e8` | ⚠️ Unaudited |
| OnERC721Received | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 7 deployments: ethereum `0x564b75...610065`; bsc `0x34302c...9df51f`; polygon `0x0e87b7...291550`; polygon `0xd3131a...9729b0`; base `0x3080d6...b5cae7`; base `0x6152a4...6fa956`; avalanche `0x27eb32...4611b9` | ⚠️ Unaudited |
| ParaswapToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x200345...523e38` | ⚠️ Unaudited |
| PolygonAdapter01 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 4 deployments: polygon `0x564b75...610065`; polygon `0x88d392...0b5244`; polygon `0xa41b5a...e8a695`; polygon `0xe44769...84b4ed` | ⚠️ Unaudited |
| PolygonAdapter02 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 7 deployments: polygon `0x475928...ac087d`; polygon `0x74ef12...5d91fa`; polygon `0x97768f...ff0a93`; polygon `0xad1732...611be6`; polygon `0xb5e59e...3bbac9`; polygon `0xc69849...543299`; polygon `0xe56823...24bd3a` | ⚠️ Unaudited |
| PolygonBuyAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 5 deployments: polygon `0x2a1b5d...01409c`; polygon `0x40e11a...2f58a0`; polygon `0x9aa1b1...ee3ac3`; polygon `0xd7d3e2...446d8c`; polygon `0xdc514c...d00174` | ⚠️ Unaudited |
| PolygonZkEvmAdapter01 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 5 deployments: base `0x3b75cd...097979`; base `0x963aed...550ec2`; base `0x9f77bb...d98af2`; base `0xdf07ba...08fa4e`; base `0xe6d078...f4c570` | ⚠️ Unaudited |
| PolygonZkEvmBuyAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x8de036...1ddfeb`; base `0xaa26f5...bf8cdf` | ⚠️ Unaudited |
| PreSignatureModule | unknown | project_anchor | own_supporting | 1 | ethereum | unit-395720 | `0x000000...33c96d` | ⚠️ Unaudited |
| ProtectedMultiPath | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 13 deployments: ethereum `0x1120dd...fbdaf0`; ethereum `0x4f7484...c7e2d7`; ethereum `0xab8e3b...5e478a`; bsc `0x0927fd...849f6d`; bsc `0x23e9bb...27e6b0`; polygon `0x0927fd...849f6d`; polygon `0x34302c...9df51f`; polygon `0x737e64...f74383`; polygon `0xd12a55...4cccec`; base `0x64c856...a71b98`; base `0xbe5d5a...465080`; avalanche `0x0927fd...849f6d`; avalanche `0x9a6100...31edf5` | ⚠️ Unaudited |
| ProtectedSimpleSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 13 deployments: ethereum `0x5b9909...87b340`; ethereum `0x749015...192147`; ethereum `0xd37a67...7dae6a`; bsc `0xa655d0...2f5028`; bsc `0xe75acc...30ea8a`; polygon `0x793592...33ee98`; polygon `0xa655d0...2f5028`; polygon `0xc2b5a8...f81f8b`; polygon `0xdbd6f4...e7cad8`; base `0x742ed9...f77968`; base `0xf1a5e2...ada7a1`; avalanche `0xa655d0...2f5028`; avalanche `0xf52523...48c37a` | ⚠️ Unaudited |
| PSP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcafe00...7f3de5` | ⚠️ Unaudited |
| PSPStakingMigratorV1 | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x81df86...18eed3` | ⚠️ Unaudited |
| PSPToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbbdba6...dc4259` | ⚠️ Unaudited |
| RewardVestingHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x7cbb13...a5fd23`; ethereum `0xef970b...340fe9` | ⚠️ Unaudited |
| sePSP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 5 deployments: ethereum `0x716fbc...c5ffab`; optimism `0x6c33c7...f1525b`; optimism `0x8c934b...348615`; optimism `0x8eeeb2...783f54`; optimism `0xaee2b8...3d396e` | ⚠️ Unaudited |
| sePSP2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 4 deployments: ethereum `0x593f39...03c485`; optimism `0x26ee65...4fb2c8`; optimism `0x7160f7...f4f950`; optimism `0xf1a5e2...ada7a1` | ⚠️ Unaudited |
| sePSPStakingMigratorV1 | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 2 deployments: optimism `0x18e1a8...f8c583`; optimism `0xed4e00...d3c311` | ⚠️ Unaudited |
| SimpleSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 13 deployments: ethereum `0x66c1c2...0f402c`; ethereum `0x6e8b66...bfc82d`; ethereum `0xa655d0...2f5028`; bsc `0x1120dd...fbdaf0`; bsc `0xc79cf5...e53184`; polygon `0x1120dd...fbdaf0`; polygon `0x2674a5...78e513`; polygon `0xc9229e...575ec5`; polygon `0xe609ae...24818a`; base `0x1d2fd9...41cec0`; base `0x50731c...90de4e`; avalanche `0x1120dd...fbdaf0`; avalanche `0xc9229e...575ec5` | ⚠️ Unaudited |
| SimpleSwapHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 4 deployments: polygon `0x63f96d...dd3b76`; polygon `0xef1310...6952f7`; base `0x92c089...8bcd9f`; base `0xa769dd...211686` | ⚠️ Unaudited |
| SimpleSwapNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 8 deployments: ethereum `0x93d261...72ec0f`; ethereum `0xc7f71c...b98dc2`; bsc `0x9a6100...31edf5`; polygon `0x610ad0...5cc06e`; polygon `0xcfccd5...ca2da7`; base `0x2a192c...7fbe99`; base `0x97b86e...79c4eb`; avalanche `0xd81771...fcff2f` | ⚠️ Unaudited |
| StakedTokenBptRev2NoCooldown | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c3cab...4330fd` | ⚠️ Unaudited |
| StakedTokenBptRev2NoCooldownNoStake | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf2d4fe...adc66b` | ⚠️ Unaudited |
| TestToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xa003df...ac5eed` | ⚠️ Unaudited |
| TokenVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x0da2ad...72c484`; ethereum `0x348aa8...245aab`; ethereum `0x51d2f2...94609f`; ethereum `0x65a097...51f0bc`; ethereum `0x6a3cca...2a07b9`; ethereum `0xb07409...46e081` | ⚠️ Unaudited |
| WeightedPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 2 deployments: ethereum `0xcb0e14...e5061d`; optimism `0x11f0b5...c68440` | ⚠️ Unaudited |
| ZeroxV2Router | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc71781...bd04b5` | ⚠️ Unaudited |
| ZeroxV4Router | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc8ded6...204ce8` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (34)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x358211...12336f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe46be3...28e053` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-395684 | `0x000000...33c96d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-395685 | `0x007000...0010cc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-395686 | `0x0927fd...849f6d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-395687 | `0x0a0d53...406742` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-395688 | `0x6a000f...001068` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-395710 | `0x000000...33c96d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-395711 | `0x007000...0010cc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-395712 | `0x0a0d53...406742` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-395713 | `0x6a000f...001068` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-395689 | `0x007000...0010cc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-395690 | `0x6a000f...001068` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-395691 | `0x92ead5...7ca241` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-395692 | `0x000000...33c96d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-395693 | `0x007000...0010cc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-395694 | `0x0a0d53...406742` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-395695 | `0x6a000f...001068` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-395696 | `0x92ead5...7ca241` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-395697 | `0x000000...33c96d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-395698 | `0x007000...0010cc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-395699 | `0x0a0d53...406742` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-395700 | `0x6a000f...001068` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-395715 | `0x000000...33c96d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-395716 | `0x007000...0010cc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-395717 | `0x0a0d53...406742` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-395718 | `0x6a000f...001068` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395702 | `0x000000...33c96d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395703 | `0x007000...0010cc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395704 | `0x0927fd...849f6d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395705 | `0x0a0d53...406742` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-395706 | `0x6a000f...001068` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-395707 | `0x007000...0010cc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-395709 | `0x6a000f...001068` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Audit Report - ParaSwap [20.01.2021].pdf](https://github.com/solidified-platform/audits/blob/master/Audit%20Report%20-%20ParaSwap%20%5B20.01.2021%5D.pdf) | unknown | Audit | 2021-01 | stale | Direct | n/a | no match | 0 | 0 | 0 | 7 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [14112] Audit Report - ParaSwap [20.01.2021].pdf — no match: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Audit Report - ParaSwap [20.01.2021].pdf | AugustusSwapper | unmatched — not counted | — | — | no |
| Audit Report - ParaSwap [20.01.2021].pdf | Partner | unmatched — not counted | — | — | no |
| Audit Report - ParaSwap [20.01.2021].pdf | PartnerRegistry | unmatched — not counted | — | — | no |
| Audit Report - ParaSwap [20.01.2021].pdf | TokenTransferProxy | unmatched — not counted | — | — | no |
| Audit Report - ParaSwap [20.01.2021].pdf | UniswapV3Lib | unmatched — not counted | — | — | no |
| Audit Report - ParaSwap [20.01.2021].pdf | UniswapV3Router | unmatched — not counted | — | — | no |
| Audit Report - ParaSwap [20.01.2021].pdf | Utils | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x007000...0010cc` | AugustusFeeVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xe92b58...f55a06` | AugustusRFQ | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x8dcdfe...0288bb` | AugustusRFQ | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xf3cd47...09a043` | AugustusRFQ | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xa003df...ac5eed` | AugustusRFQ | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x34302c...9df51f` | AugustusRFQ | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6a000f...001068` | AugustusV6 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0a0d53...406742` | DeltaWrappedNative | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x000000...33c96d` | PreSignatureModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 61 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 34 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 7 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [14112] Audit Report - ParaSwap [20.01.2021].pdf

Fork inheritance lineage and inherited audits are included when available.
