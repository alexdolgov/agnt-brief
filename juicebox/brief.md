# Agentic Audit Brief: Juicebox

## Project Overview

- Project: Juicebox (`juicebox`)
- Website: [https://juicebox.money/](https://juicebox.money/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:26.924Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-dc67
- Chains: arbitrum, base, chain-11155111, chain-11155420, chain-421614, chain-84532, ethereum, optimism
- Contract surface: 50 unique implementations (210 raw deployments)
- DeFi Llama TVL: $8,209,787.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Launchpad. Structurally: 48 project-authored contract(s) across 3 chain(s); 1 ERC20 token, 3 ERC721 NFTs; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 7 functional families. Its contracts share 7 common project-authored base contract(s) (jbpermissioned, jbdeadline, jbsuckerdeployer). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 210; live-surface contracts included: 210 (202 live, 8 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 7/49 (14.3%)
- Deployed-live implementations: 49 of 50 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 7/49
- Verified + Unaudited implementations: 42
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 50
- Raw deployments: 210
- Audits discovered: 10 (10 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-05 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 10 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 7 match-unverified
- Tier 1 coverage: 10.2% (Code4rena)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| CertiK | Tier 2 | 6 | 12.2% | 2022-03 |
| Code4rena | Tier 1 | 5 | 10.2% | 2023-05 |
| unknown | Tier 2 | 4 | 8.2% | 2023-01 |
| PeckShield | Tier 2 | 3 | 6.1% | 2022-04 |

## Contract Surface

### ✅ Verified + Audited (7)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| JBChainlinkV3PriceFeed | operational_periphery | ethereum | n/a | [`0x6ed8eedc0689bd6a8c7168301897a0113c28bba4`](./contracts/ethereum-1/0x6ed8eedc0689bd6a8c7168301897a0113c28bba4/) | ✅ Audited |
| JBController | governance | ethereum | n/a | 8 deployments: ethereum [`0x27da30646502e2f642be5281322ae8c394f7668a`](./contracts/ethereum-1/0x27da30646502e2f642be5281322ae8c394f7668a/); ethereum `0xf3cc99b11bd73a2e3b8815fb85fe0381b29987e1`; optimism [`0x27da30646502e2f642be5281322ae8c394f7668a`](./contracts/optimism-10/0x27da30646502e2f642be5281322ae8c394f7668a/); optimism `0xf3cc99b11bd73a2e3b8815fb85fe0381b29987e1`; base [`0x27da30646502e2f642be5281322ae8c394f7668a`](./contracts/base-8453/0x27da30646502e2f642be5281322ae8c394f7668a/); base `0xf3cc99b11bd73a2e3b8815fb85fe0381b29987e1`; arbitrum [`0x27da30646502e2f642be5281322ae8c394f7668a`](./contracts/arbitrum-42161/0x27da30646502e2f642be5281322ae8c394f7668a/); arbitrum `0xf3cc99b11bd73a2e3b8815fb85fe0381b29987e1` | ✅ Audited |
| JBDirectory | unknown | ethereum | n/a | 4 deployments: ethereum [`0x0061e516886a0540f63157f112c0588ee0651dcf`](./contracts/ethereum-1/0x0061e516886a0540f63157f112c0588ee0651dcf/); optimism [`0x0061e516886a0540f63157f112c0588ee0651dcf`](./contracts/optimism-10/0x0061e516886a0540f63157f112c0588ee0651dcf/); base [`0x0061e516886a0540f63157f112c0588ee0651dcf`](./contracts/base-8453/0x0061e516886a0540f63157f112c0588ee0651dcf/); arbitrum [`0x0061e516886a0540f63157f112c0588ee0651dcf`](./contracts/arbitrum-42161/0x0061e516886a0540f63157f112c0588ee0651dcf/) | ✅ Audited |
| JBETHPaymentTerminal | unknown | ethereum | n/a | 2 deployments: ethereum [`0x594cb208b5bb48db1bcbc9354d1694998864ec63`](./contracts/ethereum-1/0x594cb208b5bb48db1bcbc9354d1694998864ec63/); ethereum `0x7ae63fba045fec7cae1a75cf7aa14183483b8397` | ✅ Audited |
| JBPrices | operational_periphery | ethereum | n/a | 4 deployments: ethereum [`0x9b90e507cf6b7eb681a506b111f6f50245e614c4`](./contracts/ethereum-1/0x9b90e507cf6b7eb681a506b111f6f50245e614c4/); optimism [`0x9b90e507cf6b7eb681a506b111f6f50245e614c4`](./contracts/optimism-10/0x9b90e507cf6b7eb681a506b111f6f50245e614c4/); base [`0x9b90e507cf6b7eb681a506b111f6f50245e614c4`](./contracts/base-8453/0x9b90e507cf6b7eb681a506b111f6f50245e614c4/); arbitrum [`0x9b90e507cf6b7eb681a506b111f6f50245e614c4`](./contracts/arbitrum-42161/0x9b90e507cf6b7eb681a506b111f6f50245e614c4/) | ✅ Audited |
| JBProjects | unknown | ethereum | n/a | 4 deployments: ethereum [`0x885f707efa18d2cb12f05a3a8eba6b4b26c8c1d4`](./contracts/ethereum-1/0x885f707efa18d2cb12f05a3a8eba6b4b26c8c1d4/); optimism [`0x885f707efa18d2cb12f05a3a8eba6b4b26c8c1d4`](./contracts/optimism-10/0x885f707efa18d2cb12f05a3a8eba6b4b26c8c1d4/); base [`0x885f707efa18d2cb12f05a3a8eba6b4b26c8c1d4`](./contracts/base-8453/0x885f707efa18d2cb12f05a3a8eba6b4b26c8c1d4/); arbitrum [`0x885f707efa18d2cb12f05a3a8eba6b4b26c8c1d4`](./contracts/arbitrum-42161/0x885f707efa18d2cb12f05a3a8eba6b4b26c8c1d4/) | ✅ Audited |
| JBTokens | token | ethereum | n/a | 4 deployments: ethereum [`0x4d0edd347fb1fa21589c1e109b3474924be87636`](./contracts/ethereum-1/0x4d0edd347fb1fa21589c1e109b3474924be87636/); optimism [`0x4d0edd347fb1fa21589c1e109b3474924be87636`](./contracts/optimism-10/0x4d0edd347fb1fa21589c1e109b3474924be87636/); base [`0x4d0edd347fb1fa21589c1e109b3474924be87636`](./contracts/base-8453/0x4d0edd347fb1fa21589c1e109b3474924be87636/); arbitrum [`0x4d0edd347fb1fa21589c1e109b3474924be87636`](./contracts/arbitrum-42161/0x4d0edd347fb1fa21589c1e109b3474924be87636/) | ✅ Audited |

### ⚠️ Verified + Unaudited (42)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CTDeployer | unknown | ethereum | n/a | 4 deployments: ethereum [`0xc3c26682ef39a4a5f4a1dc2459a6fbcba4e5d8ea`](./contracts/ethereum-1/0xc3c26682ef39a4a5f4a1dc2459a6fbcba4e5d8ea/); optimism [`0xc3c26682ef39a4a5f4a1dc2459a6fbcba4e5d8ea`](./contracts/optimism-10/0xc3c26682ef39a4a5f4a1dc2459a6fbcba4e5d8ea/); base [`0xc3c26682ef39a4a5f4a1dc2459a6fbcba4e5d8ea`](./contracts/base-8453/0xc3c26682ef39a4a5f4a1dc2459a6fbcba4e5d8ea/); arbitrum [`0xc3c26682ef39a4a5f4a1dc2459a6fbcba4e5d8ea`](./contracts/arbitrum-42161/0xc3c26682ef39a4a5f4a1dc2459a6fbcba4e5d8ea/) | ⚠️ Unaudited |
| CTProjectOwner | unknown | ethereum | n/a | 4 deployments: ethereum [`0x127fa6d4d0a4e791c6c4adaa4c9ad97127690883`](./contracts/ethereum-1/0x127fa6d4d0a4e791c6c4adaa4c9ad97127690883/); optimism [`0x127fa6d4d0a4e791c6c4adaa4c9ad97127690883`](./contracts/optimism-10/0x127fa6d4d0a4e791c6c4adaa4c9ad97127690883/); base [`0x127fa6d4d0a4e791c6c4adaa4c9ad97127690883`](./contracts/base-8453/0x127fa6d4d0a4e791c6c4adaa4c9ad97127690883/); arbitrum [`0x127fa6d4d0a4e791c6c4adaa4c9ad97127690883`](./contracts/arbitrum-42161/0x127fa6d4d0a4e791c6c4adaa4c9ad97127690883/) | ⚠️ Unaudited |
| CTPublisher | unknown | ethereum | n/a | 4 deployments: ethereum [`0x03ef9ea1467df70d4b1e1d619aa9a2a2f820ee24`](./contracts/ethereum-1/0x03ef9ea1467df70d4b1e1d619aa9a2a2f820ee24/); optimism [`0x03ef9ea1467df70d4b1e1d619aa9a2a2f820ee24`](./contracts/optimism-10/0x03ef9ea1467df70d4b1e1d619aa9a2a2f820ee24/); base [`0x03ef9ea1467df70d4b1e1d619aa9a2a2f820ee24`](./contracts/base-8453/0x03ef9ea1467df70d4b1e1d619aa9a2a2f820ee24/); arbitrum [`0x03ef9ea1467df70d4b1e1d619aa9a2a2f820ee24`](./contracts/arbitrum-42161/0x03ef9ea1467df70d4b1e1d619aa9a2a2f820ee24/) | ⚠️ Unaudited |
| ERC2771Forwarder | unknown | ethereum | n/a | 4 deployments: ethereum [`0xc29d6995ab3b0df4650ad643adeac55e7acbb566`](./contracts/ethereum-1/0xc29d6995ab3b0df4650ad643adeac55e7acbb566/); optimism [`0xc29d6995ab3b0df4650ad643adeac55e7acbb566`](./contracts/optimism-10/0xc29d6995ab3b0df4650ad643adeac55e7acbb566/); base [`0xc29d6995ab3b0df4650ad643adeac55e7acbb566`](./contracts/base-8453/0xc29d6995ab3b0df4650ad643adeac55e7acbb566/); arbitrum [`0xc29d6995ab3b0df4650ad643adeac55e7acbb566`](./contracts/arbitrum-42161/0xc29d6995ab3b0df4650ad643adeac55e7acbb566/) | ⚠️ Unaudited |
| JB721TiersHook | unknown | ethereum | n/a | 4 deployments: ethereum [`0x749ac9c5ef5ef41f402c70a5bc460c5a1d8eb25b`](./contracts/ethereum-1/0x749ac9c5ef5ef41f402c70a5bc460c5a1d8eb25b/); optimism [`0x749ac9c5ef5ef41f402c70a5bc460c5a1d8eb25b`](./contracts/optimism-10/0x749ac9c5ef5ef41f402c70a5bc460c5a1d8eb25b/); base [`0x749ac9c5ef5ef41f402c70a5bc460c5a1d8eb25b`](./contracts/base-8453/0x749ac9c5ef5ef41f402c70a5bc460c5a1d8eb25b/); arbitrum [`0x749ac9c5ef5ef41f402c70a5bc460c5a1d8eb25b`](./contracts/arbitrum-42161/0x749ac9c5ef5ef41f402c70a5bc460c5a1d8eb25b/) | ⚠️ Unaudited |
| JB721TiersHookDeployer | unknown | ethereum | n/a | 8 deployments: ethereum [`0x792bdd4dd1e52fcf8fb3e80278a2b4e4396d2732`](./contracts/ethereum-1/0x792bdd4dd1e52fcf8fb3e80278a2b4e4396d2732/); ethereum `0xef60878d00378ac5f93d209f4616450ee8d41ca7`; optimism [`0x792bdd4dd1e52fcf8fb3e80278a2b4e4396d2732`](./contracts/optimism-10/0x792bdd4dd1e52fcf8fb3e80278a2b4e4396d2732/); optimism `0xef60878d00378ac5f93d209f4616450ee8d41ca7`; base [`0x792bdd4dd1e52fcf8fb3e80278a2b4e4396d2732`](./contracts/base-8453/0x792bdd4dd1e52fcf8fb3e80278a2b4e4396d2732/); base `0xef60878d00378ac5f93d209f4616450ee8d41ca7`; arbitrum [`0x792bdd4dd1e52fcf8fb3e80278a2b4e4396d2732`](./contracts/arbitrum-42161/0x792bdd4dd1e52fcf8fb3e80278a2b4e4396d2732/); arbitrum `0xef60878d00378ac5f93d209f4616450ee8d41ca7` | ⚠️ Unaudited |
| JB721TiersHookProjectDeployer | unknown | ethereum | n/a | 8 deployments: ethereum [`0x048626e715a194fc38dd9be12f516b54b10e725a`](./contracts/ethereum-1/0x048626e715a194fc38dd9be12f516b54b10e725a/); ethereum `0xeb15c1df0f5ae36f525f5f9a03f5c5190ac9a7f8`; optimism [`0x048626e715a194fc38dd9be12f516b54b10e725a`](./contracts/optimism-10/0x048626e715a194fc38dd9be12f516b54b10e725a/); optimism `0xeb15c1df0f5ae36f525f5f9a03f5c5190ac9a7f8`; base [`0x048626e715a194fc38dd9be12f516b54b10e725a`](./contracts/base-8453/0x048626e715a194fc38dd9be12f516b54b10e725a/); base `0xeb15c1df0f5ae36f525f5f9a03f5c5190ac9a7f8`; arbitrum [`0x048626e715a194fc38dd9be12f516b54b10e725a`](./contracts/arbitrum-42161/0x048626e715a194fc38dd9be12f516b54b10e725a/); arbitrum `0xeb15c1df0f5ae36f525f5f9a03f5c5190ac9a7f8` | ⚠️ Unaudited |
| JB721TiersHookStore | unknown | ethereum | n/a | 4 deployments: ethereum [`0x2bc696b0af74042b30b2687ab5817cc824eba8ee`](./contracts/ethereum-1/0x2bc696b0af74042b30b2687ab5817cc824eba8ee/); optimism [`0x2bc696b0af74042b30b2687ab5817cc824eba8ee`](./contracts/optimism-10/0x2bc696b0af74042b30b2687ab5817cc824eba8ee/); base [`0x2bc696b0af74042b30b2687ab5817cc824eba8ee`](./contracts/base-8453/0x2bc696b0af74042b30b2687ab5817cc824eba8ee/); arbitrum [`0x2bc696b0af74042b30b2687ab5817cc824eba8ee`](./contracts/arbitrum-42161/0x2bc696b0af74042b30b2687ab5817cc824eba8ee/) | ⚠️ Unaudited |
| JBArbitrumSuckerDeployer | unknown | ethereum | n/a | 2 deployments: ethereum [`0xea06bd663a1cec97b5bdec9375ab9a63695c9699`](./contracts/ethereum-1/0xea06bd663a1cec97b5bdec9375ab9a63695c9699/); arbitrum [`0xea06bd663a1cec97b5bdec9375ab9a63695c9699`](./contracts/arbitrum-42161/0xea06bd663a1cec97b5bdec9375ab9a63695c9699/) | ⚠️ Unaudited |
| JBBaseSuckerDeployer | unknown | ethereum | n/a | 2 deployments: ethereum [`0xd9f35d8dd36046f14479e6dced03733724947efd`](./contracts/ethereum-1/0xd9f35d8dd36046f14479e6dced03733724947efd/); base [`0xd9f35d8dd36046f14479e6dced03733724947efd`](./contracts/base-8453/0xd9f35d8dd36046f14479e6dced03733724947efd/) | ⚠️ Unaudited |
| JBBuybackHook | unknown | optimism | n/a | 4 deployments: ethereum `0xd342490ec41d5982c23951253a74a1c940fe0f9b`; optimism [`0x318f8aa6a95cb83419985c0d797c762f5a7824f3`](./contracts/optimism-10/0x318f8aa6a95cb83419985c0d797c762f5a7824f3/); base `0xb6133a222315f8e9d25e7c77bac5ddeb3451d088`; arbitrum `0x4ac3e20edd1d398def0dfb44d3adb9fc244f0320` | ⚠️ Unaudited |
| JBBuybackHookRegistry | registry | ethereum | n/a | 4 deployments: ethereum [`0x9e1e0fb70bc4661f2cc2d5eddd87a9d582a12b1a`](./contracts/ethereum-1/0x9e1e0fb70bc4661f2cc2d5eddd87a9d582a12b1a/); optimism [`0x9e1e0fb70bc4661f2cc2d5eddd87a9d582a12b1a`](./contracts/optimism-10/0x9e1e0fb70bc4661f2cc2d5eddd87a9d582a12b1a/); base [`0x9e1e0fb70bc4661f2cc2d5eddd87a9d582a12b1a`](./contracts/base-8453/0x9e1e0fb70bc4661f2cc2d5eddd87a9d582a12b1a/); arbitrum [`0x9e1e0fb70bc4661f2cc2d5eddd87a9d582a12b1a`](./contracts/arbitrum-42161/0x9e1e0fb70bc4661f2cc2d5eddd87a9d582a12b1a/) | ⚠️ Unaudited |
| JBCCIPSuckerDeployer | unknown | ethereum | n/a | 12 deployments: ethereum [`0x172ad9b3df724ee0422ea85b7799a3f7ca761816`](./contracts/ethereum-1/0x172ad9b3df724ee0422ea85b7799a3f7ca761816/); ethereum `0x195b4dce646eba3c3e9ae56708558b1a96f88814`; ethereum `0xf816d238aef247f86cc73593961cb8fb55ca4bcf`; optimism [`0x172ad9b3df724ee0422ea85b7799a3f7ca761816`](./contracts/optimism-10/0x172ad9b3df724ee0422ea85b7799a3f7ca761816/); optimism `0x58683931b146697d094c660aec1f4a8f564a3d7d`; optimism `0xaa0dbdf6354dd238d289c359c74f998ddec8bcd1`; base `0x195b4dce646eba3c3e9ae56708558b1a96f88814`; base `0x58683931b146697d094c660aec1f4a8f564a3d7d`; base `0xc295a8926f1ed0a6e3b6cbdb1d28b9d6b388c8a7`; arbitrum `0xaa0dbdf6354dd238d289c359c74f998ddec8bcd1`; arbitrum `0xc295a8926f1ed0a6e3b6cbdb1d28b9d6b388c8a7`; arbitrum `0xf816d238aef247f86cc73593961cb8fb55ca4bcf` | ⚠️ Unaudited |
| JBChainlinkV3SequencerPriceFeed | operational_periphery | optimism | n/a | 3 deployments: optimism [`0x6ed8eedc0689bd6a8c7168301897a0113c28bba4`](./contracts/optimism-10/0x6ed8eedc0689bd6a8c7168301897a0113c28bba4/); base [`0x6ed8eedc0689bd6a8c7168301897a0113c28bba4`](./contracts/base-8453/0x6ed8eedc0689bd6a8c7168301897a0113c28bba4/); arbitrum [`0x6ed8eedc0689bd6a8c7168301897a0113c28bba4`](./contracts/arbitrum-42161/0x6ed8eedc0689bd6a8c7168301897a0113c28bba4/) | ⚠️ Unaudited |
| JBController3_1 | governance | ethereum | n/a | [`0x97a5b9d9f0f7cd676b69f584f29048d0ef4bb59b`](./contracts/ethereum-1/0x97a5b9d9f0f7cd676b69f584f29048d0ef4bb59b/) | ⚠️ Unaudited |
| JBDeadline1Day | unknown | ethereum | n/a | 4 deployments: ethereum [`0xcffdd1303f24145bd2c84e7bf15af1eb6ab924d7`](./contracts/ethereum-1/0xcffdd1303f24145bd2c84e7bf15af1eb6ab924d7/); optimism [`0xcffdd1303f24145bd2c84e7bf15af1eb6ab924d7`](./contracts/optimism-10/0xcffdd1303f24145bd2c84e7bf15af1eb6ab924d7/); base [`0xcffdd1303f24145bd2c84e7bf15af1eb6ab924d7`](./contracts/base-8453/0xcffdd1303f24145bd2c84e7bf15af1eb6ab924d7/); arbitrum [`0xcffdd1303f24145bd2c84e7bf15af1eb6ab924d7`](./contracts/arbitrum-42161/0xcffdd1303f24145bd2c84e7bf15af1eb6ab924d7/) | ⚠️ Unaudited |
| JBDeadline3Days | unknown | ethereum | n/a | 4 deployments: ethereum [`0x09b23b09af88bb6d7e9c957ff9f861f1c917111b`](./contracts/ethereum-1/0x09b23b09af88bb6d7e9c957ff9f861f1c917111b/); optimism [`0x09b23b09af88bb6d7e9c957ff9f861f1c917111b`](./contracts/optimism-10/0x09b23b09af88bb6d7e9c957ff9f861f1c917111b/); base [`0x09b23b09af88bb6d7e9c957ff9f861f1c917111b`](./contracts/base-8453/0x09b23b09af88bb6d7e9c957ff9f861f1c917111b/); arbitrum [`0x09b23b09af88bb6d7e9c957ff9f861f1c917111b`](./contracts/arbitrum-42161/0x09b23b09af88bb6d7e9c957ff9f861f1c917111b/) | ⚠️ Unaudited |
| JBDeadline3Hours | unknown | ethereum | n/a | 4 deployments: ethereum [`0x4eeb65e13ade86155d169ba1fabd06828171799a`](./contracts/ethereum-1/0x4eeb65e13ade86155d169ba1fabd06828171799a/); optimism [`0x4eeb65e13ade86155d169ba1fabd06828171799a`](./contracts/optimism-10/0x4eeb65e13ade86155d169ba1fabd06828171799a/); base [`0x4eeb65e13ade86155d169ba1fabd06828171799a`](./contracts/base-8453/0x4eeb65e13ade86155d169ba1fabd06828171799a/); arbitrum [`0x4eeb65e13ade86155d169ba1fabd06828171799a`](./contracts/arbitrum-42161/0x4eeb65e13ade86155d169ba1fabd06828171799a/) | ⚠️ Unaudited |
| JBDeadline7Days | unknown | ethereum | n/a | 4 deployments: ethereum [`0xdf911b94712cf117fb63b69838b16e1710636031`](./contracts/ethereum-1/0xdf911b94712cf117fb63b69838b16e1710636031/); optimism [`0xdf911b94712cf117fb63b69838b16e1710636031`](./contracts/optimism-10/0xdf911b94712cf117fb63b69838b16e1710636031/); base [`0xdf911b94712cf117fb63b69838b16e1710636031`](./contracts/base-8453/0xdf911b94712cf117fb63b69838b16e1710636031/); arbitrum [`0xdf911b94712cf117fb63b69838b16e1710636031`](./contracts/arbitrum-42161/0xdf911b94712cf117fb63b69838b16e1710636031/) | ⚠️ Unaudited |
| JBERC20 | token | ethereum | n/a | 4 deployments: ethereum [`0xaeac450c8522e40244bdfb8120ee398207be5d31`](./contracts/ethereum-1/0xaeac450c8522e40244bdfb8120ee398207be5d31/); optimism [`0xaeac450c8522e40244bdfb8120ee398207be5d31`](./contracts/optimism-10/0xaeac450c8522e40244bdfb8120ee398207be5d31/); base [`0xaeac450c8522e40244bdfb8120ee398207be5d31`](./contracts/base-8453/0xaeac450c8522e40244bdfb8120ee398207be5d31/); arbitrum [`0xaeac450c8522e40244bdfb8120ee398207be5d31`](./contracts/arbitrum-42161/0xaeac450c8522e40244bdfb8120ee398207be5d31/) | ⚠️ Unaudited |
| JBETHPaymentTerminal3_1 | unknown | ethereum | n/a | [`0xfa391de95fcbcd3157268b91d8c7af083e607a5c`](./contracts/ethereum-1/0xfa391de95fcbcd3157268b91d8c7af083e607a5c/) | ⚠️ Unaudited |
| JBETHPaymentTerminal3_1_2 | unknown | ethereum | n/a | [`0x1d9619e10086fdc1065b114298384aae3f680cc0`](./contracts/ethereum-1/0x1d9619e10086fdc1065b114298384aae3f680cc0/) | ⚠️ Unaudited |
| JBFeelessAddresses | unknown | ethereum | n/a | 4 deployments: ethereum [`0xfc702a0190f3edbc369208dfe77bf273add91d53`](./contracts/ethereum-1/0xfc702a0190f3edbc369208dfe77bf273add91d53/); optimism [`0xfc702a0190f3edbc369208dfe77bf273add91d53`](./contracts/optimism-10/0xfc702a0190f3edbc369208dfe77bf273add91d53/); base [`0xfc702a0190f3edbc369208dfe77bf273add91d53`](./contracts/base-8453/0xfc702a0190f3edbc369208dfe77bf273add91d53/); arbitrum [`0xfc702a0190f3edbc369208dfe77bf273add91d53`](./contracts/arbitrum-42161/0xfc702a0190f3edbc369208dfe77bf273add91d53/) | ⚠️ Unaudited |
| JBFundAccessLimits | unknown | ethereum | n/a | 4 deployments: ethereum [`0x3a46b21720c8b70184b0434a2293b2fdcc497ce7`](./contracts/ethereum-1/0x3a46b21720c8b70184b0434a2293b2fdcc497ce7/); optimism [`0x3a46b21720c8b70184b0434a2293b2fdcc497ce7`](./contracts/optimism-10/0x3a46b21720c8b70184b0434a2293b2fdcc497ce7/); base [`0x3a46b21720c8b70184b0434a2293b2fdcc497ce7`](./contracts/base-8453/0x3a46b21720c8b70184b0434a2293b2fdcc497ce7/); arbitrum [`0x3a46b21720c8b70184b0434a2293b2fdcc497ce7`](./contracts/arbitrum-42161/0x3a46b21720c8b70184b0434a2293b2fdcc497ce7/) | ⚠️ Unaudited |
| JBMatchingPriceFeed | operational_periphery | ethereum | n/a | 4 deployments: ethereum [`0x6fbf8dc66b1879ff0ae243500f8b1e6f6d9e138a`](./contracts/ethereum-1/0x6fbf8dc66b1879ff0ae243500f8b1e6f6d9e138a/); optimism [`0x6fbf8dc66b1879ff0ae243500f8b1e6f6d9e138a`](./contracts/optimism-10/0x6fbf8dc66b1879ff0ae243500f8b1e6f6d9e138a/); base [`0x6fbf8dc66b1879ff0ae243500f8b1e6f6d9e138a`](./contracts/base-8453/0x6fbf8dc66b1879ff0ae243500f8b1e6f6d9e138a/); arbitrum [`0x6fbf8dc66b1879ff0ae243500f8b1e6f6d9e138a`](./contracts/arbitrum-42161/0x6fbf8dc66b1879ff0ae243500f8b1e6f6d9e138a/) | ⚠️ Unaudited |
| JBMultiTerminal | unknown | ethereum | n/a | 8 deployments: ethereum [`0x2db6d704058e552defe415753465df8df0361846`](./contracts/ethereum-1/0x2db6d704058e552defe415753465df8df0361846/); ethereum `0x52869db3d61dde1e391967f2ce5039ad0ecd371c`; optimism [`0x2db6d704058e552defe415753465df8df0361846`](./contracts/optimism-10/0x2db6d704058e552defe415753465df8df0361846/); optimism `0x52869db3d61dde1e391967f2ce5039ad0ecd371c`; base [`0x2db6d704058e552defe415753465df8df0361846`](./contracts/base-8453/0x2db6d704058e552defe415753465df8df0361846/); base `0x52869db3d61dde1e391967f2ce5039ad0ecd371c`; arbitrum [`0x2db6d704058e552defe415753465df8df0361846`](./contracts/arbitrum-42161/0x2db6d704058e552defe415753465df8df0361846/); arbitrum `0x52869db3d61dde1e391967f2ce5039ad0ecd371c` | ⚠️ Unaudited |
| JBOmnichainDeployer | unknown | ethereum | n/a | 8 deployments: ethereum [`0x587bf86677ec0d1b766d9ba0d7ac2a51c6c2fc71`](./contracts/ethereum-1/0x587bf86677ec0d1b766d9ba0d7ac2a51c6c2fc71/); ethereum `0x8f5ded85c40b50d223269c1f922a056e72101590`; optimism [`0x587bf86677ec0d1b766d9ba0d7ac2a51c6c2fc71`](./contracts/optimism-10/0x587bf86677ec0d1b766d9ba0d7ac2a51c6c2fc71/); optimism `0x8f5ded85c40b50d223269c1f922a056e72101590`; base [`0x587bf86677ec0d1b766d9ba0d7ac2a51c6c2fc71`](./contracts/base-8453/0x587bf86677ec0d1b766d9ba0d7ac2a51c6c2fc71/); base `0x8f5ded85c40b50d223269c1f922a056e72101590`; arbitrum [`0x587bf86677ec0d1b766d9ba0d7ac2a51c6c2fc71`](./contracts/arbitrum-42161/0x587bf86677ec0d1b766d9ba0d7ac2a51c6c2fc71/); arbitrum `0x8f5ded85c40b50d223269c1f922a056e72101590` | ⚠️ Unaudited |
| JBOptimismSuckerDeployer | unknown | ethereum | n/a | 2 deployments: ethereum [`0x77cdb0f5eef8febd67dd6e594ff654fb12cc3057`](./contracts/ethereum-1/0x77cdb0f5eef8febd67dd6e594ff654fb12cc3057/); optimism [`0x77cdb0f5eef8febd67dd6e594ff654fb12cc3057`](./contracts/optimism-10/0x77cdb0f5eef8febd67dd6e594ff654fb12cc3057/) | ⚠️ Unaudited |
| JBPermissions | unknown | ethereum | n/a | 4 deployments: ethereum [`0x04fd6913d6c32d8c216e153a43c04b1857a7793d`](./contracts/ethereum-1/0x04fd6913d6c32d8c216e153a43c04b1857a7793d/); optimism [`0x04fd6913d6c32d8c216e153a43c04b1857a7793d`](./contracts/optimism-10/0x04fd6913d6c32d8c216e153a43c04b1857a7793d/); base [`0x04fd6913d6c32d8c216e153a43c04b1857a7793d`](./contracts/base-8453/0x04fd6913d6c32d8c216e153a43c04b1857a7793d/); arbitrum [`0x04fd6913d6c32d8c216e153a43c04b1857a7793d`](./contracts/arbitrum-42161/0x04fd6913d6c32d8c216e153a43c04b1857a7793d/) | ⚠️ Unaudited |
| JBProjectHandles | unknown | ethereum | n/a | [`0xd75d2eef7fe65bf9f46d7ef0b21eded98cb0a3a4`](./contracts/ethereum-1/0xd75d2eef7fe65bf9f46d7ef0b21eded98cb0a3a4/) | ⚠️ Unaudited |
| JBRulesets | unknown | ethereum | n/a | 4 deployments: ethereum [`0x6292281d69c3593fcf6ea074e5797341476ab428`](./contracts/ethereum-1/0x6292281d69c3593fcf6ea074e5797341476ab428/); optimism [`0x6292281d69c3593fcf6ea074e5797341476ab428`](./contracts/optimism-10/0x6292281d69c3593fcf6ea074e5797341476ab428/); base [`0x6292281d69c3593fcf6ea074e5797341476ab428`](./contracts/base-8453/0x6292281d69c3593fcf6ea074e5797341476ab428/); arbitrum [`0x6292281d69c3593fcf6ea074e5797341476ab428`](./contracts/arbitrum-42161/0x6292281d69c3593fcf6ea074e5797341476ab428/) | ⚠️ Unaudited |
| JBRulesets5_1 | unknown | ethereum | n/a | 4 deployments: ethereum [`0xd4257005ca8d27bbe11f356453b0e4692414b056`](./contracts/ethereum-1/0xd4257005ca8d27bbe11f356453b0e4692414b056/); optimism [`0xd4257005ca8d27bbe11f356453b0e4692414b056`](./contracts/optimism-10/0xd4257005ca8d27bbe11f356453b0e4692414b056/); base [`0xd4257005ca8d27bbe11f356453b0e4692414b056`](./contracts/base-8453/0xd4257005ca8d27bbe11f356453b0e4692414b056/); arbitrum [`0xd4257005ca8d27bbe11f356453b0e4692414b056`](./contracts/arbitrum-42161/0xd4257005ca8d27bbe11f356453b0e4692414b056/) | ⚠️ Unaudited |
| JBSplits | unknown | ethereum | n/a | 4 deployments: ethereum [`0x7160a322fea44945a6ef9adfd65c322258df3c5e`](./contracts/ethereum-1/0x7160a322fea44945a6ef9adfd65c322258df3c5e/); optimism [`0x7160a322fea44945a6ef9adfd65c322258df3c5e`](./contracts/optimism-10/0x7160a322fea44945a6ef9adfd65c322258df3c5e/); base [`0x7160a322fea44945a6ef9adfd65c322258df3c5e`](./contracts/base-8453/0x7160a322fea44945a6ef9adfd65c322258df3c5e/); arbitrum [`0x7160a322fea44945a6ef9adfd65c322258df3c5e`](./contracts/arbitrum-42161/0x7160a322fea44945a6ef9adfd65c322258df3c5e/) | ⚠️ Unaudited |
| JBSuckerRegistry | registry | ethereum | n/a | 4 deployments: ethereum [`0x07c8c5bf08f0361883728a8a5f8824ba5724ece3`](./contracts/ethereum-1/0x07c8c5bf08f0361883728a8a5f8824ba5724ece3/); optimism [`0x07c8c5bf08f0361883728a8a5f8824ba5724ece3`](./contracts/optimism-10/0x07c8c5bf08f0361883728a8a5f8824ba5724ece3/); base [`0x07c8c5bf08f0361883728a8a5f8824ba5724ece3`](./contracts/base-8453/0x07c8c5bf08f0361883728a8a5f8824ba5724ece3/); arbitrum [`0x07c8c5bf08f0361883728a8a5f8824ba5724ece3`](./contracts/arbitrum-42161/0x07c8c5bf08f0361883728a8a5f8824ba5724ece3/) | ⚠️ Unaudited |
| JBSwapTerminal | unknown | ethereum | n/a | 4 deployments: ethereum [`0x259385b97dfbd5576bd717dc7b25967ec8b145dd`](./contracts/ethereum-1/0x259385b97dfbd5576bd717dc7b25967ec8b145dd/); optimism `0x73d04584bde126242c36c2c7b219cbdec7aad774`; base `0x4fd73d8b285e82471f08a4ef9861d6248b832edd`; arbitrum `0x483c9b12c5bd2da73133aae30642ce0008c752ad` | ⚠️ Unaudited |
| JBSwapTerminal5_1 | unknown | arbitrum | n/a | 4 deployments: ethereum `0x642f6ff15462a5803e9b3bfa6d79f47bcd378f80`; optimism `0x7ba67a138a63ff72fb5f5dbfb16e3c49ccf4a0ed`; base `0x7e000ed6fa38e19bbf9c7343103bca377dbee8ab`; arbitrum [`0x36379b28e67b73f5ae9e3de320ce1dbd7fd99c08`](./contracts/arbitrum-42161/0x36379b28e67b73f5ae9e3de320ce1dbd7fd99c08/) | ⚠️ Unaudited |
| JBSwapTerminalRegistry | registry | ethereum | n/a | 8 deployments: ethereum [`0x1ce40d201cdec791de05810d17aaf501be167422`](./contracts/ethereum-1/0x1ce40d201cdec791de05810d17aaf501be167422/); ethereum `0x60b4f5595ee509c4c22921c7b7999f1616e6a4f6`; optimism [`0x1ce40d201cdec791de05810d17aaf501be167422`](./contracts/optimism-10/0x1ce40d201cdec791de05810d17aaf501be167422/); optimism `0x60b4f5595ee509c4c22921c7b7999f1616e6a4f6`; base [`0x1ce40d201cdec791de05810d17aaf501be167422`](./contracts/base-8453/0x1ce40d201cdec791de05810d17aaf501be167422/); base `0x60b4f5595ee509c4c22921c7b7999f1616e6a4f6`; arbitrum [`0x1ce40d201cdec791de05810d17aaf501be167422`](./contracts/arbitrum-42161/0x1ce40d201cdec791de05810d17aaf501be167422/); arbitrum `0x60b4f5595ee509c4c22921c7b7999f1616e6a4f6` | ⚠️ Unaudited |
| JBTerminalStore | token | ethereum | n/a | 8 deployments: ethereum [`0x5cdfcf7f5f25da0dcb0eccd027e5feebada1d964`](./contracts/ethereum-1/0x5cdfcf7f5f25da0dcb0eccd027e5feebada1d964/); ethereum `0xfe33b439ec53748c87dcedacb83f05add5014744`; optimism [`0x5cdfcf7f5f25da0dcb0eccd027e5feebada1d964`](./contracts/optimism-10/0x5cdfcf7f5f25da0dcb0eccd027e5feebada1d964/); optimism `0xfe33b439ec53748c87dcedacb83f05add5014744`; base [`0x5cdfcf7f5f25da0dcb0eccd027e5feebada1d964`](./contracts/base-8453/0x5cdfcf7f5f25da0dcb0eccd027e5feebada1d964/); base `0xfe33b439ec53748c87dcedacb83f05add5014744`; arbitrum [`0x5cdfcf7f5f25da0dcb0eccd027e5feebada1d964`](./contracts/arbitrum-42161/0x5cdfcf7f5f25da0dcb0eccd027e5feebada1d964/); arbitrum `0xfe33b439ec53748c87dcedacb83f05add5014744` | ⚠️ Unaudited |
| REVDeployer | unknown | ethereum | n/a | 4 deployments: ethereum [`0x2ca27bde7e7d33e353b44c27acfcf6c78dde251d`](./contracts/ethereum-1/0x2ca27bde7e7d33e353b44c27acfcf6c78dde251d/); optimism [`0x2ca27bde7e7d33e353b44c27acfcf6c78dde251d`](./contracts/optimism-10/0x2ca27bde7e7d33e353b44c27acfcf6c78dde251d/); base [`0x2ca27bde7e7d33e353b44c27acfcf6c78dde251d`](./contracts/base-8453/0x2ca27bde7e7d33e353b44c27acfcf6c78dde251d/); arbitrum [`0x2ca27bde7e7d33e353b44c27acfcf6c78dde251d`](./contracts/arbitrum-42161/0x2ca27bde7e7d33e353b44c27acfcf6c78dde251d/) | ⚠️ Unaudited |
| REVLoans | unknown | ethereum | n/a | 4 deployments: ethereum [`0x1880d832aa283d05b8eab68877717e25fbd550bb`](./contracts/ethereum-1/0x1880d832aa283d05b8eab68877717e25fbd550bb/); optimism [`0x1880d832aa283d05b8eab68877717e25fbd550bb`](./contracts/optimism-10/0x1880d832aa283d05b8eab68877717e25fbd550bb/); base [`0x1880d832aa283d05b8eab68877717e25fbd550bb`](./contracts/base-8453/0x1880d832aa283d05b8eab68877717e25fbd550bb/); arbitrum [`0x1880d832aa283d05b8eab68877717e25fbd550bb`](./contracts/arbitrum-42161/0x1880d832aa283d05b8eab68877717e25fbd550bb/) | ⚠️ Unaudited |
| TerminalV1 | unknown | ethereum | n/a | [`0xd569d3cce55b71a8a3f3c418c329a66e5f714431`](./contracts/ethereum-1/0xd569d3cce55b71a8a3f3c418c329a66e5f714431/) | ⚠️ Unaudited |
| TerminalV1_1 | unknown | ethereum | n/a | [`0x981c8ecd009e3e84ee1ff99266bf1461a12e5c68`](./contracts/ethereum-1/0x981c8ecd009e3e84ee1ff99266bf1461a12e5c68/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | chain-421614 | n/a | 8 deployments: chain-84532 `0x79e5ca5ebe4f110965248afad88b8e539e1aa8fd`; chain-84532 `0xc7369f75bd678e1a9a46b82e2512e84489d4d32d`; chain-421614 `0x5f820a86d63eb1b98c562728719dc1e30967c41c`; chain-421614 `0xb35ab801c008a64d8f3eea0a8a6209b0d176f2df`; chain-11155111 `0xca3f2cc5a35c0412e8147746602b76ba4ac29fc5`; chain-11155111 `0xf082e3218a690ea6386506bed338f6878d21815f`; chain-11155420 `0x79e5ca5ebe4f110965248afad88b8e539e1aa8fd`; chain-11155420 `0xc7369f75bd678e1a9a46b82e2512e84489d4d32d` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [5.24.2022.md](https://github.com/jbx-protocol/juice-contracts-v2/blob/main/security/postmortem/5.24.2022.md) | unknown | Audit | 2022-01 | stale | Direct | contract_name | 4 | n/a |
| [hacken.io/audits/constitution-dao/sca-constitution-dao-governance-erc20-jan2022](https://hacken.io/audits/constitution-dao/sca-constitution-dao-governance-erc20-jan2022) | Hacken | Audit | 2022-01 | stale | Direct | n/a | 0 | n/a |
| [hackmd.io/@berndartmueller/2023-01-juice-v3-migration](https://hackmd.io/@berndartmueller/2023-01-juice-v3-migration) | unknown | Audit | 2023-01 | stale | Direct | n/a | 0 | n/a |
| [code4rena.com/reports/2022-10-juicebox](https://code4rena.com/reports/2022-10-juicebox) | Code4rena | Contest | 2022-10 | stale | Direct | n/a | 0 | n/a |
| [2022-10-juicebox (GitHub directory)](https://github.com/code-423n4/2022-10-juicebox) | Code4rena | Contest | 2022-10 | stale | Direct | n/a | 0 | n/a |
| [certik-audit-report-12b48328d22ac38207dad74162cac1db.pdf](https://docs.juicebox.money/assets/files/certik-audit-report-12b48328d22ac38207dad74162cac1db.pdf) | CertiK | Audit | 2022-03 | stale | Direct | contract_name | 6 | n/a |
| [code4rena.com/audits/2022-07-juicebox-v2-contest](https://code4rena.com/audits/2022-07-juicebox-v2-contest) | Code4rena | Contest | 2022-07 | stale | Direct | n/a | 0 | n/a |
| [code4rena.com/reports/2022-07-juicebox](https://code4rena.com/reports/2022-07-juicebox) | Code4rena | Contest | 2022-07 | stale | Direct | contract_name | 5 | n/a |
| [peckshield-audit-report-ab36ee2b5dfb2a387410b4d64276f6ba.pdf](https://docs.juicebox.money/assets/files/peckshield-audit-report-ab36ee2b5dfb2a387410b4d64276f6ba.pdf) | PeckShield | Audit | 2022-04 | stale | Direct | contract_name | 3 | n/a |
| [code4rena.com/reports/2023-05-juicebox](https://code4rena.com/reports/2023-05-juicebox) | Code4rena | Contest | 2023-05 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xc3c26682ef39a4a5f4a1dc2459a6fbcba4e5d8ea`](./contracts/ethereum-1/0xc3c26682ef39a4a5f4a1dc2459a6fbcba4e5d8ea/) | CTDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x127fa6d4d0a4e791c6c4adaa4c9ad97127690883`](./contracts/ethereum-1/0x127fa6d4d0a4e791c6c4adaa4c9ad97127690883/) | CTProjectOwner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x03ef9ea1467df70d4b1e1d619aa9a2a2f820ee24`](./contracts/ethereum-1/0x03ef9ea1467df70d4b1e1d619aa9a2a2f820ee24/) | CTPublisher | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc29d6995ab3b0df4650ad643adeac55e7acbb566`](./contracts/ethereum-1/0xc29d6995ab3b0df4650ad643adeac55e7acbb566/) | ERC2771Forwarder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x749ac9c5ef5ef41f402c70a5bc460c5a1d8eb25b`](./contracts/ethereum-1/0x749ac9c5ef5ef41f402c70a5bc460c5a1d8eb25b/) | JB721TiersHook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x792bdd4dd1e52fcf8fb3e80278a2b4e4396d2732`](./contracts/ethereum-1/0x792bdd4dd1e52fcf8fb3e80278a2b4e4396d2732/) | JB721TiersHookDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x048626e715a194fc38dd9be12f516b54b10e725a`](./contracts/ethereum-1/0x048626e715a194fc38dd9be12f516b54b10e725a/) | JB721TiersHookProjectDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2bc696b0af74042b30b2687ab5817cc824eba8ee`](./contracts/ethereum-1/0x2bc696b0af74042b30b2687ab5817cc824eba8ee/) | JB721TiersHookStore | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xea06bd663a1cec97b5bdec9375ab9a63695c9699`](./contracts/ethereum-1/0xea06bd663a1cec97b5bdec9375ab9a63695c9699/) | JBArbitrumSuckerDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd9f35d8dd36046f14479e6dced03733724947efd`](./contracts/ethereum-1/0xd9f35d8dd36046f14479e6dced03733724947efd/) | JBBaseSuckerDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x318f8aa6a95cb83419985c0d797c762f5a7824f3`](./contracts/optimism-10/0x318f8aa6a95cb83419985c0d797c762f5a7824f3/) | JBBuybackHook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9e1e0fb70bc4661f2cc2d5eddd87a9d582a12b1a`](./contracts/ethereum-1/0x9e1e0fb70bc4661f2cc2d5eddd87a9d582a12b1a/) | JBBuybackHookRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x172ad9b3df724ee0422ea85b7799a3f7ca761816`](./contracts/ethereum-1/0x172ad9b3df724ee0422ea85b7799a3f7ca761816/) | JBCCIPSuckerDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x6ed8eedc0689bd6a8c7168301897a0113c28bba4`](./contracts/optimism-10/0x6ed8eedc0689bd6a8c7168301897a0113c28bba4/) | JBChainlinkV3SequencerPriceFeed | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x97a5b9d9f0f7cd676b69f584f29048d0ef4bb59b`](./contracts/ethereum-1/0x97a5b9d9f0f7cd676b69f584f29048d0ef4bb59b/) | JBController3_1 | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcffdd1303f24145bd2c84e7bf15af1eb6ab924d7`](./contracts/ethereum-1/0xcffdd1303f24145bd2c84e7bf15af1eb6ab924d7/) | JBDeadline1Day | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x09b23b09af88bb6d7e9c957ff9f861f1c917111b`](./contracts/ethereum-1/0x09b23b09af88bb6d7e9c957ff9f861f1c917111b/) | JBDeadline3Days | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4eeb65e13ade86155d169ba1fabd06828171799a`](./contracts/ethereum-1/0x4eeb65e13ade86155d169ba1fabd06828171799a/) | JBDeadline3Hours | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdf911b94712cf117fb63b69838b16e1710636031`](./contracts/ethereum-1/0xdf911b94712cf117fb63b69838b16e1710636031/) | JBDeadline7Days | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xaeac450c8522e40244bdfb8120ee398207be5d31`](./contracts/ethereum-1/0xaeac450c8522e40244bdfb8120ee398207be5d31/) | JBERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfa391de95fcbcd3157268b91d8c7af083e607a5c`](./contracts/ethereum-1/0xfa391de95fcbcd3157268b91d8c7af083e607a5c/) | JBETHPaymentTerminal3_1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1d9619e10086fdc1065b114298384aae3f680cc0`](./contracts/ethereum-1/0x1d9619e10086fdc1065b114298384aae3f680cc0/) | JBETHPaymentTerminal3_1_2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfc702a0190f3edbc369208dfe77bf273add91d53`](./contracts/ethereum-1/0xfc702a0190f3edbc369208dfe77bf273add91d53/) | JBFeelessAddresses | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3a46b21720c8b70184b0434a2293b2fdcc497ce7`](./contracts/ethereum-1/0x3a46b21720c8b70184b0434a2293b2fdcc497ce7/) | JBFundAccessLimits | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6fbf8dc66b1879ff0ae243500f8b1e6f6d9e138a`](./contracts/ethereum-1/0x6fbf8dc66b1879ff0ae243500f8b1e6f6d9e138a/) | JBMatchingPriceFeed | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2db6d704058e552defe415753465df8df0361846`](./contracts/ethereum-1/0x2db6d704058e552defe415753465df8df0361846/) | JBMultiTerminal | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x587bf86677ec0d1b766d9ba0d7ac2a51c6c2fc71`](./contracts/ethereum-1/0x587bf86677ec0d1b766d9ba0d7ac2a51c6c2fc71/) | JBOmnichainDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x77cdb0f5eef8febd67dd6e594ff654fb12cc3057`](./contracts/ethereum-1/0x77cdb0f5eef8febd67dd6e594ff654fb12cc3057/) | JBOptimismSuckerDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x04fd6913d6c32d8c216e153a43c04b1857a7793d`](./contracts/ethereum-1/0x04fd6913d6c32d8c216e153a43c04b1857a7793d/) | JBPermissions | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd75d2eef7fe65bf9f46d7ef0b21eded98cb0a3a4`](./contracts/ethereum-1/0xd75d2eef7fe65bf9f46d7ef0b21eded98cb0a3a4/) | JBProjectHandles | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6292281d69c3593fcf6ea074e5797341476ab428`](./contracts/ethereum-1/0x6292281d69c3593fcf6ea074e5797341476ab428/) | JBRulesets | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd4257005ca8d27bbe11f356453b0e4692414b056`](./contracts/ethereum-1/0xd4257005ca8d27bbe11f356453b0e4692414b056/) | JBRulesets5_1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7160a322fea44945a6ef9adfd65c322258df3c5e`](./contracts/ethereum-1/0x7160a322fea44945a6ef9adfd65c322258df3c5e/) | JBSplits | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x07c8c5bf08f0361883728a8a5f8824ba5724ece3`](./contracts/ethereum-1/0x07c8c5bf08f0361883728a8a5f8824ba5724ece3/) | JBSuckerRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x259385b97dfbd5576bd717dc7b25967ec8b145dd`](./contracts/ethereum-1/0x259385b97dfbd5576bd717dc7b25967ec8b145dd/) | JBSwapTerminal | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x36379b28e67b73f5ae9e3de320ce1dbd7fd99c08`](./contracts/arbitrum-42161/0x36379b28e67b73f5ae9e3de320ce1dbd7fd99c08/) | JBSwapTerminal5_1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1ce40d201cdec791de05810d17aaf501be167422`](./contracts/ethereum-1/0x1ce40d201cdec791de05810d17aaf501be167422/) | JBSwapTerminalRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5cdfcf7f5f25da0dcb0eccd027e5feebada1d964`](./contracts/ethereum-1/0x5cdfcf7f5f25da0dcb0eccd027e5feebada1d964/) | JBTerminalStore | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2ca27bde7e7d33e353b44c27acfcf6c78dde251d`](./contracts/ethereum-1/0x2ca27bde7e7d33e353b44c27acfcf6c78dde251d/) | REVDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1880d832aa283d05b8eab68877717e25fbd550bb`](./contracts/ethereum-1/0x1880d832aa283d05b8eab68877717e25fbd550bb/) | REVLoans | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd569d3cce55b71a8a3f3c418c329a66e5f714431`](./contracts/ethereum-1/0xd569d3cce55b71a8a3f3c418c329a66e5f714431/) | TerminalV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x981c8ecd009e3e84ee1ff99266bf1461a12e5c68`](./contracts/ethereum-1/0x981c8ecd009e3e84ee1ff99266bf1461a12e5c68/) | TerminalV1_1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 49 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 6
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=18

Zero-match audit list:

- [11935] hacken.io/audits/constitution-dao/sca-constitution-dao-governance-erc20-jan2022
- [11936] hackmd.io/@berndartmueller/2023-01-juice-v3-migration
- [11937] code4rena.com/reports/2022-10-juicebox
- [11938] 2022-10-juicebox (GitHub directory)
- [11940] code4rena.com/audits/2022-07-juicebox-v2-contest
- [11943] code4rena.com/reports/2023-05-juicebox

Fork inheritance lineage and inherited audits are included when available.
