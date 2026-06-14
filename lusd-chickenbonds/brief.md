# Agentic Audit Brief: LUSD ChickenBonds

⚠️ Lifecycle status: DECLINING - TVL changed 0.1% over 90 days

## Project Overview

- Project: LUSD ChickenBonds (`lusd-chickenbonds`)
- Website: [https://www.chickenbonds.org](https://www.chickenbonds.org)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-14T10:54:10.330Z
- Pipeline run: v2-pipeline-2026-06-14-ec5560-df6c
- Chains: ethereum
- Contract surface: 22 unique implementations (58 raw deployments)
- DeFi Llama TVL: $1,498,710.42
- On-chain TVL (included contracts): $362,849.47
- TVL by chain: Ethereum $362,849.47

## Project Description

LUSD ChickenBonds is a bonding and liquidity-bootstrapping mechanism first applied to Liquity's LUSD. Users create cancel-anytime, no-lock-up bond positions with protected principal, receiving dynamic NFT representations of their bonds and the option to acquire discounted boosted LUSD (bLUSD). The mechanism amplifies yield through bLUSD and is designed to help protocols bootstrap sustainable liquidity rather than operate as a generic managed yield aggregator.

### Architecture

The protocol consists of a single product family centered around the ChickenBondManager contract, which serves as the governance and operational hub for all bond management functions.

## Audit Coverage Summary

- Verified implementations audited: 7/19 (36.8%)
- Verified + Unaudited implementations: 12
- Verified by bytecode match: 0
- Unverified implementations: 3
- Unique implementations: 22
- Raw deployments: 58
- Audits discovered: 7
- Scoreable audits (matched contracts): 7
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-10 (stale)
- Staleness: 0 fresh, 0 aging, 7 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Coinspect | Tier 2 | 6 | 31.6% | 2022-10 |
| Dedaub | Tier 2 | 4 | 21.1% | 2022-09 |
| B.Protocol | Tier 2 | 1 | 5.3% | 2022-07 |

## Contract Surface

### ✅ Verified + Audited (7)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| BLUSDToken | token | ethereum | 9 deployments: ethereum [`0x1e2391...37bda8`](./contracts/ethereum-1/0x1e2391a261217c93d09ff3ae9ab1903ea237bda8/); ethereum `0x206582...837cc7`; ethereum `0x51faf9...56b312`; ethereum `0x76f777...3641a7`; ethereum `0x98b994...726122`; ethereum `0xb185a1...8d4216`; ethereum `0xb9d7dd...3f79c3`; ethereum `0xd2a4ca...f60560`; ethereum `0xfa27cd...2f9ae0` | ✅ Audited |
| BAMM | unknown | ethereum | [`0x896d8a...7dc20b`](./contracts/ethereum-1/0x896d8a30c32ead64f2e1195c2c8e0932be7dc20b/) | ✅ Audited |
| BLUSDLPZap | adapter | ethereum | 2 deployments: ethereum [`0x55b65d...6d395d`](./contracts/ethereum-1/0x55b65dc72db0ddc858adb1dd097eea89546d395d/); ethereum `0xcba8e5...058d30` | ✅ Audited |
| BondNFT | token | ethereum | 5 deployments: ethereum [`0x5d4959...8f52f3`](./contracts/ethereum-1/0x5d49599f6ce3fe92c358055486ab21fdcd8f52f3/); ethereum `0xa83848...4029ee`; ethereum `0xc96265...3995a6`; ethereum `0xf80678...8a8a0c`; ethereum `0xfa4a0f...a4795a` | ✅ Audited |
| ChickenBondManager | governance | ethereum | 5 deployments: ethereum [`0x57619f...e37137`](./contracts/ethereum-1/0x57619fe9c539f890b19c61812226f9703ce37137/); ethereum `0x6ea66d...073a2a`; ethereum `0x877156...9fac49`; ethereum `0x890586...08803c`; ethereum `0xb8643d...40e770` | ✅ Audited |
| ChickenInArtwork | unknown | ethereum | 2 deployments: ethereum [`0x2a1999...bec314`](./contracts/ethereum-1/0x2a1999513b743ad83596ae72edc7cda23fbec314/); ethereum `0xb06b45...c7864c` | ✅ Audited |
| GenerativeEggArtwork | unknown | ethereum | 6 deployments: ethereum [`0x0cb572...42dc42`](./contracts/ethereum-1/0x0cb5727a6a8cb8a01c1b693d7a18119a3542dc42/); ethereum `0x2d31b5...bc2fc2`; ethereum `0x743377...30fd56`; ethereum `0x8d849f...7bf8de`; ethereum `0x91678e...dc0187`; ethereum `0xfdf146...9b353b` | ✅ Audited |

### ⚠️ Verified + Unaudited (12)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| BondNFTArtworkCommon | token | ethereum | 2 deployments: ethereum [`0x4d7a5a...04ff95`](./contracts/ethereum-1/0x4d7a5a57a33e9ac924a1a795bfbbfc309804ff95/); ethereum `0x933b77...be5fc2` | ⚠️ Unaudited |
| BondNFTArtworkSwitcher | token | ethereum | 2 deployments: ethereum [`0x430dcc...53956a`](./contracts/ethereum-1/0x430dcc1902920823c12bfe6404e677e1ce53956a/); ethereum `0x4af9f9...710022` | ⚠️ Unaudited |
| BondNFTArtworkSwitcherTester | token | ethereum | 2 deployments: ethereum [`0x411949...142736`](./contracts/ethereum-1/0x411949abcaaf0a476d557ad19ae82f4e34142736/); ethereum `0x712eda...b40e07` | ⚠️ Unaudited |
| ChickenInGenerated1 | unknown | ethereum | 2 deployments: ethereum [`0x1ba08c...a6ce1f`](./contracts/ethereum-1/0x1ba08cfa34122a1462dfc903ad2219a73ca6ce1f/); ethereum `0x798a3f...54fc2e` | ⚠️ Unaudited |
| ChickenInGenerated2 | unknown | ethereum | 2 deployments: ethereum [`0x66506b...390148`](./contracts/ethereum-1/0x66506b0a93ac7f420ed2fe8f53548142dd390148/); ethereum `0xd5d4f0...0b9d94` | ⚠️ Unaudited |
| ChickenInGenerated3 | unknown | ethereum | 2 deployments: ethereum [`0x21c1ae...6614bf`](./contracts/ethereum-1/0x21c1ae31cbfbb3ca077db4736663c2e1066614bf/); ethereum `0x7bfcc1...d31754` | ⚠️ Unaudited |
| ChickenOutArtwork | unknown | ethereum | 2 deployments: ethereum [`0x62882b...808568`](./contracts/ethereum-1/0x62882b7c0b2931b180b16044bfc5ea3fe8808568/); ethereum `0x799993...9e506c` | ⚠️ Unaudited |
| ChickenOutGenerated1 | unknown | ethereum | 2 deployments: ethereum [`0x3c329e...fc88ac`](./contracts/ethereum-1/0x3c329e6c2a3f1c67b298e1891370544630fc88ac/); ethereum `0x86b80c...05a9bf` | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | [`0xfeb4ac...faff52`](./contracts/ethereum-1/0xfeb4acf3df3cdea7399794d0869ef76a6efaff52/) | ⚠️ Unaudited |
| LSUDUsdToLUSDEth | token | ethereum | [`0x60c0b0...3d4f72`](./contracts/ethereum-1/0x60c0b047133f696334a2b7f68af0b49d2f3d4f72/) | ⚠️ Unaudited |
| LUSDListingPayload | unknown | ethereum | [`0xe0070f...3b37a9`](./contracts/ethereum-1/0xe0070f7a961dcb102e3d904a170613be3f3b37a9/) | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | 6 deployments: ethereum [`0x50c1a2...053804`](./contracts/ethereum-1/0x50c1a2ea0a861a967d9d0ffe2ae4012c2e053804/); ethereum `0x5fa5b6...3c56a6`; ethereum `0x74ed5d...7b901c`; ethereum `0xbebc44...2ff1c7`; ethereum `0xda0dd1...9c2db4`; ethereum `0xed279f...23f0ca` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (3)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0xe3637b...e0975e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe420cf...102e63` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf38ab1...69188d` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [B.Protocol - Chicken Bonds Audit.pdf](https://github.com/liquity/ChickenBond/blob/main/LUSDChickenBonds/audits/B.Protocol%20-%20Chicken%20Bonds%20Audit.pdf) | B.Protocol | Audit | 2022-07 | stale | Direct | contract_name | 1 | high |
| [Coinspect - Smart Contract Audit - Liquity ChickenBond.pdf](https://github.com/liquity/ChickenBond/blob/main/LUSDChickenBonds/audits/Coinspect%20-%20Smart%20Contract%20Audit%20-%20Liquity%20ChickenBond.pdf) | Coinspect | Audit | 2022-05 | stale | Direct | contract_name | 19 | high |
| [Coinspect - Smart Contract Audit - Liquity ChickenBonds 2nd v220803.pdf](https://github.com/liquity/ChickenBond/blob/main/LUSDChickenBonds/audits/Coinspect%20-%20Smart%20Contract%20Audit%20-%20Liquity%20ChickenBonds%202nd%20v220803.pdf) | Coinspect | Audit | 2022-07 | stale | Direct | contract_name | 19 | high |
| [Coinspect - Smart Contract Audit - Liquity ChickenBonds 3rd v220929.pdf](https://github.com/liquity/ChickenBond/blob/main/LUSDChickenBonds/audits/Coinspect%20-%20Smart%20Contract%20Audit%20-%20Liquity%20ChickenBonds%203rd%20v220929.pdf) | Coinspect | Audit | 2022-09 | stale | Direct | contract_name | 25 | high |
| [Coinspect - Smart Contract Audit - Liquity ChickenBonds 4th v221021.pdf](https://github.com/liquity/ChickenBond/blob/main/LUSDChickenBonds/audits/Coinspect%20-%20Smart%20Contract%20Audit%20-%20Liquity%20ChickenBonds%204th%20v221021.pdf) | Coinspect | Audit | 2022-10 | stale | Direct | contract_name | 14 | high |
| [Dedaub_Chicken Bonds Audit.pdf](https://github.com/liquity/ChickenBond/blob/main/LUSDChickenBonds/audits/Dedaub_Chicken%20Bonds%20Audit.pdf) | Dedaub | Audit | 2022-07 | stale | Direct | contract_name | 19 | high |
| [Dedaub_Chicken Bonds Delta Audit (NFT additions).pdf](https://github.com/liquity/ChickenBond/blob/main/LUSDChickenBonds/audits/Dedaub_Chicken%20Bonds%20Delta%20Audit%20(NFT%20additions).pdf) | Dedaub | Audit | 2022-09 | stale | Direct | contract_name | 25 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x4d7a5a...04ff95`](./contracts/ethereum-1/0x4d7a5a57a33e9ac924a1a795bfbbfc309804ff95/) | BondNFTArtworkCommon | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x430dcc...53956a`](./contracts/ethereum-1/0x430dcc1902920823c12bfe6404e677e1ce53956a/) | BondNFTArtworkSwitcher | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x411949...142736`](./contracts/ethereum-1/0x411949abcaaf0a476d557ad19ae82f4e34142736/) | BondNFTArtworkSwitcherTester | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1ba08c...a6ce1f`](./contracts/ethereum-1/0x1ba08cfa34122a1462dfc903ad2219a73ca6ce1f/) | ChickenInGenerated1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x66506b...390148`](./contracts/ethereum-1/0x66506b0a93ac7f420ed2fe8f53548142dd390148/) | ChickenInGenerated2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x21c1ae...6614bf`](./contracts/ethereum-1/0x21c1ae31cbfbb3ca077db4736663c2e1066614bf/) | ChickenInGenerated3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x62882b...808568`](./contracts/ethereum-1/0x62882b7c0b2931b180b16044bfc5ea3fe8808568/) | ChickenOutArtwork | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3c329e...fc88ac`](./contracts/ethereum-1/0x3c329e6c2a3f1c67b298e1891370544630fc88ac/) | ChickenOutGenerated1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x60c0b0...3d4f72`](./contracts/ethereum-1/0x60c0b047133f696334a2b7f68af0b49d2f3d4f72/) | LSUDUsdToLUSDEth | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe0070f...3b37a9`](./contracts/ethereum-1/0xe0070f7a961dcb102e3d904a170613be3f3b37a9/) | LUSDListingPayload | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 19 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=7
- Match method counts: extraction_exact=122

Fork inheritance lineage and inherited audits are included when available.
