# Agentic Audit Brief: Hyperbeat

## Export Authority

- Production state: **published scope**
- Raw selected rows: 13 across 5 audit(s)
- Eligible audit results: 14 (5 matched; 9 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Hyperbeat (`hyperbeat`)
- Website: [https://app.hyperbeat.org/earn?referral=5C37264D](https://app.hyperbeat.org/earn?referral=5C37264D)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum, hyperliquid
- Contract surface: 23 unique implementations (23 raw deployments)
- Coverage basis: 7/22 confirmed own live verified implementations (31.8%); conservative 31.8% with 0 needs-review implementation(s)
- DeFi Llama TVL: $43,666,095.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Hyperbeat. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 31 contract row(s) across ethereum, hyperliquid. Structural roles: 16 unclassified, 9 supporting, 6 core. 9 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 31
- Structural roles: unclassified (16), supporting (9), core (6)
- Contract kinds: contract (31)
- Detected standards: erc20 (3), erc165 (2), erc1967proxy (2), pausable (2), accesscontrol (1), erc20permit (1)
- Frameworks: openzeppelin (11), openzeppelin-upgradeable (9), solmate (3)
- Upgradeable-pattern rows: 9

## Fork Analysis

0 of 14 contracts are derived from known codebases. 14 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x6e0b9a...23850d`, chain 1)
- BeatPotWithdrawalQueue (`0x7e89ac...045e10`, chain 999)
- BeHYPETimelock (`0xa24af7...4d2de4`, chain 999)
- BoringVault (`0x669abe...bc0cc1`, chain 1)
- MetaMorphoV1_1Factory (`0x1897a8...535c24`, chain 1)
- PreLiquidationFactory (`0x6ff336...f83476`, chain 1)
- PublicAllocator (`0xfd32fa...91c75d`, chain 1)
- TransparentUpgradeableProxy (`0x96c6cb...44b1fb`, chain 999)
- TransparentUpgradeableProxy (`0xc061d3...674f94`, chain 999)
- UUPSProxy (`0x901024...294f76`, chain 999)
- UUPSProxy (`0x9d0b08...822538`, chain 999)
- UUPSProxy (`0xcead89...c38e0b`, chain 999)
- UUPSProxy (`0xd8fc8f...e5dda9`, chain 999)
- VaultToken (`0x4cc221...1b9bba`, chain 999)

## Contract Surface Quality

- Indexed contracts: 31; live-surface contracts included: 31 (22 live, 9 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 23/37 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 7/22 (31.8%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 23 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 15
- Deployed-live implementations: 23 of 23 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 7/22
- Verified + Unaudited implementations: 15
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 23
- Raw deployments: 23
- Audits discovered: 14 (14 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 5
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-12 (fresh)
- Audit staleness (calendar age): 6 fresh, 3 aging, 3 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 7 match-unverified
- Tier 1 coverage: 4.5% (Certora)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Pashov Audit Group | Tier 2 | 5 | 22.7% | 2025-09 |
| Certora | Tier 1 | 1 | 4.5% | 2025-10 |
| Nethermind | Tier 2 | 1 | 4.5% | 2025-10 |
| Zellic | Tier 2 | 1 | 4.5% | 2025-01 |

## Contract Surface

### ✅ Verified + Audited (7)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BeatPotWithdrawalQueue | operational_periphery | project_anchor | own_supporting | 0 | hyperliquid | unit-242244 | `0x7e89ac...045e10` | ✅ Audited |
| BeHYPE | unknown | project_anchor | own_supporting | 1 | hyperliquid | unit-242254 | `0xd8fc8f...e5dda9` | ✅ Audited |
| BeHYPETimelock | governance | project_anchor | own_supporting | 0 | hyperliquid | unit-242245 | `0xa24af7...4d2de4` | ✅ Audited |
| RoleRegistry | registry | project_anchor | own_supporting | 1 | hyperliquid | unit-242255 | `0x901024...294f76` | ✅ Audited |
| StakingCore | unknown | project_anchor | own_supporting | 1 | hyperliquid | unit-242256 | `0xcead89...c38e0b` | ✅ Audited |
| VaultToken | core_logic | project_anchor | own_supporting | 0 | hyperliquid | unit-242243 | `0x4cc221...1b9bba` | ✅ Audited |
| WithdrawManager | operational_periphery | project_anchor | own_supporting | 1 | hyperliquid | unit-242259 | `0x9d0b08...822538` | ✅ Audited |

### ⚠️ Verified + Unaudited (15)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BeatPot | unknown | project_anchor | own_supporting | 1 | hyperliquid | unit-242248 | `0x53f971...4c8425` | ⚠️ Unaudited |
| BoringVault | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-242230 | `0x669abe...bc0cc1` | ⚠️ Unaudited |
| dnHYPE | unknown | project_anchor | own_supporting | 1 | hyperliquid | unit-242260 | `0x949a72...3e6f29` | ⚠️ Unaudited |
| dnPUMP | unknown | project_anchor | own_supporting | 1 | hyperliquid | unit-242258 | `0x8858a3...09c39b` | ⚠️ Unaudited |
| hbUSDC | unknown | project_anchor | own_supporting | 1 | hyperliquid | unit-242249 | `0x057ced...6e8a61` | ⚠️ Unaudited |
| hbUSDT | unknown | project_anchor | own_supporting | 1 | hyperliquid | unit-242250 | `0x5e1052...2e61eb` | ⚠️ Unaudited |
| hbXAUt | unknown | project_anchor | own_supporting | 1 | hyperliquid | unit-242252 | `0x6eb672...dc05f8` | ⚠️ Unaudited |
| liquidHYPE | unknown | project_anchor | own_supporting | 1 | hyperliquid | unit-242247 | `0x441794...489d29` | ⚠️ Unaudited |
| lstHYPE | unknown | project_anchor | own_supporting | 1 | hyperliquid | unit-242251 | `0x81e064...752a76` | ⚠️ Unaudited |
| MetaMorphoV1_1Factory | registry | project_anchor | own_supporting | 0 | ethereum | unit-242224 | `0x1897a8...535c24` | ⚠️ Unaudited |
| PreLiquidationFactory | registry | project_anchor | own_supporting | 0 | ethereum | unit-242235 | `0x6ff336...f83476` | ⚠️ Unaudited |
| PublicAllocator | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-242242 | `0xfd32fa...91c75d` | ⚠️ Unaudited |
| TokenizedAccount | core_logic | project_anchor | own_supporting | 1 | hyperliquid | unit-242257 | `0x96c6cb...44b1fb` | ⚠️ Unaudited |
| TokenizedAccount | core_logic | project_anchor | own_supporting | 1 | hyperliquid | unit-242253 | `0xc061d3...674f94` | ⚠️ Unaudited |
| wVLP | unknown | project_anchor | own_supporting | 1 | hyperliquid | unit-242246 | `0xd66d69...c4fd42` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242233 | `0x6e0b9a...23850d` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Audits (GitHub directory)](https://github.com/0xhyperbeat/Audits) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [docs.morpho.org/get-started/resources/audits](https://docs.morpho.org/get-started/resources/audits) | Morpho | Audit | 2025-12 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [Zellic.pdf](https://github.com/0xhyperbeat/Audits/blob/main/BeatPot/Zellic.pdf) | Zellic | Audit | 2025-01 | aging | Direct | n/a | matched | 1 | 0 | 0 | 1 | n/a |
| [Codespect.pdf](https://github.com/0xhyperbeat/Audits/blob/main/USD%2B/Codespect.pdf) | Codespect | Audit | 2025-12 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Certora.pdf](https://github.com/0xhyperbeat/Audits/blob/main/Vault-Infra/Certora.pdf) | Certora | Audit | 2025-10 | fresh | Direct | contract_name | matched | 1 | 0 | 0 | 7 | high |
| [Nethermind.pdf](https://github.com/0xhyperbeat/Audits/blob/main/Vault-Infra/Nethermind.pdf) | Nethermind | Audit | 2025-10 | fresh | Direct | contract_name | matched | 1 | 0 | 0 | 11 | high |
| [Certora.pdf](https://github.com/0xhyperbeat/Audits/blob/main/beHYPE/Certora.pdf) | Pashov Audit Group | Audit | 2025-09 | fresh | Direct | contract_name | matched | 5 | 4 | 0 | 4 | high |
| [Pashov.pdf](https://github.com/0xhyperbeat/Audits/blob/main/beHYPE/Pashov.pdf) | Pashov Audit Group | Audit | 2025-09 | fresh | Direct | n/a | matched | 5 | 4 | 0 | 0 | n/a |
| [spaces/LaS0wfc7geC7DaOTDEn7/uploads/sHxOMBpM7X3DSqcRNG82/24.08.09 - SigmaPrime - Audit Report.pdf](https://2798104377-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FLaS0wfc7geC7DaOTDEn7%2Fuploads%2FsHxOMBpM7X3DSqcRNG82%2F24.08.09%20-%20SigmaPrime%20-%20Audit%20Report.pdf) | Sigma Prime | Audit | 2024-08 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 14 | high |
| [spaces/LaS0wfc7geC7DaOTDEn7/uploads/gf7igXLiz7gpv0FctQW8/25.01.21 - ChainSecurity Audit.pdf](https://2798104377-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FLaS0wfc7geC7DaOTDEn7%2Fuploads%2Fgf7igXLiz7gpv0FctQW8%2F25.01.21%20-%20ChainSecurity%20Audit.pdf) | yAudit | Audit | 2025-01 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 11 | high |
| [22.03.18 - Fractal Final Report.pdf](https://content.gitbook.com/content/LaS0wfc7geC7DaOTDEn7/blobs/3UeT78zGv53RD0ugoPeg/22.03.18%20-%20Fractal%20Final%20Report.pdf) | ChainSecurity | Audit | 2022-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [spaces/sPjk0ggBxEJCCnVFFkDR/uploads/1wxK6TgqaRsSgt3ixVMx/Midas_SC Audit Report_25092023_[SA-1833] - POST REMEDIATION.pdf](https://2732961456-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FsPjk0ggBxEJCCnVFFkDR%2Fuploads%2F1wxK6TgqaRsSgt3ixVMx%2FMidas_SC%20Audit%20Report_25092023_%5BSA-1833%5D%20-%20POST%20REMEDIATION.pdf) | Hacken | Audit | 2023-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 18 | high |
| [spaces/sPjk0ggBxEJCCnVFFkDR/uploads/38N1bo36K8FLriRrPDXb/Hacken_Midas_[SCA] Midas_Vault_Dec2023_P-2023-076_1_20240118 16_22.pdf](https://2732961456-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FsPjk0ggBxEJCCnVFFkDR%2Fuploads%2F38N1bo36K8FLriRrPDXb%2FHacken_Midas_%5BSCA%5D%20Midas_Vault_Dec2023_P-2023-076_1_20240118%2016_22.pdf) | Hacken | Audit | 2023-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 18 | high |
| [audits.sherlock.xyz/contests/332](https://audits.sherlock.xyz/contests/332) | Sherlock | Contest | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3867] Audits (GitHub directory) — no match: The provided text is a GitHub repository page listing folder names (BeatPot, USD+, Vault-Infra, Vaults-Solver, Withdrawal-Queue, beHYPE, liquid-bank) but no actual audit report content, scope section, or contract file paths. No contracts in scope could be identified.
- [3868] docs.morpho.org/get-started/resources/audits — no match: Extracted contract names from the scope column of the audit table. No single audit date; multiple dates per row.
- [3869] Zellic.pdf — matched: No reason recorded
- [3870] Codespect.pdf — no match: Two contracts explicitly listed in scope table. Audit date from cover page and final report date.
- [3871] Certora.pdf — matched: All contracts listed in the Project Scope section of the audit report.
- [3872] Nethermind.pdf — matched: All 12 contracts listed in the 'Audited Files' table on page 3 are in scope. Audit date is the final report date: October 1, 2025.
- [3875] Certora.pdf — matched: Scope section explicitly lists 9 contracts with file paths. Audit end date is 04/09/2025.
- [3877] Pashov.pdf — matched: No reason recorded
- [3880] spaces/LaS0wfc7geC7DaOTDEn7/uploads/sHxOMBpM7X3DSqcRNG82/24.08.09 - SigmaPrime - Audit Report.pdf — no match: Extracted 14 contract names from the scope section. Audit date is August 2024, mapped to last day of month.
- [3881] spaces/LaS0wfc7geC7DaOTDEn7/uploads/gf7igXLiz7gpv0FctQW8/25.01.21 - ChainSecurity Audit.pdf — no match: All contracts listed in scope section 2.1.1. Audit date from cover page.
- [3882] 22.03.18 - Fractal Final Report.pdf — no match: Extracted contract names from findings targets and scope section. Audit date from cover page.
- [3883] spaces/sPjk0ggBxEJCCnVFFkDR/uploads/1wxK6TgqaRsSgt3ixVMx/Midas_SC Audit Report_25092023_[SA-1833] - POST REMEDIATION.pdf — no match: All contracts listed in Appendix 2 Scope section of the audit report.
- [3884] spaces/sPjk0ggBxEJCCnVFFkDR/uploads/38N1bo36K8FLriRrPDXb/Hacken_Midas_[SCA] Midas_Vault_Dec2023_P-2023-076_1_20240118 16_22.pdf — no match: All contracts listed in Appendix 2 Scope table. Audit date from cover page: 18/01/2024.
- [3885] audits.sherlock.xyz/contests/332 — no match: The provided text is a header snippet from a contest page, not a full audit report. No contract names or audit date are identifiable.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| docs.morpho.org/get-started/resources/audits | Vault V2 | unmatched — not counted | — | listed in scope table | no |
| docs.morpho.org/get-started/resources/audits | MarketV1AdapterV2 | unmatched — not counted | — | listed in scope table | no |
| docs.morpho.org/get-started/resources/audits | Adapters Registry | unmatched — not counted | — | listed in scope table | no |
| docs.morpho.org/get-started/resources/audits | Vault V1.1 | unmatched — not counted | — | listed in scope table | no |
| docs.morpho.org/get-started/resources/audits | Morpho Blue Periphery - Preliquidation | unmatched — not counted | — | listed in scope table | no |
| docs.morpho.org/get-started/resources/audits | Morpho Blue Periphery - Public Allocator | unmatched — not counted | — | listed in scope table | no |
| docs.morpho.org/get-started/resources/audits | Morpho Blue | unmatched — not counted | — | listed in scope table | no |
| docs.morpho.org/get-started/resources/audits | Vault V1 | unmatched — not counted | — | listed in scope table | no |
| docs.morpho.org/get-started/resources/audits | Morpho Periphery | unmatched — not counted | — | listed in scope table | no |
| docs.morpho.org/get-started/resources/audits | MORPHO Token | unmatched — not counted | — | listed in scope table | no |
| Zellic.pdf | BeatPotV2 | unmatched — not counted | — | — | no |
| Zellic.pdf | BeatPotWithdrawalQueue | own contract | BeatPotWithdrawalQueue (selected) `0x7e89ac...045e10` — deployed 2026-01-19 13:12:00+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Codespect.pdf | MorphoV2Orchestrator | unmatched — not counted | — | Listed in scope table (Section 5.1) and referenced in findings. | no |
| Codespect.pdf | CreditFundExchangeUpdater | unmatched — not counted | — | Listed in scope table (Section 5.1) and referenced in findings. | no |
| Certora.pdf | WithdrawalQueue | ambiguous — not counted | BeatPotWithdrawalQueue (alternative) `0x7e89ac...045e10` — deployed 2026-01-19 13:12:00+03 — liveness: live (current_address_book_code)<br>0x6e0b9a… (alternative) `0x6e0b9a...23850d` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Certora.pdf | ExchangeRateUpdater | unmatched — not counted | — | listed in scope | no |
| Certora.pdf | VaultToken | own contract | VaultToken (selected) `0x4cc221...1b9bba` — deployed 2025-10-25 19:45:00+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Certora.pdf | Pricer | unmatched — not counted | — | listed in scope | no |
| Certora.pdf | DepositReceiver | unmatched — not counted | — | listed in scope | no |
| Certora.pdf | IPriceProvider | unmatched — not counted | — | listed in scope | no |
| Certora.pdf | Depositor | unmatched — not counted | — | listed in scope | no |
| Certora.pdf | OracleAggregator | unmatched — not counted | — | listed in scope | no |
| Nethermind.pdf | OracleAggregator | unmatched — not counted | — | listed in audited files table | no |
| Nethermind.pdf | IAggregatorV3 | unmatched — not counted | — | listed in audited files table | no |
| Nethermind.pdf | IMidasPriceFeed | unmatched — not counted | — | listed in audited files table | no |
| Nethermind.pdf | ICoreWriter | unmatched — not counted | — | listed in audited files table | no |
| Nethermind.pdf | ExchangeRateUpdater | unmatched — not counted | — | listed in audited files table | no |
| Nethermind.pdf | DnCoreWriterVault | unmatched — not counted | — | listed in audited files table | no |
| Nethermind.pdf | DepositReceiver | unmatched — not counted | — | listed in audited files table | no |
| Nethermind.pdf | Pricer | unmatched — not counted | — | listed in audited files table | no |
| Nethermind.pdf | VaultToken | own contract | VaultToken (selected) `0x4cc221...1b9bba` — deployed 2025-10-25 19:45:00+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Nethermind.pdf | WithdrawalQueue | ambiguous — not counted | BeatPotWithdrawalQueue (alternative) `0x7e89ac...045e10` — deployed 2026-01-19 13:12:00+03 — liveness: live (current_address_book_code)<br>0x6e0b9a… (alternative) `0x6e0b9a...23850d` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Nethermind.pdf | Depositor | unmatched — not counted | — | listed in audited files table | no |
| Nethermind.pdf | IPriceProvider | unmatched — not counted | — | listed in audited files table | no |
| Certora.pdf | BeHYPE | own proxy deployment | UUPSProxy (proxy) (selected) `0xd8fc8f...e5dda9` — deployed 2025-09-04 19:57:00+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Certora.pdf | BeHYPETimelock | own contract | BeHYPETimelock (selected) `0xa24af7...4d2de4` — deployed 2025-09-04 20:03:00+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Certora.pdf | RoleRegistry | own proxy deployment | UUPSProxy (proxy) (selected) `0x901024...294f76` — deployed 2025-09-04 19:55:00+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Certora.pdf | StakingCore | own proxy deployment | UUPSProxy (proxy) (selected) `0xcead89...c38e0b` — deployed 2025-09-04 19:59:00+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Certora.pdf | WithdrawManager | own proxy deployment | UUPSProxy (proxy) (selected) `0x9d0b08...822538` — deployed 2025-09-04 20:01:00+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Certora.pdf | BucketLimiter | unmatched — not counted | — | listed in scope | no |
| Certora.pdf | CoreWriter | unmatched — not counted | — | listed in scope | no |
| Certora.pdf | L1Read | unmatched — not counted | — | listed in scope | no |
| Certora.pdf | UUPSProxy | ambiguous — not counted | UUPSProxy (proxy) (alternative) `0x9d0b08...822538` — deployed 2025-09-04 20:01:00+03 — liveness: live (current_address_book_code)<br>UUPSProxy (proxy) (alternative) `0xd8fc8f...e5dda9` — deployed 2025-09-04 19:57:00+03 — liveness: live (current_address_book_code)<br>UUPSProxy (proxy) (alternative) `0xcead89...c38e0b` — deployed 2025-09-04 19:59:00+03 — liveness: live (current_address_book_code)<br>UUPSProxy (proxy) (alternative) `0x901024...294f76` — deployed 2025-09-04 19:55:00+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Pashov.pdf | BeHYPE.sol | own proxy deployment | UUPSProxy (proxy) (selected) `0xd8fc8f...e5dda9` — deployed 2025-09-04 19:57:00+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Pashov.pdf | BeHYPETimelock.sol | own contract | BeHYPETimelock (selected) `0xa24af7...4d2de4` — deployed 2025-09-04 20:03:00+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Pashov.pdf | RoleRegistry.sol | own proxy deployment | UUPSProxy (proxy) (selected) `0x901024...294f76` — deployed 2025-09-04 19:55:00+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Pashov.pdf | StakingCore.sol | own proxy deployment | UUPSProxy (proxy) (selected) `0xcead89...c38e0b` — deployed 2025-09-04 19:59:00+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Pashov.pdf | WithdrawManager.sol | own proxy deployment | UUPSProxy (proxy) (selected) `0x9d0b08...822538` — deployed 2025-09-04 20:01:00+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/LaS0wfc7geC7DaOTDEn7/uploads/sHxOMBpM7X3DSqcRNG82/24.08.09 - SigmaPrime - Audit Report.pdf | LendingPool | unmatched — not counted | — | listed in scope | no |
| spaces/LaS0wfc7geC7DaOTDEn7/uploads/sHxOMBpM7X3DSqcRNG82/24.08.09 - SigmaPrime - Audit Report.pdf | BaseUpgradeableERC20 | unmatched — not counted | — | listed in scope | no |
| spaces/LaS0wfc7geC7DaOTDEn7/uploads/sHxOMBpM7X3DSqcRNG82/24.08.09 - SigmaPrime - Audit Report.pdf | BaseUpgradeableERC4626 | unmatched — not counted | — | listed in scope | no |
| spaces/LaS0wfc7geC7DaOTDEn7/uploads/sHxOMBpM7X3DSqcRNG82/24.08.09 - SigmaPrime - Audit Report.pdf | TimelockedERC4626 | unmatched — not counted | — | listed in scope | no |
| spaces/LaS0wfc7geC7DaOTDEn7/uploads/sHxOMBpM7X3DSqcRNG82/24.08.09 - SigmaPrime - Audit Report.pdf | OwnableLiquidityPool | unmatched — not counted | — | listed in scope | no |
| spaces/LaS0wfc7geC7DaOTDEn7/uploads/sHxOMBpM7X3DSqcRNG82/24.08.09 - SigmaPrime - Audit Report.pdf | AbstractLender | unmatched — not counted | — | listed in scope | no |
| spaces/LaS0wfc7geC7DaOTDEn7/uploads/sHxOMBpM7X3DSqcRNG82/24.08.09 - SigmaPrime - Audit Report.pdf | HookableLender | unmatched — not counted | — | listed in scope | no |
| spaces/LaS0wfc7geC7DaOTDEn7/uploads/sHxOMBpM7X3DSqcRNG82/24.08.09 - SigmaPrime - Audit Report.pdf | BaseLendingPool | unmatched — not counted | — | listed in scope | no |
| spaces/LaS0wfc7geC7DaOTDEn7/uploads/sHxOMBpM7X3DSqcRNG82/24.08.09 - SigmaPrime - Audit Report.pdf | BaseOwnable | unmatched — not counted | — | listed in scope | no |
| spaces/LaS0wfc7geC7DaOTDEn7/uploads/sHxOMBpM7X3DSqcRNG82/24.08.09 - SigmaPrime - Audit Report.pdf | BaseReentrancyGuard | unmatched — not counted | — | listed in scope | no |
| spaces/LaS0wfc7geC7DaOTDEn7/uploads/sHxOMBpM7X3DSqcRNG82/24.08.09 - SigmaPrime - Audit Report.pdf | DateUtils | unmatched — not counted | — | listed in scope | no |
| spaces/LaS0wfc7geC7DaOTDEn7/uploads/sHxOMBpM7X3DSqcRNG82/24.08.09 - SigmaPrime - Audit Report.pdf | IPermissionlessLoansDeployer | unmatched — not counted | — | listed in scope | no |
| spaces/LaS0wfc7geC7DaOTDEn7/uploads/sHxOMBpM7X3DSqcRNG82/24.08.09 - SigmaPrime - Audit Report.pdf | ILenderHook | unmatched — not counted | — | listed in scope | no |
| spaces/LaS0wfc7geC7DaOTDEn7/uploads/sHxOMBpM7X3DSqcRNG82/24.08.09 - SigmaPrime - Audit Report.pdf | IPeerToPeerOpenTermLoan | unmatched — not counted | — | listed in scope | no |
| spaces/LaS0wfc7geC7DaOTDEn7/uploads/gf7igXLiz7gpv0FctQW8/25.01.21 - ChainSecurity Audit.pdf | AddressWhitelist | unmatched — not counted | — | listed in scope | no |
| spaces/LaS0wfc7geC7DaOTDEn7/uploads/gf7igXLiz7gpv0FctQW8/25.01.21 - ChainSecurity Audit.pdf | BaseOwnable | unmatched — not counted | — | listed in scope | no |
| spaces/LaS0wfc7geC7DaOTDEn7/uploads/gf7igXLiz7gpv0FctQW8/25.01.21 - ChainSecurity Audit.pdf | BaseReentrancyGuard | unmatched — not counted | — | listed in scope | no |
| spaces/LaS0wfc7geC7DaOTDEn7/uploads/gf7igXLiz7gpv0FctQW8/25.01.21 - ChainSecurity Audit.pdf | LightweightOwnable | unmatched — not counted | — | listed in scope | no |
| spaces/LaS0wfc7geC7DaOTDEn7/uploads/gf7igXLiz7gpv0FctQW8/25.01.21 - ChainSecurity Audit.pdf | TimelockedCall | unmatched — not counted | — | listed in scope | no |
| spaces/LaS0wfc7geC7DaOTDEn7/uploads/gf7igXLiz7gpv0FctQW8/25.01.21 - ChainSecurity Audit.pdf | BaseUpgradeableERC20v2 | unmatched — not counted | — | listed in scope | no |
| spaces/LaS0wfc7geC7DaOTDEn7/uploads/gf7igXLiz7gpv0FctQW8/25.01.21 - ChainSecurity Audit.pdf | BaseUpgradeableERC4626v2 | unmatched — not counted | — | listed in scope | no |
| spaces/LaS0wfc7geC7DaOTDEn7/uploads/gf7igXLiz7gpv0FctQW8/25.01.21 - ChainSecurity Audit.pdf | TimelockedClaimOnlyERC4626 | unmatched — not counted | — | listed in scope | no |
| spaces/LaS0wfc7geC7DaOTDEn7/uploads/gf7igXLiz7gpv0FctQW8/25.01.21 - ChainSecurity Audit.pdf | IAllocable | unmatched — not counted | — | listed in scope | no |
| spaces/LaS0wfc7geC7DaOTDEn7/uploads/gf7igXLiz7gpv0FctQW8/25.01.21 - ChainSecurity Audit.pdf | TokenizedAccount | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0xc061d3...674f94` — deployed 2025-04-28 16:30:00+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x96c6cb...44b1fb` — deployed 2025-04-04 17:03:00+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| spaces/LaS0wfc7geC7DaOTDEn7/uploads/gf7igXLiz7gpv0FctQW8/25.01.21 - ChainSecurity Audit.pdf | BaseTokenizedAccount | unmatched — not counted | — | listed in scope | no |
| 22.03.18 - Fractal Final Report.pdf | Vault | unmatched — not counted | — | Target in finding 3.1 | no |
| 22.03.18 - Fractal Final Report.pdf | FractalVaultV1 | unmatched — not counted | — | Target in findings 3.3 and 3.4 | no |
| 22.03.18 - Fractal Final Report.pdf | Mintable | unmatched — not counted | — | Target in finding 3.5 | no |
| 22.03.18 - Fractal Final Report.pdf | AddressWhitelist | unmatched — not counted | — | Target in finding 3.5 | no |
| 22.03.18 - Fractal Final Report.pdf | Migrations | unmatched — not counted | — | Target in finding 3.5 | no |
| 22.03.18 - Fractal Final Report.pdf | DexLibrary | unmatched — not counted | — | Target in finding 3.2 | no |
| 22.03.18 - Fractal Final Report.pdf | DateUtils | unmatched — not counted | — | Target in findings 3.7 and 3.8 | no |
| spaces/sPjk0ggBxEJCCnVFFkDR/uploads/1wxK6TgqaRsSgt3ixVMx/Midas_SC Audit Report_25092023_[SA-1833] - POST REMEDIATION.pdf | DepositVault | unmatched — not counted | — | listed in scope | no |
| spaces/sPjk0ggBxEJCCnVFFkDR/uploads/1wxK6TgqaRsSgt3ixVMx/Midas_SC Audit Report_25092023_[SA-1833] - POST REMEDIATION.pdf | RedemptionVault | unmatched — not counted | — | listed in scope | no |
| spaces/sPjk0ggBxEJCCnVFFkDR/uploads/1wxK6TgqaRsSgt3ixVMx/Midas_SC Audit Report_25092023_[SA-1833] - POST REMEDIATION.pdf | stUSD | unmatched — not counted | — | listed in scope | no |
| spaces/sPjk0ggBxEJCCnVFFkDR/uploads/1wxK6TgqaRsSgt3ixVMx/Midas_SC Audit Report_25092023_[SA-1833] - POST REMEDIATION.pdf | ManageableVault | unmatched — not counted | — | listed in scope | no |
| spaces/sPjk0ggBxEJCCnVFFkDR/uploads/1wxK6TgqaRsSgt3ixVMx/Midas_SC Audit Report_25092023_[SA-1833] - POST REMEDIATION.pdf | Blacklistable | unmatched — not counted | — | listed in scope | no |
| spaces/sPjk0ggBxEJCCnVFFkDR/uploads/1wxK6TgqaRsSgt3ixVMx/Midas_SC Audit Report_25092023_[SA-1833] - POST REMEDIATION.pdf | Greenlistable | unmatched — not counted | — | listed in scope | no |
| spaces/sPjk0ggBxEJCCnVFFkDR/uploads/1wxK6TgqaRsSgt3ixVMx/Midas_SC Audit Report_25092023_[SA-1833] - POST REMEDIATION.pdf | MidasAccessControl | unmatched — not counted | — | listed in scope | no |
| spaces/sPjk0ggBxEJCCnVFFkDR/uploads/1wxK6TgqaRsSgt3ixVMx/Midas_SC Audit Report_25092023_[SA-1833] - POST REMEDIATION.pdf | MidasAccessControlRoles | unmatched — not counted | — | listed in scope | no |
| spaces/sPjk0ggBxEJCCnVFFkDR/uploads/1wxK6TgqaRsSgt3ixVMx/Midas_SC Audit Report_25092023_[SA-1833] - POST REMEDIATION.pdf | Pausable | unmatched — not counted | — | listed in scope | no |
| spaces/sPjk0ggBxEJCCnVFFkDR/uploads/1wxK6TgqaRsSgt3ixVMx/Midas_SC Audit Report_25092023_[SA-1833] - POST REMEDIATION.pdf | WithMidasAccessControl | unmatched — not counted | — | listed in scope | no |
| spaces/sPjk0ggBxEJCCnVFFkDR/uploads/1wxK6TgqaRsSgt3ixVMx/Midas_SC Audit Report_25092023_[SA-1833] - POST REMEDIATION.pdf | DataFeed | unmatched — not counted | — | listed in scope | no |
| spaces/sPjk0ggBxEJCCnVFFkDR/uploads/1wxK6TgqaRsSgt3ixVMx/Midas_SC Audit Report_25092023_[SA-1833] - POST REMEDIATION.pdf | IDataFeed | unmatched — not counted | — | listed in scope | no |
| spaces/sPjk0ggBxEJCCnVFFkDR/uploads/1wxK6TgqaRsSgt3ixVMx/Midas_SC Audit Report_25092023_[SA-1833] - POST REMEDIATION.pdf | IDepositVault | unmatched — not counted | — | listed in scope | no |
| spaces/sPjk0ggBxEJCCnVFFkDR/uploads/1wxK6TgqaRsSgt3ixVMx/Midas_SC Audit Report_25092023_[SA-1833] - POST REMEDIATION.pdf | IManageableVault | unmatched — not counted | — | listed in scope | no |
| spaces/sPjk0ggBxEJCCnVFFkDR/uploads/1wxK6TgqaRsSgt3ixVMx/Midas_SC Audit Report_25092023_[SA-1833] - POST REMEDIATION.pdf | IPausable | unmatched — not counted | — | listed in scope | no |
| spaces/sPjk0ggBxEJCCnVFFkDR/uploads/1wxK6TgqaRsSgt3ixVMx/Midas_SC Audit Report_25092023_[SA-1833] - POST REMEDIATION.pdf | IRedemptionVault | unmatched — not counted | — | listed in scope | no |
| spaces/sPjk0ggBxEJCCnVFFkDR/uploads/1wxK6TgqaRsSgt3ixVMx/Midas_SC Audit Report_25092023_[SA-1833] - POST REMEDIATION.pdf | IStUSD | unmatched — not counted | — | listed in scope | no |
| spaces/sPjk0ggBxEJCCnVFFkDR/uploads/1wxK6TgqaRsSgt3ixVMx/Midas_SC Audit Report_25092023_[SA-1833] - POST REMEDIATION.pdf | DecimalsCorrectionLibrary | unmatched — not counted | — | listed in scope | no |
| spaces/sPjk0ggBxEJCCnVFFkDR/uploads/38N1bo36K8FLriRrPDXb/Hacken_Midas_[SCA] Midas_Vault_Dec2023_P-2023-076_1_20240118 16_22.pdf | DepositVault | unmatched — not counted | — | listed in scope table | no |
| spaces/sPjk0ggBxEJCCnVFFkDR/uploads/38N1bo36K8FLriRrPDXb/Hacken_Midas_[SCA] Midas_Vault_Dec2023_P-2023-076_1_20240118 16_22.pdf | RedemptionVault | unmatched — not counted | — | listed in scope table | no |
| spaces/sPjk0ggBxEJCCnVFFkDR/uploads/38N1bo36K8FLriRrPDXb/Hacken_Midas_[SCA] Midas_Vault_Dec2023_P-2023-076_1_20240118 16_22.pdf | mTBILL | unmatched — not counted | — | listed in scope table | no |
| spaces/sPjk0ggBxEJCCnVFFkDR/uploads/38N1bo36K8FLriRrPDXb/Hacken_Midas_[SCA] Midas_Vault_Dec2023_P-2023-076_1_20240118 16_22.pdf | ManageableVault | unmatched — not counted | — | listed in scope table | no |
| spaces/sPjk0ggBxEJCCnVFFkDR/uploads/38N1bo36K8FLriRrPDXb/Hacken_Midas_[SCA] Midas_Vault_Dec2023_P-2023-076_1_20240118 16_22.pdf | MidasInitializable | unmatched — not counted | — | listed in scope table | no |
| spaces/sPjk0ggBxEJCCnVFFkDR/uploads/38N1bo36K8FLriRrPDXb/Hacken_Midas_[SCA] Midas_Vault_Dec2023_P-2023-076_1_20240118 16_22.pdf | Blacklistable | unmatched — not counted | — | listed in scope table | no |
| spaces/sPjk0ggBxEJCCnVFFkDR/uploads/38N1bo36K8FLriRrPDXb/Hacken_Midas_[SCA] Midas_Vault_Dec2023_P-2023-076_1_20240118 16_22.pdf | Greenlistable | unmatched — not counted | — | listed in scope table | no |
| spaces/sPjk0ggBxEJCCnVFFkDR/uploads/38N1bo36K8FLriRrPDXb/Hacken_Midas_[SCA] Midas_Vault_Dec2023_P-2023-076_1_20240118 16_22.pdf | MidasAccessControl | unmatched — not counted | — | listed in scope table | no |
| spaces/sPjk0ggBxEJCCnVFFkDR/uploads/38N1bo36K8FLriRrPDXb/Hacken_Midas_[SCA] Midas_Vault_Dec2023_P-2023-076_1_20240118 16_22.pdf | MidasAccessControlRoles | unmatched — not counted | — | listed in scope table | no |
| spaces/sPjk0ggBxEJCCnVFFkDR/uploads/38N1bo36K8FLriRrPDXb/Hacken_Midas_[SCA] Midas_Vault_Dec2023_P-2023-076_1_20240118 16_22.pdf | Pausable | unmatched — not counted | — | listed in scope table | no |
| spaces/sPjk0ggBxEJCCnVFFkDR/uploads/38N1bo36K8FLriRrPDXb/Hacken_Midas_[SCA] Midas_Vault_Dec2023_P-2023-076_1_20240118 16_22.pdf | WithMidasAccessControl | unmatched — not counted | — | listed in scope table | no |
| spaces/sPjk0ggBxEJCCnVFFkDR/uploads/38N1bo36K8FLriRrPDXb/Hacken_Midas_[SCA] Midas_Vault_Dec2023_P-2023-076_1_20240118 16_22.pdf | DataFeed | unmatched — not counted | — | listed in scope table | no |
| spaces/sPjk0ggBxEJCCnVFFkDR/uploads/38N1bo36K8FLriRrPDXb/Hacken_Midas_[SCA] Midas_Vault_Dec2023_P-2023-076_1_20240118 16_22.pdf | IDataFeed | unmatched — not counted | — | listed in scope table | no |
| spaces/sPjk0ggBxEJCCnVFFkDR/uploads/38N1bo36K8FLriRrPDXb/Hacken_Midas_[SCA] Midas_Vault_Dec2023_P-2023-076_1_20240118 16_22.pdf | IDepositVault | unmatched — not counted | — | listed in scope table | no |
| spaces/sPjk0ggBxEJCCnVFFkDR/uploads/38N1bo36K8FLriRrPDXb/Hacken_Midas_[SCA] Midas_Vault_Dec2023_P-2023-076_1_20240118 16_22.pdf | IManageableVault | unmatched — not counted | — | listed in scope table | no |
| spaces/sPjk0ggBxEJCCnVFFkDR/uploads/38N1bo36K8FLriRrPDXb/Hacken_Midas_[SCA] Midas_Vault_Dec2023_P-2023-076_1_20240118 16_22.pdf | IMTbill | unmatched — not counted | — | listed in scope table | no |
| spaces/sPjk0ggBxEJCCnVFFkDR/uploads/38N1bo36K8FLriRrPDXb/Hacken_Midas_[SCA] Midas_Vault_Dec2023_P-2023-076_1_20240118 16_22.pdf | IRedemptionVault | unmatched — not counted | — | listed in scope table | no |
| spaces/sPjk0ggBxEJCCnVFFkDR/uploads/38N1bo36K8FLriRrPDXb/Hacken_Midas_[SCA] Midas_Vault_Dec2023_P-2023-076_1_20240118 16_22.pdf | DecimalsCorrectionLibrary | unmatched — not counted | — | listed in scope table | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| hyperliquid | `0x53f971...4c8425` | BeatPot | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x669abe...bc0cc1` | BoringVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0x949a72...3e6f29` | dnHYPE | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0x8858a3...09c39b` | dnPUMP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0x057ced...6e8a61` | hbUSDC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0x5e1052...2e61eb` | hbUSDT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0x6eb672...dc05f8` | hbXAUt | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0x441794...489d29` | liquidHYPE | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0x81e064...752a76` | lstHYPE | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6ff336...f83476` | PreLiquidationFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xfd32fa...91c75d` | PublicAllocator | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0x96c6cb...44b1fb` | TokenizedAccount | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0xc061d3...674f94` | TokenizedAccount | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0xd66d69...c4fd42` | wVLP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 21 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 9
- Inherited remapped matches: 0
- Address-book scope dispositions: 13 own (8 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 4 ambiguous, 99 unmatched
- Matched-own operational status: 13 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=10, low=2
- Match method counts: unique_name=13

Zero-match audit list:

- [3867] Audits (GitHub directory)
- [3868] docs.morpho.org/get-started/resources/audits
- [3870] Codespect.pdf
- [3880] spaces/LaS0wfc7geC7DaOTDEn7/uploads/sHxOMBpM7X3DSqcRNG82/24.08.09 - SigmaPrime - Audit Report.pdf
- [3881] spaces/LaS0wfc7geC7DaOTDEn7/uploads/gf7igXLiz7gpv0FctQW8/25.01.21 - ChainSecurity Audit.pdf
- [3882] 22.03.18 - Fractal Final Report.pdf
- [3883] spaces/sPjk0ggBxEJCCnVFFkDR/uploads/1wxK6TgqaRsSgt3ixVMx/Midas_SC Audit Report_25092023_[SA-1833] - POST REMEDIATION.pdf
- [3884] spaces/sPjk0ggBxEJCCnVFFkDR/uploads/38N1bo36K8FLriRrPDXb/Hacken_Midas_[SCA] Midas_Vault_Dec2023_P-2023-076_1_20240118 16_22.pdf
- [3885] audits.sherlock.xyz/contests/332

Fork inheritance lineage and inherited audits are included when available.
