# Agentic Audit Brief: Sushi

## Export Authority

- Production state: **published scope**
- Raw selected rows: 1 across 1 audit(s)
- Eligible audit results: 1 (1 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Sushi (`sushi`)
- Website: [https://sushi.com/](https://sushi.com/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, arbitrum-nova, avalanche, base, blast, boba, bsc, celo, ethereum, fantom, gnosis, harmony, heco, kava, linea, mantle, metis, moonbeam, moonriver, optimism, polygon, polygon-zkevm, scroll, sonic
- Contract surface: 471 unique implementations (738 raw deployments)
- Coverage basis: 1/1 confirmed own live verified implementations (100.0%); conservative 100.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $84,599,022.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Sushi. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across arbitrum, arbitrum-nova, avalanche, base, blast, bsc, ethereum, fantom, gnosis, harmony, heco, kava, linea, mantle, metis, moonriver, optimism, polygon, polygon-zkevm, scroll, sonic. Structural roles: 1 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: supporting (1)
- Contract kinds: contract (1)
- Detected standards: erc20 (1)
- Frameworks: openzeppelin (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 30 contracts are derived from known codebases. 30 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x12bb166f997146d3d33645146eedbc4a923195d7`, chain 1)
- UnnamedContract (`0x44d097113dbead613fde74b387081fb3b547c54f`, chain 1)
- UnnamedContract (`0x51b0efa27ff4f29f8315496f01952377d581ce73`, chain 1)
- UnnamedContract (`0x53954a6191ad795e331cffdb1b035d389f2ac516`, chain 1)
- UnnamedContract (`0x655edce464cc797526600a462a8154650eee4b77`, chain 1)
- UnnamedContract (`0x6e3fb8a019e78785e80cea1d413bc3ab650c2449`, chain 1)
- UnnamedContract (`0x84f4625c3e92b368e403cb002a9bf9bc7a9ae1b9`, chain 1)
- UnnamedContract (`0xcc12532e95c2a6a4c53af153b9b739a3cc9218a7`, chain 1)
- UnnamedContract (`0xd0454428ecd868a9ac615125fcbdb5da9027436e`, chain 1)
- UnnamedContract (`0xe7b0ce0526fbe3969035a145c9e9691d4d9d216c`, chain 1)
- UnnamedContract (`0x5130f6ce257b8f9bf7fac0a0b519bd588120ed40`, chain 10)
- UnnamedContract (`0x55f7c152b0c3cc1cd7479e4858ac07f50d7fcfad`, chain 10)
- UnnamedContract (`0xac2b3f9a13e7273639bcdca55742391cdacc74cb`, chain 10)
- UnnamedContract (`0xdbd4ffc32b34f630dd8ac18d37162ec8462db7db`, chain 10)
- UnnamedContract (`0xf33141bc4e9d1d92a2adba2fa27a09c2da2af3eb`, chain 10)
- UnnamedContract (`0x4715ccd2e0284cedf7d5cc6b40420432ebc9e561`, chain 137)
- UnnamedContract (`0x6811079e3c63ed96eb005384d7e7ec8810e3d521`, chain 137)
- UnnamedContract (`0x6bfce69d1df30fd2b2c8e478edec9daa643ae3b8`, chain 137)
- UnnamedContract (`0xd01e3549160c62acabc4d0eb89f67aafa3de8eed`, chain 137)
- UnnamedContract (`0xf33141bc4e9d1d92a2adba2fa27a09c2da2af3eb`, chain 137)
- UnnamedContract (`0x769728b5298445ba2828c0f3f5384227fbf590c5`, chain 5000)
- UnnamedContract (`0x41c5362adf3a2cf6815454f7633172e7f6c1f834`, chain 8453)
- UnnamedContract (`0xb32d856cad3d2ef07c94867a800035e37241247c`, chain 8453)
- UnnamedContract (`0x4c16dd6e9b402ea4fb5be647be2f49e3d59bb08a`, chain 42161)
- UnnamedContract (`0x769728b5298445ba2828c0f3f5384227fbf590c5`, chain 42161)
- UnnamedContract (`0x93a5943e3091e94aa16f0813bb6901c3e9d4eb98`, chain 42161)
- UnnamedContract (`0x9e233dd6a90678baacd89c05ce5c48f43fcc106e`, chain 42161)
- UnnamedContract (`0xb873921b1add94ea47bf983b060ce812e97873df`, chain 42161)
- UnnamedContract (`0xe7b0ce0526fbe3969035a145c9e9691d4d9d216c`, chain 42161)
- SushiBar (`0x8798249c2e607446efb7ad49ec89dd1865ff4272`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 1; live-surface rows included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 30/33 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/1 (100.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 30 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 441 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 9
- Confirmed-live implementations: 30 of 471 unique; 441 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/81
- Verified + Unaudited implementations: 80
- Verified by bytecode match: 0
- Unverified implementations: 390
- Unique implementations: 471
- Raw deployments: 738
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2020-09 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 1 | 1.2% | 2020-09 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| SushiBar | unknown | project_anchor | own_supporting | 0 | ethereum | unit-257535 | `0x8798249c2e607446efb7ad49ec89dd1865ff4272` | ✅ Audited |

### ⚠️ Verified + Unaudited (80)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AnyswapV5ERC20 | token | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: arbitrum `0xfea7a6a0b346362bf88a9e4a88416b77a57d6c2a`; avalanche `0x130966628846bfd36ff31a822705796e8cb8c18d` | ⚠️ Unaudited |
| AuctionCreation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x7603a35af5cf10b113f167d424eb75bb7062c8ce`; polygon `0xc040f84cf7046409f92d578ef9040fe45e6ef4be` | ⚠️ Unaudited |
| BatchAuction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x258f7e97149afd7d7f84fa63b10e4a3f0c38b788`; polygon `0x7af71799c40f952237eaa4d81a77c1af49125113`; arbitrum `0x7603a35af5cf10b113f167d424eb75bb7062c8ce` | ⚠️ Unaudited |
| BentoBox | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc35dadb65012ec5796536bd9864ed8773abc74c4` | ⚠️ Unaudited |
| BentoBoxV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xf5bce5077908a1b7370b9ae04adc565ebd643966` | ⚠️ Unaudited |
| BentoBoxV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 8 deployments: bsc `0xf5bce5077908a1b7370b9ae04adc565ebd643966`; gnosis `0xe2d7f5dd869fc7c126d21b13a9080e75a4bdb324`; gnosis `0xed1a5b476ff3618e68dc0827fe33116317e30859`; polygon `0x0319000133d3ada02600f0875d2cf03d442c3367`; metis `0xc35dadb65012ec5796536bd9864ed8773abc74c4`; moonriver `0x145d82bca93cca2ae057d1c6f26245d1b9522e6f`; arbitrum `0x74c764d41b77dbbb4fe771dab1939b00b146894a`; avalanche `0x0711b6026068f736bae6b213031fce978d48e026` | ⚠️ Unaudited |
| BoringHelperV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x11ca5375adafd6205e41131a4409f182677996e6`; bsc `0x11ca5375adafd6205e41131a4409f182677996e6`; polygon `0x2dd1ab1956bed7c2d938d0d7378c22fd01135a5e`; polygon `0xb23804ccc524d408d0b0d35b0aa1ce7de172f821`; arbitrum `0x37b3287292de241278fb5fca514a756e0be924f8`; avalanche `0xd18ca07a599bf5ebb9b7327871ad682f0b660748` | ⚠️ Unaudited |
| ChainlinkOracleV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8f2cc3376078568a04ebc600ae5f0a036dbfd812` | ⚠️ Unaudited |
| ChainlinkOracleV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x43198b6fa5d89b88d2e072fa4841724571de5a59` | ⚠️ Unaudited |
| ComplexRewarderTime | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 3 deployments: gnosis `0x4864984234195a1a97fba52038e3ad61a1dd16e4`; gnosis `0x84562ce1a5f3a4a957a5a94ed0be05ba73fd2665`; polygon `0xa3378ca78633b3b9b2255eaa26748770211163ae` | ⚠️ Unaudited |
| ConstantProductPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 10 deployments: optimism `0x0769fd68dfb93167989c6f7254cd0d766fb2841f`; optimism `0x93395129bd3fcf49d95730d3c2737c17990ff328`; polygon `0x05689fcfee31fce4a67fbc7cab13e74f80a4e288`; polygon `0x1be211d8da40bc0ae8719c6663307bfc987b1d6c`; polygon `0x28890e3c0aa9b4b48b1a716f46c9abc9b12abfab`; polygon `0x7603a35af5cf10b113f167d424eb75bb7062c8ce`; polygon `0xefacaff817572913738ffc530e83e56cccf78953`; metis `0x0769fd68dfb93167989c6f7254cd0d766fb2841f`; arbitrum `0xc79ae87e9f55761c08e346b98dddf070c9872787`; avalanche `0xb84a043bc4fca97b7a74ed7daab1bf12a8df929f` | ⚠️ Unaudited |
| ConstantProductPoolFactoryHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 6 deployments: optimism `0xf4d73326c13a4fc5fd7a064217e12780e9bd62c3`; polygon `0x1c5771e96c9d5524fb6e606f5b356d08c40eb194`; polygon `0x9b3ff703fa9c8b467f5886d7b61e61ba07a9b51c`; polygon `0xdcd6a4b673b1c409e4b67f787935865b161232d3`; metis `0xf4d73326c13a4fc5fd7a064217e12780e9bd62c3`; arbitrum `0x827179dd56d07a7eea32e3873493835da2866976` | ⚠️ Unaudited |
| Crowdsale | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: ethereum `0xf60e5f4a44a510742457d8064ffd360b12d8d9af`; polygon `0xf70c086618dcf2b1a461311275e00d6b722ef914`; arbitrum `0x120140d0c1ebc938befc84840575ecdc5fe55afe`; avalanche `0x8dacffa7f69ce572992132697252e16254225d38` | ⚠️ Unaudited |
| DegenBox | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd96f48665a1410c0cd669a88898eca36b9fc2cce` | ⚠️ Unaudited |
| DutchAuction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 3 deployments: ethereum `0x1c5771e96c9d5524fb6e606f5b356d08c40eb194`; polygon `0x10c19390e1ac2fd6d0c3643a2320b0aba38e5baa`; arbitrum `0x438a2b1c6c715fb1b051c04ca65755560d8b8d43` | ⚠️ Unaudited |
| FeeOnTransferDetector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x91934e488809be1d03646c035f45c8d8947d9885` | ⚠️ Unaudited |
| FixedToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 3 deployments: ethereum `0x80c7dd17b01855a6d2347444a0fcc36136a314de`; polygon `0x2f255d3f3c0a3726c6c99e74566c4b18e36e3ce6`; arbitrum `0xcaabdd9cf4b61813d4a52f980d6bc1b713fe66f5` | ⚠️ Unaudited |
| GasEstimator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x630be2985674d31920babb4f96657960f131e7b1` | ⚠️ Unaudited |
| HyperbolicAuction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x8dacffa7f69ce572992132697252e16254225d38`; polygon `0xd75f5369724b513b497101fb15211160c1d96550` | ⚠️ Unaudited |
| InchSpellSwapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdfe1a5b757523ca6f7f049ac02151808e6a52111` | ⚠️ Unaudited |
| KashiPairMediumRiskV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 6 deployments: ethereum `0x74a81cb5b6996d9347b864b9a1492a6509e51e65`; bsc `0x74a81cb5b6996d9347b864b9a1492a6509e51e65`; gnosis `0x7a6da9903d0a481f40b8336c1463487bc8c0407e`; polygon `0xb527c5295c4bc348cbb3a2e96b2494fd292075a7`; arbitrum `0xa010ee0226cd071bebd8919a1f675cae1f1f5d3e`; avalanche `0x513037395fa0c9c35e41f89189cedfe3bd42fadb` | ⚠️ Unaudited |
| ListFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x2f686751b19a9d91cc3d57d90150bc767f050066`; polygon `0xa4c0363edd74f55ac8f316a3bf447f8aa09607d3` | ⚠️ Unaudited |
| MagicInternetMoneyV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x99d8a9c45b2eca8864373a26d1459e3dff1e17f3` | ⚠️ Unaudited |
| MasterDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 12 deployments: optimism `0x1b02da8cb0d097eb8d57a175b88c7d8b47997506`; optimism `0xcaabdd9cf4b61813d4a52f980d6bc1b713fe66f5`; polygon `0x0be808376ecb75a5cf9bb6d237d16cd37893d904`; polygon `0x145d82bca93cca2ae057d1c6f26245d1b9522e6f`; polygon `0x2f28678432edf5243955054cc04a32b18ca63c97`; polygon `0x351447fc9bd20a917783e159e61e86edda0b0187`; polygon `0x752dc00aba9c930c84ac81d288db5e2a02afe633`; polygon `0xdb0d6ec83c68191f8c33c9f71fe85615c40c1ef7`; polygon `0xf4d73326c13a4fc5fd7a064217e12780e9bd62c3`; polygon `0xf78031cbca409f2fb6876bdfdbc1b2df24cf9bef`; metis `0x1b02da8cb0d097eb8d57a175b88c7d8b47997506`; arbitrum `0xf0e1f962e3e6d8e2af8190b2798c1b4f018fe48d` | ⚠️ Unaudited |
| MiniChefV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 3 deployments: gnosis `0xddcbf776df3de60163066a5dddf2277cb445e0f3`; polygon `0x0769fd68dfb93167989c6f7254cd0d766fb2841f`; arbitrum `0xf4d73326c13a4fc5fd7a064217e12780e9bd62c3` | ⚠️ Unaudited |
| MintableToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: ethereum `0xf4d73326c13a4fc5fd7a064217e12780e9bd62c3`; polygon `0xbbde1d67297329148fe1ed5e6b00114842728e65` | ⚠️ Unaudited |
| MISOAccessControls | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: ethereum `0xc35dadb65012ec5796536bd9864ed8773abc74c4`; polygon `0x6b2a3ff504798886862ca5ce501e080947a506a2` | ⚠️ Unaudited |
| MISOFarmFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 3 deployments: ethereum `0x438a2b1c6c715fb1b051c04ca65755560d8b8d43`; polygon `0xddc1b5920723f774d2ec2c3c9355251a20819776`; avalanche `0x351447fc9bd20a917783e159e61e86edda0b0187` | ⚠️ Unaudited |
| MISOHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x05689fcfee31fce4a67fbc7cab13e74f80a4e288`; polygon `0xd36990d74b947ec4ad9f52fe3d49d14addb51e44` | ⚠️ Unaudited |
| MISOLauncher | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xaa26771d497814e81d305c511efbb3ced90bf5bd`; polygon `0xb84a043bc4fca97b7a74ed7daab1bf12a8df929f` | ⚠️ Unaudited |
| MISOMarket | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x281bd3a3f96ae7c96049493a7ba9449df2c5b0fe`; polygon `0x3e603c14af37ebdad31709c4f848fc6ad5bec715`; avalanche `0x7603a35af5cf10b113f167d424eb75bb7062c8ce` | ⚠️ Unaudited |
| MISOMasterChef | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x120140d0c1ebc938befc84840575ecdc5fe55afe`; polygon `0x18350b048ab366ed601ffdbc669110ecb36016f3` | ⚠️ Unaudited |
| MISOTokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x1be211d8da40bc0ae8719c6663307bfc987b1d6c`; polygon `0xd045d27c1f7e7f770a807b0a85d8e3f852e0f2be`; avalanche `0x9b3ff703fa9c8b467f5886d7b61e61ba07a9b51c` | ⚠️ Unaudited |
| mSpellStaking | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbd2fbaf2dc95bd78cf1cd3c5235b33d1165e6797` | ⚠️ Unaudited |
| Multicall2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: gnosis `0x67da5f2ffaddff067ab9d5f025f8810634d84287`; arbitrum `0x0769fd68dfb93167989c6f7254cd0d766fb2841f`; arbitrum `0x80c7dd17b01855a6d2347444a0fcc36136a314de` | ⚠️ Unaudited |
| MultiSigWalletWithDailyLimit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa10d3d1859c31caa80f38f9bd07037a49075b8eb` | ⚠️ Unaudited |
| NFTDescriptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 11 deployments: ethereum `0x67468e6c4418d58b1b41bc0a795bacb824f70792`; optimism `0xb3115b68e69886dc9dbcc674db35e73cd91e9053`; bsc `0x7770978eed668a3ba661d51a773d3a992fc9ddcb`; gnosis `0x2f686751b19a9d91cc3d57d90150bc767f050066`; polygon `0x5a2b5d1bb4c2c460a6d748c202e7fede016812c7`; sonic `0xcdbcd51a5e8728e0af4895ce5771b7d17ff71959`; metis `0xd5607d184b1d6ecba94a07c217497fe9346010d9`; moonriver `0xbbde1d67297329148fe1ed5e6b00114842728e65`; arbitrum `0x0367a647a68f304f2a6e453c25033a4249d7f2c6`; avalanche `0x7d222c52983690678e847cd063535f328875f463`; blast `0x1f2fcf1d036b375b384012e61d3aa33f8c256bbe` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x2214a42d8e2a1d20635c2cb0664422c528b6a432` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0xf70c086618dcf2b1a461311275e00d6b722ef914` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0xb7402ee99f0a008e461098ac3a27f4957df89a40` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 10 deployments: optimism `0x1af415a1eba07a4986a52b6f2e7de7003d82231e`; gnosis `0xab235da7f52d35fb4551afba11bfb56e18774a65`; sonic `0x0389879e0156033202c44bf784ac18fc02edee4f`; metis `0x630be2985674d31920babb4f96657960f131e7b1`; moonriver `0xd045d27c1f7e7f770a807b0a85d8e3f852e0f2be`; avalanche `0x18350b048ab366ed601ffdbc669110ecb36016f3`; blast `0x51edb3e5bce8618b77b60215f84ad3db14709051`; blast `0xbda8a8423b7f02cd935412fb9f13cb88f7875991`; blast `0xe0646d8b50085a3c85a6da674eaa27eae42f6ace`; blast `0xeabce3e74ef41fb40024a21cc2ee2f5ddc615791` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x80c7dd17b01855a6d2347444a0fcc36136a314de` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0xf0cbce1942a68beb3d1b73f0dd86c8dcc363ef49` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 12 deployments: ethereum `0x1c4369df5732ccf317fef479b26a56e176b18abb`; optimism `0x54ea633385c52263846b37409649b5b8fa5ed402`; bsc `0x7af71799c40f952237eaa4d81a77c1af49125113`; gnosis `0xbe811a0d44e2553d25d11cb8dc0d3f0d0e6430e6`; polygon `0x8c990a53e3fc5e4db1404bab33c6dfaceabffecc`; sonic `0x57bffa72db682f7eb6c132dae03ff36bbeb0c459`; metis `0x90dab18856331a85dc64203ce39aab01447dc134`; moonriver `0x7a4af156379f512de147ed3b96393047226d923f`; arbitrum `0x96e04591579f298681361c6122dc4ef405c19385`; avalanche `0xc040f84cf7046409f92d578ef9040fe45e6ef4be`; blast `0x734583f62bb6ace3c9ba9bd5a53143ca2ce8c55a`; blast `0xb46e319390de313b8cc95ea5aa30c7bbfd79da94` | ⚠️ Unaudited |
| OwlswapFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x126555dd55a39328f69400d6ae4f782bd4c34abb` | ⚠️ Unaudited |
| PeggedOracleV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x6cbfbb38498df0e1e7a4506593cdb02db9001564`; bsc `0x6cbfbb38498df0e1e7a4506593cdb02db9001564` | ⚠️ Unaudited |
| PointList | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 3 deployments: ethereum `0xf78031cbca409f2fb6876bdfdbc1b2df24cf9bef`; polygon `0x2c8c987c4777ab740d20cb581f5d381be95a4a4a`; avalanche `0xbe811a0d44e2553d25d11cb8dc0d3f0d0e6430e6` | ⚠️ Unaudited |
| PostAuctionLauncher | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 3 deployments: ethereum `0xab235da7f52d35fb4551afba11bfb56e18774a65`; polygon `0x97a32b4f8486735075f2cbecff64208fbf2e610a`; avalanche `0x1e9b24073183d5c6b7ae5fb4b8f0b1dd83fdc77a` | ⚠️ Unaudited |
| QuoterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | 6 deployments: sonic `0xe43ca1dee3f0fc1e2df73a0745674545f11a59f5`; metis `0xfbc12984689e5f15626bad03ad60160fe98b303c`; blast `0x2e10e8491ce999b3fa62ca097bed3941879a1e74`; blast `0xc53125f1465c93967e8a0f2131dd1c3134c1cf25`; blast `0xca6fe749878841b96f620ec79638b13daad3d320`; blast `0xd93a91442afd80243cf12f7110f48ab276fff33f` | ⚠️ Unaudited |
| RouteProcessor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 17 deployments: ethereum `0x7af71799c40f952237eaa4d81a77c1af49125113`; ethereum `0xf70c086618dcf2b1a461311275e00d6b722ef914`; optimism `0x96e04591579f298681361c6122dc4ef405c19385`; optimism `0xd9988b4b5bbc53a794240496cfa9bf5b1f8e0523`; bsc `0x7cf167390e2526bc03f3cf6852a7af1cec3e243d`; gnosis `0x0769fd68dfb93167989c6f7254cd0d766fb2841f`; gnosis `0x1e9b24073183d5c6b7ae5fb4b8f0b1dd83fdc77a`; polygon `0x0dc8e47a1196bcb590485ee8bf832c5c68a52f4b`; polygon `0x1a52afdd24994704e61fec49924d6c5388ae47fd`; polygon `0x7cd29170e8fa3fe5204624dede5a66f4e8161741`; metis `0x1e9b24073183d5c6b7ae5fb4b8f0b1dd83fdc77a`; moonriver `0x9e4791ad13f14783c7b2a6a7bd8d6ddd1dc95847`; moonriver `0xbd87bef520f8cec45d73b0413b6cbb8b061736d9`; arbitrum `0x9c6522117e2ed1fe5bdb72bb0ed5e3f2bde7dbe0`; arbitrum `0x9f18658f7206eaa8d885bbfbb95ab6d9f6c6c12f`; avalanche `0x400d75dab26bbc18d163aea3e83d9ea68f6c1804`; avalanche `0xd75f5369724b513b497101fb15211160c1d96550` | ⚠️ Unaudited |
| RouteProcessor2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x044b75f554b886a065b9567891e45c79542d7357`; optimism `0xf0cbce1942a68beb3d1b73f0dd86c8dcc363ef49`; bsc `0xd75f5369724b513b497101fb15211160c1d96550`; gnosis `0x145d82bca93cca2ae057d1c6f26245d1b9522e6f`; polygon `0x5097cbb61d3c75907656dc4e3bba892ff136649a`; avalanche `0xbaceb8ec6b9355dfc0269c18bac9d6e2bdc29c4f` | ⚠️ Unaudited |
| RouteProcessor3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 12 deployments: ethereum `0x429532089bdb3db4f3e6bd707d1a13784dbd366a`; ethereum `0x827179dd56d07a7eea32e3873493835da2866976`; ethereum `0xf0e1f962e3e6d8e2af8190b2798c1b4f018fe48d`; optimism `0x4c5d5234f232bd2d76b96aa33f5ae4fcf0e4bfab`; bsc `0x400d75dab26bbc18d163aea3e83d9ea68f6c1804`; gnosis `0xbbde1d67297329148fe1ed5e6b00114842728e65`; polygon `0x0a6e511fe663827b9ca7e2d2542b20b37fc217a6`; metis `0x258f7e97149afd7d7f84fa63b10e4a3f0c38b788`; moonriver `0x7af71799c40f952237eaa4d81a77c1af49125113`; base `0x0be808376ecb75a5cf9bb6d237d16cd37893d904`; arbitrum `0xfc506aaa1340b4dedffd88be278bee058952d674`; avalanche `0x717b7948aa264decf4d780aa6914482e5f46da3e` | ⚠️ Unaudited |
| RouteProcessor3_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 6 deployments: ethereum `0x8516944e89f296eb6473d79aed1ba12088016c9e`; ethereum `0xf0cbce1942a68beb3d1b73f0dd86c8dcc363ef49`; bsc `0xbaceb8ec6b9355dfc0269c18bac9d6e2bdc29c4f`; polygon `0x9cfeadcc38377283adb944205c5238d04d4dd8a1`; base `0x9b77032075806975b3bd3bcfc69e5de36ee6d176`; arbitrum `0x3c1fba3bcee7ce410b155a8c71f9ff1312852c82` | ⚠️ Unaudited |
| RouteProcessor3_2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 10 deployments: ethereum `0x5550d13389bb70f45fcef58f19f6b6e87f6e747d`; optimism `0xeb94eca012ec0bbb254722fdda2ce7475875a52b`; bsc `0xd36990d74b947ec4ad9f52fe3d49d14addb51e44`; gnosis `0x7a4af156379f512de147ed3b96393047226d923f`; polygon `0xe7eb31f23a5befeeff76dbd2ed6adc822568a5d2`; moonriver `0xf70c086618dcf2b1a461311275e00d6b722ef914`; base `0x83ec81ae54dd8dca17c3dd4703141599090751d1`; base `0xb405397ed593f90c82188b32645118ca56f2ccd6`; arbitrum `0x09bd2a33c47746ff03b86bce4e885d03c74a8e8c`; avalanche `0x8f54301f315c56c112d492d9443047d4745dbe9e` | ⚠️ Unaudited |
| RouteProcessor4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 5 deployments: polygon `0x46b3fdf7b5cde91ac049936bf0bdb12c5d22202e`; polygon `0xb45e53277a7e0f1d35f2a77160e91e25507f1763`; metis `0xb45e53277a7e0f1d35f2a77160e91e25507f1763`; metis `0xd408a20f1213286fb3158a2bfbf5bffaca8bf269`; blast `0xcdbcd51a5e8728e0af4895ce5771b7d17ff71959` | ⚠️ Unaudited |
| SimpleSLPTWAP0OracleV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x66f03b0d30838a3fee971928627ea6f59b236065`; bsc `0x66f03b0d30838a3fee971928627ea6f59b236065` | ⚠️ Unaudited |
| SimpleSLPTWAP1OracleV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x0d51b575591f8f74a2763ade75d3cdcf6789266f`; bsc `0x0d51b575591f8f74a2763ade75d3cdcf6789266f` | ⚠️ Unaudited |
| SquidAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 2 deployments: optimism `0xbf3b71decbcefabb3210b9d8f18ec22e0556f5f0`; linea `0xbf3b71decbcefabb3210b9d8f18ec22e0556f5f0` | ⚠️ Unaudited |
| sSpellV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x26fa3fffb6efe8c1e69103acb4044c26b9a106a9` | ⚠️ Unaudited |
| StablePoolFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | 9 deployments: optimism `0xc79ae87e9f55761c08e346b98dddf070c9872787`; polygon `0x53b08dbd70327b7ba3b7886fc9987bc985d27262`; polygon `0xe52180815c81d7711b83412e53259bed6a3ab70a`; polygon `0xf96149e31c3af9650d209c5fe26a9b06c5bc91d4`; metis `0x2f686751b19a9d91cc3d57d90150bc767f050066`; metis `0x93395129bd3fcf49d95730d3c2737c17990ff328`; metis `0x9b3ff703fa9c8b467f5886d7b61e61ba07a9b51c`; arbitrum `0xc2fb256aba36852dccea92181ec6b355f09a0288`; avalanche `0x7770978eed668a3ba661d51a773d3a992fc9ddcb` | ⚠️ Unaudited |
| StargateAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xdf1cfec0dcf05bf647fbfbe12ea550baa102e195` | ⚠️ Unaudited |
| SubscribeToJunionOnYoutube | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1b02da8cb0d097eb8d57a175b88c7d8b47997506` | ⚠️ Unaudited |
| SushiRoll | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0053957e18a0994d3526cf879a4ca7be88e8936a` | ⚠️ Unaudited |
| SushiSwapMultiSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x73be093b84c773fe8ee0f76ddc0829e45c215415` | ⚠️ Unaudited |
| SushiSwapSwapperV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 4 deployments: ethereum `0x1766733112408b95239ad1951925567cb1203084`; bsc `0x1766733112408b95239ad1951925567cb1203084`; polygon `0xe9589382130ded5df2397e2fd7a3e9b41dd2701d`; avalanche `0x062eee8b38ab5e8ee3bc58ce505939db53e63785` | ⚠️ Unaudited |
| SushiToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x0be808376ecb75a5cf9bb6d237d16cd37893d904`; polygon `0x7a4af156379f512de147ed3b96393047226d923f` | ⚠️ Unaudited |
| SushiXSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 31 deployments: ethereum `0x011e52e4e40cf9498c79273329e8827b21e2e581`; optimism `0x044b75f554b886a065b9567891e45c79542d7357`; optimism `0x1838b053e0223f05fb768fa79aa07df3f0f27480`; optimism `0x2214a42d8e2a1d20635c2cb0664422c528b6a432`; optimism `0x2c8c987c4777ab740d20cb581f5d381be95a4a4a`; optimism `0x3d2f8ae0344d38525d2ae96ab750b83480c0844f`; optimism `0x67468e6c4418d58b1b41bc0a795bacb824f70792`; optimism `0x6c5a9e667297b409b5dd9850b38889ab84110c2a`; optimism `0x7a4af156379f512de147ed3b96393047226d923f`; optimism `0x7cf167390e2526bc03f3cf6852a7af1cec3e243d`; optimism `0x843d0aad40295f2198ef528ad747cdf6ab9000e4`; optimism `0x8b396ddf906d552b2f98a8e7d743dd58cd0d920f`; optimism `0x8f54301f315c56c112d492d9443047d4745dbe9e`; optimism `0x97a32b4f8486735075f2cbecff64208fbf2e610a`; optimism `0xd045d27c1f7e7f770a807b0a85d8e3f852e0f2be`; optimism `0xd08b5f3e89f1e2d6b067e0a0cbdb094e6e41e77c`; bsc `0x7a4af156379f512de147ed3b96393047226d923f`; polygon `0x2214a42d8e2a1d20635c2cb0664422c528b6a432`; polygon `0xd08b5f3e89f1e2d6b067e0a0cbdb094e6e41e77c`; arbitrum `0x1c4369df5732ccf317fef479b26a56e176b18abb`; arbitrum `0x2f255d3f3c0a3726c6c99e74566c4b18e36e3ce6`; arbitrum `0x3d2f8ae0344d38525d2ae96ab750b83480c0844f`; arbitrum `0x53b08dbd70327b7ba3b7886fc9987bc985d27262`; arbitrum `0x7a4af156379f512de147ed3b96393047226d923f`; arbitrum `0x843d0aad40295f2198ef528ad747cdf6ab9000e4`; arbitrum `0x8fcad570a448d350bbb04ff204ca1f0ca85075cf`; arbitrum `0xd08b5f3e89f1e2d6b067e0a0cbdb094e6e41e77c`; avalanche `0x2c8c987c4777ab740d20cb581f5d381be95a4a4a`; avalanche `0x5629ce74ddcad7cc72b3ea30444da7172ad851d9`; avalanche `0x9e4791ad13f14783c7b2a6a7bd8d6ddd1dc95847`; avalanche `0xbbde1d67297329148fe1ed5e6b00114842728e65` | ⚠️ Unaudited |
| SushiXSwapV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 8 deployments: ethereum `0x54ea633385c52263846b37409649b5b8fa5ed402`; ethereum `0xb3115b68e69886dc9dbcc674db35e73cd91e9053`; ethereum `0xd9988b4b5bbc53a794240496cfa9bf5b1f8e0523`; optimism `0x804b526e5bf4349819fe2db65349d0825870f8ee`; metis `0x804b526e5bf4349819fe2db65349d0825870f8ee`; arbitrum `0xa105d0a31905bfd862fae793633a3fc02743dffa`; linea `0x02a480a258361c9bc3eaacbd6473364c67adcd3a`; linea `0x804b526e5bf4349819fe2db65349d0825870f8ee` | ⚠️ Unaudited |
| SwapRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | 4 deployments: metis `0x2abf469074dc0b54d793850807e6eb5faf2625b1`; blast `0x1b7b944fac5cce2a1ee8b63baa47d31bcbe34709`; blast `0x544ba588efd839d2692fc31ea991cd39993c135f`; blast `0x5d0aa5dd03199d80089278b261167fff24c304ca` | ⚠️ Unaudited |
| TickLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 12 deployments: ethereum `0xfb70ad5a200d784e7901230e6875d91d5fa6b68c`; optimism `0x0367a647a68f304f2a6e453c25033a4249d7f2c6`; bsc `0x10c19390e1ac2fd6d0c3643a2320b0aba38e5baa`; gnosis `0xaa26771d497814e81d305c511efbb3ced90bf5bd`; polygon `0x9fdea1412e50d78b25ace4f96d35801647fdf7da`; sonic `0x33d91116e0370970444b0281ab117e161febfcdd`; metis `0x078047150f8efa223b3d407f00e462e38f4b1b9c`; moonriver `0x6e9aed2c4cf5ed7e8ab851435225fe1601a1bc56`; base `0xf4d73326c13a4fc5fd7a064217e12780e9bd62c3`; arbitrum `0x8516944e89f296eb6473d79aed1ba12088016c9e`; avalanche `0xddc1b5920723f774d2ec2c3c9355251a20819776`; blast `0x039e87ab90205f9d87c5b40d4b28e2be45da4a20` | ⚠️ Unaudited |
| TridentRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 10 deployments: optimism `0x0be808376ecb75a5cf9bb6d237d16cd37893d904`; optimism `0xbe811a0d44e2553d25d11cb8dc0d3f0d0e6430e6`; bsc `0x97a32b4f8486735075f2cbecff64208fbf2e610a`; polygon `0x438a2b1c6c715fb1b051c04ca65755560d8b8d43`; polygon `0x67896a1023deae917fe6b99caf749d7db0bfe08a`; polygon `0xcaabdd9cf4b61813d4a52f980d6bc1b713fe66f5`; metis `0x0be808376ecb75a5cf9bb6d237d16cd37893d904`; metis `0xab235da7f52d35fb4551afba11bfb56e18774a65`; arbitrum `0xd9988b4b5bbc53a794240496cfa9bf5b1f8e0523`; avalanche `0xf70c086618dcf2b1a461311275e00d6b722ef914` | ⚠️ Unaudited |
| TridentRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | `0xe52180815c81d7711b83412e53259bed6a3ab70a` | ⚠️ Unaudited |
| TridentRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x7a250c60cde7a5ca7b667209beab5ea4e16eed67` | ⚠️ Unaudited |
| TridentRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0xc5017be80b4446988e8686168396289a9a62668e` | ⚠️ Unaudited |
| TridentSushiRollCP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 6 deployments: optimism `0x1be211d8da40bc0ae8719c6663307bfc987b1d6c`; polygon `0x5629ce74ddcad7cc72b3ea30444da7172ad851d9`; polygon `0x93395129bd3fcf49d95730d3c2737c17990ff328`; polygon `0xeae23c766a1b25481025a02b2d82a1db3fc130ca`; metis `0x1be211d8da40bc0ae8719c6663307bfc987b1d6c`; arbitrum `0xf96149e31c3af9650d209c5fe26a9b06c5bc91d4` | ⚠️ Unaudited |
| UniswapV2Factory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | 6 deployments: optimism `0xfbc12984689e5f15626bad03ad60160fe98b303c`; gnosis `0xc35dadb65012ec5796536bd9864ed8773abc74c4`; polygon `0xc35dadb65012ec5796536bd9864ed8773abc74c4`; metis `0x580ed43f3bba06555785c81c2957efcca71f7483`; base `0x71524b4f93c58fcbf659783284e38825f0622859`; linea `0xfbc12984689e5f15626bad03ad60160fe98b303c` | ⚠️ Unaudited |
| UniswapV2Router02 | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x9b3336186a38e1b6c21955d112dbb0343ee061ee` | ⚠️ Unaudited |
| UniswapV3Factory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | 7 deployments: optimism `0x9c6522117e2ed1fe5bdb72bb0ed5e3f2bde7dbe0`; gnosis `0xf78031cbca409f2fb6876bdfdbc1b2df24cf9bef`; polygon `0x917933899c6a5f8e37f31e19f92cdbff7e8ff0e2`; sonic `0x46b3fdf7b5cde91ac049936bf0bdb12c5d22202e`; metis `0x145d82bca93cca2ae057d1c6f26245d1b9522e6f`; arbitrum `0x1af415a1eba07a4986a52b6f2e7de7003d82231e`; scroll `0x46b3fdf7b5cde91ac049936bf0bdb12c5d22202e` | ⚠️ Unaudited |
| V3Migrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | 5 deployments: sonic `0x1f2fcf1d036b375b384012e61d3aa33f8c256bbe`; metis `0x454714482ca38fbbce7fc76d96ba1ce2028a4ff6`; blast `0x09feacbfe261e30a2aa9e75eeaf879a086c3413f`; blast `0x93c31c9c729a249b2877f7699e178f4720407733`; blast `0xaa33ad497e66778ebbd4606de93c7a8c466b079e` | ⚠️ Unaudited |
| WethMaker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 3 deployments: sonic `0x1b7b944fac5cce2a1ee8b63baa47d31bcbe34709`; metis `0xb46e319390de313b8cc95ea5aa30c7bbfd79da94`; blast `0x2538263e13467b7759c6419270f29d890881a119` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (390)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02dcc3aaa2f0c97fe0abfaf07df3e0c7ae56557a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a2290c3e97db5823eb11e60de64a0a98fdd2451` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0cc3114cd2e4adc3ed5691fa28b8cf106579d90a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d07e5d0c6657a59153359d6552c4664b6634f21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e1ea2269d6e22dfeebce7b0a4c6c3d415b5bc85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ea2207e31dc03701b12e4b322df1bbb404b8855` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ec271d3bdb1a723088d1dcef6b7ebf9c1b0d377` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f75c5f723681a6897dc2fb6ffa672a4929028a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1067c6dc34c86b5f23f4a9bdbe7a639ad613342c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1085fa0770a88a132e3b8aae21c84755d70081ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10c19390e1ac2fd6d0c3643a2320b0aba38e5baa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-257528 | `0x12bb166f997146d3d33645146eedbc4a923195d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x13f193d5328d967076c5ed80be9ed5a79224ddab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1440ecdfc61386a64116e58326bc7d6074e80815` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x152b59937ecb0f1030d81d2206c4cbb3fd0ce015` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x15a2a96608b48ebfd80c31da8a9be340a354cd46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16495612e7b35bbc8c672cd76de83bcc81774552` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x170d177f083e377d9a3fe222deef7bd5486853f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x184a07c9cfd6165d6accdc373eb00bc5cd8733cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x19dba5df5383168f760617aadd23322bc5f9ff7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1dde3505fa0dd8ef2253dbbc1aea0b4355c38d28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1df188958a8674b5177f77667b8d173c3cdd9e51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1fc83f75499b7620d53757f0b01e2ae626aae530` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x205d52e9ea8e42659ac5c7f83863b18d27d7e0f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x205e8c5b8b9ab41e934ebf394aa319ccbdedd3bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x20915f71474c127e5c3cdc41c75cb21d4e0605f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x20cb52832f35c61ccdbe5c336e405fe979de9430` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x217c089db99274f142bbdb48e409180b045e24ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x235d3afac42f5e5ff346cb6c19af13194988551f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x244bafbae9c47c795d3ab76ee77c5ba62e92285b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24a76073ab9131b25693f3b75dd1ce996fd3116c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x26fe2f89a1fef1bc90b8a89d8ad18a1891166ff5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x286ed6c7a0797e370ed47c8f0f57ad68060af7c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x292a6f6156c9e197aa2d059a3194ea8d235b3f0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x294c8cebce8c6b065d23b97133ce10fded601aa7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2be431ee7e74b1cb7cfa16fc90578ef42ef361b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2cb8d5a94efec5cc2f53cfbce7e0e88754217f6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e61da9d555625200c9eae7f2de9a269ca93f9a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x307f4344b1e425f6210620bf15ab242e88c6639f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x35242f4a0067ff0e992e7a262c29dfd8874bcd60` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x369d81cf263abc7ee567d8836a39234141d4da07` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x36d9386ad4b8636459c365295ddc7e70e33889bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x38a67c0f839e5f8939b12f9181a1924e4e4375ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x39abc0483046d7ad4957c8ada6e0787824a7c21d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3bab7207d4e27b5de4a15d540b7297281b45ed2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c7840e80beb3642043273cf7bf01944a8dfed3c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d94b714382f61107a71690463b921e1db6b6735` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3db923fbab372ab8c796fef9bb8341cdb37cb9ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f16dfcfd23c1aa4472c80b2d2688e5c8222d71b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f37712726c9e509c5479f13e17cb1033411d864` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f7c9c7d9e69d0cfbfd6f009cc59ae341f68b738` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x400d75dab26bbc18d163aea3e83d9ea68f6c1804` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x40cf1c8fd53c7b6473e53a3c71c543d0713394f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41a37655a7afb85787bd60a9fa750225567da186` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41d65ce96342a3d9c3d878856e283e839d29df42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x445918e531aff4ef2ed31ec497d40ec7eb125582` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x44b95da0a7e912cbf63d2eea6285ce1b14dc84aa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-257529 | `0x44d097113dbead613fde74b387081fb3b547c54f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x469561357211a6ce4707dc48174d6c617ccb0402` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x469a991a6bb8cbbfee42e7ab846edeef1bc0b3d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x476b1e35dde474cb9aa1f6b85c9cc589bfa85c1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x480a0af04186080bac985e595d66ea3bf351eb4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a9cb5d0b755275fd188f87c0a8df531b0c7c7d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4bdc9b55bdc73b717d83dd436bf9ee3f2b89ac37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c56dbcc056655b8813539af9c819ae128c07e17` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4d9a788bc0801112fb8ad8faac5c4a00d02b2ff7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f30fb46b1e79f528d712fce503584785724609a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f51264b07db8b2910e892eeef22460de23268a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5041f1ae02feb3580c4424d4417d202845cefcd8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50dc3537617cfa20f1b401de98d0efeb412cf9ff` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-257530 | `0x51b0efa27ff4f29f8315496f01952377d581ce73` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-257531 | `0x53954a6191ad795e331cffdb1b035d389f2ac516` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5488fb4a4bdad44a2e35614e8918fd22c2f4b9a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x54a8c6c4b3256d24652dae3fc1511c871593de9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x54c80f1c4718e3e6df71b83bb9cb389ec41f07a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x55f7c152b0c3cc1cd7479e4858ac07f50d7fcfad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5624b48ec2848bd642230b46405e1f65938c5fd0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x57823e61f1f6d0af24e80e5232901cf9d69eef4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x599ea9f2c71971fda372d54dee338e535f49623d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x59b3d5ddf93a3782f7b7a4be1214722fc6fecd45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5c3e758408692bd4c4d8ee97929059b877f32d32` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d72d1266aad8b12102675a2931e360878ea18e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5e70f7acb8ec0231c00220d11c74dc2b23187103` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5fc6b5187fa4756a060f719ee518262e5562478f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x64bfa1ac356724b13122361a560e820e83f09db9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6527a927bdb147d15fde4326381843f55fbfe986` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-257532 | `0x655edce464cc797526600a462a8154650eee4b77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x663ef4455a07243d9029ba0fc48297ae181aeb38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x66436c64da9d9a61bcc3f652490d20d7cf19765d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x68a38675cc1bb67ad0893b8a1b726003d0ebfeb1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69f79536d304a556603ff55d4dac017ddf50af50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6a5b5e025f2febf11646050e28240279215c0da8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b44d94ecdfaf0cb00def55212e226603bb68793` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c6a54a124e7b9859014425b8c0142ee0b19febf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c86adb5696d2632973109a337a50ef7bdc48ff1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-257533 | `0x6e3fb8a019e78785e80cea1d413bc3ab650c2449` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6e8093ebb80cd9f7395681ad8de90ca93b08d9aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x720310d711455f032fcbb3feadf858534fb257c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x750e9887425f9f325504fe69b7173a4cacd55351` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x75e14253de6a5c2af12d5f1a1ea0a2e11e69ec10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x78a538cf4c73dba3794c0385d28758fed517cccf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d222c52983690678e847cd063535f328875f463` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7fa0320180b0d6e12b3ab47aa0fbb3da9e3e926c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8470533b1add972f153e84471badbfd929207d4c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-257534 | `0x84f4625c3e92b368e403cb002a9bf9bc7a9ae1b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x853d55ad9d1a66bfd5319a6730bf57897b230b30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x88e9cb153df9b8c46bd0c99081fc5e6c67149863` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f7405d5738468863a516b3cb6c8984845983d9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x90218033ce26b3d41c45795e903c7989817f0dd7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x908fcbf4cc0cb550cdaf668c94bf75321da54536` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x94635b2034ccec3293b81d411cd77c36c353f41d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x96bac90bee7f416d33601d1dc45efb19aca8ca62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9732d3ee0f185d7c2d610e30dc5de28ef68ad7c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x983ca3b5d2a07700354a2127a874f37ea1962037` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x996619a2088ce3a5a3cb7978597ed065deaa748f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9e233dd6a90678baacd89c05ce5c48f43fcc106e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9f33628e6389b3a918dbd1aa5e9fe0f4a0c62ab8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2fcda2dd82b7ab6b0c6cf116b6546e57499fad9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa3c8931ec0fef9bf05386d154c4cd1e93aa92a12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa6e97d76d21ae347b13c343508826496b07202e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa869b9171c8f912c592abc58005922718d0d49b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa8fa2460927332ed475364c602d916fbc095b1b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa9b386dcd598acf3ce53460631feefbba730cbf3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xabb326cd92b0e48fa6dfc54d69cd1750a1007a97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac2b3f9a13e7273639bcdca55742391cdacc74cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xacab7f05a612690b9e05ca3bfc1ff2e99169a39f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb2ebf227188e44ac268565c73e0fcd82d4bfb1e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb7cb99cc08a83ab6823c9dd0bf4830a7e01e6375` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb80dde125af28f3b124d6fa1ff11fad5967940ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8e97447cb2e9d3209c214ae28daf86441658577` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb9b55db94eb5581d7716235f5f55156f73878211` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbb9997a195a031e4d7d29c14ea3fc53cf94f4b86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbdaf491a8c45981ccdfe46455f9d62b5c9b1632f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe9b99d4dc860ac6fb97e56102815a8f973967c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc040f84cf7046409f92d578ef9040fe45e6ef4be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc1dbac8eb17f3684bf87847cd9525dfbcd9a4033` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc423aefe189394aed22f954eba943f303b42d1dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc4afee724025a33c041b39f374014dcbb8c52459` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc4e343b89fb261f42432d9078dde9798e67c33ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc5017be80b4446988e8686168396289a9a62668e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc60bcdce144a3b677e8f34bd4462dc112948efb6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc8dcc12f457eecb38d070815731c63639ae87aa3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc9853117981374667e0eb3434ad22008133c6c17` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc9facfa2fc50c9a30c77a2ad14e2db107d591918` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb1f6f6bf3bcc01cdb6ba3ab22f5849333efe6ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcbd7fd48c7a2a095ce053d5998db12ca0ea65264` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-257536 | `0xcc12532e95c2a6a4c53af153b9b739a3cc9218a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcd7167b3a16f6177e34e2b9ae0d7c3eeee4a4b6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcdb71cbf4f6b8db8d13d1be655988cbc523bc8b1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-257537 | `0xd0454428ecd868a9ac615125fcbdb5da9027436e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd2b62aef2102c09f475b23dda6b61072e848cf28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd404bef05e9e256765440a1b9a6b56750c4cedec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd710df47b264f6e08325412d929f7354b8221f94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd7477321a84f3d39b8d742580f3740016658135d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd75f5369724b513b497101fb15211160c1d96550` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd794f13b9a494118cc83ec8880d22a44f1a843cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd8f1460044925d2d5c723c7054cd9247027415b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd9f2b927eb692f88689e08e53d729109c84cc5a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdd1052137472cca4c2f55b93cc9c0f06ec20b6b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xddc1b5920723f774d2ec2c3c9355251a20819776` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe02bf848395a538c7c624c2bfe377b039f067a62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe0c29b1a278d4b5eae5016a7bc9bfee6c663d146` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe0d2007f6f2a71b90143d6667257d95643183f2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe1ac243f14de48eba4c267e82d97ebc7d260d318` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe2968dd5557383109998c29c3a5842d73f66ff97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe3cd7c4739f8b068d1fe32b81a0e67ebc27b36cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe45217a77c332ff767112dc89e568c473c5fad2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe4e8219982e088c4895800ca60891dbc023ee2da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe6191aa754f9a881e0a73f2028edf324242f39e2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-257538 | `0xe7b0ce0526fbe3969035a145c9e9691d4d9d216c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe92b32d8f55564e0eedbd665ffd810cc918f5627` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe94c443e2d124cf9d5b5a6f1ce0e29dc464551da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe965db54fe154765460c5289a2b383d34fd6010b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeae4365f8714b8fdc66ed0f2a3d90338c9dd84eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xedcf198bc94ddcabb21dbeb38ad9f9793208f12a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xef633d1af20ed99a69b7cf46da5be63da07ed5ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xef9c97e356bc5ff2460e25f40f608101ce15d70b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf780dec6c8f7b4a14858fe3ccd64e4cc1f8f3e12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf8beb5c479a9b58f581076697bbce83baade90c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfa267599bc504a60806b24656495d89064cbd972` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfb81be4bde317d32ec6934db87e05cfdc5245437` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfc2796c47063d6fcb98006081778c7b45b13a4c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfdf2c2689c130b0686331c9ada0e40ec1a1a58d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe5f68cdf736d007f2d70e7f3976458dba9745f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff498bbcbf40d0f30f178f553e8fa36153baf30b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x011e52e4e40cf9498c79273329e8827b21e2e581` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x05689fcfee31fce4a67fbc7cab13e74f80a4e288` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x08b4b3be5bfab1be319599ce8e41c3da7fe7f3f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x154b08ca083bab868f8794e8b517ea0fdd92d6e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1c5771e96c9d5524fb6e606f5b356d08c40eb194` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x258f7e97149afd7d7f84fa63b10e4a3f0c38b788` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x2f255d3f3c0a3726c6c99e74566c4b18e36e3ce6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x2f686751b19a9d91cc3d57d90150bc767f050066` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x3db923fbab372ab8c796fef9bb8341cdb37cb9ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x3f7c9c7d9e69d0cfbfd6f009cc59ae341f68b738` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x4344936f43fbe4073127d98f795213ff669bac9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x438a2b1c6c715fb1b051c04ca65755560d8b8d43` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-257539 | `0x5130f6ce257b8f9bf7fac0a0b519bd588120ed40` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-257540 | `0x55f7c152b0c3cc1cd7479e4858ac07f50d7fcfad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5629ce74ddcad7cc72b3ea30444da7172ad851d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x6b2a3ff504798886862ca5ce501e080947a506a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x769728b5298445ba2828c0f3f5384227fbf590c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x7a1263ec3bf0a19e25c553b8a2c312e903262c5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x827179dd56d07a7eea32e3873493835da2866976` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x8765472ff328e26ebb1429a41c98ec7e797f89f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x8dacffa7f69ce572992132697252e16254225d38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x93a5943e3091e94aa16f0813bb6901c3e9d4eb98` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x98898bc1975e369345519b6c11c9a1f8a37ab877` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x9b259e06de4d0960cf9ea434ed3a97c50067b0e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xa0f7f3a9188f72ba3aaa6093ed22940b9fbe86d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xa9c5712f8121792c16e7b028997993c2bf37f774` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xaa26771d497814e81d305c511efbb3ced90bf5bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xab235da7f52d35fb4551afba11bfb56e18774a65` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-257541 | `0xac2b3f9a13e7273639bcdca55742391cdacc74cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb08e05eeb7bbd8443fec318fec4954b096c582d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xbd87bef520f8cec45d73b0413b6cbb8b061736d9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-257542 | `0xdbd4ffc32b34f630dd8ac18d37162ec8462db7db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xeae23c766a1b25481025a02b2d82a1db3fc130ca` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-257543 | `0xf33141bc4e9d1d92a2adba2fa27a09c2da2af3eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf60e5f4a44a510742457d8064ffd360b12d8d9af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0769fd68dfb93167989c6f7254cd0d766fb2841f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0be808376ecb75a5cf9bb6d237d16cd37893d904` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x145d82bca93cca2ae057d1c6f26245d1b9522e6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1b9d177ccdea3c79b6c8f40761fc8dc9d0500eaa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1be211d8da40bc0ae8719c6663307bfc987b1d6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1c5771e96c9d5524fb6e606f5b356d08c40eb194` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1e9b24073183d5c6b7ae5fb4b8f0b1dd83fdc77a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x281bd3a3f96ae7c96049493a7ba9449df2c5b0fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2c8c987c4777ab740d20cb581f5d381be95a4a4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x351447fc9bd20a917783e159e61e86edda0b0187` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3d2f8ae0344d38525d2ae96ab750b83480c0844f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x438a2b1c6c715fb1b051c04ca65755560d8b8d43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5629ce74ddcad7cc72b3ea30444da7172ad851d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6b2a3ff504798886862ca5ce501e080947a506a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x752dc00aba9c930c84ac81d288db5e2a02afe633` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7603a35af5cf10b113f167d424eb75bb7062c8ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8dacffa7f69ce572992132697252e16254225d38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9b3ff703fa9c8b467f5886d7b61e61ba07a9b51c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9e4791ad13f14783c7b2a6a7bd8d6ddd1dc95847` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa4c0363edd74f55ac8f316a3bf447f8aa09607d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xab235da7f52d35fb4551afba11bfb56e18774a65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb84a043bc4fca97b7a74ed7daab1bf12a8df929f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbd87bef520f8cec45d73b0413b6cbb8b061736d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbe811a0d44e2553d25d11cb8dc0d3f0d0e6430e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc5017be80b4446988e8686168396289a9a62668e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdcd6a4b673b1c409e4b67f787935865b161232d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xeae23c766a1b25481025a02b2d82a1db3fc130ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x07b6e34eecf38b02e83b6b4702699717e298967e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x1b9d177ccdea3c79b6c8f40761fc8dc9d0500eaa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x1be211d8da40bc0ae8719c6663307bfc987b1d6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x3ca3380a0807384c2fdda0566071f824d7d4c29e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x48a824db3ed23ca6b5b0eff03f04609d568b6036` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x735f0fbeb3b6389986bcaaf073af07d2f8be2b93` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x80c7dd17b01855a6d2347444a0fcc36136a314de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x93395129bd3fcf49d95730d3c2737c17990ff328` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x97e4a0fb71243a83a6fbaef7cf73617594e4cf2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xcaabdd9cf4b61813d4a52f980d6bc1b713fe66f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xe02bdb31c353ce95a1d74f81c93eea70bf7371b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xf4d73326c13a4fc5fd7a064217e12780e9bd62c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xfdc8f1c8b63baa129fde505cf950d2019774009d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x154b08ca083bab868f8794e8b517ea0fdd92d6e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1e9b24073183d5c6b7ae5fb4b8f0b1dd83fdc77a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x232def8d1577597d80e0c2f97f10c062bbc59e4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x258f7e97149afd7d7f84fa63b10e4a3f0c38b788` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x281bd3a3f96ae7c96049493a7ba9449df2c5b0fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2a0caa28331bc6a18ff195f06694f90671de70f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2f686751b19a9d91cc3d57d90150bc767f050066` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-257546 | `0x4715ccd2e0284cedf7d5cc6b40420432ebc9e561` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x67468e6c4418d58b1b41bc0a795bacb824f70792` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-257547 | `0x6811079e3c63ed96eb005384d7e7ec8810e3d521` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-257548 | `0x6bfce69d1df30fd2b2c8e478edec9daa643ae3b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8667c105b379c7c4fe757b2136de60f558860010` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8dacffa7f69ce572992132697252e16254225d38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8ec8a4670276d0f6e0078457960a826004c023e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8fcad570a448d350bbb04ff204ca1f0ca85075cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa96c367304da9d701695bdc7068ac819d2c9a486` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xaa26771d497814e81d305c511efbb3ced90bf5bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xab235da7f52d35fb4551afba11bfb56e18774a65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xaff695b671d185496753dc596ffffa74b3e81983` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb4dcbcd4a8b6b0c393fb54df8d041bda1f149d59` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-257549 | `0xd01e3549160c62acabc4d0eb89f67aafa3de8eed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xdb6c4edd9545d3b815da85e6429b699c418886f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe05af9c352fc18cf2d19edbfb3c77dcd7df7e222` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe5e38d6b37b3785293395c3f7842c782a0c6d429` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-257550 | `0xf33141bc4e9d1d92a2adba2fa27a09c2da2af3eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf33c6dc341eb673cc9181c9fb2acdefb933b1aff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfa3d4e29b4a62138965a6c5248bddf8c7dd97de8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1400fefd6f9b897970f00df6237ff2b8b27dc82c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x1b9d177ccdea3c79b6c8f40761fc8dc9d0500eaa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x33d91116e0370970444b0281ab117e161febfcdd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x9b3336186a38e1b6c21955d112dbb0343ee061ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xbbde1d67297329148fe1ed5e6b00114842728e65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon-zkevm | n/a | 9 deployments: heco `0x8798249c2e607446efb7ad49ec89dd1865ff4272`; fantom `0x1b9d177ccdea3c79b6c8f40761fc8dc9d0500eaa`; fantom `0x7770978eed668a3ba661d51a773d3a992fc9ddcb`; fantom `0xf5bce5077908a1b7370b9ae04adc565ebd643966`; polygon-zkevm `0x1b02da8cb0d097eb8d57a175b88c7d8b47997506`; kava `0x1e9b24073183d5c6b7ae5fb4b8f0b1dd83fdc77a`; kava `0xd408a20f1213286fb3158a2bfbf5bffaca8bf269`; arbitrum-nova `0xaa26771d497814e81d305c511efbb3ced90bf5bd`; harmony `0xa28cff72b04f83a7e3f912e6ad34d5537708a2c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x05689fcfee31fce4a67fbc7cab13e74f80a4e288` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x0769fd68dfb93167989c6f7254cd0d766fb2841f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x0be808376ecb75a5cf9bb6d237d16cd37893d904` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x120140d0c1ebc938befc84840575ecdc5fe55afe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x1b9d177ccdea3c79b6c8f40761fc8dc9d0500eaa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x1be211d8da40bc0ae8719c6663307bfc987b1d6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x1e9b24073183d5c6b7ae5fb4b8f0b1dd83fdc77a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x258f7e97149afd7d7f84fa63b10e4a3f0c38b788` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x281bd3a3f96ae7c96049493a7ba9449df2c5b0fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x351447fc9bd20a917783e159e61e86edda0b0187` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x3d2f8ae0344d38525d2ae96ab750b83480c0844f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x5629ce74ddcad7cc72b3ea30444da7172ad851d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x6b2a3ff504798886862ca5ce501e080947a506a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x752dc00aba9c930c84ac81d288db5e2a02afe633` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x7603a35af5cf10b113f167d424eb75bb7062c8ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x8dacffa7f69ce572992132697252e16254225d38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x9b3ff703fa9c8b467f5886d7b61e61ba07a9b51c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xab235da7f52d35fb4551afba11bfb56e18774a65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xbe811a0d44e2553d25d11cb8dc0d3f0d0e6430e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xc5017be80b4446988e8686168396289a9a62668e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xeae23c766a1b25481025a02b2d82a1db3fc130ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x4c16dd6e9b402ea4fb5be647be2f49e3d59bb08a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-257557 | `0x769728b5298445ba2828c0f3f5384227fbf590c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x98898bc1975e369345519b6c11c9a1f8a37ab877` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0769fd68dfb93167989c6f7254cd0d766fb2841f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x08f7e9458a341db71d2abbe32e2b5a2c727d4be8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1b02da8cb0d097eb8d57a175b88c7d8b47997506` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-257559 | `0x41c5362adf3a2cf6815454f7633172e7f6c1f834` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x617773fc126daa7f6dc9f189d88b40acd8fcefe2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x90296538701c73af76758f4778916daa2407956f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb0b2f39dafc7a761ae97a7eec63dd31ac211d0f4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-257560 | `0xb32d856cad3d2ef07c94867a800035e37241247c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbd628309c01d0c868a33155e3fa0f56bb0e768b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfaab5716703bb76fb2402a94052ad336baf38d3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x011e52e4e40cf9498c79273329e8827b21e2e581` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0bfcd5dd76218bf9e3be8a1055f9e6d27e5745eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x145d82bca93cca2ae057d1c6f26245d1b9522e6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1be211d8da40bc0ae8719c6663307bfc987b1d6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1c5771e96c9d5524fb6e606f5b356d08c40eb194` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x258f7e97149afd7d7f84fa63b10e4a3f0c38b788` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2da78553d30616a420043d5b143d3bf870e444c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2f686751b19a9d91cc3d57d90150bc767f050066` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2f80199cf4bffbdae8933f74ced3327864cb3e7e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x351447fc9bd20a917783e159e61e86edda0b0187` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3db923fbab372ab8c796fef9bb8341cdb37cb9ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x44d097113dbead613fde74b387081fb3b547c54f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-257551 | `0x4c16dd6e9b402ea4fb5be647be2f49e3d59bb08a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5629ce74ddcad7cc72b3ea30444da7172ad851d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x67468e6c4418d58b1b41bc0a795bacb824f70792` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6e9aed2c4cf5ed7e8ab851435225fe1601a1bc56` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-257552 | `0x769728b5298445ba2828c0f3f5384227fbf590c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x860d841bfd1cfef72a14b2b734005799f07dc7ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x87e6a4c413ecfdec3e6ae22b2f9680da6037e970` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8dacffa7f69ce572992132697252e16254225d38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x93395129bd3fcf49d95730d3c2737c17990ff328` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-257553 | `0x93a5943e3091e94aa16f0813bb6901c3e9d4eb98` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-257554 | `0x9e233dd6a90678baacd89c05ce5c48f43fcc106e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-257555 | `0xb873921b1add94ea47bf983b060ce812e97873df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbd87bef520f8cec45d73b0413b6cbb8b061736d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbe7d5968296843756109d42946d01195320922ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdcd6a4b673b1c409e4b67f787935865b161232d3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-257556 | `0xe7b0ce0526fbe3969035a145c9e9691d4d9d216c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xeae23c766a1b25481025a02b2d82a1db3fc130ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf78031cbca409f2fb6876bdfdbc1b2df24cf9bef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0769fd68dfb93167989c6f7254cd0d766fb2841f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0be808376ecb75a5cf9bb6d237d16cd37893d904` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x10c19390e1ac2fd6d0c3643a2320b0aba38e5baa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x126555dd55a39328f69400d6ae4f782bd4c34abb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x145d82bca93cca2ae057d1c6f26245d1b9522e6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1b9d177ccdea3c79b6c8f40761fc8dc9d0500eaa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1be211d8da40bc0ae8719c6663307bfc987b1d6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1c5771e96c9d5524fb6e606f5b356d08c40eb194` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x281bd3a3f96ae7c96049493a7ba9449df2c5b0fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x438a2b1c6c715fb1b051c04ca65755560d8b8d43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x752dc00aba9c930c84ac81d288db5e2a02afe633` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x97a32b4f8486735075f2cbecff64208fbf2e610a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xab235da7f52d35fb4551afba11bfb56e18774a65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc5017be80b4446988e8686168396289a9a62668e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdcd6a4b673b1c409e4b67f787935865b161232d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xeae23c766a1b25481025a02b2d82a1db3fc130ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x15a6368682c0da4367e312148e4a750b0e2e769d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x52e20ae3762bd73d8f0f539f2f6c895edf8e2eaf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x57bffa72db682f7eb6c132dae03ff36bbeb0c459` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xb45e53277a7e0f1d35f2a77160e91e25507f1763` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xe43ca1dee3f0fc1e2df73a0745674545f11a59f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x0389879e0156033202c44bf784ac18fc02edee4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x039e87ab90205f9d87c5b40d4b28e2be45da4a20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x1400fefd6f9b897970f00df6237ff2b8b27dc82c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x1f2fcf1d036b375b384012e61d3aa33f8c256bbe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x33d91116e0370970444b0281ab117e161febfcdd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x57bffa72db682f7eb6c132dae03ff36bbeb0c459` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x734583f62bb6ace3c9ba9bd5a53143ca2ce8c55a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x93c31c9c729a249b2877f7699e178f4720407733` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xb46e319390de313b8cc95ea5aa30c7bbfd79da94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xca6fe749878841b96f620ec79638b13daad3d320` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xcdbcd51a5e8728e0af4895ce5771b7d17ff71959` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xe43ca1dee3f0fc1e2df73a0745674545f11a59f5` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 600
- Live contracts: 0
- Unknown liveness contracts: 600
- Source-verified contracts: 250
- Currently scope-matched contracts retained as-is: 0
- Classification counts: candidate review=75, contamination review=24, source verified unclassified=151, unverified unclassified=350

Showing first 200 of 600 contracts. The complete deployer expansion list is in `brief.json`.

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| candidate review | NFTDescriptor<br>`0x67468e6c4418d58b1b41bc0a795bacb824f70792` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| candidate review | NonfungibleTokenPositionDescriptor<br>`0x1c4369df5732ccf317fef479b26a56e176b18abb` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| candidate review | SushiXSwap<br>`0x011e52e4e40cf9498c79273329e8827b21e2e581` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| candidate review | ConstantProductPoolFactory<br>`0x0769fd68dfb93167989c6f7254cd0d766fb2841f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| candidate review | ConstantProductPoolFactory<br>`0x93395129bd3fcf49d95730d3c2737c17990ff328` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| candidate review | ConstantProductPoolFactoryHelper<br>`0xf4d73326c13a4fc5fd7a064217e12780e9bd62c3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| candidate review | NFTDescriptor<br>`0xb3115b68e69886dc9dbcc674db35e73cd91e9053` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| candidate review | NonfungibleTokenPositionDescriptor<br>`0x54ea633385c52263846b37409649b5b8fa5ed402` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| candidate review | SushiXSwap<br>`0x044b75f554b886a065b9567891e45c79542d7357` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| candidate review | SushiXSwap<br>`0x1838b053e0223f05fb768fa79aa07df3f0f27480` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| candidate review | SushiXSwap<br>`0x2214a42d8e2a1d20635c2cb0664422c528b6a432` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| candidate review | SushiXSwap<br>`0x2c8c987c4777ab740d20cb581f5d381be95a4a4a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| candidate review | SushiXSwap<br>`0x3d2f8ae0344d38525d2ae96ab750b83480c0844f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| candidate review | SushiXSwap<br>`0x67468e6c4418d58b1b41bc0a795bacb824f70792` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| candidate review | SushiXSwap<br>`0x6c5a9e667297b409b5dd9850b38889ab84110c2a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| candidate review | SushiXSwap<br>`0x7cf167390e2526bc03f3cf6852a7af1cec3e243d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| candidate review | SushiXSwap<br>`0x843d0aad40295f2198ef528ad747cdf6ab9000e4` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| candidate review | SushiXSwap<br>`0x8b396ddf906d552b2f98a8e7d743dd58cd0d920f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| candidate review | SushiXSwap<br>`0x8f54301f315c56c112d492d9443047d4745dbe9e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| candidate review | SushiXSwap<br>`0x97a32b4f8486735075f2cbecff64208fbf2e610a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| candidate review | SushiXSwap<br>`0xd045d27c1f7e7f770a807b0a85d8e3f852e0f2be` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| candidate review | SushiXSwap<br>`0xd08b5f3e89f1e2d6b067e0a0cbdb094e6e41e77c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| candidate review | NFTDescriptor<br>`0x7770978eed668a3ba661d51a773d3a992fc9ddcb` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| candidate review | NonfungibleTokenPositionDescriptor<br>`0x7af71799c40f952237eaa4d81a77c1af49125113` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| candidate review | SushiXSwap<br>`0x7a4af156379f512de147ed3b96393047226d923f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| candidate review | NFTDescriptor<br>`0x2f686751b19a9d91cc3d57d90150bc767f050066` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| candidate review | NonfungibleTokenPositionDescriptor<br>`0xbe811a0d44e2553d25d11cb8dc0d3f0d0e6430e6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| candidate review | ConstantProductPoolFactory<br>`0x05689fcfee31fce4a67fbc7cab13e74f80a4e288` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| candidate review | ConstantProductPoolFactory<br>`0x1be211d8da40bc0ae8719c6663307bfc987b1d6c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| candidate review | ConstantProductPoolFactory<br>`0x28890e3c0aa9b4b48b1a716f46c9abc9b12abfab` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| candidate review | ConstantProductPoolFactory<br>`0x7603a35af5cf10b113f167d424eb75bb7062c8ce` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| candidate review | ConstantProductPoolFactory<br>`0xefacaff817572913738ffc530e83e56cccf78953` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| candidate review | ConstantProductPoolFactoryHelper<br>`0x1c5771e96c9d5524fb6e606f5b356d08c40eb194` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| candidate review | ConstantProductPoolFactoryHelper<br>`0x9b3ff703fa9c8b467f5886d7b61e61ba07a9b51c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| candidate review | ConstantProductPoolFactoryHelper<br>`0xdcd6a4b673b1c409e4b67f787935865b161232d3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| candidate review | NFTDescriptor<br>`0x5a2b5d1bb4c2c460a6d748c202e7fede016812c7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| candidate review | NonfungibleTokenPositionDescriptor<br>`0x8c990a53e3fc5e4db1404bab33c6dfaceabffecc` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| candidate review | SushiXSwap<br>`0x2214a42d8e2a1d20635c2cb0664422c528b6a432` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| candidate review | SushiXSwap<br>`0xd08b5f3e89f1e2d6b067e0a0cbdb094e6e41e77c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| candidate review | NFTDescriptor<br>`0xcdbcd51a5e8728e0af4895ce5771b7d17ff71959` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x69aea8e393e14945ec22f33b422e7269967e6327` |
| candidate review | NonfungibleTokenPositionDescriptor<br>`0x57bffa72db682f7eb6c132dae03ff36bbeb0c459` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x69aea8e393e14945ec22f33b422e7269967e6327` |
| candidate review | NonfungibleTokenPositionDescriptor<br>`0x7a4af156379f512de147ed3b96393047226d923f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| candidate review | ConstantProductPoolFactory<br>`0xc79ae87e9f55761c08e346b98dddf070c9872787` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| candidate review | ConstantProductPoolFactoryHelper<br>`0x827179dd56d07a7eea32e3873493835da2866976` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| candidate review | NFTDescriptor<br>`0x0367a647a68f304f2a6e453c25033a4249d7f2c6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| candidate review | NonfungibleTokenPositionDescriptor<br>`0x96e04591579f298681361c6122dc4ef405c19385` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| candidate review | SushiXSwap<br>`0x1c4369df5732ccf317fef479b26a56e176b18abb` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| candidate review | SushiXSwap<br>`0x3d2f8ae0344d38525d2ae96ab750b83480c0844f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| candidate review | SushiXSwap<br>`0x53b08dbd70327b7ba3b7886fc9987bc985d27262` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| candidate review | SushiXSwap<br>`0x7a4af156379f512de147ed3b96393047226d923f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| candidate review | SushiXSwap<br>`0x843d0aad40295f2198ef528ad747cdf6ab9000e4` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| candidate review | SushiXSwap<br>`0x8fcad570a448d350bbb04ff204ca1f0ca85075cf` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| candidate review | SushiXSwap<br>`0xd08b5f3e89f1e2d6b067e0a0cbdb094e6e41e77c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| candidate review | BoringHelperV1<br>`0xd18ca07a599bf5ebb9b7327871ad682f0b660748` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xeda2f39d1fa6c7e3efdfd28ec8a38e808cb062e7` |
| candidate review | ChainlinkOracleV1<br>`0x8f2cc3376078568a04ebc600ae5f0a036dbfd812` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xeda2f39d1fa6c7e3efdfd28ec8a38e808cb062e7` |
| candidate review | ChainlinkOracleV2<br>`0x43198b6fa5d89b88d2e072fa4841724571de5a59` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xeda2f39d1fa6c7e3efdfd28ec8a38e808cb062e7` |
| candidate review | ConstantProductPoolFactory<br>`0xb84a043bc4fca97b7a74ed7daab1bf12a8df929f` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| candidate review | Crowdsale<br>`0x8dacffa7f69ce572992132697252e16254225d38` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| candidate review | KashiPairMediumRiskV1<br>`0x513037395fa0c9c35e41f89189cedfe3bd42fadb` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xeda2f39d1fa6c7e3efdfd28ec8a38e808cb062e7` |
| candidate review | MISOFarmFactory<br>`0x351447fc9bd20a917783e159e61e86edda0b0187` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| candidate review | MISOMarket<br>`0x7603a35af5cf10b113f167d424eb75bb7062c8ce` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| candidate review | MISOTokenFactory<br>`0x9b3ff703fa9c8b467f5886d7b61e61ba07a9b51c` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| candidate review | NFTDescriptor<br>`0x7d222c52983690678e847cd063535f328875f463` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| candidate review | NonfungibleTokenPositionDescriptor<br>`0xc040f84cf7046409f92d578ef9040fe45e6ef4be` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| candidate review | PointList<br>`0xbe811a0d44e2553d25d11cb8dc0d3f0d0e6430e6` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| candidate review | PostAuctionLauncher<br>`0x1e9b24073183d5c6b7ae5fb4b8f0b1dd83fdc77a` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| candidate review | StablePoolFactory<br>`0x7770978eed668a3ba661d51a773d3a992fc9ddcb` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| candidate review | SushiSwapSwapperV1<br>`0x062eee8b38ab5e8ee3bc58ce505939db53e63785` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xeda2f39d1fa6c7e3efdfd28ec8a38e808cb062e7` |
| candidate review | SushiXSwap<br>`0x2c8c987c4777ab740d20cb581f5d381be95a4a4a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| candidate review | SushiXSwap<br>`0x5629ce74ddcad7cc72b3ea30444da7172ad851d9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| candidate review | SushiXSwap<br>`0x9e4791ad13f14783c7b2a6a7bd8d6ddd1dc95847` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| candidate review | SushiXSwap<br>`0xbbde1d67297329148fe1ed5e6b00114842728e65` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| candidate review | NFTDescriptor<br>`0x1f2fcf1d036b375b384012e61d3aa33f8c256bbe` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x69aea8e393e14945ec22f33b422e7269967e6327` |
| candidate review | NonfungibleTokenPositionDescriptor<br>`0x734583f62bb6ace3c9ba9bd5a53143ca2ce8c55a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x69aea8e393e14945ec22f33b422e7269967e6327` |
| candidate review | NonfungibleTokenPositionDescriptor<br>`0xb46e319390de313b8cc95ea5aa30c7bbfd79da94` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x69aea8e393e14945ec22f33b422e7269967e6327` |
| contamination review | AuctionCreation<br>`0x7603a35af5cf10b113f167d424eb75bb7062c8ce` | non_address_book | unknown | unknown | verified | n/a | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| contamination review | BoringHelperV1<br>`0x11ca5375adafd6205e41131a4409f182677996e6` | non_address_book | unknown | unknown | verified | n/a | `0xa507e5eb062e6b51d2cdfeab6173bd8fe1624577` |
| contamination review | ListFactory<br>`0x2f686751b19a9d91cc3d57d90150bc767f050066` | non_address_book | unknown | unknown | verified | n/a | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| contamination review | MISOHelper<br>`0x05689fcfee31fce4a67fbc7cab13e74f80a4e288` | non_address_book | unknown | unknown | verified | n/a | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| contamination review | MISOLauncher<br>`0xaa26771d497814e81d305c511efbb3ced90bf5bd` | non_address_book | unknown | unknown | verified | n/a | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| contamination review | MISOMarket<br>`0x281bd3a3f96ae7c96049493a7ba9449df2c5b0fe` | non_address_book | unknown | unknown | verified | n/a | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| contamination review | MISOTokenFactory<br>`0x1be211d8da40bc0ae8719c6663307bfc987b1d6c` | non_address_book | unknown | unknown | verified | n/a | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| contamination review | PeggedOracleV1<br>`0x6cbfbb38498df0e1e7a4506593cdb02db9001564` | non_address_book | unknown | unknown | verified | n/a | `0xa507e5eb062e6b51d2cdfeab6173bd8fe1624577` |
| contamination review | RouteProcessor2<br>`0x044b75f554b886a065b9567891e45c79542d7357` | non_address_book | unknown | unknown | verified | n/a | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| contamination review | SimpleSLPTWAP0OracleV1<br>`0x66f03b0d30838a3fee971928627ea6f59b236065` | non_address_book | unknown | unknown | verified | n/a | `0xa507e5eb062e6b51d2cdfeab6173bd8fe1624577` |
| contamination review | SimpleSLPTWAP1OracleV1<br>`0x0d51b575591f8f74a2763ade75d3cdcf6789266f` | non_address_book | unknown | unknown | verified | n/a | `0xa507e5eb062e6b51d2cdfeab6173bd8fe1624577` |
| contamination review | GasEstimator<br>`0x630be2985674d31920babb4f96657960f131e7b1` | non_address_book | unknown | unknown | verified | n/a | `0xe91b49a652671aef1b9416a2da6994dbdde23054` |
| contamination review | SquidAdapter<br>`0xbf3b71decbcefabb3210b9d8f18ec22e0556f5f0` | non_address_book | unknown | unknown | verified | n/a | `0xe91b49a652671aef1b9416a2da6994dbdde23054` |
| contamination review | TickLens<br>`0x0367a647a68f304f2a6e453c25033a4249d7f2c6` | non_address_book | unknown | unknown | verified | n/a | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| contamination review | OwlswapFactory<br>`0x126555dd55a39328f69400d6ae4f782bd4c34abb` | non_address_book | unknown | unknown | verified | n/a | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| contamination review | ComplexRewarderTime<br>`0x4864984234195a1a97fba52038e3ad61a1dd16e4` | non_address_book | unknown | unknown | verified | n/a | `0x8f54c8c2df62c94772ac14ccfc85603742976312` |
| contamination review | RouteProcessor<br>`0x0769fd68dfb93167989c6f7254cd0d766fb2841f` | non_address_book | unknown | unknown | verified | n/a | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| contamination review | SushiRoll<br>`0x0053957e18a0994d3526cf879a4ca7be88e8936a` | non_address_book | unknown | unknown | verified | n/a | `0xf33ddb8eda6882eb02e5a74551827d3373838853` |
| contamination review | SushiSwapMultiSwapper<br>`0x73be093b84c773fe8ee0f76ddc0829e45c215415` | non_address_book | unknown | unknown | verified | n/a | `0xf33ddb8eda6882eb02e5a74551827d3373838853` |
| contamination review | WethMaker<br>`0x1b7b944fac5cce2a1ee8b63baa47d31bcbe34709` | non_address_book | unknown | unknown | verified | n/a | `0x69aea8e393e14945ec22f33b422e7269967e6327` |
| contamination review | FeeOnTransferDetector<br>`0x91934e488809be1d03646c035f45c8d8947d9885` | non_address_book | unknown | unknown | verified | n/a | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| contamination review | RouteProcessor<br>`0x9c6522117e2ed1fe5bdb72bb0ed5e3f2bde7dbe0` | non_address_book | unknown | unknown | verified | n/a | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| contamination review | StablePoolFactory<br>`0xc2fb256aba36852dccea92181ec6b355f09a0288` | non_address_book | unknown | unknown | verified | n/a | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| contamination review | MultiSigWalletWithDailyLimit<br>`0xa10d3d1859c31caa80f38f9bd07037a49075b8eb` | non_address_book | unknown | unknown | verified | n/a | `0xeda2f39d1fa6c7e3efdfd28ec8a38e808cb062e7` |
| source verified unclassified | BatchAuction<br>`0x258f7e97149afd7d7f84fa63b10e4a3f0c38b788` | non_address_book | unknown | unknown | verified | n/a | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| source verified unclassified | Crowdsale<br>`0xf60e5f4a44a510742457d8064ffd360b12d8d9af` | non_address_book | unknown | unknown | verified | n/a | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| source verified unclassified | DutchAuction<br>`0x1c5771e96c9d5524fb6e606f5b356d08c40eb194` | non_address_book | unknown | unknown | verified | n/a | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| source verified unclassified | FixedToken<br>`0x80c7dd17b01855a6d2347444a0fcc36136a314de` | non_address_book | unknown | unknown | verified | n/a | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| source verified unclassified | HyperbolicAuction<br>`0x8dacffa7f69ce572992132697252e16254225d38` | non_address_book | unknown | unknown | verified | n/a | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| source verified unclassified | KashiPairMediumRiskV1<br>`0x74a81cb5b6996d9347b864b9a1492a6509e51e65` | non_address_book | unknown | unknown | verified | n/a | `0xa507e5eb062e6b51d2cdfeab6173bd8fe1624577` |
| source verified unclassified | MintableToken<br>`0xf4d73326c13a4fc5fd7a064217e12780e9bd62c3` | non_address_book | unknown | unknown | verified | n/a | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| source verified unclassified | MISOAccessControls<br>`0xc35dadb65012ec5796536bd9864ed8773abc74c4` | non_address_book | unknown | unknown | verified | n/a | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| source verified unclassified | MISOFarmFactory<br>`0x438a2b1c6c715fb1b051c04ca65755560d8b8d43` | non_address_book | unknown | unknown | verified | n/a | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| source verified unclassified | MISOMasterChef<br>`0x120140d0c1ebc938befc84840575ecdc5fe55afe` | non_address_book | unknown | unknown | verified | n/a | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| source verified unclassified | PointList<br>`0xf78031cbca409f2fb6876bdfdbc1b2df24cf9bef` | non_address_book | unknown | unknown | verified | n/a | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| source verified unclassified | PostAuctionLauncher<br>`0xab235da7f52d35fb4551afba11bfb56e18774a65` | non_address_book | unknown | unknown | verified | n/a | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| source verified unclassified | RouteProcessor<br>`0x7af71799c40f952237eaa4d81a77c1af49125113` | non_address_book | unknown | unknown | verified | n/a | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| source verified unclassified | RouteProcessor<br>`0xf70c086618dcf2b1a461311275e00d6b722ef914` | non_address_book | unknown | unknown | verified | n/a | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| source verified unclassified | RouteProcessor3<br>`0x429532089bdb3db4f3e6bd707d1a13784dbd366a` | non_address_book | unknown | unknown | verified | n/a | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| source verified unclassified | RouteProcessor3<br>`0xf0e1f962e3e6d8e2af8190b2798c1b4f018fe48d` | non_address_book | unknown | unknown | verified | n/a | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| source verified unclassified | RouteProcessor3_1<br>`0x8516944e89f296eb6473d79aed1ba12088016c9e` | non_address_book | unknown | unknown | verified | n/a | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| source verified unclassified | RouteProcessor3_1<br>`0xf0cbce1942a68beb3d1b73f0dd86c8dcc363ef49` | non_address_book | unknown | unknown | verified | n/a | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| source verified unclassified | SushiSwapSwapperV1<br>`0x1766733112408b95239ad1951925567cb1203084` | non_address_book | unknown | unknown | verified | n/a | `0xa507e5eb062e6b51d2cdfeab6173bd8fe1624577` |
| source verified unclassified | SushiToken<br>`0x0be808376ecb75a5cf9bb6d237d16cd37893d904` | non_address_book | unknown | unknown | verified | n/a | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| source verified unclassified | SushiXSwapV2<br>`0x54ea633385c52263846b37409649b5b8fa5ed402` | non_address_book | unknown | unknown | verified | n/a | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| source verified unclassified | SushiXSwapV2<br>`0xb3115b68e69886dc9dbcc674db35e73cd91e9053` | non_address_book | unknown | unknown | verified | n/a | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| source verified unclassified | SushiXSwapV2<br>`0xd9988b4b5bbc53a794240496cfa9bf5b1f8e0523` | non_address_book | unknown | unknown | verified | n/a | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| source verified unclassified | TickLens<br>`0xfb70ad5a200d784e7901230e6875d91d5fa6b68c` | non_address_book | unknown | unknown | verified | n/a | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| source verified unclassified | MasterDeployer<br>`0xcaabdd9cf4b61813d4a52f980d6bc1b713fe66f5` | non_address_book | unknown | unknown | verified | n/a | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| source verified unclassified | RouteProcessor<br>`0x96e04591579f298681361c6122dc4ef405c19385` | non_address_book | unknown | unknown | verified | n/a | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| source verified unclassified | RouteProcessor<br>`0xd9988b4b5bbc53a794240496cfa9bf5b1f8e0523` | non_address_book | unknown | unknown | verified | n/a | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| source verified unclassified | RouteProcessor2<br>`0xf0cbce1942a68beb3d1b73f0dd86c8dcc363ef49` | non_address_book | unknown | unknown | verified | n/a | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| source verified unclassified | RouteProcessor3_2<br>`0xeb94eca012ec0bbb254722fdda2ce7475875a52b` | non_address_book | unknown | unknown | verified | n/a | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| source verified unclassified | StablePoolFactory<br>`0xc79ae87e9f55761c08e346b98dddf070c9872787` | non_address_book | unknown | unknown | verified | n/a | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| source verified unclassified | SushiXSwap<br>`0x7a4af156379f512de147ed3b96393047226d923f` | non_address_book | unknown | unknown | verified | n/a | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| source verified unclassified | SushiXSwapV2<br>`0x804b526e5bf4349819fe2db65349d0825870f8ee` | non_address_book | unknown | unknown | verified | n/a | `0xe91b49a652671aef1b9416a2da6994dbdde23054` |
| source verified unclassified | TridentRouter<br>`0x0be808376ecb75a5cf9bb6d237d16cd37893d904` | non_address_book | unknown | unknown | verified | n/a | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| source verified unclassified | TridentSushiRollCP<br>`0x1be211d8da40bc0ae8719c6663307bfc987b1d6c` | non_address_book | unknown | unknown | verified | n/a | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| source verified unclassified | BoringHelperV1<br>`0x11ca5375adafd6205e41131a4409f182677996e6` | non_address_book | unknown | unknown | verified | n/a | `0xa507e5eb062e6b51d2cdfeab6173bd8fe1624577` |
| source verified unclassified | KashiPairMediumRiskV1<br>`0x74a81cb5b6996d9347b864b9a1492a6509e51e65` | non_address_book | unknown | unknown | verified | n/a | `0xa507e5eb062e6b51d2cdfeab6173bd8fe1624577` |
| source verified unclassified | PeggedOracleV1<br>`0x6cbfbb38498df0e1e7a4506593cdb02db9001564` | non_address_book | unknown | unknown | verified | n/a | `0xa507e5eb062e6b51d2cdfeab6173bd8fe1624577` |
| source verified unclassified | RouteProcessor<br>`0x7cf167390e2526bc03f3cf6852a7af1cec3e243d` | non_address_book | unknown | unknown | verified | n/a | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| source verified unclassified | RouteProcessor2<br>`0xd75f5369724b513b497101fb15211160c1d96550` | non_address_book | unknown | unknown | verified | n/a | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| source verified unclassified | RouteProcessor3<br>`0x400d75dab26bbc18d163aea3e83d9ea68f6c1804` | non_address_book | unknown | unknown | verified | n/a | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| source verified unclassified | RouteProcessor3_1<br>`0xbaceb8ec6b9355dfc0269c18bac9d6e2bdc29c4f` | non_address_book | unknown | unknown | verified | n/a | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| source verified unclassified | RouteProcessor3_2<br>`0xd36990d74b947ec4ad9f52fe3d49d14addb51e44` | non_address_book | unknown | unknown | verified | n/a | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| source verified unclassified | SimpleSLPTWAP0OracleV1<br>`0x66f03b0d30838a3fee971928627ea6f59b236065` | non_address_book | unknown | unknown | verified | n/a | `0xa507e5eb062e6b51d2cdfeab6173bd8fe1624577` |
| source verified unclassified | SimpleSLPTWAP1OracleV1<br>`0x0d51b575591f8f74a2763ade75d3cdcf6789266f` | non_address_book | unknown | unknown | verified | n/a | `0xa507e5eb062e6b51d2cdfeab6173bd8fe1624577` |
| source verified unclassified | SushiSwapSwapperV1<br>`0x1766733112408b95239ad1951925567cb1203084` | non_address_book | unknown | unknown | verified | n/a | `0xa507e5eb062e6b51d2cdfeab6173bd8fe1624577` |
| source verified unclassified | TickLens<br>`0x10c19390e1ac2fd6d0c3643a2320b0aba38e5baa` | non_address_book | unknown | unknown | verified | n/a | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| source verified unclassified | BentoBoxV1<br>`0xed1a5b476ff3618e68dc0827fe33116317e30859` | non_address_book | unknown | unknown | verified | n/a | `0x8f54c8c2df62c94772ac14ccfc85603742976312` |
| source verified unclassified | ComplexRewarderTime<br>`0x84562ce1a5f3a4a957a5a94ed0be05ba73fd2665` | non_address_book | unknown | unknown | verified | n/a | `0x8f54c8c2df62c94772ac14ccfc85603742976312` |
| source verified unclassified | KashiPairMediumRiskV1<br>`0x7a6da9903d0a481f40b8336c1463487bc8c0407e` | non_address_book | unknown | unknown | verified | n/a | `0x8f54c8c2df62c94772ac14ccfc85603742976312` |
| source verified unclassified | Multicall2<br>`0x67da5f2ffaddff067ab9d5f025f8810634d84287` | non_address_book | unknown | unknown | verified | n/a | `0x8f54c8c2df62c94772ac14ccfc85603742976312` |
| source verified unclassified | RouteProcessor<br>`0x1e9b24073183d5c6b7ae5fb4b8f0b1dd83fdc77a` | non_address_book | unknown | unknown | verified | n/a | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| source verified unclassified | RouteProcessor2<br>`0x145d82bca93cca2ae057d1c6f26245d1b9522e6f` | non_address_book | unknown | unknown | verified | n/a | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| source verified unclassified | RouteProcessor3<br>`0xbbde1d67297329148fe1ed5e6b00114842728e65` | non_address_book | unknown | unknown | verified | n/a | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| source verified unclassified | RouteProcessor3_2<br>`0x7a4af156379f512de147ed3b96393047226d923f` | non_address_book | unknown | unknown | verified | n/a | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| source verified unclassified | TickLens<br>`0xaa26771d497814e81d305c511efbb3ced90bf5bd` | non_address_book | unknown | unknown | verified | n/a | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| source verified unclassified | BatchAuction<br>`0x7af71799c40f952237eaa4d81a77c1af49125113` | non_address_book | unknown | unknown | verified | n/a | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| source verified unclassified | BoringHelperV1<br>`0x2dd1ab1956bed7c2d938d0d7378c22fd01135a5e` | non_address_book | unknown | unknown | verified | n/a | `0xf33ddb8eda6882eb02e5a74551827d3373838853` |
| source verified unclassified | BoringHelperV1<br>`0xb23804ccc524d408d0b0d35b0aa1ce7de172f821` | non_address_book | unknown | unknown | verified | n/a | `0xf33ddb8eda6882eb02e5a74551827d3373838853` |
| source verified unclassified | ComplexRewarderTime<br>`0xa3378ca78633b3b9b2255eaa26748770211163ae` | non_address_book | unknown | unknown | verified | n/a | `0xf33ddb8eda6882eb02e5a74551827d3373838853` |
| source verified unclassified | Crowdsale<br>`0xf70c086618dcf2b1a461311275e00d6b722ef914` | non_address_book | unknown | unknown | verified | n/a | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| source verified unclassified | DutchAuction<br>`0x10c19390e1ac2fd6d0c3643a2320b0aba38e5baa` | non_address_book | unknown | unknown | verified | n/a | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| source verified unclassified | FixedToken<br>`0x2f255d3f3c0a3726c6c99e74566c4b18e36e3ce6` | non_address_book | unknown | unknown | verified | n/a | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| source verified unclassified | HyperbolicAuction<br>`0xd75f5369724b513b497101fb15211160c1d96550` | non_address_book | unknown | unknown | verified | n/a | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| source verified unclassified | KashiPairMediumRiskV1<br>`0xb527c5295c4bc348cbb3a2e96b2494fd292075a7` | non_address_book | unknown | unknown | verified | n/a | `0xf33ddb8eda6882eb02e5a74551827d3373838853` |
| source verified unclassified | ListFactory<br>`0xa4c0363edd74f55ac8f316a3bf447f8aa09607d3` | non_address_book | unknown | unknown | verified | n/a | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| source verified unclassified | MasterDeployer<br>`0x0be808376ecb75a5cf9bb6d237d16cd37893d904` | non_address_book | unknown | unknown | verified | n/a | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| source verified unclassified | MasterDeployer<br>`0x145d82bca93cca2ae057d1c6f26245d1b9522e6f` | non_address_book | unknown | unknown | verified | n/a | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| source verified unclassified | MasterDeployer<br>`0x2f28678432edf5243955054cc04a32b18ca63c97` | non_address_book | unknown | unknown | verified | n/a | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| source verified unclassified | MasterDeployer<br>`0x351447fc9bd20a917783e159e61e86edda0b0187` | non_address_book | unknown | unknown | verified | n/a | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| source verified unclassified | MasterDeployer<br>`0x752dc00aba9c930c84ac81d288db5e2a02afe633` | non_address_book | unknown | unknown | verified | n/a | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| source verified unclassified | MasterDeployer<br>`0xdb0d6ec83c68191f8c33c9f71fe85615c40c1ef7` | non_address_book | unknown | unknown | verified | n/a | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| source verified unclassified | MasterDeployer<br>`0xf4d73326c13a4fc5fd7a064217e12780e9bd62c3` | non_address_book | unknown | unknown | verified | n/a | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| source verified unclassified | MasterDeployer<br>`0xf78031cbca409f2fb6876bdfdbc1b2df24cf9bef` | non_address_book | unknown | unknown | verified | n/a | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| source verified unclassified | MintableToken<br>`0xbbde1d67297329148fe1ed5e6b00114842728e65` | non_address_book | unknown | unknown | verified | n/a | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| source verified unclassified | MISOAccessControls<br>`0x6b2a3ff504798886862ca5ce501e080947a506a2` | non_address_book | unknown | unknown | verified | n/a | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| source verified unclassified | MISOFarmFactory<br>`0xddc1b5920723f774d2ec2c3c9355251a20819776` | non_address_book | unknown | unknown | verified | n/a | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| source verified unclassified | MISOHelper<br>`0xd36990d74b947ec4ad9f52fe3d49d14addb51e44` | non_address_book | unknown | unknown | verified | n/a | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| source verified unclassified | MISOLauncher<br>`0xb84a043bc4fca97b7a74ed7daab1bf12a8df929f` | non_address_book | unknown | unknown | verified | n/a | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| source verified unclassified | MISOMarket<br>`0x3e603c14af37ebdad31709c4f848fc6ad5bec715` | non_address_book | unknown | unknown | verified | n/a | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| source verified unclassified | MISOMasterChef<br>`0x18350b048ab366ed601ffdbc669110ecb36016f3` | non_address_book | unknown | unknown | verified | n/a | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| source verified unclassified | MISOTokenFactory<br>`0xd045d27c1f7e7f770a807b0a85d8e3f852e0f2be` | non_address_book | unknown | unknown | verified | n/a | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| source verified unclassified | PointList<br>`0x2c8c987c4777ab740d20cb581f5d381be95a4a4a` | non_address_book | unknown | unknown | verified | n/a | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| source verified unclassified | PostAuctionLauncher<br>`0x97a32b4f8486735075f2cbecff64208fbf2e610a` | non_address_book | unknown | unknown | verified | n/a | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| source verified unclassified | RouteProcessor<br>`0x0dc8e47a1196bcb590485ee8bf832c5c68a52f4b` | non_address_book | unknown | unknown | verified | n/a | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| source verified unclassified | RouteProcessor<br>`0x1a52afdd24994704e61fec49924d6c5388ae47fd` | non_address_book | unknown | unknown | verified | n/a | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| source verified unclassified | RouteProcessor<br>`0x7cd29170e8fa3fe5204624dede5a66f4e8161741` | non_address_book | unknown | unknown | verified | n/a | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| source verified unclassified | RouteProcessor2<br>`0x5097cbb61d3c75907656dc4e3bba892ff136649a` | non_address_book | unknown | unknown | verified | n/a | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| source verified unclassified | RouteProcessor3<br>`0x0a6e511fe663827b9ca7e2d2542b20b37fc217a6` | non_address_book | unknown | unknown | verified | n/a | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| source verified unclassified | RouteProcessor3_1<br>`0x9cfeadcc38377283adb944205c5238d04d4dd8a1` | non_address_book | unknown | unknown | verified | n/a | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| source verified unclassified | RouteProcessor4<br>`0xb45e53277a7e0f1d35f2a77160e91e25507f1763` | non_address_book | unknown | unknown | verified | n/a | `0x69aea8e393e14945ec22f33b422e7269967e6327` |
| source verified unclassified | StablePoolFactory<br>`0x53b08dbd70327b7ba3b7886fc9987bc985d27262` | non_address_book | unknown | unknown | verified | n/a | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| source verified unclassified | StablePoolFactory<br>`0xe52180815c81d7711b83412e53259bed6a3ab70a` | non_address_book | unknown | unknown | verified | n/a | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| source verified unclassified | StablePoolFactory<br>`0xf96149e31c3af9650d209c5fe26a9b06c5bc91d4` | non_address_book | unknown | unknown | verified | n/a | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| source verified unclassified | SushiSwapSwapperV1<br>`0xe9589382130ded5df2397e2fd7a3e9b41dd2701d` | non_address_book | unknown | unknown | verified | n/a | `0xf33ddb8eda6882eb02e5a74551827d3373838853` |
| source verified unclassified | SushiToken<br>`0x7a4af156379f512de147ed3b96393047226d923f` | non_address_book | unknown | unknown | verified | n/a | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| source verified unclassified | TridentRouter<br>`0x438a2b1c6c715fb1b051c04ca65755560d8b8d43` | non_address_book | unknown | unknown | verified | n/a | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| source verified unclassified | TridentRouter<br>`0x67896a1023deae917fe6b99caf749d7db0bfe08a` | non_address_book | unknown | unknown | verified | n/a | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| source verified unclassified | TridentRouter<br>`0xcaabdd9cf4b61813d4a52f980d6bc1b713fe66f5` | non_address_book | unknown | unknown | verified | n/a | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| source verified unclassified | TridentSushiRollCP<br>`0x5629ce74ddcad7cc72b3ea30444da7172ad851d9` | non_address_book | unknown | unknown | verified | n/a | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| source verified unclassified | TridentSushiRollCP<br>`0x93395129bd3fcf49d95730d3c2737c17990ff328` | non_address_book | unknown | unknown | verified | n/a | `0xf87bc5535602077d340806d71f805ea9907a843d` |
| source verified unclassified | TridentSushiRollCP<br>`0xeae23c766a1b25481025a02b2d82a1db3fc130ca` | non_address_book | unknown | unknown | verified | n/a | `0xf87bc5535602077d340806d71f805ea9907a843d` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [PeckShield-Audit-Report-SushiSwap-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-SushiSwap-v1.0.pdf) | PeckShield | Audit | 2020-09 | stale | Direct | n/a | matched | 1 | 0 | 0 | 8 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [13952] PeckShield-Audit-Report-SushiSwap-v1.0.pdf — matched: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| PeckShield-Audit-Report-SushiSwap-v1.0.pdf | Address | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-SushiSwap-v1.0.pdf | GovernorAlpha | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-SushiSwap-v1.0.pdf | MasterChef | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-SushiSwap-v1.0.pdf | Migrator | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-SushiSwap-v1.0.pdf | SushiBar | own contract | SushiBar (selected) `0x8798249c2e607446efb7ad49ec89dd1865ff4272` — deployed 2020-09-05 16:05:56+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-SushiSwap-v1.0.pdf | SushiMaker | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-SushiSwap-v1.0.pdf | SushiToken | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-SushiSwap-v1.0.pdf | Timelock | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-SushiSwap-v1.0.pdf | UniswapV2Pair | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 74 |
| upstream | 6 |
| standard_library | 1 |
| needs_review | 390 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 1 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 8 unmatched
- Matched-own operational status: 1 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: unique_name=1

Fork inheritance lineage and inherited audits are included when available.
