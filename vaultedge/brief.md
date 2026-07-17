# Agentic Audit Brief: Vaultedge

## Project Overview

- Project: Vaultedge (`vaultedge`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:09.325Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: base
- Contract surface: 20 unique implementations (20 raw deployments)
- DeFi Llama TVL: $261,996.32
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

CDP. Structurally: 20 project-authored contract(s) across 1 chain(s); 1 ERC20 token; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 5 common project-authored base contract(s) (ozproxyadmin, sharedprotocolbase, basemath). Dominant framework: openzeppelin.

## Fork Lineage

This project reuses audited code from **Gravita Protocol** (`gravita-protocol`) in the VesselManager subsystem.
2 audits inherited from `gravita-protocol`, scoped to that subsystem.

Total inherited audits: 2. Inherited coverage reflects forked/shared code audited by the origin project — it is not a direct audit of this project.

## Contract Surface Quality

- Indexed contracts: 20; live-surface contracts included: 20 (20 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/19 (5.3%)
- Deployed-live implementations: 20 of 20 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/20
- Verified + Unaudited implementations: 19
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 20
- Raw deployments: 20
- Audits discovered: 2 (0 direct, 2 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 1 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Hats Finance | Tier 2 | 1 | 5.0% | n/a |
| unknown | Tier 2 | 1 | 5.0% | n/a |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| VesselManager | unknown | base | n/a | [`0x14a93618e09f5201cb7837b83b1f282e564aca30`](./contracts/base-8453/0x14a93618e09f5201cb7837b83b1f282e564aca30/) | ✅ Audited |

### ⚠️ Verified + Unaudited (19)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ActivePool | unknown | base | n/a | [`0x8ceaba86d4ae89f582a52e020ecf7f1f2f3e2a78`](./contracts/base-8453/0x8ceaba86d4ae89f582a52e020ecf7f1f2f3e2a78/) | ⚠️ Unaudited |
| AdminContract | unknown | base | n/a | [`0x2ad60d1d8bb39be30e06af25a90c66c9bd19eff5`](./contracts/base-8453/0x2ad60d1d8bb39be30e06af25a90c66c9bd19eff5/) | ⚠️ Unaudited |
| BorrowerOperations | unknown | base | n/a | [`0xac30987d30cfba18f564e9040d23fe38315587ea`](./contracts/base-8453/0xac30987d30cfba18f564e9040d23fe38315587ea/) | ⚠️ Unaudited |
| CollSurplusPool | unknown | base | n/a | [`0xc401d5b70ba613c57fa4316a86e74106616f86bc`](./contracts/base-8453/0xc401d5b70ba613c57fa4316a86e74106616f86bc/) | ⚠️ Unaudited |
| DebtToken | unknown | base | n/a | [`0xbfcd661be34c99920036f176876746b9f5b68c26`](./contracts/base-8453/0xbfcd661be34c99920036f176876746b9f5b68c26/) | ⚠️ Unaudited |
| DefaultPool | unknown | base | n/a | [`0x6673a757b4bd2005e6286a2b85e4313b37460ff1`](./contracts/base-8453/0x6673a757b4bd2005e6286a2b85e4313b37460ff1/) | ⚠️ Unaudited |
| FeeCollector | unknown | base | n/a | [`0x3842888cf4ec94b73a7622dcc4ff8d84b8366143`](./contracts/base-8453/0x3842888cf4ec94b73a7622dcc4ff8d84b8366143/) | ⚠️ Unaudited |
| FlashArbExecutor_Morpho | unknown | base | n/a | [`0x38eff9ae273b8d71684927112037f1eeb1b3ee21`](./contracts/base-8453/0x38eff9ae273b8d71684927112037f1eeb1b3ee21/) | ⚠️ Unaudited |
| FlashArbRedemption_Morpho | unknown | base | n/a | [`0x9db37a53bbe5dcb221258122f307fc60a9d42dcc`](./contracts/base-8453/0x9db37a53bbe5dcb221258122f307fc60a9d42dcc/) | ⚠️ Unaudited |
| GasPool | unknown | base | n/a | [`0x110a56e6fa0fd09a89b182b73735e9f61750e697`](./contracts/base-8453/0x110a56e6fa0fd09a89b182b73735e9f61750e697/) | ⚠️ Unaudited |
| PegStabilityModuleWithStrategy | unknown | base | n/a | [`0x422f315f82c28f577c663972daa2de6327a5e067`](./contracts/base-8453/0x422f315f82c28f577c663972daa2de6327a5e067/) | ⚠️ Unaudited |
| PriceFeedV2 | unknown | base | n/a | [`0x019ba6c927d0fd791f7b52fceca83f0e1ec8c2f8`](./contracts/base-8453/0x019ba6c927d0fd791f7b52fceca83f0e1ec8c2f8/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | base | n/a | [`0x3f24a08af929ffc25f91355b660c9983991c0199`](./contracts/base-8453/0x3f24a08af929ffc25f91355b660c9983991c0199/) | ⚠️ Unaudited |
| ProxyAdmin_TimelockedOneDay | unknown | base | n/a | [`0x05a991ea8352655f997b2811aa4eafa5133cb50d`](./contracts/base-8453/0x05a991ea8352655f997b2811aa4eafa5133cb50d/) | ⚠️ Unaudited |
| ProxyAdmin_TimelockedThreeDay | unknown | base | n/a | [`0xcb9b3a0f114e07bee9cb91a4a1ff8d19a4e48b8d`](./contracts/base-8453/0xcb9b3a0f114e07bee9cb91a4a1ff8d19a4e48b8d/) | ⚠️ Unaudited |
| SortedVessels | unknown | base | n/a | [`0x8a34f260065594f574832360c7f92c65f0591d34`](./contracts/base-8453/0x8a34f260065594f574832360c7f92c65f0591d34/) | ⚠️ Unaudited |
| StabilityPool | unknown | base | n/a | [`0x0745cb7882ff382d7524a9fba21642180d047ac8`](./contracts/base-8453/0x0745cb7882ff382d7524a9fba21642180d047ac8/) | ⚠️ Unaudited |
| TimelockControllerEnumerable | unknown | base | n/a | [`0xa23daaed5e2c9955fdeee239723d132b899af14d`](./contracts/base-8453/0xa23daaed5e2c9955fdeee239723d132b899af14d/) | ⚠️ Unaudited |
| VesselManagerOperations | unknown | base | n/a | [`0x1a9f91cff313a1e88c8e2f407b664de4cb3dbe78`](./contracts/base-8453/0x1a9f91cff313a1e88c8e2f407b664de4cb3dbe78/) | ⚠️ Unaudited |

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
| [hatsfinance.medium.com/gravita-audit-competition-final-writeup-dfb28463a0dc](https://hatsfinance.medium.com/gravita-audit-competition-final-writeup-dfb28463a0dc) | Hats Finance | Contest | n/a | unknown | Inherited from Gravita Protocol — forked code, scoped to VesselManager | inherited | 1 | n/a |
| [audits.md](https://docs.gravitaprotocol.com/gravita-docs/about-gravita-protocol/audits.md) | unknown | Audit | n/a | unknown | Inherited from Gravita Protocol — forked code, scoped to VesselManager | inherited | 1 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0x8ceaba86d4ae89f582a52e020ecf7f1f2f3e2a78`](./contracts/base-8453/0x8ceaba86d4ae89f582a52e020ecf7f1f2f3e2a78/) | ActivePool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2ad60d1d8bb39be30e06af25a90c66c9bd19eff5`](./contracts/base-8453/0x2ad60d1d8bb39be30e06af25a90c66c9bd19eff5/) | AdminContract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xac30987d30cfba18f564e9040d23fe38315587ea`](./contracts/base-8453/0xac30987d30cfba18f564e9040d23fe38315587ea/) | BorrowerOperations | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xc401d5b70ba613c57fa4316a86e74106616f86bc`](./contracts/base-8453/0xc401d5b70ba613c57fa4316a86e74106616f86bc/) | CollSurplusPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xbfcd661be34c99920036f176876746b9f5b68c26`](./contracts/base-8453/0xbfcd661be34c99920036f176876746b9f5b68c26/) | DebtToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x6673a757b4bd2005e6286a2b85e4313b37460ff1`](./contracts/base-8453/0x6673a757b4bd2005e6286a2b85e4313b37460ff1/) | DefaultPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x3842888cf4ec94b73a7622dcc4ff8d84b8366143`](./contracts/base-8453/0x3842888cf4ec94b73a7622dcc4ff8d84b8366143/) | FeeCollector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x38eff9ae273b8d71684927112037f1eeb1b3ee21`](./contracts/base-8453/0x38eff9ae273b8d71684927112037f1eeb1b3ee21/) | FlashArbExecutor_Morpho | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x9db37a53bbe5dcb221258122f307fc60a9d42dcc`](./contracts/base-8453/0x9db37a53bbe5dcb221258122f307fc60a9d42dcc/) | FlashArbRedemption_Morpho | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x110a56e6fa0fd09a89b182b73735e9f61750e697`](./contracts/base-8453/0x110a56e6fa0fd09a89b182b73735e9f61750e697/) | GasPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x422f315f82c28f577c663972daa2de6327a5e067`](./contracts/base-8453/0x422f315f82c28f577c663972daa2de6327a5e067/) | PegStabilityModuleWithStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x019ba6c927d0fd791f7b52fceca83f0e1ec8c2f8`](./contracts/base-8453/0x019ba6c927d0fd791f7b52fceca83f0e1ec8c2f8/) | PriceFeedV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x05a991ea8352655f997b2811aa4eafa5133cb50d`](./contracts/base-8453/0x05a991ea8352655f997b2811aa4eafa5133cb50d/) | ProxyAdmin_TimelockedOneDay | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xcb9b3a0f114e07bee9cb91a4a1ff8d19a4e48b8d`](./contracts/base-8453/0xcb9b3a0f114e07bee9cb91a4a1ff8d19a4e48b8d/) | ProxyAdmin_TimelockedThreeDay | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x8a34f260065594f574832360c7f92c65f0591d34`](./contracts/base-8453/0x8a34f260065594f574832360c7f92c65f0591d34/) | SortedVessels | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0745cb7882ff382d7524a9fba21642180d047ac8`](./contracts/base-8453/0x0745cb7882ff382d7524a9fba21642180d047ac8/) | StabilityPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xa23daaed5e2c9955fdeee239723d132b899af14d`](./contracts/base-8453/0xa23daaed5e2c9955fdeee239723d132b899af14d/) | TimelockControllerEnumerable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1a9f91cff313a1e88c8e2f407b664de4cb3dbe78`](./contracts/base-8453/0x1a9f91cff313a1e88c8e2f407b664de4cb3dbe78/) | VesselManagerOperations | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 19 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: inherited_name_remap=2

Fork inheritance lineage and inherited audits are included when available.
