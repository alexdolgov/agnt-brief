# Agentic Audit Brief: Arch

⚠️ Lifecycle status: DECLINING - TVL dropped 88.8% over 90 days

## Project Overview

- Project: Arch (`arch`)
- Website: [https://www.arch.finance](https://www.arch.finance)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-07-04T14:53:04.118Z
- Pipeline run: v2-pipeline-2026-07-01-2b719a-f2f0
- Chains: ethereum, polygon
- Contract surface: 10 unique implementations (29 raw deployments)
- DeFi Llama TVL: $214,722.06
- On-chain TVL (included contracts): $153,736.71
- TVL by chain: Polygon $142,673.39 | Ethereum $11,063.32

## Project Description

Indexes. Structurally: 6 project-authored contract(s) across 2 chain(s); 3 ERC20 tokens; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Contracts operate as largely independent structural surfaces. Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 29; live-surface contracts included: 29 (26 live, 3 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/5 (20.0%)
- Deployed-live implementations: 7 of 10 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/7
- Verified + Unaudited implementations: 6
- Verified by bytecode match: 0
- Unverified implementations: 3
- Unique implementations: 10
- Raw deployments: 29
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): $153,736.71
- Latest audit: 2023-02 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $153,736.71 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 1 | 14.3% | 2023-02 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Chamber | unknown | ethereum | n/a | 10 deployments: ethereum [`0x103bb3...a2e16b`](./contracts/ethereum-1/0x103bb3ebc6f61b3db2d6e01e54ef7d9899a2e16b/); ethereum `0xe15a66...7263cf`; polygon [`0x103bb3...a2e16b`](./contracts/polygon-137/0x103bb3ebc6f61b3db2d6e01e54ef7d9899a2e16b/); polygon `0x89c53b...87ef0b`; polygon `0x8f0d56...1dbc23`; polygon `0xafb6e8...1e9f3c`; polygon `0xd1ce69...90f3d5`; polygon `0xde2925...43ed1c`; polygon `0xe15a66...7263cf`; polygon `0xf401e2...7a1545` | ✅ Audited |

### ⚠️ Verified + Unaudited (6)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| FxERC20 | token | polygon | n/a | 2 deployments: polygon [`0x027af1...997d5a`](./contracts/polygon-137/0x027af1e12a5869ed329be4c05617ad528e997d5a/); polygon `0xab1b16...06c187` | ⚠️ Unaudited |
| SetToken | token | ethereum | n/a | 3 deployments: ethereum [`0x0d20e8...7f8951`](./contracts/ethereum-1/0x0d20e86abab680c038ac8bbdc1446585e67f8951/); ethereum `0xe8e848...67e601`; polygon `0x6ca9c8...ff7d3b` | ⚠️ Unaudited |
| UChildERC20 | token | polygon | n/a | [`0x9a41e0...1ec0c4`](./contracts/polygon-137/0x9a41e03fef7f16f552c6fba37ffa7590fb1ec0c4/) | ⚠️ Unaudited |
| UChildERC20 | token | polygon | n/a | [`0xbcd2c5...35406a`](./contracts/polygon-137/0xbcd2c5c78000504efbc1ce6489dfcac71835406a/) | ⚠️ Unaudited |
| UniswapV3Pool | core_logic | ethereum | n/a | 8 deployments: ethereum [`0x01f40d...dd21ea`](./contracts/ethereum-1/0x01f40d27b1a4379bfcb50aa1d20720219cdd21ea/); ethereum `0x247027...bb10f2`; ethereum `0x6147c5...0db0b5`; ethereum `0xbb9300...0822a4`; polygon `0x39baac...63edb9`; polygon `0x538b2b...8ebf9d`; polygon `0xb485c3...def211`; polygon `0xefba86...67ed02` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | polygon | n/a | [`0xee875e...7481ca`](./contracts/polygon-137/0xee875ef94641c33280b7f35c39b639f7f07481ca/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (3)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | polygon | n/a | `0x0d20e8...7f8951` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4e39ce...319318` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe8e848...67e601` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Chambers-audit-report.pdf](https://arch-document.s3.amazonaws.com/Chambers-audit-report.pdf) | unknown | Audit | 2023-02 | stale | Direct | contract_name | 1 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| polygon | [`0x027af1...997d5a`](./contracts/polygon-137/0x027af1e12a5869ed329be4c05617ad528e997d5a/) | FxERC20 | token | $126,370.79 | Verified native implementation with $126,370.79 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0d20e8...7f8951`](./contracts/ethereum-1/0x0d20e86abab680c038ac8bbdc1446585e67f8951/) | SetToken | token | $11,060.29 | Verified native implementation with $11,060.29 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x9a41e0...1ec0c4`](./contracts/polygon-137/0x9a41e03fef7f16f552c6fba37ffa7590fb1ec0c4/) | UChildERC20 | token | $9,491.53 | Verified native implementation with $9,491.53 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xbcd2c5...35406a`](./contracts/polygon-137/0xbcd2c5c78000504efbc1ce6489dfcac71835406a/) | UChildERC20 | token | $6,624.97 | Verified native implementation with $6,624.97 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 5 |
| upstream | 2 |
| standard_library | 0 |
| needs_review | 3 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=1

Fork inheritance lineage and inherited audits are included when available.
