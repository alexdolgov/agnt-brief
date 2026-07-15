# Agentic Audit Brief: SpookySwap

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

- Project: SpookySwap (`spookyswap`)
- Website: [https://spooky.fi](https://spooky.fi)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: fantom, sonic
- Contract surface: 136 unique implementations (272 raw deployments)
- Coverage basis: 0/10 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $848,278.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for SpookySwap. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 10 contract row(s) across fantom, sonic. Structural roles: 5 supporting, 4 core, 1 unclassified. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 10
- Structural roles: supporting (5), core (4), unclassified (1)
- Contract kinds: contract (10)
- Detected standards: multicall (3), erc165 (1), erc721 (1), ownable (1)
- Frameworks: openzeppelin (6), uniswap-v3 (5), uniswap-v2 (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 16 contracts are derived from known codebases. 16 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- NonfungiblePositionManager (`0xf807ac...b17fac`, chain 146)
- QuoterV2 (`0x3f2026...388234`, chain 146)
- SpookyLaunchpad (`0xb52c0e...850c31`, chain 146)
- SwapRouter02 (`0x0c2bc0...abdd87`, chain 146)
- TickLens (`0x7b97e8...554449`, chain 146)
- UniswapV2Factory (`0xee4bc4...76f741`, chain 146)
- UniswapV2Router02 (`0xa6ad18...b94883`, chain 146)
- UniswapV3Factory (`0x3d91b7...69c8ad`, chain 146)
- UniswapV3Staker (`0x160f55...217c23`, chain 146)
- UnnamedContract (`0x40f70b...38adf8`, chain 250)
- UnnamedContract (`0x7928a2...e5c3e6`, chain 250)
- UnnamedContract (`0x838c01...04ecb1`, chain 250)
- UnnamedContract (`0x9c04f7...f79e68`, chain 250)
- UnnamedContract (`0xb39d21...33d6c2`, chain 250)
- UnnamedContract (`0xb9507f...504a92`, chain 250)
- UnnamedContract (`0xbaa835...6e554c`, chain 250)

## Contract Surface Quality

- Logic-topography rows: 10; live-surface rows included: 10 (10 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 17/31 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/10 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 17 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 119 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 26
- Confirmed-live implementations: 17 of 136 unique; 119 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/83
- Verified + Unaudited implementations: 83
- Verified by bytecode match: 0
- Unverified implementations: 53
- Unique implementations: 136
- Raw deployments: 272
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-06 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (83)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AccountFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x5b5c7b...53be63`; sonic `0xb74629...a4c395` | ⚠️ Unaudited |
| BooMirrorWorld | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xa95ea1...f5d605` | ⚠️ Unaudited |
| BooOFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x7a0c53...6cb384`; sonic `0xb8fce7...fa4156` | ⚠️ Unaudited |
| BrewBooV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 3 deployments: sonic `0x79710d...c8b179`; sonic `0x84a190...6b09b0`; sonic `0xc3815b...ef00ea` | ⚠️ Unaudited |
| Bridge | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x826c84...171d8e`; sonic `0xf77146...a3e079` | ⚠️ Unaudited |
| Bridge | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x9e70d1...2b56cd`; sonic `0xf06a64...2cd698` | ⚠️ Unaudited |
| BridgeFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x627324...caafe4`; sonic `0x9d4c16...dffb05` | ⚠️ Unaudited |
| CircleTokenAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | `0x391071...79c7e2` | ⚠️ Unaudited |
| CircleTokenAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | `0xba2b70...b0e563` | ⚠️ Unaudited |
| ConfigRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x33e1cc...956b00`; sonic `0xffd7c8...b670f3` | ⚠️ Unaudited |
| ControlFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x0b6014...61d50a`; sonic `0xe6a62c...09259d` | ⚠️ Unaudited |
| Diamond | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x464873...c688f0`; sonic `0x803de3...7a72e3` | ⚠️ Unaudited |
| DiamondInit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x1a521c...8d38b4`; sonic `0x2ecc7d...0838b5` | ⚠️ Unaudited |
| DiamondLoupeFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x01e822...bc6e3b`; sonic `0x6ae148...e32403` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x4c0b5b...9e9ec7`; sonic `0x910afa...d3caa5` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x5f9857...d9f3e8`; sonic `0x65f235...7c3477` | ⚠️ Unaudited |
| FeeSender | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x2bb0bd...748e0b` | ⚠️ Unaudited |
| FiatTokenProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x3fd4ea...1ee783`; sonic `0x7657f0...61fe35` | ⚠️ Unaudited |
| FiatTokenV2_2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x229e64...d92dcc`; sonic `0x29219d...038894` | ⚠️ Unaudited |
| FiatTokenV2_2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x23af48...544c1a`; sonic `0xe715cb...b17e57` | ⚠️ Unaudited |
| FiatTokenV2_2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 4 deployments: sonic `0x35d511...186535`; sonic `0x767628...9a0801`; sonic `0xb070ad...47db87`; sonic `0xde95b3...9e09b3` | ⚠️ Unaudited |
| FundingRateFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x0eb92f...fc2dec`; sonic `0x359ae1...b6ce76` | ⚠️ Unaudited |
| HedgerPartyBV4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x00c069...742421`; sonic `0xdfed11...1ed432` | ⚠️ Unaudited |
| HedgerPartyBV5 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x6b2903...d1576e` | ⚠️ Unaudited |
| HedgerPartyBV6 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x2e7b7f...0de684` | ⚠️ Unaudited |
| HedgerPartyBV7 | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | sonic | n/a | 4 deployments: sonic `0x3844de...59784b`; sonic `0x7d3877...0825d0`; sonic `0x8141c1...999b12`; sonic `0xf25f5a...48ae4c` | ⚠️ Unaudited |
| LeverageFiller | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x053714...83f16a`; sonic `0xfe4a47...b31e7d` | ⚠️ Unaudited |
| LiquidationFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0xc25853...488309`; sonic `0xcf74c4...ba69d9` | ⚠️ Unaudited |
| LongTailIRM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x12f407...10305a` | ⚠️ Unaudited |
| MajorIRM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x18fad5...5505fa` | ⚠️ Unaudited |
| MasterMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 7 deployments: sonic `0x3c05fa...4996ed`; sonic `0x589cfd...94bec7`; sonic `0x7bc1cf...3ba48e`; sonic `0xad9ed0...570393`; sonic `0xafcb4b...2002d0`; sonic `0xbe9f04...63b954`; sonic `0xc787a9...4f8be1` | ⚠️ Unaudited |
| MessageBus | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x63c379...f8c654`; sonic `0xa71610...955006` | ⚠️ Unaudited |
| MintedERC20 | token | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | `0x50c42d...f2634b` | ⚠️ Unaudited |
| MPTProofVerifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x838e5d...5f8c3c`; sonic `0xa13fc0...4da6d0` | ⚠️ Unaudited |
| MultiAccount | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x1ecabf...0592cf`; sonic `0x8a67b0...3fb2ae` | ⚠️ Unaudited |
| MultiAccount | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x4bd822...1310d8`; sonic `0x8a8cf9...d4595c` | ⚠️ Unaudited |
| MultiAccountV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x330043...f09a70`; sonic `0xd90aca...6cdd17` | ⚠️ Unaudited |
| MultiAccountV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0xce932c...3bf2fa`; sonic `0xfca1a8...29acc6` | ⚠️ Unaudited |
| NFTDescriptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xa5ae26...046856` | ⚠️ Unaudited |
| NonfungiblePositionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x839216...db3b55` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | project_anchor | own_supporting | 1 | sonic | unit-256699 | `0xf807ac...b17fac` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x7d0776...53d32d` | ⚠️ Unaudited |
| OracleRouterChainlink | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | `0xfb0497...5a32e8` | ⚠️ Unaudited |
| PartyAFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x0392e9...1d7375`; sonic `0x5e0663...069934` | ⚠️ Unaudited |
| PartyBGroupActionsFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x8768ff...6c7001` | ⚠️ Unaudited |
| PartyBPositionActionsFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0xc4bae6...359fcf`; sonic `0xd6ee1f...f02a5e` | ⚠️ Unaudited |
| PartyBQuoteActionsFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x0188b5...afb8a1`; sonic `0x3adc81...ae6cde` | ⚠️ Unaudited |
| Permit2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x981ef1...162723` | ⚠️ Unaudited |
| PositionsManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x31b57e...749a4b`; sonic `0x31b68b...ef0303` | ⚠️ Unaudited |
| PrizeToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x40dcf9...d267e3`; sonic `0x78d976...d94c69` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 15 deployments: sonic `0x3e09db...5849d3`; sonic `0x3e864a...ace120`; sonic `0x6255ab...8b8909`; sonic `0x6b44c8...09716e`; sonic `0x84da34...f3f191`; sonic `0x87fc46...536eb7`; sonic `0x8f3718...ea5787`; sonic `0x9303e1...75802c`; sonic `0xae16f9...c7f16a`; sonic `0xb6e3b4...8d62db`; sonic `0xccde63...d37f77`; sonic `0xd7a652...8c7133`; sonic `0xdb91d2...604426`; sonic `0xfc3f16...ee4864`; sonic `0xfc4ac3...dc6873` | ⚠️ Unaudited |
| Quoter | unknown | project_anchor | own_supporting | 0 | sonic | unit-256674 | `0x593856...d1aa68` | ⚠️ Unaudited |
| Quoter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x746c97...7f78e1`; sonic `0xddafeb...9c6a47` | ⚠️ Unaudited |
| QuoterV2 | unknown | project_anchor | own_supporting | 0 | sonic | unit-256672 | `0x3f2026...388234` | ⚠️ Unaudited |
| QuoterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x6e70f8...b525bc`; sonic `0xd71a77...b4b6b3` | ⚠️ Unaudited |
| RfqEngine | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x201169...13e95b` | ⚠️ Unaudited |
| SettlementFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x1037b5...c8ead7`; sonic `0x8f0645...b39395` | ⚠️ Unaudited |
| SignatureChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 6 deployments: sonic `0x017980...e6bf1b`; sonic `0x26c060...7d4e81`; sonic `0x5d0311...68f887`; sonic `0x6edf3f...b6d820`; sonic `0xb4a197...2dd7cf`; sonic `0xb90f6a...b502fe` | ⚠️ Unaudited |
| SpookyLaunchpad | unknown | project_anchor | own_supporting | 0 | sonic | unit-256679 | `0xb52c0e...850c31` | ⚠️ Unaudited |
| StableIRM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x4bd77b...edefd5` | ⚠️ Unaudited |
| StateOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x6494ce...66d684`; sonic `0xad9f40...e150b9` | ⚠️ Unaudited |
| Storage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x4fec0c...135d73` | ⚠️ Unaudited |
| SwapRouter02 | adapter | project_anchor | own_supporting | 0 | sonic | unit-256669 | `0x0c2bc0...abdd87` | ⚠️ Unaudited |
| SwapRouter02 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 4 deployments: sonic `0xb75efb...270445`; sonic `0xb8d867...c54d31`; sonic `0xbece4e...6bea4e`; sonic `0xcbdeca...f74362` | ⚠️ Unaudited |
| SymmCoreCaller | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x9fa492...c9d69d`; sonic `0x9fd1fd...0a7c3c` | ⚠️ Unaudited |
| SymmioFeeDistributor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x61662e...28f5f4`; sonic `0x99886d...d95519` | ⚠️ Unaudited |
| SymmioSymbolManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x3cce95...9c2776` | ⚠️ Unaudited |
| TickLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x71d0f7...ac1bac` | ⚠️ Unaudited |
| TickLens | unknown | project_anchor | own_supporting | 0 | sonic | unit-256675 | `0x7b97e8...554449` | ⚠️ Unaudited |
| TicTacToe | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x882171...1dcb47`; sonic `0xaa0944...e02c14` | ⚠️ Unaudited |
| TokenPairs | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x1109f1...5c81db`; sonic `0x36535d...f9cd43` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x3faf5b...5a4876`; sonic `0x62a572...dcd70a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 5 deployments: sonic `0x89c312...11df5e`; sonic `0x960bdc...e3a020`; sonic `0xc1883f...992748`; sonic `0xd89992...4de721`; sonic `0xfb7040...a993f8` | ⚠️ Unaudited |
| UniswapV2Factory | registry | project_anchor | own_supporting | 0 | sonic | unit-256681 | `0xee4bc4...76f741` | ⚠️ Unaudited |
| UniswapV2Router02 | adapter | project_anchor | own_supporting | 0 | sonic | unit-256678 | `0xa6ad18...b94883` | ⚠️ Unaudited |
| UniswapV3Factory | registry | project_anchor | own_supporting | 0 | sonic | unit-256671 | `0x3d91b7...69c8ad` | ⚠️ Unaudited |
| UniswapV3Staker | core_logic | project_anchor | own_supporting | 0 | sonic | unit-256670 | `0x160f55...217c23` | ⚠️ Unaudited |
| UniversalRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x55d10e...4ebef8`; sonic `0x8762fc...3acd97` | ⚠️ Unaudited |
| UpdateManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x5d3850...d3cf2b`; sonic `0xa432cf...20187a` | ⚠️ Unaudited |
| UpdateManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xb63f4e...d5f0d3` | ⚠️ Unaudited |
| V3Migrator | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 3 deployments: sonic `0x865c43...ab92fa`; sonic `0x9e5b69...799f80`; sonic `0xc86bd0...e8c191` | ⚠️ Unaudited |
| ViewFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x1347a8...8cf8d1`; sonic `0x4d8e97...bbec55` | ⚠️ Unaudited |
| WrappedSonic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x039e2f...94ad38` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (53)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0ae71c...26f17c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0df628...47174f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1a2dd1...7a0cc1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1fac89...026f0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x2071a8...637be3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x352866...b4c0e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x3665a6...462a21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x3d9cd8...1938c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x44ca93...864676` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x4a5f9a...148568` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x50e88c...e0d5ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x63ad1a...a31527` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x643c5b...73d55f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x6697ee...e0e324` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x6a8c15...6c599c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x6b0d9f...91a83d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x70d1f6...ad90ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x775525...81f835` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x7779f5...313a11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x78f6a7...7bb2e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x836b8c...c6aa4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x8482eb...2a5f7f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x858657...8ce686` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x86aa8e...6a1084` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x8d47c2...2ab93c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x912060...1335df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x94e848...74904f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x9522ba...d887c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x97bc7d...6f0b0d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x9943af...b4e674` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x9d0d2c...18a910` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xaecac5...3ca4b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xb7d1d2...589533` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xbab4a1...800310` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xc3b668...dc6d31` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xc57afd...56e6ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xc6b9df...8e2403` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xcc96a3...31020e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xe607f5...380f5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xe85df5...7ef797` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xecbd07...26e456` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xf39352...86684e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xf73865...424a9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xfb9114...84079a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xfbbb87...447b28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fantom | n/a | 53 deployments: fantom `0x04068d...5d5b75`; fantom `0x049d68...3a3c7a`; fantom `0x06d173...cafcb7`; fantom `0x0845c0...b6b7df`; fantom `0x08f6fe...33e19b`; fantom `0x157f91...11d9b9`; fantom `0x165672...27059e`; fantom `0x1c9466...982022`; fantom `0x1e4f97...19c68b`; fantom `0x21be37...1a4c83`; fantom `0x29b0da...c0ec69`; fantom `0x2b4c76...7fc75c`; fantom `0x30872e...c09086`; fantom `0x321162...051b11`; fantom `0x3cceb4...8d7b27`; fantom `0x46e762...76c6c5`; fantom `0x56ee92...1e3adc`; fantom `0x5965e5...047410`; fantom `0x5c021d...e375b4`; fantom `0x5dc784...8ee34b`; fantom `0x623ee4...13021d`; fantom `0x627524...b671fd`; fantom `0x657a18...bdcbc6`; fantom `0x6a07a7...3a993b`; fantom `0x6f86e6...456efc`; fantom `0x74b238...58c76d`; fantom `0x753fbc...87dfc9`; fantom `0x82f0b8...6829c1`; fantom `0x841fad...c7effe`; fantom `0x89d9bc...c2fd29`; fantom `0x8d11ec...8abf3e`; fantom `0x91b39d...f2e8cf`; fantom `0x956de1...005820`; fantom `0xa48d95...de7598`; fantom `0xae75a4...4477cc`; fantom `0xb01e84...f7159d`; fantom `0xb3654d...4fbdc8`; fantom `0xb471ac...96c93b`; fantom `0xb77b22...dcb934`; fantom `0xbf4d61...e2eb4c`; fantom `0xd0660c...8157f1`; fantom `0xd6070a...79d960`; fantom `0xd67de0...850454`; fantom `0xddcb3f...b34239`; fantom `0xe120ff...66a428`; fantom `0xebf374...ff2bf6`; fantom `0xec7178...8a7a58`; fantom `0xf07022...5ab577`; fantom `0xf16e81...b87df9`; fantom `0xf3582d...60a5fd`; fantom `0xf84e31...b443c3`; fantom `0xfd0ab5...5c0794`; fantom `0xfdb9ab...2c3ee3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-256686 | `0x40f70b...38adf8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-256688 | `0x7928a2...e5c3e6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-256690 | `0x838c01...04ecb1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-256691 | `0x9c04f7...f79e68` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-256693 | `0xb39d21...33d6c2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-256695 | `0xb9507f...504a92` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-256696 | `0xbaa835...6e554c` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [skynet.certik.com/projects/spookyswap](https://skynet.certik.com/projects/spookyswap) | CertiK | Audit | 2021-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | medium |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3096] skynet.certik.com/projects/spookyswap — no match: Extracted from CertiK Skynet page for SpookySwap; contracts named in audit list but no file paths or addresses provided.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| skynet.certik.com/projects/spookyswap | SpookySwapFarm | unmatched — not counted | — | listed in audit report as 'SpookySwapFarm' | no |
| skynet.certik.com/projects/spookyswap | SpookySwapCore | unmatched — not counted | — | listed in audit report as 'SpookySwapCore' | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| sonic | `0xf807ac...b17fac` | NonfungiblePositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x593856...d1aa68` | Quoter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x3f2026...388234` | QuoterV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0xb52c0e...850c31` | SpookyLaunchpad | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x0c2bc0...abdd87` | SwapRouter02 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x7b97e8...554449` | TickLens | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 73 |
| upstream | 4 |
| standard_library | 4 |
| needs_review | 55 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 2 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: medium=1
- Match method counts: n/a

Zero-match audit list:

- [3096] skynet.certik.com/projects/spookyswap

Fork inheritance lineage and inherited audits are included when available.
