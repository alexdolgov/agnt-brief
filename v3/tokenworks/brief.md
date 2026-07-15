# Agentic Audit Brief: TokenWorks

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

- Project: TokenWorks (`tokenworks`)
- Website: [https://www.nftstrategy.fun/](https://www.nftstrategy.fun/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 75 unique implementations (118 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $1,495,587.42
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

The closed normalized authority records no EVM contract logic or eligible security audit for this project. This is an explicit cohort state, not a skipped export.

## Project Description

No contract logic was present for TokenWorks in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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
- Outside the address book: 75 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/42
- Verified + Unaudited implementations: 42
- Verified by bytecode match: 0
- Unverified implementations: 33
- Unique implementations: 75
- Raw deployments: 118
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

### ⚠️ Verified + Unaudited (42)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Autoglyphs | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd4e407...197782` | ⚠️ Unaudited |
| CabalClaim | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb0e2bf...b5afe6` | ⚠️ Unaudited |
| ChecksFeeHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x989947...e190f3` | ⚠️ Unaudited |
| ChimpStrategy | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x070e12...4a1bfd`; ethereum `0x317140...f890e6`; ethereum `0x3ca208...f7e4d0`; ethereum `0x9b1392...e421b5` | ⚠️ Unaudited |
| CrypToadzFeeHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7b6e24...664daf` | ⚠️ Unaudited |
| CryptoPunks | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ba6f2...66db8d` | ⚠️ Unaudited |
| CryptopunksData | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16f5a3...3af3b2` | ⚠️ Unaudited |
| CryptoPunksMarket | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb47e3c...193bbb` | ⚠️ Unaudited |
| DemocratizingDeath | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa20ccd...5ae6af` | ⚠️ Unaudited |
| ERC1155Strategy | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x96893a...57d251`; ethereum `0xb7d8a9...97fc32`; ethereum `0xdd08d4...fe2f31` | ⚠️ Unaudited |
| ERC1155StrategyFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x698ba0...f5328d` | ⚠️ Unaudited |
| ERC20Strategy | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x322a52...3adc34`; ethereum `0xb1a301...8de510`; ethereum `0xb40ede...6ee26e`; ethereum `0xce9f36...2e9495`; ethereum `0xe5a963...f1a2a5` | ⚠️ Unaudited |
| ERC20StrategyFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9f834e...000a0a` | ⚠️ Unaudited |
| FeeSplitter | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x2afd0d...ea031c`; ethereum `0x6e46ea...07683e` | ⚠️ Unaudited |
| FundingWorks | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb33d80...dcd5a6` | ⚠️ Unaudited |
| FundingWorksFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x2b591c...2e119d`; ethereum `0x67c8a7...0b8b4c`; ethereum `0xa4cde7...091783`; ethereum `0xccf047...6567b2` | ⚠️ Unaudited |
| FundingWorksFeeSplit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x27119c...29e499` | ⚠️ Unaudited |
| FundingWorksRenderer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d8d61...ca6ada` | ⚠️ Unaudited |
| FundingWorksSignature | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x38b2d2...3498ed` | ⚠️ Unaudited |
| FW2Token | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe1f5f8...0ddd2b` | ⚠️ Unaudited |
| GlobalDistributorHandler | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf99bd...b09b2d` | ⚠️ Unaudited |
| HeftUpgradable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x5515c4...1544bd`; ethereum `0x6834fb...144e45`; ethereum `0x756046...52fc0a`; ethereum `0x7f722c...3ea292`; ethereum `0x8279cd...b17a22` | ⚠️ Unaudited |
| MaxPainFeeHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x15e869...0baa08`; ethereum `0x7aca54...ebacff` | ⚠️ Unaudited |
| Meebits | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7bd294...716bc7` | ⚠️ Unaudited |
| NFTStrategy | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 14 deployments: ethereum `0x2090dc...17b0dc`; ethereum `0x31e9de...6442a2`; ethereum `0x3e1717...09bca1`; ethereum `0x4839e6...bfbb74`; ethereum `0x5d855d...1dcf21`; ethereum `0x60b30f...b38742`; ethereum `0x6bcba7...2658e8`; ethereum `0x7ac395...2a3746`; ethereum `0x8680ac...c85a4c`; ethereum `0x9ebf91...e54a03`; ethereum `0xa27a2c...9b204f`; ethereum `0xb3d6e9...38c5c5`; ethereum `0xc9b2c0...b2be68`; ethereum `0xe21f59...556da2` | ⚠️ Unaudited |
| NFTStrategyFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x12405f...7599a3`; ethereum `0x196678...64390d`; ethereum `0x6c108b...83b70a`; ethereum `0x84cf6b...9faec3`; ethereum `0xa1a196...3c22e5`; ethereum `0xd1b396...fc0636` | ⚠️ Unaudited |
| NFTStrategyHook | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe3c63a...a468c4` | ⚠️ Unaudited |
| NFTStrategyRange | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x742fd0...eb50e6` | ⚠️ Unaudited |
| NFTStrategyRangeFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x05852e...d975ff` | ⚠️ Unaudited |
| OtherdeedSplit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xae6db0...c30d69` | ⚠️ Unaudited |
| PoolManager | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x000000...e08a90` | ⚠️ Unaudited |
| PositionManager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xbd2165...64ee9e` | ⚠️ Unaudited |
| PunkStrategy | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc50673...e33edf` | ⚠️ Unaudited |
| PunkStrategyFinalOwner | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8dccff...f17545` | ⚠️ Unaudited |
| PunkStrategyPatch | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1244ea...ba4838` | ⚠️ Unaudited |
| RecursiveStrategy | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd9e9f4...465481` | ⚠️ Unaudited |
| RipeStrategy | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x7212ed...6c5ff8`; ethereum `0xf52ac2...08c972` | ⚠️ Unaudited |
| StrategyPublicLauncher | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x217d04...73cc73`; ethereum `0x8d05e9...731926`; ethereum `0xd7b446...e72cf5` | ⚠️ Unaudited |
| StreetStrategy | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xae0afd...d49f41`; ethereum `0xcd2f5c...138b90` | ⚠️ Unaudited |
| TenThousandTokens | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x26d7ad...e2fb2e` | ⚠️ Unaudited |
| V4Quoter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a382a...a65a15` | ⚠️ Unaudited |
| VibeStrategy | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x0f8def...b9a260`; ethereum `0x3558a4...92ca89`; ethereum `0xb1485f...bf3a1d`; ethereum `0xd0cc2b...257196` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (33)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b599a...d94645` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1556bb...a7aa78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16c3c5...613548` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x29ed1b...39869f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ac917...eda930` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3def7f...5b4686` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x441070...0ee07d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x454f0b...ceace2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x467d66...b04bf7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x52802f...dc0fe6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d750c...6728ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x60d184...d14615` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6cbec2...e2d82b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x705850...83c738` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-173242 | `0x713bdb...8663b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7851a8...084aa9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8721d9...a5dd3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x909810...84280b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x91afca...6c42a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x966107...a1da3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9f08ea...7b24dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa571e1...49092d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa5a5a6...310ff8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa75869...1aa287` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbca432...428400` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc76727...005fd4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcce1db...58a66d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd5c7b7...4ca72f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd5ef7d...610dee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe0b4f6...0fef7d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe11987...c28905` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe1450d...719d39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf8e381...6a2d35` | ❓ Unverified |

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
| native | 42 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 33 |

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
