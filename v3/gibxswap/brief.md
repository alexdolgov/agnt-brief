# Agentic Audit Brief: GIBXSwap

## Project Overview

- Project: GIBXSwap (`gibxswap`)
- Lifecycle: unknown
- Generated: 2026-07-03T21:05:55.349Z
- Pipeline run: v2-2026-07-03-89943a
- Chains: bsc
- Contract surface: 14 unique implementations (14 raw deployments)
- DeFi Llama TVL: $595,805.76
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 14 project-authored contract(s) across 1 chain(s); 7 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Contracts are linked by 14 cross-contract reference(s). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 14; live-surface contracts included: 14 (14 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/14 (0.0%)
- Deployed-live implementations: 14 of 14 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/14
- Verified + Unaudited implementations: 14
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 14
- Raw deployments: 14
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (14)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| GIBXBar | unknown | bsc | n/a | [`0x63d275...608536`](./contracts/bsc-56/0x63d2756537ab0b10c1a3578b0755417e5f608536/) | ⚠️ Unaudited |
| GIBXFactory | unknown | bsc | n/a | [`0x97bcd9...2066e8`](./contracts/bsc-56/0x97bcd9bb482144291d77ee53bfa99317a82066e8/) | ⚠️ Unaudited |
| GIBXRouter | unknown | bsc | n/a | [`0x253fe2...e15aa5`](./contracts/bsc-56/0x253fe2c76728c98fc18bb52e9a0ba8522be15aa5/) | ⚠️ Unaudited |
| GIBXSwapFee | unknown | bsc | n/a | [`0x10a55a...bf47d0`](./contracts/bsc-56/0x10a55ac513d202721be12eb40cd29b5b5dbf47d0/) | ⚠️ Unaudited |
| GIBXToken | unknown | bsc | n/a | [`0x004eda...d7f620`](./contracts/bsc-56/0x004eda9c37660387e424872b0cf25323fdd7f620/) | ⚠️ Unaudited |
| ILO | unknown | bsc | n/a | [`0x299cac...36005c`](./contracts/bsc-56/0x299cac915a93216c35b35786c70b7e523e36005c/) | ⚠️ Unaudited |
| MasterChef | unknown | bsc | n/a | [`0x29e023...c95947`](./contracts/bsc-56/0x29e02337fba64d61239f1140389b371127c95947/) | ⚠️ Unaudited |
| MasterChefTimelock | unknown | bsc | n/a | [`0x39f01e...49ed28`](./contracts/bsc-56/0x39f01e469c9a000b426e7196f9ff75f9ae49ed28/) | ⚠️ Unaudited |
| Oracle | unknown | bsc | n/a | [`0x572138...556c2c`](./contracts/bsc-56/0x572138bbbbb851be13db130297b69c330e556c2c/) | ⚠️ Unaudited |
| PoolChef | unknown | bsc | n/a | [`0x10ee03...6785df`](./contracts/bsc-56/0x10ee036c8dc47e74b063f56f750b5b22d76785df/) | ⚠️ Unaudited |
| PoolChefTimelock | unknown | bsc | n/a | [`0x3d008d...9bb6c8`](./contracts/bsc-56/0x3d008d53e7061fdc4bfb256e6b868615dd9bb6c8/) | ⚠️ Unaudited |
| PoolFactory | unknown | bsc | n/a | [`0x5d9f2c...f15465`](./contracts/bsc-56/0x5d9f2c265c57bb3d70636034f52f20f92ff15465/) | ⚠️ Unaudited |
| SwapMining | unknown | bsc | n/a | [`0xc31a35...64ea1f`](./contracts/bsc-56/0xc31a355277228c1bf9a88599647faeaae664ea1f/) | ⚠️ Unaudited |
| TokenLocker | unknown | bsc | n/a | [`0x26ce70...323b3c`](./contracts/bsc-56/0x26ce70a8404c390bdbb680a67c5b10a492323b3c/) | ⚠️ Unaudited |

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
| [DL audit link](https://skynet.certik.com/projects/gibx-swap) | CertiK | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 14 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [20430] DL audit link

Fork inheritance lineage and inherited audits are included when available.
