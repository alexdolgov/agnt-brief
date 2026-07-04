# Agentic Audit Brief: Biswap

⚠️ Lifecycle status: DEAD - TVL dropped 10.1% over 90 days

## Project Overview

- Project: Biswap (`biswap`)
- Website: [https://biswap.org](https://biswap.org)
- Lifecycle: dead (Tier 1, dead)
- Generated: 2026-07-03T21:05:35.766Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-3e24
- Chains: arbitrum, base, bsc, ethereum
- Contract surface: 85 unique implementations (137 raw deployments)
- DeFi Llama TVL: $5,058,526.00
- On-chain TVL (included contracts): $225,800.18
- TVL by chain: Bsc $225,800.18

## Project Description

Dexs. Structurally: 17 project-authored contract(s) across 2 chain(s); 2 ERC20 tokens; built on openzeppelin.

### Architecture

The protocol comprises 4 functional families. Contracts are linked by 6 cross-contract reference(s). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 218; live-surface contracts included: 137 (60 live, 77 unknown).
- Excluded by liveness: 81 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/8 (0.0%)
- Deployed-live implementations: 8 of 85 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/8
- Verified + Unaudited implementations: 8
- Verified by bytecode match: 0
- Unverified implementations: 77
- Unique implementations: 85
- Raw deployments: 137
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $225,800.18
- Latest audit: 2023-11 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of $225,800.18 represents exposure in a protocol with dead activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (8)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BSWToken | token | bsc | n/a | [`0x965f52...120dd1`](./contracts/bsc-56/0x965f527d9159dce6288a2219db51fc6eef120dd1/) | ⚠️ Unaudited |
| autoBsw | unknown | bsc | n/a | [`0x97a16f...cda73d`](./contracts/bsc-56/0x97a16ff6fd63a46bf973671762a39f3780cda73d/) | ⚠️ Unaudited |
| BiswapFactory | registry | bsc | n/a | [`0x858e33...8af7ee`](./contracts/bsc-56/0x858e3312ed3a876947ea49d572a7c42de08af7ee/) | ⚠️ Unaudited |
| BiswapRouter02 | adapter | bsc | n/a | [`0x3a6d8c...350dd8`](./contracts/bsc-56/0x3a6d8ca21d1cf76f653a67577fa0d27453350dd8/) | ⚠️ Unaudited |
| InterchainToken | token | ethereum | n/a | [`0x66e09e...cd6985`](./contracts/ethereum-1/0x66e09ec17629574a0cc8abc480b0c2572fcd6985/) | ⚠️ Unaudited |
| MasterChef | unknown | bsc | n/a | [`0xdbc1a1...061739`](./contracts/bsc-56/0xdbc1a13490deef9c3c12b44fe77b503c1b061739/) | ⚠️ Unaudited |
| SmartChef | unknown | bsc | n/a | 53 deployments: bsc [`0x00a142...b39346`](./contracts/bsc-56/0x00a142210f6b3bb3f78751dcd7b589e9e7b39346/); bsc `0x00d2d8...fff1d4`; bsc `0x015c8b...3a44c1`; bsc `0x018952...b731a9`; bsc `0x099975...0c1e1b`; bsc `0x0c1e98...e457c9`; bsc `0x109eaa...d5e836`; bsc `0x12e5b4...d93c3f`; bsc `0x13e903...4c8237`; bsc `0x1c3c5c...661492`; bsc `0x1f337d...d32970`; bsc `0x2792cc...8bd280`; bsc `0x2968da...ad6a46`; bsc `0x36fc9c...28860f`; bsc `0x50945a...0358ac`; bsc `0x53c60a...bd9891`; bsc `0x62cfcc...258373`; bsc `0x66ac2a...d955ae`; bsc `0x69c4c9...fc8157`; bsc `0x7468af...33bebd`; bsc `0x7517c3...358dc6`; bsc `0x7951bc...6fafc0`; bsc `0x81af4b...bc5d61`; bsc `0x850281...de5bbb`; bsc `0x8b10e6...c42ff4`; bsc `0x8d87f0...105e71`; bsc `0x8ddfcd...916f2d`; bsc `0x973304...fda649`; bsc `0x994f7b...e0cb24`; bsc `0x9b0111...892c03`; bsc `0x9b9f3f...b52bff`; bsc `0xa394dd...823459`; bsc `0xaa2b37...9fd4e5`; bsc `0xab4592...8a4784`; bsc `0xacb2f1...e496f2`; bsc `0xb12c55...2f57b6`; bsc `0xc50676...81e920`; bsc `0xc7ba45...2ac468`; bsc `0xcc1b01...3f6a73`; bsc `0xd48558...11e67a`; bsc `0xd59227...5f3161`; bsc `0xe018d6...01831d`; bsc `0xe056fb...25990b`; bsc `0xe42d17...c175a7`; bsc `0xe6c58b...cb9cc5`; bsc `0xe737ed...3673a8`; bsc `0xeb8134...0540b7`; bsc `0xeeee29...d8e193`; bsc `0xf31f62...7f7d4c`; bsc `0xf4540b...950f0d`; bsc `0xf54c23...cd9ff1`; bsc `0xf62e23...d1c899`; bsc `0xfd6820...367275` | ⚠️ Unaudited |
| SmartRouter | adapter | bsc | n/a | [`0x0eb694...970bef`](./contracts/bsc-56/0x0eb6949e725a295ecb3beacfc3766610bc970bef/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (77)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Proxy (impl: 0xa6fa4115f9c6b3aca9454df84b43deb7fe389019) | proxy | bsc | n/a | `0xa6fa41...389019` | ❓ Unverified |
| Proxy (impl: 0xe45d08a10f253c9541c7612a9a70411e4c15dff9) | proxy | bsc | n/a | `0xe45d08...15dff9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x08a9a1...3e0cfd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0e2ab6...f2eaf6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x41a987...d4c735` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x46cdae...37c397` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x62dade...f97392` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x633b38...ed304a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6c7f1a...c7fe1f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x735cb0...eb2ae3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7b190f...0ebc53` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7be518...4644dd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7d882f...0772a8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8277f6...ec86a1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x87737e...5f9815` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x981933...ac783d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9e575a...8a9bef` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa75821...97bbc2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb535e0...814798` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbbf7df...3392fb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcae1ba...83d8ce` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd8e94b...4ec6b4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf2a99c...92143d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2ef706...1f1be6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x36df8a...662f5b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3b53aa...1bd4ba` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4d175f...cedd36` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5995fb...0c041c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x601cc4...a79d22` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x607362...4bcb94` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x924c26...55a7fc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xac3422...89076c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xaf0a36...cbb968` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc48aa9...36c596` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc6f6f5...fb5302` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd772e6...20f60c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x003fb4...7508e6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x08a9a1...3e0cfd` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0e2ab6...f2eaf6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x41a987...d4c735` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x46cdae...37c397` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x62dade...f97392` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x633b38...ed304a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6c7f1a...c7fe1f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x735cb0...eb2ae3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7be518...4644dd` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7d882f...0772a8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8277f6...ec86a1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x87737e...5f9815` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x981933...ac783d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa75821...97bbc2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb535e0...814798` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbbf7df...3392fb` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xcae1ba...83d8ce` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd8e94b...4ec6b4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf2a99c...92143d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x08a9a1...3e0cfd` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0e2ab6...f2eaf6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x293d67...009f7d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x41a987...d4c735` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x46cdae...37c397` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x62dade...f97392` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x633b38...ed304a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6c7f1a...c7fe1f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x735cb0...eb2ae3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7b190f...0ebc53` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7be518...4644dd` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7d882f...0772a8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8277f6...ec86a1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x87737e...5f9815` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x981933...ac783d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa75821...97bbc2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb535e0...814798` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbbf7df...3392fb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xcae1ba...83d8ce` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd8e94b...4ec6b4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf2a99c...92143d` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [skynet.certik.com/projects/biswap](https://skynet.certik.com/projects/biswap) | CertiK | Audit | 2023-11 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x965f52...120dd1`](./contracts/bsc-56/0x965f527d9159dce6288a2219db51fc6eef120dd1/) | BSWToken | token | $225,800.18 | Verified native implementation with $225,800.18 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x97a16f...cda73d`](./contracts/bsc-56/0x97a16ff6fd63a46bf973671762a39f3780cda73d/) | autoBsw | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x858e33...8af7ee`](./contracts/bsc-56/0x858e3312ed3a876947ea49d572a7c42de08af7ee/) | BiswapFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3a6d8c...350dd8`](./contracts/bsc-56/0x3a6d8ca21d1cf76f653a67577fa0d27453350dd8/) | BiswapRouter02 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xdbc1a1...061739`](./contracts/bsc-56/0xdbc1a13490deef9c3c12b44fe77b503c1b061739/) | MasterChef | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x00a142...b39346`](./contracts/bsc-56/0x00a142210f6b3bb3f78751dcd7b589e9e7b39346/) | SmartChef | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0eb694...970bef`](./contracts/bsc-56/0x0eb6949e725a295ecb3beacfc3766610bc970bef/) | SmartRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 26 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 59 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [2417] skynet.certik.com/projects/biswap

Fork inheritance lineage and inherited audits are included when available.
