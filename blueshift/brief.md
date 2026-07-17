# Agentic Audit Brief: Blueshift

## Project Overview

- Project: Blueshift (`blueshift`)
- Website: [https://blueshift.fi/](https://blueshift.fi/)
- Lifecycle: active (Tier 0, 73.8% below peak)
- Generated: 2026-07-04T14:53:07.620Z
- Pipeline run: v2-pipeline-2026-07-01-2b719a-0293
- Chains: kava, polygon
- Contract surface: 26 unique implementations (33 raw deployments)
- DeFi Llama TVL: $3,306,736.27
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 0 project-authored contract(s) across 1 chain(s); upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Contracts operate as largely independent structural surfaces. Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 33; live-surface contracts included: 33 (7 live, 26 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/5 (0.0%)
- Deployed-live implementations: 6 of 26 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/6
- Verified + Unaudited implementations: 6
- Verified by bytecode match: 0
- Unverified implementations: 20
- Unique implementations: 26
- Raw deployments: 33
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-05 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
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
| ProxyAdmin | governance | polygon | n/a | 2 deployments: polygon [`0xdc05bacc1f97f874d9d09860a8a93365372a3186`](./contracts/polygon-137/0xdc05bacc1f97f874d9d09860a8a93365372a3186/); polygon `0xf8c71776449cfafb108a3ef6f42a4206988065f5` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | polygon | n/a | 2 deployments: polygon [`0x12fd7e24628a164d1f69a22d8808f8956dc3789b`](./contracts/polygon-137/0x12fd7e24628a164d1f69a22d8808f8956dc3789b/); polygon `0xeb7b352eb80b61913dc36cdb8c29233b4f3e9550` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | polygon | n/a | 2 deployments: polygon [`0x2080a319a4b11d097050722b6b65d09f754edc83`](./contracts/polygon-137/0x2080a319a4b11d097050722b6b65d09f754edc83/); polygon `0x35701f18e5303c965ce5877ffea5e3150ec96f3f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | polygon | n/a | 2 deployments: polygon [`0x9b44b21d287db74375d5139a78af17512297f251`](./contracts/polygon-137/0x9b44b21d287db74375d5139a78af17512297f251/); polygon `0xa5eddb240376491b0b1657b336a299b46434959a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | polygon | n/a | 2 deployments: polygon [`0xb6b3b594e707072abd475a4c8a48235eca13c9cb`](./contracts/polygon-137/0xb6b3b594e707072abd475a4c8a48235eca13c9cb/); polygon `0xce108380c39e4fe9dace9d5597e048bcc5ef743b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | polygon | n/a | 2 deployments: polygon [`0xcfbf083a7749c23391296c65adbdd8a4118b861f`](./contracts/polygon-137/0xcfbf083a7749c23391296c65adbdd8a4118b861f/); polygon `0xf799001542b2b48af1e316d1d3912dcc0937a4e1` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (20)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | polygon | n/a | `0x0e4245512756e77f7c46a2cf73f7c30e4f755310` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x27e55249ed8cda161d9483bf58dfad259b1faa2e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3abd79823c595c0778e51246c491126e77367b20` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x589e3edd93a22fb316cff53eaba6bb958ff601cd` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7b83436c761e26e475fe2c6a54cf4d0e3fca2bca` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x800618b612b4c1602e8a96b39c16420df5a6653c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x96c95d44f93162e511a4bcd8a5967a177a7e7242` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa4f0e3c80c77b347250b9d3999478e305ff814a4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa7555b3f658f71b33fe3eada33c47b7462b44f73` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xac6e4f7125c4f79af728a8e65fe32ef9557c9c43` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xadbd83bfc4ff8a4f0bbf1d1b8d4780717a4e8fb5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb470e97ef18720ec42f4a855812a51d9acadf2c4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xbabbed808284ab2a86ffcba815d3309d7fcc44f2` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xbeb9421b485e81a3b12af84df6f2d3ef9fddb49c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe03d836717b356911b41d53f21e64fb8de2a2a5a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf5399ba209c70f9210c3b52a162fb8e3c6323a4d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xff485b08a64046b9a23342d6098f26e7c237c19a` | ❓ Unverified |
| UnnamedContract | unknown | kava | n/a | 2 deployments: kava `0x49399653f651a25924b3d8718276b5b4372577b1`; kava `0x7a60918bd5c83ef7e2aba87d13e3fd704f6a77e1` | ❓ Unverified |
| UnnamedContract | unknown | kava | n/a | `0x784156f8729c64bad3cc79fc20d1e8cde8d42e96` | ❓ Unverified |
| UnnamedContract | unknown | kava | n/a | `0xa2351aea209ceb0ffecd77149ec615335d7f513d` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [skynet.certik.com/projects/blueshift](https://skynet.certik.com/projects/blueshift) | CertiK | Audit | 2022-05 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 4 |
| needs_review | 22 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [2594] skynet.certik.com/projects/blueshift

Fork inheritance lineage and inherited audits are included when available.
