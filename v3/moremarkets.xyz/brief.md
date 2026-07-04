# Agentic Audit Brief: MoreMarkets.xyz

## Project Overview

- Project: MoreMarkets.xyz (`moremarkets.xyz`)
- Website: [https://www.moremarkets.xyz/](https://www.moremarkets.xyz/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:31.772Z
- Pipeline run: v2-2026-07-02-3df6b3
- Chains: ethereum
- Contract surface: 270 unique implementations (270 raw deployments)
- DeFi Llama TVL: $604,610.80
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield. Structurally: 164 project-authored contract(s) across 1 chain(s); 17 ERC20 tokens, 42 Chainlink feeds; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 56 common project-authored base contract(s) (proxy, erc1967upgrade, deployments). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 270; live-surface contracts included: 270 (270 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/270 (0.0%)
- Deployed-live implementations: 270 of 270 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/270
- Verified + Unaudited implementations: 270
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 270
- Raw deployments: 270
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-07 (aging)
- Audit staleness (calendar age): 0 fresh, 3 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (270)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AcreAdapter | unknown | ethereum | n/a | [`0x6a6092...587ae0`](./contracts/ethereum-1/0x6a6092d9c47a7e4c085f2ed9fd4a376124587ae0/) | ⚠️ Unaudited |
| acreBTC | unknown | ethereum | n/a | [`0x7c0391...69d9d5`](./contracts/ethereum-1/0x7c0391a651c080e99b38c179575342512769d9d5/) | ⚠️ Unaudited |
| AcreBtcCustomAggregatorFeed | unknown | ethereum | n/a | [`0x8b0fdf...fe701e`](./contracts/ethereum-1/0x8b0fdf4f5c6036b3c8b8b451680ce87b0ffe701e/) | ⚠️ Unaudited |
| AcreBtcDepositVault | unknown | ethereum | n/a | [`0x4c727b...4bb837`](./contracts/ethereum-1/0x4c727b81eb776e2614c72430e306cefd614bb837/) | ⚠️ Unaudited |
| CustomAggregatorV3CompatibleFeedDiscounted | unknown | ethereum | n/a | [`0x438630...95dc99`](./contracts/ethereum-1/0x4386307a07c4de7ba11b4f4ec3e1f37bbe95dc99/) | ⚠️ Unaudited |
| DataFeed | unknown | ethereum | n/a | [`0x01b16e...18f003`](./contracts/ethereum-1/0x01b16ea685735acabe519d682a08acade018f003/) | ⚠️ Unaudited |
| DepositVault | unknown | ethereum | n/a | [`0x0e0eb6...d80847`](./contracts/ethereum-1/0x0e0eb6cdad90174f1db606ec186ddd0b5ed80847/) | ⚠️ Unaudited |
| DiamondLoupeFacet | unknown | ethereum | n/a | [`0xd7f2f4...f70e92`](./contracts/ethereum-1/0xd7f2f42188932513dcaa4f9c9b241f34a1f70e92/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | ethereum | n/a | [`0x002533...227550`](./contracts/ethereum-1/0x0025333734c668ec08887d865c1fc67f9d227550/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | ethereum | n/a | [`0x038729...a93b5f`](./contracts/ethereum-1/0x038729fed17e69e5815be936a0918c7623a93b5f/) | ⚠️ Unaudited |
| ERC4626InterfaceFacet | unknown | ethereum | n/a | [`0xc0081e...1e477b`](./contracts/ethereum-1/0xc0081eca65aa79f10a336d4c60a448302c1e477b/) | ⚠️ Unaudited |
| eUSD | unknown | ethereum | n/a | [`0x4089dc...0cbe27`](./contracts/ethereum-1/0x4089dc8b6637218f13465d28950a82a7e90cbe27/) | ⚠️ Unaudited |
| hypeBTC | unknown | ethereum | n/a | [`0x48599a...c83459`](./contracts/ethereum-1/0x48599ab08115cdf5731a7d8e5da1ac71d3c83459/) | ⚠️ Unaudited |
| HypeBtcCustomAggregatorFeed | unknown | ethereum | n/a | [`0x910cde...4a6f4c`](./contracts/ethereum-1/0x910cde06dfdcb06540744683812b8e2eb04a6f4c/) | ⚠️ Unaudited |
| HypeBtcDataFeed | unknown | ethereum | n/a | [`0x389035...bbcac4`](./contracts/ethereum-1/0x389035180efd4ee704f6e1b6a11e8889a1bbcac4/) | ⚠️ Unaudited |
| hypeETH | unknown | ethereum | n/a | [`0x140e71...1ff8ab`](./contracts/ethereum-1/0x140e71cd72d7ab5735fe8a73028bbe71821ff8ab/) | ⚠️ Unaudited |
| HypeEthDataFeed | unknown | ethereum | n/a | [`0x9ed03d...fcd463`](./contracts/ethereum-1/0x9ed03d76c8e826c6c02eb2e86c38a0d89afcd463/) | ⚠️ Unaudited |
| HypeEthDepositVault | unknown | ethereum | n/a | [`0x109e2a...f6867c`](./contracts/ethereum-1/0x109e2a83502edf977fb035929a51414e93f6867c/) | ⚠️ Unaudited |
| HypeUsdDepositVault | unknown | ethereum | n/a | [`0x8d874a...7f3a9e`](./contracts/ethereum-1/0x8d874a929ce6f5c21ab00f1677ccf43fbb7f3a9e/) | ⚠️ Unaudited |
| HypeUsdRedemptionVaultWithSwapper | unknown | ethereum | n/a | [`0x33ed48...3c6fa9`](./contracts/ethereum-1/0x33ed485dcf400e9354173aebf6de37d8c03c6fa9/) | ⚠️ Unaudited |
| InstaFlashAggregator | unknown | ethereum | n/a | [`0x02d726...eefa1a`](./contracts/ethereum-1/0x02d72614220c42a5599446d16f5478c3feeefa1a/) | ⚠️ Unaudited |
| InstaFlashAggregatorProxyAdmin | unknown | ethereum | n/a | [`0xff24bf...cbfb14`](./contracts/ethereum-1/0xff24bf40d34c4ce74e2d0f95b27eb9773ecbfb14/) | ⚠️ Unaudited |
| InstaFlashResolver | unknown | ethereum | n/a | [`0xa41771...701924`](./contracts/ethereum-1/0xa41771fc9fe121f95c82198099fd02ff13701924/) | ⚠️ Unaudited |
| JIV | unknown | ethereum | n/a | [`0x334b32...3e3d42`](./contracts/ethereum-1/0x334b32f6298167d9efdc0f7affe447dba53e3d42/) | ⚠️ Unaudited |
| JivCustomAggregatorFeed | unknown | ethereum | n/a | [`0x540f33...5d57ff`](./contracts/ethereum-1/0x540f331ebc800b68d4972a01d57b2e1fe45d57ff/) | ⚠️ Unaudited |
| MApolloCustomAggregatorFeed | unknown | ethereum | n/a | [`0x562bb5...420c55`](./contracts/ethereum-1/0x562bb5014793e8d2df2b493a947fbd522d420c55/) | ⚠️ Unaudited |
| MApolloDepositVault | unknown | ethereum | n/a | [`0x4d371c...e4999c`](./contracts/ethereum-1/0x4d371cc63fb8efd48aff59c5a0c064863ae4999c/) | ⚠️ Unaudited |
| MBasisCustomAggregatorFeed | unknown | ethereum | n/a | [`0x54d478...d439d0`](./contracts/ethereum-1/0x54d4783f47889c73861152f027a1aedf75d439d0/) | ⚠️ Unaudited |
| MBtcCustomAggregatorFeed | unknown | ethereum | n/a | [`0x7b904f...fd49c7`](./contracts/ethereum-1/0x7b904f25a1e923cf1f1fc2e5798232132dfd49c7/) | ⚠️ Unaudited |
| MBtcDataFeed | unknown | ethereum | n/a | [`0x5f5b02...e887c9`](./contracts/ethereum-1/0x5f5b02328db057c84217003ad3519c541fe887c9/) | ⚠️ Unaudited |
| mEDGE | unknown | ethereum | n/a | [`0x39c189...74fb87`](./contracts/ethereum-1/0x39c1891875afa8faae0ea8d9d3e769c46174fb87/) | ⚠️ Unaudited |
| MEdgeCustomAggregatorFeed | unknown | ethereum | n/a | [`0x039150...c0ea2f`](./contracts/ethereum-1/0x0391508a7cf5cf30c233d08849813c2959c0ea2f/) | ⚠️ Unaudited |
| MEdgeDataFeed | unknown | ethereum | n/a | [`0x057a3a...56a7d1`](./contracts/ethereum-1/0x057a3a6b45d9bb351f0123de1b8e00fe5a56a7d1/) | ⚠️ Unaudited |
| MEdgeDepositVault | unknown | ethereum | n/a | [`0xc904de...a73cc6`](./contracts/ethereum-1/0xc904de3f0a5ad6d85609ec37fc0f30edafa73cc6/) | ⚠️ Unaudited |
| MEdgeRedemptionVaultWithSwapper | unknown | ethereum | n/a | [`0x6142ad...cc3ad5`](./contracts/ethereum-1/0x6142ad2733c45d42ef3c625d4e33689406cc3ad5/) | ⚠️ Unaudited |
| MerkleDistributorWithDeadline | unknown | ethereum | n/a | [`0x15b478...917567`](./contracts/ethereum-1/0x15b478fbfb02b930e07a8aa3950c23c272917567/) | ⚠️ Unaudited |
| mevBTC | unknown | ethereum | n/a | [`0x781367...e629a4`](./contracts/ethereum-1/0x7813671f9c083b63fcbecbc182e9a0fc7de629a4/) | ⚠️ Unaudited |
| MevBtcCustomAggregatorFeed | unknown | ethereum | n/a | [`0x931403...0a5b43`](./contracts/ethereum-1/0x931403532a4a30fee41bfe79f5b2159dcd0a5b43/) | ⚠️ Unaudited |
| MevBtcDepositVault | unknown | ethereum | n/a | [`0x3549f6...f44b3c`](./contracts/ethereum-1/0x3549f6936dafb87f456dca3a061bc9225ff44b3c/) | ⚠️ Unaudited |
| MevBtcRedemptionVaultWithSwapper | unknown | ethereum | n/a | [`0x265041...d6ab3c`](./contracts/ethereum-1/0x26504103cc0704de4fad7d6be6538f8b9ed6ab3c/) | ⚠️ Unaudited |
| MEvUsdDataFeed | unknown | ethereum | n/a | [`0x06e727...75cf26`](./contracts/ethereum-1/0x06e7279e596af4804a0fcc78ece24059da75cf26/) | ⚠️ Unaudited |
| MFarmDepositVault | unknown | ethereum | n/a | [`0x313c76...b78164`](./contracts/ethereum-1/0x313c76ecd990b728681f29464978d5637cb78164/) | ⚠️ Unaudited |
| MFarmRedemptionVaultWithSwapper | unknown | ethereum | n/a | [`0xb73d1e...411e89`](./contracts/ethereum-1/0xb73d1e0aedcd5bbeca0119e88288204101411e89/) | ⚠️ Unaudited |
| MFOneDataFeed | unknown | ethereum | n/a | [`0x0c3291...59fbfd`](./contracts/ethereum-1/0x0c3291e8fd4cc415b62ca3789907a4eee759fbfd/) | ⚠️ Unaudited |
| MFOneRedemptionVaultWithSwapper | unknown | ethereum | n/a | [`0x0d98b6...ff6c47`](./contracts/ethereum-1/0x0d98b671af8c51f6ffa94248b90df1b11dff6c47/) | ⚠️ Unaudited |
| mHYPER | unknown | ethereum | n/a | [`0x10e235...1080fb`](./contracts/ethereum-1/0x10e2352da4790e547095f06fa3ef3093881080fb/) | ⚠️ Unaudited |
| MHyperBtcCustomAggregatorFeed | unknown | ethereum | n/a | [`0x0c7a74...d085de`](./contracts/ethereum-1/0x0c7a74f9e391f66cd1ad9d934ad897b2cdd085de/) | ⚠️ Unaudited |
| MHyperBtcDataFeed | unknown | ethereum | n/a | [`0x4f6e58...959393`](./contracts/ethereum-1/0x4f6e5852f89c5a94119b039b355ad7043e959393/) | ⚠️ Unaudited |
| MHyperBtcDepositVault | unknown | ethereum | n/a | [`0xbccac5...895a52`](./contracts/ethereum-1/0xbccac5cbf0691da65e48810d316a1e5b9f895a52/) | ⚠️ Unaudited |
| MHyperDepositVault | unknown | ethereum | n/a | [`0xa62249...130e5e`](./contracts/ethereum-1/0xa62249abe86e75717ef9705f2fdb19b39c130e5e/) | ⚠️ Unaudited |
| MHyperEthCustomAggregatorFeed | unknown | ethereum | n/a | [`0x2c6808...2e9850`](./contracts/ethereum-1/0x2c68087e994d24d454ba6c96f7a3152f6a2e9850/) | ⚠️ Unaudited |
| MHyperEthDataFeed | unknown | ethereum | n/a | [`0x2f4e7d...c74834`](./contracts/ethereum-1/0x2f4e7d11e54f34f5d02dade106a690efdbc74834/) | ⚠️ Unaudited |
| MHyperRedemptionVaultWithSwapper | unknown | ethereum | n/a | [`0x570c15...505e47`](./contracts/ethereum-1/0x570c15bc5faf98531a8b351d69e22e41e3505e47/) | ⚠️ Unaudited |
| MidasLzMintBurnOFTAdapter | unknown | ethereum | n/a | [`0x55b40c...2349c6`](./contracts/ethereum-1/0x55b40c5ebc53c4b03a7cba602c6ceed3fc2349c6/) | ⚠️ Unaudited |
| MidasTimelockController | unknown | ethereum | n/a | [`0xe3eee3...241852`](./contracts/ethereum-1/0xe3eee3e0d2398799c884a47fc40c029c8e241852/) | ⚠️ Unaudited |
| MLiquidityCustomAggregatorFeed | unknown | ethereum | n/a | [`0x4b805d...f5a522`](./contracts/ethereum-1/0x4b805d11aaa424f205b7bf7c39f5e3b5d8f5a522/) | ⚠️ Unaudited |
| MLiquidityDepositVault | unknown | ethereum | n/a | [`0x67e14d...aaefac`](./contracts/ethereum-1/0x67e14dd4f41955a1b10d4482345a1a4b06aaefac/) | ⚠️ Unaudited |
| MLiquidityRedemptionVault | unknown | ethereum | n/a | [`0x5e5aab...634c9e`](./contracts/ethereum-1/0x5e5aab1aad75853ab8114264c3bf3427b0634c9e/) | ⚠️ Unaudited |
| MMevDataFeed | unknown | ethereum | n/a | [`0x4ff00e...080d81`](./contracts/ethereum-1/0x4ff00e912c8f449c8a9fac6861b84e1b5c080d81/) | ⚠️ Unaudited |
| MMevDepositVault | unknown | ethereum | n/a | [`0xac5c4d...50e5e5`](./contracts/ethereum-1/0xac5c4dcd870c835f8943e62ab33cdadba850e5e5/) | ⚠️ Unaudited |
| MMevRedemptionVaultWithSwapper | unknown | ethereum | n/a | [`0x482d1e...0d00cb`](./contracts/ethereum-1/0x482d1e94a26bbaef59fc5d038c41b679120d00cb/) | ⚠️ Unaudited |
| mPortofino | unknown | ethereum | n/a | [`0x636cdf...d060b9`](./contracts/ethereum-1/0x636cdf65a5bb03c25c63ceb20e971f101ed060b9/) | ⚠️ Unaudited |
| MPortofinoRedemptionVaultWithSwapper | unknown | ethereum | n/a | [`0xa9111d...0b0c31`](./contracts/ethereum-1/0xa9111ddd2cf8e2727ab08e6f2adb9c53480b0c31/) | ⚠️ Unaudited |
| MRe7BtcCustomAggregatorFeed | unknown | ethereum | n/a | [`0x091f97...af383b`](./contracts/ethereum-1/0x091f974e277a19485b9a713ac768850bc5af383b/) | ⚠️ Unaudited |
| MRe7BtcRedemptionVaultWithSwapper | unknown | ethereum | n/a | [`0x1d9953...875615`](./contracts/ethereum-1/0x1d9953c4e85e6d249520e8ff2b134e5ded875615/) | ⚠️ Unaudited |
| MRe7DepositVault | unknown | ethereum | n/a | [`0x53c764...ed62d8`](./contracts/ethereum-1/0x53c764c938385bc439dc1596413e1557deed62d8/) | ⚠️ Unaudited |
| MSlDepositVault | unknown | ethereum | n/a | [`0x521f61...6ccb2f`](./contracts/ethereum-1/0x521f6153b7c5080f550517d9b76d9c08766ccb2f/) | ⚠️ Unaudited |
| MSlRedemptionVaultWithSwapper | unknown | ethereum | n/a | [`0x0d1c52...1762fc`](./contracts/ethereum-1/0x0d1c52c7cd203e4f84d084a33a062c61d51762fc/) | ⚠️ Unaudited |
| MSyrupUsdDepositVault | unknown | ethereum | n/a | [`0x307be9...057a8b`](./contracts/ethereum-1/0x307be9748111571739b92a5dda10191f29057a8b/) | ⚠️ Unaudited |
| msyrupUSDp | unknown | ethereum | n/a | [`0x2530e3...567ea5`](./contracts/ethereum-1/0x2530e3d2b30738b2e8d0dd3eb9b17946b0567ea5/) | ⚠️ Unaudited |
| MSyrupUsdpCustomAggregatorFeed | unknown | ethereum | n/a | [`0x1e2165...7a3fc4`](./contracts/ethereum-1/0x1e2165801d84865587252155fb4580381f7a3fc4/) | ⚠️ Unaudited |
| MSyrupUsdpRedemptionVaultWithSwapper | unknown | ethereum | n/a | [`0x5113bf...e1cc91`](./contracts/ethereum-1/0x5113bf83400d184cde30af154117e29351e1cc91/) | ⚠️ Unaudited |
| MSyrupUsdtCustomAggregatorFeed | unknown | ethereum | n/a | [`0x9e9dbc...e4d70c`](./contracts/ethereum-1/0x9e9dbcbcc8c976face7481288bbb9ab285e4d70c/) | ⚠️ Unaudited |
| MSyrupUsdtDataFeed | unknown | ethereum | n/a | [`0x5ca035...cd94bc`](./contracts/ethereum-1/0x5ca035326aa66b5db40fb6d3693772f073cd94bc/) | ⚠️ Unaudited |
| MSyrupUsdtRedemptionVaultWithSwapper | unknown | ethereum | n/a | [`0x1314fb...1d2084`](./contracts/ethereum-1/0x1314fb72f67681e7617e59bcf92002a9311d2084/) | ⚠️ Unaudited |
| mTBILL | unknown | ethereum | n/a | [`0xa7ab67...25897c`](./contracts/ethereum-1/0xa7ab67aa19f6b387ba12fcedb6d1447e0c25897c/) | ⚠️ Unaudited |
| MTBillDataFeed | unknown | ethereum | n/a | [`0x2e0357...490ada`](./contracts/ethereum-1/0x2e0357e38fc7fae9c29050aef3744d4055490ada/) | ⚠️ Unaudited |
| Multicall3 | unknown | ethereum | n/a | [`0x7165c2...cd83d7`](./contracts/ethereum-1/0x7165c2257ab6b6285389d8459938786c0ccd83d7/) | ⚠️ Unaudited |
| MulticallFacet | unknown | ethereum | n/a | [`0x3d2e2d...519390`](./contracts/ethereum-1/0x3d2e2dbe93be3645311713b6cc980b16f5519390/) | ⚠️ Unaudited |
| MultiSign | unknown | ethereum | n/a | [`0x1073d5...6ede78`](./contracts/ethereum-1/0x1073d55dfb892ed86151015402db8b1cdb6ede78/) | ⚠️ Unaudited |
| MWildUsdCustomAggregatorFeed | unknown | ethereum | n/a | [`0x19623f...77851e`](./contracts/ethereum-1/0x19623f6af10bcd83b01c787e16219a738877851e/) | ⚠️ Unaudited |
| MWildUsdDataFeed | unknown | ethereum | n/a | [`0x8d8f82...b2ccd0`](./contracts/ethereum-1/0x8d8f821e72382e433f1bcf079c0365f976b2ccd0/) | ⚠️ Unaudited |
| MWildUsdDepositVault | unknown | ethereum | n/a | [`0xa70009...e07b41`](./contracts/ethereum-1/0xa70009c23dbf1222d66b0ca847b4c33ae2e07b41/) | ⚠️ Unaudited |
| ObeatUsdLzElevatedMinterBurner | unknown | ethereum | n/a | [`0x07cf28...1ff579`](./contracts/ethereum-1/0x07cf28d71a38c12e258922d9857ac415ae1ff579/) | ⚠️ Unaudited |
| Permit2Facet | unknown | ethereum | n/a | [`0x02d05d...6a6347`](./contracts/ethereum-1/0x02d05d3725b540a4b2ba263fdd38c9cfad6a6347/) | ⚠️ Unaudited |
| PermitFacet | unknown | ethereum | n/a | [`0x6626a6...4c7828`](./contracts/ethereum-1/0x6626a60c28a796fea0ea7324a1bac058fc4c7828/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | ethereum | n/a | [`0xbf25b5...600aac`](./contracts/ethereum-1/0xbf25b58cb8dfad688f7bcb2b87d71c23a6600aac/) | ⚠️ Unaudited |
| RedemptionVault | unknown | ethereum | n/a | [`0x2f1372...14975f`](./contracts/ethereum-1/0x2f1372244cedcaf8ee1759d2f02435628f14975f/) | ⚠️ Unaudited |
| RedemptionVaultWIthBUIDL | unknown | ethereum | n/a | [`0xe123eb...ccc7e9`](./contracts/ethereum-1/0xe123ebc5697151890dddf05943de393ceaccc7e9/) | ⚠️ Unaudited |
| RedemptionVaultWithSwapper | unknown | ethereum | n/a | [`0x283cbe...e32f39`](./contracts/ethereum-1/0x283cbedecb447dbe114b4268f79ba8b046e32f39/) | ⚠️ Unaudited |
| RedemptionVaultWithUSTB | unknown | ethereum | n/a | [`0x489a79...40d701`](./contracts/ethereum-1/0x489a797714708cf088d158714a376d8ff740d701/) | ⚠️ Unaudited |
| Roles | unknown | ethereum | n/a | [`0xf3bd57...4db1f5`](./contracts/ethereum-1/0xf3bd578bda56176bbf8529b5c945193cf54db1f5/) | ⚠️ Unaudited |
| RsEthAdapter | unknown | ethereum | n/a | [`0xd52ba0...baab2a`](./contracts/ethereum-1/0xd52ba087e30928886baba15b1584d4ac9abaab2a/) | ⚠️ Unaudited |
| StablecoinProxy | unknown | ethereum | n/a | [`0x8292bb...6317ed`](./contracts/ethereum-1/0x8292bb45bf1ee4d140127049757c2e0ff06317ed/) | ⚠️ Unaudited |
| StablecoinUpgradeable | unknown | ethereum | n/a | [`0xcfd748...f7f2ec`](./contracts/ethereum-1/0xcfd748b9de538c9f5b1805e8db9e1d4671f7f2ec/) | ⚠️ Unaudited |
| StakedUSDeAdapter | unknown | ethereum | n/a | [`0xce2326...bd0cea`](./contracts/ethereum-1/0xce2326260c168525a3e905391e8bfee00ebd0cea/) | ⚠️ Unaudited |
| Strategy | unknown | ethereum | n/a | [`0x980fe5...36623e`](./contracts/ethereum-1/0x980fe5ae0245e22a5f7e1bc23f23f7bee536623e/) | ⚠️ Unaudited |
| StrategyGovDeployer | unknown | ethereum | n/a | [`0x007f78...736027`](./contracts/ethereum-1/0x007f7869dff5381940510f85d19a46656a736027/) | ⚠️ Unaudited |
| SwapRouterFacet | unknown | ethereum | n/a | [`0xcd1638...c3c406`](./contracts/ethereum-1/0xcd163857744148f2f4d0702f3ba467de64c3c406/) | ⚠️ Unaudited |
| SyrupAdapter | unknown | ethereum | n/a | [`0xad298d...ac8493`](./contracts/ethereum-1/0xad298d3ec4af69af52701a539d3bd14873ac8493/) | ⚠️ Unaudited |
| SyrupUSDCAdapter | unknown | ethereum | n/a | [`0xa869cb...198b67`](./contracts/ethereum-1/0xa869cbc273daae91d6109ee5bb958ac6b7198b67/) | ⚠️ Unaudited |
| TACmBtcDepositVault | unknown | ethereum | n/a | [`0x570f37...5bbc08`](./contracts/ethereum-1/0x570f37365fffff0a3884892b7363c0a8615bbc08/) | ⚠️ Unaudited |
| TACmBtcRedemptionVault | unknown | ethereum | n/a | [`0x6808e4...9ccdf4`](./contracts/ethereum-1/0x6808e4d8add893d0227690f435e1ff734d9ccdf4/) | ⚠️ Unaudited |
| TACmEDGE | unknown | ethereum | n/a | [`0x7c5b87...7aa26c`](./contracts/ethereum-1/0x7c5b87e3bde1c70ad11d546a513e305bc07aa26c/) | ⚠️ Unaudited |
| TACmEdgeRedemptionVault | unknown | ethereum | n/a | [`0x375af4...ae36d8`](./contracts/ethereum-1/0x375af40dd6772bb9ad216ad7cbe4d8f91eae36d8/) | ⚠️ Unaudited |
| TACmMEV | unknown | ethereum | n/a | [`0x1d3147...910202`](./contracts/ethereum-1/0x1d3147d11c88f5008db19cb5dd945ae682910202/) | ⚠️ Unaudited |
| tBTC | unknown | ethereum | n/a | [`0x4eed11...fde211`](./contracts/ethereum-1/0x4eed111a10c25a739b0d72bd2383f958b9fde211/) | ⚠️ Unaudited |
| Term4626CombinationBaseFrequencyPriceFeedV1 | unknown | ethereum | n/a | [`0x98aa47...b611f1`](./contracts/ethereum-1/0x98aa477ef02499a79a21e8ae2a4c1f4c20b611f1/) | ⚠️ Unaudited |
| Term4626TokenPriceFeedV1 | unknown | ethereum | n/a | [`0x00359e...e4ceb7`](./contracts/ethereum-1/0x00359e8ac909ae0ce8caed35bbe9582700e4ceb7/) | ⚠️ Unaudited |
| TermAdapterPriceFeedV1 | unknown | ethereum | n/a | [`0x04e48a...de89c6`](./contracts/ethereum-1/0x04e48a5274cbd953ea3846c4d4ab5dfe4cde89c6/) | ⚠️ Unaudited |
| TermAggregatorFlashDefaultLiquidatorSwap | unknown | ethereum | n/a | [`0xba26f5...ec5c8f`](./contracts/ethereum-1/0xba26f51b57f4cff3b525f0afe4f7d53f9cec5c8f/) | ⚠️ Unaudited |
| TermAggregatorFlashShortfallLiquidatorSwap | unknown | ethereum | n/a | [`0x0d1cf0...df11ae`](./contracts/ethereum-1/0x0d1cf09eac87814ae2784269930c6a7a24df11ae/) | ⚠️ Unaudited |
| TermAuction | unknown | ethereum | n/a | [`0x005f40...ed1099`](./contracts/ethereum-1/0x005f404d670838258b62ed549fdf20bb20ed1099/) | ⚠️ Unaudited |
| TermAuctionBidLocker | unknown | ethereum | n/a | [`0x00384f...bbd032`](./contracts/ethereum-1/0x00384f209e1a439be315db44fa8ce7dd49bbd032/) | ⚠️ Unaudited |
| TermCbETHPriceFeedV1 | unknown | ethereum | n/a | [`0x372dfe...756956`](./contracts/ethereum-1/0x372dfe7d05f510c31736c3cb540e6b8e7f756956/) | ⚠️ Unaudited |
| TermCombinationBaseFrequencyPriceFeedV1 | unknown | ethereum | n/a | [`0x836b2a...87a868`](./contracts/ethereum-1/0x836b2a4ae936ad1ff592c4ec7e93c35a8e87a868/) | ⚠️ Unaudited |
| TermController | unknown | ethereum | n/a | [`0x2879c9...f9da1b`](./contracts/ethereum-1/0x2879c9d15406e7ebd46770f4b0781fe665f9da1b/) | ⚠️ Unaudited |
| TermControllerFacet | unknown | ethereum | n/a | [`0x691332...aac05c`](./contracts/ethereum-1/0x6913324432cd3ac255c4bdc5cf8929597eaac05c/) | ⚠️ Unaudited |
| TermDiamondFactory | unknown | ethereum | n/a | [`0x0279e1...84fbbf`](./contracts/ethereum-1/0x0279e148e3131e33a79899cc3ab2c8411a84fbbf/) | ⚠️ Unaudited |
| TermEthPlusPriceFeedV1 | unknown | ethereum | n/a | [`0xd38ed9...2507a2`](./contracts/ethereum-1/0xd38ed9b6a00ee9a0f91b448162bf65fb462507a2/) | ⚠️ Unaudited |
| TermEventEmitter | unknown | ethereum | n/a | [`0x1c41cc...28cc4a`](./contracts/ethereum-1/0x1c41cc8495cf570b825fcf17ec4c9159e728cc4a/) | ⚠️ Unaudited |
| TermFlashDefaultSuperformEth | unknown | ethereum | n/a | [`0x474833...7217b5`](./contracts/ethereum-1/0x4748335d4414d5f7cd1dd0fa85b6879f837217b5/) | ⚠️ Unaudited |
| TermFlashLoanCentralReceiverFacet | unknown | ethereum | n/a | [`0x2c5d7c...01836a`](./contracts/ethereum-1/0x2c5d7c65f7276190c47c45300e71e93d8401836a/) | ⚠️ Unaudited |
| TermFlashLoanExecutorFacet | unknown | ethereum | n/a | [`0x3c19d1...acef4b`](./contracts/ethereum-1/0x3c19d13a388798b3b71b215bb04959cffaacef4b/) | ⚠️ Unaudited |
| TermFlashShortfallLiquidatorSuperformEth | unknown | ethereum | n/a | [`0x0e25ce...ccdc45`](./contracts/ethereum-1/0x0e25ce9c56250b0d9baf0dfc86cfc7935fccdc45/) | ⚠️ Unaudited |
| TermHEthPriceFeedV1 | unknown | ethereum | n/a | [`0x016572...fa4dab`](./contracts/ethereum-1/0x016572aacd1bcb1fca8c495488742a66d5fa4dab/) | ⚠️ Unaudited |
| TermInitializer | unknown | ethereum | n/a | [`0xc6d96f...fc2cd6`](./contracts/ethereum-1/0xc6d96f1752dbc73276c3e6b07c04d04c61fc2cd6/) | ⚠️ Unaudited |
| TermLoanIntentFacet | unknown | ethereum | n/a | [`0xb435e2...b141f1`](./contracts/ethereum-1/0xb435e249393e9aad3d774d5a0b2fc03c86b141f1/) | ⚠️ Unaudited |
| TermLoanIntentHookFacet | unknown | ethereum | n/a | [`0x808eb7...3e4325`](./contracts/ethereum-1/0x808eb7f99063dc2cf7dd816a98dcef46113e4325/) | ⚠️ Unaudited |
| TermPriceConsumerV3 | unknown | ethereum | n/a | [`0x13ca4d...7bba4c`](./contracts/ethereum-1/0x13ca4ddb295d621761057d682a1c7b5f5d7bba4c/) | ⚠️ Unaudited |
| TermPTcUSDDefaulter | unknown | ethereum | n/a | [`0x54b271...519f2f`](./contracts/ethereum-1/0x54b271101f6dda5c6f7a7ee99eb4766445519f2f/) | ⚠️ Unaudited |
| TermPTcUSDLiquidator | unknown | ethereum | n/a | [`0x8606b1...044241`](./contracts/ethereum-1/0x8606b167e4c2386edbce32b4c45c55adc9044241/) | ⚠️ Unaudited |
| TermPTSuperUSDCPriceFeed | unknown | ethereum | n/a | [`0xc336b5...7e48a0`](./contracts/ethereum-1/0xc336b55254daaa9c77df953864bd107c027e48a0/) | ⚠️ Unaudited |
| TermPTsUSDePriceFeed | unknown | ethereum | n/a | [`0xca4f7f...ddcd94`](./contracts/ethereum-1/0xca4f7f7e9eceed73dc52ce894153098815ddcd94/) | ⚠️ Unaudited |
| TermPythAdapterPriceFeedV1 | unknown | ethereum | n/a | [`0x492926...a4766f`](./contracts/ethereum-1/0x492926c8aaaea044e74ed0e22130b3aa8ea4766f/) | ⚠️ Unaudited |
| TermRepoCollateralManager | unknown | ethereum | n/a | [`0x00e63e...8fe68f`](./contracts/ethereum-1/0x00e63e7d7546c828e7a40f64372ab6e07f8fe68f/) | ⚠️ Unaudited |
| TermRepoDeployerFactory | unknown | ethereum | n/a | [`0x44058c...93c3b4`](./contracts/ethereum-1/0x44058c32b154a516f3b9de2413e6cb938f93c3b4/) | ⚠️ Unaudited |
| TermRepoLocker | unknown | ethereum | n/a | [`0x0128c4...4f9a0c`](./contracts/ethereum-1/0x0128c434777eeeea977ebedc01eb1a973c4f9a0c/) | ⚠️ Unaudited |
| TermRepoRolloverManager | unknown | ethereum | n/a | [`0x0087a9...1bbcef`](./contracts/ethereum-1/0x0087a9b976cd58942c2458403f196e2cdb1bbcef/) | ⚠️ Unaudited |
| TermRepoServicer | unknown | ethereum | n/a | [`0x002e61...bae6f5`](./contracts/ethereum-1/0x002e61fdbc4dd796b3075ade67d972c154bae6f5/) | ⚠️ Unaudited |
| TermRepoTokenIntentFacet | unknown | ethereum | n/a | [`0xa9a293...9a64d2`](./contracts/ethereum-1/0xa9a293bf7f742a7aa732cd67c88c49edbe9a64d2/) | ⚠️ Unaudited |
| TermREthPriceFeedV1 | unknown | ethereum | n/a | [`0x67c88a...9b9f8c`](./contracts/ethereum-1/0x67c88a85cfddabb8229cb8853cf40a2c5d9b9f8c/) | ⚠️ Unaudited |
| TermRouterFacet | unknown | ethereum | n/a | [`0x9d2b6a...dbd181`](./contracts/ethereum-1/0x9d2b6a3d172e5e098dd5bf6ba89062149bdbd181/) | ⚠️ Unaudited |
| TermSettlementWithHooksFacet | unknown | ethereum | n/a | [`0xfdd50c...980929`](./contracts/ethereum-1/0xfdd50c0c1a378b7af530fe912d4b154dc8980929/) | ⚠️ Unaudited |
| TermStrategyAprOracle | unknown | ethereum | n/a | [`0xa108d1...49504d`](./contracts/ethereum-1/0xa108d143d1f76a1c6a6997c3466aee00ad49504d/) | ⚠️ Unaudited |
| TermStrategyFacet | unknown | ethereum | n/a | [`0x9c8f6c...9ca853`](./contracts/ethereum-1/0x9c8f6c949c2c21bdfa3f7529812cfd44659ca853/) | ⚠️ Unaudited |
| TermTEthPriceFeed | unknown | ethereum | n/a | [`0x4358e2...e5bd72`](./contracts/ethereum-1/0x4358e2d3c9658b50b0c3c353c9cbc6898de5bd72/) | ⚠️ Unaudited |
| TermVaultEventEmitter | unknown | ethereum | n/a | [`0x05d16f...1b1561`](./contracts/ethereum-1/0x05d16fc7fdaba09ab5750302b0e41c5b161b1561/) | ⚠️ Unaudited |
| TermVaultsKeeper | unknown | ethereum | n/a | [`0x0e58bd...1be5cf`](./contracts/ethereum-1/0x0e58bd3c701a2bf48c4e184318e0b5f9591be5cf/) | ⚠️ Unaudited |
| TermWeETHPriceFeedV1 | unknown | ethereum | n/a | [`0x8cedd5...6e97f6`](./contracts/ethereum-1/0x8cedd5c01bdadcfb50fc3989337ba02b496e97f6/) | ⚠️ Unaudited |
| TermWstEthPriceFeed | unknown | ethereum | n/a | [`0xa64a0a...3e899d`](./contracts/ethereum-1/0xa64a0a25de00c7ced3ccaa1f7ec51c3c8e3e899d/) | ⚠️ Unaudited |
| TermWstEthPriceFeedV1 | unknown | ethereum | n/a | [`0x386e4f...3c1f6b`](./contracts/ethereum-1/0x386e4f87c4bb60803b323210a65952c4093c1f6b/) | ⚠️ Unaudited |
| TermYSWEthPriceFeed | unknown | ethereum | n/a | [`0x0ef802...5bbb0e`](./contracts/ethereum-1/0x0ef80293c8120b61ea49b0f9fb0ca435a05bbb0e/) | ⚠️ Unaudited |
| tETH | unknown | ethereum | n/a | [`0x72cca9...761e96`](./contracts/ethereum-1/0x72cca9794018c10ce47af3fc8d47e167d0761e96/) | ⚠️ Unaudited |
| TEthCustomAggregatorFeed | unknown | ethereum | n/a | [`0x42e82b...1215b5`](./contracts/ethereum-1/0x42e82b2ee52cdc922cfed82bfcef90ada31215b5/) | ⚠️ Unaudited |
| TEthDepositVault | unknown | ethereum | n/a | [`0x46eab5...d09e78`](./contracts/ethereum-1/0x46eab5259e1a2f18cbbfeeaa093130a456d09e78/) | ⚠️ Unaudited |
| TEthRedemptionVaultWithSwapper | unknown | ethereum | n/a | [`0xc32652...750ebf`](./contracts/ethereum-1/0xc32652ab236f32482f5018b027c8b54c13750ebf/) | ⚠️ Unaudited |
| TokenizedStrategy | unknown | ethereum | n/a | [`0x1b1177...9ae6eb`](./contracts/ethereum-1/0x1b1177276cd9b630ec53c912eb6a8cf5a29ae6eb/) | ⚠️ Unaudited |
| TransferFacet | unknown | ethereum | n/a | [`0x7045f0...ba3d13`](./contracts/ethereum-1/0x7045f0945691de1e4f22e9841b77c06020ba3d13/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x007115...ef7d9d`](./contracts/ethereum-1/0x007115416ab6c266329a03b09a8aa39ac2ef7d9d/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x030b69...6a0bf3`](./contracts/ethereum-1/0x030b69280892c888670edcdcd8b69fd8026a0bf3/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x0312a9...19ac4b`](./contracts/ethereum-1/0x0312a9d1ff2372ddedcbb21e4b6389afc919ac4b/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x03fda2...f26ec3`](./contracts/ethereum-1/0x03fda274c303b128eba9e00bf555a3f4f4f26ec3/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x056339...6b2e5b`](./contracts/ethereum-1/0x056339c044055819e8db84e71f5f2e1f536b2e5b/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x0a2a51...722395`](./contracts/ethereum-1/0x0a2a51f2f206447de3e3a80fcf92240244722395/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x0aecdf...6f4802`](./contracts/ethereum-1/0x0aecdf39d9d02833a055bf1eca518a83f66f4802/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x0d89c1...17d123`](./contracts/ethereum-1/0x0d89c1c4799353f3805a3e6c4e1cbbb83217d123/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x0f50b4...4e49c0`](./contracts/ethereum-1/0x0f50b401509798f1919a4e8d38192f78734e49c0/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x10cc8d...f693bd`](./contracts/ethereum-1/0x10cc8dbca90db7606013d8cd2e77eb024df693bd/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x12570b...acfc68`](./contracts/ethereum-1/0x12570b84b633629b1db532fd3420f34a30acfc68/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x141f0e...9172b1`](./contracts/ethereum-1/0x141f0e9ed8ba2295254c9df9476cce7bc29172b1/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x15a4c3...ee3862`](./contracts/ethereum-1/0x15a4c3e5a3e955a81a570e617d83680f57ee3862/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x15f724...348c57`](./contracts/ethereum-1/0x15f724b35a75f0c28f352b952ea9d1b24e348c57/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x1615cb...5d76e4`](./contracts/ethereum-1/0x1615cbc603192ae8a9ff20e98dd0e40a405d76e4/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x164645...b146dd`](./contracts/ethereum-1/0x164645fbc7220a3b4f8f5c6b473bcf1b6db146dd/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x16d4f9...7cdb67`](./contracts/ethereum-1/0x16d4f955b0aa1b1570fe3e9bb2f8c19c407cdb67/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x18f7f9...ee8648`](./contracts/ethereum-1/0x18f7f9f20c495a7f4868ba807c64a5d0a9ee8648/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x19ab19...ca9f0b`](./contracts/ethereum-1/0x19ab19e61a930bc5c7b75bf06cdd954218ca9f0b/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x1a57ab...e128cc`](./contracts/ethereum-1/0x1a57aba59d50b192f8440e205e3b8b885be128cc/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x1ce3e1...0955dd`](./contracts/ethereum-1/0x1ce3e159f37c36fd1ff9c3b5af8725ef890955dd/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x1fe179...9291c7`](./contracts/ethereum-1/0x1fe17936c1cdc73c857263997716e3a60b9291c7/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x202266...683464`](./contracts/ethereum-1/0x20226607b4fa64228abf3072ce561d6257683464/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x20c548...1c5bee`](./contracts/ethereum-1/0x20c5486ddc82272856730cc6ae2c9485ee1c5bee/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x21f3bc...0ea749`](./contracts/ethereum-1/0x21f3bcfa912f674c2af3bed5bf8e47a3f40ea749/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x238a70...e466ba`](./contracts/ethereum-1/0x238a700ed6165261cf8b2e544ba797bc11e466ba/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x27c0d4...7780b8`](./contracts/ethereum-1/0x27c0d44b02e1b732f37ba31c466a35053a7780b8/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x27e6f2...1b0ea7`](./contracts/ethereum-1/0x27e6f273941c5536154c1a6c20c97db7dc1b0ea7/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x2a8c22...88b656`](./contracts/ethereum-1/0x2a8c22e3b10036f3aef5875d04f8441d4188b656/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x2ce151...574b43`](./contracts/ethereum-1/0x2ce15146958bf305dadebbbf31f2d5a4f2574b43/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x2db1ec...fe0085`](./contracts/ethereum-1/0x2db1ec186acdeaf7d0fc78bffe335560b0fe0085/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x2ddc91...8e91c6`](./contracts/ethereum-1/0x2ddc913e4c7674a7e42c55db48a92c47158e91c6/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x2f98a1...8091d6`](./contracts/ethereum-1/0x2f98a13635f6cec0cc45bc1e43969c71d68091d6/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x307267...589fd0`](./contracts/ethereum-1/0x307267989a7bec3a57fd7fd96017c49803589fd0/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x30acce...338c06`](./contracts/ethereum-1/0x30acceedff97a3fe11ab52ee7425af4589338c06/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x30d9d1...3efc1a`](./contracts/ethereum-1/0x30d9d1e76869516aea980390494aaed45c3efc1a/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x319a05...3d5106`](./contracts/ethereum-1/0x319a05e260acc2490768a726ccfd341d4b3d5106/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x34031e...dfd0dd`](./contracts/ethereum-1/0x34031e751da2ab19009d8f7eb268face2bdfd0dd/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x37769a...7af6ae`](./contracts/ethereum-1/0x37769af173ea65dfc2880179940d5566817af6ae/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x39592b...69ae4d`](./contracts/ethereum-1/0x39592bdbf6f3b96dd4547063945ab9ece769ae4d/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x39f050...341455`](./contracts/ethereum-1/0x39f0507060c12bb88cb68a496544011d2f341455/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x3de2e7...42f5d4`](./contracts/ethereum-1/0x3de2e700d220928ff5180691004824d8ad42f5d4/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x414384...a0c3de`](./contracts/ethereum-1/0x41438435c20b1c2f1fca702d387889f346a0c3de/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x41c607...efa663`](./contracts/ethereum-1/0x41c60765fa36109b19b21719f4593f19ddefa663/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x43881b...005f68`](./contracts/ethereum-1/0x43881b05c3be68b2d33eb70addf9f666c5005f68/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x48e284...bb49c4`](./contracts/ethereum-1/0x48e284d0729eb1925066307072758d95dbbb49c4/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x4bcfda...95001a`](./contracts/ethereum-1/0x4bcfda0a844b49da8bb19562ee52cc385395001a/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x513bd4...1aaf9a`](./contracts/ethereum-1/0x513bd45be7643fe6c30c41cd4b327e8e341aaf9a/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x5356b8...565234`](./contracts/ethereum-1/0x5356b8e06589de894d86b24f4079c629e8565234/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x545522...498c2a`](./contracts/ethereum-1/0x5455222ccdd32f85c1998f57dc6cf613b4498c2a/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x548857...92785b`](./contracts/ethereum-1/0x548857309befb6fb6f20a9c5a56c9023d892785b/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x5572eb...062d78`](./contracts/ethereum-1/0x5572eb7f4fb679ff6a99203f12b0484dc1062d78/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x568143...de744f`](./contracts/ethereum-1/0x56814399caaedcee4f58d2e55da058a81dde744f/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x5696b6...e966af`](./contracts/ethereum-1/0x5696b69be96e936e8e489070eb3d4f0e1fe966af/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x57b3be...9ecdab`](./contracts/ethereum-1/0x57b3be350c777892611cedc93bcf8c099a9ecdab/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x5a096a...90bf1d`](./contracts/ethereum-1/0x5a096ac89eaef68930352a15da49e4eb8590bf1d/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x5a4286...a2e0c1`](./contracts/ethereum-1/0x5a42864b14c0c8241ef5ab62dae975b163a2e0c1/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x5ad2e3...8d2dfa`](./contracts/ethereum-1/0x5ad2e3d65f8ecdc36eeba38bae3cc6ff258d2dfa/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x5aea6d...6af5c0`](./contracts/ethereum-1/0x5aea6d35ed7b3b7ae78694b7da2ee880756af5c0/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x5e1549...0e47f6`](./contracts/ethereum-1/0x5e154946561aea4e750aac6dead23d37e00e47f6/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x5f09af...e55d61`](./contracts/ethereum-1/0x5f09aff8b9b1f488b7d1bbad4d89648579e55d61/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x605a84...18db0a`](./contracts/ethereum-1/0x605a84861ee603e385b01b9048bea6a86118db0a/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x649f86...986aeb`](./contracts/ethereum-1/0x649f8698068ad143a7e18ba9cb0be112d5986aeb/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x65c4e0...0f15ca`](./contracts/ethereum-1/0x65c4e04cc26aadd1ec95c54cd6dba61a270f15ca/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x65df72...df039b`](./contracts/ethereum-1/0x65df7299a9010e399a38d6b7159d25239cdf039b/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x6d62d3...4823b6`](./contracts/ethereum-1/0x6d62d3c3c8f9912890788b50299bf4d2c64823b6/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x6f51d8...e83be6`](./contracts/ethereum-1/0x6f51d8af5be2cf3517b8d6cd07361be382e83be6/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x711077...03ce75`](./contracts/ethereum-1/0x711077ddc66b18e6dcb0a5cb3743f3938a03ce75/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x76cc16...3f7bbd`](./contracts/ethereum-1/0x76cc16608aa7cd32631bb151801bb095313f7bbd/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x783339...33cfb6`](./contracts/ethereum-1/0x7833397da276d6b588e76466c14c82b2d733cfb6/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x7a4c56...41b3b8`](./contracts/ethereum-1/0x7a4c56b1baaad0ff5d248892e137d415da41b3b8/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x7cf9de...116c05`](./contracts/ethereum-1/0x7cf9dec92ca9fd46f8d86e7798b72624bc116c05/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x7d5b8a...b040bb`](./contracts/ethereum-1/0x7d5b8ab9c948fb11433e0eddadd718dc5cb040bb/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x7e8c63...34da93`](./contracts/ethereum-1/0x7e8c632ab231479886af1bc02b9d646e4634da93/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x81c097...7f6f42`](./contracts/ethereum-1/0x81c097e86842051b1ed4299a9e4d213cb07f6f42/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x841eeb...24e29a`](./contracts/ethereum-1/0x841eeb3e2489b2282b0e14202dc8bd8f7624e29a/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x8493f1...73789a`](./contracts/ethereum-1/0x8493f1f2b834c2837c87075b0edac17f5273789a/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x87c905...afb0cf`](./contracts/ethereum-1/0x87c9053c819bb28e0d73d33059e1b3da80afb0cf/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x88956c...264403`](./contracts/ethereum-1/0x88956c00a5fa046c823eaed747f21a95d2264403/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x8d51db...50e68c`](./contracts/ethereum-1/0x8d51dbc85ceef637c97d02bdaabb5e274850e68c/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x8f382a...ee1386`](./contracts/ethereum-1/0x8f382ae7bbdbecda835d26ce3ba64010eaee1386/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x92004d...6decde`](./contracts/ethereum-1/0x92004dcc5359ed67f287f32d12715a37916decde/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x9a5cf6...2d8387`](./contracts/ethereum-1/0x9a5cf6c0a1cee5226e31e3d0a81f2ca2462d8387/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x9aebf5...bdd358`](./contracts/ethereum-1/0x9aebf5d6f9411bac355021ddfbe9b2c756bdd358/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x9c3743...ac446f`](./contracts/ethereum-1/0x9c3743582e8b2d7ccb5e08caf3c9c33780ac446f/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x9f49b0...ff9524`](./contracts/ethereum-1/0x9f49b0980b141b539e2a94ec0864faf699ff9524/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x9f7dd5...e2f972`](./contracts/ethereum-1/0x9f7dd5462c183b6577858e16a13a4d864ce2f972/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x9fb442...9f661a`](./contracts/ethereum-1/0x9fb442d6b612a6dcd2acc67bb53771ef1d9f661a/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0xa01227...dea417`](./contracts/ethereum-1/0xa01227a26a7710bc75071286539e47adb6dea417/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0xa19f6e...f5eca6`](./contracts/ethereum-1/0xa19f6e0df08a7917f2f8a33db66d0af31ff5eca6/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0xa48cfd...eee17f`](./contracts/ethereum-1/0xa48cfd53263ade6abdb0ac75287cc0d5a2eee17f/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0xafcc1c...a352b5`](./contracts/ethereum-1/0xafcc1c556ee0436c10a3054b3d615abb93a352b5/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0xb5d648...74186d`](./contracts/ethereum-1/0xb5d6483c556bc6810b55b983315016fcb374186d/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0xbdc030...74f15c`](./contracts/ethereum-1/0xbdc0304210972be75fd2247838bff2b64474f15c/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0xbf2a93...7e6e7c`](./contracts/ethereum-1/0xbf2a93b420225558a76fc9888c687c14977e6e7c/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0xc344db...4f2368`](./contracts/ethereum-1/0xc344db27feba7f0a881a50f0f702a525a44f2368/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0xc8495e...783085`](./contracts/ethereum-1/0xc8495eaff71d3a563b906295fcf2f685b1783085/) | ⚠️ Unaudited |
| TUsdeCustomAggregatorFeed | unknown | ethereum | n/a | [`0x6f0c37...01d526`](./contracts/ethereum-1/0x6f0c371f808996187729ed1bee13ace2e901d526/) | ⚠️ Unaudited |
| TUsdeDataFeed | unknown | ethereum | n/a | [`0x507f40...a029d0`](./contracts/ethereum-1/0x507f409ba7e5ef489d5c0e3c4568b24985a029d0/) | ⚠️ Unaudited |
| TUsdeRedemptionVaultWithSwapper | unknown | ethereum | n/a | [`0x1ac3e6...77a603`](./contracts/ethereum-1/0x1ac3e68ea5e9dbc592246e2d0d57913aff77a603/) | ⚠️ Unaudited |
| VaultGovDeployer | unknown | ethereum | n/a | [`0xd4ede4...e68099`](./contracts/ethereum-1/0xd4ede46096399a4d6db4fecf5f9a6d303ee68099/) | ⚠️ Unaudited |
| WETHWrappingFacet | unknown | ethereum | n/a | [`0x397616...1ab32e`](./contracts/ethereum-1/0x3976169338e1d4c397ed4732c40c68c89e1ab32e/) | ⚠️ Unaudited |
| WrappedEEthAdapter | unknown | ethereum | n/a | [`0x0c3f5f...1fcb69`](./contracts/ethereum-1/0x0c3f5fafb87318c0deaebff096aba019501fcb69/) | ⚠️ Unaudited |
| WstEthAdapter | unknown | ethereum | n/a | [`0xa74f99...dbb9d7`](./contracts/ethereum-1/0xa74f994672f232a30067da820f0e54881edbb9d7/) | ⚠️ Unaudited |
| ZeroGBtcvCustomAggregatorFeed | unknown | ethereum | n/a | [`0x0f2115...cb9e9a`](./contracts/ethereum-1/0x0f211552e0d7acb267a9eb98b80ee00f47cb9e9a/) | ⚠️ Unaudited |
| ZeroGEthvDataFeed | unknown | ethereum | n/a | [`0xac79fe...deb0fe`](./contracts/ethereum-1/0xac79fed395c2238c4fa13084ee440e19e4deb0fe/) | ⚠️ Unaudited |
| ZeroGEthvDepositVault | unknown | ethereum | n/a | [`0x01feb0...e6afcc`](./contracts/ethereum-1/0x01feb0bba21552385de157174f32d97bc0e6afcc/) | ⚠️ Unaudited |
| ZeroGEthvRedemptionVaultWithSwapper | unknown | ethereum | n/a | [`0x364fb0...e049aa`](./contracts/ethereum-1/0x364fb05060e7562b0c6379b5bd3371c412e049aa/) | ⚠️ Unaudited |
| zeroGUSDV | unknown | ethereum | n/a | [`0x733ace...5fa347`](./contracts/ethereum-1/0x733acea2a9193a249fdb58ede4ea3c8ddc5fa347/) | ⚠️ Unaudited |
| ZeroGUsdvCustomAggregatorFeed | unknown | ethereum | n/a | [`0x8cf944...442aab`](./contracts/ethereum-1/0x8cf94465f8db8a273673dfe950bd1c9e34442aab/) | ⚠️ Unaudited |
| ZeroGUsdvDataFeed | unknown | ethereum | n/a | [`0x091074...080e8a`](./contracts/ethereum-1/0x091074f37e8c72ddb8720afae77c44a855080e8a/) | ⚠️ Unaudited |

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
| [Rendered PDF capture](https://3939430316-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FpkuCQdIPo5l6ElM4z077%2Fuploads%2Fop7oRI0mOlG9Yf9yht2x%2FMoreMarkets%20Collaborative%20Audit%20Report%20May%2011_2025.pdf) | unknown | Audit | 2025-04 | aging | Direct | n/a | 0 | n/a |
| [Rendered PDF capture](https://3939430316-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FpkuCQdIPo5l6ElM4z077%2Fuploads%2FP6VwD0pisQXhVgoCIFrL%2FSigma_Prime_MoreMarkets_Security_Assessment_Report_v2_0_final.pdf) | unknown | Audit | 2025-07 | aging | Direct | n/a | 0 | n/a |
| [Nuffle_Labs_Nuffle_Contracts_Smart_Contract_Security_Assessment.pdf](https://3939430316-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FpkuCQdIPo5l6ElM4z077%2Fuploads%2FbeoAHR4BdxCOPNViqMZe%2FNuffle_Labs_Nuffle_Contracts_Smart_Contract_Security_Assessment.pdf) | Nuffle Labs | Audit | 2025-02 | aging | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 270 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [17648] Rendered PDF capture
- [17649] Rendered PDF capture
- [17650] Nuffle_Labs_Nuffle_Contracts_Smart_Contract_Security_Assessment.pdf

Fork inheritance lineage and inherited audits are included when available.
