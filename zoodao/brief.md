# Agentic Audit Brief: ZooDAO

⚠️ Lifecycle status: DECLINING - TVL dropped 0.0% over 90 days

## Project Overview

- Project: ZooDAO (`zoodao`)
- Lifecycle: declining (Tier 0, 97.8% below peak)
- Generated: 2026-06-22T13:35:06.164Z
- Pipeline run: v2-pipeline-2026-06-22-3875d1-de0f
- Chains: moonbeam
- Contract surface: 26 unique implementations (32 raw deployments)
- DeFi Llama TVL: $9,033.19
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

ZooDAO is a yield-bearing NFT battle arena on Moonbeam where users stake NFTs and tokens to earn rewards. It combines gamified NFT competitions with DeFi yield strategies, allowing participants to vote on battles and earn yield from integrated lending markets.

### Architecture

The ZooDAO family uses NftBattleArena for NFT staking and battles, XZoo as a governance token, and ListingList for NFT whitelisting. It relies on MErc20Delegator proxies to interact with Moonwell's lending markets, generating yield on deposited assets.

## Contract Surface Quality

- Indexed contracts: 558; live-surface contracts included: 32 (30 live, 2 unknown).
- Excluded by liveness: 496 inactive, 30 singleton, 0 uninitialized.
- Deployment units: 2/17 live.
- Detected codebases: compound-v2
- Unverified dependencies: 5/59.

## Audit Coverage Summary

- Verified implementations audited: 0/13 (0.0%)
- Verified + Unaudited implementations: 11
- Verified by bytecode match: 2
- Unverified implementations: 13
- Unique implementations: 26
- Raw deployments: 32
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-02 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (11)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| JumpRateModel | unknown | moonbeam | n/a | [`0x0b5f12...c6acf5`](./contracts/moonbeam-1284/0x0b5f126fa3116dbb769f6b8404d1a78c54c6acf5/) | ⚠️ Unaudited |
| MErc20DelegateFixer | unknown | moonbeam | unit-44167 | [`0x1c5564...cf484c`](./contracts/moonbeam-1284/0x1c55649f73cda2f72cef3dd6c5ca3d49efcf484c/) | ⚠️ Unaudited |
| MoonwellViewsV1Moonbeam | unknown | moonbeam | n/a | [`0x54ff1a...43310f`](./contracts/moonbeam-1284/0x54ff1a86ab91a8f85e89c65bef92f02e5343310f/) | ⚠️ Unaudited |
| MultichainGovernor | unknown | moonbeam | n/a | 3 deployments: moonbeam [`0x0ea816...4209ab`](./contracts/moonbeam-1284/0x0ea81678e4deb33aad9e214df76be3158b4209ab/); moonbeam `0x65299e...a707ab`; moonbeam `0x8769b7...d75838` | ⚠️ Unaudited |
| TemporalGovernor | unknown | moonbeam | n/a | 2 deployments: moonbeam [`0x1e336f...7fb563`](./contracts/moonbeam-1284/0x1e336faa789426ee30dccf975f582ac8bd7fb563/); moonbeam `0x908df7...ea4689` | ⚠️ Unaudited |
| Well | unknown | moonbeam | n/a | [`0x511ab5...2411e3`](./contracts/moonbeam-1284/0x511ab53f793683763e5a8829738301368a2411e3/) | ⚠️ Unaudited |
| WormholeBridgeAdapter | unknown | moonbeam | n/a | [`0x48e70f...8c6412`](./contracts/moonbeam-1284/0x48e70f68712bd275982e8351dfe1993a828c6412/) | ⚠️ Unaudited |
| WormholeUnwrapperAdapter | unknown | moonbeam | n/a | [`0x24af32...299c58`](./contracts/moonbeam-1284/0x24af32b0c4c94f0d406fbc3c8815666356299c58/) | ⚠️ Unaudited |
| XERC20Lockbox | unknown | moonbeam | n/a | [`0x0d4503...51b460`](./contracts/moonbeam-1284/0x0d45033775b290d69462944289b7a402a651b460/) | ⚠️ Unaudited |
| xWELLRouter | unknown | moonbeam | n/a | [`0x78c504...2db169`](./contracts/moonbeam-1284/0x78c504b6c0ea2adbf6a58b208c9888f3692db169/) | ⚠️ Unaudited |
| ZooDAO | unknown | moonbeam | n/a | [`0x7cd3e6...f40ec5`](./contracts/moonbeam-1284/0x7cd3e6e1a69409def0d78d17a492e8e143f40ec5/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (2)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| MErc20DelegateMadFixer | unknown | moonbeam | unit-44163 (2 proxies) | 3 deployments: moonbeam [`0x02e908...e61334`](./contracts/moonbeam-1284/0x02e9081dfadd37a852f9a73c4d7d69e615e61334/); moonbeam `0x24a9d8...833d1d`; moonbeam `0xd22da9...8211c3` | ⚠️ Unaudited (bytecode match) |
| MGlimmer | unknown | moonbeam | n/a | 2 deployments: moonbeam [`0x091608...4c7955`](./contracts/moonbeam-1284/0x091608f4e4a15335145be0a279483c0f8e4c7955/); moonbeam `0xa3a538...38bf84` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (13)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | moonbeam | n/a | `0x826d8e...590c29` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xa88594...2296ae` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xaaa20c...74a9ce` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xab9aad...386d4e` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xb6c94b...f9aeac` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xb84543...666df4` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xb8a798...2d40e5` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xcb4413...0a0e15` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xdec80b...5b21be` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xded4de...2d5c30` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xe5ef93...a380c3` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xf5f2ae...ce5401` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xfb26a4...7438c5` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [ZooDAO_Moonbeam_Battles_Audit_Report_by_WatchPug.pdf](https://github.com/ZooDAO-Project/moonbeam-battles/blob/master/audit/ZooDAO_Moonbeam_Battles_Audit_Report_by_WatchPug.pdf) | WatchPug | Audit | 2023-02 | stale | Direct | contract_name | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| moonbeam | [`0x0d4503...51b460`](./contracts/moonbeam-1284/0x0d45033775b290d69462944289b7a402a651b460/) | XERC20Lockbox | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0x78c504...2db169`](./contracts/moonbeam-1284/0x78c504b6c0ea2adbf6a58b208c9888f3692db169/) | xWELLRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0x7cd3e6...f40ec5`](./contracts/moonbeam-1284/0x7cd3e6e1a69409def0d78d17a492e8e143f40ec5/) | ZooDAO | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 6 |
| standard_library | 2 |
| needs_review | 15 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: extraction_exact=50

Zero-match audit list:

- [14175] ZooDAO_Moonbeam_Battles_Audit_Report_by_WatchPug.pdf

Fork inheritance lineage and inherited audits are included when available.
