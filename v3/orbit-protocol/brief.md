# Agentic Audit Brief: Orbit Protocol

## Project Overview

- Project: Orbit Protocol (`orbit-protocol`)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:38.700Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: blast
- Contract surface: 13 unique implementations (13 raw deployments)
- DeFi Llama TVL: $418,276.09
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Lending. Structurally: 12 project-authored contract(s) across 1 chain(s); 6 ERC20 tokens; built on openzeppelin.

### Architecture

The protocol forms a single structural family (Core Logic) of 12 contract(s).

## Contract Surface Quality

- Indexed contracts: 13; live-surface contracts included: 13 (13 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/13 (0.0%)
- Deployed-live implementations: 13 of 13 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/13
- Verified + Unaudited implementations: 13
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 13
- Raw deployments: 13
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

### ⚠️ Verified + Unaudited (13)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| API3OracleProxy | unknown | blast | n/a | [`0xcb80b7...dd2730`](./contracts/blast-81457/0xcb80b73f2fe80b0859458048f27d57436bdd2730/) | ⚠️ Unaudited |
| JumpRateModelV2 | unknown | blast | n/a | [`0x188315...218435`](./contracts/blast-81457/0x1883151159f2ec4d6ac8d32b0ddf37dd2d218435/) | ⚠️ Unaudited |
| OErc20DelegateV2 | unknown | blast | n/a | [`0x0eb702...a5f148`](./contracts/blast-81457/0x0eb702a106c0d6c260ef2cbeab8d932b7da5f148/) | ⚠️ Unaudited |
| OErc20Delegator | unknown | blast | n/a | [`0x3a61f4...5c2408`](./contracts/blast-81457/0x3a61f4bf054cdfac3a3436a21c4463c6d85c2408/) | ⚠️ Unaudited |
| OEther2 | unknown | blast | n/a | [`0x0872b7...7fdba0`](./contracts/blast-81457/0x0872b71efc37cb8dde22b2118de3d800427fdba0/) | ⚠️ Unaudited |
| OracleRouter | unknown | blast | n/a | [`0x824088...8ca711`](./contracts/blast-81457/0x8240881c0731a84f44b69a221871bbd88e8ca711/) | ⚠️ Unaudited |
| OrbitSpaceStation | unknown | blast | n/a | [`0xc1794d...6e6eef`](./contracts/blast-81457/0xc1794dd86c41bc261494c7c57d62bf8d336e6eef/) | ⚠️ Unaudited |
| OrbitToken | unknown | blast | n/a | [`0x42e12d...2db357`](./contracts/blast-81457/0x42e12d42b3d6c4a74a88a61063856756ea2db357/) | ⚠️ Unaudited |
| PythOracleProxy | unknown | blast | n/a | [`0x5f3f2f...2820ce`](./contracts/blast-81457/0x5f3f2f65c78ea522767ae965a1c48cbc852820ce/) | ⚠️ Unaudited |
| RedstoneOracleProxy | unknown | blast | n/a | [`0xfe4c10...293cd1`](./contracts/blast-81457/0xfe4c1021d3276a6f9c4c1e7f296947f92b293cd1/) | ⚠️ Unaudited |
| SpaceStationUpgradable | unknown | blast | n/a | [`0x1e18c3...b6e652`](./contracts/blast-81457/0x1e18c3cb491d908241d0db14b081b51be7b6e652/) | ⚠️ Unaudited |
| Timelock | unknown | blast | n/a | [`0x154d8e...b19886`](./contracts/blast-81457/0x154d8e44d88a061908aa9b3a4f8609bd72b19886/) | ⚠️ Unaudited |
| VestedToken | unknown | blast | n/a | [`0xfa1fdc...e1c7a8`](./contracts/blast-81457/0xfa1fdcf4682b72e56e3b32ff1aba7afcd5e1c7a8/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (0)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

- None

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
| needs_review | 13 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
