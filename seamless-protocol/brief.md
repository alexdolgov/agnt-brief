# Agentic Audit Brief: Seamless Protocol

## Project Overview

- Project: Seamless Protocol (`seamless-protocol`)
- Website: [https://www.seamlessprotocol.com](https://www.seamlessprotocol.com)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:54.696Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-b097
- Chains: base, ethereum
- Contract surface: 113 unique implementations (216 raw deployments)
- DeFi Llama TVL: $15,656,122.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Lending. Structurally: 96 project-authored contract(s) across 2 chain(s); 5 ERC4626 vaults, 22 ERC20 tokens, 1 ERC721 NFT, 2 Chainlink feeds; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin-upgradeable.

### Architecture

The protocol comprises 7 functional families. Its contracts share 34 common project-authored base contract(s) (proxy, erc20permit, eip712). Dominant framework: openzeppelin-upgradeable.

## Contract Surface Quality

- Indexed contracts: 304; live-surface contracts included: 157 (146 live, 11 unknown).
- Excluded by liveness: 147 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 4/100 (4.0%)
- Deployed-live implementations: 104 of 113 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 5/104
- Verified + Unaudited implementations: 99
- Verified by bytecode match: 0
- Unverified implementations: 9
- Unique implementations: 113
- Raw deployments: 216
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 5
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-10 (fresh)
- Audit staleness (calendar age): 1 fresh, 4 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 5 match-unverified
- Tier 1 coverage: 4.0% (Sherlock, Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Spearbit | Tier 1 | 5 | 4.8% | 2025-10 |
| Sherlock | Tier 1 | 4 | 3.8% | 2025-05 |

## Contract Surface

### ✅ Verified + Audited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| LeverageRouter | adapter | base | n/a | 3 deployments: ethereum `0xb0764d...6e6dba`; base [`0x00c669...a11a5c`](./contracts/base-8453/0x00c66934ebca0f2a845812bc368b230f6da11a5c/); base `0xdba92f...9a887c` | ✅ Audited |
| MorphoLendingAdapter | adapter | ethereum | n/a | 6 deployments: ethereum [`0x00c669...a11a5c`](./contracts/ethereum-1/0x00c66934ebca0f2a845812bc368b230f6da11a5c/); ethereum `0xb224f5...129817`; ethereum `0xcb1eff...3aee58`; ethereum `0xe33eaf...9bd809`; ethereum `0xe9a32a...298f1f`; base `0x9558b3...ab253f` | ✅ Audited |
| MorphoLendingAdapterFactory | adapter | ethereum | n/a | [`0xce05fb...7ded71`](./contracts/ethereum-1/0xce05fbed9260810bdded179adfdaf737be7ded71/) | ✅ Audited |
| PricingAdapter | adapter | ethereum | n/a | 2 deployments: ethereum [`0x44cceb...76c88f`](./contracts/ethereum-1/0x44ccebea0dac17105e91a59e182f65f8d176c88f/); base `0xce05fb...7ded71` | ✅ Audited |
| SwapAdapter | adapter | base | n/a | [`0xfdf71e...e38942`](./contracts/base-8453/0xfdf71e2c2b34cd1f8bb852e7c55e8b926fe38942/) | ✅ Audited |

### ⚠️ Verified + Unaudited (99)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AaveOracle | operational_periphery | base | n/a | [`0xfdd4e8...753b01`](./contracts/base-8453/0xfdd4e83890bccd1fbf9b10d71a5cc0a738753b01/) | ⚠️ Unaudited |
| BorrowLogic | unknown | base | n/a | 2 deployments: base [`0xa40949...43d6fb`](./contracts/base-8453/0xa409495a6fb69b06b82f7a68766266357743d6fb/); base `0xac0b0d...f3f70a` | ⚠️ Unaudited |
| BridgeLogic | unknown | base | n/a | 2 deployments: base [`0x1d9eca...d44551`](./contracts/base-8453/0x1d9eca99a4b4ab73fa1181f617107c66e1d44551/); base `0x76402a...c42f18` | ⚠️ Unaudited |
| CalldataLogic | unknown | base | n/a | [`0x2182b9...fe8d2e`](./contracts/base-8453/0x2182b918f29ee7d621128dde8dc07efaa5fe8d2e/) | ⚠️ Unaudited |
| DeployLoopStrategyETHoverUSDCGuardianPayload | unknown | base | n/a | [`0x391a36...bc0afa`](./contracts/base-8453/0x391a369b6904fef62dca2785cbfc0e6e20bc0afa/) | ⚠️ Unaudited |
| DeployLoopStrategyUSDCoverETHGuardianPayload | unknown | base | n/a | [`0xe77232...89aca8`](./contracts/base-8453/0xe7723279a8a142d95a3fffc98f70f574ee89aca8/) | ⚠️ Unaudited |
| EModeLogic | unknown | base | n/a | 2 deployments: base [`0x5d8df7...d49bad`](./contracts/base-8453/0x5d8df7515493a804da1d16c73d75bd9479d49bad/); base `0x683271...5ab529` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | base | n/a | 2 deployments: base [`0x0661df...e4950d`](./contracts/base-8453/0x0661dff721b459510c81c4c737fa5ac115e4950d/); base `0x07dfe9...6c4926` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | base | n/a | 2 deployments: base [`0x4311dc...189134`](./contracts/base-8453/0x4311dc38e44f225edc38ed5a081715f7b7189134/); base `0xa6d3fc...450f98` | ⚠️ Unaudited |
| ERC20BalanceSplitterTwoPayee | operational_periphery | base | n/a | [`0xfbc092...d8b205`](./contracts/base-8453/0xfbc092a58479439a301a5b95a981e969a0d8b205/) | ⚠️ Unaudited |
| EscrowSeam | unknown | base | n/a | 2 deployments: base [`0x78423b...09fbb1`](./contracts/base-8453/0x78423bfc5053102a3087daa978c2117a6809fbb1/); base `0x998e44...10d5e5` | ⚠️ Unaudited |
| FeeKeeper | unknown | base | n/a | 2 deployments: base [`0x003ee5...21f2f2`](./contracts/base-8453/0x003ee5e3b38cda6775d20a32080850106321f2f2/); base `0x21033e...b8d65b` | ⚠️ Unaudited |
| FlashLoanLogic | unknown | base | n/a | 2 deployments: base [`0xcebbf1...877972`](./contracts/base-8453/0xcebbf1a8e6cdd813e7efce223a4820d7d2877972/); base `0xf9853a...0644ff` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | base | n/a | [`0xa1b5f2...955a22`](./contracts/base-8453/0xa1b5f2cc9b407177cd8a4acf1699fa0b99955a22/) | ⚠️ Unaudited |
| L2Pool | core_logic | base | n/a | [`0x918e3d...174323`](./contracts/base-8453/0x918e3dfabd8c69a54d542cdeea4a3e0616174323/) | ⚠️ Unaudited |
| LeverageManager | unknown | ethereum | n/a | 2 deployments: ethereum [`0x5c37eb...b3e351`](./contracts/ethereum-1/0x5c37eb148d4a261acd101e2b997a0f163fb3e351/); ethereum `0x9d04f6...64220e` | ⚠️ Unaudited |
| LeverageManager | unknown | base | n/a | 2 deployments: base [`0x38ba21...5ec3a8`](./contracts/base-8453/0x38ba21c6bf31df1b1798fced07b4e9b07c5ec3a8/); base `0xfe9101...2e1856` | ⚠️ Unaudited |
| LeverageTokenDeploymentBatcher | token | ethereum | n/a | [`0x4466d5...0a0352`](./contracts/ethereum-1/0x4466d52b714ef32657db89ec61fab1b7e30a0352/) | ⚠️ Unaudited |
| LiquidationLogic | unknown | base | n/a | 2 deployments: base [`0x44659e...cf2dfa`](./contracts/base-8453/0x44659e741a09c0d3c4756e04c559772596cf2dfa/); base `0x524adc...44b837` | ⚠️ Unaudited |
| LoanLogic | unknown | base | n/a | 4 deployments: base [`0x31da38...a378d6`](./contracts/base-8453/0x31da38f0eb1528212de20a3668b795e83ea378d6/); base `0x3e61ba...e4acd0`; base `0x7cbb6f...0ca955`; base `0x9bb43b...904c0e` | ⚠️ Unaudited |
| LoopStrategy | unknown | base | n/a | 2 deployments: base [`0x0fbc23...1b255e`](./contracts/base-8453/0x0fbc23eefeae1ae5cc929b97bce88b11261b255e/); base `0x22850a...341571` | ⚠️ Unaudited |
| LoopStrategy | core_logic | base | n/a | [`0x258730...ea8a4e`](./contracts/base-8453/0x258730e23cf2f25887cb962d32bd10b878ea8a4e/) | ⚠️ Unaudited |
| LoopStrategy | core_logic | base | n/a | [`0x2fb1be...ee78f4`](./contracts/base-8453/0x2fb1bea0a63f77efa77619b903b2830b52ee78f4/) | ⚠️ Unaudited |
| LoopStrategy | unknown | base | n/a | 7 deployments: base [`0x588313...e4eac5`](./contracts/base-8453/0x588313d69f6ca189029d83a3012fd3c40be4eac5/); base `0x9c764c...7cdb67`; base `0xa70c94...8ca97b`; base `0xb94799...f993b7`; base `0xbff0e0...51b2d6`; base `0xc82a72...3cf8ea`; base `0xcefeb9...6fd328` | ⚠️ Unaudited |
| LoopStrategy | core_logic | base | n/a | [`0x5ed616...c09c8a`](./contracts/base-8453/0x5ed6167232b937b0a5c84b49031139f405c09c8a/) | ⚠️ Unaudited |
| LoopStrategy | core_logic | base | n/a | [`0x68dfad...80291e`](./contracts/base-8453/0x68dfad1a72c63897fec5fb9de9fdb5670280291e/) | ⚠️ Unaudited |
| MetaMorphoV1_1 | unknown | base | n/a | 3 deployments: base [`0x27d8c7...c65c18`](./contracts/base-8453/0x27d8c7273fd3fcc6956a0b370ce5fd4a7fc65c18/); base `0x5a47c8...22f3c7`; base `0x616a4e...273738` | ⚠️ Unaudited |
| MulticallExecutor | periphery | ethereum | n/a | 2 deployments: ethereum [`0x16d02e...fd22e1`](./contracts/ethereum-1/0x16d02ebd89988cad1ce945807b963ab7a9fd22e1/); base `0x9d04f6...64220e` | ⚠️ Unaudited |
| Pool | unknown | base | n/a | [`0x16e485...bda6cf`](./contracts/base-8453/0x16e48501634dfbb52f556430d788c110e5bda6cf/) | ⚠️ Unaudited |
| PoolAddressesProvider | core_logic | base | n/a | [`0x0e02eb...39f3a0`](./contracts/base-8453/0x0e02eb705be325407707662c6f6d3466e939f3a0/) | ⚠️ Unaudited |
| PoolLogic | unknown | base | n/a | 2 deployments: base [`0xdd59cd...11dd6b`](./contracts/base-8453/0xdd59cd12c455a1c091331c55423c9e4e5111dd6b/); base `0xe51329...309805` | ⚠️ Unaudited |
| RebalanceAdapter | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0a4490...d6c127`](./contracts/ethereum-1/0x0a4490233fd6ea02873af11c744d286dc3d6c127/); ethereum `0x1d0c19...efaec8` | ⚠️ Unaudited |
| RebalanceAdapter | unknown | base | n/a | 2 deployments: base [`0xa530e6...46dd32`](./contracts/base-8453/0xa530e6ea09eb118a1549aca73731379ba546dd32/); base `0xd923b2...c24912` | ⚠️ Unaudited |
| RebalanceLogic | unknown | base | n/a | 4 deployments: base [`0x07a4b1...f8a711`](./contracts/base-8453/0x07a4b168f9dae741b3b88bf6424434655af8a711/); base `0x3f7dd8...ad0223`; base `0xab965e...51ea3e`; base `0xc2cecb...4dfaae` | ⚠️ Unaudited |
| Seam | unknown | base | n/a | 2 deployments: base [`0x1c7a46...88cd85`](./contracts/base-8453/0x1c7a460413dd4e964f96d8dfc56e7223ce88cd85/); base `0x57b4b7...aefd3f` | ⚠️ Unaudited |
| Seam | adapter | base | n/a | [`0xff7c1f...5e7847`](./contracts/base-8453/0xff7c1fdc6294a42104896854c5483711a45e7847/) | ⚠️ Unaudited |
| SeamEmissionManager | unknown | base | n/a | 2 deployments: base [`0x03eeed...dd9cfa`](./contracts/base-8453/0x03eeedf76a007dce47b3a0044d9f0a04badd9cfa/); base `0x57460d...1b3955` | ⚠️ Unaudited |
| SeamEmissionManager | unknown | base | n/a | 2 deployments: base [`0x1fdfc3...e38f9c`](./contracts/base-8453/0x1fdfc3872a70a7af5a818f27bb14fbea4ee38f9c/); base `0x785c97...b90778` | ⚠️ Unaudited |
| SeamGovernorV2 | unknown | base | n/a | 3 deployments: base [`0x04faa2...e761b6`](./contracts/base-8453/0x04faa2826dbb38a7a4e9a5e3db26b9e389e761b6/); base `0x8768c7...0db294`; base `0xc3a36d...a9baef` | ⚠️ Unaudited |
| SeamL1 | unknown | ethereum | n/a | [`0x6b66cc...e726ba`](./contracts/ethereum-1/0x6b66ccd1340c479b07b390d326eadcbb84e726ba/) | ⚠️ Unaudited |
| SeamTimelockController | unknown | base | n/a | 2 deployments: base [`0x13f5b4...b35e6f`](./contracts/base-8453/0x13f5b49217f330167d6350530f6185a75ab35e6f/); base `0x639d2d...925fee` | ⚠️ Unaudited |
| SeamTimelockController | unknown | base | n/a | 2 deployments: base [`0xa96448...b16718`](./contracts/base-8453/0xa96448469520666edc351eff7676af2247b16718/); base `0xbe170d...ff790d` | ⚠️ Unaudited |
| SeamVestingWallet | unknown | base | n/a | 2 deployments: base [`0x0f471d...107f54`](./contracts/base-8453/0x0f471d88f31ab0be2ff1d0b1ff5f30a2e3107f54/); base `0xb8835b...660492` | ⚠️ Unaudited |
| SeamVestingWallet | unknown | base | n/a | 2 deployments: base [`0x0fedae...13dbc2`](./contracts/base-8453/0x0fedaedd6ba892921cf4728c5e2c20ffc613dbc2/); base `0x260fc8...ea8147` | ⚠️ Unaudited |
| SeamVestingWallet | unknown | base | n/a | 2 deployments: base [`0x204fe7...b5406a`](./contracts/base-8453/0x204fe70b59c32f05bcf60c445d37876b2fb5406a/); base `0xac3121...38ce0f` | ⚠️ Unaudited |
| SeamVestingWallet | unknown | base | n/a | 2 deployments: base [`0x216cc6...80d5b0`](./contracts/base-8453/0x216cc63cec6b6219b6bae7d07e00b9301780d5b0/); base `0xfbe83d...904f75` | ⚠️ Unaudited |
| SeamVestingWallet | unknown | base | n/a | 2 deployments: base [`0x290067...1f0d72`](./contracts/base-8453/0x29006739ca8b9febf5c32bf5aae1e272cd1f0d72/); base `0x430d6f...ebacb7` | ⚠️ Unaudited |
| SeamVestingWallet | unknown | base | n/a | 2 deployments: base [`0x316c05...fe9d6a`](./contracts/base-8453/0x316c05085c328189a3436cfadf8ba76babfe9d6a/); base `0x5a61a1...ec5713` | ⚠️ Unaudited |
| SeamVestingWallet | unknown | base | n/a | 2 deployments: base [`0x33e372...01c261`](./contracts/base-8453/0x33e372861bea0966c1b121f26f5e9c918c01c261/); base `0x93b1d6...d838fb` | ⚠️ Unaudited |
| SeamVestingWallet | unknown | base | n/a | 2 deployments: base [`0x348c2e...164408`](./contracts/base-8453/0x348c2e1bdb4f99e3b3e87ac18e0b2a3704164408/); base `0x81b50b...6dda5b` | ⚠️ Unaudited |
| SeamVestingWallet | unknown | base | n/a | 2 deployments: base [`0x35aa3c...2efffe`](./contracts/base-8453/0x35aa3c2d426ad68c0a7f2ad968b68487a22efffe/); base `0x932d77...29d19c` | ⚠️ Unaudited |
| SeamVestingWallet | unknown | base | n/a | 2 deployments: base [`0x37e3f6...92d33c`](./contracts/base-8453/0x37e3f6df10a3ded02a7b9ba38b6e80fdd592d33c/); base `0x7acd19...485903` | ⚠️ Unaudited |
| SeamVestingWallet | unknown | base | n/a | 2 deployments: base [`0x393267...bad29f`](./contracts/base-8453/0x3932674032b0fc4b816530d7a8d0961a3dbad29f/); base `0x511f23...1ec7ac` | ⚠️ Unaudited |
| SeamVestingWallet | unknown | base | n/a | 2 deployments: base [`0x3b5e0a...42a691`](./contracts/base-8453/0x3b5e0ab790a3e4fd73f7f345f65d96178242a691/); base `0x7b1293...5d973a` | ⚠️ Unaudited |
| SeamVestingWallet | unknown | base | n/a | 2 deployments: base [`0x435846...f18514`](./contracts/base-8453/0x435846abbbb4c9ec67a1517716cdc853ebf18514/); base `0xdf90ed...4dff9f` | ⚠️ Unaudited |
| SeamVestingWallet | unknown | base | n/a | 4 deployments: base [`0x4e7fad...6332ea`](./contracts/base-8453/0x4e7fada38a8d7496ab940f4c03185d5b7a6332ea/); base `0xa9d2a0...947168`; base `0xb2118b...a07e8b`; base `0xf1c220...01e14c` | ⚠️ Unaudited |
| SeamVestingWallet | unknown | base | n/a | 2 deployments: base [`0x51ddfe...a14e04`](./contracts/base-8453/0x51ddfe09b8cdc7d8200ad171face13aacda14e04/); base `0xc5a269...5c8103` | ⚠️ Unaudited |
| SeamVestingWallet | unknown | base | n/a | 2 deployments: base [`0x597ce0...3952b6`](./contracts/base-8453/0x597ce0e9cf5ccb070a37efbaca2fd13c193952b6/); base `0x77d004...16451a` | ⚠️ Unaudited |
| SeamVestingWallet | unknown | base | n/a | 2 deployments: base [`0x5f8a82...7b5408`](./contracts/base-8453/0x5f8a82b8ec7c17d75ccafb84fb5e95f6a87b5408/); base `0xcbc784...391d6e` | ⚠️ Unaudited |
| SeamVestingWallet | unknown | base | n/a | 2 deployments: base [`0x61380a...809726`](./contracts/base-8453/0x61380a201f3e9491b3e9a8193bb8634724809726/); base `0x91f7d6...35a9c1` | ⚠️ Unaudited |
| SeamVestingWallet | unknown | base | n/a | 2 deployments: base [`0x614703...c9396f`](./contracts/base-8453/0x6147036c8315b178dfca90524e2ca5572bc9396f/); base `0xe15943...0a0427` | ⚠️ Unaudited |
| SeamVestingWallet | unknown | base | n/a | 2 deployments: base [`0x66345a...c8a5dc`](./contracts/base-8453/0x66345a825654a605f006cda37cb621cc00c8a5dc/); base `0x91a2fb...846235` | ⚠️ Unaudited |
| SeamVestingWallet | unknown | base | n/a | 2 deployments: base [`0x67e0ea...961ab0`](./contracts/base-8453/0x67e0ea38382fcd2df74931bacc0af96954961ab0/); base `0xd81335...85af2f` | ⚠️ Unaudited |
| SeamVestingWallet | unknown | base | n/a | 2 deployments: base [`0x6f4146...e11b0a`](./contracts/base-8453/0x6f4146040bf95f95bf9fbf0ed115133fcde11b0a/); base `0xfc233c...80f2eb` | ⚠️ Unaudited |
| SeamVestingWallet | unknown | base | n/a | 2 deployments: base [`0x734614...735254`](./contracts/base-8453/0x734614ea6c57924dc1a9efb2e0d6b78cd7735254/); base `0xb4f203...d6859e` | ⚠️ Unaudited |
| SeamVestingWallet | unknown | base | n/a | 2 deployments: base [`0x78718b...0a6993`](./contracts/base-8453/0x78718b683ad01849be10702f268a72feea0a6993/); base `0xc0e23f...635285` | ⚠️ Unaudited |
| SeamVestingWallet | unknown | base | n/a | 2 deployments: base [`0x7b2159...d10e03`](./contracts/base-8453/0x7b21591e9534ca3a6c155dca5e135cdeced10e03/); base `0x96bbed...4f49e9` | ⚠️ Unaudited |
| SeamVestingWallet | unknown | base | n/a | 2 deployments: base [`0x8023d7...bd908b`](./contracts/base-8453/0x8023d7bbed97e2a9736a91e10a664e1981bd908b/); base `0xf61fbc...bfd675` | ⚠️ Unaudited |
| SeamVestingWallet | unknown | base | n/a | 2 deployments: base [`0x80fad4...4e4f52`](./contracts/base-8453/0x80fad4184506f1759d472bac0f21d9d01b4e4f52/); base `0xb44e36...0a1a80` | ⚠️ Unaudited |
| SeamVestingWallet | unknown | base | n/a | 2 deployments: base [`0x96de17...5661bb`](./contracts/base-8453/0x96de174a0c407afceed5c2d8c8a671b7b55661bb/); base `0xdc37b7...dfa399` | ⚠️ Unaudited |
| SeamVestingWallet | unknown | base | n/a | 2 deployments: base [`0xb5dd3b...e03808`](./contracts/base-8453/0xb5dd3b0fe640b5f2cd4e08cccc28c14469e03808/); base `0xbac77f...e08b8a` | ⚠️ Unaudited |
| SeamVestingWallet | unknown | base | n/a | 2 deployments: base [`0xc4ae2b...122151`](./contracts/base-8453/0xc4ae2b6de2a26420fd0a41cb07a8c01d42122151/); base `0xe423f4...59f972` | ⚠️ Unaudited |
| SeamVestingWallet | unknown | base | n/a | 2 deployments: base [`0xf4c7d3...2d5c32`](./contracts/base-8453/0xf4c7d3bab6c0b1c0d0a3db9f585670b1612d5c32/); base `0xf71f91...71ace1` | ⚠️ Unaudited |
| SeamVestingWalletV2 | unknown | base | n/a | 2 deployments: base [`0x017167...eafa7f`](./contracts/base-8453/0x017167a33aa3665e90ccc21fd35aef60deeafa7f/); base `0x09f5ef...bc3954` | ⚠️ Unaudited |
| SeamVestingWalletV2 | unknown | base | n/a | 2 deployments: base [`0x04586b...d011b3`](./contracts/base-8453/0x04586b12c6a2010f1054bebc229aa73a46d011b3/); base `0x9130bb...c5cef3` | ⚠️ Unaudited |
| SeamVestingWalletV2 | unknown | base | n/a | 2 deployments: base [`0x059bcf...1f6072`](./contracts/base-8453/0x059bcfecb80de3ee07efcdc40959f148f81f6072/); base `0x5e2693...be4a19` | ⚠️ Unaudited |
| SeamVestingWalletV2 | unknown | base | n/a | 2 deployments: base [`0x09b53e...b0bfe8`](./contracts/base-8453/0x09b53e8ea8659061a290203ba0fdca5f4eb0bfe8/); base `0x9825fb...2a8542` | ⚠️ Unaudited |
| SeamVestingWalletV2 | unknown | base | n/a | 2 deployments: base [`0x10e2ff...266830`](./contracts/base-8453/0x10e2ff2f952bea6bb7d11185b4f6ad51b7266830/); base `0x5685c5...93ac80` | ⚠️ Unaudited |
| SeamVestingWalletV2 | unknown | base | n/a | 2 deployments: base [`0x175c05...5a7333`](./contracts/base-8453/0x175c051785e0266cec607c16772b5bef1e5a7333/); base `0x3bda7d...af0dfb` | ⚠️ Unaudited |
| SeamVestingWalletV2 | unknown | base | n/a | 2 deployments: base [`0x195913...c98a85`](./contracts/base-8453/0x1959139f7a53819b2ae7e550a72f71db0ec98a85/); base `0x1a70f2...c83b02` | ⚠️ Unaudited |
| SeamVestingWalletV2 | unknown | base | n/a | 2 deployments: base [`0x1bbd55...da2235`](./contracts/base-8453/0x1bbd5560a483e10098500eb43c36b4719cda2235/); base `0x6ab219...b66e17` | ⚠️ Unaudited |
| SeamVestingWalletV2 | unknown | base | n/a | 2 deployments: base [`0x1e7f54...523cc6`](./contracts/base-8453/0x1e7f54b7d1a2fdd8ae738ec463d2d7b7da523cc6/); base `0x9272ad...d36a78` | ⚠️ Unaudited |
| SeamVestingWalletV2 | unknown | base | n/a | 2 deployments: base [`0x54cd1c...44d586`](./contracts/base-8453/0x54cd1c5a328436099a506b39c4b5116de544d586/); base `0x643551...dff2ae` | ⚠️ Unaudited |
| SeamVestingWalletV2 | unknown | base | n/a | 2 deployments: base [`0x6e7b0d...0b0ff5`](./contracts/base-8453/0x6e7b0da9a0496b15ea68e0f1085779f9440b0ff5/); base `0x988202...7c9e79` | ⚠️ Unaudited |
| SeamVestingWalletV2 | unknown | base | n/a | 2 deployments: base [`0x7cd268...3fa730`](./contracts/base-8453/0x7cd268a7ca70594fd09e04bcba8bb5c8af3fa730/); base `0x81ce02...5ddfa7` | ⚠️ Unaudited |
| SeamVestingWalletV2 | unknown | base | n/a | 2 deployments: base [`0x82ccc4...a02637`](./contracts/base-8453/0x82ccc4c93fce28092ea205b3352fdee19aa02637/); base `0xb4963f...5d558a` | ⚠️ Unaudited |
| SeamVestingWalletV2 | unknown | base | n/a | 2 deployments: base [`0x95029e...3f5133`](./contracts/base-8453/0x95029e427a1e8b7ada3471a493054058193f5133/); base `0xe9acd2...e3a55b` | ⚠️ Unaudited |
| SeamVestingWalletV2 | unknown | base | n/a | 2 deployments: base [`0x9ce33c...53dd7e`](./contracts/base-8453/0x9ce33cc39bddc13730469d7186f16cf65a53dd7e/); base `0x9da10c...8191ba` | ⚠️ Unaudited |
| StakedToken | unknown | base | n/a | 2 deployments: base [`0x73f084...7172a4`](./contracts/base-8453/0x73f0849756f6a79c1d536b7abab1e6955f7172a4/); base `0xc45f94...8773de` | ⚠️ Unaudited |
| SupplyLogic | unknown | base | n/a | 2 deployments: base [`0xcc76e7...56f54b`](./contracts/base-8453/0xcc76e71283963a72d005c5b48f4ab2218d56f54b/); base `0xff017d...af4bb8` | ⚠️ Unaudited |
| Swapper | unknown | base | n/a | [`0x04550e...62c54e`](./contracts/base-8453/0x04550e50f4753352f233aba53f094fc3cd62c54e/) | ⚠️ Unaudited |
| Swapper | unknown | base | n/a | 2 deployments: base [`0x08561d...dc479d`](./contracts/base-8453/0x08561d280654790861591ffaf68ed193addc479d/); base `0xe314ae...addabc` | ⚠️ Unaudited |
| Swapper | unknown | base | n/a | 2 deployments: base [`0x293982...55839e`](./contracts/base-8453/0x2939821f3a9e5172d443def0749d58cc1655839e/); base `0xc9be03...9f2fc0` | ⚠️ Unaudited |
| Token | unknown | base | n/a | 2 deployments: base [`0x4db264...1dd531`](./contracts/base-8453/0x4db264876bf878a4d0375e7640c6d10fae1dd531/); base `0x560771...82c7c6` | ⚠️ Unaudited |
| Token | unknown | base | n/a | 2 deployments: base [`0xc4d677...183b52`](./contracts/base-8453/0xc4d677c0ed9e1cf2f1a53f755d7adbbbcb183b52/); base `0xe3b0f5...042b5c` | ⚠️ Unaudited |
| TransparentProxyFactory | unknown | base | n/a | [`0x71d90c...cf1b5d`](./contracts/base-8453/0x71d90c266b9eb9a41fe8f875ddbddc3fadcf1b5d/) | ⚠️ Unaudited |
| VeloraAdapter | adapter | base | n/a | 2 deployments: ethereum `0xc4e581...7db6ba`; base [`0x5c37eb...b3e351`](./contracts/base-8453/0x5c37eb148d4a261acd101e2b997a0f163fb3e351/) | ⚠️ Unaudited |
| WrappedERC20PermissionedDeposit | token | base | n/a | 4 deployments: base [`0x3e8707...da2c5f`](./contracts/base-8453/0x3e8707557d4ad25d6042f590bcf8a06071da2c5f/); base `0x85082b...d062be`; base `0x9660af...645755`; base `0xc9ae3b...98c9e4` | ⚠️ Unaudited |
| WrappedTokenGatewayV3 | token | base | n/a | [`0xaeeb38...aa1af3`](./contracts/base-8453/0xaeeb3898ede6a6e86864688383e211132baa1af3/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (9)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | base | n/a | `0x00f033...494a9d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x426f8d...c53d34` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x452a35...a663e3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5630a0...ad3ab8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x70224e...85426b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xac6d0e...e521a9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd24142...630d81` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd8a952...c9d923` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xecd2d0...606ea6` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [cantina.xyz/portfolio/16200c4b-d088-49b7-9a3f-b7c227ea416b](https://cantina.xyz/portfolio/16200c4b-d088-49b7-9a3f-b7c227ea416b) | Spearbit | Audit | 2025-04 | aging | Direct | contract_name | 1 | n/a |
| [2025.05.19 - Final - Seamless Protocol Collaborative Audit Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/ef0f3da32ef7305f21ad93d510765a8803a66d3b/audits/2025.05.19%20-%20Final%20-%20Seamless%20Protocol%20Collaborative%20Audit%20Report.pdf) | Spearbit | Audit | 2025-05 | aging | Direct | contract_name | 4 | n/a |
| [Cantina - 1 Oct 2025.pdf](https://github.com/seamless-protocol/leverage-tokens/blob/main/audits/Cantina%20-%201%20Oct%202025.pdf) | Spearbit | Audit | 2025-10 | fresh | Direct | contract_name | 2 | n/a |
| [Cantina - 8 May 2025.pdf](https://github.com/seamless-protocol/leverage-tokens/blob/main/audits/Cantina%20-%208%20May%202025.pdf) | Spearbit | Audit | 2025-05 | aging | Direct | contract_name | 1 | n/a |
| [Sherlock - 8 May 2025.pdf](https://github.com/seamless-protocol/leverage-tokens/blob/main/audits/Sherlock%20-%208%20May%202025.pdf) | Sherlock | Contest | 2025-05 | aging | Direct | contract_name | 4 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0xa40949...43d6fb`](./contracts/base-8453/0xa409495a6fb69b06b82f7a68766266357743d6fb/) | BorrowLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1d9eca...d44551`](./contracts/base-8453/0x1d9eca99a4b4ab73fa1181f617107c66e1d44551/) | BridgeLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2182b9...fe8d2e`](./contracts/base-8453/0x2182b918f29ee7d621128dde8dc07efaa5fe8d2e/) | CalldataLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x391a36...bc0afa`](./contracts/base-8453/0x391a369b6904fef62dca2785cbfc0e6e20bc0afa/) | DeployLoopStrategyETHoverUSDCGuardianPayload | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xe77232...89aca8`](./contracts/base-8453/0xe7723279a8a142d95a3fffc98f70f574ee89aca8/) | DeployLoopStrategyUSDCoverETHGuardianPayload | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x5d8df7...d49bad`](./contracts/base-8453/0x5d8df7515493a804da1d16c73d75bd9479d49bad/) | EModeLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xfbc092...d8b205`](./contracts/base-8453/0xfbc092a58479439a301a5b95a981e969a0d8b205/) | ERC20BalanceSplitterTwoPayee | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x78423b...09fbb1`](./contracts/base-8453/0x78423bfc5053102a3087daa978c2117a6809fbb1/) | EscrowSeam | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x003ee5...21f2f2`](./contracts/base-8453/0x003ee5e3b38cda6775d20a32080850106321f2f2/) | FeeKeeper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xcebbf1...877972`](./contracts/base-8453/0xcebbf1a8e6cdd813e7efce223a4820d7d2877972/) | FlashLoanLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x918e3d...174323`](./contracts/base-8453/0x918e3dfabd8c69a54d542cdeea4a3e0616174323/) | L2Pool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5c37eb...b3e351`](./contracts/ethereum-1/0x5c37eb148d4a261acd101e2b997a0f163fb3e351/) | LeverageManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x38ba21...5ec3a8`](./contracts/base-8453/0x38ba21c6bf31df1b1798fced07b4e9b07c5ec3a8/) | LeverageManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4466d5...0a0352`](./contracts/ethereum-1/0x4466d52b714ef32657db89ec61fab1b7e30a0352/) | LeverageTokenDeploymentBatcher | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x44659e...cf2dfa`](./contracts/base-8453/0x44659e741a09c0d3c4756e04c559772596cf2dfa/) | LiquidationLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x31da38...a378d6`](./contracts/base-8453/0x31da38f0eb1528212de20a3668b795e83ea378d6/) | LoanLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0fbc23...1b255e`](./contracts/base-8453/0x0fbc23eefeae1ae5cc929b97bce88b11261b255e/) | LoopStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x258730...ea8a4e`](./contracts/base-8453/0x258730e23cf2f25887cb962d32bd10b878ea8a4e/) | LoopStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2fb1be...ee78f4`](./contracts/base-8453/0x2fb1bea0a63f77efa77619b903b2830b52ee78f4/) | LoopStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x588313...e4eac5`](./contracts/base-8453/0x588313d69f6ca189029d83a3012fd3c40be4eac5/) | LoopStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x5ed616...c09c8a`](./contracts/base-8453/0x5ed6167232b937b0a5c84b49031139f405c09c8a/) | LoopStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x68dfad...80291e`](./contracts/base-8453/0x68dfad1a72c63897fec5fb9de9fdb5670280291e/) | LoopStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x16d02e...fd22e1`](./contracts/ethereum-1/0x16d02ebd89988cad1ce945807b963ab7a9fd22e1/) | MulticallExecutor | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x16e485...bda6cf`](./contracts/base-8453/0x16e48501634dfbb52f556430d788c110e5bda6cf/) | Pool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0e02eb...39f3a0`](./contracts/base-8453/0x0e02eb705be325407707662c6f6d3466e939f3a0/) | PoolAddressesProvider | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xdd59cd...11dd6b`](./contracts/base-8453/0xdd59cd12c455a1c091331c55423c9e4e5111dd6b/) | PoolLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0a4490...d6c127`](./contracts/ethereum-1/0x0a4490233fd6ea02873af11c744d286dc3d6c127/) | RebalanceAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xa530e6...46dd32`](./contracts/base-8453/0xa530e6ea09eb118a1549aca73731379ba546dd32/) | RebalanceAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x07a4b1...f8a711`](./contracts/base-8453/0x07a4b168f9dae741b3b88bf6424434655af8a711/) | RebalanceLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1c7a46...88cd85`](./contracts/base-8453/0x1c7a460413dd4e964f96d8dfc56e7223ce88cd85/) | Seam | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xff7c1f...5e7847`](./contracts/base-8453/0xff7c1fdc6294a42104896854c5483711a45e7847/) | Seam | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x03eeed...dd9cfa`](./contracts/base-8453/0x03eeedf76a007dce47b3a0044d9f0a04badd9cfa/) | SeamEmissionManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1fdfc3...e38f9c`](./contracts/base-8453/0x1fdfc3872a70a7af5a818f27bb14fbea4ee38f9c/) | SeamEmissionManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x04faa2...e761b6`](./contracts/base-8453/0x04faa2826dbb38a7a4e9a5e3db26b9e389e761b6/) | SeamGovernorV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6b66cc...e726ba`](./contracts/ethereum-1/0x6b66ccd1340c479b07b390d326eadcbb84e726ba/) | SeamL1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x13f5b4...b35e6f`](./contracts/base-8453/0x13f5b49217f330167d6350530f6185a75ab35e6f/) | SeamTimelockController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xa96448...b16718`](./contracts/base-8453/0xa96448469520666edc351eff7676af2247b16718/) | SeamTimelockController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0f471d...107f54`](./contracts/base-8453/0x0f471d88f31ab0be2ff1d0b1ff5f30a2e3107f54/) | SeamVestingWallet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0fedae...13dbc2`](./contracts/base-8453/0x0fedaedd6ba892921cf4728c5e2c20ffc613dbc2/) | SeamVestingWallet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x204fe7...b5406a`](./contracts/base-8453/0x204fe70b59c32f05bcf60c445d37876b2fb5406a/) | SeamVestingWallet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x216cc6...80d5b0`](./contracts/base-8453/0x216cc63cec6b6219b6bae7d07e00b9301780d5b0/) | SeamVestingWallet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x290067...1f0d72`](./contracts/base-8453/0x29006739ca8b9febf5c32bf5aae1e272cd1f0d72/) | SeamVestingWallet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x316c05...fe9d6a`](./contracts/base-8453/0x316c05085c328189a3436cfadf8ba76babfe9d6a/) | SeamVestingWallet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x33e372...01c261`](./contracts/base-8453/0x33e372861bea0966c1b121f26f5e9c918c01c261/) | SeamVestingWallet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x348c2e...164408`](./contracts/base-8453/0x348c2e1bdb4f99e3b3e87ac18e0b2a3704164408/) | SeamVestingWallet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x35aa3c...2efffe`](./contracts/base-8453/0x35aa3c2d426ad68c0a7f2ad968b68487a22efffe/) | SeamVestingWallet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x37e3f6...92d33c`](./contracts/base-8453/0x37e3f6df10a3ded02a7b9ba38b6e80fdd592d33c/) | SeamVestingWallet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x393267...bad29f`](./contracts/base-8453/0x3932674032b0fc4b816530d7a8d0961a3dbad29f/) | SeamVestingWallet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x3b5e0a...42a691`](./contracts/base-8453/0x3b5e0ab790a3e4fd73f7f345f65d96178242a691/) | SeamVestingWallet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x435846...f18514`](./contracts/base-8453/0x435846abbbb4c9ec67a1517716cdc853ebf18514/) | SeamVestingWallet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x4e7fad...6332ea`](./contracts/base-8453/0x4e7fada38a8d7496ab940f4c03185d5b7a6332ea/) | SeamVestingWallet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x51ddfe...a14e04`](./contracts/base-8453/0x51ddfe09b8cdc7d8200ad171face13aacda14e04/) | SeamVestingWallet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x597ce0...3952b6`](./contracts/base-8453/0x597ce0e9cf5ccb070a37efbaca2fd13c193952b6/) | SeamVestingWallet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x5f8a82...7b5408`](./contracts/base-8453/0x5f8a82b8ec7c17d75ccafb84fb5e95f6a87b5408/) | SeamVestingWallet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x61380a...809726`](./contracts/base-8453/0x61380a201f3e9491b3e9a8193bb8634724809726/) | SeamVestingWallet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x614703...c9396f`](./contracts/base-8453/0x6147036c8315b178dfca90524e2ca5572bc9396f/) | SeamVestingWallet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x66345a...c8a5dc`](./contracts/base-8453/0x66345a825654a605f006cda37cb621cc00c8a5dc/) | SeamVestingWallet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x67e0ea...961ab0`](./contracts/base-8453/0x67e0ea38382fcd2df74931bacc0af96954961ab0/) | SeamVestingWallet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x6f4146...e11b0a`](./contracts/base-8453/0x6f4146040bf95f95bf9fbf0ed115133fcde11b0a/) | SeamVestingWallet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x734614...735254`](./contracts/base-8453/0x734614ea6c57924dc1a9efb2e0d6b78cd7735254/) | SeamVestingWallet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x78718b...0a6993`](./contracts/base-8453/0x78718b683ad01849be10702f268a72feea0a6993/) | SeamVestingWallet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x7b2159...d10e03`](./contracts/base-8453/0x7b21591e9534ca3a6c155dca5e135cdeced10e03/) | SeamVestingWallet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x8023d7...bd908b`](./contracts/base-8453/0x8023d7bbed97e2a9736a91e10a664e1981bd908b/) | SeamVestingWallet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x80fad4...4e4f52`](./contracts/base-8453/0x80fad4184506f1759d472bac0f21d9d01b4e4f52/) | SeamVestingWallet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x96de17...5661bb`](./contracts/base-8453/0x96de174a0c407afceed5c2d8c8a671b7b55661bb/) | SeamVestingWallet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xb5dd3b...e03808`](./contracts/base-8453/0xb5dd3b0fe640b5f2cd4e08cccc28c14469e03808/) | SeamVestingWallet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xc4ae2b...122151`](./contracts/base-8453/0xc4ae2b6de2a26420fd0a41cb07a8c01d42122151/) | SeamVestingWallet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xf4c7d3...2d5c32`](./contracts/base-8453/0xf4c7d3bab6c0b1c0d0a3db9f585670b1612d5c32/) | SeamVestingWallet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x017167...eafa7f`](./contracts/base-8453/0x017167a33aa3665e90ccc21fd35aef60deeafa7f/) | SeamVestingWalletV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x04586b...d011b3`](./contracts/base-8453/0x04586b12c6a2010f1054bebc229aa73a46d011b3/) | SeamVestingWalletV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x059bcf...1f6072`](./contracts/base-8453/0x059bcfecb80de3ee07efcdc40959f148f81f6072/) | SeamVestingWalletV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x09b53e...b0bfe8`](./contracts/base-8453/0x09b53e8ea8659061a290203ba0fdca5f4eb0bfe8/) | SeamVestingWalletV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x10e2ff...266830`](./contracts/base-8453/0x10e2ff2f952bea6bb7d11185b4f6ad51b7266830/) | SeamVestingWalletV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x175c05...5a7333`](./contracts/base-8453/0x175c051785e0266cec607c16772b5bef1e5a7333/) | SeamVestingWalletV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x195913...c98a85`](./contracts/base-8453/0x1959139f7a53819b2ae7e550a72f71db0ec98a85/) | SeamVestingWalletV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1bbd55...da2235`](./contracts/base-8453/0x1bbd5560a483e10098500eb43c36b4719cda2235/) | SeamVestingWalletV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1e7f54...523cc6`](./contracts/base-8453/0x1e7f54b7d1a2fdd8ae738ec463d2d7b7da523cc6/) | SeamVestingWalletV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x54cd1c...44d586`](./contracts/base-8453/0x54cd1c5a328436099a506b39c4b5116de544d586/) | SeamVestingWalletV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x6e7b0d...0b0ff5`](./contracts/base-8453/0x6e7b0da9a0496b15ea68e0f1085779f9440b0ff5/) | SeamVestingWalletV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x7cd268...3fa730`](./contracts/base-8453/0x7cd268a7ca70594fd09e04bcba8bb5c8af3fa730/) | SeamVestingWalletV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x82ccc4...a02637`](./contracts/base-8453/0x82ccc4c93fce28092ea205b3352fdee19aa02637/) | SeamVestingWalletV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x95029e...3f5133`](./contracts/base-8453/0x95029e427a1e8b7ada3471a493054058193f5133/) | SeamVestingWalletV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x9ce33c...53dd7e`](./contracts/base-8453/0x9ce33cc39bddc13730469d7186f16cf65a53dd7e/) | SeamVestingWalletV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x73f084...7172a4`](./contracts/base-8453/0x73f0849756f6a79c1d536b7abab1e6955f7172a4/) | StakedToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xcc76e7...56f54b`](./contracts/base-8453/0xcc76e71283963a72d005c5b48f4ab2218d56f54b/) | SupplyLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x04550e...62c54e`](./contracts/base-8453/0x04550e50f4753352f233aba53f094fc3cd62c54e/) | Swapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x08561d...dc479d`](./contracts/base-8453/0x08561d280654790861591ffaf68ed193addc479d/) | Swapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x293982...55839e`](./contracts/base-8453/0x2939821f3a9e5172d443def0749d58cc1655839e/) | Swapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x4db264...1dd531`](./contracts/base-8453/0x4db264876bf878a4d0375e7640c6d10fae1dd531/) | Token | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xc4d677...183b52`](./contracts/base-8453/0xc4d677c0ed9e1cf2f1a53f755d7adbbbcb183b52/) | Token | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x71d90c...cf1b5d`](./contracts/base-8453/0x71d90c266b9eb9a41fe8f875ddbddc3fadcf1b5d/) | TransparentProxyFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x5c37eb...b3e351`](./contracts/base-8453/0x5c37eb148d4a261acd101e2b997a0f163fb3e351/) | VeloraAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x3e8707...da2c5f`](./contracts/base-8453/0x3e8707557d4ad25d6042f590bcf8a06071da2c5f/) | WrappedERC20PermissionedDeposit | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xaeeb38...aa1af3`](./contracts/base-8453/0xaeeb3898ede6a6e86864688383e211132baa1af3/) | WrappedTokenGatewayV3 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 98 |
| upstream | 3 |
| standard_library | 1 |
| needs_review | 11 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=12

Fork inheritance lineage and inherited audits are included when available.
