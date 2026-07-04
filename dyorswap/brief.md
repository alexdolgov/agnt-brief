# Agentic Audit Brief: DyorSwap

## Project Overview

- Project: DyorSwap (`dyorswap`)
- Website: [https://dyorswap.finance/?chainId=34443](https://dyorswap.finance/?chainId=34443)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:11.310Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-43c7
- Chains: blast, ink, merlin, mode, plasma, sonic, unichain
- Contract surface: 91 unique implementations (97 raw deployments)
- DeFi Llama TVL: $1,731,456.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 7 project-authored contract(s) across 4 chain(s); 2 ERC20 tokens; built on openzeppelin.

### Architecture

The protocol comprises 4 functional families. Contracts operate as largely independent structural surfaces. Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 100; live-surface contracts included: 97 (7 live, 90 unknown).
- Excluded by liveness: 3 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/4 (0.0%)
- Deployed-live implementations: 4 of 91 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/6
- Verified + Unaudited implementations: 6
- Verified by bytecode match: 0
- Unverified implementations: 85
- Unique implementations: 91
- Raw deployments: 97
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
| BEP20 | unknown | mode | n/a | [`0x097de1...d310a2`](./contracts/mode-34443/0x097de1ade6d7b46540637935c88b489860d310a2/) | ⚠️ Unaudited |
| DYORFactory | unknown | mode | n/a | [`0xe47069...8fdeef`](./contracts/mode-34443/0xe470699f6d0384e3ea68f1144e41d22c6c8fdeef/) | ⚠️ Unaudited |
| DyorPumpToken | token | plasma | n/a | 3 deployments: plasma [`0x11e0f9...7a92e7`](./contracts/plasma-9745/0x11e0f991cad15a5b3cc69c84d33a91fc977a92e7/); plasma `0x469e66...4a14c4`; plasma `0xb43766...294a60` | ⚠️ Unaudited |
| DYORRouter | adapter | mode | n/a | 2 deployments: mode [`0xcf9dc9...9e169a`](./contracts/mode-34443/0xcf9dc9afb93bd3ef4fb3cc4df7843abc3c9e169a/); blast `0xe47069...8fdeef` | ⚠️ Unaudited |
| DyorRouterV2 | adapter | sonic | n/a | 2 deployments: sonic [`0x591cf6...a72f61`](./contracts/sonic-146/0x591cf6942c422fa53e8d81c62a9692d7bea72f61/); plasma `0xfc9869...a493cc` | ⚠️ Unaudited |
| QuoterV3 | periphery | plasma | n/a | [`0x5dd041...fa1983`](./contracts/plasma-9745/0x5dd0416835b27325917677f974a256e67dfa1983/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (85)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | unichain | n/a | `0x026614...7cd826` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x038e0c...8ebfa5` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x0a9fdc...a48561` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x19b786...94164d` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x1c8be2...f66374` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x22998a...8b5858` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x2ba702...f778b3` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x2eb64f...ebebb6` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x359a53...6c372d` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x6b2bc6...c783de` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x6b52d9...c54ef4` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x6bdb3b...3da050` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x6c86ab...9a2806` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x803b4e...56877b` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x827028...a98af8` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x83ad0f...ec2f62` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x845ee6...47cbee` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x98a7b4...4e89b8` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x9b1769...cd7a77` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0xccdba0...7b3285` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0xe2e9d4...eda9c6` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0xfeb89b...427ff8` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x038e0c...8ebfa5` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x0a9fdc...a48561` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x1e5d4a...40de95` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x2845fe...fdbf52` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x2ba702...f778b3` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x2eaca0...fb4d7b` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x39f6b0...d1354f` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x3f815e...a71e3f` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x56ea5b...4fb0f4` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x583fab...7b2745` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x5ac77b...dccf0e` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x7ac8ac...d65fd4` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x83ad0f...ec2f62` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x845ee6...47cbee` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x9b1769...cd7a77` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xaf85ee...88b902` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xb0b234...5345e0` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xb1b805...1d6667` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xbf1e74...1a8da1` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xc174ee...1b8cc1` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xc5386d...f5fca6` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xca583b...e0d970` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xd8863d...4e8815` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xe1a931...b3b3ab` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xe2e9d4...eda9c6` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xef4320...5752c5` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xf08150...b296d8` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xfa95f8...962471` | ❓ Unverified |
| UnnamedContract | unknown | merlin | n/a | 3 deployments: merlin `0x2ccadb...f04c09`; merlin `0xa1da7a...b58413`; ink `0x6c86ab...9a2806` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x0edeea...c753f3` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x103b99...f5693d` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x16581f...b4b7fc` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x24691a...744130` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x53869f...5cb719` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x5a9650...cdabec` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x61a425...0e7c62` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x68a769...fb6b35` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x77888e...dcbaf6` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x7b7984...12b261` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x942bd5...ab5c10` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0xa9f2c3...b482ac` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0xb3e80e...c890b9` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0xc474ae...e553fa` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0xcc9c42...d491ce` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0xd4b362...fd808e` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0xdb2625...9eb842` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0xdb3e73...7ee8c3` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0xe5d4f8...5951a0` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0xf05f68...502b82` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0xf60070...1a3353` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0xfc794e...f556cb` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0xffe70d...a09b86` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x7e2102...c64b57` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xa1da7a...b58413` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xdb1730...73ce45` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x7e2102...c64b57` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x898656...df44c2` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xaf0505...c9700b` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xb44db0...d75a56` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xb8f2e3...28808e` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xcb4b7b...a031ef` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xcf9dc9...9e169a` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xeffeb6...30a14d` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| mode | [`0x097de1...d310a2`](./contracts/mode-34443/0x097de1ade6d7b46540637935c88b489860d310a2/) | BEP20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0xe47069...8fdeef`](./contracts/mode-34443/0xe470699f6d0384e3ea68f1144e41d22c6c8fdeef/) | DYORFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| plasma | [`0x11e0f9...7a92e7`](./contracts/plasma-9745/0x11e0f991cad15a5b3cc69c84d33a91fc977a92e7/) | DyorPumpToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0xcf9dc9...9e169a`](./contracts/mode-34443/0xcf9dc9afb93bd3ef4fb3cc4df7843abc3c9e169a/) | DYORRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x591cf6...a72f61`](./contracts/sonic-146/0x591cf6942c422fa53e8d81c62a9692d7bea72f61/) | DyorRouterV2 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| plasma | [`0x5dd041...fa1983`](./contracts/plasma-9745/0x5dd0416835b27325917677f974a256e67dfa1983/) | QuoterV3 | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 6 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 85 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
