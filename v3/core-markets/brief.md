# Agentic Audit Brief: Core Markets

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

- Project: Core Markets (`core-markets`)
- Website: [https://www.core.markets/](https://www.core.markets/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: blast
- Contract surface: 24 unique implementations (24 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $266,485.21
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

The closed normalized authority records no EVM contract logic or eligible security audit for this project. This is an explicit cohort state, not a skipped export.

## Project Description

No contract logic was present for Core Markets in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 0; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 24 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 4
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/24
- Verified + Unaudited implementations: 24
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 24
- Raw deployments: 24
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

### ⚠️ Verified + Unaudited (24)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AccountFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | unit-132764 | `0x464873026877c9d947e2778a1b4cb4a3cbc688f0` | ⚠️ Unaudited |
| AdvisorVestingCoreUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | unit-132742 | `0x0ada381229ffa9e12cd5ccea0e1d07c10d612716` | ⚠️ Unaudited |
| BatchSetForceCloseGapRatio | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | unit-132784 | `0x71ac772b2d89985a7b0dac0fc42b1230ca844220` | ⚠️ Unaudited |
| BridgeFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | unit-132750 | `0x0e35fa030fd3bbed41993bc288b7378cc43f39ac` | ⚠️ Unaudited |
| ControlFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | unit-132754 | `0x2ecc7da3cc98d341f987c85c3d9fc198570838b5` | ⚠️ Unaudited |
| CoreEmissionsKeeper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | unit-132752 | `0x1722762ee861288cb0cf0705a69b03dd4e9a09a7` | ⚠️ Unaudited |
| CoreEmissionsKeeperV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | unit-132756 | `0x2ed2e32970c2ae27f51d6ad1809d2917fe084199` | ⚠️ Unaudited |
| CoreFeeCollector | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | blast | unit-132795 | `0x1a5d813aff409a0245f86165552709d70a3ca610` | ⚠️ Unaudited |
| CoreMultiRewarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | unit-132758 | `0x3026643eca499c196bd9aba91b6f9f02cd8ea6d6` | ⚠️ Unaudited |
| DiamondLoupeFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | unit-132791 | `0xb74629900981f2977cd7a8e37052fee0d7a4c395` | ⚠️ Unaudited |
| FundingRateFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | unit-132789 | `0x9d4c169703bb0116751a6965952a5e4adfdffb05` | ⚠️ Unaudited |
| LiquidationFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | unit-132746 | `0x0b60140dcc98a6a9e9985ab165dc54903861d50a` | ⚠️ Unaudited |
| PartyAFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | unit-132783 | `0x6ae14800c45ae9383db2c3f2ee6019ebe1e32403` | ⚠️ Unaudited |
| PartyBFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | unit-132779 | `0x50154e11edf5d7d528cbc7ec0d507ddb70b8b1c6` | ⚠️ Unaudited |
| RasaOffChainSymmioDepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | unit-132748 | `0x0cbf07176e67671c99222bebdb166efc58dacd95` | ⚠️ Unaudited |
| RasaOnChainSymmioDepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | blast | unit-132800 | `0xc818f52e267609a4c377ed1a0691425cde8f853e` | ⚠️ Unaudited |
| SeedVestingCoreUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | unit-132744 | `0x0b145a57443c3cc2e8e359caf80085019811829c` | ⚠️ Unaudited |
| SignatureStore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | unit-132793 | `0xc2a1fcd1e6d6c3c806fac707b28126b072f045b6` | ⚠️ Unaudited |
| SymmioDepositorLpToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | unit-132760 | `0x30e54c1ae25e7c948668afd091c5b0bae0765915` | ⚠️ Unaudited |
| SymmioPartyB | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | unit-132762 | `0x3adc81cc43d9e1636de9cbac764afcb1f3ae6cde` | ⚠️ Unaudited |
| TeamVestingCoreUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | unit-132787 | `0x8fb840c274fc6ce9320cbcf1074184693a5ddbb6` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | blast | unit-132797 | `0x083267d20dbe6c2b0a83bd0e601dc2299ed99015` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | blast | unit-132799 | `0x27ba1168a6df3681dd2f74c8f6dae165aab23229` | ⚠️ Unaudited |
| ViewFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | unit-132781 | `0x5e0663deb8683b70e0ff36e6e6e0dfa0f0069934` | ⚠️ Unaudited |

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
| native | 22 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 0 |

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
