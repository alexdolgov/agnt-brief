# Agentic Audit Brief: Snowbank

## Project Overview

- Project: Snowbank (`snowbank`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:56.439Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-ae05
- Chains: avalanche
- Contract surface: 7 unique implementations (10 raw deployments)
- DeFi Llama TVL: $3,791,753.43
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Reserve Currency. Structurally: 19 project-authored contract(s) across 1 chain(s); 2 ERC20 tokens; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 2 common project-authored base contract(s) (joeerc20, erc20permit). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 27; live-surface contracts included: 10 (9 live, 1 unknown).
- Excluded by liveness: 17 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/6 (0.0%)
- Deployed-live implementations: 6 of 7 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/6
- Verified + Unaudited implementations: 6
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 7
- Raw deployments: 10
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

### ⚠️ Verified + Unaudited (6)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ETHTimeBondDepository | unknown | avalanche | n/a | [`0x472c18...bfee9c`](./contracts/avalanche-43114/0x472c18c4079ecb68629f4fba1141172404bfee9c/) | ⚠️ Unaudited |
| JoePair | unknown | avalanche | n/a | 4 deployments: avalanche [`0x425c45...4404d8`](./contracts/avalanche-43114/0x425c45adfb53861e5db8f17d9b072ab60d4404d8/); avalanche `0x53942d...3f59a2`; avalanche `0x781655...fd755d`; avalanche `0xa3d2cf...417d6d` | ⚠️ Unaudited |
| SnowbankFinalRedistribution | unknown | avalanche | n/a | [`0xafe654...476887`](./contracts/avalanche-43114/0xafe654c1b34e9f702bf8007bccd6481b90476887/) | ⚠️ Unaudited |
| StakingWarmup | unknown | avalanche | n/a | [`0xb99639...2ca625`](./contracts/avalanche-43114/0xb996392302721270609b41f004357c0c4e2ca625/) | ⚠️ Unaudited |
| TimeERC20Token | token | avalanche | n/a | [`0x7d1232...a8942f`](./contracts/avalanche-43114/0x7d1232b90d3f809a54eeaeebc639c62df8a8942f/) | ⚠️ Unaudited |
| TimeStaking | unknown | avalanche | n/a | [`0x85784d...2d99ad`](./contracts/avalanche-43114/0x85784d5e2ccae89bcb39ebf0ac6cdc93d42d99ad/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | avalanche | n/a | `0xfc3625...073f5e` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| avalanche | [`0x472c18...bfee9c`](./contracts/avalanche-43114/0x472c18c4079ecb68629f4fba1141172404bfee9c/) | ETHTimeBondDepository | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x425c45...4404d8`](./contracts/avalanche-43114/0x425c45adfb53861e5db8f17d9b072ab60d4404d8/) | JoePair | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xafe654...476887`](./contracts/avalanche-43114/0xafe654c1b34e9f702bf8007bccd6481b90476887/) | SnowbankFinalRedistribution | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xb99639...2ca625`](./contracts/avalanche-43114/0xb996392302721270609b41f004357c0c4e2ca625/) | StakingWarmup | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x7d1232...a8942f`](./contracts/avalanche-43114/0x7d1232b90d3f809a54eeaeebc639c62df8a8942f/) | TimeERC20Token | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x85784d...2d99ad`](./contracts/avalanche-43114/0x85784d5e2ccae89bcb39ebf0ac6cdc93d42d99ad/) | TimeStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 6 |
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
