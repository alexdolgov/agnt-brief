# Agentic Audit Brief: Juicebox

## Project Overview

- Project: Juicebox (`juicebox`)
- Website: [https://juicebox.money/](https://juicebox.money/)
- Lifecycle: active (Tier 0, 57.8% below peak)
- Generated: 2026-05-31T08:34:00.682Z
- Pipeline run: v2-pipeline-2026-05-31-ab6275-1b32
- Chains: arbitrum, base, chain-11155111, chain-11155420, chain-421614, chain-84532, ethereum, optimism
- Contract surface: 77 unique implementations (236 raw deployments)
- DeFi Llama TVL: $11,041,334.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Juicebox is a programmable treasury protocol that enables projects to raise funds, manage payouts, and issue tokens through configurable funding cycles. It supports multi-chain deployments, NFT-based contribution tiers, and cross-chain treasury operations.

### Architecture

The Juicebox Core family provides shared infrastructure (controller, tokens, rulesets, splits) used by all other families. Payment Terminals, Hooks, and Swap Terminal extend the core payment flow, while Suckers and Omnichain Deployers enable cross-chain expansion, all relying on the core registry and permission systems.

## Audit Coverage Summary

- Verified implementations audited: 4/68 (5.9%)
- Verified + Unaudited implementations: 64
- Verified by bytecode match: 0
- Unverified implementations: 9
- Unique implementations: 77
- Raw deployments: 236
- Audits discovered: 1
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 4 | 5.9% | 2022 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| JBController | governance | ethereum | 8 deployments: ethereum [`0x27da30...f7668a`](./contracts/ethereum-1/0x27da30646502e2f642be5281322ae8c394f7668a/); ethereum `0xf3cc99...9987e1`; optimism [`0x27da30...f7668a`](./contracts/optimism-10/0x27da30646502e2f642be5281322ae8c394f7668a/); optimism `0xf3cc99...9987e1`; base [`0x27da30...f7668a`](./contracts/base-8453/0x27da30646502e2f642be5281322ae8c394f7668a/); base `0xf3cc99...9987e1`; arbitrum [`0x27da30...f7668a`](./contracts/arbitrum-42161/0x27da30646502e2f642be5281322ae8c394f7668a/); arbitrum `0xf3cc99...9987e1` | ✅ Audited |
| JBDirectory | unknown | ethereum | 5 deployments: ethereum [`0x0061e5...651dcf`](./contracts/ethereum-1/0x0061e516886a0540f63157f112c0588ee0651dcf/); ethereum `0xcc8f7a...79ac9c`; optimism [`0x0061e5...651dcf`](./contracts/optimism-10/0x0061e516886a0540f63157f112c0588ee0651dcf/); base [`0x0061e5...651dcf`](./contracts/base-8453/0x0061e516886a0540f63157f112c0588ee0651dcf/); arbitrum [`0x0061e5...651dcf`](./contracts/arbitrum-42161/0x0061e516886a0540f63157f112c0588ee0651dcf/) | ✅ Audited |
| JBETHPaymentTerminal | unknown | ethereum | 2 deployments: ethereum [`0x594cb2...64ec63`](./contracts/ethereum-1/0x594cb208b5bb48db1bcbc9354d1694998864ec63/); ethereum `0x7ae63f...3b8397` | ✅ Audited |
| JBProjects | unknown | ethereum | 4 deployments: ethereum [`0x885f70...c8c1d4`](./contracts/ethereum-1/0x885f707efa18d2cb12f05a3a8eba6b4b26c8c1d4/); optimism [`0x885f70...c8c1d4`](./contracts/optimism-10/0x885f707efa18d2cb12f05a3a8eba6b4b26c8c1d4/); base [`0x885f70...c8c1d4`](./contracts/base-8453/0x885f707efa18d2cb12f05a3a8eba6b4b26c8c1d4/); arbitrum [`0x885f70...c8c1d4`](./contracts/arbitrum-42161/0x885f707efa18d2cb12f05a3a8eba6b4b26c8c1d4/) | ✅ Audited |

### ⚠️ Verified + Unaudited (64)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| CTDeployer | unknown | ethereum | 4 deployments: ethereum [`0xc3c266...e5d8ea`](./contracts/ethereum-1/0xc3c26682ef39a4a5f4a1dc2459a6fbcba4e5d8ea/); optimism [`0xc3c266...e5d8ea`](./contracts/optimism-10/0xc3c26682ef39a4a5f4a1dc2459a6fbcba4e5d8ea/); base [`0xc3c266...e5d8ea`](./contracts/base-8453/0xc3c26682ef39a4a5f4a1dc2459a6fbcba4e5d8ea/); arbitrum [`0xc3c266...e5d8ea`](./contracts/arbitrum-42161/0xc3c26682ef39a4a5f4a1dc2459a6fbcba4e5d8ea/) | ⚠️ Unaudited |
| CTProjectOwner | unknown | ethereum | 4 deployments: ethereum [`0x127fa6...690883`](./contracts/ethereum-1/0x127fa6d4d0a4e791c6c4adaa4c9ad97127690883/); optimism [`0x127fa6...690883`](./contracts/optimism-10/0x127fa6d4d0a4e791c6c4adaa4c9ad97127690883/); base [`0x127fa6...690883`](./contracts/base-8453/0x127fa6d4d0a4e791c6c4adaa4c9ad97127690883/); arbitrum [`0x127fa6...690883`](./contracts/arbitrum-42161/0x127fa6d4d0a4e791c6c4adaa4c9ad97127690883/) | ⚠️ Unaudited |
| CTPublisher | unknown | ethereum | 4 deployments: ethereum [`0x03ef9e...20ee24`](./contracts/ethereum-1/0x03ef9ea1467df70d4b1e1d619aa9a2a2f820ee24/); optimism [`0x03ef9e...20ee24`](./contracts/optimism-10/0x03ef9ea1467df70d4b1e1d619aa9a2a2f820ee24/); base [`0x03ef9e...20ee24`](./contracts/base-8453/0x03ef9ea1467df70d4b1e1d619aa9a2a2f820ee24/); arbitrum [`0x03ef9e...20ee24`](./contracts/arbitrum-42161/0x03ef9ea1467df70d4b1e1d619aa9a2a2f820ee24/) | ⚠️ Unaudited |
| ERC2771Forwarder | unknown | ethereum | 4 deployments: ethereum [`0xc29d69...cbb566`](./contracts/ethereum-1/0xc29d6995ab3b0df4650ad643adeac55e7acbb566/); optimism [`0xc29d69...cbb566`](./contracts/optimism-10/0xc29d6995ab3b0df4650ad643adeac55e7acbb566/); base [`0xc29d69...cbb566`](./contracts/base-8453/0xc29d6995ab3b0df4650ad643adeac55e7acbb566/); arbitrum [`0xc29d69...cbb566`](./contracts/arbitrum-42161/0xc29d6995ab3b0df4650ad643adeac55e7acbb566/) | ⚠️ Unaudited |
| JB721GlobalGovernance | unknown | ethereum | [`0x50cd1e...fe6f80`](./contracts/ethereum-1/0x50cd1e33f818d402a9fd406b5b3fbc88f1fe6f80/) | ⚠️ Unaudited |
| JB721TieredGovernance | unknown | ethereum | [`0xf27aaa...a4209f`](./contracts/ethereum-1/0xf27aaa1240a09f2a995542e6bd38b52125a4209f/) | ⚠️ Unaudited |
| JB721TiersHook | unknown | ethereum | 4 deployments: ethereum [`0x749ac9...8eb25b`](./contracts/ethereum-1/0x749ac9c5ef5ef41f402c70a5bc460c5a1d8eb25b/); optimism [`0x749ac9...8eb25b`](./contracts/optimism-10/0x749ac9c5ef5ef41f402c70a5bc460c5a1d8eb25b/); base [`0x749ac9...8eb25b`](./contracts/base-8453/0x749ac9c5ef5ef41f402c70a5bc460c5a1d8eb25b/); arbitrum [`0x749ac9...8eb25b`](./contracts/arbitrum-42161/0x749ac9c5ef5ef41f402c70a5bc460c5a1d8eb25b/) | ⚠️ Unaudited |
| JB721TiersHookDeployer | unknown | ethereum | 8 deployments: ethereum [`0x792bdd...6d2732`](./contracts/ethereum-1/0x792bdd4dd1e52fcf8fb3e80278a2b4e4396d2732/); ethereum `0xef6087...d41ca7`; optimism [`0x792bdd...6d2732`](./contracts/optimism-10/0x792bdd4dd1e52fcf8fb3e80278a2b4e4396d2732/); optimism `0xef6087...d41ca7`; base [`0x792bdd...6d2732`](./contracts/base-8453/0x792bdd4dd1e52fcf8fb3e80278a2b4e4396d2732/); base `0xef6087...d41ca7`; arbitrum [`0x792bdd...6d2732`](./contracts/arbitrum-42161/0x792bdd4dd1e52fcf8fb3e80278a2b4e4396d2732/); arbitrum `0xef6087...d41ca7` | ⚠️ Unaudited |
| JB721TiersHookProjectDeployer | unknown | ethereum | 8 deployments: ethereum [`0x048626...0e725a`](./contracts/ethereum-1/0x048626e715a194fc38dd9be12f516b54b10e725a/); ethereum `0xeb15c1...c9a7f8`; optimism [`0x048626...0e725a`](./contracts/optimism-10/0x048626e715a194fc38dd9be12f516b54b10e725a/); optimism `0xeb15c1...c9a7f8`; base [`0x048626...0e725a`](./contracts/base-8453/0x048626e715a194fc38dd9be12f516b54b10e725a/); base `0xeb15c1...c9a7f8`; arbitrum [`0x048626...0e725a`](./contracts/arbitrum-42161/0x048626e715a194fc38dd9be12f516b54b10e725a/); arbitrum `0xeb15c1...c9a7f8` | ⚠️ Unaudited |
| JB721TiersHookStore | unknown | ethereum | 4 deployments: ethereum [`0x2bc696...eba8ee`](./contracts/ethereum-1/0x2bc696b0af74042b30b2687ab5817cc824eba8ee/); optimism [`0x2bc696...eba8ee`](./contracts/optimism-10/0x2bc696b0af74042b30b2687ab5817cc824eba8ee/); base [`0x2bc696...eba8ee`](./contracts/base-8453/0x2bc696b0af74042b30b2687ab5817cc824eba8ee/); arbitrum [`0x2bc696...eba8ee`](./contracts/arbitrum-42161/0x2bc696b0af74042b30b2687ab5817cc824eba8ee/) | ⚠️ Unaudited |
| JBArbitrumSuckerDeployer | unknown | ethereum | 2 deployments: ethereum [`0xea06bd...5c9699`](./contracts/ethereum-1/0xea06bd663a1cec97b5bdec9375ab9a63695c9699/); arbitrum [`0xea06bd...5c9699`](./contracts/arbitrum-42161/0xea06bd663a1cec97b5bdec9375ab9a63695c9699/) | ⚠️ Unaudited |
| JBBaseSuckerDeployer | unknown | ethereum | 2 deployments: ethereum [`0xd9f35d...947efd`](./contracts/ethereum-1/0xd9f35d8dd36046f14479e6dced03733724947efd/); base [`0xd9f35d...947efd`](./contracts/base-8453/0xd9f35d8dd36046f14479e6dced03733724947efd/) | ⚠️ Unaudited |
| JBBuybackDelegate | unknown | ethereum | 2 deployments: ethereum [`0x6338b5...c8a868`](./contracts/ethereum-1/0x6338b523fc355197e6f723bf10c0cc2da7c8a868/); ethereum `0xf4bf4d...529f03` | ⚠️ Unaudited |
| JBBuybackHook | unknown | optimism | 4 deployments: ethereum `0xd34249...fe0f9b`; optimism [`0x318f8a...7824f3`](./contracts/optimism-10/0x318f8aa6a95cb83419985c0d797c762f5a7824f3/); base `0xb6133a...51d088`; arbitrum `0x4ac3e2...4f0320` | ⚠️ Unaudited |
| JBBuybackHookRegistry | registry | ethereum | 4 deployments: ethereum [`0x9e1e0f...a12b1a`](./contracts/ethereum-1/0x9e1e0fb70bc4661f2cc2d5eddd87a9d582a12b1a/); optimism [`0x9e1e0f...a12b1a`](./contracts/optimism-10/0x9e1e0fb70bc4661f2cc2d5eddd87a9d582a12b1a/); base [`0x9e1e0f...a12b1a`](./contracts/base-8453/0x9e1e0fb70bc4661f2cc2d5eddd87a9d582a12b1a/); arbitrum [`0x9e1e0f...a12b1a`](./contracts/arbitrum-42161/0x9e1e0fb70bc4661f2cc2d5eddd87a9d582a12b1a/) | ⚠️ Unaudited |
| JBCCIPSuckerDeployer | unknown | ethereum | 12 deployments: ethereum [`0x172ad9...761816`](./contracts/ethereum-1/0x172ad9b3df724ee0422ea85b7799a3f7ca761816/); ethereum `0x195b4d...f88814`; ethereum `0xf816d2...ca4bcf`; optimism [`0x172ad9...761816`](./contracts/optimism-10/0x172ad9b3df724ee0422ea85b7799a3f7ca761816/); optimism `0x586839...4a3d7d`; optimism `0xaa0dbd...c8bcd1`; base `0x195b4d...f88814`; base `0x586839...4a3d7d`; base `0xc295a8...88c8a7`; arbitrum `0xaa0dbd...c8bcd1`; arbitrum `0xc295a8...88c8a7`; arbitrum `0xf816d2...ca4bcf` | ⚠️ Unaudited |
| JBChainlinkV3PriceFeed | operational_periphery | ethereum | [`0x6ed8ee...28bba4`](./contracts/ethereum-1/0x6ed8eedc0689bd6a8c7168301897a0113c28bba4/) | ⚠️ Unaudited |
| JBChainlinkV3SequencerPriceFeed | operational_periphery | optimism | 3 deployments: optimism [`0x6ed8ee...28bba4`](./contracts/optimism-10/0x6ed8eedc0689bd6a8c7168301897a0113c28bba4/); base [`0x6ed8ee...28bba4`](./contracts/base-8453/0x6ed8eedc0689bd6a8c7168301897a0113c28bba4/); arbitrum [`0x6ed8ee...28bba4`](./contracts/arbitrum-42161/0x6ed8eedc0689bd6a8c7168301897a0113c28bba4/) | ⚠️ Unaudited |
| JBController3_0_1 | governance | ethereum | [`0xa139d3...8cb7b6`](./contracts/ethereum-1/0xa139d37275d1ff7275e6f33821898934bc8cb7b6/) | ⚠️ Unaudited |
| JBController3_1 | governance | ethereum | 2 deployments: ethereum [`0x328348...7b6768`](./contracts/ethereum-1/0x32834829927d872869918e5f415f9732bd7b6768/); ethereum `0x97a5b9...4bb59b` | ⚠️ Unaudited |
| JBDeadline1Day | unknown | ethereum | 4 deployments: ethereum [`0xcffdd1...b924d7`](./contracts/ethereum-1/0xcffdd1303f24145bd2c84e7bf15af1eb6ab924d7/); optimism [`0xcffdd1...b924d7`](./contracts/optimism-10/0xcffdd1303f24145bd2c84e7bf15af1eb6ab924d7/); base [`0xcffdd1...b924d7`](./contracts/base-8453/0xcffdd1303f24145bd2c84e7bf15af1eb6ab924d7/); arbitrum [`0xcffdd1...b924d7`](./contracts/arbitrum-42161/0xcffdd1303f24145bd2c84e7bf15af1eb6ab924d7/) | ⚠️ Unaudited |
| JBDeadline3Days | unknown | ethereum | 4 deployments: ethereum [`0x09b23b...17111b`](./contracts/ethereum-1/0x09b23b09af88bb6d7e9c957ff9f861f1c917111b/); optimism [`0x09b23b...17111b`](./contracts/optimism-10/0x09b23b09af88bb6d7e9c957ff9f861f1c917111b/); base [`0x09b23b...17111b`](./contracts/base-8453/0x09b23b09af88bb6d7e9c957ff9f861f1c917111b/); arbitrum [`0x09b23b...17111b`](./contracts/arbitrum-42161/0x09b23b09af88bb6d7e9c957ff9f861f1c917111b/) | ⚠️ Unaudited |
| JBDeadline3Hours | unknown | ethereum | 4 deployments: ethereum [`0x4eeb65...71799a`](./contracts/ethereum-1/0x4eeb65e13ade86155d169ba1fabd06828171799a/); optimism [`0x4eeb65...71799a`](./contracts/optimism-10/0x4eeb65e13ade86155d169ba1fabd06828171799a/); base [`0x4eeb65...71799a`](./contracts/base-8453/0x4eeb65e13ade86155d169ba1fabd06828171799a/); arbitrum [`0x4eeb65...71799a`](./contracts/arbitrum-42161/0x4eeb65e13ade86155d169ba1fabd06828171799a/) | ⚠️ Unaudited |
| JBDeadline7Days | unknown | ethereum | 4 deployments: ethereum [`0xdf911b...636031`](./contracts/ethereum-1/0xdf911b94712cf117fb63b69838b16e1710636031/); optimism [`0xdf911b...636031`](./contracts/optimism-10/0xdf911b94712cf117fb63b69838b16e1710636031/); base [`0xdf911b...636031`](./contracts/base-8453/0xdf911b94712cf117fb63b69838b16e1710636031/); arbitrum [`0xdf911b...636031`](./contracts/arbitrum-42161/0xdf911b94712cf117fb63b69838b16e1710636031/) | ⚠️ Unaudited |
| JBDelegatesRegistry | registry | ethereum | [`0x33265d...f24221`](./contracts/ethereum-1/0x33265d9ead1291faa981a177278df8053af24221/) | ⚠️ Unaudited |
| JBERC20 | token | ethereum | 4 deployments: ethereum [`0xaeac45...be5d31`](./contracts/ethereum-1/0xaeac450c8522e40244bdfb8120ee398207be5d31/); optimism [`0xaeac45...be5d31`](./contracts/optimism-10/0xaeac450c8522e40244bdfb8120ee398207be5d31/); base [`0xaeac45...be5d31`](./contracts/base-8453/0xaeac450c8522e40244bdfb8120ee398207be5d31/); arbitrum [`0xaeac45...be5d31`](./contracts/arbitrum-42161/0xaeac450c8522e40244bdfb8120ee398207be5d31/) | ⚠️ Unaudited |
| JBETHERC20ProjectPayerDeployer | token | ethereum | [`0xa5ca9c...ba5b43`](./contracts/ethereum-1/0xa5ca9cea71df4b680484e5ff753a1b1185ba5b43/) | ⚠️ Unaudited |
| JBETHERC20SplitsPayerDeployer | token | ethereum | [`0x3ff1f0...3f7c27`](./contracts/ethereum-1/0x3ff1f0583a41ce8b9463f74a1227c75fc13f7c27/) | ⚠️ Unaudited |
| JBETHPaymentTerminal3_1 | unknown | ethereum | [`0xfa391d...607a5c`](./contracts/ethereum-1/0xfa391de95fcbcd3157268b91d8c7af083e607a5c/) | ⚠️ Unaudited |
| JBETHPaymentTerminal3_1_1 | unknown | ethereum | [`0x457cd6...c0d573`](./contracts/ethereum-1/0x457cd63bee88ac01f3cd4a67d5dcc921d8c0d573/) | ⚠️ Unaudited |
| JBETHPaymentTerminal3_1_2 | unknown | ethereum | [`0x1d9619...680cc0`](./contracts/ethereum-1/0x1d9619e10086fdc1065b114298384aae3f680cc0/) | ⚠️ Unaudited |
| JBFeelessAddresses | unknown | ethereum | 4 deployments: ethereum [`0xfc702a...d91d53`](./contracts/ethereum-1/0xfc702a0190f3edbc369208dfe77bf273add91d53/); optimism [`0xfc702a...d91d53`](./contracts/optimism-10/0xfc702a0190f3edbc369208dfe77bf273add91d53/); base [`0xfc702a...d91d53`](./contracts/base-8453/0xfc702a0190f3edbc369208dfe77bf273add91d53/); arbitrum [`0xfc702a...d91d53`](./contracts/arbitrum-42161/0xfc702a0190f3edbc369208dfe77bf273add91d53/) | ⚠️ Unaudited |
| JBFundAccessConstraintsStore | unknown | ethereum | [`0xa4425a...f89e30`](./contracts/ethereum-1/0xa4425a1e5b7b28cb689719b1428e3088c1f89e30/) | ⚠️ Unaudited |
| JBFundAccessLimits | unknown | ethereum | 4 deployments: ethereum [`0x3a46b2...497ce7`](./contracts/ethereum-1/0x3a46b21720c8b70184b0434a2293b2fdcc497ce7/); optimism [`0x3a46b2...497ce7`](./contracts/optimism-10/0x3a46b21720c8b70184b0434a2293b2fdcc497ce7/); base [`0x3a46b2...497ce7`](./contracts/base-8453/0x3a46b21720c8b70184b0434a2293b2fdcc497ce7/); arbitrum [`0x3a46b2...497ce7`](./contracts/arbitrum-42161/0x3a46b21720c8b70184b0434a2293b2fdcc497ce7/) | ⚠️ Unaudited |
| JBGenericBuybackDelegate | unknown | ethereum | [`0x6b700b...aada08`](./contracts/ethereum-1/0x6b700b54bbf7a93f453ffbf58df0fe1ab2aada08/) | ⚠️ Unaudited |
| JBMatchingPriceFeed | operational_periphery | ethereum | 4 deployments: ethereum [`0x6fbf8d...9e138a`](./contracts/ethereum-1/0x6fbf8dc66b1879ff0ae243500f8b1e6f6d9e138a/); optimism [`0x6fbf8d...9e138a`](./contracts/optimism-10/0x6fbf8dc66b1879ff0ae243500f8b1e6f6d9e138a/); base [`0x6fbf8d...9e138a`](./contracts/base-8453/0x6fbf8dc66b1879ff0ae243500f8b1e6f6d9e138a/); arbitrum [`0x6fbf8d...9e138a`](./contracts/arbitrum-42161/0x6fbf8dc66b1879ff0ae243500f8b1e6f6d9e138a/) | ⚠️ Unaudited |
| JBMigrationOperator | operational_periphery | ethereum | [`0x004d50...e47b52`](./contracts/ethereum-1/0x004d50e8552f7e811e7df913a3205abf48e47b52/) | ⚠️ Unaudited |
| JBMultiTerminal | unknown | ethereum | 8 deployments: ethereum [`0x2db6d7...361846`](./contracts/ethereum-1/0x2db6d704058e552defe415753465df8df0361846/); ethereum `0x52869d...cd371c`; optimism [`0x2db6d7...361846`](./contracts/optimism-10/0x2db6d704058e552defe415753465df8df0361846/); optimism `0x52869d...cd371c`; base [`0x2db6d7...361846`](./contracts/base-8453/0x2db6d704058e552defe415753465df8df0361846/); base `0x52869d...cd371c`; arbitrum [`0x2db6d7...361846`](./contracts/arbitrum-42161/0x2db6d704058e552defe415753465df8df0361846/); arbitrum `0x52869d...cd371c` | ⚠️ Unaudited |
| JBOmnichainDeployer | unknown | ethereum | 8 deployments: ethereum [`0x587bf8...c2fc71`](./contracts/ethereum-1/0x587bf86677ec0d1b766d9ba0d7ac2a51c6c2fc71/); ethereum `0x8f5ded...101590`; optimism [`0x587bf8...c2fc71`](./contracts/optimism-10/0x587bf86677ec0d1b766d9ba0d7ac2a51c6c2fc71/); optimism `0x8f5ded...101590`; base [`0x587bf8...c2fc71`](./contracts/base-8453/0x587bf86677ec0d1b766d9ba0d7ac2a51c6c2fc71/); base `0x8f5ded...101590`; arbitrum [`0x587bf8...c2fc71`](./contracts/arbitrum-42161/0x587bf86677ec0d1b766d9ba0d7ac2a51c6c2fc71/); arbitrum `0x8f5ded...101590` | ⚠️ Unaudited |
| JBOptimismSuckerDeployer | unknown | ethereum | 2 deployments: ethereum [`0x77cdb0...cc3057`](./contracts/ethereum-1/0x77cdb0f5eef8febd67dd6e594ff654fb12cc3057/); optimism [`0x77cdb0...cc3057`](./contracts/optimism-10/0x77cdb0f5eef8febd67dd6e594ff654fb12cc3057/) | ⚠️ Unaudited |
| JBPermissions | unknown | ethereum | 4 deployments: ethereum [`0x04fd69...a7793d`](./contracts/ethereum-1/0x04fd6913d6c32d8c216e153a43c04b1857a7793d/); optimism [`0x04fd69...a7793d`](./contracts/optimism-10/0x04fd6913d6c32d8c216e153a43c04b1857a7793d/); base [`0x04fd69...a7793d`](./contracts/base-8453/0x04fd6913d6c32d8c216e153a43c04b1857a7793d/); arbitrum [`0x04fd69...a7793d`](./contracts/arbitrum-42161/0x04fd6913d6c32d8c216e153a43c04b1857a7793d/) | ⚠️ Unaudited |
| JBPrices | operational_periphery | ethereum | 4 deployments: ethereum [`0x9b90e5...e614c4`](./contracts/ethereum-1/0x9b90e507cf6b7eb681a506b111f6f50245e614c4/); optimism [`0x9b90e5...e614c4`](./contracts/optimism-10/0x9b90e507cf6b7eb681a506b111f6f50245e614c4/); base [`0x9b90e5...e614c4`](./contracts/base-8453/0x9b90e507cf6b7eb681a506b111f6f50245e614c4/); arbitrum [`0x9b90e5...e614c4`](./contracts/arbitrum-42161/0x9b90e507cf6b7eb681a506b111f6f50245e614c4/) | ⚠️ Unaudited |
| JBProjectHandles | unknown | ethereum | [`0xd75d2e...b0a3a4`](./contracts/ethereum-1/0xd75d2eef7fe65bf9f46d7ef0b21eded98cb0a3a4/) | ⚠️ Unaudited |
| JBReconfigurationBufferBallot | governance | ethereum | [`0xa2154a...d0fdc6`](./contracts/ethereum-1/0xa2154abd135be068540073cb4390139906d0fdc6/) | ⚠️ Unaudited |
| JBRulesets | unknown | ethereum | 4 deployments: ethereum [`0x629228...6ab428`](./contracts/ethereum-1/0x6292281d69c3593fcf6ea074e5797341476ab428/); optimism [`0x629228...6ab428`](./contracts/optimism-10/0x6292281d69c3593fcf6ea074e5797341476ab428/); base [`0x629228...6ab428`](./contracts/base-8453/0x6292281d69c3593fcf6ea074e5797341476ab428/); arbitrum [`0x629228...6ab428`](./contracts/arbitrum-42161/0x6292281d69c3593fcf6ea074e5797341476ab428/) | ⚠️ Unaudited |
| JBRulesets5_1 | unknown | ethereum | 4 deployments: ethereum [`0xd42570...14b056`](./contracts/ethereum-1/0xd4257005ca8d27bbe11f356453b0e4692414b056/); optimism [`0xd42570...14b056`](./contracts/optimism-10/0xd4257005ca8d27bbe11f356453b0e4692414b056/); base [`0xd42570...14b056`](./contracts/base-8453/0xd4257005ca8d27bbe11f356453b0e4692414b056/); arbitrum [`0xd42570...14b056`](./contracts/arbitrum-42161/0xd4257005ca8d27bbe11f356453b0e4692414b056/) | ⚠️ Unaudited |
| JBSingleTokenPaymentTerminalStore3_1 | token | ethereum | [`0x77b0a8...950336`](./contracts/ethereum-1/0x77b0a81aeb61d08c0b23c739969d22c5c9950336/) | ⚠️ Unaudited |
| JBSingleTokenPaymentTerminalStore3_1_1 | token | ethereum | [`0x82129d...7919f5`](./contracts/ethereum-1/0x82129d4109625f94582bddf6101a8cd1a27919f5/) | ⚠️ Unaudited |
| JBSplits | unknown | ethereum | 4 deployments: ethereum [`0x7160a3...df3c5e`](./contracts/ethereum-1/0x7160a322fea44945a6ef9adfd65c322258df3c5e/); optimism [`0x7160a3...df3c5e`](./contracts/optimism-10/0x7160a322fea44945a6ef9adfd65c322258df3c5e/); base [`0x7160a3...df3c5e`](./contracts/base-8453/0x7160a322fea44945a6ef9adfd65c322258df3c5e/); arbitrum [`0x7160a3...df3c5e`](./contracts/arbitrum-42161/0x7160a322fea44945a6ef9adfd65c322258df3c5e/) | ⚠️ Unaudited |
| JBSuckerRegistry | registry | ethereum | 4 deployments: ethereum [`0x07c8c5...24ece3`](./contracts/ethereum-1/0x07c8c5bf08f0361883728a8a5f8824ba5724ece3/); optimism [`0x07c8c5...24ece3`](./contracts/optimism-10/0x07c8c5bf08f0361883728a8a5f8824ba5724ece3/); base [`0x07c8c5...24ece3`](./contracts/base-8453/0x07c8c5bf08f0361883728a8a5f8824ba5724ece3/); arbitrum [`0x07c8c5...24ece3`](./contracts/arbitrum-42161/0x07c8c5bf08f0361883728a8a5f8824ba5724ece3/) | ⚠️ Unaudited |
| JBSwapTerminal | unknown | ethereum | 4 deployments: ethereum [`0x259385...b145dd`](./contracts/ethereum-1/0x259385b97dfbd5576bd717dc7b25967ec8b145dd/); optimism `0x73d045...aad774`; base `0x4fd73d...832edd`; arbitrum `0x483c9b...c752ad` | ⚠️ Unaudited |
| JBSwapTerminal5_1 | unknown | arbitrum | 4 deployments: ethereum `0x642f6f...378f80`; optimism `0x7ba67a...f4a0ed`; base `0x7e000e...bee8ab`; arbitrum [`0x36379b...d99c08`](./contracts/arbitrum-42161/0x36379b28e67b73f5ae9e3de320ce1dbd7fd99c08/) | ⚠️ Unaudited |
| JBSwapTerminalRegistry | registry | ethereum | 8 deployments: ethereum [`0x1ce40d...167422`](./contracts/ethereum-1/0x1ce40d201cdec791de05810d17aaf501be167422/); ethereum `0x60b4f5...e6a4f6`; optimism [`0x1ce40d...167422`](./contracts/optimism-10/0x1ce40d201cdec791de05810d17aaf501be167422/); optimism `0x60b4f5...e6a4f6`; base [`0x1ce40d...167422`](./contracts/base-8453/0x1ce40d201cdec791de05810d17aaf501be167422/); base `0x60b4f5...e6a4f6`; arbitrum [`0x1ce40d...167422`](./contracts/arbitrum-42161/0x1ce40d201cdec791de05810d17aaf501be167422/); arbitrum `0x60b4f5...e6a4f6` | ⚠️ Unaudited |
| JBTerminalStore | token | ethereum | 8 deployments: ethereum [`0x5cdfcf...a1d964`](./contracts/ethereum-1/0x5cdfcf7f5f25da0dcb0eccd027e5feebada1d964/); ethereum `0xfe33b4...014744`; optimism [`0x5cdfcf...a1d964`](./contracts/optimism-10/0x5cdfcf7f5f25da0dcb0eccd027e5feebada1d964/); optimism `0xfe33b4...014744`; base [`0x5cdfcf...a1d964`](./contracts/base-8453/0x5cdfcf7f5f25da0dcb0eccd027e5feebada1d964/); base `0xfe33b4...014744`; arbitrum [`0x5cdfcf...a1d964`](./contracts/arbitrum-42161/0x5cdfcf7f5f25da0dcb0eccd027e5feebada1d964/); arbitrum `0xfe33b4...014744` | ⚠️ Unaudited |
| JBTiered721Delegate | unknown | ethereum | 2 deployments: ethereum [`0x2b9f2f...a99333`](./contracts/ethereum-1/0x2b9f2f30f722dd4917bd877d976adc4966a99333/); ethereum `0xb41f6c...ce436c` | ⚠️ Unaudited |
| JBTiered721DelegateDeployer | unknown | ethereum | 2 deployments: ethereum [`0x55ff1d...95fefc`](./contracts/ethereum-1/0x55ff1d8093166c1ff9664efd613d8c543b95fefc/); ethereum `0x5c9f2f...b6353b` | ⚠️ Unaudited |
| JBTiered721DelegateProjectDeployer | unknown | ethereum | 2 deployments: ethereum [`0xba6dc6...4ea056`](./contracts/ethereum-1/0xba6dc6c5a41e1fbe0e33d43884d3c0fd7e4ea056/); ethereum `0xfbd1b7...07fb3e` | ⚠️ Unaudited |
| JBTiered721DelegateStore | unknown | ethereum | [`0x8e3118...dc16ad`](./contracts/ethereum-1/0x8e3118fa2f90e8ae7da08c6d444bf93ef1dc16ad/) | ⚠️ Unaudited |
| JBTiered721GovernanceDelegate | unknown | ethereum | [`0x7bfcdb...5a3a66`](./contracts/ethereum-1/0x7bfcdb1649053919d65b17e0edd5068e535a3a66/) | ⚠️ Unaudited |
| JBTokens | token | ethereum | 4 deployments: ethereum [`0x4d0edd...e87636`](./contracts/ethereum-1/0x4d0edd347fb1fa21589c1e109b3474924be87636/); optimism [`0x4d0edd...e87636`](./contracts/optimism-10/0x4d0edd347fb1fa21589c1e109b3474924be87636/); base [`0x4d0edd...e87636`](./contracts/base-8453/0x4d0edd347fb1fa21589c1e109b3474924be87636/); arbitrum [`0x4d0edd...e87636`](./contracts/arbitrum-42161/0x4d0edd347fb1fa21589c1e109b3474924be87636/) | ⚠️ Unaudited |
| REVDeployer | unknown | ethereum | 4 deployments: ethereum [`0x2ca27b...de251d`](./contracts/ethereum-1/0x2ca27bde7e7d33e353b44c27acfcf6c78dde251d/); optimism [`0x2ca27b...de251d`](./contracts/optimism-10/0x2ca27bde7e7d33e353b44c27acfcf6c78dde251d/); base [`0x2ca27b...de251d`](./contracts/base-8453/0x2ca27bde7e7d33e353b44c27acfcf6c78dde251d/); arbitrum [`0x2ca27b...de251d`](./contracts/arbitrum-42161/0x2ca27bde7e7d33e353b44c27acfcf6c78dde251d/) | ⚠️ Unaudited |
| REVLoans | unknown | ethereum | 4 deployments: ethereum [`0x1880d8...d550bb`](./contracts/ethereum-1/0x1880d832aa283d05b8eab68877717e25fbd550bb/); optimism [`0x1880d8...d550bb`](./contracts/optimism-10/0x1880d832aa283d05b8eab68877717e25fbd550bb/); base [`0x1880d8...d550bb`](./contracts/base-8453/0x1880d832aa283d05b8eab68877717e25fbd550bb/); arbitrum [`0x1880d8...d550bb`](./contracts/arbitrum-42161/0x1880d832aa283d05b8eab68877717e25fbd550bb/) | ⚠️ Unaudited |
| TerminalV1 | unknown | ethereum | [`0xd569d3...714431`](./contracts/ethereum-1/0xd569d3cce55b71a8a3f3c418c329a66e5f714431/) | ⚠️ Unaudited |
| TerminalV1_1 | unknown | ethereum | [`0x981c8e...2e5c68`](./contracts/ethereum-1/0x981c8ecd009e3e84ee1ff99266bf1461a12e5c68/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (9)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0xb657f1...267a81` | ❓ Unverified |
| UnnamedContract | unknown | chain-84532 | `0x79e5ca...1aa8fd` | ❓ Unverified |
| UnnamedContract | unknown | chain-84532 | `0xc7369f...d4d32d` | ❓ Unverified |
| UnnamedContract | unknown | chain-421614 | `0x5f820a...67c41c` | ❓ Unverified |
| UnnamedContract | unknown | chain-421614 | `0xb35ab8...76f2df` | ❓ Unverified |
| UnnamedContract | unknown | chain-11155111 | `0xca3f2c...c29fc5` | ❓ Unverified |
| UnnamedContract | unknown | chain-11155111 | `0xf082e3...21815f` | ❓ Unverified |
| UnnamedContract | unknown | chain-11155420 | `0x79e5ca...1aa8fd` | ❓ Unverified |
| UnnamedContract | unknown | chain-11155420 | `0xc7369f...d4d32d` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [5.24.2022.md (also discovered via alternate URL)](https://github.com/jbx-protocol/juice-contracts-v2/blob/main/security/postmortem/5.24.2022.md) | unknown | Audit | 2022 | stale | Direct | contract_name | 19 | medium |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xc3c266...e5d8ea`](./contracts/ethereum-1/0xc3c26682ef39a4a5f4a1dc2459a6fbcba4e5d8ea/) | CTDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x127fa6...690883`](./contracts/ethereum-1/0x127fa6d4d0a4e791c6c4adaa4c9ad97127690883/) | CTProjectOwner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x03ef9e...20ee24`](./contracts/ethereum-1/0x03ef9ea1467df70d4b1e1d619aa9a2a2f820ee24/) | CTPublisher | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x50cd1e...fe6f80`](./contracts/ethereum-1/0x50cd1e33f818d402a9fd406b5b3fbc88f1fe6f80/) | JB721GlobalGovernance | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf27aaa...a4209f`](./contracts/ethereum-1/0xf27aaa1240a09f2a995542e6bd38b52125a4209f/) | JB721TieredGovernance | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x749ac9...8eb25b`](./contracts/ethereum-1/0x749ac9c5ef5ef41f402c70a5bc460c5a1d8eb25b/) | JB721TiersHook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x792bdd...6d2732`](./contracts/ethereum-1/0x792bdd4dd1e52fcf8fb3e80278a2b4e4396d2732/) | JB721TiersHookDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x048626...0e725a`](./contracts/ethereum-1/0x048626e715a194fc38dd9be12f516b54b10e725a/) | JB721TiersHookProjectDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2bc696...eba8ee`](./contracts/ethereum-1/0x2bc696b0af74042b30b2687ab5817cc824eba8ee/) | JB721TiersHookStore | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xea06bd...5c9699`](./contracts/ethereum-1/0xea06bd663a1cec97b5bdec9375ab9a63695c9699/) | JBArbitrumSuckerDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd9f35d...947efd`](./contracts/ethereum-1/0xd9f35d8dd36046f14479e6dced03733724947efd/) | JBBaseSuckerDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6338b5...c8a868`](./contracts/ethereum-1/0x6338b523fc355197e6f723bf10c0cc2da7c8a868/) | JBBuybackDelegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x318f8a...7824f3`](./contracts/optimism-10/0x318f8aa6a95cb83419985c0d797c762f5a7824f3/) | JBBuybackHook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9e1e0f...a12b1a`](./contracts/ethereum-1/0x9e1e0fb70bc4661f2cc2d5eddd87a9d582a12b1a/) | JBBuybackHookRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x172ad9...761816`](./contracts/ethereum-1/0x172ad9b3df724ee0422ea85b7799a3f7ca761816/) | JBCCIPSuckerDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa139d3...8cb7b6`](./contracts/ethereum-1/0xa139d37275d1ff7275e6f33821898934bc8cb7b6/) | JBController3_0_1 | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x328348...7b6768`](./contracts/ethereum-1/0x32834829927d872869918e5f415f9732bd7b6768/) | JBController3_1 | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcffdd1...b924d7`](./contracts/ethereum-1/0xcffdd1303f24145bd2c84e7bf15af1eb6ab924d7/) | JBDeadline1Day | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x09b23b...17111b`](./contracts/ethereum-1/0x09b23b09af88bb6d7e9c957ff9f861f1c917111b/) | JBDeadline3Days | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4eeb65...71799a`](./contracts/ethereum-1/0x4eeb65e13ade86155d169ba1fabd06828171799a/) | JBDeadline3Hours | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdf911b...636031`](./contracts/ethereum-1/0xdf911b94712cf117fb63b69838b16e1710636031/) | JBDeadline7Days | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x33265d...f24221`](./contracts/ethereum-1/0x33265d9ead1291faa981a177278df8053af24221/) | JBDelegatesRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xaeac45...be5d31`](./contracts/ethereum-1/0xaeac450c8522e40244bdfb8120ee398207be5d31/) | JBERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa5ca9c...ba5b43`](./contracts/ethereum-1/0xa5ca9cea71df4b680484e5ff753a1b1185ba5b43/) | JBETHERC20ProjectPayerDeployer | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3ff1f0...3f7c27`](./contracts/ethereum-1/0x3ff1f0583a41ce8b9463f74a1227c75fc13f7c27/) | JBETHERC20SplitsPayerDeployer | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfa391d...607a5c`](./contracts/ethereum-1/0xfa391de95fcbcd3157268b91d8c7af083e607a5c/) | JBETHPaymentTerminal3_1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x457cd6...c0d573`](./contracts/ethereum-1/0x457cd63bee88ac01f3cd4a67d5dcc921d8c0d573/) | JBETHPaymentTerminal3_1_1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1d9619...680cc0`](./contracts/ethereum-1/0x1d9619e10086fdc1065b114298384aae3f680cc0/) | JBETHPaymentTerminal3_1_2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfc702a...d91d53`](./contracts/ethereum-1/0xfc702a0190f3edbc369208dfe77bf273add91d53/) | JBFeelessAddresses | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa4425a...f89e30`](./contracts/ethereum-1/0xa4425a1e5b7b28cb689719b1428e3088c1f89e30/) | JBFundAccessConstraintsStore | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3a46b2...497ce7`](./contracts/ethereum-1/0x3a46b21720c8b70184b0434a2293b2fdcc497ce7/) | JBFundAccessLimits | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6b700b...aada08`](./contracts/ethereum-1/0x6b700b54bbf7a93f453ffbf58df0fe1ab2aada08/) | JBGenericBuybackDelegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6fbf8d...9e138a`](./contracts/ethereum-1/0x6fbf8dc66b1879ff0ae243500f8b1e6f6d9e138a/) | JBMatchingPriceFeed | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x004d50...e47b52`](./contracts/ethereum-1/0x004d50e8552f7e811e7df913a3205abf48e47b52/) | JBMigrationOperator | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2db6d7...361846`](./contracts/ethereum-1/0x2db6d704058e552defe415753465df8df0361846/) | JBMultiTerminal | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x587bf8...c2fc71`](./contracts/ethereum-1/0x587bf86677ec0d1b766d9ba0d7ac2a51c6c2fc71/) | JBOmnichainDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x77cdb0...cc3057`](./contracts/ethereum-1/0x77cdb0f5eef8febd67dd6e594ff654fb12cc3057/) | JBOptimismSuckerDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x04fd69...a7793d`](./contracts/ethereum-1/0x04fd6913d6c32d8c216e153a43c04b1857a7793d/) | JBPermissions | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9b90e5...e614c4`](./contracts/ethereum-1/0x9b90e507cf6b7eb681a506b111f6f50245e614c4/) | JBPrices | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd75d2e...b0a3a4`](./contracts/ethereum-1/0xd75d2eef7fe65bf9f46d7ef0b21eded98cb0a3a4/) | JBProjectHandles | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa2154a...d0fdc6`](./contracts/ethereum-1/0xa2154abd135be068540073cb4390139906d0fdc6/) | JBReconfigurationBufferBallot | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x629228...6ab428`](./contracts/ethereum-1/0x6292281d69c3593fcf6ea074e5797341476ab428/) | JBRulesets | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd42570...14b056`](./contracts/ethereum-1/0xd4257005ca8d27bbe11f356453b0e4692414b056/) | JBRulesets5_1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x77b0a8...950336`](./contracts/ethereum-1/0x77b0a81aeb61d08c0b23c739969d22c5c9950336/) | JBSingleTokenPaymentTerminalStore3_1 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x82129d...7919f5`](./contracts/ethereum-1/0x82129d4109625f94582bddf6101a8cd1a27919f5/) | JBSingleTokenPaymentTerminalStore3_1_1 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7160a3...df3c5e`](./contracts/ethereum-1/0x7160a322fea44945a6ef9adfd65c322258df3c5e/) | JBSplits | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x07c8c5...24ece3`](./contracts/ethereum-1/0x07c8c5bf08f0361883728a8a5f8824ba5724ece3/) | JBSuckerRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x259385...b145dd`](./contracts/ethereum-1/0x259385b97dfbd5576bd717dc7b25967ec8b145dd/) | JBSwapTerminal | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x36379b...d99c08`](./contracts/arbitrum-42161/0x36379b28e67b73f5ae9e3de320ce1dbd7fd99c08/) | JBSwapTerminal5_1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1ce40d...167422`](./contracts/ethereum-1/0x1ce40d201cdec791de05810d17aaf501be167422/) | JBSwapTerminalRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5cdfcf...a1d964`](./contracts/ethereum-1/0x5cdfcf7f5f25da0dcb0eccd027e5feebada1d964/) | JBTerminalStore | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2b9f2f...a99333`](./contracts/ethereum-1/0x2b9f2f30f722dd4917bd877d976adc4966a99333/) | JBTiered721Delegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x55ff1d...95fefc`](./contracts/ethereum-1/0x55ff1d8093166c1ff9664efd613d8c543b95fefc/) | JBTiered721DelegateDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xba6dc6...4ea056`](./contracts/ethereum-1/0xba6dc6c5a41e1fbe0e33d43884d3c0fd7e4ea056/) | JBTiered721DelegateProjectDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8e3118...dc16ad`](./contracts/ethereum-1/0x8e3118fa2f90e8ae7da08c6d444bf93ef1dc16ad/) | JBTiered721DelegateStore | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7bfcdb...5a3a66`](./contracts/ethereum-1/0x7bfcdb1649053919d65b17e0edd5068e535a3a66/) | JBTiered721GovernanceDelegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4d0edd...e87636`](./contracts/ethereum-1/0x4d0edd347fb1fa21589c1e109b3474924be87636/) | JBTokens | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2ca27b...de251d`](./contracts/ethereum-1/0x2ca27bde7e7d33e353b44c27acfcf6c78dde251d/) | REVDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1880d8...d550bb`](./contracts/ethereum-1/0x1880d832aa283d05b8eab68877717e25fbd550bb/) | REVLoans | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd569d3...714431`](./contracts/ethereum-1/0xd569d3cce55b71a8a3f3c418c329a66e5f714431/) | TerminalV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x981c8e...2e5c68`](./contracts/ethereum-1/0x981c8ecd009e3e84ee1ff99266bf1461a12e5c68/) | TerminalV1_1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 73 |
| upstream | 2 |
| standard_library | 1 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: medium=1
- Match method counts: extraction_exact=38

Fork inheritance lineage and inherited audits are included when available.
