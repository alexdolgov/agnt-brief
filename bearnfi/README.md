# Agentic Audit Brief: BearnFi

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: BearnFi (`bearnfi`)
- Website: [https://www.bearn.fi/](https://www.bearn.fi/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: bsc
- Contract surface: 335 unique implementations (345 raw deployments)
- Coverage basis: 0/1 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $594,000.04
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for BearnFi. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across bsc. Structural roles: 1 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: core (1)
- Contract kinds: contract (1)
- Detected standards: erc20 (1)
- Frameworks: openzeppelin (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 1 contracts are derived from known codebases. 1 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- BFI (`0x81859801b01764d4f0fa5e64729f5a6c3b91435b`, chain 56)

## Contract Surface Quality

- Logic-topography rows: 1; live-surface rows included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 1/1 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/1 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 1 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 334 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 10
- Confirmed-live implementations: 1 of 335 unique; 334 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/90
- Verified + Unaudited implementations: 90
- Verified by bytecode match: 0
- Unverified implementations: 245
- Unique implementations: 335
- Raw deployments: 345
- Audits discovered: 0 (0 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (90)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Address | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x406a4abc2ddd86c26fc18c1bc6a135244af1c292` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x2c358a7c62cdb9d554a65a86eea034bc55d1e715`; bsc `0x50a76acc2838ca53488f51fdc5306c27168a57f3` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x40d39e8bee8176fb661a4a407684e2c7d1368908`; bsc `0x8bf25d57e23e58b20b4b992839ceb07132882dcd` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x4af9cda5758568ad079345fdfe0e15f35a0ad611`; bsc `0xb375c0a5328e5d036a35e35b2ef97dbfae74defe` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x5d42dc503763dd1e7a1b510b055150cc5754656b`; bsc `0xd25a8a41073696ab915176cf4221b2d216c85638` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x9164537c82aba29f30aeef0bbb8ed54fcc1976a7`; bsc `0xfaca24b79d73c9397ff702e0948e3109602e55ab` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x970d44a567db3dd33f25a81d27f2499c0200b915`; bsc `0xff8c6b3b69c17933d03d0af12f94c00d9e08f5a5` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb44180151931c00d35784152a2feacf68c92acb8` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xc3103e083399c66f9e11d0429f315db5b4fa7ff9`; bsc `0xe76ba2e859714c7056251b49b4500db85a8f0b75` | ⚠️ Unaudited |
| BdexChefLocked | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0fd33c2742a9922bc34433f4e39e120c0c7a5a23` | ⚠️ Unaudited |
| BdexFormula | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcb9f345c32e2216e5f13e1a816059c6435c92038` | ⚠️ Unaudited |
| BdexRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc6747954a9b3a074d8e4168b444d7f397fee76aa` | ⚠️ Unaudited |
| BdexToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x319a1fc65775020de5d996c9a6a16d5401439e88` | ⚠️ Unaudited |
| BDOAggregatorProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xad113f461f4e8102cb19603cd6621a318e755d3e` | ⚠️ Unaudited |
| bDollarVote | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc4f7b82f3e09bfba5f8b910f336ae9df585228bc` | ⚠️ Unaudited |
| bDollarVoteProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x81566135df68ffa48d2b3be6cbcbaff1bed3b173` | ⚠️ Unaudited |
| BdoRewardPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7a4cfc24841c799832fff4e5038bba14c0e73ced` | ⚠️ Unaudited |
| BDOv2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x165fde740c0d0b6cb52beeb6b3800c4a47a0c5fa` | ⚠️ Unaudited |
| BDOv2Oracle | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x226e7ca70a19f597ac2ff896a8fafd8ce4030699`; bsc `0x67cbfe82828079e356ea694916d03a807b43011a` | ⚠️ Unaudited |
| BearnAuthority | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd567f46b1b95e9852b64cc51290e8ffc0aa18475` | ⚠️ Unaudited |
| BearnBar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xaaaf5d9923be358ea0b6205ef2a3b929d460ac7a` | ⚠️ Unaudited |
| BearnChef | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3d695c1607a085773547e07def1ad3ce3f518edb` | ⚠️ Unaudited |
| BearnERC20Token | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbb5e26f25a034a7f0c02a3d0628b5f5c681847de` | ⚠️ Unaudited |
| BearnEthereumGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8a714c75fffc505d486eed7ef074fd2c1252684b` | ⚠️ Unaudited |
| BearnReferral | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc9c0159644d3789eceb4f8cdfcf99c7605ae505c` | ⚠️ Unaudited |
| BearnStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2afa00732b8a9f08542699dd9451fdf3335a3379` | ⚠️ Unaudited |
| BearnTokenMigrate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb6abbfee0e2a0fe75267dfa6f779471cf3d7c7bd` | ⚠️ Unaudited |
| BearnTreasury | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x63d211c7f0f780b8e9ca6d0622aadb7a2f34c895` | ⚠️ Unaudited |
| BearnZapperRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x197317c2a6d16efb62c370f52f8c11422ba5f13b` | ⚠️ Unaudited |
| BFI | unknown | project_anchor | own_supporting | 0 | bsc | unit-380306 | `0x81859801b01764d4f0fa5e64729f5a6c3b91435b` | ⚠️ Unaudited |
| BnbNumberBet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa2b67a659b098ef71a02e407bf8e637edddad85d` | ⚠️ Unaudited |
| Boardroom | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1207fb4223d273ce37ad24df9f21a6736654ffcc` | ⚠️ Unaudited |
| Bond | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9586b02b09bd68a7cd4aa9167a61b78f43092063` | ⚠️ Unaudited |
| BondLpRewardPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x186f972d9a88a6205a50be25ebdf8149e32437bf` | ⚠️ Unaudited |
| bpDOGE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcfdb9f1b40513adf7f83aa2646a0309ee5d6be25` | ⚠️ Unaudited |
| bpDOGERewardPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6743888118d6f9c7363ea13da12e1f37f99a641f` | ⚠️ Unaudited |
| bpDOT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x557b3ab377bbd68dfc6dadefafa3cc4e4b6677c6` | ⚠️ Unaudited |
| bpDOTLiquidityToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa8b80c7d3c7b17c0d95777804ffd4b5f9ebcf1df` | ⚠️ Unaudited |
| bpDOTRewardPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcab056427f99c9db95e7fd39b16ac7f1aebd0ce6` | ⚠️ Unaudited |
| bpEUR | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc66087b151e5de3a414a22d442f073c0e19f17f2` | ⚠️ Unaudited |
| bpEURRewardPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6568189df509a6bbd3e1f06c7da48ab0f8108a93` | ⚠️ Unaudited |
| bpJPY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb7a6be8e3f5e852077699a6d85fd6f9bb96ada96` | ⚠️ Unaudited |
| bpJPYRewardPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7d27509c7c34b850866a80caf8a5a469eefb7d33` | ⚠️ Unaudited |
| Bpower | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xff289b10e7ffa4f2981e7e3b94faf060696c252c` | ⚠️ Unaudited |
| bpTokenBoardroom | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x17e3021d668bd7ca0eb277832690ccfea0626af4` | ⚠️ Unaudited |
| bpTokenOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0600dbad1ae9af99460f77db0ad5163f4cf29f0d` | ⚠️ Unaudited |
| bpUNI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd3b7233c3ce74c9a603b1717e5d265b1b97ee48a` | ⚠️ Unaudited |
| bpUNIRewardPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7ad8992437c0b281e0d799bc6e7d66bb2437e720` | ⚠️ Unaudited |
| bpXAU | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xeaaf11ff129c2e44801ca6c169c32bee728cfe8e` | ⚠️ Unaudited |
| bpXAURewardPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xee23918f59b89faa1418e445c409edbc6076d33b` | ⚠️ Unaudited |
| BvaultsBank | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x100b6d455707179799dec0cb36d8cebdf483ffe0` | ⚠️ Unaudited |
| BvaultsHarvestInfo | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x3372694569003dba8722026666f6777790e9c1d5`; bsc `0xc5cb9521c8a053e7c86d39d84f575459f99ad9e1` | ⚠️ Unaudited |
| BvaultsStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x01c559f75d8354d740215ebb85822be01dc6299a` | ⚠️ Unaudited |
| BvaultsStrategyMigratable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0667b25bd7c7c0969750a3f87d4e421f7c811ab6` | ⚠️ Unaudited |
| BvaultsStrategyStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x97c1de302c00918ec80a48b9c7dce2f772b5411f` | ⚠️ Unaudited |
| CErc20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbfe68f4d7d1fbe8798b37c19ab044db412a1b44b` | ⚠️ Unaudited |
| CErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x00dfd1b4db772c6c8d3ca26fb6e32caf98073b25` | ⚠️ Unaudited |
| CEther | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8937f6529fc8430440d0e1417492aef96c161ce3` | ⚠️ Unaudited |
| CommunityFund | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x10cb228c83a325b19a4e0dcebdf65ecf89026793` | ⚠️ Unaudited |
| Comptroller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x12a43deb40c5b717f622994fb27c8a6e17f427f4` | ⚠️ Unaudited |
| ConcurrentBuyer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9f03c399903b76fe98ef689f507295b0169a47f1` | ⚠️ Unaudited |
| DaoFundTradeRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x406f18e76489a414dfce9f6f3e59f76574251319` | ⚠️ Unaudited |
| Distributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4f93f6ac58498dc6cd689170f1e872453d0114c8` | ⚠️ Unaudited |
| DOGEAggregatorProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcaf40e48262ed04c615c0d2a3cf32bc6b9996ed5` | ⚠️ Unaudited |
| Dollar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x190b589cf9fb8ddeabbfeae36a813ffb2a702454` | ⚠️ Unaudited |
| DuelToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb9649983ef6a24092cc341a93f9c03cea6d46ede` | ⚠️ Unaudited |
| gBEARN | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb32d894bd464bfb6abd789a99cbfb14359d0c3e8` | ⚠️ Unaudited |
| JumpRateModelV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x234a3fb23ced6956352b34e3aa052b10a2ada6be` | ⚠️ Unaudited |
| Lottery | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x741b4c0aee6118fe5eb59b19dbd0cd55adba0a5e`; bsc `0xbcbe231df846a7caabfe6492a629447a0d4c9c6d` | ⚠️ Unaudited |
| LotteryNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x402c66c6d05c8b460cecd2ca281e44a96e9fb037` | ⚠️ Unaudited |
| LoyaltyNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x87d70315fec0c782818ecd616f9a74f55d45f1ef` | ⚠️ Unaudited |
| MerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x63d7cb51977a2a85cd2aa64b72f6325a3238179b` | ⚠️ Unaudited |
| MultiSigWalletWithDailyLimit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x697ebada0abfb833a62f0e6171e00bab04c507a4` | ⚠️ Unaudited |
| OlympusV1BondDepository | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x61fbf36a0a4be9e88f02990d13c9517bf9bba8e7` | ⚠️ Unaudited |
| OracleSinglePair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfab911c54f7cf3fffde0482d2267a751d87b5b20` | ⚠️ Unaudited |
| OracleVPeg | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4322f55db1e6615a36e42074b390f7f0354a69d0` | ⚠️ Unaudited |
| PlaceHolderToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd691700db1750e6f2c75af8676902bf1248377af` | ⚠️ Unaudited |
| PriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x507ea5ad641c9d12dcdaff95ae5c231596c04341` | ⚠️ Unaudited |
| PriceOracleProxyBSC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x16c98f0a7948b3094769301d545aa664d0675afe` | ⚠️ Unaudited |
| ProtocolFeeRemover | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8a1c6b63ba5358ca58f175dda5ec2dc9570f9dcc` | ⚠️ Unaudited |
| sBEARN | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x54b62b277b000f96f45cff8dc14d3614c99d5582` | ⚠️ Unaudited |
| Share | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0d9319565be7f53cefe84ad201be3f40feae2740` | ⚠️ Unaudited |
| ShareRewardPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x948db1713d4392ec04c86189070557c5a8566766` | ⚠️ Unaudited |
| StandardBep20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf8397e7c7eb51d1d417c23201e8e95238b791d8c` | ⚠️ Unaudited |
| StandardBep20Gateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x228d9a2f89d6ae69ca77618910beb9e35f65fbd2` | ⚠️ Unaudited |
| TimelockHasOperator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2ad335e18c97d18561dd1a0c1447b1018b81f213` | ⚠️ Unaudited |
| Treasury | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x020fe9375de1793d6943391c4aa6511ca6cd97a8` | ⚠️ Unaudited |
| v80wBDEX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x41bc5cb325681c3d149afd2f0df2f2d419b0521c` | ⚠️ Unaudited |
| xBDEX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1edb8a083560ec009888377c969acb736398b120` | ⚠️ Unaudited |
| xBFI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x454f7b758a3f6077faa3c0c2d57928537122b7bf` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (245)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x01fd295a54c7cfc2dd25092f67c61e6c3192fcf7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x093c1c7e7e45f704adbf37eff4936d4971fbbba5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0a72af050fd25975152e497f8e60c6269d95b4c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0c8e8be704546147576d57c31ea1d75ea610222f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x110b41406e346a4510900ae65baae13286394884` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x11d17928a8f750743061f3f1ecc6fec20b675f6b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x11dffac3909df964aa083f23de63755a6c219c02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x12569f3d3e62d9df0b3d9ac2d028a55d622133c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1415e4a7b23be095678f43362ad3248310433346` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x15462d879c580d62b57685ab9f68ac56657eeac3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x15a90e6157a870cd335af03c6df776d0b1ebf94f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x19b2fe1e2baa5a69261cfdbd90120087260c16ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x19e48f75b24f726390c4f3374824734c9aeebe8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1b8dd9436c85ebabaa2ae81f2576dfd3299abf28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1d63461d42f5251dbf33eb7b510ccd1b5df4dbe8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1eeb1ce0a9d50e56e020701129e3624146d57d2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x21125d94cfe886e7179c8d2fe8c1ea8d57c73e0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x21e25c2ec399a7f13a071b928bf3c1650e93c2fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x23cb044e8cfb1b8404d71b2940c69046a92a1dac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x243f4b5e6f4ee016ca4f7b4362e6e27d29a59dd8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2a0393b3fbf1ddb5843fe55c16143d0668d12145` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2a5f7a975f607889da8c79df95d6c17740657029` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2a60c8a379ad0689b13314c098aa25ffac9dc7b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2b1249c8ba6a2f2c1d927e5d4e250cfbf5679bc5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2bb3ddca7b81115942b511940bb0fe13eb4f9780` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2e46e3aef26183f66b9519dfbbb8383f67a5325d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2e62f5bc59b7150786cef036cf708febcc6906a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2f320c8078930cd161267c5d63a4febd9f635037` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x304617195ad47c9687d1facd2cf6974a5ad8881f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x30795519ac1be306271d7b0f129f390bb743fb01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x30f63007a90f247c691615a72a97bedfc9aa0b13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x31b38ba067c8b9c63eca3fe14d724ffe10b6a2b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3202435cc0a72b45f07887531f09562c0d327abf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x327293824456825e207cd1905422fc7c087cd7a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x32b7a785e086779fdf0d8fd8c7516c160aeb4660` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x336b77a832f88bbd11558a1a5c49d9d6cb05e835` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x342dc0d9f0a2197066816bccb7ee961aa7900f54` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x345f739a01a5dd684430008c78acf19f716bd1f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x34fb53e76c5da603b2ad850da9babe4719e419ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3551271132078503e67f6090422eb34339e138de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x36e444bd365278402b5949b47cb772d3392f28b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x37ba49f757f5fb461f218fa5b9881ed162fdf240` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3805bd7e077ee0aaa22a810d3f5deb8a155303f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x382576ee097705d1ed26eb60bb1c203b7cedc0e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3a35e4e78d2b1a5c73299d8d9ba653c93d4db32b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3a7db715de4b7c4da11dab8d6755cc02ac77f783` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3ac0230a5fda977adf667376db847f980579b9ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3c03fb547fbdf27d6e478f2fee30a960c597bfbf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3cf67b8ccf6838d5fe114af2b83975bd3f040797` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3dfb86bdf9eb323bc9121afba24ef70615bed872` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3f00b53900d8409f9d70a05c4118dad768484e7e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3fc5259481a4469f95494e6c6f5263e31b0a7743` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x406cfaae2c8e30a70b90baa52e753b6c17c1df9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x40fb389a765a6117a562ce232b8df866b713f65b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x413bd9d425d67baf7147c7289a1588dd7fb9eb0b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4333dae4fa88849e307c941ecc3a67bdebf9aef8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x45c5672f239dc7a81f5dee67041bfd9b10c97e5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4673eb11ee2c8ed411697c79b41d7f531d820139` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x46785a0c8cbf91dd0ad8aab9f9934b2d808d0857` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x472a49263ec0891dfb2d889827fa3a9c410f74ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x48b6527937b5baa7e1be4880b2ba8d4f3d91b02f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4b718f3948415284a7c3f199f9e97c7f312081de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4c606eb32ebfe09b974459091897fbe9e25e76db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4cf73a6f72b8093b96264a794064372edb15508e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x50744d16fd2a22e6a3b6108725a315dd662a6673` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x50d81e250c7b27c4c50b93ab9211ea903e30484c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x52b03437b4e13ea3224d960bde7945852ee1bb9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x552f72d329ddf311350c0e0be4ab2bbb0e62ca2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x566eedf35372cc37c947afe4b0215a9529ad1f6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x56d9689029d53309c32942d24fb34393b2382e58` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x58f6ca1b37576002b41a4b4e536d866ad4557274` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x59c5da12f7eb7d7aa696958834a0ec7fa19d2414` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5b391262f7daafa2910543bafdc4cf53dbdb1b27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5bd681d3fbf49e7b22531902198c69d2c380968d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5c7ef73b10f33cbcbe3b5216e22c23f1c32756b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5d4ae1387ac10c6c7a8059367ad22cdfc7936187` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5d6dcf11aafa8d96b888ce2e9ac51531d8ceaf65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5dca83b16d85a521ba2a37894936e5b43b4e0294` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5df1e55c9601138f24f7ad5dcba7f6e6b5915ed7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5f5686c04e86696ec01a014ea8a1ff388dc00009` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5fd57ee6bacdce418270d825f949d59b3eee2183` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x607fbcf8420a779e72e440440c7f31278eb99b48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6336e6daf07f6a4a902bc2f4f4f005f197cc7a96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x636353773f8f199a4fb521bd5c0b1d36bfd1985d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x65e99c10096987e14115915fb524f5d600fab3c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x663ef801343a4204149d9989d72a71dc59494c10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6686a7e77ae0d36a0f81cab2a3d3828ae4fd946e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x68aeeab7093b554623b66574266e7fb3407b25ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6ac0fe5f85ecb01705ffedd7da6daa9a281b53fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6d6e965cf94b86ed14095e576828482d27ddcb04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6e2878f15c00bb1b0487ce0ad6cad20cff52d961` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6f5cb4c98f279757a9b3d882d26621747e92184b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6f981756942b41892290c706cfe991763cae1526` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x70077d8c1e0c7cc5cad7cb927ee0a8b4d3abd83e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x708a3bb7ad08df59ef05285c6d5c8d1687e3fa9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x710ff73efa7a643491f70e05740f6b6533852398` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x79138374ed54570303b17fcab8df4700a640cc6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7a254e3c78419224dfdfe5833431be0ad203ac43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7a46e06d214bff1248449095a727faa08d042654` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7aa61282ccda427c4b3ce7c3a91ec6d9980b5dfc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7b50109ad6e9543cd539841acd26987b52f822f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7d64802f6e2bb28d1b00b2459dbe35b347588a59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7d8759dd53891517dedc470d7666f55ec71d3dfa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7e0f01918d92b2750bbb18fcebeedd5b94ebb867` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7f4c9aa2000bd06272ca2355f6ae45b3ecead887` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x807d8c6dd3e5a47c69b5497e5b6878fe52802826` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x81fc768111b5180b204b2f56fac807731d83ce06` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x835628cb82a6ebc949faed5a970ffee37364dc39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x83e44fc5eafc436cf13ff4600a64d9a440052203` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x871a0eb64154e27aebd371a7346557ec2c7cafcc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8a95d219b3d5ed060b14e10cd2b4fa864c651ff3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8abc60d3a3799319fadd48bbd5cbf6366327117a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8b67dc49ff282686b33099487dbefe82225039e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8bb93454b68356d830e619631d09b6a0d98e3354` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8bcfa7f0fffeae95b9490cca725b6455b6ac1231` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8d3b5c57d44afdf2044eddd37301346e25c37c7f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8d9c906ac8f58cc0918d8e0ce1be948dff5263af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8f3d3fbe1c51ece5aab5b3ef11bf4dcff38fa440` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x906bc463538070c4af794917e98ff15442cd6686` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x91a7e034e65b7a508c64bbead0e5588744a4f5f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x924b9d29af3fa5c37290ac87c1869a2965e52d09` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x92a082ad5a942140bcc791081f775900d0a514d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x93adfbadf862401146a731cfdff493b33c0adf8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9464b374c531518b68f6c780e0f647ae54d185f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x94a5d23c02e839793128615f968177b76b0e0b42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x972da41a5af1284f2d5a4efeea53a3f484f5f5f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x985220f21ba808e98246fb55784bc22b6c790e86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x98a586ca0d8611eccb5635558839f0fae8cec047` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x992be6fc0712c112b6d55ff1705207a80bab44f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9b994e6fd91f9087899552917745a575df3f6db8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9c3af2a52a11eae812e86876c9e02e0ed72a7256` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9c9aca839e714b838d6efe3a0b89a9871c1ca54f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9d25b481e038b7ef93a8defd01626fcee5026e75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9d39cd20901c88030032073fb014aaf79d84d2c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9e9cf75f6a17c8168801949d8cfd1795b478fe5d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9f7746ba5412c1196683d05870eed6b19a87f84f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9f92d8a07cc5f4328fb7bd8ed9c06bff8f093739` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa0c265743b914ed871eaebc1b9013abe4fbec9e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa1a2863317d159eff6ca2cc13ff9f1fbd7304544` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa20e65a29cb5a29a106e377b49b26f6f01f4759e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa23db1677ae4b54434377b42d3d074c87b61cc18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa291d5ecdb601314ac8e3d60c26706354736de80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa3948b027f94ca195eac645746435aaa7eb555a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa3ed62edb08f5c9c323188dfd9a295dde44c0bc3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa463d49bd79cd63a3c39359371cc764a4e051988` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa4b2214b9ffb75b5c0041a7be40acef505662d14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa51bc54d23917eba51fe6b6db2868d7f47264eb7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa569308f2965434fa773a60630323b8e15603827` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa68b27df552bdbcfa84360aae9bb97b8c8d47038` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa7cc3cec0bce2bdee57a6e794a7349d9b6cd9c36` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xab966070b18c0230ec40ce010f38c94c6541cca7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xaf735603fda61933deacfb56391df748f91158cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb0cdea9604b23fa0b37eae4646d78cb2f01b293a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb19bc02928039e36ce4e4fcd750a06bb3f2a345e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb1d9ca472ffd3366e46284451e063fb9d9997de5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb2b1dc3204ee8899d6575f419e72b53e370f6b20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb390b07fcf76678089cb12d8e615d5fe494b01fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb45d1bf31a067d77bd49acf63533762e6979c86c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb4b614ccafae6bf0b9031db4c395577a038cc4e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb5acd3c1ca0a25a7cb170f1a7090a2a7508f0159` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb69b6c3e3d329d09968acd90442375c9762d5897` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb70d84fe8d62fc1f1da7ca88f41d6f277ccb0570` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb89a4b71d629d44735aea53c5d6954053362583f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb90910104ff130dee80d237f27d1afa4e1c9f2c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb91afcf769e78c612edf4d3d9b050af5c3d412e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbcd38a5ac9bcde5d9a56b02d024fe02699c3549f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbd058ea5507549b3703c38f992260a6879938219` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbd416c94e61b0b60e064bba84c99aab916ec3d24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbe1bda607d8660e0bc274eb0afa7223d7ae51f0d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbf70245874927fefe6cceac2ac322ffc95d6e767` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc1db7603827cb1a99c50ec1fff48113259fc6a12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc218c5a52290bfbc8bdcb5e1b35c2ab4e7e4a008` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc297aa5376dec4bd7f8f194873dabe294391a0f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc56daac1a29bc4cd6ce1ed3c5c86fda2093ad117` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc591d5e63f9a71667a73e8027ddf57db57eb99f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc60c6854d10c034718aca198fe92d73eb83b744c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc666ba55cb32c9fa814e4c27411058076713c93b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc670c4d290612e197980ba4a0c17a0fa807154ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc6e22b0f925004259e2c05b9ebeffbc00b83e70f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc944d147cb21d81f01637c811312893e0f3a497c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc9b7a71249aeda0f5b070a07d15c26bf9a144967` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xce1a28db18415ec1947bd79865a4deec96ca7248` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcfcddf9c4ab9fbb90e34570b7fdd46ffa71c4992` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd0b2662f08b39d9ff2c579807befdee1ebe2d9db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd2ae88d0caeaf08797822e268b25b90f5dea2651` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd2c60f1453ae7d804cb4cabfaf58b216bcd97c45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd31b0097859a0ad998ac9e9ba87558e216d4c0f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd4c6c512e6f36020595e3e1ff7c7027f9f8f8962` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd517040576b70112d3cddd255ee5616977a438c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd55373b43ae205861c364306103c7e25125ab8e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd6045a5d10a6cec0b42877eb42cba5e622c4319c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd6589d508e8b81855d772038d144754546826f0d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd6c778010f871de1c09cac22ebcba6474a061fd3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd75c1a91272f20aafe9627a288a6210db57d93ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd763f72c3ac0beee6e3d3fe95a6610bebffe92c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd7e2f46a21533ac754e1dcfc29d5349219e63f17` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd83afd658bf6bc550b8803d5cb1efae0480f5258` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd9be0a4b35967fc4c91f53ba961915f4d51bd5b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdbd447811a90fe5265331c9e8cb73a98e53edc8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdc766d7b1ceebbf01149b5e7414465ad689a2bc2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdc83cd08985c5421a17654e0e21f719e44ec2122` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdca937540a0ba173c62688a35674918bcf1dccd7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xddcc7d6cf93e94651eb6d3d88cbc13d14c3b1f5d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xde0e5c2489227f7125c0e212080bb0797203a028` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdeb6adfc57f53fc14f278e43381584cae5279eaa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdf0b3d365189c2cba2f810d43a6120ce27d708a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe17ec40c84175d36d4541eb70520f90e948e4f24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe1961961ba53e302908b2d399dba73b136abb84e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe2efad2e5956140e8271c72dd5e2d3a0c5bed3b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe3421f1f012aa462e3a5fd8b9d72b045fbac50d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe3c6afdbf83e49b990cb98b869a935e1e39851fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe3e7025abaf5bd2d45b9c0d2b62d6165dba038ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe43a97e71d22d855f0a5cdb93be92c0345628460` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe4ed9df810dfc447ce4b968bfd1a9275f34529e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe6b059be451b38e46a041c99dc686fe65907cfc4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe6b95fef77198b067698e0fd177e40fef1a4f0ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe7c52005beda21508137142ad99b33aa7eb47827` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xea2ccaec75466cb852f1d518f7f0650360669569` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xea7a3f658ff989fe83989c2654050460e3d8c0ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xeada3d1ccbbb1c6b4c40a16d34f64cb0df0225fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xeae49f380b1bcf4849105823e3fd357ac29e3b76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xec8acd5fbcd62e44e8b48e20619ec34cfe67c362` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xeca7fc4c554086198deebcaff6c90d368dc327e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xeeea0d4aad990c4ede8e064a8cb0a627b432eda0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xefaff6c4b1fab061914a5747bc8b13d97c9466b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xefd006ce1cdb4b293f62ef007c5cf6620e12d25d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf08253ebb55c5da33d637ad201a00760776f1d3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf0a8b2d94f6a251b1da14ae9e7a2694a85764c9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf0f4d8bdccf954f75da1c800d2ce480188f86dc9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf3a8403a78a591d86e56ec03911eea43fdc6fe54` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf3f3411863177b810792cfa454df4d5b9028a124` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf526411a8872f071d5f2cbd220b54d870740eb68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf52830fd923f414122abd97cd8a67bbaf3a1b98d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf5e3f92ba9bf181e8eb168d619419c827cb25dad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf63ae636e71eb9a4008f443d7b79fc46b97be37e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf64b6745396b147974f0dba4990cb6a226ed9a9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf68202079fd13dbf910d24e903fe2645fba48d04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf85974d69dacdf0e61bbecffe03bfb3f79bf944e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf971097e219e3b5110375180816b9147caf8f115` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfad27e35de824863c48e772c9173442addb02f27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfb47c0c1183a3042e21c1aa65cd840cfb3ea7bec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfe77f4961e0b14c9853f3d3c3a8aa734a92ee879` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xff1ff626e7fad5df5eb1aec7031b1959759f06f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xff3d358c1dc301733d28d561979ef6a2e4097c77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xff4618be6e1754f451b12a147f564eac10f49459` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 255
- Live contracts: 0
- Unknown liveness contracts: 255
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: unverified unclassified=255

Showing first 200 of 255 contracts. The complete deployer expansion list is in `brief.json`.

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| unverified unclassified | UnnamedContract<br>`0x01fd295a54c7cfc2dd25092f67c61e6c3192fcf7` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0x093c1c7e7e45f704adbf37eff4936d4971fbbba5` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0x0a72af050fd25975152e497f8e60c6269d95b4c9` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0x0c8e8be704546147576d57c31ea1d75ea610222f` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0x110b41406e346a4510900ae65baae13286394884` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0x11d17928a8f750743061f3f1ecc6fec20b675f6b` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0x11dffac3909df964aa083f23de63755a6c219c02` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0x12569f3d3e62d9df0b3d9ac2d028a55d622133c7` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0x1415e4a7b23be095678f43362ad3248310433346` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0x15462d879c580d62b57685ab9f68ac56657eeac3` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0x15a90e6157a870cd335af03c6df776d0b1ebf94f` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0x19b2fe1e2baa5a69261cfdbd90120087260c16ac` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0x19e48f75b24f726390c4f3374824734c9aeebe8d` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0x1b8dd9436c85ebabaa2ae81f2576dfd3299abf28` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0x1d63461d42f5251dbf33eb7b510ccd1b5df4dbe8` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0x1eeb1ce0a9d50e56e020701129e3624146d57d2a` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0x21125d94cfe886e7179c8d2fe8c1ea8d57c73e0e` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0x21e25c2ec399a7f13a071b928bf3c1650e93c2fd` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0x23cb044e8cfb1b8404d71b2940c69046a92a1dac` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0x243f4b5e6f4ee016ca4f7b4362e6e27d29a59dd8` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0x2a0393b3fbf1ddb5843fe55c16143d0668d12145` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0x2a5f7a975f607889da8c79df95d6c17740657029` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0x2a60c8a379ad0689b13314c098aa25ffac9dc7b7` | non_address_book | unknown | unknown | unverified | n/a | `0xaaf7ff4b31bf4757ae32ae3d66ec361ddab830c1` |
| unverified unclassified | UnnamedContract<br>`0x2b1249c8ba6a2f2c1d927e5d4e250cfbf5679bc5` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0x2bb3ddca7b81115942b511940bb0fe13eb4f9780` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0x2e46e3aef26183f66b9519dfbbb8383f67a5325d` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0x2e62f5bc59b7150786cef036cf708febcc6906a9` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0x2f320c8078930cd161267c5d63a4febd9f635037` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0x304617195ad47c9687d1facd2cf6974a5ad8881f` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0x30795519ac1be306271d7b0f129f390bb743fb01` | non_address_book | unknown | unknown | unverified | n/a | `0xaaf7ff4b31bf4757ae32ae3d66ec361ddab830c1` |
| unverified unclassified | UnnamedContract<br>`0x30f63007a90f247c691615a72a97bedfc9aa0b13` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0x31b38ba067c8b9c63eca3fe14d724ffe10b6a2b2` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0x3202435cc0a72b45f07887531f09562c0d327abf` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0x327293824456825e207cd1905422fc7c087cd7a8` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0x32b7a785e086779fdf0d8fd8c7516c160aeb4660` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0x336b77a832f88bbd11558a1a5c49d9d6cb05e835` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0x342dc0d9f0a2197066816bccb7ee961aa7900f54` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0x345f739a01a5dd684430008c78acf19f716bd1f0` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0x34fb53e76c5da603b2ad850da9babe4719e419ce` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0x3551271132078503e67f6090422eb34339e138de` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0x36e444bd365278402b5949b47cb772d3392f28b8` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0x37ba49f757f5fb461f218fa5b9881ed162fdf240` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0x3805bd7e077ee0aaa22a810d3f5deb8a155303f9` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0x382576ee097705d1ed26eb60bb1c203b7cedc0e1` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0x3a35e4e78d2b1a5c73299d8d9ba653c93d4db32b` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0x3a7db715de4b7c4da11dab8d6755cc02ac77f783` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0x3ac0230a5fda977adf667376db847f980579b9ff` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0x3c03fb547fbdf27d6e478f2fee30a960c597bfbf` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0x3cf67b8ccf6838d5fe114af2b83975bd3f040797` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0x3dfb86bdf9eb323bc9121afba24ef70615bed872` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0x3f00b53900d8409f9d70a05c4118dad768484e7e` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0x3fc5259481a4469f95494e6c6f5263e31b0a7743` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0x406cfaae2c8e30a70b90baa52e753b6c17c1df9c` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0x40fb389a765a6117a562ce232b8df866b713f65b` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0x413bd9d425d67baf7147c7289a1588dd7fb9eb0b` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0x4333dae4fa88849e307c941ecc3a67bdebf9aef8` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0x45c5672f239dc7a81f5dee67041bfd9b10c97e5a` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0x4673eb11ee2c8ed411697c79b41d7f531d820139` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0x46785a0c8cbf91dd0ad8aab9f9934b2d808d0857` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0x472a49263ec0891dfb2d889827fa3a9c410f74ae` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0x48b6527937b5baa7e1be4880b2ba8d4f3d91b02f` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0x4b718f3948415284a7c3f199f9e97c7f312081de` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0x4c606eb32ebfe09b974459091897fbe9e25e76db` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0x4cf73a6f72b8093b96264a794064372edb15508e` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0x50744d16fd2a22e6a3b6108725a315dd662a6673` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0x50a76acc2838ca53488f51fdc5306c27168a57f3` | non_address_book | unknown | unknown | unverified | n/a | `0x656681a6d7d1a4302df930a2cab5d55a764d859c` |
| unverified unclassified | UnnamedContract<br>`0x50d81e250c7b27c4c50b93ab9211ea903e30484c` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0x52b03437b4e13ea3224d960bde7945852ee1bb9c` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0x552f72d329ddf311350c0e0be4ab2bbb0e62ca2c` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0x566eedf35372cc37c947afe4b0215a9529ad1f6c` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0x56d9689029d53309c32942d24fb34393b2382e58` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0x58f6ca1b37576002b41a4b4e536d866ad4557274` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0x59c5da12f7eb7d7aa696958834a0ec7fa19d2414` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0x5b391262f7daafa2910543bafdc4cf53dbdb1b27` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0x5bd681d3fbf49e7b22531902198c69d2c380968d` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0x5c7ef73b10f33cbcbe3b5216e22c23f1c32756b3` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0x5d4ae1387ac10c6c7a8059367ad22cdfc7936187` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0x5d6dcf11aafa8d96b888ce2e9ac51531d8ceaf65` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0x5dca83b16d85a521ba2a37894936e5b43b4e0294` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0x5df1e55c9601138f24f7ad5dcba7f6e6b5915ed7` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0x5f5686c04e86696ec01a014ea8a1ff388dc00009` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0x5fd57ee6bacdce418270d825f949d59b3eee2183` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0x607fbcf8420a779e72e440440c7f31278eb99b48` | non_address_book | unknown | unknown | unverified | n/a | `0xaaf7ff4b31bf4757ae32ae3d66ec361ddab830c1` |
| unverified unclassified | UnnamedContract<br>`0x6336e6daf07f6a4a902bc2f4f4f005f197cc7a96` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0x636353773f8f199a4fb521bd5c0b1d36bfd1985d` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0x65e99c10096987e14115915fb524f5d600fab3c4` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0x663ef801343a4204149d9989d72a71dc59494c10` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0x6686a7e77ae0d36a0f81cab2a3d3828ae4fd946e` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0x67cbfe82828079e356ea694916d03a807b43011a` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0x68aeeab7093b554623b66574266e7fb3407b25ff` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0x6ac0fe5f85ecb01705ffedd7da6daa9a281b53fa` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0x6d6e965cf94b86ed14095e576828482d27ddcb04` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0x6e2878f15c00bb1b0487ce0ad6cad20cff52d961` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0x6f5cb4c98f279757a9b3d882d26621747e92184b` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0x6f981756942b41892290c706cfe991763cae1526` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0x70077d8c1e0c7cc5cad7cb927ee0a8b4d3abd83e` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0x708a3bb7ad08df59ef05285c6d5c8d1687e3fa9a` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0x710ff73efa7a643491f70e05740f6b6533852398` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0x79138374ed54570303b17fcab8df4700a640cc6f` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0x7a254e3c78419224dfdfe5833431be0ad203ac43` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0x7a46e06d214bff1248449095a727faa08d042654` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0x7aa61282ccda427c4b3ce7c3a91ec6d9980b5dfc` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0x7b50109ad6e9543cd539841acd26987b52f822f7` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0x7d64802f6e2bb28d1b00b2459dbe35b347588a59` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0x7d8759dd53891517dedc470d7666f55ec71d3dfa` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0x7e0f01918d92b2750bbb18fcebeedd5b94ebb867` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0x7f4c9aa2000bd06272ca2355f6ae45b3ecead887` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0x807d8c6dd3e5a47c69b5497e5b6878fe52802826` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0x81fc768111b5180b204b2f56fac807731d83ce06` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0x835628cb82a6ebc949faed5a970ffee37364dc39` | non_address_book | unknown | unknown | unverified | n/a | `0xaaf7ff4b31bf4757ae32ae3d66ec361ddab830c1` |
| unverified unclassified | UnnamedContract<br>`0x83e44fc5eafc436cf13ff4600a64d9a440052203` | non_address_book | unknown | unknown | unverified | n/a | `0xaaf7ff4b31bf4757ae32ae3d66ec361ddab830c1` |
| unverified unclassified | UnnamedContract<br>`0x871a0eb64154e27aebd371a7346557ec2c7cafcc` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0x8a95d219b3d5ed060b14e10cd2b4fa864c651ff3` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0x8abc60d3a3799319fadd48bbd5cbf6366327117a` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0x8b67dc49ff282686b33099487dbefe82225039e2` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0x8bb93454b68356d830e619631d09b6a0d98e3354` | non_address_book | unknown | unknown | unverified | n/a | `0xaaf7ff4b31bf4757ae32ae3d66ec361ddab830c1` |
| unverified unclassified | UnnamedContract<br>`0x8bcfa7f0fffeae95b9490cca725b6455b6ac1231` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0x8bf25d57e23e58b20b4b992839ceb07132882dcd` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0x8d3b5c57d44afdf2044eddd37301346e25c37c7f` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0x8d9c906ac8f58cc0918d8e0ce1be948dff5263af` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0x8f3d3fbe1c51ece5aab5b3ef11bf4dcff38fa440` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0x906bc463538070c4af794917e98ff15442cd6686` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0x91a7e034e65b7a508c64bbead0e5588744a4f5f1` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0x924b9d29af3fa5c37290ac87c1869a2965e52d09` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0x92a082ad5a942140bcc791081f775900d0a514d9` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0x93adfbadf862401146a731cfdff493b33c0adf8b` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0x9464b374c531518b68f6c780e0f647ae54d185f8` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0x94a5d23c02e839793128615f968177b76b0e0b42` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0x972da41a5af1284f2d5a4efeea53a3f484f5f5f2` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0x985220f21ba808e98246fb55784bc22b6c790e86` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0x98a586ca0d8611eccb5635558839f0fae8cec047` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0x992be6fc0712c112b6d55ff1705207a80bab44f4` | non_address_book | unknown | unknown | unverified | n/a | `0xaaf7ff4b31bf4757ae32ae3d66ec361ddab830c1` |
| unverified unclassified | UnnamedContract<br>`0x9b994e6fd91f9087899552917745a575df3f6db8` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0x9c3af2a52a11eae812e86876c9e02e0ed72a7256` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0x9c9aca839e714b838d6efe3a0b89a9871c1ca54f` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0x9d25b481e038b7ef93a8defd01626fcee5026e75` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0x9d39cd20901c88030032073fb014aaf79d84d2c5` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0x9e9cf75f6a17c8168801949d8cfd1795b478fe5d` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0x9f7746ba5412c1196683d05870eed6b19a87f84f` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0x9f92d8a07cc5f4328fb7bd8ed9c06bff8f093739` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0xa0c265743b914ed871eaebc1b9013abe4fbec9e1` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0xa1a2863317d159eff6ca2cc13ff9f1fbd7304544` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0xa20e65a29cb5a29a106e377b49b26f6f01f4759e` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0xa23db1677ae4b54434377b42d3d074c87b61cc18` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0xa291d5ecdb601314ac8e3d60c26706354736de80` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0xa3948b027f94ca195eac645746435aaa7eb555a7` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0xa3ed62edb08f5c9c323188dfd9a295dde44c0bc3` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0xa463d49bd79cd63a3c39359371cc764a4e051988` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0xa4b2214b9ffb75b5c0041a7be40acef505662d14` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0xa51bc54d23917eba51fe6b6db2868d7f47264eb7` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0xa569308f2965434fa773a60630323b8e15603827` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0xa68b27df552bdbcfa84360aae9bb97b8c8d47038` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0xa7cc3cec0bce2bdee57a6e794a7349d9b6cd9c36` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0xab966070b18c0230ec40ce010f38c94c6541cca7` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0xaf735603fda61933deacfb56391df748f91158cc` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0xb0cdea9604b23fa0b37eae4646d78cb2f01b293a` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0xb19bc02928039e36ce4e4fcd750a06bb3f2a345e` | non_address_book | unknown | unknown | unverified | n/a | `0xaaf7ff4b31bf4757ae32ae3d66ec361ddab830c1` |
| unverified unclassified | UnnamedContract<br>`0xb1d9ca472ffd3366e46284451e063fb9d9997de5` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0xb2b1dc3204ee8899d6575f419e72b53e370f6b20` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0xb375c0a5328e5d036a35e35b2ef97dbfae74defe` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0xb390b07fcf76678089cb12d8e615d5fe494b01fb` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0xb45d1bf31a067d77bd49acf63533762e6979c86c` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0xb4b614ccafae6bf0b9031db4c395577a038cc4e7` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0xb5acd3c1ca0a25a7cb170f1a7090a2a7508f0159` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0xb69b6c3e3d329d09968acd90442375c9762d5897` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0xb70d84fe8d62fc1f1da7ca88f41d6f277ccb0570` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0xb89a4b71d629d44735aea53c5d6954053362583f` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0xb90910104ff130dee80d237f27d1afa4e1c9f2c3` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0xb91afcf769e78c612edf4d3d9b050af5c3d412e9` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0xbcbe231df846a7caabfe6492a629447a0d4c9c6d` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0xbcd38a5ac9bcde5d9a56b02d024fe02699c3549f` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0xbd058ea5507549b3703c38f992260a6879938219` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0xbd416c94e61b0b60e064bba84c99aab916ec3d24` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0xbe1bda607d8660e0bc274eb0afa7223d7ae51f0d` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0xbf70245874927fefe6cceac2ac322ffc95d6e767` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0xc1db7603827cb1a99c50ec1fff48113259fc6a12` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0xc218c5a52290bfbc8bdcb5e1b35c2ab4e7e4a008` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0xc297aa5376dec4bd7f8f194873dabe294391a0f6` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0xc56daac1a29bc4cd6ce1ed3c5c86fda2093ad117` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0xc591d5e63f9a71667a73e8027ddf57db57eb99f3` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0xc5cb9521c8a053e7c86d39d84f575459f99ad9e1` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0xc60c6854d10c034718aca198fe92d73eb83b744c` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0xc666ba55cb32c9fa814e4c27411058076713c93b` | non_address_book | unknown | unknown | unverified | n/a | `0xaaf7ff4b31bf4757ae32ae3d66ec361ddab830c1` |
| unverified unclassified | UnnamedContract<br>`0xc670c4d290612e197980ba4a0c17a0fa807154ed` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0xc6e22b0f925004259e2c05b9ebeffbc00b83e70f` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0xc944d147cb21d81f01637c811312893e0f3a497c` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0xc9b7a71249aeda0f5b070a07d15c26bf9a144967` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0xce1a28db18415ec1947bd79865a4deec96ca7248` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0xcfcddf9c4ab9fbb90e34570b7fdd46ffa71c4992` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0xd0b2662f08b39d9ff2c579807befdee1ebe2d9db` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0xd25a8a41073696ab915176cf4221b2d216c85638` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0xd2ae88d0caeaf08797822e268b25b90f5dea2651` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0xd2c60f1453ae7d804cb4cabfaf58b216bcd97c45` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0xd31b0097859a0ad998ac9e9ba87558e216d4c0f0` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0xd4c6c512e6f36020595e3e1ff7c7027f9f8f8962` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0xd517040576b70112d3cddd255ee5616977a438c9` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0xd55373b43ae205861c364306103c7e25125ab8e1` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0xd6045a5d10a6cec0b42877eb42cba5e622c4319c` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0xd6589d508e8b81855d772038d144754546826f0d` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |
| unverified unclassified | UnnamedContract<br>`0xd6c778010f871de1c09cac22ebcba6474a061fd3` | non_address_book | unknown | unknown | unverified | n/a | `0x4c4871e1c48bc7c1e86d9cf3d41846e9a2c24c36` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | `0x81859801b01764d4f0fa5e64729f5a6c3b91435b` | BFI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 82 |
| upstream | 0 |
| standard_library | 8 |
| needs_review | 245 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
