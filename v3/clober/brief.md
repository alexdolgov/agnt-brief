# Agentic Audit Brief: Clober

## Export Authority

- Production state: **published scope**
- Raw selected rows: 5 across 4 audit(s)
- Eligible audit results: 8 (4 matched; 4 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Clober (`clober`)
- Website: [https://clober.io](https://clober.io)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, berachain, monad, sonic
- Contract surface: 30 unique implementations (30 raw deployments)
- Coverage basis: 2/7 confirmed own live verified implementations (28.6%); conservative 28.6% with 0 needs-review implementation(s)
- DeFi Llama TVL: $483,404.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Clober. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 11 contract row(s) across arbitrum, base, berachain, monad, sonic. Structural roles: 7 unclassified, 4 supporting. 2 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 11
- Structural roles: unclassified (7), supporting (4)
- Contract kinds: contract (11)
- Detected standards: erc165 (1), erc1967proxy (1), erc721 (1), ownable (1), ownable2step (1)
- Frameworks: uniswap-v2 (3), openzeppelin (2), openzeppelin-upgradeable (1), solmate (1)
- Upgradeable-pattern rows: 2

## Fork Analysis

2 of 26 contracts are derived from known codebases. 24 contracts have no detected origin.

### Forked Contracts

**BookManager** (`0x8ca3a6...380112`, chain 8453)
Origin: sonic-market (`0xd4ad5e...17c636`)
Containment: 100.0% - 31 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**Controller** (`0x2610dc...520bca`, chain 8453)
Origin: sonic-market (`0xca6c15...2eadd1`)
Containment: 100.0% - 15 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x19b68a...de8e83`, chain 143)
- UnnamedContract (`0x54cd53...4e9e7d`, chain 143)
- UnnamedContract (`0x6657d1...be8ccc`, chain 143)
- UnnamedContract (`0xb09684...5da873`, chain 143)
- UnnamedContract (`0xb1251b...c9d242`, chain 143)
- UnnamedContract (`0xcbd3c0...46195b`, chain 143)
- UnnamedContract (`0xe424c2...68d238`, chain 143)
- UnnamedContract (`0x46107e...52bd47`, chain 146)
- UnnamedContract (`0x466795...0803a7`, chain 146)
- UnnamedContract (`0x920f77...7d05b8`, chain 146)
- UnnamedContract (`0xd4ad5e...17c636`, chain 146)
- UnnamedContract (`0xdd30f8...95554f`, chain 146)
- UnnamedContract (`0xe81e78...da5613`, chain 146)
- UnnamedContract (`0xf7e728...ac9a09`, chain 146)
- UnnamedContract (`0x21bb87...2ad7e1`, chain 42161)
- UnnamedContract (`0x536913...159830`, chain 42161)
- UnnamedContract (`0x74ffe4...8c2fdf`, chain 42161)
- UnnamedContract (`0xc6ed4b...f2362e`, chain 42161)
- UnnamedContract (`0xfe87e2...83a76d`, chain 42161)
- UnnamedContract (`0x067311...3ae03b`, chain 80094)
- UnnamedContract (`0x4abb86...0a49a8`, chain 80094)
- UnnamedContract (`0xded58e...75d1e4`, chain 80094)
- ERC1967Proxy (`0xcd166f...78f029`, chain 8453)
- Minter (`0x2092a5...0c59d1`, chain 8453)

## Contract Surface Quality

- Indexed contracts: 11; live-surface contracts included: 11 (7 live, 4 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 29/29 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 2/7 (28.6%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 29 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 4
- Deployed-live implementations: 29 of 30 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 2/7
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 22
- Unique implementations: 30
- Raw deployments: 30
- Audits discovered: 8 (8 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-02 (fresh)
- Audit staleness (calendar age): 1 fresh, 3 aging, 4 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| HickupHH | Tier 2 | 2 | 28.6% | 2026-02 |
| unknown | Tier 2 | 1 | 14.3% | 2024-11 |
| yAudit | Tier 2 | 1 | 14.3% | 2024-12 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| LiquidityVault | unknown | project_anchor | own_supporting | 1 | base | unit-232083 | `0xca1f6e...c0b834` | ✅ Audited |
| SimpleOracleStrategy | unknown | project_anchor | own_supporting | 1 | base | unit-232081 | `0x29e071...5f2777` | ✅ Audited |

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BookManager | governance | project_anchor | own_supporting | 0 | base | unit-232080 | `0x8ca3a6...380112` | ⚠️ Unaudited |
| BookViewer | unknown | project_anchor | own_supporting | 1 | base | unit-232084 | `0xcd166f...78f029` | ⚠️ Unaudited |
| Controller | governance | project_anchor | own_supporting | 0 | base | unit-232079 | `0x2610dc...520bca` | ⚠️ Unaudited |
| Minter | operational_periphery | project_anchor | own_supporting | 0 | base | unit-232078 | `0x2092a5...0c59d1` | ⚠️ Unaudited |
| Operator | unknown | project_anchor | own_supporting | 1 | base | unit-232082 | `0x00f7a0...308625` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (23)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-232056 | `0x19b68a...de8e83` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-232057 | `0x54cd53...4e9e7d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-232058 | `0x6657d1...be8ccc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-232059 | `0xb09684...5da873` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-232060 | `0xb1251b...c9d242` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-232061 | `0xcbd3c0...46195b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-232062 | `0xe424c2...68d238` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-232063 | `0x46107e...52bd47` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-232064 | `0x466795...0803a7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-232065 | `0x920f77...7d05b8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-232066 | `0xd4ad5e...17c636` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-232067 | `0xdd30f8...95554f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-232068 | `0xe81e78...da5613` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-232069 | `0xf7e728...ac9a09` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-232070 | `0x21bb87...2ad7e1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-232071 | `0x536913...159830` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-232072 | `0x74ffe4...8c2fdf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-232073 | `0xc6ed4b...f2362e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-232074 | `0xfe87e2...83a76d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | berachain | n/a | `0x000000...000000` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-232075 | `0x067311...3ae03b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-232076 | `0x4abb86...0a49a8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-232077 | `0xded58e...75d1e4` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Clober_Rebalancer_v03.pdf](https://github.com/clober-dex/clober-rebalancer/blob/master/audits/Clober_Rebalancer_v03.pdf) | unknown | Audit | 2024-07 | stale | Direct | contract_name | matched | 1 | 1 | 0 | 2 | high |
| [Clober_V2.pdf](https://github.com/clober-dex/v2-core/blob/master/audits/Clober_V2.pdf) | unknown | Audit | 2024-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 15 | high |
| [Clober_Liquidity_Vault_v2_Audit_Report_by_Trust_Security-7d8bcf5e7f6b488122f7974aef1d70c7.pdf](https://docs.clober.io/assets/files/Clober_Liquidity_Vault_v2_Audit_Report_by_Trust_Security-7d8bcf5e7f6b488122f7974aef1d70c7.pdf) | yAudit | Audit | 2024-12 | aging | Direct | contract_name | matched | 1 | 1 | 0 | 1 | high |
| [2025_1_Clober_LiquidityVault-50ac1ebac2c19b9449389bcdf1c788bf.pdf](https://docs.clober.io/assets/files/2025_1_Clober_LiquidityVault-50ac1ebac2c19b9449389bcdf1c788bf.pdf) | HickupHH | Audit | 2025-01 | aging | Direct | contract_name | matched | 1 | 1 | 0 | 5 | high |
| [2026_4_Clober_LiquidityVault-a2cb42bf934d68038d8d46230bd6615f.pdf](https://docs.clober.io/assets/files/2026_4_Clober_LiquidityVault-a2cb42bf934d68038d8d46230bd6615f.pdf) | HickupHH | Audit | 2026-02 | fresh | Direct | contract_name | matched | 2 | 2 | 0 | 3 | high |
| [Clober_V2-fc545ee25635e5ef6d3a73c0991461eb.pdf](https://docs.clober.io/assets/files/Clober_V2-fc545ee25635e5ef6d3a73c0991461eb.pdf) | unknown | Audit | 2024-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 15 | high |
| [SpearbitDAO2023Feb-a7fe0c644f3989e3de617b7a3158ed5d.pdf](https://docs.clober.io/assets/files/SpearbitDAO2023Feb-a7fe0c644f3989e3de617b7a3158ed5d.pdf) | Spearbit | Audit | 2023-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 13 | high |
| [Clober_v2_Cairo_audit_report-790707b7dc1d8bd4063539b47ada493b.pdf](https://docs.clober.io/assets/files/Clober_v2_Cairo_audit_report-790707b7dc1d8bd4063539b47ada493b.pdf) | unknown | Audit | 2024-11 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 16 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [12920] Clober_Rebalancer_v03.pdf — matched: Three contracts in scope: Rebalancer.sol, SimpleOracleStrategy.sol, ERC6909Supply.sol. Audit date from cover page and time period.
- [12921] Clober_V2.pdf — no match: Extracted 15 contract/library names from the scope section listing files. Audit date from cover page: 28/02/24.
- [12922] Clober_Liquidity_Vault_v2_Audit_Report_by_Trust_Security-7d8bcf5e7f6b488122f7974aef1d70c7.pdf — matched: Two contracts in scope: Rebalancer.sol and SimpleOracleStrategy.sol. Audit date from cover page.
- [12923] 2025_1_Clober_LiquidityVault-50ac1ebac2c19b9449389bcdf1c788bf.pdf — matched: Scope table lists 6 contracts: Minter.sol, Operator.sol, Rebalancer.sol, SimpleOracleStrategy.sol, interfaces/*, oracle/ChainlinkOracle.sol, oracle/DatastreamOracle.sol. Interfaces are not extracted as they are not named contracts. Audit date is 22 January 2025 from the cover page.
- [12924] 2026_4_Clober_LiquidityVault-a2cb42bf934d68038d8d46230bd6615f.pdf — matched: Scope section lists 5 contracts in src folder. Audit date is 7 Feburary 2026 (end date of audit timeline).
- [12925] Clober_V2-fc545ee25635e5ef6d3a73c0991461eb.pdf — no match: Extracted 15 contract names from the scope section listing files. Audit date from cover page: 28/02/24.
- [12926] SpearbitDAO2023Feb-a7fe0c644f3989e3de617b7a3158ed5d.pdf — no match: Extracted contract names from findings context and file paths mentioned in the report. Audit date from cover page: February 11, 2023.
- [12927] Clober_v2_Cairo_audit_report-790707b7dc1d8bd4063539b47ada493b.pdf — no match: All 16 files listed in the 'Scoped Files' section of the audit report.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Clober_Rebalancer_v03.pdf | Rebalancer | ambiguous — not counted | ERC1967Proxy (proxy) (alternative) `0xca1f6e...c0b834` — deployed 2026-01-26 18:07:01+03 — liveness: live (proxy_unit_reachable)<br>0xb09684… (alternative) `0xb09684...5da873` — liveness: live (current_address_book_code)<br>0x46107e… (alternative) `0x46107e...52bd47` — liveness: live (current_address_book_code)<br>0x21bb87… (alternative) `0x21bb87...2ad7e1` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Clober_Rebalancer_v03.pdf | SimpleOracleStrategy | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x29e071...5f2777` — deployed 2026-01-26 18:07:01+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Clober_Rebalancer_v03.pdf | ERC6909Supply | unmatched — not counted | — | listed in scope | no |
| Clober_V2.pdf | Controller | ambiguous — not counted | 0x536913… (alternative) `0x536913...159830` — liveness: live (current_address_book_code)<br>0x067311… (alternative) `0x067311...3ae03b` — liveness: live (current_address_book_code)<br>Controller (alternative) `0x2610dc...520bca` — deployed 2026-01-20 16:28:07+03 — liveness: live (current_address_book_code)<br>0x19b68a… (alternative) `0x19b68a...de8e83` — liveness: live (current_address_book_code)<br>0x920f77… (alternative) `0x920f77...7d05b8` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Clober_V2.pdf | BookManager | ambiguous — not counted | BookManager (alternative) `0x8ca3a6...380112` — deployed 2026-01-17 20:35:53+03 — liveness: live (proxy_unit_reachable)<br>0xded58e… (alternative) `0xded58e...75d1e4` — liveness: live (current_address_book_code)<br>0xd4ad5e… (alternative) `0xd4ad5e...17c636` — liveness: live (current_address_book_code)<br>0x74ffe4… (alternative) `0x74ffe4...8c2fdf` — liveness: live (current_address_book_code)<br>0x6657d1… (alternative) `0x6657d1...be8ccc` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Clober_V2.pdf | BaseHook | unmatched — not counted | — | listed in scope | no |
| Clober_V2.pdf | BountyPlatform | unmatched — not counted | — | listed in scope | no |
| Clober_V2.pdf | Book | unmatched — not counted | — | listed in scope | no |
| Clober_V2.pdf | BookId | unmatched — not counted | — | listed in scope | no |
| Clober_V2.pdf | FeePolicy | unmatched — not counted | — | listed in scope | no |
| Clober_V2.pdf | Heap | unmatched — not counted | — | listed in scope | no |
| Clober_V2.pdf | Hooks | unmatched — not counted | — | listed in scope | no |
| Clober_V2.pdf | Lockers | unmatched — not counted | — | listed in scope | no |
| Clober_V2.pdf | Math | unmatched — not counted | — | listed in scope | no |
| Clober_V2.pdf | OrderId | unmatched — not counted | — | listed in scope | no |
| Clober_V2.pdf | SignificantBit | unmatched — not counted | — | listed in scope | no |
| Clober_V2.pdf | Tick | unmatched — not counted | — | listed in scope | no |
| Clober_V2.pdf | TotalClaimableMap | unmatched — not counted | — | listed in scope | no |
| Clober_Liquidity_Vault_v2_Audit_Report_by_Trust_Security-7d8bcf5e7f6b488122f7974aef1d70c7.pdf | Rebalancer | ambiguous — not counted | ERC1967Proxy (proxy) (alternative) `0xca1f6e...c0b834` — deployed 2026-01-26 18:07:01+03 — liveness: live (proxy_unit_reachable)<br>0xb09684… (alternative) `0xb09684...5da873` — liveness: live (current_address_book_code)<br>0x46107e… (alternative) `0x46107e...52bd47` — liveness: live (current_address_book_code)<br>0x21bb87… (alternative) `0x21bb87...2ad7e1` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Clober_Liquidity_Vault_v2_Audit_Report_by_Trust_Security-7d8bcf5e7f6b488122f7974aef1d70c7.pdf | SimpleOracleStrategy | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x29e071...5f2777` — deployed 2026-01-26 18:07:01+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025_1_Clober_LiquidityVault-50ac1ebac2c19b9449389bcdf1c788bf.pdf | Minter | ambiguous — not counted | 0x466795… (alternative) `0x466795...0803a7` — liveness: live (current_address_book_code)<br>0xfe87e2… (alternative) `0xfe87e2...83a76d` — liveness: live (current_address_book_code)<br>0xb1251b… (alternative) `0xb1251b...c9d242` — liveness: live (current_address_book_code)<br>Minter (alternative) `0x2092a5...0c59d1` — deployed 2026-01-26 18:07:01+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2025_1_Clober_LiquidityVault-50ac1ebac2c19b9449389bcdf1c788bf.pdf | Operator | ambiguous — not counted | ERC1967Proxy (proxy) (alternative) `0x00f7a0...308625` — deployed 2026-01-26 18:07:01+03 — liveness: live (current_address_book_code)<br>0xf7e728… (alternative) `0xf7e728...ac9a09` — liveness: live (current_address_book_code)<br>0xcbd3c0… (alternative) `0xcbd3c0...46195b` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2025_1_Clober_LiquidityVault-50ac1ebac2c19b9449389bcdf1c788bf.pdf | Rebalancer | ambiguous — not counted | ERC1967Proxy (proxy) (alternative) `0xca1f6e...c0b834` — deployed 2026-01-26 18:07:01+03 — liveness: live (proxy_unit_reachable)<br>0xb09684… (alternative) `0xb09684...5da873` — liveness: live (current_address_book_code)<br>0x46107e… (alternative) `0x46107e...52bd47` — liveness: live (current_address_book_code)<br>0x21bb87… (alternative) `0x21bb87...2ad7e1` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2025_1_Clober_LiquidityVault-50ac1ebac2c19b9449389bcdf1c788bf.pdf | SimpleOracleStrategy | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x29e071...5f2777` — deployed 2026-01-26 18:07:01+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025_1_Clober_LiquidityVault-50ac1ebac2c19b9449389bcdf1c788bf.pdf | ChainlinkOracle | unmatched — not counted | — | listed in scope table | no |
| 2025_1_Clober_LiquidityVault-50ac1ebac2c19b9449389bcdf1c788bf.pdf | DatastreamOracle | unmatched — not counted | — | listed in scope table | no |
| 2026_4_Clober_LiquidityVault-a2cb42bf934d68038d8d46230bd6615f.pdf | Operator | ambiguous — not counted | ERC1967Proxy (proxy) (alternative) `0x00f7a0...308625` — deployed 2026-01-26 18:07:01+03 — liveness: live (current_address_book_code)<br>0xf7e728… (alternative) `0xf7e728...ac9a09` — liveness: live (current_address_book_code)<br>0xcbd3c0… (alternative) `0xcbd3c0...46195b` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2026_4_Clober_LiquidityVault-a2cb42bf934d68038d8d46230bd6615f.pdf | LiquidityVault | own proxy deployment | ERC1967Proxy (proxy) (selected) `0xca1f6e...c0b834` — deployed 2026-01-26 18:07:01+03 — liveness: live (proxy_unit_reachable) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2026_4_Clober_LiquidityVault-a2cb42bf934d68038d8d46230bd6615f.pdf | SimpleOracleStrategy | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x29e071...5f2777` — deployed 2026-01-26 18:07:01+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2026_4_Clober_LiquidityVault-a2cb42bf934d68038d8d46230bd6615f.pdf | ChainlinkOracle | unmatched — not counted | — | listed in scope | no |
| 2026_4_Clober_LiquidityVault-a2cb42bf934d68038d8d46230bd6615f.pdf | DatastreamOracle | unmatched — not counted | — | listed in scope | no |
| Clober_V2-fc545ee25635e5ef6d3a73c0991461eb.pdf | Controller | ambiguous — not counted | 0x536913… (alternative) `0x536913...159830` — liveness: live (current_address_book_code)<br>0x067311… (alternative) `0x067311...3ae03b` — liveness: live (current_address_book_code)<br>Controller (alternative) `0x2610dc...520bca` — deployed 2026-01-20 16:28:07+03 — liveness: live (current_address_book_code)<br>0x19b68a… (alternative) `0x19b68a...de8e83` — liveness: live (current_address_book_code)<br>0x920f77… (alternative) `0x920f77...7d05b8` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Clober_V2-fc545ee25635e5ef6d3a73c0991461eb.pdf | BookManager | ambiguous — not counted | BookManager (alternative) `0x8ca3a6...380112` — deployed 2026-01-17 20:35:53+03 — liveness: live (proxy_unit_reachable)<br>0xded58e… (alternative) `0xded58e...75d1e4` — liveness: live (current_address_book_code)<br>0xd4ad5e… (alternative) `0xd4ad5e...17c636` — liveness: live (current_address_book_code)<br>0x74ffe4… (alternative) `0x74ffe4...8c2fdf` — liveness: live (current_address_book_code)<br>0x6657d1… (alternative) `0x6657d1...be8ccc` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Clober_V2-fc545ee25635e5ef6d3a73c0991461eb.pdf | BaseHook | unmatched — not counted | — | listed in scope | no |
| Clober_V2-fc545ee25635e5ef6d3a73c0991461eb.pdf | BountyPlatform | unmatched — not counted | — | listed in scope | no |
| Clober_V2-fc545ee25635e5ef6d3a73c0991461eb.pdf | Book | unmatched — not counted | — | listed in scope | no |
| Clober_V2-fc545ee25635e5ef6d3a73c0991461eb.pdf | BookId | unmatched — not counted | — | listed in scope | no |
| Clober_V2-fc545ee25635e5ef6d3a73c0991461eb.pdf | FeePolicy | unmatched — not counted | — | listed in scope | no |
| Clober_V2-fc545ee25635e5ef6d3a73c0991461eb.pdf | Heap | unmatched — not counted | — | listed in scope | no |
| Clober_V2-fc545ee25635e5ef6d3a73c0991461eb.pdf | Hooks | unmatched — not counted | — | listed in scope | no |
| Clober_V2-fc545ee25635e5ef6d3a73c0991461eb.pdf | Lockers | unmatched — not counted | — | listed in scope | no |
| Clober_V2-fc545ee25635e5ef6d3a73c0991461eb.pdf | Math | unmatched — not counted | — | listed in scope | no |
| Clober_V2-fc545ee25635e5ef6d3a73c0991461eb.pdf | OrderId | unmatched — not counted | — | listed in scope | no |
| Clober_V2-fc545ee25635e5ef6d3a73c0991461eb.pdf | SignificantBit | unmatched — not counted | — | listed in scope | no |
| Clober_V2-fc545ee25635e5ef6d3a73c0991461eb.pdf | Tick | unmatched — not counted | — | listed in scope | no |
| Clober_V2-fc545ee25635e5ef6d3a73c0991461eb.pdf | TotalClaimableMap | unmatched — not counted | — | listed in scope | no |
| SpearbitDAO2023Feb-a7fe0c644f3989e3de617b7a3158ed5d.pdf | OrderBook | unmatched — not counted | — | mentioned in findings context | no |
| SpearbitDAO2023Feb-a7fe0c644f3989e3de617b7a3158ed5d.pdf | OrderNFT | unmatched — not counted | — | mentioned in findings context | no |
| SpearbitDAO2023Feb-a7fe0c644f3989e3de617b7a3158ed5d.pdf | SegmentedSegmentTree464 | unmatched — not counted | — | mentioned in findings context | no |
| SpearbitDAO2023Feb-a7fe0c644f3989e3de617b7a3158ed5d.pdf | OctopusHeap | unmatched — not counted | — | mentioned in findings context | no |
| SpearbitDAO2023Feb-a7fe0c644f3989e3de617b7a3158ed5d.pdf | MarketFactory | unmatched — not counted | — | mentioned in findings context | no |
| SpearbitDAO2023Feb-a7fe0c644f3989e3de617b7a3158ed5d.pdf | GeometricPriceBook | unmatched — not counted | — | mentioned in findings context | no |
| SpearbitDAO2023Feb-a7fe0c644f3989e3de617b7a3158ed5d.pdf | ArithmeticPriceBook | unmatched — not counted | — | mentioned in findings context | no |
| SpearbitDAO2023Feb-a7fe0c644f3989e3de617b7a3158ed5d.pdf | StableMarketDeployer | unmatched — not counted | — | mentioned in findings context | no |
| SpearbitDAO2023Feb-a7fe0c644f3989e3de617b7a3158ed5d.pdf | VolatileMarketDeployer | unmatched — not counted | — | mentioned in findings context | no |
| SpearbitDAO2023Feb-a7fe0c644f3989e3de617b7a3158ed5d.pdf | MarketRouter | unmatched — not counted | — | mentioned in findings context | no |
| SpearbitDAO2023Feb-a7fe0c644f3989e3de617b7a3158ed5d.pdf | SignificantBit | unmatched — not counted | — | mentioned in findings context | no |
| SpearbitDAO2023Feb-a7fe0c644f3989e3de617b7a3158ed5d.pdf | DirtyUint64 | unmatched — not counted | — | mentioned in findings context | no |
| SpearbitDAO2023Feb-a7fe0c644f3989e3de617b7a3158ed5d.pdf | OrderKey | unmatched — not counted | — | mentioned in findings context | no |
| Clober_v2_Cairo_audit_report-790707b7dc1d8bd4063539b47ada493b.pdf | book_manager | unmatched — not counted | — | listed in scope | no |
| Clober_v2_Cairo_audit_report-790707b7dc1d8bd4063539b47ada493b.pdf | controller | unmatched — not counted | — | listed in scope | no |
| Clober_v2_Cairo_audit_report-790707b7dc1d8bd4063539b47ada493b.pdf | book | unmatched — not counted | — | listed in scope | no |
| Clober_v2_Cairo_audit_report-790707b7dc1d8bd4063539b47ada493b.pdf | book_key | unmatched — not counted | — | listed in scope | no |
| Clober_v2_Cairo_audit_report-790707b7dc1d8bd4063539b47ada493b.pdf | fee_policy | unmatched — not counted | — | listed in scope | no |
| Clober_v2_Cairo_audit_report-790707b7dc1d8bd4063539b47ada493b.pdf | hooks | unmatched — not counted | — | listed in scope | no |
| Clober_v2_Cairo_audit_report-790707b7dc1d8bd4063539b47ada493b.pdf | hooks_list | unmatched — not counted | — | listed in scope | no |
| Clober_v2_Cairo_audit_report-790707b7dc1d8bd4063539b47ada493b.pdf | lockers | unmatched — not counted | — | listed in scope | no |
| Clober_v2_Cairo_audit_report-790707b7dc1d8bd4063539b47ada493b.pdf | order_id | unmatched — not counted | — | listed in scope | no |
| Clober_v2_Cairo_audit_report-790707b7dc1d8bd4063539b47ada493b.pdf | segmented_segment_tree | unmatched — not counted | — | listed in scope | no |
| Clober_v2_Cairo_audit_report-790707b7dc1d8bd4063539b47ada493b.pdf | storage_map | unmatched — not counted | — | listed in scope | no |
| Clober_v2_Cairo_audit_report-790707b7dc1d8bd4063539b47ada493b.pdf | tick | unmatched — not counted | — | listed in scope | no |
| Clober_v2_Cairo_audit_report-790707b7dc1d8bd4063539b47ada493b.pdf | tick_bitmap | unmatched — not counted | — | listed in scope | no |
| Clober_v2_Cairo_audit_report-790707b7dc1d8bd4063539b47ada493b.pdf | total_claimable_map | unmatched — not counted | — | listed in scope | no |
| Clober_v2_Cairo_audit_report-790707b7dc1d8bd4063539b47ada493b.pdf | math | unmatched — not counted | — | listed in scope | no |
| Clober_v2_Cairo_audit_report-790707b7dc1d8bd4063539b47ada493b.pdf | packed_felt252 | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | `0x8ca3a6...380112` | BookManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xcd166f...78f029` | BookViewer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x2610dc...520bca` | Controller | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x2092a5...0c59d1` | Minter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x00f7a0...308625` | Operator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 7 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 23 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Address-book scope dispositions: 5 own (5 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 10 ambiguous, 60 unmatched
- Matched-own operational status: 5 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=8
- Match method counts: unique_name=5

Zero-match audit list:

- [12921] Clober_V2.pdf
- [12925] Clober_V2-fc545ee25635e5ef6d3a73c0991461eb.pdf
- [12926] SpearbitDAO2023Feb-a7fe0c644f3989e3de617b7a3158ed5d.pdf
- [12927] Clober_v2_Cairo_audit_report-790707b7dc1d8bd4063539b47ada493b.pdf

Fork inheritance lineage and inherited audits are included when available.
