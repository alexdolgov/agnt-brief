# Agentic Audit Brief: Amulet

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Amulet (`amulet`)
- Website: [https://amulet.org/](https://amulet.org/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum, optimism, polygon-zkevm
- Contract surface: 21 unique implementations (21 raw deployments)
- Coverage basis: 0/15 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $275,442.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Amulet. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 15 contract row(s) across ethereum, optimism, polygon-zkevm. Structural roles: 15 unclassified. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 15
- Structural roles: unclassified (15)
- Contract kinds: contract (15)
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 17 contracts are derived from known codebases. 17 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- a-AA_idle_cpFAS-USDC (`0x4a728224b87c63b53c5fbcacd95b5c3f0c9f5b22`, chain 1)
- a-AA_idle_cpFAS-USDT (`0x5e2da626313cef5f67d21616df6e7a531e41c3f9`, chain 1)
- a-AA_idle_cpFAS-USDT (`0xe92b7a8eb449aba20da0b2f5b2a4f5f25f95f3c4`, chain 10)
- a-AA_idle_cpPOR-USDT (`0x53dac8d715350afb3443d346aa3abd73da4534f0`, chain 1101)
- a-AA_idle_cpPORT-USDT (`0xf06e004cab43f326aa3668c8723a8bdbcf5bd165`, chain 10)
- a-AA_idle_cpWINC1-USDC (`0x53dac8d715350afb3443d346aa3abd73da4534f0`, chain 10)
- a-BB_idle_cpFAS-USDC (`0x695e5c49eaeeb5333e2af0ddb27722d36e9324fa`, chain 1)
- a-BB_idle_cpFAS-USDT (`0xfdad59ef0686c3da702b7d651a3bd35a539c8bc4`, chain 1)
- a-BB_idle_cpFAS-USDT (`0x07e7d45bc488de9eed94aa5f9bb8c845f4b21afa`, chain 10)
- a-BB_idle_cpPOR-USDT (`0x923917304012c7e14d122eb1d6a8f49f608bc06b`, chain 1101)
- a-BB_idle_cpPORT-USDT (`0xfcb69e5e535e04a809dc8af7eba59c2fed4b2868`, chain 10)
- a-BB_idle_cpWINC1-USDC (`0x923917304012c7e14d122eb1d6a8f49f608bc06b`, chain 10)
- a-crvUSDFRAX-f (`0xfcb69e5e535e04a809dc8af7eba59c2fed4b2868`, chain 1)
- a-crvUSDUSDC-f (`0xf06e004cab43f326aa3668c8723a8bdbcf5bd165`, chain 1)
- a-crvUSDUSDT-f (`0x6b0825b3e079fad25086431f7154acb3073f933b`, chain 1)
- a-stETH-ng-f (`0x6030189834b69919bffbc25e01c596ea5858e46c`, chain 1)
- a-wstETH (`0x5ef17ee66a64fd5b394362d98f51ba155aece9ce`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 15; live-surface rows included: 15 (15 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 17/17 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/15 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 17 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 4 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 3
- Confirmed-live implementations: 17 of 21 unique; 4 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/19
- Verified + Unaudited implementations: 19
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 21
- Raw deployments: 21
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-08 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (19)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| a-AA_idle_cpFAS-USDC | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378997 | `0x4a728224b87c63b53c5fbcacd95b5c3f0c9f5b22` | ⚠️ Unaudited |
| a-AA_idle_cpFAS-USDT | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378998 | `0x5e2da626313cef5f67d21616df6e7a531e41c3f9` | ⚠️ Unaudited |
| a-AA_idle_cpFAS-USDT | unknown | project_anchor | own_supporting | 0 | optimism | unit-379009 | `0xe92b7a8eb449aba20da0b2f5b2a4f5f25f95f3c4` | ⚠️ Unaudited |
| a-AA_idle_cpPORT-USDT | unknown | project_anchor | own_supporting | 0 | optimism | unit-379010 | `0xf06e004cab43f326aa3668c8723a8bdbcf5bd165` | ⚠️ Unaudited |
| a-AA_idle_cpWINC1-USDC | unknown | project_anchor | own_supporting | 0 | optimism | unit-379007 | `0x53dac8d715350afb3443d346aa3abd73da4534f0` | ⚠️ Unaudited |
| a-BB_idle_cpFAS-USDC | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379001 | `0x695e5c49eaeeb5333e2af0ddb27722d36e9324fa` | ⚠️ Unaudited |
| a-BB_idle_cpFAS-USDT | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379005 | `0xfdad59ef0686c3da702b7d651a3bd35a539c8bc4` | ⚠️ Unaudited |
| a-BB_idle_cpFAS-USDT | unknown | project_anchor | own_supporting | 0 | optimism | unit-379006 | `0x07e7d45bc488de9eed94aa5f9bb8c845f4b21afa` | ⚠️ Unaudited |
| a-BB_idle_cpPORT-USDT | unknown | project_anchor | own_supporting | 0 | optimism | unit-379011 | `0xfcb69e5e535e04a809dc8af7eba59c2fed4b2868` | ⚠️ Unaudited |
| a-BB_idle_cpWINC1-USDC | unknown | project_anchor | own_supporting | 0 | optimism | unit-379008 | `0x923917304012c7e14d122eb1d6a8f49f608bc06b` | ⚠️ Unaudited |
| a-crvUSDFRAX-f | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379004 | `0xfcb69e5e535e04a809dc8af7eba59c2fed4b2868` | ⚠️ Unaudited |
| a-crvUSDUSDC-f | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379003 | `0xf06e004cab43f326aa3668c8723a8bdbcf5bd165` | ⚠️ Unaudited |
| a-crvUSDUSDT-f | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379002 | `0x6b0825b3e079fad25086431f7154acb3073f933b` | ⚠️ Unaudited |
| a-stETH-ng-f | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379000 | `0x6030189834b69919bffbc25e01c596ea5858e46c` | ⚠️ Unaudited |
| a-wstETH | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378999 | `0x5ef17ee66a64fd5b394362d98f51ba155aece9ce` | ⚠️ Unaudited |
| IdleCDO | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xc4574c60a455655864ab80fa7638561a756c5e61` | ⚠️ Unaudited |
| IdleCDOOptimism | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | `0x8771128e9e386dc8e4663118bb11ea3de910e528` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x34ca1eb15b86f70dbac2631c1d4bb6aa9bc3e03e` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x00233ca2d687d962edc95a9ebc03b2aade85d10f` | ⚠️ Unaudited |

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
| a-AA_idle_cpPOR-USDT | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-379012 | `0x53dac8d715350afb3443d346aa3abd73da4534f0` | ❓ Unverified |
| a-BB_idle_cpPOR-USDT | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-379013 | `0x923917304012c7e14d122eb1d6a8f49f608bc06b` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [DL audit link](https://files.amulet.org/public/AmuletGlobalMTRLabs.pdf) | unknown | Audit | 2022-08 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [26411] DL audit link — no match: The scope section states 'All rust files in the repo were the targets in scope' but does not list specific contract names. The findings mention 'stake_wrapper.rs' but it is not explicitly listed as in scope. No specific contract names could be extracted.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 17 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: low=1
- Match method counts: n/a

Zero-match audit list:

- [26411] DL audit link

Fork inheritance lineage and inherited audits are included when available.
