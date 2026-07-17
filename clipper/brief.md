# Agentic Audit Brief: Clipper

## Project Overview

- Project: Clipper (`clipper`)
- Website: [https://clipper.exchange](https://clipper.exchange)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:10.310Z
- Pipeline run: v2-2026-07-03-89943a
- Chains: arbitrum, base, ethereum, optimism, polygon
- Contract surface: 35 unique implementations (35 raw deployments)
- DeFi Llama TVL: $685,744.09
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 35 project-authored contract(s) across 5 chain(s); 2 ERC4626 vaults, 21 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 1 common project-authored base contract(s) (simpledatabase). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 35; live-surface contracts included: 35 (35 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 3/35 (8.6%)
- Deployed-live implementations: 35 of 35 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 3/35
- Verified + Unaudited implementations: 32
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 35
- Raw deployments: 35
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-08 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 4 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 3 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 3 | 8.6% | 2023-08 |
| Quantstamp | Tier 2 | 1 | 2.9% | 2021-05 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BlacklistAndTimeFilter | unknown | ethereum | n/a | [`0xb38ae58d7c8ce6c5bf8e57ddb6f43968d46c2ea2`](./contracts/ethereum-1/0xb38ae58d7c8ce6c5bf8e57ddb6f43968d46c2ea2/) | ✅ Audited |
| ClipperDirectExchange | unknown | polygon | n/a | [`0xd01e3549160c62acabc4d0eb89f67aafa3de8eed`](./contracts/polygon-137/0xd01e3549160c62acabc4d0eb89f67aafa3de8eed/) | ✅ Audited |
| OwnedCollectionContract | unknown | ethereum | n/a | [`0x5041f1ae02feb3580c4424d4417d202845cefcd8`](./contracts/ethereum-1/0x5041f1ae02feb3580c4424d4417d202845cefcd8/) | ✅ Audited |

### ⚠️ Verified + Unaudited (32)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ClipperApproximateCaravelExchange | unknown | ethereum | n/a | [`0x655edce464cc797526600a462a8154650eee4b77`](./contracts/ethereum-1/0x655edce464cc797526600a462a8154650eee4b77/) | ⚠️ Unaudited |
| ClipperCaravelExchange | unknown | ethereum | n/a | [`0xcc12532e95c2a6a4c53af153b9b739a3cc9218a7`](./contracts/ethereum-1/0xcc12532e95c2a6a4c53af153b9b739a3cc9218a7/) | ⚠️ Unaudited |
| ClipperCove | unknown | base | n/a | [`0x08f7e9458a341db71d2abbe32e2b5a2c727d4be8`](./contracts/base-8453/0x08f7e9458a341db71d2abbe32e2b5a2c727d4be8/) | ⚠️ Unaudited |
| ClipperExchangeInterface | unknown | ethereum | n/a | [`0x2e9c6dcdca22a5952a88c4b18edb5b54c5155bc9`](./contracts/ethereum-1/0x2e9c6dcdca22a5952a88c4b18edb5b54c5155bc9/) | ⚠️ Unaudited |
| ClipperExecutor | unknown | ethereum | n/a | [`0x3f7c9c7d9e69d0cfbfd6f009cc59ae341f68b738`](./contracts/ethereum-1/0x3f7c9c7d9e69d0cfbfd6f009cc59ae341f68b738/) | ⚠️ Unaudited |
| ClipperFarmingHelper | unknown | optimism | n/a | [`0x08b4b3be5bfab1be319599ce8e41c3da7fe7f3f8`](./contracts/optimism-10/0x08b4b3be5bfab1be319599ce8e41c3da7fe7f3f8/) | ⚠️ Unaudited |
| ClipperPackedExchange | unknown | optimism | n/a | [`0xdbd4ffc32b34f630dd8ac18d37162ec8462db7db`](./contracts/optimism-10/0xdbd4ffc32b34f630dd8ac18d37162ec8462db7db/) | ⚠️ Unaudited |
| ClipperPackedVerifiedExchange | unknown | optimism | n/a | [`0x5130f6ce257b8f9bf7fac0a0b519bd588120ed40`](./contracts/optimism-10/0x5130f6ce257b8f9bf7fac0a0b519bd588120ed40/) | ⚠️ Unaudited |
| ClipperPermitRouter | unknown | base | n/a | [`0x41c5362adf3a2cf6815454f7633172e7f6c1f834`](./contracts/base-8453/0x41c5362adf3a2cf6815454f7633172e7f6c1f834/) | ⚠️ Unaudited |
| ClipperPool | unknown | ethereum | n/a | [`0xe82906b6b1b04f631d126c974af57a3a7b6a99d9`](./contracts/ethereum-1/0xe82906b6b1b04f631d126c974af57a3a7b6a99d9/) | ⚠️ Unaudited |
| ClipperProtocolDeposit | unknown | ethereum | n/a | [`0x84f4625c3e92b368e403cb002a9bf9bc7a9ae1b9`](./contracts/ethereum-1/0x84f4625c3e92b368e403cb002a9bf9bc7a9ae1b9/) | ⚠️ Unaudited |
| ClipperResolver | unknown | ethereum | n/a | [`0x235d3afac42f5e5ff346cb6c19af13194988551f`](./contracts/ethereum-1/0x235d3afac42f5e5ff346cb6c19af13194988551f/) | ⚠️ Unaudited |
| ClipperRouter | unknown | ethereum | n/a | [`0xf0f455e8b8f4f96ae5109493c5d3ea5e2c09de47`](./contracts/ethereum-1/0xf0f455e8b8f4f96ae5109493c5d3ea5e2c09de47/) | ⚠️ Unaudited |
| ClipperTransferHelper | unknown | ethereum | n/a | [`0x12bb166f997146d3d33645146eedbc4a923195d7`](./contracts/ethereum-1/0x12bb166f997146d3d33645146eedbc4a923195d7/) | ⚠️ Unaudited |
| ClipperVerifiedCaravelExchange | unknown | ethereum | n/a | [`0xe7b0ce0526fbe3969035a145c9e9691d4d9d216c`](./contracts/ethereum-1/0xe7b0ce0526fbe3969035a145c9e9691d4d9d216c/) | ⚠️ Unaudited |
| ClipperVerifiedExchange | unknown | polygon | n/a | [`0x6bfce69d1df30fd2b2c8e478edec9daa643ae3b8`](./contracts/polygon-137/0x6bfce69d1df30fd2b2c8e478edec9daa643ae3b8/) | ⚠️ Unaudited |
| ClonableBeaconProxy | unknown | arbitrum | n/a | [`0xb52bd62ee0cf462fa9ccbda4bf27fe84d9ab6cf7`](./contracts/arbitrum-42161/0xb52bd62ee0cf462fa9ccbda4bf27fe84d9ab6cf7/) | ⚠️ Unaudited |
| CollectionContract | unknown | ethereum | n/a | [`0xdb83e7f92d919f8475f5a520bbe0d509327a6e41`](./contracts/ethereum-1/0xdb83e7f92d919f8475f5a520bbe0d509327a6e41/) | ⚠️ Unaudited |
| FxERC20 | unknown | polygon | n/a | [`0xd1a718f77ab5d22e3955050658d7f65ae857a85e`](./contracts/polygon-137/0xd1a718f77ab5d22e3955050658d7f65ae857a85e/) | ⚠️ Unaudited |
| LinearVestingVault | unknown | ethereum | n/a | [`0x3c7840e80beb3642043273cf7bf01944a8dfed3c`](./contracts/ethereum-1/0x3c7840e80beb3642043273cf7bf01944a8dfed3c/) | ⚠️ Unaudited |
| Longship | unknown | polygon | n/a | [`0x840e960c9c0989929160361b73ff9acd9b8ff003`](./contracts/polygon-137/0x840e960c9c0989929160361b73ff9acd9b8ff003/) | ⚠️ Unaudited |
| LongshipFrontendUtils | unknown | polygon | n/a | [`0x21995cb3c92c99de3876517c6fabe32d830e30ca`](./contracts/polygon-137/0x21995cb3c92c99de3876517c6fabe32d830e30ca/) | ⚠️ Unaudited |
| LongshipParent | unknown | polygon | n/a | [`0x35242f4a0067ff0e992e7a262c29dfd8874bcd60`](./contracts/polygon-137/0x35242f4a0067ff0e992e7a262c29dfd8874bcd60/) | ⚠️ Unaudited |
| LPTransfer | unknown | arbitrum | n/a | [`0x4c16dd6e9b402ea4fb5be647be2f49e3d59bb08a`](./contracts/arbitrum-42161/0x4c16dd6e9b402ea4fb5be647be2f49e3d59bb08a/) | ⚠️ Unaudited |
| MainnetLPTransferFromOldClipper | unknown | ethereum | n/a | [`0x205e8c5b8b9ab41e934ebf394aa319ccbdedd3bb`](./contracts/ethereum-1/0x205e8c5b8b9ab41e934ebf394aa319ccbdedd3bb/) | ⚠️ Unaudited |
| OptimismSailToken | unknown | optimism | n/a | [`0x7a1263ec3bf0a19e25c553b8a2c312e903262c5e`](./contracts/optimism-10/0x7a1263ec3bf0a19e25c553b8a2c312e903262c5e/) | ⚠️ Unaudited |
| PublicCollectionContract | unknown | ethereum | n/a | [`0x238cc13495b30d0b8f2df3d646af443c17063c22`](./contracts/ethereum-1/0x238cc13495b30d0b8f2df3d646af443c17063c22/) | ⚠️ Unaudited |
| SailToken | unknown | ethereum | n/a | [`0xd8f1460044925d2d5c723c7054cd9247027415b7`](./contracts/ethereum-1/0xd8f1460044925d2d5c723c7054cd9247027415b7/) | ⚠️ Unaudited |
| SplitFeeFarm | unknown | ethereum | n/a | [`0xd0454428ecd868a9ac615125fcbdb5da9027436e`](./contracts/ethereum-1/0xd0454428ecd868a9ac615125fcbdb5da9027436e/) | ⚠️ Unaudited |
| veSAIL | unknown | ethereum | n/a | [`0x26fe2f89a1fef1bc90b8a89d8ad18a1891166ff5`](./contracts/ethereum-1/0x26fe2f89a1fef1bc90b8a89d8ad18a1891166ff5/) | ⚠️ Unaudited |
| VestingMerkleDistributor | unknown | polygon | n/a | [`0x1ffbf1160764aa96b016d9124646e8c78cf46488`](./contracts/polygon-137/0x1ffbf1160764aa96b016d9124646e8c78cf46488/) | ⚠️ Unaudited |
| WrappedEthRouter | unknown | ethereum | n/a | [`0x137f48d01459944fefc1f637feeafe49c0f6e69c`](./contracts/ethereum-1/0x137f48d01459944fefc1f637feeafe49c0f6e69c/) | ⚠️ Unaudited |

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
| [Rendered PDF capture](https://2356525178-files.gitbook.io/~/files/v0/b/gitbook-legacy-files/o/assets%2F-MZxPgaEAx6qALhvK9dz%2F-MeQPVj2lfzFokn8pVdf%2F-MeQQbEsv7rRnS9IUpNp%2FClipper%20-%20Report%20(Quantstamp).pdf) | Quantstamp | Audit | 2021-05 | stale | Direct | contract_name | 1 | high |
| [Rendered PDF capture](https://2356525178-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-MZxPgaEAx6qALhvK9dz%2Fuploads%2FgKn8GiO5Smfnub8EoByN%2FAudit%20Report%20-%20AdmiralDAO%20Sail%20Token.pdf) | unknown | Audit | 2023-08 | stale | Direct | n/a | 0 | n/a |
| [Rendered PDF capture](https://2356525178-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-MZxPgaEAx6qALhvK9dz%2Fuploads%2FbIKOLmSOkmQEjMkyEuH3%2FClipper%20-%20RFQ%20Report%20(Solidified)%20.pdf) | unknown | Audit | 2021-11 | stale | Direct | contract_name | 2 | high |
| [Rendered PDF capture](https://2356525178-files.gitbook.io/~/files/v0/b/gitbook-legacy-files/o/assets%2F-MZxPgaEAx6qALhvK9dz%2F-MeRSHTtRzJdRmITR5HS%2F-MeRSMu1QaF-AvqWDc01%2FClipper%20-%20Report%20(Solidified).pdf) | unknown | Audit | 2021-07 | stale | Direct | contract_name | 1 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x655edce464cc797526600a462a8154650eee4b77`](./contracts/ethereum-1/0x655edce464cc797526600a462a8154650eee4b77/) | ClipperApproximateCaravelExchange | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcc12532e95c2a6a4c53af153b9b739a3cc9218a7`](./contracts/ethereum-1/0xcc12532e95c2a6a4c53af153b9b739a3cc9218a7/) | ClipperCaravelExchange | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x08f7e9458a341db71d2abbe32e2b5a2c727d4be8`](./contracts/base-8453/0x08f7e9458a341db71d2abbe32e2b5a2c727d4be8/) | ClipperCove | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2e9c6dcdca22a5952a88c4b18edb5b54c5155bc9`](./contracts/ethereum-1/0x2e9c6dcdca22a5952a88c4b18edb5b54c5155bc9/) | ClipperExchangeInterface | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3f7c9c7d9e69d0cfbfd6f009cc59ae341f68b738`](./contracts/ethereum-1/0x3f7c9c7d9e69d0cfbfd6f009cc59ae341f68b738/) | ClipperExecutor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x08b4b3be5bfab1be319599ce8e41c3da7fe7f3f8`](./contracts/optimism-10/0x08b4b3be5bfab1be319599ce8e41c3da7fe7f3f8/) | ClipperFarmingHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xdbd4ffc32b34f630dd8ac18d37162ec8462db7db`](./contracts/optimism-10/0xdbd4ffc32b34f630dd8ac18d37162ec8462db7db/) | ClipperPackedExchange | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x5130f6ce257b8f9bf7fac0a0b519bd588120ed40`](./contracts/optimism-10/0x5130f6ce257b8f9bf7fac0a0b519bd588120ed40/) | ClipperPackedVerifiedExchange | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x41c5362adf3a2cf6815454f7633172e7f6c1f834`](./contracts/base-8453/0x41c5362adf3a2cf6815454f7633172e7f6c1f834/) | ClipperPermitRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe82906b6b1b04f631d126c974af57a3a7b6a99d9`](./contracts/ethereum-1/0xe82906b6b1b04f631d126c974af57a3a7b6a99d9/) | ClipperPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x84f4625c3e92b368e403cb002a9bf9bc7a9ae1b9`](./contracts/ethereum-1/0x84f4625c3e92b368e403cb002a9bf9bc7a9ae1b9/) | ClipperProtocolDeposit | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x235d3afac42f5e5ff346cb6c19af13194988551f`](./contracts/ethereum-1/0x235d3afac42f5e5ff346cb6c19af13194988551f/) | ClipperResolver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf0f455e8b8f4f96ae5109493c5d3ea5e2c09de47`](./contracts/ethereum-1/0xf0f455e8b8f4f96ae5109493c5d3ea5e2c09de47/) | ClipperRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x12bb166f997146d3d33645146eedbc4a923195d7`](./contracts/ethereum-1/0x12bb166f997146d3d33645146eedbc4a923195d7/) | ClipperTransferHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe7b0ce0526fbe3969035a145c9e9691d4d9d216c`](./contracts/ethereum-1/0xe7b0ce0526fbe3969035a145c9e9691d4d9d216c/) | ClipperVerifiedCaravelExchange | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x6bfce69d1df30fd2b2c8e478edec9daa643ae3b8`](./contracts/polygon-137/0x6bfce69d1df30fd2b2c8e478edec9daa643ae3b8/) | ClipperVerifiedExchange | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xb52bd62ee0cf462fa9ccbda4bf27fe84d9ab6cf7`](./contracts/arbitrum-42161/0xb52bd62ee0cf462fa9ccbda4bf27fe84d9ab6cf7/) | ClonableBeaconProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdb83e7f92d919f8475f5a520bbe0d509327a6e41`](./contracts/ethereum-1/0xdb83e7f92d919f8475f5a520bbe0d509327a6e41/) | CollectionContract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xd1a718f77ab5d22e3955050658d7f65ae857a85e`](./contracts/polygon-137/0xd1a718f77ab5d22e3955050658d7f65ae857a85e/) | FxERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3c7840e80beb3642043273cf7bf01944a8dfed3c`](./contracts/ethereum-1/0x3c7840e80beb3642043273cf7bf01944a8dfed3c/) | LinearVestingVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x840e960c9c0989929160361b73ff9acd9b8ff003`](./contracts/polygon-137/0x840e960c9c0989929160361b73ff9acd9b8ff003/) | Longship | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x21995cb3c92c99de3876517c6fabe32d830e30ca`](./contracts/polygon-137/0x21995cb3c92c99de3876517c6fabe32d830e30ca/) | LongshipFrontendUtils | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x35242f4a0067ff0e992e7a262c29dfd8874bcd60`](./contracts/polygon-137/0x35242f4a0067ff0e992e7a262c29dfd8874bcd60/) | LongshipParent | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x4c16dd6e9b402ea4fb5be647be2f49e3d59bb08a`](./contracts/arbitrum-42161/0x4c16dd6e9b402ea4fb5be647be2f49e3d59bb08a/) | LPTransfer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x205e8c5b8b9ab41e934ebf394aa319ccbdedd3bb`](./contracts/ethereum-1/0x205e8c5b8b9ab41e934ebf394aa319ccbdedd3bb/) | MainnetLPTransferFromOldClipper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x7a1263ec3bf0a19e25c553b8a2c312e903262c5e`](./contracts/optimism-10/0x7a1263ec3bf0a19e25c553b8a2c312e903262c5e/) | OptimismSailToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x238cc13495b30d0b8f2df3d646af443c17063c22`](./contracts/ethereum-1/0x238cc13495b30d0b8f2df3d646af443c17063c22/) | PublicCollectionContract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd8f1460044925d2d5c723c7054cd9247027415b7`](./contracts/ethereum-1/0xd8f1460044925d2d5c723c7054cd9247027415b7/) | SailToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd0454428ecd868a9ac615125fcbdb5da9027436e`](./contracts/ethereum-1/0xd0454428ecd868a9ac615125fcbdb5da9027436e/) | SplitFeeFarm | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x26fe2f89a1fef1bc90b8a89d8ad18a1891166ff5`](./contracts/ethereum-1/0x26fe2f89a1fef1bc90b8a89d8ad18a1891166ff5/) | veSAIL | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x1ffbf1160764aa96b016d9124646e8c78cf46488`](./contracts/polygon-137/0x1ffbf1160764aa96b016d9124646e8c78cf46488/) | VestingMerkleDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x137f48d01459944fefc1f637feeafe49c0f6e69c`](./contracts/ethereum-1/0x137f48d01459944fefc1f637feeafe49c0f6e69c/) | WrappedEthRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 35 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=3
- Match method counts: extraction_exact=4

Zero-match audit list:

- [19644] Rendered PDF capture

Fork inheritance lineage and inherited audits are included when available.
