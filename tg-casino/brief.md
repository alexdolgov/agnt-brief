# Agentic Audit Brief: TG Casino

⚠️ Lifecycle status: UNKNOWN - TVL trajectory indicates non-active lifecycle.

## Project Overview

- Project: TG Casino (`tg-casino`)
- Website: [https://token.tg.casino/staking](https://token.tg.casino/staking)
- Lifecycle: unknown (Tier 0, TVL trajectory)
- Generated: 2026-05-25T03:50:45.695Z
- Pipeline run: v2-pipeline-2026-05-22-eff36e-2ebb
- Chains: ethereum
- Contract surface: 15 unique implementations (20 raw deployments)
- DeFi Llama TVL: $1,184,802.11
- On-chain TVL (included contracts): $13,353,575.52
- TVL by chain: Ethereum $13,353,575.52

## Project Description

TG Casino is a decentralized gambling and staking platform on Ethereum, centered around its native TGC token. Users can stake tokens to earn rewards and participate in governance, while the protocol facilitates casino-style games of chance.

### Architecture

The TGC token is the central asset used across staking contracts. StakingManagerV5 and MultiStakingManagerV2 both interact with TGCToken, and are accessed via upgradeable proxies that share the same deployer cluster.

## Audit Coverage Summary

- Verified implementations audited: 1/15 (6.7%)
- Verified + Unaudited implementations: 14
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 15
- Raw deployments: 20
- Audits discovered: 1
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-09 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [unknown]. ASD of n/a represents exposure in a protocol with unknown activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Coinsult | Tier 2 | 1 | 6.7% | 2023-09 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| TGCToken | token | ethereum | 2 deployments: ethereum [`0x14bc78...b547b0`](./contracts/ethereum-1/0x14bc78f0e6b9854da2a92f43a0526b31ceb547b0/); ethereum `0x25b4f5...7cb7cf` | ✅ Audited |

### ⚠️ Verified + Unaudited (14)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| MultiStakingManagerV1 | governance | ethereum | [`0x8a876a...c8bae7`](./contracts/ethereum-1/0x8a876a89af8b0376b1fb0183a89728608bc8bae7/) | ⚠️ Unaudited |
| MultiStakingManagerV2 | governance | ethereum | 2 deployments: ethereum [`0x091656...409b47`](./contracts/ethereum-1/0x0916568854fc53b720186052d8013d62a0409b47/); ethereum `0x176bd8...b06732` | ⚠️ Unaudited |
| MultiStakingManagerV3 | governance | ethereum | [`0xca74e3...c36e80`](./contracts/ethereum-1/0xca74e32d5d5b78ccc0fa13e407872874dbc36e80/) | ⚠️ Unaudited |
| PresaleV1 | unknown | ethereum | [`0xa87e79...73009a`](./contracts/ethereum-1/0xa87e79652814a0239bf752d4d7be70f61b73009a/) | ⚠️ Unaudited |
| PresaleV2 | unknown | ethereum | [`0xa1f35d...0d47c4`](./contracts/ethereum-1/0xa1f35da94d3c25c1c130092122db690ff10d47c4/) | ⚠️ Unaudited |
| PresaleV3 | unknown | ethereum | [`0x665fa1...6643fd`](./contracts/ethereum-1/0x665fa1b41c5102ee62b6c23818c2b4f1316643fd/) | ⚠️ Unaudited |
| PresaleV4 | unknown | ethereum | 2 deployments: ethereum [`0x39fd3e...487f92`](./contracts/ethereum-1/0x39fd3e106fed3c80192d1849e13d900f45487f92/); ethereum `0x5188e2...77cc4a` | ⚠️ Unaudited |
| ProxyAdmin | governance | ethereum | [`0x34813f...a7274e`](./contracts/ethereum-1/0x34813f4bc5e2a14c8fffb10bd43c59fa05a7274e/) | ⚠️ Unaudited |
| StakingManager | governance | ethereum | [`0x9307d5...b692bb`](./contracts/ethereum-1/0x9307d50caae1fa22a08b3352b493797a7ab692bb/) | ⚠️ Unaudited |
| StakingManagerV1 | governance | ethereum | [`0x21d6d6...540ae8`](./contracts/ethereum-1/0x21d6d6d6ffd8b68e94bf5159bb029635af540ae8/) | ⚠️ Unaudited |
| StakingManagerV2 | governance | ethereum | 2 deployments: ethereum [`0xb5b77c...bf1a0e`](./contracts/ethereum-1/0xb5b77c895bf3c4c060da327fbc953e7fbdbf1a0e/); ethereum `0xfad6ef...f77b42` | ⚠️ Unaudited |
| StakingManagerV3 | governance | ethereum | [`0xc2db0d...fdd262`](./contracts/ethereum-1/0xc2db0df8ba54715ff73691c8c934120168fdd262/) | ⚠️ Unaudited |
| StakingManagerV4 | governance | ethereum | [`0x700169...758cc8`](./contracts/ethereum-1/0x700169c3408f10e98c34ac1902e2b6ae89758cc8/) | ⚠️ Unaudited |
| StakingManagerV5 | governance | ethereum | 2 deployments: ethereum [`0x258c31...db764e`](./contracts/ethereum-1/0x258c3104388f8cd72c8b4336fc536033e6db764e/); ethereum `0x4bb67f...694085` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (0)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

- None

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Audit](https://github.com/Coinsult/solidity/blob/main/Coinsult_TG.Casino_0x25...b7cf_Audit.pdf) | Coinsult | Audit | 2023-09 | stale | Direct | contract_name | 2 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x8a876a...c8bae7`](./contracts/ethereum-1/0x8a876a89af8b0376b1fb0183a89728608bc8bae7/) | MultiStakingManagerV1 | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xca74e3...c36e80`](./contracts/ethereum-1/0xca74e32d5d5b78ccc0fa13e407872874dbc36e80/) | MultiStakingManagerV3 | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa87e79...73009a`](./contracts/ethereum-1/0xa87e79652814a0239bf752d4d7be70f61b73009a/) | PresaleV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa1f35d...0d47c4`](./contracts/ethereum-1/0xa1f35da94d3c25c1c130092122db690ff10d47c4/) | PresaleV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x665fa1...6643fd`](./contracts/ethereum-1/0x665fa1b41c5102ee62b6c23818c2b4f1316643fd/) | PresaleV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9307d5...b692bb`](./contracts/ethereum-1/0x9307d50caae1fa22a08b3352b493797a7ab692bb/) | StakingManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x21d6d6...540ae8`](./contracts/ethereum-1/0x21d6d6d6ffd8b68e94bf5159bb029635af540ae8/) | StakingManagerV1 | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb5b77c...bf1a0e`](./contracts/ethereum-1/0xb5b77c895bf3c4c060da327fbc953e7fbdbf1a0e/) | StakingManagerV2 | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc2db0d...fdd262`](./contracts/ethereum-1/0xc2db0df8ba54715ff73691c8c934120168fdd262/) | StakingManagerV3 | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x700169...758cc8`](./contracts/ethereum-1/0x700169c3408f10e98c34ac1902e2b6ae89758cc8/) | StakingManagerV4 | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 11 |
| upstream | 0 |
| standard_library | 4 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=2

Fork inheritance lineage and inherited audits are included when available.
