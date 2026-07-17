# Agentic Audit Brief: Sushi

## Export Authority

- Production state: **published scope**
- Raw selected rows: 1 across 1 audit(s)
- Eligible audit results: 1 (1 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Sushi (`sushi`)
- Website: [https://sushi.com/](https://sushi.com/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, arbitrum-nova, avalanche, base, blast, boba, bsc, celo, ethereum, fantom, gnosis, harmony, heco, kava, linea, mantle, metis, moonbeam, moonriver, optimism, polygon, polygon-zkevm, scroll, sonic
- Contract surface: 263 unique implementations (530 raw deployments)
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
- Outside the address book: 233 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 9
- Confirmed-live implementations: 30 of 263 unique; 233 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/81
- Verified + Unaudited implementations: 80
- Verified by bytecode match: 0
- Unverified implementations: 182
- Unique implementations: 263
- Raw deployments: 530
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

### ❓ Unverified (182)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10c19390e1ac2fd6d0c3643a2320b0aba38e5baa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-257528 | `0x12bb166f997146d3d33645146eedbc4a923195d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x19dba5df5383168f760617aadd23322bc5f9ff7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3db923fbab372ab8c796fef9bb8341cdb37cb9ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x400d75dab26bbc18d163aea3e83d9ea68f6c1804` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-257529 | `0x44d097113dbead613fde74b387081fb3b547c54f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-257530 | `0x51b0efa27ff4f29f8315496f01952377d581ce73` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-257531 | `0x53954a6191ad795e331cffdb1b035d389f2ac516` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-257532 | `0x655edce464cc797526600a462a8154650eee4b77` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-257533 | `0x6e3fb8a019e78785e80cea1d413bc3ab650c2449` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d222c52983690678e847cd063535f328875f463` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-257534 | `0x84f4625c3e92b368e403cb002a9bf9bc7a9ae1b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc040f84cf7046409f92d578ef9040fe45e6ef4be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc5017be80b4446988e8686168396289a9a62668e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-257536 | `0xcc12532e95c2a6a4c53af153b9b739a3cc9218a7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-257537 | `0xd0454428ecd868a9ac615125fcbdb5da9027436e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd75f5369724b513b497101fb15211160c1d96550` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xddc1b5920723f774d2ec2c3c9355251a20819776` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-257538 | `0xe7b0ce0526fbe3969035a145c9e9691d4d9d216c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x011e52e4e40cf9498c79273329e8827b21e2e581` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x05689fcfee31fce4a67fbc7cab13e74f80a4e288` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1c5771e96c9d5524fb6e606f5b356d08c40eb194` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x258f7e97149afd7d7f84fa63b10e4a3f0c38b788` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x2f255d3f3c0a3726c6c99e74566c4b18e36e3ce6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x2f686751b19a9d91cc3d57d90150bc767f050066` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x3db923fbab372ab8c796fef9bb8341cdb37cb9ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x438a2b1c6c715fb1b051c04ca65755560d8b8d43` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-257539 | `0x5130f6ce257b8f9bf7fac0a0b519bd588120ed40` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-257540 | `0x55f7c152b0c3cc1cd7479e4858ac07f50d7fcfad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5629ce74ddcad7cc72b3ea30444da7172ad851d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x6b2a3ff504798886862ca5ce501e080947a506a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x827179dd56d07a7eea32e3873493835da2866976` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x8dacffa7f69ce572992132697252e16254225d38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xaa26771d497814e81d305c511efbb3ced90bf5bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xab235da7f52d35fb4551afba11bfb56e18774a65` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-257541 | `0xac2b3f9a13e7273639bcdca55742391cdacc74cb` | ❓ Unverified |
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
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8dacffa7f69ce572992132697252e16254225d38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8fcad570a448d350bbb04ff204ca1f0ca85075cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xaa26771d497814e81d305c511efbb3ced90bf5bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xab235da7f52d35fb4551afba11bfb56e18774a65` | ❓ Unverified |
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
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-257557 | `0x769728b5298445ba2828c0f3f5384227fbf590c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0769fd68dfb93167989c6f7254cd0d766fb2841f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1b02da8cb0d097eb8d57a175b88c7d8b47997506` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-257559 | `0x41c5362adf3a2cf6815454f7633172e7f6c1f834` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-257560 | `0xb32d856cad3d2ef07c94867a800035e37241247c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x011e52e4e40cf9498c79273329e8827b21e2e581` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0bfcd5dd76218bf9e3be8a1055f9e6d27e5745eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x145d82bca93cca2ae057d1c6f26245d1b9522e6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1be211d8da40bc0ae8719c6663307bfc987b1d6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1c5771e96c9d5524fb6e606f5b356d08c40eb194` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x258f7e97149afd7d7f84fa63b10e4a3f0c38b788` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2f686751b19a9d91cc3d57d90150bc767f050066` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x351447fc9bd20a917783e159e61e86edda0b0187` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3db923fbab372ab8c796fef9bb8341cdb37cb9ec` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-257551 | `0x4c16dd6e9b402ea4fb5be647be2f49e3d59bb08a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5629ce74ddcad7cc72b3ea30444da7172ad851d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x67468e6c4418d58b1b41bc0a795bacb824f70792` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6e9aed2c4cf5ed7e8ab851435225fe1601a1bc56` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-257552 | `0x769728b5298445ba2828c0f3f5384227fbf590c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x860d841bfd1cfef72a14b2b734005799f07dc7ed` | ❓ Unverified |
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
| needs_review | 182 |

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
