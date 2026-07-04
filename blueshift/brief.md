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
| ProxyAdmin | governance | polygon | n/a | 2 deployments: polygon [`0xdc05ba...2a3186`](./contracts/polygon-137/0xdc05bacc1f97f874d9d09860a8a93365372a3186/); polygon `0xf8c717...8065f5` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | polygon | n/a | 2 deployments: polygon [`0x12fd7e...c3789b`](./contracts/polygon-137/0x12fd7e24628a164d1f69a22d8808f8956dc3789b/); polygon `0xeb7b35...3e9550` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | polygon | n/a | 2 deployments: polygon [`0x2080a3...4edc83`](./contracts/polygon-137/0x2080a319a4b11d097050722b6b65d09f754edc83/); polygon `0x35701f...c96f3f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | polygon | n/a | 2 deployments: polygon [`0x9b44b2...97f251`](./contracts/polygon-137/0x9b44b21d287db74375d5139a78af17512297f251/); polygon `0xa5eddb...34959a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | polygon | n/a | 2 deployments: polygon [`0xb6b3b5...13c9cb`](./contracts/polygon-137/0xb6b3b594e707072abd475a4c8a48235eca13c9cb/); polygon `0xce1083...ef743b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | polygon | n/a | 2 deployments: polygon [`0xcfbf08...8b861f`](./contracts/polygon-137/0xcfbf083a7749c23391296c65adbdd8a4118b861f/); polygon `0xf79900...37a4e1` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | polygon | n/a | `0x0e4245...755310` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x27e552...1faa2e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3abd79...367b20` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x589e3e...f601cd` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7b8343...ca2bca` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x800618...a6653c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x96c95d...7e7242` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa4f0e3...f814a4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa7555b...b44f73` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xac6e4f...7c9c43` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xadbd83...4e8fb5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb470e9...adf2c4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xbabbed...cc44f2` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xbeb942...ddb49c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe03d83...2a2a5a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf5399b...323a4d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xff485b...37c19a` | ❓ Unverified |
| UnnamedContract | unknown | kava | n/a | 2 deployments: kava `0x493996...2577b1`; kava `0x7a6091...6a77e1` | ❓ Unverified |
| UnnamedContract | unknown | kava | n/a | `0x784156...d42e96` | ❓ Unverified |
| UnnamedContract | unknown | kava | n/a | `0xa2351a...7f513d` | ❓ Unverified |

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
