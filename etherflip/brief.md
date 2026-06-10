# Agentic Audit Brief: EtherFlip

## Project Overview

- Project: EtherFlip (`etherflip`)
- Lifecycle: active (Tier 0, 56.3% below peak)
- Generated: 2026-06-10T23:09:04.463Z
- Pipeline run: v2-pipeline-2026-06-10-5b3b54-22cc
- Chains: ethereum
- Contract surface: 7 unique implementations (12 raw deployments)
- DeFi Llama TVL: $1,577,166.36
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

EtherFlip is an Ethereum Luck Games / Dice-Farm DeFi application centered on on-chain games of chance. Its tracked contract surface should not be described as a single-core-contract architecture; it includes multiple distinct EtherFlip game variants as well as token, raffle, and related contracts.

### Architecture

The protocol consists of a single product family with one core contract, indicating a simple, self-contained architecture without shared infrastructure or dependencies.

## Audit Coverage Summary

- Verified implementations audited: 0/6 (0.0%)
- Verified + Unaudited implementations: 6
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 7
- Raw deployments: 12
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (6)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| EtherFlip | unknown | ethereum | 3 deployments: ethereum [`0x3023d5...1f221e`](./contracts/ethereum-1/0x3023d5ee05ebee74b61f940433b7783eac1f221e/); ethereum `0xe5a04d...3039df`; ethereum `0xffc08d...042f8c` | ⚠️ Unaudited |
| EtherFlipGold | unknown | ethereum | [`0x48d8f2...4e9b7f`](./contracts/ethereum-1/0x48d8f22d45e40f34cb7c10799f31246f134e9b7f/) | ⚠️ Unaudited |
| EtherFlipLite | unknown | ethereum | [`0x3c9680...15e2fa`](./contracts/ethereum-1/0x3c9680f1ef75693f22de279c1fb35067fc15e2fa/) | ⚠️ Unaudited |
| EtherFlipRaffleToken | token | ethereum | 4 deployments: ethereum [`0x294800...274b69`](./contracts/ethereum-1/0x2948002e609e5b5e286b91f1d47bb924c4274b69/); ethereum `0x72af5c...6c938d`; ethereum `0x8350ca...1706fc`; ethereum `0xa5d894...00ce94` | ⚠️ Unaudited |
| FlipToken | token | ethereum | [`0xc997d0...66c3e5`](./contracts/ethereum-1/0xc997d07b0bc607b6d1bcb6fb9d4a5579c466c3e5/) | ⚠️ Unaudited |
| MillionDollarToken | token | ethereum | [`0x37f014...e42584`](./contracts/ethereum-1/0x37f014c64d186eaf879c0033846b51924ce42584/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x619683...4667ac` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x3023d5...1f221e`](./contracts/ethereum-1/0x3023d5ee05ebee74b61f940433b7783eac1f221e/) | EtherFlip | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x48d8f2...4e9b7f`](./contracts/ethereum-1/0x48d8f22d45e40f34cb7c10799f31246f134e9b7f/) | EtherFlipGold | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3c9680...15e2fa`](./contracts/ethereum-1/0x3c9680f1ef75693f22de279c1fb35067fc15e2fa/) | EtherFlipLite | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x294800...274b69`](./contracts/ethereum-1/0x2948002e609e5b5e286b91f1d47bb924c4274b69/) | EtherFlipRaffleToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc997d0...66c3e5`](./contracts/ethereum-1/0xc997d07b0bc607b6d1bcb6fb9d4a5579c466c3e5/) | FlipToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x37f014...e42584`](./contracts/ethereum-1/0x37f014c64d186eaf879c0033846b51924ce42584/) | MillionDollarToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 7 |
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
