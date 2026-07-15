# Agentic Audit Brief: Gravity Bridge

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Gravity Bridge (`gravity-bridge`)
- Website: [https://www.gravitybridge.net](https://www.gravitybridge.net)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 106 unique implementations (142 raw deployments)
- Coverage basis: 0/1 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $6,024,168.71
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Gravity Bridge. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across ethereum. Structural roles: 1 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: core (1)
- Contract kinds: contract (1)
- Detected standards: none
- Frameworks: openzeppelin (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 1 contracts are derived from known codebases. 1 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- Gravity (`0xa4108a...f2d906`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 1; live-surface rows included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 1/1 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/1 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 1 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 105 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 8
- Confirmed-live implementations: 1 of 106 unique; 105 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/74
- Verified + Unaudited implementations: 74
- Verified by bytecode match: 0
- Unverified implementations: 32
- Unique implementations: 106
- Raw deployments: 142
- Audits discovered: 0 (0 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (74)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Address | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa325ad...6441c0` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x407be3...72ba85`; ethereum `0xf6c20f...f9d762` | ⚠️ Unaudited |
| AidSquadToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x76b16a...f6e28d` | ⚠️ Unaudited |
| aiORAI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8dcff4...c577c8` | ⚠️ Unaudited |
| aiUSDT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x504108...e798d7` | ⚠️ Unaudited |
| AnyswapV6ERC20 | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd23ed8...debb7b` | ⚠️ Unaudited |
| BandToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xba11d0...6d7f55` | ⚠️ Unaudited |
| BatchTransfer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xebdaba...c0f932` | ⚠️ Unaudited |
| Blocklist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1fbef5...daea82` | ⚠️ Unaudited |
| BridgeBank | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x2034c9...2c3f53`; ethereum `0xeca46b...3b7f9f` | ⚠️ Unaudited |
| BridgeBank | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xb5f54a...5b7ba8` | ⚠️ Unaudited |
| BridgeRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x5c350c...1dd0bd`; ethereum `0xaab00d...87a4b3` | ⚠️ Unaudited |
| BridgeToken | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 13 deployments: ethereum `0x07bac3...f2dcbe`; ethereum `0x3de800...339470`; ethereum `0x413e81...7ea479`; ethereum `0x4c67b8...85be50`; ethereum `0x55e9d7...d615e8`; ethereum `0x566677...ed62c4`; ethereum `0x714bfd...1bf439`; ethereum `0x7588fe...449b28`; ethereum `0x8ea264...926cf2`; ethereum `0xa4bfc5...f7c1d2`; ethereum `0xc81978...2bd410`; ethereum `0xcf9902...fc4ec5`; ethereum `0xeb5bea...823a29` | ⚠️ Unaudited |
| BridgeToken | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x935819...bdee7b` | ⚠️ Unaudited |
| BurnableMintableCappedERC20 | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x467719...a5e5f3` | ⚠️ Unaudited |
| Controller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x35e05e...17100d`; ethereum `0xe48b40...2dfd0a` | ⚠️ Unaudited |
| CosmosBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x72eb0d...25adc3`; ethereum `0x7e5b2a...5eaf65` | ⚠️ Unaudited |
| CosmosBridge | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xe1fa4a...bb6b4a` | ⚠️ Unaudited |
| CosmosERC20 | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0xa670d7...010fd1`; ethereum `0xc0a4df...eeddac`; ethereum `0xea5a82...7d2951` | ⚠️ Unaudited |
| CroToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa0b73e...34450b` | ⚠️ Unaudited |
| CudosAccessControls | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xefb546...680993` | ⚠️ Unaudited |
| CudosToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x817bbd...e3db35` | ⚠️ Unaudited |
| eCHF | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfdbcd3...667e23` | ⚠️ Unaudited |
| eDKK | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x60db53...c14d0e` | ⚠️ Unaudited |
| eEUR | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0badd7...e6c17c` | ⚠️ Unaudited |
| eNOK | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9ec749...f47ea5` | ⚠️ Unaudited |
| eSEK | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f7f65...d63a23` | ⚠️ Unaudited |
| FetchToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x031b41...91fa7f`; ethereum `0xaea46a...41ad85` | ⚠️ Unaudited |
| GeoToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x147faf...126750` | ⚠️ Unaudited |
| Gravity | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387053 | `0xa4108a...f2d906` | ⚠️ Unaudited |
| IbcToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 11 deployments: ethereum `0x0c356b...c9ab76`; ethereum `0x1c700f...4cd310`; ethereum `0x76c4a2...b1463f`; ethereum `0x8d983c...0cb7bb`; ethereum `0x93a62c...9f4ba2`; ethereum `0xa7e560...84ded3`; ethereum `0xae837e...12835c`; ethereum `0xafd70a...e40062`; ethereum `0xc727f8...29aad6`; ethereum `0xee59b4...c8a6fb`; ethereum `0xeee10b...95128b` | ⚠️ Unaudited |
| InjectiveToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe28b3b...ceca30` | ⚠️ Unaudited |
| MerkleAirdropFinal | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf975a...04f309` | ⚠️ Unaudited |
| MNW | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd3e4ba...d7f6e4` | ⚠️ Unaudited |
| MNW_tokenswap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1a226f...b2051a`; ethereum `0x795826...1e20fe` | ⚠️ Unaudited |
| MobixToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5311cf...cb9999` | ⚠️ Unaudited |
| MultiSigWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x794811...31eb7d` | ⚠️ Unaudited |
| NGM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xed0d57...45b75d` | ⚠️ Unaudited |
| OraiToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c1124...28c1b5` | ⚠️ Unaudited |
| oVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x52746b...fee128` | ⚠️ Unaudited |
| PepeToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x698250...311933` | ⚠️ Unaudited |
| Pluton | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd8912c...12264e` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x8d1210...4fae1b`; ethereum `0xd60500...725133` | ⚠️ Unaudited |
| pStake | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfb5c68...f77006` | ⚠️ Unaudited |
| StrategyDForceUSDT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0bf729...fce791` | ⚠️ Unaudited |
| TokenGeyser | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x7b1be7...81b4b2`; ethereum `0x8cfad3...9a0d58` | ⚠️ Unaudited |
| TokenImplementation | token | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 2 deployments: ethereum `0x43373a...bf55e6`; ethereum `0xa693b1...ee87a5` | ⚠️ Unaudited |
| TokenMintERC20Token | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x35a532...a398e7` | ⚠️ Unaudited |
| VestingContract | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb3ccb8...aea97b` | ⚠️ Unaudited |
| Wallet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6024a5...653404` | ⚠️ Unaudited |
| wATOM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1cdb22...398b53` | ⚠️ Unaudited |
| WrappedKRT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcaaff7...65bff1` | ⚠️ Unaudited |
| WrappedLuna | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd28777...c91ea9` | ⚠️ Unaudited |
| WrappedmAAPL | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xc199e7...df0d42`; ethereum `0xd36932...d15a84` | ⚠️ Unaudited |
| WrappedmAMZN | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0cae9e...b9caa7` | ⚠️ Unaudited |
| WrappedmBABA | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x56aa29...c0af72` | ⚠️ Unaudited |
| WrappedmGOOGL | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x59a921...653442` | ⚠️ Unaudited |
| WrappedmIAU | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d3504...91f373` | ⚠️ Unaudited |
| WrappedMIR | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09a3ec...f2e608` | ⚠️ Unaudited |
| WrappedmMSFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41bbed...852bd7` | ⚠️ Unaudited |
| WrappedmNFLX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc8d674...0f9dcd` | ⚠️ Unaudited |
| WrappedMNT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x156b36...4bde45` | ⚠️ Unaudited |
| WrappedmQQQ | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x13b02c...f57d15` | ⚠️ Unaudited |
| WrappedmSLV | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d1555...166676` | ⚠️ Unaudited |
| WrappedmTSLA | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x21ca39...66fd63` | ⚠️ Unaudited |
| WrappedmTWTR | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xedb041...78cca9` | ⚠️ Unaudited |
| WrappedmUSO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x31c631...356991`; ethereum `0x4fd69d...50f214` | ⚠️ Unaudited |
| WrappedmVIXY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf72fcd...33fc86` | ⚠️ Unaudited |
| WrappedSCRT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b89bf...6968be` | ⚠️ Unaudited |
| WrappedSDT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x676ad1...f39ee5` | ⚠️ Unaudited |
| WrappedUST | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa47c8b...661acd` | ⚠️ Unaudited |
| wTAO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x77e06c...5b0a44` | ⚠️ Unaudited |
| XFUND | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x892a6f...c87881` | ⚠️ Unaudited |
| XKI | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x4f6103...b7f585` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (32)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Proxy (impl: 0x3b3d57a4205cf54276e79bf53b9748ec8a44a4a2) | proxy | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xc187c9...d1b43a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07e2e3...7403d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x081b3b...246947` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d74be...c02250` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x289268...7696a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x29dbb7...3153a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a6fcf...84ddfc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a9714...73ba2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x308866...1ebf47` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x33ecc0...60cc92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x35abb2...c46216` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3a3240...92fd7a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d5c50...73278f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4d03d7...4b7068` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5f82c5...ff418a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x71b460...75cb5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x78850f...94105e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7bc16c...d25b56` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8dca56...16b893` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f38e2...c2b8f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa3fb6d...6f1320` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xab6bc3...6f001c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaf9136...cd6373` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb4d6ba...3f22cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc79486...05af78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb75d3...8624d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcd9535...5e4beb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd7419f...fefc92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe190d4...1b7a9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe5eb74...db1e28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe5f262...abe0a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xec59e1...e32f6e` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0xa4108a...f2d906` | Gravity | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 70 |
| upstream | 2 |
| standard_library | 2 |
| needs_review | 32 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
