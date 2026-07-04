# Agentic Audit Brief: EmpMoney

## Project Overview

- Project: EmpMoney (`empmoney`)
- Website: [https://emp.money](https://emp.money)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:11.779Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-3e24
- Chains: bsc
- Contract surface: 96 unique implementations (100 raw deployments)
- DeFi Llama TVL: $182,080.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Algo-Stables. Structurally: 24 project-authored contract(s) across 1 chain(s); 4 ERC20 tokens; role-gated via AccessControl; built on openzeppelin.

### Architecture

The protocol comprises 4 functional families. Its contracts share 4 common project-authored base contract(s) (contractguard, operator, erc20burnable). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 178; live-surface contracts included: 100 (13 live, 87 unknown).
- Excluded by liveness: 78 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 8/9 (88.9%)
- Deployed-live implementations: 9 of 96 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 8/9
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 87
- Unique implementations: 96
- Raw deployments: 100
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-01 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 8 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 8 | 88.9% | 2022-01 |

## Contract Surface

### ✅ Verified + Audited (8)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Boardroom | unknown | bsc | n/a | 2 deployments: bsc [`0x662a8a...657d48`](./contracts/bsc-56/0x662a8aeec032d872dbdbf105654e9001a6657d48/); bsc `0xe9bace...50942f` | ✅ Audited |
| EBond | unknown | bsc | n/a | [`0x7099a1...a5d520`](./contracts/bsc-56/0x7099a19da2f17bc85193b1f0e9091df014a5d520/) | ✅ Audited |
| Emp | unknown | bsc | n/a | 2 deployments: bsc [`0x269765...399a10`](./contracts/bsc-56/0x269765b520f22a57a8421e6c3a4fead11c399a10/); bsc `0x3b248c...dc1d58` | ✅ Audited |
| EmpRewardPool | core_logic | bsc | n/a | [`0x13ea3c...a9421c`](./contracts/bsc-56/0x13ea3cacf0ed02aeab86f80c2e9de77c70a9421c/) | ✅ Audited |
| EShare | unknown | bsc | n/a | 3 deployments: bsc [`0x43afd3...4733ff`](./contracts/bsc-56/0x43afd3d4ee88c5d1e1a856f5ae1aaccc1d4733ff/); bsc `0x7a3a5e...5aa3aa`; bsc `0xdb20f6...956550` | ✅ Audited |
| EShareRewardPool | core_logic | bsc | n/a | [`0x97a68a...6235b1`](./contracts/bsc-56/0x97a68a7949ee30849d273b0c4450314ae26235b1/) | ✅ Audited |
| Treasury | operational_periphery | bsc | n/a | [`0xd3dd99...505bb0`](./contracts/bsc-56/0xd3dd99430a7c6818f8c848ecffed527d38505bb0/) | ✅ Audited |
| Zapper | adapter | bsc | n/a | [`0x5bad35...8a5aa2`](./contracts/bsc-56/0x5bad3568c99f15833b92dea08a34d7ce868a5aa2/) | ✅ Audited |

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Timelock | governance | bsc | n/a | [`0xefebe2...7fa94a`](./contracts/bsc-56/0xefebe2c43517eadba5a81b7b00b40207c87fa94a/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (87)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0x0062dc...8b753a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0357b4...530cad` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x03b3fe...97942f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x067f85...89d864` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x073e65...011918` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0892a8...7f5c0e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0988f1...34b31d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0dc296...f83e21` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x13f1e6...4550a6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1483f9...6b3c26` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x18d1be...3cc8ac` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1f6f39...9c6d80` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x20a880...097eff` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x227bb7...df0256` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x25d8d4...c23c73` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x26c20c...6b002f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x282276...88617f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2a55ca...dbe266` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2a7e01...5dcc41` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2b2be9...f8c1e7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x301f17...c0ed9a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x33cc51...19e397` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x33ff4e...3bcca4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x344d36...fefcbd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3b211b...fc642a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3fc9b6...c32f3b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x47e379...47895c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x48e157...0f21ad` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x48f385...016d29` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x48f816...26fa1f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x49e471...bcfc6c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4a956f...3d332a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x544712...6bfb23` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x54ae04...aeff42` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5519df...663e97` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5f2779...3705d3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x637db1...b5a7e0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6509c9...694a4a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x68fde4...947e5b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6a70d4...41fb2f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6c8f49...7b5fe0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6de231...77398e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6ffa02...47b31e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7bf48d...b5dfce` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x82de62...ce9f36` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x889376...9a54ed` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8e0a1d...294831` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x90d059...13448e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x91b625...3b7d6f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x94c379...b95c5b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x973bbd...f48eb8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x98f1c0...595f60` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x99a217...45fa11` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9f0489...74aabf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa605b7...978f13` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa61b6a...d6b077` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa9242c...11ecf7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xac3d39...9dc401` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xaf2af6...e0dc16` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb00a53...3843f2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb11fae...277369` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb23b86...219256` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb87f2a...7684fd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb8e860...76fa24` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb99207...27b853` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbe559b...095275` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbfd40e...ba5f68` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc0b58f...5aa297` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc11a25...3e0dd1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc16438...ed4102` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc44a48...956279` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc5ca85...d59cdb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc5f004...93bc3e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcc6c5b...5e5004` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xccbfdc...1d1c1e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcd42d2...066218` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcffd44...5e9acd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdc860c...bc301e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe1bafb...d69038` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe8c5df...1a20bf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xeb2860...fab283` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xecbac4...1f96cb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xedc361...b83cbb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf6f0b5...5bf23f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf84b62...ceeaf0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfc67df...ff89dd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfe7a47...b0abdb` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [EMP-Money_final-audit-report.pdf](https://github.com/0xGuard-com/audit-reports/blob/master/emp-money/EMP-Money_final-audit-report.pdf) | unknown | Audit | 2022-01 | stale | Direct | contract_name | 8 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0xefebe2...7fa94a`](./contracts/bsc-56/0xefebe2c43517eadba5a81b7b00b40207c87fa94a/) | Timelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 9 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 87 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=8

Fork inheritance lineage and inherited audits are included when available.
