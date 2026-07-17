# Agentic Audit Brief: Neutra Finance

## Project Overview

- Project: Neutra Finance (`neutra-finance`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:38.697Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d094
- Chains: arbitrum
- Contract surface: 25 unique implementations (25 raw deployments)
- DeFi Llama TVL: $3,214.96
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield. Structurally: 37 project-authored contract(s) across 1 chain(s); 7 ERC20 tokens, 1 ERC1155 multi-token; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 5 common project-authored base contract(s) (governable, controllable, mintableerc20). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 80; live-surface contracts included: 25 (2 live, 23 unknown).
- Excluded by liveness: 55 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/2 (0.0%)
- Deployed-live implementations: 2 of 25 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/10
- Verified + Unaudited implementations: 10
- Verified by bytecode match: 0
- Unverified implementations: 15
- Unique implementations: 25
- Raw deployments: 25
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-01 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (10)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| EsNEU | unknown | arbitrum | n/a | [`0x22f4730e21e40dc751c08826d93010a64185e53f`](./contracts/arbitrum-42161/0x22f4730e21e40dc751c08826d93010a64185e53f/) | ⚠️ Unaudited |
| NameWrapper | unknown | arbitrum | n/a | [`0xe5abb3700484998a6ee280cc615656b7ce52d62d`](./contracts/arbitrum-42161/0xe5abb3700484998a6ee280cc615656b7ce52d62d/) | ⚠️ Unaudited |
| NEU | unknown | arbitrum | n/a | [`0x6609be1547166d1c4605f3a243fdcff467e600c3`](./contracts/arbitrum-42161/0x6609be1547166d1c4605f3a243fdcff467e600c3/) | ⚠️ Unaudited |
| OwnedResolver | unknown | arbitrum | n/a | [`0x62a8fb652b23e7304ba33ecfaf437b20aee916cb`](./contracts/arbitrum-42161/0x62a8fb652b23e7304ba33ecfaf437b20aee916cb/) | ⚠️ Unaudited |
| PublicResolver | unknown | arbitrum | n/a | [`0x5e43ce30f8e8027f2c24f1cc101f225cbb1276cf`](./contracts/arbitrum-42161/0x5e43ce30f8e8027f2c24f1cc101f225cbb1276cf/) | ⚠️ Unaudited |
| ReverseRegistrar | unknown | arbitrum | n/a | [`0x693458a6f3906ad10d666f40e9dd787eac50a304`](./contracts/arbitrum-42161/0x693458a6f3906ad10d666f40e9dd787eac50a304/) | ⚠️ Unaudited |
| RNSRegistry | unknown | arbitrum | n/a | [`0x39302dfb1a343610cfe27228fd3e90ec72178e75`](./contracts/arbitrum-42161/0x39302dfb1a343610cfe27228fd3e90ec72178e75/) | ⚠️ Unaudited |
| Root | unknown | arbitrum | n/a | [`0x175a1a3d568a526e7ffd8374154804c6d7e73b61`](./contracts/arbitrum-42161/0x175a1a3d568a526e7ffd8374154804c6d7e73b61/) | ⚠️ Unaudited |
| StaticMetadataService | unknown | arbitrum | n/a | [`0xfa7b12c4f18486fcc5e8354135d20e348ff7b1f5`](./contracts/arbitrum-42161/0xfa7b12c4f18486fcc5e8354135d20e348ff7b1f5/) | ⚠️ Unaudited |
| UniversalResolver | unknown | arbitrum | n/a | [`0xf8ffeb5007646509c0742ee49c15839946d96acd`](./contracts/arbitrum-42161/0xf8ffeb5007646509c0742ee49c15839946d96acd/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (15)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | arbitrum | n/a | `0x031ef5acd047b49099cf895cdae42d974f0531cb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0945ff9d442066e7432b08c6010f9f460aa6d5a8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x27721c490a4410f2dd0c66e62682bb48f9b12350` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2ab7f7002f009f7b2c84c5e73f84e5dbd9f2ebfd` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2bd1c64df6ce8c7575fdc78769030d62c097351f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x720726ea4a789621f8257fa6c1e88205babc915e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7b7e3eccf88c144ddef9f35c5d84de8d7429e514` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8b6013185451d5c62a3de4e20390394488435781` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa557f8cea249c315b7b5556dc00c58b58d3f8b40` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xab4ccb43fcdc942d5370c8e73555980b1df73081` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xde751c92fb38183953614e26a32af99649a4e5af` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xea2b63e637f3acc72226845107021166d27b08b9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xefb6a93df500b0fd6eaf223e5ff5e18b726d94f5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf5e12bf38ba20f19b80f627da7a496aa27d05c48` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xfa99f306f9fb44e111c8e3d800a179c79bb308ad` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [v2_SmartContract_Audit_Solidproof_NeutraFinance.pdf](https://github.com/NeutraFinance/neutra-gmx-contracts/blob/master/audits/solidproof/v2_SmartContract_Audit_Solidproof_NeutraFinance.pdf) | unknown | Audit | 2023-01 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0x22f4730e21e40dc751c08826d93010a64185e53f`](./contracts/arbitrum-42161/0x22f4730e21e40dc751c08826d93010a64185e53f/) | EsNEU | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xe5abb3700484998a6ee280cc615656b7ce52d62d`](./contracts/arbitrum-42161/0xe5abb3700484998a6ee280cc615656b7ce52d62d/) | NameWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x6609be1547166d1c4605f3a243fdcff467e600c3`](./contracts/arbitrum-42161/0x6609be1547166d1c4605f3a243fdcff467e600c3/) | NEU | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x62a8fb652b23e7304ba33ecfaf437b20aee916cb`](./contracts/arbitrum-42161/0x62a8fb652b23e7304ba33ecfaf437b20aee916cb/) | OwnedResolver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x5e43ce30f8e8027f2c24f1cc101f225cbb1276cf`](./contracts/arbitrum-42161/0x5e43ce30f8e8027f2c24f1cc101f225cbb1276cf/) | PublicResolver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x693458a6f3906ad10d666f40e9dd787eac50a304`](./contracts/arbitrum-42161/0x693458a6f3906ad10d666f40e9dd787eac50a304/) | ReverseRegistrar | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x39302dfb1a343610cfe27228fd3e90ec72178e75`](./contracts/arbitrum-42161/0x39302dfb1a343610cfe27228fd3e90ec72178e75/) | RNSRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x175a1a3d568a526e7ffd8374154804c6d7e73b61`](./contracts/arbitrum-42161/0x175a1a3d568a526e7ffd8374154804c6d7e73b61/) | Root | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xfa7b12c4f18486fcc5e8354135d20e348ff7b1f5`](./contracts/arbitrum-42161/0xfa7b12c4f18486fcc5e8354135d20e348ff7b1f5/) | StaticMetadataService | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xf8ffeb5007646509c0742ee49c15839946d96acd`](./contracts/arbitrum-42161/0xf8ffeb5007646509c0742ee49c15839946d96acd/) | UniversalResolver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 10 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 15 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [13557] v2_SmartContract_Audit_Solidproof_NeutraFinance.pdf

Fork inheritance lineage and inherited audits are included when available.
