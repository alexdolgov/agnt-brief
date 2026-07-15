# Agentic Audit Brief: Zircuit Staking

## Export Authority

- Production state: **published scope**
- Raw selected rows: 3 across 1 audit(s)
- Eligible audit results: 11 (1 matched; 10 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Zircuit Staking (`zircuit-staking`)
- Website: [https://app.zircuit.com/liquidity-hub](https://app.zircuit.com/liquidity-hub)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base, ethereum, sepolia
- Contract surface: 38 unique implementations (39 raw deployments)
- Coverage basis: 3/14 confirmed own live verified implementations (21.4%); conservative 21.4% with 0 needs-review implementation(s)
- DeFi Llama TVL: $38,414,098.77
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Zircuit Staking. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 15 contract row(s) across base, ethereum, sepolia. Structural roles: 5 core, 5 supporting, 5 unclassified. 6 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 15
- Structural roles: core (5), supporting (5), unclassified (5)
- Contract kinds: contract (15)
- Detected standards: erc1967proxy (6), ownable (1), ownable2step (1)
- Frameworks: openzeppelin-upgradeable (6), solmate (6), openzeppelin (4)
- Upgradeable-pattern rows: 6

## Fork Analysis

2 of 10 contracts are derived from known codebases. 8 contracts have no detected origin.

### Forked Contracts

**InstitutionLender** (`0x1a48ce...37e1cc`, chain 8453)
Origin: zircuit (`0x1a48ce...37e1cc`)
Containment: 100.0% - 36 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**InstitutionLender** (`0xe83ef4...ab1dc5`, chain 8453)
Origin: zircuit (`0x1a48ce...37e1cc`)
Containment: 100.0% - 36 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

### Original Contracts (no fork detected - full audit scope)

- ERC20RevocableComplianceToken (`0x48ab4e...02717f`, chain 1)
- Proxy (`0x17bfaf...043fb1`, chain 1)
- Proxy (`0x2a721c...5ea091`, chain 1)
- Proxy (`0x386b76...b26dd8`, chain 1)
- Proxy (`0x6c8910...d5cf0e`, chain 1)
- Proxy (`0x7d43eb...80f35e`, chain 1)
- Proxy (`0x92ef6a...9245a4`, chain 1)
- SP1VerifierGateway (`0xf35a40...e31f67`, chain 1)

## Contract Surface Quality

- Indexed contracts: 15; live-surface contracts included: 15 (15 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 14/26 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 3/14 (21.4%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 14 own, 12 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 12 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 13
- Deployed-live implementations: 14 of 38 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 3/14
- Verified + Unaudited implementations: 11
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 38
- Raw deployments: 39
- Audits discovered: 11 (11 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-05 (aging)
- Audit staleness (calendar age): 0 fresh, 5 aging, 5 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 3 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Dedaub | Tier 2 | 3 | 21.4% | 2024-07 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| L1StandardBridge | operational_periphery | project_anchor | own_supporting | 1 | ethereum | unit-263799 | `0x386b76...b26dd8` | ✅ Audited |
| L2OutputOracle | operational_periphery | project_anchor | own_supporting | 1 | ethereum | unit-263801 | `0x92ef6a...9245a4` | ✅ Audited |
| OptimismPortal | unknown | project_anchor | own_supporting | 1 | ethereum | unit-263810 | `0x17bfaf...043fb1` | ✅ Audited |

### ⚠️ Verified + Unaudited (11)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| CrisisControlRegistry | registry | project_anchor | own_supporting | 1 | ethereum | unit-263809 | `0x7d43eb...80f35e` | ⚠️ Unaudited |
| ERC20RevocableComplianceTokenBasicPackageUpgradable | token | project_anchor | own_supporting | 1 | ethereum | unit-263804 | `0x48ab4e...02717f` | ⚠️ Unaudited |
| L1CrossDomainMessenger | unknown | project_anchor | own_supporting | 1 | ethereum | unit-263805 | `0x2a721c...5ea091` | ⚠️ Unaudited |
| L1ERC721Bridge | unknown | project_anchor | own_supporting | 1 | ethereum | unit-263808 | `0x994eeb...0dd244` | ⚠️ Unaudited |
| OptimismMintableERC20Factory | unknown | project_anchor | own_supporting | 1 | ethereum | unit-263811 | `0xc77ece...90e932` | ⚠️ Unaudited |
| ProxyAdmin | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263771 | `0x5b1ef6...fc5257` | ⚠️ Unaudited |
| ResolverRegistry | registry | project_anchor | own_supporting | 1 | ethereum | unit-263807 | `0x6c8910...d5cf0e` | ⚠️ Unaudited |
| SP1VerifierGateway | periphery | project_anchor | own_supporting | 0 | ethereum | unit-263773 | `0xf35a40...e31f67` | ⚠️ Unaudited |
| SuperchainConfig | unknown | project_anchor | own_supporting | 1 | ethereum | unit-263803 | `0x745393...6d3da0` | ⚠️ Unaudited |
| SystemConfig | unknown | project_anchor | own_supporting | 1 | ethereum | unit-263806 | `0x30f82a...a428ff` | ⚠️ Unaudited |
| TokenizedStrategy | core_logic | project_anchor | own_supporting | 2 | base | unit-263812 (2 proxies) | 2 deployments: base `0x1a48ce...37e1cc`; base `0xe83ef4...ab1dc5` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (24)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b4913...6a1069` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d3fc8...64463f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e21a7...702c21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x540ff7...0c9b6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ac894...1cf130` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x87a7e2...4460d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9641b8...079dfe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x987d60...09746e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9da6c2...08ba2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb99857...847205` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbea946...4df5a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd69d3a...eaf211` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-263775 | `0x2b4913...6a1069` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-263777 | `0x3d3fc8...64463f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-263779 | `0x4e21a7...702c21` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-263781 | `0x540ff7...0c9b6d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-263783 | `0x6ac894...1cf130` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-263785 | `0x87a7e2...4460d8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-263787 | `0x9641b8...079dfe` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-263789 | `0x987d60...09746e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-263791 | `0x9da6c2...08ba2a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-263793 | `0xb99857...847205` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-263795 | `0xbea946...4df5a6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-263797 | `0xd69d3a...eaf211` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Zircuit-USDCAdapter_Secure3_Audit_Report-updated.pdf](https://github.com/zircuit-labs/audit-report/blob/main/Zircuit-USDCAdapter_Secure3_Audit_Report-updated.pdf) | Secure3 | Audit | 2024-09 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Zircuit_zrc_token_Secure3_Audit_Report.pdf](https://github.com/zircuit-labs/audit-report/blob/main/Zircuit_zrc_token_Secure3_Audit_Report.pdf) | Secure3 | Audit | 2024-09 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Zircuit-Labs_Zkr-Staking_report_2024-09-17.pdf](https://github.com/zircuit-labs/audit-report/blob/main/Zircuit-Labs_Zkr-Staking_report_2024-09-17.pdf) | Unknown | Audit | 2024-09 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [Zircuit_Labs_zkr_staking_Migration_Contracts_Smart_Contract_Security.pdf](https://github.com/zircuit-labs/audit-report/blob/main/Zircuit_Labs_zkr_staking_Migration_Contracts_Smart_Contract_Security.pdf) | Unknown | Audit | 2024-08 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Zircuit-ZRC-Token-audit-report-2024-1.1.pdf](https://github.com/zircuit-labs/audit-report/blob/main/Zircuit-ZRC-Token-audit-report-2024-1.1.pdf) | Unknown | Audit | 2024-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Zircuit_OP_Bridge_July_24,_2024_Dedaub_Audit_Reports_gdoc.pdf](https://github.com/zircuit-labs/audit-report/blob/main/Zircuit_OP_Bridge_July_24%2C_2024_Dedaub_Audit_Reports_gdoc.pdf) | Dedaub | Audit | 2024-07 | stale | Direct | n/a | matched | 3 | 3 | 0 | 3 | n/a |
| [dedaub-audit-zkr-staking-ztakingpool.pdf](https://github.com/zircuit-labs/audit-report/blob/main/dedaub-audit-zkr-staking-ztakingpool.pdf) | Dedaub | Audit | 2024-03 | stale | Direct | n/a | no match | 0 | 0 | 0 | 4 | n/a |
| [ztakingpool_ottersec.pdf](https://github.com/zircuit-labs/audit-report/blob/main/ztakingpool_ottersec.pdf) | Ottersec | Audit | 2024-02 | stale | Direct | n/a | no match | 0 | 0 | 0 | 1 | n/a |
| [zircuit_audit_final.pdf](https://dubiw3zgo51jg.cloudfront.net/zircuit_audit_final.pdf) | unknown | Audit | 2024-02 | stale | Direct | n/a | no match | 0 | 0 | 0 | 1 | n/a |
| [index.html](https://certificate.quantstamp.com/full/zircuit-l-2-upgradeable-contract/e765bc0e-0cbc-40f8-9a84-a7cfbd91cae0/index.html) | Quantstamp | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [ZRC_OFT_final_report_Quantstamp.pdf](https://github.com/zircuit-labs/audit-report/blob/main/ZRC_OFT_final_report_Quantstamp.pdf) | Quantstamp | Audit | 2025-05 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [4699] Zircuit-USDCAdapter_Secure3_Audit_Report-updated.pdf — no match: Only one contract in scope: USDCAdapter.sol. Audit date from title: Sep 19th, 2024.
- [4700] Zircuit_zrc_token_Secure3_Audit_Report.pdf — no match: Audit scope explicitly lists two contracts: ZRC.sol and ZRCL2.sol. Date found in header: 'Sep 18th, 2024'.
- [4701] Zircuit-Labs_Zkr-Staking_report_2024-09-17.pdf — no match: Extracted 4 contracts from Appendix 1 - Files in Scope. Audit date from 'Dates Sep14 2024' in overview.
- [4702] Zircuit_Labs_zkr_staking_Migration_Contracts_Smart_Contract_Security.pdf — no match: Scope section explicitly lists three contracts: BatchMigrator.sol, Migrator.sol, ZrcDistributor.sol. Audit date is the end date of engagement: August 2nd, 2024.
- [4703] Zircuit-ZRC-Token-audit-report-2024-1.1.pdf — no match: Scope section explicitly lists src/ZRC.sol and src/ZRCL2.sol. BatchTransfer.sol is mentioned in findings but not in scope section; however, it is a contract in the repository and was tested.
- [4704] Zircuit_OP_Bridge_July_24,_2024_Dedaub_Audit_Reports_gdoc.pdf — matched: No reason recorded
- [4705] dedaub-audit-zkr-staking-ztakingpool.pdf — no match: No reason recorded
- [4706] ztakingpool_ottersec.pdf — no match: No reason recorded
- [15050] zircuit_audit_final.pdf — no match: No reason recorded
- [15051] index.html — no match: The provided text is incomplete and does not contain any contract names or audit details.
- [15061] ZRC_OFT_final_report_Quantstamp.pdf — no match: Scope explicitly lists three contracts: ERC20PermitOFT.sol, ZrcOFT.sol, ZrcOFTAdapter.sol. Audit date from changelog: 2025-05-23.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Zircuit-USDCAdapter_Secure3_Audit_Report-updated.pdf | USDCAdapter | unmatched — not counted | — | listed in scope table with SHA256 hash | no |
| Zircuit_zrc_token_Secure3_Audit_Report.pdf | ZRC | unmatched — not counted | — | listed in Audit Scope table with SHA256 hash | no |
| Zircuit_zrc_token_Secure3_Audit_Report.pdf | ZRCL2 | unmatched — not counted | — | listed in Audit Scope table with SHA256 hash | no |
| Zircuit-Labs_Zkr-Staking_report_2024-09-17.pdf | LiquidityHub | unmatched — not counted | — | listed in scope | no |
| Zircuit-Labs_Zkr-Staking_report_2024-09-17.pdf | LaunchPool | unmatched — not counted | — | listed in scope | no |
| Zircuit-Labs_Zkr-Staking_report_2024-09-17.pdf | BasePool | unmatched — not counted | — | listed in scope | no |
| Zircuit-Labs_Zkr-Staking_report_2024-09-17.pdf | LaunchPoolFactory | unmatched — not counted | — | listed in scope | no |
| Zircuit_Labs_zkr_staking_Migration_Contracts_Smart_Contract_Security.pdf | BatchMigrator | unmatched — not counted | — | listed in scope | no |
| Zircuit_Labs_zkr_staking_Migration_Contracts_Smart_Contract_Security.pdf | Migrator | unmatched — not counted | — | listed in scope | no |
| Zircuit_Labs_zkr_staking_Migration_Contracts_Smart_Contract_Security.pdf | ZrcDistributor | unmatched — not counted | — | listed in scope | no |
| Zircuit-ZRC-Token-audit-report-2024-1.1.pdf | ZRC | unmatched — not counted | — | listed in scope section and findings | no |
| Zircuit-ZRC-Token-audit-report-2024-1.1.pdf | ZRCL2 | unmatched — not counted | — | listed in scope section and findings | no |
| Zircuit-ZRC-Token-audit-report-2024-1.1.pdf | BatchTransfer | unmatched — not counted | — | mentioned in finding 5.10 | no |
| Zircuit_OP_Bridge_July_24,_2024_Dedaub_Audit_Reports_gdoc.pdf | L1StandardBridge | own proxy deployment | Proxy (proxy) (selected) `0x386b76...b26dd8` — deployed 2024-07-02 19:08:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Zircuit_OP_Bridge_July_24,_2024_Dedaub_Audit_Reports_gdoc.pdf | L2OutputOracle | own proxy deployment | Proxy (proxy) (selected) `0x92ef6a...9245a4` — deployed 2024-07-02 19:08:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Zircuit_OP_Bridge_July_24,_2024_Dedaub_Audit_Reports_gdoc.pdf | L2StandardBridge | unmatched — not counted | — | — | no |
| Zircuit_OP_Bridge_July_24,_2024_Dedaub_Audit_Reports_gdoc.pdf | L2ToL1MessagePasser | unmatched — not counted | — | — | no |
| Zircuit_OP_Bridge_July_24,_2024_Dedaub_Audit_Reports_gdoc.pdf | OptimismPortal | own proxy deployment | Proxy (proxy) (selected) `0x17bfaf...043fb1` — deployed 2024-07-02 19:08:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Zircuit_OP_Bridge_July_24,_2024_Dedaub_Audit_Reports_gdoc.pdf | StandardBridge | unmatched — not counted | — | — | no |
| dedaub-audit-zkr-staking-ztakingpool.pdf | IMigrator | unmatched — not counted | — | — | no |
| dedaub-audit-zkr-staking-ztakingpool.pdf | IWETH | unmatched — not counted | — | — | no |
| dedaub-audit-zkr-staking-ztakingpool.pdf | IZtakingPool | unmatched — not counted | — | — | no |
| dedaub-audit-zkr-staking-ztakingpool.pdf | ZtakingPool | unmatched — not counted | — | — | no |
| ztakingpool_ottersec.pdf | ZtakingPool | unmatched — not counted | — | — | no |
| zircuit_audit_final.pdf | ZtakingPool | unmatched — not counted | — | — | no |
| ZRC_OFT_final_report_Quantstamp.pdf | ERC20PermitOFT | unmatched — not counted | — | listed in scope section | no |
| ZRC_OFT_final_report_Quantstamp.pdf | ZrcOFT | unmatched — not counted | — | listed in scope section | no |
| ZRC_OFT_final_report_Quantstamp.pdf | ZrcOFTAdapter | unmatched — not counted | — | listed in scope section | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x7d43eb...80f35e` | CrisisControlRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x48ab4e...02717f` | ERC20RevocableComplianceTokenBasicPackageUpgradable | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2a721c...5ea091` | L1CrossDomainMessenger | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x994eeb...0dd244` | L1ERC721Bridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc77ece...90e932` | OptimismMintableERC20Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6c8910...d5cf0e` | ResolverRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf35a40...e31f67` | SP1VerifierGateway | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x745393...6d3da0` | SuperchainConfig | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x30f82a...a428ff` | SystemConfig | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x1a48ce...37e1cc` | TokenizedStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 13 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 24 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 10
- Inherited remapped matches: 0
- Address-book scope dispositions: 3 own (3 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 25 unmatched
- Matched-own operational status: 3 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=6, low=1
- Match method counts: unique_name=3

Zero-match audit list:

- [4699] Zircuit-USDCAdapter_Secure3_Audit_Report-updated.pdf
- [4700] Zircuit_zrc_token_Secure3_Audit_Report.pdf
- [4701] Zircuit-Labs_Zkr-Staking_report_2024-09-17.pdf
- [4702] Zircuit_Labs_zkr_staking_Migration_Contracts_Smart_Contract_Security.pdf
- [4703] Zircuit-ZRC-Token-audit-report-2024-1.1.pdf
- [4705] dedaub-audit-zkr-staking-ztakingpool.pdf
- [4706] ztakingpool_ottersec.pdf
- [15050] zircuit_audit_final.pdf
- [15051] index.html
- [15061] ZRC_OFT_final_report_Quantstamp.pdf

Fork inheritance lineage and inherited audits are included when available.
