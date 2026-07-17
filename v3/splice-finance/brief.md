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

- SpliceWeETHL2SY (`0x356b2ebc41fcc7a84b59e998231c14317a5e286c`, chain 34443)
- SpliceWrsETHL2SY (`0x9baf8d6a90c69944dd46fb46b0e620f8ab23411d`, chain 34443)

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
| ActionCallbackV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xe59d976581e4152cc39b94041c626c726d3ab0e7` | ⚠️ Unaudited |
| ActionMiscV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x6a28abf3d78ff1fbf4562fbca41f43c0ca929421` | ⚠️ Unaudited |
| AuraBalRewardPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x362005b138e6a0049c9724cfb46de19801985c49` | ⚠️ Unaudited |
| AuraClaimZapV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xb034ea280864463a42d9b86dae856d09d6c49347` | ⚠️ Unaudited |
| AuraLocker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x922f8a306b7018e9a26be6478ecf85b253549a9b` | ⚠️ Unaudited |
| AuraMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x930a45c3aaf9945c673d8c96fbbe527db7748db4` | ⚠️ Unaudited |
| AuraPenaltyForwarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xa515a5d812e97af0fe1cdbeed34cb4f198a5ff1b` | ⚠️ Unaudited |
| AuraVestedEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x07478d254e5984342ac47a8388cd94070dacc36d` | ⚠️ Unaudited |
| BaseRewardPool4626 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x8e59a42b1a2be30e6278a39afca38fddbb54cbfa` | ⚠️ Unaudited |
| Booster | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xb818d5809471a6a3cd7bf4ce0c98a2dd5e1b6cbc` | ⚠️ Unaudited |
| BoosterFeeDistro | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x6cb52e8ebabff27570bf1b842f164d71411bc013` | ⚠️ Unaudited |
| BoosterHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xa8c0c056943de48a18c911a54f0c605908b2714e` | ⚠️ Unaudited |
| BoosterOwner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xfa48f28eb89cd16fe5a983568d6dccccff439732` | ⚠️ Unaudited |
| ClaimFeesHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xb1bd8b3a16bcee3c66319c6e13ddeb5716a26d07` | ⚠️ Unaudited |
| CrvDepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x6f09c0641961fe6c1dde07afc851f4e64035ef00` | ⚠️ Unaudited |
| cvxCrvToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xfbf330d91ec5f5346d369beab8cb5d5b9489922e` | ⚠️ Unaudited |
| DepositToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x3cf056f53c9ef717c7ac531bc902627e2a984d1d` | ⚠️ Unaudited |
| ERC20PointsDeposits | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x2d6b6170a3193e59294d8bc79856a34be546771d` | ⚠️ Unaudited |
| ERC721PointsDeposits | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xc28effdfef75448243c1d9ba972b97e32df60d06` | ⚠️ Unaudited |
| ExtraRewardsDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xf2c753be88e15923d73365f6ef182923ef5fba9f` | ⚠️ Unaudited |
| ExtraRewardStashV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xf1c6209a4a12c04a7879f89abe006c81a81ff09c` | ⚠️ Unaudited |
| Gauge Controller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xb10ac70a00da025e553606805e6a205205317752` | ⚠️ Unaudited |
| HyperThrustClaim | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x5c5f0116d7a920f9a3f61ca741907ca7793fd09a` | ⚠️ Unaudited |
| HyperUSDB | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x390b781baf1e6db546cf4e3354b81446947838d2` | ⚠️ Unaudited |
| HyperUSDBSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x13293dacab830d8fa2e0e961fb997b3f37186f46` | ⚠️ Unaudited |
| HyperWETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x1856c7e0b559e9d7287473cb4b4786398db4032a` | ⚠️ Unaudited |
| HyperWETHSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xb80ad10dffdd415c2159962c1b35ef6edcf1b505` | ⚠️ Unaudited |
| LiquidityGaugeFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x3ec93ac1f45cbc553bd6fe9981259773a6e84762` | ⚠️ Unaudited |
| MerklGauge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x21b4ef02bc263544b0bfc78be9a74e03bc548dc6` | ⚠️ Unaudited |
| MerklGaugeConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x47f7f2ac33a9a7027f6eb21ef843eb791be5228b` | ⚠️ Unaudited |
| MerklGaugeFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x808bcc0a99bf374df5d2d982932735d755e2ec8e` | ⚠️ Unaudited |
| NfpBooster | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x98c86f91e8202262d9f11f877440af4c3ad83209` | ⚠️ Unaudited |
| NfpViewHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x5e70b87d6749615626c3a6733dec80d04c75d1ac` | ⚠️ Unaudited |
| PancakeStableSwapFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x1f641571ae623580944abcf5c0d4100566b68331` | ⚠️ Unaudited |
| PendleERC20SY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x1c04fda696b2af99c91014ffab1affbd2633dab9` | ⚠️ Unaudited |
| PendleMarketFactoryV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xf87e18913f7143e7c7efee714813abbc8e0e34bf` | ⚠️ Unaudited |
| Points | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x60a87d7102e2fc1131fff347a36d4c89c1458ca4` | ⚠️ Unaudited |
| PoolManagerV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x89e9e691714c28ed217dcea9de132ba9d53144a4` | ⚠️ Unaudited |
| ProxyFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x1a3f3af03703ecdbbcc2129ed8770805d2f8fc0b` | ⚠️ Unaudited |
| RewardFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x667808d22d1475743465dbefefc97a3489791d54` | ⚠️ Unaudited |
| SingleSidedDepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x741ff2c04714bf37400db45f0a52cd7c4685940e` | ⚠️ Unaudited |
| SmartWalletChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xd311c02759afa3c724670f60fa2ba5ea2163d7b8` | ⚠️ Unaudited |
| SpliceWeETHL2SY | unknown | project_anchor | own_supporting | 0 | mode | unit-256608 | `0x356b2ebc41fcc7a84b59e998231c14317a5e286c` | ⚠️ Unaudited |
| SpliceWrsETHL2SY | unknown | project_anchor | own_supporting | 0 | mode | unit-256609 | `0x9baf8d6a90c69944dd46fb46b0e620f8ab23411d` | ⚠️ Unaudited |
| SpliceWUSDBSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xf904fa59d1eacec21d758ccd2fe43261a1dd5470` | ⚠️ Unaudited |
| StashFactoryV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x530258607808ba349dbfebb27223a4523811b728` | ⚠️ Unaudited |
| Token Minter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x910119e46d9e273460553d4aff7440c5c66f8f4e` | ⚠️ Unaudited |
| TokenAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xe643d5bccce7b3a560b771ff4fa07d7339b5cfbc` | ⚠️ Unaudited |
| TokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x6be37dddf23f2da2f00b9eea653ae7980ea777bc` | ⚠️ Unaudited |
| VirtualRewardFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x3d8ec8ac93ca7e32eb015c63acf5807255580edb` | ⚠️ Unaudited |
| VoterProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xd1e436cda97bdeb960f99a95640c8d3869db50c0` | ⚠️ Unaudited |
| Voting Escrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x758cd0ec54f178bd382ebbe9f254b9de67145704` | ⚠️ Unaudited |

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
| mode | `0x356b2ebc41fcc7a84b59e998231c14317a5e286c` | SpliceWeETHL2SY | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | `0x9baf8d6a90c69944dd46fb46b0e620f8ab23411d` | SpliceWrsETHL2SY | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
