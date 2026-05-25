# Agentic Audit Brief: Meson

## Project Overview

- Project: Meson (`meson`)
- Website: [https://meson.fi/home](https://meson.fi/home)
- Lifecycle: active (Tier 0, 93.9% below peak)
- Generated: 2026-05-25T05:11:04.174Z
- Pipeline run: v2-pipeline-2026-05-22-eff36e-2ebb
- Chains: blast, merlin
- Contract surface: 129 unique implementations (129 raw deployments)
- DeFi Llama TVL: $1,144,238.59
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Meson is a cross-chain bridge protocol that enables fast, low-cost token transfers between different blockchains using a network of liquidity providers and atomic swaps. It supports stablecoins and other assets across multiple chains like Blast and Merlin.

### Architecture

The Meson family consists of a single product family with one core token contract (FixSupplyToken) and multiple unnamed supporting contracts that likely handle bridge logic, liquidity management, and cross-chain communication. All contracts are deployed by two main deployer clusters, indicating a unified infrastructure.

## Audit Coverage Summary

- Verified implementations audited: 0/2 (0.0%)
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 127
- Unique implementations: 129
- Raw deployments: 129
- Audits discovered: 4
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-10 (stale)
- Staleness: 0 fresh, 0 aging, 4 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| DeadLp | unknown | blast | [`0xbccda2...d3da07`](./contracts/blast-81457/0xbccda22db89aa35eff735c433ae0f2642dd3da07/) | ⚠️ Unaudited |
| FixSupplyToken | token | blast | [`0x01593b...a48c5f`](./contracts/blast-81457/0x01593b8aaadc5238f2f5c8597bc1402eb7a48c5f/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (127)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | merlin | `0x25ab3e...6948d3` | ❓ Unverified |
| UnnamedContract | unknown | merlin | `0x480e15...caf78d` | ❓ Unverified |
| UnnamedContract | unknown | merlin | `0x4b21b9...1c7c6b` | ❓ Unverified |
| UnnamedContract | unknown | merlin | `0x9bd60d...1bddcd` | ❓ Unverified |
| UnnamedContract | unknown | merlin | `0xa79374...32b758` | ❓ Unverified |
| UnnamedContract | unknown | merlin | `0xb5d8b1...24e2cf` | ❓ Unverified |
| UnnamedContract | unknown | merlin | `0xc21d5d...a4ad2b` | ❓ Unverified |
| UnnamedContract | unknown | merlin | `0xd55342...11038e` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x00a348...0276dc` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x01a4c7...75c74f` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x032459...f2952f` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x042c13...7694d4` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x05956a...82c340` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x090787...833bd7` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x10025a...fc4026` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x10e00e...e09fe6` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x142cde...e0748e` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x18aa46...db3826` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x1934da...8cd9ea` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x1c7ee1...115f55` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x1e3b2d...6c2782` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x1ef53c...9de1a9` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x1f4d8c...d4b648` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x2140c5...5467a2` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x21b102...2f7945` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x21f758...64caf8` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x28ea26...6a8fd3` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x29d1f2...4ffce8` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x2b8b05...4179a0` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x2f1044...a7b76f` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x31ddc8...18f8e5` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x37dde1...f16692` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x37e33b...883a2a` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x37e4b0...3ec901` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x386d7b...bc9e68` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x39bf01...929033` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x41063e...4bd6ac` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x42c542...d01399` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x42d1cd...5e67f8` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x43e09d...12d24b` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x4caee1...0c7c5d` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x4dd10e...374ab6` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x5506fa...876967` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x58ef82...738c37` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x5ca3d8...1201a8` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x5d9fe2...023380` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x6064b5...7939c4` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x6473c9...13a564` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x648aa4...edc5cb` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x6493f4...220054` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x662267...8a819b` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x66a4c2...a5e217` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x68f49a...b871a6` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x6ba43e...bfc59b` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x6c8019...fe7c46` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x717aa1...fcf396` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x760807...f3b26d` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x76ccda...688cf6` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x7765a7...d272b1` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x7db219...de42a8` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x7f4701...8c3b0f` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x84f7df...ed6b86` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x859997...40a923` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x8632a0...b6f709` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x87319e...ec1c48` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x87d82c...ad704c` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x88332d...438885` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x88c846...dc8749` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x895df5...dd87c4` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x8ae7ba...d4d33b` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x8e26b6...39fdb4` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x8f833d...c4499d` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x90c1fc...0c0424` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x91f205...f83380` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x93e069...8fd62e` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x9430d0...dcd55e` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x946d5d...6598e3` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x97bd39...505c07` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x9c6c26...e20dc7` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xa00571...6e7e80` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xa1d4ab...3fab8f` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xa5f574...555249` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xa7a567...bd23c5` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xabcbe4...6ec90f` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xad7482...906a55` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xb2f67e...9ed4b3` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xb59547...a1c0a5` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xb81b69...c4d7ad` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xb9f7da...1aa2c2` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xbb731a...37e6d4` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xbc166b...a656ec` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xbd9215...bf9b85` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xc1d22e...91d885` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xc3686c...b97803` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xc37b38...a96479` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xc8cbb7...37ebfc` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xc8e6bc...cb5bdb` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xc9bcbf...790369` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xca584c...702a46` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xcb4aa4...07e03f` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xcc6a91...89771e` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xccd7fe...45b7ce` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xcd16b2...5481ec` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xce625a...06fd1c` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xd4421f...d6c4d4` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xd4c4ae...f33905` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xd4d589...c95512` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xd70278...d72542` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xd7ecaf...e8d515` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xda8b68...47e033` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xdd8440...2b4243` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xde507d...80168a` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xdf119e...45814c` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xdf59b5...e5a277` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xe2c863...db5624` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xe34789...31c500` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xe430a4...4f38dc` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xe962d8...378d21` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xee7574...904151` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xeed95f...a4ebee` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xef0537...68ead6` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xf0c2f7...afc62e` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xf0ca23...cda8a4` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xf26bd9...675897` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xf34d3b...1fbe11` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xfe0f3c...965d0b` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xfe4f65...111df8` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [here](https://static.meson.fi/MesonFi-Audit-Report-R1-2022Feb.pdf) | SSLab at Georgia Institute of Technology | Audit | 2022-02 | stale | Direct | n/a | 0 | n/a |
| [here](https://static.meson.fi/MesonFi-Audit-Report-R2-2022Jul.pdf) | Trail of Bits | Audit | 2022-07 | stale | Direct | n/a | 0 | n/a |
| [here](https://static.meson.fi/MesonFi-Audit-Report-R3-2022Oct.pdf) | Trail of Bits | Audit | 2022-10 | stale | Direct | n/a | 0 | n/a |
| [here](https://static.meson.fi/MesonFi-Audit-Report-R4-2022Oct.pdf) | Trail of Bits | Audit | 2022-10 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| blast | [`0xbccda2...d3da07`](./contracts/blast-81457/0xbccda22db89aa35eff735c433ae0f2642dd3da07/) | DeadLp | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x01593b...a48c5f`](./contracts/blast-81457/0x01593b8aaadc5238f2f5c8597bc1402eb7a48c5f/) | FixSupplyToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 87 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 42 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [3198] here
- [3199] here
- [3200] here
- [3201] here

Fork inheritance lineage and inherited audits are included when available.
