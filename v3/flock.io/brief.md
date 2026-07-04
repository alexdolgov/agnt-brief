# Agentic Audit Brief: FLock.io

## Project Overview

- Project: FLock.io (`flock.io`)
- Website: [https://www.flock.io/](https://www.flock.io/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:05:52.299Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-ae05
- Chains: base
- Contract surface: 17 unique implementations (32 raw deployments)
- DeFi Llama TVL: $4,608,880.94
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Decentralized AI. Structurally: 8 project-authored contract(s) across 1 chain(s); 1 ERC20 token; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 4 functional families. Its contracts share 1 common project-authored base contract(s) (rbacupgradeable). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 35; live-surface contracts included: 21 (20 live, 1 unknown).
- Excluded by liveness: 14 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/16 (0.0%)
- Deployed-live implementations: 16 of 17 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/16
- Verified + Unaudited implementations: 16
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 17
- Raw deployments: 32
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-04 (aging)
- Audit staleness (calendar age): 0 fresh, 4 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (16)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| FlockAirDrop | unknown | base | n/a | 2 deployments: base [`0x05379b...e93d66`](./contracts/base-8453/0x05379b6dc36d264f535d35c7d9bbd50115e93d66/); base `0x7c3eac...988daf` | ⚠️ Unaudited |
| FlockConfig | unknown | base | n/a | 3 deployments: base [`0x64e545...1e4997`](./contracts/base-8453/0x64e5450bbddea04199fbbf1ca5c22a10701e4997/); base `0x769cec...a2148a`; base `0xf79584...8fb833` | ⚠️ Unaudited |
| FlockPoolManagerUpgradeable | unknown | base | n/a | 2 deployments: base [`0x1a15d5...d48af6`](./contracts/base-8453/0x1a15d5bf8cdb6b1241903806e844fb72ebd48af6/); base `0x2d2f27...20dd65` | ⚠️ Unaudited |
| FlockPoolManagerV2Upgradeable | unknown | base | n/a | 2 deployments: base [`0x25c2d9...1f5137`](./contracts/base-8453/0x25c2d9619b1548b0c8ddc3e5ceffe64b951f5137/); base `0x5c4155...7a1502` | ⚠️ Unaudited |
| FlockRewardPool | unknown | base | n/a | 2 deployments: base [`0x86dbb3...1343a8`](./contracts/base-8453/0x86dbb37cd9cb039e5a55562d7e716d08161343a8/); base `0xde02bb...8682b5` | ⚠️ Unaudited |
| FlockStakeInfoUpgradeable | unknown | base | n/a | 2 deployments: base [`0x2886fd...d17883`](./contracts/base-8453/0x2886fd3861b09d6d7b3d7cf25c8ea2999ad17883/); base `0x8a83ef...6a400a` | ⚠️ Unaudited |
| FlockStakeInfoV2Upgradeable | unknown | base | n/a | 2 deployments: base [`0x1b964b...9f1f98`](./contracts/base-8453/0x1b964b3df82238b404afd7db1c10b9c0c29f1f98/); base `0xa799ec...f5bf63` | ⚠️ Unaudited |
| FlockTaskManagerUpgradeable | unknown | base | n/a | 2 deployments: base [`0x5813de...99aaa0`](./contracts/base-8453/0x5813dee58523ea082ee80162527efeed7799aaa0/); base `0xc4d8cf...31846a` | ⚠️ Unaudited |
| FlockTaskManagerV2Upgradeable | governance | base | n/a | [`0x29d4ec...e69fed`](./contracts/base-8453/0x29d4ecea4b1fcac239bf4b4dc3b42829c2e69fed/) | ⚠️ Unaudited |
| FlockTaskManagerV2Upgradeable | governance | base | n/a | 2 deployments: base [`0x360406...466a3d`](./contracts/base-8453/0x36040670d539d13420f9d1caf605fa2901466a3d/); base `0x8884e9...5acdad` | ⚠️ Unaudited |
| FlockTokenUpgradeable | unknown | base | n/a | 3 deployments: base [`0x22754d...45f784`](./contracts/base-8453/0x22754dad1b54ce707997afce9a78a3413045f784/); base `0x5ab3d4...a7b691`; base `0x81e741...3ad626` | ⚠️ Unaudited |
| gmFlockExchangeUpgradeable | unknown | base | n/a | 2 deployments: base [`0x9e0acc...def83f`](./contracts/base-8453/0x9e0acc78662b9193f9eff711af460406e9def83f/); base `0xe1fa45...fc6123` | ⚠️ Unaudited |
| gmFlockUpgradeable | unknown | base | n/a | 2 deployments: base [`0x781dd2...5cad24`](./contracts/base-8453/0x781dd21d8430e4e267af5713e01332742f5cad24/); base `0x7fe6d7...0c816c` | ⚠️ Unaudited |
| LinearVestingRewards | unknown | base | n/a | 2 deployments: base [`0x34e11c...dfb5b5`](./contracts/base-8453/0x34e11cf7a9d3de34b7ecf6602c23edfd98dfb5b5/); base `0xf36088...752b53` | ⚠️ Unaudited |
| ModelTokenLaunchUpgradeable | token | base | n/a | [`0x6f39fe...97f0b1`](./contracts/base-8453/0x6f39fe20f19103a215bcc444a64f78ae7797f0b1/) | ⚠️ Unaudited |
| ProxyAdmin | governance | base | n/a | [`0xb6523d...7e9f06`](./contracts/base-8453/0xb6523d5d33d29a7e6573330310e3f0e6157e9f06/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | base | n/a | `0x7bf579...5e195e` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [FLock Phase1 - SlowMist Audit Report.pdf](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/FLock%20Phase1%20-%20SlowMist%20Audit%20Report.pdf) | SlowMist | Audit | 2024-11 | aging | Direct | n/a | 0 | n/a |
| [Flock Phase2 - SlowMist Audit Report.pdf](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/Flock%20Phase2%20-%20SlowMist%20Audit%20Report.pdf) | SlowMist | Audit | 2025-01 | aging | Direct | n/a | 0 | n/a |
| [Flock v2 - SlowMist Audit Report.pdf](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/Flock%20v2%20-%20SlowMist%20Audit%20Report.pdf) | SlowMist | Audit | 2025-04 | aging | Direct | n/a | 0 | n/a |
| [Flock - FL Alliance Client - SlowMist Audit Report.pdf](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/blockchain/Flock%20-%20FL%20Alliance%20Client%20-%20SlowMist%20Audit%20Report.pdf) | SlowMist | Audit | 2025-01 | aging | Direct | n/a | 0 | n/a |
| [README.md](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/README.md) | SlowMist | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 17 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [21300] FLock Phase1 - SlowMist Audit Report.pdf
- [21301] Flock Phase2 - SlowMist Audit Report.pdf
- [21302] Flock v2 - SlowMist Audit Report.pdf
- [21303] Flock - FL Alliance Client - SlowMist Audit Report.pdf
- [24086] README.md

Fork inheritance lineage and inherited audits are included when available.
