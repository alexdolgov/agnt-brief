# Agentic Audit Brief: The Idols

## Project Overview

- Project: The Idols (`the-idols`)
- Website: [https://www.theidols.io](https://www.theidols.io)
- Lifecycle: active (Tier 0, 57.7% below peak)
- Generated: 2026-06-17T07:00:57.656Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: ethereum
- Contract surface: 8 unique implementations (8 raw deployments)
- DeFi Llama TVL: $4,487,977.67
- On-chain TVL (included contracts): $85,360,320.48
- TVL by chain: Ethereum $85,360,320.48

## Project Description

The Idols is an Ethereum NFT collection and membership community centered on 10,000 Idols NFTs, VirtueToken, and associated marketplace and rewards/staking mechanics. Current evidence supports NFT ownership, staked ETH/NFT rewards, VirtueToken, and protocol token/NFT holder rewards, but not a basket-backed reserve asset model.

### Architecture

All contracts are deployed by the same address and form a single integrated system. VirtueToken serves as the reserve asset, IdolMain manages idol NFTs, IdolMarketplace enables trading, and VirtueEthRewards/RewardsCollector handle staking and reward distribution.

## Contract Surface Quality

- Indexed contracts: 23; live-surface contracts included: 8 (8 live, 0 unknown).
- Excluded by liveness: 15 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 1/2 live.
- Detected codebases: none
- Dependencies extracted: 17; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/8 (0.0%)
- Verified + Unaudited implementations: 8
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 8
- Raw deployments: 8
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $85,360,320.48
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (8)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| VirtueToken | token | ethereum | n/a | [`0x9416ba...86b863`](./contracts/ethereum-1/0x9416ba76e88d873050a06e5956a3ebf10386b863/) | ⚠️ Unaudited |
| IdolGoldlist | unknown | ethereum | n/a | [`0x6dc988...986aa5`](./contracts/ethereum-1/0x6dc9886f694ba078f617c53d6330e001f6986aa5/) | ⚠️ Unaudited |
| IdolMain | unknown | ethereum | n/a | [`0x439cac...d17094`](./contracts/ethereum-1/0x439cac149b935ae1d726569800972e1669d17094/) | ⚠️ Unaudited |
| IdolMarketplace | unknown | ethereum | n/a | [`0x0dd5a3...ea29e7`](./contracts/ethereum-1/0x0dd5a35fe4cd65fe7928c7b923902b43d6ea29e7/) | ⚠️ Unaudited |
| Lido | unknown | ethereum | unit-32401 | [`0xae7ab9...d7fe84`](./contracts/ethereum-1/0xae7ab96520de3a18e5e111b5eaab095312d7fe84/) | ⚠️ Unaudited |
| VirtueZapperContract | adapter | ethereum | n/a | [`0x42455b...daa635`](./contracts/ethereum-1/0x42455baefaaaa545c1cf501329d21acec1daa635/) | ⚠️ Unaudited |
| VirtuousHourAirdrop | operational_periphery | ethereum | n/a | [`0x5fc37a...263f76`](./contracts/ethereum-1/0x5fc37a6ae6dd977bebbeb2831ead35bfb7263f76/) | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | n/a | [`0xdc2431...f67022`](./contracts/ethereum-1/0xdc24316b9ae028f1497c275eb9192a3ea0f67022/) | ⚠️ Unaudited |

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

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x9416ba...86b863`](./contracts/ethereum-1/0x9416ba76e88d873050a06e5956a3ebf10386b863/) | VirtueToken | token | $85,360,320.48 | Verified native implementation with $85,360,320.48 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6dc988...986aa5`](./contracts/ethereum-1/0x6dc9886f694ba078f617c53d6330e001f6986aa5/) | IdolGoldlist | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x439cac...d17094`](./contracts/ethereum-1/0x439cac149b935ae1d726569800972e1669d17094/) | IdolMain | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0dd5a3...ea29e7`](./contracts/ethereum-1/0x0dd5a35fe4cd65fe7928c7b923902b43d6ea29e7/) | IdolMarketplace | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x42455b...daa635`](./contracts/ethereum-1/0x42455baefaaaa545c1cf501329d21acec1daa635/) | VirtueZapperContract | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5fc37a...263f76`](./contracts/ethereum-1/0x5fc37a6ae6dd977bebbeb2831ead35bfb7263f76/) | VirtuousHourAirdrop | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 6 |
| upstream | 2 |
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
