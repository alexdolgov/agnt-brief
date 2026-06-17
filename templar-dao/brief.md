# Agentic Audit Brief: Templar DAO

⚠️ Lifecycle status: UNKNOWN - TVL trajectory indicates non-active lifecycle.

## Project Overview

- Project: Templar DAO (`templar-dao`)
- Website: [https://templar.finance/](https://templar.finance/)
- Lifecycle: unknown (Tier 0, TVL trajectory)
- Generated: 2026-06-17T07:00:50.478Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: bsc, moonriver
- Contract surface: 11 unique implementations (13 raw deployments)
- DeFi Llama TVL: $2,184,081.00
- On-chain TVL (included contracts): $1,554,255.18
- TVL by chain: Bsc $1,554,255.18

## Project Description

Templar DAO is described in current public metadata as a reserve-currency and hedge-fund/treasury-reverse protocol, available cross-chain on BSC and MOVR. Its BSC contract surface includes TemplarToken/TEM-related token, treasury, and staking components; the current evidence does not independently verify use of the TEMPLAR symbol over TEM/TemplarToken.

### Architecture

The TemplarToken is the central asset, while Staking and MasterChef contracts distribute rewards to stakers, likely using the token as the primary incentive.

## Contract Surface Quality

- Indexed contracts: 66; live-surface contracts included: 13 (13 live, 0 unknown).
- Excluded by liveness: 53 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 1/1 live.
- Detected codebases: none
- Dependencies extracted: 1; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/10 (0.0%)
- Verified + Unaudited implementations: 10
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 11
- Raw deployments: 13
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $1,554,255.18
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [unknown]. ASD of $1,554,255.18 represents exposure in a protocol with unknown activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (10)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| TemplarToken | token | bsc | n/a | [`0x19e6bf...45df01`](./contracts/bsc-56/0x19e6bfc1a6e4b042fb20531244d47e252445df01/) | ⚠️ Unaudited |
| BondDepository | unknown | bsc | n/a | [`0x8baaef...94780f`](./contracts/bsc-56/0x8baaefcb8bd969f548aa3c6c71297063f694780f/) | ⚠️ Unaudited |
| GnosisSafeL2 | governance | bsc | unit-31207 | [`0xea724d...1fe788`](./contracts/bsc-56/0xea724dea000b5e5206d28f4bc2dad5f2fa1fe788/) | ⚠️ Unaudited |
| MasterChef | unknown | bsc | n/a | 2 deployments: bsc [`0x4832b9...d88b20`](./contracts/bsc-56/0x4832b9911114af706d529251979894405fd88b20/); bsc `0xffc7b9...2d0eb5` | ⚠️ Unaudited |
| Staking | unknown | bsc | n/a | 2 deployments: bsc [`0xa1f61c...5a9324`](./contracts/bsc-56/0xa1f61ca61fe8655d2a204b518f6de964145a9324/); moonriver [`0xa1f61c...5a9324`](./contracts/moonriver-1285/0xa1f61ca61fe8655d2a204b518f6de964145a9324/) | ⚠️ Unaudited |
| SwordToken | token | bsc | n/a | [`0x8c9827...2334b9`](./contracts/bsc-56/0x8c9827cd430d945ae5a5c3cfdc522f8d342334b9/) | ⚠️ Unaudited |
| TemplarMoney | unknown | bsc | n/a | [`0x194d1d...cc2966`](./contracts/bsc-56/0x194d1d62d8d798fcc81a6435e6d13adf8bcc2966/) | ⚠️ Unaudited |
| TemplarRouter | adapter | bsc | n/a | [`0xfce936...104754`](./contracts/bsc-56/0xfce936916cfde6bcaf3527db003d5f45ba104754/) | ⚠️ Unaudited |
| TemplarRouterMin | adapter | bsc | n/a | [`0x26cb3f...87fa99`](./contracts/bsc-56/0x26cb3f08133be04bf502cd4bf95536c43087fa99/) | ⚠️ Unaudited |
| WrapSword | unknown | bsc | n/a | [`0x66972b...36dabb`](./contracts/bsc-56/0x66972b14e525374dce713ce14c8d080f3036dabb/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0x8216a2...c620cc` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x19e6bf...45df01`](./contracts/bsc-56/0x19e6bfc1a6e4b042fb20531244d47e252445df01/) | TemplarToken | token | $1,554,255.18 | Verified native implementation with $1,554,255.18 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x8baaef...94780f`](./contracts/bsc-56/0x8baaefcb8bd969f548aa3c6c71297063f694780f/) | BondDepository | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x4832b9...d88b20`](./contracts/bsc-56/0x4832b9911114af706d529251979894405fd88b20/) | MasterChef | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xa1f61c...5a9324`](./contracts/bsc-56/0xa1f61ca61fe8655d2a204b518f6de964145a9324/) | Staking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x8c9827...2334b9`](./contracts/bsc-56/0x8c9827cd430d945ae5a5c3cfdc522f8d342334b9/) | SwordToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x194d1d...cc2966`](./contracts/bsc-56/0x194d1d62d8d798fcc81a6435e6d13adf8bcc2966/) | TemplarMoney | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xfce936...104754`](./contracts/bsc-56/0xfce936916cfde6bcaf3527db003d5f45ba104754/) | TemplarRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x26cb3f...87fa99`](./contracts/bsc-56/0x26cb3f08133be04bf502cd4bf95536c43087fa99/) | TemplarRouterMin | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x66972b...36dabb`](./contracts/bsc-56/0x66972b14e525374dce713ce14c8d080f3036dabb/) | WrapSword | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 9 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
