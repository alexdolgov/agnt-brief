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
| LeverageRouter | adapter | base | n/a | 3 deployments: ethereum `0xb0764de7eef0ac69855c431334b7bc51a96e6dba`; base [`0x00c66934ebca0f2a845812bc368b230f6da11a5c`](./contracts/base-8453/0x00c66934ebca0f2a845812bc368b230f6da11a5c/); base `0xdba92fc3dc10a17b96b6e807a908155c389a887c` | ✅ Audited |
| MorphoLendingAdapter | adapter | ethereum | n/a | 6 deployments: ethereum [`0x00c66934ebca0f2a845812bc368b230f6da11a5c`](./contracts/ethereum-1/0x00c66934ebca0f2a845812bc368b230f6da11a5c/); ethereum `0xb224f589297a5a207e6069de5dafd4b120129817`; ethereum `0xcb1effb6f6e531137ccc1508a8d4982e873aee58`; ethereum `0xe33eaf6ee64f4b9353ff2ce3748fa05eeb9bd809`; ethereum `0xe9a32ae2d53459ac490f1dbe0cfd0786fb298f1f`; base `0x9558b339bb03246c44c57fcee184645dbfab253f` | ✅ Audited |
| MorphoLendingAdapterFactory | adapter | ethereum | n/a | [`0xce05fbed9260810bdded179adfdaf737be7ded71`](./contracts/ethereum-1/0xce05fbed9260810bdded179adfdaf737be7ded71/) | ✅ Audited |
| PricingAdapter | adapter | ethereum | n/a | 2 deployments: ethereum [`0x44ccebea0dac17105e91a59e182f65f8d176c88f`](./contracts/ethereum-1/0x44ccebea0dac17105e91a59e182f65f8d176c88f/); base `0xce05fbed9260810bdded179adfdaf737be7ded71` | ✅ Audited |
| SwapAdapter | adapter | base | n/a | [`0xfdf71e2c2b34cd1f8bb852e7c55e8b926fe38942`](./contracts/base-8453/0xfdf71e2c2b34cd1f8bb852e7c55e8b926fe38942/) | ✅ Audited |

### ⚠️ Verified + Unaudited (99)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AaveOracle | operational_periphery | base | n/a | [`0xfdd4e83890bccd1fbf9b10d71a5cc0a738753b01`](./contracts/base-8453/0xfdd4e83890bccd1fbf9b10d71a5cc0a738753b01/) | ⚠️ Unaudited |
| BorrowLogic | unknown | base | n/a | 2 deployments: base [`0xa409495a6fb69b06b82f7a68766266357743d6fb`](./contracts/base-8453/0xa409495a6fb69b06b82f7a68766266357743d6fb/); base `0xac0b0dd4086df59b966ec4d71235f249def3f70a` | ⚠️ Unaudited |
| BridgeLogic | unknown | base | n/a | 2 deployments: base [`0x1d9eca99a4b4ab73fa1181f617107c66e1d44551`](./contracts/base-8453/0x1d9eca99a4b4ab73fa1181f617107c66e1d44551/); base `0x76402a68a7d851fa990ceca747841cc451c42f18` | ⚠️ Unaudited |
| CalldataLogic | unknown | base | n/a | [`0x2182b918f29ee7d621128dde8dc07efaa5fe8d2e`](./contracts/base-8453/0x2182b918f29ee7d621128dde8dc07efaa5fe8d2e/) | ⚠️ Unaudited |
| DeployLoopStrategyETHoverUSDCGuardianPayload | unknown | base | n/a | [`0x391a369b6904fef62dca2785cbfc0e6e20bc0afa`](./contracts/base-8453/0x391a369b6904fef62dca2785cbfc0e6e20bc0afa/) | ⚠️ Unaudited |
| DeployLoopStrategyUSDCoverETHGuardianPayload | unknown | base | n/a | [`0xe7723279a8a142d95a3fffc98f70f574ee89aca8`](./contracts/base-8453/0xe7723279a8a142d95a3fffc98f70f574ee89aca8/) | ⚠️ Unaudited |
| EModeLogic | unknown | base | n/a | 2 deployments: base [`0x5d8df7515493a804da1d16c73d75bd9479d49bad`](./contracts/base-8453/0x5d8df7515493a804da1d16c73d75bd9479d49bad/); base `0x683271158b9a52a5e1e5345245a721c9455ab529` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | base | n/a | 2 deployments: base [`0x0661dff721b459510c81c4c737fa5ac115e4950d`](./contracts/base-8453/0x0661dff721b459510c81c4c737fa5ac115e4950d/); base `0x07dfe9525a5d274d6f3e906e6a4efa7f066c4926` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | base | n/a | 2 deployments: base [`0x4311dc38e44f225edc38ed5a081715f7b7189134`](./contracts/base-8453/0x4311dc38e44f225edc38ed5a081715f7b7189134/); base `0xa6d3fce31854049398eb47cf9a995ee871450f98` | ⚠️ Unaudited |
| ERC20BalanceSplitterTwoPayee | operational_periphery | base | n/a | [`0xfbc092a58479439a301a5b95a981e969a0d8b205`](./contracts/base-8453/0xfbc092a58479439a301a5b95a981e969a0d8b205/) | ⚠️ Unaudited |
| EscrowSeam | unknown | base | n/a | 2 deployments: base [`0x78423bfc5053102a3087daa978c2117a6809fbb1`](./contracts/base-8453/0x78423bfc5053102a3087daa978c2117a6809fbb1/); base `0x998e44232bef4f8b033e5a5175bdc97f2b10d5e5` | ⚠️ Unaudited |
| FeeKeeper | unknown | base | n/a | 2 deployments: base [`0x003ee5e3b38cda6775d20a32080850106321f2f2`](./contracts/base-8453/0x003ee5e3b38cda6775d20a32080850106321f2f2/); base `0x21033e28be63a4f0ea7b1c7339733f511fb8d65b` | ⚠️ Unaudited |
| FlashLoanLogic | unknown | base | n/a | 2 deployments: base [`0xcebbf1a8e6cdd813e7efce223a4820d7d2877972`](./contracts/base-8453/0xcebbf1a8e6cdd813e7efce223a4820d7d2877972/); base `0xf9853a2d58a516c605371f7da19252f55c0644ff` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | base | n/a | [`0xa1b5f2cc9b407177cd8a4acf1699fa0b99955a22`](./contracts/base-8453/0xa1b5f2cc9b407177cd8a4acf1699fa0b99955a22/) | ⚠️ Unaudited |
| L2Pool | core_logic | base | n/a | [`0x918e3dfabd8c69a54d542cdeea4a3e0616174323`](./contracts/base-8453/0x918e3dfabd8c69a54d542cdeea4a3e0616174323/) | ⚠️ Unaudited |
| LeverageManager | unknown | ethereum | n/a | 2 deployments: ethereum [`0x5c37eb148d4a261acd101e2b997a0f163fb3e351`](./contracts/ethereum-1/0x5c37eb148d4a261acd101e2b997a0f163fb3e351/); ethereum `0x9d04f65b58ced1fddef50aec8b0b3d64fe64220e` | ⚠️ Unaudited |
| LeverageManager | unknown | base | n/a | 2 deployments: base [`0x38ba21c6bf31df1b1798fced07b4e9b07c5ec3a8`](./contracts/base-8453/0x38ba21c6bf31df1b1798fced07b4e9b07c5ec3a8/); base `0xfe9101349354e278970489f935a54905de2e1856` | ⚠️ Unaudited |
| LeverageTokenDeploymentBatcher | token | ethereum | n/a | [`0x4466d52b714ef32657db89ec61fab1b7e30a0352`](./contracts/ethereum-1/0x4466d52b714ef32657db89ec61fab1b7e30a0352/) | ⚠️ Unaudited |
| LiquidationLogic | unknown | base | n/a | 2 deployments: base [`0x44659e741a09c0d3c4756e04c559772596cf2dfa`](./contracts/base-8453/0x44659e741a09c0d3c4756e04c559772596cf2dfa/); base `0x524adcceede99f8fb0d654704f48ec2f0744b837` | ⚠️ Unaudited |
| LoanLogic | unknown | base | n/a | 4 deployments: base [`0x31da38f0eb1528212de20a3668b795e83ea378d6`](./contracts/base-8453/0x31da38f0eb1528212de20a3668b795e83ea378d6/); base `0x3e61ba3725321eed93c95a3f70765f8110e4acd0`; base `0x7cbb6f831ba59632f11a5eab0f6b8561470ca955`; base `0x9bb43bf6b4b5e43580ab67c93a49802657904c0e` | ⚠️ Unaudited |
| LoopStrategy | unknown | base | n/a | 2 deployments: base [`0x0fbc23eefeae1ae5cc929b97bce88b11261b255e`](./contracts/base-8453/0x0fbc23eefeae1ae5cc929b97bce88b11261b255e/); base `0x22850a96b0889aa86017d167af5e93bb39341571` | ⚠️ Unaudited |
| LoopStrategy | core_logic | base | n/a | [`0x258730e23cf2f25887cb962d32bd10b878ea8a4e`](./contracts/base-8453/0x258730e23cf2f25887cb962d32bd10b878ea8a4e/) | ⚠️ Unaudited |
| LoopStrategy | core_logic | base | n/a | [`0x2fb1bea0a63f77efa77619b903b2830b52ee78f4`](./contracts/base-8453/0x2fb1bea0a63f77efa77619b903b2830b52ee78f4/) | ⚠️ Unaudited |
| LoopStrategy | unknown | base | n/a | 7 deployments: base [`0x588313d69f6ca189029d83a3012fd3c40be4eac5`](./contracts/base-8453/0x588313d69f6ca189029d83a3012fd3c40be4eac5/); base `0x9c764c663f8b377bacc3bce7f1f480a9417cdb67`; base `0xa70c94ee51fb4ddfafa5dc9c30580c25878ca97b`; base `0xb94799306c30c091779f4801cc4cd293f7f993b7`; base `0xbff0e0262a427c3dd20af6ab5a8edf27d351b2d6`; base `0xc82a728429f112e85c827c7c8734c9210c3cf8ea`; base `0xcefeb99addeb0f408237379eb355cf96ba6fd328` | ⚠️ Unaudited |
| LoopStrategy | core_logic | base | n/a | [`0x5ed6167232b937b0a5c84b49031139f405c09c8a`](./contracts/base-8453/0x5ed6167232b937b0a5c84b49031139f405c09c8a/) | ⚠️ Unaudited |
| LoopStrategy | core_logic | base | n/a | [`0x68dfad1a72c63897fec5fb9de9fdb5670280291e`](./contracts/base-8453/0x68dfad1a72c63897fec5fb9de9fdb5670280291e/) | ⚠️ Unaudited |
| MetaMorphoV1_1 | unknown | base | n/a | 3 deployments: base [`0x27d8c7273fd3fcc6956a0b370ce5fd4a7fc65c18`](./contracts/base-8453/0x27d8c7273fd3fcc6956a0b370ce5fd4a7fc65c18/); base `0x5a47c803488fe2bb0a0eaaf346b420e4df22f3c7`; base `0x616a4e1db48e22028f6bbf20444cd3b8e3273738` | ⚠️ Unaudited |
| MulticallExecutor | periphery | ethereum | n/a | 2 deployments: ethereum [`0x16d02ebd89988cad1ce945807b963ab7a9fd22e1`](./contracts/ethereum-1/0x16d02ebd89988cad1ce945807b963ab7a9fd22e1/); base `0x9d04f65b58ced1fddef50aec8b0b3d64fe64220e` | ⚠️ Unaudited |
| Pool | unknown | base | n/a | [`0x16e48501634dfbb52f556430d788c110e5bda6cf`](./contracts/base-8453/0x16e48501634dfbb52f556430d788c110e5bda6cf/) | ⚠️ Unaudited |
| PoolAddressesProvider | core_logic | base | n/a | [`0x0e02eb705be325407707662c6f6d3466e939f3a0`](./contracts/base-8453/0x0e02eb705be325407707662c6f6d3466e939f3a0/) | ⚠️ Unaudited |
| PoolLogic | unknown | base | n/a | 2 deployments: base [`0xdd59cd12c455a1c091331c55423c9e4e5111dd6b`](./contracts/base-8453/0xdd59cd12c455a1c091331c55423c9e4e5111dd6b/); base `0xe51329660d86b116b77f8af76dd0ff04e3309805` | ⚠️ Unaudited |
| RebalanceAdapter | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0a4490233fd6ea02873af11c744d286dc3d6c127`](./contracts/ethereum-1/0x0a4490233fd6ea02873af11c744d286dc3d6c127/); ethereum `0x1d0c191a0fe2917e244826d3a8d0a64503efaec8` | ⚠️ Unaudited |
| RebalanceAdapter | unknown | base | n/a | 2 deployments: base [`0xa530e6ea09eb118a1549aca73731379ba546dd32`](./contracts/base-8453/0xa530e6ea09eb118a1549aca73731379ba546dd32/); base `0xd923b2522e1f369e207d151cfe6a1bcd8ec24912` | ⚠️ Unaudited |
| RebalanceLogic | unknown | base | n/a | 4 deployments: base [`0x07a4b168f9dae741b3b88bf6424434655af8a711`](./contracts/base-8453/0x07a4b168f9dae741b3b88bf6424434655af8a711/); base `0x3f7dd8bb37465d3944e45de7c0177af0f6ad0223`; base `0xab965ebdb1fb5254c4f8fb8b0b9151abd951ea3e`; base `0xc2cecbefb6ea8387ad1112ae2975f6bffd4dfaae` | ⚠️ Unaudited |
| Seam | unknown | base | n/a | 2 deployments: base [`0x1c7a460413dd4e964f96d8dfc56e7223ce88cd85`](./contracts/base-8453/0x1c7a460413dd4e964f96d8dfc56e7223ce88cd85/); base `0x57b4b7f830244fc854cd1123ff14afd4c1aefd3f` | ⚠️ Unaudited |
| Seam | adapter | base | n/a | [`0xff7c1fdc6294a42104896854c5483711a45e7847`](./contracts/base-8453/0xff7c1fdc6294a42104896854c5483711a45e7847/) | ⚠️ Unaudited |
| SeamEmissionManager | unknown | base | n/a | 2 deployments: base [`0x03eeedf76a007dce47b3a0044d9f0a04badd9cfa`](./contracts/base-8453/0x03eeedf76a007dce47b3a0044d9f0a04badd9cfa/); base `0x57460dc21bf1574b8e6e00d372b8ca5ec41b3955` | ⚠️ Unaudited |
| SeamEmissionManager | unknown | base | n/a | 2 deployments: base [`0x1fdfc3872a70a7af5a818f27bb14fbea4ee38f9c`](./contracts/base-8453/0x1fdfc3872a70a7af5a818f27bb14fbea4ee38f9c/); base `0x785c979ee8709060b3f71aef4f2c09229db90778` | ⚠️ Unaudited |
| SeamGovernorV2 | unknown | base | n/a | 3 deployments: base [`0x04faa2826dbb38a7a4e9a5e3db26b9e389e761b6`](./contracts/base-8453/0x04faa2826dbb38a7a4e9a5e3db26b9e389e761b6/); base `0x8768c789c6df8af1a92d96de823b4f80010db294`; base `0xc3a36d72be57866ec4751d709b5bef67efa9baef` | ⚠️ Unaudited |
| SeamL1 | unknown | ethereum | n/a | [`0x6b66ccd1340c479b07b390d326eadcbb84e726ba`](./contracts/ethereum-1/0x6b66ccd1340c479b07b390d326eadcbb84e726ba/) | ⚠️ Unaudited |
| SeamTimelockController | unknown | base | n/a | 2 deployments: base [`0x13f5b49217f330167d6350530f6185a75ab35e6f`](./contracts/base-8453/0x13f5b49217f330167d6350530f6185a75ab35e6f/); base `0x639d2dd24304ac2e6a691d8c1cff4a2665925fee` | ⚠️ Unaudited |
| SeamTimelockController | unknown | base | n/a | 2 deployments: base [`0xa96448469520666edc351eff7676af2247b16718`](./contracts/base-8453/0xa96448469520666edc351eff7676af2247b16718/); base `0xbe170d7d3cda6e9db39e012d0fe25ab83fff790d` | ⚠️ Unaudited |
| SeamVestingWallet | unknown | base | n/a | 2 deployments: base [`0x0f471d88f31ab0be2ff1d0b1ff5f30a2e3107f54`](./contracts/base-8453/0x0f471d88f31ab0be2ff1d0b1ff5f30a2e3107f54/); base `0xb8835b0fe138870e28219cd6973fa8118f660492` | ⚠️ Unaudited |
| SeamVestingWallet | unknown | base | n/a | 2 deployments: base [`0x0fedaedd6ba892921cf4728c5e2c20ffc613dbc2`](./contracts/base-8453/0x0fedaedd6ba892921cf4728c5e2c20ffc613dbc2/); base `0x260fc80a03a4512d1ca79746a55153b027ea8147` | ⚠️ Unaudited |
| SeamVestingWallet | unknown | base | n/a | 2 deployments: base [`0x204fe70b59c32f05bcf60c445d37876b2fb5406a`](./contracts/base-8453/0x204fe70b59c32f05bcf60c445d37876b2fb5406a/); base `0xac3121105b9173488b182f15b35b73f66938ce0f` | ⚠️ Unaudited |
| SeamVestingWallet | unknown | base | n/a | 2 deployments: base [`0x216cc63cec6b6219b6bae7d07e00b9301780d5b0`](./contracts/base-8453/0x216cc63cec6b6219b6bae7d07e00b9301780d5b0/); base `0xfbe83d3d319605eeb3112bc8ffdc234a9c904f75` | ⚠️ Unaudited |
| SeamVestingWallet | unknown | base | n/a | 2 deployments: base [`0x29006739ca8b9febf5c32bf5aae1e272cd1f0d72`](./contracts/base-8453/0x29006739ca8b9febf5c32bf5aae1e272cd1f0d72/); base `0x430d6f287cd26d6112c70315dae23e0689ebacb7` | ⚠️ Unaudited |
| SeamVestingWallet | unknown | base | n/a | 2 deployments: base [`0x316c05085c328189a3436cfadf8ba76babfe9d6a`](./contracts/base-8453/0x316c05085c328189a3436cfadf8ba76babfe9d6a/); base `0x5a61a102ff9fc960a8be79bdd9cb0c8f42ec5713` | ⚠️ Unaudited |
| SeamVestingWallet | unknown | base | n/a | 2 deployments: base [`0x33e372861bea0966c1b121f26f5e9c918c01c261`](./contracts/base-8453/0x33e372861bea0966c1b121f26f5e9c918c01c261/); base `0x93b1d6c6bd373b995e1c378afae5235f0ed838fb` | ⚠️ Unaudited |
| SeamVestingWallet | unknown | base | n/a | 2 deployments: base [`0x348c2e1bdb4f99e3b3e87ac18e0b2a3704164408`](./contracts/base-8453/0x348c2e1bdb4f99e3b3e87ac18e0b2a3704164408/); base `0x81b50bf6eff55869344ead370b115214ff6dda5b` | ⚠️ Unaudited |
| SeamVestingWallet | unknown | base | n/a | 2 deployments: base [`0x35aa3c2d426ad68c0a7f2ad968b68487a22efffe`](./contracts/base-8453/0x35aa3c2d426ad68c0a7f2ad968b68487a22efffe/); base `0x932d779f46fcd37d946ecdcf85905eaa5929d19c` | ⚠️ Unaudited |
| SeamVestingWallet | unknown | base | n/a | 2 deployments: base [`0x37e3f6df10a3ded02a7b9ba38b6e80fdd592d33c`](./contracts/base-8453/0x37e3f6df10a3ded02a7b9ba38b6e80fdd592d33c/); base `0x7acd19330a21b45a199265f70986f78b1a485903` | ⚠️ Unaudited |
| SeamVestingWallet | unknown | base | n/a | 2 deployments: base [`0x3932674032b0fc4b816530d7a8d0961a3dbad29f`](./contracts/base-8453/0x3932674032b0fc4b816530d7a8d0961a3dbad29f/); base `0x511f231e8867765d201d2c7bcba898276f1ec7ac` | ⚠️ Unaudited |
| SeamVestingWallet | unknown | base | n/a | 2 deployments: base [`0x3b5e0ab790a3e4fd73f7f345f65d96178242a691`](./contracts/base-8453/0x3b5e0ab790a3e4fd73f7f345f65d96178242a691/); base `0x7b1293002f9685fad8eb552437218145155d973a` | ⚠️ Unaudited |
| SeamVestingWallet | unknown | base | n/a | 2 deployments: base [`0x435846abbbb4c9ec67a1517716cdc853ebf18514`](./contracts/base-8453/0x435846abbbb4c9ec67a1517716cdc853ebf18514/); base `0xdf90ed2581a0fb2e6e8c6532d99e71fb0e4dff9f` | ⚠️ Unaudited |
| SeamVestingWallet | unknown | base | n/a | 4 deployments: base [`0x4e7fada38a8d7496ab940f4c03185d5b7a6332ea`](./contracts/base-8453/0x4e7fada38a8d7496ab940f4c03185d5b7a6332ea/); base `0xa9d2a060bbb51e8626c5b40a3b145ead41947168`; base `0xb2118bf3411030db979ca385e497aca4e3a07e8b`; base `0xf1c220ac75a8e50c3e7e923d2c03d23ff601e14c` | ⚠️ Unaudited |
| SeamVestingWallet | unknown | base | n/a | 2 deployments: base [`0x51ddfe09b8cdc7d8200ad171face13aacda14e04`](./contracts/base-8453/0x51ddfe09b8cdc7d8200ad171face13aacda14e04/); base `0xc5a269ba4f3aa25f6883eb0531a2cdf6325c8103` | ⚠️ Unaudited |
| SeamVestingWallet | unknown | base | n/a | 2 deployments: base [`0x597ce0e9cf5ccb070a37efbaca2fd13c193952b6`](./contracts/base-8453/0x597ce0e9cf5ccb070a37efbaca2fd13c193952b6/); base `0x77d0046bb01b7ef17d780f6259d2055c2c16451a` | ⚠️ Unaudited |
| SeamVestingWallet | unknown | base | n/a | 2 deployments: base [`0x5f8a82b8ec7c17d75ccafb84fb5e95f6a87b5408`](./contracts/base-8453/0x5f8a82b8ec7c17d75ccafb84fb5e95f6a87b5408/); base `0xcbc78472f58b7b526ff91cc33d73e5b207391d6e` | ⚠️ Unaudited |
| SeamVestingWallet | unknown | base | n/a | 2 deployments: base [`0x61380a201f3e9491b3e9a8193bb8634724809726`](./contracts/base-8453/0x61380a201f3e9491b3e9a8193bb8634724809726/); base `0x91f7d6ea6d001aa3a31354d81decf5e22835a9c1` | ⚠️ Unaudited |
| SeamVestingWallet | unknown | base | n/a | 2 deployments: base [`0x6147036c8315b178dfca90524e2ca5572bc9396f`](./contracts/base-8453/0x6147036c8315b178dfca90524e2ca5572bc9396f/); base `0xe15943fe957c0a8e724447e497686764240a0427` | ⚠️ Unaudited |
| SeamVestingWallet | unknown | base | n/a | 2 deployments: base [`0x66345a825654a605f006cda37cb621cc00c8a5dc`](./contracts/base-8453/0x66345a825654a605f006cda37cb621cc00c8a5dc/); base `0x91a2fbe7beeac4f601974d67a612cfae21846235` | ⚠️ Unaudited |
| SeamVestingWallet | unknown | base | n/a | 2 deployments: base [`0x67e0ea38382fcd2df74931bacc0af96954961ab0`](./contracts/base-8453/0x67e0ea38382fcd2df74931bacc0af96954961ab0/); base `0xd8133539579b5e005c6e68b505f6b90d3b85af2f` | ⚠️ Unaudited |
| SeamVestingWallet | unknown | base | n/a | 2 deployments: base [`0x6f4146040bf95f95bf9fbf0ed115133fcde11b0a`](./contracts/base-8453/0x6f4146040bf95f95bf9fbf0ed115133fcde11b0a/); base `0xfc233cf59f4d07c698983ca6cbd517647380f2eb` | ⚠️ Unaudited |
| SeamVestingWallet | unknown | base | n/a | 2 deployments: base [`0x734614ea6c57924dc1a9efb2e0d6b78cd7735254`](./contracts/base-8453/0x734614ea6c57924dc1a9efb2e0d6b78cd7735254/); base `0xb4f2031ac1b65f6ec12a94cd54f67e6c9cd6859e` | ⚠️ Unaudited |
| SeamVestingWallet | unknown | base | n/a | 2 deployments: base [`0x78718b683ad01849be10702f268a72feea0a6993`](./contracts/base-8453/0x78718b683ad01849be10702f268a72feea0a6993/); base `0xc0e23fe723ee837469f091ad0f6268e55e635285` | ⚠️ Unaudited |
| SeamVestingWallet | unknown | base | n/a | 2 deployments: base [`0x7b21591e9534ca3a6c155dca5e135cdeced10e03`](./contracts/base-8453/0x7b21591e9534ca3a6c155dca5e135cdeced10e03/); base `0x96bbed7247227df6afcc5eeeb7354704354f49e9` | ⚠️ Unaudited |
| SeamVestingWallet | unknown | base | n/a | 2 deployments: base [`0x8023d7bbed97e2a9736a91e10a664e1981bd908b`](./contracts/base-8453/0x8023d7bbed97e2a9736a91e10a664e1981bd908b/); base `0xf61fbc7c43ddbb7b8f2d01de9d2021f489bfd675` | ⚠️ Unaudited |
| SeamVestingWallet | unknown | base | n/a | 2 deployments: base [`0x80fad4184506f1759d472bac0f21d9d01b4e4f52`](./contracts/base-8453/0x80fad4184506f1759d472bac0f21d9d01b4e4f52/); base `0xb44e362ce34f04eddebed2c4a4df966b800a1a80` | ⚠️ Unaudited |
| SeamVestingWallet | unknown | base | n/a | 2 deployments: base [`0x96de174a0c407afceed5c2d8c8a671b7b55661bb`](./contracts/base-8453/0x96de174a0c407afceed5c2d8c8a671b7b55661bb/); base `0xdc37b7849289aa871e83a49f402dfa6bbedfa399` | ⚠️ Unaudited |
| SeamVestingWallet | unknown | base | n/a | 2 deployments: base [`0xb5dd3b0fe640b5f2cd4e08cccc28c14469e03808`](./contracts/base-8453/0xb5dd3b0fe640b5f2cd4e08cccc28c14469e03808/); base `0xbac77ffc3f59e45d94017b09e7163a5b0be08b8a` | ⚠️ Unaudited |
| SeamVestingWallet | unknown | base | n/a | 2 deployments: base [`0xc4ae2b6de2a26420fd0a41cb07a8c01d42122151`](./contracts/base-8453/0xc4ae2b6de2a26420fd0a41cb07a8c01d42122151/); base `0xe423f4f4bbbf5eed2e8611ff2783ca2ab759f972` | ⚠️ Unaudited |
| SeamVestingWallet | unknown | base | n/a | 2 deployments: base [`0xf4c7d3bab6c0b1c0d0a3db9f585670b1612d5c32`](./contracts/base-8453/0xf4c7d3bab6c0b1c0d0a3db9f585670b1612d5c32/); base `0xf71f91ef06928afa40260794ac0a4a071d71ace1` | ⚠️ Unaudited |
| SeamVestingWalletV2 | unknown | base | n/a | 2 deployments: base [`0x017167a33aa3665e90ccc21fd35aef60deeafa7f`](./contracts/base-8453/0x017167a33aa3665e90ccc21fd35aef60deeafa7f/); base `0x09f5ef7c920df1e30fbefc62a12f8e0ce7bc3954` | ⚠️ Unaudited |
| SeamVestingWalletV2 | unknown | base | n/a | 2 deployments: base [`0x04586b12c6a2010f1054bebc229aa73a46d011b3`](./contracts/base-8453/0x04586b12c6a2010f1054bebc229aa73a46d011b3/); base `0x9130bb2193b94d1dbe9b10fa166d0f4245c5cef3` | ⚠️ Unaudited |
| SeamVestingWalletV2 | unknown | base | n/a | 2 deployments: base [`0x059bcfecb80de3ee07efcdc40959f148f81f6072`](./contracts/base-8453/0x059bcfecb80de3ee07efcdc40959f148f81f6072/); base `0x5e2693a1bc9e3602c53342a644eb4ffeccbe4a19` | ⚠️ Unaudited |
| SeamVestingWalletV2 | unknown | base | n/a | 2 deployments: base [`0x09b53e8ea8659061a290203ba0fdca5f4eb0bfe8`](./contracts/base-8453/0x09b53e8ea8659061a290203ba0fdca5f4eb0bfe8/); base `0x9825fb22809134a6dc6c13ebf09dc64c212a8542` | ⚠️ Unaudited |
| SeamVestingWalletV2 | unknown | base | n/a | 2 deployments: base [`0x10e2ff2f952bea6bb7d11185b4f6ad51b7266830`](./contracts/base-8453/0x10e2ff2f952bea6bb7d11185b4f6ad51b7266830/); base `0x5685c5f95749066da5429ff3da0608f33293ac80` | ⚠️ Unaudited |
| SeamVestingWalletV2 | unknown | base | n/a | 2 deployments: base [`0x175c051785e0266cec607c16772b5bef1e5a7333`](./contracts/base-8453/0x175c051785e0266cec607c16772b5bef1e5a7333/); base `0x3bda7da361e012dc085a546b02b08151e4af0dfb` | ⚠️ Unaudited |
| SeamVestingWalletV2 | unknown | base | n/a | 2 deployments: base [`0x1959139f7a53819b2ae7e550a72f71db0ec98a85`](./contracts/base-8453/0x1959139f7a53819b2ae7e550a72f71db0ec98a85/); base `0x1a70f2dc666e2a27e50668cd3994532352c83b02` | ⚠️ Unaudited |
| SeamVestingWalletV2 | unknown | base | n/a | 2 deployments: base [`0x1bbd5560a483e10098500eb43c36b4719cda2235`](./contracts/base-8453/0x1bbd5560a483e10098500eb43c36b4719cda2235/); base `0x6ab21924c0be3000c4f2034dc6b0ac10c9b66e17` | ⚠️ Unaudited |
| SeamVestingWalletV2 | unknown | base | n/a | 2 deployments: base [`0x1e7f54b7d1a2fdd8ae738ec463d2d7b7da523cc6`](./contracts/base-8453/0x1e7f54b7d1a2fdd8ae738ec463d2d7b7da523cc6/); base `0x9272ad74f901208c66f774855d983c66c3d36a78` | ⚠️ Unaudited |
| SeamVestingWalletV2 | unknown | base | n/a | 2 deployments: base [`0x54cd1c5a328436099a506b39c4b5116de544d586`](./contracts/base-8453/0x54cd1c5a328436099a506b39c4b5116de544d586/); base `0x643551c8493fd967a6f56d293785faa2c9dff2ae` | ⚠️ Unaudited |
| SeamVestingWalletV2 | unknown | base | n/a | 2 deployments: base [`0x6e7b0da9a0496b15ea68e0f1085779f9440b0ff5`](./contracts/base-8453/0x6e7b0da9a0496b15ea68e0f1085779f9440b0ff5/); base `0x9882029300d9c1c27868be5c053395c4857c9e79` | ⚠️ Unaudited |
| SeamVestingWalletV2 | unknown | base | n/a | 2 deployments: base [`0x7cd268a7ca70594fd09e04bcba8bb5c8af3fa730`](./contracts/base-8453/0x7cd268a7ca70594fd09e04bcba8bb5c8af3fa730/); base `0x81ce023b5fcfd7aa6435254ffe296c016e5ddfa7` | ⚠️ Unaudited |
| SeamVestingWalletV2 | unknown | base | n/a | 2 deployments: base [`0x82ccc4c93fce28092ea205b3352fdee19aa02637`](./contracts/base-8453/0x82ccc4c93fce28092ea205b3352fdee19aa02637/); base `0xb4963fe661f198a7e0d899307d7c8d2e355d558a` | ⚠️ Unaudited |
| SeamVestingWalletV2 | unknown | base | n/a | 2 deployments: base [`0x95029e427a1e8b7ada3471a493054058193f5133`](./contracts/base-8453/0x95029e427a1e8b7ada3471a493054058193f5133/); base `0xe9acd23ad60cd6419c6028b99e40eea3e4e3a55b` | ⚠️ Unaudited |
| SeamVestingWalletV2 | unknown | base | n/a | 2 deployments: base [`0x9ce33cc39bddc13730469d7186f16cf65a53dd7e`](./contracts/base-8453/0x9ce33cc39bddc13730469d7186f16cf65a53dd7e/); base `0x9da10c50b63e9fa0c6abaac09dcf5e4eb28191ba` | ⚠️ Unaudited |
| StakedToken | unknown | base | n/a | 2 deployments: base [`0x73f0849756f6a79c1d536b7abab1e6955f7172a4`](./contracts/base-8453/0x73f0849756f6a79c1d536b7abab1e6955f7172a4/); base `0xc45f949292d6b69b092f0deb28e223177e8773de` | ⚠️ Unaudited |
| SupplyLogic | unknown | base | n/a | 2 deployments: base [`0xcc76e71283963a72d005c5b48f4ab2218d56f54b`](./contracts/base-8453/0xcc76e71283963a72d005c5b48f4ab2218d56f54b/); base `0xff017d02020a6dc3505b00816981c5908daf4bb8` | ⚠️ Unaudited |
| Swapper | unknown | base | n/a | [`0x04550e50f4753352f233aba53f094fc3cd62c54e`](./contracts/base-8453/0x04550e50f4753352f233aba53f094fc3cd62c54e/) | ⚠️ Unaudited |
| Swapper | unknown | base | n/a | 2 deployments: base [`0x08561d280654790861591ffaf68ed193addc479d`](./contracts/base-8453/0x08561d280654790861591ffaf68ed193addc479d/); base `0xe314ae9d279919a00d4773cce37946a98faddabc` | ⚠️ Unaudited |
| Swapper | unknown | base | n/a | 2 deployments: base [`0x2939821f3a9e5172d443def0749d58cc1655839e`](./contracts/base-8453/0x2939821f3a9e5172d443def0749d58cc1655839e/); base `0xc9be03b39ce2a56ababc3d19265cc0968e9f2fc0` | ⚠️ Unaudited |
| Token | unknown | base | n/a | 2 deployments: base [`0x4db264876bf878a4d0375e7640c6d10fae1dd531`](./contracts/base-8453/0x4db264876bf878a4d0375e7640c6d10fae1dd531/); base `0x5607718c64334eb5174cb2226af891a6ed82c7c6` | ⚠️ Unaudited |
| Token | unknown | base | n/a | 2 deployments: base [`0xc4d677c0ed9e1cf2f1a53f755d7adbbbcb183b52`](./contracts/base-8453/0xc4d677c0ed9e1cf2f1a53f755d7adbbbcb183b52/); base `0xe3b0f5b0d4cadb2bb882270899f218381e042b5c` | ⚠️ Unaudited |
| TransparentProxyFactory | unknown | base | n/a | [`0x71d90c266b9eb9a41fe8f875ddbddc3fadcf1b5d`](./contracts/base-8453/0x71d90c266b9eb9a41fe8f875ddbddc3fadcf1b5d/) | ⚠️ Unaudited |
| VeloraAdapter | adapter | base | n/a | 2 deployments: ethereum `0xc4e5812976279cbcec943a6a148c95eaac7db6ba`; base [`0x5c37eb148d4a261acd101e2b997a0f163fb3e351`](./contracts/base-8453/0x5c37eb148d4a261acd101e2b997a0f163fb3e351/) | ⚠️ Unaudited |
| WrappedERC20PermissionedDeposit | token | base | n/a | 4 deployments: base [`0x3e8707557d4ad25d6042f590bcf8a06071da2c5f`](./contracts/base-8453/0x3e8707557d4ad25d6042f590bcf8a06071da2c5f/); base `0x85082bb4bf1a3e76e8ba2ef86ab19827d2d062be`; base `0x9660af3b1955648a72f5c958e80449032d645755`; base `0xc9ae3b5673341859d3ac55941d27c8be4698c9e4` | ⚠️ Unaudited |
| WrappedTokenGatewayV3 | token | base | n/a | [`0xaeeb3898ede6a6e86864688383e211132baa1af3`](./contracts/base-8453/0xaeeb3898ede6a6e86864688383e211132baa1af3/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | base | n/a | `0x00f0331b87b465f5c82b624b0d61c6a3e2494a9d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x426f8d26daa0d774740ecce21c1827eaf8c53d34` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x452a359cc220a9684d39e2c33b60efdf3da663e3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5630a0a07a419562a8e034cfb92663b3f7ad3ab8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x70224e3bbb078635d88169e057d288749c85426b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xac6d0e95c84329b6af75c0d58c9b34a85ee521a9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd241423a5ba7ac9ee48804c4ec7e975f1a630d81` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd8a952b5b8a0e3da752c941ba30089195ac9d923` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xecd2d02e780ef7c67fce1a0b6abcde1793606ea6` | ❓ Unverified |

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
| base | [`0xa409495a6fb69b06b82f7a68766266357743d6fb`](./contracts/base-8453/0xa409495a6fb69b06b82f7a68766266357743d6fb/) | BorrowLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1d9eca99a4b4ab73fa1181f617107c66e1d44551`](./contracts/base-8453/0x1d9eca99a4b4ab73fa1181f617107c66e1d44551/) | BridgeLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2182b918f29ee7d621128dde8dc07efaa5fe8d2e`](./contracts/base-8453/0x2182b918f29ee7d621128dde8dc07efaa5fe8d2e/) | CalldataLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x391a369b6904fef62dca2785cbfc0e6e20bc0afa`](./contracts/base-8453/0x391a369b6904fef62dca2785cbfc0e6e20bc0afa/) | DeployLoopStrategyETHoverUSDCGuardianPayload | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xe7723279a8a142d95a3fffc98f70f574ee89aca8`](./contracts/base-8453/0xe7723279a8a142d95a3fffc98f70f574ee89aca8/) | DeployLoopStrategyUSDCoverETHGuardianPayload | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x5d8df7515493a804da1d16c73d75bd9479d49bad`](./contracts/base-8453/0x5d8df7515493a804da1d16c73d75bd9479d49bad/) | EModeLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xfbc092a58479439a301a5b95a981e969a0d8b205`](./contracts/base-8453/0xfbc092a58479439a301a5b95a981e969a0d8b205/) | ERC20BalanceSplitterTwoPayee | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x78423bfc5053102a3087daa978c2117a6809fbb1`](./contracts/base-8453/0x78423bfc5053102a3087daa978c2117a6809fbb1/) | EscrowSeam | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x003ee5e3b38cda6775d20a32080850106321f2f2`](./contracts/base-8453/0x003ee5e3b38cda6775d20a32080850106321f2f2/) | FeeKeeper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xcebbf1a8e6cdd813e7efce223a4820d7d2877972`](./contracts/base-8453/0xcebbf1a8e6cdd813e7efce223a4820d7d2877972/) | FlashLoanLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x918e3dfabd8c69a54d542cdeea4a3e0616174323`](./contracts/base-8453/0x918e3dfabd8c69a54d542cdeea4a3e0616174323/) | L2Pool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5c37eb148d4a261acd101e2b997a0f163fb3e351`](./contracts/ethereum-1/0x5c37eb148d4a261acd101e2b997a0f163fb3e351/) | LeverageManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x38ba21c6bf31df1b1798fced07b4e9b07c5ec3a8`](./contracts/base-8453/0x38ba21c6bf31df1b1798fced07b4e9b07c5ec3a8/) | LeverageManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4466d52b714ef32657db89ec61fab1b7e30a0352`](./contracts/ethereum-1/0x4466d52b714ef32657db89ec61fab1b7e30a0352/) | LeverageTokenDeploymentBatcher | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x44659e741a09c0d3c4756e04c559772596cf2dfa`](./contracts/base-8453/0x44659e741a09c0d3c4756e04c559772596cf2dfa/) | LiquidationLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x31da38f0eb1528212de20a3668b795e83ea378d6`](./contracts/base-8453/0x31da38f0eb1528212de20a3668b795e83ea378d6/) | LoanLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0fbc23eefeae1ae5cc929b97bce88b11261b255e`](./contracts/base-8453/0x0fbc23eefeae1ae5cc929b97bce88b11261b255e/) | LoopStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x258730e23cf2f25887cb962d32bd10b878ea8a4e`](./contracts/base-8453/0x258730e23cf2f25887cb962d32bd10b878ea8a4e/) | LoopStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2fb1bea0a63f77efa77619b903b2830b52ee78f4`](./contracts/base-8453/0x2fb1bea0a63f77efa77619b903b2830b52ee78f4/) | LoopStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x588313d69f6ca189029d83a3012fd3c40be4eac5`](./contracts/base-8453/0x588313d69f6ca189029d83a3012fd3c40be4eac5/) | LoopStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x5ed6167232b937b0a5c84b49031139f405c09c8a`](./contracts/base-8453/0x5ed6167232b937b0a5c84b49031139f405c09c8a/) | LoopStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x68dfad1a72c63897fec5fb9de9fdb5670280291e`](./contracts/base-8453/0x68dfad1a72c63897fec5fb9de9fdb5670280291e/) | LoopStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x16d02ebd89988cad1ce945807b963ab7a9fd22e1`](./contracts/ethereum-1/0x16d02ebd89988cad1ce945807b963ab7a9fd22e1/) | MulticallExecutor | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x16e48501634dfbb52f556430d788c110e5bda6cf`](./contracts/base-8453/0x16e48501634dfbb52f556430d788c110e5bda6cf/) | Pool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0e02eb705be325407707662c6f6d3466e939f3a0`](./contracts/base-8453/0x0e02eb705be325407707662c6f6d3466e939f3a0/) | PoolAddressesProvider | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xdd59cd12c455a1c091331c55423c9e4e5111dd6b`](./contracts/base-8453/0xdd59cd12c455a1c091331c55423c9e4e5111dd6b/) | PoolLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0a4490233fd6ea02873af11c744d286dc3d6c127`](./contracts/ethereum-1/0x0a4490233fd6ea02873af11c744d286dc3d6c127/) | RebalanceAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xa530e6ea09eb118a1549aca73731379ba546dd32`](./contracts/base-8453/0xa530e6ea09eb118a1549aca73731379ba546dd32/) | RebalanceAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x07a4b168f9dae741b3b88bf6424434655af8a711`](./contracts/base-8453/0x07a4b168f9dae741b3b88bf6424434655af8a711/) | RebalanceLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1c7a460413dd4e964f96d8dfc56e7223ce88cd85`](./contracts/base-8453/0x1c7a460413dd4e964f96d8dfc56e7223ce88cd85/) | Seam | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xff7c1fdc6294a42104896854c5483711a45e7847`](./contracts/base-8453/0xff7c1fdc6294a42104896854c5483711a45e7847/) | Seam | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x03eeedf76a007dce47b3a0044d9f0a04badd9cfa`](./contracts/base-8453/0x03eeedf76a007dce47b3a0044d9f0a04badd9cfa/) | SeamEmissionManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1fdfc3872a70a7af5a818f27bb14fbea4ee38f9c`](./contracts/base-8453/0x1fdfc3872a70a7af5a818f27bb14fbea4ee38f9c/) | SeamEmissionManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x04faa2826dbb38a7a4e9a5e3db26b9e389e761b6`](./contracts/base-8453/0x04faa2826dbb38a7a4e9a5e3db26b9e389e761b6/) | SeamGovernorV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6b66ccd1340c479b07b390d326eadcbb84e726ba`](./contracts/ethereum-1/0x6b66ccd1340c479b07b390d326eadcbb84e726ba/) | SeamL1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x13f5b49217f330167d6350530f6185a75ab35e6f`](./contracts/base-8453/0x13f5b49217f330167d6350530f6185a75ab35e6f/) | SeamTimelockController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xa96448469520666edc351eff7676af2247b16718`](./contracts/base-8453/0xa96448469520666edc351eff7676af2247b16718/) | SeamTimelockController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0f471d88f31ab0be2ff1d0b1ff5f30a2e3107f54`](./contracts/base-8453/0x0f471d88f31ab0be2ff1d0b1ff5f30a2e3107f54/) | SeamVestingWallet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0fedaedd6ba892921cf4728c5e2c20ffc613dbc2`](./contracts/base-8453/0x0fedaedd6ba892921cf4728c5e2c20ffc613dbc2/) | SeamVestingWallet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x204fe70b59c32f05bcf60c445d37876b2fb5406a`](./contracts/base-8453/0x204fe70b59c32f05bcf60c445d37876b2fb5406a/) | SeamVestingWallet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x216cc63cec6b6219b6bae7d07e00b9301780d5b0`](./contracts/base-8453/0x216cc63cec6b6219b6bae7d07e00b9301780d5b0/) | SeamVestingWallet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x29006739ca8b9febf5c32bf5aae1e272cd1f0d72`](./contracts/base-8453/0x29006739ca8b9febf5c32bf5aae1e272cd1f0d72/) | SeamVestingWallet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x316c05085c328189a3436cfadf8ba76babfe9d6a`](./contracts/base-8453/0x316c05085c328189a3436cfadf8ba76babfe9d6a/) | SeamVestingWallet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x33e372861bea0966c1b121f26f5e9c918c01c261`](./contracts/base-8453/0x33e372861bea0966c1b121f26f5e9c918c01c261/) | SeamVestingWallet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x348c2e1bdb4f99e3b3e87ac18e0b2a3704164408`](./contracts/base-8453/0x348c2e1bdb4f99e3b3e87ac18e0b2a3704164408/) | SeamVestingWallet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x35aa3c2d426ad68c0a7f2ad968b68487a22efffe`](./contracts/base-8453/0x35aa3c2d426ad68c0a7f2ad968b68487a22efffe/) | SeamVestingWallet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x37e3f6df10a3ded02a7b9ba38b6e80fdd592d33c`](./contracts/base-8453/0x37e3f6df10a3ded02a7b9ba38b6e80fdd592d33c/) | SeamVestingWallet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x3932674032b0fc4b816530d7a8d0961a3dbad29f`](./contracts/base-8453/0x3932674032b0fc4b816530d7a8d0961a3dbad29f/) | SeamVestingWallet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x3b5e0ab790a3e4fd73f7f345f65d96178242a691`](./contracts/base-8453/0x3b5e0ab790a3e4fd73f7f345f65d96178242a691/) | SeamVestingWallet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x435846abbbb4c9ec67a1517716cdc853ebf18514`](./contracts/base-8453/0x435846abbbb4c9ec67a1517716cdc853ebf18514/) | SeamVestingWallet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x4e7fada38a8d7496ab940f4c03185d5b7a6332ea`](./contracts/base-8453/0x4e7fada38a8d7496ab940f4c03185d5b7a6332ea/) | SeamVestingWallet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x51ddfe09b8cdc7d8200ad171face13aacda14e04`](./contracts/base-8453/0x51ddfe09b8cdc7d8200ad171face13aacda14e04/) | SeamVestingWallet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x597ce0e9cf5ccb070a37efbaca2fd13c193952b6`](./contracts/base-8453/0x597ce0e9cf5ccb070a37efbaca2fd13c193952b6/) | SeamVestingWallet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x5f8a82b8ec7c17d75ccafb84fb5e95f6a87b5408`](./contracts/base-8453/0x5f8a82b8ec7c17d75ccafb84fb5e95f6a87b5408/) | SeamVestingWallet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x61380a201f3e9491b3e9a8193bb8634724809726`](./contracts/base-8453/0x61380a201f3e9491b3e9a8193bb8634724809726/) | SeamVestingWallet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x6147036c8315b178dfca90524e2ca5572bc9396f`](./contracts/base-8453/0x6147036c8315b178dfca90524e2ca5572bc9396f/) | SeamVestingWallet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x66345a825654a605f006cda37cb621cc00c8a5dc`](./contracts/base-8453/0x66345a825654a605f006cda37cb621cc00c8a5dc/) | SeamVestingWallet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x67e0ea38382fcd2df74931bacc0af96954961ab0`](./contracts/base-8453/0x67e0ea38382fcd2df74931bacc0af96954961ab0/) | SeamVestingWallet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x6f4146040bf95f95bf9fbf0ed115133fcde11b0a`](./contracts/base-8453/0x6f4146040bf95f95bf9fbf0ed115133fcde11b0a/) | SeamVestingWallet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x734614ea6c57924dc1a9efb2e0d6b78cd7735254`](./contracts/base-8453/0x734614ea6c57924dc1a9efb2e0d6b78cd7735254/) | SeamVestingWallet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x78718b683ad01849be10702f268a72feea0a6993`](./contracts/base-8453/0x78718b683ad01849be10702f268a72feea0a6993/) | SeamVestingWallet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x7b21591e9534ca3a6c155dca5e135cdeced10e03`](./contracts/base-8453/0x7b21591e9534ca3a6c155dca5e135cdeced10e03/) | SeamVestingWallet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x8023d7bbed97e2a9736a91e10a664e1981bd908b`](./contracts/base-8453/0x8023d7bbed97e2a9736a91e10a664e1981bd908b/) | SeamVestingWallet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x80fad4184506f1759d472bac0f21d9d01b4e4f52`](./contracts/base-8453/0x80fad4184506f1759d472bac0f21d9d01b4e4f52/) | SeamVestingWallet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x96de174a0c407afceed5c2d8c8a671b7b55661bb`](./contracts/base-8453/0x96de174a0c407afceed5c2d8c8a671b7b55661bb/) | SeamVestingWallet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xb5dd3b0fe640b5f2cd4e08cccc28c14469e03808`](./contracts/base-8453/0xb5dd3b0fe640b5f2cd4e08cccc28c14469e03808/) | SeamVestingWallet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xc4ae2b6de2a26420fd0a41cb07a8c01d42122151`](./contracts/base-8453/0xc4ae2b6de2a26420fd0a41cb07a8c01d42122151/) | SeamVestingWallet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xf4c7d3bab6c0b1c0d0a3db9f585670b1612d5c32`](./contracts/base-8453/0xf4c7d3bab6c0b1c0d0a3db9f585670b1612d5c32/) | SeamVestingWallet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x017167a33aa3665e90ccc21fd35aef60deeafa7f`](./contracts/base-8453/0x017167a33aa3665e90ccc21fd35aef60deeafa7f/) | SeamVestingWalletV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x04586b12c6a2010f1054bebc229aa73a46d011b3`](./contracts/base-8453/0x04586b12c6a2010f1054bebc229aa73a46d011b3/) | SeamVestingWalletV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x059bcfecb80de3ee07efcdc40959f148f81f6072`](./contracts/base-8453/0x059bcfecb80de3ee07efcdc40959f148f81f6072/) | SeamVestingWalletV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x09b53e8ea8659061a290203ba0fdca5f4eb0bfe8`](./contracts/base-8453/0x09b53e8ea8659061a290203ba0fdca5f4eb0bfe8/) | SeamVestingWalletV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x10e2ff2f952bea6bb7d11185b4f6ad51b7266830`](./contracts/base-8453/0x10e2ff2f952bea6bb7d11185b4f6ad51b7266830/) | SeamVestingWalletV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x175c051785e0266cec607c16772b5bef1e5a7333`](./contracts/base-8453/0x175c051785e0266cec607c16772b5bef1e5a7333/) | SeamVestingWalletV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1959139f7a53819b2ae7e550a72f71db0ec98a85`](./contracts/base-8453/0x1959139f7a53819b2ae7e550a72f71db0ec98a85/) | SeamVestingWalletV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1bbd5560a483e10098500eb43c36b4719cda2235`](./contracts/base-8453/0x1bbd5560a483e10098500eb43c36b4719cda2235/) | SeamVestingWalletV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1e7f54b7d1a2fdd8ae738ec463d2d7b7da523cc6`](./contracts/base-8453/0x1e7f54b7d1a2fdd8ae738ec463d2d7b7da523cc6/) | SeamVestingWalletV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x54cd1c5a328436099a506b39c4b5116de544d586`](./contracts/base-8453/0x54cd1c5a328436099a506b39c4b5116de544d586/) | SeamVestingWalletV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x6e7b0da9a0496b15ea68e0f1085779f9440b0ff5`](./contracts/base-8453/0x6e7b0da9a0496b15ea68e0f1085779f9440b0ff5/) | SeamVestingWalletV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x7cd268a7ca70594fd09e04bcba8bb5c8af3fa730`](./contracts/base-8453/0x7cd268a7ca70594fd09e04bcba8bb5c8af3fa730/) | SeamVestingWalletV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x82ccc4c93fce28092ea205b3352fdee19aa02637`](./contracts/base-8453/0x82ccc4c93fce28092ea205b3352fdee19aa02637/) | SeamVestingWalletV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x95029e427a1e8b7ada3471a493054058193f5133`](./contracts/base-8453/0x95029e427a1e8b7ada3471a493054058193f5133/) | SeamVestingWalletV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x9ce33cc39bddc13730469d7186f16cf65a53dd7e`](./contracts/base-8453/0x9ce33cc39bddc13730469d7186f16cf65a53dd7e/) | SeamVestingWalletV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x73f0849756f6a79c1d536b7abab1e6955f7172a4`](./contracts/base-8453/0x73f0849756f6a79c1d536b7abab1e6955f7172a4/) | StakedToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xcc76e71283963a72d005c5b48f4ab2218d56f54b`](./contracts/base-8453/0xcc76e71283963a72d005c5b48f4ab2218d56f54b/) | SupplyLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x04550e50f4753352f233aba53f094fc3cd62c54e`](./contracts/base-8453/0x04550e50f4753352f233aba53f094fc3cd62c54e/) | Swapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x08561d280654790861591ffaf68ed193addc479d`](./contracts/base-8453/0x08561d280654790861591ffaf68ed193addc479d/) | Swapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2939821f3a9e5172d443def0749d58cc1655839e`](./contracts/base-8453/0x2939821f3a9e5172d443def0749d58cc1655839e/) | Swapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x4db264876bf878a4d0375e7640c6d10fae1dd531`](./contracts/base-8453/0x4db264876bf878a4d0375e7640c6d10fae1dd531/) | Token | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xc4d677c0ed9e1cf2f1a53f755d7adbbbcb183b52`](./contracts/base-8453/0xc4d677c0ed9e1cf2f1a53f755d7adbbbcb183b52/) | Token | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x71d90c266b9eb9a41fe8f875ddbddc3fadcf1b5d`](./contracts/base-8453/0x71d90c266b9eb9a41fe8f875ddbddc3fadcf1b5d/) | TransparentProxyFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x5c37eb148d4a261acd101e2b997a0f163fb3e351`](./contracts/base-8453/0x5c37eb148d4a261acd101e2b997a0f163fb3e351/) | VeloraAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x3e8707557d4ad25d6042f590bcf8a06071da2c5f`](./contracts/base-8453/0x3e8707557d4ad25d6042f590bcf8a06071da2c5f/) | WrappedERC20PermissionedDeposit | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xaeeb3898ede6a6e86864688383e211132baa1af3`](./contracts/base-8453/0xaeeb3898ede6a6e86864688383e211132baa1af3/) | WrappedTokenGatewayV3 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
