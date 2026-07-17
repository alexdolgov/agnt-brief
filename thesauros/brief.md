# Agentic Audit Brief: Thesauros

## Project Overview

- Project: Thesauros (`thesauros`)
- Website: [https://thesauros.io](https://thesauros.io)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:01.446Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-16bc
- Chains: arbitrum, base
- Contract surface: 25 unique implementations (38 raw deployments)
- DeFi Llama TVL: $50,801.86
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield. Structurally: 9 project-authored contract(s) across 2 chain(s); 1 ERC4626 vault, 1 ERC20 token; built on openzeppelin.

### Architecture

The protocol comprises 4 functional families. Its contracts share 1 common project-authored base contract(s) (accessmanager). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 38; live-surface contracts included: 38 (23 live, 15 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/7 (0.0%)
- Deployed-live implementations: 10 of 25 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/10
- Verified + Unaudited implementations: 10
- Verified by bytecode match: 0
- Unverified implementations: 15
- Unique implementations: 25
- Raw deployments: 38
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-10 (fresh)
- Audit staleness (calendar age): 1 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (10)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AaveV3Provider | unknown | base | n/a | 2 deployments: base [`0x034a62f9617e8a1770f7c7eba04e2dab2fda7f12`](./contracts/base-8453/0x034a62f9617e8a1770f7c7eba04e2dab2fda7f12/); arbitrum `0xbeedb89dc47cab2678ebb796cfc8131062f16e39` | ⚠️ Unaudited |
| CompoundV3Provider | unknown | arbitrum | n/a | 2 deployments: base `0xffac48125fa4bd8bc03cdca725459563aae77406`; arbitrum [`0xabd932e0fff6417a4af16431d8d86a4e62d62fa3`](./contracts/arbitrum-42161/0xabd932e0fff6417a4af16431d8d86a4e62d62fa3/) | ⚠️ Unaudited |
| CustomDolomiteGetter | unknown | arbitrum | n/a | [`0x7b1ffbf8e633bc52d356601ef3323efeef1e78a3`](./contracts/arbitrum-42161/0x7b1ffbf8e633bc52d356601ef3323efeef1e78a3/) | ⚠️ Unaudited |
| DolomiteProvider | unknown | arbitrum | n/a | [`0x3d036b97482cc6c42753da51917b3302d5d0e9ae`](./contracts/arbitrum-42161/0x3d036b97482cc6c42753da51917b3302d5d0e9ae/) | ⚠️ Unaudited |
| MorphoProvider | unknown | arbitrum | n/a | 8 deployments: base `0x0ef8ced75e5877c69ac8619145219b67d76193a1`; base `0x34c164e7021e38921ae20a723234d2b1b52289e9`; base `0x4516f8324bfacc71e5099fabfc51e97e4905c062`; base `0x642e31be2ff6d3eba38dc16760f3a146092d89e3`; arbitrum [`0x00651b3e70873afc852d9068da4d359c473aa6c3`](./contracts/arbitrum-42161/0x00651b3e70873afc852d9068da4d359c473aa6c3/); arbitrum `0x54e5ff7ff115e2b01332d81f7effb02adef3c23d`; arbitrum `0x7b77cafe29d62c984e569793ad1c1dc9ed542413`; arbitrum `0xffd8b1a9b97787c169154a485925512c79ca53e7` | ⚠️ Unaudited |
| ProviderManager | governance | base | n/a | 2 deployments: base [`0x75bad13288603842bd8083eed7b97c8c5e816dd1`](./contracts/base-8453/0x75bad13288603842bd8083eed7b97c8c5e816dd1/); base `0xffd8b1a9b97787c169154a485925512c79ca53e7` | ⚠️ Unaudited |
| Rebalancer | adapter | base | n/a | [`0xca6029f2d5f5d36da047206ae7a254fa80f579b8`](./contracts/base-8453/0xca6029f2d5f5d36da047206ae7a254fa80f579b8/) | ⚠️ Unaudited |
| Rebalancer | adapter | arbitrum | n/a | 3 deployments: base `0x6c7013b3596623d146781c90b4ee182331af6148`; arbitrum [`0x57c10bd3fdb2849384dde954f63d37dfad9d7d70`](./contracts/arbitrum-42161/0x57c10bd3fdb2849384dde954f63d37dfad9d7d70/); arbitrum `0xcd72118c0707d315fa13350a63596dcd9b294a30` | ⚠️ Unaudited |
| Timelock | governance | base | n/a | 2 deployments: base [`0x9b9a07b79557e109d454913314e5ef41e1c679b2`](./contracts/base-8453/0x9b9a07b79557e109d454913314e5ef41e1c679b2/); base `0xed495c426f361a05572b48e4b546d307812ad2c1` | ⚠️ Unaudited |
| VaultManager | core_logic | base | n/a | [`0x839e57080c18195d8d343a02c2f623b5916f7383`](./contracts/base-8453/0x839e57080c18195d8d343a02c2f623b5916f7383/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (15)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | base | n/a | `0x76092be46056ec705c0c2aeb27e06f2a1acb3d76` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x852f69cb1c535426eedfad8dcd8ecc6fa14c1fd9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8ea1e9dc0b5f8327d0c8006ad31a2a962acf455d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9ea0e934bf1f37913ea580b25127f36ab04ed10d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa2cc6ab9e1caa52bb8012672a47412725265889e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0ef8ced75e5877c69ac8619145219b67d76193a1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2aed916134b2a470c8d3ffd4f1fb06e75ace0d7e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x34c164e7021e38921ae20a723234d2b1b52289e9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x44b17cd46822715727a59114d7fd10688adf024f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4516f8324bfacc71e5099fabfc51e97e4905c062` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6730f490edbcdb4ab7abe2de71131ee55d2af71a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6c7013b3596623d146781c90b4ee182331af6148` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x74bce2a3bcec4dfd1d7ecd530e743e268af342ca` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x839e57080c18195d8d343a02c2f623b5916f7383` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9b9a07b79557e109d454913314e5ef41e1c679b2` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [thesauros-oct-25(Final).pdf](https://github.com/Hexens/Smart-Contract-Review-Public-Reports/blob/main/thesauros-oct-25(Final).pdf) | unknown | Audit | 2025-10 | fresh | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0x7b1ffbf8e633bc52d356601ef3323efeef1e78a3`](./contracts/arbitrum-42161/0x7b1ffbf8e633bc52d356601ef3323efeef1e78a3/) | CustomDolomiteGetter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x3d036b97482cc6c42753da51917b3302d5d0e9ae`](./contracts/arbitrum-42161/0x3d036b97482cc6c42753da51917b3302d5d0e9ae/) | DolomiteProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x75bad13288603842bd8083eed7b97c8c5e816dd1`](./contracts/base-8453/0x75bad13288603842bd8083eed7b97c8c5e816dd1/) | ProviderManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xca6029f2d5f5d36da047206ae7a254fa80f579b8`](./contracts/base-8453/0xca6029f2d5f5d36da047206ae7a254fa80f579b8/) | Rebalancer | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x57c10bd3fdb2849384dde954f63d37dfad9d7d70`](./contracts/arbitrum-42161/0x57c10bd3fdb2849384dde954f63d37dfad9d7d70/) | Rebalancer | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x9b9a07b79557e109d454913314e5ef41e1c679b2`](./contracts/base-8453/0x9b9a07b79557e109d454913314e5ef41e1c679b2/) | Timelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x839e57080c18195d8d343a02c2f623b5916f7383`](./contracts/base-8453/0x839e57080c18195d8d343a02c2f623b5916f7383/) | VaultManager | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 7 |
| upstream | 3 |
| standard_library | 0 |
| needs_review | 15 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [14005] thesauros-oct-25(Final).pdf

Fork inheritance lineage and inherited audits are included when available.
