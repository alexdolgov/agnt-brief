# Agentic Audit Brief: Alcum

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

- Project: Alcum (`alcum`)
- Website: [https://web3.alcum.com/](https://web3.alcum.com/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 19 unique implementations (19 raw deployments)
- Coverage basis: 0/16 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $132,180.20
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

No contract logic was present for Alcum in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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

- UnnamedContract (`0x24781b...31dccf`, chain 1)
- UnnamedContract (`0x883f82...a40841`, chain 1)
- UnnamedContract (`0xd43106...3f0438`, chain 1)
- CopperPriceConsumer (`0x081bf0...cd9ab6`, chain 1)
- DepositLib (`0x4f1f46...6705e5`, chain 1)
- DepositViewLib (`0xc70e33...d89886`, chain 1)
- PermitLib (`0xa965f3...f2f668`, chain 1)
- RedeemViewLib (`0x8c1d1a...723dc6`, chain 1)
- SwapLib (`0x39a761...4da5f6`, chain 1)
- TransparentUpgradeableProxy (`0x1ead41...b3b4b5`, chain 1)
- TransparentUpgradeableProxy (`0x40a861...a9275f`, chain 1)
- TransparentUpgradeableProxy (`0x7f6af0...b77193`, chain 1)
- TransparentUpgradeableProxy (`0x847352...a480ab`, chain 1)
- TransparentUpgradeableProxy (`0x8e4014...c082d8`, chain 1)
- TransparentUpgradeableProxy (`0x9cd1ad...cb344a`, chain 1)
- TransparentUpgradeableProxy (`0xa5ce80...b91989`, chain 1)
- TransparentUpgradeableProxy (`0xa808f4...0b5711`, chain 1)
- TransparentUpgradeableProxy (`0xd02696...44a964`, chain 1)
- TransparentUpgradeableProxy (`0xf60d14...ce236d`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 19/19 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/16 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 19 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 10
- Confirmed-live implementations: 19 of 19 unique; 0 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/16
- Verified + Unaudited implementations: 16
- Verified by bytecode match: 0
- Unverified implementations: 3
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

### ⚠️ Verified + Unaudited (16)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| CommissionTransfer | unknown | project_anchor | own_supporting | 1 | ethereum | unit-378703 | `0x9cd1ad...cb344a` | ⚠️ Unaudited |
| CopperPriceConsumer | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378686 | `0x081bf0...cd9ab6` | ⚠️ Unaudited |
| CUPToken | unknown | project_anchor | own_supporting | 1 | ethereum | unit-378695 | `0x7f6af0...b77193` | ⚠️ Unaudited |
| DepositLib | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378689 | `0x4f1f46...6705e5` | ⚠️ Unaudited |
| DepositViewLib | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378693 | `0xc70e33...d89886` | ⚠️ Unaudited |
| EpochManager | unknown | project_anchor | own_supporting | 1 | ethereum | unit-378701 | `0x40a861...a9275f` | ⚠️ Unaudited |
| HostAdapter | unknown | project_anchor | own_supporting | 1 | ethereum | unit-378696 | `0xd02696...44a964` | ⚠️ Unaudited |
| PermitLib | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378692 | `0xa965f3...f2f668` | ⚠️ Unaudited |
| RedeemEngine | unknown | project_anchor | own_supporting | 1 | ethereum | unit-378700 | `0x1ead41...b3b4b5` | ⚠️ Unaudited |
| RedeemViewLib | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378691 | `0x8c1d1a...723dc6` | ⚠️ Unaudited |
| SettlementEngine | unknown | project_anchor | own_supporting | 1 | ethereum | unit-378704 | `0xa5ce80...b91989` | ⚠️ Unaudited |
| SwapLib | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378688 | `0x39a761...4da5f6` | ⚠️ Unaudited |
| xCUP | unknown | project_anchor | own_supporting | 1 | ethereum | unit-378698 | `0x847352...a480ab` | ⚠️ Unaudited |
| XCUPOraclePool | unknown | project_anchor | own_supporting | 1 | ethereum | unit-378699 | `0x8e4014...c082d8` | ⚠️ Unaudited |
| XCUPZapRouter | unknown | project_anchor | own_supporting | 1 | ethereum | unit-378702 | `0xf60d14...ce236d` | ⚠️ Unaudited |
| Zapper | unknown | project_anchor | own_supporting | 1 | ethereum | unit-378697 | `0xa808f4...0b5711` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (3)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378687 | `0x24781b...31dccf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378690 | `0x883f82...a40841` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378694 | `0xd43106...3f0438` | ❓ Unverified |

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
