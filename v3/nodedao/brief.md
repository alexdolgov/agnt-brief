# Agentic Audit Brief: NodeDAO

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 7 (0 matched; 7 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: NodeDAO (`nodedao`)
- Website: [https://www.nodedao.com](https://www.nodedao.com)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 11 unique implementations (11 raw deployments)
- Coverage basis: 0/2 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $22,322,204.64
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for NodeDAO. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 2 contract row(s) across ethereum. Structural roles: 1 core, 1 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 2
- Structural roles: core (1), supporting (1)
- Contract kinds: contract (2)
- Detected standards: ownable (2), erc20 (1)
- Frameworks: openzeppelin (2)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 11 contracts are derived from known codebases. 11 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x0d6f76...a725bc`, chain 1)
- UnnamedContract (`0x16f692...b5735b`, chain 1)
- UnnamedContract (`0x54f661...d1ea62`, chain 1)
- UnnamedContract (`0x9efdeb...a3b75c`, chain 1)
- UnnamedContract (`0xa9d213...dee8f3`, chain 1)
- UnnamedContract (`0xbdfe7f...def3d8`, chain 1)
- UnnamedContract (`0xc65720...c7789a`, chain 1)
- UnnamedContract (`0xd7c049...812121`, chain 1)
- UnnamedContract (`0xf3c794...c07c18`, chain 1)
- CumulativeMerkleDrop (`0x1349a8...7b6610`, chain 1)
- LsdETH (`0x9dc7e1...b97c5b`, chain 1)

## Contract Surface Quality

- Indexed contracts: 2; live-surface contracts included: 2 (2 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 11/11 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/2 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 11 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Deployed-live implementations: 11 of 11 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/2
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 9
- Unique implementations: 11
- Raw deployments: 11
- Audits discovered: 7 (7 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-08 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 6 stale, 0 unknown
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
| CumulativeMerkleDrop | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-389860 | `0x1349a8...7b6610` | ⚠️ Unaudited |
| LsdETH | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389863 | `0x9dc7e1...b97c5b` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (9)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389859 | `0x0d6f76...a725bc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389861 | `0x16f692...b5735b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389862 | `0x54f661...d1ea62` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389864 | `0x9efdeb...a3b75c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389865 | `0xa9d213...dee8f3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389866 | `0xbdfe7f...def3d8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389867 | `0xc65720...c7789a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389868 | `0xd7c049...812121` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389869 | `0xf3c794...c07c18` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [CertiK-Obelisk-final-20240805T174639Z.pdf](https://github.com/NodeDAO/audit/blob/main/CertiK-Obelisk-final-20240805T174639Z.pdf) | CertiK | Audit | 2024-08 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 17 | high |
| [Beosin_NodeDAO-Protocol_202302011759.pdf](https://github.com/NodeDAO/audits/blob/main/Beosin_NodeDAO-Protocol_202302011759.pdf) | Beosin | Audit | 2023-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [Beosin_NodeDAO-Protocol_202302161759.pdf](https://github.com/NodeDAO/audits/blob/main/Beosin_NodeDAO-Protocol_202302161759.pdf) | Beosin | Audit | 2023-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Beosin_Validator-NFT_202210251808.pdf](https://github.com/NodeDAO/audits/blob/main/Beosin_Validator-NFT_202210251808.pdf) | Beosin | Audit | 2022-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [MetaScan_Report_NodeDAO_20230301.pdf](https://github.com/NodeDAO/audits/blob/main/MetaScan_Report_NodeDAO_20230301.pdf) | MetaScan | Audit | 2023-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [MetaTrust.pdf](https://www.nodedao.com/paf/MetaTrust.pdf) | unknown | Audit | 2023-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [BEOSIN.pdf](https://www.nodedao.com/paf/BEOSIN.pdf) | unknown | Audit | 2023-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3976] CertiK-Obelisk-final-20240805T174639Z.pdf — no match: Extracted 17 contract names from the audit scope table and file paths. Audit date found on cover page and executive summary.
- [3977] Beosin_NodeDAO-Protocol_202302011759.pdf — no match: Audit scope includes Oracle module, Registry module, Rewards module, Timelock Controller module, and staking module. Contracts identified from findings and scope description.
- [3978] Beosin_NodeDAO-Protocol_202302161759.pdf — no match: Audit scope includes Oracle module, Registry module, Vault module, Timelock Controller module, and staking module. Specific contracts mentioned in findings: NodeOperatorRegistry and LiquidStaking.
- [3979] Beosin_Validator-NFT_202210251808.pdf — no match: Contracts explicitly mentioned in scope: Aggregator, NodeRewardVault, NodeCapitalVault, ValidatorNft. Audit date from cover page.
- [3980] MetaScan_Report_NodeDAO_20230301.pdf — no match: Contracts extracted from 'File(s) Affected' in findings and from the informational section listing centralized roles. No explicit scope section found, but these are the contracts mentioned as audited.
- [15360] MetaTrust.pdf — no match: Extracted contract names from 'File(s) Affected' in findings. No explicit scope section; audit date from cover page.
- [15361] BEOSIN.pdf — no match: Audit scope includes Oracle module, Registry module, Vault module, Timelock Controller module and staking module. Specific contracts mentioned in findings: NodeOperatorRegistry and LiquidStaking. Other modules (Oracle, Vault, TimelockController) are not explicitly named as contracts in the provided text.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| CertiK-Obelisk-final-20240805T174639Z.pdf | ObeliskNetwork | unmatched — not counted | — | listed in scope table | no |
| CertiK-Obelisk-final-20240805T174639Z.pdf | MintStrategy | unmatched — not counted | — | listed in scope table | no |
| CertiK-Obelisk-final-20240805T174639Z.pdf | StrategyManager | unmatched — not counted | — | listed in scope table | no |
| CertiK-Obelisk-final-20240805T174639Z.pdf | Strategy | unmatched — not counted | — | listed in scope table | no |
| CertiK-Obelisk-final-20240805T174639Z.pdf | Version | unmatched — not counted | — | listed in scope table | no |
| CertiK-Obelisk-final-20240805T174639Z.pdf | WithdrawalRequest | unmatched — not counted | — | listed in scope table | no |
| CertiK-Obelisk-final-20240805T174639Z.pdf | BaseStrategy | unmatched — not counted | — | listed in scope table | no |
| CertiK-Obelisk-final-20240805T174639Z.pdf | CefiStrategy | unmatched — not counted | — | listed in scope table | no |
| CertiK-Obelisk-final-20240805T174639Z.pdf | BaseToken | unmatched — not counted | — | listed in scope table | no |
| CertiK-Obelisk-final-20240805T174639Z.pdf | OBTC | unmatched — not counted | — | listed in scope table | no |
| CertiK-Obelisk-final-20240805T174639Z.pdf | OLTC | unmatched — not counted | — | listed in scope table | no |
| CertiK-Obelisk-final-20240805T174639Z.pdf | OYBTCB2 | unmatched — not counted | — | listed in scope table | no |
| CertiK-Obelisk-final-20240805T174639Z.pdf | OYBTCBBL | unmatched — not counted | — | listed in scope table | no |
| CertiK-Obelisk-final-20240805T174639Z.pdf | Assets | unmatched — not counted | — | listed in scope table | no |
| CertiK-Obelisk-final-20240805T174639Z.pdf | BlackList | unmatched — not counted | — | listed in scope table | no |
| CertiK-Obelisk-final-20240805T174639Z.pdf | Dao | unmatched — not counted | — | listed in scope table | no |
| CertiK-Obelisk-final-20240805T174639Z.pdf | DefiStrategy | unmatched — not counted | — | listed in scope table | no |
| Beosin_NodeDAO-Protocol_202302011759.pdf | BeaconOracle | unmatched — not counted | — | listed in scope and findings | no |
| Beosin_NodeDAO-Protocol_202302011759.pdf | ReportUtils | unmatched — not counted | — | listed in findings | no |
| Beosin_NodeDAO-Protocol_202302011759.pdf | NodeOperatorRegistry | unmatched — not counted | — | listed in findings | no |
| Beosin_NodeDAO-Protocol_202302011759.pdf | LiquidStaking | unmatched — not counted | — | listed in findings | no |
| Beosin_NodeDAO-Protocol_202302011759.pdf | ELVault | unmatched — not counted | — | listed in findings | no |
| Beosin_NodeDAO-Protocol_202302161759.pdf | NodeOperatorRegistry | unmatched — not counted | — | listed in findings and scope | no |
| Beosin_NodeDAO-Protocol_202302161759.pdf | LiquidStaking | unmatched — not counted | — | listed in findings and scope | no |
| Beosin_Validator-NFT_202210251808.pdf | Aggregator | unmatched — not counted | — | mentioned in project description and findings | no |
| Beosin_Validator-NFT_202210251808.pdf | NodeRewardVault | unmatched — not counted | — | mentioned in project description and findings | no |
| Beosin_Validator-NFT_202210251808.pdf | NodeCapitalVault | unmatched — not counted | — | mentioned in project description | no |
| Beosin_Validator-NFT_202210251808.pdf | ValidatorNft | unmatched — not counted | — | mentioned in project description and findings | no |
| MetaScan_Report_NodeDAO_20230301.pdf | BeaconOracle | unmatched — not counted | — | File(s) Affected in findings | no |
| MetaScan_Report_NodeDAO_20230301.pdf | LiquidStaking | unmatched — not counted | — | File(s) Affected in findings | no |
| MetaScan_Report_NodeDAO_20230301.pdf | NodeOperatorRegistry | unmatched — not counted | — | File(s) Affected in findings | no |
| MetaScan_Report_NodeDAO_20230301.pdf | ConsensusVault | unmatched — not counted | — | File(s) Affected in findings | no |
| MetaScan_Report_NodeDAO_20230301.pdf | ELVault | unmatched — not counted | — | File(s) Affected in findings | no |
| MetaScan_Report_NodeDAO_20230301.pdf | ELVaultFactory | unmatched — not counted | — | File(s) Affected in findings | no |
| MetaScan_Report_NodeDAO_20230301.pdf | VNFT | unmatched — not counted | — | File(s) Affected in findings | no |
| MetaTrust.pdf | OperatorSlash | unmatched — not counted | — | File(s) Affected in finding MSA-001 | no |
| MetaTrust.pdf | VNFT | unmatched — not counted | — | File(s) Affected in findings MSA-002 and MSA-004 | no |
| MetaTrust.pdf | NodeOperatorRegistry | unmatched — not counted | — | File(s) Affected in finding MSA-003 | no |
| MetaTrust.pdf | VaultManager | unmatched — not counted | — | File(s) Affected in finding MSA-005 | no |
| BEOSIN.pdf | NodeOperatorRegistry | unmatched — not counted | — | listed in findings and scope | no |
| BEOSIN.pdf | LiquidStaking | unmatched — not counted | — | listed in findings and scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x1349a8...7b6610` | CumulativeMerkleDrop | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x9dc7e1...b97c5b` | LsdETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 9 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 7
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 41 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=7
- Match method counts: n/a

Zero-match audit list:

- [3976] CertiK-Obelisk-final-20240805T174639Z.pdf
- [3977] Beosin_NodeDAO-Protocol_202302011759.pdf
- [3978] Beosin_NodeDAO-Protocol_202302161759.pdf
- [3979] Beosin_Validator-NFT_202210251808.pdf
- [3980] MetaScan_Report_NodeDAO_20230301.pdf
- [15360] MetaTrust.pdf
- [15361] BEOSIN.pdf

Fork inheritance lineage and inherited audits are included when available.
