# Agentic Audit Brief: GrowiHF

## Project Overview

- Project: GrowiHF (`growihf`)
- Website: [https://hf.growi.fi/](https://hf.growi.fi/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:21.099Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-1cbb
- Chains: arbitrum, ethereum
- Contract surface: 15 unique implementations (27 raw deployments)
- DeFi Llama TVL: $8,680,984.96
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield. Structurally: 4 project-authored contract(s) across 1 chain(s); 1 ERC20 token; upgradeable via ERC1967/UUPS proxies; built on openzeppelin-upgradeable.

### Architecture

The protocol comprises 2 functional families. Contracts operate as largely independent structural surfaces. Dominant framework: openzeppelin-upgradeable.

## Contract Surface Quality

- Indexed contracts: 49; live-surface contracts included: 15 (14 live, 1 unknown).
- Excluded by liveness: 34 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/14 (0.0%)
- Deployed-live implementations: 14 of 15 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/14
- Verified + Unaudited implementations: 14
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 15
- Raw deployments: 27
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

### ⚠️ Verified + Unaudited (14)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Hibachi | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x003a16...4ec3f0`](./contracts/arbitrum-42161/0x003a165708dc2a9154158c728e7d868b044ec3f0/); arbitrum `0x6dc69d...1db97e` | ⚠️ Unaudited |
| Hibachi | unknown | arbitrum | n/a | [`0x00804a...419977`](./contracts/arbitrum-42161/0x00804a9d1c033109d17aa4bf5a45f12211419977/) | ⚠️ Unaudited |
| Hibachi | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x01ac16...7d3229`](./contracts/arbitrum-42161/0x01ac1645e29474ac425ff5385d61ae07b37d3229/); arbitrum `0x022ddd...f66a3f` | ⚠️ Unaudited |
| Hibachi | unknown | arbitrum | n/a | [`0x0e9c1a...1f5400`](./contracts/arbitrum-42161/0x0e9c1a3aa696299e38b00a8144bf6dc16c1f5400/) | ⚠️ Unaudited |
| Hibachi | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x1f32d3...05c94c`](./contracts/arbitrum-42161/0x1f32d3627262c2e7f5710bda7e928ed80505c94c/); arbitrum `0xd32f46...9c0a7c` | ⚠️ Unaudited |
| Hibachi | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x2e0e22...8055a5`](./contracts/arbitrum-42161/0x2e0e224a4c0ffbf65e7a87359a97d4895b8055a5/); arbitrum `0x5f2612...edf66a` | ⚠️ Unaudited |
| Hibachi | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x478ed2...92fb9d`](./contracts/arbitrum-42161/0x478ed21048eb82a915f9c73dd8ea5e0fc992fb9d/); arbitrum `0x8677ab...857456` | ⚠️ Unaudited |
| HibachiEscape | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x023710...35c2b5`](./contracts/arbitrum-42161/0x0237107a31994a850fdccec78fe0bf913c35c2b5/); arbitrum `0xd47ca9...0dd0d1` | ⚠️ Unaudited |
| HibachiEscape | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x1ffe7d...d5523d`](./contracts/arbitrum-42161/0x1ffe7da88d6a65ae0e03b1405ab30129acd5523d/); arbitrum `0x5aa894...13beef` | ⚠️ Unaudited |
| HibachiEscape | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x3dbc59...773472`](./contracts/arbitrum-42161/0x3dbc59b559a4f3cb952b5990ca6f19ad9e773472/); arbitrum `0x7f1078...954076` | ⚠️ Unaudited |
| HibachiEscape | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x786c25...bf978c`](./contracts/arbitrum-42161/0x786c254351bf4ca752f88b003f55f63c24bf978c/); arbitrum `0xea7e46...9fac74` | ⚠️ Unaudited |
| HibachiEscape | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x7edc7c...5cff0c`](./contracts/arbitrum-42161/0x7edc7c0065332cf9387c20edad18ec95865cff0c/); arbitrum `0xbc0c9a...4ed69b` | ⚠️ Unaudited |
| HibachiEscape | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x818351...a516d4`](./contracts/arbitrum-42161/0x818351386c3a63a8244c78adad42b9b4f9a516d4/); arbitrum `0x86c58d...585b9e` | ⚠️ Unaudited |
| HibachiEscape | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0xd4f9b5...e4282b`](./contracts/arbitrum-42161/0xd4f9b57fe777e133566857cb178355d20fe4282b/); arbitrum `0xd69077...0e33d7` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x1e37a3...768d5e` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0x003a16...4ec3f0`](./contracts/arbitrum-42161/0x003a165708dc2a9154158c728e7d868b044ec3f0/) | Hibachi | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x00804a...419977`](./contracts/arbitrum-42161/0x00804a9d1c033109d17aa4bf5a45f12211419977/) | Hibachi | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x01ac16...7d3229`](./contracts/arbitrum-42161/0x01ac1645e29474ac425ff5385d61ae07b37d3229/) | Hibachi | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0e9c1a...1f5400`](./contracts/arbitrum-42161/0x0e9c1a3aa696299e38b00a8144bf6dc16c1f5400/) | Hibachi | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1f32d3...05c94c`](./contracts/arbitrum-42161/0x1f32d3627262c2e7f5710bda7e928ed80505c94c/) | Hibachi | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x2e0e22...8055a5`](./contracts/arbitrum-42161/0x2e0e224a4c0ffbf65e7a87359a97d4895b8055a5/) | Hibachi | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x478ed2...92fb9d`](./contracts/arbitrum-42161/0x478ed21048eb82a915f9c73dd8ea5e0fc992fb9d/) | Hibachi | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x023710...35c2b5`](./contracts/arbitrum-42161/0x0237107a31994a850fdccec78fe0bf913c35c2b5/) | HibachiEscape | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1ffe7d...d5523d`](./contracts/arbitrum-42161/0x1ffe7da88d6a65ae0e03b1405ab30129acd5523d/) | HibachiEscape | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x3dbc59...773472`](./contracts/arbitrum-42161/0x3dbc59b559a4f3cb952b5990ca6f19ad9e773472/) | HibachiEscape | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x786c25...bf978c`](./contracts/arbitrum-42161/0x786c254351bf4ca752f88b003f55f63c24bf978c/) | HibachiEscape | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x7edc7c...5cff0c`](./contracts/arbitrum-42161/0x7edc7c0065332cf9387c20edad18ec95865cff0c/) | HibachiEscape | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x818351...a516d4`](./contracts/arbitrum-42161/0x818351386c3a63a8244c78adad42b9b4f9a516d4/) | HibachiEscape | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xd4f9b5...e4282b`](./contracts/arbitrum-42161/0xd4f9b57fe777e133566857cb178355d20fe4282b/) | HibachiEscape | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 14 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
