# Agentic Audit Brief: Enclabs

## Project Overview

- Project: Enclabs (`enclabs`)
- Website: [https://www.enclabs.finance/](https://www.enclabs.finance/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:11.791Z
- Pipeline run: v2-2026-07-03-89943a
- Chains: sonic
- Contract surface: 34 unique implementations (34 raw deployments)
- DeFi Llama TVL: $132,470.05
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Lending. Structurally: 31 project-authored contract(s) across 1 chain(s); role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 9 common project-authored base contract(s) (cappedcorrelatedtokenoracle, cappedoracle, interestratemodel). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 34; live-surface contracts included: 34 (34 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/31 (0.0%)
- Deployed-live implementations: 34 of 34 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/34
- Verified + Unaudited implementations: 34
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 34
- Raw deployments: 34
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (34)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AccessControlManager | unknown | sonic | n/a | [`0x97dede...1803a8`](./contracts/sonic-146/0x97dedea6ddfb3f2daf5ec347aa61458f4a1803a8/) | ⚠️ Unaudited |
| BeaconProxy | unknown | sonic | n/a | [`0x04568d...c4280c`](./contracts/sonic-146/0x04568db12221d60c93e1db9cb7933ad6b7c4280c/) | ⚠️ Unaudited |
| BeaconProxy | unknown | sonic | n/a | [`0x764634...ac9b13`](./contracts/sonic-146/0x76463494e39e259470301aa1c2b48e2ca4ac9b13/) | ⚠️ Unaudited |
| BoundValidator | unknown | sonic | n/a | [`0x53673d...ff4ad9`](./contracts/sonic-146/0x53673d37aba538e987678287ddadba543fff4ad9/) | ⚠️ Unaudited |
| Comptroller | unknown | sonic | n/a | [`0x0781bd...60db3c`](./contracts/sonic-146/0x0781bd52ba23e163afadccb9701681489560db3c/) | ⚠️ Unaudited |
| EnclabsTreveeVeETHManager | unknown | sonic | n/a | [`0x84e1a6...381f8a`](./contracts/sonic-146/0x84e1a6e4926713b3ab9d488c7dcd36016f381f8a/) | ⚠️ Unaudited |
| EnclabsTreveeVeManager | unknown | sonic | n/a | [`0x01d451...b72e81`](./contracts/sonic-146/0x01d451a101ab5d36b0babda57291dba6dab72e81/) | ⚠️ Unaudited |
| EnclabsTreveeVeUSD | unknown | sonic | n/a | [`0x420b14...8e9e4c`](./contracts/sonic-146/0x420b14a72d185bc8025dd73135f4cd452e8e9e4c/) | ⚠️ Unaudited |
| EnclabsVeETHOracle | unknown | sonic | n/a | [`0x4d3e2a...3fbcf2`](./contracts/sonic-146/0x4d3e2a717b0d43dfb0b76ced9126e1188a3fbcf2/) | ⚠️ Unaudited |
| HLP0Oracle | unknown | sonic | n/a | [`0x000d4c...9dad4c`](./contracts/sonic-146/0x000d4c6027d2a6f15b1570153a1e696cee9dad4c/) | ⚠️ Unaudited |
| JumpRateModelV2 | unknown | sonic | n/a | [`0x02f9d2...dc5394`](./contracts/sonic-146/0x02f9d2fe51c5be5b1e1c87c86c205a7348dc5394/) | ⚠️ Unaudited |
| NativeTokenGateway | unknown | sonic | n/a | [`0x4fe896...1016bc`](./contracts/sonic-146/0x4fe8960c5bf853d8b019fc84656ab665391016bc/) | ⚠️ Unaudited |
| OneJumpOracleV2 | unknown | sonic | n/a | [`0x70996e...21fa8a`](./contracts/sonic-146/0x70996e1ad88396b9fcdf53a5c792053af921fa8a/) | ⚠️ Unaudited |
| OptimizedTransparentUpgradeableProxy | unknown | sonic | n/a | [`0x043af3...ec6934`](./contracts/sonic-146/0x043af3a51eca0b78e79b1978a028b81202ec6934/) | ⚠️ Unaudited |
| OptimizedTransparentUpgradeableProxy | unknown | sonic | n/a | [`0x2281df...1491fa`](./contracts/sonic-146/0x2281dff0ba97cc5649d026b1fac76de8f21491fa/) | ⚠️ Unaudited |
| OptimizedTransparentUpgradeableProxy | unknown | sonic | n/a | [`0x2306c7...938b7c`](./contracts/sonic-146/0x2306c741c273a8a179fc0be19bc8062351938b7c/) | ⚠️ Unaudited |
| OptimizedTransparentUpgradeableProxy | unknown | sonic | n/a | [`0x233f1c...d88be4`](./contracts/sonic-146/0x233f1c2df407fe0e5c71986b805f138519d88be4/) | ⚠️ Unaudited |
| OptimizedTransparentUpgradeableProxy | unknown | sonic | n/a | [`0x44c97b...bfe309`](./contracts/sonic-146/0x44c97bd3a1c8343fda004fc87d2614edcfbfe309/) | ⚠️ Unaudited |
| OptimizedTransparentUpgradeableProxy | unknown | sonic | n/a | [`0x52041a...ae94f3`](./contracts/sonic-146/0x52041acd6a69a1847e4c41c8bdddb0b37dae94f3/) | ⚠️ Unaudited |
| OptimizedTransparentUpgradeableProxy | unknown | sonic | n/a | [`0x5b567e...0dc418`](./contracts/sonic-146/0x5b567efae9b3cf5fad9caa131a27962d1e0dc418/) | ⚠️ Unaudited |
| OptimizedTransparentUpgradeableProxy | unknown | sonic | n/a | [`0x7fbcd3...d987d1`](./contracts/sonic-146/0x7fbcd3cc6b8d853116dc1bcf78c95c334cd987d1/) | ⚠️ Unaudited |
| OptimizedTransparentUpgradeableProxy | unknown | sonic | n/a | [`0xb9ea44...2141a4`](./contracts/sonic-146/0xb9ea44d1aa76d5cfd475c2800e186d3dea2141a4/) | ⚠️ Unaudited |
| OptimizedTransparentUpgradeableProxy | unknown | sonic | n/a | [`0xc4b0b0...c7b300`](./contracts/sonic-146/0xc4b0b077e5a5a6dd8372ac7610772fefbbc7b300/) | ⚠️ Unaudited |
| OptimizedTransparentUpgradeableProxy | unknown | sonic | n/a | [`0xea231b...cb5566`](./contracts/sonic-146/0xea231b942a767bfec5c0bae31227c3f0f3cb5566/) | ⚠️ Unaudited |
| OptimizedTransparentUpgradeableProxy | unknown | sonic | n/a | [`0xf20dd7...45c6c2`](./contracts/sonic-146/0xf20dd7f4035a7c77d570832a3a2e9d77e645c6c2/) | ⚠️ Unaudited |
| PoolLens | unknown | sonic | n/a | [`0x3567b1...5d65f3`](./contracts/sonic-146/0x3567b16050cb90236997ef47b1941502e85d65f3/) | ⚠️ Unaudited |
| ProtocolShareReserve | unknown | sonic | n/a | [`0x171849...2a66aa`](./contracts/sonic-146/0x17184925b542d0a196949fd1cbe891e2852a66aa/) | ⚠️ Unaudited |
| ReserveRecipient | unknown | sonic | n/a | [`0x4c32c3...11615b`](./contracts/sonic-146/0x4c32c3f0bc7236f78bac175deb415c3ce511615b/) | ⚠️ Unaudited |
| ResilientOracle | unknown | sonic | n/a | [`0x57c919...5475df`](./contracts/sonic-146/0x57c919048a3ee5d4b8970b22fb8f8e3ed05475df/) | ⚠️ Unaudited |
| StableJackYTscUSDOracle | unknown | sonic | n/a | [`0x1caf3d...214dde`](./contracts/sonic-146/0x1caf3df5d5bb31b17d50e8662650da0e89214dde/) | ⚠️ Unaudited |
| TimelockV8 | unknown | sonic | n/a | [`0x81c6ed...416191`](./contracts/sonic-146/0x81c6ed58e5486d3c67196890a4c2d130bc416191/) | ⚠️ Unaudited |
| TwoKinksInterestRateModel | unknown | sonic | n/a | [`0x2fc30e...436dc9`](./contracts/sonic-146/0x2fc30e4b68232c69ae35df21067b3802ff436dc9/) | ⚠️ Unaudited |
| UpgradeableBeacon | unknown | sonic | n/a | [`0x943358...736024`](./contracts/sonic-146/0x943358c1871aaf3ba55bd3088cb75a4054736024/) | ⚠️ Unaudited |
| VTreasuryV8 | unknown | sonic | n/a | [`0x172bc3...5c4ffd`](./contracts/sonic-146/0x172bc36d3f092453ce6f3f9b30f1d6ac365c4ffd/) | ⚠️ Unaudited |

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
| [Audits](https://enclabs.gitbook.io/enclabs-documentation/security-and-audits/audits.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| sonic | [`0x97dede...1803a8`](./contracts/sonic-146/0x97dedea6ddfb3f2daf5ec347aa61458f4a1803a8/) | AccessControlManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x53673d...ff4ad9`](./contracts/sonic-146/0x53673d37aba538e987678287ddadba543fff4ad9/) | BoundValidator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x0781bd...60db3c`](./contracts/sonic-146/0x0781bd52ba23e163afadccb9701681489560db3c/) | Comptroller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x84e1a6...381f8a`](./contracts/sonic-146/0x84e1a6e4926713b3ab9d488c7dcd36016f381f8a/) | EnclabsTreveeVeETHManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x01d451...b72e81`](./contracts/sonic-146/0x01d451a101ab5d36b0babda57291dba6dab72e81/) | EnclabsTreveeVeManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x420b14...8e9e4c`](./contracts/sonic-146/0x420b14a72d185bc8025dd73135f4cd452e8e9e4c/) | EnclabsTreveeVeUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x4d3e2a...3fbcf2`](./contracts/sonic-146/0x4d3e2a717b0d43dfb0b76ced9126e1188a3fbcf2/) | EnclabsVeETHOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x000d4c...9dad4c`](./contracts/sonic-146/0x000d4c6027d2a6f15b1570153a1e696cee9dad4c/) | HLP0Oracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x02f9d2...dc5394`](./contracts/sonic-146/0x02f9d2fe51c5be5b1e1c87c86c205a7348dc5394/) | JumpRateModelV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x4fe896...1016bc`](./contracts/sonic-146/0x4fe8960c5bf853d8b019fc84656ab665391016bc/) | NativeTokenGateway | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x70996e...21fa8a`](./contracts/sonic-146/0x70996e1ad88396b9fcdf53a5c792053af921fa8a/) | OneJumpOracleV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x043af3...ec6934`](./contracts/sonic-146/0x043af3a51eca0b78e79b1978a028b81202ec6934/) | OptimizedTransparentUpgradeableProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x2281df...1491fa`](./contracts/sonic-146/0x2281dff0ba97cc5649d026b1fac76de8f21491fa/) | OptimizedTransparentUpgradeableProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x2306c7...938b7c`](./contracts/sonic-146/0x2306c741c273a8a179fc0be19bc8062351938b7c/) | OptimizedTransparentUpgradeableProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x233f1c...d88be4`](./contracts/sonic-146/0x233f1c2df407fe0e5c71986b805f138519d88be4/) | OptimizedTransparentUpgradeableProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x44c97b...bfe309`](./contracts/sonic-146/0x44c97bd3a1c8343fda004fc87d2614edcfbfe309/) | OptimizedTransparentUpgradeableProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x52041a...ae94f3`](./contracts/sonic-146/0x52041acd6a69a1847e4c41c8bdddb0b37dae94f3/) | OptimizedTransparentUpgradeableProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x5b567e...0dc418`](./contracts/sonic-146/0x5b567efae9b3cf5fad9caa131a27962d1e0dc418/) | OptimizedTransparentUpgradeableProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x7fbcd3...d987d1`](./contracts/sonic-146/0x7fbcd3cc6b8d853116dc1bcf78c95c334cd987d1/) | OptimizedTransparentUpgradeableProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xb9ea44...2141a4`](./contracts/sonic-146/0xb9ea44d1aa76d5cfd475c2800e186d3dea2141a4/) | OptimizedTransparentUpgradeableProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xc4b0b0...c7b300`](./contracts/sonic-146/0xc4b0b077e5a5a6dd8372ac7610772fefbbc7b300/) | OptimizedTransparentUpgradeableProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xea231b...cb5566`](./contracts/sonic-146/0xea231b942a767bfec5c0bae31227c3f0f3cb5566/) | OptimizedTransparentUpgradeableProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xf20dd7...45c6c2`](./contracts/sonic-146/0xf20dd7f4035a7c77d570832a3a2e9d77e645c6c2/) | OptimizedTransparentUpgradeableProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x3567b1...5d65f3`](./contracts/sonic-146/0x3567b16050cb90236997ef47b1941502e85d65f3/) | PoolLens | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x171849...2a66aa`](./contracts/sonic-146/0x17184925b542d0a196949fd1cbe891e2852a66aa/) | ProtocolShareReserve | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x4c32c3...11615b`](./contracts/sonic-146/0x4c32c3f0bc7236f78bac175deb415c3ce511615b/) | ReserveRecipient | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x57c919...5475df`](./contracts/sonic-146/0x57c919048a3ee5d4b8970b22fb8f8e3ed05475df/) | ResilientOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x1caf3d...214dde`](./contracts/sonic-146/0x1caf3df5d5bb31b17d50e8662650da0e89214dde/) | StableJackYTscUSDOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x81c6ed...416191`](./contracts/sonic-146/0x81c6ed58e5486d3c67196890a4c2d130bc416191/) | TimelockV8 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x2fc30e...436dc9`](./contracts/sonic-146/0x2fc30e4b68232c69ae35df21067b3802ff436dc9/) | TwoKinksInterestRateModel | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x172bc3...5c4ffd`](./contracts/sonic-146/0x172bc36d3f092453ce6f3f9b30f1d6ac365c4ffd/) | VTreasuryV8 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 31 |
| upstream | 0 |
| standard_library | 3 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [19732] Audits

Fork inheritance lineage and inherited audits are included when available.
