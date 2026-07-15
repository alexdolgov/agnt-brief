# Agentic Audit Brief: Splice Finance

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

- Project: Splice Finance (`splice-finance`)
- Website: [https://app.splice.fi/](https://app.splice.fi/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: blast, mode
- Contract surface: 52 unique implementations (52 raw deployments)
- Coverage basis: 0/2 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $439,983.50
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 2 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Splice Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 2 contract row(s) across blast, mode. Structural roles: 2 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 2
- Structural roles: core (2)
- Contract kinds: contract (2)
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 2 contracts are derived from known codebases. 2 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- SpliceWeETHL2SY (`0x356b2e...5e286c`, chain 34443)
- SpliceWrsETHL2SY (`0x9baf8d...23411d`, chain 34443)

## Contract Surface Quality

- Logic-topography rows: 2; live-surface rows included: 2 (2 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 2/2 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/2 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 2 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 50 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 2 of 52 unique; 50 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/52
- Verified + Unaudited implementations: 52
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 52
- Raw deployments: 52
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

### ⚠️ Verified + Unaudited (52)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ActionCallbackV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xe59d97...3ab0e7` | ⚠️ Unaudited |
| ActionMiscV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x6a28ab...929421` | ⚠️ Unaudited |
| AuraBalRewardPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x362005...985c49` | ⚠️ Unaudited |
| AuraClaimZapV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xb034ea...c49347` | ⚠️ Unaudited |
| AuraLocker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x922f8a...549a9b` | ⚠️ Unaudited |
| AuraMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x930a45...748db4` | ⚠️ Unaudited |
| AuraPenaltyForwarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xa515a5...a5ff1b` | ⚠️ Unaudited |
| AuraVestedEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x07478d...acc36d` | ⚠️ Unaudited |
| BaseRewardPool4626 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x8e59a4...54cbfa` | ⚠️ Unaudited |
| Booster | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xb818d5...1b6cbc` | ⚠️ Unaudited |
| BoosterFeeDistro | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x6cb52e...1bc013` | ⚠️ Unaudited |
| BoosterHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xa8c0c0...b2714e` | ⚠️ Unaudited |
| BoosterOwner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xfa48f2...439732` | ⚠️ Unaudited |
| ClaimFeesHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xb1bd8b...a26d07` | ⚠️ Unaudited |
| CrvDepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x6f09c0...35ef00` | ⚠️ Unaudited |
| cvxCrvToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xfbf330...89922e` | ⚠️ Unaudited |
| DepositToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x3cf056...984d1d` | ⚠️ Unaudited |
| ERC20PointsDeposits | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x2d6b61...46771d` | ⚠️ Unaudited |
| ERC721PointsDeposits | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xc28eff...f60d06` | ⚠️ Unaudited |
| ExtraRewardsDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xf2c753...5fba9f` | ⚠️ Unaudited |
| ExtraRewardStashV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xf1c620...1ff09c` | ⚠️ Unaudited |
| Gauge Controller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xb10ac7...317752` | ⚠️ Unaudited |
| HyperThrustClaim | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x5c5f01...3fd09a` | ⚠️ Unaudited |
| HyperUSDB | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x390b78...7838d2` | ⚠️ Unaudited |
| HyperUSDBSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x13293d...186f46` | ⚠️ Unaudited |
| HyperWETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x1856c7...b4032a` | ⚠️ Unaudited |
| HyperWETHSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xb80ad1...f1b505` | ⚠️ Unaudited |
| LiquidityGaugeFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x3ec93a...e84762` | ⚠️ Unaudited |
| MerklGauge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x21b4ef...548dc6` | ⚠️ Unaudited |
| MerklGaugeConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x47f7f2...e5228b` | ⚠️ Unaudited |
| MerklGaugeFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x808bcc...e2ec8e` | ⚠️ Unaudited |
| NfpBooster | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x98c86f...d83209` | ⚠️ Unaudited |
| NfpViewHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x5e70b8...75d1ac` | ⚠️ Unaudited |
| PancakeStableSwapFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x1f6415...b68331` | ⚠️ Unaudited |
| PendleERC20SY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x1c04fd...33dab9` | ⚠️ Unaudited |
| PendleMarketFactoryV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xf87e18...0e34bf` | ⚠️ Unaudited |
| Points | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x60a87d...458ca4` | ⚠️ Unaudited |
| PoolManagerV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x89e9e6...3144a4` | ⚠️ Unaudited |
| ProxyFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x1a3f3a...f8fc0b` | ⚠️ Unaudited |
| RewardFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x667808...791d54` | ⚠️ Unaudited |
| SingleSidedDepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x741ff2...85940e` | ⚠️ Unaudited |
| SmartWalletChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xd311c0...63d7b8` | ⚠️ Unaudited |
| SpliceWeETHL2SY | unknown | project_anchor | own_supporting | 0 | mode | unit-256608 | `0x356b2e...5e286c` | ⚠️ Unaudited |
| SpliceWrsETHL2SY | unknown | project_anchor | own_supporting | 0 | mode | unit-256609 | `0x9baf8d...23411d` | ⚠️ Unaudited |
| SpliceWUSDBSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xf904fa...dd5470` | ⚠️ Unaudited |
| StashFactoryV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x530258...11b728` | ⚠️ Unaudited |
| Token Minter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x910119...6f8f4e` | ⚠️ Unaudited |
| TokenAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xe643d5...b5cfbc` | ⚠️ Unaudited |
| TokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x6be37d...a777bc` | ⚠️ Unaudited |
| VirtualRewardFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x3d8ec8...580edb` | ⚠️ Unaudited |
| VoterProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xd1e436...db50c0` | ⚠️ Unaudited |
| Voting Escrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x758cd0...145704` | ⚠️ Unaudited |

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

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| mode | `0x356b2e...5e286c` | SpliceWeETHL2SY | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | `0x9baf8d...23411d` | SpliceWrsETHL2SY | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 49 |
| upstream | 3 |
| standard_library | 0 |
| needs_review | 0 |

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
