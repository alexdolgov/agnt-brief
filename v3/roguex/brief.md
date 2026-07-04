# Agentic Audit Brief: Roguex

## Project Overview

- Project: Roguex (`roguex`)
- Website: [https://roguex.ai/](https://roguex.ai/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:47.570Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d640
- Chains: blast
- Contract surface: 112 unique implementations (112 raw deployments)
- DeFi Llama TVL: $28,948.13
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 6 project-authored contract(s) across 1 chain(s); 1 ERC20 token; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 2 common project-authored base contract(s) (blastbase, peripheryimmutablestate). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 115; live-surface contracts included: 112 (2 live, 110 unknown).
- Excluded by liveness: 3 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/2 (50.0%)
- Deployed-live implementations: 2 of 112 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/2
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 110
- Unique implementations: 112
- Raw deployments: 112
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-12 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 1 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| yAudit | Tier 2 | 1 | 50.0% | 2023-12 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| SwapRouter | unknown | blast | n/a | [`0x8e7a51...41f095`](./contracts/blast-81457/0x8e7a5187117f3dfbae028ac26db00a75ae41f095/) | ✅ Audited |

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| FixSupplyToken | token | blast | n/a | [`0x01593b...a48c5f`](./contracts/blast-81457/0x01593b8aaadc5238f2f5c8597bc1402eb7a48c5f/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (110)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | blast | n/a | `0x00a348...0276dc` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x01a4c7...75c74f` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x032459...f2952f` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x042c13...7694d4` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x05956a...82c340` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x090787...833bd7` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x10e00e...e09fe6` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x142cde...e0748e` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x18aa46...db3826` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x1934da...8cd9ea` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x1c7ee1...115f55` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x1e3b2d...6c2782` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x1ef53c...9de1a9` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x1f4d8c...d4b648` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x2140c5...5467a2` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x21f758...64caf8` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x29d1f2...4ffce8` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x2b8b05...4179a0` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x2f1044...a7b76f` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x31ddc8...18f8e5` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x37dde1...f16692` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x37e33b...883a2a` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x37e4b0...3ec901` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x386d7b...bc9e68` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x39bf01...929033` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x41063e...4bd6ac` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x42c542...d01399` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x43e09d...12d24b` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x4caee1...0c7c5d` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x4dd10e...374ab6` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x5506fa...876967` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x5ca3d8...1201a8` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x5d9fe2...023380` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x6064b5...7939c4` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x6473c9...13a564` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x648aa4...edc5cb` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x662267...8a819b` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x66a4c2...a5e217` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x68f49a...b871a6` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x6ba43e...bfc59b` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x6c8019...fe7c46` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x717aa1...fcf396` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x760807...f3b26d` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x76ccda...688cf6` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x7765a7...d272b1` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x7db219...de42a8` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x7f4701...8c3b0f` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x84f7df...ed6b86` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x859997...40a923` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x8632a0...b6f709` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x87d82c...ad704c` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x88332d...438885` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x88c846...dc8749` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x895df5...dd87c4` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x8ae7ba...d4d33b` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x8e26b6...39fdb4` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x8f833d...c4499d` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x90c1fc...0c0424` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x91f205...f83380` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x93e069...8fd62e` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x9430d0...dcd55e` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x946d5d...6598e3` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x97bd39...505c07` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x9c6c26...e20dc7` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xa00571...6e7e80` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xa1d4ab...3fab8f` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xa5f574...555249` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xa7a567...bd23c5` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xabcbe4...6ec90f` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xad7482...906a55` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xb2f67e...9ed4b3` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xb59547...a1c0a5` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xb81b69...c4d7ad` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xb9f7da...1aa2c2` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xbb731a...37e6d4` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xbc166b...a656ec` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xbd9215...bf9b85` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xc1d22e...91d885` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xc37b38...a96479` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xc8cbb7...37ebfc` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xc8e6bc...cb5bdb` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xc9bcbf...790369` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xca584c...702a46` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xcb4aa4...07e03f` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xcc6a91...89771e` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xccd7fe...45b7ce` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xcd16b2...5481ec` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xce625a...06fd1c` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xd4421f...d6c4d4` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xd4c4ae...f33905` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xd4d589...c95512` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xd70278...d72542` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xda8b68...47e033` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xdd8440...2b4243` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xde507d...80168a` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xdf119e...45814c` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xdf59b5...e5a277` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xe2c863...db5624` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xe34789...31c500` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xe430a4...4f38dc` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xe962d8...378d21` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xee7574...904151` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xeed95f...a4ebee` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xef0537...68ead6` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xf0c2f7...afc62e` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xf0ca23...cda8a4` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xf26bd9...675897` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xf34d3b...1fbe11` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xfe0f3c...965d0b` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xfe4f65...111df8` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [RogueX Smart Contract Security Audit Report.pdf](https://github.com/LunaraySec/Report/blob/7a858deb336dccb7af7258f26dd8416fce5e6fc1/RogueX%20Smart%20Contract%20Security%20Audit%20Report.pdf) | yAudit | Audit | 2023-12 | stale | Direct | contract_name | 1 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 112 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=1

Fork inheritance lineage and inherited audits are included when available.
