# Agentic Audit Brief: Superstate

## Export Authority

- Production state: **published scope**
- Raw selected rows: 6 across 5 audit(s)
- Eligible audit results: 11 (5 matched; 6 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Superstate (`superstate`)
- Website: [https://superstate.com/](https://superstate.com/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 36 unique implementations (36 raw deployments)
- Coverage basis: 3/4 confirmed own live verified implementations (75.0%); conservative 75.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $872,953,120.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Superstate. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 4 contract row(s) across ethereum. Structural roles: 3 supporting, 1 core. 3 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 4
- Structural roles: supporting (3), core (1)
- Contract kinds: abstract (3), contract (1)
- Detected standards: erc1967proxy (3), chainlinkaggregator (1), ownable (1), ownable2step (1)
- Frameworks: openzeppelin (4), openzeppelin-upgradeable (3), chainlink (1)
- Upgradeable-pattern rows: 3

## Fork Analysis

0 of 7 contracts are derived from known codebases. 7 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x289b50...745aac`, chain 1)
- UnnamedContract (`0x43415e...d31c4e`, chain 1)
- UnnamedContract (`0xaffd8f...9300d9`, chain 1)
- Allowlist (`0x02f1fa...8a38e5`, chain 1)
- RedemptionIdle (`0x4c21b7...1454cf`, chain 1)
- SuperstateOracle (`0xe4fa68...e528a8`, chain 1)
- SuperstateTokenV5_1 (`0x14d60e...74020c`, chain 1)

## Contract Surface Quality

- Indexed contracts: 4; live-surface contracts included: 4 (4 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 7/15 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 3/4 (75.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 7 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 28 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 3
- Deployed-live implementations: 7 of 36 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 3/4
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 3
- Unique implementations: 36
- Raw deployments: 36
- Audits discovered: 11 (11 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 5
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-02 (fresh)
- Audit staleness (calendar age): 2 fresh, 7 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 3 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| 0xMacro | Tier 2 | 3 | 75.0% | 2026-02 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Allowlist | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257471 | `0x02f1fa...8a38e5` | ✅ Audited |
| RedemptionIdle | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257472 | `0x4c21b7...1454cf` | ✅ Audited |
| SuperstateOracle | unknown | project_anchor | own_supporting | 0 | ethereum | unit-257469 | `0xe4fa68...e528a8` | ✅ Audited |

### ⚠️ Verified + Unaudited (29)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AccessControlledAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0086e1...01b423` | ⚠️ Unaudited |
| AccessControlledOCR2Aggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04397a...c67ece` | ⚠️ Unaudited |
| AccessControlledOffchainAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x002c4e...10e5ae` | ⚠️ Unaudited |
| BurnMintTokenPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4841f6...fc544d` | ⚠️ Unaudited |
| ChannelConfigStore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1affdb...0160f3` | ⚠️ Unaudited |
| Configurator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d05b6...2e71b1` | ⚠️ Unaudited |
| ConfirmedTransactionModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04b221...8748ba` | ⚠️ Unaudited |
| DualAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1eeb87...19a5df` | ⚠️ Unaudited |
| EACAggregatorProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x014f60...25e0a5` | ⚠️ Unaudited |
| EquityToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ed862...2a7ee9` | ⚠️ Unaudited |
| FeeManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x48a42f...dcf649` | ⚠️ Unaudited |
| GnosisSafe | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4adfbf...9a993d` | ⚠️ Unaudited |
| GnosisSafeProxyFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ea64a...86e0fb` | ⚠️ Unaudited |
| LockReleaseTokenPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3a2ea8...aa54df` | ⚠️ Unaudited |
| MultiSend | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x77deaa...d64081` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb8d32...a9040f` | ⚠️ Unaudited |
| RewardManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a2a2d...75e7ec` | ⚠️ Unaudited |
| SimpleReadAccessController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70e7d9...a02ab9` | ⚠️ Unaudited |
| SimpleWriteAccessController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe0ba13...c3dcae` | ⚠️ Unaudited |
| SuperstateToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f3bfe...f7270d` | ⚠️ Unaudited |
| SuperstateTokenV5_1 | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257473 | `0x14d60e...74020c` | ⚠️ Unaudited |
| UniswapAnchoredView | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x046728...63a58d` | ⚠️ Unaudited |
| USCC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41feb4...f6852b` | ⚠️ Unaudited |
| USCCv2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ce236...dea2e1` | ⚠️ Unaudited |
| USTB | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3986a1...51a1af` | ⚠️ Unaudited |
| USTBv2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x34ee70...8794da` | ⚠️ Unaudited |
| ValidatorProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x023824...ee7c3c` | ⚠️ Unaudited |
| Verifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa618f1...457d05` | ⚠️ Unaudited |
| VerifierProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaae5ec...ff6582` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (4)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-257459 | `0x06ed3c...e8c35d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-257460 | `0x289b50...745aac` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-257462 | `0x43415e...d31c4e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-257465 | `0xaffd8f...9300d9` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [* <>](https://0xmacro.com/library/audits/superstate-1) | 0xMacro | Audit | 2024-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [* <>](https://0xmacro.com/library/audits/superstate-2) | 0xMacro | Audit | 2024-07 | stale | Direct | contract_name | matched | 1 | 1 | 0 | 4 | high |
| [* <>](https://0xmacro.com/library/audits/superstate-3) | 0xMacro | Audit | 2024-11 | aging | Direct | contract_name | matched | 1 | 0 | 0 | 4 | high |
| [* <>](https://0xmacro.com/library/audits/superstate-4) | 0xMacro | Audit | 2024-11 | aging | Direct | contract_name | matched | 2 | 2 | 0 | 3 | high |
| [* <>](https://0xmacro.com/library/audits/superstate-5) | 0xMacro | Audit | 2025-01 | aging | Direct | contract_name | matched | 1 | 1 | 0 | 7 | high |
| [* <>](https://0xmacro.com/library/audits/superstate-6) | 0xMacro | Audit | 2025-04 | aging | Direct | contract_name | matched | 1 | 1 | 0 | 5 | high |
| [* <>](https://0xmacro.com/library/audits/superstate-7) | 0xMacro | Audit | 2025-05 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |
| [* <>](https://0xmacro.com/library/audits/superstate-8) | 0xMacro | Audit | 2025-05 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [* <>](https://0xmacro.com/library/audits/superstate-9) | 0xMacro | Audit | 2025-07 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [* <>](https://0xmacro.com/library/audits/superstate-10) | 0xMacro | Audit | 2025-11 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [* <>](https://0xmacro.com/library/audits/superstate-11) | 0xMacro | Audit | 2026-02 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [29882] * <> — no match: Only one contract, Redemption.sol, is explicitly listed in the scope. The report mentions 'the following contracts within this repository' but only provides a table with a single entry for Redemption.sol.
- [29883] * <> — matched: Audit report for Superstate A-2, dated July 10, 2024. Scope includes four Solidity contracts and one deployment script as listed in the 'Source Code' section.
- [29884] * <> — matched: Audit report date is November 4th, 2024 from the cover page. Contracts in scope are explicitly listed in the Source Code table. Deployment scripts are also included in scope per the note.
- [29885] * <> — matched: Audit report for Superstate A-4, dated Nov 18th, 2024. Scope includes 5 contracts from two repositories.
- [29886] * <> — matched: All contracts listed in the 'Source Code' table are in scope. The audit date is January 30th, 2025 from the cover page.
- [29887] * <> — matched: Extracted 6 unique contract names from the scope table. Note: ISuperstateToken appears in two repositories but is the same interface name.
- [29888] * <> — no match: Audit report for Superstate A-7, covering Solana Rust programs (not Solidity contracts). Scope table lists 11 source files with SHA256 hashes. Audit date from cover page: May 5th, 2025.
- [29889] * <> — no match: All contracts listed in the 'Source Code' section of the audit report are in scope.
- [29890] * <> — no match: Audit report for Superstate A-9, covering two contracts: IAllowlistV3 and AllowlistV3. Date from cover page.
- [29891] * <> — no match: Three contracts in scope from the source code table. Audit date from cover page.
- [29892] * <> — no match: Three contracts explicitly listed in the Source Code section with file paths and SHA256 hashes. Audit date is February 25th, 2026.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| * <> | Redemption | unmatched — not counted | — | Listed in scope section and referenced in issue details. | no |
| * <> | AllowList | own proxy deployment | Allowlist (proxy) (selected) `0x02f1fa...8a38e5` — deployed 2024-12-06 01:36:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| * <> | SuperstateToken | unmatched — not counted | — | listed in scope table | no |
| * <> | USCC | unmatched — not counted | — | listed in scope table | no |
| * <> | USTB | unmatched — not counted | — | listed in scope table | no |
| * <> | DeployUsccScript | unmatched — not counted | — | listed in scope table | no |
| * <> | MorphoLiquidationV1 | unmatched — not counted | — | listed in Source Code table | no |
| * <> | SuperstateOracle | own contract | SuperstateOracle (selected) `0xe4fa68...e528a8` — deployed 2024-12-06 05:16:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| * <> | SuperstateToken | unmatched — not counted | — | listed in Source Code table | no |
| * <> | DeployAndUpgradeUsccScriptV2 | unmatched — not counted | — | listed in Source Code table as deployment script | no |
| * <> | DeployAndUpgradeUstbScriptV2 | unmatched — not counted | — | listed in Source Code table as deployment script | no |
| * <> | SuperstateToken | unmatched — not counted | — | listed in scope table | no |
| * <> | AllowList | own proxy deployment | Allowlist (proxy) (selected) `0x02f1fa...8a38e5` — deployed 2024-12-06 01:36:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| * <> | Redemption | unmatched — not counted | — | listed in scope table | no |
| * <> | RedemptionIdle | own proxy deployment | RedemptionIdle (proxy) (selected) `0x4c21b7...1454cf` — deployed 2024-12-06 05:59:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| * <> | RedemptionYield | unmatched — not counted | — | listed in scope table | no |
| * <> | SuperstateToken | unmatched — not counted | — | listed in scope table | no |
| * <> | ISuperstateToken | unmatched — not counted | — | listed in scope table | no |
| * <> | ISuperstateTokenV3 | unmatched — not counted | — | listed in scope table | no |
| * <> | RedemptionIdle | own proxy deployment | RedemptionIdle (proxy) (selected) `0x4c21b7...1454cf` — deployed 2024-12-06 05:59:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| * <> | RedemptionYield | unmatched — not counted | — | listed in scope table | no |
| * <> | ISuperstateTokenV2 | unmatched — not counted | — | listed in scope table | no |
| * <> | RedemptionIdleV1 | unmatched — not counted | — | listed in scope table | no |
| * <> | RedemptionYieldV1 | unmatched — not counted | — | listed in scope table | no |
| * <> | SuperstateToken | unmatched — not counted | — | listed in scope table | no |
| * <> | ISuperstateToken | unmatched — not counted | — | listed in scope table | no |
| * <> | Redemption | unmatched — not counted | — | listed in scope table | no |
| * <> | RedemptionIdle | own proxy deployment | RedemptionIdle (proxy) (selected) `0x4c21b7...1454cf` — deployed 2024-12-06 05:59:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| * <> | RedemptionYield | unmatched — not counted | — | listed in scope table | no |
| * <> | IRedemption | unmatched — not counted | — | listed in scope table | no |
| * <> | address.rs | unmatched — not counted | — | listed in scope table | no |
| * <> | instruction.rs | unmatched — not counted | — | listed in scope table | no |
| * <> | lib.rs | unmatched — not counted | — | listed in scope table | no |
| * <> | entrypoint.rs | unmatched — not counted | — | listed in scope table | no |
| * <> | error.rs | unmatched — not counted | — | listed in scope table | no |
| * <> | mod.rs | unmatched — not counted | — | listed in scope table | no |
| * <> | processor.rs | unmatched — not counted | — | listed in scope table | no |
| * <> | state.rs | unmatched — not counted | — | listed in scope table | no |
| * <> | account.rs | unmatched — not counted | — | listed in scope table | no |
| * <> | AccountingPausable | unmatched — not counted | — | listed in Source Code section | no |
| * <> | Allowlistable | unmatched — not counted | — | listed in Source Code section | no |
| * <> | Bridgeable | unmatched — not counted | — | listed in Source Code section | no |
| * <> | EquityToken | unmatched — not counted | — | listed in Source Code section | no |
| * <> | Permittable | unmatched — not counted | — | listed in Source Code section | no |
| * <> | SuperstateTokenCore | unmatched — not counted | — | listed in Source Code section | no |
| * <> | IAllowlistV3 | unmatched — not counted | — | listed in Source Code section with SHA256 hash | no |
| * <> | AllowlistV3 | unmatched — not counted | — | listed in Source Code section with SHA256 hash | no |
| * <> | Dip | unmatched — not counted | — | listed in scope table | no |
| * <> | Dippable | unmatched — not counted | — | listed in scope table | no |
| * <> | EquityToken | unmatched — not counted | — | listed in scope table | no |
| * <> | Dip | unmatched — not counted | — | listed in scope with SHA256 hash | no |
| * <> | Dippable | unmatched — not counted | — | listed in scope with SHA256 hash | no |
| * <> | EquityToken | unmatched — not counted | — | listed in scope with SHA256 hash | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x14d60e...74020c` | SuperstateTokenV5_1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 28 |
| upstream | 1 |
| standard_library | 3 |
| needs_review | 4 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 6
- Inherited remapped matches: 0
- Address-book scope dispositions: 6 own (5 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 47 unmatched
- Matched-own operational status: 6 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=11
- Match method counts: unique_name=6

Zero-match audit list:

- [29882] * <>
- [29888] * <>
- [29889] * <>
- [29890] * <>
- [29891] * <>
- [29892] * <>

Fork inheritance lineage and inherited audits are included when available.
