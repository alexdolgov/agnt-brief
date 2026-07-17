# Agentic Audit Brief: FLock.io

## Project Overview

- Project: FLock.io (`flock.io`)
- Website: [https://www.flock.io/](https://www.flock.io/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:16.383Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-ae05
- Chains: base
- Contract surface: 18 unique implementations (35 raw deployments)
- DeFi Llama TVL: $4,608,880.94
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Decentralized AI. Structurally: 8 project-authored contract(s) across 1 chain(s); 1 ERC20 token; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 4 functional families. Its contracts share 1 common project-authored base contract(s) (rbacupgradeable). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 35; live-surface contracts included: 32 (31 live, 1 unknown).
- Excluded by liveness: 3 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 12/16 (75.0%)
- Deployed-live implementations: 17 of 18 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 12/17
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 18
- Raw deployments: 35
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-04 (aging)
- Audit staleness (calendar age): 0 fresh, 4 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 12 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 75.0% (SlowMist)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| SlowMist | Tier 1 | 12 | 70.6% | 2025-04 |

## Contract Surface

### ✅ Verified + Audited (12)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| FlockConfig | unknown | base | n/a | 3 deployments: base [`0x64e5450bbddea04199fbbf1ca5c22a10701e4997`](./contracts/base-8453/0x64e5450bbddea04199fbbf1ca5c22a10701e4997/); base `0x769ceca23323c4409f1782a282e5e0cd26a2148a`; base `0xf79584e389996c7189eee7fd322e4d65408fb833` | ✅ Audited |
| FlockPoolManagerUpgradeable | unknown | base | n/a | 2 deployments: base [`0x1a15d5bf8cdb6b1241903806e844fb72ebd48af6`](./contracts/base-8453/0x1a15d5bf8cdb6b1241903806e844fb72ebd48af6/); base `0x2d2f27589b2ac6d792fc111549c7e4547c20dd65` | ✅ Audited |
| FlockPoolManagerV2Upgradeable | unknown | base | n/a | 2 deployments: base [`0x25c2d9619b1548b0c8ddc3e5ceffe64b951f5137`](./contracts/base-8453/0x25c2d9619b1548b0c8ddc3e5ceffe64b951f5137/); base `0x5c415570e4a9c49e64ea640180f91161b47a1502` | ✅ Audited |
| FlockStakeInfoUpgradeable | unknown | base | n/a | 2 deployments: base [`0x2886fd3861b09d6d7b3d7cf25c8ea2999ad17883`](./contracts/base-8453/0x2886fd3861b09d6d7b3d7cf25c8ea2999ad17883/); base `0x8a83efd9436ebf4fa4a8ad2b1751f5feb56a400a` | ✅ Audited |
| FlockStakeInfoV2Upgradeable | unknown | base | n/a | 2 deployments: base [`0x1b964b3df82238b404afd7db1c10b9c0c29f1f98`](./contracts/base-8453/0x1b964b3df82238b404afd7db1c10b9c0c29f1f98/); base `0xa799ece98ca2c52eeb5837f0faffb12883f5bf63` | ✅ Audited |
| FlockTaskManagerUpgradeable | unknown | base | n/a | 3 deployments: base [`0x05e42e03996379cd0b6290cc2767a1bdd78b737a`](./contracts/base-8453/0x05e42e03996379cd0b6290cc2767a1bdd78b737a/); base `0xac24d8a23e0306c1ee689f33359db2889e7d8fe4`; base `0xe8e31e34ee55ffc815222fe883b5137be1980d6c` | ✅ Audited |
| FlockTaskManagerUpgradeable | unknown | base | n/a | 2 deployments: base [`0x5813dee58523ea082ee80162527efeed7799aaa0`](./contracts/base-8453/0x5813dee58523ea082ee80162527efeed7799aaa0/); base `0xc4d8cf5f0f994330676bef1fb4612b04e531846a` | ✅ Audited |
| FlockTaskManagerV2Upgradeable | governance | base | n/a | [`0x29d4ecea4b1fcac239bf4b4dc3b42829c2e69fed`](./contracts/base-8453/0x29d4ecea4b1fcac239bf4b4dc3b42829c2e69fed/) | ✅ Audited |
| FlockTaskManagerV2Upgradeable | governance | base | n/a | 2 deployments: base [`0x36040670d539d13420f9d1caf605fa2901466a3d`](./contracts/base-8453/0x36040670d539d13420f9d1caf605fa2901466a3d/); base `0x8884e9571debc8c5069b29fbdd4ee0702e5acdad` | ✅ Audited |
| FlockTokenUpgradeable | unknown | base | n/a | 3 deployments: base [`0x22754dad1b54ce707997afce9a78a3413045f784`](./contracts/base-8453/0x22754dad1b54ce707997afce9a78a3413045f784/); base `0x5ab3d4c385b400f3abb49e80de2faf6a88a7b691`; base `0x81e741f9a342604af36b00365c1add26163ad626` | ✅ Audited |
| gmFlockExchangeUpgradeable | unknown | base | n/a | 2 deployments: base [`0x9e0acc78662b9193f9eff711af460406e9def83f`](./contracts/base-8453/0x9e0acc78662b9193f9eff711af460406e9def83f/); base `0xe1fa4592b7a35ff6cef65fdec5e13a1f48fc6123` | ✅ Audited |
| gmFlockUpgradeable | unknown | base | n/a | 2 deployments: base [`0x781dd21d8430e4e267af5713e01332742f5cad24`](./contracts/base-8453/0x781dd21d8430e4e267af5713e01332742f5cad24/); base `0x7fe6d76a5e9dae35590f720679ccd10cfb0c816c` | ✅ Audited |

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| FlockAirDrop | unknown | base | n/a | 2 deployments: base [`0x05379b6dc36d264f535d35c7d9bbd50115e93d66`](./contracts/base-8453/0x05379b6dc36d264f535d35c7d9bbd50115e93d66/); base `0x7c3eac01749cb3eecc5726bf00b8f43ffd988daf` | ⚠️ Unaudited |
| FlockRewardPool | unknown | base | n/a | 2 deployments: base [`0x86dbb37cd9cb039e5a55562d7e716d08161343a8`](./contracts/base-8453/0x86dbb37cd9cb039e5a55562d7e716d08161343a8/); base `0xde02bb6d2a4702407c103363324bbb36f88682b5` | ⚠️ Unaudited |
| LinearVestingRewards | unknown | base | n/a | 2 deployments: base [`0x34e11cf7a9d3de34b7ecf6602c23edfd98dfb5b5`](./contracts/base-8453/0x34e11cf7a9d3de34b7ecf6602c23edfd98dfb5b5/); base `0xf360886bb80eb1efc413c4e89566e6c59d752b53` | ⚠️ Unaudited |
| ModelTokenLaunchUpgradeable | token | base | n/a | [`0x6f39fe20f19103a215bcc444a64f78ae7797f0b1`](./contracts/base-8453/0x6f39fe20f19103a215bcc444a64f78ae7797f0b1/) | ⚠️ Unaudited |
| ProxyAdmin | governance | base | n/a | [`0xb6523d5d33d29a7e6573330310e3f0e6157e9f06`](./contracts/base-8453/0xb6523d5d33d29a7e6573330310e3f0e6157e9f06/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | base | n/a | `0x7bf57986e7df6c19bb1222a8d09d693cba5e195e` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [FLock Phase1 - SlowMist Audit Report.pdf](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/FLock%20Phase1%20-%20SlowMist%20Audit%20Report.pdf) | SlowMist | Audit | 2024-11 | aging | Direct | contract_name | 15 | high |
| [Flock Phase2 - SlowMist Audit Report.pdf](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/Flock%20Phase2%20-%20SlowMist%20Audit%20Report.pdf) | SlowMist | Audit | 2025-01 | aging | Direct | n/a | 0 | n/a |
| [Flock v2 - SlowMist Audit Report.pdf](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/Flock%20v2%20-%20SlowMist%20Audit%20Report.pdf) | SlowMist | Audit | 2025-04 | aging | Direct | contract_name | 11 | high |
| [Flock - FL Alliance Client - SlowMist Audit Report.pdf](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/blockchain/Flock%20-%20FL%20Alliance%20Client%20-%20SlowMist%20Audit%20Report.pdf) | SlowMist | Audit | 2025-01 | aging | Direct | n/a | 0 | n/a |
| [README.md](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/README.md) | SlowMist | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0x05379b6dc36d264f535d35c7d9bbd50115e93d66`](./contracts/base-8453/0x05379b6dc36d264f535d35c7d9bbd50115e93d66/) | FlockAirDrop | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x86dbb37cd9cb039e5a55562d7e716d08161343a8`](./contracts/base-8453/0x86dbb37cd9cb039e5a55562d7e716d08161343a8/) | FlockRewardPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x34e11cf7a9d3de34b7ecf6602c23edfd98dfb5b5`](./contracts/base-8453/0x34e11cf7a9d3de34b7ecf6602c23edfd98dfb5b5/) | LinearVestingRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x6f39fe20f19103a215bcc444a64f78ae7797f0b1`](./contracts/base-8453/0x6f39fe20f19103a215bcc444a64f78ae7797f0b1/) | ModelTokenLaunchUpgradeable | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 16 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=26

Zero-match audit list:

- [21301] Flock Phase2 - SlowMist Audit Report.pdf
- [21303] Flock - FL Alliance Client - SlowMist Audit Report.pdf
- [24086] README.md

Fork inheritance lineage and inherited audits are included when available.
