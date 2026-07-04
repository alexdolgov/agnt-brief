# Agentic Audit Brief: Templar DAO

## Project Overview

- Project: Templar DAO (`templar-dao`)
- Website: [https://templar.finance/](https://templar.finance/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:00.842Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-43c7
- Chains: bsc, moonriver
- Contract surface: 34 unique implementations (37 raw deployments)
- DeFi Llama TVL: $2,200,335.05
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Reserve Currency. Structurally: 34 project-authored contract(s) across 2 chain(s); 4 ERC20 tokens; built on openzeppelin.

### Architecture

The protocol comprises 5 functional families. Its contracts share 1 common project-authored base contract(s) (erc20permit). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 94; live-surface contracts included: 37 (14 live, 23 unknown).
- Excluded by liveness: 57 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/10 (10.0%)
- Deployed-live implementations: 11 of 34 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/11
- Verified + Unaudited implementations: 10
- Verified by bytecode match: 0
- Unverified implementations: 23
- Unique implementations: 34
- Raw deployments: 37
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-04 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 1 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| CertiK | Tier 2 | 1 | 9.1% | 2022-04 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| StakingHelper | unknown | bsc | n/a | 2 deployments: bsc [`0x8dd1ff...feea87`](./contracts/bsc-56/0x8dd1ff96c1b2766c4479c802687b44c5e8feea87/); moonriver `0xbb5d4f...db2adf` | ✅ Audited |

### ⚠️ Verified + Unaudited (10)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BondDepository | unknown | bsc | n/a | [`0x8baaef...94780f`](./contracts/bsc-56/0x8baaefcb8bd969f548aa3c6c71297063f694780f/) | ⚠️ Unaudited |
| GnosisSafeL2 | governance | bsc | n/a | [`0xea724d...1fe788`](./contracts/bsc-56/0xea724dea000b5e5206d28f4bc2dad5f2fa1fe788/) | ⚠️ Unaudited |
| MasterChef | unknown | bsc | n/a | 2 deployments: bsc [`0x4832b9...d88b20`](./contracts/bsc-56/0x4832b9911114af706d529251979894405fd88b20/); bsc `0xffc7b9...2d0eb5` | ⚠️ Unaudited |
| Staking | unknown | bsc | n/a | 2 deployments: bsc [`0xa1f61c...5a9324`](./contracts/bsc-56/0xa1f61ca61fe8655d2a204b518f6de964145a9324/); moonriver [`0xa1f61c...5a9324`](./contracts/moonriver-1285/0xa1f61ca61fe8655d2a204b518f6de964145a9324/) | ⚠️ Unaudited |
| SwordToken | token | bsc | n/a | [`0x8c9827...2334b9`](./contracts/bsc-56/0x8c9827cd430d945ae5a5c3cfdc522f8d342334b9/) | ⚠️ Unaudited |
| TemplarMoney | unknown | bsc | n/a | [`0x194d1d...cc2966`](./contracts/bsc-56/0x194d1d62d8d798fcc81a6435e6d13adf8bcc2966/) | ⚠️ Unaudited |
| TemplarRouter | adapter | bsc | n/a | [`0xfce936...104754`](./contracts/bsc-56/0xfce936916cfde6bcaf3527db003d5f45ba104754/) | ⚠️ Unaudited |
| TemplarRouterMin | adapter | bsc | n/a | [`0x26cb3f...87fa99`](./contracts/bsc-56/0x26cb3f08133be04bf502cd4bf95536c43087fa99/) | ⚠️ Unaudited |
| TemplarToken | token | bsc | n/a | [`0x19e6bf...45df01`](./contracts/bsc-56/0x19e6bfc1a6e4b042fb20531244d47e252445df01/) | ⚠️ Unaudited |
| WrapSword | unknown | bsc | n/a | [`0x66972b...36dabb`](./contracts/bsc-56/0x66972b14e525374dce713ce14c8d080f3036dabb/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (23)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0x12d0ee...48ff22` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x142457...e246de` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x24a53d...6b9051` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x441a8e...727219` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x778f61...b59fee` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8216a2...c620cc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9e8cbb...849bfa` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa26078...fc4952` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa9aa47...0db743` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xafde5a...760c23` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb68c0b...c1f01d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc3cfb3...a2a47e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc90500...9b00e8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc91b6e...961116` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe1dbcd...1af364` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x071ecb...50e9ac` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x340478...5b48b8` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x6804c9...62b92c` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x835b5e...82dbd7` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x8b10a6...6a8a5a` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xca031d...fa7bd2` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xcc4d42...51e8ad` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xf171ef...973d62` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [skynet.certik.com/projects/templar-dao](https://skynet.certik.com/projects/templar-dao) | CertiK | Audit | 2022-04 | stale | Direct | contract_name | 2 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x8baaef...94780f`](./contracts/bsc-56/0x8baaefcb8bd969f548aa3c6c71297063f694780f/) | BondDepository | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x4832b9...d88b20`](./contracts/bsc-56/0x4832b9911114af706d529251979894405fd88b20/) | MasterChef | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xa1f61c...5a9324`](./contracts/bsc-56/0xa1f61ca61fe8655d2a204b518f6de964145a9324/) | Staking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x8c9827...2334b9`](./contracts/bsc-56/0x8c9827cd430d945ae5a5c3cfdc522f8d342334b9/) | SwordToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x194d1d...cc2966`](./contracts/bsc-56/0x194d1d62d8d798fcc81a6435e6d13adf8bcc2966/) | TemplarMoney | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xfce936...104754`](./contracts/bsc-56/0xfce936916cfde6bcaf3527db003d5f45ba104754/) | TemplarRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x26cb3f...87fa99`](./contracts/bsc-56/0x26cb3f08133be04bf502cd4bf95536c43087fa99/) | TemplarRouterMin | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x19e6bf...45df01`](./contracts/bsc-56/0x19e6bfc1a6e4b042fb20531244d47e252445df01/) | TemplarToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x66972b...36dabb`](./contracts/bsc-56/0x66972b14e525374dce713ce14c8d080f3036dabb/) | WrapSword | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 10 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 23 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=2

Fork inheritance lineage and inherited audits are included when available.
