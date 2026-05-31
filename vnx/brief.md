# Agentic Audit Brief: VNX

## Project Overview

- Project: VNX (`vnx`)
- Website: [https://vnx.li](https://vnx.li)
- Lifecycle: active (Tier 0, 55.9% below peak)
- Generated: 2026-05-31T11:35:54.035Z
- Pipeline run: v2-pipeline-2026-05-31-ab6275-1b32
- Chains: arbitrum, avalanche, base, celo, ethereum, fraxtal, polygon
- Contract surface: 10 unique implementations (90 raw deployments)
- DeFi Llama TVL: $6,001,230.66
- On-chain TVL (included contracts): $1,848,984.20
- TVL by chain: Avalanche $1,297,037.98 | Base $421,766.84 | Ethereum $83,403.92 | Celo $43,027.52 | Polygon $3,490.89 | Arbitrum $257.05

## Project Description

VNX is a protocol for tokenized real-world assets (RWAs), issuing stablecoins and digital representations of fiat currencies on multiple blockchains. It provides regulated, fiat-backed tokens that enable on-chain payments, trading, and settlement.

### Architecture

The VNX family consists of token implementations (VNXCToken) and governance/registry contracts (VNXDGR) deployed behind TransparentUpgradeableProxy instances, sharing a common upgradeable infrastructure. A VNXAnyTransferProvider likely facilitates cross-chain or arbitrary transfer logic, supporting the multi-chain token ecosystem.

## Audit Coverage Summary

- Verified implementations audited: 0/5 (0.0%)
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 5
- Unique implementations: 10
- Raw deployments: 90
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $1,848,984.20
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| VNXCToken | token | arbitrum | 36 deployments: ethereum `0x233db7...7cbfe3`; ethereum `0x34c9c6...9817cb`; ethereum `0x65faa4...a8a03b`; ethereum `0x6ba75d...89b5d3`; ethereum `0x79d4f0...cfbf4f`; ethereum `0xc27925...e81584`; ethereum `0xd1d719...2f81fc`; ethereum `0xeb8b5e...f11c53`; ethereum `0xf72ee0...6e6ba6`; ethereum `0xfa792e...f87e65`; polygon `0x5cb036...58ef32`; polygon `0xcdb386...84c9ae`; polygon `0xe4095d...33b097`; fraxtal `0x0410d2...9c88e4`; fraxtal `0x189129...c43b4a`; fraxtal `0x418126...57425d`; fraxtal `0x4c0bd7...6aaee6`; base `0x07bf6f...85ea94`; base `0x0d12d7...782ab1`; base `0x1fca74...0fd5d8`; base `0x4ed9df...37f347`; base `0xaeb4bb...7bf411`; arbitrum [`0x02cea9...c75969`](./contracts/arbitrum-42161/0x02cea97794d2cfb5f560e1ff4e9c59d1bec75969/); arbitrum `0x3c25ca...f1656f`; arbitrum `0x4883c8...5d01f8`; arbitrum `0xd3bfc7...b5045a`; celo `0x7ae426...f4bb7f`; celo `0x9346f4...2d9cba`; celo `0xaec61b...080132`; celo `0xc5ebea...3af871`; celo `0xf3e535...62b569`; avalanche `0x228a48...d56c19`; avalanche `0x4e8a3d...1d9c80`; avalanche `0x7678e1...e5fa0b`; avalanche `0x832cba...c51708`; avalanche `0x8ed06e...075f96` | ⚠️ Unaudited |
| VNXAnyTransferProvider | unknown | arbitrum | 11 deployments: ethereum `0xe4fadb...7f7619`; fraxtal `0x54849d...859173`; fraxtal `0x8f1352...4ffc1b`; base `0xae80e9...fb649b`; base `0xbf26b8...ef4e50`; arbitrum [`0x2cf31b...7225d6`](./contracts/arbitrum-42161/0x2cf31b8c4b4da736ce551db514258f5a567225d6/); arbitrum `0x4c0bd7...6aaee6`; celo `0x974587...04796e`; celo `0xa8bfc6...41757d`; avalanche `0x75203f...4cbd26`; avalanche `0xcd2e3c...30aa32` | ⚠️ Unaudited |
| VNXDGR | unknown | base | 14 deployments: ethereum `0x1c17d6...d584c4`; ethereum `0x6d57b2...e4a488`; polygon `0xc8bb8e...400400`; fraxtal `0x7a7f80...353dfb`; fraxtal `0xd0b03c...cac886`; base [`0x033302...4c7177`](./contracts/base-8453/0x033302353f7dc3bad0e09a21dccb1acaae4c7177/); base `0x709616...4a66c5`; base `0xac3fe2...ff3098`; arbitrum `0x0bd934...a910eb`; arbitrum `0x57afd4...2a312f`; celo `0xd404c2...335584`; celo `0xdf4910...40bceb`; avalanche `0x1512c8...2c9f54`; avalanche `0x8c66b9...4bd5e2` | ⚠️ Unaudited |
| VNXManager | governance | fraxtal | 13 deployments: ethereum `0xcdb386...84c9ae`; fraxtal [`0x7e36bf...ea13dc`](./contracts/fraxtal-252/0x7e36bf17c4791832c005ea4078fe1af807ea13dc/); fraxtal `0x81c2e3...21737f`; base `0xb6622a...cb60ee`; base `0xc4c917...cf7d9d`; arbitrum `0x81c2e3...21737f`; arbitrum `0xa67ec5...c10278`; arbitrum `0xd4e94d...9b9cc2`; celo `0x86f3f1...6c387b`; celo `0xfc4210...d50eee`; avalanche `0x8b84f7...ffc31a`; avalanche `0x94b1fb...7654bf`; avalanche `0xd5f57f...ea0cde` | ⚠️ Unaudited |
| VNXProxyAdmin | governance | base | 11 deployments: ethereum `0xc8bb8e...400400`; fraxtal `0x516fec...13af5b`; fraxtal `0xa67ec5...c10278`; base [`0x172476...b762c2`](./contracts/base-8453/0x1724768a253476159a622a1689146862d3b762c2/); base `0x35bb28...6b79e8`; arbitrum `0x200db8...b9c7f3`; arbitrum `0x3d3830...0a7165`; celo `0x20aac9...e7827f`; celo `0xe003bd...72fabc`; avalanche `0x511942...0cd8c3`; avalanche `0x9b357f...25a660` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (5)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x78c1b5...d52938` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x0410d2...9c88e4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x418126...57425d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x7a7f80...353dfb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x8f1352...4ffc1b` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0x02cea9...c75969`](./contracts/arbitrum-42161/0x02cea97794d2cfb5f560e1ff4e9c59d1bec75969/) | VNXCToken | token | $1,848,984.20 | Verified native implementation with $1,848,984.20 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x2cf31b...7225d6`](./contracts/arbitrum-42161/0x2cf31b8c4b4da736ce551db514258f5a567225d6/) | VNXAnyTransferProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x033302...4c7177`](./contracts/base-8453/0x033302353f7dc3bad0e09a21dccb1acaae4c7177/) | VNXDGR | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| fraxtal | [`0x7e36bf...ea13dc`](./contracts/fraxtal-252/0x7e36bf17c4791832c005ea4078fe1af807ea13dc/) | VNXManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x172476...b762c2`](./contracts/base-8453/0x1724768a253476159a622a1689146862d3b762c2/) | VNXProxyAdmin | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 10 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
