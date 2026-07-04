# Agentic Audit Brief: cap

## Project Overview

- Project: cap (`cap`)
- Website: [https://cap.app/](https://cap.app/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:05:38.432Z
- Pipeline run: v2-2026-07-02-3df6b3
- Chains: ethereum
- Contract surface: 131 unique implementations (131 raw deployments)
- DeFi Llama TVL: $305,971,773.55
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Lending. Structurally: 83 project-authored contract(s) across 1 chain(s); 1 ERC4626 vault, 9 ERC20 tokens, 1 ERC1155 multi-token, 17 Chainlink feeds; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 19 common project-authored base contract(s) (proxy, access, accessstorageutils). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 131; live-surface contracts included: 131 (131 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 7/131 (5.3%)
- Deployed-live implementations: 131 of 131 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 7/131
- Verified + Unaudited implementations: 124
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 131
- Raw deployments: 131
- Audits discovered: 10 (10 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 6
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-03 (fresh)
- Audit staleness (calendar age): 4 fresh, 5 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 7 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 4.6% (Sherlock, Spearbit, Trail of Bits)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Sherlock | Tier 1 | 6 | 4.6% | 2025-09 |
| Recon | Tier 2 | 5 | 3.8% | 2025-07 |
| Spearbit | Tier 1 | 3 | 2.3% | 2025-11 |
| Trail of Bits | Tier 1 | 2 | 1.5% | 2025-05 |
| Octane | Tier 2 | 1 | 0.8% | 2026-03 |
| Zellic | Tier 2 | 1 | 0.8% | 2025-03 |

## Contract Surface

### ✅ Verified + Audited (7)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CapToken | unknown | ethereum | n/a | [`0x031b51...c99b24`](./contracts/ethereum-1/0x031b51bed47543aa87d2f74ab3b1fcd606c99b24/) | ✅ Audited |
| CapTokenAdapter | unknown | ethereum | n/a | [`0xacc9ce...3d2faf`](./contracts/ethereum-1/0xacc9ce4c15a0f6a2bec49c3f81261d60553d2faf/) | ✅ Audited |
| DebtToken | unknown | ethereum | n/a | [`0x886861...edfd6d`](./contracts/ethereum-1/0x8868614d7e945ef0b30988b11b63103976edfd6d/) | ✅ Audited |
| Delegation | unknown | ethereum | n/a | [`0x386c93...4958ab`](./contracts/ethereum-1/0x386c93f9f0a8a681c5a3e826063106a2474958ab/) | ✅ Audited |
| Oracle | unknown | ethereum | n/a | [`0xa99c0a...00ff6f`](./contracts/ethereum-1/0xa99c0ae66dd5131ae155f25f42aceb1d1a00ff6f/) | ✅ Audited |
| StakedCap | unknown | ethereum | n/a | [`0x32c088...b42a3d`](./contracts/ethereum-1/0x32c08836d2873d1ffc958e3c57f3e08852b42a3d/) | ✅ Audited |
| Token | unknown | ethereum | n/a | [`0x99991c...9b9999`](./contracts/ethereum-1/0x99991c6aabba5a096f24f250b73580f5179b9999/) | ✅ Audited |

### ⚠️ Verified + Unaudited (124)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CapNotify | unknown | ethereum | n/a | [`0xb76bc8...261611`](./contracts/ethereum-1/0xb76bc8fa25af11eb693d21dfd92a7d7f70261611/) | ⚠️ Unaudited |
| CapSweeper | unknown | ethereum | n/a | [`0x307c0c...308238`](./contracts/ethereum-1/0x307c0c1f1a8b3a7153842922dff239c66f308238/) | ⚠️ Unaudited |
| CapSymbioticVaultFactory | unknown | ethereum | n/a | [`0x0b9230...bbae2e`](./contracts/ethereum-1/0x0b92300c8494833e504ad7d36a301ea80dbbae2e/) | ⚠️ Unaudited |
| CCAToken | unknown | ethereum | n/a | [`0x498722...85ebbb`](./contracts/ethereum-1/0x4987225285a27c182130fb9bf50a979fbe85ebbb/) | ⚠️ Unaudited |
| CoverageLens | unknown | ethereum | n/a | [`0xc1942a...48e621`](./contracts/ethereum-1/0xc1942a91d84b670d21d424f30fa583f45448e621/) | ⚠️ Unaudited |
| DadFab | unknown | ethereum | n/a | [`0x01c110...db072d`](./contracts/ethereum-1/0x01c1103d765f62a0d909499d7b615c382cdb072d/) | ⚠️ Unaudited |
| DaiFab | unknown | ethereum | n/a | [`0xf07674...69ebbb`](./contracts/ethereum-1/0xf07674f6ac6632e253c291b694f9c2e2ed69ebbb/) | ⚠️ Unaudited |
| DSChief | unknown | ethereum | n/a | [`0x8e2a84...057152`](./contracts/ethereum-1/0x8e2a84d6ade1e7fffee039a35ef5f19f13057152/) | ⚠️ Unaudited |
| DSChiefFab | unknown | ethereum | n/a | [`0x1e7ca0...8f1483`](./contracts/ethereum-1/0x1e7ca05e174a523709e556080e227f734a8f1483/) | ⚠️ Unaudited |
| DSToken | unknown | ethereum | n/a | [`0x068083...cc5523`](./contracts/ethereum-1/0x068083069ed92da4c5291dba52d8912abfcc5523/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | ethereum | n/a | [`0x0036c7...4bef0b`](./contracts/ethereum-1/0x0036c7b9b62c53f47c804a5643f0c09f864bef0b/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | ethereum | n/a | [`0x019b65...2e52cd`](./contracts/ethereum-1/0x019b65850e3ad55939169845551f3d9c512e52cd/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | ethereum | n/a | [`0x04b577...01163c`](./contracts/ethereum-1/0x04b57729e21a1a8c8b787013d1dbd81e4001163c/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | ethereum | n/a | [`0x08a728...2953ea`](./contracts/ethereum-1/0x08a728cf4e6b39f4afa059c6ee376103722953ea/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | ethereum | n/a | [`0x09a397...a91225`](./contracts/ethereum-1/0x09a3976d8d63728d20dcdfee1e531c206ba91225/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | ethereum | n/a | [`0x0f6067...c49832`](./contracts/ethereum-1/0x0f60670907d9690e05ee9f4be336aa9967c49832/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | ethereum | n/a | [`0x1036c2...835772`](./contracts/ethereum-1/0x1036c242cce7a6632e2f2649f293eaa881835772/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | ethereum | n/a | [`0x18f8b2...9c355d`](./contracts/ethereum-1/0x18f8b29f3af949c71f7780d7f5159e199a9c355d/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | ethereum | n/a | [`0x32fd97...d13170`](./contracts/ethereum-1/0x32fd97a5196a6d98656a7f2f191ae4732ad13170/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | ethereum | n/a | [`0x434558...ce7d8c`](./contracts/ethereum-1/0x434558cb1ebe9950e8a66f1ef8a15a473dce7d8c/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | ethereum | n/a | [`0x44f7e6...095962`](./contracts/ethereum-1/0x44f7e678e8412dbef1fd930f60af2bd125095962/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | ethereum | n/a | [`0x69a22f...4b2bbf`](./contracts/ethereum-1/0x69a22f0fc7b398e637bf830b862c75dd854b2bbf/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | ethereum | n/a | [`0xbde7c8...c5036b`](./contracts/ethereum-1/0xbde7c8db7a546526dd99d23796baa24c80c5036b/) | ⚠️ Unaudited |
| EthereumMergedAdapterWithRoundsEurspkccNavV1 | unknown | ethereum | n/a | [`0x4b2c40...7a942b`](./contracts/ethereum-1/0x4b2c406f0dbf7624a32971277da7b4c43a7a942b/) | ⚠️ Unaudited |
| EthereumMergedAdapterWithRoundsSpkccNavV1 | unknown | ethereum | n/a | [`0x14449c...cb97f9`](./contracts/ethereum-1/0x14449cc3185dec0421c3cb37074215f1aacb97f9/) | ⚠️ Unaudited |
| EthereumMultiFeedAdapterWithoutRoundsV2 | unknown | ethereum | n/a | [`0x46a2b8...286021`](./contracts/ethereum-1/0x46a2b84901410a81c6421104a12d6555ca286021/) | ⚠️ Unaudited |
| EthereumPriceFeedAcredFundamentalWithoutRoundsV1 | unknown | ethereum | n/a | [`0xd6bcbb...65d51c`](./contracts/ethereum-1/0xd6bcbbc87bfb6c8964ddc73dc3eae6d08865d51c/) | ⚠️ Unaudited |
| EthereumPriceFeedAmcashplusFundamentalWithoutRoundsV1 | unknown | ethereum | n/a | [`0x767b89...241db9`](./contracts/ethereum-1/0x767b8971ca1dc117f624d3ee3053d2881d241db9/) | ⚠️ Unaudited |
| EthereumPriceFeedAvltFundamentalusdWithoutRoundsV1 | unknown | ethereum | n/a | [`0x105eac...022021`](./contracts/ethereum-1/0x105eac28b82b872a8b10218bd237a4c097022021/) | ⚠️ Unaudited |
| EthereumPriceFeedAzndFundamentalWithoutRoundsV1 | unknown | ethereum | n/a | [`0x3f2c69...8818de`](./contracts/ethereum-1/0x3f2c697fcce450a65092eb50ad6f24bd478818de/) | ⚠️ Unaudited |
| EthereumPriceFeedBeraethFundamentalWithoutRoundsV1 | unknown | ethereum | n/a | [`0x6a1c87...14170d`](./contracts/ethereum-1/0x6a1c87d11dde3d1d52c24f8ec59b91019f14170d/) | ⚠️ Unaudited |
| EthereumPriceFeedBeraStoneFundamentalWithoutRoundsV2 | unknown | ethereum | n/a | [`0x4f67fd...410add`](./contracts/ethereum-1/0x4f67fd74cff274ef2942223c0f3166b856410add/) | ⚠️ Unaudited |
| EthereumPriceFeedBfbtcFundamentalWithoutRoundsV1 | unknown | ethereum | n/a | [`0xc9e11c...98a86e`](./contracts/ethereum-1/0xc9e11c60e24bef478cc999fa9fa2d89cc098a86e/) | ⚠️ Unaudited |
| EthereumPriceFeedBtcWithoutRoundsV1 | unknown | ethereum | n/a | [`0x24edd6...7a9187`](./contracts/ethereum-1/0x24edd61cda334bff871a80deb135073a7d7a9187/) | ⚠️ Unaudited |
| EthereumPriceFeedBuidlFundamentalWithoutRoundsV1 | unknown | ethereum | n/a | [`0x2d4f31...92654e`](./contracts/ethereum-1/0x2d4f3199a80b848f3d094745f3bbd4224892654e/) | ⚠️ Unaudited |
| EthereumPriceFeedBuidlIEthereumDailyAccrualWithoutRoundsV1 | unknown | ethereum | n/a | [`0x4f4e63...baf52e`](./contracts/ethereum-1/0x4f4e639745cfb234b6176e96c6afd83269baf52e/) | ⚠️ Unaudited |
| EthereumPriceFeedBuidlIEthereumFundamentalWithoutRoundsV1 | unknown | ethereum | n/a | [`0xf2db7b...c17bf3`](./contracts/ethereum-1/0xf2db7b3455077fb177215d45d62d441df3c17bf3/) | ⚠️ Unaudited |
| EthereumPriceFeedCbbtcWithoutRoundsV1 | unknown | ethereum | n/a | [`0xe13e2b...0ae049`](./contracts/ethereum-1/0xe13e2bbab029bfb324f49048ced0e95ea30ae049/) | ⚠️ Unaudited |
| EthereumPriceFeedCusdFundamentalWithoutRoundsV1 | unknown | ethereum | n/a | [`0x2d7a68...b92bcb`](./contracts/ethereum-1/0x2d7a6851cc237bc2c7a5a87f78b7ffdb5db92bcb/) | ⚠️ Unaudited |
| EthereumPriceFeedDeusdFundamentalWithoutRoundsV1 | unknown | ethereum | n/a | [`0x4c8996...8282fd`](./contracts/ethereum-1/0x4c89968338b75551243c99b452c84a01888282fd/) | ⚠️ Unaudited |
| EthereumPriceFeedDlfPublicationTsWithoutRoundsV1 | unknown | ethereum | n/a | [`0x51a855...039ba5`](./contracts/ethereum-1/0x51a855867ae59d6292d5675b654c776147039ba5/) | ⚠️ Unaudited |
| EthereumPriceFeedEgethFundamentalWithoutRoundsV1 | unknown | ethereum | n/a | [`0x29d295...791346`](./contracts/ethereum-1/0x29d295409d5a20b2c851df18054d32a442791346/) | ⚠️ Unaudited |
| EthereumPriceFeedEigenWithoutRoundsV1 | unknown | ethereum | n/a | [`0x2ee5ce...8cb86d`](./contracts/ethereum-1/0x2ee5ce6556599e16c226579ba14f94926d8cb86d/) | ⚠️ Unaudited |
| EthereumPriceFeedEthfiWithoutRoundsV1 | unknown | ethereum | n/a | [`0x09f9a1...eb577e`](./contracts/ethereum-1/0x09f9a127fba172c41d8c29e49b3c1326d2eb577e/) | ⚠️ Unaudited |
| EthereumPriceFeedEthWithoutRoundsV1 | unknown | ethereum | n/a | [`0x65ed6a...23e4db`](./contracts/ethereum-1/0x65ed6a4ac085620ee943c0b15525c4428d23e4db/) | ⚠️ Unaudited |
| EthereumPriceFeedEthxWithoutRoundsV1 | unknown | ethereum | n/a | [`0xe7f71d...bd74f4`](./contracts/ethereum-1/0xe7f71d6a24ebc391f5ee57b867ed429eb7bd74f4/) | ⚠️ Unaudited |
| EthereumPriceFeedFxusdWithoutRoundsV1 | unknown | ethereum | n/a | [`0x4bad96...ea7a57`](./contracts/ethereum-1/0x4bad96dd1c7d541270a0c92e1d4e5f12eeea7a57/) | ⚠️ Unaudited |
| EthereumPriceFeedHlscopeFundamentalWithoutRoundsV1 | unknown | ethereum | n/a | [`0x1f14a5...4398d7`](./contracts/ethereum-1/0x1f14a50ba904a28cf6088e71b6a15561074398d7/) | ⚠️ Unaudited |
| EthereumPriceFeedHwhlpFundamentalWithoutRoundsV1 | unknown | ethereum | n/a | [`0x031380...22a05f`](./contracts/ethereum-1/0x03138081aed44e2e0eb10361ee41d84edd22a05f/) | ⚠️ Unaudited |
| EthereumPriceFeedMsusdFundamentalWithoutRoundsV1 | unknown | ethereum | n/a | [`0x573bb5...6e96f8`](./contracts/ethereum-1/0x573bb572049ff50156e94823bb99920d406e96f8/) | ⚠️ Unaudited |
| EthereumPriceFeedMsyFundamentalusdWithoutRoundsV1 | unknown | ethereum | n/a | [`0x89621c...9a3e9a`](./contracts/ethereum-1/0x89621c11aad52c1535e36eb9dbf43e638e9a3e9a/) | ⚠️ Unaudited |
| EthereumPriceFeedMubondFundamentalWithoutRoundsV1 | unknown | ethereum | n/a | [`0x636eca...e32a7b`](./contracts/ethereum-1/0x636eca78f6b46a69ab233ef513c1fb4703e32a7b/) | ⚠️ Unaudited |
| EthereumPriceFeedNgiplusFundamentalWithoutRoundsV1 | unknown | ethereum | n/a | [`0x09ba94...cd5b06`](./contracts/ethereum-1/0x09ba943f3b38e0f28e8909a00f3b58135dcd5b06/) | ⚠️ Unaudited |
| EthereumPriceFeedNusdFundamentalWithoutRoundsV1 | unknown | ethereum | n/a | [`0x5e7281...c19d95`](./contracts/ethereum-1/0x5e7281f74e74d76347f0b8f4a36fd3cb29c19d95/) | ⚠️ Unaudited |
| EthereumPriceFeedPrimeEchelonWithoutRoundsV1 | unknown | ethereum | n/a | [`0xc328cd...7146b6`](./contracts/ethereum-1/0xc328cdf06cbc77134b84e1f6ed452774947146b6/) | ⚠️ Unaudited |
| EthereumPriceFeedPromptWithoutRoundsV1 | unknown | ethereum | n/a | [`0x25a23c...f5da40`](./contracts/ethereum-1/0x25a23c034fbc1eea341f6c92c6d8e6bafcf5da40/) | ⚠️ Unaudited |
| EthereumPriceFeedPufferWithoutRoundsV1 | unknown | ethereum | n/a | [`0x197225...04c57c`](./contracts/ethereum-1/0x197225b3b017eb9b72ac356d6b3c267d0c04c57c/) | ⚠️ Unaudited |
| EthereumPriceFeedPumpbtcbtcWithoutRoundsV1 | unknown | ethereum | n/a | [`0xae02d5...237979`](./contracts/ethereum-1/0xae02d5be17a23c8fdd0676c6a5f9143d91237979/) | ⚠️ Unaudited |
| EthereumPriceFeedPumpbtcFundamentalWithoutRoundsV2 | unknown | ethereum | n/a | [`0x85c4f8...bfe97d`](./contracts/ethereum-1/0x85c4f855bc0609d2584405819edaea3adabfe97d/) | ⚠️ Unaudited |
| EthereumPriceFeedPyusdWithoutRoundsV1 | unknown | ethereum | n/a | [`0xb7699e...f1d6be`](./contracts/ethereum-1/0xb7699e81acf22456fa83696573738dfa25f1d6be/) | ⚠️ Unaudited |
| EthereumPriceFeedRswethFundamentalWithoutRoundsV2 | unknown | ethereum | n/a | [`0xb60224...0d2c94`](./contracts/ethereum-1/0xb60224122830fd6cf5119f548477a190310d2c94/) | ⚠️ Unaudited |
| EthereumPriceFeedSolvbtcbtcWithoutRoundsV1 | unknown | ethereum | n/a | [`0x3587a7...0bc2cc`](./contracts/ethereum-1/0x3587a73aa02519335a8a6053a97657bece0bc2cc/) | ⚠️ Unaudited |
| EthereumPriceFeedSolvbtcWithoutRoundsV1 | unknown | ethereum | n/a | [`0x24c896...ea42cc`](./contracts/ethereum-1/0x24c8964338deb5204b096039147b8e8c3aea42cc/) | ⚠️ Unaudited |
| EthereumPriceFeedSpkWithoutRoundsV1 | unknown | ethereum | n/a | [`0x3f145f...f5a721`](./contracts/ethereum-1/0x3f145fd2cc3ed0806cae3eba73472e5991f5a721/) | ⚠️ Unaudited |
| EthereumPriceFeedStacFundamentalWithoutRoundsV1 | unknown | ethereum | n/a | [`0x97e3c4...c0147a`](./contracts/ethereum-1/0x97e3c432d1c7b765d3daeecf45f7b85dc8c0147a/) | ⚠️ Unaudited |
| EthereumPriceFeedSthusdFundamentalWithoutRoundsV1 | unknown | ethereum | n/a | [`0x6dd1e6...78cd52`](./contracts/ethereum-1/0x6dd1e6799b67434601fd0c65cf13d4df9278cd52/) | ⚠️ Unaudited |
| EthereumPriceFeedStrcWithoutRoundsV1 | unknown | ethereum | n/a | [`0x041a85...5f33d7`](./contracts/ethereum-1/0x041a85430c75cb8cfc9cbaa59166ff9e575f33d7/) | ⚠️ Unaudited |
| EthereumPriceFeedSusdxEthFundamentalWithoutRoundsV1 | unknown | ethereum | n/a | [`0x3401da...c3df29`](./contracts/ethereum-1/0x3401daf2b1f150ef0c709cc0283b5f2e55c3df29/) | ⚠️ Unaudited |
| EthereumPriceFeedSwellethWithoutRoundsV1 | unknown | ethereum | n/a | [`0x84ad47...92f96b`](./contracts/ethereum-1/0x84ad474c33c9ccefb1a2d8b77bdd88bdc592f96b/) | ⚠️ Unaudited |
| EthereumPriceFeedTacbtcFundamentalWithoutRoundsV1 | unknown | ethereum | n/a | [`0x0a6fd5...dc77b3`](./contracts/ethereum-1/0x0a6fd5820f797e517297feff90aaecd8e2dc77b3/) | ⚠️ Unaudited |
| EthereumPriceFeedTacethFundamentalWithoutRoundsV1 | unknown | ethereum | n/a | [`0x9d0ab8...c18519`](./contracts/ethereum-1/0x9d0ab80d6b68144a6bbb5c7447eb84edaac18519/) | ⚠️ Unaudited |
| EthereumPriceFeedTacusdFundamentalWithoutRoundsV1 | unknown | ethereum | n/a | [`0x4cec96...a66da0`](./contracts/ethereum-1/0x4cec96a68cb9a979621b104f3c94884be1a66da0/) | ⚠️ Unaudited |
| EthereumPriceFeedThbillFundamentalWithoutRoundsV1 | unknown | ethereum | n/a | [`0x80b073...5a2c93`](./contracts/ethereum-1/0x80b0735616b27b647233d3ab67078c95ba5a2c93/) | ⚠️ Unaudited |
| EthereumPriceFeedUsdcV2WithoutRoundsV1 | unknown | ethereum | n/a | [`0x3ebfaa...76607b`](./contracts/ethereum-1/0x3ebfaae0ef43f63dbb176ff11cab16dcd976607b/) | ⚠️ Unaudited |
| EthereumPriceFeedUsdtbFundamentalWithoutRoundsV1 | unknown | ethereum | n/a | [`0x243507...e32ece`](./contracts/ethereum-1/0x243507c8c114618d7c8ad94b51118db7b4e32ece/) | ⚠️ Unaudited |
| EthereumPriceFeedUsdtV2WithoutRoundsV1 | unknown | ethereum | n/a | [`0x02e1f8...b54ed2`](./contracts/ethereum-1/0x02e1f8d15762047b7a87ba0e5d94b9a0c5b54ed2/) | ⚠️ Unaudited |
| EthereumPriceFeedUsdxWithoutRoundsV1 | unknown | ethereum | n/a | [`0x096396...d80dc8`](./contracts/ethereum-1/0x09639692ce6ff12a06ca3ae9a24b3aae4cd80dc8/) | ⚠️ Unaudited |
| EthereumPriceFeedUsrWithoutRoundsV1 | unknown | ethereum | n/a | [`0x107dd3...0779ee`](./contracts/ethereum-1/0x107dd3391a6357248f2093698014e7c6130779ee/) | ⚠️ Unaudited |
| EthereumPriceFeedUsstFundamentalWithoutRoundsV1 | unknown | ethereum | n/a | [`0x261997...6b7f3f`](./contracts/ethereum-1/0x2619976127c90de2eea94b368ac5156ef16b7f3f/) | ⚠️ Unaudited |
| EthereumPriceFeedUsualWithoutRoundsV1 | unknown | ethereum | n/a | [`0x2240ae...a54840`](./contracts/ethereum-1/0x2240ae461b34cc56d654ba5fa5830a243ca54840/) | ⚠️ Unaudited |
| EthereumPriceFeedVbillEthereumDailyAccrualWithoutRoundsV1 | unknown | ethereum | n/a | [`0x40ea33...4a63cc`](./contracts/ethereum-1/0x40ea33ea76fbe35e9fb422edd175b8c8d84a63cc/) | ⚠️ Unaudited |
| EthereumPriceFeedVbillEthereumFundamentalWithoutRoundsV1 | unknown | ethereum | n/a | [`0x4e202a...0eaaa8`](./contracts/ethereum-1/0x4e202a7e713d00804f9ce397260362bf5e0eaaa8/) | ⚠️ Unaudited |
| EthereumPriceFeedWbtcbtcWithoutRoundsV1 | unknown | ethereum | n/a | [`0x019697...958de9`](./contracts/ethereum-1/0x019697e7832dba533c320c0e2a36faa2da958de9/) | ⚠️ Unaudited |
| EthereumPriceFeedWlfiWithoutRoundsV1 | unknown | ethereum | n/a | [`0x131141...bf4a7e`](./contracts/ethereum-1/0x131141e6c88a3389a4ab2368d3bbc65df1bf4a7e/) | ⚠️ Unaudited |
| EthereumPriceFeedWstethstethWithoutRoundsV1 | unknown | ethereum | n/a | [`0xa7b024...d5da98`](./contracts/ethereum-1/0xa7b0247d2da6b11ff2740491cb433a1520d5da98/) | ⚠️ Unaudited |
| EthereumPriceFeedWstethWithoutRoundsV1 | unknown | ethereum | n/a | [`0x84c698...978f64`](./contracts/ethereum-1/0x84c698e69d420aea702e10acc01850ef57978f64/) | ⚠️ Unaudited |
| EthereumPriceFeedXrpWithoutRoundsV1 | unknown | ethereum | n/a | [`0x3d0124...1daeb9`](./contracts/ethereum-1/0x3d01242aadc0425209544520093e74fd151daeb9/) | ⚠️ Unaudited |
| EthereumPriceFeedXvsWithoutRoundsV1 | unknown | ethereum | n/a | [`0x56b13a...191d71`](./contracts/ethereum-1/0x56b13aa2f3b9fd2a136ab46fc570e3c549191d71/) | ⚠️ Unaudited |
| FiatToken | unknown | ethereum | n/a | [`0x8cbde2...77a91a`](./contracts/ethereum-1/0x8cbde23b1416cac07a52591bba744c744d77a91a/) | ⚠️ Unaudited |
| FiatTokenProxy | unknown | ethereum | n/a | [`0xa0b869...06eb48`](./contracts/ethereum-1/0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48/) | ⚠️ Unaudited |
| FiatTokenUtil | unknown | ethereum | n/a | [`0x6315aa...0355a6`](./contracts/ethereum-1/0x6315aa908c50376d1028412c028aa0629f0355a6/) | ⚠️ Unaudited |
| FiatTokenV1 | unknown | ethereum | n/a | [`0x088247...57fe56`](./contracts/ethereum-1/0x0882477e7895bdc5cea7cb1552ed914ab157fe56/) | ⚠️ Unaudited |
| FiatTokenV2 | unknown | ethereum | n/a | [`0xb7277a...3778a2`](./contracts/ethereum-1/0xb7277a6e95992041568d9391d09d0122023778a2/) | ⚠️ Unaudited |
| FiatTokenV2_1 | unknown | ethereum | n/a | [`0xa2327a...4cbdcf`](./contracts/ethereum-1/0xa2327a938febf5fec13bacfb16ae10ecbc4cbdcf/) | ⚠️ Unaudited |
| FixedPriceOracle | unknown | ethereum | n/a | [`0x14ffc5...04031a`](./contracts/ethereum-1/0x14ffc56495372e698b9642d638a7702e0f04031a/) | ⚠️ Unaudited |
| GemFab | unknown | ethereum | n/a | [`0x431e93...845692`](./contracts/ethereum-1/0x431e935209d79706b5866eb42137a3491d845692/) | ⚠️ Unaudited |
| GemPit | unknown | ethereum | n/a | [`0x69076e...83c275`](./contracts/ethereum-1/0x69076e44a9c70a67d5b79d95795aba299083c275/) | ⚠️ Unaudited |
| Harvester | unknown | ethereum | n/a | [`0xb90de8...7be4f1`](./contracts/ethereum-1/0xb90de8357ee4f5c145c159f8e3822ba9b17be4f1/) | ⚠️ Unaudited |
| LimitModule | unknown | ethereum | n/a | [`0x1e44d0...3dfbef`](./contracts/ethereum-1/0x1e44d0c6792a7eccfaf1a759202ff80f7d3dfbef/) | ⚠️ Unaudited |
| MasterMinter | unknown | ethereum | n/a | [`0x566c11...674335`](./contracts/ethereum-1/0x566c11b5c2201b69c9269fe924e4395873674335/) | ⚠️ Unaudited |
| MomFab | unknown | ethereum | n/a | [`0x141a20...3669ea`](./contracts/ethereum-1/0x141a206ece672e3198086c5d21f7858ad03669ea/) | ⚠️ Unaudited |
| MorphoChainlinkOracleV2 | unknown | ethereum | n/a | [`0x8e3386...d175c0`](./contracts/ethereum-1/0x8e3386b2f6084eb1b0988070c3d826995bd175c0/) | ⚠️ Unaudited |
| Safe | unknown | ethereum | n/a | [`0x80a216...64c2ea`](./contracts/ethereum-1/0x80a216738e4e49b262deae6beb6578bdf164c2ea/) | ⚠️ Unaudited |
| SoulboundERC1155Merkle | unknown | ethereum | n/a | [`0x00c443...839555`](./contracts/ethereum-1/0x00c443f0282d004b2cd7946c4b6b3b56dc839555/) | ⚠️ Unaudited |
| Stabledrop | unknown | ethereum | n/a | [`0x0eca13...6bb159`](./contracts/ethereum-1/0x0eca13fc018206d0bfbc847ee882cfd03b6bb159/) | ⚠️ Unaudited |
| Swapper | unknown | ethereum | n/a | [`0x1ed902...4fd578`](./contracts/ethereum-1/0x1ed902f3788441d8db845a1ec2a8c8f2b54fd578/) | ⚠️ Unaudited |
| TapFab | unknown | ethereum | n/a | [`0x521c42...51f14f`](./contracts/ethereum-1/0x521c420c2a2b461034becbb41d4888b68951f14f/) | ⚠️ Unaudited |
| TerminatedContract | unknown | ethereum | n/a | [`0x87729b...51ba89`](./contracts/ethereum-1/0x87729bc3824f4d4b36abfc034680e77d8c51ba89/) | ⚠️ Unaudited |
| TestToken | unknown | ethereum | n/a | [`0x5cc088...2e4fc8`](./contracts/ethereum-1/0x5cc088c17d6928420a9f08b242d48b050f2e4fc8/) | ⚠️ Unaudited |
| TimelockController | unknown | ethereum | n/a | [`0xd82360...a329ab`](./contracts/ethereum-1/0xd8236031d8279d82e615af2bfab5fc0127a329ab/) | ⚠️ Unaudited |
| TokenizedStrategy | unknown | ethereum | n/a | [`0xb0d399...4e9259`](./contracts/ethereum-1/0xb0d399e8a11e1c6df00e1fb5698936b5614e9259/) | ⚠️ Unaudited |
| TopFab | unknown | ethereum | n/a | [`0x0eda20...733ed4`](./contracts/ethereum-1/0x0eda20f7499aae7bdadc4e52fd72e49663733ed4/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x18c9b9...011a9f`](./contracts/ethereum-1/0x18c9b9500d8006574329ff95deb47f9576011a9f/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x2e65b1...7aa4f6`](./contracts/ethereum-1/0x2e65b1a44fdc30976d7e2397d16c425a8a7aa4f6/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x354d1e...2aae3e`](./contracts/ethereum-1/0x354d1e7d9cf90841dfa252547881db96af2aae3e/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x613769...3d6bb6`](./contracts/ethereum-1/0x61376924babe5a0fa982fff2c8be8013be3d6bb6/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x6682c5...c7bf47`](./contracts/ethereum-1/0x6682c5b9b47ec0d18beb2088779f14535fc7bf47/) | ⚠️ Unaudited |
| TubFab | unknown | ethereum | n/a | [`0xb3b670...d1b987`](./contracts/ethereum-1/0xb3b67099121e1fbde6276b2802048d1a7dd1b987/) | ⚠️ Unaudited |
| ValidationHook | unknown | ethereum | n/a | [`0x4464a0...bc6c64`](./contracts/ethereum-1/0x4464a0ae10bd08ab8b758d7ccad124cc21bc6c64/) | ⚠️ Unaudited |
| VaultComposerSync | unknown | ethereum | n/a | [`0x0ad237...ed8eed`](./contracts/ethereum-1/0x0ad237e4441ca07691c2deec716061881eed8eed/) | ⚠️ Unaudited |
| VoxFab | unknown | ethereum | n/a | [`0x414b1d...2499bf`](./contracts/ethereum-1/0x414b1da0bb6e948dc0559d14ebde9fa9572499bf/) | ⚠️ Unaudited |
| WETH | unknown | ethereum | n/a | [`0x353f89...c4bf52`](./contracts/ethereum-1/0x353f8931ce1c52f643121be129985aab09c4bf52/) | ⚠️ Unaudited |
| WETH9 | unknown | ethereum | n/a | [`0xc02aaa...756cc2`](./contracts/ethereum-1/0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2/) | ⚠️ Unaudited |
| Yearn V3 Vault | unknown | ethereum | n/a | [`0x3ed6aa...cd0072`](./contracts/ethereum-1/0x3ed6aa32c930253fc990de58ff882b9186cd0072/) | ⚠️ Unaudited |

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
| [2025-03-17-Zellic.pdf](https://github.com/cap-labs-dev/cap-audits/blob/main/2025-03-17-Zellic.pdf) | Zellic | Audit | 2025-03 | aging | Direct | contract_name | 1 | high |
| [2025-05-15-TrailOfBits.pdf](https://github.com/cap-labs-dev/cap-audits/blob/main/2025-05-15-TrailOfBits.pdf) | Trail of Bits | Audit | 2025-05 | aging | Direct | contract_name | 2 | high |
| [2025-05-25-Electisec.pdf](https://github.com/cap-labs-dev/cap-audits/blob/main/2025-05-25-Electisec.pdf) | Electisec | Audit | 2025-05 | aging | Direct | n/a | 0 | n/a |
| [2025-06-23-Spearbit.pdf](https://github.com/cap-labs-dev/cap-audits/blob/main/2025-06-23-Spearbit.pdf) | Spearbit | Audit | 2025-06 | aging | Direct | contract_name | 3 | high |
| [2025-07-04-Recon.pdf](https://github.com/cap-labs-dev/cap-audits/blob/main/2025-07-04-Recon.pdf) | Recon | Audit | 2025-07 | aging | Direct | contract_name | 5 | medium |
| [2025-09-03-Sherlock.pdf](https://github.com/cap-labs-dev/cap-audits/blob/main/2025-09-03-Sherlock.pdf) | Sherlock | Contest | 2025-09 | fresh | Direct | contract_name | 6 | high |
| [2025-09-15-Certora (EigenAVS).pdf](https://github.com/cap-labs-dev/cap-audits/blob/main/2025-09-15-Certora%20(EigenAVS).pdf) | Certora | Audit | 2025-09 | fresh | Direct | n/a | 0 | n/a |
| [2025-11-27-Spearbit (PR Review).pdf](https://github.com/cap-labs-dev/cap-audits/blob/main/2025-11-27-Spearbit%20(PR%20Review).pdf) | Spearbit | Audit | 2025-11 | fresh | Direct | n/a | 0 | n/a |
| [2026-03-24-Octane.pdf](https://github.com/cap-labs-dev/cap-audits/blob/main/2026-03-24-Octane.pdf) | Octane | Audit | 2026-03 | fresh | Direct | contract_name | 1 | high |
| [[Sherlock Bug Bounty](): Up to $1m in rewards](https://audits.sherlock.xyz/bug-bounties/114) | Sherlock | Contest | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 131 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=5, medium=1
- Match method counts: extraction_exact=18

Zero-match audit list:

- [16879] 2025-05-25-Electisec.pdf
- [16883] 2025-09-15-Certora (EigenAVS).pdf
- [16884] 2025-11-27-Spearbit (PR Review).pdf
- [16886] [Sherlock Bug Bounty](): Up to $1m in rewards

Fork inheritance lineage and inherited audits are included when available.
