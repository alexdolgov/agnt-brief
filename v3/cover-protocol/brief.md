# Agentic Audit Brief: Cover Protocol

## Export Authority

- Production state: **published scope**
- Raw selected rows: 8 across 7 audit(s)
- Eligible audit results: 11 (7 matched; 4 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Cover Protocol (`cover-protocol`)
- Website: [https://github.com/CoverProtocol/cover-docs](https://github.com/CoverProtocol/cover-docs)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: ethereum
- Contract surface: 188 unique implementations (188 raw deployments)
- Coverage basis: 4/6 confirmed own live verified implementations (66.7%); conservative 66.7% with 0 needs-review implementation(s)
- DeFi Llama TVL: $809,236.69
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Cover Protocol. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 6 contract row(s) across ethereum. Structural roles: 6 core. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 6
- Structural roles: core (6)
- Contract kinds: contract (6)
- Detected standards: ownable (6), erc20 (1), erc20permit (1)
- Frameworks: openzeppelin (6), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 6 contracts are derived from known codebases. 6 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- Blacksmith (`0xe0b94a7bb45dd905c79bb1992c9879f40f1caed5`, chain 1)
- CoverDistributor (`0x2166c76d081610716ab93f02891558b9ba226454`, chain 1)
- CoverFeeReceiver (`0xe0632311772d362f49b5118c40d5251c44bc8b2e`, chain 1)
- CoverForge (`0xa921392015eb37c5977c4fd77e14dd568c59d5f8`, chain 1)
- Protocol (`0xb6886b2c3537673941e4ead63b95eacb47173f6a`, chain 1)
- WETHDistributor (`0x0c134e734b7e1e7955706f9abae7837b00f829a0`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 6; live-surface rows included: 6 (6 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 6/6 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 4/6 (66.7%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 6 own, 6 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 176 discovered implementations shown in the inventory but excluded from coverage (2 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 6 of 188 unique; 182 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 4/156
- Verified + Unaudited implementations: 152
- Verified by bytecode match: 0
- Unverified implementations: 32
- Unique implementations: 188
- Raw deployments: 188
- Audits discovered: 8 (8 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-04 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 7 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 4 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 3 | 1.9% | 2021-02 |
| Arcadia | Tier 2 | 1 | 0.6% | 2020-12 |
| unknown | Tier 2 | 1 | 0.6% | 2020-12 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Blacksmith | unknown | project_anchor | own_supporting | 0 | ethereum | unit-234334 | `0xe0b94a7bb45dd905c79bb1992c9879f40f1caed5` | ✅ Audited |
| CoverFeeReceiver | unknown | project_anchor | own_supporting | 0 | ethereum | unit-234332 | `0xe0632311772d362f49b5118c40d5251c44bc8b2e` | ✅ Audited |
| CoverForge | unknown | project_anchor | own_supporting | 0 | ethereum | unit-234328 | `0xa921392015eb37c5977c4fd77e14dd568c59d5f8` | ✅ Audited |
| Protocol | unknown | project_anchor | own_supporting | 0 | ethereum | unit-234330 | `0xb6886b2c3537673941e4ead63b95eacb47173f6a` | ✅ Audited |

### ⚠️ Verified + Unaudited (152)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Address | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ed97638af0dac459c29b1c650edcfb4b4ea0aab` | ⚠️ Unaudited |
| AHv2Repayment | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x141e0541d87c6cbdbf2a6a8104248b4b922f629e` | ⚠️ Unaudited |
| APROracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ddc33689380e6b56783a5442999b75a5b919361` | ⚠️ Unaudited |
| APRWithPoolOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x044dad5c0da888c93d8244261b67bd431b47ca14` | ⚠️ Unaudited |
| BlackScholesEstimate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b4fd02326db6ebe095e0707e2973c9e045da3dc` | ⚠️ Unaudited |
| BonusRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3423c8af3a95d9fee7ec06c4e0e905d4fd559f89` | ⚠️ Unaudited |
| ClaimManagement | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9946f1c5046ecedc8cee9a76ec14c42ca78463b2` | ⚠️ Unaudited |
| CollateralMaximizer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x494ba8753a253bb314f1e8324c36f804d31b96c1` | ⚠️ Unaudited |
| CompensationEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda7b940be1bce0d6e2eecd96f5cf6ed0504b64c3` | ⚠️ Unaudited |
| COMPfarming | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1532eb6c6d134903a0dedfc840128007b36aa870` | ⚠️ Unaudited |
| Controller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e65565cf7fbb37bac2c0d84e3a54c592e1dc4c8` | ⚠️ Unaudited |
| ConverterDAItoYCRV | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x98158e133f7f56a574fc806e579e1355048039ca` | ⚠️ Unaudited |
| Cover | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1349c51b28772f725e193c21597c0a41a715d504` | ⚠️ Unaudited |
| CoverDistributor | unknown | project_anchor | own_supporting | 0 | ethereum | unit-234326 | `0x2166c76d081610716ab93f02891558b9ba226454` | ⚠️ Unaudited |
| CoverERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7e8b62b2ab8db3f3d085ba3437216fd10b6b4eb5` | ⚠️ Unaudited |
| CoverPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x83085b8cb406cdb4034622198b518bda133032e2` | ⚠️ Unaudited |
| CoverPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1cb3391feff3806a6f7fa11b372cb70659304791` | ⚠️ Unaudited |
| CoverRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x35e1056a8f910a40710a3d106bd4851fcbbc9540` | ⚠️ Unaudited |
| CRON | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e14d03061705eb48fda6bc6e244c5eabe5d322e` | ⚠️ Unaudited |
| DistributeYFI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x812ac0eaeb422efa44eac670aa2246a25ecfa017` | ⚠️ Unaudited |
| DistributionRewardsProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4b1b08313a290adf97d36a6f41f42bb19e368d6d` | ⚠️ Unaudited |
| DSSLeverage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x050cd4835b08babfc6ff92187971b3253e92640e` | ⚠️ Unaudited |
| DYDXERC3156 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6bdc1fcb2f13d1ba9d26ccec3983d5d4bf318693` | ⚠️ Unaudited |
| DynamicSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x035fb9efa7ed40a688044af22282fb19b64b5f60` | ⚠️ Unaudited |
| EminenceCurrency | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ccea6503e8e5525d3de0c60855b6332af559ad4` | ⚠️ Unaudited |
| FairLaunchCapitalVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3a2d0e5773dd6a345eda543b14c6ca6b51c6cc0a` | ⚠️ Unaudited |
| Faketroller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6257e36efc9c7c6057c119ea2af40907159fef3f` | ⚠️ Unaudited |
| fKRW | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5c08b51ddbe8ba76e07be79975906c39aef2893a` | ⚠️ Unaudited |
| fUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d7f0933ac403773d219cf0519de8082946dc10f` | ⚠️ Unaudited |
| GaugeProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x823fd217dcc5ce36ca6bc1489586ecb42b61081c` | ⚠️ Unaudited |
| Governance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc7212fc959bbb606f97036e8ac3da7aabf0cb735` | ⚠️ Unaudited |
| HegicERCPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7224f2e96061a1e3f51d152e32ccfab79ca1345a` | ⚠️ Unaudited |
| HegicOptions | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30a086f5b7a8a6256b0d0e6c9ca4cd3577e4ae70` | ⚠️ Unaudited |
| HegicOptionsFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x06194062288575f35c0af45d5e7013b65e082f23` | ⚠️ Unaudited |
| iCollateral | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x78705df56477ff301b71b176a2bd3151b9f4e025` | ⚠️ Unaudited |
| iCollateralVaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb10e11f3e38dc35e06397689e45fa939eb3b0f69` | ⚠️ Unaudited |
| iCollateralVaultProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x06a8fee7a607c5c887f5f0672f7d8849583ddcc1` | ⚠️ Unaudited |
| iDAI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c5f9d1d115862ca99253e5738590f6d31ca35a0` | ⚠️ Unaudited |
| iDAIZapSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x260fbb4855b2a4a719097131016b573f95a867fa` | ⚠️ Unaudited |
| IEarnAPR | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9cad8ab10daa9af1a9d2b878541f41b697268eec` | ⚠️ Unaudited |
| IEarnAPRWithPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x029feae8d773a3fe25f1a3e35a526bb54744c9bb` | ⚠️ Unaudited |
| IEarnManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x318135fbd0b40d48fcef431ccdf6c7926450edfb` | ⚠️ Unaudited |
| IEarnProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7b3680ad3bc9e84fc06c8a0647b82d2026884bb4` | ⚠️ Unaudited |
| IEther | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x75a4d0b18e98674199829ddd2a6477ea25cd25eb` | ⚠️ Unaudited |
| insuredVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa53e9e63793e55c533fe98d0ed178992942863d9` | ⚠️ Unaudited |
| insurerVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8813d297ffff9ffa67b8fe91ac703caaa457bcf` | ⚠️ Unaudited |
| iTrade | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x14a5ca87175cc04b90cd31b2f13fbf88d9104e3e` | ⚠️ Unaudited |
| Keep3r | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30f3581ef6469334c8752d9b6ca3fb39c72f57f1` | ⚠️ Unaudited |
| Keep3rHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb41772890c8b1564c5015a12c0dc6f18b0af955e` | ⚠️ Unaudited |
| Keep3rJob | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb68e7deb279eaa11f234dff4931458d2c002d10d` | ⚠️ Unaudited |
| Keep3rV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ceb5cb57c4d4e2b2433641b95dd330a33185a44` | ⚠️ Unaudited |
| Keep3rV1Helper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1530a2924805aed2385f8b91849cab7fe95a5df9` | ⚠️ Unaudited |
| Keep3rV1JobRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7396899638410094b3690f8bd2b56f07fdab620c` | ⚠️ Unaudited |
| Keep3rV1Library | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdaef201ba1ba0354d71848893dd6d56905924c93` | ⚠️ Unaudited |
| Keep3rV1Oracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x73353801921417f465377c8d898c6f4c0270282c` | ⚠️ Unaudited |
| Keep3rV1OracleUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a03b4f6d5314bb257540dc7702c326f97f5c080` | ⚠️ Unaudited |
| Keep3rV1Volatility | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x173ed6531818456f29fc74011a3b1fb4b6132dc9` | ⚠️ Unaudited |
| Keep3rV2Helper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1bf16291d2336ac3320f17cad646b56bd5c8f6c0` | ⚠️ Unaudited |
| Keep3rV2OracleFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2266be1ee5d345914976fd4ce9f4be65737880cb` | ⚠️ Unaudited |
| Keep3rV3OracleUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1542ec733b1a938be7d30acf49e7f4a6a5ba0f82` | ⚠️ Unaudited |
| LazyHarvest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9ea775672e4424c403f048ab08c7f56015c5d0f3` | ⚠️ Unaudited |
| LiquidationOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd82f6d42356e225bf79b870a05aac79062a3e8ce` | ⚠️ Unaudited |
| LiquidityIncome | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28832484e8124634a248f2bc520f26e8345a56cd` | ⚠️ Unaudited |
| MetaKeep3r | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x93dfa873b15ad496ba8116ce6cfec52ef30a9372` | ⚠️ Unaudited |
| Migrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfcf3295b3b357e3e0d37ac5ee14823e06ffdfbc6` | ⚠️ Unaudited |
| Minter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x708f456c0d5496e0117ea8c1472cf0cc6782fb7b` | ⚠️ Unaudited |
| MultiTransfer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdba82dca19943eb3a1d3ef7eeffb80a68111e09d` | ⚠️ Unaudited |
| NexusMutualCover | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x93a2880f657793a1d839653c8f8cef52f3de7a28` | ⚠️ Unaudited |
| Normalizer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9214a67186965fd5fe582a64a8646ff058f023aa` | ⚠️ Unaudited |
| OptionsV1Library | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x48bc6de14fc64418da9d0b5befdb404e3e76cdd5` | ⚠️ Unaudited |
| OptionsV1Reserve | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00fbd1774093e9240beb559f7a1300d291d86309` | ⚠️ Unaudited |
| OSMedianizer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf63089a8ad2a9d8bd6bb8022f3190eb7e1ed0f1` | ⚠️ Unaudited |
| PriceProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e94fa3c1e72f48ecbc1f944f393ae8a323be471` | ⚠️ Unaudited |
| ProtocolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x45d619a4804b82c3af4c24ccb460068a8a0d8d6a` | ⚠️ Unaudited |
| ProxyAdmin | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xb69d0523a2f5b8756f27986da4b4543c68822568` | ⚠️ Unaudited |
| RERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c983ba3f165daf6a9950c08750bade647024c20` | ⚠️ Unaudited |
| RewardsAirdropWithLock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0013e17039566da4757edcb565d7d331e362ad12` | ⚠️ Unaudited |
| RiskOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0739311a9725779f109706b48a56763a8ae8fe50` | ⚠️ Unaudited |
| RULER | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2aeccb42482cc64e087b6d2e5da39f5a7a7001f8` | ⚠️ Unaudited |
| RulerAirdrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x62c66d4a9d2aae2f63039c426b927b4605e333d6` | ⚠️ Unaudited |
| RulerCore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2446b411a95630f719ef8c78f195ecdaf3fd5e94` | ⚠️ Unaudited |
| RulerFeeReceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70f342ea72a4c476ef27b04f3bfe56f35db89002` | ⚠️ Unaudited |
| SafetyRedundancy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6bdfea3b1fc7d01bfed72e08fd395fc6d0fb3c40` | ⚠️ Unaudited |
| Signer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10d7cb15642d540a4521a7b2840dab01287081fc` | ⚠️ Unaudited |
| SingleSidedAMM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x82bfdd53dd95efa2c3e92543f28d46c566bf4b8a` | ⚠️ Unaudited |
| SmartWalletChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x173f5f648b18cf1c7f6aac66a35bf462539f3b27` | ⚠️ Unaudited |
| SmartWalletWhitelist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5268ba00308c3e6bd1c4aa1e46d65eb1a4b120a3` | ⚠️ Unaudited |
| StableAMM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0670e207ccc46c18fc38cdb3305c5a0e889eb4cd` | ⚠️ Unaudited |
| StableCreditHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x404f9ecabd4a0d4507c81766e01f76fe52ca0acb` | ⚠️ Unaudited |
| StableCreditProtocol | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x15fe17da18288d1799643be1bb07fb939626f5f9` | ⚠️ Unaudited |
| StableYieldCredit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11980d4bb4465cb4fc77a57b98a16787b3d834e7` | ⚠️ Unaudited |
| StrategyControllerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2be5d998c95de70d9a38b3d78e49751f10f9e88b` | ⚠️ Unaudited |
| StrategyCreamYFI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x40bd98e3cce4f34c087a73dd3d05558733549afb` | ⚠️ Unaudited |
| StrategyDForceDAI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd643cf07344428770b84973e049a1c18b5d47ede` | ⚠️ Unaudited |
| StrategyDForceUSDC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01b354a9fb34760455ee9cbe7d71d2ce5c11ab5c` | ⚠️ Unaudited |
| StrategyDForceUSDT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x787c771035bde631391ced5c083db424a4a64bd8` | ⚠️ Unaudited |
| StrategyMKRVaultDAIDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28e5a47820313da9c74b8f2295795da6e6e083a5` | ⚠️ Unaudited |
| StrategyMStableSavings | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x31641a4836c172640fa1c02999b09c5d1069156f` | ⚠️ Unaudited |
| StrategyMStableSavingsTUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x442510ba285d5390cb5385a91a380d4268e0b81c` | ⚠️ Unaudited |
| StrategyProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16c20cfeda6e9ebfb9e557e76a2dfbe85c597c7a` | ⚠️ Unaudited |
| StrategySNXSUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2288c409e67b6ce52180f97a8cddf7abc24ec989` | ⚠️ Unaudited |
| StrategyVaultTUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x35cee4c61b7619956e0b2015b5411f93cbba817a` | ⚠️ Unaudited |
| StrategyVaultUSDC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25faca21dd2ad7edb3a027d543e617496820d8d6` | ⚠️ Unaudited |
| StrategyYffi | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe197e668d13746bb92e675dea2868ff14da0b73` | ⚠️ Unaudited |
| StrategyYFIGovernance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x395f93350d5102b6139abfc84a7d6ee70488797c` | ⚠️ Unaudited |
| StrategyYfii | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2de055fec2b826ed4a7478ceddbeff82c1edfa70` | ⚠️ Unaudited |
| SupplyFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf2eb916605402e5c7e81f7d609d0e2204841978f` | ⚠️ Unaudited |
| Synthetic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0485a423c0b8ff2f5aa2ec35a32d1c67a2e99b6c` | ⚠️ Unaudited |
| SyntheticRebaseDollar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa90d9cc2f41a150489da5fffba2060a2938ffdc` | ⚠️ Unaudited |
| SynthetixAMM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ed4a410a612f2fe625a8f3cb4d70f197ff8c8be` | ⚠️ Unaudited |
| SynthetixExchange | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0691cf9d171d6c9c3876598b14732248b204c2cf` | ⚠️ Unaudited |
| TendiesFarm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x101dd6f1f5e396f6ab87407df637cce814e24a9f` | ⚠️ Unaudited |
| TimeLoanPairFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2df93404574dff883e2b35911a684dab1760da0d` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1994b59e02cd0d09d839b03660c205e88a929b81` | ⚠️ Unaudited |
| TimelockGovernance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x026d4b8d693f6c446782c2c61ee357ec561dfb61` | ⚠️ Unaudited |
| TreasuryVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x93a62da5a14c80f265dabc077fcee437b1a0efde` | ⚠️ Unaudited |
| UniOracleFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x61da8b0808cea5281a912cd85421a6d12261d136` | ⚠️ Unaudited |
| UpdateBlacksmithPools | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa18bc07ef3e04d263528323164dab9c76132b7f2` | ⚠️ Unaudited |
| Vesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe98567885df519dfeb12c0e268dd5d9b798bd531` | ⚠️ Unaudited |
| VestingVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f59818105abe05ae793a8caedb39fc2bea7f03c` | ⚠️ Unaudited |
| Vyper_contract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5553b9b8cfe6163f89941af22779c747565c5fcc` | ⚠️ Unaudited |
| WETHDistributor | unknown | project_anchor | own_supporting | 0 | ethereum | unit-234324 | `0x0c134e734b7e1e7955706f9abae7837b00f829a0` | ⚠️ Unaudited |
| WrappedYFI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x017e71e96f2ae777c679740d2d8dc15ed4231981` | ⚠️ Unaudited |
| xRULER | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01f7fd324b366380d2145dfa6c7a76fdb75f17b9` | ⚠️ Unaudited |
| xVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0205ae93e18aa23d31e3df53899547b986e419c5` | ⚠️ Unaudited |
| yAffiliateFactoryV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x44ff2af361e4b6a2892523d513df5245fc53b367` | ⚠️ Unaudited |
| yBUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04bc0ab673d88ae9dbc9da2380cb6b79c4bca9ae` | ⚠️ Unaudited |
| yCollateralVaultProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24dd028bd027511482e701d08bae002cd6e82a5d` | ⚠️ Unaudited |
| yCRV | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x170411a2d872945ee8c59e4ef5c3402ebe2a221c` | ⚠️ Unaudited |
| ycUSDC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0597eaf957d896a5751aa35324bf24e1d9bc0f2c` | ⚠️ Unaudited |
| ycUSDT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x631d66f79191c86d7b7a7c0e2afae3ae943931a4` | ⚠️ Unaudited |
| yDAI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16de59092dae5ccf4a1e6439d611fd0653f0bd01` | ⚠️ Unaudited |
| yDAIv2Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x56ab71990783442f68fb25e0b466196c7ca6bd33` | ⚠️ Unaudited |
| yDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x61025859c349dfbe6ef0dfca202ef3e84ca05f83` | ⚠️ Unaudited |
| yDelegatedVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2088ba482f2097eb47896a2ec5f3925637b73d99` | ⚠️ Unaudited |
| YearnLiquidationKeep3r | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x41303e87db5be5b1c7a341440d04ec6a11343eeb` | ⚠️ Unaudited |
| YetiDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x38794ebd0a2ef0feec622be7c1bf8ed9bae3a7e7` | ⚠️ Unaudited |
| YFI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0bc529c00c6401aef6d220be8c6ea1667f6ad93e` | ⚠️ Unaudited |
| yInsure | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x181aea6936b407514ebfc0754a37704eb8d98f91` | ⚠️ Unaudited |
| yInsureView | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d2738fa41e83c5b5633f466f9aa11dae098340b` | ⚠️ Unaudited |
| ySUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x36324b8168f960a12a8fd01406c9c78143d41380` | ⚠️ Unaudited |
| yTokenProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d5ad987b743eb624662fe5c62b8f6015554203a` | ⚠️ Unaudited |
| yTokenRebalance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x19b6424c58afcee6d0cb954d4b8d44b9b5e9cc09` | ⚠️ Unaudited |
| yTUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x73a052500105205d34daf004eab301916da8190f` | ⚠️ Unaudited |
| yUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x12c0681dca0deb095f2f192c3ab64bf320af3aff` | ⚠️ Unaudited |
| yUSDC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x26ea744e5b887e5205727f55dfbe8685e3b21951` | ⚠️ Unaudited |
| yUSDT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3118eec34240620ffd044dfa3aaa0a0f78b9aade` | ⚠️ Unaudited |
| yVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0fcda6f268d0c09cdfffe6bceac5233ac2367889` | ⚠️ Unaudited |
| yVaultCheck | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1bbe0f9af0cf852f9ff14637da2f0bc477a6d1ad` | ⚠️ Unaudited |
| yVaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x044deaa1e5a8593adcead599e8d66fb5d3f677b5` | ⚠️ Unaudited |
| yWBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04aa51bbcb46541455ccf1b8bef2ebc5d3787ec9` | ⚠️ Unaudited |
| yWrappedVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x881b06da56bb5675c54e4ed311c21e54c5025298` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x38b99f86bd64a046afd85605e733c3c31ab74344` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x39946ff7f4a0fe32f5b7cdcfc66c53c3d0360866` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x44da4f0d2fdec7a8f74282c38c26f89ba8cbd0f7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x4688a8b1f292fdab17e9a90c8bc379dc1dbd8713` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4d39ade31d55dfb6b9610fbb356d93a11655e600` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4fe83b8584791bd624ac5029005ea142f3eb0366` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x5b63c3c6b259dfd3966f32514318d91a92dcf175` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b97e660580a14c4180ddfd45d19fe9f839c796b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d8d9f5b96f4438195be9b99eee6118ed4304286` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x617c41b9f7adee1ec0eda14edd7c090b841ae3ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6759d286c4ec4febe35233385fd3eb950de5a030` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8fc8551dd5e2dc5d2b04f2957e543d7d53a79f1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x92bb714fad1017e15de5e4e3120d78505bf00f30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa1d7350588a16f6c3e7389c6c8e606ae53e90ba7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb6a54c66e25ca43c16ec589e8f8f34686436fced` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb7f49a45758dc0cf419f6e1eb330be0b0a879c05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbab0e1799450dbdede4c4532e4e1141933194481` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbfc8b65c359ecf3c5b39bdf10e6cadb2e544597e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xcb0900d9307da7fd4e000a9093f24ce25d937d42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcc3b67f3ac058e376e839567a3b6e9f0d62df74d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd150a5d5ecad43f097d5875707ed20237839e805` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xd18124029b167e03bbaab8d5d6fbb646ae020e1d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xd33f2e0173fd0ae2a64b208a7bd16bcdc68bc862` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd3e42e568520ca2f09bfbd8d2d2312a0e111ce99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd84fdb46420a21df9d4c14f6dd0c5881ca052942` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xddc8171812776898e8f06adfb2970c29e97889bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe303f7081be3530f66de12cdbe2a2e98c0939125` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xedfc81bf63527337cd2193925f9c0cf2d537acca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf19f4490a7fccfef2dab8199acdb2dc1b9027c18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf52b078b3db7e2253a803f09f1a2eee0412c9ac2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfa1f8518d3e6d69a04b88e96a9e3e7588d19ca0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfecb3ffca8bbf243ac669238ec9010b98424bf89` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 32
- Live contracts: 0
- Unknown liveness contracts: 32
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: exact address book overlap=6, unverified unclassified=26

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| exact address book overlap | UnnamedContract<br>`0x4688a8b1f292fdab17e9a90c8bc379dc1dbd8713` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xdd79dc5b781b14ff091686961adc5d47e434f4b0` |
| exact address book overlap | UnnamedContract<br>`0x5b63c3c6b259dfd3966f32514318d91a92dcf175` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xdd79dc5b781b14ff091686961adc5d47e434f4b0` |
| exact address book overlap | UnnamedContract<br>`0xcb0900d9307da7fd4e000a9093f24ce25d937d42` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xdd79dc5b781b14ff091686961adc5d47e434f4b0` |
| exact address book overlap | UnnamedContract<br>`0xd18124029b167e03bbaab8d5d6fbb646ae020e1d` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xdd79dc5b781b14ff091686961adc5d47e434f4b0` |
| exact address book overlap | UnnamedContract<br>`0xd33f2e0173fd0ae2a64b208a7bd16bcdc68bc862` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xdd79dc5b781b14ff091686961adc5d47e434f4b0` |
| exact address book overlap | UnnamedContract<br>`0xedfc81bf63527337cd2193925f9c0cf2d537acca` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xdd79dc5b781b14ff091686961adc5d47e434f4b0` |
| unverified unclassified | UnnamedContract<br>`0x38b99f86bd64a046afd85605e733c3c31ab74344` | non_address_book | unknown | unknown | unverified | n/a | `0xdd79dc5b781b14ff091686961adc5d47e434f4b0` |
| unverified unclassified | UnnamedContract<br>`0x39946ff7f4a0fe32f5b7cdcfc66c53c3d0360866` | non_address_book | unknown | unknown | unverified | n/a | `0xdd79dc5b781b14ff091686961adc5d47e434f4b0` |
| unverified unclassified | UnnamedContract<br>`0x44da4f0d2fdec7a8f74282c38c26f89ba8cbd0f7` | non_address_book | unknown | unknown | unverified | n/a | `0xdd79dc5b781b14ff091686961adc5d47e434f4b0` |
| unverified unclassified | UnnamedContract<br>`0x4d39ade31d55dfb6b9610fbb356d93a11655e600` | non_address_book | unknown | unknown | unverified | n/a | `0xdd79dc5b781b14ff091686961adc5d47e434f4b0` |
| unverified unclassified | UnnamedContract<br>`0x4fe83b8584791bd624ac5029005ea142f3eb0366` | non_address_book | unknown | unknown | unverified | n/a | `0xdd79dc5b781b14ff091686961adc5d47e434f4b0` |
| unverified unclassified | UnnamedContract<br>`0x5b97e660580a14c4180ddfd45d19fe9f839c796b` | non_address_book | unknown | unknown | unverified | n/a | `0xdd79dc5b781b14ff091686961adc5d47e434f4b0` |
| unverified unclassified | UnnamedContract<br>`0x5d8d9f5b96f4438195be9b99eee6118ed4304286` | non_address_book | unknown | unknown | unverified | n/a | `0xdd79dc5b781b14ff091686961adc5d47e434f4b0` |
| unverified unclassified | UnnamedContract<br>`0x617c41b9f7adee1ec0eda14edd7c090b841ae3ae` | non_address_book | unknown | unknown | unverified | n/a | `0xdd79dc5b781b14ff091686961adc5d47e434f4b0` |
| unverified unclassified | UnnamedContract<br>`0x6759d286c4ec4febe35233385fd3eb950de5a030` | non_address_book | unknown | unknown | unverified | n/a | `0xdd79dc5b781b14ff091686961adc5d47e434f4b0` |
| unverified unclassified | UnnamedContract<br>`0x8fc8551dd5e2dc5d2b04f2957e543d7d53a79f1e` | non_address_book | unknown | unknown | unverified | n/a | `0xdd79dc5b781b14ff091686961adc5d47e434f4b0` |
| unverified unclassified | UnnamedContract<br>`0x92bb714fad1017e15de5e4e3120d78505bf00f30` | non_address_book | unknown | unknown | unverified | n/a | `0xdd79dc5b781b14ff091686961adc5d47e434f4b0` |
| unverified unclassified | UnnamedContract<br>`0xa1d7350588a16f6c3e7389c6c8e606ae53e90ba7` | non_address_book | unknown | unknown | unverified | n/a | `0xdd79dc5b781b14ff091686961adc5d47e434f4b0` |
| unverified unclassified | UnnamedContract<br>`0xb6a54c66e25ca43c16ec589e8f8f34686436fced` | non_address_book | unknown | unknown | unverified | n/a | `0xdd79dc5b781b14ff091686961adc5d47e434f4b0` |
| unverified unclassified | UnnamedContract<br>`0xb7f49a45758dc0cf419f6e1eb330be0b0a879c05` | non_address_book | unknown | unknown | unverified | n/a | `0xdd79dc5b781b14ff091686961adc5d47e434f4b0` |
| unverified unclassified | UnnamedContract<br>`0xbab0e1799450dbdede4c4532e4e1141933194481` | non_address_book | unknown | unknown | unverified | n/a | `0xdd79dc5b781b14ff091686961adc5d47e434f4b0` |
| unverified unclassified | UnnamedContract<br>`0xbfc8b65c359ecf3c5b39bdf10e6cadb2e544597e` | non_address_book | unknown | unknown | unverified | n/a | `0xdd79dc5b781b14ff091686961adc5d47e434f4b0` |
| unverified unclassified | UnnamedContract<br>`0xcc3b67f3ac058e376e839567a3b6e9f0d62df74d` | non_address_book | unknown | unknown | unverified | n/a | `0xdd79dc5b781b14ff091686961adc5d47e434f4b0` |
| unverified unclassified | UnnamedContract<br>`0xd150a5d5ecad43f097d5875707ed20237839e805` | non_address_book | unknown | unknown | unverified | n/a | `0xdd79dc5b781b14ff091686961adc5d47e434f4b0` |
| unverified unclassified | UnnamedContract<br>`0xd3e42e568520ca2f09bfbd8d2d2312a0e111ce99` | non_address_book | unknown | unknown | unverified | n/a | `0xdd79dc5b781b14ff091686961adc5d47e434f4b0` |
| unverified unclassified | UnnamedContract<br>`0xd84fdb46420a21df9d4c14f6dd0c5881ca052942` | non_address_book | unknown | unknown | unverified | n/a | `0xdd79dc5b781b14ff091686961adc5d47e434f4b0` |
| unverified unclassified | UnnamedContract<br>`0xddc8171812776898e8f06adfb2970c29e97889bb` | non_address_book | unknown | unknown | unverified | n/a | `0xdd79dc5b781b14ff091686961adc5d47e434f4b0` |
| unverified unclassified | UnnamedContract<br>`0xe303f7081be3530f66de12cdbe2a2e98c0939125` | non_address_book | unknown | unknown | unverified | n/a | `0xdd79dc5b781b14ff091686961adc5d47e434f4b0` |
| unverified unclassified | UnnamedContract<br>`0xf19f4490a7fccfef2dab8199acdb2dc1b9027c18` | non_address_book | unknown | unknown | unverified | n/a | `0xdd79dc5b781b14ff091686961adc5d47e434f4b0` |
| unverified unclassified | UnnamedContract<br>`0xf52b078b3db7e2253a803f09f1a2eee0412c9ac2` | non_address_book | unknown | unknown | unverified | n/a | `0xdd79dc5b781b14ff091686961adc5d47e434f4b0` |
| unverified unclassified | UnnamedContract<br>`0xfa1f8518d3e6d69a04b88e96a9e3e7588d19ca0c` | non_address_book | unknown | unknown | unverified | n/a | `0xdd79dc5b781b14ff091686961adc5d47e434f4b0` |
| unverified unclassified | UnnamedContract<br>`0xfecb3ffca8bbf243ac669238ec9010b98424bf89` | non_address_book | unknown | unknown | unverified | n/a | `0xdd79dc5b781b14ff091686961adc5d47e434f4b0` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Arcadia-Cover-Blacksmith-Audit.pdf](https://github.com/CoverProtocol/cover-security/blob/master/audits/Arcadia-Cover-Blacksmith-Audit.pdf) | Arcadia | Audit | 2020-12 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 4 | high |
| [Cover Protocol - Report - V2 by Quantstamp.pdf](https://github.com/CoverProtocol/cover-security/blob/master/audits/Cover%20Protocol%20-%20Report%20-%20V2%20by%20Quantstamp.pdf) | Quantstamp | Audit | 2021-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 34 | high |
| [Cover Protocol v2 Security Audit Report (merged).pdf](https://github.com/CoverProtocol/cover-security/blob/master/audits/Cover%20Protocol%20v2%20Security%20Audit%20Report%20(merged).pdf) | yAudit | Audit | 2021-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 21 | high |
| [PeckShield-Audit-Report-CoverForge-v1.0rc.pdf](https://github.com/CoverProtocol/cover-security/blob/master/audits/PeckShield-Audit-Report-CoverForge-v1.0rc.pdf) | PeckShield | Audit | 2021-02 | stale | Direct | contract_name | matched | 2 | 0 | 0 | 0 | medium |
| [peckshield-audit-report-cover-v1.0.pdf (also discovered via alternate URL)](https://github.com/CoverProtocol/cover-security/blob/master/audits/peckshield-audit-report-cover-v1.0.pdf) | PeckShield | Audit | 2020-11 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 5 | high |
| [{% embed url="<>" %} (also discovered via alternate URL)](https://github.com/CoverProtocol/cover-token-mining/blob/main/Cover%20Audit.pdf) | unknown | Audit | 2020-12 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 4 | high |
| [Rendered PDF capture](https://389701914-files.gitbook.io/~/files/v0/b/gitbook-legacy-files/o/assets%2F-MN_8lt81m0bkkxuntw8%2F-MQnHkVDxSIblobTr8-Q%2F-MQnHrDVkyt7Hun89WE8%2FCover%20Protocol%20Peripheral%20Smart%20Contract%20Audit.pdf) | MixBytes | Audit | 2021-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 16 | high |
| [- [Smart Contract Audits](): All deployed contracts are audited.](https://cover-protocol.gitbook.io/docs/architecture/smart-contract-audits.md) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [16924] Arcadia-Cover-Blacksmith-Audit.pdf — matched: Scope section lists 5 contracts: BlackSmith.sol, COVER.sol, Migrator.sol, Vesting.sol, MerkleProof.sol. Audit date is December 1st, 2020.
- [16925] Cover Protocol - Report - V2 by Quantstamp.pdf — no match: All contracts listed in file signatures and findings are considered in scope. Audit date from reaudit commit date.
- [16926] Cover Protocol v2 Security Audit Report (merged).pdf — no match: All contracts listed in the FILES LISTING section are in scope.
- [16927] PeckShield-Audit-Report-CoverForge-v1.0rc.pdf — matched: No explicit scope table; contracts identified from findings targets and protocol description.
- [16928] peckshield-audit-report-cover-v1.0.pdf — matched: Extracted contract names from the audit report's scope and findings sections. The report mentions Protocol, Cover, CoverERC20, Ownable, and ClaimManagement as audited contracts. InitializableAdminUpgradeabilityProxy is referenced in code but may be a library. Audit date is from the cover page.
- [16930] {% embed url="<>" %} — matched: Scope section lists 5 contracts: BlackSmith.sol, COVER.sol, Migrator.sol, Vesting.sol, MerkleProof.sol. Audit date is December 1st, 2020 from the cover page.
- [16933] Rendered PDF capture — no match: All contracts listed in the 'FILES LISTING' section are considered in scope. The audit date is the end date of the audit period (2020-12-25 - 2021-01-11).
- [16934] - [Smart Contract Audits](): All deployed contracts are audited. — no match: The provided text is an index page listing audit reports for Cover Protocol, but does not contain the actual audit reports or scope sections. No contract names or dates could be extracted.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Arcadia-Cover-Blacksmith-Audit.pdf | BlackSmith | own contract | Blacksmith (selected) `0xe0b94a7bb45dd905c79bb1992c9879f40f1caed5` — deployed 2020-11-20 02:49:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Arcadia-Cover-Blacksmith-Audit.pdf | COVER | unmatched — not counted | — | listed in scope | no |
| Arcadia-Cover-Blacksmith-Audit.pdf | Migrator | unmatched — not counted | — | listed in scope | no |
| Arcadia-Cover-Blacksmith-Audit.pdf | Vesting | unmatched — not counted | — | listed in scope | no |
| Arcadia-Cover-Blacksmith-Audit.pdf | MerkleProof | unmatched — not counted | — | listed in scope | no |
| Cover Protocol - Report - V2 by Quantstamp.pdf | CoverPool | unmatched — not counted | — | listed in scope and findings | no |
| Cover Protocol - Report - V2 by Quantstamp.pdf | CoverPoolFactory | unmatched — not counted | — | listed in scope and findings | no |
| Cover Protocol - Report - V2 by Quantstamp.pdf | Cover | unmatched — not counted | — | listed in scope and findings | no |
| Cover Protocol - Report - V2 by Quantstamp.pdf | CoverERC20 | unmatched — not counted | — | listed in scope and findings | no |
| Cover Protocol - Report - V2 by Quantstamp.pdf | ClaimConfig | unmatched — not counted | — | listed in scope and findings | no |
| Cover Protocol - Report - V2 by Quantstamp.pdf | ClaimManagement | unmatched — not counted | — | listed in scope and findings | no |
| Cover Protocol - Report - V2 by Quantstamp.pdf | ICoverPool | unmatched — not counted | — | listed in file signatures | no |
| Cover Protocol - Report - V2 by Quantstamp.pdf | ICoverPoolFactory | unmatched — not counted | — | listed in file signatures | no |
| Cover Protocol - Report - V2 by Quantstamp.pdf | ICover | unmatched — not counted | — | listed in file signatures | no |
| Cover Protocol - Report - V2 by Quantstamp.pdf | ICoverERC20 | unmatched — not counted | — | listed in file signatures | no |
| Cover Protocol - Report - V2 by Quantstamp.pdf | IClaimConfig | unmatched — not counted | — | listed in file signatures | no |
| Cover Protocol - Report - V2 by Quantstamp.pdf | IClaimManagement | unmatched — not counted | — | listed in file signatures | no |
| Cover Protocol - Report - V2 by Quantstamp.pdf | ICoverPoolCallee | unmatched — not counted | — | listed in file signatures | no |
| Cover Protocol - Report - V2 by Quantstamp.pdf | ICovTokenProxy | unmatched — not counted | — | listed in file signatures | no |
| Cover Protocol - Report - V2 by Quantstamp.pdf | IOwnable | unmatched — not counted | — | listed in file signatures | no |
| Cover Protocol - Report - V2 by Quantstamp.pdf | ERC20 | unmatched — not counted | — | listed in file signatures | no |
| Cover Protocol - Report - V2 by Quantstamp.pdf | ERC20Permit | unmatched — not counted | — | listed in file signatures | no |
| Cover Protocol - Report - V2 by Quantstamp.pdf | IERC20 | unmatched — not counted | — | listed in file signatures | no |
| Cover Protocol - Report - V2 by Quantstamp.pdf | IERC20Permit | unmatched — not counted | — | listed in file signatures | no |
| Cover Protocol - Report - V2 by Quantstamp.pdf | SafeERC20 | unmatched — not counted | — | listed in file signatures | no |
| Cover Protocol - Report - V2 by Quantstamp.pdf | ECDSA | unmatched — not counted | — | listed in file signatures | no |
| Cover Protocol - Report - V2 by Quantstamp.pdf | EIP712 | unmatched — not counted | — | listed in file signatures | no |
| Cover Protocol - Report - V2 by Quantstamp.pdf | FlashCover | unmatched — not counted | — | listed in file signatures | no |
| Cover Protocol - Report - V2 by Quantstamp.pdf | Initializable | unmatched — not counted | — | listed in file signatures | no |
| Cover Protocol - Report - V2 by Quantstamp.pdf | ReentrancyGuard | unmatched — not counted | — | listed in file signatures | no |
| Cover Protocol - Report - V2 by Quantstamp.pdf | Ownable | unmatched — not counted | — | listed in file signatures | no |
| Cover Protocol - Report - V2 by Quantstamp.pdf | Address | unmatched — not counted | — | listed in file signatures | no |
| Cover Protocol - Report - V2 by Quantstamp.pdf | Create2 | unmatched — not counted | — | listed in file signatures | no |
| Cover Protocol - Report - V2 by Quantstamp.pdf | StringHelper | unmatched — not counted | — | listed in file signatures | no |
| Cover Protocol - Report - V2 by Quantstamp.pdf | BaseUpgradeabilityProxy | unmatched — not counted | — | listed in file signatures | no |
| Cover Protocol - Report - V2 by Quantstamp.pdf | Clones | unmatched — not counted | — | listed in file signatures | no |
| Cover Protocol - Report - V2 by Quantstamp.pdf | BaseAdminUpgradeabilityProxy | unmatched — not counted | — | listed in file signatures | no |
| Cover Protocol - Report - V2 by Quantstamp.pdf | Proxy | unmatched — not counted | — | listed in file signatures | no |
| Cover Protocol - Report - V2 by Quantstamp.pdf | InitializableAdminUpgradeabilityProxy | unmatched — not counted | — | listed in file signatures | no |
| Cover Protocol v2 Security Audit Report (merged).pdf | Cover | unmatched — not counted | — | listed in scope | no |
| Cover Protocol v2 Security Audit Report (merged).pdf | CoverPool | unmatched — not counted | — | listed in scope | no |
| Cover Protocol v2 Security Audit Report (merged).pdf | CoverPoolFactory | unmatched — not counted | — | listed in scope | no |
| Cover Protocol v2 Security Audit Report (merged).pdf | CoverERC20 | unmatched — not counted | — | listed in scope | no |
| Cover Protocol v2 Security Audit Report (merged).pdf | ClaimManagement | unmatched — not counted | — | listed in scope | no |
| Cover Protocol v2 Security Audit Report (merged).pdf | ClaimConfig | unmatched — not counted | — | listed in scope | no |
| Cover Protocol v2 Security Audit Report (merged).pdf | BasicProxyLib | unmatched — not counted | — | listed in scope | no |
| Cover Protocol v2 Security Audit Report (merged).pdf | StringHelper | unmatched — not counted | — | listed in scope | no |
| Cover Protocol v2 Security Audit Report (merged).pdf | EIP712 | unmatched — not counted | — | listed in scope | no |
| Cover Protocol v2 Security Audit Report (merged).pdf | ERC20Permit | unmatched — not counted | — | listed in scope | no |
| Cover Protocol v2 Security Audit Report (merged).pdf | SafeERC20 | unmatched — not counted | — | listed in scope | no |
| Cover Protocol v2 Security Audit Report (merged).pdf | ERC20 | unmatched — not counted | — | listed in scope | no |
| Cover Protocol v2 Security Audit Report (merged).pdf | Ownable | unmatched — not counted | — | listed in scope | no |
| Cover Protocol v2 Security Audit Report (merged).pdf | Address | unmatched — not counted | — | listed in scope | no |
| Cover Protocol v2 Security Audit Report (merged).pdf | ReentrancyGuard | unmatched — not counted | — | listed in scope | no |
| Cover Protocol v2 Security Audit Report (merged).pdf | Initializable | unmatched — not counted | — | listed in scope | no |
| Cover Protocol v2 Security Audit Report (merged).pdf | Create2 | unmatched — not counted | — | listed in scope | no |
| Cover Protocol v2 Security Audit Report (merged).pdf | Proxy | unmatched — not counted | — | listed in scope | no |
| Cover Protocol v2 Security Audit Report (merged).pdf | BaseUpgradeabilityProxy | unmatched — not counted | — | listed in scope | no |
| Cover Protocol v2 Security Audit Report (merged).pdf | BaseAdminUpgradeabilityProxy | unmatched — not counted | — | listed in scope | no |
| Cover Protocol v2 Security Audit Report (merged).pdf | InitializableAdminUpgradeabilityProxy | unmatched — not counted | — | listed in scope | no |
| PeckShield-Audit-Report-CoverForge-v1.0rc.pdf | CoverFeeReceiver | own contract | CoverFeeReceiver (selected) `0xe0632311772d362f49b5118c40d5251c44bc8b2e` — deployed 2021-03-19 02:52:28+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-CoverForge-v1.0rc.pdf | CoverForge | own contract | CoverForge (selected) `0xa921392015eb37c5977c4fd77e14dd568c59d5f8` — deployed 2021-03-19 02:51:48+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| peckshield-audit-report-cover-v1.0.pdf | Protocol | own contract | Protocol (selected) `0xb6886b2c3537673941e4ead63b95eacb47173f6a` — deployed 2020-11-18 00:07:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| peckshield-audit-report-cover-v1.0.pdf | Cover | unmatched — not counted | — | Listed in findings targets (e.g., PVE-001, PVE-004) | no |
| peckshield-audit-report-cover-v1.0.pdf | CoverERC20 | unmatched — not counted | — | Listed in findings target (PVE-005) | no |
| peckshield-audit-report-cover-v1.0.pdf | Ownable | unmatched — not counted | — | Listed in findings target (PVE-006) | no |
| peckshield-audit-report-cover-v1.0.pdf | InitializableAdminUpgradeabilityProxy | unmatched — not counted | — | Referenced in Protocol.sol code snippet (line 156) | no |
| peckshield-audit-report-cover-v1.0.pdf | ClaimManagement | unmatched — not counted | — | Referenced in finding PVE-007 as the contract that files/decides claims | no |
| {% embed url="<>" %} | BlackSmith | own contract | Blacksmith (selected) `0xe0b94a7bb45dd905c79bb1992c9879f40f1caed5` — deployed 2020-11-20 02:49:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| {% embed url="<>" %} | COVER | unmatched — not counted | — | listed in scope | no |
| {% embed url="<>" %} | Migrator | unmatched — not counted | — | listed in scope | no |
| {% embed url="<>" %} | Vesting | unmatched — not counted | — | listed in scope | no |
| {% embed url="<>" %} | MerkleProof | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | CoverRouter | unmatched — not counted | — | listed in files listing and findings | no |
| Rendered PDF capture | Rollover | unmatched — not counted | — | listed in files listing and findings | no |
| Rendered PDF capture | Address | unmatched — not counted | — | listed in files listing | no |
| Rendered PDF capture | Ownable | unmatched — not counted | — | listed in files listing | no |
| Rendered PDF capture | ReentrancyGuard | unmatched — not counted | — | listed in files listing | no |
| Rendered PDF capture | SafeERC20 | unmatched — not counted | — | listed in files listing | no |
| Rendered PDF capture | SafeMath | unmatched — not counted | — | listed in files listing | no |
| Rendered PDF capture | IBFactory | unmatched — not counted | — | listed in files listing | no |
| Rendered PDF capture | IBlacksmith | unmatched — not counted | — | listed in files listing | no |
| Rendered PDF capture | IBPool | unmatched — not counted | — | listed in files listing | no |
| Rendered PDF capture | ICover | unmatched — not counted | — | listed in files listing | no |
| Rendered PDF capture | ICoverERC20 | unmatched — not counted | — | listed in files listing | no |
| Rendered PDF capture | ICoverRouter | unmatched — not counted | — | listed in files listing | no |
| Rendered PDF capture | IERC20 | unmatched — not counted | — | listed in files listing | no |
| Rendered PDF capture | IProtocol | unmatched — not counted | — | listed in files listing | no |
| Rendered PDF capture | IRollover | unmatched — not counted | — | listed in files listing | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x2166c76d081610716ab93f02891558b9ba226454` | CoverDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0c134e734b7e1e7955706f9abae7837b00f829a0` | WETHDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 154 |
| upstream | 1 |
| standard_library | 1 |
| needs_review | 32 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Address-book scope dispositions: 5 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 84 unmatched
- Matched-own operational status: 5 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=6, low=1, medium=1
- Match method counts: unique_name=8

Zero-match audit list:

- [16925] Cover Protocol - Report - V2 by Quantstamp.pdf
- [16926] Cover Protocol v2 Security Audit Report (merged).pdf
- [16933] Rendered PDF capture
- [16934] - [Smart Contract Audits](): All deployed contracts are audited.

Fork inheritance lineage and inherited audits are included when available.
