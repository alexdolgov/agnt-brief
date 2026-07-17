# Agentic Audit Brief: Grizzlyfi

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

- Project: Grizzlyfi (`grizzlyfi`)
- Website: [https://grizzly.fi/](https://grizzly.fi/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: bsc
- Contract surface: 78 unique implementations (78 raw deployments)
- Coverage basis: 0/1 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $515,258.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Grizzlyfi. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across bsc. Structural roles: 1 core. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: core (1)
- Contract kinds: contract (1)
- Detected standards: erc1967proxy (1)
- Frameworks: openzeppelin (1)
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 1 contracts are derived from known codebases. 1 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0xa045e37a0d1dd3a45fefb8803d22457abc0a728a`, chain 56)

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
- Outside the address book: 77 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 11 standard proxy/library)
- Proxy deployments represented within implementation groups: 12
- Confirmed-live implementations: 1 of 78 unique; 77 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/78
- Verified + Unaudited implementations: 78
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 78
- Raw deployments: 78
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

### ⚠️ Verified + Unaudited (78)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AddressStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5494a109e377905db06ad7cfc1d30a146b862029` | ⚠️ Unaudited |
| AveragePriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3368e4fa6ec76db5ccd8d1782e6575f6eeb4074e` | ⚠️ Unaudited |
| BatchSender | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x337ddc9f37ae486ed9cb0d84c2c432901b773882` | ⚠️ Unaudited |
| CommonHealthCheck | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7578cc483c4a7b0765e1ab72933877c80f7a1649` | ⚠️ Unaudited |
| Executor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x04a08ea880bb7f2e3a5a31d8c9f2ab031d2d2659` | ⚠️ Unaudited |
| FastPriceEvents | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb4a922970b942263793ee5d85477b72ef29f22fe` | ⚠️ Unaudited |
| FastPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2a3d06a340b2b2888891acb1f169e7c0e321ffaf` | ⚠️ Unaudited |
| FastPriceFeedReader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfc0943ab33ee7a7fcf3fa649d9643f8413d381f8` | ⚠️ Unaudited |
| FeeGllDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf3ef1c95aecf5b5025815014890dc14488599883` | ⚠️ Unaudited |
| FeeGllTracker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd41881eafbd4bd2d7bc5b4540966f807e53f9b5a` | ⚠️ Unaudited |
| Freezer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4998ed31ceaf28b947f6f77e0d1b98a43cf8f1f3` | ⚠️ Unaudited |
| FreezerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1b7299f39556cc370ad72dea5512c009fc06735c` | ⚠️ Unaudited |
| FundingTracker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0103ebdf61401402d5089474d68614a2f8b22fa4` | ⚠️ Unaudited |
| GLL | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x218703d0515f24ca3fa0751266051db1ecd58f27` | ⚠️ Unaudited |
| GllManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcc570ec20ecb62cd9589fa33724514bdbc98dc7e` | ⚠️ Unaudited |
| Grizzly | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x20489499412c9713d12e784fb6f724ae21385fab` | ⚠️ Unaudited |
| GrizzlyVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0f756289386f9938438b9db63e4d05f7ad881e93` | ⚠️ Unaudited |
| GrizzlyVaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6234cbef229cc51c532e32a6d43c3360972e7b0a` | ⚠️ Unaudited |
| HarvestKeeper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x676a28cecb2e94c0f1867d8e1317230169aeee27` | ⚠️ Unaudited |
| HoneyBNBFarm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x35651e34d660e452be34fdb96850c5dc44e145e1` | ⚠️ Unaudited |
| HoneyToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x35add9c481a5a37664d62196bdeaa327bfd98aa1` | ⚠️ Unaudited |
| LockedGhny | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xebe5989a08337870c59b178492da4797a458c55e` | ⚠️ Unaudited |
| OrderBook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x646aaff875bd16d2c3777f3f6e1599eebf1e2137` | ⚠️ Unaudited |
| OrderBookReader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdb6db98a73cc64d5f71b92befd57c66e22d6724b` | ⚠️ Unaudited |
| Pair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x075e794f631ee81df1aadb510ac6ec8803b0fa35` | ⚠️ Unaudited |
| PancakePair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2354ef4df11afacb85a5c7f98b624072eccddbb1` | ⚠️ Unaudited |
| PancakeStableSwapLiquidityImplementation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe0d608e7b9025c1dbf8db76d9075a1a48291ff6f` | ⚠️ Unaudited |
| PancakeV3Helper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x22eefe462c33af1ab1a52864c9a66d9a70755497` | ⚠️ Unaudited |
| PositionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x04a0b3075cd312116f429dc545ca1c5e1eeca3d6` | ⚠️ Unaudited |
| PositionRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x855f9462b3120f1607c60fa22e5595a36ad360b4` | ⚠️ Unaudited |
| PositionUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xad391e77140059d95509446b1a7d5090fb4a85cf` | ⚠️ Unaudited |
| PriceFeedTimelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xba397cc36b14b1c86313b9d96211847682efa15a` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x240665ba051c4681c9ffbd44f814569bfaa97027` | ⚠️ Unaudited |
| Reader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x977410290f1f091948456ed0fc34fae483176396` | ⚠️ Unaudited |
| ReferralReader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8bbef097dbfdb5cc448e59921fcc0b655a724acb` | ⚠️ Unaudited |
| ReferralRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x815f0682884f77d574fa13c007470b7fe2f1796d` | ⚠️ Unaudited |
| ReferralStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x59dadea5b28ff4320dfa621820465d9b3d44b6f0` | ⚠️ Unaudited |
| RewardReader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5f7881f6f06ef513243c3e2a062968255e465653` | ⚠️ Unaudited |
| RewardRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd7e8901a49576b974ee65a474fc459f5a96dce72` | ⚠️ Unaudited |
| Router | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb2dbc323a658ddc9c8672d3174d6721665b50b01` | ⚠️ Unaudited |
| ShareDistribution | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x26828340c699f56b365ee3875c70a02cb9eef522` | ⚠️ Unaudited |
| ShortsTracker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x686a9130a6a7864dfaa9c7efdcee0bbab77c5b7d` | ⚠️ Unaudited |
| ShortsTrackerTimelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x469c23ecc4c07f0fb3c99fbf90c6d3ce114841c5` | ⚠️ Unaudited |
| StableDEX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x92b75922d82762feebb8f8e4a483811dee2c332f` | ⚠️ Unaudited |
| StableGrizzly | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0ee2fd7e72cc3f5d2bd328e1f21f48f6a54a76a3` | ⚠️ Unaudited |
| StableKeeper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0dc7478b7598d004df5ed8b9b4fc5e48cb1db61c` | ⚠️ Unaudited |
| StakedGll | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xabdaa623782d96ec2fa64b01cd452cf99a76e59b` | ⚠️ Unaudited |
| Store | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x350593457926b11bc9923f16fa06c1b7d10f4b56` | ⚠️ Unaudited |
| Strategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x09649abba72e2019be1b18d2a68d520eec7471c3` | ⚠️ Unaudited |
| ThenaLiquidityImplementation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xef6ec78f572abea6ae20e80676f563b27b1e84f6` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1eee69681acfa5e2d4fcd117f14c83c0cb4e3912` | ⚠️ Unaudited |
| TokenManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc6433c65ed684e987287d4de87869a0a7cc4c2eb` | ⚠️ Unaudited |
| TradingValidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb0b2be0d169181a936e08dad57b9b5e362385941` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x0286a72f055a425af9096b187bf7f88e9f7d96a9` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x02c061eee96851930ccaa0bd63c660c746a81db9` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x04e618169eb98792c08ceacb8c57feb89d385802` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x097c9eb7def274fe9753c0e337a740e07643cca7` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x1022a84f347fc1e6d47128e5364c9aa1f43a2630` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x190afcee639bc4bafd4295db4b4de86797d83393` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x3641676bfe07f07dd2f79244bcdbb751f95f67ca` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x461409c5dfd19194ff377ee679312914edf0a9b7` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x6f42895f37291ec45f0a307b155229b923ff83f1` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x816ba0bad026095153b94b8d13dfcf6ecf2bcee5` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x893fa9199c10bf2542f84de5cf7fd698d8062172` | ⚠️ Unaudited |
| UniswapV2LiquidityImplementation | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x20eb94e65d1dce81bfce90e702e724eb19c028e6` | ⚠️ Unaudited |
| UniV3Helper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xefc5d356d5bf86126ad23234b56950decff9b4eb` | ⚠️ Unaudited |
| UnnamedContract | token | project_anchor | own_supporting | 0 | bsc | unit-387091 | `0xa045e37a0d1dd3a45fefb8803d22457abc0a728a` | ⚠️ Unaudited |
| USDG | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4bab8f3096a3fb4a2ebceb3965a1088b32eecdca` | ⚠️ Unaudited |
| Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x606e4922b259fe28c10e6731e8317705aa1e253b` | ⚠️ Unaudited |
| VaultErrorController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9a555c5804a309e516e38d7142a51b7e11914c9e` | ⚠️ Unaudited |
| VaultPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9a28a65b3a3a06e3da0fb285cba50f10c08c8bf6` | ⚠️ Unaudited |
| VaultReader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2cf7138b058187d78f09b2a7ed2cc48cc1ee62ea` | ⚠️ Unaudited |
| VaultUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf72c3386f420d754fb6e8bf70ac8aa1205f0a5eb` | ⚠️ Unaudited |
| Vyper_contract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x004706531e3e2a9d4e099857aeb1a24732edbf3f` | ⚠️ Unaudited |
| Zap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1ac76060569839b0416a26beed0ab692b99fb915` | ⚠️ Unaudited |
| ZapContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x51465dee26bb7ef4beb4368b2ab85ff2782bb5a4` | ⚠️ Unaudited |
| ZapThena | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1f5247c524c2c438d743c1c2f254b1bf62e0b5ce` | ⚠️ Unaudited |
| ZapThenaV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x45102dcb97a0fefdfcecda393203094bcf5f2e1d` | ⚠️ Unaudited |

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

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 64 |
| upstream | 1 |
| standard_library | 12 |
| needs_review | 1 |

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
