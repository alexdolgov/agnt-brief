# Agentic Audit Brief: Orbit Bridge

## Project Overview

- Project: Orbit Bridge (`orbit-bridge`)
- Website: [https://bridge.orbitchain.io](https://bridge.orbitchain.io)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:38.698Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d094
- Chains: bsc, ethereum, heco, klaytn, polygon
- Contract surface: 19 unique implementations (20 raw deployments)
- DeFi Llama TVL: $14,578,629.07
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Bridge. Structurally: 8 project-authored contract(s) across 3 chain(s); upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 4 functional families. Contracts operate as largely independent structural surfaces. Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 24; live-surface contracts included: 20 (4 live, 16 unknown).
- Excluded by liveness: 4 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/4 (0.0%)
- Deployed-live implementations: 4 of 19 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/4
- Verified + Unaudited implementations: 4
- Verified by bytecode match: 0
- Unverified implementations: 15
- Unique implementations: 19
- Raw deployments: 20
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-01 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| EthVaultImpl | unknown | ethereum | n/a | [`0x1bf68a...cb489a`](./contracts/ethereum-1/0x1bf68a9d1eaee7826b3593c20a0ca93293cb489a/) | ⚠️ Unaudited |
| EthVaultImpl | core_logic | ethereum | n/a | [`0x4f16a2...9ff81e`](./contracts/ethereum-1/0x4f16a20450d36bfb3e3926df357f1405d79ff81e/) | ⚠️ Unaudited |
| ORCToken | token | ethereum | n/a | [`0x662b67...ef2f51`](./contracts/ethereum-1/0x662b67d00a13faf93254714dd601f5ed49ef2f51/) | ⚠️ Unaudited |
| Vault | core_logic | bsc | n/a | [`0x89c527...beb780`](./contracts/bsc-56/0x89c527764f03bcb7dc469707b23b79c1d7beb780/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (15)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x0207ec...cab30b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x093333...25d0cf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x123d6d...0f79d8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2127ed...24b79f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4ff16c...95fbe8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x54ad07...34a4d4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6c943d...0463c6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7f1014...d8a1f4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd23c23...8721b0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd8c163...9b8ac4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xff3eb6...a912a7` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | 2 deployments: heco `0x38c92a...4d279f`; klaytn `0x9abc3f...3f648d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x6aeec0...dbaee8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x98d729...a708b1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9fad26...c4ee25` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Theori_OrbitBridge_2022_1Q.pdf](https://github.com/orbit-chain/bridge-contract/blob/master/audit/Theori_OrbitBridge_2022_1Q.pdf) | unknown | Audit | 2022-01 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 19 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [1951] Theori_OrbitBridge_2022_1Q.pdf

Fork inheritance lineage and inherited audits are included when available.
