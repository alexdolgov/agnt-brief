# Agentic Audit Brief: VNX

## Project Overview

- Project: VNX (`vnx`)
- Website: [https://vnx.li](https://vnx.li)
- Lifecycle: unknown
- Generated: 2026-07-03T21:07:11.762Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-4c3e
- Chains: arbitrum, avalanche, base, celo, ethereum, fraxtal, polygon
- Contract surface: 21 unique implementations (72 raw deployments)
- DeFi Llama TVL: $5,338,354.15
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

RWA. Structurally: 11 project-authored contract(s) across 4 chain(s); 3 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 4 functional families. Its contracts share 2 common project-authored base contract(s) (proxy, erc1967upgrade). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 90; live-surface contracts included: 61 (55 live, 6 unknown).
- Excluded by liveness: 29 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/16 (0.0%)
- Deployed-live implementations: 16 of 21 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/16
- Verified + Unaudited implementations: 16
- Verified by bytecode match: 0
- Unverified implementations: 5
- Unique implementations: 21
- Raw deployments: 72
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 3 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (16)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| VNXAnyTransferProvider | unknown | arbitrum | n/a | 5 deployments: fraxtal `0x54849d...859173`; base `0xae80e9...fb649b`; arbitrum [`0x2cf31b...7225d6`](./contracts/arbitrum-42161/0x2cf31b8c4b4da736ce551db514258f5a567225d6/); celo `0x974587...04796e`; avalanche `0x75203f...4cbd26` | ⚠️ Unaudited |
| VNXCToken | unknown | ethereum | n/a | 4 deployments: ethereum [`0x233db7...7cbfe3`](./contracts/ethereum-1/0x233db75eae26359b406e327504b6be4ad77cbfe3/); ethereum `0x34c9c6...9817cb`; ethereum `0x65faa4...a8a03b`; ethereum `0xf72ee0...6e6ba6` | ⚠️ Unaudited |
| VNXCToken | unknown | ethereum | n/a | 3 deployments: ethereum [`0x6ba75d...89b5d3`](./contracts/ethereum-1/0x6ba75d640bebfe5da1197bb5a2aff3327789b5d3/); ethereum `0x79d4f0...cfbf4f`; ethereum `0xd1d719...2f81fc` | ⚠️ Unaudited |
| VNXCToken | unknown | ethereum | n/a | 2 deployments: ethereum [`0xc27925...e81584`](./contracts/ethereum-1/0xc279257f8c899b31d523450f12d163f8b9e81584/); ethereum `0xfa792e...f87e65` | ⚠️ Unaudited |
| VNXCToken | unknown | polygon | n/a | 3 deployments: polygon [`0x5cb036...58ef32`](./contracts/polygon-137/0x5cb0365674da4d167755bd3fb99a09916258ef32/); polygon `0xcdb386...84c9ae`; polygon `0xe4095d...33b097` | ⚠️ Unaudited |
| VNXCToken | unknown | fraxtal | n/a | 3 deployments: fraxtal [`0x189129...c43b4a`](./contracts/fraxtal-252/0x1891291474fe677cb63e47cc347e6b8bc0c43b4a/); fraxtal `0x418126...57425d`; fraxtal `0x4c0bd7...6aaee6` | ⚠️ Unaudited |
| VNXCToken | unknown | base | n/a | 4 deployments: base [`0x0d12d7...782ab1`](./contracts/base-8453/0x0d12d751e71dec6bfed7f5ac34b1fb8df4782ab1/); base `0x1fca74...0fd5d8`; base `0x4ed9df...37f347`; base `0xaeb4bb...7bf411` | ⚠️ Unaudited |
| VNXCToken | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x02cea9...c75969`](./contracts/arbitrum-42161/0x02cea97794d2cfb5f560e1ff4e9c59d1bec75969/); arbitrum `0x4883c8...5d01f8`; arbitrum `0xd3bfc7...b5045a` | ⚠️ Unaudited |
| VNXCToken | unknown | celo | n/a | 4 deployments: celo [`0x7ae426...f4bb7f`](./contracts/celo-42220/0x7ae4265ecfc1f31bc0e112dfcfe3d78e01f4bb7f/); celo `0x9346f4...2d9cba`; celo `0xc5ebea...3af871`; celo `0xf3e535...62b569` | ⚠️ Unaudited |
| VNXCToken | unknown | avalanche | n/a | 4 deployments: avalanche [`0x228a48...d56c19`](./contracts/avalanche-43114/0x228a48df6819ccc2eca01e2192ebafffdad56c19/); avalanche `0x7678e1...e5fa0b`; avalanche `0x832cba...c51708`; avalanche `0x8ed06e...075f96` | ⚠️ Unaudited |
| VNXDGR | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1c17d6...d584c4`](./contracts/ethereum-1/0x1c17d67706423735b8bbf5b234d63b872bd584c4/); ethereum `0x6d57b2...e4a488` | ⚠️ Unaudited |
| VNXDGR | unknown | polygon | n/a | [`0xc8bb8e...400400`](./contracts/polygon-137/0xc8bb8eda94931ca2f20ef43ea7dbd58e68400400/) | ⚠️ Unaudited |
| VNXDGR | unknown | base | n/a | 2 deployments: base [`0x709616...4a66c5`](./contracts/base-8453/0x709616610224dd12542bf7e862c00d0beb4a66c5/); base `0xac3fe2...ff3098` | ⚠️ Unaudited |
| VNXDGR | unknown | arbitrum | n/a | 4 deployments: fraxtal `0xd0b03c...cac886`; arbitrum [`0x0bd934...a910eb`](./contracts/arbitrum-42161/0x0bd93484ca448205ed78f77b2de7596a49a910eb/); celo `0xdf4910...40bceb`; avalanche `0x1512c8...2c9f54` | ⚠️ Unaudited |
| VNXManager | governance | fraxtal | n/a | 12 deployments: ethereum `0xcdb386...84c9ae`; fraxtal [`0x7e36bf...ea13dc`](./contracts/fraxtal-252/0x7e36bf17c4791832c005ea4078fe1af807ea13dc/); fraxtal `0x81c2e3...21737f`; base `0xb6622a...cb60ee`; base `0xc4c917...cf7d9d`; arbitrum `0x81c2e3...21737f`; arbitrum `0xa67ec5...c10278`; arbitrum `0xd4e94d...9b9cc2`; celo `0x86f3f1...6c387b`; celo `0xfc4210...d50eee`; avalanche `0x8b84f7...ffc31a`; avalanche `0x94b1fb...7654bf` | ⚠️ Unaudited |
| VNXProxyAdmin | governance | base | n/a | 11 deployments: ethereum `0xc8bb8e...400400`; fraxtal `0x516fec...13af5b`; fraxtal `0xa67ec5...c10278`; base [`0x172476...b762c2`](./contracts/base-8453/0x1724768a253476159a622a1689146862d3b762c2/); base `0x35bb28...6b79e8`; arbitrum `0x200db8...b9c7f3`; arbitrum `0x3d3830...0a7165`; celo `0x20aac9...e7827f`; celo `0xe003bd...72fabc`; avalanche `0x511942...0cd8c3`; avalanche `0x9b357f...25a660` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (5)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x78c1b5...d52938` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0410d2...9c88e4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x418126...57425d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7a7f80...353dfb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8f1352...4ffc1b` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [VNX_Examination_on_Management_Assertions_VNXAU_31_12_2025_signiert.pdf](https://vnx.li/wp-content/uploads/2026/03/VNX_Examination_on_Management_Assertions_VNXAU_31_12_2025_signiert.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [VNX_Commodity_Token_Security_Audit_Report_v1.0.2.pdf](https://vnx.li/wp-content/uploads/2026/03/VNX_Commodity_Token_Security_Audit_Report_v1.0.2.pdf) | unknown | Audit | 2021 | stale | Direct | n/a | 0 | n/a |
| [page-1.md](https://vnx.gitbook.io/vnx-platform/documents/audits/page-1.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [audits.md](https://vnx.gitbook.io/vnx-platform/documents/audits.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 21 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [21146] VNX_Examination_on_Management_Assertions_VNXAU_31_12_2025_signiert.pdf
- [21147] VNX_Commodity_Token_Security_Audit_Report_v1.0.2.pdf
- [21148] page-1.md
- [21149] audits.md

Fork inheritance lineage and inherited audits are included when available.
