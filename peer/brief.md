# Agentic Audit Brief: Peer

## Project Overview

- Project: Peer (`peer`)
- Website: [https://www.peer.xyz/](https://www.peer.xyz/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:43.016Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: base
- Contract surface: 29 unique implementations (29 raw deployments)
- DeFi Llama TVL: $120,950.07
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Payments. Structurally: 29 project-authored contract(s) across 1 chain(s); built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 2 common project-authored base contract(s) (basepaymentverifier, basereclaimverifier). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 29; live-surface contracts included: 29 (29 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/29 (0.0%)
- Deployed-live implementations: 29 of 29 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/29
- Verified + Unaudited implementations: 29
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 29
- Raw deployments: 29
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

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AcrossBridgeHook | unknown | base | n/a | [`0x72c10b...63b9f0`](./contracts/base-8453/0x72c10b838cf46649691949c285e0b468b363b9f0/) | ⚠️ Unaudited |
| AcrossBridgeHookV2 | unknown | base | n/a | [`0xccc916...c7f7cf`](./contracts/base-8453/0xccc9163451de31a625d48e417e0fd1a329c7f7cf/) | ⚠️ Unaudited |
| CashappReclaimVerifier | unknown | base | n/a | [`0x76d33a...dd3703`](./contracts/base-8453/0x76d33a33068d86016b806df02376ddbb23dd3703/) | ⚠️ Unaudited |
| ChainlinkOracleAdapter | unknown | base | n/a | [`0x53881a...c3b2f1`](./contracts/base-8453/0x53881a928abd61c095e5f30b63bc554872c3b2f1/) | ⚠️ Unaudited |
| Escrow | unknown | base | n/a | [`0x2f121c...888888`](./contracts/base-8453/0x2f121cddca6d652f35e8b3e560f9760898888888/) | ⚠️ Unaudited |
| EscrowRegistry | unknown | base | n/a | [`0xed0e84...2f5b21`](./contracts/base-8453/0xed0e847b101abc96e796260ac358e12baa2f5b21/) | ⚠️ Unaudited |
| EscrowV2 | unknown | base | n/a | [`0x777777...6300ef`](./contracts/base-8453/0x777777779d229cdf3110e9de47943791c26300ef/) | ⚠️ Unaudited |
| MercadoPagoReclaimVerifier | unknown | base | n/a | [`0xf2ac5b...6c33a3`](./contracts/base-8453/0xf2ac5be14f32cbe6a613cff8931d95460d6c33a3/) | ⚠️ Unaudited |
| MonzoReclaimVerifier | unknown | base | n/a | [`0x0de464...36a2e0`](./contracts/base-8453/0x0de46433bd251027f73ed8f28e01ef05da36a2e0/) | ⚠️ Unaudited |
| NullifierRegistry | unknown | base | n/a | [`0x27b4a4...17137f`](./contracts/base-8453/0x27b4a4542af8eefb7ebf574a562c5d4daa17137f/) | ⚠️ Unaudited |
| Orchestrator | unknown | base | n/a | [`0x888888...1810d0`](./contracts/base-8453/0x88888883ed048ff0a415271b28b2f52d431810d0/) | ⚠️ Unaudited |
| OrchestratorRegistry | unknown | base | n/a | [`0xbe9fed...3382a9`](./contracts/base-8453/0xbe9fed15ed7a4b915c03efcecb9662739c3382a9/) | ⚠️ Unaudited |
| OrchestratorV2 | unknown | base | n/a | [`0x888888...c3b888`](./contracts/base-8453/0x888888359e981b5225ca48fbcdceff702fc3b888/) | ⚠️ Unaudited |
| PaymentVerifierRegistry | unknown | base | n/a | [`0x2b82d2...8beb1e`](./contracts/base-8453/0x2b82d24437ff66fb173eabdfd67ee2aceb8beb1e/) | ⚠️ Unaudited |
| PaypalReclaimVerifier | unknown | base | n/a | [`0x03d17e...1c5dea`](./contracts/base-8453/0x03d17e9371c858072e171276979f6b44571c5dea/) | ⚠️ Unaudited |
| PostIntentHookRegistry | unknown | base | n/a | [`0x9b128e...ecade9`](./contracts/base-8453/0x9b128ebad4d874199a2dc57e93186796c5ecade9/) | ⚠️ Unaudited |
| ProtocolViewer | unknown | base | n/a | [`0x30b03d...146606`](./contracts/base-8453/0x30b03de22328074fbe8447c425ae988797146606/) | ⚠️ Unaudited |
| RateManagerV1 | unknown | base | n/a | [`0xeed7db...3535f3`](./contracts/base-8453/0xeed7db23e724ac4590d6db6f78fda6db203535f3/) | ⚠️ Unaudited |
| RelayerRegistry | unknown | base | n/a | [`0xeba979...180083`](./contracts/base-8453/0xeba979889a9c97382a92472ff3703786ff180083/) | ⚠️ Unaudited |
| RevolutReclaimVerifier | unknown | base | n/a | [`0xaa5a1b...9a41ab`](./contracts/base-8453/0xaa5a1b62b01781e789c900d616300717cd9a41ab/) | ⚠️ Unaudited |
| SignatureGatingPreIntentHook | unknown | base | n/a | [`0x62d410...5c2e1f`](./contracts/base-8453/0x62d410a3d6fc766dd2192be2a67a5fc79c5c2e1f/) | ⚠️ Unaudited |
| SimpleAttestationVerifier | unknown | base | n/a | [`0xcba819...153f79`](./contracts/base-8453/0xcba8190079c1ae9756d21991e0aaf9657f153f79/) | ⚠️ Unaudited |
| UnifiedPaymentVerifier | unknown | base | n/a | [`0x16b3e4...4ab163`](./contracts/base-8453/0x16b3e4a3ca36d3a4bca281767f15c7adef4ab163/) | ⚠️ Unaudited |
| VenmoReclaimVerifier | unknown | base | n/a | [`0x9a733b...b99df5`](./contracts/base-8453/0x9a733b55a875d0db4915c6b36350b24f8ab99df5/) | ⚠️ Unaudited |
| WhitelistPreIntentHook | unknown | base | n/a | [`0xd79336...6353ea`](./contracts/base-8453/0xd793369b11357cdd076a9c631f6c44ff8e6353ea/) | ⚠️ Unaudited |
| WiseReclaimVerifier | unknown | base | n/a | [`0xff0149...d9a9ca`](./contracts/base-8453/0xff0149799631d7a5bde2e7ea9b306c42b3d9a9ca/) | ⚠️ Unaudited |
| ZelleBaseVerifier | unknown | base | n/a | [`0x1783f0...613ad5`](./contracts/base-8453/0x1783f040783c0827fb64d128ece548d9b3613ad5/) | ⚠️ Unaudited |
| ZelleBoAReclaimVerifier | unknown | base | n/a | [`0x73640a...3ea579`](./contracts/base-8453/0x73640aed9d3110c04bc7b13540648a5adb3ea579/) | ⚠️ Unaudited |
| ZelleCitiReclaimVerifier | unknown | base | n/a | [`0xe9b654...df66d6`](./contracts/base-8453/0xe9b654ee19473e77b71c2c328a31e79252df66d6/) | ⚠️ Unaudited |

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

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0x72c10b...63b9f0`](./contracts/base-8453/0x72c10b838cf46649691949c285e0b468b363b9f0/) | AcrossBridgeHook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xccc916...c7f7cf`](./contracts/base-8453/0xccc9163451de31a625d48e417e0fd1a329c7f7cf/) | AcrossBridgeHookV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x76d33a...dd3703`](./contracts/base-8453/0x76d33a33068d86016b806df02376ddbb23dd3703/) | CashappReclaimVerifier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x53881a...c3b2f1`](./contracts/base-8453/0x53881a928abd61c095e5f30b63bc554872c3b2f1/) | ChainlinkOracleAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2f121c...888888`](./contracts/base-8453/0x2f121cddca6d652f35e8b3e560f9760898888888/) | Escrow | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xed0e84...2f5b21`](./contracts/base-8453/0xed0e847b101abc96e796260ac358e12baa2f5b21/) | EscrowRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x777777...6300ef`](./contracts/base-8453/0x777777779d229cdf3110e9de47943791c26300ef/) | EscrowV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xf2ac5b...6c33a3`](./contracts/base-8453/0xf2ac5be14f32cbe6a613cff8931d95460d6c33a3/) | MercadoPagoReclaimVerifier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0de464...36a2e0`](./contracts/base-8453/0x0de46433bd251027f73ed8f28e01ef05da36a2e0/) | MonzoReclaimVerifier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x27b4a4...17137f`](./contracts/base-8453/0x27b4a4542af8eefb7ebf574a562c5d4daa17137f/) | NullifierRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x888888...1810d0`](./contracts/base-8453/0x88888883ed048ff0a415271b28b2f52d431810d0/) | Orchestrator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xbe9fed...3382a9`](./contracts/base-8453/0xbe9fed15ed7a4b915c03efcecb9662739c3382a9/) | OrchestratorRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x888888...c3b888`](./contracts/base-8453/0x888888359e981b5225ca48fbcdceff702fc3b888/) | OrchestratorV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2b82d2...8beb1e`](./contracts/base-8453/0x2b82d24437ff66fb173eabdfd67ee2aceb8beb1e/) | PaymentVerifierRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x03d17e...1c5dea`](./contracts/base-8453/0x03d17e9371c858072e171276979f6b44571c5dea/) | PaypalReclaimVerifier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x9b128e...ecade9`](./contracts/base-8453/0x9b128ebad4d874199a2dc57e93186796c5ecade9/) | PostIntentHookRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x30b03d...146606`](./contracts/base-8453/0x30b03de22328074fbe8447c425ae988797146606/) | ProtocolViewer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xeed7db...3535f3`](./contracts/base-8453/0xeed7db23e724ac4590d6db6f78fda6db203535f3/) | RateManagerV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xeba979...180083`](./contracts/base-8453/0xeba979889a9c97382a92472ff3703786ff180083/) | RelayerRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xaa5a1b...9a41ab`](./contracts/base-8453/0xaa5a1b62b01781e789c900d616300717cd9a41ab/) | RevolutReclaimVerifier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x62d410...5c2e1f`](./contracts/base-8453/0x62d410a3d6fc766dd2192be2a67a5fc79c5c2e1f/) | SignatureGatingPreIntentHook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xcba819...153f79`](./contracts/base-8453/0xcba8190079c1ae9756d21991e0aaf9657f153f79/) | SimpleAttestationVerifier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x16b3e4...4ab163`](./contracts/base-8453/0x16b3e4a3ca36d3a4bca281767f15c7adef4ab163/) | UnifiedPaymentVerifier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x9a733b...b99df5`](./contracts/base-8453/0x9a733b55a875d0db4915c6b36350b24f8ab99df5/) | VenmoReclaimVerifier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xd79336...6353ea`](./contracts/base-8453/0xd793369b11357cdd076a9c631f6c44ff8e6353ea/) | WhitelistPreIntentHook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xff0149...d9a9ca`](./contracts/base-8453/0xff0149799631d7a5bde2e7ea9b306c42b3d9a9ca/) | WiseReclaimVerifier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1783f0...613ad5`](./contracts/base-8453/0x1783f040783c0827fb64d128ece548d9b3613ad5/) | ZelleBaseVerifier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x73640a...3ea579`](./contracts/base-8453/0x73640aed9d3110c04bc7b13540648a5adb3ea579/) | ZelleBoAReclaimVerifier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xe9b654...df66d6`](./contracts/base-8453/0xe9b654ee19473e77b71c2c328a31e79252df66d6/) | ZelleCitiReclaimVerifier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 29 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
