# Agentic Audit Brief: Metis Bridge

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 2 (0 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Metis Bridge (`metis-bridge`)
- Website: [https://bridge.metis.io/home](https://bridge.metis.io/home)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: ethereum
- Contract surface: 27 unique implementations (27 raw deployments)
- Coverage basis: 0/1 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $25,148,876.25
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Metis Bridge. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across ethereum. Structural roles: 1 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: supporting (1)
- Contract kinds: contract (1)
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 1 contracts are derived from known codebases. 1 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x3980c9ed79d2c191a89e02fa3529c60ed6e9c04b`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 1; live-surface rows included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 1/2 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/1 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 1 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 25 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 1 of 27 unique; 26 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/2
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 25
- Unique implementations: 27
- Raw deployments: 27
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-12 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| MToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9e32b13ce7f2e80a01932b42553652e053d6ed8e` | ⚠️ Unaudited |
| UnnamedContract | proxy | project_anchor | own_supporting | 0 | ethereum | unit-389001 | `0x3980c9ed79d2c191a89e02fa3529c60ed6e9c04b` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (25)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x081d1101855bd523ba69a9794e0217f0db6323ff` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-389000 | `0x101500214981e7a5ad2334d8404eaf365c2c3113` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10739f09f6e62689c0aa8a1878816de9e166d6f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x38473feb3a6366757a249db2ca4fbb2c663416b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x431e877e216714647a4dcceffc03d7b4fd4b825e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x461c688ca13e30fe5ef9ff30dc82a906da87cbd6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x56a76bcc92361f6df8d75476fed8843edc70e1c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ea23cb3d609f4522a21adcc9ca366e76c23c40f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ff5316cd1c015970eec83d34a69e504b577a5bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6a1db7d799fba381f2a518ca859ed30cb8e1d41a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x73df4adea53baa753e82bc998cd70bcd3a9aa6bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f6b0b7589febc40419a8646eff9801b87397063` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8bf439ef7167023f009e24b21719ca5f768ecb36` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x918778e825747a892b17c66fe7d24c618262867d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9e2e3be85df5ca63de7674ba64ffd564075f3b48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9ed4739afd706122591e75f215208ecf522c0fd3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa91ea6f5d1eda8e6686639d6c88b309cf35d2e57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb2e2060a179e67ca4299cc79fa337b98791de069` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb64585bd0d686eaed47ee986190ea8abe610ae33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc6c9efe77e8de46452ddffce8718a8186c661380` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc8953ca384b4adc8b1b11b030afe2f05471664b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe70dd4de81d282b3fa92a6700fee8339d2d9b5cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf209815e595cdf3ed0aaf9665b1772e608ab9380` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf3d58d1794f2634d6649a978f2dc093898feebc0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf51b9c9a1c12e7e48bec15dc358d0c1f0d7eb3be` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 24
- Live contracts: 0
- Unknown liveness contracts: 24
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: unverified unclassified=24

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| ethereum | unverified unclassified | UnnamedContract<br>`0x081d1101855bd523ba69a9794e0217f0db6323ff` | non_address_book | unknown | unknown | unverified | n/a | `0xdd6ffc7d9a4fb420b637747edc6456340d12d377` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x10739f09f6e62689c0aa8a1878816de9e166d6f9` | non_address_book | unknown | unknown | unverified | n/a | `0xdd6ffc7d9a4fb420b637747edc6456340d12d377` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x38473feb3a6366757a249db2ca4fbb2c663416b7` | non_address_book | unknown | unknown | unverified | n/a | `0xdd6ffc7d9a4fb420b637747edc6456340d12d377` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x431e877e216714647a4dcceffc03d7b4fd4b825e` | non_address_book | unknown | unknown | unverified | n/a | `0xdd6ffc7d9a4fb420b637747edc6456340d12d377` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x461c688ca13e30fe5ef9ff30dc82a906da87cbd6` | non_address_book | unknown | unknown | unverified | n/a | `0xdd6ffc7d9a4fb420b637747edc6456340d12d377` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x56a76bcc92361f6df8d75476fed8843edc70e1c9` | non_address_book | unknown | unknown | unverified | n/a | `0xdd6ffc7d9a4fb420b637747edc6456340d12d377` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5ea23cb3d609f4522a21adcc9ca366e76c23c40f` | non_address_book | unknown | unknown | unverified | n/a | `0xdd6ffc7d9a4fb420b637747edc6456340d12d377` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5ff5316cd1c015970eec83d34a69e504b577a5bb` | non_address_book | unknown | unknown | unverified | n/a | `0xdd6ffc7d9a4fb420b637747edc6456340d12d377` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6a1db7d799fba381f2a518ca859ed30cb8e1d41a` | non_address_book | unknown | unknown | unverified | n/a | `0xdd6ffc7d9a4fb420b637747edc6456340d12d377` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x73df4adea53baa753e82bc998cd70bcd3a9aa6bc` | non_address_book | unknown | unknown | unverified | n/a | `0xdd6ffc7d9a4fb420b637747edc6456340d12d377` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7f6b0b7589febc40419a8646eff9801b87397063` | non_address_book | unknown | unknown | unverified | n/a | `0xdd6ffc7d9a4fb420b637747edc6456340d12d377` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8bf439ef7167023f009e24b21719ca5f768ecb36` | non_address_book | unknown | unknown | unverified | n/a | `0xdd6ffc7d9a4fb420b637747edc6456340d12d377` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x918778e825747a892b17c66fe7d24c618262867d` | non_address_book | unknown | unknown | unverified | n/a | `0xdd6ffc7d9a4fb420b637747edc6456340d12d377` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9e2e3be85df5ca63de7674ba64ffd564075f3b48` | non_address_book | unknown | unknown | unverified | n/a | `0xdd6ffc7d9a4fb420b637747edc6456340d12d377` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9ed4739afd706122591e75f215208ecf522c0fd3` | non_address_book | unknown | unknown | unverified | n/a | `0xdd6ffc7d9a4fb420b637747edc6456340d12d377` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa91ea6f5d1eda8e6686639d6c88b309cf35d2e57` | non_address_book | unknown | unknown | unverified | n/a | `0xdd6ffc7d9a4fb420b637747edc6456340d12d377` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb2e2060a179e67ca4299cc79fa337b98791de069` | non_address_book | unknown | unknown | unverified | n/a | `0xdd6ffc7d9a4fb420b637747edc6456340d12d377` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb64585bd0d686eaed47ee986190ea8abe610ae33` | non_address_book | unknown | unknown | unverified | n/a | `0xdd6ffc7d9a4fb420b637747edc6456340d12d377` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc6c9efe77e8de46452ddffce8718a8186c661380` | non_address_book | unknown | unknown | unverified | n/a | `0xdd6ffc7d9a4fb420b637747edc6456340d12d377` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc8953ca384b4adc8b1b11b030afe2f05471664b0` | non_address_book | unknown | unknown | unverified | n/a | `0xdd6ffc7d9a4fb420b637747edc6456340d12d377` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe70dd4de81d282b3fa92a6700fee8339d2d9b5cb` | non_address_book | unknown | unknown | unverified | n/a | `0xdd6ffc7d9a4fb420b637747edc6456340d12d377` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf209815e595cdf3ed0aaf9665b1772e608ab9380` | non_address_book | unknown | unknown | unverified | n/a | `0xdd6ffc7d9a4fb420b637747edc6456340d12d377` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf3d58d1794f2634d6649a978f2dc093898feebc0` | non_address_book | unknown | unknown | unverified | n/a | `0xdd6ffc7d9a4fb420b637747edc6456340d12d377` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf51b9c9a1c12e7e48bec15dc358d0c1f0d7eb3be` | non_address_book | unknown | unknown | unverified | n/a | `0xdd6ffc7d9a4fb420b637747edc6456340d12d377` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [drive.google.com/file/d/1AHDVzVUcRh8ghmfLR8qRfaHpgML7v9vW/view](https://drive.google.com/file/d/1AHDVzVUcRh8ghmfLR8qRfaHpgML7v9vW/view) | yAudit | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [spaces/MkexAWdCekeDPPCMOdGs/uploads/9VWYLfEEmUHQSTuVyMnV/MetisDAO Foundation_08092022_SCAudit_Report (2).pdf](https://files.gitbook.com/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FMkexAWdCekeDPPCMOdGs%2Fuploads%2F9VWYLfEEmUHQSTuVyMnV%2FMetisDAO%20Foundation_08092022_SCAudit_Report%20(2).pdf?alt=media) | yAudit | Audit | 2022-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 34 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [20836] drive.google.com/file/d/1AHDVzVUcRh8ghmfLR8qRfaHpgML7v9vW/view — no match: The provided text is a Google Drive page with no actual audit report content. It only shows a loading indicator and a sign-in link.
- [20837] spaces/MkexAWdCekeDPPCMOdGs/uploads/9VWYLfEEmUHQSTuVyMnV/MetisDAO Foundation_08092022_SCAudit_Report (2).pdf — no match: Extracted all contracts from the scope sections (initial, second, third review) and the system overview. The audit date is December 5, 2022, as stated on the cover page.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| spaces/MkexAWdCekeDPPCMOdGs/uploads/9VWYLfEEmUHQSTuVyMnV/MetisDAO Foundation_08092022_SCAudit_Report (2).pdf | IL1CrossDomainMessenger | unmatched — not counted | — | listed in scope | no |
| spaces/MkexAWdCekeDPPCMOdGs/uploads/9VWYLfEEmUHQSTuVyMnV/MetisDAO Foundation_08092022_SCAudit_Report (2).pdf | IL1ERC20Bridge | unmatched — not counted | — | listed in scope | no |
| spaces/MkexAWdCekeDPPCMOdGs/uploads/9VWYLfEEmUHQSTuVyMnV/MetisDAO Foundation_08092022_SCAudit_Report (2).pdf | IL1StandardBridge | unmatched — not counted | — | listed in scope | no |
| spaces/MkexAWdCekeDPPCMOdGs/uploads/9VWYLfEEmUHQSTuVyMnV/MetisDAO Foundation_08092022_SCAudit_Report (2).pdf | L1CrossDomainMessenger | unmatched — not counted | — | listed in scope | no |
| spaces/MkexAWdCekeDPPCMOdGs/uploads/9VWYLfEEmUHQSTuVyMnV/MetisDAO Foundation_08092022_SCAudit_Report (2).pdf | L1StandardBridge | unmatched — not counted | — | listed in scope | no |
| spaces/MkexAWdCekeDPPCMOdGs/uploads/9VWYLfEEmUHQSTuVyMnV/MetisDAO Foundation_08092022_SCAudit_Report (2).pdf | ICanonicalTransactionChain | unmatched — not counted | — | listed in scope | no |
| spaces/MkexAWdCekeDPPCMOdGs/uploads/9VWYLfEEmUHQSTuVyMnV/MetisDAO Foundation_08092022_SCAudit_Report (2).pdf | IStateCommitmentChain | unmatched — not counted | — | listed in scope | no |
| spaces/MkexAWdCekeDPPCMOdGs/uploads/9VWYLfEEmUHQSTuVyMnV/MetisDAO Foundation_08092022_SCAudit_Report (2).pdf | IL2ERC20Bridge | unmatched — not counted | — | listed in scope | no |
| spaces/MkexAWdCekeDPPCMOdGs/uploads/9VWYLfEEmUHQSTuVyMnV/MetisDAO Foundation_08092022_SCAudit_Report (2).pdf | CrossDomainEnabled | unmatched — not counted | — | listed in scope | no |
| spaces/MkexAWdCekeDPPCMOdGs/uploads/9VWYLfEEmUHQSTuVyMnV/MetisDAO Foundation_08092022_SCAudit_Report (2).pdf | ICrossDomainMessenger | unmatched — not counted | — | listed in scope | no |
| spaces/MkexAWdCekeDPPCMOdGs/uploads/9VWYLfEEmUHQSTuVyMnV/MetisDAO Foundation_08092022_SCAudit_Report (2).pdf | Lib_CrossDomainUtils | unmatched — not counted | — | listed in scope | no |
| spaces/MkexAWdCekeDPPCMOdGs/uploads/9VWYLfEEmUHQSTuVyMnV/MetisDAO Foundation_08092022_SCAudit_Report (2).pdf | Lib_OVMCodec | unmatched — not counted | — | listed in scope | no |
| spaces/MkexAWdCekeDPPCMOdGs/uploads/9VWYLfEEmUHQSTuVyMnV/MetisDAO Foundation_08092022_SCAudit_Report (2).pdf | Lib_DefaultValues | unmatched — not counted | — | listed in scope | no |
| spaces/MkexAWdCekeDPPCMOdGs/uploads/9VWYLfEEmUHQSTuVyMnV/MetisDAO Foundation_08092022_SCAudit_Report (2).pdf | Lib_PredeployAddresses | unmatched — not counted | — | listed in scope | no |
| spaces/MkexAWdCekeDPPCMOdGs/uploads/9VWYLfEEmUHQSTuVyMnV/MetisDAO Foundation_08092022_SCAudit_Report (2).pdf | Lib_AddressManager | unmatched — not counted | — | listed in scope | no |
| spaces/MkexAWdCekeDPPCMOdGs/uploads/9VWYLfEEmUHQSTuVyMnV/MetisDAO Foundation_08092022_SCAudit_Report (2).pdf | Lib_AddressResolver | unmatched — not counted | — | listed in scope | no |
| spaces/MkexAWdCekeDPPCMOdGs/uploads/9VWYLfEEmUHQSTuVyMnV/MetisDAO Foundation_08092022_SCAudit_Report (2).pdf | Lib_RLPReader | unmatched — not counted | — | listed in scope | no |
| spaces/MkexAWdCekeDPPCMOdGs/uploads/9VWYLfEEmUHQSTuVyMnV/MetisDAO Foundation_08092022_SCAudit_Report (2).pdf | Lib_RLPWriter | unmatched — not counted | — | listed in scope | no |
| spaces/MkexAWdCekeDPPCMOdGs/uploads/9VWYLfEEmUHQSTuVyMnV/MetisDAO Foundation_08092022_SCAudit_Report (2).pdf | Lib_MerkleTrie | unmatched — not counted | — | listed in scope | no |
| spaces/MkexAWdCekeDPPCMOdGs/uploads/9VWYLfEEmUHQSTuVyMnV/MetisDAO Foundation_08092022_SCAudit_Report (2).pdf | Lib_SecureMerkleTrie | unmatched — not counted | — | listed in scope | no |
| spaces/MkexAWdCekeDPPCMOdGs/uploads/9VWYLfEEmUHQSTuVyMnV/MetisDAO Foundation_08092022_SCAudit_Report (2).pdf | Lib_Bytes32Utils | unmatched — not counted | — | listed in scope | no |
| spaces/MkexAWdCekeDPPCMOdGs/uploads/9VWYLfEEmUHQSTuVyMnV/MetisDAO Foundation_08092022_SCAudit_Report (2).pdf | Lib_BytesUtils | unmatched — not counted | — | listed in scope | no |
| spaces/MkexAWdCekeDPPCMOdGs/uploads/9VWYLfEEmUHQSTuVyMnV/MetisDAO Foundation_08092022_SCAudit_Report (2).pdf | AddressAliasHelper | unmatched — not counted | — | listed in scope | no |
| spaces/MkexAWdCekeDPPCMOdGs/uploads/9VWYLfEEmUHQSTuVyMnV/MetisDAO Foundation_08092022_SCAudit_Report (2).pdf | iMVM_DiscountOracle | unmatched — not counted | — | listed in scope | no |
| spaces/MkexAWdCekeDPPCMOdGs/uploads/9VWYLfEEmUHQSTuVyMnV/MetisDAO Foundation_08092022_SCAudit_Report (2).pdf | StateCommitmentChain | unmatched — not counted | — | listed in scope | no |
| spaces/MkexAWdCekeDPPCMOdGs/uploads/9VWYLfEEmUHQSTuVyMnV/MetisDAO Foundation_08092022_SCAudit_Report (2).pdf | CanonicalTransactionChain | unmatched — not counted | — | listed in scope | no |
| spaces/MkexAWdCekeDPPCMOdGs/uploads/9VWYLfEEmUHQSTuVyMnV/MetisDAO Foundation_08092022_SCAudit_Report (2).pdf | MVM_DiscountOracle | unmatched — not counted | — | listed in scope | no |
| spaces/MkexAWdCekeDPPCMOdGs/uploads/9VWYLfEEmUHQSTuVyMnV/MetisDAO Foundation_08092022_SCAudit_Report (2).pdf | Lib_MerkleTree | unmatched — not counted | — | listed in scope | no |
| spaces/MkexAWdCekeDPPCMOdGs/uploads/9VWYLfEEmUHQSTuVyMnV/MetisDAO Foundation_08092022_SCAudit_Report (2).pdf | IBondManager | unmatched — not counted | — | listed in scope | no |
| spaces/MkexAWdCekeDPPCMOdGs/uploads/9VWYLfEEmUHQSTuVyMnV/MetisDAO Foundation_08092022_SCAudit_Report (2).pdf | BondManager | unmatched — not counted | — | listed in scope | no |
| spaces/MkexAWdCekeDPPCMOdGs/uploads/9VWYLfEEmUHQSTuVyMnV/MetisDAO Foundation_08092022_SCAudit_Report (2).pdf | IChainStorageContainer | unmatched — not counted | — | listed in scope | no |
| spaces/MkexAWdCekeDPPCMOdGs/uploads/9VWYLfEEmUHQSTuVyMnV/MetisDAO Foundation_08092022_SCAudit_Report (2).pdf | ChainStorageContainer | unmatched — not counted | — | listed in scope | no |
| spaces/MkexAWdCekeDPPCMOdGs/uploads/9VWYLfEEmUHQSTuVyMnV/MetisDAO Foundation_08092022_SCAudit_Report (2).pdf | Lib_Buffer | unmatched — not counted | — | listed in scope | no |
| spaces/MkexAWdCekeDPPCMOdGs/uploads/9VWYLfEEmUHQSTuVyMnV/MetisDAO Foundation_08092022_SCAudit_Report (2).pdf | Lib_Uint | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 26 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 34 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1, low=1
- Match method counts: n/a

Zero-match audit list:

- [20836] drive.google.com/file/d/1AHDVzVUcRh8ghmfLR8qRfaHpgML7v9vW/view
- [20837] spaces/MkexAWdCekeDPPCMOdGs/uploads/9VWYLfEEmUHQSTuVyMnV/MetisDAO Foundation_08092022_SCAudit_Report (2).pdf

Fork inheritance lineage and inherited audits are included when available.
