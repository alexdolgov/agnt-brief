# Agentic Audit Brief: Wasabi

## Export Authority

- Production state: **published scope**
- Raw selected rows: 4 across 3 audit(s)
- Eligible audit results: 8 (3 matched; 5 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Wasabi (`wasabi`)
- Website: [https://app.wasabi.xyz/p/LKHR9](https://app.wasabi.xyz/p/LKHR9)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base, berachain, blast, ethereum
- Contract surface: 8 unique implementations (8 raw deployments)
- Coverage basis: 3/8 confirmed own live verified implementations (37.5%); conservative 37.5% with 0 needs-review implementation(s)
- DeFi Llama TVL: $866,442.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Wasabi. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 9 contract row(s) across base, berachain, blast, ethereum. Structural roles: 5 core, 3 supporting, 1 infra. 9 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 9
- Structural roles: core (5), supporting (3), infra (1)
- Contract kinds: contract (9)
- Detected standards: erc1967proxy (9), ownable (1)
- Frameworks: openzeppelin (9), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 9

## Fork Analysis

0 of 7 contracts are derived from known codebases. 7 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- ERC1967Proxy (`0x8e0edf...d5afc0`, chain 1)
- ERC1967Proxy (`0xa456c7...7da37c`, chain 8453)
- ERC1967Proxy (`0xbdae5d...b248aa`, chain 8453)
- ERC1967Proxy (`0x0da575...6bb12b`, chain 80094)
- ERC1967Proxy (`0x3ee6c6...0df1ee`, chain 80094)
- ERC1967Proxy (`0x030107...c10c3a`, chain 81457)
- ERC1967Proxy (`0x046299...1ed355`, chain 81457)

## Contract Surface Quality

- Indexed contracts: 9; live-surface contracts included: 9 (8 live, 1 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 8/8 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 3/8 (37.5%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 8 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 8
- Deployed-live implementations: 8 of 8 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 3/8
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 8
- Raw deployments: 8
- Audits discovered: 8 (8 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-11 (aging)
- Audit staleness (calendar age): 0 fresh, 3 aging, 5 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 3 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Zellic | Tier 2 | 3 | 37.5% | 2024-10 |
| Foobar | Tier 2 | 1 | 12.5% | 2023-12 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BlastLongPool | core_logic | project_anchor | own_supporting | 1 | blast | unit-396617 | `0x046299...1ed355` | ✅ Audited |
| BlastShortPool | core_logic | project_anchor | own_supporting | 1 | blast | unit-396616 | `0x030107...c10c3a` | ✅ Audited |
| WasabiShortPool | unknown | project_anchor | own_supporting | 1 | ethereum | unit-396613 | `0x0fdc7b...30d8ff` | ✅ Audited |

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BeraLongPool | core_logic | project_anchor | own_supporting | 1 | berachain | unit-396614 | `0x0da575...6bb12b` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | project_anchor | own_supporting | 1 | ethereum | unit-396612 | `0x8e0edf...d5afc0` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | project_anchor | own_supporting | 1 | base | unit-396619 | `0xa456c7...7da37c` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | project_anchor | own_supporting | 1 | base | unit-396618 | `0xbdae5d...b248aa` | ⚠️ Unaudited |
| WasabiShortPool | core_logic | project_anchor | own_supporting | 1 | berachain | unit-396615 | `0x3ee6c6...0df1ee` | ⚠️ Unaudited |

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
| [Narya.ai_Wasabi_Smart_Contract_Audit.pdf](https://dkoda-public.s3.amazonaws.com/Narya.ai_Wasabi_Smart_Contract_Audit.pdf) | unknown | Audit | 2023-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Zellic_Wasabi_Smart_Contract_Audit.pdf](https://dkoda-public.s3.amazonaws.com/Zellic_Wasabi_Smart_Contract_Audit.pdf) | Zellic | Audit | 2023-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [0xfoobar_Wasabi_Smart_Contract_Audit.pdf](https://wasabi-public.s3.amazonaws.com/audits/v1/0xfoobar_Wasabi_Smart_Contract_Audit.pdf) | Foobar | Audit | 2023-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 12 | high |
| [WasabiPerps+Security+Assessment-1+(2).pdf](https://wasabi-public.s3.amazonaws.com/audits/v1/WasabiPerps+Security+Assessment-1+(2).pdf) | Foobar | Audit | 2023-12 | stale | Direct | n/a | matched | 1 | 1 | 0 | 4 | n/a |
| [Wasabi+Perps+-+Zellic+Audit+Report.pdf](https://wasabi-public.s3.amazonaws.com/audits/v1/Wasabi+Perps+-+Zellic+Audit+Report.pdf) | Zellic | Audit | 2024-01 | stale | Direct | n/a | matched | 1 | 1 | 0 | 7 | n/a |
| [Wasabi+Perps+-+Zellic+Audit+Report+2.pdf](https://wasabi-public.s3.us-east-1.amazonaws.com/audits/v1/Wasabi+Perps+-+Zellic+Audit+Report+2.pdf) | Zellic | Audit | 2024-10 | aging | Direct | contract_name | matched | 2 | 2 | 0 | 16 | high |
| [Wasabi_Perps_EVM_Audit_Sherlock.pdf](https://wasabi-public.s3.us-east-1.amazonaws.com/audits/v1/Wasabi_Perps_EVM_Audit_Sherlock.pdf) | Sherlock | Contest | 2024-11 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |
| [Wasabi_Perps_Solana_Audit_Sherlock.pdf](https://wasabi-public.s3.us-east-1.amazonaws.com/audits/v1/Wasabi_Perps_Solana_Audit_Sherlock.pdf) | Sherlock | Contest | 2024-11 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 39 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3106] Narya.ai_Wasabi_Smart_Contract_Audit.pdf — no match: Extracted contract names from scope section and findings. Audit date from cover page.
- [3107] Zellic_Wasabi_Smart_Contract_Audit.pdf — no match: Scope section explicitly lists 5 contracts. Audit date from cover page: April 18, 2023.
- [3108] 0xfoobar_Wasabi_Smart_Contract_Audit.pdf — no match: Extracted contract names from findings sections where files are explicitly listed. Audit date from cover page and summary.
- [3109] WasabiPerps+Security+Assessment-1+(2).pdf — matched: No reason recorded
- [3110] Wasabi+Perps+-+Zellic+Audit+Report.pdf — matched: No reason recorded
- [3111] Wasabi+Perps+-+Zellic+Audit+Report+2.pdf — matched: Scope table on page 9 lists 18 contracts. Audit date from cover page: October 2, 2024.
- [3112] Wasabi_Perps_EVM_Audit_Sherlock.pdf — no match: Extracted from audit report text. Scope section mentions repository and commit hash. Contracts identified from findings and code snippets.
- [3113] Wasabi_Perps_Solana_Audit_Sherlock.pdf — no match: Extracted contract names from the audit report's scope description and findings. The report covers the Wasabi Solana program, including instructions and state accounts. The audit date is the end date of the audit period (November 18th - November 28th).

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Narya.ai_Wasabi_Smart_Contract_Audit.pdf | WasabiOption | unmatched — not counted | — | listed in scope and findings | no |
| Narya.ai_Wasabi_Smart_Contract_Audit.pdf | AbstractWasabiPool | unmatched — not counted | — | listed in findings | no |
| Zellic_Wasabi_Smart_Contract_Audit.pdf | AbstractWasabiPool | unmatched — not counted | — | Listed in scope section: Programs • AbstractWasabiPool.sol | no |
| Zellic_Wasabi_Smart_Contract_Audit.pdf | WasabiOption | unmatched — not counted | — | Listed in scope section: Programs • WasabiOption.sol | no |
| Zellic_Wasabi_Smart_Contract_Audit.pdf | WasabiPoolFactory | unmatched — not counted | — | Listed in scope section: Programs • WasabiPoolFactory.sol | no |
| Zellic_Wasabi_Smart_Contract_Audit.pdf | ERC20WasabiPool | unmatched — not counted | — | Listed in scope section: Programs • ERC20WasabiPool.sol | no |
| Zellic_Wasabi_Smart_Contract_Audit.pdf | ETHWasabiPool | unmatched — not counted | — | Listed in scope section: Programs • ETHWasabiPool.sol | no |
| 0xfoobar_Wasabi_Smart_Contract_Audit.pdf | AbstractWasabiPool | unmatched — not counted | — | listed in finding 1 | no |
| 0xfoobar_Wasabi_Smart_Contract_Audit.pdf | WasabiPoolFactory | unmatched — not counted | — | listed in finding 1 | no |
| 0xfoobar_Wasabi_Smart_Contract_Audit.pdf | WasabiConduit | unmatched — not counted | — | listed in finding 1 | no |
| 0xfoobar_Wasabi_Smart_Contract_Audit.pdf | WasabiOptionArbitrage | unmatched — not counted | — | listed in findings 1, 3, 8 | no |
| 0xfoobar_Wasabi_Smart_Contract_Audit.pdf | ERC20WasabiPool | unmatched — not counted | — | listed in finding 1 | no |
| 0xfoobar_Wasabi_Smart_Contract_Audit.pdf | ETHWasabiPool | unmatched — not counted | — | listed in finding 1 | no |
| 0xfoobar_Wasabi_Smart_Contract_Audit.pdf | Signing | unmatched — not counted | — | listed in finding 2 | no |
| 0xfoobar_Wasabi_Smart_Contract_Audit.pdf | WasabiOption | unmatched — not counted | — | listed in findings 4, 6 | no |
| 0xfoobar_Wasabi_Smart_Contract_Audit.pdf | PricingConfigValidator | unmatched — not counted | — | listed in finding 5 | no |
| 0xfoobar_Wasabi_Smart_Contract_Audit.pdf | ConduitSignatureVerifier | unmatched — not counted | — | listed in finding 5 | no |
| 0xfoobar_Wasabi_Smart_Contract_Audit.pdf | PoolAskVerifier | unmatched — not counted | — | listed in findings 5, 7 | no |
| 0xfoobar_Wasabi_Smart_Contract_Audit.pdf | PoolBidVerifier | unmatched — not counted | — | listed in findings 5, 7 | no |
| WasabiPerps+Security+Assessment-1+(2).pdf | BaseWasabiPool | unmatched — not counted | — | — | no |
| WasabiPerps+Security+Assessment-1+(2).pdf | DebtController | unmatched — not counted | — | — | no |
| WasabiPerps+Security+Assessment-1+(2).pdf | WasabiLongPool | unmatched — not counted | — | — | no |
| WasabiPerps+Security+Assessment-1+(2).pdf | WasabiShortPool | own proxy deployment | ERC1967Proxy (proxy) (alternative) `0x3ee6c6...0df1ee` — deployed 2025-03-12 20:22:30+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (selected) `0x0fdc7b...30d8ff` — deployed 2023-12-18 14:29:11+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2023-12-18 was 17d from audit; next candidate 467d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| WasabiPerps+Security+Assessment-1+(2).pdf | pool | unmatched — not counted | — | — | no |
| Wasabi+Perps+-+Zellic+Audit+Report.pdf | AddressProvider | unmatched — not counted | — | — | no |
| Wasabi+Perps+-+Zellic+Audit+Report.pdf | BaseWasabiPool | unmatched — not counted | — | — | no |
| Wasabi+Perps+-+Zellic+Audit+Report.pdf | DebtController | unmatched — not counted | — | — | no |
| Wasabi+Perps+-+Zellic+Audit+Report.pdf | Hash | unmatched — not counted | — | — | no |
| Wasabi+Perps+-+Zellic+Audit+Report.pdf | PerpUtils | unmatched — not counted | — | — | no |
| Wasabi+Perps+-+Zellic+Audit+Report.pdf | WasabiLongPool | unmatched — not counted | — | — | no |
| Wasabi+Perps+-+Zellic+Audit+Report.pdf | WasabiShortPool | own proxy deployment | ERC1967Proxy (proxy) (alternative) `0x3ee6c6...0df1ee` — deployed 2025-03-12 20:22:30+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (selected) `0x0fdc7b...30d8ff` — deployed 2023-12-18 14:29:11+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2023-12-18 was 14d from audit; next candidate 436d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Wasabi+Perps+-+Zellic+Audit+Report.pdf | WasabiVault | unmatched — not counted | — | — | no |
| Wasabi+Perps+-+Zellic+Audit+Report+2.pdf | BaseWasabiPool | unmatched — not counted | — | listed in scope table | no |
| Wasabi+Perps+-+Zellic+Audit+Report+2.pdf | Hash | unmatched — not counted | — | listed in scope table | no |
| Wasabi+Perps+-+Zellic+Audit+Report+2.pdf | PerpUtils | unmatched — not counted | — | listed in scope table | no |
| Wasabi+Perps+-+Zellic+Audit+Report+2.pdf | WasabiLongPool | unmatched — not counted | — | listed in scope table | no |
| Wasabi+Perps+-+Zellic+Audit+Report+2.pdf | WasabiShortPool | ambiguous — not counted | ERC1967Proxy (proxy) (alternative) `0x3ee6c6...0df1ee` — deployed 2025-03-12 20:22:30+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0x0fdc7b...30d8ff` — deployed 2023-12-18 14:29:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Wasabi+Perps+-+Zellic+Audit+Report+2.pdf | AddressProvider | unmatched — not counted | — | listed in scope table | no |
| Wasabi+Perps+-+Zellic+Audit+Report+2.pdf | PerpManager | unmatched — not counted | — | listed in scope table | no |
| Wasabi+Perps+-+Zellic+Audit+Report+2.pdf | Roles | unmatched — not counted | — | listed in scope table | no |
| Wasabi+Perps+-+Zellic+Audit+Report+2.pdf | AbstractBlastContract | unmatched — not counted | — | listed in scope table | no |
| Wasabi+Perps+-+Zellic+Audit+Report+2.pdf | BlastConstants | unmatched — not counted | — | listed in scope table | no |
| Wasabi+Perps+-+Zellic+Audit+Report+2.pdf | BlastLongPool | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x046299...1ed355` — deployed 2024-02-29 07:57:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Wasabi+Perps+-+Zellic+Audit+Report+2.pdf | BlastPerpManager | unmatched — not counted | — | listed in scope table | no |
| Wasabi+Perps+-+Zellic+Audit+Report+2.pdf | BlastShortPool | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x030107...c10c3a` — deployed 2024-02-29 19:34:19+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Wasabi+Perps+-+Zellic+Audit+Report+2.pdf | DebtController | unmatched — not counted | — | listed in scope table | no |
| Wasabi+Perps+-+Zellic+Audit+Report+2.pdf | MultiReader | unmatched — not counted | — | listed in scope table | no |
| Wasabi+Perps+-+Zellic+Audit+Report+2.pdf | BlastVault | unmatched — not counted | — | listed in scope table | no |
| Wasabi+Perps+-+Zellic+Audit+Report+2.pdf | WasabiVault | unmatched — not counted | — | listed in scope table | no |
| Wasabi+Perps+-+Zellic+Audit+Report+2.pdf | WETH | unmatched — not counted | — | listed in scope table | no |
| Wasabi_Perps_EVM_Audit_Sherlock.pdf | WasabiLongPool | unmatched — not counted | — | mentioned in findings M-1, M-4, M-7, L-1, L-2 | no |
| Wasabi_Perps_EVM_Audit_Sherlock.pdf | WasabiShortPool | ambiguous — not counted | ERC1967Proxy (proxy) (alternative) `0x3ee6c6...0df1ee` — deployed 2025-03-12 20:22:30+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0x0fdc7b...30d8ff` — deployed 2023-12-18 14:29:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Wasabi_Perps_EVM_Audit_Sherlock.pdf | WasabiVault | unmatched — not counted | — | mentioned in finding M-1 | no |
| Wasabi_Perps_EVM_Audit_Sherlock.pdf | BaseWasabiPool | unmatched — not counted | — | mentioned in findings L-3, L-4, L-5 | no |
| Wasabi_Perps_EVM_Audit_Sherlock.pdf | WasabiRouter | unmatched — not counted | — | mentioned in findings M-5, M-6 | no |
| Wasabi_Perps_EVM_Audit_Sherlock.pdf | BlastVault | unmatched — not counted | — | mentioned in finding M-2 and L-6 | no |
| Wasabi_Perps_EVM_Audit_Sherlock.pdf | DebtController | unmatched — not counted | — | mentioned in finding L-7 | no |
| Wasabi_Perps_EVM_Audit_Sherlock.pdf | BlastRouter | unmatched — not counted | — | mentioned in finding L-6 | no |
| Wasabi_Perps_EVM_Audit_Sherlock.pdf | AbstractBlastContract | unmatched — not counted | — | mentioned in finding L-6 | no |
| Wasabi_Perps_Solana_Audit_Sherlock.pdf | Permission | unmatched — not counted | — | mentioned in scope and findings | no |
| Wasabi_Perps_Solana_Audit_Sherlock.pdf | Position | unmatched — not counted | — | mentioned in scope and findings | no |
| Wasabi_Perps_Solana_Audit_Sherlock.pdf | TakeProfitOrder | unmatched — not counted | — | mentioned in scope and findings | no |
| Wasabi_Perps_Solana_Audit_Sherlock.pdf | StopLossOrder | unmatched — not counted | — | mentioned in scope and findings | no |
| Wasabi_Perps_Solana_Audit_Sherlock.pdf | DebtController | unmatched — not counted | — | mentioned in scope and findings | no |
| Wasabi_Perps_Solana_Audit_Sherlock.pdf | GlobalSettings | unmatched — not counted | — | mentioned in scope and findings | no |
| Wasabi_Perps_Solana_Audit_Sherlock.pdf | LpVault | unmatched — not counted | — | mentioned in scope and findings | no |
| Wasabi_Perps_Solana_Audit_Sherlock.pdf | Pool | unmatched — not counted | — | mentioned in scope and findings | no |
| Wasabi_Perps_Solana_Audit_Sherlock.pdf | CloseAmounts | unmatched — not counted | — | mentioned in scope and findings | no |
| Wasabi_Perps_Solana_Audit_Sherlock.pdf | ClosePositionRequest | unmatched — not counted | — | mentioned in scope and findings | no |
| Wasabi_Perps_Solana_Audit_Sherlock.pdf | SwapCache | unmatched — not counted | — | mentioned in scope and findings | no |
| Wasabi_Perps_Solana_Audit_Sherlock.pdf | DepositOrWithdraw | unmatched — not counted | — | mentioned in scope and findings | no |
| Wasabi_Perps_Solana_Audit_Sherlock.pdf | InitLpVault | unmatched — not counted | — | mentioned in scope and findings | no |
| Wasabi_Perps_Solana_Audit_Sherlock.pdf | InitLongPool | unmatched — not counted | — | mentioned in scope and findings | no |
| Wasabi_Perps_Solana_Audit_Sherlock.pdf | InitShortPool | unmatched — not counted | — | mentioned in scope and findings | no |
| Wasabi_Perps_Solana_Audit_Sherlock.pdf | InitOrUpdatePermission | unmatched — not counted | — | mentioned in scope and findings | no |
| Wasabi_Perps_Solana_Audit_Sherlock.pdf | CloseStopLossOrder | unmatched — not counted | — | mentioned in scope and findings | no |
| Wasabi_Perps_Solana_Audit_Sherlock.pdf | CloseTakeProfitOrder | unmatched — not counted | — | mentioned in scope and findings | no |
| Wasabi_Perps_Solana_Audit_Sherlock.pdf | OpenShortPositionSetup | unmatched — not counted | — | mentioned in scope and findings | no |
| Wasabi_Perps_Solana_Audit_Sherlock.pdf | OpenShortPositionCleanup | unmatched — not counted | — | mentioned in scope and findings | no |
| Wasabi_Perps_Solana_Audit_Sherlock.pdf | OpenLongPositionSetup | unmatched — not counted | — | mentioned in scope and findings | no |
| Wasabi_Perps_Solana_Audit_Sherlock.pdf | OpenLongPositionCleanup | unmatched — not counted | — | mentioned in scope and findings | no |
| Wasabi_Perps_Solana_Audit_Sherlock.pdf | ClosePositionSetup | unmatched — not counted | — | mentioned in scope and findings | no |
| Wasabi_Perps_Solana_Audit_Sherlock.pdf | ClosePositionCleanup | unmatched — not counted | — | mentioned in scope and findings | no |
| Wasabi_Perps_Solana_Audit_Sherlock.pdf | StopLossCleanup | unmatched — not counted | — | mentioned in scope and findings | no |
| Wasabi_Perps_Solana_Audit_Sherlock.pdf | TakeProfitCleanup | unmatched — not counted | — | mentioned in scope and findings | no |
| Wasabi_Perps_Solana_Audit_Sherlock.pdf | ClaimPosition | unmatched — not counted | — | mentioned in scope and findings | no |
| Wasabi_Perps_Solana_Audit_Sherlock.pdf | LiquidatePositionSetup | unmatched — not counted | — | mentioned in scope and findings | no |
| Wasabi_Perps_Solana_Audit_Sherlock.pdf | LiquidatePositionCleanup | unmatched — not counted | — | mentioned in scope and findings | no |
| Wasabi_Perps_Solana_Audit_Sherlock.pdf | Mint | unmatched — not counted | — | mentioned in scope and findings | no |
| Wasabi_Perps_Solana_Audit_Sherlock.pdf | Deposit | unmatched — not counted | — | mentioned in scope and findings | no |
| Wasabi_Perps_Solana_Audit_Sherlock.pdf | Withdraw | unmatched — not counted | — | mentioned in scope and findings | no |
| Wasabi_Perps_Solana_Audit_Sherlock.pdf | Donate | unmatched — not counted | — | mentioned in scope and findings | no |
| Wasabi_Perps_Solana_Audit_Sherlock.pdf | InitGlobalSettings | unmatched — not counted | — | mentioned in scope and findings | no |
| Wasabi_Perps_Solana_Audit_Sherlock.pdf | InitDebtController | unmatched — not counted | — | mentioned in scope and findings | no |
| Wasabi_Perps_Solana_Audit_Sherlock.pdf | SetMaxApy | unmatched — not counted | — | mentioned in scope and findings | no |
| Wasabi_Perps_Solana_Audit_Sherlock.pdf | SetMaxLeverage | unmatched — not counted | — | mentioned in scope and findings | no |
| Wasabi_Perps_Solana_Audit_Sherlock.pdf | RemovePermission | unmatched — not counted | — | mentioned in scope and findings | no |
| Wasabi_Perps_Solana_Audit_Sherlock.pdf | ClosePermission | unmatched — not counted | — | mentioned in scope and findings | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| berachain | `0x0da575...6bb12b` | BeraLongPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0x3ee6c6...0df1ee` | WasabiShortPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 2 |
| standard_library | 3 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Address-book scope dispositions: 4 own (4 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 2 ambiguous, 92 unmatched
- Matched-own operational status: 4 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=6
- Match method counts: temporal_name=2, unique_name=2

Zero-match audit list:

- [3106] Narya.ai_Wasabi_Smart_Contract_Audit.pdf
- [3107] Zellic_Wasabi_Smart_Contract_Audit.pdf
- [3108] 0xfoobar_Wasabi_Smart_Contract_Audit.pdf
- [3112] Wasabi_Perps_EVM_Audit_Sherlock.pdf
- [3113] Wasabi_Perps_Solana_Audit_Sherlock.pdf

Fork inheritance lineage and inherited audits are included when available.
