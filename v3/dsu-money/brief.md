# Agentic Audit Brief: DSU Money

## Export Authority

- Production state: **published scope**
- Raw selected rows: 3 across 1 audit(s)
- Eligible audit results: 2 (1 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: DSU Money (`dsu-money`)
- Website: [https://app.dsu.money](https://app.dsu.money)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, ethereum, optimism
- Contract surface: 107 unique implementations (107 raw deployments)
- Coverage basis: 3/17 confirmed own live verified implementations (17.6%); conservative 17.6% with 0 needs-review implementation(s)
- DeFi Llama TVL: $469,285.43
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for DSU Money. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 17 contract row(s) across arbitrum, base, ethereum, optimism. Structural roles: 10 core, 3 supporting, 2 infra, 2 unclassified. 3 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 17
- Structural roles: core (10), supporting (3), infra (2), unclassified (2)
- Contract kinds: contract (16), unclassified (1)
- Detected standards: ownable (6), erc20 (4), erc1967proxy (3), erc20permit (2), ownable2step (1), pausable (1)
- Frameworks: openzeppelin (13), uniswap-v2 (4)
- Upgradeable-pattern rows: 3

## Fork Analysis

1 of 27 contracts are derived from known codebases. 26 contracts have no detected origin.

### Forked Contracts

**Incentivizer** (`0x0d49c416103cbd276d9c3cd96710db264e3a0c27`, chain 1)
Origin: perennial (`0x5b495f170bfcba51db96ff16ba8bc4686cfa92b4`)
Containment: 94.7% - 18 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original):
- claimFor(address,IProduct,uint256[])

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x52c64b8998eb7c80b6f526e99e29abdcc86b841b`, chain 1)
- UnnamedContract (`0x605d26fbd5be761089281d5cec2ce86eea667109`, chain 1)
- UnnamedContract (`0xc6e09feb984acab2c956c9af56b9b3729a1bf3c8`, chain 1)
- UnnamedContract (`0xd05ace63789ccb35b9ce71d01e4d632a0486da4b`, chain 1)
- UnnamedContract (`0xd353a618abd6b39e8c334291c74a52ceb19b18fd`, chain 1)
- UnnamedContract (`0x5fa881826ad000d010977645450292701bc2f56d`, chain 8453)
- UnnamedContract (`0x7b4adf64b0d60ff97d672e473420203d52562a84`, chain 8453)
- UnnamedContract (`0x0d49c416103cbd276d9c3cd96710db264e3a0c27`, chain 42161)
- UnnamedContract (`0x52c64b8998eb7c80b6f526e99e29abdcc86b841b`, chain 42161)
- UnnamedContract (`0xaf88d065e77c8cc2239327c5edb3a432268e5831`, chain 42161)
- Dollar (`0x36f3fd68e7325a35eb768f1aedaae9ea0689d723`, chain 1)
- DSU (`0x52c64b8998eb7c80b6f526e99e29abdcc86b841b`, chain 10)
- FiatTokenProxy (`0x833589fcd6edb6e08f4c7c32d4f71b54bda02913`, chain 8453)
- Funder (`0x87f6b212a25677b9b12e7fcfa8c08fb3df25bc4c`, chain 1)
- GovernorAlpha (`0x0599f087df7900a1f806c5d149387ee6e0a8bfcb`, chain 1)
- Implementation (`0x443d2f2755db5942601fa062cc248aaa153313d3`, chain 1)
- MigrationReserve (`0x0d49c416103cbd276d9c3cd96710db264e3a0c27`, chain 10)
- Migrator (`0xc61d12896421613b30d56f85c093cdda43ab2ce7`, chain 1)
- OVMFiatToken (`0x7f5c764cbc14f9669b88837ca1490cca17c31607`, chain 10)
- ProxyRoot (`0x4d2a5e3b7831156f62c8df47604e321cdaf35fec`, chain 1)
- Registry (`0xc5285ee6d5c9adf4e04f5ccb47d0501ae638c7a9`, chain 1)
- ReserveImpl (`0x42340c735e4b6018661183dcd5b267f3bb5f9ee4`, chain 1)
- Stake (`0x24ae124c4cc33d6791f8e8b63520ed7107ac8b3e`, chain 1)
- Timelock (`0x1bba92f379375387bf8f927058da14d47464cb7a`, chain 1)
- UniswapV2Pair (`0xcadd30b39f01cfdfb848174b19bbb5b1b7486159`, chain 1)
- Vyper_contract (`0x6ec80df362d7042c50d4469bcfbc174c9dd9109a`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 17; live-surface rows included: 17 (17 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 27/28 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 3/17 (17.6%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 27 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 80 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 3 standard proxy/library)
- Proxy deployments represented within implementation groups: 6
- Confirmed-live implementations: 27 of 107 unique; 80 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 3/97
- Verified + Unaudited implementations: 94
- Verified by bytecode match: 0
- Unverified implementations: 10
- Unique implementations: 107
- Raw deployments: 107
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-04 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 3 match-unverified
- Tier 1 coverage: 17.6% (OpenZeppelin)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| OpenZeppelin | Tier 1 | 3 | 3.1% | 2021-04 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Dollar | unknown | project_anchor | own_supporting | 0 | ethereum | unit-384075 | `0x36f3fd68e7325a35eb768f1aedaae9ea0689d723` | ✅ Audited |
| GovernorAlpha | unknown | project_anchor | own_supporting | 0 | ethereum | unit-384071 | `0x0599f087df7900a1f806c5d149387ee6e0a8bfcb` | ✅ Audited |
| Stake | unknown | project_anchor | own_supporting | 0 | ethereum | unit-384074 | `0x24ae124c4cc33d6791f8e8b63520ed7107ac8b3e` | ✅ Audited |

### ⚠️ Verified + Unaudited (94)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Account | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xca7fb0afb7622a982a70c5efd2aa387257a0e826` | ⚠️ Unaudited |
| BalancedVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x477fb965d22b82b02c3fe853cf33bc1c5708385e` | ⚠️ Unaudited |
| BatchKeeper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5a8557449c05fa515fea099178d42b9415b9f118` | ⚠️ Unaudited |
| CentimilliPowerTwo | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x33117f64e6faca60605988f0ffdbd11074116d1c` | ⚠️ Unaudited |
| ChainlinkFeedOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdc518208c11159844188f647413a427cbd70a3b6` | ⚠️ Unaudited |
| CheckpointLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x609f9888e9c1691abe1b2ce1a228f193c093a1d2` | ⚠️ Unaudited |
| CheckpointStorageLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x074fb1073b24f85b52337b7dfea2d2cb5b9406d9` | ⚠️ Unaudited |
| Claimer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa9c962be526ecbde40259c58a48e2362a96851f5` | ⚠️ Unaudited |
| Collateral | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b99224dad73d7d84b7c74e9161bbd0d01a2a15b` | ⚠️ Unaudited |
| Controller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1593318424df66128cb7d0c5574b1283c3a74c3d` | ⚠️ Unaudited |
| Coordinator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0ecb017ed5d35807ce6b6f0c8308edb8b7edcc5e` | ⚠️ Unaudited |
| Deployer1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x408a45844cfe015e0e4afb2116475620dc4f1df3` | ⚠️ Unaudited |
| Deployer2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xabbc87e789a3d5ba5a9e976867e686dbf3f3121f` | ⚠️ Unaudited |
| Deployer3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x71fac51091a5dc87e02419ce22ab922d8c7e897a` | ⚠️ Unaudited |
| DSU | unknown | project_anchor | own_supporting | 0 | optimism | unit-384089 | `0x52c64b8998eb7c80b6f526e99e29abdcc86b841b` | ⚠️ Unaudited |
| FiatTokenProxy | unknown | project_anchor | own_supporting | 1 | base | unit-384098 | `0x833589fcd6edb6e08f4c7c32d4f71b54bda02913` | ⚠️ Unaudited |
| FiatTokenV2_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0f4fb9474303d10905ab86aa8d5a65fe44b6e04a` | ⚠️ Unaudited |
| Forwarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfc20bcca96bde758e9c69151d99cecfeae3ab37e` | ⚠️ Unaudited |
| Funder | unknown | project_anchor | own_supporting | 0 | ethereum | unit-384081 | `0x87f6b212a25677b9b12e7fcfa8c08fb3df25bc4c` | ⚠️ Unaudited |
| GasOracle_Arbitrum | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x038901cc5d0ae04603e6f44819600badbf4a2bc7` | ⚠️ Unaudited |
| Giga | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x234253280a5427cb9e198367b6804dba9fcab7dc` | ⚠️ Unaudited |
| GlobalStorageLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0b18a9a54bb159f4e5f7b6db57445be255291ed0` | ⚠️ Unaudited |
| Implementation | unknown | project_anchor | own_supporting | 1 | ethereum | unit-384096 | `0x443d2f2755db5942601fa062cc248aaa153313d3` | ⚠️ Unaudited |
| Incentivizer | unknown | project_anchor | own_supporting | 0 | ethereum | unit-384072 | `0x0d49c416103cbd276d9c3cd96710db264e3a0c27` | ⚠️ Unaudited |
| InvariantLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1451bacef80518fea01fded8e32ccccc68c1a8c8` | ⚠️ Unaudited |
| Inverse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd166f9972dd6f95aaac6710716d45bb30430b5e9` | ⚠️ Unaudited |
| KeeperOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1990fa13ccef6100703a6999c90c0493a740f1d8` | ⚠️ Unaudited |
| KeeperOracle_Migration | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa3186bcc1a64edabd13b7de0faaecbce3e12641b` | ⚠️ Unaudited |
| Kilo | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xde7e2d1005ea46a0e261e243f762fc7ca849acab` | ⚠️ Unaudited |
| KiloPowerHalf | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7aaf9184ee1299226d46ffeb36595bb8d0edf753` | ⚠️ Unaudited |
| KiloPowerTwo | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf94f18fe7ef42eee309ebfc287f2f425cb16cbc9` | ⚠️ Unaudited |
| MagicValueLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x28158dcebbb6b5e69a5a5a26f5fe9a8d199df48c` | ⚠️ Unaudited |
| Manager_Arbitrum | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3af57c0f8e76277f58ca09d03ace050c5dca4671` | ⚠️ Unaudited |
| Market | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x17ebca0060c3e84812ab4e208cc33e5fd8a3b255` | ⚠️ Unaudited |
| MarketFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x046d6038811c6c14e81d5de5b107d4b7ee9b4cde` | ⚠️ Unaudited |
| MarketParameterStorageLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0d07e3a272f5666d10aefc611d0f693b4a8f2e16` | ⚠️ Unaudited |
| MasterMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2230393edad0299b7e7b59f20aa856cd1bed52e1` | ⚠️ Unaudited |
| Mega | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xffb33f838096cf3c3c7dd21c1f941bb2705248e1` | ⚠️ Unaudited |
| MegaPowerTwo | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe833e9bd294d9f1e1760bdc88c01c8dea4f0f7d7` | ⚠️ Unaudited |
| MetaQuantsFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x309ad3771baea8de1bf1cf6a1bfb4ceeb65687f1` | ⚠️ Unaudited |
| MetaQuantsFactory_Arbitrum | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa7df5fb2fb55671d22d78a188d9301e383ca0b5c` | ⚠️ Unaudited |
| Micro | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4f7a6cced29712fc5b102e730c27324a01e74179` | ⚠️ Unaudited |
| MicroPowerTwo | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x18ad45bdda468259257e46ba07de6cd3d88cd632` | ⚠️ Unaudited |
| MigrationReserve | unknown | project_anchor | own_supporting | 1 | optimism | unit-384097 | `0x0d49c416103cbd276d9c3cd96710db264e3a0c27` | ⚠️ Unaudited |
| Migrations | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e6472157b68cb71bfbe6094c3e1537fb5a765ad` | ⚠️ Unaudited |
| Migrator | unknown | project_anchor | own_supporting | 0 | ethereum | unit-384084 | `0xc61d12896421613b30d56f85c093cdda43ab2ce7` | ⚠️ Unaudited |
| Milli | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xae794c750991b19485e17788d1a19b83ba68bd62` | ⚠️ Unaudited |
| MilliPowerHalf | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbca65ce3629167600d52492b61a97627305f4e0e` | ⚠️ Unaudited |
| MilliPowerTwo | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x443cef645e29ae12c053f358b2875df0b9a43166` | ⚠️ Unaudited |
| MilliSqueethPayoff | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x560276178203095afe2b055eb06e4e9eaf4ce0b1` | ⚠️ Unaudited |
| Multicall4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9b12ff03edd05318b84b0d89cb3e5c40138fe607` | ⚠️ Unaudited |
| MultiInvoker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x14c4448239175ca72dea15c23615ad6f5144c26a` | ⚠️ Unaudited |
| MultiInvoker_Arbitrum | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0092f3a5f211333c5427605a6df76b35dcfdd873` | ⚠️ Unaudited |
| Names | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x298e0b0a38ff8b99bf1a3b697b0efb2195cfe47d` | ⚠️ Unaudited |
| Nano | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1cc0e7883dc01cca0cc7a04b1eb3e51c290645e7` | ⚠️ Unaudited |
| Oracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0a47bb5e5260619204a578bd477204fce6246bb7` | ⚠️ Unaudited |
| OracleFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x19a4010e859ca3d10f0d928c6665f9a9e3be4b22` | ⚠️ Unaudited |
| OrderVerifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x886e59002dff8b10f4e777ca3a6ca6c3e6908581` | ⚠️ Unaudited |
| OVMFiatToken | unknown | project_anchor | own_supporting | 0 | optimism | unit-384090 | `0x7f5c764cbc14f9669b88837ca1490cca17c31607` | ⚠️ Unaudited |
| PayoffFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf817521610600c4674364246a5cf4af8e627805d` | ⚠️ Unaudited |
| PerennialLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1593318424df66128cb7d0c5574b1283c3a74c3d` | ⚠️ Unaudited |
| PositionStorageLocalLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3d43c9b84546c9658cdfd184478ecb5d3b745a4c` | ⚠️ Unaudited |
| PowerHalf | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x07b891ae5e0eeaf7fb407552c28eac785ac8af9c` | ⚠️ Unaudited |
| PowerTwo | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6b1c4978142a9bc9dd5777866aa8ad610ded696c` | ⚠️ Unaudited |
| Product | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0bc5f9025dad9651425deab8d03a33f71a286f53` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x16b38364ba6f55b6e150cc7f52d22e89643f3535` | ⚠️ Unaudited |
| ProxyRoot | unknown | project_anchor | own_supporting | 0 | ethereum | unit-384077 | `0x4d2a5e3b7831156f62c8df47604e321cdaf35fec` | ⚠️ Unaudited |
| PythFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x63dd4059971a9e24810a2aea222460aca6687bb6` | ⚠️ Unaudited |
| PythFactory_Arbitrum | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x143c5ec02fde403c73245b94dec621f05c74c1ad` | ⚠️ Unaudited |
| PythOracle_Arbitrum | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7a18a52ef9ab4e2ede9113ef13483ed18b395ca7` | ⚠️ Unaudited |
| Registry | unknown | project_anchor | own_supporting | 0 | ethereum | unit-384083 | `0xc5285ee6d5c9adf4e04f5ccb47d0501ae638c7a9` | ⚠️ Unaudited |
| ReserveImpl | unknown | project_anchor | own_supporting | 0 | ethereum | unit-384076 | `0x42340c735e4b6018661183dcd5b267f3bb5f9ee4` | ⚠️ Unaudited |
| RiskParameterStorageLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x02608dd5a2627cb5908f948b3adb9ce437aa0ca7` | ⚠️ Unaudited |
| Root | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb80ad6c00bd663c2b7893cd6ede3f3c5c055e014` | ⚠️ Unaudited |
| SeasonalMerkleClaim | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4fc1cc62e5d0b12f5a9e3213b4177d2edb301f30` | ⚠️ Unaudited |
| SimpleReserve | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x58e0c542ab540e0dd3b4fd96cc46b0aad1196bfe` | ⚠️ Unaudited |
| Timelock | unknown | project_anchor | own_supporting | 0 | ethereum | unit-384073 | `0x1bba92f379375387bf8f927058da14d47464cb7a` | ⚠️ Unaudited |
| TimelockController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x13b7a79e050ef2c3fdc858efd5c066c3655be841` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | arbitrum | n/a | `0x0e9d1df540acb30a321d3d3edd4996e0248aaf5c` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | arbitrum | n/a | `0x1960628db367281b1a186dd5b80b5dd6978f016f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | arbitrum | n/a | `0x197de1b26ad733380fd22159a2671f497a6ddd7c` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2b87c59f5220ee51616ad2273b5f683d5ea27cbc` | ⚠️ Unaudited |
| TwoWayBatcher | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaef566ca7e84d1e736f999765a804687f39d9094` | ⚠️ Unaudited |
| UCrossChainOwner_Arbitrum | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4a0f50b19b02ac927911c559629536b9a24d9314` | ⚠️ Unaudited |
| UCrossChainOwner_Optimism | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x7b4adf64b0d60ff97d672e473420203d52562a84` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | project_anchor | own_supporting | 0 | ethereum | unit-384086 | `0xcadd30b39f01cfdfb848174b19bbb5b1b7486159` | ⚠️ Unaudited |
| UpgradeableBeacon | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc12b0fe62441baad525cd7d770cf21c883c77bc6` | ⚠️ Unaudited |
| Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x03557b122c71744e7226d68f6ef6b5915e61a0d7` | ⚠️ Unaudited |
| VaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1d6a633827666b0d0eda6249cd66f1850f9e0067` | ⚠️ Unaudited |
| Verifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x492bf4b1e07c440f68eb35a5237dc0a858babd73` | ⚠️ Unaudited |
| VersionLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6fd2b0a8a40a1be8510cb5f39efd72cfca3b45be` | ⚠️ Unaudited |
| VersionStorageLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x107507a3268eec24dd3ffa223777b94552ead05b` | ⚠️ Unaudited |
| Vester | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x035a24be9a1d797f54f4558985a072bf66d6d158` | ⚠️ Unaudited |
| Vyper_contract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-384080 | `0x6ec80df362d7042c50d4469bcfbc174c9dd9109a` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (10)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-384078 | `0x52c64b8998eb7c80b6f526e99e29abdcc86b841b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-384079 | `0x605d26fbd5be761089281d5cec2ce86eea667109` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-384085 | `0xc6e09feb984acab2c956c9af56b9b3729a1bf3c8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-384087 | `0xd05ace63789ccb35b9ce71d01e4d632a0486da4b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-384088 | `0xd353a618abd6b39e8c334291c74a52ceb19b18fd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-384094 | `0x5fa881826ad000d010977645450292701bc2f56d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-384095 | `0x7b4adf64b0d60ff97d672e473420203d52562a84` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-384091 | `0x0d49c416103cbd276d9c3cd96710db264e3a0c27` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-384092 | `0x52c64b8998eb7c80b6f526e99e29abdcc86b841b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-384093 | `0xaf88d065e77c8cc2239327c5edb3a432268e5831` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [result.md](https://github.com/emptysetsquad/emptyset/blob/master/audit/result.md) | OpenZeppelin | Audit | 2021-04 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [scope.md](https://github.com/emptysetsquad/emptyset/blob/master/audit/scope.md) | OpenZeppelin | Audit | 2021-04 | stale | Direct | contract_name | matched | 3 | 0 | 0 | 3 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21385] result.md — no match: No explicit scope section or contract names found; only findings and fixes mentioned.
- [21386] scope.md — matched: Extracted contract names from scope sections; directories like common/*, incentivizer/*, migrator/*, oracle/*, registry/*, reserve/*, stabilizer/* are not individual contracts. Date from header [4/1/21].

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| scope.md | Decimal | unmatched — not counted | — | listed in scope | no |
| scope.md | TimeUtils | unmatched — not counted | — | listed in scope | no |
| scope.md | Dollar | own contract | Dollar (selected) `0x36f3fd68e7325a35eb768f1aedaae9ea0689d723` — deployed 2020-08-24 13:31:00+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| scope.md | Vester | unmatched — not counted | — | listed in scope | no |
| scope.md | GovernorAlpha | own contract | GovernorAlpha (selected) `0x0599f087df7900a1f806c5d149387ee6e0a8bfcb` — deployed 2021-07-27 20:22:56+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| scope.md | Stake | own contract | Stake (selected) `0x24ae124c4cc33d6791f8e8b63520ed7107ac8b3e` — deployed 2021-07-27 20:21:25+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| optimism | `0x52c64b8998eb7c80b6f526e99e29abdcc86b841b` | DSU | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x833589fcd6edb6e08f4c7c32d4f71b54bda02913` | FiatTokenProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x87f6b212a25677b9b12e7fcfa8c08fb3df25bc4c` | Funder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x443d2f2755db5942601fa062cc248aaa153313d3` | Implementation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0d49c416103cbd276d9c3cd96710db264e3a0c27` | Incentivizer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x0d49c416103cbd276d9c3cd96710db264e3a0c27` | MigrationReserve | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc61d12896421613b30d56f85c093cdda43ab2ce7` | Migrator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x7f5c764cbc14f9669b88837ca1490cca17c31607` | OVMFiatToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4d2a5e3b7831156f62c8df47604e321cdaf35fec` | ProxyRoot | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc5285ee6d5c9adf4e04f5ccb47d0501ae638c7a9` | Registry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x42340c735e4b6018661183dcd5b267f3bb5f9ee4` | ReserveImpl | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1bba92f379375387bf8f927058da14d47464cb7a` | Timelock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6ec80df362d7042c50d4469bcfbc174c9dd9109a` | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 88 |
| upstream | 2 |
| standard_library | 7 |
| needs_review | 10 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 3 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 3 unmatched
- Matched-own operational status: 3 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1, low=1
- Match method counts: unique_name=3

Zero-match audit list:

- [21385] result.md

Fork inheritance lineage and inherited audits are included when available.
