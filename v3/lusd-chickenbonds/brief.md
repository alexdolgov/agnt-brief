# Agentic Audit Brief: LUSD ChickenBonds

## Export Authority

- Production state: **published scope**
- Raw selected rows: 17 across 6 audit(s)
- Eligible audit results: 7 (6 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `12555af2097191e60e7a3dc0743058c9046ed87a105382bdae663a49f79103f7`

## Project Overview

- Project: LUSD ChickenBonds (`lusd-chickenbonds`)
- Website: [https://www.chickenbonds.org](https://www.chickenbonds.org)
- Lifecycle: unknown
- Generated: 2026-07-17T12:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 9 unique implementations (11 raw deployments)
- Coverage basis: 3/5 confirmed own live verified implementations (60.0%); conservative 60.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,499,600.88
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for LUSD ChickenBonds. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 5 contract row(s) across ethereum. Structural roles: 2 core, 2 unclassified, 1 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 5
- Structural roles: core (2), unclassified (2), supporting (1)
- Contract kinds: contract (3), unclassified (2)
- Detected standards: ownable (2), erc165 (1), erc20 (1), erc721 (1)
- Frameworks: openzeppelin (2)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 5 contracts are derived from known codebases. 5 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- BLUSDToken (`0xb9d7dddca9a4ac480991865efef82e01273f79c3`, chain 1)
- BondNFT (`0xa8384862219188a8f03c144953cf21fc124029ee`, chain 1)
- ChickenBondManager (`0x57619fe9c539f890b19c61812226f9703ce37137`, chain 1)
- Vyper_contract (`0x74ed5d42203806c8cdcf2f04ca5f60dc777b901c`, chain 1)
- Vyper_contract (`0xda0dd1798be66e17d5ab1dc476302b56689c2db4`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 5; live-surface rows included: 5 (5 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 5/5 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 3/5 (60.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 5 own, 2 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 2 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Confirmed-live implementations: 5 of 9 unique; 4 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 3/7
- Verified + Unaudited implementations: 4
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 9
- Raw deployments: 11
- Audits discovered: 7 (7 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 6
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-10 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 7 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 3 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Coinspect | Tier 2 | 3 | 42.9% | 2022-10 |
| Dedaub | Tier 2 | 3 | 42.9% | 2022-09 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BLUSDToken | token | project_anchor | own_supporting | 0 | ethereum | unit-245800 | `0xb9d7dddca9a4ac480991865efef82e01273f79c3` | ✅ Audited |
| BondNFT | token | project_anchor | own_supporting | 0 | ethereum | unit-245799 | `0xa8384862219188a8f03c144953cf21fc124029ee` | ✅ Audited |
| ChickenBondManager | governance | project_anchor | own_supporting | 0 | ethereum | unit-245797 | `0x57619fe9c539f890b19c61812226f9703ce37137` | ✅ Audited |

### ⚠️ Verified + Unaudited (4)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| GnosisSafe | governance | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xfeb4acf3df3cdea7399794d0869ef76a6efaff52` | ⚠️ Unaudited |
| Vyper_contract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x5fa5b62c8af877cb37031e0a3b2f34a78e3c56a6`; ethereum `0xbebc44782c7db0a1a60cb6fe97d0b483032ff1c7`; ethereum `0xed279fdd11ca84beef15af5d39bb4d4bee23f0ca` | ⚠️ Unaudited |
| Vyper_contract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245798 | `0x74ed5d42203806c8cdcf2f04ca5f60dc777b901c` | ⚠️ Unaudited |
| Vyper_contract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245801 | `0xda0dd1798be66e17d5ab1dc476302b56689c2db4` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (2)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x896d8a30c32ead64f2e1195c2c8e0932be7dc20b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x91678e87e220855cb4ec169abdc9e7b5f3dc0187` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [B.Protocol - Chicken Bonds Audit.pdf](https://github.com/liquity/ChickenBond/blob/main/LUSDChickenBonds/audits/B.Protocol%20-%20Chicken%20Bonds%20Audit.pdf) | B.Protocol | Audit | 2022-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [Coinspect - Smart Contract Audit - Liquity ChickenBond.pdf](https://github.com/liquity/ChickenBond/blob/main/LUSDChickenBonds/audits/Coinspect%20-%20Smart%20Contract%20Audit%20-%20Liquity%20ChickenBond.pdf) | Coinspect | Audit | 2022-05 | stale | Direct | n/a | matched | 3 | 0 | 0 | 19 | n/a |
| [Coinspect - Smart Contract Audit - Liquity ChickenBonds 2nd v220803.pdf](https://github.com/liquity/ChickenBond/blob/main/LUSDChickenBonds/audits/Coinspect%20-%20Smart%20Contract%20Audit%20-%20Liquity%20ChickenBonds%202nd%20v220803.pdf) | Coinspect | Audit | 2022-07 | stale | Direct | n/a | matched | 3 | 0 | 0 | 14 | n/a |
| [Coinspect - Smart Contract Audit - Liquity ChickenBonds 3rd v220929.pdf](https://github.com/liquity/ChickenBond/blob/main/LUSDChickenBonds/audits/Coinspect%20-%20Smart%20Contract%20Audit%20-%20Liquity%20ChickenBonds%203rd%20v220929.pdf) | Coinspect | Audit | 2022-09 | stale | Direct | n/a | matched | 3 | 0 | 0 | 21 | n/a |
| [Coinspect - Smart Contract Audit - Liquity ChickenBonds 4th v221021.pdf](https://github.com/liquity/ChickenBond/blob/main/LUSDChickenBonds/audits/Coinspect%20-%20Smart%20Contract%20Audit%20-%20Liquity%20ChickenBonds%204th%20v221021.pdf) | Coinspect | Audit | 2022-10 | stale | Direct | n/a | matched | 2 | 0 | 0 | 2 | n/a |
| [Dedaub_Chicken Bonds Audit.pdf](https://github.com/liquity/ChickenBond/blob/main/LUSDChickenBonds/audits/Dedaub_Chicken%20Bonds%20Audit.pdf) | Dedaub | Audit | 2022-07 | stale | Direct | n/a | matched | 3 | 0 | 0 | 2 | n/a |
| [Dedaub_Chicken Bonds Delta Audit (NFT additions).pdf](https://github.com/liquity/ChickenBond/blob/main/LUSDChickenBonds/audits/Dedaub_Chicken%20Bonds%20Delta%20Audit%20(NFT%20additions).pdf) | Dedaub | Audit | 2022-09 | stale | Direct | n/a | matched | 3 | 0 | 0 | 4 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [14520] B.Protocol - Chicken Bonds Audit.pdf — no match: Scope explicitly lists four files: BAMM.sol, GemSeller.sol, GemSellerController.sol, UniV3Twap.sol. PriceFormula.sol excluded. Audit date from title line.
- [14521] Coinspect - Smart Contract Audit - Liquity ChickenBond.pdf — matched: No reason recorded
- [14522] Coinspect - Smart Contract Audit - Liquity ChickenBonds 2nd v220803.pdf — matched: No reason recorded
- [14523] Coinspect - Smart Contract Audit - Liquity ChickenBonds 3rd v220929.pdf — matched: No reason recorded
- [14524] Coinspect - Smart Contract Audit - Liquity ChickenBonds 4th v221021.pdf — matched: No reason recorded
- [14525] Dedaub_Chicken Bonds Audit.pdf — matched: No reason recorded
- [14526] Dedaub_Chicken Bonds Delta Audit (NFT additions).pdf — matched: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| B.Protocol - Chicken Bonds Audit.pdf | BAMM | unmatched — not counted | — | listed in scope | no |
| B.Protocol - Chicken Bonds Audit.pdf | GemSeller | unmatched — not counted | — | listed in scope | no |
| B.Protocol - Chicken Bonds Audit.pdf | GemSellerController | unmatched — not counted | — | listed in scope | no |
| B.Protocol - Chicken Bonds Audit.pdf | UniV3Twap | unmatched — not counted | — | listed in scope | no |
| Coinspect - Smart Contract Audit - Liquity ChickenBond.pdf | BLUSDToken | own contract | BLUSDToken (selected) `0xb9d7dddca9a4ac480991865efef82e01273f79c3` — deployed 2022-10-04 13:02:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Coinspect - Smart Contract Audit - Liquity ChickenBond.pdf | BaseMath | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Liquity ChickenBond.pdf | BondNFT | own contract | BondNFT (selected) `0xa8384862219188a8f03c144953cf21fc124029ee` — deployed 2022-10-04 13:03:11+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Coinspect - Smart Contract Audit - Liquity ChickenBond.pdf | ChickenBondManager | own contract | ChickenBondManager (selected) `0x57619fe9c539f890b19c61812226f9703ce37137` — deployed 2022-10-04 13:04:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Coinspect - Smart Contract Audit - Liquity ChickenBond.pdf | ChickenBondOperationsScript | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Liquity ChickenBond.pdf | ChickenMath | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Liquity ChickenBond.pdf | IBLUSDToken | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Liquity ChickenBond.pdf | IBondNFT | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Liquity ChickenBond.pdf | IChickenBondManager | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Liquity ChickenBond.pdf | ICurveLiquidityGaugeV4 | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Liquity ChickenBond.pdf | ICurvePool | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Liquity ChickenBond.pdf | ILUSDToken | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Liquity ChickenBond.pdf | IYearnRegistry | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Liquity ChickenBond.pdf | IYearnVault | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Liquity ChickenBond.pdf | LUSDSilo | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Liquity ChickenBond.pdf | MockCurveLiquidityGaugeV4 | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Liquity ChickenBond.pdf | MockCurvePool | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Liquity ChickenBond.pdf | MockLUSDToken | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Liquity ChickenBond.pdf | MockYearnRegistry | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Liquity ChickenBond.pdf | MockYearnVault | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Liquity ChickenBond.pdf | StrategyAPI | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Liquity ChickenBond.pdf | console | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Liquity ChickenBonds 2nd v220803.pdf | BLUSDToken | own contract | BLUSDToken (selected) `0xb9d7dddca9a4ac480991865efef82e01273f79c3` — deployed 2022-10-04 13:02:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Coinspect - Smart Contract Audit - Liquity ChickenBonds 2nd v220803.pdf | BaseMath | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Liquity ChickenBonds 2nd v220803.pdf | BondNFT | own contract | BondNFT (selected) `0xa8384862219188a8f03c144953cf21fc124029ee` — deployed 2022-10-04 13:03:11+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Coinspect - Smart Contract Audit - Liquity ChickenBonds 2nd v220803.pdf | ChickenBondManager | own contract | ChickenBondManager (selected) `0x57619fe9c539f890b19c61812226f9703ce37137` — deployed 2022-10-04 13:04:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Coinspect - Smart Contract Audit - Liquity ChickenBonds 2nd v220803.pdf | ChickenBondOperationsScript | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Liquity ChickenBonds 2nd v220803.pdf | ChickenMath | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Liquity ChickenBonds 2nd v220803.pdf | IBAMM | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Liquity ChickenBonds 2nd v220803.pdf | IBLUSDToken | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Liquity ChickenBonds 2nd v220803.pdf | IBondNFT | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Liquity ChickenBonds 2nd v220803.pdf | IBondNFTArtwork | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Liquity ChickenBonds 2nd v220803.pdf | IChickenBondManager | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Liquity ChickenBonds 2nd v220803.pdf | ICurveLiquidityGaugeV4 | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Liquity ChickenBonds 2nd v220803.pdf | ICurvePool | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Liquity ChickenBonds 2nd v220803.pdf | ILUSDToken | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Liquity ChickenBonds 2nd v220803.pdf | IYearnRegistry | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Liquity ChickenBonds 2nd v220803.pdf | IYearnVault | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Liquity ChickenBonds 2nd v220803.pdf | StrategyAPI | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Liquity ChickenBonds 3rd v220929.pdf | BLUSDToken | own contract | BLUSDToken (selected) `0xb9d7dddca9a4ac480991865efef82e01273f79c3` — deployed 2022-10-04 13:02:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Coinspect - Smart Contract Audit - Liquity ChickenBonds 3rd v220929.pdf | BaseMath | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Liquity ChickenBonds 3rd v220929.pdf | BondNFT | own contract | BondNFT (selected) `0xa8384862219188a8f03c144953cf21fc124029ee` — deployed 2022-10-04 13:03:11+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Coinspect - Smart Contract Audit - Liquity ChickenBonds 3rd v220929.pdf | ChickenBondManager | own contract | ChickenBondManager (selected) `0x57619fe9c539f890b19c61812226f9703ce37137` — deployed 2022-10-04 13:04:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Coinspect - Smart Contract Audit - Liquity ChickenBonds 3rd v220929.pdf | ChickenBondOperationsScript | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Liquity ChickenBonds 3rd v220929.pdf | ChickenMath | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Liquity ChickenBonds 3rd v220929.pdf | EggTraitWeights | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Liquity ChickenBonds 3rd v220929.pdf | GenerativeEggArtwork | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Liquity ChickenBonds 3rd v220929.pdf | IBAMM | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Liquity ChickenBonds 3rd v220929.pdf | IBLUSDToken | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Liquity ChickenBonds 3rd v220929.pdf | IBondNFT | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Liquity ChickenBonds 3rd v220929.pdf | IBondNFTArtwork | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Liquity ChickenBonds 3rd v220929.pdf | IChickenBondManager | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Liquity ChickenBonds 3rd v220929.pdf | ICurveGaugeController | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Liquity ChickenBonds 3rd v220929.pdf | ICurveLiquidityGaugeV5 | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Liquity ChickenBonds 3rd v220929.pdf | ICurvePool | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Liquity ChickenBonds 3rd v220929.pdf | ILQTYStaking | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Liquity ChickenBonds 3rd v220929.pdf | ILUSDToken | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Liquity ChickenBonds 3rd v220929.pdf | IPickleJar | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Liquity ChickenBonds 3rd v220929.pdf | ITroveManager | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Liquity ChickenBonds 3rd v220929.pdf | IYearnRegistry | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Liquity ChickenBonds 3rd v220929.pdf | IYearnVault | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Liquity ChickenBonds 3rd v220929.pdf | SimpleEggArtwork | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Liquity ChickenBonds 3rd v220929.pdf | StrategyAPI | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Liquity ChickenBonds 4th v221021.pdf | BLUSDLPZAP | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Liquity ChickenBonds 4th v221021.pdf | BondNFT | own contract | BondNFT (selected) `0xa8384862219188a8f03c144953cf21fc124029ee` — deployed 2022-10-04 13:03:11+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Coinspect - Smart Contract Audit - Liquity ChickenBonds 4th v221021.pdf | ChickenBondManager | own contract | ChickenBondManager (selected) `0x57619fe9c539f890b19c61812226f9703ce37137` — deployed 2022-10-04 13:04:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Coinspect - Smart Contract Audit - Liquity ChickenBonds 4th v221021.pdf | ChickenInArtwork | unmatched — not counted | — | — | no |
| Dedaub_Chicken Bonds Audit.pdf | BLUSDToken | own contract | BLUSDToken (selected) `0xb9d7dddca9a4ac480991865efef82e01273f79c3` — deployed 2022-10-04 13:02:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Dedaub_Chicken Bonds Audit.pdf | BaseMath | unmatched — not counted | — | — | no |
| Dedaub_Chicken Bonds Audit.pdf | BondNFT | own contract | BondNFT (selected) `0xa8384862219188a8f03c144953cf21fc124029ee` — deployed 2022-10-04 13:03:11+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Dedaub_Chicken Bonds Audit.pdf | ChickenBondManager | own contract | ChickenBondManager (selected) `0x57619fe9c539f890b19c61812226f9703ce37137` — deployed 2022-10-04 13:04:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Dedaub_Chicken Bonds Audit.pdf | ChickenMath | unmatched — not counted | — | — | no |
| Dedaub_Chicken Bonds Delta Audit (NFT additions).pdf | BLUSDToken | own contract | BLUSDToken (selected) `0xb9d7dddca9a4ac480991865efef82e01273f79c3` — deployed 2022-10-04 13:02:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Dedaub_Chicken Bonds Delta Audit (NFT additions).pdf | BaseMath | unmatched — not counted | — | — | no |
| Dedaub_Chicken Bonds Delta Audit (NFT additions).pdf | BondNFT | own contract | BondNFT (selected) `0xa8384862219188a8f03c144953cf21fc124029ee` — deployed 2022-10-04 13:03:11+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Dedaub_Chicken Bonds Delta Audit (NFT additions).pdf | ChickenBondManager | own contract | ChickenBondManager (selected) `0x57619fe9c539f890b19c61812226f9703ce37137` — deployed 2022-10-04 13:04:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Dedaub_Chicken Bonds Delta Audit (NFT additions).pdf | ChickenMath | unmatched — not counted | — | — | no |
| Dedaub_Chicken Bonds Delta Audit (NFT additions).pdf | GenerativeEggArtwork | unmatched — not counted | — | — | no |
| Dedaub_Chicken Bonds Delta Audit (NFT additions).pdf | SimpleEggArtwork | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x74ed5d42203806c8cdcf2f04ca5f60dc777b901c` | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xda0dd1798be66e17d5ab1dc476302b56689c2db4` | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 6 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 17 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 66 unmatched
- Matched-own operational status: 17 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: unique_name=17

Zero-match audit list:

- [14520] B.Protocol - Chicken Bonds Audit.pdf

Fork inheritance lineage and inherited audits are included when available.
