# Agentic Audit Brief: Perpetual Protocol

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

- Project: Perpetual Protocol (`perpetual-protocol`)
- Website: [https://perp.com/](https://perp.com/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum, optimism
- Contract surface: 40 unique implementations (40 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $459,102.12
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

The closed normalized authority records no EVM contract logic or eligible security audit for this project. This is an explicit cohort state, not a skipped export.

## Project Description

No contract logic was present for Perpetual Protocol in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 0; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 40 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 5
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/40
- Verified + Unaudited implementations: 40
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 40
- Raw deployments: 40
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

### ⚠️ Verified + Unaudited (40)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AccountBalance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | unit-159732 | `0x110efe...2291df` | ⚠️ Unaudited |
| BandPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | unit-159738 | `0x1dde11...78e67f` | ⚠️ Unaudited |
| BaseToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | unit-159715 | `0x00a0b6...7d19dd` | ⚠️ Unaudited |
| BaseVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | unit-159724 | `0x06e1c9...305563` | ⚠️ Unaudited |
| Cashier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | unit-159747 | `0xb70d93...51fc16` | ⚠️ Unaudited |
| ClearingHouse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | unit-159718 | `0x00f038...cf0729` | ⚠️ Unaudited |
| ClearingHouseConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | unit-159750 | `0x044e6f...d894a2` | ⚠️ Unaudited |
| CollateralManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | unit-159722 | `0x032ed2...b719ec` | ⚠️ Unaudited |
| DelegatableVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | unit-159751 | `0x20ee8f...835bae` | ⚠️ Unaudited |
| DelegateApproval | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | unit-159729 | `0x0ca14d...3916b8` | ⚠️ Unaudited |
| Exchange | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | unit-159727 | `0x0908c4...cc7cc7` | ⚠️ Unaudited |
| InsuranceFund | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | unit-159728 | `0x099b59...baa61b` | ⚠️ Unaudited |
| KtbUniArbitrageur | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | unit-159746 | `0xaacc98...11364d` | ⚠️ Unaudited |
| L2StandardERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | unit-159745 | `0x9e1028...6840e0` | ⚠️ Unaudited |
| LimitOrderBook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | unit-159720 | `0x02ec0d...6645a7` | ⚠️ Unaudited |
| LimitOrderRewardVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | unit-159721 | `0x0315b8...030c75` | ⚠️ Unaudited |
| MarketRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | unit-159723 | `0x053339...3febfa` | ⚠️ Unaudited |
| Multicall2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | unit-159743 | `0x7105b7...e2425b` | ⚠️ Unaudited |
| OrderBook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | unit-159716 | `0x00cea6...725ecd` | ⚠️ Unaudited |
| OtcMaker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | unit-159726 | `0x08a725...06ccba` | ⚠️ Unaudited |
| PerpBuyback | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | unit-159737 | `0x199044...a29751` | ⚠️ Unaudited |
| PerpBuybackPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | unit-159733 | `0x116fc4...f17dff` | ⚠️ Unaudited |
| PerpetualProtocolReferrer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | unit-159748 | `0xbf0184...a09501` | ⚠️ Unaudited |
| PerpLiquidityMining | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | unit-159730 | `0x0d1b56...3262e0` | ⚠️ Unaudited |
| PerpPortal | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | unit-159742 | `0x6ab84f...ed8931` | ⚠️ Unaudited |
| PerpPositionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | unit-159739 | `0x211a3f...dce99b` | ⚠️ Unaudited |
| PerpToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-159714 | `0xbc3966...233447` | ⚠️ Unaudited |
| PriceFeedDispatcher | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | unit-159717 | `0x00e198...ebc960` | ⚠️ Unaudited |
| PriceFeedUpdater | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | unit-159725 | `0x06e4c9...a12833` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | unit-159731 | `0x0e5a24...eee2bd` | ⚠️ Unaudited |
| Quoter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | unit-159734 | `0x125e0c...e6c6ee` | ⚠️ Unaudited |
| QuoteToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | unit-159736 | `0x177932...e30b14` | ⚠️ Unaudited |
| QuoteVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | unit-159740 | `0x2568b8...4957fc` | ⚠️ Unaudited |
| RewardDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | unit-159741 | `0x2de8e1...1ca88d` | ⚠️ Unaudited |
| SurplusBeneficiary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | unit-159744 | `0x78120c...2d6ee7` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | unit-159749 | `0x1a459f...26643f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | unit-159752 | `0xa30423...566f5d` | ⚠️ Unaudited |
| Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | unit-159719 | `0x015f7e...2cae01` | ⚠️ Unaudited |
| vePERPRewardDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | unit-159753 | `0x0b98bf...2c260b` | ⚠️ Unaudited |
| Vyper_contract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | unit-159735 | `0x142408...0829cc` | ⚠️ Unaudited |

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
| native | 36 |
| upstream | 0 |
| standard_library | 4 |
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
