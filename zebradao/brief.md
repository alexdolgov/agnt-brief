# Agentic Audit Brief: ZebraDAO

## Project Overview

- Project: ZebraDAO (`zebradao`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:14.772Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: base
- Contract surface: 11 unique implementations (11 raw deployments)
- DeFi Llama TVL: $401,169.65
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Lending. Structurally: 11 project-authored contract(s) across 1 chain(s); 7 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 11 common project-authored base contract(s) (eip712, ctokeninterface, ctokenstorage). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 11; live-surface contracts included: 11 (11 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/10 (0.0%)
- Deployed-live implementations: 11 of 11 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/11
- Verified + Unaudited implementations: 11
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 11
- Raw deployments: 11
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

### ⚠️ Verified + Unaudited (11)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CErc20Delegate | unknown | base | n/a | [`0x798937...6b3e42`](./contracts/base-8453/0x798937a81cea1cc124545210b6b45719516b3e42/) | ⚠️ Unaudited |
| CErc20Delegator | unknown | base | n/a | [`0x8b5114...9d93f1`](./contracts/base-8453/0x8b51143530a92f703c954ab0d261ef688d9d93f1/) | ⚠️ Unaudited |
| CEtherDelegate | unknown | base | n/a | [`0x4b20db...7c6b36`](./contracts/base-8453/0x4b20dbdd4d5a7a762f788796df5e0487007c6b36/) | ⚠️ Unaudited |
| CometProxyAdmin | unknown | base | n/a | [`0xb42b4a...bed4ed`](./contracts/base-8453/0xb42b4a20d0b381ad9539a2f01f346245abbed4ed/) | ⚠️ Unaudited |
| Comptroller | unknown | base | n/a | [`0xbea1d5...5ed6e7`](./contracts/base-8453/0xbea1d596ae022fae90d84ffaf0907e38a25ed6e7/) | ⚠️ Unaudited |
| JumpRateModelV2 | unknown | base | n/a | [`0xe77969...50199d`](./contracts/base-8453/0xe779696e43df41c23c1a4d190ac8144c4250199d/) | ⚠️ Unaudited |
| RewardDistributor | unknown | base | n/a | [`0x4da03b...7b7e05`](./contracts/base-8453/0x4da03b673e9b3a21e76ab389c6cf145bfb7b7e05/) | ⚠️ Unaudited |
| StakedDistributor | unknown | base | n/a | [`0x0b42a3...5f5f89`](./contracts/base-8453/0x0b42a3d7290a94df04cf4193f62856950a5f5f89/) | ⚠️ Unaudited |
| TimelockController | unknown | base | n/a | [`0x536652...b11378`](./contracts/base-8453/0x5366523cb3dcefb854eb81913fef1abf8cb11378/) | ⚠️ Unaudited |
| Token | unknown | base | n/a | [`0xf0ce1d...af899e`](./contracts/base-8453/0xf0ce1d83b5fc9c67f157d8b97fd09e2cf8af899e/) | ⚠️ Unaudited |
| TokenVesting | unknown | base | n/a | [`0x15682f...b4f9c7`](./contracts/base-8453/0x15682f9a45a2eaff039a5884105b8139c3b4f9c7/) | ⚠️ Unaudited |

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
| base | [`0x798937...6b3e42`](./contracts/base-8453/0x798937a81cea1cc124545210b6b45719516b3e42/) | CErc20Delegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x8b5114...9d93f1`](./contracts/base-8453/0x8b51143530a92f703c954ab0d261ef688d9d93f1/) | CErc20Delegator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x4b20db...7c6b36`](./contracts/base-8453/0x4b20dbdd4d5a7a762f788796df5e0487007c6b36/) | CEtherDelegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xb42b4a...bed4ed`](./contracts/base-8453/0xb42b4a20d0b381ad9539a2f01f346245abbed4ed/) | CometProxyAdmin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xbea1d5...5ed6e7`](./contracts/base-8453/0xbea1d596ae022fae90d84ffaf0907e38a25ed6e7/) | Comptroller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xe77969...50199d`](./contracts/base-8453/0xe779696e43df41c23c1a4d190ac8144c4250199d/) | JumpRateModelV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x4da03b...7b7e05`](./contracts/base-8453/0x4da03b673e9b3a21e76ab389c6cf145bfb7b7e05/) | RewardDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0b42a3...5f5f89`](./contracts/base-8453/0x0b42a3d7290a94df04cf4193f62856950a5f5f89/) | StakedDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xf0ce1d...af899e`](./contracts/base-8453/0xf0ce1d83b5fc9c67f157d8b97fd09e2cf8af899e/) | Token | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x15682f...b4f9c7`](./contracts/base-8453/0x15682f9a45a2eaff039a5884105b8139c3b4f9c7/) | TokenVesting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 10 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
