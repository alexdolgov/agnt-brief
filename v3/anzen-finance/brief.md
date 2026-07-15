# Agentic Audit Brief: Anzen Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 17 across 7 audit(s)
- Eligible audit results: 8 (7 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

⚠️ Lifecycle status: UNKNOWN - TVL dropped 54.1% over 90 days

## Project Overview

- Project: Anzen Finance (`anzen-finance`)
- Website: [https://anzen.finance/](https://anzen.finance/)
- Lifecycle: unknown (Tier 0, 93.8% below peak)
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, blast, ethereum, manta-pacific
- Contract surface: 31 unique implementations (34 raw deployments)
- Coverage basis: 4/30 confirmed own live verified implementations (13.3%); conservative 13.3% with 0 needs-review implementation(s)
- DeFi Llama TVL: $7,901,293.00
- On-chain TVL (included contracts): $446,085.12
- TVL by chain: Base $446,085.12

## Project Description

This brief describes the observed EVM deployment and audit surface for Anzen Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 30 contract row(s) across arbitrum, base, blast, ethereum, manta-pacific. Structural roles: 15 supporting, 14 core, 1 unclassified. 2 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 30
- Structural roles: supporting (15), core (14), unclassified (1)
- Contract kinds: contract (28), abstract (2)
- Detected standards: ownable (12), erc165 (10), erc20 (10), pausable (10), ownable2step (7), accesscontrol (5), erc20permit (4), erc1967proxy (1), erc4626 (1)
- Frameworks: openzeppelin (12), chainlink (5), axelar (2), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 2

## Fork Analysis

0 of 34 contracts are derived from known codebases. 34 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0xf6f0a0...e40a5c`, chain 81457)
- AnzenLayerZeroAdapter (`0x04d5dd...7f1938`, chain 169)
- AnzenLayerZeroAdapter (`0xe31ee1...cbf0cf`, chain 169)
- AnzenLayerZeroAdapter (`0x547213...a27fd7`, chain 8453)
- AnzenLayerZeroAdapter (`0xdd2161...30d58e`, chain 42161)
- AnzenLayerZeroAdapter (`0xe563ec...ddac32`, chain 42161)
- AnzenLayerZeroAdapter (`0x04d5dd...7f1938`, chain 81457)
- AnzenLayerZeroAdapter (`0x5a1b8c...6ea129`, chain 81457)
- ChildsUSDzV2 (`0x8f08a3...a91758`, chain 169)
- ChildsUSDzV2 (`0xe31ee1...cbf0cf`, chain 8453)
- ChildsUSDzV2 (`0x1b2c29...5c879d`, chain 42161)
- ChildsUSDzV2 (`0x73d23f...f2a7e4`, chain 81457)
- ChildUSDz (`0x04d5dd...7f1938`, chain 8453)
- ChildUSDzV2 (`0x73d23f...f2a7e4`, chain 169)
- ChildUSDzV2 (`0x501860...a4b94f`, chain 42161)
- ChildUSDzV2 (`0x52056e...46e8c6`, chain 81457)
- EACAggregatorProxy (`0xe25969...d60b48`, chain 8453)
- GnosisSafeProxy (`0x20b15e...71eb3b`, chain 1)
- GnosisSafeProxy (`0x13649b...147210`, chain 169)
- GnosisSafeProxy (`0x18b7d4...2ad582`, chain 169)
- GnosisSafeProxy (`0x18b7d4...2ad582`, chain 8453)
- SafeProxy (`0x08fccc...32b354`, chain 81457)
- SPCTPool (`0xf30a29...800d29`, chain 1)
- SUSDz (`0x547213...a27fd7`, chain 1)
- sUSDzOFTAdapter (`0x0c0dff...daf1b7`, chain 1)
- sUSDzUSDzExchangeRateChainlinkAdapter (`0x8047f6...c31869`, chain 1)
- TokenManagerProxy (`0xf6f0a0...e40a5c`, chain 1)
- TokenManagerProxy (`0xf6f0a0...e40a5c`, chain 8453)
- TransparentUpgradeableProxy (`0xeec468...ae4ca3`, chain 8453)
- USDz (`0xa469b7...a10067`, chain 1)
- Vault (`0x5a1b8c...6ea129`, chain 169)
- Vault (`0xd4cd16...cbbaac`, chain 8453)
- VaultV2 (`0x73d23f...f2a7e4`, chain 42161)
- VaultV2 (`0xf3588e...0cfe09`, chain 81457)

## Contract Surface Quality

- Indexed contracts: 30; live-surface contracts included: 30 (29 live, 1 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 34/36 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 4/30 (13.3%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 31 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 5
- Deployed-live implementations: 31 of 31 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 4/30
- Verified + Unaudited implementations: 26
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 31
- Raw deployments: 34
- Audits discovered: 8 (8 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 7
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-12 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 6 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 4 match-unverified
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [unknown]. ASD of n/a represents exposure in a protocol with unknown activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Zellic | Tier 2 | 4 | 13.3% | 2024-12 |
| Halborn | Tier 2 | 3 | 10.0% | 2024-05 |
| PeckShield | Tier 2 | 2 | 6.7% | 2024-04 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AnzenToken | token | project_anchor | own_supporting | 1 | base | unit-379255 | `0xeec468...ae4ca3` | ✅ Audited |
| ChildUSDz | unknown | project_anchor | own_supporting | 0 | base | unit-379239 | `0x04d5dd...7f1938` | ✅ Audited |
| SPCTPool | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379218 | `0xf30a29...800d29` | ✅ Audited |
| SUSDz | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379215 | `0x547213...a27fd7` | ✅ Audited |

### ⚠️ Verified + Unaudited (26)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AnzenLayerZeroAdapter | adapter | project_anchor | own_supporting | 0 | manta-pacific | unit-379219 | `0x04d5dd...7f1938` | ⚠️ Unaudited |
| AnzenLayerZeroAdapter | adapter | project_anchor | own_supporting | 0 | manta-pacific | unit-379227 | `0xe31ee1...cbf0cf` | ⚠️ Unaudited |
| AnzenLayerZeroAdapter | adapter | project_anchor | own_supporting | 0 | arbitrum | unit-379231 | `0xdd2161...30d58e` | ⚠️ Unaudited |
| AnzenLayerZeroAdapter | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-379232 | `0xe563ec...ddac32` | ⚠️ Unaudited |
| AnzenLayerZeroAdapter | adapter | project_anchor | own_supporting | 0 | blast | unit-379233 | 3 deployments: base `0x547213...a27fd7`; blast `0x04d5dd...7f1938`; blast `0x5a1b8c...6ea129` | ⚠️ Unaudited |
| ChildsUSDzV2 | unknown | project_anchor | own_supporting | 0 | manta-pacific | unit-379226 | `0x8f08a3...a91758` | ⚠️ Unaudited |
| ChildsUSDzV2 | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-379228 | `0x1b2c29...5c879d` | ⚠️ Unaudited |
| ChildsUSDzV2 | unknown | project_anchor | own_supporting | 0 | blast | unit-379237 | 2 deployments: base `0xe31ee1...cbf0cf`; blast `0x73d23f...f2a7e4` | ⚠️ Unaudited |
| ChildUSDzV2 | unknown | project_anchor | own_supporting | 0 | manta-pacific | unit-379225 | `0x73d23f...f2a7e4` | ⚠️ Unaudited |
| ChildUSDzV2 | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-379229 | `0x501860...a4b94f` | ⚠️ Unaudited |
| ChildUSDzV2 | unknown | project_anchor | own_supporting | 0 | blast | unit-379235 | `0x52056e...46e8c6` | ⚠️ Unaudited |
| EACAggregatorProxy | unknown | project_anchor | own_supporting | 0 | base | unit-379244 | `0xe25969...d60b48` | ⚠️ Unaudited |
| GnosisSafe | unknown | project_anchor | own_supporting | 1 | ethereum | unit-379250 | `0x20b15e...71eb3b` | ⚠️ Unaudited |
| GnosisSafeProxy | governance | project_anchor | own_supporting | 0 | manta-pacific | unit-379221 | `0x13649b...147210` | ⚠️ Unaudited |
| GnosisSafeProxy | governance | project_anchor | own_supporting | 0 | manta-pacific | unit-379222 | `0x18b7d4...2ad582` | ⚠️ Unaudited |
| GnosisSafeProxy | governance | project_anchor | own_supporting | 0 | base | unit-379240 | `0x18b7d4...2ad582` | ⚠️ Unaudited |
| SafeProxy | unknown | project_anchor | own_supporting | 0 | blast | unit-379234 | `0x08fccc...32b354` | ⚠️ Unaudited |
| sUSDzOFTAdapter | adapter | project_anchor | own_supporting | 0 | ethereum | unit-379213 | `0x0c0dff...daf1b7` | ⚠️ Unaudited |
| sUSDzUSDzExchangeRateChainlinkAdapter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379216 | `0x8047f6...c31869` | ⚠️ Unaudited |
| TokenManager | governance | project_anchor | own_supporting | 1 | ethereum | unit-379248 | `0xf6f0a0...e40a5c` | ⚠️ Unaudited |
| TokenManager | governance | project_anchor | own_supporting | 1 | base | unit-379254 | `0xf6f0a0...e40a5c` | ⚠️ Unaudited |
| USDz | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379217 | `0xa469b7...a10067` | ⚠️ Unaudited |
| Vault | core_logic | project_anchor | own_supporting | 0 | manta-pacific | unit-379224 | `0x5a1b8c...6ea129` | ⚠️ Unaudited |
| Vault | core_logic | project_anchor | own_supporting | 0 | base | unit-379242 | `0xd4cd16...cbbaac` | ⚠️ Unaudited |
| VaultV2 | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-379230 | `0x73d23f...f2a7e4` | ⚠️ Unaudited |
| VaultV2 | unknown | project_anchor | own_supporting | 0 | blast | unit-379238 | `0xf3588e...0cfe09` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| TokenManager | governance | project_anchor | own_supporting | 1 | blast | unit-379252 | `0xf6f0a0...e40a5c` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Anzen - Halborn Audit Report.pdf](https://github.com/Anzen-Finance/audits/blob/master/Anzen%20-%20Halborn%20Audit%20Report.pdf) | Halborn | Audit | 2024-05 | stale | Direct | contract_name | matched | 3 | 0 | 0 | 15 | high |
| [Anzen - PeckShield Audit Report.pdf](https://github.com/Anzen-Finance/audits/blob/master/Anzen%20-%20PeckShield%20Audit%20Report.pdf) | PeckShield | Audit | 2024-04 | stale | Direct | contract_name | matched | 3 | 0 | 0 | 1 | high |
| [Anzen - Zellic Audit Report.pdf](https://github.com/Anzen-Finance/audits/blob/master/Anzen%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2024-05 | stale | Direct | contract_name | matched | 3 | 0 | 0 | 6 | high |
| [Anzen and protocol-v2 - Zellic Audit Report.pdf](https://github.com/Zellic/publications/blob/master/Anzen%20and%20protocol-v2%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2024-12 | aging | Direct | n/a | matched | 1 | 1 | 0 | 21 | n/a |
| [drive.google.com/drive/folders/1xjQkrQJJeMZQldfdnCGaaj5FiGHaGRmm](https://drive.google.com/drive/folders/1xjQkrQJJeMZQldfdnCGaaj5FiGHaGRmm?usp=sharing) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Anzen - Halborn Audit Report.pdf](https://496476276-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F8h7qQqQqo2Jc9kccJQTQ%2Fuploads%2FNcAASiVYTOLTj4qZjNKO%2FAnzen%20-%20Halborn%20Audit%20Report.pdf) | Halborn | Audit | 2024-05 | stale | Direct | contract_name | matched | 3 | 0 | 0 | 15 | high |
| [Anzen - Zellic Audit Report.pdf](https://496476276-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F8h7qQqQqo2Jc9kccJQTQ%2Fuploads%2FgekUuU3OoggR8PP1p0A5%2FAnzen%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2024-05 | stale | Direct | contract_name | matched | 3 | 0 | 0 | 6 | high |
| [Anzen - PeckShield Audit Report.pdf](https://496476276-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F8h7qQqQqo2Jc9kccJQTQ%2Fuploads%2FkzYadNTHkZGdzuF8PTzj%2FAnzen%20-%20PeckShield%20Audit%20Report.pdf) | PeckShield | Audit | 2024-04 | stale | Direct | contract_name | matched | 3 | 0 | 0 | 1 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2161] Anzen - Halborn Audit Report.pdf — matched: Scope section explicitly lists all files in scope. Audit date is the end date of the engagement (05/07/2024).
- [2162] Anzen - PeckShield Audit Report.pdf — matched: Contracts extracted from findings targets and protocol description. No explicit scope table, but findings clearly indicate audited contracts.
- [2163] Anzen - Zellic Audit Report.pdf — matched: Extracted 9 contract names from the scope section (page 9) and threat model modules. Audit date from cover page: May 21, 2024.
- [2164] Anzen and protocol-v2 - Zellic Audit Report.pdf — matched: No reason recorded
- [2166] drive.google.com/drive/folders/1xjQkrQJJeMZQldfdnCGaaj5FiGHaGRmm — no match: The provided text is a Google Drive page listing brand assets (logos, mascot, brand guide) for 'Anzen'. No smart contract names, audit scope, or audit date are present.
- [26485] Anzen - Halborn Audit Report.pdf — matched: Scope section explicitly lists all files in scope. Audit date is the end date of the engagement (05/07/2024).
- [26486] Anzen - Zellic Audit Report.pdf — matched: Extracted 9 contract names from the scope section (page 9) and threat model modules. Audit date from cover page: May 21, 2024.
- [26487] Anzen - PeckShield Audit Report.pdf — matched: Extracted from audit report cover page and findings targets.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Anzen - Halborn Audit Report.pdf | Canto_childUSDz | unmatched — not counted | — | listed in scope | no |
| Anzen - Halborn Audit Report.pdf | ISPCTPool | unmatched — not counted | — | listed in scope | no |
| Anzen - Halborn Audit Report.pdf | IsUSDz | unmatched — not counted | — | listed in scope | no |
| Anzen - Halborn Audit Report.pdf | ISPCTPriceOracle | unmatched — not counted | — | listed in scope | no |
| Anzen - Halborn Audit Report.pdf | ITurnstile | unmatched — not counted | — | listed in scope | no |
| Anzen - Halborn Audit Report.pdf | IUSDz | unmatched — not counted | — | listed in scope | no |
| Anzen - Halborn Audit Report.pdf | IchildUSDz | unmatched — not counted | — | listed in scope | no |
| Anzen - Halborn Audit Report.pdf | IUSDzFlat | unmatched — not counted | — | listed in scope | no |
| Anzen - Halborn Audit Report.pdf | IUSDzPriceOracle | unmatched — not counted | — | listed in scope | no |
| Anzen - Halborn Audit Report.pdf | sUSDz | own contract | ChildsUSDzV2 (alternative) `0x8f08a3...a91758` — deployed 2024-07-11 22:20:49+03 — liveness: live (current_address_book_code)<br>ChildsUSDzV2 (alternative) `0xe31ee1...cbf0cf` — deployed 2024-06-29 01:10:31+03 — liveness: live (code_present_context)<br>ChildsUSDzV2 (alternative) `0x1b2c29...5c879d` — deployed 2024-08-09 13:06:17+03 — liveness: live (current_address_book_code)<br>SUSDz (selected) `0x547213...a27fd7` — deployed 2024-05-16 12:20:11+03 — liveness: live (current_address_book_code)<br>ChildsUSDzV2 (alternative) `0x73d23f...f2a7e4` — deployed 2024-06-29 01:10:39+03 — liveness: live (code_present_context) | deployment-date disambiguation: 2024-05-16 was 9d from audit; next candidate 53d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Anzen - Halborn Audit Report.pdf | USDz | ambiguous — not counted | ChildUSDzV2 (alternative) `0x73d23f...f2a7e4` — deployed 2024-07-11 00:13:59+03 — liveness: live (code_present_context)<br>ChildUSDz (alternative) `0x04d5dd...7f1938` — deployed 2024-05-16 12:41:37+03 — liveness: live (code_present_context)<br>USDz (alternative) `0xa469b7...a10067` — deployed 2024-05-16 12:19:59+03 — liveness: live (current_address_book_code)<br>ChildUSDzV2 (alternative) `0x501860...a4b94f` — deployed 2024-08-19 15:11:27+03 — liveness: live (code_present_context)<br>ChildUSDzV2 (alternative) `0x52056e...46e8c6` — deployed 2024-07-01 10:34:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Anzen - Halborn Audit Report.pdf | USDzFlat | unmatched — not counted | — | listed in scope | no |
| Anzen - Halborn Audit Report.pdf | SPCTPriceOracle | unmatched — not counted | — | listed in scope | no |
| Anzen - Halborn Audit Report.pdf | vault | ambiguous — not counted | Vault (alternative) `0x5a1b8c...6ea129` — deployed 2024-07-30 04:52:09+03 — liveness: live (current_address_book_code)<br>VaultV2 (alternative) `0xf3588e...0cfe09` — deployed 2024-07-31 11:10:21+03 — liveness: live (current_address_book_code)<br>Vault (alternative) `0xd4cd16...cbbaac` — deployed 2024-05-16 12:41:37+03 — liveness: live (current_address_book_code)<br>VaultV2 (alternative) `0x73d23f...f2a7e4` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Anzen - Halborn Audit Report.pdf | SafeMath | unmatched — not counted | — | listed in scope | no |
| Anzen - Halborn Audit Report.pdf | childUSDz | own contract | ChildUSDz (selected) `0x04d5dd...7f1938` — deployed 2024-05-16 12:41:37+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Anzen - Halborn Audit Report.pdf | USDzPriceOracle | unmatched — not counted | — | listed in scope | no |
| Anzen - Halborn Audit Report.pdf | SPCTPool | own contract | SPCTPool (selected) `0xf30a29...800d29` — deployed 2024-05-16 12:19:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Anzen - PeckShield Audit Report.pdf | USDz | ambiguous — not counted | ChildUSDzV2 (alternative) `0x73d23f...f2a7e4` — deployed 2024-07-11 00:13:59+03 — liveness: live (code_present_context)<br>ChildUSDz (alternative) `0x04d5dd...7f1938` — deployed 2024-05-16 12:41:37+03 — liveness: live (code_present_context)<br>USDz (alternative) `0xa469b7...a10067` — deployed 2024-05-16 12:19:59+03 — liveness: live (current_address_book_code)<br>ChildUSDzV2 (alternative) `0x501860...a4b94f` — deployed 2024-08-19 15:11:27+03 — liveness: live (code_present_context)<br>ChildUSDzV2 (alternative) `0x52056e...46e8c6` — deployed 2024-07-01 10:34:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Anzen - PeckShield Audit Report.pdf | sUSDz | own contract | ChildsUSDzV2 (alternative) `0x8f08a3...a91758` — deployed 2024-07-11 22:20:49+03 — liveness: live (current_address_book_code)<br>ChildsUSDzV2 (alternative) `0xe31ee1...cbf0cf` — deployed 2024-06-29 01:10:31+03 — liveness: live (code_present_context)<br>ChildsUSDzV2 (alternative) `0x1b2c29...5c879d` — deployed 2024-08-09 13:06:17+03 — liveness: live (current_address_book_code)<br>SUSDz (selected) `0x547213...a27fd7` — deployed 2024-05-16 12:20:11+03 — liveness: live (current_address_book_code)<br>ChildsUSDzV2 (alternative) `0x73d23f...f2a7e4` — deployed 2024-06-29 01:10:39+03 — liveness: live (code_present_context) | deployment-date disambiguation: 2024-05-16 was 18d from audit; next candidate 62d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Anzen - PeckShield Audit Report.pdf | SPCTPool | own contract | SPCTPool (selected) `0xf30a29...800d29` — deployed 2024-05-16 12:19:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Anzen - PeckShield Audit Report.pdf | SPCT | own contract | SPCTPool (selected) `0xf30a29...800d29` — deployed 2024-05-16 12:19:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Anzen - Zellic Audit Report.pdf | Canto_childUSDz | unmatched — not counted | — | listed in scope as program 'Canto_childUSDz' | no |
| Anzen - Zellic Audit Report.pdf | childUSDz | own contract | ChildUSDz (selected) `0x04d5dd...7f1938` — deployed 2024-05-16 12:41:37+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Anzen - Zellic Audit Report.pdf | SPCTPool | own contract | SPCTPool (selected) `0xf30a29...800d29` — deployed 2024-05-16 12:19:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Anzen - Zellic Audit Report.pdf | SPCTPriceOracle | unmatched — not counted | — | listed in scope as program 'SPCTPriceOracle' | no |
| Anzen - Zellic Audit Report.pdf | sUSDz | own contract | ChildsUSDzV2 (alternative) `0x8f08a3...a91758` — deployed 2024-07-11 22:20:49+03 — liveness: live (current_address_book_code)<br>ChildsUSDzV2 (alternative) `0xe31ee1...cbf0cf` — deployed 2024-06-29 01:10:31+03 — liveness: live (code_present_context)<br>ChildsUSDzV2 (alternative) `0x1b2c29...5c879d` — deployed 2024-08-09 13:06:17+03 — liveness: live (current_address_book_code)<br>SUSDz (selected) `0x547213...a27fd7` — deployed 2024-05-16 12:20:11+03 — liveness: live (current_address_book_code)<br>ChildsUSDzV2 (alternative) `0x73d23f...f2a7e4` — deployed 2024-06-29 01:10:39+03 — liveness: live (code_present_context) | deployment-date disambiguation: 2024-05-16 was 5d from audit; next candidate 39d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Anzen - Zellic Audit Report.pdf | USDz | ambiguous — not counted | ChildUSDzV2 (alternative) `0x73d23f...f2a7e4` — deployed 2024-07-11 00:13:59+03 — liveness: live (code_present_context)<br>ChildUSDz (alternative) `0x04d5dd...7f1938` — deployed 2024-05-16 12:41:37+03 — liveness: live (code_present_context)<br>USDz (alternative) `0xa469b7...a10067` — deployed 2024-05-16 12:19:59+03 — liveness: live (current_address_book_code)<br>ChildUSDzV2 (alternative) `0x501860...a4b94f` — deployed 2024-08-19 15:11:27+03 — liveness: live (code_present_context)<br>ChildUSDzV2 (alternative) `0x52056e...46e8c6` — deployed 2024-07-01 10:34:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Anzen - Zellic Audit Report.pdf | USDzFlat | unmatched — not counted | — | listed in scope as program 'USDzFlat' | no |
| Anzen - Zellic Audit Report.pdf | USDzPriceOracle | unmatched — not counted | — | listed in scope as program 'USDzPriceOracle' | no |
| Anzen - Zellic Audit Report.pdf | vault | ambiguous — not counted | Vault (alternative) `0x5a1b8c...6ea129` — deployed 2024-07-30 04:52:09+03 — liveness: live (current_address_book_code)<br>VaultV2 (alternative) `0xf3588e...0cfe09` — deployed 2024-07-31 11:10:21+03 — liveness: live (current_address_book_code)<br>Vault (alternative) `0xd4cd16...cbbaac` — deployed 2024-05-16 12:41:37+03 — liveness: live (current_address_book_code)<br>VaultV2 (alternative) `0x73d23f...f2a7e4` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Anzen and protocol-v2 - Zellic Audit Report.pdf | AeroStrategy | unmatched — not counted | — | — | no |
| Anzen and protocol-v2 - Zellic Audit Report.pdf | AnzenGaugeControllerBaseUpg | unmatched — not counted | — | — | no |
| Anzen and protocol-v2 - Zellic Audit Report.pdf | AnzenGaugeControllerMainchainUpg | unmatched — not counted | — | — | no |
| Anzen and protocol-v2 - Zellic Audit Report.pdf | AnzenGaugeControllerSidechainUpg | unmatched — not counted | — | — | no |
| Anzen and protocol-v2 - Zellic Audit Report.pdf | AnzenToken | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xeec468...ae4ca3` — deployed 2024-11-28 13:46:21+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Anzen and protocol-v2 - Zellic Audit Report.pdf | AnzenVotingControllerUpg | unmatched — not counted | — | — | no |
| Anzen and protocol-v2 - Zellic Audit Report.pdf | BoringOwnableUpgradeable | unmatched — not counted | — | — | no |
| Anzen and protocol-v2 - Zellic Audit Report.pdf | LockedUsdzMarket | unmatched — not counted | — | — | no |
| Anzen and protocol-v2 - Zellic Audit Report.pdf | LockingToken | unmatched — not counted | — | — | no |
| Anzen and protocol-v2 - Zellic Audit Report.pdf | MainnetUSDzMarket | unmatched — not counted | — | — | no |
| Anzen and protocol-v2 - Zellic Audit Report.pdf | MiniHelpers | unmatched — not counted | — | — | no |
| Anzen and protocol-v2 - Zellic Audit Report.pdf | PMath | unmatched — not counted | — | — | no |
| Anzen and protocol-v2 - Zellic Audit Report.pdf | StakePool | unmatched — not counted | — | — | no |
| Anzen and protocol-v2 - Zellic Audit Report.pdf | TokenHelper | unmatched — not counted | — | — | no |
| Anzen and protocol-v2 - Zellic Audit Report.pdf | VeBalanceLib | unmatched — not counted | — | — | no |
| Anzen and protocol-v2 - Zellic Audit Report.pdf | VeHistoryLib | unmatched — not counted | — | — | no |
| Anzen and protocol-v2 - Zellic Audit Report.pdf | VotingControllerStorageUpg | unmatched — not counted | — | — | no |
| Anzen and protocol-v2 - Zellic Audit Report.pdf | VotingEscrowAnzenMainchain | unmatched — not counted | — | — | no |
| Anzen and protocol-v2 - Zellic Audit Report.pdf | VotingEscrowAnzenSidechain | unmatched — not counted | — | — | no |
| Anzen and protocol-v2 - Zellic Audit Report.pdf | VotingEscrowTokenBase | unmatched — not counted | — | — | no |
| Anzen and protocol-v2 - Zellic Audit Report.pdf | VotingResultBroadcaster | unmatched — not counted | — | — | no |
| Anzen and protocol-v2 - Zellic Audit Report.pdf | WeekMath | unmatched — not counted | — | — | no |
| Anzen - Halborn Audit Report.pdf | Canto_childUSDz | unmatched — not counted | — | listed in scope | no |
| Anzen - Halborn Audit Report.pdf | ISPCTPool | unmatched — not counted | — | listed in scope | no |
| Anzen - Halborn Audit Report.pdf | IsUSDz | unmatched — not counted | — | listed in scope | no |
| Anzen - Halborn Audit Report.pdf | ISPCTPriceOracle | unmatched — not counted | — | listed in scope | no |
| Anzen - Halborn Audit Report.pdf | ITurnstile | unmatched — not counted | — | listed in scope | no |
| Anzen - Halborn Audit Report.pdf | IUSDz | unmatched — not counted | — | listed in scope | no |
| Anzen - Halborn Audit Report.pdf | IchildUSDz | unmatched — not counted | — | listed in scope | no |
| Anzen - Halborn Audit Report.pdf | IUSDzFlat | unmatched — not counted | — | listed in scope | no |
| Anzen - Halborn Audit Report.pdf | IUSDzPriceOracle | unmatched — not counted | — | listed in scope | no |
| Anzen - Halborn Audit Report.pdf | sUSDz | own contract | ChildsUSDzV2 (alternative) `0x8f08a3...a91758` — deployed 2024-07-11 22:20:49+03 — liveness: live (current_address_book_code)<br>ChildsUSDzV2 (alternative) `0xe31ee1...cbf0cf` — deployed 2024-06-29 01:10:31+03 — liveness: live (code_present_context)<br>ChildsUSDzV2 (alternative) `0x1b2c29...5c879d` — deployed 2024-08-09 13:06:17+03 — liveness: live (current_address_book_code)<br>SUSDz (selected) `0x547213...a27fd7` — deployed 2024-05-16 12:20:11+03 — liveness: live (current_address_book_code)<br>ChildsUSDzV2 (alternative) `0x73d23f...f2a7e4` — deployed 2024-06-29 01:10:39+03 — liveness: live (code_present_context) | deployment-date disambiguation: 2024-05-16 was 9d from audit; next candidate 53d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Anzen - Halborn Audit Report.pdf | USDz | ambiguous — not counted | ChildUSDzV2 (alternative) `0x73d23f...f2a7e4` — deployed 2024-07-11 00:13:59+03 — liveness: live (code_present_context)<br>ChildUSDz (alternative) `0x04d5dd...7f1938` — deployed 2024-05-16 12:41:37+03 — liveness: live (code_present_context)<br>USDz (alternative) `0xa469b7...a10067` — deployed 2024-05-16 12:19:59+03 — liveness: live (current_address_book_code)<br>ChildUSDzV2 (alternative) `0x501860...a4b94f` — deployed 2024-08-19 15:11:27+03 — liveness: live (code_present_context)<br>ChildUSDzV2 (alternative) `0x52056e...46e8c6` — deployed 2024-07-01 10:34:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Anzen - Halborn Audit Report.pdf | USDzFlat | unmatched — not counted | — | listed in scope | no |
| Anzen - Halborn Audit Report.pdf | SPCTPriceOracle | unmatched — not counted | — | listed in scope | no |
| Anzen - Halborn Audit Report.pdf | vault | ambiguous — not counted | Vault (alternative) `0x5a1b8c...6ea129` — deployed 2024-07-30 04:52:09+03 — liveness: live (current_address_book_code)<br>VaultV2 (alternative) `0xf3588e...0cfe09` — deployed 2024-07-31 11:10:21+03 — liveness: live (current_address_book_code)<br>Vault (alternative) `0xd4cd16...cbbaac` — deployed 2024-05-16 12:41:37+03 — liveness: live (current_address_book_code)<br>VaultV2 (alternative) `0x73d23f...f2a7e4` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Anzen - Halborn Audit Report.pdf | SafeMath | unmatched — not counted | — | listed in scope | no |
| Anzen - Halborn Audit Report.pdf | childUSDz | own contract | ChildUSDz (selected) `0x04d5dd...7f1938` — deployed 2024-05-16 12:41:37+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Anzen - Halborn Audit Report.pdf | USDzPriceOracle | unmatched — not counted | — | listed in scope | no |
| Anzen - Halborn Audit Report.pdf | SPCTPool | own contract | SPCTPool (selected) `0xf30a29...800d29` — deployed 2024-05-16 12:19:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Anzen - Zellic Audit Report.pdf | Canto_childUSDz | unmatched — not counted | — | listed in scope as program 'Canto_childUSDz' | no |
| Anzen - Zellic Audit Report.pdf | childUSDz | own contract | ChildUSDz (selected) `0x04d5dd...7f1938` — deployed 2024-05-16 12:41:37+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Anzen - Zellic Audit Report.pdf | SPCTPool | own contract | SPCTPool (selected) `0xf30a29...800d29` — deployed 2024-05-16 12:19:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Anzen - Zellic Audit Report.pdf | SPCTPriceOracle | unmatched — not counted | — | listed in scope as program 'SPCTPriceOracle' | no |
| Anzen - Zellic Audit Report.pdf | sUSDz | own contract | ChildsUSDzV2 (alternative) `0x8f08a3...a91758` — deployed 2024-07-11 22:20:49+03 — liveness: live (current_address_book_code)<br>ChildsUSDzV2 (alternative) `0xe31ee1...cbf0cf` — deployed 2024-06-29 01:10:31+03 — liveness: live (code_present_context)<br>ChildsUSDzV2 (alternative) `0x1b2c29...5c879d` — deployed 2024-08-09 13:06:17+03 — liveness: live (current_address_book_code)<br>SUSDz (selected) `0x547213...a27fd7` — deployed 2024-05-16 12:20:11+03 — liveness: live (current_address_book_code)<br>ChildsUSDzV2 (alternative) `0x73d23f...f2a7e4` — deployed 2024-06-29 01:10:39+03 — liveness: live (code_present_context) | deployment-date disambiguation: 2024-05-16 was 5d from audit; next candidate 39d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Anzen - Zellic Audit Report.pdf | USDz | ambiguous — not counted | ChildUSDzV2 (alternative) `0x73d23f...f2a7e4` — deployed 2024-07-11 00:13:59+03 — liveness: live (code_present_context)<br>ChildUSDz (alternative) `0x04d5dd...7f1938` — deployed 2024-05-16 12:41:37+03 — liveness: live (code_present_context)<br>USDz (alternative) `0xa469b7...a10067` — deployed 2024-05-16 12:19:59+03 — liveness: live (current_address_book_code)<br>ChildUSDzV2 (alternative) `0x501860...a4b94f` — deployed 2024-08-19 15:11:27+03 — liveness: live (code_present_context)<br>ChildUSDzV2 (alternative) `0x52056e...46e8c6` — deployed 2024-07-01 10:34:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Anzen - Zellic Audit Report.pdf | USDzFlat | unmatched — not counted | — | listed in scope as program 'USDzFlat' | no |
| Anzen - Zellic Audit Report.pdf | USDzPriceOracle | unmatched — not counted | — | listed in scope as program 'USDzPriceOracle' | no |
| Anzen - Zellic Audit Report.pdf | vault | ambiguous — not counted | Vault (alternative) `0x5a1b8c...6ea129` — deployed 2024-07-30 04:52:09+03 — liveness: live (current_address_book_code)<br>VaultV2 (alternative) `0xf3588e...0cfe09` — deployed 2024-07-31 11:10:21+03 — liveness: live (current_address_book_code)<br>Vault (alternative) `0xd4cd16...cbbaac` — deployed 2024-05-16 12:41:37+03 — liveness: live (current_address_book_code)<br>VaultV2 (alternative) `0x73d23f...f2a7e4` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Anzen - PeckShield Audit Report.pdf | USDz | ambiguous — not counted | ChildUSDzV2 (alternative) `0x73d23f...f2a7e4` — deployed 2024-07-11 00:13:59+03 — liveness: live (code_present_context)<br>ChildUSDz (alternative) `0x04d5dd...7f1938` — deployed 2024-05-16 12:41:37+03 — liveness: live (code_present_context)<br>USDz (alternative) `0xa469b7...a10067` — deployed 2024-05-16 12:19:59+03 — liveness: live (current_address_book_code)<br>ChildUSDzV2 (alternative) `0x501860...a4b94f` — deployed 2024-08-19 15:11:27+03 — liveness: live (code_present_context)<br>ChildUSDzV2 (alternative) `0x52056e...46e8c6` — deployed 2024-07-01 10:34:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Anzen - PeckShield Audit Report.pdf | sUSDz | own contract | ChildsUSDzV2 (alternative) `0x8f08a3...a91758` — deployed 2024-07-11 22:20:49+03 — liveness: live (current_address_book_code)<br>ChildsUSDzV2 (alternative) `0xe31ee1...cbf0cf` — deployed 2024-06-29 01:10:31+03 — liveness: live (code_present_context)<br>ChildsUSDzV2 (alternative) `0x1b2c29...5c879d` — deployed 2024-08-09 13:06:17+03 — liveness: live (current_address_book_code)<br>SUSDz (selected) `0x547213...a27fd7` — deployed 2024-05-16 12:20:11+03 — liveness: live (current_address_book_code)<br>ChildsUSDzV2 (alternative) `0x73d23f...f2a7e4` — deployed 2024-06-29 01:10:39+03 — liveness: live (code_present_context) | deployment-date disambiguation: 2024-05-16 was 18d from audit; next candidate 62d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Anzen - PeckShield Audit Report.pdf | SPCTPool | own contract | SPCTPool (selected) `0xf30a29...800d29` — deployed 2024-05-16 12:19:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Anzen - PeckShield Audit Report.pdf | SPCT | own contract | SPCTPool (selected) `0xf30a29...800d29` — deployed 2024-05-16 12:19:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| manta-pacific | `0x04d5dd...7f1938` | AnzenLayerZeroAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta-pacific | `0xe31ee1...cbf0cf` | AnzenLayerZeroAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xdd2161...30d58e` | AnzenLayerZeroAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | `0x04d5dd...7f1938` | AnzenLayerZeroAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta-pacific | `0x8f08a3...a91758` | ChildsUSDzV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x1b2c29...5c879d` | ChildsUSDzV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | `0x73d23f...f2a7e4` | ChildsUSDzV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta-pacific | `0x73d23f...f2a7e4` | ChildUSDzV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x501860...a4b94f` | ChildUSDzV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | `0x52056e...46e8c6` | ChildUSDzV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xe25969...d60b48` | EACAggregatorProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0c0dff...daf1b7` | sUSDzOFTAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf6f0a0...e40a5c` | TokenManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa469b7...a10067` | USDz | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta-pacific | `0x5a1b8c...6ea129` | Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xd4cd16...cbbaac` | Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | `0xf3588e...0cfe09` | VaultV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 21 |
| upstream | 1 |
| standard_library | 5 |
| needs_review | 4 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 19 own (1 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 10 ambiguous, 55 unmatched
- Matched-own operational status: 19 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=6, low=1
- Match method counts: temporal_name=6, unique_name=11

Zero-match audit list:

- [2166] drive.google.com/drive/folders/1xjQkrQJJeMZQldfdnCGaaj5FiGHaGRmm

Fork inheritance lineage and inherited audits are included when available.
