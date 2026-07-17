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
| StableLPMaker | unknown | aurora | n/a | [`0xcb251907382aeb3c2edab766561d5f4e6c78e3ff`](./contracts/aurora-1313161554/0xcb251907382aeb3c2edab766561d5f4e6c78e3ff/) | ⚠️ Unaudited |
| StableLPMakerV2 | unknown | aurora | n/a | [`0x2df95be842cd68062ecdb7a30ca8dd400a8ab86b`](./contracts/aurora-1313161554/0x2df95be842cd68062ecdb7a30ca8dd400a8ab86b/) | ⚠️ Unaudited |
| SwapFlashLoan | unknown | aurora | n/a | [`0x51d96ef6960cc7b4c884e1215564f926011a4064`](./contracts/aurora-1313161554/0x51d96ef6960cc7b4c884e1215564f926011a4064/) | ⚠️ Unaudited |
| UsdcMaker | unknown | aurora | n/a | 2 deployments: aurora [`0x5ebd5e963a00500b6a1234c621811c52af0aaade`](./contracts/aurora-1313161554/0x5ebd5e963a00500b6a1234c621811c52af0aaade/); aurora `0xe7d7fdb739102583275060342d2224a67163f34a` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | aurora | n/a | `0x0160b7c779678f784d56dadb89f9ad4635deb3df` | ❓ Unverified |
| UnnamedContract | unknown | aurora | n/a | `0x0564d68404608599e8c567a0bd74f90a942a69a0` | ❓ Unverified |
| UnnamedContract | unknown | aurora | n/a | `0x0982ebcbf1b77b4dbfb6bcad62340687237ac663` | ❓ Unverified |
| UnnamedContract | unknown | aurora | n/a | `0x107f0e44d07369934f0c4546f9122e1da4322a4e` | ❓ Unverified |
| UnnamedContract | unknown | aurora | n/a | `0x114ecaa70256afad393f733aa4b4bf61c8959fc2` | ❓ Unverified |
| UnnamedContract | unknown | aurora | n/a | `0x29c85797a337dcd2b5a5e5aa5ee3043b271b2c58` | ❓ Unverified |
| UnnamedContract | unknown | aurora | n/a | `0x2ade4f1f88bf49f19261d5db9ab3bd99c8f73064` | ❓ Unverified |
| UnnamedContract | unknown | aurora | n/a | `0x2f928da9eaececa6f1d284f48589f7e456a1abc2` | ❓ Unverified |
| UnnamedContract | unknown | aurora | n/a | `0x35529bbdd64a561d8a29004c7efcb1a5d0f6ea4a` | ❓ Unverified |
| UnnamedContract | unknown | aurora | n/a | `0x3ce7aad78b9eb47fd2b487c463a17aaed038b7ec` | ❓ Unverified |
| UnnamedContract | unknown | aurora | n/a | `0x3e8795f95b6d0b063a054f40e3d50178fc463763` | ❓ Unverified |
| UnnamedContract | unknown | aurora | n/a | `0x458459e48dbac0c8ca83f8d0b7b29fefe60c3970` | ❓ Unverified |
| UnnamedContract | unknown | aurora | n/a | `0x45e940b3247449f7980d5c097ce36045bcd2e01e` | ❓ Unverified |
| UnnamedContract | unknown | aurora | n/a | `0x46f27692de8aa76e86e7e665e573828b9ddcb2b8` | ❓ Unverified |
| UnnamedContract | unknown | aurora | n/a | `0x47372acbf2def3ade01cb4330243834a0ff12898` | ❓ Unverified |
| UnnamedContract | unknown | aurora | n/a | `0x4ba3a1e2cde9f28c0df2d1967315308278270946` | ❓ Unverified |
| UnnamedContract | unknown | aurora | n/a | `0x62f6de4027242ada801a488f95c0767e5e97f7f0` | ❓ Unverified |
| UnnamedContract | unknown | aurora | n/a | `0x641e05dfc6852f691253b73f76d1336b2c39fb6e` | ❓ Unverified |
| UnnamedContract | unknown | aurora | n/a | `0x6e6e7b78e9e90046b5862d5cce3a7519dfa1a9ff` | ❓ Unverified |
| UnnamedContract | unknown | aurora | n/a | `0x7825c8fd39f0173a019e6fe4440e1bd9c25ba12c` | ❓ Unverified |
| UnnamedContract | unknown | aurora | n/a | `0x87009564b6dfc02256144fad855c92ec3a384bb6` | ❓ Unverified |
| UnnamedContract | unknown | aurora | n/a | `0x895bdc6644ae2652db22b9387b004c091ef868fe` | ❓ Unverified |
| UnnamedContract | unknown | aurora | n/a | `0x931e03d5a01db8cb0c68b3118e502ad1b3163066` | ❓ Unverified |
| UnnamedContract | unknown | aurora | n/a | `0x984bd0142aeef756efaa3d190f1132907bb6e440` | ❓ Unverified |
| UnnamedContract | unknown | aurora | n/a | `0x9dfec502191aa928ee4128505fbb1bd3d51a66cd` | ❓ Unverified |
| UnnamedContract | unknown | aurora | n/a | `0xa5782838b39cd618584236614e36f9c9a1b8e50e` | ❓ Unverified |
| UnnamedContract | unknown | aurora | n/a | `0xb77190a4fd2528d2bb778b409fb5224f7ffacb24` | ❓ Unverified |
| UnnamedContract | unknown | aurora | n/a | `0xb8e6c85f18525573aaabdc11a665a5db4357f54a` | ❓ Unverified |
| UnnamedContract | unknown | aurora | n/a | `0xbf6cf52b9b3311606805abb43af513ce850a2aeb` | ❓ Unverified |
| UnnamedContract | unknown | aurora | n/a | `0xc6618d97b96187cc06c61a32964f2f5d8690adda` | ❓ Unverified |
| UnnamedContract | unknown | aurora | n/a | `0xccd87854f58773fe75cdda542457ac48e46c2d65` | ❓ Unverified |
| UnnamedContract | unknown | aurora | n/a | `0xcddc83e58f9c1d6e9916b6cfa7143b35d125ff74` | ❓ Unverified |
| UnnamedContract | unknown | aurora | n/a | `0xd6b41c2f1f54cbe6bb6c45523a0acccd29f6465f` | ❓ Unverified |
| UnnamedContract | unknown | aurora | n/a | `0xdaeac1298f241b42d705fd2e1fa581dcf8276b12` | ❓ Unverified |
| UnnamedContract | unknown | aurora | n/a | `0xddbfd2ac8b0f0f621320d12d7efde065815575b1` | ❓ Unverified |
| UnnamedContract | unknown | aurora | n/a | `0xe00a8a48380616026fb90cd8bee519b02b91cfe7` | ❓ Unverified |
| UnnamedContract | unknown | aurora | n/a | `0xe1fefe844b8d1e04e3e95d819fa2ee09e06f249c` | ❓ Unverified |
| UnnamedContract | unknown | aurora | n/a | `0xedbc9d412854585f71c3765697167b462e51b9c6` | ❓ Unverified |
| UnnamedContract | unknown | aurora | n/a | `0xf27fcca3092a8a08d178f064bf14db59e99f012c` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| aurora | [`0xcb251907382aeb3c2edab766561d5f4e6c78e3ff`](./contracts/aurora-1313161554/0xcb251907382aeb3c2edab766561d5f4e6c78e3ff/) | StableLPMaker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| aurora | [`0x2df95be842cd68062ecdb7a30ca8dd400a8ab86b`](./contracts/aurora-1313161554/0x2df95be842cd68062ecdb7a30ca8dd400a8ab86b/) | StableLPMakerV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| aurora | [`0x51d96ef6960cc7b4c884e1215564f926011a4064`](./contracts/aurora-1313161554/0x51d96ef6960cc7b4c884e1215564f926011a4064/) | SwapFlashLoan | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| aurora | [`0x5ebd5e963a00500b6a1234c621811c52af0aaade`](./contracts/aurora-1313161554/0x5ebd5e963a00500b6a1234c621811c52af0aaade/) | UsdcMaker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
