# Agentic Audit Brief: Fraxtal

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Fraxtal (`fraxtal`)
- Website: [https://frax.com/](https://frax.com/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 19 unique implementations (19 raw deployments)
- Coverage basis: 0/19 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $161,602,484.28
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

No contract logic was present for Fraxtal in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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

0 of 19 contracts are derived from known codebases. 19 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- AddressManager (`0x8c5d64...b4dabe`, chain 1)
- FPI (`0x5ca135...cbe08e`, chain 1)
- FPIS (`0xc2544a...901fdb`, chain 1)
- FRAXShares (`0x3432b6...c964d0`, chain 1)
- FRAXStablecoin (`0x853d95...75b99e`, chain 1)
- FrxBTC (`0x6ca233...f77f95`, chain 1)
- frxETH (`0x5e8422...8caa1f`, chain 1)
- L1ChugSplashProxy (`0x34c0bd...58bde2`, chain 1)
- Proxy (`0x11fe3b...1376cc`, chain 1)
- Proxy (`0x34a9f2...25f8b2`, chain 1)
- Proxy (`0x36cb65...ca6f6d`, chain 1)
- Proxy (`0x66cc91...e171e4`, chain 1)
- Proxy (`0xa9b5fb...8d0ec5`, chain 1)
- ProxyAdmin (`0x13fe62...81abca`, chain 1)
- ResolvedDelegateProxy (`0x126bcc...d542ed`, chain 1)
- sfrxETH (`0xac3e01...bbe38f`, chain 1)
- StakedFrax (`0xa663b0...c41c32`, chain 1)
- TransparentUpgradeableProxy (`0x04acaf...88977f`, chain 1)
- TransparentUpgradeableProxy (`0xcf62f9...c9c5b6`, chain 1)

## Contract Surface Quality

- Indexed contracts: 0; live-surface contracts included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 19/47 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/19 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 19 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 9
- Deployed-live implementations: 19 of 19 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/19
- Verified + Unaudited implementations: 19
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 19
- Raw deployments: 19
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

### ⚠️ Verified + Unaudited (19)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AddressManager | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386618 | `0x8c5d64...b4dabe` | ⚠️ Unaudited |
| FPI | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386612 | `0x5ca135...cbe08e` | ⚠️ Unaudited |
| FPIS | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386621 | `0xc2544a...901fdb` | ⚠️ Unaudited |
| FRAXShares | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386606 | `0x3432b6...c964d0` | ⚠️ Unaudited |
| FRAXStablecoin | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386617 | `0x853d95...75b99e` | ⚠️ Unaudited |
| FrxBTC | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386615 | `0x6ca233...f77f95` | ⚠️ Unaudited |
| frxETH | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386613 | `0x5e8422...8caa1f` | ⚠️ Unaudited |
| L1CrossDomainMessenger | unknown | project_anchor | own_supporting | 1 | ethereum | unit-386646 | `0x126bcc...d542ed` | ⚠️ Unaudited |
| L1ERC721Bridge | unknown | project_anchor | own_supporting | 1 | ethereum | unit-386642 | `0xa9b5fb...8d0ec5` | ⚠️ Unaudited |
| L1StandardBridge | unknown | project_anchor | own_supporting | 1 | ethereum | unit-386648 | `0x34c0bd...58bde2` | ⚠️ Unaudited |
| L2OutputOracle | unknown | project_anchor | own_supporting | 1 | ethereum | unit-386640 | `0x66cc91...e171e4` | ⚠️ Unaudited |
| OptimismMintableERC20Factory | unknown | project_anchor | own_supporting | 1 | ethereum | unit-386641 | `0x11fe3b...1376cc` | ⚠️ Unaudited |
| OptimismPortalCGT | unknown | project_anchor | own_supporting | 1 | ethereum | unit-386647 | `0x36cb65...ca6f6d` | ⚠️ Unaudited |
| ProxyAdmin | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386603 | `0x13fe62...81abca` | ⚠️ Unaudited |
| sfrxETH | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386620 | `0xac3e01...bbe38f` | ⚠️ Unaudited |
| SfrxUSD | unknown | project_anchor | own_supporting | 1 | ethereum | unit-386644 | `0xcf62f9...c9c5b6` | ⚠️ Unaudited |
| StakedFrax | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386619 | `0xa663b0...c41c32` | ⚠️ Unaudited |
| SystemConfig | unknown | project_anchor | own_supporting | 1 | ethereum | unit-386645 | `0x34a9f2...25f8b2` | ⚠️ Unaudited |
| WFRAXTokenOFTUpgradeable | unknown | project_anchor | own_supporting | 1 | ethereum | unit-386643 | `0x04acaf...88977f` | ⚠️ Unaudited |

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
| upstream | 0 |
| standard_library | 0 |
| needs_review | 19 |

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
