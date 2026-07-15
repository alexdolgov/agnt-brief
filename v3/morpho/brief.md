# Agentic Audit Brief: Morpho

## Export Authority

- Production state: **published scope**
- Raw selected rows: 54 across 17 audit(s)
- Eligible audit results: 33 (17 matched; 16 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Morpho (`morpho`)
- Website: [https://morpho.org/](https://morpho.org/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, avalanche, base, bsc, celo, cronos, ethereum, fraxtal, gnosis, hyperliquid, ink, kaia, linea, mode, optimism, plasma, polygon, scroll, sei, sepolia, sonic, unichain
- Contract surface: 395 unique implementations (395 raw deployments)
- Coverage basis: 16/30 confirmed own live verified implementations (53.3%); conservative 53.3% with 0 needs-review implementation(s)
- DeFi Llama TVL: $13,812,833,277.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Morpho. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 30 contract row(s) across arbitrum, avalanche, base, bsc, celo, cronos, ethereum, gnosis, hyperliquid, ink, kaia, linea, mode, optimism, plasma, polygon, scroll, sei, sepolia, sonic, unichain. Structural roles: 28 core, 2 supporting. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 30
- Structural roles: core (28), supporting (2)
- Contract kinds: contract (30)
- Detected standards: multicall (7), erc20permit (1), ownable (1)
- Frameworks: openzeppelin (16), solmate (10), permit2 (8), chainlink (1), layerzero (1), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 1

## Fork Analysis

8 of 236 contracts are derived from known codebases. 228 contracts have no detected origin.

### Forked Contracts

**AaveV2MigrationBundler** (`0xb3dcc7...aa8e76`, chain 1)
Origin: singularv (`0xb3dcc7...aa8e76`)
Containment: 100.0% - 28 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**AaveV3MigrationBundler** (`0x98ccb1...2f9bdc`, chain 1)
Origin: morpho (`0x3a0e2e...479558`)
Containment: 88.5% - 23 functions inherited
Centroid audit status: pending_validation

Additions (unaudited):
- aaveV3Repay(address,uint256,uint256)
- aaveV3Withdraw(address,uint256)

Removals (removed from original):
- compoundV3AllowBySig(address,bool,uint256,uint256,uint8,bytes32,bytes32,bool)
- compoundV3Repay(address,uint256)
- compoundV3WithdrawFrom(address,address,uint256)

**AaveV3OptimizerMigrationBundler** (`0x16f38d...6d2f9c`, chain 1)
Origin: singularv (`0xb3dcc7...aa8e76`)
Containment: 82.1% - 23 functions inherited
Centroid audit status: pending_validation

Additions (unaudited):
- aaveV3OptimizerApproveManagerWithSig(bool,uint256,uint256,Signature,bool)
- aaveV3OptimizerRepay(address,uint256)
- aaveV3OptimizerWithdraw(address,uint256,uint256)
- aaveV3OptimizerWithdrawCollateral(address,uint256)

Removals (removed from original):
- aaveV2Repay(address,uint256,uint256)
- aaveV2Withdraw(address,uint256)
- stakeEth(uint256,uint256,address)
- unwrapStEth(uint256)
- wrapStEth(uint256)

**CompoundV2MigrationBundler** (`0x26bf52...8c8647`, chain 1)
Origin: morpho (`0x16f38d...6d2f9c`)
Containment: 85.2% - 23 functions inherited
Centroid audit status: pending_validation

Additions (unaudited):
- compoundV2Redeem(address,uint256)
- compoundV2Repay(address,uint256)
- unwrapNative(uint256)
- wrapNative(uint256)

Removals (removed from original):
- aaveV3OptimizerApproveManagerWithSig(bool,uint256,uint256,Signature,bool)
- aaveV3OptimizerRepay(address,uint256)
- aaveV3OptimizerWithdraw(address,uint256,uint256)
- aaveV3OptimizerWithdrawCollateral(address,uint256)

**CompoundV3MigrationBundler** (`0x3a0e2e...479558`, chain 1)
Origin: morpho (`0x16f38d...6d2f9c`)
Containment: 85.2% - 23 functions inherited
Centroid audit status: pending_validation

Additions (unaudited):
- compoundV3AllowBySig(address,bool,uint256,uint256,uint8,bytes32,bytes32,bool)
- compoundV3Repay(address,uint256)
- compoundV3WithdrawFrom(address,address,uint256)

Removals (removed from original):
- aaveV3OptimizerApproveManagerWithSig(bool,uint256,uint256,Signature,bool)
- aaveV3OptimizerRepay(address,uint256)
- aaveV3OptimizerWithdraw(address,uint256,uint256)
- aaveV3OptimizerWithdrawCollateral(address,uint256)

**EthereumBundler** (`0xa7995f...f55107`, chain 1)
Origin: singularv (`0xa7995f...f55107`)
Containment: 100.0% - 32 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**EthereumBundlerV2** (`0x4095f0...e30077`, chain 1)
Origin: singularv (`0x4095f0...e30077`)
Containment: 100.0% - 33 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**EthereumGeneralAdapter1** (`0x4a6c31...be0ae0`, chain 1)
Origin: singularv (`0x4a6c31...be0ae0`)
Containment: 100.0% - 26 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x3a7bb3...3ad766`, chain 1)
- UnnamedContract (`0x4011dc...a59ca3`, chain 1)
- UnnamedContract (`0x58d97b...69c2b2`, chain 1)
- UnnamedContract (`0x870ac1...ba00bc`, chain 1)
- UnnamedContract (`0xb09e40...07d475`, chain 1)
- UnnamedContract (`0xbbbbbb...eeffcb`, chain 1)
- UnnamedContract (`0xfd32fa...91c75d`, chain 1)
- UnnamedContract (`0x0d68a9...b40658`, chain 10)
- UnnamedContract (`0x1ec408...9dad70`, chain 10)
- UnnamedContract (`0x31f539...92adc5`, chain 10)
- UnnamedContract (`0x3bb6a6...92839a`, chain 10)
- UnnamedContract (`0x6128b6...0870ef`, chain 10)
- UnnamedContract (`0x71b299...2cb434`, chain 10)
- UnnamedContract (`0x79481c...f141f0`, chain 10)
- UnnamedContract (`0x8cd70a...a06ef6`, chain 10)
- UnnamedContract (`0xce95af...64af92`, chain 10)
- UnnamedContract (`0xd1346b...aad32b`, chain 10)
- UnnamedContract (`0xe41aec...a21498`, chain 10)
- UnnamedContract (`0xee9f7c...a00cf3`, chain 10)
- UnnamedContract (`0xfbcd3c...507c05`, chain 10)
- UnnamedContract (`0x05519a...1ed3b4`, chain 25)
- UnnamedContract (`0x1db002...7c0607`, chain 25)
- UnnamedContract (`0x295e0a...e5f0dd`, chain 25)
- UnnamedContract (`0x44b2c8...a785de`, chain 25)
- UnnamedContract (`0x8840f9...11746c`, chain 25)
- UnnamedContract (`0xb1c59f...4ab6bc`, chain 25)
- UnnamedContract (`0xca470c...74d513`, chain 25)
- UnnamedContract (`0xdf9a1d...f7434e`, chain 25)
- UnnamedContract (`0xe39f6b...4fa121`, chain 25)
- UnnamedContract (`0xea67e5...2e9d3a`, chain 25)
- UnnamedContract (`0xfeabef...ca02d5`, chain 25)
- UnnamedContract (`0x16d40b...15bf91`, chain 56)
- UnnamedContract (`0x7112d9...81f979`, chain 56)
- UnnamedContract (`0x842bec...6d0495`, chain 56)
- UnnamedContract (`0x87c936...2ae3a3`, chain 56)
- UnnamedContract (`0x929836...905d72`, chain 56)
- UnnamedContract (`0xbb12b0...852f82`, chain 56)
- UnnamedContract (`0xdf2035...135236`, chain 56)
- UnnamedContract (`0x2ac3ea...d0997f`, chain 100)
- UnnamedContract (`0x6f3313...92270a`, chain 100)
- UnnamedContract (`0x832625...40973b`, chain 100)
- UnnamedContract (`0x8ffd9e...476c32`, chain 100)
- UnnamedContract (`0xae5293...ff05c5`, chain 100)
- UnnamedContract (`0xb74d4d...351c66`, chain 100)
- UnnamedContract (`0xff3623...61bf68`, chain 100)
- UnnamedContract (`0x432695...1f7539`, chain 130)
- UnnamedContract (`0x617f8d...34fa9a`, chain 130)
- UnnamedContract (`0x72cc7a...a57cc4`, chain 130)
- UnnamedContract (`0x7dd857...b58bc3`, chain 130)
- UnnamedContract (`0x8f5ae9...4a140a`, chain 130)
- UnnamedContract (`0x9a13bd...f9c58c`, chain 130)
- UnnamedContract (`0x9a6061...f53f0e`, chain 130)
- UnnamedContract (`0xaa870d...0a59c9`, chain 130)
- UnnamedContract (`0xb0c9a1...38c7c9`, chain 130)
- UnnamedContract (`0xb9130d...41becb`, chain 130)
- UnnamedContract (`0xc11329...7e30a0`, chain 130)
- UnnamedContract (`0xc9b34c...04a0c9`, chain 130)
- UnnamedContract (`0xe9ede3...10bdc0`, chain 130)
- UnnamedContract (`0xf1ab9e...7ad754`, chain 130)
- UnnamedContract (`0x1bf0c2...a25f67`, chain 137)
- UnnamedContract (`0x1ff789...295215`, chain 137)
- UnnamedContract (`0x2d9c3a...8db589`, chain 137)
- UnnamedContract (`0x5f2617...24db8d`, chain 137)
- UnnamedContract (`0xa9c87d...dddc98`, chain 137)
- UnnamedContract (`0xb261b5...1b7047`, chain 137)
- UnnamedContract (`0xb70a43...8ba564`, chain 137)
- UnnamedContract (`0xc0006f...851dd0`, chain 137)
- UnnamedContract (`0xc11a53...4f97cf`, chain 137)
- UnnamedContract (`0xe675a2...fbf0b0`, chain 137)
- UnnamedContract (`0xeb174f...e2888a`, chain 137)
- UnnamedContract (`0xfac15a...5df0d3`, chain 137)
- UnnamedContract (`0xfc5be7...0f0ac9`, chain 137)
- UnnamedContract (`0x0ce9e3...4f12e8`, chain 146)
- UnnamedContract (`0x31d5ae...201eaf`, chain 146)
- UnnamedContract (`0x6cef2e...e59b36`, chain 146)
- UnnamedContract (`0x7da59f...feb86d`, chain 146)
- UnnamedContract (`0xb06f1a...9a9aff`, chain 146)
- UnnamedContract (`0xd6c916...cfa95f`, chain 146)
- UnnamedContract (`0xdefcf2...7c473f`, chain 146)
- UnnamedContract (`0xdfa21a...8836ee`, chain 146)
- UnnamedContract (`0x517505...edf4fc`, chain 999)
- UnnamedContract (`0x68e37d...0c57cd`, chain 999)
- UnnamedContract (`0x857b55...089aee`, chain 999)
- UnnamedContract (`0xa3f504...44fa0e`, chain 999)
- UnnamedContract (`0xaeff6e...eb72be`, chain 999)
- UnnamedContract (`0xd4a426...9b7483`, chain 999)
- UnnamedContract (`0xd7217e...967da7`, chain 999)
- UnnamedContract (`0xd7f48a...934ae4`, chain 999)
- UnnamedContract (`0xdf5202...580cac`, chain 999)
- UnnamedContract (`0xeb476f...6f9af5`, chain 999)
- UnnamedContract (`0xec051b...f24e53`, chain 999)
- UnnamedContract (`0x02e0e7...56f601`, chain 1329)
- UnnamedContract (`0x4bd68c...f23f07`, chain 1329)
- UnnamedContract (`0x6efa8e...ea56c4`, chain 1329)
- UnnamedContract (`0x8dea49...118291`, chain 1329)
- UnnamedContract (`0xc9cdac...a9094c`, chain 1329)
- UnnamedContract (`0xd87850...159d6b`, chain 1329)
- UnnamedContract (`0xf94573...5761ad`, chain 1329)
- UnnamedContract (`0x27880b...ffaba9`, chain 8217)
- UnnamedContract (`0x3e89c1...ad4602`, chain 8217)
- UnnamedContract (`0x4d04c3...aebcf4`, chain 8217)
- UnnamedContract (`0x8e36c2...4a7823`, chain 8217)
- UnnamedContract (`0xa4e2ba...bb5cf2`, chain 8217)
- UnnamedContract (`0xa8beeb...994cd2`, chain 8217)
- UnnamedContract (`0xf2aecd...bd9144`, chain 8217)
- UnnamedContract (`0xfca122...ca03bc`, chain 8217)
- UnnamedContract (`0x123f31...af7223`, chain 8453)
- UnnamedContract (`0x1f8076...69f7da`, chain 8453)
- UnnamedContract (`0x230556...200bfb`, chain 8453)
- UnnamedContract (`0x450112...2b5857`, chain 8453)
- UnnamedContract (`0x5400db...ce1333`, chain 8453)
- UnnamedContract (`0x5c2531...7db10a`, chain 8453)
- UnnamedContract (`0x6abe8a...562f71`, chain 8453)
- UnnamedContract (`0x6bfd81...3920c4`, chain 8453)
- UnnamedContract (`0x727645...ca25d8`, chain 8453)
- UnnamedContract (`0x85d481...fbbb70`, chain 8453)
- UnnamedContract (`0x9a1b37...51c0eb`, chain 8453)
- UnnamedContract (`0xa090dd...f90467`, chain 8453)
- UnnamedContract (`0xa9c3d3...c41101`, chain 8453)
- UnnamedContract (`0xb27aa2...5b36f5`, chain 8453)
- UnnamedContract (`0xb98c94...ae746a`, chain 8453)
- UnnamedContract (`0xbaa5cc...2a0842`, chain 8453)
- UnnamedContract (`0xbbbbbb...eeffcb`, chain 8453)
- UnnamedContract (`0xcae292...677108`, chain 8453)
- UnnamedContract (`0xdeef55...17e9ae`, chain 8453)
- UnnamedContract (`0xf42d9c...604642`, chain 8453)
- UnnamedContract (`0xff62a7...bf5918`, chain 8453)
- UnnamedContract (`0x171b28...6f9896`, chain 9745)
- UnnamedContract (`0x2ff74a...cee249`, chain 9745)
- UnnamedContract (`0x42432f...3c624e`, chain 9745)
- UnnamedContract (`0x5476ae...525f7a`, chain 9745)
- UnnamedContract (`0x694104...4f5830`, chain 9745)
- UnnamedContract (`0x6a7389...4db0ce`, chain 9745)
- UnnamedContract (`0xb24175...c83255`, chain 9745)
- UnnamedContract (`0xb41aa3...04ed11`, chain 9745)
- UnnamedContract (`0xd7373d...02ab30`, chain 9745)
- UnnamedContract (`0xec6f72...3b1e45`, chain 9745)
- UnnamedContract (`0xf37f73...cf0f71`, chain 9745)
- UnnamedContract (`0x063a8f...60c481`, chain 34443)
- UnnamedContract (`0xae5b08...d79278`, chain 34443)
- UnnamedContract (`0xd85ce6...840564`, chain 34443)
- UnnamedContract (`0xe3d46a...ae1d1c`, chain 34443)
- UnnamedContract (`0xee868b...8f0120`, chain 34443)
- UnnamedContract (`0xf53925...2ee0a4`, chain 34443)
- UnnamedContract (`0xf9380f...71f39d`, chain 34443)
- UnnamedContract (`0xfea0ed...34305d`, chain 34443)
- UnnamedContract (`0x192367...a40c93`, chain 42161)
- UnnamedContract (`0x1fa443...b48c13`, chain 42161)
- UnnamedContract (`0x40bd67...40df48`, chain 42161)
- UnnamedContract (`0x66f305...fd06da`, chain 42161)
- UnnamedContract (`0x6b46fa...bf7971`, chain 42161)
- UnnamedContract (`0x6c247b...518f5e`, chain 42161)
- UnnamedContract (`0x769583...8c355e`, chain 42161)
- UnnamedContract (`0x7b792e...367fbf`, chain 42161)
- UnnamedContract (`0x86ca77...96444b`, chain 42161)
- UnnamedContract (`0x878988...ef0c82`, chain 42161)
- UnnamedContract (`0x98ce5d...2e41b5`, chain 42161)
- UnnamedContract (`0x9954af...788b88`, chain 42161)
- UnnamedContract (`0xaa5c30...1e4726`, chain 42161)
- UnnamedContract (`0xc00eb3...763c65`, chain 42161)
- UnnamedContract (`0xd8fc8a...086793`, chain 42161)
- UnnamedContract (`0xef84b1...a9859b`, chain 42161)
- UnnamedContract (`0xfc3329...ccaae0`, chain 42161)
- UnnamedContract (`0x3a4849...be9ffa`, chain 42220)
- UnnamedContract (`0x3e7544...467230`, chain 42220)
- UnnamedContract (`0x3fe121...de3188`, chain 42220)
- UnnamedContract (`0x683caa...1a5ded`, chain 42220)
- UnnamedContract (`0x6870aa...688275`, chain 42220)
- UnnamedContract (`0xbd142f...9a67d9`, chain 42220)
- UnnamedContract (`0xd24ecd...66a569`, chain 42220)
- UnnamedContract (`0x0ed047...a30005`, chain 43114)
- UnnamedContract (`0x66dc12...b2e9a6`, chain 43114)
- UnnamedContract (`0x708e04...cb3f92`, chain 43114)
- UnnamedContract (`0x895383...4f982c`, chain 43114)
- UnnamedContract (`0x8bcc01...b29e96`, chain 43114)
- UnnamedContract (`0x9633d2...769b8b`, chain 43114)
- UnnamedContract (`0xb6ac94...968aa4`, chain 43114)
- UnnamedContract (`0xf0c129...db13f2`, chain 43114)
- UnnamedContract (`0xf7b1d9...ec6a55`, chain 43114)
- UnnamedContract (`0x288473...a83411`, chain 57073)
- UnnamedContract (`0x3fffe2...17b439`, chain 57073)
- UnnamedContract (`0x7db0f1...9bb6bc`, chain 57073)
- UnnamedContract (`0x854168...cd3357`, chain 57073)
- UnnamedContract (`0x857f3e...0d3042`, chain 57073)
- UnnamedContract (`0x951540...0ee57b`, chain 57073)
- UnnamedContract (`0xb8b2ad...683610`, chain 57073)
- UnnamedContract (`0xd3f395...a9904b`, chain 57073)
- UnnamedContract (`0x122ea8...5d27d5`, chain 59144)
- UnnamedContract (`0x1ee8ec...242625`, chain 59144)
- UnnamedContract (`0x2d4cf0...c7610b`, chain 59144)
- UnnamedContract (`0x3fff72...8f0105`, chain 59144)
- UnnamedContract (`0x454dab...68255d`, chain 59144)
- UnnamedContract (`0x5dc11c...52a5d0`, chain 59144)
- UnnamedContract (`0x6b0d71...262c9f`, chain 59144)
- UnnamedContract (`0x6faf26...9eed87`, chain 59144)
- UnnamedContract (`0x85c2ef...59cdee`, chain 59144)
- UnnamedContract (`0xa148a8...089ba7`, chain 59144)
- UnnamedContract (`0xcab7c6...75f8ce`, chain 59144)
- UnnamedContract (`0x2d012e...df5a55`, chain 534352)
- UnnamedContract (`0x56b657...bc9295`, chain 534352)
- UnnamedContract (`0x60f915...b60768`, chain 534352)
- UnnamedContract (`0x78f44e...a359c1`, chain 534352)
- UnnamedContract (`0x8a7f67...8a9927`, chain 534352)
- UnnamedContract (`0xa5ea75...18cb90`, chain 534352)
- UnnamedContract (`0xb59619...a9e24e`, chain 534352)
- UnnamedContract (`0xd2780f...361525`, chain 534352)
- AaveV2MigrationAdapter (`0x402888...87961b`, chain 1)
- AaveV3MigrationAdapter (`0x2cc8d5...bdb806`, chain 1)
- AaveV3OptimizerMigrationAdapter (`0x9e2ea2...5ad972`, chain 1)
- AdaptiveCurveIrm (`0x464159...d22687`, chain 8453)
- Bundler3 (`0x656619...c90245`, chain 1)
- CompoundV2MigrationAdapter (`0x9b89c0...8f1101`, chain 1)
- CompoundV3MigrationAdapter (`0xdba5bd...b26773`, chain 1)
- ERC20WrapperAdapter (`0xf83d17...87f962`, chain 1)
- MetaMorphoFactory (`0xa9c3d3...c41101`, chain 1)
- MetaMorphoV1_1Factory (`0x1897a8...535c24`, chain 1)
- Morpho (`0x01b0bd...67a83a`, chain 56)
- MorphoChainlinkOracleV2Factory (`0x2dc205...aebd3d`, chain 8453)
- MorphoMarketV1AdapterV2Factory (`0x32bb1c...61ccc1`, chain 1)
- MorphoOFTAdapter (`0x50d3d6...5649d9`, chain 1)
- MorphoToken (`0x9994e3...330999`, chain 1)
- MorphoVaultV1AdapterFactory (`0xd1b8e2...f63394`, chain 1)
- ParaswapAdapter (`0x03b525...c6c38f`, chain 1)
- RegistryList (`0x3696c5...d9364e`, chain 1)
- UniversalRewardsDistributor (`0x330eef...e61ddb`, chain 1)
- UrdFactory (`0x9baa51...ee7c8d`, chain 1)
- VaultV2Factory (`0xa1d94f...6c0405`, chain 1)
- Wrapper (`0x9d03bb...0e5123`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 30; live-surface rows included: 30 (30 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 236/806 live.
- Detected codebases: aave-v2, compound-v2
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 16/30 (53.3%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 236 own, 8 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 151 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 15 standard proxy/library)
- Proxy deployments represented within implementation groups: 23
- Confirmed-live implementations: 236 of 395 unique; 159 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 16/181
- Verified + Unaudited implementations: 165
- Verified by bytecode match: 0
- Unverified implementations: 214
- Unique implementations: 395
- Raw deployments: 395
- Audits discovered: 30 (30 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 15
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-12 (fresh)
- Audit staleness (calendar age): 9 fresh, 9 aging, 11 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 16 match-unverified
- Tier 1 coverage: 53.3% (Certora, ChainSecurity, OpenZeppelin, Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Spearbit | Tier 1 | 13 | 7.2% | 2025-12 |
| OpenZeppelin | Tier 1 | 11 | 6.1% | 2025-01 |
| Blackthorn | Tier 2 | 2 | 1.1% | 2025-12 |
| Certora | Tier 1 | 2 | 1.1% | 2025-12 |
| ChainSecurity | Tier 1 | 2 | 1.1% | 2025-09 |
| Zellic | Tier 2 | 1 | 0.6% | 2025-07 |

## Contract Surface

### ✅ Verified + Audited (16)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AaveV2MigrationBundler | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249152 | `0xb3dcc7...aa8e76` | ✅ Audited |
| AaveV3MigrationBundler | unknown | project_anchor | own_supporting | 1 | ethereum | unit-249710 | `0x98ccb1...2f9bdc` | ✅ Audited |
| AaveV3OptimizerMigrationBundler | unknown | project_anchor | own_supporting | 0 | ethereum | unit-248927 | `0x16f38d...6d2f9c` | ✅ Audited |
| AdaptiveCurveIrm | unknown | project_anchor | own_supporting | 0 | base | unit-249640 | `0x464159...d22687` | ✅ Audited |
| CompoundV2MigrationBundler | unknown | project_anchor | own_supporting | 0 | ethereum | unit-248944 | `0x26bf52...8c8647` | ✅ Audited |
| CompoundV3MigrationBundler | unknown | project_anchor | own_supporting | 0 | ethereum | unit-248976 | `0x3a0e2e...479558` | ✅ Audited |
| EthereumBundler | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249128 | `0xa7995f...f55107` | ✅ Audited |
| MetaMorphoFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249134 | `0xa9c3d3...c41101` | ✅ Audited |
| MetaMorphoV1_1Factory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-248931 | `0x1897a8...535c24` | ✅ Audited |
| Morpho | unknown | project_anchor | own_supporting | 0 | bsc | unit-249558 | `0x01b0bd...67a83a` | ✅ Audited |
| MorphoMarketV1AdapterV2Factory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-248966 | `0x32bb1c...61ccc1` | ✅ Audited |
| MorphoVaultV1AdapterFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249186 | `0xd1b8e2...f63394` | ✅ Audited |
| RegistryList | unknown | project_anchor | own_supporting | 0 | ethereum | unit-248971 | `0x3696c5...d9364e` | ✅ Audited |
| UniversalRewardsDistributor | unknown | project_anchor | own_supporting | 0 | ethereum | unit-248967 | `0x330eef...e61ddb` | ✅ Audited |
| UrdFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249110 | `0x9baa51...ee7c8d` | ✅ Audited |
| VaultV2Factory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249118 | `0xa1d94f...6c0405` | ✅ Audited |

### ⚠️ Verified + Unaudited (165)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AaveV2MigrationAdapter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-248991 | `0x402888...87961b` | ⚠️ Unaudited |
| AaveV3MigrationAdapter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-248952 | `0x2cc8d5...bdb806` | ⚠️ Unaudited |
| AaveV3OptimizerMigrationAdapter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249113 | `0x9e2ea2...5ad972` | ⚠️ Unaudited |
| AccessControlledAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00c7a3...275446` | ⚠️ Unaudited |
| AccessControlledOffchainAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00260d...a6cd78` | ⚠️ Unaudited |
| Aggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b8b84...eeae4d` | ⚠️ Unaudited |
| AggregatorFacade | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x010b33...6c0a67` | ⚠️ Unaudited |
| ArbitrumValidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x31982c...c38ac1` | ⚠️ Unaudited |
| ArbMCBv2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdb967d...f2d7ca` | ⚠️ Unaudited |
| BulkerGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf99e37...82c168` | ⚠️ Unaudited |
| Bundler3 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249028 | `0x656619...c90245` | ⚠️ Unaudited |
| CallbackRegister | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3ce837...6e7a31` | ⚠️ Unaudited |
| CelerBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xba20fb...1622f2` | ⚠️ Unaudited |
| CErc20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x158079...ac95c1` | ⚠️ Unaudited |
| CErc20Delegator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x5d3a53...8e3643` | ⚠️ Unaudited |
| CEther | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ddc2d...270ed5` | ⚠️ Unaudited |
| Claimer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x328f5d...2a3ad5` | ⚠️ Unaudited |
| CollateralPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x019234...ae6af3` | ⚠️ Unaudited |
| CollateralPoolAumReader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1c6a28...a25747` | ⚠️ Unaudited |
| CollateralPoolEventEmitter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x36abad...24242b` | ⚠️ Unaudited |
| CompoundV2MigrationAdapter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249109 | `0x9b89c0...8f1101` | ⚠️ Unaudited |
| CompoundV3MigrationAdapter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249203 | `0xdba5bd...b26773` | ⚠️ Unaudited |
| Comptroller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x178053...63df29` | ⚠️ Unaudited |
| ConfirmedTransactionModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e1b5a...d67f6b` | ⚠️ Unaudited |
| CPoR | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x575a16...f28c51` | ⚠️ Unaudited |
| DegenFeeDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc6b190...977216` | ⚠️ Unaudited |
| DelayedERC4626Oracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x363fff...c52321` | ⚠️ Unaudited |
| Delegator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x138c39...d2de7d` | ⚠️ Unaudited |
| Diamond | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x53b472...bde744` | ⚠️ Unaudited |
| DiamondCutFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x01ee7a...8e7f10` | ⚠️ Unaudited |
| DiamondInit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x040375...74ecb3` | ⚠️ Unaudited |
| DiamondLoupeFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x146e29...29ebed` | ⚠️ Unaudited |
| Disperse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x081e9e...7cd4fe` | ⚠️ Unaudited |
| DualBot | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f2cea...2880f4` | ⚠️ Unaudited |
| DummyFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc3866d...88973d` | ⚠️ Unaudited |
| EACAggregatorProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00a773...9d7c29` | ⚠️ Unaudited |
| ERC20WrapperAdapter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249238 | `0xf83d17...87f962` | ⚠️ Unaudited |
| ERC4626Feed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d3273...89891f` | ⚠️ Unaudited |
| EthereumBundlerV2 | unknown | project_anchor | own_supporting | 1 | ethereum | unit-249709 | `0x4095f0...e30077` | ⚠️ Unaudited |
| EthereumGeneralAdapter1 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249002 | `0x4a6c31...be0ae0` | ⚠️ Unaudited |
| EventEmitter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x6c3a43...a48329` | ⚠️ Unaudited |
| Executor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x72d227...5e6938` | ⚠️ Unaudited |
| FacetClose | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0067eb...3d21ef` | ⚠️ Unaudited |
| FacetManagement | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2fd65f...2b1eff` | ⚠️ Unaudited |
| FacetMux3Owner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x52162c...ad5189` | ⚠️ Unaudited |
| FacetOpen | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4d5de4...4ab703` | ⚠️ Unaudited |
| FacetPositionAccount | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x083131...b0d874` | ⚠️ Unaudited |
| FacetReader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5b552e...37061f` | ⚠️ Unaudited |
| FacetTrade | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2260b6...424534` | ⚠️ Unaudited |
| FeedRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x47fb25...ceeedf` | ⚠️ Unaudited |
| Firefighter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x213f30...9ffb23` | ⚠️ Unaudited |
| Flags | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24ec84...3bdabf` | ⚠️ Unaudited |
| GainsReader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x39dd1b...415d91` | ⚠️ Unaudited |
| GMORPHO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xda1c2c...5e0ccd` | ⚠️ Unaudited |
| GmxAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x16e600...864037` | ⚠️ Unaudited |
| GmxV2Adapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1ce415...9c2031` | ⚠️ Unaudited |
| JumpRateModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x556202...7b57e7` | ⚠️ Unaudited |
| JuniorBoostHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x04b51b...6e424b` | ⚠️ Unaudited |
| JuniorBoostHelperFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x37c5da...9d5a80` | ⚠️ Unaudited |
| KeeperRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f7595...dd08c7` | ⚠️ Unaudited |
| LendingPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x124dce...09319e` | ⚠️ Unaudited |
| LibGmx | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x11c0c4...603bd9` | ⚠️ Unaudited |
| LibGmxV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb45dcb...329287` | ⚠️ Unaudited |
| LibLiquidity | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2abad7...e2d206` | ⚠️ Unaudited |
| LibOrderBook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x05ec03...2d262b` | ⚠️ Unaudited |
| LibOrderBook2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0035f6...296059` | ⚠️ Unaudited |
| Liquidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc88058...79dd4d` | ⚠️ Unaudited |
| LiquidityPoolHop1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x245ba1...8f481c` | ⚠️ Unaudited |
| LiquidityPoolHop2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x32272d...d9b5bc` | ⚠️ Unaudited |
| MarketEventUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x80c874...e7587b` | ⚠️ Unaudited |
| MarketStoreUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x46ffa9...a5acec` | ⚠️ Unaudited |
| MarketUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2a2987...6b8d9f` | ⚠️ Unaudited |
| Maximillion | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf859a1...174088` | ⚠️ Unaudited |
| MetaMorphoV1_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbeefc1...c6f4e2` | ⚠️ Unaudited |
| MetaOracleDeviationTimelockFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x44d049...17a9f4` | ⚠️ Unaudited |
| Migration | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x28f16e...20a36c` | ⚠️ Unaudited |
| MlpToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x085f5b...fe33ba` | ⚠️ Unaudited |
| MockMux3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5857c7...e4bd34` | ⚠️ Unaudited |
| MorphoChainlinkOracleV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x95e85f...24bd87` | ⚠️ Unaudited |
| MorphoChainlinkOracleV2Factory | unknown | project_anchor | own_supporting | 0 | base | unit-249636 | `0x2dc205...aebd3d` | ⚠️ Unaudited |
| MorphoHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0dfcc0...3d9329` | ⚠️ Unaudited |
| MorphoLiquidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x526a27...554661` | ⚠️ Unaudited |
| MorphoMarketFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x68df94...93c61d` | ⚠️ Unaudited |
| MorphoOFTAdapter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249007 | `0x50d3d6...5649d9` | ⚠️ Unaudited |
| MorphoReader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16fc80...8b8cb5` | ⚠️ Unaudited |
| MorphoToken | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249104 | `0x9994e3...330999` | ⚠️ Unaudited |
| MorphoTokenEthereum | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4364fd...c24852` | ⚠️ Unaudited |
| Mux | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x454c4e...c20d8a` | ⚠️ Unaudited |
| Mux3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2c367d...252cd3` | ⚠️ Unaudited |
| Mux3FeeDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x11a276...30bfd7` | ⚠️ Unaudited |
| Mux3OwnerFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1d9f0f...903f8a` | ⚠️ Unaudited |
| Mux3POL | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2ef6d4...5cf7a6` | ⚠️ Unaudited |
| Mux3RateProviderFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x162d7a...2d8cb8` | ⚠️ Unaudited |
| MuxDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1b3b6e...990f14` | ⚠️ Unaudited |
| MuxLpOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x03d05a...e06235` | ⚠️ Unaudited |
| MuxRewardTracker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0ff022...80adb4` | ⚠️ Unaudited |
| MuxSender | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1560ed...e8a36e` | ⚠️ Unaudited |
| MuxTimelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x965a45...00d7c5` | ⚠️ Unaudited |
| NativeUnwrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9de873...2aec33` | ⚠️ Unaudited |
| NCStableCoinInterestRateModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x645e75...231f4c` | ⚠️ Unaudited |
| NCStandardInterestRateModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x18b5b6...5d14a7` | ⚠️ Unaudited |
| Oracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0fc84a...546ebe` | ⚠️ Unaudited |
| OrderBook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x066ac2...a31246` | ⚠️ Unaudited |
| OwnershipFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6c3859...bb8b2e` | ⚠️ Unaudited |
| ParaswapAdapter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-248909 | `0x03b525...c6c38f` | ⚠️ Unaudited |
| POL | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x14d1e8...4d5cf3` | ⚠️ Unaudited |
| PositionsManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4592e4...dac6de` | ⚠️ Unaudited |
| PositionStoreUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe1645e...f94f8e` | ⚠️ Unaudited |
| PositionUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x19b9ec...4f1d8b` | ⚠️ Unaudited |
| PriceConsumer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f7d99...22f242` | ⚠️ Unaudited |
| PriceOracleProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1653c0...e53ba1` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x67740d...e58508` | ⚠️ Unaudited |
| ProxyFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x052346...cd4fbf` | ⚠️ Unaudited |
| PublicAllocator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3df418...ca05c4` | ⚠️ Unaudited |
| Reader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5e250d...27701f` | ⚠️ Unaudited |
| ReaderLite | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x436c9b...6af525` | ⚠️ Unaudited |
| ReaderPricingUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf61da3...ec6c2c` | ⚠️ Unaudited |
| ReceiveAssets | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x89aa49...3fba91` | ⚠️ Unaudited |
| ReferralManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x8020e9...d2f7dc` | ⚠️ Unaudited |
| Rescue | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4857b4...495780` | ⚠️ Unaudited |
| ReservoirLooper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f6b59...c87df4` | ⚠️ Unaudited |
| RewardController | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x8b2e25...7cd1fc` | ⚠️ Unaudited |
| RouterV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0xacf98f...1f43cf` | ⚠️ Unaudited |
| SavingsDai | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x83f20f...42beea` | ⚠️ Unaudited |
| SimpleReadAccessController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a9d21...82700d` | ⚠️ Unaudited |
| SimpleWriteAccessController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x641b69...89dfe6` | ⚠️ Unaudited |
| SuperToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x010700...364ed3` | ⚠️ Unaudited |
| SusdcOracleL2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x179340...cfb9c5` | ⚠️ Unaudited |
| SusdsOracleL2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2f1831...1dfd50` | ⚠️ Unaudited |
| SwapperAngle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e8644...0d592e` | ⚠️ Unaudited |
| SwapperDaiUsds | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x99ce8d...29c873` | ⚠️ Unaudited |
| SwapperERC4626 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x119388...080e26` | ⚠️ Unaudited |
| SwapperMakerPSM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0076af...a41254` | ⚠️ Unaudited |
| SwapperRusd | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x242db4...9dacee` | ⚠️ Unaudited |
| SwapperSimpleUniV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x45241b...33d54a` | ⚠️ Unaudited |
| SwapperWsteth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8fa444...9dc868` | ⚠️ Unaudited |
| SwapPricingUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x985c24...79b89c` | ⚠️ Unaudited |
| TestReferralManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x192a9e...f68769` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d903f...c33925` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x36f8d0...44cab6` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x507fa3...a91ff4` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | arbitrum | n/a | `0x01afd1...ddea58` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | arbitrum | n/a | `0x0241d1...8fe3f7` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | arbitrum | n/a | `0x02fae0...c2b23c` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | arbitrum | n/a | `0x097c06...efd1f1` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | arbitrum | n/a | `0x0a9bbf...de8e5d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | arbitrum | n/a | `0x18b930...24695a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | arbitrum | n/a | `0x198f15...98753f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | arbitrum | n/a | `0x228302...6d605b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | arbitrum | n/a | `0x229df4...8589f5` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | arbitrum | n/a | `0x381200...7961e2` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | arbitrum | n/a | `0x3efe46...5bf82b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | arbitrum | n/a | `0x6256dc...592859` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | arbitrum | n/a | `0x6fded1...4d2705` | ⚠️ Unaudited |
| UsycBot | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e33c1...900c03` | ⚠️ Unaudited |
| UsycLiquidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x385826...4728ce` | ⚠️ Unaudited |
| ValidatorProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x264bdd...d50236` | ⚠️ Unaudited |
| Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x33261b...ceed62` | ⚠️ Unaudited |
| Vester | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x21aef9...a16e60` | ⚠️ Unaudited |
| VotingEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x22f9fc...1b7232` | ⚠️ Unaudited |
| Vyper_contract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe384f1...411a72` | ⚠️ Unaudited |
| WhitePaperInterestRateModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8c159c...986069` | ⚠️ Unaudited |
| Wrapper | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249111 | `0x9d03bb...0e5123` | ⚠️ Unaudited |
| WstethBot | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf14dc5...ebd16b` | ⚠️ Unaudited |
| WstEthStEthExchangeRateChainlinkAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x905b7d...db1421` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (214)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-248979 | `0x3a7bb3...3ad766` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-248990 | `0x4011dc...a59ca3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249018 | `0x58d97b...69c2b2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249077 | `0x870ac1...ba00bc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249144 | `0xb09e40...07d475` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249166 | `0xbbbbbb...eeffcb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249249 | `0xfd32fa...91c75d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-249256 | `0x0d68a9...b40658` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-249257 | `0x1ec408...9dad70` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-249259 | `0x31f539...92adc5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-249262 | `0x3bb6a6...92839a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-249266 | `0x6128b6...0870ef` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-249269 | `0x71b299...2cb434` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-249270 | `0x79481c...f141f0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-249274 | `0x8cd70a...a06ef6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-249279 | `0xce95af...64af92` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-249280 | `0xd1346b...aad32b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-249284 | `0xe41aec...a21498` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-249286 | `0xee9f7c...a00cf3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-249287 | `0xfbcd3c...507c05` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | cronos | unit-249435 | `0x05519a...1ed3b4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | cronos | unit-249436 | `0x1db002...7c0607` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | cronos | unit-249437 | `0x295e0a...e5f0dd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | cronos | unit-249438 | `0x44b2c8...a785de` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | cronos | unit-249439 | `0x8840f9...11746c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | cronos | unit-249443 | `0xb1c59f...4ab6bc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | cronos | unit-249445 | `0xca470c...74d513` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | cronos | unit-249446 | `0xdf9a1d...f7434e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | cronos | unit-249447 | `0xe39f6b...4fa121` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | cronos | unit-249448 | `0xea67e5...2e9d3a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | cronos | unit-249451 | `0xfeabef...ca02d5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-249560 | `0x16d40b...15bf91` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-249564 | `0x7112d9...81f979` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-249566 | `0x842bec...6d0495` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-249567 | `0x87c936...2ae3a3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-249571 | `0x929836...905d72` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-249575 | `0xbb12b0...852f82` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-249576 | `0xdf2035...135236` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-249289 | `0x2ac3ea...d0997f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-249290 | `0x6f3313...92270a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-249294 | `0x832625...40973b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-249296 | `0x8ffd9e...476c32` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-249297 | `0xae5293...ff05c5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-249298 | `0xb74d4d...351c66` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-249301 | `0xff3623...61bf68` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-249326 | `0x432695...1f7539` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-249332 | `0x617f8d...34fa9a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-249336 | `0x72cc7a...a57cc4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-249339 | `0x7dd857...b58bc3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-249343 | `0x8f5ae9...4a140a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-249347 | `0x9a13bd...f9c58c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-249348 | `0x9a6061...f53f0e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-249355 | `0xaa870d...0a59c9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-249357 | `0xb0c9a1...38c7c9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-249362 | `0xb9130d...41becb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-249365 | `0xc11329...7e30a0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-249367 | `0xc9b34c...04a0c9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-249377 | `0xe9ede3...10bdc0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-249381 | `0xf1ab9e...7ad754` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-249396 | `0x1bf0c2...a25f67` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-249397 | `0x1ff789...295215` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-249398 | `0x2d9c3a...8db589` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-249402 | `0x5f2617...24db8d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-249411 | `0xa9c87d...dddc98` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-249412 | `0xb261b5...1b7047` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-249413 | `0xb70a43...8ba564` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-249415 | `0xc0006f...851dd0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-249416 | `0xc11a53...4f97cf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-249422 | `0xe675a2...fbf0b0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-249424 | `0xeb174f...e2888a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-249425 | `0xfac15a...5df0d3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-249426 | `0xfc5be7...0f0ac9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-249427 | `0x0ce9e3...4f12e8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-249428 | `0x31d5ae...201eaf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-249429 | `0x6cef2e...e59b36` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-249430 | `0x7da59f...feb86d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-249431 | `0xb06f1a...9a9aff` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-249432 | `0xd6c916...cfa95f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-249433 | `0xdefcf2...7c473f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-249434 | `0xdfa21a...8836ee` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-249693 | `0x517505...edf4fc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-249694 | `0x68e37d...0c57cd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-249696 | `0x857b55...089aee` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-249697 | `0xa3f504...44fa0e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-249699 | `0xaeff6e...eb72be` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-249701 | `0xd4a426...9b7483` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-249702 | `0xd7217e...967da7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-249703 | `0xd7f48a...934ae4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-249706 | `0xdf5202...580cac` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-249707 | `0xeb476f...6f9af5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-249708 | `0xec051b...f24e53` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sei | unit-249385 | `0x02e0e7...56f601` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sei | unit-249386 | `0x4bd68c...f23f07` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sei | unit-249387 | `0x6efa8e...ea56c4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sei | unit-249388 | `0x8dea49...118291` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sei | unit-249389 | `0xc9cdac...a9094c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sei | unit-249390 | `0xd87850...159d6b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sei | unit-249391 | `0xf94573...5761ad` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kaia | unit-249614 | `0x27880b...ffaba9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kaia | unit-249616 | `0x3e89c1...ad4602` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kaia | unit-249617 | `0x4d04c3...aebcf4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kaia | unit-249621 | `0x8e36c2...4a7823` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kaia | unit-249622 | `0xa4e2ba...bb5cf2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kaia | unit-249623 | `0xa8beeb...994cd2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kaia | unit-249625 | `0xf2aecd...bd9144` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kaia | unit-249626 | `0xfca122...ca03bc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-249629 | `0x123f31...af7223` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-249631 | `0x1f8076...69f7da` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-249633 | `0x230556...200bfb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-249639 | `0x450112...2b5857` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-249642 | `0x5400db...ce1333` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-249643 | `0x5c2531...7db10a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-249644 | `0x6abe8a...562f71` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-249645 | `0x6bfd81...3920c4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-249647 | `0x727645...ca25d8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-249649 | `0x85d481...fbbb70` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-249653 | `0x9a1b37...51c0eb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-249654 | `0xa090dd...f90467` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-249659 | `0xa9c3d3...c41101` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-249661 | `0xb27aa2...5b36f5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-249662 | `0xb98c94...ae746a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-249663 | `0xbaa5cc...2a0842` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-249664 | `0xbbbbbb...eeffcb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-249668 | `0xcae292...677108` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-249670 | `0xdeef55...17e9ae` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-249672 | `0xf42d9c...604642` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-249674 | `0xff62a7...bf5918` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-249675 | `0x171b28...6f9896` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-249676 | `0x2ff74a...cee249` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-249677 | `0x42432f...3c624e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-249679 | `0x5476ae...525f7a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-249680 | `0x694104...4f5830` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-249681 | `0x6a7389...4db0ce` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-249685 | `0xb24175...c83255` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-249686 | `0xb41aa3...04ed11` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-249688 | `0xd7373d...02ab30` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-249689 | `0xec6f72...3b1e45` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-249690 | `0xf37f73...cf0f71` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mode | unit-249452 | `0x063a8f...60c481` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mode | unit-249457 | `0xae5b08...d79278` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mode | unit-249460 | `0xd85ce6...840564` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mode | unit-249461 | `0xe3d46a...ae1d1c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mode | unit-249462 | `0xee868b...8f0120` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mode | unit-249463 | `0xf53925...2ee0a4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mode | unit-249464 | `0xf9380f...71f39d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mode | unit-249465 | `0xfea0ed...34305d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-249467 | `0x192367...a40c93` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-249468 | `0x1fa443...b48c13` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-249473 | `0x40bd67...40df48` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-249474 | `0x66f305...fd06da` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-249475 | `0x6b46fa...bf7971` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-249476 | `0x6c247b...518f5e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-249478 | `0x769583...8c355e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-249479 | `0x7b792e...367fbf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-249480 | `0x86ca77...96444b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-249481 | `0x878988...ef0c82` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-249484 | `0x98ce5d...2e41b5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-249485 | `0x9954af...788b88` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-249487 | `0xaa5c30...1e4726` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-249490 | `0xc00eb3...763c65` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-249496 | `0xd8fc8a...086793` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-249498 | `0xef84b1...a9859b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-249499 | `0xfc3329...ccaae0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-249502 | `0x3a4849...be9ffa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-249503 | `0x3e7544...467230` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-249504 | `0x3fe121...de3188` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-249505 | `0x683caa...1a5ded` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-249506 | `0x6870aa...688275` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-249511 | `0xbd142f...9a67d9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-249512 | `0xd24ecd...66a569` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-249514 | `0x0ed047...a30005` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-249518 | `0x66dc12...b2e9a6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-249523 | `0x708e04...cb3f92` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-249527 | `0x895383...4f982c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-249528 | `0x8bcc01...b29e96` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-249530 | `0x9633d2...769b8b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-249536 | `0xb6ac94...968aa4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-249540 | `0xf0c129...db13f2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-249543 | `0xf7b1d9...ec6a55` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-249581 | `0x288473...a83411` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-249582 | `0x3fffe2...17b439` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-249583 | `0x7db0f1...9bb6bc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-249584 | `0x854168...cd3357` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-249585 | `0x857f3e...0d3042` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-249586 | `0x951540...0ee57b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-249587 | `0xb8b2ad...683610` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-249588 | `0xd3f395...a9904b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-249589 | `0x122ea8...5d27d5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-249590 | `0x1ee8ec...242625` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-249592 | `0x2d4cf0...c7610b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-249594 | `0x3fff72...8f0105` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-249595 | `0x454dab...68255d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-249596 | `0x5dc11c...52a5d0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-249599 | `0x6b0d71...262c9f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-249600 | `0x6faf26...9eed87` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-249604 | `0x85c2ef...59cdee` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-249605 | `0xa148a8...089ba7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-249607 | `0xcab7c6...75f8ce` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-249546 | `0x2d012e...df5a55` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-249547 | `0x56b657...bc9295` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-249548 | `0x60f915...b60768` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-249549 | `0x78f44e...a359c1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-249551 | `0x8a7f67...8a9927` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-249553 | `0xa5ea75...18cb90` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-249554 | `0xb59619...a9e24e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-249556 | `0xd2780f...361525` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-249305 | `0x5481f5...2d5d81` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-249306 | `0x8c5ddc...caba7c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-249307 | `0x98cbfe...5d0b03` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-249309 | `0xa6c843...7bf6cd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-249310 | `0xb3fe2d...bb85d1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-249311 | `0xbbbbbb...eeffcb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-249313 | `0xd011ee...424a14` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-249315 | `0xe8ee81...12dab3` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Cantina Contest](https://cantina.xyz/competitions/523e1540-f8c3-45ae-9c5d-b6d35d3a326c) | Spearbit | Contest | 2025-07 | aging | Direct | contract_name | matched | 1 | 0 | 0 | 5 | high |
| [Cantina Contest](https://cantina.xyz/competitions/d86b7f95-e574-4092-8ea2-78dcac2f54f1) | Spearbit | Contest | 2023-12 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 16 | high |
| [Cantina Contest](https://cantina.xyz/competitions/8409a0ce-6c21-4cc9-8ef2-bd77ce7425af) | Spearbit | Contest | 2023-12 | stale | Direct | contract_name | matched | 9 | 1 | 0 | 43 | high |
| [omniscia-report](https://omniscia.io/reports/morpho-specialized-token) | Omniscia | Audit | n/a | unknown | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Lexfo_250523.pdf](https://cdn.morpho.org/documents/Lexfo_250523.pdf) | Lexfo | Audit | 2023-05 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [MorphoDAO_Frontend_04042022.pdf](https://cdn.morpho.org/documents/MorphoDAO_Frontend_04042022.pdf) | Securing | Audit | 2022-04 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [2025-05-19-spearbit.pdf](https://github.com/morpho-org/vault-v2/blob/main/audits/2025-05-19-spearbit.pdf) | Spearbit | Audit | 2025-05 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 19 | high |
| [2025-07-15-competition.pdf](https://github.com/morpho-org/vault-v2/blob/main/audits/2025-07-15-competition.pdf) | Competition | Audit | 2025-07 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 4 | medium |
| [2025-07-15-zellic.pdf](https://github.com/morpho-org/vault-v2/blob/main/audits/2025-07-15-zellic.pdf) | Zellic | Audit | 2025-07 | aging | Direct | contract_name | matched | 1 | 0 | 0 | 8 | high |
| [2025-08-11-spearbit.pdf](https://github.com/morpho-org/vault-v2/blob/main/audits/2025-08-11-spearbit.pdf) | Spearbit | Audit | 2025-08 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [2025-09-15-blackthorn.pdf](https://github.com/morpho-org/vault-v2/blob/main/audits/2025-09-15-blackthorn.pdf) | Blackthorn | Audit | 2025-09 | fresh | Direct | contract_name | matched | 2 | 0 | 0 | 23 | high |
| [2025-09-15-chainsecurity.pdf](https://github.com/morpho-org/vault-v2/blob/main/audits/2025-09-15-chainsecurity.pdf) | ChainSecurity | Audit | 2025-09 | fresh | Direct | contract_name | matched | 2 | 0 | 0 | 17 | high |
| [2025-09-15-spearbit.pdf](https://github.com/morpho-org/vault-v2/blob/main/audits/2025-09-15-spearbit.pdf) | Spearbit | Audit | 2025-09 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [2025-12-04-market-v1-adapter-v2-blackthorn.pdf](https://github.com/morpho-org/vault-v2/blob/main/audits/2025-12-04-market-v1-adapter-v2-blackthorn.pdf) | Blackthorn | Audit | 2025-12 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [2025-12-04-market-v1-adapter-v2-spearbit.pdf](https://github.com/morpho-org/vault-v2/blob/main/audits/2025-12-04-market-v1-adapter-v2-spearbit.pdf) | Spearbit | Audit | 2025-12 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [2025-12-15-market-v1-adapter-v2-certora.pdf](https://github.com/morpho-org/vault-v2/blob/main/audits/2025-12-15-market-v1-adapter-v2-certora.pdf) | Certora | Audit | 2025-12 | fresh | Direct | contract_name | matched | 2 | 0 | 0 | 13 | high |
| [2025-09-11-spearbit.pdf](https://github.com/morpho-org/vault-v2-adapter-registries/blob/main/audits/2025-09-11-spearbit.pdf) | Spearbit | Audit | 2025-09 | fresh | Direct | contract_name | matched | 1 | 0 | 0 | 2 | medium |
| [2025-12-04-market-v1-adapter-v2-certora.pdf](https://github.com/morpho-org/vault-v2-adapter-registries/blob/main/audits/2025-12-04-market-v1-adapter-v2-certora.pdf) | Certora | Audit | 2025-12 | fresh | Direct | contract_name | matched | 2 | 0 | 0 | 13 | high |
| [2024-10-29-pre-liquidation-spearbit.pdf](https://github.com/morpho-org/pre-liquidation/blob/main/audits/2024-10-29-pre-liquidation-spearbit.pdf) | Spearbit | Audit | 2024-10 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | medium |
| [2024-11-01-pre-liquidation-ABDK-consulting.pdf](https://github.com/morpho-org/pre-liquidation/blob/main/audits/2024-11-01-pre-liquidation-ABDK-consulting.pdf) | ABDK | Audit | 2024-11 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [2023-11-14-metamorpho-cantina-managed-review.pdf (also discovered via alternate URL)](https://github.com/morpho-org/metamorpho-v1.1/blob/main/audits/2023-11-14-metamorpho-cantina-managed-review.pdf) | Spearbit | Audit | 2023-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 14 | high |
| [2023-11-16-morpho-blue-periphery-open-zeppelin.pdf (also discovered via alternate URL)](https://github.com/morpho-org/metamorpho-v1.1/blob/main/audits/2023-11-16-morpho-blue-periphery-open-zeppelin.pdf) | OpenZeppelin | Audit | 2023-11 | stale | Direct | contract_name | matched | 9 | 1 | 0 | 36 | high |
| [2024-01-05-periphery-cantina-competition.pdf (also discovered via alternate URL)](https://github.com/morpho-org/metamorpho-v1.1/blob/main/audits/2024-01-05-periphery-cantina-competition.pdf) | Spearbit | Audit | 2024-01 | stale | Direct | contract_name | matched | 5 | 1 | 0 | 4 | high |
| [2024-09-23-metamorpho-diff-cantina-managed-review.pdf](https://github.com/morpho-org/metamorpho-v1.1/blob/main/audits/2024-09-23-metamorpho-diff-cantina-managed-review.pdf) | Spearbit | Audit | 2024-09 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [2025-01-10-metamorpho-v1.1-open-zeppelin.pdf](https://github.com/morpho-org/metamorpho-v1.1/blob/main/audits/2025-01-10-metamorpho-v1.1-open-zeppelin.pdf) | OpenZeppelin | Audit | 2025-01 | aging | Direct | contract_name | matched | 1 | 0 | 0 | 4 | high |
| [2025-02-20-metamorpho-v1.1-cantina-managed.pdf](https://github.com/morpho-org/metamorpho-v1.1/blob/main/audits/2025-02-20-metamorpho-v1.1-cantina-managed.pdf) | Spearbit | Audit | 2025-02 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | medium |
| [2024-03-11-morpho-public-allocator-cantina-managed.pdf](https://github.com/morpho-org/public-allocator/blob/main/audits/2024-03-11-morpho-public-allocator-cantina-managed.pdf) | Spearbit | Audit | 2024-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | medium |
| [2023-10-13-morpho-blue-and-speed-jump-irm-open-zeppelin.pdf](https://github.com/morpho-org/morpho-blue/blob/main/audits/2023-10-13-morpho-blue-and-speed-jump-irm-open-zeppelin.pdf) | OpenZeppelin | Audit | 2023-10 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 17 | high |
| [2023-11-13-morpho-blue-cantina-managed-review.pdf](https://github.com/morpho-org/morpho-blue/blob/main/audits/2023-11-13-morpho-blue-cantina-managed-review.pdf) | Spearbit | Audit | 2023-11 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 23 | high |
| [2024-01-05-morpho-blue-cantina-competition.pdf](https://github.com/morpho-org/morpho-blue/blob/main/audits/2024-01-05-morpho-blue-cantina-competition.pdf) | Spearbit | Audit | 2024-01 | stale | Direct | contract_name | matched | 2 | 0 | 0 | 3 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [17651] Cantina Contest — matched: Extracted from competition description and scope section. Repository and commit provided but no explicit file list; contracts inferred from documentation.
- [17652] Cantina Contest — matched: Scope table lists all files in src except mocks folder. Contract names extracted from file paths.
- [17653] Cantina Contest — matched: Extracted all contract names from the scope tables for each repository. The audit end date is December 7, 2023.
- [17654] omniscia-report — no match: Extracted 3 contracts from the 'Contracts Assessed' table. No audit date found in the provided text.
- [17655] Lexfo_250523.pdf — no match: The audit scope covers external assets (domains, GitHub repos, AWS config) but no smart contracts are listed. The report is a penetration test, not a smart contract audit.
- [17656] MorphoDAO_Frontend_04042022.pdf — no match: This is a frontend penetration test report, not a smart contract audit. No smart contracts are in scope.
- [17657] 2025-05-19-spearbit.pdf — no match: Extracted from the executive summary and findings sections. The report covers the morpho-vaults-v2 repository with commit 77aa7c5b. The audit timeline is May 20th to Jul 11th, but the report date is October 13, 2025.
- [17658] 2025-07-15-competition.pdf — no match: No explicit scope section found; contract names extracted from findings and context. Audit date from cover page: 'November5,2025'.
- [17659] 2025-07-15-zellic.pdf — matched: Extracted contracts from scope tables and file listings. Audit date from cover page and timeline.
- [17660] 2025-08-11-spearbit.pdf — no match: Extracted from the executive summary and findings sections. The report covers PR 723 and PR 724 of the vault-v2 repository. The main contracts are VaultV2, MorphoMarketV1Adapter, MorphoVaultV1Adapter, and MorphoMarketV1AdapterFactory.
- [17661] 2025-09-15-blackthorn.pdf — matched: All contracts listed in the scope section of the audit report. Date extracted from 'Date Audited: August13-August20,2025'.
- [17662] 2025-09-15-chainsecurity.pdf — matched: Extracted all contracts from scope table and renamed files. Audit date from cover page: September 16, 2025.
- [17663] 2025-09-15-spearbit.pdf — no match: Extracted from the report's Executive Summary and Findings sections. The report covers a fix review of the vault-v2 protocol, specifically the VaultV2 contract and two adapter implementations (MorphoMarketV1Adapter and MorphoVaultV1Adapter) plus the factory. The audit date is from the report cover page.
- [17664] 2025-12-04-market-v1-adapter-v2-blackthorn.pdf — no match: Scope section lists two repositories with specific files. Contract names extracted from file paths. Audit date from 'Date Audited: November24-November27,2025' using end date.
- [17665] 2025-12-04-market-v1-adapter-v2-spearbit.pdf — no match: Extracted 4 contracts from scope section and file paths. Audit date from cover page.
- [17666] 2025-12-15-market-v1-adapter-v2-certora.pdf — matched: Extracted 15 contract names from the scope table on page 3. Audit date inferred from work period end date (December 15, 2025).
- [17667] 2025-09-11-spearbit.pdf — matched: No explicit scope section; contracts inferred from findings and executive summary.
- [17668] 2025-12-04-market-v1-adapter-v2-certora.pdf — matched: Extracted 15 contract names from the scope section listing file paths. Audit date inferred from work period end date (December 15, 2025).
- [17669] 2024-10-29-pre-liquidation-spearbit.pdf — no match: No explicit scope section; contracts inferred from findings and context. Audit date from report header.
- [17670] 2024-11-01-pre-liquidation-ABDK-consulting.pdf — no match: Scope section lists files: PreLiquidation.sol, PreLiquidationFactory.sol, interfaces/IPreLiquidation.sol, IPreLiquidationCallback.sol, IPreLiquidationFactory.sol, libraries/periphery/PreLiquidationAddressLib.sol, libraries/ErrorsLib.sol, libraries/EventsLib.sol. Audit date from cover page: '1st November 2024'.
- [17671] 2023-11-14-metamorpho-cantina-managed-review.pdf — no match: The report does not have a dedicated scope section, but contract names are extracted from the report title, context references in findings, and file paths mentioned. The audit date is from the cover page: November 14, 2023.
- [17672] 2023-11-16-morpho-blue-periphery-open-zeppelin.pdf — matched: Extracted all contracts from the scope section of the audit report, including interfaces and libraries. The audit date is from the cover page: 'November 16, 2023'.
- [17673] 2024-01-05-periphery-cantina-competition.pdf — matched: The report lists the audited repositories: morpho-blue-irm, morpho-blue-oracles, metamorpho, morpho-blue-bundlers, universal-rewards-distributor, erc20-permissioned. The findings reference specific contracts within these repos. The audit date is from the cover page: 'February 23, 2024'.
- [17674] 2024-09-23-metamorpho-diff-cantina-managed-review.pdf — no match: Only MetaMorpho contract is explicitly mentioned in scope. Other contracts (MorphoChainlinkOracleV2, PendingLib, Morpho) are referenced but not in scope.
- [17675] 2025-01-10-metamorpho-v1.1-open-zeppelin.pdf — matched: Scope section explicitly lists contracts and files under src/.
- [17676] 2025-02-20-metamorpho-v1.1-cantina-managed.pdf — no match: The report does not have a dedicated scope section or table listing contracts. The only contract name explicitly mentioned is MetaMorpho, which is the subject of the review. The date is from the cover page.
- [17677] 2024-03-11-morpho-public-allocator-cantina-managed.pdf — no match: No explicit scope section found; contracts inferred from report title and findings context. Audit date from cover page: March 11, 2024.
- [17678] 2023-10-13-morpho-blue-and-speed-jump-irm-open-zeppelin.pdf — matched: All contracts listed in the Scope section were extracted. The Irm contract is from a separate repository but included as in scope.
- [17679] 2023-11-13-morpho-blue-cantina-managed-review.pdf — matched: Extracted contract names from the audit report text, primarily from finding contexts and file references. The report does not have a dedicated scope section; instead, contracts are mentioned throughout. The audit date is from the cover page: April 22, 2024.
- [17680] 2024-01-05-morpho-blue-cantina-competition.pdf — matched: Extracted from report title page date and scope context in findings.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Cantina Contest | VaultV2Factory | own contract | VaultV2Factory (selected) `0xa1d94f...6c0405` — deployed 2025-09-16 13:37:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Cantina Contest | VaultV2 | unmatched — not counted | — | main contract described in scope | no |
| Cantina Contest | MorphoMarketV1Adapter | unmatched — not counted | — | mentioned as example adapter in src/adapters folder | no |
| Cantina Contest | MorphoVaultV1Adapter | unmatched — not counted | — | mentioned as example adapter in src/adapters folder | no |
| Cantina Contest | SingleMorphoVaultV1Vic | unmatched — not counted | — | mentioned as VIC for single Vault v1 supply | no |
| Cantina Contest | ManualVic | unmatched — not counted | — | mentioned as flexible VIC | no |
| Cantina Contest | Morpho | own contract | Morpho (selected) `0x01b0bd...67a83a` — deployed 2025-07-17 15:46:32+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Cantina Contest | IMorpho | unmatched — not counted | — | listed in scope table | no |
| Cantina Contest | MorphoBalancesLib | unmatched — not counted | — | listed in scope table | no |
| Cantina Contest | MorphoStorageLib | unmatched — not counted | — | listed in scope table | no |
| Cantina Contest | EventsLib | unmatched — not counted | — | listed in scope table | no |
| Cantina Contest | MorphoLib | unmatched — not counted | — | listed in scope table | no |
| Cantina Contest | ErrorsLib | unmatched — not counted | — | listed in scope table | no |
| Cantina Contest | MathLib | unmatched — not counted | — | listed in scope table | no |
| Cantina Contest | UtilsLib | unmatched — not counted | — | listed in scope table | no |
| Cantina Contest | SafeTransferLib | unmatched — not counted | — | listed in scope table | no |
| Cantina Contest | SharesMathLib | unmatched — not counted | — | listed in scope table | no |
| Cantina Contest | IMorphoCallbacks | unmatched — not counted | — | listed in scope table | no |
| Cantina Contest | MarketParamsLib | unmatched — not counted | — | listed in scope table | no |
| Cantina Contest | ConstantsLib | unmatched — not counted | — | listed in scope table | no |
| Cantina Contest | IIrm | unmatched — not counted | — | listed in scope table | no |
| Cantina Contest | IOracle | unmatched — not counted | — | listed in scope table | no |
| Cantina Contest | IERC20 | unmatched — not counted | — | listed in scope table | no |
| Cantina Contest | SpeedJumpIrm | unmatched — not counted | — | listed in scope table | no |
| Cantina Contest | MathLib | unmatched — not counted | — | listed in scope table | no |
| Cantina Contest | ErrorsLib | unmatched — not counted | — | listed in scope table | no |
| Cantina Contest | UtilsLib | unmatched — not counted | — | listed in scope table | no |
| Cantina Contest | ChainlinkOracle | unmatched — not counted | — | listed in scope table | no |
| Cantina Contest | ChainlinkDataFeedLib | unmatched — not counted | — | listed in scope table | no |
| Cantina Contest | AggregatorV3Interface | unmatched — not counted | — | listed in scope table | no |
| Cantina Contest | VaultLib | unmatched — not counted | — | listed in scope table | no |
| Cantina Contest | IERC4626 | unmatched — not counted | — | listed in scope table | no |
| Cantina Contest | MetaMorpho | unmatched — not counted | — | listed in scope table | no |
| Cantina Contest | IMetaMorpho | unmatched — not counted | — | listed in scope table | no |
| Cantina Contest | EventsLib | unmatched — not counted | — | listed in scope table | no |
| Cantina Contest | MetaMorphoFactory | own contract | MetaMorphoFactory (selected) `0xa9c3d3...c41101` — deployed 2024-01-03 11:15:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Cantina Contest | ConstantsLib | unmatched — not counted | — | listed in scope table | no |
| Cantina Contest | IMorphoMarketParams | unmatched — not counted | — | listed in scope table | no |
| Cantina Contest | IAaveV3 | unmatched — not counted | — | listed in scope table | no |
| Cantina Contest | MorphoBundler | unmatched — not counted | — | listed in scope table | no |
| Cantina Contest | IAaveV2 | unmatched — not counted | — | listed in scope table | no |
| Cantina Contest | IAaveV3Optimizer | unmatched — not counted | — | listed in scope table | no |
| Cantina Contest | ERC4626Bundler | unmatched — not counted | — | listed in scope table | no |
| Cantina Contest | CompoundV3MigrationBundler | own contract | CompoundV3MigrationBundler (selected) `0x3a0e2e...479558` — deployed 2024-01-03 17:48:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Cantina Contest | ICompoundV3 | unmatched — not counted | — | listed in scope table | no |
| Cantina Contest | AaveV3OptimizerMigrationBundler | own contract | AaveV3OptimizerMigrationBundler (selected) `0x16f38d...6d2f9c` — deployed 2024-01-03 17:48:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Cantina Contest | CompoundV2MigrationBundler | own contract | CompoundV2MigrationBundler (selected) `0x26bf52...8c8647` — deployed 2024-01-03 17:48:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Cantina Contest | StEthBundler | unmatched — not counted | — | listed in scope table | no |
| Cantina Contest | BaseBundler | unmatched — not counted | — | listed in scope table | no |
| Cantina Contest | TransferBundler | unmatched — not counted | — | listed in scope table | no |
| Cantina Contest | WNativeBundler | unmatched — not counted | — | listed in scope table | no |
| Cantina Contest | IWstEth | unmatched — not counted | — | listed in scope table | no |
| Cantina Contest | UrdBundler | unmatched — not counted | — | listed in scope table | no |
| Cantina Contest | EthereumBundler | own contract | EthereumBundler (selected) `0xa7995f...f55107` — deployed 2024-01-03 17:48:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Cantina Contest | Permit2Bundler | unmatched — not counted | — | listed in scope table | no |
| Cantina Contest | AaveV2MigrationBundler | own contract | AaveV2MigrationBundler (selected) `0xb3dcc7...aa8e76` — deployed 2024-01-03 17:48:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Cantina Contest | AaveV3MigrationBundler | own proxy deployment | AaveV3MigrationBundler (proxy) (selected) `0x98ccb1...2f9bdc` — deployed 2024-01-03 17:48:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Cantina Contest | MigrationBundler | unmatched — not counted | — | listed in scope table | no |
| Cantina Contest | EthereumPermitBundler | unmatched — not counted | — | listed in scope table | no |
| Cantina Contest | PermitBundler | unmatched — not counted | — | listed in scope table | no |
| Cantina Contest | IDaiPermit | unmatched — not counted | — | listed in scope table | no |
| Cantina Contest | IMorphoBundler | unmatched — not counted | — | listed in scope table | no |
| Cantina Contest | ICToken | unmatched — not counted | — | listed in scope table | no |
| Cantina Contest | ICEth | unmatched — not counted | — | listed in scope table | no |
| Cantina Contest | IStEth | unmatched — not counted | — | listed in scope table | no |
| Cantina Contest | MainnetLib | unmatched — not counted | — | listed in scope table | no |
| Cantina Contest | AaveV2EthereumMigrationBundler | unmatched — not counted | — | listed in scope table | no |
| Cantina Contest | IWNative | unmatched — not counted | — | listed in scope table | no |
| Cantina Contest | EthereumStEthBundler | unmatched — not counted | — | listed in scope table | no |
| Cantina Contest | IMulticall | unmatched — not counted | — | listed in scope table | no |
| Cantina Contest | IComptroller | unmatched — not counted | — | listed in scope table | no |
| Cantina Contest | UniversalRewardsDistributor | own contract | UniversalRewardsDistributor (selected) `0x330eef...e61ddb` — deployed 2024-03-10 18:00:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Cantina Contest | IUniversalRewardsDistributor | unmatched — not counted | — | listed in scope table | no |
| Cantina Contest | UrdFactory | own contract | UrdFactory (selected) `0x9baa51...ee7c8d` — deployed 2023-12-28 18:50:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Cantina Contest | ERC20PermissionedBase | unmatched — not counted | — | listed in scope table | no |
| omniscia-report | Auth | unmatched — not counted | — | listed in scope table | no |
| omniscia-report | RolesAuthority | unmatched — not counted | — | listed in scope table | no |
| omniscia-report | Token | unmatched — not counted | — | listed in scope table | no |
| 2025-05-19-spearbit.pdf | VaultV2 | unmatched — not counted | — | listed in scope | no |
| 2025-05-19-spearbit.pdf | MetaMorphoAdapter | unmatched — not counted | — | listed in scope | no |
| 2025-05-19-spearbit.pdf | MorphoBlueAdapter | unmatched — not counted | — | listed in scope | no |
| 2025-05-19-spearbit.pdf | ManualVic | unmatched — not counted | — | listed in scope | no |
| 2025-05-19-spearbit.pdf | IAdapter | unmatched — not counted | — | listed in scope | no |
| 2025-05-19-spearbit.pdf | IVaultV2 | unmatched — not counted | — | listed in scope | no |
| 2025-05-19-spearbit.pdf | IMetaMorphoAdapter | unmatched — not counted | — | listed in scope | no |
| 2025-05-19-spearbit.pdf | IMorphoBlueAdapter | unmatched — not counted | — | listed in scope | no |
| 2025-05-19-spearbit.pdf | IVic | unmatched — not counted | — | listed in scope | no |
| 2025-05-19-spearbit.pdf | IManualVic | unmatched — not counted | — | listed in scope | no |
| 2025-05-19-spearbit.pdf | IERC4626 | unmatched — not counted | — | listed in scope | no |
| 2025-05-19-spearbit.pdf | MorphoBlueAdapterFactory | unmatched — not counted | — | listed in scope | no |
| 2025-05-19-spearbit.pdf | MetaMorphoAdapterFactory | unmatched — not counted | — | listed in scope | no |
| 2025-05-19-spearbit.pdf | SafeERC20Lib | unmatched — not counted | — | listed in scope | no |
| 2025-05-19-spearbit.pdf | MathLib | unmatched — not counted | — | listed in scope | no |
| 2025-05-19-spearbit.pdf | ErrorsLib | unmatched — not counted | — | listed in scope | no |
| 2025-05-19-spearbit.pdf | EventsLib | unmatched — not counted | — | listed in scope | no |
| 2025-05-19-spearbit.pdf | MarketParamsLib | unmatched — not counted | — | listed in scope | no |
| 2025-05-19-spearbit.pdf | MorphoBalancesLib | unmatched — not counted | — | listed in scope | no |
| 2025-07-15-competition.pdf | VaultV2 | unmatched — not counted | — | mentioned in findings context and recommendation | no |
| 2025-07-15-competition.pdf | SingleMorphoVaultV1Vic | unmatched — not counted | — | explicitly named in finding 3.1.3 | no |
| 2025-07-15-competition.pdf | ManualVic | unmatched — not counted | — | mentioned in finding 3.1.1 and recommendation | no |
| 2025-07-15-competition.pdf | MorphoVaultV1Adapter | unmatched — not counted | — | mentioned in finding 3.1.2 and 3.1.3 | no |
| 2025-07-15-zellic.pdf | VaultV2 | unmatched — not counted | — | Listed in scope table and mentioned throughout report | no |
| 2025-07-15-zellic.pdf | VaultV2Factory | own contract | VaultV2Factory (selected) `0xa1d94f...6c0405` — deployed 2025-09-16 13:37:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-07-15-zellic.pdf | MetaMorphoAdapter | unmatched — not counted | — | Listed in scope as adapters/*.sol and threat model section | no |
| 2025-07-15-zellic.pdf | MorphoBlueAdapter | unmatched — not counted | — | Listed in scope as adapters/*.sol and threat model section | no |
| 2025-07-15-zellic.pdf | ManualVic | unmatched — not counted | — | Listed in secondary review scope | no |
| 2025-07-15-zellic.pdf | ManualVicFactory | unmatched — not counted | — | Listed in secondary review scope | no |
| 2025-07-15-zellic.pdf | IManualVic | unmatched — not counted | — | Listed in secondary review scope | no |
| 2025-07-15-zellic.pdf | IManualVicFactory | unmatched — not counted | — | Listed in secondary review scope | no |
| 2025-07-15-zellic.pdf | ConstantsLib | unmatched — not counted | — | Mentioned in finding 3.2 as target | no |
| 2025-08-11-spearbit.pdf | VaultV2 | unmatched — not counted | — | mentioned in scope and findings | no |
| 2025-08-11-spearbit.pdf | MorphoMarketV1Adapter | unmatched — not counted | — | mentioned in scope and findings | no |
| 2025-08-11-spearbit.pdf | MorphoVaultV1Adapter | unmatched — not counted | — | mentioned in scope and findings | no |
| 2025-08-11-spearbit.pdf | MorphoMarketV1AdapterFactory | unmatched — not counted | — | mentioned in findings | no |
| 2025-09-15-blackthorn.pdf | IMorphoMarketV1AdapterFactory | unmatched — not counted | — | listed in scope | no |
| 2025-09-15-blackthorn.pdf | IMorphoMarketV1Adapter | unmatched — not counted | — | listed in scope | no |
| 2025-09-15-blackthorn.pdf | IMorphoVaultV1AdapterFactory | unmatched — not counted | — | listed in scope | no |
| 2025-09-15-blackthorn.pdf | IMorphoVaultV1Adapter | unmatched — not counted | — | listed in scope | no |
| 2025-09-15-blackthorn.pdf | MorphoMarketV1AdapterFactory | unmatched — not counted | — | listed in scope | no |
| 2025-09-15-blackthorn.pdf | MorphoMarketV1Adapter | unmatched — not counted | — | listed in scope | no |
| 2025-09-15-blackthorn.pdf | MorphoVaultV1AdapterFactory | own contract | MorphoVaultV1AdapterFactory (selected) `0xd1b8e2...f63394` — deployed 2025-09-16 13:37:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-09-15-blackthorn.pdf | MorphoVaultV1Adapter | unmatched — not counted | — | listed in scope | no |
| 2025-09-15-blackthorn.pdf | MetaMorphoImport | unmatched — not counted | — | listed in scope | no |
| 2025-09-15-blackthorn.pdf | MetaMorphoV1_1Import | unmatched — not counted | — | listed in scope | no |
| 2025-09-15-blackthorn.pdf | MorphoImport | unmatched — not counted | — | listed in scope | no |
| 2025-09-15-blackthorn.pdf | IAdapter | unmatched — not counted | — | listed in scope | no |
| 2025-09-15-blackthorn.pdf | IERC20 | unmatched — not counted | — | listed in scope | no |
| 2025-09-15-blackthorn.pdf | IERC2612 | unmatched — not counted | — | listed in scope | no |
| 2025-09-15-blackthorn.pdf | IERC4626 | unmatched — not counted | — | listed in scope | no |
| 2025-09-15-blackthorn.pdf | IGate | unmatched — not counted | — | listed in scope | no |
| 2025-09-15-blackthorn.pdf | IVaultV2Factory | unmatched — not counted | — | listed in scope | no |
| 2025-09-15-blackthorn.pdf | IVaultV2 | unmatched — not counted | — | listed in scope | no |
| 2025-09-15-blackthorn.pdf | ConstantsLib | unmatched — not counted | — | listed in scope | no |
| 2025-09-15-blackthorn.pdf | ErrorsLib | unmatched — not counted | — | listed in scope | no |
| 2025-09-15-blackthorn.pdf | EventsLib | unmatched — not counted | — | listed in scope | no |
| 2025-09-15-blackthorn.pdf | MathLib | unmatched — not counted | — | listed in scope | no |
| 2025-09-15-blackthorn.pdf | SafeERC20Lib | unmatched — not counted | — | listed in scope | no |
| 2025-09-15-blackthorn.pdf | VaultV2Factory | own contract | VaultV2Factory (selected) `0xa1d94f...6c0405` — deployed 2025-09-16 13:37:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-09-15-blackthorn.pdf | VaultV2 | unmatched — not counted | — | listed in scope | no |
| 2025-09-15-chainsecurity.pdf | VaultV2 | unmatched — not counted | — | listed in scope table | no |
| 2025-09-15-chainsecurity.pdf | VaultV2Factory | own contract | VaultV2Factory (selected) `0xa1d94f...6c0405` — deployed 2025-09-16 13:37:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-09-15-chainsecurity.pdf | MetaMorphoAdapter | unmatched — not counted | — | listed in scope table (later renamed to MorphoVaultV1Adapter) | no |
| 2025-09-15-chainsecurity.pdf | MetaMorphoAdapterFactory | unmatched — not counted | — | listed in scope table (later renamed to MorphoVaultV1AdapterFactory) | no |
| 2025-09-15-chainsecurity.pdf | MorphoBlueAdapter | unmatched — not counted | — | listed in scope table (later renamed to MorphoMarketV1Adapter) | no |
| 2025-09-15-chainsecurity.pdf | MorphoBlueAdapterFactory | unmatched — not counted | — | listed in scope table (later renamed to MorphoMarketV1AdapterFactory) | no |
| 2025-09-15-chainsecurity.pdf | MorphoImport | unmatched — not counted | — | listed in scope table | no |
| 2025-09-15-chainsecurity.pdf | ConstantsLib | unmatched — not counted | — | listed in scope table | no |
| 2025-09-15-chainsecurity.pdf | ErrorsLib | unmatched — not counted | — | listed in scope table | no |
| 2025-09-15-chainsecurity.pdf | EventsLib | unmatched — not counted | — | listed in scope table | no |
| 2025-09-15-chainsecurity.pdf | MathLib | unmatched — not counted | — | listed in scope table | no |
| 2025-09-15-chainsecurity.pdf | SafeERC20Lib | unmatched — not counted | — | listed in scope table | no |
| 2025-09-15-chainsecurity.pdf | VaultV2AddressLib | unmatched — not counted | — | listed in scope table (later deleted) | no |
| 2025-09-15-chainsecurity.pdf | ManualVic | unmatched — not counted | — | listed in scope table (later deleted) | no |
| 2025-09-15-chainsecurity.pdf | ManualVicFactory | unmatched — not counted | — | listed in scope table (later deleted) | no |
| 2025-09-15-chainsecurity.pdf | MorphoVaultV1Adapter | unmatched — not counted | — | renamed from MetaMorphoAdapter in scope update | no |
| 2025-09-15-chainsecurity.pdf | MorphoVaultV1AdapterFactory | own contract | MorphoVaultV1AdapterFactory (selected) `0xd1b8e2...f63394` — deployed 2025-09-16 13:37:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-09-15-chainsecurity.pdf | MorphoMarketV1Adapter | unmatched — not counted | — | renamed from MorphoBlueAdapter in scope update | no |
| 2025-09-15-chainsecurity.pdf | MorphoMarketV1AdapterFactory | unmatched — not counted | — | renamed from MorphoBlueAdapterFactory in scope update | no |
| 2025-09-15-spearbit.pdf | VaultV2 | unmatched — not counted | — | Listed in scope context and findings | no |
| 2025-09-15-spearbit.pdf | MorphoMarketV1Adapter | unmatched — not counted | — | Listed in scope context and findings | no |
| 2025-09-15-spearbit.pdf | MorphoVaultV1Adapter | unmatched — not counted | — | Listed in scope context and findings | no |
| 2025-09-15-spearbit.pdf | MorphoMarketV1AdapterFactory | unmatched — not counted | — | Listed in scope context and findings | no |
| 2025-12-04-market-v1-adapter-v2-blackthorn.pdf | AdaptiveCurveIrmLib | unmatched — not counted | — | listed in scope | no |
| 2025-12-04-market-v1-adapter-v2-blackthorn.pdf | IMorphoMarketV1AdapterFactory | unmatched — not counted | — | listed in scope | no |
| 2025-12-04-market-v1-adapter-v2-blackthorn.pdf | IMorphoMarketV1Adapter | unmatched — not counted | — | listed in scope | no |
| 2025-12-04-market-v1-adapter-v2-blackthorn.pdf | MorphoMarketV1AdapterFactory | unmatched — not counted | — | listed in scope | no |
| 2025-12-04-market-v1-adapter-v2-blackthorn.pdf | MorphoMarketV1Adapter | unmatched — not counted | — | listed in scope | no |
| 2025-12-04-market-v1-adapter-v2-spearbit.pdf | AdaptiveCurveIrmLib | unmatched — not counted | — | listed in scope | no |
| 2025-12-04-market-v1-adapter-v2-spearbit.pdf | MorphoMarketV1Adapter | unmatched — not counted | — | listed in scope | no |
| 2025-12-04-market-v1-adapter-v2-spearbit.pdf | MorphoMarketV1AdapterFactory | unmatched — not counted | — | listed in scope | no |
| 2025-12-04-market-v1-adapter-v2-spearbit.pdf | AdaptiveCurveIrmImport | unmatched — not counted | — | listed in scope | no |
| 2025-12-15-market-v1-adapter-v2-certora.pdf | MorphoMarketV1AdapterV2 | unmatched — not counted | — | listed in scope table | no |
| 2025-12-15-market-v1-adapter-v2-certora.pdf | MorphoMarketV1AdapterV2Factory | own contract | MorphoMarketV1AdapterV2Factory (selected) `0x32bb1c...61ccc1` — deployed 2025-12-10 12:36:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-12-15-market-v1-adapter-v2-certora.pdf | IMorphoMarketV1AdapterV2 | unmatched — not counted | — | listed in scope table | no |
| 2025-12-15-market-v1-adapter-v2-certora.pdf | IMorphoMarketV1AdapterV2Factory | unmatched — not counted | — | listed in scope table | no |
| 2025-12-15-market-v1-adapter-v2-certora.pdf | ErrorsLib | unmatched — not counted | — | listed in scope table | no |
| 2025-12-15-market-v1-adapter-v2-certora.pdf | IERC4626 | unmatched — not counted | — | listed in scope table | no |
| 2025-12-15-market-v1-adapter-v2-certora.pdf | AdaptiveCurveIrmLib | unmatched — not counted | — | listed in scope table | no |
| 2025-12-15-market-v1-adapter-v2-certora.pdf | MorphoMarketV1Registry | unmatched — not counted | — | listed in scope table | no |
| 2025-12-15-market-v1-adapter-v2-certora.pdf | MorphoMarketV1RegistryV2 | unmatched — not counted | — | listed in scope table | no |
| 2025-12-15-market-v1-adapter-v2-certora.pdf | MorphoVaultV1Registry | unmatched — not counted | — | listed in scope table | no |
| 2025-12-15-market-v1-adapter-v2-certora.pdf | RegistryList | own contract | RegistryList (selected) `0x3696c5...d9364e` — deployed 2025-09-16 13:46:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-12-15-market-v1-adapter-v2-certora.pdf | IMorphoMarketV1Registry | unmatched — not counted | — | listed in scope table | no |
| 2025-12-15-market-v1-adapter-v2-certora.pdf | IMorphoMarketV1RegistryV2 | unmatched — not counted | — | listed in scope table | no |
| 2025-12-15-market-v1-adapter-v2-certora.pdf | IMorphoVaultV1Registry | unmatched — not counted | — | listed in scope table | no |
| 2025-12-15-market-v1-adapter-v2-certora.pdf | IRegistryList | unmatched — not counted | — | listed in scope table | no |
| 2025-09-11-spearbit.pdf | MorphoMarketV1Registry | unmatched — not counted | — | mentioned in finding context | no |
| 2025-09-11-spearbit.pdf | MorphoVaultV1Registry | unmatched — not counted | — | mentioned in finding context | no |
| 2025-09-11-spearbit.pdf | RegistryList | own contract | RegistryList (selected) `0x3696c5...d9364e` — deployed 2025-09-16 13:46:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-12-04-market-v1-adapter-v2-certora.pdf | MorphoMarketV1AdapterV2 | unmatched — not counted | — | listed in scope | no |
| 2025-12-04-market-v1-adapter-v2-certora.pdf | MorphoMarketV1AdapterV2Factory | own contract | MorphoMarketV1AdapterV2Factory (selected) `0x32bb1c...61ccc1` — deployed 2025-12-10 12:36:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-12-04-market-v1-adapter-v2-certora.pdf | IMorphoMarketV1AdapterV2 | unmatched — not counted | — | listed in scope | no |
| 2025-12-04-market-v1-adapter-v2-certora.pdf | IMorphoMarketV1AdapterV2Factory | unmatched — not counted | — | listed in scope | no |
| 2025-12-04-market-v1-adapter-v2-certora.pdf | ErrorsLib | unmatched — not counted | — | listed in scope | no |
| 2025-12-04-market-v1-adapter-v2-certora.pdf | IERC4626 | unmatched — not counted | — | listed in scope | no |
| 2025-12-04-market-v1-adapter-v2-certora.pdf | AdaptiveCurveIrmLib | unmatched — not counted | — | listed in scope | no |
| 2025-12-04-market-v1-adapter-v2-certora.pdf | MorphoMarketV1Registry | unmatched — not counted | — | listed in scope | no |
| 2025-12-04-market-v1-adapter-v2-certora.pdf | MorphoMarketV1RegistryV2 | unmatched — not counted | — | listed in scope | no |
| 2025-12-04-market-v1-adapter-v2-certora.pdf | MorphoVaultV1Registry | unmatched — not counted | — | listed in scope | no |
| 2025-12-04-market-v1-adapter-v2-certora.pdf | RegistryList | own contract | RegistryList (selected) `0x3696c5...d9364e` — deployed 2025-09-16 13:46:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-12-04-market-v1-adapter-v2-certora.pdf | IMorphoMarketV1Registry | unmatched — not counted | — | listed in scope | no |
| 2025-12-04-market-v1-adapter-v2-certora.pdf | IMorphoMarketV1RegistryV2 | unmatched — not counted | — | listed in scope | no |
| 2025-12-04-market-v1-adapter-v2-certora.pdf | IMorphoVaultV1Registry | unmatched — not counted | — | listed in scope | no |
| 2025-12-04-market-v1-adapter-v2-certora.pdf | IRegistryList | unmatched — not counted | — | listed in scope | no |
| 2024-10-29-pre-liquidation-spearbit.pdf | PreLiquidation | unmatched — not counted | — | mentioned in findings context and executive summary | no |
| 2024-10-29-pre-liquidation-spearbit.pdf | PreLiquidationFactory | unmatched — not counted | — | mentioned in finding 5.2.3 | no |
| 2024-11-01-pre-liquidation-ABDK-consulting.pdf | PreLiquidation | unmatched — not counted | — | listed in scope section | no |
| 2024-11-01-pre-liquidation-ABDK-consulting.pdf | PreLiquidationFactory | unmatched — not counted | — | listed in scope section | no |
| 2024-11-01-pre-liquidation-ABDK-consulting.pdf | IPreLiquidation | unmatched — not counted | — | listed in scope section | no |
| 2024-11-01-pre-liquidation-ABDK-consulting.pdf | IPreLiquidationCallback | unmatched — not counted | — | listed in scope section | no |
| 2024-11-01-pre-liquidation-ABDK-consulting.pdf | IPreLiquidationFactory | unmatched — not counted | — | listed in scope section | no |
| 2024-11-01-pre-liquidation-ABDK-consulting.pdf | PreLiquidationAddressLib | unmatched — not counted | — | listed in scope section | no |
| 2024-11-01-pre-liquidation-ABDK-consulting.pdf | ErrorsLib | unmatched — not counted | — | listed in scope section | no |
| 2024-11-01-pre-liquidation-ABDK-consulting.pdf | EventsLib | unmatched — not counted | — | listed in scope section | no |
| 2023-11-14-metamorpho-cantina-managed-review.pdf | MetaMorpho | unmatched — not counted | — | listed in scope and findings | no |
| 2023-11-14-metamorpho-cantina-managed-review.pdf | IMetaMorpho | unmatched — not counted | — | listed in scope and findings | no |
| 2023-11-14-metamorpho-cantina-managed-review.pdf | ErrorsLib | unmatched — not counted | — | listed in findings | no |
| 2023-11-14-metamorpho-cantina-managed-review.pdf | EventsLib | unmatched — not counted | — | listed in findings | no |
| 2023-11-14-metamorpho-cantina-managed-review.pdf | UtilsLib | unmatched — not counted | — | listed in findings | no |
| 2023-11-14-metamorpho-cantina-managed-review.pdf | MathLib | unmatched — not counted | — | listed in findings | no |
| 2023-11-14-metamorpho-cantina-managed-review.pdf | SharesMathLib | unmatched — not counted | — | listed in findings | no |
| 2023-11-14-metamorpho-cantina-managed-review.pdf | MorphoLib | unmatched — not counted | — | listed in findings | no |
| 2023-11-14-metamorpho-cantina-managed-review.pdf | MorphoBalancesLib | unmatched — not counted | — | listed in findings | no |
| 2023-11-14-metamorpho-cantina-managed-review.pdf | MarketParamsLib | unmatched — not counted | — | listed in findings | no |
| 2023-11-14-metamorpho-cantina-managed-review.pdf | SafeCast | unmatched — not counted | — | listed in findings | no |
| 2023-11-14-metamorpho-cantina-managed-review.pdf | SafeERC20 | unmatched — not counted | — | listed in findings | no |
| 2023-11-14-metamorpho-cantina-managed-review.pdf | ERC4626 | unmatched — not counted | — | listed in findings | no |
| 2023-11-14-metamorpho-cantina-managed-review.pdf | ConstantsLib | unmatched — not counted | — | listed in findings | no |
| 2023-11-16-morpho-blue-periphery-open-zeppelin.pdf | BaseBundler | unmatched — not counted | — | listed in scope | no |
| 2023-11-16-morpho-blue-periphery-open-zeppelin.pdf | ERC4626Bundler | unmatched — not counted | — | listed in scope | no |
| 2023-11-16-morpho-blue-periphery-open-zeppelin.pdf | MorphoBundler | unmatched — not counted | — | listed in scope | no |
| 2023-11-16-morpho-blue-periphery-open-zeppelin.pdf | Permit2Bundler | unmatched — not counted | — | listed in scope | no |
| 2023-11-16-morpho-blue-periphery-open-zeppelin.pdf | PermitBundler | unmatched — not counted | — | listed in scope | no |
| 2023-11-16-morpho-blue-periphery-open-zeppelin.pdf | StEthBundler | unmatched — not counted | — | listed in scope | no |
| 2023-11-16-morpho-blue-periphery-open-zeppelin.pdf | TransferBundler | unmatched — not counted | — | listed in scope | no |
| 2023-11-16-morpho-blue-periphery-open-zeppelin.pdf | UrdBundler | unmatched — not counted | — | listed in scope | no |
| 2023-11-16-morpho-blue-periphery-open-zeppelin.pdf | WNativeBundler | unmatched — not counted | — | listed in scope | no |
| 2023-11-16-morpho-blue-periphery-open-zeppelin.pdf | EthereumBundler | own contract | EthereumBundler (selected) `0xa7995f...f55107` — deployed 2024-01-03 17:48:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-11-16-morpho-blue-periphery-open-zeppelin.pdf | EthereumPermitBundler | unmatched — not counted | — | listed in scope | no |
| 2023-11-16-morpho-blue-periphery-open-zeppelin.pdf | EthereumStEthBundler | unmatched — not counted | — | listed in scope | no |
| 2023-11-16-morpho-blue-periphery-open-zeppelin.pdf | IDaiPermit | unmatched — not counted | — | listed in scope | no |
| 2023-11-16-morpho-blue-periphery-open-zeppelin.pdf | MainnetLib | unmatched — not counted | — | listed in scope | no |
| 2023-11-16-morpho-blue-periphery-open-zeppelin.pdf | AaveV2EthereumMigrationBundler | unmatched — not counted | — | listed in scope | no |
| 2023-11-16-morpho-blue-periphery-open-zeppelin.pdf | IMorphoBundler | unmatched — not counted | — | listed in scope | no |
| 2023-11-16-morpho-blue-periphery-open-zeppelin.pdf | IMulticall | unmatched — not counted | — | listed in scope | no |
| 2023-11-16-morpho-blue-periphery-open-zeppelin.pdf | IStEth | unmatched — not counted | — | listed in scope | no |
| 2023-11-16-morpho-blue-periphery-open-zeppelin.pdf | IWNative | unmatched — not counted | — | listed in scope | no |
| 2023-11-16-morpho-blue-periphery-open-zeppelin.pdf | IWstEth | unmatched — not counted | — | listed in scope | no |
| 2023-11-16-morpho-blue-periphery-open-zeppelin.pdf | ConstantsLib | unmatched — not counted | — | listed in scope | no |
| 2023-11-16-morpho-blue-periphery-open-zeppelin.pdf | ErrorsLib | unmatched — not counted | — | listed in scope | no |
| 2023-11-16-morpho-blue-periphery-open-zeppelin.pdf | AaveV2MigrationBundler | own contract | AaveV2MigrationBundler (selected) `0xb3dcc7...aa8e76` — deployed 2024-01-03 17:48:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-11-16-morpho-blue-periphery-open-zeppelin.pdf | AaveV3MigrationBundler | own proxy deployment | AaveV3MigrationBundler (proxy) (selected) `0x98ccb1...2f9bdc` — deployed 2024-01-03 17:48:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-11-16-morpho-blue-periphery-open-zeppelin.pdf | AaveV3OptimizerMigrationBundler | own contract | AaveV3OptimizerMigrationBundler (selected) `0x16f38d...6d2f9c` — deployed 2024-01-03 17:48:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-11-16-morpho-blue-periphery-open-zeppelin.pdf | CompoundV2MigrationBundler | own contract | CompoundV2MigrationBundler (selected) `0x26bf52...8c8647` — deployed 2024-01-03 17:48:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-11-16-morpho-blue-periphery-open-zeppelin.pdf | CompoundV3MigrationBundler | own contract | CompoundV3MigrationBundler (selected) `0x3a0e2e...479558` — deployed 2024-01-03 17:48:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-11-16-morpho-blue-periphery-open-zeppelin.pdf | MigrationBundler | unmatched — not counted | — | listed in scope | no |
| 2023-11-16-morpho-blue-periphery-open-zeppelin.pdf | ICEth | unmatched — not counted | — | listed in scope | no |
| 2023-11-16-morpho-blue-periphery-open-zeppelin.pdf | ICToken | unmatched — not counted | — | listed in scope | no |
| 2023-11-16-morpho-blue-periphery-open-zeppelin.pdf | ICompoundV3 | unmatched — not counted | — | listed in scope | no |
| 2023-11-16-morpho-blue-periphery-open-zeppelin.pdf | IComptroller | unmatched — not counted | — | listed in scope | no |
| 2023-11-16-morpho-blue-periphery-open-zeppelin.pdf | UniversalRewardsDistributor | own contract | UniversalRewardsDistributor (selected) `0x330eef...e61ddb` — deployed 2024-03-10 18:00:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-11-16-morpho-blue-periphery-open-zeppelin.pdf | UrdFactory | own contract | UrdFactory (selected) `0x9baa51...ee7c8d` — deployed 2023-12-28 18:50:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-11-16-morpho-blue-periphery-open-zeppelin.pdf | IUniversalRewardsDistributor | unmatched — not counted | — | listed in scope | no |
| 2023-11-16-morpho-blue-periphery-open-zeppelin.pdf | EventsLib | unmatched — not counted | — | listed in scope | no |
| 2023-11-16-morpho-blue-periphery-open-zeppelin.pdf | MetaMorpho | unmatched — not counted | — | listed in scope | no |
| 2023-11-16-morpho-blue-periphery-open-zeppelin.pdf | MetaMorphoFactory | own contract | MetaMorphoFactory (selected) `0xa9c3d3...c41101` — deployed 2024-01-03 11:15:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-11-16-morpho-blue-periphery-open-zeppelin.pdf | IMetaMorpho | unmatched — not counted | — | listed in scope | no |
| 2023-11-16-morpho-blue-periphery-open-zeppelin.pdf | IMorphoMarketParams | unmatched — not counted | — | listed in scope | no |
| 2023-11-16-morpho-blue-periphery-open-zeppelin.pdf | ChainlinkOracle | unmatched — not counted | — | listed in scope | no |
| 2023-11-16-morpho-blue-periphery-open-zeppelin.pdf | AggregatorV3Interface | unmatched — not counted | — | listed in scope | no |
| 2023-11-16-morpho-blue-periphery-open-zeppelin.pdf | IERC4626 | unmatched — not counted | — | listed in scope | no |
| 2023-11-16-morpho-blue-periphery-open-zeppelin.pdf | ChainlinkDataFeedLib | unmatched — not counted | — | listed in scope | no |
| 2023-11-16-morpho-blue-periphery-open-zeppelin.pdf | VaultLib | unmatched — not counted | — | listed in scope | no |
| 2024-01-05-periphery-cantina-competition.pdf | CompoundV2MigrationBundler | own contract | CompoundV2MigrationBundler (selected) `0x26bf52...8c8647` — deployed 2024-01-03 17:48:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-01-05-periphery-cantina-competition.pdf | ERC4626Bundler | unmatched — not counted | — | Listed in scope and findings reference this contract. | no |
| 2024-01-05-periphery-cantina-competition.pdf | AaveV2MigrationBundler | own contract | AaveV2MigrationBundler (selected) `0xb3dcc7...aa8e76` — deployed 2024-01-03 17:48:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-01-05-periphery-cantina-competition.pdf | AaveV3MigrationBundler | own proxy deployment | AaveV3MigrationBundler (proxy) (selected) `0x98ccb1...2f9bdc` — deployed 2024-01-03 17:48:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-01-05-periphery-cantina-competition.pdf | AaveV3OptimizerMigrationBundler | own contract | AaveV3OptimizerMigrationBundler (selected) `0x16f38d...6d2f9c` — deployed 2024-01-03 17:48:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-01-05-periphery-cantina-competition.pdf | ConstantsLib | unmatched — not counted | — | Listed in scope and findings reference this contract. | no |
| 2024-01-05-periphery-cantina-competition.pdf | MetaMorpho | unmatched — not counted | — | Listed in scope and findings reference this contract. | no |
| 2024-01-05-periphery-cantina-competition.pdf | CompoundV3MigrationBundler | own contract | CompoundV3MigrationBundler (selected) `0x3a0e2e...479558` — deployed 2024-01-03 17:48:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-01-05-periphery-cantina-competition.pdf | ERC20WrapperBundler | unmatched — not counted | — | Listed in scope and findings reference this contract. | no |
| 2024-09-23-metamorpho-diff-cantina-managed-review.pdf | MetaMorpho | unmatched — not counted | — | Listed in scope and findings context | no |
| 2025-01-10-metamorpho-v1.1-open-zeppelin.pdf | MetaMorphoV1_1 | unmatched — not counted | — | listed in scope | no |
| 2025-01-10-metamorpho-v1.1-open-zeppelin.pdf | MetaMorphoV1_1Factory | own contract | MetaMorphoV1_1Factory (selected) `0x1897a8...535c24` — deployed 2024-12-20 01:19:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-01-10-metamorpho-v1.1-open-zeppelin.pdf | IMetaMorpho | unmatched — not counted | — | listed in scope | no |
| 2025-01-10-metamorpho-v1.1-open-zeppelin.pdf | ConstantsLib | unmatched — not counted | — | listed in scope | no |
| 2025-01-10-metamorpho-v1.1-open-zeppelin.pdf | EventsLib | unmatched — not counted | — | listed in scope | no |
| 2025-02-20-metamorpho-v1.1-cantina-managed.pdf | MetaMorpho | unmatched — not counted | — | The report is a security review of 'metamorpho-v1.1' and mentions 'MetaMorpho vault' and 'MetaMorpho v1.0'. | no |
| 2024-03-11-morpho-public-allocator-cantina-managed.pdf | PublicAllocator | unmatched — not counted | — | Listed in scope and findings context | no |
| 2024-03-11-morpho-public-allocator-cantina-managed.pdf | MetaMorpho | unmatched — not counted | — | Listed in scope and findings context | no |
| 2024-03-11-morpho-public-allocator-cantina-managed.pdf | EventsLib | unmatched — not counted | — | Listed in findings context | no |
| 2024-03-11-morpho-public-allocator-cantina-managed.pdf | IPublicAllocator | unmatched — not counted | — | Listed in findings context | no |
| 2023-10-13-morpho-blue-and-speed-jump-irm-open-zeppelin.pdf | Morpho | own contract | Morpho (selected) `0x01b0bd...67a83a` — deployed 2025-07-17 15:46:32+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-10-13-morpho-blue-and-speed-jump-irm-open-zeppelin.pdf | IERC20 | unmatched — not counted | — | listed in scope | no |
| 2023-10-13-morpho-blue-and-speed-jump-irm-open-zeppelin.pdf | IIrm | unmatched — not counted | — | listed in scope | no |
| 2023-10-13-morpho-blue-and-speed-jump-irm-open-zeppelin.pdf | IMorpho | unmatched — not counted | — | listed in scope | no |
| 2023-10-13-morpho-blue-and-speed-jump-irm-open-zeppelin.pdf | IMorphoCallbacks | unmatched — not counted | — | listed in scope | no |
| 2023-10-13-morpho-blue-and-speed-jump-irm-open-zeppelin.pdf | IOracle | unmatched — not counted | — | listed in scope | no |
| 2023-10-13-morpho-blue-and-speed-jump-irm-open-zeppelin.pdf | ConstantsLib | unmatched — not counted | — | listed in scope | no |
| 2023-10-13-morpho-blue-and-speed-jump-irm-open-zeppelin.pdf | ErrorsLib | unmatched — not counted | — | listed in scope | no |
| 2023-10-13-morpho-blue-and-speed-jump-irm-open-zeppelin.pdf | MarketsParamsLib | unmatched — not counted | — | listed in scope | no |
| 2023-10-13-morpho-blue-and-speed-jump-irm-open-zeppelin.pdf | MathLib | unmatched — not counted | — | listed in scope | no |
| 2023-10-13-morpho-blue-and-speed-jump-irm-open-zeppelin.pdf | SafeTransferLib | unmatched — not counted | — | listed in scope | no |
| 2023-10-13-morpho-blue-and-speed-jump-irm-open-zeppelin.pdf | SharesMathLib | unmatched — not counted | — | listed in scope | no |
| 2023-10-13-morpho-blue-and-speed-jump-irm-open-zeppelin.pdf | EventsLib | unmatched — not counted | — | listed in scope | no |
| 2023-10-13-morpho-blue-and-speed-jump-irm-open-zeppelin.pdf | UtilsLib | unmatched — not counted | — | listed in scope | no |
| 2023-10-13-morpho-blue-and-speed-jump-irm-open-zeppelin.pdf | MorphoBalancesLib | unmatched — not counted | — | listed in scope | no |
| 2023-10-13-morpho-blue-and-speed-jump-irm-open-zeppelin.pdf | MorphoLib | unmatched — not counted | — | listed in scope | no |
| 2023-10-13-morpho-blue-and-speed-jump-irm-open-zeppelin.pdf | MorphoStorageLib | unmatched — not counted | — | listed in scope | no |
| 2023-10-13-morpho-blue-and-speed-jump-irm-open-zeppelin.pdf | Irm | unmatched — not counted | — | mentioned as audited separately | no |
| 2023-11-13-morpho-blue-cantina-managed-review.pdf | MorphoBlue | unmatched — not counted | — | Main contract name in title and throughout report | no |
| 2023-11-13-morpho-blue-cantina-managed-review.pdf | Morpho | own contract | Morpho (selected) `0x01b0bd...67a83a` — deployed 2025-07-17 15:46:32+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-11-13-morpho-blue-cantina-managed-review.pdf | IIrm | unmatched — not counted | — | Listed in context of findings (e.g., IIrm.sol#L14) | no |
| 2023-11-13-morpho-blue-cantina-managed-review.pdf | IOracle | unmatched — not counted | — | Listed in context of findings (e.g., IOracle.sol#L9-L13) | no |
| 2023-11-13-morpho-blue-cantina-managed-review.pdf | MathLib | unmatched — not counted | — | Listed in context of findings (e.g., MathLib.sol#L33) | no |
| 2023-11-13-morpho-blue-cantina-managed-review.pdf | SharesMathLib | unmatched — not counted | — | Listed in context of findings (e.g., SharesMathLib.sol#L10-L11) | no |
| 2023-11-13-morpho-blue-cantina-managed-review.pdf | UtilsLib | unmatched — not counted | — | Listed in context of findings (e.g., UtilsLib.sol) | no |
| 2023-11-13-morpho-blue-cantina-managed-review.pdf | MorphoLib | unmatched — not counted | — | Listed in context of findings (e.g., MorphoLib.sol) | no |
| 2023-11-13-morpho-blue-cantina-managed-review.pdf | MorphoBalancesLib | unmatched — not counted | — | Listed in context of findings (e.g., MorphoBalancesLib.sol#L94-L106) | no |
| 2023-11-13-morpho-blue-cantina-managed-review.pdf | MorphoStorageLib | unmatched — not counted | — | Listed in context of findings (e.g., MorphoStorageLib.sol) | no |
| 2023-11-13-morpho-blue-cantina-managed-review.pdf | EventsLib | unmatched — not counted | — | Listed in context of findings (e.g., EventsLib.sol#L85-L90) | no |
| 2023-11-13-morpho-blue-cantina-managed-review.pdf | ConstantsLib | unmatched — not counted | — | Listed in context of findings (e.g., ConstantsLib.sol#L17) | no |
| 2023-11-13-morpho-blue-cantina-managed-review.pdf | MarketParamsLib | unmatched — not counted | — | Listed in context of findings (e.g., MarketParamsLib.sol#L15-L16) | no |
| 2023-11-13-morpho-blue-cantina-managed-review.pdf | SafeTransferLib | unmatched — not counted | — | Listed in context of findings (e.g., SafeTransferLib.sol) | no |
| 2023-11-13-morpho-blue-cantina-managed-review.pdf | SpeedJumpIrm | unmatched — not counted | — | Listed in context of findings (e.g., SpeedJumpIrm.sol) | no |
| 2023-11-13-morpho-blue-cantina-managed-review.pdf | IrmMock | unmatched — not counted | — | Mentioned in finding 3.5.2 as a mock IRM | no |
| 2023-11-13-morpho-blue-cantina-managed-review.pdf | IMorpho | unmatched — not counted | — | Listed in context of findings (e.g., IMorpho.sol) | no |
| 2023-11-13-morpho-blue-cantina-managed-review.pdf | IMorphoCallbacks | unmatched — not counted | — | Listed in context of findings (e.g., IMorphoCallbacks.sol#L37-L41) | no |
| 2023-11-13-morpho-blue-cantina-managed-review.pdf | IMorphoMarketStruct | unmatched — not counted | — | Listed in finding 3.5.8 | no |
| 2023-11-13-morpho-blue-cantina-managed-review.pdf | IMorphoLite | unmatched — not counted | — | Suggested rename in finding 3.5.8 | no |
| 2023-11-13-morpho-blue-cantina-managed-review.pdf | IMulticall | unmatched — not counted | — | Listed in finding 3.5.16 | no |
| 2023-11-13-morpho-blue-cantina-managed-review.pdf | IMorphoBundler | unmatched — not counted | — | Listed in finding 3.5.16 | no |
| 2023-11-13-morpho-blue-cantina-managed-review.pdf | EthereumPermitBundler | unmatched — not counted | — | Listed in finding 3.5.16 | no |
| 2023-11-13-morpho-blue-cantina-managed-review.pdf | ErrorsLib | unmatched — not counted | — | Referenced in findings (e.g., ErrorsLib.INSUFFICIENT_LIQUIDITY) | no |
| 2024-01-05-morpho-blue-cantina-competition.pdf | Morpho | own contract | Morpho (selected) `0x01b0bd...67a83a` — deployed 2025-07-17 15:46:32+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-01-05-morpho-blue-cantina-competition.pdf | SafeTransferLib | unmatched — not counted | — | listed in scope | no |
| 2024-01-05-morpho-blue-cantina-competition.pdf | ChainlinkOracle | unmatched — not counted | — | listed in scope | no |
| 2024-01-05-morpho-blue-cantina-competition.pdf | AdaptiveCurveIrm | own contract | AdaptiveCurveIrm (selected) `0x464159...d22687` — deployed 2024-05-03 16:40:51+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-01-05-morpho-blue-cantina-competition.pdf | SharesMathLib | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x402888...87961b` | AaveV2MigrationAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2cc8d5...bdb806` | AaveV3MigrationAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x9e2ea2...5ad972` | AaveV3OptimizerMigrationAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x656619...c90245` | Bundler3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x9b89c0...8f1101` | CompoundV2MigrationAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xdba5bd...b26773` | CompoundV3MigrationAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf83d17...87f962` | ERC20WrapperAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4095f0...e30077` | EthereumBundlerV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4a6c31...be0ae0` | EthereumGeneralAdapter1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x2dc205...aebd3d` | MorphoChainlinkOracleV2Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x50d3d6...5649d9` | MorphoOFTAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x9994e3...330999` | MorphoToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x03b525...c6c38f` | ParaswapAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x9d03bb...0e5123` | Wrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 164 |
| upstream | 1 |
| standard_library | 16 |
| needs_review | 214 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 15
- Inherited remapped matches: 0
- Address-book scope dispositions: 40 own (3 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 300 unmatched
- Matched-own operational status: 40 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=23, low=2, medium=5
- Match method counts: unique_name=54

Zero-match audit list:

- [17654] omniscia-report
- [17655] Lexfo_250523.pdf
- [17656] MorphoDAO_Frontend_04042022.pdf
- [17657] 2025-05-19-spearbit.pdf
- [17658] 2025-07-15-competition.pdf
- [17660] 2025-08-11-spearbit.pdf
- [17663] 2025-09-15-spearbit.pdf
- [17664] 2025-12-04-market-v1-adapter-v2-blackthorn.pdf
- [17665] 2025-12-04-market-v1-adapter-v2-spearbit.pdf
- [17669] 2024-10-29-pre-liquidation-spearbit.pdf
- [17670] 2024-11-01-pre-liquidation-ABDK-consulting.pdf
- [17671] 2023-11-14-metamorpho-cantina-managed-review.pdf
- [17674] 2024-09-23-metamorpho-diff-cantina-managed-review.pdf
- [17676] 2025-02-20-metamorpho-v1.1-cantina-managed.pdf
- [17677] 2024-03-11-morpho-public-allocator-cantina-managed.pdf

Fork inheritance lineage and inherited audits are included when available.
