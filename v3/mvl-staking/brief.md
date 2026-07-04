# Agentic Audit Brief: MVL Staking

## Project Overview

- Project: MVL Staking (`mvl-staking`)
- Website: [https://mvlchain.io/](https://mvlchain.io/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:33.506Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d094
- Chains: ethereum
- Contract surface: 45 unique implementations (45 raw deployments)
- DeFi Llama TVL: $794,175.83
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield. Structurally: 3 project-authored contract(s) across 1 chain(s); 2 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Contracts operate as largely independent structural surfaces. Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 46; live-surface contracts included: 45 (2 live, 43 unknown).
- Excluded by liveness: 1 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/2 (50.0%)
- Deployed-live implementations: 2 of 45 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/2
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 43
- Unique implementations: 45
- Raw deployments: 45
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-02 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| CertiK | Tier 2 | 1 | 50.0% | 2022-02 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| MVLToken | token | ethereum | n/a | [`0xa849ea...18dc71`](./contracts/ethereum-1/0xa849eaae994fb86afa73382e9bd88c2b6b18dc71/) | ✅ Audited |

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UniswapV2Pair | unknown | ethereum | n/a | [`0x3c8ad3...2b5c7a`](./contracts/ethereum-1/0x3c8ad34155b83ddb7f43119a19503d34ed2b5c7a/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (43)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x024cc7...8ca388` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0283c1...0b4f31` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0d9607...587ff6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x105323...fa1bad` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1d2084...6ce44b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x25ddd6...2106ea` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2918ef...58437d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x29d21e...445707` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2b116e...6792ab` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x34fda5...1434d6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3fe455...fbbc78` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4abc96...e06047` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5690a9...9327c1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x597369...9809c7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5de946...a46b98` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x612c7d...dadc6c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6365d1...6b807b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x644353...bd7efc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x672397...239b31` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6b6547...61bfc2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x706b74...a6743b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x742ab0...f535cc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x749fdc...cda2c0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x791f3c...96d292` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x79a77d...984c15` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x879deb...1505aa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8d5554...7a8051` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x909006...60ee42` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x92ec27...6425df` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa791ae...a402d6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb56b01...e22d70` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb994f3...a8caa3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbe8412...0680fa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc0496c...d4abed` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc1ac84...c2637f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcd84f2...3a9306` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd3925b...4555b1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd50090...5a4b7c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe3c087...26360a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe700cc...2cda01` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf608e5...878bdc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf7e591...b59153` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf7eaec...9b6d80` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [skynet.certik.com/ko/projects/mvl-mass-vehicle-ledger](https://skynet.certik.com/ko/projects/mvl-mass-vehicle-ledger?utm_source=CMC&utm_campaign=AuditByCertiKLink) | CertiK | Audit | 2022-02 | stale | Direct | contract_name | 1 | n/a |
| [download.cm](https://mvlchain.io/download.cm?tk=YToyOntpOjA7czoxMzoiNWViMWZlNmQ3MTliZSI7aToxO3M6MjI6ImYyMDIzMDYwMjNkOTVmZjE0MDdhZTciO30=) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [59e51efffe348.pdf](https://dataseoul.s3.ap-northeast-2.amazonaws.com/upload/S20210416bccc442510498/59e51efffe348.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 45 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=1

Zero-match audit list:

- [3212] download.cm
- [11971] 59e51efffe348.pdf

Fork inheritance lineage and inherited audits are included when available.
