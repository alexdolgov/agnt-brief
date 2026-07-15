# Agentic Audit Brief: Multipli.fi

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 9 (0 matched; 9 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Multipli.fi (`multipli.fi`)
- Website: [https://app.multipli.fi](https://app.multipli.fi)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, avalanche, base, bsc, ethereum
- Contract surface: 25 unique implementations (25 raw deployments)
- Coverage basis: 0/18 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $55,122,019.27
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Multipli.fi. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 18 contract row(s) across arbitrum, ethereum. Structural roles: 14 core, 4 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 18
- Structural roles: core (14), supporting (4)
- Contract kinds: contract (18)
- Detected standards: erc165 (1), ownable (1)
- Frameworks: openzeppelin (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

1 of 18 contracts are derived from known codebases. 17 contracts have no detected origin.

### Forked Contracts

**DssProxyActions** (`0x92a4bb...0ce7c8`, chain 1)
Origin: usdd (`0x777684...6bcb25`)
Containment: 73.7% - 28 functions inherited
Centroid audit status: pending_validation

Additions (unaudited):
- makeGemBag(address)
- rwaUSDJoin_join(address,address,uint256)

Removals (removed from original):
- ethJoin_join(address,address)
- exitETH(address,address,uint256,uint256)
- freeETH(address,address,uint256,uint256)
- lockETH(address,address,uint256)
- lockETHAndDraw(address,address,address,address,uint256,uint256)
- openLockETHAndDraw(address,address,address,address,bytes32,uint256)
- safeLockETH(address,address,uint256,address)
- usddJoin_join(address,address,uint256)
- wipeAllAndFreeETH(address,address,address,uint256,uint256)
- wipeAndFreeETH(address,address,address,uint256,uint256,uint256)

### Original Contracts (no fork detected - full audit scope)

- BurnMintTokenPool (`0x7f49a3...00aa63`, chain 1)
- Clipper (`0x62b7a3...7378f4`, chain 1)
- Cure (`0x9ea54e...b2c914`, chain 1)
- Dog (`0x15a36d...711ddd`, chain 1)
- DSProxyFactory (`0xe23c0d...cbe312`, chain 1)
- DssCdpManager (`0x97a762...572e47`, chain 1)
- DssProxyActionsEnd (`0x41c09d...c36969`, chain 1)
- End (`0x026782...834bf5`, chain 1)
- GemJoin5 (`0x3c9567...8011fd`, chain 1)
- GetCdps (`0x2fcc0d...c9b412`, chain 1)
- Jug (`0x66654c...0d886e`, chain 1)
- OSM (`0x89fbae...65993a`, chain 1)
- PriceFeedAdapter (`0x82f579...f8b1cd`, chain 1)
- ProxyRegistry (`0xafd44c...1f30d3`, chain 1)
- Safe (`0x194ebc...f53b99`, chain 1)
- Spotter (`0xf3aee7...34e2a2`, chain 1)
- StairstepExponentialDecrease (`0xfeb42f...260de5`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 18; live-surface rows included: 18 (18 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 18/18 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/18 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 18 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 7 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 2
- Confirmed-live implementations: 18 of 25 unique; 7 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/25
- Verified + Unaudited implementations: 25
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 25
- Raw deployments: 25
- Audits discovered: 9 (9 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-07 (aging)
- Audit staleness (calendar age): 0 fresh, 2 aging, 6 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (25)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BurnMintTokenPool | unknown | project_anchor | own_supporting | 0 | ethereum | unit-248418 | `0x7f49a3...00aa63` | ⚠️ Unaudited |
| Clipper | unknown | project_anchor | own_supporting | 0 | ethereum | unit-248416 | `0x62b7a3...7378f4` | ⚠️ Unaudited |
| Cure | unknown | project_anchor | own_supporting | 0 | ethereum | unit-248423 | `0x9ea54e...b2c914` | ⚠️ Unaudited |
| Dog | unknown | project_anchor | own_supporting | 0 | ethereum | unit-248412 | `0x15a36d...711ddd` | ⚠️ Unaudited |
| DSProxyFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-248425 | `0xe23c0d...cbe312` | ⚠️ Unaudited |
| DssCdpManager | unknown | project_anchor | own_supporting | 0 | ethereum | unit-248422 | `0x97a762...572e47` | ⚠️ Unaudited |
| DssProxyActions | unknown | project_anchor | own_supporting | 0 | ethereum | unit-248421 | `0x92a4bb...0ce7c8` | ⚠️ Unaudited |
| DssProxyActionsEnd | unknown | project_anchor | own_supporting | 0 | ethereum | unit-248415 | `0x41c09d...c36969` | ⚠️ Unaudited |
| End | unknown | project_anchor | own_supporting | 0 | ethereum | unit-248411 | `0x026782...834bf5` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | arbitrum | n/a | `0xa39986...3fd0f4` | ⚠️ Unaudited |
| GemJoin5 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-248414 | `0x3c9567...8011fd` | ⚠️ Unaudited |
| GetCdps | unknown | project_anchor | own_supporting | 0 | ethereum | unit-248413 | `0x2fcc0d...c9b412` | ⚠️ Unaudited |
| HelperConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7dfaf9...0815d7` | ⚠️ Unaudited |
| Jug | unknown | project_anchor | own_supporting | 0 | ethereum | unit-248417 | `0x66654c...0d886e` | ⚠️ Unaudited |
| MULT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x468bba...54cd5c` | ⚠️ Unaudited |
| OSM | unknown | project_anchor | own_supporting | 0 | ethereum | unit-248420 | `0x89fbae...65993a` | ⚠️ Unaudited |
| PriceFeedAdapter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-248419 | `0x82f579...f8b1cd` | ⚠️ Unaudited |
| ProxyRegistry | unknown | project_anchor | own_supporting | 0 | ethereum | unit-248424 | `0xafd44c...1f30d3` | ⚠️ Unaudited |
| rwaUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x362135...3d3e13` | ⚠️ Unaudited |
| rwaUSDJoin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2e7b4...5d2f5e` | ⚠️ Unaudited |
| Safe | unknown | project_anchor | own_supporting | 1 | ethereum | unit-248428 | `0x194ebc...f53b99` | ⚠️ Unaudited |
| Spotter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-248426 | `0xf3aee7...34e2a2` | ⚠️ Unaudited |
| StairstepExponentialDecrease | unknown | project_anchor | own_supporting | 0 | ethereum | unit-248427 | `0xfeb42f...260de5` | ⚠️ Unaudited |
| Vat | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xab79bf...50d2be` | ⚠️ Unaudited |
| Vow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x524e24...38916d` | ⚠️ Unaudited |

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
| [spaces/DerYSYw6qtxjqddgIxz0/uploads/1BrXG10bf8TBCiUh6RHv/Multipli_Risk_Framework by ChainRisk.pdf](https://251914897-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FDerYSYw6qtxjqddgIxz0%2Fuploads%2F1BrXG10bf8TBCiUh6RHv%2FMultipli_Risk_Framework%20by%20ChainRisk.pdf) | ChainRisk | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [spaces/DerYSYw6qtxjqddgIxz0/uploads/vhcNGf3NdIfJ6NKHhdMz/Multipli-Security-Review.pdf](https://251914897-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FDerYSYw6qtxjqddgIxz0%2Fuploads%2FvhcNGf3NdIfJ6NKHhdMz%2FMultipli-Security-Review.pdf) | unknown | Audit | 2025-05 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [spaces/DerYSYw6qtxjqddgIxz0/uploads/k5sBBBvEEKT9idMH9Gho/Multipli-Vault-Security-Review.pdf](https://251914897-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FDerYSYw6qtxjqddgIxz0%2Fuploads%2Fk5sBBBvEEKT9idMH9Gho%2FMultipli-Vault-Security-Review.pdf) | unknown | Audit | 2025-07 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [spaces/DerYSYw6qtxjqddgIxz0/uploads/AjULj8T0DDZPMXmmj4Ih/Cairo_and_SHARP_Verifiers_v3.0_Audit_Report.pdf](https://251914897-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FDerYSYw6qtxjqddgIxz0%2Fuploads%2FAjULj8T0DDZPMXmmj4Ih%2FCairo_and_SHARP_Verifiers_v3.0_Audit_Report.pdf) | unknown | Audit | 2022-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 19 | high |
| [spaces/DerYSYw6qtxjqddgIxz0/uploads/Ymc9maEaiskTxaun90hQ/EVM_STARK_Verifier_v4.0_Audit_Report.pdf](https://251914897-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FDerYSYw6qtxjqddgIxz0%2Fuploads%2FYmc9maEaiskTxaun90hQ%2FEVM_STARK_Verifier_v4.0_Audit_Report.pdf) | unknown | Audit | 2021-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 14 | high |
| [spaces/DerYSYw6qtxjqddgIxz0/uploads/NrgekxMDLn6mVCHlibAF/StarkEx_v2.0_Audit_Report.pdf](https://251914897-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FDerYSYw6qtxjqddgIxz0%2Fuploads%2FNrgekxMDLn6mVCHlibAF%2FStarkEx_v2.0_Audit_Report.pdf) | unknown | Audit | 2020-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 14 | high |
| [spaces/DerYSYw6qtxjqddgIxz0/uploads/coRl7lJZFVMVCenAj3Gn/StarkEx_v3.0_Audit_Report.pdf](https://251914897-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FDerYSYw6qtxjqddgIxz0%2Fuploads%2FcoRl7lJZFVMVCenAj3Gn%2FStarkEx_v3.0_Audit_Report.pdf) | unknown | Audit | 2021-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | medium |
| [spaces/DerYSYw6qtxjqddgIxz0/uploads/jDx27BGojPIdHcRNNUzA/StarkEx_v4.0_Audit_Report.pdf](https://251914897-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FDerYSYw6qtxjqddgIxz0%2Fuploads%2FjDx27BGojPIdHcRNNUzA%2FStarkEx_v4.0_Audit_Report.pdf) | StarkEx | Audit | 2021-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | medium |
| [spaces/DerYSYw6qtxjqddgIxz0/uploads/6i8JUxxWG0RaRUpHrhTF/StarkEx_v4.5_Audit_Report .pdf](https://251914897-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FDerYSYw6qtxjqddgIxz0%2Fuploads%2F6i8JUxxWG0RaRUpHrhTF%2FStarkEx_v4.5_Audit_Report%20.pdf) | StarkEx | Audit | 2022-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [20847] spaces/DerYSYw6qtxjqddgIxz0/uploads/1BrXG10bf8TBCiUh6RHv/Multipli_Risk_Framework by ChainRisk.pdf — no match: The document is a risk framework paper about Multipli Fi, not a smart contract audit report. No contracts, source files, or audit date are mentioned.
- [20848] spaces/DerYSYw6qtxjqddgIxz0/uploads/vhcNGf3NdIfJ6NKHhdMz/Multipli-Security-Review.pdf — no match: Scope table explicitly lists four files with SLOC counts. Audit date is '30 May 2025' on cover page.
- [20849] spaces/DerYSYw6qtxjqddgIxz0/uploads/k5sBBBvEEKT9idMH9Gho/Multipli-Vault-Security-Review.pdf — no match: Scope section explicitly lists 8 smart contract files with SLOC counts. Audit date is '8 July 2025' on cover page.
- [20850] spaces/DerYSYw6qtxjqddgIxz0/uploads/AjULj8T0DDZPMXmmj4Ih/Cairo_and_SHARP_Verifiers_v3.0_Audit_Report.pdf — no match: Audit conducted March-April 2022 with follow-up in July 2022. Report date is end of July 2022 (last day of month).
- [20851] spaces/DerYSYw6qtxjqddgIxz0/uploads/Ymc9maEaiskTxaun90hQ/EVM_STARK_Verifier_v4.0_Audit_Report.pdf — no match: The report explicitly lists 14 source files from the repository and reviews each contract in separate subsections. The audit date is inferred from 'November and December 2021' in the introduction, using the end of the period.
- [20852] spaces/DerYSYw6qtxjqddgIxz0/uploads/NrgekxMDLn6mVCHlibAF/StarkEx_v2.0_Audit_Report.pdf — no match: Extracted contract names from findings and code snippets. Audit date from cover page and document properties.
- [20853] spaces/DerYSYw6qtxjqddgIxz0/uploads/coRl7lJZFVMVCenAj3Gn/StarkEx_v3.0_Audit_Report.pdf — no match: No explicit scope section; contracts extracted from findings targets. Audit date from cover page and table.
- [20854] spaces/DerYSYw6qtxjqddgIxz0/uploads/jDx27BGojPIdHcRNNUzA/StarkEx_v4.0_Audit_Report.pdf — no match: The report does not have a dedicated scope section listing all contracts. Only KeyGetters is explicitly mentioned as a target in the findings. The audit covers StarkEx v4.0 contracts, but no other contract names are provided.
- [20855] spaces/DerYSYw6qtxjqddgIxz0/uploads/6i8JUxxWG0RaRUpHrhTF/StarkEx_v4.5_Audit_Report .pdf — no match: Audit report for StarkEx v4.5.0 contracts. Scope includes the entire protocol with specific contracts mentioned in findings. Date from cover page and version info.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| spaces/DerYSYw6qtxjqddgIxz0/uploads/vhcNGf3NdIfJ6NKHhdMz/Multipli-Security-Review.pdf | Initializable | unmatched — not counted | — | listed in scope table | no |
| spaces/DerYSYw6qtxjqddgIxz0/uploads/vhcNGf3NdIfJ6NKHhdMz/Multipli-Security-Review.pdf | MultipliBridger | unmatched — not counted | — | listed in scope table | no |
| spaces/DerYSYw6qtxjqddgIxz0/uploads/vhcNGf3NdIfJ6NKHhdMz/Multipli-Security-Review.pdf | TransferHelper | unmatched — not counted | — | listed in scope table | no |
| spaces/DerYSYw6qtxjqddgIxz0/uploads/vhcNGf3NdIfJ6NKHhdMz/Multipli-Security-Review.pdf | DeployMultipliBridger | unmatched — not counted | — | listed in scope table | no |
| spaces/DerYSYw6qtxjqddgIxz0/uploads/k5sBBBvEEKT9idMH9Gho/Multipli-Vault-Security-Review.pdf | AuthUpgradeable | unmatched — not counted | — | listed in scope table | no |
| spaces/DerYSYw6qtxjqddgIxz0/uploads/k5sBBBvEEKT9idMH9Gho/Multipli-Vault-Security-Review.pdf | FundMovementHelperUpgradeable | unmatched — not counted | — | listed in scope table | no |
| spaces/DerYSYw6qtxjqddgIxz0/uploads/k5sBBBvEEKT9idMH9Gho/Multipli-Vault-Security-Review.pdf | VaultFeeUpgradeable | unmatched — not counted | — | listed in scope table | no |
| spaces/DerYSYw6qtxjqddgIxz0/uploads/k5sBBBvEEKT9idMH9Gho/Multipli-Vault-Security-Review.pdf | Role | unmatched — not counted | — | listed in scope table | no |
| spaces/DerYSYw6qtxjqddgIxz0/uploads/k5sBBBvEEKT9idMH9Gho/Multipli-Vault-Security-Review.pdf | VariableVaultFee | unmatched — not counted | — | listed in scope table | no |
| spaces/DerYSYw6qtxjqddgIxz0/uploads/k5sBBBvEEKT9idMH9Gho/Multipli-Vault-Security-Review.pdf | Errors | unmatched — not counted | — | listed in scope table | no |
| spaces/DerYSYw6qtxjqddgIxz0/uploads/k5sBBBvEEKT9idMH9Gho/Multipli-Vault-Security-Review.pdf | VaultFundManager | unmatched — not counted | — | listed in scope table | no |
| spaces/DerYSYw6qtxjqddgIxz0/uploads/k5sBBBvEEKT9idMH9Gho/Multipli-Vault-Security-Review.pdf | MultipliVault | unmatched — not counted | — | listed in scope table | no |
| spaces/DerYSYw6qtxjqddgIxz0/uploads/AjULj8T0DDZPMXmmj4Ih/Cairo_and_SHARP_Verifiers_v3.0_Audit_Report.pdf | PageInfo | unmatched — not counted | — | Section 3.1.1: ContractPageInfo | no |
| spaces/DerYSYw6qtxjqddgIxz0/uploads/AjULj8T0DDZPMXmmj4Ih/Cairo_and_SHARP_Verifiers_v3.0_Audit_Report.pdf | CpuPublicInputOffsetsBase | unmatched — not counted | — | Section 3.1.2: ContractCpuPublicInputOffsetsBase | no |
| spaces/DerYSYw6qtxjqddgIxz0/uploads/AjULj8T0DDZPMXmmj4Ih/Cairo_and_SHARP_Verifiers_v3.0_Audit_Report.pdf | CpuPublicInputOffsets | unmatched — not counted | — | Section 3.1.3: ContractCpuPublicInputOffsets | no |
| spaces/DerYSYw6qtxjqddgIxz0/uploads/AjULj8T0DDZPMXmmj4Ih/Cairo_and_SHARP_Verifiers_v3.0_Audit_Report.pdf | MemoryPageFactRegistry | unmatched — not counted | — | Section 3.2.1: ContractMemoryPageFactRegistry | no |
| spaces/DerYSYw6qtxjqddgIxz0/uploads/AjULj8T0DDZPMXmmj4Ih/Cairo_and_SHARP_Verifiers_v3.0_Audit_Report.pdf | MemoryPageFactRegistryConstants | unmatched — not counted | — | Section 3.2.1: parent virtual contract | no |
| spaces/DerYSYw6qtxjqddgIxz0/uploads/AjULj8T0DDZPMXmmj4Ih/Cairo_and_SHARP_Verifiers_v3.0_Audit_Report.pdf | CairoVerifierContract | unmatched — not counted | — | Section 3.3.1: ContractCairoVerifierContract | no |
| spaces/DerYSYw6qtxjqddgIxz0/uploads/AjULj8T0DDZPMXmmj4Ih/Cairo_and_SHARP_Verifiers_v3.0_Audit_Report.pdf | LayoutSpecific | unmatched — not counted | — | Section 3.3.2: ContractLayoutSpecific | no |
| spaces/DerYSYw6qtxjqddgIxz0/uploads/AjULj8T0DDZPMXmmj4Ih/Cairo_and_SHARP_Verifiers_v3.0_Audit_Report.pdf | StarkParameters | unmatched — not counted | — | Section 2.7.1: ContractStarkParameters | no |
| spaces/DerYSYw6qtxjqddgIxz0/uploads/AjULj8T0DDZPMXmmj4Ih/Cairo_and_SHARP_Verifiers_v3.0_Audit_Report.pdf | CpuVerifier | unmatched — not counted | — | Section 3.4.1: ContractCpuVerifier | no |
| spaces/DerYSYw6qtxjqddgIxz0/uploads/AjULj8T0DDZPMXmmj4Ih/Cairo_and_SHARP_Verifiers_v3.0_Audit_Report.pdf | CpuFriLessVerifier | unmatched — not counted | — | Section 3.4.2: ContractCpuFriLessVerifier | no |
| spaces/DerYSYw6qtxjqddgIxz0/uploads/AjULj8T0DDZPMXmmj4Ih/Cairo_and_SHARP_Verifiers_v3.0_Audit_Report.pdf | CpuConstraintPoly | unmatched — not counted | — | Section 2.7.3: ContractCpuConstraintPoly | no |
| spaces/DerYSYw6qtxjqddgIxz0/uploads/AjULj8T0DDZPMXmmj4Ih/Cairo_and_SHARP_Verifiers_v3.0_Audit_Report.pdf | CpuOODS | unmatched — not counted | — | Section 2.7.4: ContractCpuOODS | no |
| spaces/DerYSYw6qtxjqddgIxz0/uploads/AjULj8T0DDZPMXmmj4Ih/Cairo_and_SHARP_Verifiers_v3.0_Audit_Report.pdf | GpsOutputParser | unmatched — not counted | — | Section 5.1.1: ContractGpsOutputParser | no |
| spaces/DerYSYw6qtxjqddgIxz0/uploads/AjULj8T0DDZPMXmmj4Ih/Cairo_and_SHARP_Verifiers_v3.0_Audit_Report.pdf | GpsStatementVerifier | unmatched — not counted | — | Section 5.1.2: ContractGpsStatementVerifier | no |
| spaces/DerYSYw6qtxjqddgIxz0/uploads/AjULj8T0DDZPMXmmj4Ih/Cairo_and_SHARP_Verifiers_v3.0_Audit_Report.pdf | CairoBootloaderProgram | unmatched — not counted | — | Section 1.1: CairoBootloaderProgram.sol | no |
| spaces/DerYSYw6qtxjqddgIxz0/uploads/AjULj8T0DDZPMXmmj4Ih/Cairo_and_SHARP_Verifiers_v3.0_Audit_Report.pdf | simple_bootloader | unmatched — not counted | — | Section 5.2.1: File simple_bootloader.cairo | no |
| spaces/DerYSYw6qtxjqddgIxz0/uploads/AjULj8T0DDZPMXmmj4Ih/Cairo_and_SHARP_Verifiers_v3.0_Audit_Report.pdf | bootloader | unmatched — not counted | — | Section 5.2.2: File bootloader.cairo | no |
| spaces/DerYSYw6qtxjqddgIxz0/uploads/AjULj8T0DDZPMXmmj4Ih/Cairo_and_SHARP_Verifiers_v3.0_Audit_Report.pdf | run_simple_bootloader | unmatched — not counted | — | Section 5.2.3: File run_simple_bootloader.cairo | no |
| spaces/DerYSYw6qtxjqddgIxz0/uploads/AjULj8T0DDZPMXmmj4Ih/Cairo_and_SHARP_Verifiers_v3.0_Audit_Report.pdf | execute_task | unmatched — not counted | — | Section 5.2.4: File execute_task.cairo | no |
| spaces/DerYSYw6qtxjqddgIxz0/uploads/Ymc9maEaiskTxaun90hQ/EVM_STARK_Verifier_v4.0_Audit_Report.pdf | PrimeFieldElement0 | unmatched — not counted | — | Section 3.1.1: 'ContractPrimeFieldElement0' is reviewed. | no |
| spaces/DerYSYw6qtxjqddgIxz0/uploads/Ymc9maEaiskTxaun90hQ/EVM_STARK_Verifier_v4.0_Audit_Report.pdf | HornerEvaluator | unmatched — not counted | — | Section 3.1.2: 'ContractHornerEvaluator' is reviewed. | no |
| spaces/DerYSYw6qtxjqddgIxz0/uploads/Ymc9maEaiskTxaun90hQ/EVM_STARK_Verifier_v4.0_Audit_Report.pdf | Prng | unmatched — not counted | — | Section 3.2.1: 'ContractPrng' is reviewed. | no |
| spaces/DerYSYw6qtxjqddgIxz0/uploads/Ymc9maEaiskTxaun90hQ/EVM_STARK_Verifier_v4.0_Audit_Report.pdf | VerifierChannel | unmatched — not counted | — | Section 3.2.2: 'ContractVerifierChannel' is reviewed. | no |
| spaces/DerYSYw6qtxjqddgIxz0/uploads/Ymc9maEaiskTxaun90hQ/EVM_STARK_Verifier_v4.0_Audit_Report.pdf | IMerkleVerifier | unmatched — not counted | — | Section 3.3.1: 'ContractIMerkleVerifier' is reviewed. | no |
| spaces/DerYSYw6qtxjqddgIxz0/uploads/Ymc9maEaiskTxaun90hQ/EVM_STARK_Verifier_v4.0_Audit_Report.pdf | MerkleVerifier | unmatched — not counted | — | Section 3.3.2: 'ContractMerkleVerifier' is reviewed. | no |
| spaces/DerYSYw6qtxjqddgIxz0/uploads/Ymc9maEaiskTxaun90hQ/EVM_STARK_Verifier_v4.0_Audit_Report.pdf | MerkleStatementContract | unmatched — not counted | — | Section 3.3.3: 'ContractMerkleStatementContract' is reviewed. | no |
| spaces/DerYSYw6qtxjqddgIxz0/uploads/Ymc9maEaiskTxaun90hQ/EVM_STARK_Verifier_v4.0_Audit_Report.pdf | MerkleStatementVerifier | unmatched — not counted | — | Section 3.3.4: 'ContractMerkleStatementVerifier' is reviewed. | no |
| spaces/DerYSYw6qtxjqddgIxz0/uploads/Ymc9maEaiskTxaun90hQ/EVM_STARK_Verifier_v4.0_Audit_Report.pdf | FriLayer | unmatched — not counted | — | Section 3.4.1: 'ContractFriLayer' is reviewed. | no |
| spaces/DerYSYw6qtxjqddgIxz0/uploads/Ymc9maEaiskTxaun90hQ/EVM_STARK_Verifier_v4.0_Audit_Report.pdf | Fri | unmatched — not counted | — | Section 3.4.2: 'ContractFri' is reviewed. | no |
| spaces/DerYSYw6qtxjqddgIxz0/uploads/Ymc9maEaiskTxaun90hQ/EVM_STARK_Verifier_v4.0_Audit_Report.pdf | FriStatementContract | unmatched — not counted | — | Section 3.4.3: 'ContractFriStatementContract' is reviewed. | no |
| spaces/DerYSYw6qtxjqddgIxz0/uploads/Ymc9maEaiskTxaun90hQ/EVM_STARK_Verifier_v4.0_Audit_Report.pdf | FriStatementVerifier | unmatched — not counted | — | Section 3.4.4: 'ContractFriStatementVerifier' is reviewed. | no |
| spaces/DerYSYw6qtxjqddgIxz0/uploads/Ymc9maEaiskTxaun90hQ/EVM_STARK_Verifier_v4.0_Audit_Report.pdf | StarkVerifier | unmatched — not counted | — | Section 3.5.1: 'ContractStarkVerifier' is reviewed. | no |
| spaces/DerYSYw6qtxjqddgIxz0/uploads/Ymc9maEaiskTxaun90hQ/EVM_STARK_Verifier_v4.0_Audit_Report.pdf | MemoryMap | unmatched — not counted | — | Section 2.5.1: 'Memory mapping contract' is described as an external dependency. | no |
| spaces/DerYSYw6qtxjqddgIxz0/uploads/NrgekxMDLn6mVCHlibAF/StarkEx_v2.0_Audit_Report.pdf | Deposits | unmatched — not counted | — | Listed in findings (PVE-001, PVE-004, PVE-009) and code snippets | no |
| spaces/DerYSYw6qtxjqddgIxz0/uploads/NrgekxMDLn6mVCHlibAF/StarkEx_v2.0_Audit_Report.pdf | Withdrawals | unmatched — not counted | — | Listed in findings (PVE-002) and code snippets | no |
| spaces/DerYSYw6qtxjqddgIxz0/uploads/NrgekxMDLn6mVCHlibAF/StarkEx_v2.0_Audit_Report.pdf | Tokens | unmatched — not counted | — | Listed in findings (PVE-006, PVE-008) and code snippets | no |
| spaces/DerYSYw6qtxjqddgIxz0/uploads/NrgekxMDLn6mVCHlibAF/StarkEx_v2.0_Audit_Report.pdf | ApprovalChain | unmatched — not counted | — | Listed in findings (PVE-003) and code snippets | no |
| spaces/DerYSYw6qtxjqddgIxz0/uploads/NrgekxMDLn6mVCHlibAF/StarkEx_v2.0_Audit_Report.pdf | AcceptModifications | unmatched — not counted | — | Mentioned in findings (PVE-004, PVE-005) as implementing acceptDeposit and allowWithdrawal | no |
| spaces/DerYSYw6qtxjqddgIxz0/uploads/NrgekxMDLn6mVCHlibAF/StarkEx_v2.0_Audit_Report.pdf | UpdateState | unmatched — not counted | — | Mentioned in findings (PVE-004, PVE-005) as invoking acceptDeposit and acceptWithdrawal | no |
| spaces/DerYSYw6qtxjqddgIxz0/uploads/NrgekxMDLn6mVCHlibAF/StarkEx_v2.0_Audit_Report.pdf | MWithdrawal | unmatched — not counted | — | Listed in findings (PVE-005) and code snippet | no |
| spaces/DerYSYw6qtxjqddgIxz0/uploads/NrgekxMDLn6mVCHlibAF/StarkEx_v2.0_Audit_Report.pdf | GpsStatementVerifier | unmatched — not counted | — | Listed in findings (PVE-007) and code snippet | no |
| spaces/DerYSYw6qtxjqddgIxz0/uploads/NrgekxMDLn6mVCHlibAF/StarkEx_v2.0_Audit_Report.pdf | TransferRegistry | unmatched — not counted | — | Listed in findings (PVE-008) as target | no |
| spaces/DerYSYw6qtxjqddgIxz0/uploads/NrgekxMDLn6mVCHlibAF/StarkEx_v2.0_Audit_Report.pdf | FactRegistry | unmatched — not counted | — | Listed in findings (PVE-010) and code snippet | no |
| spaces/DerYSYw6qtxjqddgIxz0/uploads/NrgekxMDLn6mVCHlibAF/StarkEx_v2.0_Audit_Report.pdf | GpsFactRegistryAdapter | unmatched — not counted | — | Listed in findings (PVE-010) and code snippet | no |
| spaces/DerYSYw6qtxjqddgIxz0/uploads/NrgekxMDLn6mVCHlibAF/StarkEx_v2.0_Audit_Report.pdf | Identity | unmatched — not counted | — | Mentioned in code snippets (ApprovalChain, GpsFactRegistryAdapter) | no |
| spaces/DerYSYw6qtxjqddgIxz0/uploads/NrgekxMDLn6mVCHlibAF/StarkEx_v2.0_Audit_Report.pdf | IQueryableFactRegistry | unmatched — not counted | — | Mentioned in code snippet (GpsFactRegistryAdapter) | no |
| spaces/DerYSYw6qtxjqddgIxz0/uploads/NrgekxMDLn6mVCHlibAF/StarkEx_v2.0_Audit_Report.pdf | StarkExTypes | unmatched — not counted | — | Mentioned in code snippets (ApprovalChain) | no |
| spaces/DerYSYw6qtxjqddgIxz0/uploads/coRl7lJZFVMVCenAj3Gn/StarkEx_v3.0_Audit_Report.pdf | FactRegistry | unmatched — not counted | — | Target in finding PVE-001 | no |
| spaces/DerYSYw6qtxjqddgIxz0/uploads/coRl7lJZFVMVCenAj3Gn/StarkEx_v3.0_Audit_Report.pdf | Committee | unmatched — not counted | — | Target in finding PVE-002 | no |
| spaces/DerYSYw6qtxjqddgIxz0/uploads/jDx27BGojPIdHcRNNUzA/StarkEx_v4.0_Audit_Report.pdf | KeyGetters | unmatched — not counted | — | Listed as target in finding PVE-001 and described in Section 3.1 | no |
| spaces/DerYSYw6qtxjqddgIxz0/uploads/6i8JUxxWG0RaRUpHrhTF/StarkEx_v4.5_Audit_Report .pdf | StarkEx v4.5.0 | unmatched — not counted | — | Target of the audit, mentioned throughout | no |
| spaces/DerYSYw6qtxjqddgIxz0/uploads/6i8JUxxWG0RaRUpHrhTF/StarkEx_v4.5_Audit_Report .pdf | StarkExchange | unmatched — not counted | — | Mentioned as version for spot trading, uses globalConfigCode | no |
| spaces/DerYSYw6qtxjqddgIxz0/uploads/6i8JUxxWG0RaRUpHrhTF/StarkEx_v4.5_Audit_Report .pdf | StarkPerpetual | unmatched — not counted | — | Mentioned as version for derivative trading | no |
| spaces/DerYSYw6qtxjqddgIxz0/uploads/6i8JUxxWG0RaRUpHrhTF/StarkEx_v4.5_Audit_Report .pdf | Deposits | unmatched — not counted | — | Mentioned in PVE-002 as importing reference contracts | no |
| spaces/DerYSYw6qtxjqddgIxz0/uploads/6i8JUxxWG0RaRUpHrhTF/StarkEx_v4.5_Audit_Report .pdf | NamedStorage | unmatched — not counted | — | Target in PVE-002, library contract | no |
| spaces/DerYSYw6qtxjqddgIxz0/uploads/6i8JUxxWG0RaRUpHrhTF/StarkEx_v4.5_Audit_Report .pdf | GenericGovernance | unmatched — not counted | — | Target in PVE-002, contract not used | no |
| spaces/DerYSYw6qtxjqddgIxz0/uploads/6i8JUxxWG0RaRUpHrhTF/StarkEx_v4.5_Audit_Report .pdf | MainStorage | unmatched — not counted | — | Target in PVE-003, contains globalConfigCode | no |
| spaces/DerYSYw6qtxjqddgIxz0/uploads/6i8JUxxWG0RaRUpHrhTF/StarkEx_v4.5_Audit_Report .pdf | TokenTransfers | unmatched — not counted | — | Target in PVE-001, functions transferInWithTokenId and transferOutWithTokenId | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x7f49a3...00aa63` | BurnMintTokenPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x62b7a3...7378f4` | Clipper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x9ea54e...b2c914` | Cure | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x15a36d...711ddd` | Dog | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xe23c0d...cbe312` | DSProxyFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x97a762...572e47` | DssCdpManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x92a4bb...0ce7c8` | DssProxyActions | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x41c09d...c36969` | DssProxyActionsEnd | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x026782...834bf5` | End | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3c9567...8011fd` | GemJoin5 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2fcc0d...c9b412` | GetCdps | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x66654c...0d886e` | Jug | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x89fbae...65993a` | OSM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x82f579...f8b1cd` | PriceFeedAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xafd44c...1f30d3` | ProxyRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf3aee7...34e2a2` | Spotter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xfeb42f...260de5` | StairstepExponentialDecrease | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 23 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 9
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 70 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=6, low=1, medium=2
- Match method counts: n/a

Zero-match audit list:

- [20847] spaces/DerYSYw6qtxjqddgIxz0/uploads/1BrXG10bf8TBCiUh6RHv/Multipli_Risk_Framework by ChainRisk.pdf
- [20848] spaces/DerYSYw6qtxjqddgIxz0/uploads/vhcNGf3NdIfJ6NKHhdMz/Multipli-Security-Review.pdf
- [20849] spaces/DerYSYw6qtxjqddgIxz0/uploads/k5sBBBvEEKT9idMH9Gho/Multipli-Vault-Security-Review.pdf
- [20850] spaces/DerYSYw6qtxjqddgIxz0/uploads/AjULj8T0DDZPMXmmj4Ih/Cairo_and_SHARP_Verifiers_v3.0_Audit_Report.pdf
- [20851] spaces/DerYSYw6qtxjqddgIxz0/uploads/Ymc9maEaiskTxaun90hQ/EVM_STARK_Verifier_v4.0_Audit_Report.pdf
- [20852] spaces/DerYSYw6qtxjqddgIxz0/uploads/NrgekxMDLn6mVCHlibAF/StarkEx_v2.0_Audit_Report.pdf
- [20853] spaces/DerYSYw6qtxjqddgIxz0/uploads/coRl7lJZFVMVCenAj3Gn/StarkEx_v3.0_Audit_Report.pdf
- [20854] spaces/DerYSYw6qtxjqddgIxz0/uploads/jDx27BGojPIdHcRNNUzA/StarkEx_v4.0_Audit_Report.pdf
- [20855] spaces/DerYSYw6qtxjqddgIxz0/uploads/6i8JUxxWG0RaRUpHrhTF/StarkEx_v4.5_Audit_Report .pdf

Fork inheritance lineage and inherited audits are included when available.
