# Agentic Audit Brief: IntentX

## Project Overview

- Project: IntentX (`intentx`)
- Website: [https://intentx.io](https://intentx.io)
- Lifecycle: active (Tier 0, 10.2% below peak)
- Generated: 2026-06-17T07:00:45.316Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: arbitrum, base, mantle
- Contract surface: 12 unique implementations (14 raw deployments)
- DeFi Llama TVL: $5,673,214.30
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

IntentX is a decentralized derivatives/perpetuals trading protocol that enables users to trade perpetual futures and other financial instruments on-chain. It uses intent-based architecture to support non-custodial trading, with related features such as staking, vesting, and fee rebates.

### Architecture

All contracts are deployed by a single deployer cluster and share the INTX token as the central economic asset. The SymmExecutor and PartyB contracts form the trading infrastructure, while staking, vesting, and incentive contracts manage token distribution and user rewards, all governed by a Gnosis Safe.

## Contract Surface Quality

- Indexed contracts: 145; live-surface contracts included: 14 (12 live, 2 unknown).
- Excluded by liveness: 57 inactive, 74 singleton, 0 uninitialized.
- Deployment units: 5/44 live.
- Detected codebases: none
- Dependencies extracted: 3; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/12 (0.0%)
- Verified + Unaudited implementations: 12
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 12
- Raw deployments: 14
- Audits discovered: 2
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 2 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (12)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ERC1967Proxy | proxy | base | unit-27422 | [`0xb49cae...3362be`](./contracts/base-8453/0xb49cae38c96f6425ce4a46e8220549c6a13362be/) | ⚠️ Unaudited |
| GnosisSafeProxy | governance | mantle | n/a | [`0xef23f5...afd7a2`](./contracts/mantle-5000/0xef23f554af7fa7421af1ff53f2b4838c05afd7a2/) | ⚠️ Unaudited |
| IntxOFT | unknown | base | n/a | [`0x7d2718...4fa342`](./contracts/base-8453/0x7d27187eb33a7b1d99258ff222633670f84fa342/) | ⚠️ Unaudited |
| IntxOFTAdapter | adapter | mantle | n/a | [`0x5d55e5...acc3c2`](./contracts/mantle-5000/0x5d55e52e32266459ecf09684f0abaab6c2acc3c2/) | ⚠️ Unaudited |
| LiquidationFacet | unknown | base | unit-27419 | [`0x91cf2d...2dbe43`](./contracts/base-8453/0x91cf2d8ed503ec52768999aa6d8dbea6e52dbe43/) | ⚠️ Unaudited |
| MultiAccount | core_logic | base | n/a | 3 deployments: base [`0xa78429...2926c7`](./contracts/base-8453/0xa784292b2dae2922303a712e039159fe452926c7/); base `0xbcf806...b46e84`; base `0xe33374...4ba7b0` | ⚠️ Unaudited |
| MultiAccount | core_logic | arbitrum | unit-27427 | [`0x141269...f20109`](./contracts/arbitrum-42161/0x141269e29a770644c34e05b127ab621511f20109/) | ⚠️ Unaudited |
| ProxyAdmin | governance | base | n/a | [`0xd0ecc7...5458e7`](./contracts/base-8453/0xd0ecc75816cb01b3e904766391cb34214a5458e7/) | ⚠️ Unaudited |
| SymmioFeeDistributor | operational_periphery | mantle | unit-27401 | [`0xa2c779...b29c19`](./contracts/mantle-5000/0xa2c779f0950aa771663cf1b0b8ce64d5b3b29c19/) | ⚠️ Unaudited |
| SymmioFeeDistributor | operational_periphery | base | unit-27409 | [`0x127965...1d4f99`](./contracts/base-8453/0x1279655feed886f44958733bbb6b26252d1d4f99/) | ⚠️ Unaudited |
| SymmioFeeDistributor | operational_periphery | arbitrum | unit-27426 | [`0x0532c5...e6fb22`](./contracts/arbitrum-42161/0x0532c5008a9214e669c41ce782c0e64095e6fb22/) | ⚠️ Unaudited |
| SymmioPartyB | unknown | base | unit-27420 | [`0x9206d9...a23c59`](./contracts/base-8453/0x9206d9d8f7f1b212a4183827d20de32af3a23c59/) | ⚠️ Unaudited |

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
| [{% embed url="<>" %}](https://audits.sherlock.xyz/contests/85) | Sherlock | Contest | n/a | unknown | Direct | n/a | 0 | n/a |
| [{% embed url="<>" %}](https://certificate.quantstamp.com/full/intent-x/a195e62f-30b6-4219-b9e5-42af8a9e2fd5/index.html) | Quantstamp | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0x7d2718...4fa342`](./contracts/base-8453/0x7d27187eb33a7b1d99258ff222633670f84fa342/) | IntxOFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x91cf2d...2dbe43`](./contracts/base-8453/0x91cf2d8ed503ec52768999aa6d8dbea6e52dbe43/) | LiquidationFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xa78429...2926c7`](./contracts/base-8453/0xa784292b2dae2922303a712e039159fe452926c7/) | MultiAccount | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 1 |
| standard_library | 7 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [2415] {% embed url="<>" %}
- [2416] {% embed url="<>" %}

Fork inheritance lineage and inherited audits are included when available.
