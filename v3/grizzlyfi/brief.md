# Agentic Audit Brief: Grizzlyfi

## Project Overview

- Project: Grizzlyfi (`grizzlyfi`)
- Website: [https://grizzly.fi/](https://grizzly.fi/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:05:58.059Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: bsc
- Contract surface: 77 unique implementations (77 raw deployments)
- DeFi Llama TVL: $515,258.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 75 project-authored contract(s) across 1 chain(s); 7 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 9 common project-authored base contract(s) (governable, automatetaskcreator, automateready). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 77; live-surface contracts included: 77 (77 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/77 (0.0%)
- Deployed-live implementations: 77 of 77 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/77
- Verified + Unaudited implementations: 77
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 77
- Raw deployments: 77
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

### ⚠️ Verified + Unaudited (77)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AddressStorage | unknown | bsc | n/a | [`0x5494a1...862029`](./contracts/bsc-56/0x5494a109e377905db06ad7cfc1d30a146b862029/) | ⚠️ Unaudited |
| AveragePriceOracle | unknown | bsc | n/a | [`0x3368e4...b4074e`](./contracts/bsc-56/0x3368e4fa6ec76db5ccd8d1782e6575f6eeb4074e/) | ⚠️ Unaudited |
| BatchSender | unknown | bsc | n/a | [`0x337ddc...773882`](./contracts/bsc-56/0x337ddc9f37ae486ed9cb0d84c2c432901b773882/) | ⚠️ Unaudited |
| CommonHealthCheck | unknown | bsc | n/a | [`0x7578cc...7a1649`](./contracts/bsc-56/0x7578cc483c4a7b0765e1ab72933877c80f7a1649/) | ⚠️ Unaudited |
| Executor | unknown | bsc | n/a | [`0x04a08e...2d2659`](./contracts/bsc-56/0x04a08ea880bb7f2e3a5a31d8c9f2ab031d2d2659/) | ⚠️ Unaudited |
| FastPriceEvents | unknown | bsc | n/a | [`0xb4a922...9f22fe`](./contracts/bsc-56/0xb4a922970b942263793ee5d85477b72ef29f22fe/) | ⚠️ Unaudited |
| FastPriceFeed | unknown | bsc | n/a | [`0x2a3d06...21ffaf`](./contracts/bsc-56/0x2a3d06a340b2b2888891acb1f169e7c0e321ffaf/) | ⚠️ Unaudited |
| FastPriceFeedReader | unknown | bsc | n/a | [`0xfc0943...d381f8`](./contracts/bsc-56/0xfc0943ab33ee7a7fcf3fa649d9643f8413d381f8/) | ⚠️ Unaudited |
| FeeGllDistributor | unknown | bsc | n/a | [`0xf3ef1c...599883`](./contracts/bsc-56/0xf3ef1c95aecf5b5025815014890dc14488599883/) | ⚠️ Unaudited |
| FeeGllTracker | unknown | bsc | n/a | [`0xd41881...3f9b5a`](./contracts/bsc-56/0xd41881eafbd4bd2d7bc5b4540966f807e53f9b5a/) | ⚠️ Unaudited |
| Freezer | unknown | bsc | n/a | [`0x4998ed...f8f1f3`](./contracts/bsc-56/0x4998ed31ceaf28b947f6f77e0d1b98a43cf8f1f3/) | ⚠️ Unaudited |
| FreezerV2 | unknown | bsc | n/a | [`0x1b7299...06735c`](./contracts/bsc-56/0x1b7299f39556cc370ad72dea5512c009fc06735c/) | ⚠️ Unaudited |
| FundingTracker | unknown | bsc | n/a | [`0x0103eb...b22fa4`](./contracts/bsc-56/0x0103ebdf61401402d5089474d68614a2f8b22fa4/) | ⚠️ Unaudited |
| GLL | unknown | bsc | n/a | [`0x218703...d58f27`](./contracts/bsc-56/0x218703d0515f24ca3fa0751266051db1ecd58f27/) | ⚠️ Unaudited |
| GllManager | unknown | bsc | n/a | [`0xcc570e...98dc7e`](./contracts/bsc-56/0xcc570ec20ecb62cd9589fa33724514bdbc98dc7e/) | ⚠️ Unaudited |
| Grizzly | unknown | bsc | n/a | [`0x204894...385fab`](./contracts/bsc-56/0x20489499412c9713d12e784fb6f724ae21385fab/) | ⚠️ Unaudited |
| GrizzlyVault | unknown | bsc | n/a | [`0x0f7562...881e93`](./contracts/bsc-56/0x0f756289386f9938438b9db63e4d05f7ad881e93/) | ⚠️ Unaudited |
| GrizzlyVaultFactory | unknown | bsc | n/a | [`0x6234cb...2e7b0a`](./contracts/bsc-56/0x6234cbef229cc51c532e32a6d43c3360972e7b0a/) | ⚠️ Unaudited |
| HarvestKeeper | unknown | bsc | n/a | [`0x676a28...aeee27`](./contracts/bsc-56/0x676a28cecb2e94c0f1867d8e1317230169aeee27/) | ⚠️ Unaudited |
| HoneyBNBFarm | unknown | bsc | n/a | [`0x35651e...e145e1`](./contracts/bsc-56/0x35651e34d660e452be34fdb96850c5dc44e145e1/) | ⚠️ Unaudited |
| HoneyToken | unknown | bsc | n/a | [`0x35add9...d98aa1`](./contracts/bsc-56/0x35add9c481a5a37664d62196bdeaa327bfd98aa1/) | ⚠️ Unaudited |
| LockedGhny | unknown | bsc | n/a | [`0xebe598...58c55e`](./contracts/bsc-56/0xebe5989a08337870c59b178492da4797a458c55e/) | ⚠️ Unaudited |
| OrderBook | unknown | bsc | n/a | [`0x646aaf...1e2137`](./contracts/bsc-56/0x646aaff875bd16d2c3777f3f6e1599eebf1e2137/) | ⚠️ Unaudited |
| OrderBookReader | unknown | bsc | n/a | [`0xdb6db9...d6724b`](./contracts/bsc-56/0xdb6db98a73cc64d5f71b92befd57c66e22d6724b/) | ⚠️ Unaudited |
| Pair | unknown | bsc | n/a | [`0x075e79...b0fa35`](./contracts/bsc-56/0x075e794f631ee81df1aadb510ac6ec8803b0fa35/) | ⚠️ Unaudited |
| PancakePair | unknown | bsc | n/a | [`0x2354ef...cddbb1`](./contracts/bsc-56/0x2354ef4df11afacb85a5c7f98b624072eccddbb1/) | ⚠️ Unaudited |
| PancakeStableSwapLiquidityImplementation | unknown | bsc | n/a | [`0xe0d608...91ff6f`](./contracts/bsc-56/0xe0d608e7b9025c1dbf8db76d9075a1a48291ff6f/) | ⚠️ Unaudited |
| PancakeV3Helper | unknown | bsc | n/a | [`0x22eefe...755497`](./contracts/bsc-56/0x22eefe462c33af1ab1a52864c9a66d9a70755497/) | ⚠️ Unaudited |
| PositionManager | unknown | bsc | n/a | [`0x04a0b3...eca3d6`](./contracts/bsc-56/0x04a0b3075cd312116f429dc545ca1c5e1eeca3d6/) | ⚠️ Unaudited |
| PositionRouter | unknown | bsc | n/a | [`0x855f94...d360b4`](./contracts/bsc-56/0x855f9462b3120f1607c60fa22e5595a36ad360b4/) | ⚠️ Unaudited |
| PositionUtils | unknown | bsc | n/a | [`0xad391e...4a85cf`](./contracts/bsc-56/0xad391e77140059d95509446b1a7d5090fb4a85cf/) | ⚠️ Unaudited |
| PriceFeedTimelock | unknown | bsc | n/a | [`0xba397c...efa15a`](./contracts/bsc-56/0xba397cc36b14b1c86313b9d96211847682efa15a/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | bsc | n/a | [`0x240665...a97027`](./contracts/bsc-56/0x240665ba051c4681c9ffbd44f814569bfaa97027/) | ⚠️ Unaudited |
| Reader | unknown | bsc | n/a | [`0x977410...176396`](./contracts/bsc-56/0x977410290f1f091948456ed0fc34fae483176396/) | ⚠️ Unaudited |
| ReferralReader | unknown | bsc | n/a | [`0x8bbef0...724acb`](./contracts/bsc-56/0x8bbef097dbfdb5cc448e59921fcc0b655a724acb/) | ⚠️ Unaudited |
| ReferralRegistry | unknown | bsc | n/a | [`0x815f06...f1796d`](./contracts/bsc-56/0x815f0682884f77d574fa13c007470b7fe2f1796d/) | ⚠️ Unaudited |
| ReferralStorage | unknown | bsc | n/a | [`0x59dade...44b6f0`](./contracts/bsc-56/0x59dadea5b28ff4320dfa621820465d9b3d44b6f0/) | ⚠️ Unaudited |
| RewardReader | unknown | bsc | n/a | [`0x5f7881...465653`](./contracts/bsc-56/0x5f7881f6f06ef513243c3e2a062968255e465653/) | ⚠️ Unaudited |
| RewardRouter | unknown | bsc | n/a | [`0xd7e890...6dce72`](./contracts/bsc-56/0xd7e8901a49576b974ee65a474fc459f5a96dce72/) | ⚠️ Unaudited |
| Router | unknown | bsc | n/a | [`0xb2dbc3...b50b01`](./contracts/bsc-56/0xb2dbc323a658ddc9c8672d3174d6721665b50b01/) | ⚠️ Unaudited |
| ShareDistribution | unknown | bsc | n/a | [`0x268283...eef522`](./contracts/bsc-56/0x26828340c699f56b365ee3875c70a02cb9eef522/) | ⚠️ Unaudited |
| ShortsTracker | unknown | bsc | n/a | [`0x686a91...7c5b7d`](./contracts/bsc-56/0x686a9130a6a7864dfaa9c7efdcee0bbab77c5b7d/) | ⚠️ Unaudited |
| ShortsTrackerTimelock | unknown | bsc | n/a | [`0x469c23...4841c5`](./contracts/bsc-56/0x469c23ecc4c07f0fb3c99fbf90c6d3ce114841c5/) | ⚠️ Unaudited |
| StableDEX | unknown | bsc | n/a | [`0x92b759...2c332f`](./contracts/bsc-56/0x92b75922d82762feebb8f8e4a483811dee2c332f/) | ⚠️ Unaudited |
| StableGrizzly | unknown | bsc | n/a | [`0x0ee2fd...4a76a3`](./contracts/bsc-56/0x0ee2fd7e72cc3f5d2bd328e1f21f48f6a54a76a3/) | ⚠️ Unaudited |
| StableKeeper | unknown | bsc | n/a | [`0x0dc747...1db61c`](./contracts/bsc-56/0x0dc7478b7598d004df5ed8b9b4fc5e48cb1db61c/) | ⚠️ Unaudited |
| StakedGll | unknown | bsc | n/a | [`0xabdaa6...76e59b`](./contracts/bsc-56/0xabdaa623782d96ec2fa64b01cd452cf99a76e59b/) | ⚠️ Unaudited |
| Store | unknown | bsc | n/a | [`0x350593...0f4b56`](./contracts/bsc-56/0x350593457926b11bc9923f16fa06c1b7d10f4b56/) | ⚠️ Unaudited |
| Strategy | unknown | bsc | n/a | [`0x09649a...7471c3`](./contracts/bsc-56/0x09649abba72e2019be1b18d2a68d520eec7471c3/) | ⚠️ Unaudited |
| ThenaLiquidityImplementation | unknown | bsc | n/a | [`0xef6ec7...1e84f6`](./contracts/bsc-56/0xef6ec78f572abea6ae20e80676f563b27b1e84f6/) | ⚠️ Unaudited |
| Timelock | unknown | bsc | n/a | [`0x1eee69...4e3912`](./contracts/bsc-56/0x1eee69681acfa5e2d4fcd117f14c83c0cb4e3912/) | ⚠️ Unaudited |
| TokenManager | unknown | bsc | n/a | [`0xc6433c...c4c2eb`](./contracts/bsc-56/0xc6433c65ed684e987287d4de87869a0a7cc4c2eb/) | ⚠️ Unaudited |
| TradingValidator | unknown | bsc | n/a | [`0xb0b2be...385941`](./contracts/bsc-56/0xb0b2be0d169181a936e08dad57b9b5e362385941/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x0286a7...7d96a9`](./contracts/bsc-56/0x0286a72f055a425af9096b187bf7f88e9f7d96a9/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x02c061...a81db9`](./contracts/bsc-56/0x02c061eee96851930ccaa0bd63c660c746a81db9/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x04e618...385802`](./contracts/bsc-56/0x04e618169eb98792c08ceacb8c57feb89d385802/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x097c9e...43cca7`](./contracts/bsc-56/0x097c9eb7def274fe9753c0e337a740e07643cca7/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x1022a8...3a2630`](./contracts/bsc-56/0x1022a84f347fc1e6d47128e5364c9aa1f43a2630/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x190afc...d83393`](./contracts/bsc-56/0x190afcee639bc4bafd4295db4b4de86797d83393/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x364167...5f67ca`](./contracts/bsc-56/0x3641676bfe07f07dd2f79244bcdbb751f95f67ca/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x461409...f0a9b7`](./contracts/bsc-56/0x461409c5dfd19194ff377ee679312914edf0a9b7/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x6f4289...ff83f1`](./contracts/bsc-56/0x6f42895f37291ec45f0a307b155229b923ff83f1/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x816ba0...2bcee5`](./contracts/bsc-56/0x816ba0bad026095153b94b8d13dfcf6ecf2bcee5/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x893fa9...062172`](./contracts/bsc-56/0x893fa9199c10bf2542f84de5cf7fd698d8062172/) | ⚠️ Unaudited |
| UniswapV2LiquidityImplementation | unknown | bsc | n/a | [`0x20eb94...c028e6`](./contracts/bsc-56/0x20eb94e65d1dce81bfce90e702e724eb19c028e6/) | ⚠️ Unaudited |
| UniV3Helper | unknown | bsc | n/a | [`0xefc5d3...f9b4eb`](./contracts/bsc-56/0xefc5d356d5bf86126ad23234b56950decff9b4eb/) | ⚠️ Unaudited |
| USDG | unknown | bsc | n/a | [`0x4bab8f...eecdca`](./contracts/bsc-56/0x4bab8f3096a3fb4a2ebceb3965a1088b32eecdca/) | ⚠️ Unaudited |
| Vault | unknown | bsc | n/a | [`0x606e49...1e253b`](./contracts/bsc-56/0x606e4922b259fe28c10e6731e8317705aa1e253b/) | ⚠️ Unaudited |
| VaultErrorController | unknown | bsc | n/a | [`0x9a555c...914c9e`](./contracts/bsc-56/0x9a555c5804a309e516e38d7142a51b7e11914c9e/) | ⚠️ Unaudited |
| VaultPriceFeed | unknown | bsc | n/a | [`0x9a28a6...8c8bf6`](./contracts/bsc-56/0x9a28a65b3a3a06e3da0fb285cba50f10c08c8bf6/) | ⚠️ Unaudited |
| VaultReader | unknown | bsc | n/a | [`0x2cf713...ee62ea`](./contracts/bsc-56/0x2cf7138b058187d78f09b2a7ed2cc48cc1ee62ea/) | ⚠️ Unaudited |
| VaultUtils | unknown | bsc | n/a | [`0xf72c33...f0a5eb`](./contracts/bsc-56/0xf72c3386f420d754fb6e8bf70ac8aa1205f0a5eb/) | ⚠️ Unaudited |
| Vyper_contract | unknown | bsc | n/a | [`0x004706...edbf3f`](./contracts/bsc-56/0x004706531e3e2a9d4e099857aeb1a24732edbf3f/) | ⚠️ Unaudited |
| Zap | unknown | bsc | n/a | [`0x1ac760...9fb915`](./contracts/bsc-56/0x1ac76060569839b0416a26beed0ab692b99fb915/) | ⚠️ Unaudited |
| ZapContract | unknown | bsc | n/a | [`0x51465d...2bb5a4`](./contracts/bsc-56/0x51465dee26bb7ef4beb4368b2ab85ff2782bb5a4/) | ⚠️ Unaudited |
| ZapThena | unknown | bsc | n/a | [`0x1f5247...e0b5ce`](./contracts/bsc-56/0x1f5247c524c2c438d743c1c2f254b1bf62e0b5ce/) | ⚠️ Unaudited |
| ZapThenaV3 | unknown | bsc | n/a | [`0x45102d...5f2e1d`](./contracts/bsc-56/0x45102dcb97a0fefdfcecda393203094bcf5f2e1d/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (0)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

- None

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 77 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
