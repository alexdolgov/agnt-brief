# Agentic Audit Brief: Loopring

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Loopring (`loopring`)
- Website: [https://loopring.org/#/](https://loopring.org/#/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 16 unique implementations (130 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $8,125,806.63
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Loopring. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 127 contract row(s) across ethereum. Structural roles: 124 unclassified, 3 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 127
- Structural roles: unclassified (124), core (3)
- Contract kinds: contract (127)
- Detected standards: eip1271 (1)
- Frameworks: openzeppelin (3)
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Indexed contracts: 127; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 16 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 115
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All verified address-book-owned implementations audited (incl. non-live): 0/0
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 16
- Raw deployments: 130
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2019-11 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (12)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AgentRegistry | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-245429 | `0x39b9bf...38ea14` | ⚠️ Unaudited |
| BlockVerifier | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-245437 | `0x615034...8d01ef` | ⚠️ Unaudited |
| DefaultDepositContract | core_logic | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-245439 | `0x674bdf...66bd3f` | ⚠️ Unaudited |
| DestroyableWalletAgent | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-245433 | `0x4cd8d4...f7f529` | ⚠️ Unaudited |
| ExchangeV3 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-245445 | 2 deployments: ethereum `0x0baba1...8f1ea4`; ethereum `0x26d8ba...ae7e82` | ⚠️ Unaudited |
| FastWithdrawalAgent | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-245443 | `0xec3cc6...b78a31` | ⚠️ Unaudited |
| ForcedWithdrawalAgent | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-245435 | `0x52ea19...a24470` | ⚠️ Unaudited |
| LoopringAmmPool | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 113 | ethereum | unit-245447 (113 proxies) | 114 deployments: ethereum `0x008908...99d727`; ethereum `0x06ac0e...8dae4d`; ethereum `0x0818e9...cbe2d5`; ethereum `0x093137...f92bbf`; ethereum `0x0aa4d2...c8d786`; ethereum `0x0bcd57...329683`; ethereum `0x1230f7...1b8133`; ethereum `0x145f20...22db07`; ethereum `0x17baa2...186c48`; ethereum `0x18920d...c95036`; ethereum `0x18a1a6...d0b652`; ethereum `0x194db3...3c215a`; ethereum `0x1ad74c...fbe810`; ethereum `0x1b04a2...a1e94e`; ethereum `0x1cb97a...0bc438`; ethereum `0x1d28b2...2a4d74`; ethereum `0x1f78cd...0669ac`; ethereum `0x1f94ea...4753bd`; ethereum `0x22844c...10f5f4`; ethereum `0x24e4cf...cd96ef`; ethereum `0x2eab32...cecdb9`; ethereum `0x2ed5d3...db7b8a`; ethereum `0x2fac66...8ecfe5`; ethereum `0x33df02...5cc0fa`; ethereum `0x348412...48861a`; ethereum `0x37b6aa...44c1b1`; ethereum `0x3ec139...d28e3b`; ethereum `0x41e3b4...47dbe4`; ethereum `0x43eca2...005d6b`; ethereum `0x447356...e1d41f`; ethereum `0x4a7e38...d5afc5`; ethereum `0x4e585b...5fe74b`; ethereum `0x4f23ca...77c407`; ethereum `0x4facf6...8403d6`; ethereum `0x502b55...a404e5`; ethereum `0x5359f0...521b5c`; ethereum `0x554be7...24534e`; ethereum `0x567c1a...701e66`; ethereum `0x583208...e17df2`; ethereum `0x5c159d...f14842`; ethereum `0x5f24c3...64626b`; ethereum `0x5f6a99...9461b8`; ethereum `0x636a31...5d634f`; ethereum `0x66fad4...1aa276`; ethereum `0x69a8bd...0689c0`; ethereum `0x6bf006...5edba1`; ethereum `0x6ff8a3...c0adba`; ethereum `0x70c8e0...79d638`; ethereum `0x73b7bc...a5ffa8`; ethereum `0x746eeb...a9093b`; ethereum `0x759c0d...99a9f5`; ethereum `0x76d8ea...adf3d0`; ethereum `0x78a585...5bef29`; ethereum `0x7ab580...45afb1`; ethereum `0x7af6e5...27075b`; ethereum `0x7b854d...1c0677`; ethereum `0x7cd787...9fba73`; ethereum `0x8195be...0fb1f9`; ethereum `0x8303f8...f16251`; ethereum `0x83c11c...fe181f`; ethereum `0x83df13...8e1205`; ethereum `0x8572b8...b77563`; ethereum `0x85f2e9...6ddbde`; ethereum `0x8a6ba9...7f8582`; ethereum `0x8a9866...c725e1`; ethereum `0x8cf6c5...a2fd3d`; ethereum `0x8e8979...dc484c`; ethereum `0x8efad0...fc6b42`; ethereum `0x8f5a6e...8f8310`; ethereum `0x8f871a...3c087f`; ethereum `0x9387e0...343901`; ethereum `0x93bb5b...8c16d0`; ethereum `0x977544...5e4c69`; ethereum `0x97db7f...bf6c9a`; ethereum `0x994f94...eed4a8`; ethereum `0x9a94a8...df2635`; ethereum `0x9b7a20...4cc5f2`; ethereum `0x9c6013...6e7702`; ethereum `0xa0059a...4fb4b2`; ethereum `0xa2acf6...1bfde7`; ethereum `0xa2f4a8...e0b19a`; ethereum `0xa41e49...0fcbbb`; ethereum `0xa738de...fe1420`; ethereum `0xa762d8...2a86b0`; ethereum `0xa9d46d...007b81`; ethereum `0xaced28...10f961`; ethereum `0xb27b1f...453d7c`; ethereum `0xba64cd...555795`; ethereum `0xbbb360...b8f0d7`; ethereum `0xbbca47...6502e8`; ethereum `0xbdc384...3a7c48`; ethereum `0xbec0c5...b44437`; ethereum `0xc36306...9772ab`; ethereum `0xc418a3...4e178d`; ethereum `0xc50138...cf6f78`; ethereum `0xc6bc13...a698a4`; ethereum `0xc8f242...c5ba4b`; ethereum `0xcac495...858258`; ethereum `0xd04069...28f8cd`; ethereum `0xd4df78...4db07d`; ethereum `0xd85f59...6906b6`; ethereum `0xd9d681...318a09`; ethereum `0xe6cc0d...ad5743`; ethereum `0xe6f1c2...07191d`; ethereum `0xe7e807...80104b`; ethereum `0xee6a9d...9b1414`; ethereum `0xf11702...2037de`; ethereum `0xf85f03...c3d57f`; ethereum `0xf88de0...b6156e`; ethereum `0xf8e4ab...957c47`; ethereum `0xfa6680...568d98`; ethereum `0xfb64c2...d8ab9f`; ethereum `0xfd997e...b6e01c`; ethereum `0xfe88c4...9a1cda` | ⚠️ Unaudited |
| LoopringAmmPool | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-245469 | `0xe8ea36...5f5e20` | ⚠️ Unaudited |
| LoopringIOExchangeOwner | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-245427 | `0x153cdd...aa8512` | ⚠️ Unaudited |
| LoopringV3 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-245441 | `0xe56d6c...920c71` | ⚠️ Unaudited |
| ProtocolFeeVault | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-245431 | `0x4b89f8...fca171` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (4)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x605872...197983` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xb42bbc...3db7d5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xbbbbca...7aeafd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xf6cd96...8c59de` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [LoopringV3_1_Report_EN.pdf](https://github.com/Loopring/protocols/blob/master/packages/loopring_v3/security_audit/LoopringV3_1_Report_EN.pdf) | unknown | Audit | 2019-11 | stale | Direct | n/a | no match | 0 | 0 | 0 | 25 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [11607] LoopringV3_1_Report_EN.pdf — no match: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| LoopringV3_1_Report_EN.pdf | BlockVerifier | unmatched — not counted | — | — | no |
| LoopringV3_1_Report_EN.pdf | CheckFillRateGadget | unmatched — not counted | — | — | no |
| LoopringV3_1_Report_EN.pdf | CheckValidGadget | unmatched — not counted | — | — | no |
| LoopringV3_1_Report_EN.pdf | DepositCircuit | unmatched — not counted | — | — | no |
| LoopringV3_1_Report_EN.pdf | DowntimeCostCalculator | unmatched — not counted | — | — | no |
| LoopringV3_1_Report_EN.pdf | ExchangeProxy | unmatched — not counted | — | — | no |
| LoopringV3_1_Report_EN.pdf | ExchangeV3 | unmatched — not counted | — | — | no |
| LoopringV3_1_Report_EN.pdf | FeeCalculatorGadget | unmatched — not counted | — | — | no |
| LoopringV3_1_Report_EN.pdf | LoopringV3 | unmatched — not counted | — | — | no |
| LoopringV3_1_Report_EN.pdf | LzDecompressor | unmatched — not counted | — | — | no |
| LoopringV3_1_Report_EN.pdf | MatchingGadgets | unmatched — not counted | — | — | no |
| LoopringV3_1_Report_EN.pdf | MaxFillAmountsGadget | unmatched — not counted | — | — | no |
| LoopringV3_1_Report_EN.pdf | OffchainWithdrawalCircuit | unmatched — not counted | — | — | no |
| LoopringV3_1_Report_EN.pdf | OnchainWithdrawalCircuit | unmatched — not counted | — | — | no |
| LoopringV3_1_Report_EN.pdf | OrderCancellationCircuit | unmatched — not counted | — | — | no |
| LoopringV3_1_Report_EN.pdf | OrderMatchingGadget | unmatched — not counted | — | — | no |
| LoopringV3_1_Report_EN.pdf | ProtocolFeeVault | unmatched — not counted | — | — | no |
| LoopringV3_1_Report_EN.pdf | ProtocolRegistry | unmatched — not counted | — | — | no |
| LoopringV3_1_Report_EN.pdf | RingSettlementCircuit | unmatched — not counted | — | — | no |
| LoopringV3_1_Report_EN.pdf | RingSettlementGadget | unmatched — not counted | — | — | no |
| LoopringV3_1_Report_EN.pdf | SignatureBasedAddressWhitelist | unmatched — not counted | — | — | no |
| LoopringV3_1_Report_EN.pdf | SignatureVerifier | unmatched — not counted | — | — | no |
| LoopringV3_1_Report_EN.pdf | TakerMakerMatchingGadget | unmatched — not counted | — | — | no |
| LoopringV3_1_Report_EN.pdf | TransformRingSettlementDataGadget | unmatched — not counted | — | — | no |
| LoopringV3_1_Report_EN.pdf | UserStakingPool | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 12 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 4 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 25 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [11607] LoopringV3_1_Report_EN.pdf

Fork inheritance lineage and inherited audits are included when available.
