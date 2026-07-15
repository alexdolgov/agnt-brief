# Agentic Audit Brief: Wasabi

## Export Authority

- Production state: **published scope**
- Raw selected rows: 4 across 3 audit(s)
- Eligible audit results: 8 (3 matched; 5 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Wasabi (`wasabi`)
- Website: [https://app.wasabi.xyz/p/LKHR9](https://app.wasabi.xyz/p/LKHR9)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base, berachain, blast, ethereum
- Contract surface: 141 unique implementations (466 raw deployments)
- Coverage basis: 3/8 confirmed own live verified implementations (37.5%); conservative 37.5% with 0 needs-review implementation(s)
- DeFi Llama TVL: $866,442.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Wasabi. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 9 contract row(s) across base, berachain, blast, ethereum. Structural roles: 5 core, 3 supporting, 1 infra. 9 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 9
- Structural roles: core (5), supporting (3), infra (1)
- Contract kinds: contract (9)
- Detected standards: erc1967proxy (9), ownable (1)
- Frameworks: openzeppelin (9), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 9

## Fork Analysis

0 of 7 contracts are derived from known codebases. 7 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- ERC1967Proxy (`0x8e0edf...d5afc0`, chain 1)
- ERC1967Proxy (`0xa456c7...7da37c`, chain 8453)
- ERC1967Proxy (`0xbdae5d...b248aa`, chain 8453)
- ERC1967Proxy (`0x0da575...6bb12b`, chain 80094)
- ERC1967Proxy (`0x3ee6c6...0df1ee`, chain 80094)
- ERC1967Proxy (`0x030107...c10c3a`, chain 81457)
- ERC1967Proxy (`0x046299...1ed355`, chain 81457)

## Contract Surface Quality

- Logic-topography rows: 9; live-surface rows included: 9 (9 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 8/8 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 3/8 (37.5%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 8 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 133 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 247
- Confirmed-live implementations: 8 of 141 unique; 133 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 3/117
- Verified + Unaudited implementations: 114
- Verified by bytecode match: 0
- Unverified implementations: 24
- Unique implementations: 141
- Raw deployments: 466
- Audits discovered: 8 (8 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-11 (aging)
- Audit staleness (calendar age): 0 fresh, 3 aging, 5 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 3 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Zellic | Tier 2 | 3 | 2.6% | 2024-10 |
| Foobar | Tier 2 | 1 | 0.9% | 2023-12 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BlastLongPool | core_logic | project_anchor | own_supporting | 1 | blast | unit-396617 | `0x046299...1ed355` | ✅ Audited |
| BlastShortPool | core_logic | project_anchor | own_supporting | 1 | blast | unit-396616 | `0x030107...c10c3a` | ✅ Audited |
| WasabiShortPool | unknown | project_anchor | own_supporting | 1 | ethereum | unit-396613 | 2 deployments: ethereum `0x0fdc7b...30d8ff`; ethereum `0x61d0df...5ebe12` | ✅ Audited |

### ⚠️ Verified + Unaudited (114)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AaveStrategy | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 3 | ethereum | n/a | 3 deployments: ethereum `0x1c1efa...fcd548`; ethereum `0x997904...448f67`; ethereum `0xc3f7e6...1543d2` | ⚠️ Unaudited |
| AaveStrategy | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x023d35...537fcf` | ⚠️ Unaudited |
| AddressProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 9 deployments: ethereum `0x2b0434...15ee72`; ethereum `0x409fb5...d075c4`; ethereum `0xdabc80...8e8c93`; ethereum `0xf74748...081828`; base `0xfc55ab...f9252f`; berachain `0x339fb3...619c0c`; berachain `0x8b03c6...75cf1f`; blast `0x668736...933cca`; blast `0x6c3194...94d48f` | ⚠️ Unaudited |
| ArcadeLending | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf31166...c8c09a` | ⚠️ Unaudited |
| ArcadeLoanTransferrer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf71d5e...4d2aee` | ⚠️ Unaudited |
| BalanceChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xe668de...fcb0f0` | ⚠️ Unaudited |
| BalancerTokenInfo | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | berachain | n/a | `0xc84879...1df3e3` | ⚠️ Unaudited |
| BeraLongPool | core_logic | project_anchor | own_supporting | 1 | berachain | unit-396614 | `0x0da575...6bb12b` | ⚠️ Unaudited |
| BeraVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | 3 deployments: berachain `0x215c8d...f584ba`; berachain `0x4ed9e4...d6a413`; berachain `0xeac928...d46398` | ⚠️ Unaudited |
| BeraVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | berachain | n/a | 2 deployments: berachain `0x4c2142...bb1450`; berachain `0x8c6506...d8cf76` | ⚠️ Unaudited |
| BeraVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | berachain | n/a | `0xb93219...a3237d` | ⚠️ Unaudited |
| BlastVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 25 | blast | n/a | 25 deployments: blast `0x09c885...33082a`; blast `0x14f86c...f0d13a`; blast `0x18412f...a876b7`; blast `0x1e046b...daf0c8`; blast `0x237e60...f80144`; blast `0x2cb60a...0acce2`; blast `0x3336f1...ae1558`; blast `0x3563b4...8f9e9a`; blast `0x3ccdbd...e768ad`; blast `0x4f01f2...b6b551`; blast `0x5c0f73...89b5a7`; blast `0x616afd...103558`; blast `0x6b4d37...19303c`; blast `0x7274aa...e7fe81`; blast `0x73ec6a...ed9d74`; blast `0x7eda4a...cacccf`; blast `0x9db922...a64cba`; blast `0x9e31ef...c57209`; blast `0x9eea5b...48be22`; blast `0xba74ab...d46c1a`; blast `0xc80615...e93014`; blast `0xcc082c...0d7ab5`; blast `0xcc3eed...56d34a`; blast `0xce979f...d4de4d`; blast `0xf2abb5...a6af53` | ⚠️ Unaudited |
| BNPLOptionBidValidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x327fe5...38550e` | ⚠️ Unaudited |
| BT404NFTWrapped | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | blast | n/a | 2 deployments: blast `0xb0a19f...57870c`; blast `0xfafd61...1a031f` | ⚠️ Unaudited |
| BT404Token | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | blast | n/a | 2 deployments: blast `0x3c1694...faa2ce`; blast `0xc8d8d8...73c699` | ⚠️ Unaudited |
| BT404Token | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xd936de...d58e26` | ⚠️ Unaudited |
| CappedVaultCompetitionDepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x97090d...2a9e84` | ⚠️ Unaudited |
| CappedVaultCompetitionDepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | berachain | n/a | `0xdee9f9...b55f18` | ⚠️ Unaudited |
| DebtController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 6 deployments: ethereum `0xfbc94e...1246d1`; ethereum `0xfe7b8f...ee60c2`; base `0x2182b5...b84684`; berachain `0x93f287...9350f9`; berachain `0xfae69f...d8558f`; blast `0xe3f3dc...cce0ac` | ⚠️ Unaudited |
| Disperse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x2bf4e5...fbc8bb` | ⚠️ Unaudited |
| ERC1155CreatorImplementation | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x2d850f...54d165` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | project_anchor | own_supporting | 1 | ethereum | unit-396612 | `0x8e0edf...d5afc0` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x1e2c31...ce04fc`; base `0x851fc7...1b1bf2` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x495077...f52554`; base `0xc69ada...54aa1b` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | project_anchor | own_supporting | 1 | base | unit-396619 | `0xa456c7...7da37c` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | project_anchor | own_supporting | 1 | base | unit-396618 | `0xbdae5d...b248aa` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0xbfea82...505188`; base `0xc60b95...288a03` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | base | n/a | `0xfc81df...3369fe` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | berachain | n/a | 2 deployments: berachain `0x1e39cf...d095c2`; berachain `0x51abc0...86fb61` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | berachain | n/a | 2 deployments: berachain `0x8c118e...1a68c4`; berachain `0xa4bbed...abcab2` | ⚠️ Unaudited |
| ERC20WasabiPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3fbf4f...d93eed` | ⚠️ Unaudited |
| ERC721CreatorImplementation | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x0cc347...142467` | ⚠️ Unaudited |
| ETHWasabiPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x046299...1ed355` | ⚠️ Unaudited |
| ExactOutSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x972e33...e8dd2c`; ethereum `0x9f2781...f3e1ac` | ⚠️ Unaudited |
| ExactOutSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x3d1c97...4de11b`; base `0x5998fa...632539` | ⚠️ Unaudited |
| ExactOutSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x457c7b...4f9773`; base `0xa5ba9e...c58dd9` | ⚠️ Unaudited |
| ExactOutSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | berachain | n/a | 2 deployments: berachain `0x6a9887...d8dbf6`; berachain `0xa3ae97...c2a188` | ⚠️ Unaudited |
| ExactOutSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | berachain | n/a | 2 deployments: berachain `0x8399ec...02b811`; berachain `0xaec98b...bd9dd3` | ⚠️ Unaudited |
| ExactOutSwapperV2 | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2ad991...6b6a7a` | ⚠️ Unaudited |
| ExactOutSwapperV2 | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0xf016fe...e38ad9` | ⚠️ Unaudited |
| Flashloan | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x001a05...6e6f3d` | ⚠️ Unaudited |
| FractionalNFTRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | 2 deployments: blast `0x5b72dc...2bb828`; blast `0xdd1642...5fd3bb` | ⚠️ Unaudited |
| FractionalNFTRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | blast | n/a | 2 deployments: blast `0xc5e2aa...cffa3c`; blast `0xdf2fc7...10d984` | ⚠️ Unaudited |
| LendingAddressProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc39961...a30e79` | ⚠️ Unaudited |
| MOG | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaaee1a...c21c7a` | ⚠️ Unaudited |
| MultiProtocolSwapRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x0d28bc...14610f`; base `0x186ef3...044a86` | ⚠️ Unaudited |
| MultiProtocolSwapRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x1a3b8a...2f1dc2`; base `0xc2e9ce...4ed5ac` | ⚠️ Unaudited |
| MultiProtocolSwapRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x560b56...1e8d74`; base `0x6188d4...8f4cef` | ⚠️ Unaudited |
| MultiProtocolSwapRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x696d0d...2045a7`; base `0xb42520...e20c08` | ⚠️ Unaudited |
| MultiReader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xd4e31c...39a018` | ⚠️ Unaudited |
| NFTfiLending | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f4f72...32d1b2` | ⚠️ Unaudited |
| PartnerFeeManager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xcac101...934d33` | ⚠️ Unaudited |
| PartnerFeeManager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0xf0714a...bfe1be` | ⚠️ Unaudited |
| PartnerFeeManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | 3 deployments: ethereum `0xc902f6...566af2`; base `0x25f32b...0bb4a5`; berachain `0x11487a...71575e` | ⚠️ Unaudited |
| PerpManager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xc0b01a...010e7d` | ⚠️ Unaudited |
| PerpManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 10 deployments: ethereum `0x2eb99d...55910b`; ethereum `0x3461ae...56eee2`; ethereum `0x7973cb...a96952`; ethereum `0x7c4783...7c740a`; ethereum `0xba5c58...8d2683`; ethereum `0xba8724...d69375`; ethereum `0xff9f87...4d39dc`; base `0x295d89...273815`; berachain `0xb73daa...cbf220`; blast `0x5c4a1f...1e41a2` | ⚠️ Unaudited |
| PerpManager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0xec3e4e...f7d70e` | ⚠️ Unaudited |
| PerpManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | berachain | n/a | 2 deployments: berachain `0x19c804...c01e08`; berachain `0x1c4a80...048b24` | ⚠️ Unaudited |
| PerpManager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | berachain | n/a | `0x5c285d...b6dd81` | ⚠️ Unaudited |
| PerpManager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | blast | n/a | `0xff2cdb...7cc268` | ⚠️ Unaudited |
| PoolAskVerifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe3f3dc...cce0ac` | ⚠️ Unaudited |
| PoolBidVerifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x668736...933cca` | ⚠️ Unaudited |
| RecoveryStrategy | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | 2 deployments: berachain `0x4b4a53...0833c9`; berachain `0x7ca07d...9ff889` | ⚠️ Unaudited |
| Signing | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd3bb84...6e6094` | ⚠️ Unaudited |
| StakingAccountFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xd44f4d...adffda` | ⚠️ Unaudited |
| SwapRouter02 | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x08292d...74503d` | ⚠️ Unaudited |
| TellerLending | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0xca954b...0982e1`; ethereum `0xee83e5...e8624a`; ethereum `0xeebbc0...a24dc9` | ⚠️ Unaudited |
| TimelockWasabiVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x19fdac...49e250`; ethereum `0x92e561...f56626`; ethereum `0xacc3cb...0be6b9`; ethereum `0xda402f...c9683f`; ethereum `0xe0a709...e14fe0` | ⚠️ Unaudited |
| TimelockWasabiVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x72ecf7...f1255e`; base `0x7df60d...a3e1a2` | ⚠️ Unaudited |
| UniversalSwapRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x18145b...73a442`; base `0x9c9376...1e0312` | ⚠️ Unaudited |
| UniversalSwapRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x2ea6b2...61d7bf`; base `0x63b2f9...bd0036` | ⚠️ Unaudited |
| UniversalSwapRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x4f20b6...7b0978`; base `0xb6544b...9ef813` | ⚠️ Unaudited |
| UniversalSwapRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x534605...31ac04`; base `0xb772e1...bbd772` | ⚠️ Unaudited |
| VaultBoostManager | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | ethereum | n/a | 4 deployments: ethereum `0x028edb...9c4d3c`; ethereum `0x0424c6...7728b3`; ethereum `0xb33c89...1e7524`; ethereum `0xcc174f...e36abb` | ⚠️ Unaudited |
| VaultBoostManager | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x382a45...cbfbd0` | ⚠️ Unaudited |
| VaultBoostManager | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x1de4c8...8e5f4e` | ⚠️ Unaudited |
| WasabiACPAccount | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd78f41...9847d2` | ⚠️ Unaudited |
| WasabiACPAccountFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x0137cf...3f48e8`; base `0x54ca91...1f3e5e` | ⚠️ Unaudited |
| WasabiACPAccountFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x21bc69...eeb6ff`; base `0x5ef03e...064655` | ⚠️ Unaudited |
| WasabiACPAccountFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x5557f3...255109`; base `0x71d035...eaaf0d` | ⚠️ Unaudited |
| WasabiACPAccountFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x6a12e6...33b71c`; base `0xc7f4e7...cbeb9b` | ⚠️ Unaudited |
| WasabiACPAccountFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x710ab5...3d9e74`; base `0xa79c3a...e04552` | ⚠️ Unaudited |
| WasabiACPAccountFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x93ce08...77c487`; base `0xf32992...d1e4f8` | ⚠️ Unaudited |
| WasabiACPAccountFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0xfc8d74...bedcad`; base `0xfce891...fcd05d` | ⚠️ Unaudited |
| WasabiBNPL | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xead3dd...2af12d` | ⚠️ Unaudited |
| WasabiBNPL2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdaf28d...8aeb89` | ⚠️ Unaudited |
| WasabiConduit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x9e31ef...c57209`; ethereum `0xf29a66...fff856` | ⚠️ Unaudited |
| WasabiFeeManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x030107...c10c3a` | ⚠️ Unaudited |
| WasabiFeeManager2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc08c2d...625e34` | ⚠️ Unaudited |
| WasabiLongPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 22 deployments: ethereum `0x000728...fbf1cf`; ethereum `0x023afc...6a6078`; ethereum `0x095c34...5599d3`; ethereum `0x17d163...db5c3d`; ethereum `0x3a2774...e4fd97`; ethereum `0x45a933...aac7cd`; ethereum `0x7041ce...7f3e95`; ethereum `0x7f5451...e6cbc8`; ethereum `0x8d9040...b41b59`; ethereum `0x8e19c0...2ddc04`; ethereum `0x94cf96...b10c51`; ethereum `0x97eea3...ab40f7`; ethereum `0x995c0a...b8518b`; ethereum `0xa5a645...ac7b96`; ethereum `0xab1644...5df9cb`; ethereum `0xc24f58...656b51`; ethereum `0xcda7ce...c8c0ca`; ethereum `0xcf41e5...b075dd`; ethereum `0xd2439d...165ffe`; ethereum `0xd4a321...ae430d`; base `0xffdf46...616543`; berachain `0x1c75bd...64801d` | ⚠️ Unaudited |
| WasabiOption | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfc68f2...2e18a0` | ⚠️ Unaudited |
| WasabiOptionArbitrageV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b5cd3...bbd8f3` | ⚠️ Unaudited |
| WasabiPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e2b50...961e40` | ⚠️ Unaudited |
| WasabiRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 10 deployments: ethereum `0x08aad5...72ae33`; ethereum `0x0b38cb...5f437e`; ethereum `0x1b362e...e046b7`; ethereum `0x33d2ac...77ee9a`; ethereum `0x77abb6...63dbf4`; ethereum `0x96b10b...a63f23`; ethereum `0xe5312d...a564f9`; base `0x892927...9aa03c`; berachain `0x3e1b86...a014d9`; berachain `0x760d9c...b52d64` | ⚠️ Unaudited |
| WasabiRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xee5c45...aac03b` | ⚠️ Unaudited |
| WasabiRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0xfae69f...d8558f` | ⚠️ Unaudited |
| WasabiRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | berachain | n/a | `0x7864d8...a4b237` | ⚠️ Unaudited |
| WasabiShortPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | 24 deployments: ethereum `0x0b9f9e...9ada57`; ethereum `0x1536f7...a3662b`; ethereum `0x1888f9...d46176`; ethereum `0x41247b...f78fad`; ethereum `0x44ba62...96559e`; ethereum `0x5bb9e0...088c60`; ethereum `0x62d254...9bf842`; ethereum `0x76e8f3...279499`; ethereum `0x774835...bf8b32`; ethereum `0x8826d2...3cbc96`; ethereum `0x8ea384...b13277`; ethereum `0x923612...9312f2`; ethereum `0x96ce21...137f78`; ethereum `0xbc07db...69cbbe`; ethereum `0xc905de...b7dca5`; ethereum `0xcb8d3c...e8a2bb`; ethereum `0xcc2a29...e26bee`; ethereum `0xd5a09a...33ae95`; ethereum `0xea9a83...ca647c`; ethereum `0xf22b8d...64aafa`; ethereum `0xfb71f0...490c4a`; ethereum `0xfc55a2...28006b`; base `0x8bdec8...c624a6`; berachain `0x00b6c4...98e7af` | ⚠️ Unaudited |
| WasabiShortPool | core_logic | project_anchor | own_supporting | 1 | berachain | unit-396615 | `0x3ee6c6...0df1ee` | ⚠️ Unaudited |
| WasabiStructs | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f2885...99dcd3` | ⚠️ Unaudited |
| WasabiVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 18 deployments: ethereum `0x0db381...747e12`; ethereum `0x3f631b...5caa8d`; ethereum `0x65aa8f...59991e`; ethereum `0x7d8c76...67ac53`; ethereum `0x7f1cec...d1681a`; ethereum `0x9720f7...a84fa4`; ethereum `0xa6354e...55dadf`; ethereum `0xa9d119...9771d7`; ethereum `0xb6463f...39f113`; ethereum `0xc883de...141c1a`; ethereum `0xcd1953...5f7d53`; ethereum `0xd46c77...563a1d`; ethereum `0xf7855f...ae8153`; base `0x19c804...c01e08`; base `0xac4550...fb3b8a`; base `0xe6ebfb...a3aab8`; base `0xf2e381...ed1786`; berachain `0xec0c23...806ad5` | ⚠️ Unaudited |
| WasabiVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 54 | ethereum | n/a | 54 deployments: ethereum `0x1831f6...a61ae2`; ethereum `0x1becea...22e3db`; ethereum `0x1ca1fc...8a7aba`; ethereum `0x263729...eb8c03`; ethereum `0x2a7693...62d63b`; ethereum `0x2f49de...17d301`; ethereum `0x34f0a8...edf77d`; ethereum `0x364cb3...03a1ed`; ethereum `0x36b9bc...c5759a`; ethereum `0x39eed0...a16ee2`; ethereum `0x491caf...b62669`; ethereum `0x4df48f...44c8e2`; ethereum `0x519db1...c026af`; ethereum `0x5609ef...10d585`; ethereum `0x5bac8a...2a8a64`; ethereum `0x608889...34468e`; ethereum `0x63628b...7a84b8`; ethereum `0x64b021...99c197`; ethereum `0x6a4600...f54bfa`; ethereum `0x6b4192...ce9736`; ethereum `0x6e9e3b...3b076e`; ethereum `0x73ebff...05b8e9`; ethereum `0x75f327...e63d4f`; ethereum `0x79356b...929162`; ethereum `0x7dd8f2...248319`; ethereum `0x800187...9bd34a`; ethereum `0x80f035...93ee9b`; ethereum `0x832038...d07c18`; ethereum `0x8c71ba...e3ee10`; ethereum `0x8e26da...0de32d`; ethereum `0x8e3fdd...ebcf2f`; ethereum `0x94df93...5311a2`; ethereum `0x96c243...de2020`; ethereum `0x9a8604...221cfd`; ethereum `0x9b6eee...2d8bea`; ethereum `0xa2a9d2...3873b9`; ethereum `0xa4d274...a8ebf6`; ethereum `0xa4d853...19f7a7`; ethereum `0xa54151...dd527e`; ethereum `0xad99d6...179c8d`; ethereum `0xb3324d...e56fb7`; ethereum `0xb586b3...62abd8`; ethereum `0xbaaa2a...ec5c7d`; ethereum `0xc7995a...dece5b`; ethereum `0xd4f062...7ef118`; ethereum `0xd7738f...fe2530`; ethereum `0xd8bdfe...80021e`; ethereum `0xdd5c60...fe058e`; ethereum `0xe29e74...8f6f4b`; ethereum `0xe6238f...b21b76`; ethereum `0xe8c96f...513de9`; ethereum `0xed5179...f1895b`; ethereum `0xed6f77...4ab80a`; ethereum `0xf6040c...da07e9` | ⚠️ Unaudited |
| WasabiVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x551618...5b23ca`; ethereum `0xc7d3fa...23652b` | ⚠️ Unaudited |
| WasabiVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 80 | base | n/a | 80 deployments: base `0x00d7c8...990ea1`; base `0x04acd5...0f5d30`; base `0x091a22...862eda`; base `0x0da575...6bb12b`; base `0x0e54d3...8f0939`; base `0x114073...da64dd`; base `0x11a030...8fc212`; base `0x12c9de...f9cf49`; base `0x181dc3...cbeb13`; base `0x197934...181313`; base `0x1e5f25...aa3915`; base `0x215c8d...f584ba`; base `0x228dca...6d192f`; base `0x277c83...ce3ddd`; base `0x2a3c70...f9b442`; base `0x2d638c...c54f16`; base `0x2eef82...52ceaa`; base `0x313409...0b8b2d`; base `0x3733b6...dad959`; base `0x38ba55...0d9865`; base `0x38dc85...384939`; base `0x3b5587...1cd8ce`; base `0x3bc860...7f9792`; base `0x3edc1f...f3863f`; base `0x3f47af...d089af`; base `0x42011d...2e695e`; base `0x4bd3c9...e3765b`; base `0x4e8fb8...eb2a2f`; base `0x4eeaed...df99f6`; base `0x50afcb...874687`; base `0x52c88e...7b2a40`; base `0x542b5d...93b191`; base `0x55dcda...1af8c2`; base `0x5955cf...a8cb60`; base `0x5c9258...9806b0`; base `0x5caa33...6c1c2e`; base `0x5f164b...1922da`; base `0x6378a7...142afd`; base `0x65d8f6...7e94d2`; base `0x6655cf...160f66`; base `0x699cbf...2dba2c`; base `0x70b808...4f979c`; base `0x74b1e4...39780d`; base `0x76106b...364a95`; base `0x7daa6c...880d3b`; base `0x7e7d9a...869c94`; base `0x82ff77...61dfbe`; base `0x837277...ec208c`; base `0x8379dc...285374`; base `0x87b416...ac459e`; base `0x893f93...de2c89`; base `0x8d1f90...601009`; base `0x9a9298...16ea10`; base `0xa10f4d...06070f`; base `0xa34800...464f80`; base `0xa3a575...470fb2`; base `0xa3ae97...c2a188`; base `0xabb566...c3a9d8`; base `0xadac74...b86a98`; base `0xaec98b...bd9dd3`; base `0xb1a597...0bd0c4`; base `0xbcc889...058117`; base `0xbf6668...629cc4`; base `0xc62697...c8970f`; base `0xc84879...1df3e3`; base `0xc857bc...fb4240`; base `0xc8bd38...16b5bb`; base `0xcc3974...cdbcf3`; base `0xcc8d0c...4e6a14`; base `0xcddb2f...58cc8d`; base `0xcfd04f...a8eb6c`; base `0xd7438e...71d1ac`; base `0xd76dcb...1af9a1`; base `0xe33cc6...5372c5`; base `0xe36530...288ca4`; base `0xe8f53b...8a61bb`; base `0xeb55a1...3fd4d0`; base `0xeffe2b...3cea2f`; base `0xf50c66...db1059`; base `0xfb39f4...9cbf8e` | ⚠️ Unaudited |
| WasabiVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x21aaaa...09189e`; base `0x9c4a49...265057` | ⚠️ Unaudited |
| WasabiVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x88e23d...2012a3`; base `0xea3952...50cdab` | ⚠️ Unaudited |
| WasabiVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 3 | berachain | n/a | 3 deployments: berachain `0x0ebddd...be4e9c`; berachain `0x433d1f...e88e82`; berachain `0xa31342...7100d1` | ⚠️ Unaudited |
| WasabiVaultRecoveryV1 | core_logic | non_address_book | non_address_book_inventory (excluded) | 8 | ethereum | n/a | 8 deployments: ethereum `0x10432b...7bfe71`; ethereum `0x127d36...74820a`; ethereum `0x630ed8...d61397`; ethereum `0x7d7bb4...389e8f`; ethereum `0x8d48b8...61e153`; ethereum `0xb533c6...0289f0`; ethereum `0xb86510...ceaba8`; ethereum `0xd2502e...f1c1b4` | ⚠️ Unaudited |
| WasabiVaultRecoveryV1 | core_logic | non_address_book | non_address_book_inventory (excluded) | 8 | base | n/a | 8 deployments: base `0x078b93...ac94fc`; base `0x197d5c...7e4a18`; base `0x1c4a80...048b24`; base `0x833fd9...2766b6`; base `0x95c81f...97fe95`; base `0xb152e9...1ad8c9`; base `0xb8da93...7239a0`; base `0xe6c109...9962a2` | ⚠️ Unaudited |
| WasabiVaultRecoveryV1 | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x42b604...a7a81f` | ⚠️ Unaudited |
| WasabiVaultRecoveryV1 | core_logic | non_address_book | non_address_book_inventory (excluded) | 2 | berachain | n/a | 2 deployments: berachain `0xc95ab9...8afa1b`; berachain `0xd94821...9c40fe` | ⚠️ Unaudited |
| WasabiVaultRecoveryV1 | core_logic | non_address_book | non_address_book_inventory (excluded) | 2 | blast | n/a | 2 deployments: blast `0x4bed2a...f24855`; blast `0x8e2b50...961e40` | ⚠️ Unaudited |
| X2Y2Lending | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x4cd094...bbad5f`; ethereum `0xcf7da6...6f6ee1` | ⚠️ Unaudited |
| ZhartaLending | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x0466b9...6fa09b`; ethereum `0x0d08ea...b2e4d5`; ethereum `0x2cfe1c...dea90b`; ethereum `0x6209a1...009788`; ethereum `0xb06e99...9cf383`; ethereum `0xb2a557...88afaa` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (24)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x082481...1b595f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c4b8c...c83b36` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x60e74e...8cdd96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xabe435...566efb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc0bf0...c7c1f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc2664a...e7734f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x126e13...637a03` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1e39cf...d095c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2a1842...65a408` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x323b88...f568cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3ddf12...c109cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4cccdd...d3e03c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x51abc0...86fb61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6da57c...2027e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x785363...f99af6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7e881d...1f76ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x885296...c3615f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x88c38a...6f4358` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe98f47...5a211e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf60304...d0d1da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x313409...0b8b2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x323b88...f568cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xb1a597...0bd0c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xeaa6b6...01dcf6` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Narya.ai_Wasabi_Smart_Contract_Audit.pdf](https://dkoda-public.s3.amazonaws.com/Narya.ai_Wasabi_Smart_Contract_Audit.pdf) | unknown | Audit | 2023-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Zellic_Wasabi_Smart_Contract_Audit.pdf](https://dkoda-public.s3.amazonaws.com/Zellic_Wasabi_Smart_Contract_Audit.pdf) | Zellic | Audit | 2023-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [0xfoobar_Wasabi_Smart_Contract_Audit.pdf](https://wasabi-public.s3.amazonaws.com/audits/v1/0xfoobar_Wasabi_Smart_Contract_Audit.pdf) | Foobar | Audit | 2023-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 12 | high |
| [WasabiPerps+Security+Assessment-1+(2).pdf](https://wasabi-public.s3.amazonaws.com/audits/v1/WasabiPerps+Security+Assessment-1+(2).pdf) | Foobar | Audit | 2023-12 | stale | Direct | n/a | matched | 1 | 1 | 0 | 4 | n/a |
| [Wasabi+Perps+-+Zellic+Audit+Report.pdf](https://wasabi-public.s3.amazonaws.com/audits/v1/Wasabi+Perps+-+Zellic+Audit+Report.pdf) | Zellic | Audit | 2024-01 | stale | Direct | n/a | matched | 1 | 1 | 0 | 7 | n/a |
| [Wasabi+Perps+-+Zellic+Audit+Report+2.pdf](https://wasabi-public.s3.us-east-1.amazonaws.com/audits/v1/Wasabi+Perps+-+Zellic+Audit+Report+2.pdf) | Zellic | Audit | 2024-10 | aging | Direct | contract_name | matched | 2 | 2 | 0 | 16 | high |
| [Wasabi_Perps_EVM_Audit_Sherlock.pdf](https://wasabi-public.s3.us-east-1.amazonaws.com/audits/v1/Wasabi_Perps_EVM_Audit_Sherlock.pdf) | Sherlock | Contest | 2024-11 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |
| [Wasabi_Perps_Solana_Audit_Sherlock.pdf](https://wasabi-public.s3.us-east-1.amazonaws.com/audits/v1/Wasabi_Perps_Solana_Audit_Sherlock.pdf) | Sherlock | Contest | 2024-11 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 39 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3106] Narya.ai_Wasabi_Smart_Contract_Audit.pdf — no match: Extracted contract names from scope section and findings. Audit date from cover page.
- [3107] Zellic_Wasabi_Smart_Contract_Audit.pdf — no match: Scope section explicitly lists 5 contracts. Audit date from cover page: April 18, 2023.
- [3108] 0xfoobar_Wasabi_Smart_Contract_Audit.pdf — no match: Extracted contract names from findings sections where files are explicitly listed. Audit date from cover page and summary.
- [3109] WasabiPerps+Security+Assessment-1+(2).pdf — matched: No reason recorded
- [3110] Wasabi+Perps+-+Zellic+Audit+Report.pdf — matched: No reason recorded
- [3111] Wasabi+Perps+-+Zellic+Audit+Report+2.pdf — matched: Scope table on page 9 lists 18 contracts. Audit date from cover page: October 2, 2024.
- [3112] Wasabi_Perps_EVM_Audit_Sherlock.pdf — no match: Extracted from audit report text. Scope section mentions repository and commit hash. Contracts identified from findings and code snippets.
- [3113] Wasabi_Perps_Solana_Audit_Sherlock.pdf — no match: Extracted contract names from the audit report's scope description and findings. The report covers the Wasabi Solana program, including instructions and state accounts. The audit date is the end date of the audit period (November 18th - November 28th).

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Narya.ai_Wasabi_Smart_Contract_Audit.pdf | WasabiOption | unmatched — not counted | — | listed in scope and findings | no |
| Narya.ai_Wasabi_Smart_Contract_Audit.pdf | AbstractWasabiPool | unmatched — not counted | — | listed in findings | no |
| Zellic_Wasabi_Smart_Contract_Audit.pdf | AbstractWasabiPool | unmatched — not counted | — | Listed in scope section: Programs • AbstractWasabiPool.sol | no |
| Zellic_Wasabi_Smart_Contract_Audit.pdf | WasabiOption | unmatched — not counted | — | Listed in scope section: Programs • WasabiOption.sol | no |
| Zellic_Wasabi_Smart_Contract_Audit.pdf | WasabiPoolFactory | unmatched — not counted | — | Listed in scope section: Programs • WasabiPoolFactory.sol | no |
| Zellic_Wasabi_Smart_Contract_Audit.pdf | ERC20WasabiPool | unmatched — not counted | — | Listed in scope section: Programs • ERC20WasabiPool.sol | no |
| Zellic_Wasabi_Smart_Contract_Audit.pdf | ETHWasabiPool | unmatched — not counted | — | Listed in scope section: Programs • ETHWasabiPool.sol | no |
| 0xfoobar_Wasabi_Smart_Contract_Audit.pdf | AbstractWasabiPool | unmatched — not counted | — | listed in finding 1 | no |
| 0xfoobar_Wasabi_Smart_Contract_Audit.pdf | WasabiPoolFactory | unmatched — not counted | — | listed in finding 1 | no |
| 0xfoobar_Wasabi_Smart_Contract_Audit.pdf | WasabiConduit | unmatched — not counted | — | listed in finding 1 | no |
| 0xfoobar_Wasabi_Smart_Contract_Audit.pdf | WasabiOptionArbitrage | unmatched — not counted | — | listed in findings 1, 3, 8 | no |
| 0xfoobar_Wasabi_Smart_Contract_Audit.pdf | ERC20WasabiPool | unmatched — not counted | — | listed in finding 1 | no |
| 0xfoobar_Wasabi_Smart_Contract_Audit.pdf | ETHWasabiPool | unmatched — not counted | — | listed in finding 1 | no |
| 0xfoobar_Wasabi_Smart_Contract_Audit.pdf | Signing | unmatched — not counted | — | listed in finding 2 | no |
| 0xfoobar_Wasabi_Smart_Contract_Audit.pdf | WasabiOption | unmatched — not counted | — | listed in findings 4, 6 | no |
| 0xfoobar_Wasabi_Smart_Contract_Audit.pdf | PricingConfigValidator | unmatched — not counted | — | listed in finding 5 | no |
| 0xfoobar_Wasabi_Smart_Contract_Audit.pdf | ConduitSignatureVerifier | unmatched — not counted | — | listed in finding 5 | no |
| 0xfoobar_Wasabi_Smart_Contract_Audit.pdf | PoolAskVerifier | unmatched — not counted | — | listed in findings 5, 7 | no |
| 0xfoobar_Wasabi_Smart_Contract_Audit.pdf | PoolBidVerifier | unmatched — not counted | — | listed in findings 5, 7 | no |
| WasabiPerps+Security+Assessment-1+(2).pdf | BaseWasabiPool | unmatched — not counted | — | — | no |
| WasabiPerps+Security+Assessment-1+(2).pdf | DebtController | unmatched — not counted | — | — | no |
| WasabiPerps+Security+Assessment-1+(2).pdf | WasabiLongPool | unmatched — not counted | — | — | no |
| WasabiPerps+Security+Assessment-1+(2).pdf | WasabiShortPool | own proxy deployment | ERC1967Proxy (proxy) (alternative) `0x3ee6c6...0df1ee` — deployed 2025-03-12 20:22:30+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (selected) `0x0fdc7b...30d8ff` — deployed 2023-12-18 14:29:11+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2023-12-18 was 17d from audit; next candidate 467d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| WasabiPerps+Security+Assessment-1+(2).pdf | pool | unmatched — not counted | — | — | no |
| Wasabi+Perps+-+Zellic+Audit+Report.pdf | AddressProvider | unmatched — not counted | — | — | no |
| Wasabi+Perps+-+Zellic+Audit+Report.pdf | BaseWasabiPool | unmatched — not counted | — | — | no |
| Wasabi+Perps+-+Zellic+Audit+Report.pdf | DebtController | unmatched — not counted | — | — | no |
| Wasabi+Perps+-+Zellic+Audit+Report.pdf | Hash | unmatched — not counted | — | — | no |
| Wasabi+Perps+-+Zellic+Audit+Report.pdf | PerpUtils | unmatched — not counted | — | — | no |
| Wasabi+Perps+-+Zellic+Audit+Report.pdf | WasabiLongPool | unmatched — not counted | — | — | no |
| Wasabi+Perps+-+Zellic+Audit+Report.pdf | WasabiShortPool | own proxy deployment | ERC1967Proxy (proxy) (alternative) `0x3ee6c6...0df1ee` — deployed 2025-03-12 20:22:30+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (selected) `0x0fdc7b...30d8ff` — deployed 2023-12-18 14:29:11+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2023-12-18 was 14d from audit; next candidate 436d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Wasabi+Perps+-+Zellic+Audit+Report.pdf | WasabiVault | unmatched — not counted | — | — | no |
| Wasabi+Perps+-+Zellic+Audit+Report+2.pdf | BaseWasabiPool | unmatched — not counted | — | listed in scope table | no |
| Wasabi+Perps+-+Zellic+Audit+Report+2.pdf | Hash | unmatched — not counted | — | listed in scope table | no |
| Wasabi+Perps+-+Zellic+Audit+Report+2.pdf | PerpUtils | unmatched — not counted | — | listed in scope table | no |
| Wasabi+Perps+-+Zellic+Audit+Report+2.pdf | WasabiLongPool | unmatched — not counted | — | listed in scope table | no |
| Wasabi+Perps+-+Zellic+Audit+Report+2.pdf | WasabiShortPool | ambiguous — not counted | ERC1967Proxy (proxy) (alternative) `0x3ee6c6...0df1ee` — deployed 2025-03-12 20:22:30+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0x0fdc7b...30d8ff` — deployed 2023-12-18 14:29:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Wasabi+Perps+-+Zellic+Audit+Report+2.pdf | AddressProvider | unmatched — not counted | — | listed in scope table | no |
| Wasabi+Perps+-+Zellic+Audit+Report+2.pdf | PerpManager | unmatched — not counted | — | listed in scope table | no |
| Wasabi+Perps+-+Zellic+Audit+Report+2.pdf | Roles | unmatched — not counted | — | listed in scope table | no |
| Wasabi+Perps+-+Zellic+Audit+Report+2.pdf | AbstractBlastContract | unmatched — not counted | — | listed in scope table | no |
| Wasabi+Perps+-+Zellic+Audit+Report+2.pdf | BlastConstants | unmatched — not counted | — | listed in scope table | no |
| Wasabi+Perps+-+Zellic+Audit+Report+2.pdf | BlastLongPool | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x046299...1ed355` — deployed 2024-02-29 07:57:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Wasabi+Perps+-+Zellic+Audit+Report+2.pdf | BlastPerpManager | unmatched — not counted | — | listed in scope table | no |
| Wasabi+Perps+-+Zellic+Audit+Report+2.pdf | BlastShortPool | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x030107...c10c3a` — deployed 2024-02-29 19:34:19+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Wasabi+Perps+-+Zellic+Audit+Report+2.pdf | DebtController | unmatched — not counted | — | listed in scope table | no |
| Wasabi+Perps+-+Zellic+Audit+Report+2.pdf | MultiReader | unmatched — not counted | — | listed in scope table | no |
| Wasabi+Perps+-+Zellic+Audit+Report+2.pdf | BlastVault | unmatched — not counted | — | listed in scope table | no |
| Wasabi+Perps+-+Zellic+Audit+Report+2.pdf | WasabiVault | unmatched — not counted | — | listed in scope table | no |
| Wasabi+Perps+-+Zellic+Audit+Report+2.pdf | WETH | unmatched — not counted | — | listed in scope table | no |
| Wasabi_Perps_EVM_Audit_Sherlock.pdf | WasabiLongPool | unmatched — not counted | — | mentioned in findings M-1, M-4, M-7, L-1, L-2 | no |
| Wasabi_Perps_EVM_Audit_Sherlock.pdf | WasabiShortPool | ambiguous — not counted | ERC1967Proxy (proxy) (alternative) `0x3ee6c6...0df1ee` — deployed 2025-03-12 20:22:30+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0x0fdc7b...30d8ff` — deployed 2023-12-18 14:29:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Wasabi_Perps_EVM_Audit_Sherlock.pdf | WasabiVault | unmatched — not counted | — | mentioned in finding M-1 | no |
| Wasabi_Perps_EVM_Audit_Sherlock.pdf | BaseWasabiPool | unmatched — not counted | — | mentioned in findings L-3, L-4, L-5 | no |
| Wasabi_Perps_EVM_Audit_Sherlock.pdf | WasabiRouter | unmatched — not counted | — | mentioned in findings M-5, M-6 | no |
| Wasabi_Perps_EVM_Audit_Sherlock.pdf | BlastVault | unmatched — not counted | — | mentioned in finding M-2 and L-6 | no |
| Wasabi_Perps_EVM_Audit_Sherlock.pdf | DebtController | unmatched — not counted | — | mentioned in finding L-7 | no |
| Wasabi_Perps_EVM_Audit_Sherlock.pdf | BlastRouter | unmatched — not counted | — | mentioned in finding L-6 | no |
| Wasabi_Perps_EVM_Audit_Sherlock.pdf | AbstractBlastContract | unmatched — not counted | — | mentioned in finding L-6 | no |
| Wasabi_Perps_Solana_Audit_Sherlock.pdf | Permission | unmatched — not counted | — | mentioned in scope and findings | no |
| Wasabi_Perps_Solana_Audit_Sherlock.pdf | Position | unmatched — not counted | — | mentioned in scope and findings | no |
| Wasabi_Perps_Solana_Audit_Sherlock.pdf | TakeProfitOrder | unmatched — not counted | — | mentioned in scope and findings | no |
| Wasabi_Perps_Solana_Audit_Sherlock.pdf | StopLossOrder | unmatched — not counted | — | mentioned in scope and findings | no |
| Wasabi_Perps_Solana_Audit_Sherlock.pdf | DebtController | unmatched — not counted | — | mentioned in scope and findings | no |
| Wasabi_Perps_Solana_Audit_Sherlock.pdf | GlobalSettings | unmatched — not counted | — | mentioned in scope and findings | no |
| Wasabi_Perps_Solana_Audit_Sherlock.pdf | LpVault | unmatched — not counted | — | mentioned in scope and findings | no |
| Wasabi_Perps_Solana_Audit_Sherlock.pdf | Pool | unmatched — not counted | — | mentioned in scope and findings | no |
| Wasabi_Perps_Solana_Audit_Sherlock.pdf | CloseAmounts | unmatched — not counted | — | mentioned in scope and findings | no |
| Wasabi_Perps_Solana_Audit_Sherlock.pdf | ClosePositionRequest | unmatched — not counted | — | mentioned in scope and findings | no |
| Wasabi_Perps_Solana_Audit_Sherlock.pdf | SwapCache | unmatched — not counted | — | mentioned in scope and findings | no |
| Wasabi_Perps_Solana_Audit_Sherlock.pdf | DepositOrWithdraw | unmatched — not counted | — | mentioned in scope and findings | no |
| Wasabi_Perps_Solana_Audit_Sherlock.pdf | InitLpVault | unmatched — not counted | — | mentioned in scope and findings | no |
| Wasabi_Perps_Solana_Audit_Sherlock.pdf | InitLongPool | unmatched — not counted | — | mentioned in scope and findings | no |
| Wasabi_Perps_Solana_Audit_Sherlock.pdf | InitShortPool | unmatched — not counted | — | mentioned in scope and findings | no |
| Wasabi_Perps_Solana_Audit_Sherlock.pdf | InitOrUpdatePermission | unmatched — not counted | — | mentioned in scope and findings | no |
| Wasabi_Perps_Solana_Audit_Sherlock.pdf | CloseStopLossOrder | unmatched — not counted | — | mentioned in scope and findings | no |
| Wasabi_Perps_Solana_Audit_Sherlock.pdf | CloseTakeProfitOrder | unmatched — not counted | — | mentioned in scope and findings | no |
| Wasabi_Perps_Solana_Audit_Sherlock.pdf | OpenShortPositionSetup | unmatched — not counted | — | mentioned in scope and findings | no |
| Wasabi_Perps_Solana_Audit_Sherlock.pdf | OpenShortPositionCleanup | unmatched — not counted | — | mentioned in scope and findings | no |
| Wasabi_Perps_Solana_Audit_Sherlock.pdf | OpenLongPositionSetup | unmatched — not counted | — | mentioned in scope and findings | no |
| Wasabi_Perps_Solana_Audit_Sherlock.pdf | OpenLongPositionCleanup | unmatched — not counted | — | mentioned in scope and findings | no |
| Wasabi_Perps_Solana_Audit_Sherlock.pdf | ClosePositionSetup | unmatched — not counted | — | mentioned in scope and findings | no |
| Wasabi_Perps_Solana_Audit_Sherlock.pdf | ClosePositionCleanup | unmatched — not counted | — | mentioned in scope and findings | no |
| Wasabi_Perps_Solana_Audit_Sherlock.pdf | StopLossCleanup | unmatched — not counted | — | mentioned in scope and findings | no |
| Wasabi_Perps_Solana_Audit_Sherlock.pdf | TakeProfitCleanup | unmatched — not counted | — | mentioned in scope and findings | no |
| Wasabi_Perps_Solana_Audit_Sherlock.pdf | ClaimPosition | unmatched — not counted | — | mentioned in scope and findings | no |
| Wasabi_Perps_Solana_Audit_Sherlock.pdf | LiquidatePositionSetup | unmatched — not counted | — | mentioned in scope and findings | no |
| Wasabi_Perps_Solana_Audit_Sherlock.pdf | LiquidatePositionCleanup | unmatched — not counted | — | mentioned in scope and findings | no |
| Wasabi_Perps_Solana_Audit_Sherlock.pdf | Mint | unmatched — not counted | — | mentioned in scope and findings | no |
| Wasabi_Perps_Solana_Audit_Sherlock.pdf | Deposit | unmatched — not counted | — | mentioned in scope and findings | no |
| Wasabi_Perps_Solana_Audit_Sherlock.pdf | Withdraw | unmatched — not counted | — | mentioned in scope and findings | no |
| Wasabi_Perps_Solana_Audit_Sherlock.pdf | Donate | unmatched — not counted | — | mentioned in scope and findings | no |
| Wasabi_Perps_Solana_Audit_Sherlock.pdf | InitGlobalSettings | unmatched — not counted | — | mentioned in scope and findings | no |
| Wasabi_Perps_Solana_Audit_Sherlock.pdf | InitDebtController | unmatched — not counted | — | mentioned in scope and findings | no |
| Wasabi_Perps_Solana_Audit_Sherlock.pdf | SetMaxApy | unmatched — not counted | — | mentioned in scope and findings | no |
| Wasabi_Perps_Solana_Audit_Sherlock.pdf | SetMaxLeverage | unmatched — not counted | — | mentioned in scope and findings | no |
| Wasabi_Perps_Solana_Audit_Sherlock.pdf | RemovePermission | unmatched — not counted | — | mentioned in scope and findings | no |
| Wasabi_Perps_Solana_Audit_Sherlock.pdf | ClosePermission | unmatched — not counted | — | mentioned in scope and findings | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| berachain | `0x0da575...6bb12b` | BeraLongPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0x3ee6c6...0df1ee` | WasabiShortPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 101 |
| upstream | 7 |
| standard_library | 6 |
| needs_review | 27 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Address-book scope dispositions: 4 own (4 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 2 ambiguous, 92 unmatched
- Matched-own operational status: 4 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=6
- Match method counts: temporal_name=2, unique_name=2

Zero-match audit list:

- [3106] Narya.ai_Wasabi_Smart_Contract_Audit.pdf
- [3107] Zellic_Wasabi_Smart_Contract_Audit.pdf
- [3108] 0xfoobar_Wasabi_Smart_Contract_Audit.pdf
- [3112] Wasabi_Perps_EVM_Audit_Sherlock.pdf
- [3113] Wasabi_Perps_Solana_Audit_Sherlock.pdf

Fork inheritance lineage and inherited audits are included when available.
