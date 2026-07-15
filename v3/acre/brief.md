# Agentic Audit Brief: Acre

## Export Authority

- Production state: **published scope**
- Raw selected rows: 5 across 1 audit(s)
- Eligible audit results: 6 (1 matched; 5 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

⚠️ Lifecycle status: UNKNOWN - TVL dropped 38.7% over 90 days

## Project Overview

- Project: Acre (`acre`)
- Website: [https://acre.fi](https://acre.fi)
- Lifecycle: unknown (Tier 0, 48.6% below peak)
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 62 unique implementations (78 raw deployments)
- Coverage basis: 5/5 confirmed own live verified implementations (100.0%); conservative 100.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $3,245,321.59
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Acre. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 10 contract row(s) across ethereum. Structural roles: 9 unclassified, 1 supporting. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 10
- Structural roles: unclassified (9), supporting (1)
- Contract kinds: contract (10)
- Detected standards: erc1967proxy (1)
- Frameworks: openzeppelin (1), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 5 contracts are derived from known codebases. 5 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x4fd4dd...4321b0`, chain 1)
- UnnamedContract (`0x5356b8...565234`, chain 1)
- UnnamedContract (`0x5e1549...0e47f6`, chain 1)
- UnnamedContract (`0xce0a29...924ac7`, chain 1)
- TransparentUpgradeableProxy (`0x19531c...396ded`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 10; live-surface rows included: 10 (10 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 9/18 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 5/5 (100.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 9 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 53 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 23
- Confirmed-live implementations: 9 of 62 unique; 53 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 5/45
- Verified + Unaudited implementations: 40
- Verified by bytecode match: 0
- Unverified implementations: 17
- Unique implementations: 62
- Raw deployments: 78
- Audits discovered: 6 (6 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-08 (fresh)
- Audit staleness (calendar age): 1 fresh, 3 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 5 match-unverified
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [unknown]. ASD of n/a represents exposure in a protocol with unknown activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| yAudit | Tier 2 | 5 | 11.1% | 2025-08 |

## Contract Surface

### ✅ Verified + Audited (5)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| acreBTC | unknown | project_anchor | own_supporting | 1 | ethereum | unit-378405 | 4 deployments: ethereum `0x19531c...396ded`; ethereum `0x74b5e7...3e338c`; ethereum `0x7c0391...69d9d5`; ethereum `0x7e3638...a63d94` | ✅ Audited |
| BitcoinDepositorV2 | unknown | project_anchor | own_supporting | 1 | ethereum | unit-378406 | 2 deployments: ethereum `0x7b90c1...ca2b77`; ethereum `0xe5f48d...11c777` | ✅ Audited |
| BitcoinRedeemerV2 | unknown | project_anchor | own_supporting | 1 | ethereum | unit-378407 | 2 deployments: ethereum `0x42a5f9...4d55e9`; ethereum `0x8abe54...8bda5d` | ✅ Audited |
| MidasAllocator | operational_periphery | project_anchor | own_supporting | 1 | ethereum | unit-378408 | 2 deployments: ethereum `0x8d2339...7065b2`; ethereum `0xd72b0c...9659bb` | ✅ Audited |
| WithdrawalQueue | operational_periphery | project_anchor | own_supporting | 1 | ethereum | unit-378409 | 2 deployments: ethereum `0x9bc724...b031d6`; ethereum `0xe7b8c1...bb5d06` | ✅ Audited |

### ⚠️ Verified + Unaudited (40)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AcreAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x6a6092...587ae0`; ethereum `0x87bf77...daf031` | ⚠️ Unaudited |
| CustomAggregatorV3CompatibleFeedDiscounted | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x438630...95dc99` | ⚠️ Unaudited |
| MApolloDepositVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4d371c...e4999c` | ⚠️ Unaudited |
| MApolloRedemptionVaultWithSwapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcffed5...8c84ee` | ⚠️ Unaudited |
| MevBtcDepositVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xad391d...7c77d2` | ⚠️ Unaudited |
| MevBtcRedemptionVaultWithSwapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfeb770...5cf69b` | ⚠️ Unaudited |
| MFarmDepositVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x349c2d...fc4e52` | ⚠️ Unaudited |
| mHYPER | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x10e235...1080fb`; ethereum `0x9903e9...c781ae`; ethereum `0xa8bb03...d9bbfb`; ethereum `0xf406f9...dfcb01` | ⚠️ Unaudited |
| MHyperDepositVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa62249...130e5e` | ⚠️ Unaudited |
| MHyperRedemptionVaultWithSwapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf4b77b...33d6f3` | ⚠️ Unaudited |
| MidasLzMintBurnOFTAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x55b40c...2349c6`; ethereum `0xa0df4e...d086c0`; ethereum `0xc76e61...1c04c5`; ethereum `0xe43d2d...eccad6` | ⚠️ Unaudited |
| MidasTimelockController | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe3eee3...241852` | ⚠️ Unaudited |
| mPortofino | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x636cdf...d060b9` | ⚠️ Unaudited |
| MSlCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x12570b...acfc68` | ⚠️ Unaudited |
| PendleMidasSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x0aecdf...6f4802` | ⚠️ Unaudited |
| PendleMidasSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x1dd188...18dc18` | ⚠️ Unaudited |
| PendleMidasSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x2adfb8...efa2a2` | ⚠️ Unaudited |
| PendleMidasSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x440040...e3498e` | ⚠️ Unaudited |
| PendleMidasSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x553f9c...8ee089` | ⚠️ Unaudited |
| PendleMidasSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x5eff78...2e7887` | ⚠️ Unaudited |
| PendleMidasSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x66b857...8d9005` | ⚠️ Unaudited |
| PendleMidasSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x690f30...fb7687` | ⚠️ Unaudited |
| PendleMidasSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x74e0a5...130888` | ⚠️ Unaudited |
| PendleMidasSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x84568b...24b6b9` | ⚠️ Unaudited |
| PendleMidasSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x849f28...691fc4` | ⚠️ Unaudited |
| PendleMidasSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x9e3fd8...076f4e` | ⚠️ Unaudited |
| PendleMidasSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xac6f22...d340be` | ⚠️ Unaudited |
| PendleMidasSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xc87fce...a12470` | ⚠️ Unaudited |
| PendleMidasSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xe2ad97...fe48ba` | ⚠️ Unaudited |
| PendleMidasSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xf526ed...3c0e9d` | ⚠️ Unaudited |
| stBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4271d4...0e64e2` | ⚠️ Unaudited |
| SyrupAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0xad298d...ac8493`; ethereum `0xb1e60a...237850`; ethereum `0xd07107...368f5f` | ⚠️ Unaudited |
| SyrupUSDCAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa869cb...198b67` | ⚠️ Unaudited |
| TACmBtcDepositVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x570f37...5bbc08` | ⚠️ Unaudited |
| TACmBtcRedemptionVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6808e4...9ccdf4` | ⚠️ Unaudited |
| TBtcRedemptionVaultWithSwapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x438359...47df0a` | ⚠️ Unaudited |
| TEthRedemptionVaultWithSwapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc32652...750ebf` | ⚠️ Unaudited |
| TUsdeRedemptionVaultWithSwapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa3322c...2288f2` | ⚠️ Unaudited |
| ZeroGEthvCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa7ea8d...7d8606` | ⚠️ Unaudited |
| ZeroGEthvDepositVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d09a1...f45b04` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (17)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| PendleMidasSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x215226...234f53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x002006...71e516` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x06591a...d172d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x157fd9...7750db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2cedea...f22db5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b02e8...0316cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3befd6...f164b7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378391 | `0x4fd4dd...4321b0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378392 | `0x5356b8...565234` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378393 | `0x5e1549...0e47f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69e7bf...309d36` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x73e324...d33d7d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x94a6cc...37655f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb08e67...c0eec5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb1def0...7dc996` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbafcc4...e5a1fa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378402 | `0xce0a29...924ac7` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [drive.google.com/file/d/1ld8VgCkCMxBm65MuAcI8AFjjyAoYTBf6/view](https://drive.google.com/file/d/1ld8VgCkCMxBm65MuAcI8AFjjyAoYTBf6/view) | yAudit | Audit | 2024-09 | aging | Direct | address | no match | 0 | 0 | 0 | 2 | medium |
| [drive.google.com/file/d/1dbK5gCyRQURiPJloJXZOTNLaowtaeMip/view](https://drive.google.com/file/d/1dbK5gCyRQURiPJloJXZOTNLaowtaeMip/view) | yAudit | Audit | 2025-08 | fresh | Direct | contract_name | matched | 5 | 5 | 0 | 11 | high |
| [240517_Thesis_Defense-Acre_Smart_Contracts_Security_Audit_Report.pdf](https://github.com/thesis/defense_public_security-audit-reports/blob/main/PDFs/240517_Thesis_Defense-Acre_Smart_Contracts_Security_Audit_Report.pdf) | yAudit | Audit | 2024-05 | stale | Direct | n/a | no match | 0 | 0 | 0 | 9 | n/a |
| [240808_Thesis_Defense-Mezo-Acre_stBTC_Smart_Contracts_Security_Audit_Report.pdf](https://github.com/thesis/defense_public_security-audit-reports/blob/main/PDFs/240808_Thesis_Defense-Mezo-Acre_stBTC_Smart_Contracts_Security_Audit_Report.pdf) | yAudit | Audit | 2024-08 | aging | Direct | n/a | no match | 0 | 0 | 0 | 5 | n/a |
| [240517_Thesis_Defense-Acre_Smart_Contracts_Security_Audit_Report.pdf](https://github.com/Thesis-Defense/Security-Audit-Reports/blob/main/PDFs/240517_Thesis_Defense-Acre_Smart_Contracts_Security_Audit_Report.pdf) | Thesis Defense | Audit | 2024-05 | stale | Direct | n/a | no match | 0 | 0 | 0 | 9 | n/a |
| [240808_Thesis_Defense-Mezo-Acre_stBTC_Smart_Contracts_Security_Audit_Report.pdf](https://github.com/Thesis-Defense/Security-Audit-Reports/blob/main/PDFs/240808_Thesis_Defense-Mezo-Acre_stBTC_Smart_Contracts_Security_Audit_Report.pdf) | Thesis Defense | Audit | 2024-08 | aging | Direct | n/a | no match | 0 | 0 | 0 | 5 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2605] drive.google.com/file/d/1ld8VgCkCMxBm65MuAcI8AFjjyAoYTBf6/view — no match: Scope section mentions 'Acre smart contracts' but does not list specific contract names. Two contracts (stBTC and MezoAllocator) are identified from findings as targets. Audit date inferred from report title 'September 2024' and competition end date 'Sep 3, 2024'.
- [2606] drive.google.com/file/d/1dbK5gCyRQURiPJloJXZOTNLaowtaeMip/view — matched: Extracted 16 contract names from scope section and context. Audit date found on cover page and header.
- [2607] 240517_Thesis_Defense-Acre_Smart_Contracts_Security_Audit_Report.pdf — no match: No reason recorded
- [2608] 240808_Thesis_Defense-Mezo-Acre_stBTC_Smart_Contracts_Security_Audit_Report.pdf — no match: No reason recorded
- [14591] 240517_Thesis_Defense-Acre_Smart_Contracts_Security_Audit_Report.pdf — no match: No reason recorded
- [14592] 240808_Thesis_Defense-Mezo-Acre_stBTC_Smart_Contracts_Security_Audit_Report.pdf — no match: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| drive.google.com/file/d/1ld8VgCkCMxBm65MuAcI8AFjjyAoYTBf6/view | stBTC | unmatched — not counted | — | mentioned in findings as target contract | no |
| drive.google.com/file/d/1ld8VgCkCMxBm65MuAcI8AFjjyAoYTBf6/view | MezoAllocator | unmatched — not counted | — | mentioned in finding as target contract | no |
| drive.google.com/file/d/1dbK5gCyRQURiPJloJXZOTNLaowtaeMip/view | AcreMultiAssetVault | unmatched — not counted | — | listed in scope context | no |
| drive.google.com/file/d/1dbK5gCyRQURiPJloJXZOTNLaowtaeMip/view | BitcoinDepositor | unmatched — not counted | — | listed in scope context | no |
| drive.google.com/file/d/1dbK5gCyRQURiPJloJXZOTNLaowtaeMip/view | FeesReimbursementPool | unmatched — not counted | — | listed in scope context | no |
| drive.google.com/file/d/1dbK5gCyRQURiPJloJXZOTNLaowtaeMip/view | BitcoinRedeemer | unmatched — not counted | — | listed in scope context | no |
| drive.google.com/file/d/1dbK5gCyRQURiPJloJXZOTNLaowtaeMip/view | MezoAllocator | unmatched — not counted | — | listed in scope context | no |
| drive.google.com/file/d/1dbK5gCyRQURiPJloJXZOTNLaowtaeMip/view | PausableOwnable | unmatched — not counted | — | listed in scope context | no |
| drive.google.com/file/d/1dbK5gCyRQURiPJloJXZOTNLaowtaeMip/view | acreBTC | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x19531c...396ded` — deployed 2025-09-12 23:12:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| drive.google.com/file/d/1dbK5gCyRQURiPJloJXZOTNLaowtaeMip/view | ERC4626Fees | unmatched — not counted | — | listed in scope context | no |
| drive.google.com/file/d/1dbK5gCyRQURiPJloJXZOTNLaowtaeMip/view | ERC4626NonFungibleWithdrawals | unmatched — not counted | — | listed in scope context | no |
| drive.google.com/file/d/1dbK5gCyRQURiPJloJXZOTNLaowtaeMip/view | MidasAllocator | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xd72b0c...9659bb` — deployed 2025-09-19 00:26:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| drive.google.com/file/d/1dbK5gCyRQURiPJloJXZOTNLaowtaeMip/view | WithdrawalQueue | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xe7b8c1...bb5d06` — deployed 2025-09-19 00:32:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| drive.google.com/file/d/1dbK5gCyRQURiPJloJXZOTNLaowtaeMip/view | stBTC | unmatched — not counted | — | listed in scope context | no |
| drive.google.com/file/d/1dbK5gCyRQURiPJloJXZOTNLaowtaeMip/view | Maintainable | unmatched — not counted | — | listed in scope context | no |
| drive.google.com/file/d/1dbK5gCyRQURiPJloJXZOTNLaowtaeMip/view | BitcoinDepositorV2 | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xe5f48d...11c777` — deployed 2025-09-14 01:20:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| drive.google.com/file/d/1dbK5gCyRQURiPJloJXZOTNLaowtaeMip/view | BitcoinRedeemerV2 | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x42a5f9...4d55e9` — deployed 2025-09-19 00:18:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| drive.google.com/file/d/1dbK5gCyRQURiPJloJXZOTNLaowtaeMip/view | AcreAdapter | unmatched — not counted | — | explicitly mentioned in scope: 'adapter contract for Acre written by Midas Protocol AcreAdapter.sol' | no |
| 240517_Thesis_Defense-Acre_Smart_Contracts_Security_Audit_Report.pdf | BitcoinDepositor | unmatched — not counted | — | — | no |
| 240517_Thesis_Defense-Acre_Smart_Contracts_Security_Audit_Report.pdf | BitcoinRedeemer | unmatched — not counted | — | — | no |
| 240517_Thesis_Defense-Acre_Smart_Contracts_Security_Audit_Report.pdf | ERC4626Fees | unmatched — not counted | — | — | no |
| 240517_Thesis_Defense-Acre_Smart_Contracts_Security_Audit_Report.pdf | Errors | unmatched — not counted | — | — | no |
| 240517_Thesis_Defense-Acre_Smart_Contracts_Security_Audit_Report.pdf | IDispatcher | unmatched — not counted | — | — | no |
| 240517_Thesis_Defense-Acre_Smart_Contracts_Security_Audit_Report.pdf | ITBTCToken | unmatched — not counted | — | — | no |
| 240517_Thesis_Defense-Acre_Smart_Contracts_Security_Audit_Report.pdf | MezoAllocator | unmatched — not counted | — | — | no |
| 240517_Thesis_Defense-Acre_Smart_Contracts_Security_Audit_Report.pdf | PausableOwnable | unmatched — not counted | — | — | no |
| 240517_Thesis_Defense-Acre_Smart_Contracts_Security_Audit_Report.pdf | stBTC | unmatched — not counted | — | — | no |
| 240808_Thesis_Defense-Mezo-Acre_stBTC_Smart_Contracts_Security_Audit_Report.pdf | ERC4626Fees | unmatched — not counted | — | — | no |
| 240808_Thesis_Defense-Mezo-Acre_stBTC_Smart_Contracts_Security_Audit_Report.pdf | ERC4626NonFungibleWithdrawals | unmatched — not counted | — | — | no |
| 240808_Thesis_Defense-Mezo-Acre_stBTC_Smart_Contracts_Security_Audit_Report.pdf | MezoAllocator | unmatched — not counted | — | — | no |
| 240808_Thesis_Defense-Mezo-Acre_stBTC_Smart_Contracts_Security_Audit_Report.pdf | Portal | unmatched — not counted | — | — | no |
| 240808_Thesis_Defense-Mezo-Acre_stBTC_Smart_Contracts_Security_Audit_Report.pdf | stBTC | unmatched — not counted | — | — | no |
| 240517_Thesis_Defense-Acre_Smart_Contracts_Security_Audit_Report.pdf | BitcoinDepositor | unmatched — not counted | — | — | no |
| 240517_Thesis_Defense-Acre_Smart_Contracts_Security_Audit_Report.pdf | BitcoinRedeemer | unmatched — not counted | — | — | no |
| 240517_Thesis_Defense-Acre_Smart_Contracts_Security_Audit_Report.pdf | ERC4626Fees | unmatched — not counted | — | — | no |
| 240517_Thesis_Defense-Acre_Smart_Contracts_Security_Audit_Report.pdf | Errors | unmatched — not counted | — | — | no |
| 240517_Thesis_Defense-Acre_Smart_Contracts_Security_Audit_Report.pdf | IDispatcher | unmatched — not counted | — | — | no |
| 240517_Thesis_Defense-Acre_Smart_Contracts_Security_Audit_Report.pdf | ITBTCToken | unmatched — not counted | — | — | no |
| 240517_Thesis_Defense-Acre_Smart_Contracts_Security_Audit_Report.pdf | MezoAllocator | unmatched — not counted | — | — | no |
| 240517_Thesis_Defense-Acre_Smart_Contracts_Security_Audit_Report.pdf | PausableOwnable | unmatched — not counted | — | — | no |
| 240517_Thesis_Defense-Acre_Smart_Contracts_Security_Audit_Report.pdf | stBTC | unmatched — not counted | — | — | no |
| 240808_Thesis_Defense-Mezo-Acre_stBTC_Smart_Contracts_Security_Audit_Report.pdf | ERC4626Fees | unmatched — not counted | — | — | no |
| 240808_Thesis_Defense-Mezo-Acre_stBTC_Smart_Contracts_Security_Audit_Report.pdf | ERC4626NonFungibleWithdrawals | unmatched — not counted | — | — | no |
| 240808_Thesis_Defense-Mezo-Acre_stBTC_Smart_Contracts_Security_Audit_Report.pdf | MezoAllocator | unmatched — not counted | — | — | no |
| 240808_Thesis_Defense-Mezo-Acre_stBTC_Smart_Contracts_Security_Audit_Report.pdf | Portal | unmatched — not counted | — | — | no |
| 240808_Thesis_Defense-Mezo-Acre_stBTC_Smart_Contracts_Security_Audit_Report.pdf | stBTC | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 29 |
| upstream | 1 |
| standard_library | 19 |
| needs_review | 13 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Address-book scope dispositions: 5 own (5 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 41 unmatched
- Matched-own operational status: 5 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1, medium=1
- Match method counts: unique_name=5

Zero-match audit list:

- [2605] drive.google.com/file/d/1ld8VgCkCMxBm65MuAcI8AFjjyAoYTBf6/view
- [2607] 240517_Thesis_Defense-Acre_Smart_Contracts_Security_Audit_Report.pdf
- [2608] 240808_Thesis_Defense-Mezo-Acre_stBTC_Smart_Contracts_Security_Audit_Report.pdf
- [14591] 240517_Thesis_Defense-Acre_Smart_Contracts_Security_Audit_Report.pdf
- [14592] 240808_Thesis_Defense-Mezo-Acre_stBTC_Smart_Contracts_Security_Audit_Report.pdf

Fork inheritance lineage and inherited audits are included when available.
