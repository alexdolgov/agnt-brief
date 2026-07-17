# Agentic Audit Brief: Circle

## Project Overview

- Project: Circle (`circle`)
- Website: [https://www.circle.com/en/](https://www.circle.com/en/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:10.277Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: bsc, ethereum
- Contract surface: 54 unique implementations (54 raw deployments)
- DeFi Llama TVL: $3,215,639,101.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Bridge. Structurally: 46 project-authored contract(s) across 2 chain(s); 1 Chainlink feed; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 9 common project-authored base contract(s) (proxy, erc1967upgrade, reentrancyguardupgradeable). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 54; live-surface contracts included: 54 (54 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/54 (0.0%)
- Deployed-live implementations: 54 of 54 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/54
- Verified + Unaudited implementations: 54
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 54
- Raw deployments: 54
- Audits discovered: 0 (0 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (54)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CrossChainTeller | unknown | ethereum | n/a | [`0x231d51f23dad8a58b867c47884e88e6e122f3f12`](./contracts/ethereum-1/0x231d51f23dad8a58b867c47884e88e6e122f3f12/) | ⚠️ Unaudited |
| CrossChainToken | unknown | ethereum | n/a | [`0x2a6f3f4cd09106ad645a5d8b16fbe8d6bc57e18f`](./contracts/ethereum-1/0x2a6f3f4cd09106ad645a5d8b16fbe8d6bc57e18f/) | ⚠️ Unaudited |
| CrossMarginCashEngine | unknown | ethereum | n/a | [`0x1d2103251c2f5edec640ef6e5a99d99e6bd53889`](./contracts/ethereum-1/0x1d2103251c2f5edec640ef6e5a99d99e6bd53889/) | ⚠️ Unaudited |
| CrossMarginCashLib | unknown | ethereum | n/a | [`0x2c6c57528d8651c2fbc46aa67e64aaf9e9646b31`](./contracts/ethereum-1/0x2c6c57528d8651c2fbc46aa67e64aaf9e9646b31/) | ⚠️ Unaudited |
| CrossMarginCashMath | unknown | ethereum | n/a | [`0x2cba4e2335c5e9e006dfbf47acb62294a1a39ed1`](./contracts/ethereum-1/0x2cba4e2335c5e9e006dfbf47acb62294a1a39ed1/) | ⚠️ Unaudited |
| CrossMarginPhysicalEngine | unknown | ethereum | n/a | [`0x181d053611a754df9a1ada64fed24a12b63a39f8`](./contracts/ethereum-1/0x181d053611a754df9a1ada64fed24a12b63a39f8/) | ⚠️ Unaudited |
| CrossMarginPhysicalEngineProxy | unknown | ethereum | n/a | [`0xaab8ed4c17ec6bc739035c66ba967810c235f3b9`](./contracts/ethereum-1/0xaab8ed4c17ec6bc739035c66ba967810c235f3b9/) | ⚠️ Unaudited |
| CrossMarginPhysicalLib | unknown | ethereum | n/a | [`0x0e6b762f45d412c13b975db10001d467d6caaa19`](./contracts/ethereum-1/0x0e6b762f45d412c13b975db10001d467d6caaa19/) | ⚠️ Unaudited |
| CrossMarginPhysicalMath | unknown | ethereum | n/a | [`0x11a166b96d3568443154e95a1b4b8802369c9ffe`](./contracts/ethereum-1/0x11a166b96d3568443154e95a1b4b8802369c9ffe/) | ⚠️ Unaudited |
| DoubleAggregatorProxy | unknown | ethereum | n/a | [`0x121eeda447ac138c8f6f5d2423353c996c9bf0d7`](./contracts/ethereum-1/0x121eeda447ac138c8f6f5d2423353c996c9bf0d7/) | ⚠️ Unaudited |
| FeeLib | unknown | ethereum | n/a | [`0x132c1485120d36e882d80d01af7de2f454a7bdbb`](./contracts/ethereum-1/0x132c1485120d36e882d80d01af7de2f454a7bdbb/) | ⚠️ Unaudited |
| GenericAggregator | unknown | ethereum | n/a | [`0x1a886fafe770a32812972c5d5632d0b4a6156fd0`](./contracts/ethereum-1/0x1a886fafe770a32812972c5d5632d0b4a6156fd0/) | ⚠️ Unaudited |
| GenericNextPriceAggregator | unknown | ethereum | n/a | [`0x6deaa761bc131ac5f1d562ee71819e846ef11624`](./contracts/ethereum-1/0x6deaa761bc131ac5f1d562ee71819e846ef11624/) | ⚠️ Unaudited |
| GenericUpgradableAggregator | unknown | ethereum | n/a | [`0xc312141b2f7826d36a1d111c63d1a9ed824d07d5`](./contracts/ethereum-1/0xc312141b2f7826d36a1d111c63d1a9ed824d07d5/) | ⚠️ Unaudited |
| HashnoteVaultProxy | unknown | ethereum | n/a | [`0x0747c48be08773bcea26fdbe7347a388c7736c3c`](./contracts/ethereum-1/0x0747c48be08773bcea26fdbe7347a388c7736c3c/) | ⚠️ Unaudited |
| HashnoteVaultRegistrarProxy | unknown | ethereum | n/a | [`0x04f793a709ff868760cc9ba88a7b6dcbe0a4ee04`](./contracts/ethereum-1/0x04f793a709ff868760cc9ba88a7b6dcbe0a4ee04/) | ⚠️ Unaudited |
| HashnoteVaultShareProxy | unknown | ethereum | n/a | [`0x081bdb07aaaa64df8440b608a8259d89e3dc56d6`](./contracts/ethereum-1/0x081bdb07aaaa64df8440b608a8259d89e3dc56d6/) | ⚠️ Unaudited |
| HNUSDMainnet | unknown | ethereum | n/a | [`0xc7175273dddd9fd0b5846a86229aec9ed4c7d20d`](./contracts/ethereum-1/0xc7175273dddd9fd0b5846a86229aec9ed4c7d20d/) | ⚠️ Unaudited |
| LSETHAggregator | unknown | ethereum | n/a | [`0x7e8e384b57dcf4096baa3221086f1236fc616bc6`](./contracts/ethereum-1/0x7e8e384b57dcf4096baa3221086f1236fc616bc6/) | ⚠️ Unaudited |
| MasterFundAdmin | unknown | ethereum | n/a | [`0xc0fa776fbf7b1dbdcd868e7a42aac0eb193afa06`](./contracts/ethereum-1/0xc0fa776fbf7b1dbdcd868e7a42aac0eb193afa06/) | ⚠️ Unaudited |
| OptionToken | unknown | ethereum | n/a | [`0x10022be24d6fbbf7ce321361e3371f0a05754ed0`](./contracts/ethereum-1/0x10022be24d6fbbf7ce321361e3371f0a05754ed0/) | ⚠️ Unaudited |
| OptionTokenDescriptor | unknown | ethereum | n/a | [`0x6b7d54003f73be979cf92bf369432ac534853692`](./contracts/ethereum-1/0x6b7d54003f73be979cf92bf369432ac534853692/) | ⚠️ Unaudited |
| PhysicalReturnProcessor | unknown | ethereum | n/a | [`0x07c19d2af8cc00962e9e4e0744b7a191329b447d`](./contracts/ethereum-1/0x07c19d2af8cc00962e9e4e0744b7a191329b447d/) | ⚠️ Unaudited |
| Pomace | unknown | ethereum | n/a | [`0x8cadc832040bc66a0aeef9bf6b6d1bd7bcc5acdb`](./contracts/ethereum-1/0x8cadc832040bc66a0aeef9bf6b6d1bd7bcc5acdb/) | ⚠️ Unaudited |
| PositionPauser | unknown | ethereum | n/a | [`0x2cf8d5089d3cc289b369bff29646d4070459c66b`](./contracts/ethereum-1/0x2cf8d5089d3cc289b369bff29646d4070459c66b/) | ⚠️ Unaudited |
| PpraSdycVault | unknown | ethereum | n/a | [`0x2c202d6a890bc8bb215ceae40d2ff12f5d323e12`](./contracts/ethereum-1/0x2c202d6a890bc8bb215ceae40d2ff12f5d323e12/) | ⚠️ Unaudited |
| PriceReporter | unknown | ethereum | n/a | [`0x542647c43a126778c7a895300e476bcfd58bea86`](./contracts/ethereum-1/0x542647c43a126778c7a895300e476bcfd58bea86/) | ⚠️ Unaudited |
| RolesAuthority | unknown | ethereum | n/a | [`0x352f80e8f63871649cf23a68cd28907a5582b0ab`](./contracts/ethereum-1/0x352f80e8f63871649cf23a68cd28907a5582b0ab/) | ⚠️ Unaudited |
| Sanctions | unknown | bsc | n/a | [`0xcfc60d34949a7dbdf91ba6d5613b26d6ff0ad504`](./contracts/bsc-56/0xcfc60d34949a7dbdf91ba6d5613b26d6ff0ad504/) | ⚠️ Unaudited |
| SDYCAggregatorProxy | unknown | ethereum | n/a | [`0x1051a9ebb992a76fd1ad3143da202bd0c3eaabe1`](./contracts/ethereum-1/0x1051a9ebb992a76fd1ad3143da202bd0c3eaabe1/) | ⚠️ Unaudited |
| ShortDurationYieldCoin | unknown | ethereum | n/a | [`0x0dc09046f22ec756e633eca91618e3c9a372699a`](./contracts/ethereum-1/0x0dc09046f22ec756e633eca91618e3c9a372699a/) | ⚠️ Unaudited |
| SimpleSettlement | unknown | ethereum | n/a | [`0x17e9d98c3f3301e7869d2d6fbdd37dc6e605f245`](./contracts/ethereum-1/0x17e9d98c3f3301e7869d2d6fbdd37dc6e605f245/) | ⚠️ Unaudited |
| SimpleSettlementCash | unknown | ethereum | n/a | [`0xad250345078aba5d052c1a8040fd1c1595f4ea00`](./contracts/ethereum-1/0xad250345078aba5d052c1a8040fd1c1595f4ea00/) | ⚠️ Unaudited |
| SimpleSettlementPhysical | unknown | ethereum | n/a | [`0x454018c4ccb5a1e4348e2227229a2e2fdde25d9c`](./contracts/ethereum-1/0x454018c4ccb5a1e4348e2227229a2e2fdde25d9c/) | ⚠️ Unaudited |
| SingleOptionCashVault | unknown | ethereum | n/a | [`0x05dada035f571bccd4c04fc73bbe01515af7c0bf`](./contracts/ethereum-1/0x05dada035f571bccd4c04fc73bbe01515af7c0bf/) | ⚠️ Unaudited |
| StrategyVaultProxy | unknown | ethereum | n/a | [`0x0c3557be73357f802a0c1d4954fc9d8721bfe4f0`](./contracts/ethereum-1/0x0c3557be73357f802a0c1d4954fc9d8721bfe4f0/) | ⚠️ Unaudited |
| StringToHexString | unknown | ethereum | n/a | [`0x026a6955696af727d87cc45cce934aea56ef68e3`](./contracts/ethereum-1/0x026a6955696af727d87cc45cce934aea56ef68e3/) | ⚠️ Unaudited |
| StructureLib | unknown | ethereum | n/a | [`0x10cacb2319135da66b89ae8aa12e1bcaaaf54389`](./contracts/ethereum-1/0x10cacb2319135da66b89ae8aa12e1bcaaaf54389/) | ⚠️ Unaudited |
| T2Upgrade | unknown | ethereum | n/a | [`0x41a5be0fabda35e57838bf2aacfdfe58de8d59e9`](./contracts/ethereum-1/0x41a5be0fabda35e57838bf2aacfdfe58de8d59e9/) | ⚠️ Unaudited |
| Teleport | unknown | ethereum | n/a | [`0x362087f1cafdcf934928630b4b03d69854bc7eee`](./contracts/ethereum-1/0x362087f1cafdcf934928630b4b03d69854bc7eee/) | ⚠️ Unaudited |
| TellerProxy | unknown | ethereum | n/a | [`0xee35f963bfc71b51ec95147f26c030d674ea30e6`](./contracts/ethereum-1/0xee35f963bfc71b51ec95147f26c030d674ea30e6/) | ⚠️ Unaudited |
| USYCSatellite | unknown | bsc | n/a | [`0x191fb6f3ba332f1b8789caf67abbaba56147445b`](./contracts/bsc-56/0x191fb6f3ba332f1b8789caf67abbaba56147445b/) | ⚠️ Unaudited |
| VariableUnderlyingVault | unknown | ethereum | n/a | [`0x2c8ec036c7f41f84bd1c15565070f2aa2d00eccd`](./contracts/ethereum-1/0x2c8ec036c7f41f84bd1c15565070f2aa2d00eccd/) | ⚠️ Unaudited |
| VaultLib | unknown | ethereum | n/a | [`0x06de711c7dd7b0fff655b59c28dc2dfe41441506`](./contracts/ethereum-1/0x06de711c7dd7b0fff655b59c28dc2dfe41441506/) | ⚠️ Unaudited |
| WhitelistManager | unknown | ethereum | n/a | [`0x1150384af15b603ff0cb1c9f61e11709c8153ce3`](./contracts/ethereum-1/0x1150384af15b603ff0cb1c9f61e11709c8153ce3/) | ⚠️ Unaudited |
| WrappedETH | unknown | ethereum | n/a | [`0x55e3d6076ece40697ba5fdf226a1e10afbf22b06`](./contracts/ethereum-1/0x55e3d6076ece40697ba5fdf226a1e10afbf22b06/) | ⚠️ Unaudited |
| WrappedToken | unknown | ethereum | n/a | [`0x17ff7c7b0ba791653f334b9866264bfb58b94aa3`](./contracts/ethereum-1/0x17ff7c7b0ba791653f334b9866264bfb58b94aa3/) | ⚠️ Unaudited |
| WrappedTokenScaled | unknown | ethereum | n/a | [`0x05a0a07620348a90ab895d2c9e87adfa1a59bf51`](./contracts/ethereum-1/0x05a0a07620348a90ab895d2c9e87adfa1a59bf51/) | ⚠️ Unaudited |
| WrappedTokenStakedETHProxy | unknown | ethereum | n/a | [`0x0c9b6b2b9345841f6210f6045ee2508d68ee1ac6`](./contracts/ethereum-1/0x0c9b6b2b9345841f6210f6045ee2508d68ee1ac6/) | ⚠️ Unaudited |
| WSTETHAggregatorProxy | unknown | ethereum | n/a | [`0x058614c982e2dfb89d664978ad2dab5113950a17`](./contracts/ethereum-1/0x058614c982e2dfb89d664978ad2dab5113950a17/) | ⚠️ Unaudited |
| YieldCoin | unknown | ethereum | n/a | [`0x136471a34f6ef19fe571effc1ca711fdb8e49f2b`](./contracts/ethereum-1/0x136471a34f6ef19fe571effc1ca711fdb8e49f2b/) | ⚠️ Unaudited |
| YieldTokenAggregator | unknown | ethereum | n/a | [`0x3b7ad4835d817181592788a7e6d588d334e0426b`](./contracts/ethereum-1/0x3b7ad4835d817181592788a7e6d588d334e0426b/) | ⚠️ Unaudited |
| YieldTokenTeller | unknown | ethereum | n/a | [`0x2ca5946749e328287ee73c6efb27e7fb7ef9d8cc`](./contracts/ethereum-1/0x2ca5946749e328287ee73c6efb27e7fb7ef9d8cc/) | ⚠️ Unaudited |
| YieldTokenTellerV2Proxy | unknown | ethereum | n/a | [`0x060087d12801e36f1fe2b1a8d8a90dc6348bd599`](./contracts/ethereum-1/0x060087d12801e36f1fe2b1a8d8a90dc6348bd599/) | ⚠️ Unaudited |

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
| ethereum | [`0x231d51f23dad8a58b867c47884e88e6e122f3f12`](./contracts/ethereum-1/0x231d51f23dad8a58b867c47884e88e6e122f3f12/) | CrossChainTeller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2a6f3f4cd09106ad645a5d8b16fbe8d6bc57e18f`](./contracts/ethereum-1/0x2a6f3f4cd09106ad645a5d8b16fbe8d6bc57e18f/) | CrossChainToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1d2103251c2f5edec640ef6e5a99d99e6bd53889`](./contracts/ethereum-1/0x1d2103251c2f5edec640ef6e5a99d99e6bd53889/) | CrossMarginCashEngine | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2c6c57528d8651c2fbc46aa67e64aaf9e9646b31`](./contracts/ethereum-1/0x2c6c57528d8651c2fbc46aa67e64aaf9e9646b31/) | CrossMarginCashLib | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2cba4e2335c5e9e006dfbf47acb62294a1a39ed1`](./contracts/ethereum-1/0x2cba4e2335c5e9e006dfbf47acb62294a1a39ed1/) | CrossMarginCashMath | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x181d053611a754df9a1ada64fed24a12b63a39f8`](./contracts/ethereum-1/0x181d053611a754df9a1ada64fed24a12b63a39f8/) | CrossMarginPhysicalEngine | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xaab8ed4c17ec6bc739035c66ba967810c235f3b9`](./contracts/ethereum-1/0xaab8ed4c17ec6bc739035c66ba967810c235f3b9/) | CrossMarginPhysicalEngineProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0e6b762f45d412c13b975db10001d467d6caaa19`](./contracts/ethereum-1/0x0e6b762f45d412c13b975db10001d467d6caaa19/) | CrossMarginPhysicalLib | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x11a166b96d3568443154e95a1b4b8802369c9ffe`](./contracts/ethereum-1/0x11a166b96d3568443154e95a1b4b8802369c9ffe/) | CrossMarginPhysicalMath | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x121eeda447ac138c8f6f5d2423353c996c9bf0d7`](./contracts/ethereum-1/0x121eeda447ac138c8f6f5d2423353c996c9bf0d7/) | DoubleAggregatorProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x132c1485120d36e882d80d01af7de2f454a7bdbb`](./contracts/ethereum-1/0x132c1485120d36e882d80d01af7de2f454a7bdbb/) | FeeLib | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1a886fafe770a32812972c5d5632d0b4a6156fd0`](./contracts/ethereum-1/0x1a886fafe770a32812972c5d5632d0b4a6156fd0/) | GenericAggregator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6deaa761bc131ac5f1d562ee71819e846ef11624`](./contracts/ethereum-1/0x6deaa761bc131ac5f1d562ee71819e846ef11624/) | GenericNextPriceAggregator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc312141b2f7826d36a1d111c63d1a9ed824d07d5`](./contracts/ethereum-1/0xc312141b2f7826d36a1d111c63d1a9ed824d07d5/) | GenericUpgradableAggregator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0747c48be08773bcea26fdbe7347a388c7736c3c`](./contracts/ethereum-1/0x0747c48be08773bcea26fdbe7347a388c7736c3c/) | HashnoteVaultProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x04f793a709ff868760cc9ba88a7b6dcbe0a4ee04`](./contracts/ethereum-1/0x04f793a709ff868760cc9ba88a7b6dcbe0a4ee04/) | HashnoteVaultRegistrarProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x081bdb07aaaa64df8440b608a8259d89e3dc56d6`](./contracts/ethereum-1/0x081bdb07aaaa64df8440b608a8259d89e3dc56d6/) | HashnoteVaultShareProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc7175273dddd9fd0b5846a86229aec9ed4c7d20d`](./contracts/ethereum-1/0xc7175273dddd9fd0b5846a86229aec9ed4c7d20d/) | HNUSDMainnet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7e8e384b57dcf4096baa3221086f1236fc616bc6`](./contracts/ethereum-1/0x7e8e384b57dcf4096baa3221086f1236fc616bc6/) | LSETHAggregator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc0fa776fbf7b1dbdcd868e7a42aac0eb193afa06`](./contracts/ethereum-1/0xc0fa776fbf7b1dbdcd868e7a42aac0eb193afa06/) | MasterFundAdmin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x10022be24d6fbbf7ce321361e3371f0a05754ed0`](./contracts/ethereum-1/0x10022be24d6fbbf7ce321361e3371f0a05754ed0/) | OptionToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6b7d54003f73be979cf92bf369432ac534853692`](./contracts/ethereum-1/0x6b7d54003f73be979cf92bf369432ac534853692/) | OptionTokenDescriptor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x07c19d2af8cc00962e9e4e0744b7a191329b447d`](./contracts/ethereum-1/0x07c19d2af8cc00962e9e4e0744b7a191329b447d/) | PhysicalReturnProcessor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8cadc832040bc66a0aeef9bf6b6d1bd7bcc5acdb`](./contracts/ethereum-1/0x8cadc832040bc66a0aeef9bf6b6d1bd7bcc5acdb/) | Pomace | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2cf8d5089d3cc289b369bff29646d4070459c66b`](./contracts/ethereum-1/0x2cf8d5089d3cc289b369bff29646d4070459c66b/) | PositionPauser | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2c202d6a890bc8bb215ceae40d2ff12f5d323e12`](./contracts/ethereum-1/0x2c202d6a890bc8bb215ceae40d2ff12f5d323e12/) | PpraSdycVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x542647c43a126778c7a895300e476bcfd58bea86`](./contracts/ethereum-1/0x542647c43a126778c7a895300e476bcfd58bea86/) | PriceReporter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x352f80e8f63871649cf23a68cd28907a5582b0ab`](./contracts/ethereum-1/0x352f80e8f63871649cf23a68cd28907a5582b0ab/) | RolesAuthority | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xcfc60d34949a7dbdf91ba6d5613b26d6ff0ad504`](./contracts/bsc-56/0xcfc60d34949a7dbdf91ba6d5613b26d6ff0ad504/) | Sanctions | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1051a9ebb992a76fd1ad3143da202bd0c3eaabe1`](./contracts/ethereum-1/0x1051a9ebb992a76fd1ad3143da202bd0c3eaabe1/) | SDYCAggregatorProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0dc09046f22ec756e633eca91618e3c9a372699a`](./contracts/ethereum-1/0x0dc09046f22ec756e633eca91618e3c9a372699a/) | ShortDurationYieldCoin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x17e9d98c3f3301e7869d2d6fbdd37dc6e605f245`](./contracts/ethereum-1/0x17e9d98c3f3301e7869d2d6fbdd37dc6e605f245/) | SimpleSettlement | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xad250345078aba5d052c1a8040fd1c1595f4ea00`](./contracts/ethereum-1/0xad250345078aba5d052c1a8040fd1c1595f4ea00/) | SimpleSettlementCash | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x454018c4ccb5a1e4348e2227229a2e2fdde25d9c`](./contracts/ethereum-1/0x454018c4ccb5a1e4348e2227229a2e2fdde25d9c/) | SimpleSettlementPhysical | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x05dada035f571bccd4c04fc73bbe01515af7c0bf`](./contracts/ethereum-1/0x05dada035f571bccd4c04fc73bbe01515af7c0bf/) | SingleOptionCashVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0c3557be73357f802a0c1d4954fc9d8721bfe4f0`](./contracts/ethereum-1/0x0c3557be73357f802a0c1d4954fc9d8721bfe4f0/) | StrategyVaultProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x026a6955696af727d87cc45cce934aea56ef68e3`](./contracts/ethereum-1/0x026a6955696af727d87cc45cce934aea56ef68e3/) | StringToHexString | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x10cacb2319135da66b89ae8aa12e1bcaaaf54389`](./contracts/ethereum-1/0x10cacb2319135da66b89ae8aa12e1bcaaaf54389/) | StructureLib | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x41a5be0fabda35e57838bf2aacfdfe58de8d59e9`](./contracts/ethereum-1/0x41a5be0fabda35e57838bf2aacfdfe58de8d59e9/) | T2Upgrade | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x362087f1cafdcf934928630b4b03d69854bc7eee`](./contracts/ethereum-1/0x362087f1cafdcf934928630b4b03d69854bc7eee/) | Teleport | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xee35f963bfc71b51ec95147f26c030d674ea30e6`](./contracts/ethereum-1/0xee35f963bfc71b51ec95147f26c030d674ea30e6/) | TellerProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x191fb6f3ba332f1b8789caf67abbaba56147445b`](./contracts/bsc-56/0x191fb6f3ba332f1b8789caf67abbaba56147445b/) | USYCSatellite | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2c8ec036c7f41f84bd1c15565070f2aa2d00eccd`](./contracts/ethereum-1/0x2c8ec036c7f41f84bd1c15565070f2aa2d00eccd/) | VariableUnderlyingVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x06de711c7dd7b0fff655b59c28dc2dfe41441506`](./contracts/ethereum-1/0x06de711c7dd7b0fff655b59c28dc2dfe41441506/) | VaultLib | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1150384af15b603ff0cb1c9f61e11709c8153ce3`](./contracts/ethereum-1/0x1150384af15b603ff0cb1c9f61e11709c8153ce3/) | WhitelistManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x55e3d6076ece40697ba5fdf226a1e10afbf22b06`](./contracts/ethereum-1/0x55e3d6076ece40697ba5fdf226a1e10afbf22b06/) | WrappedETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x17ff7c7b0ba791653f334b9866264bfb58b94aa3`](./contracts/ethereum-1/0x17ff7c7b0ba791653f334b9866264bfb58b94aa3/) | WrappedToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x05a0a07620348a90ab895d2c9e87adfa1a59bf51`](./contracts/ethereum-1/0x05a0a07620348a90ab895d2c9e87adfa1a59bf51/) | WrappedTokenScaled | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0c9b6b2b9345841f6210f6045ee2508d68ee1ac6`](./contracts/ethereum-1/0x0c9b6b2b9345841f6210f6045ee2508d68ee1ac6/) | WrappedTokenStakedETHProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x058614c982e2dfb89d664978ad2dab5113950a17`](./contracts/ethereum-1/0x058614c982e2dfb89d664978ad2dab5113950a17/) | WSTETHAggregatorProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x136471a34f6ef19fe571effc1ca711fdb8e49f2b`](./contracts/ethereum-1/0x136471a34f6ef19fe571effc1ca711fdb8e49f2b/) | YieldCoin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3b7ad4835d817181592788a7e6d588d334e0426b`](./contracts/ethereum-1/0x3b7ad4835d817181592788a7e6d588d334e0426b/) | YieldTokenAggregator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2ca5946749e328287ee73c6efb27e7fb7ef9d8cc`](./contracts/ethereum-1/0x2ca5946749e328287ee73c6efb27e7fb7ef9d8cc/) | YieldTokenTeller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x060087d12801e36f1fe2b1a8d8a90dc6348bd599`](./contracts/ethereum-1/0x060087d12801e36f1fe2b1a8d8a90dc6348bd599/) | YieldTokenTellerV2Proxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 54 |
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
