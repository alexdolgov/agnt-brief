# Agentic Audit Brief: Reserve Protocol

## Project Overview

- Project: Reserve Protocol (`reserve-protocol`)
- Website: [https://reserve.org](https://reserve.org)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:44.330Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-0679
- Chains: arbitrum, base, bsc, ethereum
- Contract surface: 610 unique implementations (1022 raw deployments)
- DeFi Llama TVL: $47,742,955.72
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Indexes. Structurally: 87 project-authored contract(s) across 4 chain(s); 4 ERC4626 vaults, 13 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 9 functional families. Its contracts share 11 common project-authored base contract(s) (icollateral, iasset, asset). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 1022; live-surface contracts included: 1022 (497 live, 525 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 50/85 (58.8%)
- Deployed-live implementations: 86 of 610 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 50/85
- Verified + Unaudited implementations: 35
- Verified by bytecode match: 0
- Unverified implementations: 525
- Unique implementations: 610
- Raw deployments: 1022
- Audits discovered: 27 (27 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 24
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-03 (fresh)
- Audit staleness (calendar age): 3 fresh, 7 aging, 17 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 51 match-unverified
- Tier 1 coverage: 30.6% (Code4rena, Spearbit, Trail of Bits)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 37 | 43.5% | 2026-03 |
| Code4rena | Tier 1 | 18 | 21.2% | 2024-08 |
| Pashov Audit Group | Tier 2 | 8 | 9.4% | 2025-06 |
| Trail of Bits | Tier 1 | 8 | 9.4% | 2025-06 |
| Trust Security | Tier 2 | 6 | 7.1% | 2024-12 |
| Ackee Blockchain | Tier 2 | 1 | 1.2% | 2022-10 |
| Halborn | Tier 2 | 1 | 1.2% | 2022-10 |
| Spearbit | Tier 1 | 1 | 1.2% | 2025-01 |

## Contract Surface

### ✅ Verified + Audited (50)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ActFacet | unknown | ethereum | n/a | [`0xcab3d3...cae2db`](./contracts/ethereum-1/0xcab3d3d0d5544145a6bcb47e58f61368bccae2db/) | ✅ Audited |
| ActFacet | unknown | base | n/a | 5 deployments: ethereum `0x857853...ddcf0c`; ethereum `0xca6095...712d98`; base [`0x72be46...6a42f5`](./contracts/base-8453/0x72be467048a4d9cbcc599251243f3ed9f46a42f5/); base `0xadfb9b...b520e7`; arbitrum `0xe774cc...9caa45` | ✅ Audited |
| AerodromeGaugeWrapper | operational_periphery | base | n/a | 6 deployments: base [`0x03b8e7...f214bb`](./contracts/base-8453/0x03b8e7dbeb8ea61d30594b445a1987cfc0f214bb/); base `0x15f06b...a0be07`; base `0x5550b9...d16568`; base `0xa4362f...306033`; base `0xc770a6...524527`; base `0xd5be0a...4e1ef3` | ✅ Audited |
| AerodromeStableCollateral | unknown | base | n/a | 4 deployments: base [`0x1bd202...fea358`](./contracts/base-8453/0x1bd20253c49515d348dad1af70ff2c0473fea358/); base `0x1cca3f...4b613a`; base `0x50ead4...87bc0d`; base `0x97f9d5...1b619b` | ✅ Audited |
| AerodromeVolatileCollateral | unknown | base | n/a | 10 deployments: base [`0x171034...1ca6c9`](./contracts/base-8453/0x171034efca7349e4d1944d179ccf52277d1ca6c9/); base `0x339c15...940da1`; base `0x5cb665...fbf5ed`; base `0x6647c8...154d24`; base `0x719fba...104a50`; base `0xb56aa9...06a72f`; base `0xc98eaf...899c10`; base `0xcfa67f...5b84c1`; base `0xdaacee...a52d6d`; base `0xee587c...5074c9` | ✅ Audited |
| ApxEthCollateral | unknown | ethereum | n/a | 2 deployments: ethereum [`0x5a78da...c63920`](./contracts/ethereum-1/0x5a78da62a85099a3da30e56f5da8db95afc63920/); ethereum `0x6f7eda...a259d8` | ✅ Audited |
| Asset | unknown | base | n/a | 14 deployments: ethereum `0xbcb71e...7edbe3`; base [`0x0d61ce...b769fd`](./contracts/base-8453/0x0d61ce1801a460eb683b5ed1b6c7965d31b769fd/); base `0x0e8439...5d96ac`; base `0x1b0562...6213ed`; base `0x22018d...952cdf`; base `0x396269...67ec40`; base `0x7f7b77...f062eb`; base `0x99bd63...1e5e50`; base `0xab0610...b9d7b9`; base `0xc1b538...e1d169`; base `0xc9c37f...0b8c7b`; base `0xe0e1d3...07bbfc`; base `0xf535ca...832f08`; base `0xf7d1c6...b56833` | ✅ Audited |
| AssetPluginRegistry | registry | base | n/a | 11 deployments: ethereum `0x15a9e0...8a1c29`; ethereum `0x4a818c...117135`; ethereum `0x6cf05e...b0958f`; ethereum `0xa9145a...569c98`; base [`0x093c07...aee4af`](./contracts/base-8453/0x093c07787920eb34a0a0c7a09823510725aee4af/); base `0x331250...5c36e4`; base `0x66a3b4...9576b0`; base `0x70c635...2745a2`; base `0x72ba23...c2ce8c`; base `0x7ac954...5d3551`; base `0x87a959...41aca4` | ✅ Audited |
| ATokenFiatCollateral | token | ethereum | n/a | 11 deployments: ethereum [`0x0d346e...932117`](./contracts/ethereum-1/0x0d346e98ceca2fd7de7be3f53737d82bde932117/); ethereum `0x1645dd...c72eb1`; ethereum `0x3a395c...803ca6`; ethereum `0x431a19...a422d6`; ethereum `0x4615c2...301f42`; ethereum `0x695980...eae163`; ethereum `0x723e26...5b9f76`; ethereum `0x7b0e00...911c44`; ethereum `0x9ea621...844210`; ethereum `0xd1a2a9...aa3e84`; ethereum `0xe79022...e70a37` | ✅ Audited |
| BackingManagerP1 | governance | ethereum | n/a | 5 deployments: ethereum [`0x3e6cd7...45ad21`](./contracts/ethereum-1/0x3e6cd7c1ae9e575552a1aad774017a6a6345ad21/); ethereum `0xc501c9...6d3ba2`; base `0x644618...25fb4e`; base `0x7dee4d...3f1538`; base `0xf73eb4...a3aed3` | ✅ Audited |
| BasketLibP1 | unknown | ethereum | n/a | 4 deployments: ethereum [`0x2fdd94...dd9bea`](./contracts/ethereum-1/0x2fdd94f363644fede5106b22b1706e45d4dd9bea/); ethereum `0x61b4f7...77c1bc`; base `0x3700b2...4f7314`; base `0xfa21cd...cd08a5` | ✅ Audited |
| CBEthCollateral | unknown | ethereum | n/a | 2 deployments: ethereum [`0x5ff112...3d1417`](./contracts/ethereum-1/0x5ff1120487ee5668d224c8c28ca3d548de3d1417/); ethereum `0xdcee05...98ce2e` | ✅ Audited |
| CBEthCollateralL2 | unknown | base | n/a | 7 deployments: base [`0x02d6d4...9118f2`](./contracts/base-8453/0x02d6d4e2bc351c8ac06730b3f82abf9e2f9118f2/); base `0x14c443...5b38fa`; base `0x8dc175...041834`; base `0xa0d168...21957f`; base `0xa87e9d...bfe0b8`; base `0xcb40f9...efb9f4`; base `0xf18ea8...c3ca45` | ✅ Audited |
| CowSwapFiller | unknown | ethereum | n/a | 13 deployments: ethereum [`0x0d3bfc...2d1f40`](./contracts/ethereum-1/0x0d3bfcfcbe9b626c4f4e19d02de4933bd92d1f40/); ethereum `0x2b3728...136bba`; ethereum `0xe7e0ae...42158e`; bsc `0x33008c...331484`; bsc `0x4d201a...122073`; bsc `0xbe3b47...bec63a`; base [`0x0d3bfc...2d1f40`](./contracts/base-8453/0x0d3bfcfcbe9b626c4f4e19d02de4933bd92d1f40/); base `0x1011ff...beccbd`; base `0x20ff4f...74b1bc`; base `0x6a4ca1...d1d531`; base `0x82b70f...82386f`; base `0x99e02f...4720f2`; base `0xe9ca9a...292c8c` | ✅ Audited |
| CTokenFiatCollateral | token | ethereum | n/a | 18 deployments: ethereum [`0x007211...488637`](./contracts/ethereum-1/0x0072118c321181168e6643919074a0b518488637/); ethereum `0x097b09...c97b02`; ethereum `0x0c82ef...c728b8`; ethereum `0x169544...540a2e`; ethereum `0x6394fe...f760e8`; ethereum `0x73073c...73e5a3`; ethereum `0x79ed64...53c614`; ethereum `0x7a5864...2f0de6`; ethereum `0x848727...d0067a`; ethereum `0x8cfb48...050a43`; ethereum `0x9a84c6...db8cea`; ethereum `0xbb7b4c...71caf4`; ethereum `0xc80272...b76ac5`; ethereum `0xcaf032...55d05e`; ethereum `0xcc0c0c...6b836a`; ethereum `0xd3f81f...3d24fb`; ethereum `0xf35fbe...39d9ef`; ethereum `0xf8b09c...c1d077` | ✅ Audited |
| CTokenNonFiatCollateral | token | ethereum | n/a | 3 deployments: ethereum [`0x32ab92...23f300`](./contracts/ethereum-1/0x32ab9216188f24434dc629acfa1554ab7623f300/); ethereum `0x3484ef...a01b74`; ethereum `0xa58053...5ebec5` | ✅ Audited |
| CTokenSelfReferentialCollateral | token | ethereum | n/a | 3 deployments: ethereum [`0x00a07a...bb6555`](./contracts/ethereum-1/0x00a07ac1b3f9c5f7ad4c6935b1cb2028debb6555/); ethereum `0x07b2b4...ff049e`; ethereum `0xe3da65...599543` | ✅ Audited |
| CTokenV3Collateral | token | ethereum | n/a | 9 deployments: ethereum [`0x309e7d...2e7e7f`](./contracts/ethereum-1/0x309e7d2df4fc528f8fd58be6ecf73293dd2e7e7f/); ethereum `0x4adf4c...73c78b`; ethereum `0x4d6f9a...3b814f`; ethereum `0x8e2428...a29668`; ethereum `0xa52f93...b825d3`; base `0x3d08ef...e4b103`; base `0x41edaf...ed8a2c`; base `0xdebe74...3d006a`; base `0xf5366f...1febf8` | ✅ Audited |
| CTokenWrapper | token | ethereum | n/a | [`0x6d05cb...cd4fe9`](./contracts/ethereum-1/0x6d05cb2cb647b58189fa16f81784c05b4bcd4fe9/) | ✅ Audited |
| CusdcV3Wrapper | unknown | ethereum | n/a | 8 deployments: ethereum [`0x093c07...aee4af`](./contracts/ethereum-1/0x093c07787920eb34a0a0c7a09823510725aee4af/); ethereum `0x27f2f1...ebf37a`; ethereum `0x7e1e07...41c9ab`; base `0x53f1df...7241fa`; base `0xa694f7...a486c8`; base `0xa8d818...44acb3`; base `0xbc0033...c5b29e`; arbitrum `0xd54804...67acc5` | ✅ Audited |
| DAOFeeRegistry | registry | base | n/a | 7 deployments: ethereum `0x6f477a...d48208`; ethereum `0xec716d...39342b`; base [`0x11c9ca...084723`](./contracts/base-8453/0x11c9ca7a43b76a5d9604e7441eb41a49e2084723/); base `0x3513d2...b219ad`; base `0x6b8714...8990e3`; base `0x7f9999...8565e2`; base `0xebd07c...4ae070` | ✅ Audited |
| DeployerRegistry | registry | base | n/a | 2 deployments: ethereum `0xd85fac...62cbbe`; base [`0x1265ec...307fb3`](./contracts/base-8453/0x1265ec05fd621d82f224814902c925a600307fb3/) | ✅ Audited |
| DutchTrade | unknown | ethereum | n/a | 4 deployments: ethereum [`0x4b15dd...fbe4ae`](./contracts/ethereum-1/0x4b15dd87dac24dd94633ecc1889d180809fbe4ae/); ethereum `0xcc3cb8...b7689d`; base `0x5757ff...46cfd9`; base `0x8a9f74...3f3aa2` | ✅ Audited |
| FacadeWrite | unknown | ethereum | n/a | 17 deployments: ethereum [`0x0a9d3d...ef9d4b`](./contracts/ethereum-1/0x0a9d3d35055481bb67e5e145b07f6fb6cbef9d4b/); ethereum `0x1d9429...cf220c`; ethereum `0x253602...9575c9`; ethereum `0x330852...2d69bd`; ethereum `0x46cf88...c74f49`; ethereum `0x71a45d...ebd838`; ethereum `0xa8ea6c...739357`; ethereum `0xe18131...6060e2`; base `0x1639fa...11923f`; base `0x357d4d...1d3fe3`; base `0x3c8cd9...482c2f`; base `0x43e205...0548a0`; base `0x53d8d5...47df4f`; base `0x5fb4e3...bff021`; base `0x790623...94f678`; base `0x7f9463...61d8c8`; base `0xcbe084...b1cba7` | ✅ Audited |
| FacadeWriteLib | unknown | base | n/a | 25 deployments: ethereum `0x2988ad...dd53f2`; ethereum `0x2e749f...a4f740`; ethereum `0x35925f...bef1c1`; ethereum `0x55c6d3...cf83c9`; ethereum `0x9081a2...82368a`; ethereum `0x97da66...edc292`; ethereum `0x99268a...ef32bb`; ethereum `0xe4db7d...661eb6`; ethereum `0xe8f9df...7c9dfe`; base [`0x110385...49cf9d`](./contracts/base-8453/0x1103851d1fcdd3f88096fbed812c8ff01949cf9d/); base `0x33c166...8d5875`; base `0x3c0a91...0cf1ea`; base `0x4e9b97...33fea3`; base `0x5a4f2f...b1a9c7`; base `0x5e3e13...9e65af`; base `0x62c394...fb8dd1`; base `0x79190a...f34a0a`; base `0x85b256...94040a`; base `0x97e158...b34356`; base `0xaaef84...f28b92`; base `0xbe6fb2...f4410a`; base `0xbf6e8f...cc2f0f`; base `0xc9291e...20565e`; base `0xd248a0...2d23b7`; base `0xe39188...8eedef` | ✅ Audited |
| FiatCollateral | unknown | base | n/a | 33 deployments: ethereum `0x3a0787...c6ea09`; ethereum `0x3efbb2...dd7e02`; ethereum `0x4c0b21...9b35e6`; ethereum `0x707925...8cf25f`; ethereum `0x7504ed...cb012a`; ethereum `0x8a782e...97adc5`; ethereum `0x9a6517...6daea5`; ethereum `0xb90fe3...e49488`; ethereum `0xbbf50a...348b0e`; ethereum `0xbc0dc9...b0ff98`; ethereum `0xd2d1c3...9b9c87`; ethereum `0xd717d7...c7d53d`; ethereum `0xd8a1b8...1e1973`; ethereum `0xdb6658...2acdee`; ethereum `0xdeade3...538d61`; ethereum `0xe0941a...c13d42`; base [`0x05b5fc...7ac8b3`](./contracts/base-8453/0x05b5fc630ef8f4a9116dc627fa8156ad3e7ac8b3/); base `0x1289a7...b7c216`; base `0x18a269...93906f`; base `0x27f672...a7309a`; base `0x33e840...6e9822`; base `0x37a425...f179fc`; base `0x3879c8...edb385`; base `0x39e19d...c46327`; base `0x484533...da276f`; base `0x49a44d...99f250`; base `0xbe7097...8fd97a`; base `0xd0ad99...8f311a`; base `0xd2270a...7da913`; base `0xd31eec...e91941`; base `0xdeaafe...b75437`; base `0xeacaf8...582547`; base `0xf003b8...7e9a7a` | ✅ Audited |
| Folio | unknown | base | n/a | 6 deployments: ethereum `0x089357...e31f09`; ethereum `0xb6b35b...b7e0a6`; bsc `0xd58b27...4d45e7`; base [`0x03d27e...214dfb`](./contracts/base-8453/0x03d27e00e98d107a9d2523144c2adec7cf214dfb/); base `0x047999...589f37`; base `0x6368e6...959a10` | ✅ Audited |
| FolioDAOFeeRegistry | registry | bsc | n/a | [`0x135437...68285e`](./contracts/bsc-56/0x135437333990f799293f6ad19fe45032ba68285e/) | ✅ Audited |
| FolioDeployer | unknown | bsc | n/a | 11 deployments: ethereum `0x4d201a...122073`; ethereum `0xbe3b47...bec63a`; bsc [`0x100e0e...ac00bb`](./contracts/bsc-56/0x100e0efdd7a4f67825e1be5f0493f8d2aeac00bb/); bsc `0x5bed18...edcdcf`; bsc `0x72f872...14ab2a`; base `0x3451fd...a816f9`; base `0x4d201a...122073`; base `0x50896d...d35795`; base `0x86fe46...cd4bce`; base `0xa203aa...5ae7ea`; base `0xb84699...755911` | ✅ Audited |
| FolioGovernor | governance | bsc | n/a | 8 deployments: ethereum `0x52f809...1b8b48`; ethereum `0x78bd8d...46a54b`; bsc [`0x279ccf...a88b3a`](./contracts/bsc-56/0x279ccf56441fc74f1aac39e7fac165dec5a88b3a/); bsc `0xa26511...68dce4`; bsc `0xbe8a1a...4f8d94`; base `0x40a0cb...faeec5`; base `0x52f809...1b8b48`; base `0xbf1fa2...10df9f` | ✅ Audited |
| GnosisTrade | unknown | base | n/a | 4 deployments: ethereum `0x7e7d81...5ff8c7`; ethereum `0xda1631...63e227`; base [`0x1ffa59...5b0c8d`](./contracts/base-8453/0x1ffa5955d64ee32cb1bf7104167b81bb085b0c8d/); base `0x4be336...879aa0` | ✅ Audited |
| Governance | unknown | base | n/a | 6 deployments: ethereum `0x3f26ef...a7eeae`; ethereum `0x441808...229279`; ethereum `0x868fe8...b8f753`; ethereum `0xf4a928...4662f8`; base [`0x21fba5...212055`](./contracts/base-8453/0x21fba52da03e1f964fa521532f8b8951fc212055/); base `0xffef97...8ca128` | ✅ Audited |
| GovernanceDeployer | unknown | base | n/a | 11 deployments: ethereum `0x5bed18...edcdcf`; ethereum `0x72f872...14ab2a`; bsc `0x270d92...3c13ec`; bsc `0x2f616b...564825`; bsc `0xa7bc12...a7bf9f`; bsc `0xbd49ce...049bad`; base [`0x1a7d04...10208d`](./contracts/base-8453/0x1a7d043c84fe781b6df046fefcf673f71110208d/); base `0x5bed18...edcdcf`; base `0x6a66e6...22c872`; base `0x72f872...14ab2a`; base `0xeca52a...4d7461` | ✅ Audited |
| MathLib | unknown | base | n/a | [`0x4edeb8...b11b99`](./contracts/base-8453/0x4edeb80ce684a890dd58ae0d9762c38731b11b99/) | ✅ Audited |
| NonFiatCollateral | unknown | ethereum | n/a | 4 deployments: ethereum [`0x743704...5dc60e`](./contracts/ethereum-1/0x7437047523dae8116a94ef5ffaab3a657e5dc60e/); ethereum `0xcab980...43419f`; ethereum `0xcc07ef...0d20c3`; ethereum `0xe2633b...a9a280` | ✅ Audited |
| RebalancingLib | unknown | base | n/a | [`0x093cb4...d0ac7d`](./contracts/base-8453/0x093cb4f405924a0c468b43209d5e466f1dd0ac7d/) | ✅ Audited |
| RecollateralizationLibP1 | unknown | base | n/a | 4 deployments: ethereum `0xd59545...6c7937`; ethereum `0xe84c59...610478`; base [`0x0e6d6c...1f3bc7`](./contracts/base-8453/0x0e6d6cbda4629fb2d82b4b4af0d5c887f21f3bc7/); base `0x50a9d5...daa1bb` | ✅ Audited |
| RethCollateral | unknown | ethereum | n/a | 2 deployments: ethereum [`0x02d960...d7ce49`](./contracts/ethereum-1/0x02d960943e1dd3b2c4d621dd8b72489fa4d7ce49/); ethereum `0x81283b...7e652e` | ✅ Audited |
| RoleRegistry | registry | ethereum | n/a | 2 deployments: ethereum [`0x11879d...5e324b`](./contracts/ethereum-1/0x11879d12ea0f1423240b7ef9c11084c1375e324b/); bsc `0xe1ec57...9641c9` | ✅ Audited |
| RSR | unknown | ethereum | n/a | [`0x320623...8b5d70`](./contracts/ethereum-1/0x320623b8e4ff03373931769a31fc52a4e78b5d70/) | ✅ Audited |
| RTokenP1 | token | base | n/a | 5 deployments: ethereum `0xb20909...2ca8a0`; ethereum `0xd1e0a5...74ae04`; base [`0x5ce95f...2a0dc0`](./contracts/base-8453/0x5ce95fadb880b6a0ba5ffb0d76ed58d97f2a0dc0/); base `0x8b06c0...ebc6e3`; base `0xe19ae8...fdc809` | ✅ Audited |
| SDaiCollateral | unknown | ethereum | n/a | 2 deployments: ethereum [`0x2fe50f...4d5d5e`](./contracts/ethereum-1/0x2fe50f96cd61a3056d497fe88cea8441244d5d5e/); ethereum `0xeb1191...fd6db4` | ✅ Audited |
| SelfReferentialCollateral | unknown | base | n/a | 6 deployments: ethereum `0x868dbb...5e2fb9`; ethereum `0x90c26f...2be58d`; base [`0x2387c2...dfdb2f`](./contracts/base-8453/0x2387c22727acb91519b80a15aef393ad40dfdb2f/); base `0x5f471b...a4f9ee`; base `0x6a0fc1...7750fb`; base `0x98f292...211469` | ✅ Audited |
| StakingVault | core_logic | ethereum | n/a | 6 deployments: ethereum [`0x02578b...b2af07`](./contracts/ethereum-1/0x02578bdd4cc437d12ba6c9d4fc0eec2c28b2af07/); ethereum `0xd5aa2e...e8ce0f`; base `0x276de7...1367f1`; base `0x410563...28a914`; base `0x426ad3...f44d23`; base `0xfbd1a5...bd931a` | ✅ Audited |
| StaticATokenLM | token | ethereum | n/a | 4 deployments: ethereum [`0x21fe64...6099d9`](./contracts/ethereum-1/0x21fe646d1ed0733336f2d4d9b2fe67790a6099d9/); ethereum `0x60c384...c32b15`; ethereum `0x898163...10afe2`; ethereum `0x958db6...295b07` | ✅ Audited |
| StaticATokenV3LM | token | arbitrum | n/a | 11 deployments: ethereum `0x0adc69...211bed`; ethereum `0x1576b2...a8797b`; ethereum `0x3a7949...c0f5fc`; ethereum `0xde554e...566e4c`; base `0x14548a...e53b5e`; base `0x184460...54dc6e`; base `0x308447...baff8b`; base `0x6f6f81...285759`; base `0xd34ef4...b3a9ef`; base `0xf68f5c...8bf028`; arbitrum [`0x030cde...3a3414`](./contracts/arbitrum-42161/0x030cdecbdca6a34e8de3f49d1798d5f70e3a3414/) | ✅ Audited |
| StRSRP1Votes | unknown | base | n/a | 4 deployments: ethereum `0x8e594f...69b387`; ethereum `0xd6d40d...60960b`; base [`0x05fa0c...3c774e`](./contracts/base-8453/0x05fa0c857dd8aa7716801fc59eb6c6d5653c774e/); base `0xb3dcce...953412` | ✅ Audited |
| TrustedFillerRegistry | registry | bsc | n/a | 4 deployments: ethereum `0x279ccf...a88b3a`; bsc [`0x08424d...a6449b`](./contracts/bsc-56/0x08424d7c52bf9edd4070701591ea3fe6dca6449b/); base `0x279ccf...a88b3a`; base `0x72db5f...6c7a18` | ✅ Audited |
| Upgrade4_2_0 | unknown | ethereum | n/a | 12 deployments: ethereum [`0x0e6e79...6625b9`](./contracts/ethereum-1/0x0e6e791a5f7a104085f7b6d3e9de53f6c76625b9/); ethereum `0x133c3e...6f6a24`; ethereum `0x80953b...9884a1`; ethereum `0x977208...ea55c3`; ethereum `0xbff761...de3601`; ethereum `0xc76ebb...ff753d`; base `0x43587c...e35b0b`; base `0x890faa...8f9122`; base `0x908cd3...cd6db1`; base `0xb57db8...f224e1`; base `0xbf121c...cbe66b`; base `0xcae063...235a75` | ✅ Audited |
| VersionRegistry | registry | ethereum | n/a | 15 deployments: ethereum [`0x121c34...0c5676`](./contracts/ethereum-1/0x121c34fbedcc125cc13782008e2530a5610c5676/); ethereum `0x1895b1...3464e0`; ethereum `0x37c864...dc10bf`; ethereum `0x67f778...20562e`; ethereum `0xb031d7...47dd04`; ethereum `0xba8cd8...2d6a30`; base `0x2261c4...26021c`; base `0x2f98ba...e60c89`; base `0x35e675...98971b`; base `0x3bece5...4e3fe5`; base `0x58d7bf...1325ad`; base `0x7cd9ca...c1ac51`; base `0xbbc532...1aed01`; base `0xbd769e...a692df`; base `0xbe9d23...55ca04` | ✅ Audited |

### ⚠️ Verified + Unaudited (35)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AssetRegistryP1 | registry | base | n/a | 10 deployments: ethereum `0x1acff3...cfa42d`; ethereum `0x43feb1...e3497c`; ethereum `0x718bd9...40199f`; ethereum `0xcb7e10...693637`; ethereum `0xf683e6...088aec`; base [`0x159af3...d113cc`](./contracts/base-8453/0x159af360d99b3dd6c4a47cd08b730ff7c9d113cc/); base `0x2837f9...ce2cf7`; base `0x29f2eb...bcc49c`; base `0x63be60...d707a2`; base `0xabd7e7...57b6a3` | ⚠️ Unaudited |
| BasketHandlerP1 | unknown | ethereum | n/a | 4 deployments: ethereum [`0x2b3c75...790857`](./contracts/ethereum-1/0x2b3c7516564261fff2190f5496c53c1155790857/); ethereum `0x54a8fa...b57a3c`; base `0x5c83ca...5737c2`; base `0xf69c99...879ffa` | ⚠️ Unaudited |
| BrokerP1 | unknown | base | n/a | 4 deployments: ethereum `0x63c610...052d4c`; ethereum `0x9ce1e9...c7e095`; base [`0x07cdea...7383d6`](./contracts/base-8453/0x07cdea861b2a231e249e220a553d9a38ba7383d6/); base `0x714341...c314d6` | ⚠️ Unaudited |
| DeployerP1 | unknown | ethereum | n/a | 16 deployments: ethereum [`0x08638a...9d3bad`](./contracts/ethereum-1/0x08638a2efe63d3a4e5056860e4292b6c059d3bad/); ethereum `0x087ac5...7d4526`; ethereum `0x30dbbe...af9b84`; ethereum `0x40cd76...982f9d`; ethereum `0x8fcbd0...cb8710`; ethereum `0x97c0d2...a0b1e3`; ethereum `0xd01d00...fe34ee`; ethereum `0xd5fcf4...0255ac`; base `0x1142ad...b0d5fa`; base `0x25a994...cfba99`; base `0x5574ed...d8ff41`; base `0x5705f8...3a1a57`; base `0x7e1e07...41c9ab`; base `0x7e4650...2b0a58`; base `0x9e5060...6dca79`; base `0x9ff9c3...a5a77f` | ⚠️ Unaudited |
| DistributorP1 | operational_periphery | base | n/a | 4 deployments: ethereum `0x5593f9...d88f32`; ethereum `0xe56992...201151`; base [`0x504e15...f1805f`](./contracts/base-8453/0x504e15ca74ffe0791a7fc2c069dda486d9f1805f/); base `0xe1fccf...443ecd` | ⚠️ Unaudited |
| ETHxCollateral | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1c0a14...f87dba`](./contracts/ethereum-1/0x1c0a14a44c4a6834fe23632da2f493cc4cf87dba/); ethereum `0x9fc417...ea9dde` | ⚠️ Unaudited |
| Facade | unknown | base | n/a | [`0x688c95...b40384`](./contracts/base-8453/0x688c95461d611ecfc423a8c87cace163c6b40384/) | ⚠️ Unaudited |
| FolioLens | periphery | bsc | n/a | 9 deployments: ethereum `0x6f57fb...00e9de`; ethereum `0xe8e67a...de7825`; bsc [`0x0d3bfc...2d1f40`](./contracts/bsc-56/0x0d3bfcfcbe9b626c4f4e19d02de4933bd92d1f40/); bsc `0x6acb6f...7ebd7b`; bsc `0xe7e0ae...42158e`; base `0x25eb2f...40ac23`; base `0x64213e...1b63bf`; base `0x803a52...9fd227`; base `0xe8e67a...de7825` | ⚠️ Unaudited |
| FurnaceP1 | unknown | base | n/a | 4 deployments: ethereum `0x518fca...74f03f`; ethereum `0xa8da82...65a6e9`; base [`0x280eb3...3c396d`](./contracts/base-8453/0x280eb3b16a95a2f3cedc2bdc4e6f91b43a3c396d/); base `0x2caf7b...d8a816` | ⚠️ Unaudited |
| GenericTokenJar | token | base | n/a | 4 deployments: ethereum `0x9811e3...6d037e`; base [`0x1f55b8...86b3b8`](./contracts/base-8453/0x1f55b89d575d531446a2569158f880768686b3b8/); base `0x490c31...9d1ecd`; base `0xfa2ac5...d4e2a6` | ⚠️ Unaudited |
| GovernanceSpell_04_17_2026 | unknown | ethereum | n/a | 8 deployments: ethereum [`0x082e70...0e5a14`](./contracts/ethereum-1/0x082e701456cd702fbe5797ab515e6b00580e5a14/); ethereum `0x23e50a...930b58`; ethereum `0xd72384...5bc6f1`; base `0x0adc69...211bed`; base `0x4da79d...eaee5c`; base `0xc5e940...48f220`; base `0xe176a5...5f5bc7`; base `0xe9ae2c...f9cd3f` | ⚠️ Unaudited |
| Guardian | governance | base | n/a | [`0x351991...c6707b`](./contracts/base-8453/0x3519918e2918b59f3b29bed16dc77174dec6707b/) | ⚠️ Unaudited |
| ImmutableTokenJar | token | base | n/a | [`0x8c8841...701504`](./contracts/base-8453/0x8c8841d771eef8d61eff7e6f82db7f7f31701504/) | ⚠️ Unaudited |
| MainP1 | unknown | ethereum | n/a | 4 deployments: ethereum [`0x090e88...e37661`](./contracts/ethereum-1/0x090e88bc794cce2d622738cafb5b8ba0cae37661/); ethereum `0xc5bf68...e15e44`; base `0x6d05cb...cd4fe9`; base `0x7a1468...5ef18e` | ⚠️ Unaudited |
| MockRoleRegistry | registry | base | n/a | [`0x8ad305...573928`](./contracts/base-8453/0x8ad3055286f4e59b399616bd6befe24f64573928/) | ⚠️ Unaudited |
| OETHCollateral | unknown | ethereum | n/a | 2 deployments: ethereum [`0xa4d387...d47ac2`](./contracts/ethereum-1/0xa4d38731434e875d7e30e13d8b65befed7d47ac2/); ethereum `0xbfac3e...6b53e1` | ⚠️ Unaudited |
| OETHCollateralL2Base | unknown | base | n/a | 2 deployments: base [`0x4024c0...e63dd5`](./contracts/base-8453/0x4024c00bbd0c420e719527d88781bc1543e63dd5/); base `0x878b99...2e1637` | ⚠️ Unaudited |
| OptimismMintableERC20 | bridge_template | base | n/a | [`0xab3645...72f64a`](./contracts/base-8453/0xab36452dbac151be02b16ca17d8919826072f64a/) | ⚠️ Unaudited |
| OptimisticSelectorRegistry | registry | base | n/a | 8 deployments: ethereum `0x9eb27b...817f5a`; ethereum `0xb627d5...b34281`; base [`0x1f6ed1...8f2b8c`](./contracts/base-8453/0x1f6ed108092579076be34057a0a84d96c48f2b8c/); base `0x6e1494...524b8e`; base `0x823110...6d5526`; base `0x8d6e04...7013cf`; base `0x8e33d5...4fbcf1`; base `0xfbefbe...0efa0d` | ⚠️ Unaudited |
| OracleFactory | operational_periphery | ethereum | n/a | [`0xa9952a...cd6a56`](./contracts/ethereum-1/0xa9952a5a8e3da79b028c46e117d26349c0cd6a56/) | ⚠️ Unaudited |
| ReserveOptimisticGovernanceVersionRegistry | registry | base | n/a | [`0x32738d...1150d5`](./contracts/base-8453/0x32738d2813441ea0cdb839ae97e97874ed1150d5/) | ⚠️ Unaudited |
| ReserveOptimisticGovernor | governance | base | n/a | 8 deployments: ethereum `0x94a45f...33ca0f`; ethereum `0xc13471...53a8e3`; base [`0x087d0f...ae545f`](./contracts/base-8453/0x087d0fe8827af9c25cc360a5c27ad8599dae545f/); base `0x29edbb...bc3229`; base `0xa3f994...d34ee8`; base `0xcab3d3...cae2db`; base `0xcdc049...b5bdb0`; base `0xf0fb23...e0a07a` | ⚠️ Unaudited |
| ReserveOptimisticGovernorDeployer | governance | base | n/a | 8 deployments: ethereum `0x92dc80...77e5f3`; ethereum `0xd4627f...295f79`; base [`0x1262f9...58cc7b`](./contracts/base-8453/0x1262f9dd085fe3360acf2dc364669207d958cc7b/); base `0x2d7400...753d8e`; base `0x35783e...cce909`; base `0x6de4c0...5c31ff`; base `0x81da74...ef3cd6`; base `0x9257a1...c3482e` | ⚠️ Unaudited |
| RevenueTraderP1 | unknown | base | n/a | 6 deployments: ethereum `0x9e240c...1dc0eb`; ethereum `0xbaa47e...eb16ac`; ethereum `0xe5fee6...34aa6c`; base [`0x2377f1...e4435d`](./contracts/base-8453/0x2377f1817461b2994c7dfd7596fd3cbfdce4435d/); base `0x55590a...5cbf13`; base `0xf8cae9...cac8be` | ⚠️ Unaudited |
| RewardTokenRegistry | registry | base | n/a | [`0x2418e1...fb7105`](./contracts/base-8453/0x2418e1e9a7f7663e8b97b57d4e4aa506a3fb7105/) | ⚠️ Unaudited |
| StandardArbERC20 | token | arbitrum | n/a | [`0xca5ca9...d2e594`](./contracts/arbitrum-42161/0xca5ca9083702c56b481d1eec86f1776fdbd2e594/) | ⚠️ Unaudited |
| SUSDSCollateral | unknown | ethereum | n/a | 2 deployments: ethereum [`0x4fd189...99d24e`](./contracts/ethereum-1/0x4fd189996b5344eb4cf9c749b97c7424d399d24e/); ethereum `0x8a1a3b...e1b08a` | ⚠️ Unaudited |
| TimelockControllerOptimistic | governance | base | n/a | 8 deployments: ethereum `0x5ee539...c94e41`; ethereum `0x628336...f0c560`; base [`0x29dc6f...d16ecb`](./contracts/base-8453/0x29dc6f79750020d77c6391629101bdc0f0d16ecb/); base `0x2c7ca5...4d0613`; base `0x5c6968...2aaf59`; base `0x99f702...c922fc`; base `0xb582fe...294219`; base `0xc39e3c...d13927` | ⚠️ Unaudited |
| TimelockControllerUpgradeable | governance | ethereum | n/a | 8 deployments: ethereum [`0x270d92...3c13ec`](./contracts/ethereum-1/0x270d928b9ee38bad93601d197256390b3c3c13ec/); ethereum `0xa7bc12...a7bf9f`; bsc `0x52f809...1b8b48`; bsc `0x758990...d58f31`; bsc `0x78bd8d...46a54b`; base `0x332601...ae649e`; base `0x80fd61...076ad2`; base `0xa7bc12...a7bf9f` | ⚠️ Unaudited |
| TokenImplementation | token | bsc | n/a | [`0x23f72a...27bfee`](./contracts/bsc-56/0x23f72a3db61d6cb8abe5d9af1ac4b6c99327bfee/) | ⚠️ Unaudited |
| TradeHelperFacet | periphery | ethereum | n/a | 2 deployments: ethereum [`0x9c09e5...0201fb`](./contracts/ethereum-1/0x9c09e506e00ac87e2413b7501702faca690201fb/); base `0xc1e16a...e12d3f` | ⚠️ Unaudited |
| UpgradeSpell_4_0_0 | unknown | base | n/a | 2 deployments: ethereum `0x7498c6...a39cc9`; base [`0x4720db...3acadb`](./contracts/base-8453/0x4720dbcaeef5834aef590781f93d70fd1e3acadb/) | ⚠️ Unaudited |
| UpgradeSpell_5_0_0 | unknown | ethereum | n/a | 3 deployments: ethereum [`0x044b6f...7d2d53`](./contracts/ethereum-1/0x044b6f685fb8d0c3fd56d92fcbe5f0ad947d2d53/); bsc `0xe8e67a...de7825`; base `0x04b3ed...cbb540` | ⚠️ Unaudited |
| USDeFiatCollateral | unknown | ethereum | n/a | 2 deployments: ethereum [`0x403623...ebf1d8`](./contracts/ethereum-1/0x403623175656ed0cdf1f9efe54867761f1ebf1d8/); ethereum `0x4f3016...8f9b34` | ⚠️ Unaudited |
| USDP | unknown | ethereum | n/a | [`0x8e870d...8289e1`](./contracts/ethereum-1/0x8e870d67f660d95d5be530380d0ec0bd388289e1/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (525)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x01191c...5b3b72` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0262e3...cdcd80` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x060a29...3e23bb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x08424d...a6449b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x08ac3b...e90610` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x124d6b...3f358a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x14ccb0...5786c0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x194227...1bdffc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1c5ed6...81e83a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2362a9...2b22c6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x244b79...76d109` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2635c3...df0ad0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x28352c...74c604` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x309740...2ba4c0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3679c2...20e258` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x38190e...423dd2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x399fef...88dec4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3bee3f...ced0bf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4abd7f...98f1e5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4bfe6e...50c3b7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4c64ef...5d3644` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4dde11...f6530c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x57987f...5bdbb6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5d6cfc...793ba8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5e9cfc...dd1286` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x61c0b6...0e8e56` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x672303...2b2c79` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x69841b...1f6956` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6b94e5...5d28d9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6e3425...d84422` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6ffcb0...da9ce6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x70c861...f44d54` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x79a4e9...6c9390` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x79d80b...05132a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7a993a...6d4f9a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7b05d3...546bfe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7c8f29...060e6a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x82431a...02248c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x86eee0...55310a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x87d79d...a89715` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x880f6e...2eda15` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x88b224...7a9e52` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8c3878...e9c586` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9104be...82f072` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x917db5...bf8868` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x997272...e6853b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9ba7f5...127edc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa29a30...b46d56` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa32a92...5194b9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa403a3...9413e0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa665b2...4849db` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa73980...fe6ff7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa89317...853b6a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaafb13...443cba` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xab2b07...dfc07c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb0983c...43c6d5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb80bb3...5bae19` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb84699...755911` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbe4fd6...b41f23` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc2f865...72ba1c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc3bf92...705f87` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc724c8...e2611d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcb061c...f0c212` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcbd661...576722` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd2b4e3...c1fdfd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd2db4f...46bb07` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd422f6...c15c47` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd492fc...728d08` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd7bf46...1fc721` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdbd9c5...e03d14` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdec77d...58653f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe1ec57...9641c9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe4227e...b13295` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe4c7e0...78e9a7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe8f62c...95c4aa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe92657...2b558c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf57337...1c399e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf58192...50795b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf9b554...a18b88` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfa025d...40d421` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfb56b6...89ecac` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfd0cb5...43cbea` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfde702...3f7335` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x002835...66948e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x02062c...11ec23` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0262e3...cdcd80` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x02ab5b...2504a5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x030cde...3a3414` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x03bd4e...b231bd` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x042d85...aa1904` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0626b7...f45e7e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x06f7d1...1490e3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x073bd1...67276e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x090304...c0967f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0908a3...313ff6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0ad231...5b50e4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0defa4...3b9998` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0eac15...861f43` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0ef3c7...efdbe5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0f53ab...46baa5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x100e0e...ac00bb` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1093b9...29578f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x10d7a1...faf2ba` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x126f28...aeaf76` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x12c3bb...e106ba` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x135437...68285e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x13b63e...59314a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x143c35...bede2f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x143d74...4a8235` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x15175d...2e4e66` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1656d8...ff3629` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x16e205...8bdb90` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x16fc60...535054` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1744c9...967c2a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x182e86...7449e7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x186d05...086d4c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x199e12...787a71` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x19e3d9...306ce0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1bd9ea...0bbde7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1cddc4...321ed6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1d6d0b...275143` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1e313e...35b2dd` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1f1941...3c34b5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1f59e2...318877` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1f7e90...cbd0cf` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2117cb...d65a26` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x212dc5...b463f8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x21e841...69a9d8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x21fe64...6099d9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x22d284...4bda7b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x23b574...db797b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x23f775...f4e5e4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x243105...570e98` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x24d0aa...02ed8e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x256b89...3db0c9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x25aa98...023ee2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x25e927...8a1cbf` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x26efbe...67b473` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x270284...aace90` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x270d92...3c13ec` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x277fd5...c74abf` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x27bb91...1d5616` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x281edd...31a52b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x28f29f...c4aef0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x29e974...393027` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2a00a9...d2c464` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2a2a84...1e4485` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2b2836...1a9b6c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2c312d...e748dc` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2c5293...402582` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2f616b...564825` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3043be...99af52` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x30b295...66a047` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x311a3c...01bb72` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x315402...715097` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x33b2a7...6ead50` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3611de...fef062` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x36a43e...000923` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3712dd...84cd36` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x375209...05064a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x37bb29...1c82e9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x382ee5...76e5ce` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x384d70...aa9517` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x387a0c...bb48a9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x38c7e9...9afb82` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x38e6c0...7d5748` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x393002...a30c96` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3a30b3...0b9e4d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3a55ce...d993fb` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3a8602...d6a1dd` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3af43b...3ccc25` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3c2460...08503f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3d3226...62327c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3d6d67...a687f3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3ddc60...95fdb7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3dde17...cb91ab` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3e4084...cf18e5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3f6513...2e9387` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3f6fd3...eadf6a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3f83aa...fa4941` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4284d7...9070cf` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x42d0fa...01b4a3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x42e274...6ba75f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x42f2f6...f188c9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x437b52...8d3cd4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x43c771...8f764c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x43dca4...2e9f0b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x440a63...dd5f8c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x44ab1c...4cde24` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x451c17...c0367a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x45b9bc...4b4645` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x45d7df...7b87bd` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x46c600...289afb` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x47df14...8c0b66` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x48d144...22d759` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x48f4ea...be176f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4a2fd1...ed11f4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4c175e...74ac6f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4c2fca...c15406` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4c64ef...5d3644` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4cf200...982c7d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4e0167...6d7e9b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4e2792...0f0e62` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x50f499...fa783e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x520cf9...555032` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x53321f...c69a46` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x536308...b8483b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5429cd...caad77` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x547277...1330d9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5643d5...e7d9c1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x586bb2...a45881` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x587cef...ef5e2a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5a004f...8afeb8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5a0f5e...8dd898` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5af543...baeb27` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5bfc6d...35ae60` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5c46b7...4b69bb` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5caf60...ecb872` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5d7906...06b3f1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5e0116...129715` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5ebe89...3602fb` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5ef74a...9b4b88` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5f053d...7d486b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5fe248...952402` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x60c384...c32b15` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x614498...4780c8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x615d92...702a1f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6356f6...6df5c1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x63e12c...be69be` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x63fdcb...920cb6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6419fe...8f79a7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6490d6...accdeb` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x65d410...6d6eb6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x67168b...105b03` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6795eb...dbf682` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6816ce...bd249e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x698335...f16deb` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x69bd37...4fd378` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x69c20a...75da17` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6acb6f...7ebd7b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6affde...807515` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6d84bb...694dd1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6ec09b...c7701a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6fe56a...48192f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x71199c...f8f94c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7182e3...d0f767` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x725055...55e079` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7284c5...edf642` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x72f085...c6539b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x732148...0f8381` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x743063...6f3a2d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x748aba...743162` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7498c6...a39cc9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x756ef5...962aac` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x758990...d58f31` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7600cd...991df4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x77cfe9...ab2b5e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x77e9cb...a9241b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x78bd8d...46a54b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x79a4e9...6c9390` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7c50c2...5acad8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7d4552...fc6c7a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7d85d8...79e834` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7e9633...e0f359` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7fc1c3...2ee85d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7fdbe3...119acd` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x805bd2...9c2c7c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x80a574...80bfaf` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x80b24e...564db9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x81b19a...2eb478` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x81c247...4644e6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x83dac0...f6ede6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x83e22b...a65e4e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x851b46...a04d0d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8569d6...1c28d2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x87f0ec...7b811e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x883d5e...b333bf` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x88cf64...6f010d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x89209a...eaf3b7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8960ae...143798` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x89b2ef...78e612` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8a0193...09a83f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8a11d5...0dc880` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8a8a1a...bf0133` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8b9063...798af3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8d5995...83acad` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8d68d4...ae4402` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8f4718...55d986` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x90b8cf...7d0971` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x91bc36...8aa61c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x91fa9a...07cea4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x933c5d...98fa78` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x93de15...0de49e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x95171c...e357a5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x951d32...f2e387` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x97c750...e8813f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x97d765...975a39` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9837ce...901963` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9c387f...3a396c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9c7531...7ba4ac` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9ccc7b...6f8656` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9cd0f8...d7e948` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9f99f3...615d46` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa0d4b6...21a1cc` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa24e0d...b26558` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa29a30...b46d56` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa372ec...94df41` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa3fcb8...19b040` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa42850...4bf7a6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa4cf53...4cef33` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa4f1fc...551fb5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa665b2...4849db` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa6e159...84cedd` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa6fa21...3186eb` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa70e7f...ab8ef2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa9c7ae...195a13` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xaa8521...e2635a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xab084e...858664` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xac543e...f9757c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xad4b0b...443439` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xad76b1...5a06bb` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xaea6bd...9dbd09` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xaeca35...109654` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xafd16a...fda985` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb03a02...0ee8fe` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb05e15...889fc0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb14502...fb2105` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb262e5...75b6ad` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb35222...35a193` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb3b8e2...363e01` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb410e1...846ee2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb4eb87...98d05b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb54409...1bc7ee` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb5bdff...a1b23e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb5cf32...c3f96d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb60a2d...2ec1d1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb80cb6...6c44d0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb8794f...2e37e0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb8bd31...76855f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xba748f...b0300c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbab530...89a0a4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbc3094...7bb1cd` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbd16da...ccb297` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbd49ce...049bad` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbe3012...6d5c44` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbe3b47...bec63a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbe54a0...087945` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbea06b...ee31d7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbeaa89...b861a0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbefb78...2b2d3a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbf52ef...eb8182` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc03c0d...9479b3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc17ad2...748df0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc58ec7...f4c256` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc6e5cf...396c43` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc74ee9...c7039a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc78c5a...38d569` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc8f487...0bd90b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xcb061c...f0c212` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xcb6d5c...0c29b0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xcbcd60...387423` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xcbd013...686f24` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xccc18b...f88c15` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xcd0339...818e73` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xcd77df...d147ee` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xcdd485...0d0f2e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xcdf32e...c3e75a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xce0387...8e5faa` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd0ecc3...718e94` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd0ff3a...0cb065` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd12674...01c2c4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd30253...0ab229` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd3072b...d2f2f6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd31de6...02c19b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd42643...66e3a2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd45a44...798e66` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd4e1d5...d7d39f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd5cc28...4cbfa1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd85fac...62cbbe` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd9438b...a7afbb` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd97c86...61b4c9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xdb4bee...76ee8b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xdbd9c5...e03d14` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xddb74e...8c424c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xde0e2f...54cea2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xdf99cc...38e682` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xdfcc89...1e3dc7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe0b810...5f518d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe11b89...5baa9b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe1aa15...5f91bf` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe1ec57...9641c9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe2b652...33956d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe33cef...b77ea8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe352b0...3268d0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe41416...9a87d9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe4c0ba...db2da6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe5a1da...3e19f5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe5bd22...05029a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe639d5...dede7d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe664d2...907f46` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe7187c...7c4e86` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe7e0ae...42158e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe89879...48d262` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe90457...90f771` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe92657...2b558c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xea525d...ff5c90` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xeb1a03...299f05` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xeb2071...583991` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xecbba7...b7a6cc` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xed67e4...6de776` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xee516f...96e9c3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xee527c...f3050f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xeedc6e...74a66a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xeee5fb...87478b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf1b06c...c2eac1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf34582...ca77c6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf4c5d3...06ae16` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf507cc...b142bf` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf57337...1c399e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf579f9...a43022` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf584f0...936518` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf6147b...7bd7ea` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf64a5c...5cb391` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf7a9d2...352461` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf8ad25...502f02` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf8cc32...d21314` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf934c3...0cd702` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xfd18ba...2a8d0a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xfd4341...c68010` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xfd6cc4...d2f377` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xfd7eb6...695d68` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xfdc362...319b7c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xff6358...a23bcb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x02062c...11ec23` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x02ab5b...2504a5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x02ee68...dfc178` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x03bf3b...c8a8c1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x042d85...aa1904` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x073bd1...67276e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x091087...44bfe6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0eac15...861f43` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0f345f...c0f70e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x13b63e...59314a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x143d74...4a8235` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x15175d...2e4e66` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x157b0c...a5e1d6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x182e86...7449e7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x184460...54dc6e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x186d05...086d4c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x19927e...2fb65e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1cddc4...321ed6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x21fba5...212055` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x270284...aace90` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2b5ca6...6c4ce2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x348644...ad63fc` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x37c8eb...baff6d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x387a0c...bb48a9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x38ef27...f80b41` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3a8602...d6a1dd` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3ac8f0...0c32f7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3c2460...08503f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3dde17...cb91ab` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3e4084...cf18e5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x437b52...8d3cd4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x43e205...0548a0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x46c600...289afb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4cf200...982c7d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x520cf9...555032` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x53f1df...7241fa` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5af543...baeb27` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5ef74a...9b4b88` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x63fdcb...920cb6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x65d410...6d6eb6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x688256...20cf22` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6bae9b...4a299c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6f6f81...285759` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6fe56a...48192f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7182e3...d0f767` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x73094d...6d59ed` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7cceab...6be444` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x851b46...a04d0d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8569d6...1c28d2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x88cf64...6f010d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8a11d5...0dc880` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8a5dfe...a6fca6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8b4374...660a73` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8d5995...83acad` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x93de15...0de49e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9c7531...7ba4ac` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa185a9...297e30` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa24e0d...b26558` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa4f1fc...551fb5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa6fa21...3186eb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa8d818...44acb3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa96ae0...ee2b57` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa9df96...a7e61f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xaa8521...e2635a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xab6b73...41db2a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xaeca35...109654` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb48a40...af7e64` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb5bdff...a1b23e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb7f55a...acf289` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb8794f...2e37e0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xba748f...b0300c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc19f5d...b76f50` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc8f487...0bd90b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xcd0339...818e73` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xcd77df...d147ee` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd12674...01c2c4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd30253...0ab229` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd42620...64fec9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd85fac...62cbbe` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xdf99cc...38e682` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe0b810...5f518d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe2b652...33956d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe7187c...7c4e86` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xeb2071...583991` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf4c5d3...06ae16` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf67454...5101b6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf7a9d2...352461` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xfa9353...153106` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xfd18ba...2a8d0a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xfd529f...e8d1e9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xfd7eb6...695d68` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xffef97...8ca128` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Ackee - abch-reserve-protocol-report-1.1.pdf](https://github.com/reserve-protocol/protocol/blob/master/audits/Ackee%20-%20abch-reserve-protocol-report-1.1.pdf) | Ackee Blockchain | Audit | 2022-10 | stale | Direct | contract_name | 1 | n/a |
| [Certora Formal Verification FixLib.pdf](https://github.com/reserve-protocol/protocol/blob/master/audits/Certora%20Formal%20Verification%20FixLib.pdf) | unknown | Audit | 2026-01 | fresh | Direct | n/a | 0 | n/a |
| [Code4rena - Reserve Audit Report - Release 2.1.0.md](https://github.com/reserve-protocol/protocol/blob/master/audits/Code4rena%20-%20Reserve%20Audit%20Report%20-%20Release%202.1.0.md) | Code4rena | Contest | 2023-01 | stale | Direct | contract_name | 7 | n/a |
| [Code4rena - Reserve Audit Report - Release 3.0.0 (collaterals).md](https://github.com/reserve-protocol/protocol/blob/master/audits/Code4rena%20-%20Reserve%20Audit%20Report%20-%20Release%203.0.0%20(collaterals).md) | Code4rena | Contest | 2023-08 | stale | Direct | contract_name | 8 | n/a |
| [Code4rena - Reserve Audit Report - Release 3.0.0 (core).md](https://github.com/reserve-protocol/protocol/blob/master/audits/Code4rena%20-%20Reserve%20Audit%20Report%20-%20Release%203.0.0%20(core).md) | Code4rena | Contest | 2023-06 | stale | Direct | contract_name | 2 | n/a |
| [Code4rena - Reserve Audit Report - Release 4.0.0.md](https://github.com/reserve-protocol/protocol/blob/master/audits/Code4rena%20-%20Reserve%20Audit%20Report%20-%20Release%204.0.0.md) | Code4rena | Contest | 2024-08 | aging | Direct | contract_name | 5 | n/a |
| [Halborn - Reserve_Protocol_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf](https://github.com/reserve-protocol/protocol/blob/master/audits/Halborn%20-%20Reserve_Protocol_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf) | Halborn | Audit | 2022-10 | stale | Direct | contract_name | 1 | n/a |
| [Oak Security - 2026-03-12 Audit Report - Reserve Updates.pdf](https://github.com/reserve-protocol/protocol/blob/master/audits/Oak%20Security%20-%202026-03-12%20Audit%20Report%20-%20Reserve%20Updates.pdf) | unknown | Audit | 2026-03 | fresh | Direct | contract_name | 10 | n/a |
| [Reserve_June_Plugins_v1.pdf](https://github.com/reserve-protocol/protocol/blob/master/audits/Reserve_June_Plugins_v1.pdf) | unknown | Audit | 2024-11 | aging | Direct | contract_name | 1 | n/a |
| [Reserve_PR_4_0_0_v1.pdf](https://github.com/reserve-protocol/protocol/blob/master/audits/Reserve_PR_4_0_0_v1.pdf) | unknown | Audit | 2024-07 | stale | Direct | contract_name | 6 | n/a |
| [Solidified - Audit Report - Reserve Protocol - April 25 2024.pdf](https://github.com/reserve-protocol/protocol/blob/master/audits/Solidified%20-%20Audit%20Report%20-%20Reserve%20Protocol%20-%20April%2025%202024.pdf) | unknown | Audit | 2024-04 | stale | Direct | contract_name | 23 | n/a |
| [Solidified - Audit Report - Reserve Protocol 3.4.0.pdf](https://github.com/reserve-protocol/protocol/blob/master/audits/Solidified%20-%20Audit%20Report%20-%20Reserve%20Protocol%203.4.0.pdf) | unknown | Audit | 2024-06 | stale | Direct | contract_name | 25 | n/a |
| [Solidified - Audit Report - Reserve Protocol.pdf](https://github.com/reserve-protocol/protocol/blob/master/audits/Solidified%20-%20Audit%20Report%20-%20Reserve%20Protocol.pdf) | unknown | Audit | 2022-10 | stale | Direct | contract_name | 14 | n/a |
| [Trust Security - Reserve Audit 3.4.0 Spell.pdf](https://github.com/reserve-protocol/protocol/blob/master/audits/Trust%20Security%20-%20Reserve%20Audit%203.4.0%20Spell.pdf) | unknown | Audit | 2024-05 | stale | Direct | contract_name | 1 | n/a |
| [Trust Security - Reserve Audit Report 3_1_0.pdf](https://github.com/reserve-protocol/protocol/blob/master/audits/Trust%20Security%20-%20Reserve%20Audit%20Report%203_1_0.pdf) | unknown | Audit | 2024-01 | stale | Direct | contract_name | 18 | n/a |
| [Trust Security - Reserve Audit Report 3_2_0.pdf](https://github.com/reserve-protocol/protocol/blob/master/audits/Trust%20Security%20-%20Reserve%20Audit%20Report%203_2_0.pdf) | unknown | Audit | 2024-02 | stale | Direct | contract_name | 3 | n/a |
| [Trust Security - Reserve Audit Report 4_2_0.pdf](https://github.com/reserve-protocol/protocol/blob/master/audits/Trust%20Security%20-%20Reserve%20Audit%20Report%204_2_0.pdf) | unknown | Audit | 2026-01 | fresh | Direct | contract_name | 7 | n/a |
| [Reserve_ETH_Plus_LP_v1.pdf](https://github.com/reserve-protocol/protocol/blob/master/audits/individual-plugins/Reserve_ETH_Plus_LP_v1.pdf) | unknown | Audit | 2024-03 | stale | Direct | n/a | 0 | n/a |
| [Reserve_MetaMorpho_plugins_v2.pdf](https://github.com/reserve-protocol/protocol/blob/master/audits/individual-plugins/Reserve_MetaMorpho_plugins_v2.pdf) | unknown | Audit | 2024-05 | stale | Direct | n/a | 0 | n/a |
| [trail-of-bits-2022-08-reserve-protocol-fixreview.pdf](https://github.com/reserve-protocol/protocol/blob/master/audits/trail-of-bits-2022-08-reserve-protocol-fixreview.pdf) | unknown | Audit | 2022-08 | stale | Direct | contract_name | 1 | n/a |
| [trail-of-bits-2022-08-reserve-protocol-securityreview.pdf](https://github.com/reserve-protocol/protocol/blob/master/audits/trail-of-bits-2022-08-reserve-protocol-securityreview.pdf) | unknown | Audit | 2022-08 | stale | Direct | contract_name | 3 | n/a |
| [report-competition-reserve-jan2025.pdf](https://github.com/reserve-protocol/reserve-index-dtf/blob/main/audits/cantina/report-competition-reserve-jan2025.pdf) | Spearbit | Audit | 2025-01 | aging | Direct | contract_name | 1 | n/a |
| [reserve-security-review_2025-06-02.pdf](https://github.com/reserve-protocol/reserve-index-dtf/blob/main/audits/pashov/reserve-security-review_2025-06-02.pdf) | Pashov Audit Group | Audit | 2025-06 | aging | Direct | contract_name | 8 | n/a |
| [2025-04-reserve-folio-solidity-2.0.0.pdf](https://github.com/reserve-protocol/reserve-index-dtf/blob/main/audits/trail-of-bits/2025-04-reserve-folio-solidity-2.0.0.pdf) | Trail of Bits | Audit | 2025-04 | aging | Direct | contract_name | 6 | n/a |
| [2025-06-reserve-folio-solidity-4.0.0.pdf](https://github.com/reserve-protocol/reserve-index-dtf/blob/main/audits/trail-of-bits/2025-06-reserve-folio-solidity-4.0.0.pdf) | Trail of Bits | Audit | 2025-06 | aging | Direct | contract_name | 3 | n/a |
| [v1-audit-dec-2024.pdf](https://github.com/reserve-protocol/reserve-index-dtf/blob/main/audits/trust-security/v1-audit-dec-2024.pdf) | Trust Security | Audit | 2024-12 | aging | Direct | contract_name | 6 | n/a |
| [Audit Report - Reserve Token [3 Jan 2022]-2.pdf](https://github.com/reserve-protocol/rsr-mainnet/blob/master/audits/solidified/Audit%20Report%20-%20Reserve%20Token%20%5B3%20Jan%202022%5D-2.pdf) | unknown | Audit | 2022-01 | stale | Direct | contract_name | 1 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 610 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=161

Zero-match audit list:

- [5383] Certora Formal Verification FixLib.pdf
- [5399] Reserve_ETH_Plus_LP_v1.pdf
- [5400] Reserve_MetaMorpho_plugins_v2.pdf

Fork inheritance lineage and inherited audits are included when available.
