# Agentic Audit Brief: Peer

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

- Project: Peer (`peer`)
- Website: [https://www.peer.xyz/](https://www.peer.xyz/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base
- Contract surface: 30 unique implementations (30 raw deployments)
- Coverage basis: 0/11 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $120,950.07
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Peer. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 11 contract row(s) across base. Structural roles: 11 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 11
- Structural roles: core (11)
- Contract kinds: contract (11)
- Detected standards: ownable (11)
- Frameworks: openzeppelin (11)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 12 contracts are derived from known codebases. 12 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0xca38607d85e8f6294dc10728669605e6664c2d70`, chain 8453)
- CashappReclaimVerifier (`0x76d33a33068d86016b806df02376ddbb23dd3703`, chain 8453)
- MercadoPagoReclaimVerifier (`0xf2ac5be14f32cbe6a613cff8931d95460d6c33a3`, chain 8453)
- MonzoReclaimVerifier (`0x0de46433bd251027f73ed8f28e01ef05da36a2e0`, chain 8453)
- NullifierRegistry (`0x27b4a4542af8eefb7ebf574a562c5d4daa17137f`, chain 8453)
- PaypalReclaimVerifier (`0x03d17e9371c858072e171276979f6b44571c5dea`, chain 8453)
- RevolutReclaimVerifier (`0xaa5a1b62b01781e789c900d616300717cd9a41ab`, chain 8453)
- VenmoReclaimVerifier (`0x9a733b55a875d0db4915c6b36350b24f8ab99df5`, chain 8453)
- WiseReclaimVerifier (`0xff0149799631d7a5bde2e7ea9b306c42b3d9a9ca`, chain 8453)
- ZelleBaseVerifier (`0x1783f040783c0827fb64d128ece548d9b3613ad5`, chain 8453)
- ZelleBoAReclaimVerifier (`0x73640aed9d3110c04bc7b13540648a5adb3ea579`, chain 8453)
- ZelleCitiReclaimVerifier (`0xe9b654ee19473e77b71c2c328a31e79252df66d6`, chain 8453)

## Contract Surface Quality

- Logic-topography rows: 11; live-surface rows included: 11 (11 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 12/12 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/11 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 12 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 18 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 12 of 30 unique; 18 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/29
- Verified + Unaudited implementations: 29
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 30
- Raw deployments: 30
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

### ⚠️ Verified + Unaudited (29)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AcrossBridgeHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x72c10b838cf46649691949c285e0b468b363b9f0` | ⚠️ Unaudited |
| AcrossBridgeHookV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xccc9163451de31a625d48e417e0fd1a329c7f7cf` | ⚠️ Unaudited |
| CashappReclaimVerifier | unknown | project_anchor | own_supporting | 0 | base | unit-390703 | `0x76d33a33068d86016b806df02376ddbb23dd3703` | ⚠️ Unaudited |
| ChainlinkOracleAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x53881a928abd61c095e5f30b63bc554872c3b2f1` | ⚠️ Unaudited |
| Escrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2f121cddca6d652f35e8b3e560f9760898888888` | ⚠️ Unaudited |
| EscrowRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xed0e847b101abc96e796260ac358e12baa2f5b21` | ⚠️ Unaudited |
| EscrowV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x777777779d229cdf3110e9de47943791c26300ef` | ⚠️ Unaudited |
| MercadoPagoReclaimVerifier | unknown | project_anchor | own_supporting | 0 | base | unit-390708 | `0xf2ac5be14f32cbe6a613cff8931d95460d6c33a3` | ⚠️ Unaudited |
| MonzoReclaimVerifier | unknown | project_anchor | own_supporting | 0 | base | unit-390699 | `0x0de46433bd251027f73ed8f28e01ef05da36a2e0` | ⚠️ Unaudited |
| NullifierRegistry | unknown | project_anchor | own_supporting | 0 | base | unit-390701 | `0x27b4a4542af8eefb7ebf574a562c5d4daa17137f` | ⚠️ Unaudited |
| Orchestrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x88888883ed048ff0a415271b28b2f52d431810d0` | ⚠️ Unaudited |
| OrchestratorRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbe9fed15ed7a4b915c03efcecb9662739c3382a9` | ⚠️ Unaudited |
| OrchestratorV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x888888359e981b5225ca48fbcdceff702fc3b888` | ⚠️ Unaudited |
| PaymentVerifierRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2b82d24437ff66fb173eabdfd67ee2aceb8beb1e` | ⚠️ Unaudited |
| PaypalReclaimVerifier | unknown | project_anchor | own_supporting | 0 | base | unit-390698 | `0x03d17e9371c858072e171276979f6b44571c5dea` | ⚠️ Unaudited |
| PostIntentHookRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9b128ebad4d874199a2dc57e93186796c5ecade9` | ⚠️ Unaudited |
| ProtocolViewer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x30b03de22328074fbe8447c425ae988797146606` | ⚠️ Unaudited |
| RateManagerV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xeed7db23e724ac4590d6db6f78fda6db203535f3` | ⚠️ Unaudited |
| RelayerRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xeba979889a9c97382a92472ff3703786ff180083` | ⚠️ Unaudited |
| RevolutReclaimVerifier | unknown | project_anchor | own_supporting | 0 | base | unit-390705 | `0xaa5a1b62b01781e789c900d616300717cd9a41ab` | ⚠️ Unaudited |
| SignatureGatingPreIntentHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x62d410a3d6fc766dd2192be2a67a5fc79c5c2e1f` | ⚠️ Unaudited |
| SimpleAttestationVerifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcba8190079c1ae9756d21991e0aaf9657f153f79` | ⚠️ Unaudited |
| UnifiedPaymentVerifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x16b3e4a3ca36d3a4bca281767f15c7adef4ab163` | ⚠️ Unaudited |
| VenmoReclaimVerifier | unknown | project_anchor | own_supporting | 0 | base | unit-390704 | `0x9a733b55a875d0db4915c6b36350b24f8ab99df5` | ⚠️ Unaudited |
| WhitelistPreIntentHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd793369b11357cdd076a9c631f6c44ff8e6353ea` | ⚠️ Unaudited |
| WiseReclaimVerifier | unknown | project_anchor | own_supporting | 0 | base | unit-390709 | `0xff0149799631d7a5bde2e7ea9b306c42b3d9a9ca` | ⚠️ Unaudited |
| ZelleBaseVerifier | unknown | project_anchor | own_supporting | 0 | base | unit-390700 | `0x1783f040783c0827fb64d128ece548d9b3613ad5` | ⚠️ Unaudited |
| ZelleBoAReclaimVerifier | unknown | project_anchor | own_supporting | 0 | base | unit-390702 | `0x73640aed9d3110c04bc7b13540648a5adb3ea579` | ⚠️ Unaudited |
| ZelleCitiReclaimVerifier | unknown | project_anchor | own_supporting | 0 | base | unit-390707 | `0xe9b654ee19473e77b71c2c328a31e79252df66d6` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-390706 | `0xca38607d85e8f6294dc10728669605e6664c2d70` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | `0x76d33a33068d86016b806df02376ddbb23dd3703` | CashappReclaimVerifier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xf2ac5be14f32cbe6a613cff8931d95460d6c33a3` | MercadoPagoReclaimVerifier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x0de46433bd251027f73ed8f28e01ef05da36a2e0` | MonzoReclaimVerifier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x27b4a4542af8eefb7ebf574a562c5d4daa17137f` | NullifierRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x03d17e9371c858072e171276979f6b44571c5dea` | PaypalReclaimVerifier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xaa5a1b62b01781e789c900d616300717cd9a41ab` | RevolutReclaimVerifier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x9a733b55a875d0db4915c6b36350b24f8ab99df5` | VenmoReclaimVerifier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xff0149799631d7a5bde2e7ea9b306c42b3d9a9ca` | WiseReclaimVerifier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x1783f040783c0827fb64d128ece548d9b3613ad5` | ZelleBaseVerifier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x73640aed9d3110c04bc7b13540648a5adb3ea579` | ZelleBoAReclaimVerifier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xe9b654ee19473e77b71c2c328a31e79252df66d6` | ZelleCitiReclaimVerifier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 29 |
| upstream | 0 |
| standard_library | 0 |
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
