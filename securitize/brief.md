# Agentic Audit Brief: Securitize

## Project Overview

- Project: Securitize (`securitize`)
- Website: [https://securitize.io/](https://securitize.io/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:54.728Z
- Pipeline run: v2-2026-07-04-7d91d2
- Chains: arbitrum, avalanche, bsc, ethereum, mantle, optimism, polygon, sei
- Contract surface: 114 unique implementations (114 raw deployments)
- DeFi Llama TVL: $4,412,440,980.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

RWA. Structurally: 55 project-authored contract(s) across 8 chain(s); 1 ERC20 token, 17 Chainlink feeds; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 8 common project-authored base contract(s) (basedscontract, serviceconsumer, idsserviceconsumer). Dominant framework: openzeppelin.

## Fork Lineage

This project reuses audited code from **cap** (`cap`) in the EthereumMergedAdapterWithRoundsSpkccNavV1, EthereumMultiFeedAdapterWithoutRoundsV2, EthereumPriceFeedBeraethFundamentalWithoutRoundsV1, EthereumPriceFeedBfbtcFundamentalWithoutRoundsV1, EthereumPriceFeedBtcWithoutRoundsV1, EthereumPriceFeedEgethFundamentalWithoutRoundsV1, … subsystem.
8 audits inherited from `cap`, scoped to that subsystem.

Total inherited audits: 8. Inherited coverage reflects forked/shared code audited by the origin project — it is not a direct audit of this project.

## Contract Surface Quality

- Indexed contracts: 114; live-surface contracts included: 114 (114 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 26/95 (27.4%)
- Deployed-live implementations: 114 of 114 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 26/114
- Verified + Unaudited implementations: 88
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 114
- Raw deployments: 114
- Audits discovered: 9 (1 direct, 8 inherited from forked code)
- Scoreable audits (matched contracts): 9
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-03 (fresh)
- Audit staleness (calendar age): 5 fresh, 4 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 24 code-matched, 1 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: 16.8% (Certora, Sherlock, Spearbit, Trail of Bits)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Certora | Tier 1 | 16 | 14.0% | 2025-09 |
| Electisec | Tier 2 | 16 | 14.0% | 2025-05 |
| Octane | Tier 2 | 16 | 14.0% | 2026-03 |
| Recon | Tier 2 | 16 | 14.0% | 2025-07 |
| Sherlock | Tier 1 | 16 | 14.0% | 2025-09 |
| Spearbit | Tier 1 | 16 | 14.0% | 2025-11 |
| Trail of Bits | Tier 1 | 16 | 14.0% | 2025-05 |
| Halborn | Tier 2 | 10 | 8.8% | 2025-09 |

## Contract Surface

### ✅ Verified + Audited (26)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BulkBalanceChecker | unknown | optimism | n/a | [`0x062f249b055cc6ab15f051fe162624c479215f0e`](./contracts/optimism-10/0x062f249b055cc6ab15f051fe162624c479215f0e/) | ✅ Audited |
| ComplianceServiceRegulated | unknown | optimism | n/a | [`0x02a61246f04273f716ba9c96f1e3283d88c18edd`](./contracts/optimism-10/0x02a61246f04273f716ba9c96f1e3283d88c18edd/) | ✅ Audited |
| DSToken | unknown | avalanche | n/a | [`0x01c73910eb957ff5e922affbf9a43f2a3e9d8230`](./contracts/avalanche-43114/0x01c73910eb957ff5e922affbf9a43f2a3e9d8230/) | ✅ Audited |
| EthereumMergedAdapterWithRoundsSpkccNavV1 | unknown | ethereum | n/a | [`0x14449cc3185dec0421c3cb37074215f1aacb97f9`](./contracts/ethereum-1/0x14449cc3185dec0421c3cb37074215f1aacb97f9/) | ✅ Audited |
| EthereumMultiFeedAdapterWithoutRoundsV2 | unknown | ethereum | n/a | [`0x46a2b84901410a81c6421104a12d6555ca286021`](./contracts/ethereum-1/0x46a2b84901410a81c6421104a12d6555ca286021/) | ✅ Audited |
| EthereumPriceFeedBeraethFundamentalWithoutRoundsV1 | unknown | ethereum | n/a | [`0x6a1c87d11dde3d1d52c24f8ec59b91019f14170d`](./contracts/ethereum-1/0x6a1c87d11dde3d1d52c24f8ec59b91019f14170d/) | ✅ Audited |
| EthereumPriceFeedBfbtcFundamentalWithoutRoundsV1 | unknown | ethereum | n/a | [`0xc9e11c60e24bef478cc999fa9fa2d89cc098a86e`](./contracts/ethereum-1/0xc9e11c60e24bef478cc999fa9fa2d89cc098a86e/) | ✅ Audited |
| EthereumPriceFeedBtcWithoutRoundsV1 | unknown | ethereum | n/a | [`0x24edd61cda334bff871a80deb135073a7d7a9187`](./contracts/ethereum-1/0x24edd61cda334bff871a80deb135073a7d7a9187/) | ✅ Audited |
| EthereumPriceFeedEgethFundamentalWithoutRoundsV1 | unknown | ethereum | n/a | [`0x29d295409d5a20b2c851df18054d32a442791346`](./contracts/ethereum-1/0x29d295409d5a20b2c851df18054d32a442791346/) | ✅ Audited |
| EthereumPriceFeedEthWithoutRoundsV1 | unknown | ethereum | n/a | [`0x65ed6a4ac085620ee943c0b15525c4428d23e4db`](./contracts/ethereum-1/0x65ed6a4ac085620ee943c0b15525c4428d23e4db/) | ✅ Audited |
| EthereumPriceFeedEthxWithoutRoundsV1 | unknown | ethereum | n/a | [`0xe7f71d6a24ebc391f5ee57b867ed429eb7bd74f4`](./contracts/ethereum-1/0xe7f71d6a24ebc391f5ee57b867ed429eb7bd74f4/) | ✅ Audited |
| EthereumPriceFeedPumpbtcbtcWithoutRoundsV1 | unknown | ethereum | n/a | [`0xae02d5be17a23c8fdd0676c6a5f9143d91237979`](./contracts/ethereum-1/0xae02d5be17a23c8fdd0676c6a5f9143d91237979/) | ✅ Audited |
| EthereumPriceFeedSusdxEthFundamentalWithoutRoundsV1 | unknown | ethereum | n/a | [`0x3401daf2b1f150ef0c709cc0283b5f2e55c3df29`](./contracts/ethereum-1/0x3401daf2b1f150ef0c709cc0283b5f2e55c3df29/) | ✅ Audited |
| EthereumPriceFeedSwellethWithoutRoundsV1 | unknown | ethereum | n/a | [`0x84ad474c33c9ccefb1a2d8b77bdd88bdc592f96b`](./contracts/ethereum-1/0x84ad474c33c9ccefb1a2d8b77bdd88bdc592f96b/) | ✅ Audited |
| EthereumPriceFeedTacusdFundamentalWithoutRoundsV1 | unknown | ethereum | n/a | [`0x4cec96a68cb9a979621b104f3c94884be1a66da0`](./contracts/ethereum-1/0x4cec96a68cb9a979621b104f3c94884be1a66da0/) | ✅ Audited |
| EthereumPriceFeedUsdtbFundamentalWithoutRoundsV1 | unknown | ethereum | n/a | [`0x243507c8c114618d7c8ad94b51118db7b4e32ece`](./contracts/ethereum-1/0x243507c8c114618d7c8ad94b51118db7b4e32ece/) | ✅ Audited |
| EthereumPriceFeedUsdxWithoutRoundsV1 | unknown | ethereum | n/a | [`0x09639692ce6ff12a06ca3ae9a24b3aae4cd80dc8`](./contracts/ethereum-1/0x09639692ce6ff12a06ca3ae9a24b3aae4cd80dc8/) | ✅ Audited |
| EthereumPriceFeedVbillEthereumFundamentalWithoutRoundsV1 | unknown | ethereum | n/a | [`0x4e202a7e713d00804f9ce397260362bf5e0eaaa8`](./contracts/ethereum-1/0x4e202a7e713d00804f9ce397260362bf5e0eaaa8/) | ✅ Audited |
| EthereumPriceFeedXvsWithoutRoundsV1 | unknown | ethereum | n/a | [`0x56b13aa2f3b9fd2a136ab46fc570e3c549191d71`](./contracts/ethereum-1/0x56b13aa2f3b9fd2a136ab46fc570e3c549191d71/) | ✅ Audited |
| InvestorLockManager | unknown | avalanche | n/a | [`0x0176998eb231f7ee53395b1722eb47d2eda64237`](./contracts/avalanche-43114/0x0176998eb231f7ee53395b1722eb47d2eda64237/) | ✅ Audited |
| RegistryService | unknown | mantle | n/a | [`0x00eef87c3994dc44fa2733ac0a7506e774a7e3c3`](./contracts/mantle-5000/0x00eef87c3994dc44fa2733ac0a7506e774a7e3c3/) | ✅ Audited |
| TokenLibrary | unknown | optimism | n/a | [`0x1094a1987fab9e8995b1583e305d616886f62970`](./contracts/optimism-10/0x1094a1987fab9e8995b1583e305d616886f62970/) | ✅ Audited |
| TransactionRelayer | unknown | arbitrum | n/a | [`0x00c15af9c8091db3f424c3db3d01cd3c4bbfd815`](./contracts/arbitrum-42161/0x00c15af9c8091db3f424c3db3d01cd3c4bbfd815/) | ✅ Audited |
| TrustService | unknown | optimism | n/a | [`0x03f3eb7bdae46acb38e12d04854222906233b97c`](./contracts/optimism-10/0x03f3eb7bdae46acb38e12d04854222906233b97c/) | ✅ Audited |
| WalletManager | unknown | avalanche | n/a | [`0x076e0aaf7978c9d866dd2e14187af5bd63923543`](./contracts/avalanche-43114/0x076e0aaf7978c9d866dd2e14187af5bd63923543/) | ✅ Audited |
| WalletRegistrar | unknown | ethereum | n/a | [`0x04c360034c30803eaffcb5e2a4bf708a49194a6f`](./contracts/ethereum-1/0x04c360034c30803eaffcb5e2a4bf708a49194a6f/) | ✅ Audited |

### ⚠️ Verified + Unaudited (88)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AllowanceAssetProvider | unknown | ethereum | n/a | [`0xb743c527546f6e009d1e4c87bbf2095f061e6b39`](./contracts/ethereum-1/0xb743c527546f6e009d1e4c87bbf2095f061e6b39/) | ⚠️ Unaudited |
| AllowanceLiquidityProvider | unknown | ethereum | n/a | [`0x0aa5dc1650cebf5e8db4a6070fa10702666f0ec3`](./contracts/ethereum-1/0x0aa5dc1650cebf5e8db4a6070fa10702666f0ec3/) | ⚠️ Unaudited |
| AllowanceLiquiditySource | unknown | ethereum | n/a | [`0x9a6282998ebc1ee5a41c0ccc8fd9fdab7769c493`](./contracts/ethereum-1/0x9a6282998ebc1ee5a41c0ccc8fd9fdab7769c493/) | ⚠️ Unaudited |
| ComplianceServiceLibrary | unknown | ethereum | n/a | [`0x2a49ee732c76837b7e7e181e9c3c43946eed528c`](./contracts/ethereum-1/0x2a49ee732c76837b7e7e181e9c3c43946eed528c/) | ⚠️ Unaudited |
| Disperse | unknown | ethereum | n/a | [`0x63866ebe37dd39565d6f9b752e0a2177f70bd31b`](./contracts/ethereum-1/0x63866ebe37dd39565d6f9b752e0a2177f70bd31b/) | ⚠️ Unaudited |
| DSTokenClassSwap | unknown | ethereum | n/a | [`0x1e5d83ff1a6d32c53f25937664c53e9b57e37021`](./contracts/ethereum-1/0x1e5d83ff1a6d32c53f25937664c53e9b57e37021/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | ethereum | n/a | [`0x021840988add1cb60be98d8ba1c577e314b0c6aa`](./contracts/ethereum-1/0x021840988add1cb60be98d8ba1c577e314b0c6aa/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | ethereum | n/a | [`0x04fb23ef3cb3eb559d0ba096fbfda90241ff8e66`](./contracts/ethereum-1/0x04fb23ef3cb3eb559d0ba096fbfda90241ff8e66/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | ethereum | n/a | [`0x0656748e529baac7338a2dc99297bb9f568511a3`](./contracts/ethereum-1/0x0656748e529baac7338a2dc99297bb9f568511a3/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | ethereum | n/a | [`0x06ac066b0f918ca8a1d13a420035530085a780a3`](./contracts/ethereum-1/0x06ac066b0f918ca8a1d13a420035530085a780a3/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | ethereum | n/a | [`0x1ea550a49c0f6def620f734c6329c4c12a68ad4f`](./contracts/ethereum-1/0x1ea550a49c0f6def620f734c6329c4c12a68ad4f/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | bsc | n/a | [`0x043f7fb0c2c665475e02d4fc1de278a57df794f7`](./contracts/bsc-56/0x043f7fb0c2c665475e02d4fc1de278a57df794f7/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | polygon | n/a | [`0x4759b22cbdcd87f6305a4976c29a48165cd8227a`](./contracts/polygon-137/0x4759b22cbdcd87f6305a4976c29a48165cd8227a/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | sei | n/a | [`0x005c4c5d330357845a5d56cacd3d1e3546542548`](./contracts/sei-1329/0x005c4c5d330357845a5d56cacd3d1e3546542548/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | mantle | n/a | [`0x002194d1001a337346cb1f7d5499879dcc5af159`](./contracts/mantle-5000/0x002194d1001a337346cb1f7d5499879dcc5af159/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | avalanche | n/a | [`0x00024ad5177504c494f11cc3caecaef95084700f`](./contracts/avalanche-43114/0x00024ad5177504c494f11cc3caecaef95084700f/) | ⚠️ Unaudited |
| EthereumMergedAdapterWithRoundsEurspkccNavV1 | unknown | ethereum | n/a | [`0x4b2c406f0dbf7624a32971277da7b4c43a7a942b`](./contracts/ethereum-1/0x4b2c406f0dbf7624a32971277da7b4c43a7a942b/) | ⚠️ Unaudited |
| EthereumPriceFeedAcredFundamentalWithoutRoundsV1 | unknown | ethereum | n/a | [`0xd6bcbbc87bfb6c8964ddc73dc3eae6d08865d51c`](./contracts/ethereum-1/0xd6bcbbc87bfb6c8964ddc73dc3eae6d08865d51c/) | ⚠️ Unaudited |
| EthereumPriceFeedAmcashplusFundamentalWithoutRoundsV1 | unknown | ethereum | n/a | [`0x767b8971ca1dc117f624d3ee3053d2881d241db9`](./contracts/ethereum-1/0x767b8971ca1dc117f624d3ee3053d2881d241db9/) | ⚠️ Unaudited |
| EthereumPriceFeedAvltFundamentalusdWithoutRoundsV1 | unknown | ethereum | n/a | [`0x105eac28b82b872a8b10218bd237a4c097022021`](./contracts/ethereum-1/0x105eac28b82b872a8b10218bd237a4c097022021/) | ⚠️ Unaudited |
| EthereumPriceFeedAzndFundamentalWithoutRoundsV1 | unknown | ethereum | n/a | [`0x3f2c697fcce450a65092eb50ad6f24bd478818de`](./contracts/ethereum-1/0x3f2c697fcce450a65092eb50ad6f24bd478818de/) | ⚠️ Unaudited |
| EthereumPriceFeedBeraStoneFundamentalWithoutRoundsV2 | unknown | ethereum | n/a | [`0x4f67fd74cff274ef2942223c0f3166b856410add`](./contracts/ethereum-1/0x4f67fd74cff274ef2942223c0f3166b856410add/) | ⚠️ Unaudited |
| EthereumPriceFeedBuidlFundamentalWithoutRoundsV1 | unknown | ethereum | n/a | [`0x2d4f3199a80b848f3d094745f3bbd4224892654e`](./contracts/ethereum-1/0x2d4f3199a80b848f3d094745f3bbd4224892654e/) | ⚠️ Unaudited |
| EthereumPriceFeedBuidlIEthereumDailyAccrualWithoutRoundsV1 | unknown | ethereum | n/a | [`0x4f4e639745cfb234b6176e96c6afd83269baf52e`](./contracts/ethereum-1/0x4f4e639745cfb234b6176e96c6afd83269baf52e/) | ⚠️ Unaudited |
| EthereumPriceFeedBuidlIEthereumFundamentalWithoutRoundsV1 | unknown | ethereum | n/a | [`0xf2db7b3455077fb177215d45d62d441df3c17bf3`](./contracts/ethereum-1/0xf2db7b3455077fb177215d45d62d441df3c17bf3/) | ⚠️ Unaudited |
| EthereumPriceFeedCbbtcWithoutRoundsV1 | unknown | ethereum | n/a | [`0xe13e2bbab029bfb324f49048ced0e95ea30ae049`](./contracts/ethereum-1/0xe13e2bbab029bfb324f49048ced0e95ea30ae049/) | ⚠️ Unaudited |
| EthereumPriceFeedCusdFundamentalWithoutRoundsV1 | unknown | ethereum | n/a | [`0x2d7a6851cc237bc2c7a5a87f78b7ffdb5db92bcb`](./contracts/ethereum-1/0x2d7a6851cc237bc2c7a5a87f78b7ffdb5db92bcb/) | ⚠️ Unaudited |
| EthereumPriceFeedDeusdFundamentalWithoutRoundsV1 | unknown | ethereum | n/a | [`0x4c89968338b75551243c99b452c84a01888282fd`](./contracts/ethereum-1/0x4c89968338b75551243c99b452c84a01888282fd/) | ⚠️ Unaudited |
| EthereumPriceFeedDlfPublicationTsWithoutRoundsV1 | unknown | ethereum | n/a | [`0x51a855867ae59d6292d5675b654c776147039ba5`](./contracts/ethereum-1/0x51a855867ae59d6292d5675b654c776147039ba5/) | ⚠️ Unaudited |
| EthereumPriceFeedEigenWithoutRoundsV1 | unknown | ethereum | n/a | [`0x2ee5ce6556599e16c226579ba14f94926d8cb86d`](./contracts/ethereum-1/0x2ee5ce6556599e16c226579ba14f94926d8cb86d/) | ⚠️ Unaudited |
| EthereumPriceFeedEthfiWithoutRoundsV1 | unknown | ethereum | n/a | [`0x09f9a127fba172c41d8c29e49b3c1326d2eb577e`](./contracts/ethereum-1/0x09f9a127fba172c41d8c29e49b3c1326d2eb577e/) | ⚠️ Unaudited |
| EthereumPriceFeedFxusdWithoutRoundsV1 | unknown | ethereum | n/a | [`0x4bad96dd1c7d541270a0c92e1d4e5f12eeea7a57`](./contracts/ethereum-1/0x4bad96dd1c7d541270a0c92e1d4e5f12eeea7a57/) | ⚠️ Unaudited |
| EthereumPriceFeedHlscopeFundamentalWithoutRoundsV1 | unknown | ethereum | n/a | [`0x1f14a50ba904a28cf6088e71b6a15561074398d7`](./contracts/ethereum-1/0x1f14a50ba904a28cf6088e71b6a15561074398d7/) | ⚠️ Unaudited |
| EthereumPriceFeedHwhlpFundamentalWithoutRoundsV1 | unknown | ethereum | n/a | [`0x03138081aed44e2e0eb10361ee41d84edd22a05f`](./contracts/ethereum-1/0x03138081aed44e2e0eb10361ee41d84edd22a05f/) | ⚠️ Unaudited |
| EthereumPriceFeedMsusdFundamentalWithoutRoundsV1 | unknown | ethereum | n/a | [`0x573bb572049ff50156e94823bb99920d406e96f8`](./contracts/ethereum-1/0x573bb572049ff50156e94823bb99920d406e96f8/) | ⚠️ Unaudited |
| EthereumPriceFeedMsyFundamentalusdWithoutRoundsV1 | unknown | ethereum | n/a | [`0x89621c11aad52c1535e36eb9dbf43e638e9a3e9a`](./contracts/ethereum-1/0x89621c11aad52c1535e36eb9dbf43e638e9a3e9a/) | ⚠️ Unaudited |
| EthereumPriceFeedMubondFundamentalWithoutRoundsV1 | unknown | ethereum | n/a | [`0x636eca78f6b46a69ab233ef513c1fb4703e32a7b`](./contracts/ethereum-1/0x636eca78f6b46a69ab233ef513c1fb4703e32a7b/) | ⚠️ Unaudited |
| EthereumPriceFeedNgiplusFundamentalWithoutRoundsV1 | unknown | ethereum | n/a | [`0x09ba943f3b38e0f28e8909a00f3b58135dcd5b06`](./contracts/ethereum-1/0x09ba943f3b38e0f28e8909a00f3b58135dcd5b06/) | ⚠️ Unaudited |
| EthereumPriceFeedNusdFundamentalWithoutRoundsV1 | unknown | ethereum | n/a | [`0x5e7281f74e74d76347f0b8f4a36fd3cb29c19d95`](./contracts/ethereum-1/0x5e7281f74e74d76347f0b8f4a36fd3cb29c19d95/) | ⚠️ Unaudited |
| EthereumPriceFeedPrimeEchelonWithoutRoundsV1 | unknown | ethereum | n/a | [`0xc328cdf06cbc77134b84e1f6ed452774947146b6`](./contracts/ethereum-1/0xc328cdf06cbc77134b84e1f6ed452774947146b6/) | ⚠️ Unaudited |
| EthereumPriceFeedPromptWithoutRoundsV1 | unknown | ethereum | n/a | [`0x25a23c034fbc1eea341f6c92c6d8e6bafcf5da40`](./contracts/ethereum-1/0x25a23c034fbc1eea341f6c92c6d8e6bafcf5da40/) | ⚠️ Unaudited |
| EthereumPriceFeedPufferWithoutRoundsV1 | unknown | ethereum | n/a | [`0x197225b3b017eb9b72ac356d6b3c267d0c04c57c`](./contracts/ethereum-1/0x197225b3b017eb9b72ac356d6b3c267d0c04c57c/) | ⚠️ Unaudited |
| EthereumPriceFeedPumpbtcFundamentalWithoutRoundsV2 | unknown | ethereum | n/a | [`0x85c4f855bc0609d2584405819edaea3adabfe97d`](./contracts/ethereum-1/0x85c4f855bc0609d2584405819edaea3adabfe97d/) | ⚠️ Unaudited |
| EthereumPriceFeedPyusdWithoutRoundsV1 | unknown | ethereum | n/a | [`0xb7699e81acf22456fa83696573738dfa25f1d6be`](./contracts/ethereum-1/0xb7699e81acf22456fa83696573738dfa25f1d6be/) | ⚠️ Unaudited |
| EthereumPriceFeedRswethFundamentalWithoutRoundsV2 | unknown | ethereum | n/a | [`0xb60224122830fd6cf5119f548477a190310d2c94`](./contracts/ethereum-1/0xb60224122830fd6cf5119f548477a190310d2c94/) | ⚠️ Unaudited |
| EthereumPriceFeedSolvbtcbtcWithoutRoundsV1 | unknown | ethereum | n/a | [`0x3587a73aa02519335a8a6053a97657bece0bc2cc`](./contracts/ethereum-1/0x3587a73aa02519335a8a6053a97657bece0bc2cc/) | ⚠️ Unaudited |
| EthereumPriceFeedSolvbtcWithoutRoundsV1 | unknown | ethereum | n/a | [`0x24c8964338deb5204b096039147b8e8c3aea42cc`](./contracts/ethereum-1/0x24c8964338deb5204b096039147b8e8c3aea42cc/) | ⚠️ Unaudited |
| EthereumPriceFeedSpkWithoutRoundsV1 | unknown | ethereum | n/a | [`0x3f145fd2cc3ed0806cae3eba73472e5991f5a721`](./contracts/ethereum-1/0x3f145fd2cc3ed0806cae3eba73472e5991f5a721/) | ⚠️ Unaudited |
| EthereumPriceFeedStacFundamentalWithoutRoundsV1 | unknown | ethereum | n/a | [`0x97e3c432d1c7b765d3daeecf45f7b85dc8c0147a`](./contracts/ethereum-1/0x97e3c432d1c7b765d3daeecf45f7b85dc8c0147a/) | ⚠️ Unaudited |
| EthereumPriceFeedSthusdFundamentalWithoutRoundsV1 | unknown | ethereum | n/a | [`0x6dd1e6799b67434601fd0c65cf13d4df9278cd52`](./contracts/ethereum-1/0x6dd1e6799b67434601fd0c65cf13d4df9278cd52/) | ⚠️ Unaudited |
| EthereumPriceFeedStrcWithoutRoundsV1 | unknown | ethereum | n/a | [`0x041a85430c75cb8cfc9cbaa59166ff9e575f33d7`](./contracts/ethereum-1/0x041a85430c75cb8cfc9cbaa59166ff9e575f33d7/) | ⚠️ Unaudited |
| EthereumPriceFeedTacbtcFundamentalWithoutRoundsV1 | unknown | ethereum | n/a | [`0x0a6fd5820f797e517297feff90aaecd8e2dc77b3`](./contracts/ethereum-1/0x0a6fd5820f797e517297feff90aaecd8e2dc77b3/) | ⚠️ Unaudited |
| EthereumPriceFeedTacethFundamentalWithoutRoundsV1 | unknown | ethereum | n/a | [`0x9d0ab80d6b68144a6bbb5c7447eb84edaac18519`](./contracts/ethereum-1/0x9d0ab80d6b68144a6bbb5c7447eb84edaac18519/) | ⚠️ Unaudited |
| EthereumPriceFeedThbillFundamentalWithoutRoundsV1 | unknown | ethereum | n/a | [`0x80b0735616b27b647233d3ab67078c95ba5a2c93`](./contracts/ethereum-1/0x80b0735616b27b647233d3ab67078c95ba5a2c93/) | ⚠️ Unaudited |
| EthereumPriceFeedUsdcV2WithoutRoundsV1 | unknown | ethereum | n/a | [`0x3ebfaae0ef43f63dbb176ff11cab16dcd976607b`](./contracts/ethereum-1/0x3ebfaae0ef43f63dbb176ff11cab16dcd976607b/) | ⚠️ Unaudited |
| EthereumPriceFeedUsdtV2WithoutRoundsV1 | unknown | ethereum | n/a | [`0x02e1f8d15762047b7a87ba0e5d94b9a0c5b54ed2`](./contracts/ethereum-1/0x02e1f8d15762047b7a87ba0e5d94b9a0c5b54ed2/) | ⚠️ Unaudited |
| EthereumPriceFeedUsrWithoutRoundsV1 | unknown | ethereum | n/a | [`0x107dd3391a6357248f2093698014e7c6130779ee`](./contracts/ethereum-1/0x107dd3391a6357248f2093698014e7c6130779ee/) | ⚠️ Unaudited |
| EthereumPriceFeedUsstFundamentalWithoutRoundsV1 | unknown | ethereum | n/a | [`0x2619976127c90de2eea94b368ac5156ef16b7f3f`](./contracts/ethereum-1/0x2619976127c90de2eea94b368ac5156ef16b7f3f/) | ⚠️ Unaudited |
| EthereumPriceFeedUsualWithoutRoundsV1 | unknown | ethereum | n/a | [`0x2240ae461b34cc56d654ba5fa5830a243ca54840`](./contracts/ethereum-1/0x2240ae461b34cc56d654ba5fa5830a243ca54840/) | ⚠️ Unaudited |
| EthereumPriceFeedVbillEthereumDailyAccrualWithoutRoundsV1 | unknown | ethereum | n/a | [`0x40ea33ea76fbe35e9fb422edd175b8c8d84a63cc`](./contracts/ethereum-1/0x40ea33ea76fbe35e9fb422edd175b8c8d84a63cc/) | ⚠️ Unaudited |
| EthereumPriceFeedWbtcbtcWithoutRoundsV1 | unknown | ethereum | n/a | [`0x019697e7832dba533c320c0e2a36faa2da958de9`](./contracts/ethereum-1/0x019697e7832dba533c320c0e2a36faa2da958de9/) | ⚠️ Unaudited |
| EthereumPriceFeedWlfiWithoutRoundsV1 | unknown | ethereum | n/a | [`0x131141e6c88a3389a4ab2368d3bbc65df1bf4a7e`](./contracts/ethereum-1/0x131141e6c88a3389a4ab2368d3bbc65df1bf4a7e/) | ⚠️ Unaudited |
| EthereumPriceFeedWstethstethWithoutRoundsV1 | unknown | ethereum | n/a | [`0xa7b0247d2da6b11ff2740491cb433a1520d5da98`](./contracts/ethereum-1/0xa7b0247d2da6b11ff2740491cb433a1520d5da98/) | ⚠️ Unaudited |
| EthereumPriceFeedWstethWithoutRoundsV1 | unknown | ethereum | n/a | [`0x84c698e69d420aea702e10acc01850ef57978f64`](./contracts/ethereum-1/0x84c698e69d420aea702e10acc01850ef57978f64/) | ⚠️ Unaudited |
| EthereumPriceFeedXrpWithoutRoundsV1 | unknown | ethereum | n/a | [`0x3d01242aadc0425209544520093e74fd151daeb9`](./contracts/ethereum-1/0x3d01242aadc0425209544520093e74fd151daeb9/) | ⚠️ Unaudited |
| GlobalRegistryService | unknown | ethereum | n/a | [`0x1d95f6064f2aa53d6b1c0eab826aeecc303e8c75`](./contracts/ethereum-1/0x1d95f6064f2aa53d6b1c0eab826aeecc303e8c75/) | ⚠️ Unaudited |
| IssuerMulticall | unknown | optimism | n/a | [`0x00b1734ec95dc2ba1873415dedb450bb199d5bd9`](./contracts/optimism-10/0x00b1734ec95dc2ba1873415dedb450bb199d5bd9/) | ⚠️ Unaudited |
| MbpsFeeManager | unknown | ethereum | n/a | [`0x184cb128c1d4778da88bbde95c35d199aaec649d`](./contracts/ethereum-1/0x184cb128c1d4778da88bbde95c35d199aaec649d/) | ⚠️ Unaudited |
| Proxy | unknown | ethereum | n/a | [`0x0638033f826c88d8b540a26c0a31130694c63070`](./contracts/ethereum-1/0x0638033f826c88d8b540a26c0a31130694c63070/) | ⚠️ Unaudited |
| PublicStockOffRamp | unknown | ethereum | n/a | [`0x226b44eaab75be8000b1700c413e42513bc7c66f`](./contracts/ethereum-1/0x226b44eaab75be8000b1700c413e42513bc7c66f/) | ⚠️ Unaudited |
| PublicStockOnRamp | unknown | ethereum | n/a | [`0x0d0051527b57ec296dcb6f28ff8e7c0820373c0c`](./contracts/ethereum-1/0x0d0051527b57ec296dcb6f28ff8e7c0820373c0c/) | ⚠️ Unaudited |
| Redemption | unknown | ethereum | n/a | [`0x4580d3c5fff079bde60af9e98b62d4fb031ee0a0`](./contracts/ethereum-1/0x4580d3c5fff079bde60af9e98b62d4fb031ee0a0/) | ⚠️ Unaudited |
| RedStoneNavProvider | unknown | ethereum | n/a | [`0x12263bef18d07c48940eaa56f7b2efc665169db8`](./contracts/ethereum-1/0x12263bef18d07c48940eaa56f7b2efc665169db8/) | ⚠️ Unaudited |
| SecuritizeAmmNavProvider | unknown | ethereum | n/a | [`0x1b9aaf91dd71ea63487026908d06ab97c05d06a5`](./contracts/ethereum-1/0x1b9aaf91dd71ea63487026908d06ab97c05d06a5/) | ⚠️ Unaudited |
| SecuritizeOnRamp | unknown | ethereum | n/a | [`0x0db0dd371646b62c0de87b72101009f50484b9a3`](./contracts/ethereum-1/0x0db0dd371646b62c0de87b72101009f50484b9a3/) | ⚠️ Unaudited |
| SecuritizeVault | unknown | ethereum | n/a | [`0x4535b360b4907b44b27cd499e07ed7772b723dea`](./contracts/ethereum-1/0x4535b360b4907b44b27cd499e07ed7772b723dea/) | ⚠️ Unaudited |
| Settlement | unknown | ethereum | n/a | [`0x6c97c9754880e569c8f098b3cc654089f7ac5fbb`](./contracts/ethereum-1/0x6c97c9754880e569c8f098b3cc654089f7ac5fbb/) | ⚠️ Unaudited |
| TerminatedContract | unknown | ethereum | n/a | [`0x87729bc3824f4d4b36abfc034680e77d8c51ba89`](./contracts/ethereum-1/0x87729bc3824f4d4b36abfc034680e77d8c51ba89/) | ⚠️ Unaudited |
| TokenIssuer | unknown | avalanche | n/a | [`0x000a0cb527775ce60ad212a25648813a60364581`](./contracts/avalanche-43114/0x000a0cb527775ce60ad212a25648813a60364581/) | ⚠️ Unaudited |
| TokenReallocator | unknown | ethereum | n/a | [`0x0002fcfc817cdc092526cd22fd90fa2c4f507cf8`](./contracts/ethereum-1/0x0002fcfc817cdc092526cd22fd90fa2c4f507cf8/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x18c9b9500d8006574329ff95deb47f9576011a9f`](./contracts/ethereum-1/0x18c9b9500d8006574329ff95deb47f9576011a9f/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x2e65b1a44fdc30976d7e2397d16c425a8a7aa4f6`](./contracts/ethereum-1/0x2e65b1a44fdc30976d7e2397d16c425a8a7aa4f6/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x354d1e7d9cf90841dfa252547881db96af2aae3e`](./contracts/ethereum-1/0x354d1e7d9cf90841dfa252547881db96af2aae3e/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x61376924babe5a0fa982fff2c8be8013be3d6bb6`](./contracts/ethereum-1/0x61376924babe5a0fa982fff2c8be8013be3d6bb6/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x6682c5b9b47ec0d18beb2088779f14535fc7bf47`](./contracts/ethereum-1/0x6682c5b9b47ec0d18beb2088779f14535fc7bf47/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | mantle | n/a | [`0xb81131b6368b3f0a83af09db4e39ac23da96c2db`](./contracts/mantle-5000/0xb81131b6368b3f0a83af09db4e39ac23da96c2db/) | ⚠️ Unaudited |
| USDCBridgeV2 | unknown | ethereum | n/a | [`0x4665137f0138a639bc5b4dd3d88947b2b0cd66ab`](./contracts/ethereum-1/0x4665137f0138a639bc5b4dd3d88947b2b0cd66ab/) | ⚠️ Unaudited |
| VaultRegistrar | unknown | ethereum | n/a | [`0x121d63424e6f8632602f8f67848a28209179711d`](./contracts/ethereum-1/0x121d63424e6f8632602f8f67848a28209179711d/) | ⚠️ Unaudited |

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
| [2026-03-24-Octane.pdf](https://github.com/cap-labs-dev/cap-audits/blob/main/2026-03-24-Octane.pdf) | Octane | Audit | 2026-03 | fresh | Inherited from cap — forked code, scoped to EthereumMergedAdapterWithRoundsSpkccNavV1, EthereumMultiFeedAdapterWithoutRoundsV2, EthereumPriceFeedBeraethFundamentalWithoutRoundsV1, EthereumPriceFeedBfbtcFundamentalWithoutRoundsV1, +12 more | inherited | 16 | n/a |
| [2025-11-27-Spearbit (PR Review).pdf](https://github.com/cap-labs-dev/cap-audits/blob/main/2025-11-27-Spearbit%20(PR%20Review).pdf) | Spearbit | Audit | 2025-11 | fresh | Inherited from cap — forked code, scoped to EthereumMergedAdapterWithRoundsSpkccNavV1, EthereumMultiFeedAdapterWithoutRoundsV2, EthereumPriceFeedBeraethFundamentalWithoutRoundsV1, EthereumPriceFeedBfbtcFundamentalWithoutRoundsV1, +12 more | inherited | 16 | n/a |
| [2025-09-15-Certora (EigenAVS).pdf](https://github.com/cap-labs-dev/cap-audits/blob/main/2025-09-15-Certora%20(EigenAVS).pdf) | Certora | Audit | 2025-09 | fresh | Inherited from cap — forked code, scoped to EthereumMergedAdapterWithRoundsSpkccNavV1, EthereumMultiFeedAdapterWithoutRoundsV2, EthereumPriceFeedBeraethFundamentalWithoutRoundsV1, EthereumPriceFeedBfbtcFundamentalWithoutRoundsV1, +12 more | inherited | 16 | n/a |
| [2025-09-03-Sherlock.pdf](https://github.com/cap-labs-dev/cap-audits/blob/main/2025-09-03-Sherlock.pdf) | Sherlock | Contest | 2025-09 | fresh | Inherited from cap — forked code, scoped to EthereumMergedAdapterWithRoundsSpkccNavV1, EthereumMultiFeedAdapterWithoutRoundsV2, EthereumPriceFeedBeraethFundamentalWithoutRoundsV1, EthereumPriceFeedBfbtcFundamentalWithoutRoundsV1, +12 more | inherited | 16 | n/a |
| [2025-07-04-Recon.pdf](https://github.com/cap-labs-dev/cap-audits/blob/main/2025-07-04-Recon.pdf) | Recon | Audit | 2025-07 | aging | Inherited from cap — forked code, scoped to EthereumMergedAdapterWithRoundsSpkccNavV1, EthereumMultiFeedAdapterWithoutRoundsV2, EthereumPriceFeedBeraethFundamentalWithoutRoundsV1, EthereumPriceFeedBfbtcFundamentalWithoutRoundsV1, +12 more | inherited | 16 | n/a |
| [2025-06-23-Spearbit.pdf](https://github.com/cap-labs-dev/cap-audits/blob/main/2025-06-23-Spearbit.pdf) | Spearbit | Audit | 2025-06 | aging | Inherited from cap — forked code, scoped to EthereumMergedAdapterWithRoundsSpkccNavV1, EthereumMultiFeedAdapterWithoutRoundsV2, EthereumPriceFeedBeraethFundamentalWithoutRoundsV1, EthereumPriceFeedBfbtcFundamentalWithoutRoundsV1, +12 more | inherited | 16 | n/a |
| [2025-05-25-Electisec.pdf](https://github.com/cap-labs-dev/cap-audits/blob/main/2025-05-25-Electisec.pdf) | Electisec | Audit | 2025-05 | aging | Inherited from cap — forked code, scoped to EthereumMergedAdapterWithRoundsSpkccNavV1, EthereumMultiFeedAdapterWithoutRoundsV2, EthereumPriceFeedBeraethFundamentalWithoutRoundsV1, EthereumPriceFeedBfbtcFundamentalWithoutRoundsV1, +12 more | inherited | 16 | n/a |
| [2025-05-15-TrailOfBits.pdf](https://github.com/cap-labs-dev/cap-audits/blob/main/2025-05-15-TrailOfBits.pdf) | Trail of Bits | Audit | 2025-05 | aging | Inherited from cap — forked code, scoped to EthereumMergedAdapterWithRoundsSpkccNavV1, EthereumMultiFeedAdapterWithoutRoundsV2, EthereumPriceFeedBeraethFundamentalWithoutRoundsV1, EthereumPriceFeedBfbtcFundamentalWithoutRoundsV1, +12 more | inherited | 16 | n/a |
| [www.halborn.com/audits/securitize/dstoken-e07b34](https://www.halborn.com/audits/securitize/dstoken-e07b34) | Halborn | Audit | 2025-09 | fresh | Direct | contract_name | 10 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xb743c527546f6e009d1e4c87bbf2095f061e6b39`](./contracts/ethereum-1/0xb743c527546f6e009d1e4c87bbf2095f061e6b39/) | AllowanceAssetProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0aa5dc1650cebf5e8db4a6070fa10702666f0ec3`](./contracts/ethereum-1/0x0aa5dc1650cebf5e8db4a6070fa10702666f0ec3/) | AllowanceLiquidityProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9a6282998ebc1ee5a41c0ccc8fd9fdab7769c493`](./contracts/ethereum-1/0x9a6282998ebc1ee5a41c0ccc8fd9fdab7769c493/) | AllowanceLiquiditySource | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2a49ee732c76837b7e7e181e9c3c43946eed528c`](./contracts/ethereum-1/0x2a49ee732c76837b7e7e181e9c3c43946eed528c/) | ComplianceServiceLibrary | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1e5d83ff1a6d32c53f25937664c53e9b57e37021`](./contracts/ethereum-1/0x1e5d83ff1a6d32c53f25937664c53e9b57e37021/) | DSTokenClassSwap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4b2c406f0dbf7624a32971277da7b4c43a7a942b`](./contracts/ethereum-1/0x4b2c406f0dbf7624a32971277da7b4c43a7a942b/) | EthereumMergedAdapterWithRoundsEurspkccNavV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd6bcbbc87bfb6c8964ddc73dc3eae6d08865d51c`](./contracts/ethereum-1/0xd6bcbbc87bfb6c8964ddc73dc3eae6d08865d51c/) | EthereumPriceFeedAcredFundamentalWithoutRoundsV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x767b8971ca1dc117f624d3ee3053d2881d241db9`](./contracts/ethereum-1/0x767b8971ca1dc117f624d3ee3053d2881d241db9/) | EthereumPriceFeedAmcashplusFundamentalWithoutRoundsV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x105eac28b82b872a8b10218bd237a4c097022021`](./contracts/ethereum-1/0x105eac28b82b872a8b10218bd237a4c097022021/) | EthereumPriceFeedAvltFundamentalusdWithoutRoundsV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3f2c697fcce450a65092eb50ad6f24bd478818de`](./contracts/ethereum-1/0x3f2c697fcce450a65092eb50ad6f24bd478818de/) | EthereumPriceFeedAzndFundamentalWithoutRoundsV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4f67fd74cff274ef2942223c0f3166b856410add`](./contracts/ethereum-1/0x4f67fd74cff274ef2942223c0f3166b856410add/) | EthereumPriceFeedBeraStoneFundamentalWithoutRoundsV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2d4f3199a80b848f3d094745f3bbd4224892654e`](./contracts/ethereum-1/0x2d4f3199a80b848f3d094745f3bbd4224892654e/) | EthereumPriceFeedBuidlFundamentalWithoutRoundsV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4f4e639745cfb234b6176e96c6afd83269baf52e`](./contracts/ethereum-1/0x4f4e639745cfb234b6176e96c6afd83269baf52e/) | EthereumPriceFeedBuidlIEthereumDailyAccrualWithoutRoundsV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf2db7b3455077fb177215d45d62d441df3c17bf3`](./contracts/ethereum-1/0xf2db7b3455077fb177215d45d62d441df3c17bf3/) | EthereumPriceFeedBuidlIEthereumFundamentalWithoutRoundsV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe13e2bbab029bfb324f49048ced0e95ea30ae049`](./contracts/ethereum-1/0xe13e2bbab029bfb324f49048ced0e95ea30ae049/) | EthereumPriceFeedCbbtcWithoutRoundsV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2d7a6851cc237bc2c7a5a87f78b7ffdb5db92bcb`](./contracts/ethereum-1/0x2d7a6851cc237bc2c7a5a87f78b7ffdb5db92bcb/) | EthereumPriceFeedCusdFundamentalWithoutRoundsV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4c89968338b75551243c99b452c84a01888282fd`](./contracts/ethereum-1/0x4c89968338b75551243c99b452c84a01888282fd/) | EthereumPriceFeedDeusdFundamentalWithoutRoundsV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x51a855867ae59d6292d5675b654c776147039ba5`](./contracts/ethereum-1/0x51a855867ae59d6292d5675b654c776147039ba5/) | EthereumPriceFeedDlfPublicationTsWithoutRoundsV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2ee5ce6556599e16c226579ba14f94926d8cb86d`](./contracts/ethereum-1/0x2ee5ce6556599e16c226579ba14f94926d8cb86d/) | EthereumPriceFeedEigenWithoutRoundsV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x09f9a127fba172c41d8c29e49b3c1326d2eb577e`](./contracts/ethereum-1/0x09f9a127fba172c41d8c29e49b3c1326d2eb577e/) | EthereumPriceFeedEthfiWithoutRoundsV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4bad96dd1c7d541270a0c92e1d4e5f12eeea7a57`](./contracts/ethereum-1/0x4bad96dd1c7d541270a0c92e1d4e5f12eeea7a57/) | EthereumPriceFeedFxusdWithoutRoundsV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1f14a50ba904a28cf6088e71b6a15561074398d7`](./contracts/ethereum-1/0x1f14a50ba904a28cf6088e71b6a15561074398d7/) | EthereumPriceFeedHlscopeFundamentalWithoutRoundsV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x03138081aed44e2e0eb10361ee41d84edd22a05f`](./contracts/ethereum-1/0x03138081aed44e2e0eb10361ee41d84edd22a05f/) | EthereumPriceFeedHwhlpFundamentalWithoutRoundsV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x573bb572049ff50156e94823bb99920d406e96f8`](./contracts/ethereum-1/0x573bb572049ff50156e94823bb99920d406e96f8/) | EthereumPriceFeedMsusdFundamentalWithoutRoundsV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x89621c11aad52c1535e36eb9dbf43e638e9a3e9a`](./contracts/ethereum-1/0x89621c11aad52c1535e36eb9dbf43e638e9a3e9a/) | EthereumPriceFeedMsyFundamentalusdWithoutRoundsV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x636eca78f6b46a69ab233ef513c1fb4703e32a7b`](./contracts/ethereum-1/0x636eca78f6b46a69ab233ef513c1fb4703e32a7b/) | EthereumPriceFeedMubondFundamentalWithoutRoundsV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x09ba943f3b38e0f28e8909a00f3b58135dcd5b06`](./contracts/ethereum-1/0x09ba943f3b38e0f28e8909a00f3b58135dcd5b06/) | EthereumPriceFeedNgiplusFundamentalWithoutRoundsV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5e7281f74e74d76347f0b8f4a36fd3cb29c19d95`](./contracts/ethereum-1/0x5e7281f74e74d76347f0b8f4a36fd3cb29c19d95/) | EthereumPriceFeedNusdFundamentalWithoutRoundsV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc328cdf06cbc77134b84e1f6ed452774947146b6`](./contracts/ethereum-1/0xc328cdf06cbc77134b84e1f6ed452774947146b6/) | EthereumPriceFeedPrimeEchelonWithoutRoundsV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x25a23c034fbc1eea341f6c92c6d8e6bafcf5da40`](./contracts/ethereum-1/0x25a23c034fbc1eea341f6c92c6d8e6bafcf5da40/) | EthereumPriceFeedPromptWithoutRoundsV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x197225b3b017eb9b72ac356d6b3c267d0c04c57c`](./contracts/ethereum-1/0x197225b3b017eb9b72ac356d6b3c267d0c04c57c/) | EthereumPriceFeedPufferWithoutRoundsV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x85c4f855bc0609d2584405819edaea3adabfe97d`](./contracts/ethereum-1/0x85c4f855bc0609d2584405819edaea3adabfe97d/) | EthereumPriceFeedPumpbtcFundamentalWithoutRoundsV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb7699e81acf22456fa83696573738dfa25f1d6be`](./contracts/ethereum-1/0xb7699e81acf22456fa83696573738dfa25f1d6be/) | EthereumPriceFeedPyusdWithoutRoundsV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb60224122830fd6cf5119f548477a190310d2c94`](./contracts/ethereum-1/0xb60224122830fd6cf5119f548477a190310d2c94/) | EthereumPriceFeedRswethFundamentalWithoutRoundsV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3587a73aa02519335a8a6053a97657bece0bc2cc`](./contracts/ethereum-1/0x3587a73aa02519335a8a6053a97657bece0bc2cc/) | EthereumPriceFeedSolvbtcbtcWithoutRoundsV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x24c8964338deb5204b096039147b8e8c3aea42cc`](./contracts/ethereum-1/0x24c8964338deb5204b096039147b8e8c3aea42cc/) | EthereumPriceFeedSolvbtcWithoutRoundsV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3f145fd2cc3ed0806cae3eba73472e5991f5a721`](./contracts/ethereum-1/0x3f145fd2cc3ed0806cae3eba73472e5991f5a721/) | EthereumPriceFeedSpkWithoutRoundsV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x97e3c432d1c7b765d3daeecf45f7b85dc8c0147a`](./contracts/ethereum-1/0x97e3c432d1c7b765d3daeecf45f7b85dc8c0147a/) | EthereumPriceFeedStacFundamentalWithoutRoundsV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6dd1e6799b67434601fd0c65cf13d4df9278cd52`](./contracts/ethereum-1/0x6dd1e6799b67434601fd0c65cf13d4df9278cd52/) | EthereumPriceFeedSthusdFundamentalWithoutRoundsV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x041a85430c75cb8cfc9cbaa59166ff9e575f33d7`](./contracts/ethereum-1/0x041a85430c75cb8cfc9cbaa59166ff9e575f33d7/) | EthereumPriceFeedStrcWithoutRoundsV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0a6fd5820f797e517297feff90aaecd8e2dc77b3`](./contracts/ethereum-1/0x0a6fd5820f797e517297feff90aaecd8e2dc77b3/) | EthereumPriceFeedTacbtcFundamentalWithoutRoundsV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9d0ab80d6b68144a6bbb5c7447eb84edaac18519`](./contracts/ethereum-1/0x9d0ab80d6b68144a6bbb5c7447eb84edaac18519/) | EthereumPriceFeedTacethFundamentalWithoutRoundsV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x80b0735616b27b647233d3ab67078c95ba5a2c93`](./contracts/ethereum-1/0x80b0735616b27b647233d3ab67078c95ba5a2c93/) | EthereumPriceFeedThbillFundamentalWithoutRoundsV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3ebfaae0ef43f63dbb176ff11cab16dcd976607b`](./contracts/ethereum-1/0x3ebfaae0ef43f63dbb176ff11cab16dcd976607b/) | EthereumPriceFeedUsdcV2WithoutRoundsV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x02e1f8d15762047b7a87ba0e5d94b9a0c5b54ed2`](./contracts/ethereum-1/0x02e1f8d15762047b7a87ba0e5d94b9a0c5b54ed2/) | EthereumPriceFeedUsdtV2WithoutRoundsV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x107dd3391a6357248f2093698014e7c6130779ee`](./contracts/ethereum-1/0x107dd3391a6357248f2093698014e7c6130779ee/) | EthereumPriceFeedUsrWithoutRoundsV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2619976127c90de2eea94b368ac5156ef16b7f3f`](./contracts/ethereum-1/0x2619976127c90de2eea94b368ac5156ef16b7f3f/) | EthereumPriceFeedUsstFundamentalWithoutRoundsV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2240ae461b34cc56d654ba5fa5830a243ca54840`](./contracts/ethereum-1/0x2240ae461b34cc56d654ba5fa5830a243ca54840/) | EthereumPriceFeedUsualWithoutRoundsV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x40ea33ea76fbe35e9fb422edd175b8c8d84a63cc`](./contracts/ethereum-1/0x40ea33ea76fbe35e9fb422edd175b8c8d84a63cc/) | EthereumPriceFeedVbillEthereumDailyAccrualWithoutRoundsV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x019697e7832dba533c320c0e2a36faa2da958de9`](./contracts/ethereum-1/0x019697e7832dba533c320c0e2a36faa2da958de9/) | EthereumPriceFeedWbtcbtcWithoutRoundsV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x131141e6c88a3389a4ab2368d3bbc65df1bf4a7e`](./contracts/ethereum-1/0x131141e6c88a3389a4ab2368d3bbc65df1bf4a7e/) | EthereumPriceFeedWlfiWithoutRoundsV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa7b0247d2da6b11ff2740491cb433a1520d5da98`](./contracts/ethereum-1/0xa7b0247d2da6b11ff2740491cb433a1520d5da98/) | EthereumPriceFeedWstethstethWithoutRoundsV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x84c698e69d420aea702e10acc01850ef57978f64`](./contracts/ethereum-1/0x84c698e69d420aea702e10acc01850ef57978f64/) | EthereumPriceFeedWstethWithoutRoundsV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3d01242aadc0425209544520093e74fd151daeb9`](./contracts/ethereum-1/0x3d01242aadc0425209544520093e74fd151daeb9/) | EthereumPriceFeedXrpWithoutRoundsV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1d95f6064f2aa53d6b1c0eab826aeecc303e8c75`](./contracts/ethereum-1/0x1d95f6064f2aa53d6b1c0eab826aeecc303e8c75/) | GlobalRegistryService | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x00b1734ec95dc2ba1873415dedb450bb199d5bd9`](./contracts/optimism-10/0x00b1734ec95dc2ba1873415dedb450bb199d5bd9/) | IssuerMulticall | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x184cb128c1d4778da88bbde95c35d199aaec649d`](./contracts/ethereum-1/0x184cb128c1d4778da88bbde95c35d199aaec649d/) | MbpsFeeManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x226b44eaab75be8000b1700c413e42513bc7c66f`](./contracts/ethereum-1/0x226b44eaab75be8000b1700c413e42513bc7c66f/) | PublicStockOffRamp | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0d0051527b57ec296dcb6f28ff8e7c0820373c0c`](./contracts/ethereum-1/0x0d0051527b57ec296dcb6f28ff8e7c0820373c0c/) | PublicStockOnRamp | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4580d3c5fff079bde60af9e98b62d4fb031ee0a0`](./contracts/ethereum-1/0x4580d3c5fff079bde60af9e98b62d4fb031ee0a0/) | Redemption | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1b9aaf91dd71ea63487026908d06ab97c05d06a5`](./contracts/ethereum-1/0x1b9aaf91dd71ea63487026908d06ab97c05d06a5/) | SecuritizeAmmNavProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0db0dd371646b62c0de87b72101009f50484b9a3`](./contracts/ethereum-1/0x0db0dd371646b62c0de87b72101009f50484b9a3/) | SecuritizeOnRamp | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4535b360b4907b44b27cd499e07ed7772b723dea`](./contracts/ethereum-1/0x4535b360b4907b44b27cd499e07ed7772b723dea/) | SecuritizeVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6c97c9754880e569c8f098b3cc654089f7ac5fbb`](./contracts/ethereum-1/0x6c97c9754880e569c8f098b3cc654089f7ac5fbb/) | Settlement | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x87729bc3824f4d4b36abfc034680e77d8c51ba89`](./contracts/ethereum-1/0x87729bc3824f4d4b36abfc034680e77d8c51ba89/) | TerminatedContract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x000a0cb527775ce60ad212a25648813a60364581`](./contracts/avalanche-43114/0x000a0cb527775ce60ad212a25648813a60364581/) | TokenIssuer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0002fcfc817cdc092526cd22fd90fa2c4f507cf8`](./contracts/ethereum-1/0x0002fcfc817cdc092526cd22fd90fa2c4f507cf8/) | TokenReallocator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4665137f0138a639bc5b4dd3d88947b2b0cd66ab`](./contracts/ethereum-1/0x4665137f0138a639bc5b4dd3d88947b2b0cd66ab/) | USDCBridgeV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x121d63424e6f8632602f8f67848a28209179711d`](./contracts/ethereum-1/0x121d63424e6f8632602f8f67848a28209179711d/) | VaultRegistrar | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 95 |
| upstream | 2 |
| standard_library | 17 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=10, inherited_name_remap=128

Fork inheritance lineage and inherited audits are included when available.
