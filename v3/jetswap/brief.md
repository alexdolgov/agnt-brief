# Agentic Audit Brief: JetSwap

## Project Overview

- Project: JetSwap (`jetswap`)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:16.663Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-dc67
- Chains: bsc
- Contract surface: 22 unique implementations (39 raw deployments)
- DeFi Llama TVL: $309,127.67
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 54 project-authored contract(s) across 1 chain(s); 22 ERC20 tokens, 1 ERC721 NFT; built on openzeppelin.

### Architecture

The protocol comprises 4 functional families. Its contracts share 1 common project-authored base contract(s) (contractguard). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 263; live-surface contracts included: 39 (33 live, 6 unknown).
- Excluded by liveness: 224 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/16 (0.0%)
- Deployed-live implementations: 16 of 22 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/16
- Verified + Unaudited implementations: 16
- Verified by bytecode match: 0
- Unverified implementations: 6
- Unique implementations: 22
- Raw deployments: 39
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 2 unknown
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
| GFORCE | unknown | bsc | n/a | [`0x94babb...1b26ce`](./contracts/bsc-56/0x94babbe728d9411612ee41b20241a6fa251b26ce/) | ⚠️ Unaudited |
| GFORCEv2 | unknown | bsc | n/a | [`0x5f1363...e64c66`](./contracts/bsc-56/0x5f136383e230f972739fae2e81e7e774afe64c66/) | ⚠️ Unaudited |
| JetBar | unknown | bsc | n/a | [`0xf64882...4ee3dd`](./contracts/bsc-56/0xf6488205957f0b4497053d6422f49e27944ee3dd/) | ⚠️ Unaudited |
| JetfuelFortressVault | core_logic | bsc | n/a | [`0x647db6...3e22d2`](./contracts/bsc-56/0x647db6dce3c36ac1a3ba48f0f6b767a6c73e22d2/) | ⚠️ Unaudited |
| JetfuelVault | core_logic | bsc | n/a | 9 deployments: bsc [`0x184ba4...30b7ba`](./contracts/bsc-56/0x184ba48939c49f54b0aa31f76177eba40130b7ba/); bsc `0x1ae8f4...e722ae`; bsc `0x29c12b...a78433`; bsc `0x414953...6b4f1c`; bsc `0x7c3397...4771f4`; bsc `0xa6d550...4474ff`; bsc `0xc573b7...2169ff`; bsc `0xd13bbd...2fe227`; bsc `0xd1c249...cd3104` | ⚠️ Unaudited |
| JetfuelVaultDittoBoost | core_logic | bsc | n/a | [`0x3d6d41...73dc20`](./contracts/bsc-56/0x3d6d415be40159f207540f95e398f29a7173dc20/) | ⚠️ Unaudited |
| JetswapBar | unknown | bsc | n/a | [`0xd07947...d61b47`](./contracts/bsc-56/0xd079475f820bb3a01932083382aed733d3d61b47/) | ⚠️ Unaudited |
| JetswapRouter | adapter | bsc | n/a | [`0xbe65b8...714800`](./contracts/bsc-56/0xbe65b8f75b9f20f4c522e0067a3887fada714800/) | ⚠️ Unaudited |
| JetswapVault | core_logic | bsc | n/a | 5 deployments: bsc [`0x465a5e...c826a4`](./contracts/bsc-56/0x465a5e8501bf38898a8aead87f0d864adcc826a4/); bsc `0x755aac...99ae90`; bsc `0xd0b1dc...fa31b5`; bsc `0xed2097...976fb0`; bsc `0xf2f113...17e664` | ⚠️ Unaudited |
| MasterChef | unknown | bsc | n/a | [`0x63d6ec...b6f9f5`](./contracts/bsc-56/0x63d6ec1cdef04464287e2af710ffef9780b6f9f5/) | ⚠️ Unaudited |
| SmartChef | unknown | bsc | n/a | 2 deployments: bsc [`0x76fe14...a7d973`](./contracts/bsc-56/0x76fe142b05ff6afbc10b56c7fd8aec3030a7d973/); bsc `0xe7b83b...a54354` | ⚠️ Unaudited |
| StrategyFortress | core_logic | bsc | n/a | 2 deployments: bsc [`0xdc012e...964e1a`](./contracts/bsc-56/0xdc012ee194179ceb4f5431015148b0da1f964e1a/); bsc `0xe54572...0de789` | ⚠️ Unaudited |
| StrategyFortressBNB | core_logic | bsc | n/a | [`0x58b8b3...8c506d`](./contracts/bsc-56/0x58b8b3430c70e76a33e91a6c942078b8f88c506d/) | ⚠️ Unaudited |
| StrategyWingsLP | core_logic | bsc | n/a | 4 deployments: bsc [`0x5d9ebd...707ad8`](./contracts/bsc-56/0x5d9ebde919f6ee1a37263ee9d7bbdc5821707ad8/); bsc `0x70ed48...9d8a30`; bsc `0xa22dbb...f2e0b6`; bsc `0xad74c8...7cbae8` | ⚠️ Unaudited |
| StrategyWingsSingleVault | core_logic | bsc | n/a | [`0xf150fd...24e06f`](./contracts/bsc-56/0xf150fd19a8f88668099eab23291162124f24e06f/) | ⚠️ Unaudited |
| WingsToken | token | bsc | n/a | [`0x0487b8...498446`](./contracts/bsc-56/0x0487b824c8261462f88940f97053e65bdb498446/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (6)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0x47e2b2...0a6b40` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6b9040...263aaf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x733ea2...4ac038` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x813692...2891b8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x897420...cc4210` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa1a441...35fd4d` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [audit-by-etherauthority.pdf](https://jetswap.finance/audit-by-etherauthority.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [audit-by-hash0x.pdf](https://jetswap.finance/audit-by-hash0x.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 22 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [13302] audit-by-etherauthority.pdf
- [13303] audit-by-hash0x.pdf

Fork inheritance lineage and inherited audits are included when available.
