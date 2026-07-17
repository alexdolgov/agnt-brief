# Agentic Audit Brief: Perpetual Protocol

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `12555af2097191e60e7a3dc0743058c9046ed87a105382bdae663a49f79103f7`

## Project Overview

- Project: Perpetual Protocol (`perpetual-protocol`)
- Website: [https://perp.com/](https://perp.com/)
- Lifecycle: unknown
- Generated: 2026-07-17T12:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum, optimism
- Contract surface: 46 unique implementations (46 raw deployments)
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
- Address-book implementation classification: 0 own, 6 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 40 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 5
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/40
- Verified + Unaudited implementations: 40
- Verified by bytecode match: 0
- Unverified implementations: 6
- Unique implementations: 46
- Raw deployments: 46
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
| AccountBalance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | unit-159732 | `0x110efe74f9d619aae1949c252f17cf21d82291df` | ⚠️ Unaudited |
| BandPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | unit-159738 | `0x1dde11b421bced5a9452ee5b84fe39dd0a78e67f` | ⚠️ Unaudited |
| BaseToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | unit-159715 | `0x00a0b6d11ca762fce125597a52135f2b007d19dd` | ⚠️ Unaudited |
| BaseVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | unit-159724 | `0x06e1c95c83768de7ccc30debb84c08b596305563` | ⚠️ Unaudited |
| Cashier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | unit-159747 | `0xb70d9359ba2006417c2c5f21948d82462e51fc16` | ⚠️ Unaudited |
| ClearingHouse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | unit-159718 | `0x00f0381b4509fee5fe51ecc0b241f67972cf0729` | ⚠️ Unaudited |
| ClearingHouseConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | unit-159750 | `0x044e6f675e092ccbd5c47e8c4f7b6ecc98d894a2` | ⚠️ Unaudited |
| CollateralManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | unit-159722 | `0x032ed2fc1c42c47faafe6bbf54899a8ba1b719ec` | ⚠️ Unaudited |
| DelegatableVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | unit-159751 | `0x20ee8f8ec44eec0aa4c559e49880ec6fbe835bae` | ⚠️ Unaudited |
| DelegateApproval | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | unit-159729 | `0x0ca14d901ffe8461b8196e593083d004993916b8` | ⚠️ Unaudited |
| Exchange | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | unit-159727 | `0x0908c4646a8659ece6b3d6632435518d22cc7cc7` | ⚠️ Unaudited |
| InsuranceFund | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | unit-159728 | `0x099b59d7ac07b765e3de0ee16dfce846a0baa61b` | ⚠️ Unaudited |
| KtbUniArbitrageur | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | unit-159746 | `0xaacc98efafc86211a1b4ecb6824edbb8a011364d` | ⚠️ Unaudited |
| L2StandardERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | unit-159745 | `0x9e1028f5f1d5ede59748ffcee5532509976840e0` | ⚠️ Unaudited |
| LimitOrderBook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | unit-159720 | `0x02ec0d78a6e981dde14efef0792774fd236645a7` | ⚠️ Unaudited |
| LimitOrderRewardVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | unit-159721 | `0x0315b83b137ef6d1bbc6a29ae5c524666e030c75` | ⚠️ Unaudited |
| MarketRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | unit-159723 | `0x05333977d60f3b687576493f825915407d3febfa` | ⚠️ Unaudited |
| Multicall2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | unit-159743 | `0x7105b732f2f0d5a6f7bdb159f0074b8587e2425b` | ⚠️ Unaudited |
| OrderBook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | unit-159716 | `0x00cea6cd9fdd2acdcde88c5a7a5df87688725ecd` | ⚠️ Unaudited |
| OtcMaker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | unit-159726 | `0x08a725f9431ae81f92987395f8e5fa295406ccba` | ⚠️ Unaudited |
| PerpBuyback | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | unit-159737 | `0x1990446cc2fe92b097e837985741404920a29751` | ⚠️ Unaudited |
| PerpBuybackPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | unit-159733 | `0x116fc46c048ec547a960a0823b3c42fcccf17dff` | ⚠️ Unaudited |
| PerpetualProtocolReferrer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | unit-159748 | `0xbf0184af499b6701a7e742ca265c858fbea09501` | ⚠️ Unaudited |
| PerpLiquidityMining | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | unit-159730 | `0x0d1b56799d7fc81ef6deaa55511c34b9133262e0` | ⚠️ Unaudited |
| PerpPortal | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | unit-159742 | `0x6ab84fc005d7b5d0899b621344634031a2ed8931` | ⚠️ Unaudited |
| PerpPositionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | unit-159739 | `0x211a3f48fa48043ce7b09eb4b5fa83a71ddce99b` | ⚠️ Unaudited |
| PerpToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-159714 | `0xbc396689893d065f41bc2c6ecbee5e0085233447` | ⚠️ Unaudited |
| PriceFeedDispatcher | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | unit-159717 | `0x00e198d71fb701f58b5d5c31759efcc911ebc960` | ⚠️ Unaudited |
| PriceFeedUpdater | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | unit-159725 | `0x06e4c910d8abe386542e0b22eb08a30206a12833` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | unit-159731 | `0x0e5a2456934bfa0e51d3eca870a9c4b38aeee2bd` | ⚠️ Unaudited |
| Quoter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | unit-159734 | `0x125e0cfb77ca7b369ee773c507cf59c019e6c6ee` | ⚠️ Unaudited |
| QuoteToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | unit-159736 | `0x17793262e3625b1a57fb325b5a1f79b05de30b14` | ⚠️ Unaudited |
| QuoteVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | unit-159740 | `0x2568b87f26d6719feba6b43444e2fa5e984957fc` | ⚠️ Unaudited |
| RewardDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | unit-159741 | `0x2de8e18bdaef25c2de0bed29c8b72e49261ca88d` | ⚠️ Unaudited |
| SurplusBeneficiary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | unit-159744 | `0x78120c1ca337007323de2226d677e7fcf42d6ee7` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | unit-159749 | `0x1a459f2923212b9df6419fb8cede30445b26643f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | unit-159752 | `0xa3042385f775c52ad7e038cec45a95c2dc566f5d` | ⚠️ Unaudited |
| Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | unit-159719 | `0x015f7ea8fd10d050feb2905b0b2d7908572cae01` | ⚠️ Unaudited |
| vePERPRewardDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | unit-159753 | `0x0b98bf7a2b32606be08bd68dd3520773d22c260b` | ⚠️ Unaudited |
| Vyper_contract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | unit-159735 | `0x142408558527b1a63b736252472e35e1110829cc` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (6)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | n/a | `0x1c9a192df3936cbf093d8afdc352718bcf834eb6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | n/a | `0x3230cbb08c64d0804be5b7f4ce43834291490a91` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | n/a | `0x82ac2ce43e33683c58be4cdc40975e73aa50f459` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | n/a | `0x9f6b09fc2ea2ef9f4454ac6875829a7a89c9cd92` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | n/a | `0xad7b4c162707e0b2b5f6fddbd3f8538a5fba0d60` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | n/a | `0xbd7a3b7dbeb096f0b832cf467b94b091f30c34ec` | ❓ Unverified |

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
| needs_review | 6 |

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
