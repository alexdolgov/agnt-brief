# Agentic Audit Brief: The Idols

## Project Overview

- Project: The Idols (`the-idols`)
- Website: [https://www.theidols.io](https://www.theidols.io)
- Lifecycle: active (Tier 0, 57.7% below peak)
- Generated: 2026-06-10T20:59:17.477Z
- Pipeline run: correction-skeletal-description-fix-all
- Chains: ethereum
- Contract surface: 17 unique implementations (20 raw deployments)
- DeFi Llama TVL: $5,665,507.10
- On-chain TVL (included contracts): $85,360,320.48
- TVL by chain: Ethereum $85,360,320.48

## Project Description

The Idols is an Ethereum NFT collection and membership community centered on 10,000 Idols NFTs, VirtueToken, and associated marketplace and rewards/staking mechanics. Current evidence supports NFT ownership, staked ETH/NFT rewards, VirtueToken, and protocol token/NFT holder rewards, but not a basket-backed reserve asset model.

### Architecture

All contracts are deployed by the same address and form a single integrated system. VirtueToken serves as the reserve asset, IdolMain manages idol NFTs, IdolMarketplace enables trading, and VirtueEthRewards/RewardsCollector handle staking and reward distribution.

## Audit Coverage Summary

- Verified implementations audited: 0/13 (0.0%)
- Verified + Unaudited implementations: 13
- Verified by bytecode match: 0
- Unverified implementations: 4
- Unique implementations: 17
- Raw deployments: 20
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

### ⚠️ Verified + Unaudited (13)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| VirtueToken | token | ethereum | [`0x9416ba...86b863`](./contracts/ethereum-1/0x9416ba76e88d873050a06e5956a3ebf10386b863/) | ⚠️ Unaudited |
| EthClaimContract | unknown | ethereum | [`0x6e8886...69f19a`](./contracts/ethereum-1/0x6e88861a1ff98f713753b9506638c7c49269f19a/) | ⚠️ Unaudited |
| IdolGoldlist | unknown | ethereum | [`0x6dc988...986aa5`](./contracts/ethereum-1/0x6dc9886f694ba078f617c53d6330e001f6986aa5/) | ⚠️ Unaudited |
| IdolMain | unknown | ethereum | [`0x439cac...d17094`](./contracts/ethereum-1/0x439cac149b935ae1d726569800972e1669d17094/) | ⚠️ Unaudited |
| IdolMarketplace | unknown | ethereum | 4 deployments: ethereum [`0x0dd5a3...ea29e7`](./contracts/ethereum-1/0x0dd5a35fe4cd65fe7928c7b923902b43d6ea29e7/); ethereum `0x4a0ced...b76652`; ethereum `0x4ce4f4...db3bbf`; ethereum `0x523fbd...2df5e6` | ⚠️ Unaudited |
| IdolMintContract | unknown | ethereum | [`0x7b4b02...3cdc5e`](./contracts/ethereum-1/0x7b4b02372d8e54c1c0454d97f01d85ef203cdc5e/) | ⚠️ Unaudited |
| MarketplaceRefundContract | unknown | ethereum | [`0x87d2ed...8b8c8b`](./contracts/ethereum-1/0x87d2edba911c7e2e13580af897ba77e47e8b8c8b/) | ⚠️ Unaudited |
| OfferingRefundContract | unknown | ethereum | [`0x2e94c0...78e8ad`](./contracts/ethereum-1/0x2e94c074d7360dccf0d7b2891d867b734978e8ad/) | ⚠️ Unaudited |
| RewardsCollector | unknown | ethereum | [`0x7d624c...61256a`](./contracts/ethereum-1/0x7d624c34e475a2eca893d0c118527b6e2061256a/) | ⚠️ Unaudited |
| VirtueClaimContract | unknown | ethereum | [`0x5a5e20...1cd6c4`](./contracts/ethereum-1/0x5a5e20e29d000762bf33e29c0a2091d78f1cd6c4/) | ⚠️ Unaudited |
| VirtueEthRewards | unknown | ethereum | [`0xc73b93...9b7baf`](./contracts/ethereum-1/0xc73b93885f10c5eaf8cb126495bbd14d3b9b7baf/) | ⚠️ Unaudited |
| VirtueZapperContract | adapter | ethereum | [`0x42455b...daa635`](./contracts/ethereum-1/0x42455baefaaaa545c1cf501329d21acec1daa635/) | ⚠️ Unaudited |
| VirtuousHourAirdrop | operational_periphery | ethereum | [`0x5fc37a...263f76`](./contracts/ethereum-1/0x5fc37a6ae6dd977bebbeb2831ead35bfb7263f76/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (4)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x17d7e5...9b4eaa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x734324...a7c677` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x815c5d...a7741e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd272d2...47be2c` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x9416ba...86b863`](./contracts/ethereum-1/0x9416ba76e88d873050a06e5956a3ebf10386b863/) | VirtueToken | token | $85,360,320.48 | Verified native implementation with $85,360,320.48 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6e8886...69f19a`](./contracts/ethereum-1/0x6e88861a1ff98f713753b9506638c7c49269f19a/) | EthClaimContract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6dc988...986aa5`](./contracts/ethereum-1/0x6dc9886f694ba078f617c53d6330e001f6986aa5/) | IdolGoldlist | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x439cac...d17094`](./contracts/ethereum-1/0x439cac149b935ae1d726569800972e1669d17094/) | IdolMain | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0dd5a3...ea29e7`](./contracts/ethereum-1/0x0dd5a35fe4cd65fe7928c7b923902b43d6ea29e7/) | IdolMarketplace | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7b4b02...3cdc5e`](./contracts/ethereum-1/0x7b4b02372d8e54c1c0454d97f01d85ef203cdc5e/) | IdolMintContract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x87d2ed...8b8c8b`](./contracts/ethereum-1/0x87d2edba911c7e2e13580af897ba77e47e8b8c8b/) | MarketplaceRefundContract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2e94c0...78e8ad`](./contracts/ethereum-1/0x2e94c074d7360dccf0d7b2891d867b734978e8ad/) | OfferingRefundContract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7d624c...61256a`](./contracts/ethereum-1/0x7d624c34e475a2eca893d0c118527b6e2061256a/) | RewardsCollector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5a5e20...1cd6c4`](./contracts/ethereum-1/0x5a5e20e29d000762bf33e29c0a2091d78f1cd6c4/) | VirtueClaimContract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc73b93...9b7baf`](./contracts/ethereum-1/0xc73b93885f10c5eaf8cb126495bbd14d3b9b7baf/) | VirtueEthRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x42455b...daa635`](./contracts/ethereum-1/0x42455baefaaaa545c1cf501329d21acec1daa635/) | VirtueZapperContract | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5fc37a...263f76`](./contracts/ethereum-1/0x5fc37a6ae6dd977bebbeb2831ead35bfb7263f76/) | VirtuousHourAirdrop | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 17 |
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
