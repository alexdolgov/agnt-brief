# Agentic Audit Brief: Crabada

## Project Overview

- Project: Crabada (`crabada`)
- Website: [https://www.crabada.com](https://www.crabada.com)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:10.593Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-43c7
- Chains: avalanche
- Contract surface: 59 unique implementations (67 raw deployments)
- DeFi Llama TVL: $0.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Gaming. Structurally: 12 project-authored contract(s) across 1 chain(s); 2 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 1 common project-authored base contract(s) (operator). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 77; live-surface contracts included: 67 (2 live, 65 unknown).
- Excluded by liveness: 10 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/2 (0.0%)
- Deployed-live implementations: 2 of 59 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/2
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 57
- Unique implementations: 59
- Raw deployments: 67
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-11 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CRA | unknown | avalanche | n/a | [`0xa32608...b4d1ed`](./contracts/avalanche-43114/0xa32608e873f9ddef944b24798db69d80bbb4d1ed/) | ⚠️ Unaudited |
| TUS | unknown | avalanche | n/a | [`0xf69324...fdd172`](./contracts/avalanche-43114/0xf693248f96fe03422fea95ac0afbbbc4a8fdd172/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (57)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Proxy (impl: 0xaae485780b00dc96859348bc59b7b3fc099e5a00) | unknown | avalanche | n/a | 2 deployments: avalanche `0x7e8dee...922f49`; avalanche `0xaae485...9e5a00` | ❓ Unverified |
| Proxy (impl: 0xb3f066d44d6022972d21f6cfaba5ed2af600eda0) | unknown | avalanche | n/a | 2 deployments: avalanche `0x82a854...f14da8`; avalanche `0xb3f066...00eda0` | ❓ Unverified |
| Proxy (impl: 0xb984b15e338ac7cabc66d497af383f2916ddfcfa) | unknown | avalanche | n/a | 2 deployments: avalanche `0x05c828...e9939e`; avalanche `0xb984b1...ddfcfa` | ❓ Unverified |
| Proxy (impl: 0xccae3948640097c67f067cba7f6a4e9b40f16ec4) | unknown | avalanche | n/a | 2 deployments: avalanche `0x1b7966...3cacdd`; avalanche `0xccae39...f16ec4` | ❓ Unverified |
| Proxy (impl: 0xceac74d1e9ac8b5e938f75936373d73b6cd01a49) | unknown | avalanche | n/a | 2 deployments: avalanche `0xa87544...b4a525`; avalanche `0xceac74...d01a49` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0eafc8...ae19e2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x109f17...72f241` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x10d48f...1ee5dd` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x16bf44...eb9452` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x19a88d...53bdab` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1fa283...db67d8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x2c7478...6f467c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x311c46...b5ecaf` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x397b63...510f35` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x3ba25d...f5ef10` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x3d77f9...373e91` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x431de0...1d04b6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x4710ea...3a6c79` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | 2 deployments: avalanche `0x472087...b8c2da`; avalanche `0x67b0ed...114af0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x49a7bf...7ac203` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x54b92d...06cee4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5f0c78...e61412` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6448ca...82c891` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6b2f89...f02b7e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x70f58c...7f1c92` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x716275...eede52` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7567a4...3aa83b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7a1b46...cc4dd8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7c56f9...2e94ec` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | 2 deployments: avalanche `0x86a6e2...c7d757`; avalanche `0xf8a82f...8fc84c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x8c576a...e3c59c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x9099ae...70378d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x937024...01b3d2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x94482b...ab0ac9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x96dd95...74042c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x9b82d3...d64bcd` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x9f9151...fa95ae` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xaa499c...cf5e47` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xadcd11...4e9818` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xaf6992...737b7c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xaf74e0...707df3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb599b7...48fc90` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xbdac98...fb45e5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xbe3337...2102cf` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc190d1...7e5d94` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc3ae90...e30a97` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc57b51...18401d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc5c803...c05087` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xce5595...f7d46b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xcee500...62a1cf` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd2a7cd...a0a835` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | 2 deployments: avalanche `0xd2bc77...d0fc24`; avalanche `0xd2cd7a...b927d3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd882a4...6e00ce` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xda90de...ff60c9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xed08e2...35f121` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xedc3b7...31a431` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf6b05d...206923` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Verichains Public Audit Report - Crabada Game - v1.1.pdf](https://github.com/verichains/public-audit-reports/blob/main/Verichains%20Public%20Audit%20Report%20-%20Crabada%20Game%20-%20v1.1.pdf) | unknown | Audit | 2021-11 | stale | Direct | n/a | 0 | n/a |
| [Verichains Public Audit Report - Crabada Sale - v1.2.pdf](https://github.com/verichains/public-audit-reports/blob/main/Verichains%20Public%20Audit%20Report%20-%20Crabada%20Sale%20-%20v1.2.pdf) | unknown | Audit | 2021-11 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| avalanche | [`0xa32608...b4d1ed`](./contracts/avalanche-43114/0xa32608e873f9ddef944b24798db69d80bbb4d1ed/) | CRA | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xf69324...fdd172`](./contracts/avalanche-43114/0xf693248f96fe03422fea95ac0afbbbc4a8fdd172/) | TUS | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 57 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [12967] Verichains Public Audit Report - Crabada Game - v1.1.pdf
- [12968] Verichains Public Audit Report - Crabada Sale - v1.2.pdf

Fork inheritance lineage and inherited audits are included when available.
