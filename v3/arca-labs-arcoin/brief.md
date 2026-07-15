# Agentic Audit Brief: Arca Labs ArCoin

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Arca Labs ArCoin (`arca-labs-arcoin`)
- Website: [https://www.arcalabs.com/](https://www.arcalabs.com/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 43 unique implementations (43 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $451,937.36
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

The closed normalized authority records no EVM contract logic or eligible security audit for this project. This is an explicit cohort state, not a skipped export.

## Project Description

No contract logic was present for Arca Labs ArCoin in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 1 contracts are derived from known codebases. 1 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x252739...a6bca9`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 1/1 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 1 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 42 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 13 standard proxy/library)
- Proxy deployments represented within implementation groups: 23
- Confirmed-live implementations: 1 of 43 unique; 42 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/42
- Verified + Unaudited implementations: 42
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 43
- Raw deployments: 43
- Audits discovered: 0 (0 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (42)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AllowanceAssetProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb743c5...1e6b39` | ⚠️ Unaudited |
| AllowanceLiquidityProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0aa5dc...6f0ec3` | ⚠️ Unaudited |
| AllowanceLiquiditySource | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9a6282...69c493` | ⚠️ Unaudited |
| BulkBalanceChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5a9431...fdc922` | ⚠️ Unaudited |
| ComplianceServiceLibrary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a49ee...ed528c` | ⚠️ Unaudited |
| ComplianceServiceRegulated | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x15023f...400f4c` | ⚠️ Unaudited |
| Disperse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x63866e...0bd31b` | ⚠️ Unaudited |
| DSTokenClassSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x1e5d83...e37021` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x021840...b0c6aa` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x0490a0...61f814` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x04fb23...ff8e66` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x05dae9...f5385d` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x065674...8511a3` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x068d79...1492b6` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x06ac06...a780a3` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x06d4bc...e8c565` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x078646...210d91` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x07952f...76a561` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x0885f3...cd4aa3` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x189fd4...b97229` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x1ea550...68ad4f` | ⚠️ Unaudited |
| GlobalRegistryService | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x1d95f6...3e8c75` | ⚠️ Unaudited |
| InvestorLockManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e4d0f...c29fda` | ⚠️ Unaudited |
| IssuerMulticall | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02658c...e57b7d` | ⚠️ Unaudited |
| MbpsFeeManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x184cb1...ec649d` | ⚠️ Unaudited |
| OmnibusTBEController | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x1cf534...d8035f` | ⚠️ Unaudited |
| Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x063803...c63070` | ⚠️ Unaudited |
| PublicStockOffRamp | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x226b44...c7c66f` | ⚠️ Unaudited |
| PublicStockOnRamp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d0051...373c0c` | ⚠️ Unaudited |
| Redemption | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4580d3...1ee0a0` | ⚠️ Unaudited |
| RedStoneNavProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x12263b...169db8` | ⚠️ Unaudited |
| RegistryService | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ef785...49f2e4` | ⚠️ Unaudited |
| SecuritizeAmmNavProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x1b9aaf...5d06a5` | ⚠️ Unaudited |
| SecuritizeOnRamp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0db0dd...84b9a3` | ⚠️ Unaudited |
| SecuritizeSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x4a107b...bee141` | ⚠️ Unaudited |
| SecuritizeVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x4535b3...723dea` | ⚠️ Unaudited |
| Settlement | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c97c9...ac5fbb` | ⚠️ Unaudited |
| TokenLibrary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x550bca...bc97e5` | ⚠️ Unaudited |
| TokenReallocator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0002fc...507cf8` | ⚠️ Unaudited |
| USDCBridgeV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x466513...cd66ab` | ⚠️ Unaudited |
| VaultRegistrar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x121d63...79711d` | ⚠️ Unaudited |
| WalletRegistrar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04c360...194a6f` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226957 | `0x252739...a6bca9` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 28 |
| standard_library | 14 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
