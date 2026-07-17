# Agentic Audit Brief: Messina.one

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

- Project: Messina.one (`messina.one`)
- Website: [https://messina.one](https://messina.one)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, avalanche, base, bsc, cronos, ethereum, optimism, polygon
- Contract surface: 9 unique implementations (9 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $1,016,483.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

No contract logic was present for Messina.one in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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

0 of 9 contracts are derived from known codebases. 9 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0xc74303104e4aa5833a59767d59e958f4a0f308d4`, chain 1)
- UnnamedContract (`0x008e05f850bc3c7f495ba05e70e92d33fb3930e2`, chain 10)
- UnnamedContract (`0x978c76b2c692595413b75ed63bb9a0f74ee2a4ef`, chain 25)
- UnnamedContract (`0xfa5b25a3a2faf613285afe6f74ed9a81387164d9`, chain 56)
- UnnamedContract (`0xa3039a86408c859adcc618dc6bf00cafb13ff8ad`, chain 137)
- UnnamedContract (`0xc2109f2b4a31c837e0f987b47fb819b7b4311627`, chain 137)
- UnnamedContract (`0x0f7ba1632447ded5dd18ceb65755e3d36aff4587`, chain 8453)
- UnnamedContract (`0x537816fbb8ec6078fb8b51f3bc35d5444edcb361`, chain 42161)
- UnnamedContract (`0x201a2f5e03b83b542e617b3004379c8691254c0a`, chain 43114)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 9/9 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 9 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 8
- Confirmed-live implementations: 9 of 9 unique; 0 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/0
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 9
- Unique implementations: 9
- Raw deployments: 9
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

### ⚠️ Verified + Unaudited (0)

- None

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (9)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BridgeImplementationV2 | unknown | project_anchor | own_supporting | 1 | ethereum | unit-389004 | `0xc74303104e4aa5833a59767d59e958f4a0f308d4` | ❓ Unverified |
| BridgeImplementationV2 | unknown | project_anchor | own_supporting | 1 | optimism | unit-389005 | `0x008e05f850bc3c7f495ba05e70e92d33fb3930e2` | ❓ Unverified |
| BridgeImplementationV2 | unknown | project_anchor | own_supporting | 1 | bsc | unit-389010 | `0xfa5b25a3a2faf613285afe6f74ed9a81387164d9` | ❓ Unverified |
| BridgeImplementationV2 | unknown | project_anchor | own_supporting | 1 | polygon | unit-389006 | `0xa3039a86408c859adcc618dc6bf00cafb13ff8ad` | ❓ Unverified |
| BridgeImplementationV2 | unknown | project_anchor | own_supporting | 1 | base | unit-389011 | `0x0f7ba1632447ded5dd18ceb65755e3d36aff4587` | ❓ Unverified |
| BridgeImplementationV2 | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-389008 | `0x537816fbb8ec6078fb8b51f3bc35d5444edcb361` | ❓ Unverified |
| Proxy (impl: 0x97bb8ce1db85a3aeef7292b5f02645ca0d3490ee) | unknown | project_anchor | own_supporting | 1 | polygon | unit-389007 | `0xc2109f2b4a31c837e0f987b47fb819b7b4311627` | ❓ Unverified |
| Proxy (impl: 0xd1ada3a8c21adf45a0d2d46decb68eb203a63311) | unknown | project_anchor | own_supporting | 1 | avalanche | unit-389009 | `0x201a2f5e03b83b542e617b3004379c8691254c0a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | cronos | unit-389003 | `0x978c76b2c692595413b75ed63bb9a0f74ee2a4ef` | ❓ Unverified |

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
| needs_review | 9 |

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
