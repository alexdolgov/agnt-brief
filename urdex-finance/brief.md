# Agentic Audit Brief: UrDEX Finance

## Project Overview

- Project: UrDEX Finance (`urdex-finance`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:02.958Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d640
- Chains: arbitrum
- Contract surface: 81 unique implementations (110 raw deployments)
- DeFi Llama TVL: $0.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Derivatives. Structurally: 8 project-authored contract(s) across 1 chain(s); 4 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 4 functional families. Contracts operate as largely independent structural surfaces. Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 121; live-surface contracts included: 110 (4 live, 106 unknown).
- Excluded by liveness: 11 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 2/3 (66.7%)
- Deployed-live implementations: 3 of 81 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 2/3
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 78
- Unique implementations: 81
- Raw deployments: 110
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-04 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 2 | 66.7% | 2023-04 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UrdexTimelock | governance | arbitrum | n/a | [`0xa6a689...7d78b0`](./contracts/arbitrum-42161/0xa6a68944e222b6e89d51e77ec83acc5fc47d78b0/) | ✅ Audited |
| UrdToken | token | arbitrum | n/a | [`0x842216...0c5311`](./contracts/arbitrum-42161/0x842216e0aa2ae608699f7b1063f26ce6b30c5311/) | ✅ Audited |

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| LPToken | token | arbitrum | n/a | 2 deployments: arbitrum [`0x3240e0...7091f7`](./contracts/arbitrum-42161/0x3240e018db6e2c751faf689d5292e4a40e7091f7/); arbitrum `0xeac6b2...049b42` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (78)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| LiquidityRouter | unknown | arbitrum | n/a | `0x3b6cf8...cdb804` | ❓ Unverified |
| Proxy (impl: 0x3074750db8e23958d2593118a6f8088eded82429) | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x2b703f...34c8c4`; arbitrum `0x307475...d82429` | ❓ Unverified |
| Proxy (impl: 0x431f4425f5f26205a1a05b277b638d9dd253ccf2) | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x05cf21...02d4c5`; arbitrum `0x431f44...53ccf2` | ❓ Unverified |
| Proxy (impl: 0x47829245741e5ab0f71287463a3aa5e9383a168e) | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x0d71d6...1015db`; arbitrum `0x478292...3a168e` | ❓ Unverified |
| Proxy (impl: 0x53b5dff3596d709298de0a52978d7971aeef56a5) | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x0376db...99a546`; arbitrum `0x53b5df...ef56a5` | ❓ Unverified |
| Proxy (impl: 0x84210482d9cb996799017368e57b34c929100f87) | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x335739...b4f17a`; arbitrum `0x842104...100f87` | ❓ Unverified |
| Proxy (impl: 0x85bbd81a59169303f0891555d7781cdab27117a4) | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x4c7196...b3fbb0`; arbitrum `0x85bbd8...7117a4` | ❓ Unverified |
| Proxy (impl: 0x864be040699d71680587ad0c69f5076b34bfa00f) | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x3b0ae4...071eb6`; arbitrum `0x864be0...bfa00f` | ❓ Unverified |
| Proxy (impl: 0x97b9429f85637ed53ada512531c67e7ec30c0501) | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x3a6a4e...b18104`; arbitrum `0x97b942...0c0501` | ❓ Unverified |
| Proxy (impl: 0x9a7e313eff0e51a786fcddc975f816af342c5236) | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x7b7b12...07e21d`; arbitrum `0x9a7e31...2c5236` | ❓ Unverified |
| Proxy (impl: 0xa8f3b318d755b8b499ffdce080f1e3c26001eac0) | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x8a1a74...bbe66b`; arbitrum `0xa8f3b3...01eac0` | ❓ Unverified |
| Proxy (impl: 0xcac1e1690ed879c4f9df60bda37bd12e311ad9fc) | unknown | arbitrum | n/a | 2 deployments: arbitrum `0xb284c0...fdcd59`; arbitrum `0xcac1e1...1ad9fc` | ❓ Unverified |
| Proxy (impl: 0xd625538ddfdebec3adf5130beb608ff0d21c02de) | unknown | arbitrum | n/a | 2 deployments: arbitrum `0xcc40b4...7b90ed`; arbitrum `0xd62553...1c02de` | ❓ Unverified |
| Proxy (impl: 0xd7e74d3a6b5b25c69bd1a4657dd6dac6dfad03ce) | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x29dd56...6634be`; arbitrum `0xd7e74d...ad03ce` | ❓ Unverified |
| Proxy (impl: 0xd8e2ce4d4669b6c18dd20e45c7289c64b1083cd6) | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x8bb347...e9e993`; arbitrum `0xd8e2ce...083cd6` | ❓ Unverified |
| Proxy (impl: 0xdcbd7e288476c88942def52424f64437812f9fcf) | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x50596a...e35edd`; arbitrum `0xdcbd7e...2f9fcf` | ❓ Unverified |
| Proxy (impl: 0xf1bbf3dc94dba7bb72fe6dd5eab5fbda8959005c) | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x0af1fb...32bab1`; arbitrum `0xf1bbf3...59005c` | ❓ Unverified |
| Proxy (impl: 0xf969086ad6532a7dd400336bc1b234627e1a26a3) | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x3a83b0...53d68d`; arbitrum `0xf96908...1a26a3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x00f353...784978`; arbitrum `0x95a740...2b2250` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x059125...a4b6a7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x077323...482dc9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x0be3b4...def6b3`; arbitrum `0xb67300...ada708` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x11342b...8d4df9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x14f41d...e19a28` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x17c65f...22f5b6`; arbitrum `0xda734f...5a14be` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x19065e...919a3b`; arbitrum `0xdc0864...c1910c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x1f573f...1eade4`; arbitrum `0x7b8016...6e42da` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2cef07...a80b23` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2df7e8...9b2aa0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2e68f8...bdb1fb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2ecf2f...efd9b1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3132c4...2e8326` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x31641d...5c2689` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x33d21c...e7c795` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x376723...58d545` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x384343...93f412` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x394565...96e828`; arbitrum `0xf13bd9...95bbb0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x399eae...a3fc96` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3ca304...aedd9e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x3ff267...91f884`; arbitrum `0x6fee5d...ddf4a6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x45142a...57b15a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x453613...eae84e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4afd56...9b24fa` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x59c62d...259a87` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x62b3f0...ebf720` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6481a1...6767e1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x710728...bcb292` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x730855...1616f8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7486d8...92311b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x7a1f4a...a1e256`; arbitrum `0xb28b6e...4b05f2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7a3238...b35bf6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x800735...2a41b9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x92cc12...dee8e4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9957c1...8cd727` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x99f8f5...11b2e3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9f60b6...0fbf49` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | 2 deployments: arbitrum `0xa83d7d...9dc072`; arbitrum `0xcf4066...6869ca` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xaa6287...4e8575` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xaa65fe...bf1118` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xadf1b6...952069` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xae143b...f2b8ed` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb20da1...4fbfb0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb6cff5...7159c9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc04f65...b6dd01` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc2be24...d0f317` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc6078d...6d523e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | 2 deployments: arbitrum `0xc77951...2a65f4`; arbitrum `0xf67d3a...566577` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xcd42e9...c164cf` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd1642a...d6e705` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xdbe0a7...83dd47` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xdc45c2...7cdf77` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | 2 deployments: arbitrum `0xe6b6b9...7a0c5f`; arbitrum `0xfbd498...b916f4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xea107b...ba9241` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xee4ffd...69e7fe` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf097d4...2fe65b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xfc041f...ceeb01` | ❓ Unverified |
| UrdMaster | unknown | arbitrum | n/a | `0x235db7...25fdaa` | ❓ Unverified |
| UrdStake | unknown | arbitrum | n/a | `0xcbcda2...a0d3d6` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [urDex Smart Contract Audit Report - QuillAudits.pdf](https://github.com/Quillhash/QuillAudit_Reports/blob/0f50d3ad59e14547e816b256c2ede1282f9ab403/urDex%20Smart%20Contract%20Audit%20Report%20-%20QuillAudits.pdf) | unknown | Audit | 2023-04 | stale | Direct | contract_name | 2 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0x3240e0...7091f7`](./contracts/arbitrum-42161/0x3240e018db6e2c751faf689d5292e4a40e7091f7/) | LPToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 78 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=2

Fork inheritance lineage and inherited audits are included when available.
