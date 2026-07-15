# Agentic Audit Brief: IntentX

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 2 (0 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: IntentX (`intentx`)
- Website: [https://intentx.io](https://intentx.io)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, blast, mantle
- Contract surface: 149 unique implementations (352 raw deployments)
- Coverage basis: 0/2 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $5,673,214.30
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 2 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for IntentX. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 4 contract row(s) across arbitrum, base, mantle. Structural roles: 2 supporting, 1 core, 1 unclassified. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 4
- Structural roles: supporting (2), core (1), unclassified (1)
- Contract kinds: contract (4)
- Detected standards: erc20 (2), erc20permit (1), ownable (1), pausable (1)
- Frameworks: layerzero (1), openzeppelin (1), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 2 contracts are derived from known codebases. 2 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- IntxOFT (`0x7d2718...4fa342`, chain 8453)
- IntxToken (`0x1cb4b1...e2830c`, chain 5000)

## Contract Surface Quality

- Logic-topography rows: 4; live-surface rows included: 4 (3 live, 1 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 2/3 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/2 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 2 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 146 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 2 standard proxy/library)
- Proxy deployments represented within implementation groups: 85
- Confirmed-live implementations: 2 of 149 unique; 147 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/105
- Verified + Unaudited implementations: 105
- Verified by bytecode match: 0
- Unverified implementations: 44
- Unique implementations: 149
- Raw deployments: 352
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (105)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AccountFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | 8 deployments: mantle `0x0b6014...61d50a`; mantle `0x66df9f...3f6484`; mantle `0x9f8f9d...92c2cb`; mantle `0xa06791...d4760c`; arbitrum `0x356ecc...da19a1`; arbitrum `0x3adc81...ae6cde`; arbitrum `0xbd80e1...85f989`; arbitrum `0xca9056...2030c7` | ⚠️ Unaudited |
| AirdropClaimXINTX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x1d3942...bebd48` | ⚠️ Unaudited |
| BatchSetForceCloseGapRatio | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | 2 deployments: mantle `0x078b56...54b222`; arbitrum `0x7b914c...8af701` | ⚠️ Unaudited |
| BatchSymbolTradingFee | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2e7540...58a306` | ⚠️ Unaudited |
| BridgeFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | 5 deployments: mantle `0x20dd47...541a5a`; mantle `0xaf7c79...2adf59`; arbitrum `0x5485af...7a5660`; arbitrum `0xc9a868...81d52f`; arbitrum `0xdc983b...aef179` | ⚠️ Unaudited |
| CallProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x5640af...c91cb1`; arbitrum `0xb7a912...b3e866` | ⚠️ Unaudited |
| CarbonFeeRebate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x6c81c0...157164`; base `0xcb420c...ad1357` | ⚠️ Unaudited |
| ControlFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | 8 deployments: mantle `0x0e35fa...3f39ac`; mantle `0x16ed71...a40b5c`; mantle `0x4d5be5...fd8be2`; mantle `0x6ae148...e32403`; arbitrum `0x50b127...f4e691`; arbitrum `0x91834f...4c634d`; arbitrum `0xb5076d...c6f33a`; arbitrum `0xecbd07...26e456` | ⚠️ Unaudited |
| Diamond | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x509980...552b58` | ⚠️ Unaudited |
| DiamondCutFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | 3 deployments: mantle `0x464873...c688f0`; arbitrum `0x7143e6...6dc9cb`; arbitrum `0xf39352...86684e` | ⚠️ Unaudited |
| DiamondInit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: mantle `0xb74629...a4c395`; arbitrum `0x663db7...dbcbbc`; arbitrum `0xd6ee1f...f02a5e` | ⚠️ Unaudited |
| DiamondLoupeFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 6 deployments: mantle `0xcf74c4...ba69d9`; mantle `0xd1559b...05fc01`; mantle `0xdea508...4b2eec`; arbitrum `0x45c3e2...552ba9`; arbitrum `0x504423...d56648`; arbitrum `0xa7f7c8...692342` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | base | n/a | `0xb49cae...3362be` | ⚠️ Unaudited |
| FakeStablecoin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5aee30...6de896` | ⚠️ Unaudited |
| ForceActionsFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | 2 deployments: mantle `0x94b346...109a48`; arbitrum `0xe64223...0e1dd3` | ⚠️ Unaudited |
| FundingRateFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | 7 deployments: mantle `0x04abd9...eeb771`; mantle `0x8c466c...3114f2`; mantle `0xf39352...86684e`; arbitrum `0x0fb857...87904e`; arbitrum `0x34ca2e...daf361`; arbitrum `0x5d51e7...12c079`; arbitrum `0xe6a62c...09259d` | ⚠️ Unaudited |
| GnosisSafeProxy | governance | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mantle | unit-242958 | `0xef23f5...afd7a2` | ⚠️ Unaudited |
| ICOClaimXINTX | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | mantle | n/a | 2 deployments: mantle `0x229795...3c2927`; mantle `0xd4e5aa...165c10` | ⚠️ Unaudited |
| IntentXAffiliates | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | mantle | n/a | 2 deployments: mantle `0x6ed953...6c5ff6`; mantle `0x98f632...a158cf` | ⚠️ Unaudited |
| IntentXFeeRebate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | mantle | n/a | 2 deployments: mantle `0x01a97c...6a3ab9`; mantle `0xf5a10b...1964dc` | ⚠️ Unaudited |
| IntentXFeeRebate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x8bb1a5...4f4fd8` | ⚠️ Unaudited |
| IntentXMinigame | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | mantle | n/a | 2 deployments: mantle `0x433be5...9d579d`; mantle `0x55477c...8d627d` | ⚠️ Unaudited |
| IntentXMinigame | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x703c49...aaddb6` | ⚠️ Unaudited |
| IntxOFT | unknown | project_anchor | own_supporting | 0 | base | unit-242959 | `0x7d2718...4fa342` | ⚠️ Unaudited |
| IntxOFTAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x5d55e5...acc3c2` | ⚠️ Unaudited |
| IntxToken | unknown | project_anchor | own_supporting | 1 | mantle | unit-242960 | 2 deployments: mantle `0x1cb4b1...e2830c`; mantle `0x4b7f28...f5a877` | ⚠️ Unaudited |
| LimitedSymbolAdder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 5 deployments: mantle `0x1b86fa...34327b`; mantle `0x598913...6f3348`; arbitrum `0x082611...ccf3a2`; arbitrum `0x75bd49...096f71`; arbitrum `0xeb1462...69c974` | ⚠️ Unaudited |
| LiquidationFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | mantle | n/a | 2 deployments: mantle `0x2ecc7d...0838b5`; mantle `0x50154e...b8b1c6` | ⚠️ Unaudited |
| LiquidationFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | 5 deployments: mantle `0x5e0663...069934`; mantle `0x619805...b7476d`; arbitrum `0xaeca7c...bcaae6`; arbitrum `0xd8b5f4...fe0d57`; arbitrum `0xd9d234...4493d2` | ⚠️ Unaudited |
| LiquidationFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x91cf2d...2dbe43` | ⚠️ Unaudited |
| LiquidationFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x50e88c...e0d5ba`; arbitrum `0x8f0645...b39395` | ⚠️ Unaudited |
| MntRewardsClaimXINTX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xc38342...ffb47d` | ⚠️ Unaudited |
| MultiAccount | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | 11 deployments: mantle `0x188ff4...6c67af`; base `0x219031...9d53e9`; base `0x515d4e...9c6653`; base `0xa78429...2926c7`; base `0xbcf806...b46e84`; base `0xce15dc...9f37b0`; base `0xe33374...4ba7b0`; base `0xee93f2...b7a63b`; arbitrum `0x4cc574...e67765`; arbitrum `0x703c49...aaddb6`; arbitrum `0x8bb1a5...4f4fd8` | ⚠️ Unaudited |
| MultiAccount | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | mantle | n/a | 3 deployments: mantle `0x359ffa...6dd262`; mantle `0xd6ee1f...f02a5e`; mantle `0xfa8a07...2f369e` | ⚠️ Unaudited |
| MultiAccount | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | mantle | n/a | 2 deployments: mantle `0x829af7...ad8373`; mantle `0xecbd07...26e456` | ⚠️ Unaudited |
| MultiAccount | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x39ecc7...e95314`; base `0xc38342...ffb47d` | ⚠️ Unaudited |
| MultiAccount | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x54a870...1bb887`; base `0x921dd8...b53fe1` | ⚠️ Unaudited |
| MultiAccount | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x934152...4f1c53`; base `0xbc0292...b4f379` | ⚠️ Unaudited |
| MultiAccount | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0xb95d17...5be7a2`; base `0xc3ecd8...6f5896` | ⚠️ Unaudited |
| MultiAccount | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x141269...f20109`; arbitrum `0x1cb4b1...e2830c` | ⚠️ Unaudited |
| MultiAccount | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | arbitrum | n/a | 4 deployments: arbitrum `0x152a8e...53e6d6`; arbitrum `0x45850f...c06715`; arbitrum `0x6a3c63...6602d6`; arbitrum `0xc25853...488309` | ⚠️ Unaudited |
| MultiAccount | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x48d0d5...22508b`; arbitrum `0xbc0292...b4f379` | ⚠️ Unaudited |
| MultiAccount | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x627324...caafe4`; arbitrum `0xb057dc...05d99c` | ⚠️ Unaudited |
| MultiCall | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | 5 deployments: mantle `0x2fddfb...75cb57`; mantle `0x679a9c...afc7e0`; arbitrum `0x5ba275...d1d597`; arbitrum `0x8aa3b1...2219dd`; arbitrum `0x94641e...76efe7` | ⚠️ Unaudited |
| MultiCall | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | mantle | n/a | `0xfb515c...b57919` | ⚠️ Unaudited |
| MultiCall | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x1224b4...17cc75`; arbitrum `0x94e313...e187cc` | ⚠️ Unaudited |
| NoxPartyB | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x1d26bc...b0beb5`; base `0x975dab...22c55a`; base `0xd7ed5f...c51329` | ⚠️ Unaudited |
| NoxPartyB | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x324de1...fd330d`; base `0xabf0c8...4ad914` | ⚠️ Unaudited |
| NoxPartyB | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x9f20ba...65bad5`; base `0xdd409c...e0089d` | ⚠️ Unaudited |
| NoxPartyB | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x3c3de3...062855`; arbitrum `0xd600a4...70e574` | ⚠️ Unaudited |
| OnChainSymmioVaultV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x40423e...9cd1ae`; arbitrum `0x68ef30...446ac9` | ⚠️ Unaudited |
| PartyAFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 7 deployments: mantle `0x79d706...f0b06d`; mantle `0x8f00a4...946953`; mantle `0x9d4c16...dffb05`; arbitrum `0x6ea2ef...b628b2`; arbitrum `0x803de3...7a72e3`; arbitrum `0x87a1f9...965168`; arbitrum `0xd6bddf...39aa8d` | ⚠️ Unaudited |
| PartyBFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: mantle `0x4d8e97...bbec55`; mantle `0xa46e5d...d381b4`; arbitrum `0x1a521c...8d38b4`; arbitrum `0xcccda5...4b9ad8` | ⚠️ Unaudited |
| PartyBGroupActionsFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: mantle `0xceb9c2...ea98ea`; arbitrum `0x13cfd2...04a60b`; arbitrum `0xcf78ea...6665a2` | ⚠️ Unaudited |
| PartyBPositionActionsFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: mantle `0x410cd8...3b8991`; mantle `0x68f6a3...d4dd03`; mantle `0xa64012...f911ac`; arbitrum `0x211541...f627eb` | ⚠️ Unaudited |
| PartyBQuoteActionsFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: mantle `0x0734f4...43f3fb`; arbitrum `0x017474...5a3e56`; arbitrum `0x45f0d4...935a04` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 12 deployments: mantle `0x2d2463...453188`; mantle `0x3adc81...ae6cde`; mantle `0x4b9693...d65865`; base `0x48d0d5...22508b`; base `0x55df51...9bee49`; base `0xd0ecc7...5458e7`; base `0xf2b9d5...e77637`; arbitrum `0x0392e9...1d7375`; arbitrum `0x2d2463...453188`; arbitrum `0x433be5...9d579d`; arbitrum `0x9f6d3e...83399e`; arbitrum `0xb5317e...b7d112` | ⚠️ Unaudited |
| RasaOffChainSymmioDepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | mantle | n/a | 2 deployments: mantle `0x578489...f37ea3`; mantle `0xf8c1cb...72b9bb` | ⚠️ Unaudited |
| RasaOffChainSymmioDepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xac0f19...d629da` | ⚠️ Unaudited |
| RasaOnChainSymmioDepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | mantle | n/a | 2 deployments: mantle `0x1f050a...62c320`; mantle `0xb814fd...04f6f0` | ⚠️ Unaudited |
| SettlementFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: mantle `0x5618cd...c657db`; arbitrum `0x185cb4...1e147c`; arbitrum `0x75c539...86e8b4` | ⚠️ Unaudited |
| SignatureStore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | 4 deployments: mantle `0x1c1d04...46a117`; arbitrum `0x94eea5...e403e2`; arbitrum `0xb3b72f...f14fed`; arbitrum `0xebef48...9b5c4d` | ⚠️ Unaudited |
| SnapshotAPI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | 4 deployments: mantle `0x8ed90b...8b0ea1`; mantle `0xa2d796...717cf0`; mantle `0xa3a93a...f699bd`; mantle `0xd3aadc...03b1cf` | ⚠️ Unaudited |
| SolverVault | unknown | non_address_book | non_address_book_inventory (excluded) | 7 | arbitrum | n/a | 8 deployments: arbitrum `0x219031...9d53e9`; arbitrum `0x319f10...324fa6`; arbitrum `0x7d2718...4fa342`; arbitrum `0x8e4226...94587c`; arbitrum `0x98058a...3f59f1`; arbitrum `0xadbb55...009179`; arbitrum `0xb86b96...52d73c`; arbitrum `0xbb62c3...1373d1` | ⚠️ Unaudited |
| StakedINTX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | 4 deployments: mantle `0x0b5b3f...40f5f5`; mantle `0x921dd8...b53fe1`; mantle `0xbc0292...b4f379`; mantle `0xe72284...a94a6a` | ⚠️ Unaudited |
| StakedINTX | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | mantle | n/a | 2 deployments: mantle `0x255472...845362`; mantle `0xf8be57...65e9b6` | ⚠️ Unaudited |
| SymmExecutorUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | mantle | n/a | 3 deployments: mantle `0xb90fce...c267bf`; mantle `0xeb02a6...19db05`; mantle `0xf7b6d0...a12bcf` | ⚠️ Unaudited |
| SymmExecutorUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 5 | base | n/a | 6 deployments: base `0x1c529c...0686a4`; base `0x25d757...983f0a`; base `0x2d36f5...ee5eca`; base `0x3c3de3...062855`; base `0x433be5...9d579d`; base `0xbf41d1...8155d5` | ⚠️ Unaudited |
| SymmExecutorUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | arbitrum | n/a | 3 deployments: arbitrum `0x19e3ef...622dbe`; arbitrum `0xee93f2...b7a63b`; arbitrum `0xf7b6d0...a12bcf` | ⚠️ Unaudited |
| SymmioBridgeHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | 2 deployments: mantle `0x8aa3b1...2219dd`; mantle `0x940546...2375b5` | ⚠️ Unaudited |
| SymmioDepositorLpToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | 2 deployments: mantle `0x074849...b0b182`; mantle `0x14ef4f...56f1e9` | ⚠️ Unaudited |
| SymmioFeeDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | mantle | n/a | 4 deployments: mantle `0x471806...8a1a4a`; mantle `0x488290...b72e85`; mantle `0x8952f2...1aeb3c`; mantle `0xa2c779...b29c19` | ⚠️ Unaudited |
| SymmioFeeDistributor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x127965...1d4f99` | ⚠️ Unaudited |
| SymmioFeeDistributor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x0532c5...e6fb22`; arbitrum `0x8452ed...258538` | ⚠️ Unaudited |
| SymmioFeeDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x196a2b...f0c1c1`; arbitrum `0x940546...2375b5` | ⚠️ Unaudited |
| SymmioFeeDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | arbitrum | n/a | 4 deployments: arbitrum `0x59b00d...4608f4`; arbitrum `0x96af9f...c8f74b`; arbitrum `0xaf2abc...67989a`; arbitrum `0xb71954...086ed8` | ⚠️ Unaudited |
| SymmioFeeDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: mantle `0xc19e66...fb4996`; arbitrum `0x82895a...e5081d` | ⚠️ Unaudited |
| SymmioPartyB | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | mantle | n/a | 2 deployments: mantle `0x504423...d56648`; mantle `0x50e88c...e0d5ba` | ⚠️ Unaudited |
| SymmioPartyB | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | base | n/a | 3 deployments: base `0x1bd0c5...0ed424`; base `0x4a23e0...16404e`; base `0xb3ccac...93499c` | ⚠️ Unaudited |
| SymmioPartyB | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x9206d9...a23c59` | ⚠️ Unaudited |
| SymmioPartyB | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | arbitrum | n/a | 3 deployments: arbitrum `0x0b5b3f...40f5f5`; arbitrum `0x556f25...22ed3a`; arbitrum `0xe72284...a94a6a` | ⚠️ Unaudited |
| SymmioPartyB | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x0eb92f...fc2dec`; arbitrum `0x1347a8...8cf8d1` | ⚠️ Unaudited |
| SymmioSwapHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: arbitrum `0x5618c7...1a3ee2`; arbitrum `0x9c9138...5c308f`; arbitrum `0xd2d78e...f3b62b` | ⚠️ Unaudited |
| SymmioSymbolManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | 10 deployments: mantle `0x1786ac...d6dedd`; mantle `0x4d9a1d...ade1a1`; mantle `0x551c90...7e2b1a`; mantle `0x9ab075...436844`; mantle `0xb4d660...e7aa53`; arbitrum `0x2f374c...5f1a12`; arbitrum `0x5d55d6...32700b`; arbitrum `0x644d05...727738`; arbitrum `0xba45a0...32363c`; arbitrum `0xe07e63...efaa3c` | ⚠️ Unaudited |
| SymmioTimelockController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: mantle `0xa75fba...92ce63`; mantle `0xd02f2c...86ebde`; arbitrum `0x0cbf07...dacd95`; arbitrum `0xffe2c2...daf4af` | ⚠️ Unaudited |
| TestToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x3256de...807b66`; base `0xade616...873fa9` | ⚠️ Unaudited |
| TimelockController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: mantle `0x7aded3...0c04f0`; base `0x319f10...324fa6`; arbitrum `0xe80285...7fe8b7` | ⚠️ Unaudited |
| TradingCompetitionClaim | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | mantle | n/a | 2 deployments: mantle `0x490249...9ed8e2`; mantle `0x839d23...0c2be7` | ⚠️ Unaudited |
| TradingCompetitionClaim | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x50f1cd...4649b8` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | mantle | n/a | 2 deployments: mantle `0x0f5af1...1e83b2`; mantle `0xc7e3f4...1ce20c` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | mantle | n/a | 2 deployments: mantle `0x327945...8e7022`; mantle `0xec9190...e47d22` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | mantle | n/a | 4 deployments: mantle `0x4318fd...19b672`; mantle `0x77263f...477641`; mantle `0xb5317e...b7d112`; mantle `0xfaf5c6...b79aea` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | mantle | n/a | 2 deployments: mantle `0x4fad27...b50d1a`; mantle `0xbea144...a0dfd2` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | mantle | n/a | 3 deployments: mantle `0x6d0be4...d8e7f5`; mantle `0x7495e8...e082e9`; mantle `0x8e9342...18ea82` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | mantle | n/a | 2 deployments: mantle `0x73c9c5...cf7529`; mantle `0xa6e69f...abfa90` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x703c49...aaddb6`; base `0xa6b670...619e56` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x78c985...905091`; base `0xc9f8a5...d8da21` | ⚠️ Unaudited |
| UserPowers | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x99c430...c5c69b` | ⚠️ Unaudited |
| VestingXINTX | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | mantle | n/a | 3 deployments: mantle `0x083e44...f6366f`; mantle `0x0863c4...508146`; mantle `0x805045...1186dc` | ⚠️ Unaudited |
| VestingXINTX | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | mantle | n/a | 3 deployments: mantle `0x1c529c...0686a4`; mantle `0x388e7a...e55d60`; mantle `0xb98b24...4120cc` | ⚠️ Unaudited |
| VestingXINTX | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | mantle | n/a | 2 deployments: mantle `0xb33b67...dea44b`; mantle `0xd012ec...7a5040` | ⚠️ Unaudited |
| VestingXINTXAdv | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | mantle | n/a | 2 deployments: mantle `0x5a2426...e97edf`; mantle `0xef7964...671ef8` | ⚠️ Unaudited |
| ViewFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | 8 deployments: mantle `0x27e3de...6d641b`; mantle `0x359ae1...b6ce76`; mantle `0x7e8b57...dd98d3`; mantle `0x9f6d3e...83399e`; arbitrum `0x48b9a8...2a237a`; arbitrum `0x5b5c7b...53be63`; arbitrum `0x67d3bb...1b9054`; arbitrum `0xcb7c88...227a14` | ⚠️ Unaudited |
| XIntentXTraderIncentives | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | mantle | n/a | 2 deployments: mantle `0x316cee...da653c`; mantle `0xd1eb4a...b1b95f` | ⚠️ Unaudited |
| ZenithSymmioPartyB | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x48e416...4bf21b` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (44)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x01114b...a4fb59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x1221da...550586` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x349993...c4d2b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x3683f0...214a0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x39f64b...dfc024` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x40423e...9cd1ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x41ad9f...e31d60` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x4458a9...72fad5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x458d17...5b3f27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x46c397...563656` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x4951f0...bede3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x4d8835...57273c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x5996d8...f924b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x6d8a38...81362a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x78253f...11b4f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x7d8691...928de0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x93c9bf...edbbb3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x9c4011...2a8ad5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xb86b96...52d73c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xc1680d...7b7b78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xca8e34...0d7bfb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xd008af...adb5d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xd6e116...1452ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x141269...f20109` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2d2463...453188` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdc4a63...5fa725` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe6118a...95767a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf3d7d3...a2477c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x00e158...7a33f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x09f917...da80d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1c6b14...3420ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2a26a2...273284` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4a17c9...d2496c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4cf142...c22185` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x628233...e0a7a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x63dc3c...a892e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x68e300...554cff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8bf928...36d3af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x90d563...392a9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x940ac5...ef77fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9c1d3b...3bdd1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc2a1fc...f045b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe067ab...c423a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf0df46...1c76dd` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [audits.sherlock.xyz/contests/85](https://audits.sherlock.xyz/contests/85) | Sherlock | Contest | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [index.html](https://certificate.quantstamp.com/full/intent-x/a195e62f-30b6-4219-b9e5-42af8a9e2fd5/index.html) | Quantstamp | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2415] audits.sherlock.xyz/contests/85 — no match: The provided text is a header snippet from a contest page, not an audit report. No contract names or audit date could be identified.
- [2416] index.html — no match: The provided text is incomplete and does not contain any contract names or audit details.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | `0x7d2718...4fa342` | IntxOFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0x1cb4b1...e2830c` | IntxToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 90 |
| upstream | 0 |
| standard_library | 10 |
| needs_review | 49 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: low=2
- Match method counts: n/a

Zero-match audit list:

- [2415] audits.sherlock.xyz/contests/85
- [2416] index.html

Fork inheritance lineage and inherited audits are included when available.
