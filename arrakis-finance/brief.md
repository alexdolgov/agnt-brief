# Agentic Audit Brief: Arrakis Finance

## Project Overview

- Project: Arrakis Finance (`arrakis-finance`)
- Website: [https://www.arrakis.finance](https://www.arrakis.finance)
- Lifecycle: active (Tier 0, 95.9% below peak)
- Generated: 2026-06-17T07:00:40.317Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: arbitrum, base, bsc, ethereum, ink, optimism, plasma, polygon, unichain
- Contract surface: 52 unique implementations (142 raw deployments)
- DeFi Llama TVL: $69,225,338.00
- On-chain TVL (included contracts): $0.68
- TVL by chain: Ethereum $0.68

## Project Description

Arrakis Finance is a non-custodial onchain market-making and liquidity infrastructure protocol for token issuers and asset markets, including support for token launches, RWAs/equities, and Hyperliquid markets. Its legacy and continuing product surface includes automated vaults and liquidity-management strategies for concentrated-liquidity DEX positions.

### Architecture

Arrakis V1 and V2 are legacy vault systems, while Arrakis Modular is the current core infrastructure that uses DEX-specific modules to manage liquidity across various AMMs. All families share governance and proxy patterns, with Modular relying on registries and beacons to deploy and upgrade vaults and modules.

## Contract Surface Quality

- Indexed contracts: 709; live-surface contracts included: 142 (123 live, 19 unknown).
- Excluded by liveness: 393 inactive, 174 singleton, 0 uninitialized.
- Deployment units: 8/91 live.
- Detected codebases: uniswap-v2, uniswap-v3
- Unverified dependencies: 19/80.

## Audit Coverage Summary

- Verified implementations audited: 2/48 (4.2%)
- Verified + Unaudited implementations: 45
- Verified by bytecode match: 1
- Unverified implementations: 4
- Unique implementations: 52
- Raw deployments: 142
- Audits discovered: 8
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): $0.68
- Latest audit: 2023-08 (stale)
- Staleness: 0 fresh, 0 aging, 8 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 2 | 4.2% | 2023-08 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Vyper_contract | unknown | ethereum | unit-18925 (2 proxies) | 2 deployments: ethereum [`0x4974a4...92824f`](./contracts/ethereum-1/0x4974a491f43de6ebcd1b3528aa52383b7692824f/); ethereum `0x83c1ae...f93608` | ✅ Audited |
| Vyper_contract | unknown | polygon | unit-18970 (4 proxies) | 4 deployments: polygon [`0x56c5b0...c40275`](./contracts/polygon-137/0x56c5b00bdeb3cb8adf745650599f9adef3c40275/); polygon `0x5aabe8...a64e98`; polygon `0xb76359...f604ba`; polygon `0xe54e04...a5d270` | ✅ Audited |

### ⚠️ Verified + Unaudited (45)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ArrakisMetaVaultPublic | core_logic | ethereum | n/a | [`0xf79087...a6ad83`](./contracts/ethereum-1/0xf790870ccf6ae66ddc69f68e6d05d446f1a6ad83/) | ⚠️ Unaudited |
| AerodromeStandardModulePrivate | unknown | base | n/a | 2 deployments: base [`0x0e4afb...7d417e`](./contracts/base-8453/0x0e4afbdab305206465ee48f7766da185157d417e/); base `0xd9e51f...adefd1` | ⚠️ Unaudited |
| AerodromeStandardModulePrivateFees | unknown | base | n/a | 3 deployments: base [`0x06baae...7434ee`](./contracts/base-8453/0x06baae482698c8995f7b59f51e3ba021bf7434ee/); base `0x1a5273...0c33aa`; base `0xe7d57e...2b2f43` | ⚠️ Unaudited |
| ArrakisMetaVaultFactory | registry | ethereum | n/a | 4 deployments: ethereum [`0x820fb8...123982`](./contracts/ethereum-1/0x820fb8127a689327c863de8433278d6181123982/); base [`0x820fb8...123982`](./contracts/base-8453/0x820fb8127a689327c863de8433278d6181123982/); plasma [`0x820fb8...123982`](./contracts/plasma-9745/0x820fb8127a689327c863de8433278d6181123982/); arbitrum [`0x820fb8...123982`](./contracts/arbitrum-42161/0x820fb8127a689327c863de8433278d6181123982/) | ⚠️ Unaudited |
| ArrakisPublicVaultRouter | adapter | ethereum | n/a | [`0x72aa2c...a66041`](./contracts/ethereum-1/0x72aa2c8e6b14f30131081401fa999fc964a66041/) | ⚠️ Unaudited |
| ArrakisStandardManager | governance | ethereum | unit-18921 | [`0x2e6e87...733bda`](./contracts/ethereum-1/0x2e6e879648293e939aa68ba4c6c129a1be733bda/) | ⚠️ Unaudited |
| CErc20Delegate | token | ethereum | unit-18924 (3 proxies) | 3 deployments: ethereum [`0x41346d...eee23b`](./contracts/ethereum-1/0x41346d3dd4b4688a388b24dac4014d75faeee23b/); ethereum `0x7e232a...65df00`; ethereum `0xc36681...4b6292` | ⚠️ Unaudited |
| CLFactory | registry | base | n/a | 6 deployments: base [`0x342576...38a617`](./contracts/base-8453/0x342576bb62afe26c547bfcbd9e94e76d1538a617/); base `0x5e7bb1...06809a`; base `0xade65c...89716a`; base `0xc6403d...1cd165`; base `0xec2ffc...9cd4d1`; base `0xf8f2eb...c061ef` | ⚠️ Unaudited |
| CLGauge | operational_periphery | base | n/a | 5 deployments: base [`0x11909e...7daf22`](./contracts/base-8453/0x11909efd754f01da354f8219391b40b2df7daf22/); base `0x1296a1...6025b5`; base `0x434bcc...790f7b`; base `0x7dccb0...204b3e`; base `0xc0d208...cfa0c8` | ⚠️ Unaudited |
| CLGaugeFactory | operational_periphery | base | n/a | 5 deployments: base [`0x385293...f56abb`](./contracts/base-8453/0x385293cae378c813f16f0c1334d774adddf56abb/); base `0x3be76d...998529`; base `0xb63022...dfcbb3`; base `0xd63e85...948adc`; base `0xff8f90...8898c2` | ⚠️ Unaudited |
| CLPool | core_logic | base | n/a | 6 deployments: base [`0x88e336...a0471f`](./contracts/base-8453/0x88e336956de7b74627fdfd548656b55501a0471f/); base `0x941b5f...514306`; base `0x942e97...8e5a16`; base `0xad95bd...894b48`; base `0xc77089...05b665`; base `0xec8e53...315831` | ⚠️ Unaudited |
| CLQuoter | periphery | bsc | n/a | [`0x0a46cc...7d59e5`](./contracts/bsc-56/0x0a46ccb50859bf6b7477d52db8b21fdc187d59e5/) | ⚠️ Unaudited |
| CustomSwapFeeModule | unknown | base | n/a | 2 deployments: base [`0x5264ee...2a2223`](./contracts/base-8453/0x5264eeeab16037a7a7af15ff69a470af6e2a2223/); base `0xe945ab...2a5684` | ⚠️ Unaudited |
| CustomUnstakedFeeModule | unknown | base | n/a | 4 deployments: base [`0x0ad083...38ee68`](./contracts/base-8453/0x0ad08370c76ff426f534bb2affd9b5555338ee68/); base `0x57bffd...b1b058`; base `0xc2cc32...0a1a0b`; base `0xccc21f...2ccd35` | ⚠️ Unaudited |
| DynamicSwapFeeModule | unknown | base | n/a | [`0x87d8f9...38e8cb`](./contracts/base-8453/0x87d8f999bba9343e8099552426775b51c338e8cb/) | ⚠️ Unaudited |
| Guardian | governance | ethereum | n/a | [`0x6f4411...7ab981`](./contracts/ethereum-1/0x6f441151b478e0d60588f221f1a35bcc3f7ab981/) | ⚠️ Unaudited |
| MigrationHelper | operational_periphery | ethereum | n/a | [`0xd61407...f9b962`](./contracts/ethereum-1/0xd61407b9b63956cfb61341aafefbd7eda1f9b962/) | ⚠️ Unaudited |
| MixedRouteQuoterV1 | periphery | base | n/a | 4 deployments: base [`0x0a5aa5...07d5c6`](./contracts/base-8453/0x0a5aa5d3a4d28014f967bf0f29eaa3ff9807d5c6/); base `0x393550...5d81ad`; base `0x9574e3...3ada30`; base `0x9951ff...1f0b5a` | ⚠️ Unaudited |
| MixedRouteQuoterV2 | periphery | base | n/a | 2 deployments: base [`0x495406...5b4f4f`](./contracts/base-8453/0x49540630a4d2ce67d54450d007d634f4c45b4f4f/); base `0xb4a9e5...cf09eb` | ⚠️ Unaudited |
| MixedRouteQuoterV3 | periphery | base | n/a | [`0xcd2a7d...65b555`](./contracts/base-8453/0xcd2a7d98e82d6107eac1828ce8deaa6acb65b555/) | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | base | n/a | 3 deployments: base [`0x0c3141...5bbde3`](./contracts/base-8453/0x0c314190b0b78513fd908c3bfe3c83ef5f5bbde3/); base `0x7dd33b...6238d8`; base `0xe702fc...928ad0` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | base | unit-18985 | [`0x827922...485b72`](./contracts/base-8453/0x827922686190790b37229fd06084350e74485b72/) | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | base | unit-18987 | [`0xa990c6...b9d55f`](./contracts/base-8453/0xa990c6a764b73bf43cee5bb40339c3322fb9d55f/) | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | base | unit-18989 | [`0xc741be...6a1178`](./contracts/base-8453/0xc741beb2156827704a1466575cca1cbf726a1178/) | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptor | token | base | n/a | 5 deployments: base [`0x11b5f9...953814`](./contracts/base-8453/0x11b5f9dff0fb1141715b2d549231ce8e07953814/); base `0x3b1ebc...a579f8`; base `0x48fa02...642f34`; base `0xc85c12...c8e3fe`; base `0xf63203...41337f` | ⚠️ Unaudited |
| PancakeSwapV3MulticallHelper | periphery | base | n/a | [`0xf02961...dbd2ea`](./contracts/base-8453/0xf029611a16e1a8ca6aad83c08d2b017511dbd2ea/) | ⚠️ Unaudited |
| PancakeSwapV3StandardModulePrivate | unknown | ethereum | n/a | 2 deployments: ethereum [`0x49083c...3d4b11`](./contracts/ethereum-1/0x49083cb8204c5bf830c75fd65d8eb3be1c3d4b11/); bsc [`0x49083c...3d4b11`](./contracts/bsc-56/0x49083cb8204c5bf830c75fd65d8eb3be1c3d4b11/) | ⚠️ Unaudited |
| PancakeSwapV4StandardModulePrivate | unknown | bsc | n/a | [`0x3da003...c53c39`](./contracts/bsc-56/0x3da00380b4d56101685d058785fde25fe9c53c39/) | ⚠️ Unaudited |
| PancakeV4Oracle | operational_periphery | bsc | n/a | 7 deployments: bsc [`0x04ef5d...5f4efb`](./contracts/bsc-56/0x04ef5da5f7837bd9b6480b3c5d3c56dc135f4efb/); bsc `0x0748dd...7ebb35`; bsc `0x30c552...634a98`; bsc `0x31d00e...cd360d`; bsc `0x81d442...e16bb8`; bsc `0xda26e9...958abf`; bsc `0xf4e067...9e3340` | ⚠️ Unaudited |
| Pauser | unknown | ethereum | n/a | [`0x700a1c...aac03a`](./contracts/ethereum-1/0x700a1cda1495c1b34c4962e9742a8a8832aac03a/) | ⚠️ Unaudited |
| PrivateVaultNFT | core_logic | ethereum | n/a | [`0x44a801...56b762`](./contracts/ethereum-1/0x44a801e7e2e073bd8bce4bccf653239fa156b762/) | ⚠️ Unaudited |
| QuoterV2 | periphery | base | n/a | 4 deployments: base [`0x254cf9...ae15b0`](./contracts/base-8453/0x254cf9e1e6e233aa1ac962cb9b05b2cfeaae15b0/); base `0x3d4c22...271c6c`; base `0x514c8b...089259`; base `0x919e53...4601fc` | ⚠️ Unaudited |
| Redistributor | operational_periphery | base | n/a | 3 deployments: base [`0x9e494d...c87329`](./contracts/base-8453/0x9e494d8b172531a2e2aba90d5b66addee3c87329/); base `0xd61368...9a9e80`; base `0xee5b3c...e55e15` | ⚠️ Unaudited |
| RouterSwapExecutor | adapter | ethereum | n/a | [`0x194886...ceb1b6`](./contracts/ethereum-1/0x19488620cdf3ff1b0784ac4529fb5c5abaceb1b6/) | ⚠️ Unaudited |
| RouterSwapResolver | adapter | ethereum | n/a | [`0xc6c533...9fb265`](./contracts/ethereum-1/0xc6c53369c36d6b4f4a6c195441fe2d33149fb265/) | ⚠️ Unaudited |
| Swapper | adapter | base | n/a | [`0x91616a...bcb916`](./contracts/base-8453/0x91616a7b9cf6d23f8c17845581051ebdc4bcb916/) | ⚠️ Unaudited |
| SwapRouter | adapter | base | n/a | 2 deployments: base [`0x698cb2...63a92f`](./contracts/base-8453/0x698cb2b6dd822994581fea6ea4fc755d1363a92f/); base `0xcbbb80...15ce0d` | ⚠️ Unaudited |
| SwapRouter | adapter | base | unit-18988 | [`0xbe6d8f...6d18a5`](./contracts/base-8453/0xbe6d8f0d05cc4be24d5167a3ef062215be6d18a5/) | ⚠️ Unaudited |
| TimelockController | governance | ethereum | n/a | [`0xaf6f96...c40b7f`](./contracts/ethereum-1/0xaf6f9640092cb1236e5db6e517576355b6c40b7f/) | ⚠️ Unaudited |
| UniswapV3StandardModulePrivate | unknown | ethereum | n/a | [`0x8c0283...ace35e`](./contracts/ethereum-1/0x8c02839babf7788d9d7043614b2f85cdd8ace35e/) | ⚠️ Unaudited |
| UniV4Oracle | operational_periphery | arbitrum | n/a | [`0x173229...c19ff9`](./contracts/arbitrum-42161/0x173229f540e85376aa180d41928994163ac19ff9/) | ⚠️ Unaudited |
| UniV4StandardModulePrivate | unknown | ethereum | n/a | [`0x04ead2...b337dc`](./contracts/ethereum-1/0x04ead25447f9371c5c1e2c33645f32aafeb337dc/) | ⚠️ Unaudited |
| UniversalRouter | adapter | base | n/a | [`0x6cb442...00be3e`](./contracts/base-8453/0x6cb442acf35158d5eda88fe602221b67b400be3e/) | ⚠️ Unaudited |
| ValantisModulePrivate | unknown | ethereum | n/a | [`0x7e2fc9...9e55bc`](./contracts/ethereum-1/0x7e2fc9b2d37ea3e771b6f2375915b87cca9e55bc/) | ⚠️ Unaudited |
| WithdrawHelper | operational_periphery | ethereum | n/a | [`0x3a2e9c...6f46d3`](./contracts/ethereum-1/0x3a2e9c26fbb53990bafaec0342e38bd2a06f46d3/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (1)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UpgradeableBeacon | registry | bsc | n/a | 34 deployments: ethereum `0x143687...627255`; ethereum `0xdf4975...4b6a38`; ethereum `0xe42a4b...909b72`; optimism `0xf6b2a7...c83dd7`; bsc [`0x00057d...cf6c04`](./contracts/bsc-56/0x00057dbd24e1264e9bf2d63dbe428234ebcf6c04/); bsc `0x205e64...796199`; bsc `0x6028dc...7090c7`; bsc `0x68c0d8...20f07a`; bsc `0x6aba59...8501b7`; bsc `0x741d42...87e639`; bsc `0x902912...8d2c75`; bsc `0xb4da34...05bb5f`; bsc `0xb6f7f6...4fb3ca`; bsc `0xc0b7fa...b987f0`; bsc `0xe137ae...68ce58`; bsc `0xef770d...c2037f`; unichain `0xc16489...a740cc`; base `0x243727...fa6f9b`; base `0x568336...25ac6f`; base `0x618e7d...e59778`; base `0x6b81f1...78df08`; base `0x82c0a1...75067f`; base `0x8b5c39...1cb82f`; base `0x998a52...6a0a55`; base `0xa8c0b4...45342f`; base `0xd7b402...d6b283`; base `0xdf4975...4b6a38`; base `0xe2641d...733bb2`; plasma `0x9a4935...293345`; arbitrum `0x1ec500...bd7327`; arbitrum `0x28a9a4...3cf6cb`; arbitrum `0x75dd57...8534e6`; arbitrum `0x9fe203...78ab6f`; arbitrum `0xf8bf2c...b22a7e` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (4)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | plasma | n/a | `0x9b9563...621e8e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x154878...04ec38` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xde6b49...66766c` | ❓ Unverified |
| UnnamedContract | unknown | ink | n/a | `0xcc8989...6006e3` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Arrakis_Audit_Report_Sherlock.pdf (also discovered via alternate URL)](https://github.com/ArrakisFinance/v2-core/blob/main/audit/Arrakis_Audit_Report_Sherlock.pdf) | Sherlock | Contest | 2023-08 | stale | Direct | contract_name | 0 | n/a |
| [Arrakis_v2_Core_Report_Audit_Report_by_WatchPug.pdf](https://github.com/ArrakisFinance/v2-core/blob/main/audit/Arrakis_v2_Core_Report_Audit_Report_by_WatchPug.pdf) | WatchPug | Audit | 2023-01 | stale | Direct | contract_name | 0 | n/a |
| [Arrakis_Finance_Audit_Report_by_WatchPug.pdf](https://github.com/ArrakisFinance/vault-v1-core/blob/main/audit/Arrakis_Finance_Audit_Report_by_WatchPug.pdf) | WatchPug | Audit | 2022-03 | stale | Direct | n/a | 0 | n/a |
| [REP-Gelato-UNI-2021-07-22.pdf](https://github.com/ArrakisFinance/vault-v1-core/blob/main/audit/REP-Gelato-UNI-2021-07-22.pdf) | unknown | Audit | 2021-07 | stale | Direct | contract_name | 6 | high |
| [WatchPug Audit Report for Gelato G-UNI.pdf](https://github.com/ArrakisFinance/vault-v1-core/blob/main/audit/WatchPug%20Audit%20Report%20for%20Gelato%20G-UNI.pdf) | WatchPug | Audit | 2021-07 | stale | Direct | contract_name | 0 | n/a |
| [Arrakis_v2_PALM_Audit_Report_by_WatchPug.pdf](https://github.com/ArrakisFinance/v2-palm/blob/main/audit/Arrakis_v2_PALM_Audit_Report_by_WatchPug.pdf) | WatchPug | Audit | 2023-01 | stale | Direct | contract_name | 0 | n/a |
| [Arrakis_Audit_Report.pdf](https://github.com/ArrakisFinance/v2-manager-templates/blob/main/audit/Arrakis_Audit_Report.pdf) | unknown | Audit | 2023-08 | stale | Direct | contract_name | 0 | n/a |
| [Chainsecurity Audit Report December 21.pdf](https://github.com/ArrakisFinance/staking-contracts/blob/main/audits/Chainsecurity%20Audit%20Report%20December%2021.pdf) | yAudit | Audit | 2022-01 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xf79087...a6ad83`](./contracts/ethereum-1/0xf790870ccf6ae66ddc69f68e6d05d446f1a6ad83/) | ArrakisMetaVaultPublic | core_logic | $0.68 | Verified native implementation with $0.68 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0e4afb...7d417e`](./contracts/base-8453/0x0e4afbdab305206465ee48f7766da185157d417e/) | AerodromeStandardModulePrivate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x06baae...7434ee`](./contracts/base-8453/0x06baae482698c8995f7b59f51e3ba021bf7434ee/) | AerodromeStandardModulePrivateFees | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x820fb8...123982`](./contracts/ethereum-1/0x820fb8127a689327c863de8433278d6181123982/) | ArrakisMetaVaultFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x72aa2c...a66041`](./contracts/ethereum-1/0x72aa2c8e6b14f30131081401fa999fc964a66041/) | ArrakisPublicVaultRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x342576...38a617`](./contracts/base-8453/0x342576bb62afe26c547bfcbd9e94e76d1538a617/) | CLFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x88e336...a0471f`](./contracts/base-8453/0x88e336956de7b74627fdfd548656b55501a0471f/) | CLPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0a46cc...7d59e5`](./contracts/bsc-56/0x0a46ccb50859bf6b7477d52db8b21fdc187d59e5/) | CLQuoter | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x5264ee...2a2223`](./contracts/base-8453/0x5264eeeab16037a7a7af15ff69a470af6e2a2223/) | CustomSwapFeeModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0ad083...38ee68`](./contracts/base-8453/0x0ad08370c76ff426f534bb2affd9b5555338ee68/) | CustomUnstakedFeeModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x87d8f9...38e8cb`](./contracts/base-8453/0x87d8f999bba9343e8099552426775b51c338e8cb/) | DynamicSwapFeeModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6f4411...7ab981`](./contracts/ethereum-1/0x6f441151b478e0d60588f221f1a35bcc3f7ab981/) | Guardian | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd61407...f9b962`](./contracts/ethereum-1/0xd61407b9b63956cfb61341aafefbd7eda1f9b962/) | MigrationHelper | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x11b5f9...953814`](./contracts/base-8453/0x11b5f9dff0fb1141715b2d549231ce8e07953814/) | NonfungibleTokenPositionDescriptor | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x49083c...3d4b11`](./contracts/ethereum-1/0x49083cb8204c5bf830c75fd65d8eb3be1c3d4b11/) | PancakeSwapV3StandardModulePrivate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3da003...c53c39`](./contracts/bsc-56/0x3da00380b4d56101685d058785fde25fe9c53c39/) | PancakeSwapV4StandardModulePrivate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x04ef5d...5f4efb`](./contracts/bsc-56/0x04ef5da5f7837bd9b6480b3c5d3c56dc135f4efb/) | PancakeV4Oracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x700a1c...aac03a`](./contracts/ethereum-1/0x700a1cda1495c1b34c4962e9742a8a8832aac03a/) | Pauser | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x44a801...56b762`](./contracts/ethereum-1/0x44a801e7e2e073bd8bce4bccf653239fa156b762/) | PrivateVaultNFT | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x9e494d...c87329`](./contracts/base-8453/0x9e494d8b172531a2e2aba90d5b66addee3c87329/) | Redistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x194886...ceb1b6`](./contracts/ethereum-1/0x19488620cdf3ff1b0784ac4529fb5c5abaceb1b6/) | RouterSwapExecutor | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc6c533...9fb265`](./contracts/ethereum-1/0xc6c53369c36d6b4f4a6c195441fe2d33149fb265/) | RouterSwapResolver | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x91616a...bcb916`](./contracts/base-8453/0x91616a7b9cf6d23f8c17845581051ebdc4bcb916/) | Swapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x173229...c19ff9`](./contracts/arbitrum-42161/0x173229f540e85376aa180d41928994163ac19ff9/) | UniV4Oracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x04ead2...b337dc`](./contracts/ethereum-1/0x04ead25447f9371c5c1e2c33645f32aafeb337dc/) | UniV4StandardModulePrivate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3a2e9c...6f46d3`](./contracts/ethereum-1/0x3a2e9c26fbb53990bafaec0342e38bd2a06f46d3/) | WithdrawHelper | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 29 |
| upstream | 16 |
| standard_library | 4 |
| needs_review | 3 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 7
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=415

Zero-match audit list:

- [5488] Arrakis_Audit_Report_Sherlock.pdf
- [5489] Arrakis_v2_Core_Report_Audit_Report_by_WatchPug.pdf
- [5492] Arrakis_Finance_Audit_Report_by_WatchPug.pdf
- [5494] WatchPug Audit Report for Gelato G-UNI.pdf
- [5495] Arrakis_v2_PALM_Audit_Report_by_WatchPug.pdf
- [5497] Arrakis_Audit_Report.pdf
- [5500] Chainsecurity Audit Report December 21.pdf

Fork inheritance lineage and inherited audits are included when available.
