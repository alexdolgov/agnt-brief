# Agentic Audit Brief: nasdex

## Project Overview

- Project: nasdex (`nasdex`)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:34.097Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: polygon
- Contract surface: 13 unique implementations (13 raw deployments)
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Structural profile: 12 project-authored contract(s) across 1 chain(s); 3 ERC20 tokens; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 2 common project-authored base contract(s) (erc20permit, eip712). Dominant framework: openzeppelin.

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
| Admin | unknown | polygon | n/a | [`0xc01bd6...d7e6d3`](./contracts/polygon-137/0xc01bd61922702d06fa0ea91d2672aeba4cd7e6d3/) | ⚠️ Unaudited |
| Asset | unknown | polygon | n/a | [`0x6c1baa...50e64c`](./contracts/polygon-137/0x6c1baa725a126e9936a2627b7024c3f8c450e64c/) | ⚠️ Unaudited |
| Liquidation | unknown | polygon | n/a | [`0x5d5e33...aef385`](./contracts/polygon-137/0x5d5e3318421d3c38e5fa415c8a55e2f16caef385/) | ⚠️ Unaudited |
| LongStaking | unknown | polygon | n/a | [`0x63213e...e353bb`](./contracts/polygon-137/0x63213ecf311f60c52c6d00c7fe700f2bdce353bb/) | ⚠️ Unaudited |
| MasterChef | unknown | polygon | n/a | [`0x35ca0e...414f95`](./contracts/polygon-137/0x35ca0e02c4c16c94c4cc8b67d13d660b78414f95/) | ⚠️ Unaudited |
| Mint | unknown | polygon | n/a | [`0xdf6ea9...8a14fd`](./contracts/polygon-137/0xdf6ea9670e3f89555eec716aadfd3fbf0f8a14fd/) | ⚠️ Unaudited |
| MultiCall | unknown | polygon | n/a | [`0x8f80b3...49c8b5`](./contracts/polygon-137/0x8f80b3e90787fdaca1ec438db5c50ecfeb49c8b5/) | ⚠️ Unaudited |
| NSDXToken | unknown | polygon | n/a | [`0xe8d17b...08bfc6`](./contracts/polygon-137/0xe8d17b127ba8b9899a160d9a07b69bca8e08bfc6/) | ⚠️ Unaudited |
| Positions | unknown | polygon | n/a | [`0x0dc84b...b2998a`](./contracts/polygon-137/0x0dc84b14964234dcb4465874f9ff4778ebb2998a/) | ⚠️ Unaudited |
| ShortLock | unknown | polygon | n/a | [`0x1d7e96...072345`](./contracts/polygon-137/0x1d7e96bf705bceef2d78286d74e940bdf1072345/) | ⚠️ Unaudited |
| ShortStaking | unknown | polygon | n/a | [`0x12531d...b0343d`](./contracts/polygon-137/0x12531d4ac0669fa24621c27d0541895b2eb0343d/) | ⚠️ Unaudited |
| Swappable | unknown | polygon | n/a | [`0x29feb0...09b29b`](./contracts/polygon-137/0x29feb014b517b33ded6ed59d3c5d68f4e509b29b/) | ⚠️ Unaudited |
| UniswapV2Pair | unknown | polygon | n/a | [`0x56b893...9fd74a`](./contracts/polygon-137/0x56b8936a96cd5ee5c5837f385a19b4c2999fd74a/) | ⚠️ Unaudited |

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
