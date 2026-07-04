# Agentic Audit Brief: Trisolaris

## Project Overview

- Project: Trisolaris (`trisolaris`)
- Website: [https://www.trisolaris.io/#/swap](https://www.trisolaris.io/#/swap)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:02.463Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-4c3e
- Chains: aurora
- Contract surface: 43 unique implementations (44 raw deployments)
- DeFi Llama TVL: $1,142,980.13
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 4 project-authored contract(s) across 1 chain(s); upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol forms a single structural family (Core Logic) of 4 contract(s).

## Contract Surface Quality

- Indexed contracts: 44; live-surface contracts included: 44 (0 live, 44 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/0 (0.0%)
- Deployed-live implementations: 0 of 43 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/4
- Verified + Unaudited implementations: 4
- Verified by bytecode match: 0
- Unverified implementations: 39
- Unique implementations: 43
- Raw deployments: 44
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

### ⚠️ Verified + Unaudited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| StableLPMaker | unknown | aurora | n/a | [`0xcb2519...78e3ff`](./contracts/aurora-1313161554/0xcb251907382aeb3c2edab766561d5f4e6c78e3ff/) | ⚠️ Unaudited |
| StableLPMakerV2 | unknown | aurora | n/a | [`0x2df95b...8ab86b`](./contracts/aurora-1313161554/0x2df95be842cd68062ecdb7a30ca8dd400a8ab86b/) | ⚠️ Unaudited |
| SwapFlashLoan | unknown | aurora | n/a | [`0x51d96e...1a4064`](./contracts/aurora-1313161554/0x51d96ef6960cc7b4c884e1215564f926011a4064/) | ⚠️ Unaudited |
| UsdcMaker | unknown | aurora | n/a | 2 deployments: aurora [`0x5ebd5e...0aaade`](./contracts/aurora-1313161554/0x5ebd5e963a00500b6a1234c621811c52af0aaade/); aurora `0xe7d7fd...63f34a` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (39)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | aurora | n/a | `0x0160b7...deb3df` | ❓ Unverified |
| UnnamedContract | unknown | aurora | n/a | `0x0564d6...2a69a0` | ❓ Unverified |
| UnnamedContract | unknown | aurora | n/a | `0x0982eb...7ac663` | ❓ Unverified |
| UnnamedContract | unknown | aurora | n/a | `0x107f0e...322a4e` | ❓ Unverified |
| UnnamedContract | unknown | aurora | n/a | `0x114eca...959fc2` | ❓ Unverified |
| UnnamedContract | unknown | aurora | n/a | `0x29c857...1b2c58` | ❓ Unverified |
| UnnamedContract | unknown | aurora | n/a | `0x2ade4f...f73064` | ❓ Unverified |
| UnnamedContract | unknown | aurora | n/a | `0x2f928d...a1abc2` | ❓ Unverified |
| UnnamedContract | unknown | aurora | n/a | `0x35529b...f6ea4a` | ❓ Unverified |
| UnnamedContract | unknown | aurora | n/a | `0x3ce7aa...38b7ec` | ❓ Unverified |
| UnnamedContract | unknown | aurora | n/a | `0x3e8795...463763` | ❓ Unverified |
| UnnamedContract | unknown | aurora | n/a | `0x458459...0c3970` | ❓ Unverified |
| UnnamedContract | unknown | aurora | n/a | `0x45e940...d2e01e` | ❓ Unverified |
| UnnamedContract | unknown | aurora | n/a | `0x46f276...dcb2b8` | ❓ Unverified |
| UnnamedContract | unknown | aurora | n/a | `0x47372a...f12898` | ❓ Unverified |
| UnnamedContract | unknown | aurora | n/a | `0x4ba3a1...270946` | ❓ Unverified |
| UnnamedContract | unknown | aurora | n/a | `0x62f6de...97f7f0` | ❓ Unverified |
| UnnamedContract | unknown | aurora | n/a | `0x641e05...39fb6e` | ❓ Unverified |
| UnnamedContract | unknown | aurora | n/a | `0x6e6e7b...a1a9ff` | ❓ Unverified |
| UnnamedContract | unknown | aurora | n/a | `0x7825c8...5ba12c` | ❓ Unverified |
| UnnamedContract | unknown | aurora | n/a | `0x870095...384bb6` | ❓ Unverified |
| UnnamedContract | unknown | aurora | n/a | `0x895bdc...f868fe` | ❓ Unverified |
| UnnamedContract | unknown | aurora | n/a | `0x931e03...163066` | ❓ Unverified |
| UnnamedContract | unknown | aurora | n/a | `0x984bd0...b6e440` | ❓ Unverified |
| UnnamedContract | unknown | aurora | n/a | `0x9dfec5...1a66cd` | ❓ Unverified |
| UnnamedContract | unknown | aurora | n/a | `0xa57828...b8e50e` | ❓ Unverified |
| UnnamedContract | unknown | aurora | n/a | `0xb77190...facb24` | ❓ Unverified |
| UnnamedContract | unknown | aurora | n/a | `0xb8e6c8...57f54a` | ❓ Unverified |
| UnnamedContract | unknown | aurora | n/a | `0xbf6cf5...0a2aeb` | ❓ Unverified |
| UnnamedContract | unknown | aurora | n/a | `0xc6618d...90adda` | ❓ Unverified |
| UnnamedContract | unknown | aurora | n/a | `0xccd878...6c2d65` | ❓ Unverified |
| UnnamedContract | unknown | aurora | n/a | `0xcddc83...25ff74` | ❓ Unverified |
| UnnamedContract | unknown | aurora | n/a | `0xd6b41c...f6465f` | ❓ Unverified |
| UnnamedContract | unknown | aurora | n/a | `0xdaeac1...276b12` | ❓ Unverified |
| UnnamedContract | unknown | aurora | n/a | `0xddbfd2...5575b1` | ❓ Unverified |
| UnnamedContract | unknown | aurora | n/a | `0xe00a8a...91cfe7` | ❓ Unverified |
| UnnamedContract | unknown | aurora | n/a | `0xe1fefe...6f249c` | ❓ Unverified |
| UnnamedContract | unknown | aurora | n/a | `0xedbc9d...51b9c6` | ❓ Unverified |
| UnnamedContract | unknown | aurora | n/a | `0xf27fcc...9f012c` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| aurora | [`0xcb2519...78e3ff`](./contracts/aurora-1313161554/0xcb251907382aeb3c2edab766561d5f4e6c78e3ff/) | StableLPMaker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| aurora | [`0x2df95b...8ab86b`](./contracts/aurora-1313161554/0x2df95be842cd68062ecdb7a30ca8dd400a8ab86b/) | StableLPMakerV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| aurora | [`0x51d96e...1a4064`](./contracts/aurora-1313161554/0x51d96ef6960cc7b4c884e1215564f926011a4064/) | SwapFlashLoan | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| aurora | [`0x5ebd5e...0aaade`](./contracts/aurora-1313161554/0x5ebd5e963a00500b6a1234c621811c52af0aaade/) | UsdcMaker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 4 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 39 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
