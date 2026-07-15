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

- UnnamedContract (`0xa045e3...0a728a`, chain 56)

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
| AddressStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5494a1...862029` | ⚠️ Unaudited |
| AveragePriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3368e4...b4074e` | ⚠️ Unaudited |
| BatchSender | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x337ddc...773882` | ⚠️ Unaudited |
| CommonHealthCheck | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7578cc...7a1649` | ⚠️ Unaudited |
| Executor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x04a08e...2d2659` | ⚠️ Unaudited |
| FastPriceEvents | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb4a922...9f22fe` | ⚠️ Unaudited |
| FastPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2a3d06...21ffaf` | ⚠️ Unaudited |
| FastPriceFeedReader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfc0943...d381f8` | ⚠️ Unaudited |
| FeeGllDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf3ef1c...599883` | ⚠️ Unaudited |
| FeeGllTracker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd41881...3f9b5a` | ⚠️ Unaudited |
| Freezer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4998ed...f8f1f3` | ⚠️ Unaudited |
| FreezerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1b7299...06735c` | ⚠️ Unaudited |
| FundingTracker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0103eb...b22fa4` | ⚠️ Unaudited |
| GLL | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x218703...d58f27` | ⚠️ Unaudited |
| GllManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcc570e...98dc7e` | ⚠️ Unaudited |
| Grizzly | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x204894...385fab` | ⚠️ Unaudited |
| GrizzlyVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0f7562...881e93` | ⚠️ Unaudited |
| GrizzlyVaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6234cb...2e7b0a` | ⚠️ Unaudited |
| HarvestKeeper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x676a28...aeee27` | ⚠️ Unaudited |
| HoneyBNBFarm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x35651e...e145e1` | ⚠️ Unaudited |
| HoneyToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x35add9...d98aa1` | ⚠️ Unaudited |
| LockedGhny | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xebe598...58c55e` | ⚠️ Unaudited |
| OrderBook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x646aaf...1e2137` | ⚠️ Unaudited |
| OrderBookReader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdb6db9...d6724b` | ⚠️ Unaudited |
| Pair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x075e79...b0fa35` | ⚠️ Unaudited |
| PancakePair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2354ef...cddbb1` | ⚠️ Unaudited |
| PancakeStableSwapLiquidityImplementation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe0d608...91ff6f` | ⚠️ Unaudited |
| PancakeV3Helper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x22eefe...755497` | ⚠️ Unaudited |
| PositionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x04a0b3...eca3d6` | ⚠️ Unaudited |
| PositionRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x855f94...d360b4` | ⚠️ Unaudited |
| PositionUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xad391e...4a85cf` | ⚠️ Unaudited |
| PriceFeedTimelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xba397c...efa15a` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x240665...a97027` | ⚠️ Unaudited |
| Reader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x977410...176396` | ⚠️ Unaudited |
| ReferralReader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8bbef0...724acb` | ⚠️ Unaudited |
| ReferralRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x815f06...f1796d` | ⚠️ Unaudited |
| ReferralStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x59dade...44b6f0` | ⚠️ Unaudited |
| RewardReader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5f7881...465653` | ⚠️ Unaudited |
| RewardRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd7e890...6dce72` | ⚠️ Unaudited |
| Router | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb2dbc3...b50b01` | ⚠️ Unaudited |
| ShareDistribution | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x268283...eef522` | ⚠️ Unaudited |
| ShortsTracker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x686a91...7c5b7d` | ⚠️ Unaudited |
| ShortsTrackerTimelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x469c23...4841c5` | ⚠️ Unaudited |
| StableDEX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x92b759...2c332f` | ⚠️ Unaudited |
| StableGrizzly | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0ee2fd...4a76a3` | ⚠️ Unaudited |
| StableKeeper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0dc747...1db61c` | ⚠️ Unaudited |
| StakedGll | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xabdaa6...76e59b` | ⚠️ Unaudited |
| Store | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x350593...0f4b56` | ⚠️ Unaudited |
| Strategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x09649a...7471c3` | ⚠️ Unaudited |
| ThenaLiquidityImplementation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xef6ec7...1e84f6` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1eee69...4e3912` | ⚠️ Unaudited |
| TokenManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc6433c...c4c2eb` | ⚠️ Unaudited |
| TradingValidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb0b2be...385941` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x0286a7...7d96a9` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x02c061...a81db9` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x04e618...385802` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x097c9e...43cca7` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x1022a8...3a2630` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x190afc...d83393` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x364167...5f67ca` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x461409...f0a9b7` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x6f4289...ff83f1` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x816ba0...2bcee5` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x893fa9...062172` | ⚠️ Unaudited |
| UniswapV2LiquidityImplementation | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x20eb94...c028e6` | ⚠️ Unaudited |
| UniV3Helper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xefc5d3...f9b4eb` | ⚠️ Unaudited |
| UnnamedContract | token | project_anchor | own_supporting | 0 | bsc | unit-387091 | `0xa045e3...0a728a` | ⚠️ Unaudited |
| USDG | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4bab8f...eecdca` | ⚠️ Unaudited |
| Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x606e49...1e253b` | ⚠️ Unaudited |
| VaultErrorController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9a555c...914c9e` | ⚠️ Unaudited |
| VaultPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9a28a6...8c8bf6` | ⚠️ Unaudited |
| VaultReader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2cf713...ee62ea` | ⚠️ Unaudited |
| VaultUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf72c33...f0a5eb` | ⚠️ Unaudited |
| Vyper_contract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x004706...edbf3f` | ⚠️ Unaudited |
| Zap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1ac760...9fb915` | ⚠️ Unaudited |
| ZapContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x51465d...2bb5a4` | ⚠️ Unaudited |
| ZapThena | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1f5247...e0b5ce` | ⚠️ Unaudited |
| ZapThenaV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x45102d...5f2e1d` | ⚠️ Unaudited |

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
