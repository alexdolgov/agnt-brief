# Agentic Audit Brief: Velo Finance

## Project Overview

- Project: Velo Finance (`velo-finance`)
- Website: [https://velofinance.io](https://velofinance.io)
- Lifecycle: unknown
- Generated: 2026-07-03T21:07:10.256Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-4c3e
- Chains: bsc
- Contract surface: 34 unique implementations (39 raw deployments)
- DeFi Llama TVL: $1,406,611.82
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 9 project-authored contract(s) across 1 chain(s); 4 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 5 functional families. Contracts operate as largely independent structural surfaces. Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 42; live-surface contracts included: 39 (15 live, 24 unknown).
- Excluded by liveness: 3 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/10 (0.0%)
- Deployed-live implementations: 10 of 34 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/10
- Verified + Unaudited implementations: 10
- Verified by bytecode match: 0
- Unverified implementations: 24
- Unique implementations: 34
- Raw deployments: 39
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

### ⚠️ Verified + Unaudited (10)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| DMMPool | core_logic | bsc | n/a | [`0x8d5b39...35ceea`](./contracts/bsc-56/0x8d5b39b8ebac7f3404af73688f352b05c835ceea/) | ⚠️ Unaudited |
| DMMRouter02DelegateCall | adapter | bsc | n/a | [`0x345617...22fb69`](./contracts/bsc-56/0x345617dd29a12e836aebc936ca0ca59ccd22fb69/) | ⚠️ Unaudited |
| EarnOtherFixedAPRLockReward | unknown | bsc | n/a | 4 deployments: bsc [`0x2703e5...45caf9`](./contracts/bsc-56/0x2703e5d3709782e85957e40a9c834afd4d45caf9/); bsc `0x419175...8bebe8`; bsc `0x7dd617...3796b7`; bsc `0xba5640...788a3c` | ⚠️ Unaudited |
| EVRY | unknown | bsc | n/a | [`0xc2d4a3...aeabb6`](./contracts/bsc-56/0xc2d4a3709e076a7a3487816362994a78ddaeabb6/) | ⚠️ Unaudited |
| EvryPair | unknown | bsc | n/a | 2 deployments: bsc [`0x526357...40b802`](./contracts/bsc-56/0x526357ef8304ce6cd46689aa0f9abf642a40b802/); bsc `0xfcd4bb...4226b8` | ⚠️ Unaudited |
| EvryRouter | adapter | bsc | n/a | [`0x296b7c...665c46`](./contracts/bsc-56/0x296b7c203e2c7306b132f2d5ad66106bb7665c46/) | ⚠️ Unaudited |
| Farms | unknown | bsc | n/a | [`0x334721...8a9252`](./contracts/bsc-56/0x33472144eaa7540e7bada5a1ab7da372e48a9252/) | ⚠️ Unaudited |
| Farms | unknown | bsc | n/a | [`0xdd3e2d...a61945`](./contracts/bsc-56/0xdd3e2da1d017a564b8225bc8e92f2970cfa61945/) | ⚠️ Unaudited |
| GnosisSafeL2 | governance | bsc | n/a | [`0x6c2242...3bf912`](./contracts/bsc-56/0x6c22422f4044dfba79f4ea6bbb9c09162c3bf912/) | ⚠️ Unaudited |
| Token | token | bsc | n/a | 2 deployments: bsc [`0x3c8ec1...b4a35f`](./contracts/bsc-56/0x3c8ec1728c080f76dc83baa5d51a0cc367b4a35f/); bsc `0xf486ad...f6fd46` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (24)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0x00144d...686da4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x119e72...99341d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x36a613...a42506` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x405fb1...b43f7b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4d7c5e...4465e2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5f0625...4ab66e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6080b4...26706e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x61d705...9ac025` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6f001a...b20218` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x853fbd...a6fad5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x883be8...778cfa` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x953f99...8fb949` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa82ee9...0fa81d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb28b07...565add` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb2de66...5e121c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc3f903...99be6f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc5e5ac...101176` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc9cfba...54b83a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcd9357...a94fa5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd67f77...9573aa` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdba5e5...29483e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xddace5...a908d1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xde79be...d542c7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf39541...bd7b23` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 34 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
