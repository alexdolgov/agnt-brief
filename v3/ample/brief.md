# Agentic Audit Brief: Ample

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

- Project: Ample (`ample`)
- Website: [https://ample.money/](https://ample.money/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, hyperliquid, katana, monad
- Contract surface: 17 unique implementations (17 raw deployments)
- Coverage basis: 0/17 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $4,438,996.97
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Ample. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 5 contract row(s) across arbitrum, base, hyperliquid, katana, monad. Structural roles: 5 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 5
- Structural roles: core (5)
- Contract kinds: contract (5)
- Detected standards: ownable (5), ownable2step (3), erc20 (1), erc4626 (1)
- Frameworks: openzeppelin (5), permit2 (3)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 17 contracts are derived from known codebases. 17 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- AmpleEarn (`0xe89d32...2048ef`, chain 143)
- AmpleEarn (`0x00a7ab...755809`, chain 999)
- AmpleEarn (`0x1688ae...f39c0f`, chain 8453)
- AmpleEarn (`0xd1be1f...9bcfcb`, chain 42161)
- AmpleEarn (`0xe5092a...3d04e8`, chain 747474)
- AmpleEarnCrossChainRouter (`0xc90862...fbe463`, chain 143)
- AmpleEarnCrossChainRouter (`0xc90862...fbe463`, chain 999)
- AmpleEarnCrossChainRouter (`0xf13265...deb0c5`, chain 8453)
- AmpleEarnCrossChainRouter (`0xcab6a4...686d36`, chain 42161)
- AmpleEarnCrossChainRouter (`0x7beb22...392e65`, chain 747474)
- AmpleEarnFactory (`0x988146...72b185`, chain 143)
- AmpleEarnFactory (`0x305ecd...e19b61`, chain 999)
- AmpleEarnFactory (`0x62b304...9dca67`, chain 8453)
- AmpleEarnFactory (`0x988146...72b185`, chain 42161)
- AmpleEarnFactory (`0x988146...72b185`, chain 747474)
- AmpleEarnScheduler (`0x107a6e...adaeb8`, chain 8453)
- AmpleEarnScheduler (`0xabbcb3...c84b4c`, chain 42161)

## Contract Surface Quality

- Logic-topography rows: 5; live-surface rows included: 5 (5 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 17/17 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/17 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 17 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 17 of 17 unique; 0 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/17
- Verified + Unaudited implementations: 17
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 17
- Raw deployments: 17
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

### ⚠️ Verified + Unaudited (17)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AmpleEarn | unknown | project_anchor | own_supporting | 0 | monad | unit-379024 | `0xe89d32...2048ef` | ⚠️ Unaudited |
| AmpleEarn | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-379036 | `0x00a7ab...755809` | ⚠️ Unaudited |
| AmpleEarn | unknown | project_anchor | own_supporting | 0 | base | unit-379033 | `0x1688ae...f39c0f` | ⚠️ Unaudited |
| AmpleEarn | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-379028 | `0xd1be1f...9bcfcb` | ⚠️ Unaudited |
| AmpleEarn | unknown | project_anchor | own_supporting | 0 | katana | unit-379031 | `0xe5092a...3d04e8` | ⚠️ Unaudited |
| AmpleEarnCrossChainRouter | unknown | project_anchor | own_supporting | 0 | monad | unit-379023 | `0xc90862...fbe463` | ⚠️ Unaudited |
| AmpleEarnCrossChainRouter | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-379038 | `0xc90862...fbe463` | ⚠️ Unaudited |
| AmpleEarnCrossChainRouter | unknown | project_anchor | own_supporting | 0 | base | unit-379035 | `0xf13265...deb0c5` | ⚠️ Unaudited |
| AmpleEarnCrossChainRouter | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-379027 | `0xcab6a4...686d36` | ⚠️ Unaudited |
| AmpleEarnCrossChainRouter | unknown | project_anchor | own_supporting | 0 | katana | unit-379029 | `0x7beb22...392e65` | ⚠️ Unaudited |
| AmpleEarnFactory | unknown | project_anchor | own_supporting | 0 | monad | unit-379022 | `0x988146...72b185` | ⚠️ Unaudited |
| AmpleEarnFactory | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-379037 | `0x305ecd...e19b61` | ⚠️ Unaudited |
| AmpleEarnFactory | unknown | project_anchor | own_supporting | 0 | base | unit-379034 | `0x62b304...9dca67` | ⚠️ Unaudited |
| AmpleEarnFactory | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-379025 | `0x988146...72b185` | ⚠️ Unaudited |
| AmpleEarnFactory | unknown | project_anchor | own_supporting | 0 | katana | unit-379030 | `0x988146...72b185` | ⚠️ Unaudited |
| AmpleEarnScheduler | unknown | project_anchor | own_supporting | 0 | base | unit-379032 | `0x107a6e...adaeb8` | ⚠️ Unaudited |
| AmpleEarnScheduler | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-379026 | `0xabbcb3...c84b4c` | ⚠️ Unaudited |

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
| needs_review | 17 |

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
