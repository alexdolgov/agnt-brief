# Agentic Audit Brief: Parasail

⚠️ Lifecycle status: DECLINING - TVL dropped 52.2% over 90 days

## Project Overview

- Project: Parasail (`parasail`)
- Website: [https://www.parasail.network/](https://www.parasail.network/)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-13T22:59:08.839Z
- Pipeline run: v2-pipeline-2026-06-13-e4a349-ab91
- Chains: arbitrum
- Contract surface: 41 unique implementations (43 raw deployments)
- DeFi Llama TVL: $2,692,575.52
- On-chain TVL (included contracts): $17,207,293.45
- TVL by chain: Arbitrum $17,207,293.45

## Project Description

Parasail is a DePIN/restaking incentive interface tracked across multiple networks, including Fluence, Arbitrum, Swan, and Filecoin, with TVL primarily on Filecoin rather than Arbitrum. It should not be described as an Arbitrum-only restaking protocol.

### Architecture

The protocol consists of a single product family where the ERC1967Proxy serves as the upgradeable entry point, delegating to implementation contracts, while the InterchainToken facilitates cross-chain asset transfers.

## Audit Coverage Summary

- Verified implementations audited: 0/2 (0.0%)
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 39
- Unique implementations: 41
- Raw deployments: 43
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $17,207,293.45
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $17,207,293.45 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| InterchainToken | token | arbitrum | [`0xc87b37...9d056c`](./contracts/arbitrum-42161/0xc87b37a581ec3257b734886d9d3a581f5a9d056c/) | ⚠️ Unaudited |
| ERC1967Proxy | proxy | arbitrum | 3 deployments: arbitrum [`0x2032f1...a5e511`](./contracts/arbitrum-42161/0x2032f104069cc3023c0a0b6874f8a5fb21a5e511/); arbitrum `0x3812fa...603dbc`; arbitrum `0xc5229e...057a09` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (39)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Proxy (impl: 0x885266b5ab2fea41dd51ce7beeed1d743410085e) | proxy | arbitrum | `0xc7a6aa...5a5fa3` | ❓ Unverified |
| Proxy (impl: 0xaa5d9edfd680297533a14e121b70ae9fadd77831) | proxy | arbitrum | `0x0ec4dc...010caa` | ❓ Unverified |
| Proxy (impl: 0xc4f869b9040ce060d3f3204abd579b00461a4e45) | proxy | arbitrum | `0x369d4b...5df44e` | ❓ Unverified |
| Proxy (impl: 0xcbe7efd39be37699e2377ddab28b627aa321d209) | proxy | arbitrum | `0x19eb5d...81ee02` | ❓ Unverified |
| Proxy (impl: 0xd9a340357f76e756217c8b7bafe018e04347e74c) | proxy | arbitrum | `0xe87792...39b2a4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x0fafc1...1bbbfb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x12b785...71855a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x16e7d8...fe0362` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x174fcc...574818` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x1e8895...beca03` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x22dbba...fc032a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x277aeb...40bce0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x28a141...3d2582` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x2ab36b...852b25` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x304ece...d181ff` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x3d7dde...963dfe` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x43ba49...9272df` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x445895...662909` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x4e7088...c18e39` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x618d55...0f31dd` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x7c588e...158127` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x885266...10085e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x8eebfa...786ef3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x901a72...5b336e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x906be3...270319` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x92a159...1fb2fe` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xaa5d9e...d77831` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xaa82e4...64c86f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xc4f869...1a4e45` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xc537e6...75f398` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xcbe7ef...21d209` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xce0a65...888969` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xd6e02f...35efc6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xd76ac8...bd66b9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xd9694e...59f7e7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xd99ab1...203dad` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xd9a340...47e74c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xeae9f8...2f689c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xf5b42a...301f47` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0xc87b37...9d056c`](./contracts/arbitrum-42161/0xc87b37a581ec3257b734886d9d3a581f5a9d056c/) | InterchainToken | token | $17,207,293.45 | Verified native implementation with $17,207,293.45 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 22 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 18 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
