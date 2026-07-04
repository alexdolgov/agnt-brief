# Agentic Audit Brief: BearnFi

## Project Overview

- Project: BearnFi (`bearnfi`)
- Website: [https://www.bearn.fi/](https://www.bearn.fi/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:05:33.455Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: bsc
- Contract surface: 90 unique implementations (90 raw deployments)
- DeFi Llama TVL: $594,000.04
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield. Structurally: 90 project-authored contract(s) across 1 chain(s); 28 ERC20 tokens, 2 ERC721 NFTs, 2 Chainlink feeds; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol forms a single structural family (Core Logic) of 90 contract(s).

## Contract Surface Quality

- Indexed contracts: 90; live-surface contracts included: 90 (90 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/90 (0.0%)
- Deployed-live implementations: 90 of 90 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/90
- Verified + Unaudited implementations: 90
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 90
- Raw deployments: 90
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-02 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (90)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Address | unknown | bsc | n/a | [`0x406a4a...f1c292`](./contracts/bsc-56/0x406a4abc2ddd86c26fc18c1bc6a135244af1c292/) | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | bsc | n/a | [`0x2c358a...d1e715`](./contracts/bsc-56/0x2c358a7c62cdb9d554a65a86eea034bc55d1e715/) | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | bsc | n/a | [`0x40d39e...368908`](./contracts/bsc-56/0x40d39e8bee8176fb661a4a407684e2c7d1368908/) | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | bsc | n/a | [`0x4af9cd...0ad611`](./contracts/bsc-56/0x4af9cda5758568ad079345fdfe0e15f35a0ad611/) | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | bsc | n/a | [`0x5d42dc...54656b`](./contracts/bsc-56/0x5d42dc503763dd1e7a1b510b055150cc5754656b/) | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | bsc | n/a | [`0x916453...1976a7`](./contracts/bsc-56/0x9164537c82aba29f30aeef0bbb8ed54fcc1976a7/) | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | bsc | n/a | [`0x970d44...00b915`](./contracts/bsc-56/0x970d44a567db3dd33f25a81d27f2499c0200b915/) | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | bsc | n/a | [`0xb44180...92acb8`](./contracts/bsc-56/0xb44180151931c00d35784152a2feacf68c92acb8/) | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | bsc | n/a | [`0xc3103e...fa7ff9`](./contracts/bsc-56/0xc3103e083399c66f9e11d0429f315db5b4fa7ff9/) | ⚠️ Unaudited |
| BdexChefLocked | unknown | bsc | n/a | [`0x0fd33c...7a5a23`](./contracts/bsc-56/0x0fd33c2742a9922bc34433f4e39e120c0c7a5a23/) | ⚠️ Unaudited |
| BdexFormula | unknown | bsc | n/a | [`0xcb9f34...c92038`](./contracts/bsc-56/0xcb9f345c32e2216e5f13e1a816059c6435c92038/) | ⚠️ Unaudited |
| BdexRouter | unknown | bsc | n/a | [`0xc67479...ee76aa`](./contracts/bsc-56/0xc6747954a9b3a074d8e4168b444d7f397fee76aa/) | ⚠️ Unaudited |
| BdexToken | unknown | bsc | n/a | [`0x319a1f...439e88`](./contracts/bsc-56/0x319a1fc65775020de5d996c9a6a16d5401439e88/) | ⚠️ Unaudited |
| BDOAggregatorProxy | unknown | bsc | n/a | [`0xad113f...755d3e`](./contracts/bsc-56/0xad113f461f4e8102cb19603cd6621a318e755d3e/) | ⚠️ Unaudited |
| bDollarVote | unknown | bsc | n/a | [`0xc4f7b8...5228bc`](./contracts/bsc-56/0xc4f7b82f3e09bfba5f8b910f336ae9df585228bc/) | ⚠️ Unaudited |
| bDollarVoteProxy | unknown | bsc | n/a | [`0x815661...d3b173`](./contracts/bsc-56/0x81566135df68ffa48d2b3be6cbcbaff1bed3b173/) | ⚠️ Unaudited |
| BdoRewardPool | unknown | bsc | n/a | [`0x7a4cfc...e73ced`](./contracts/bsc-56/0x7a4cfc24841c799832fff4e5038bba14c0e73ced/) | ⚠️ Unaudited |
| BDOv2 | unknown | bsc | n/a | [`0x165fde...a0c5fa`](./contracts/bsc-56/0x165fde740c0d0b6cb52beeb6b3800c4a47a0c5fa/) | ⚠️ Unaudited |
| BDOv2Oracle | unknown | bsc | n/a | [`0x226e7c...030699`](./contracts/bsc-56/0x226e7ca70a19f597ac2ff896a8fafd8ce4030699/) | ⚠️ Unaudited |
| BearnAuthority | unknown | bsc | n/a | [`0xd567f4...a18475`](./contracts/bsc-56/0xd567f46b1b95e9852b64cc51290e8ffc0aa18475/) | ⚠️ Unaudited |
| BearnBar | unknown | bsc | n/a | [`0xaaaf5d...60ac7a`](./contracts/bsc-56/0xaaaf5d9923be358ea0b6205ef2a3b929d460ac7a/) | ⚠️ Unaudited |
| BearnChef | unknown | bsc | n/a | [`0x3d695c...518edb`](./contracts/bsc-56/0x3d695c1607a085773547e07def1ad3ce3f518edb/) | ⚠️ Unaudited |
| BearnERC20Token | unknown | bsc | n/a | [`0xbb5e26...1847de`](./contracts/bsc-56/0xbb5e26f25a034a7f0c02a3d0628b5f5c681847de/) | ⚠️ Unaudited |
| BearnEthereumGateway | unknown | bsc | n/a | [`0x8a714c...52684b`](./contracts/bsc-56/0x8a714c75fffc505d486eed7ef074fd2c1252684b/) | ⚠️ Unaudited |
| BearnReferral | unknown | bsc | n/a | [`0xc9c015...ae505c`](./contracts/bsc-56/0xc9c0159644d3789eceb4f8cdfcf99c7605ae505c/) | ⚠️ Unaudited |
| BearnStaking | unknown | bsc | n/a | [`0x2afa00...5a3379`](./contracts/bsc-56/0x2afa00732b8a9f08542699dd9451fdf3335a3379/) | ⚠️ Unaudited |
| BearnTokenMigrate | unknown | bsc | n/a | [`0xb6abbf...d7c7bd`](./contracts/bsc-56/0xb6abbfee0e2a0fe75267dfa6f779471cf3d7c7bd/) | ⚠️ Unaudited |
| BearnTreasury | unknown | bsc | n/a | [`0x63d211...34c895`](./contracts/bsc-56/0x63d211c7f0f780b8e9ca6d0622aadb7a2f34c895/) | ⚠️ Unaudited |
| BearnZapperRouter | unknown | bsc | n/a | [`0x197317...a5f13b`](./contracts/bsc-56/0x197317c2a6d16efb62c370f52f8c11422ba5f13b/) | ⚠️ Unaudited |
| BFI | unknown | bsc | n/a | [`0x818598...91435b`](./contracts/bsc-56/0x81859801b01764d4f0fa5e64729f5a6c3b91435b/) | ⚠️ Unaudited |
| BnbNumberBet | unknown | bsc | n/a | [`0xa2b67a...dad85d`](./contracts/bsc-56/0xa2b67a659b098ef71a02e407bf8e637edddad85d/) | ⚠️ Unaudited |
| Boardroom | unknown | bsc | n/a | [`0x1207fb...54ffcc`](./contracts/bsc-56/0x1207fb4223d273ce37ad24df9f21a6736654ffcc/) | ⚠️ Unaudited |
| Bond | unknown | bsc | n/a | [`0x9586b0...092063`](./contracts/bsc-56/0x9586b02b09bd68a7cd4aa9167a61b78f43092063/) | ⚠️ Unaudited |
| BondLpRewardPool | unknown | bsc | n/a | [`0x186f97...2437bf`](./contracts/bsc-56/0x186f972d9a88a6205a50be25ebdf8149e32437bf/) | ⚠️ Unaudited |
| bpDOGE | unknown | bsc | n/a | [`0xcfdb9f...d6be25`](./contracts/bsc-56/0xcfdb9f1b40513adf7f83aa2646a0309ee5d6be25/) | ⚠️ Unaudited |
| bpDOGERewardPool | unknown | bsc | n/a | [`0x674388...9a641f`](./contracts/bsc-56/0x6743888118d6f9c7363ea13da12e1f37f99a641f/) | ⚠️ Unaudited |
| bpDOT | unknown | bsc | n/a | [`0x557b3a...6677c6`](./contracts/bsc-56/0x557b3ab377bbd68dfc6dadefafa3cc4e4b6677c6/) | ⚠️ Unaudited |
| bpDOTLiquidityToken | unknown | bsc | n/a | [`0xa8b80c...bcf1df`](./contracts/bsc-56/0xa8b80c7d3c7b17c0d95777804ffd4b5f9ebcf1df/) | ⚠️ Unaudited |
| bpDOTRewardPool | unknown | bsc | n/a | [`0xcab056...bd0ce6`](./contracts/bsc-56/0xcab056427f99c9db95e7fd39b16ac7f1aebd0ce6/) | ⚠️ Unaudited |
| bpEUR | unknown | bsc | n/a | [`0xc66087...9f17f2`](./contracts/bsc-56/0xc66087b151e5de3a414a22d442f073c0e19f17f2/) | ⚠️ Unaudited |
| bpEURRewardPool | unknown | bsc | n/a | [`0x656818...108a93`](./contracts/bsc-56/0x6568189df509a6bbd3e1f06c7da48ab0f8108a93/) | ⚠️ Unaudited |
| bpJPY | unknown | bsc | n/a | [`0xb7a6be...6ada96`](./contracts/bsc-56/0xb7a6be8e3f5e852077699a6d85fd6f9bb96ada96/) | ⚠️ Unaudited |
| bpJPYRewardPool | unknown | bsc | n/a | [`0x7d2750...fb7d33`](./contracts/bsc-56/0x7d27509c7c34b850866a80caf8a5a469eefb7d33/) | ⚠️ Unaudited |
| Bpower | unknown | bsc | n/a | [`0xff289b...6c252c`](./contracts/bsc-56/0xff289b10e7ffa4f2981e7e3b94faf060696c252c/) | ⚠️ Unaudited |
| bpTokenBoardroom | unknown | bsc | n/a | [`0x17e302...626af4`](./contracts/bsc-56/0x17e3021d668bd7ca0eb277832690ccfea0626af4/) | ⚠️ Unaudited |
| bpTokenOracle | unknown | bsc | n/a | [`0x0600db...f29f0d`](./contracts/bsc-56/0x0600dbad1ae9af99460f77db0ad5163f4cf29f0d/) | ⚠️ Unaudited |
| bpUNI | unknown | bsc | n/a | [`0xd3b723...7ee48a`](./contracts/bsc-56/0xd3b7233c3ce74c9a603b1717e5d265b1b97ee48a/) | ⚠️ Unaudited |
| bpUNIRewardPool | unknown | bsc | n/a | [`0x7ad899...37e720`](./contracts/bsc-56/0x7ad8992437c0b281e0d799bc6e7d66bb2437e720/) | ⚠️ Unaudited |
| bpXAU | unknown | bsc | n/a | [`0xeaaf11...8cfe8e`](./contracts/bsc-56/0xeaaf11ff129c2e44801ca6c169c32bee728cfe8e/) | ⚠️ Unaudited |
| bpXAURewardPool | unknown | bsc | n/a | [`0xee2391...76d33b`](./contracts/bsc-56/0xee23918f59b89faa1418e445c409edbc6076d33b/) | ⚠️ Unaudited |
| BvaultsBank | unknown | bsc | n/a | [`0x100b6d...83ffe0`](./contracts/bsc-56/0x100b6d455707179799dec0cb36d8cebdf483ffe0/) | ⚠️ Unaudited |
| BvaultsHarvestInfo | unknown | bsc | n/a | [`0x337269...e9c1d5`](./contracts/bsc-56/0x3372694569003dba8722026666f6777790e9c1d5/) | ⚠️ Unaudited |
| BvaultsStrategy | unknown | bsc | n/a | [`0x01c559...c6299a`](./contracts/bsc-56/0x01c559f75d8354d740215ebb85822be01dc6299a/) | ⚠️ Unaudited |
| BvaultsStrategyMigratable | unknown | bsc | n/a | [`0x0667b2...811ab6`](./contracts/bsc-56/0x0667b25bd7c7c0969750a3f87d4e421f7c811ab6/) | ⚠️ Unaudited |
| BvaultsStrategyStaking | unknown | bsc | n/a | [`0x97c1de...b5411f`](./contracts/bsc-56/0x97c1de302c00918ec80a48b9c7dce2f772b5411f/) | ⚠️ Unaudited |
| CErc20 | unknown | bsc | n/a | [`0xbfe68f...a1b44b`](./contracts/bsc-56/0xbfe68f4d7d1fbe8798b37c19ab044db412a1b44b/) | ⚠️ Unaudited |
| CErc20Delegate | unknown | bsc | n/a | [`0x00dfd1...073b25`](./contracts/bsc-56/0x00dfd1b4db772c6c8d3ca26fb6e32caf98073b25/) | ⚠️ Unaudited |
| CEther | unknown | bsc | n/a | [`0x8937f6...161ce3`](./contracts/bsc-56/0x8937f6529fc8430440d0e1417492aef96c161ce3/) | ⚠️ Unaudited |
| CommunityFund | unknown | bsc | n/a | [`0x10cb22...026793`](./contracts/bsc-56/0x10cb228c83a325b19a4e0dcebdf65ecf89026793/) | ⚠️ Unaudited |
| Comptroller | unknown | bsc | n/a | [`0x12a43d...f427f4`](./contracts/bsc-56/0x12a43deb40c5b717f622994fb27c8a6e17f427f4/) | ⚠️ Unaudited |
| ConcurrentBuyer | unknown | bsc | n/a | [`0x9f03c3...9a47f1`](./contracts/bsc-56/0x9f03c399903b76fe98ef689f507295b0169a47f1/) | ⚠️ Unaudited |
| DaoFundTradeRouter | unknown | bsc | n/a | [`0x406f18...251319`](./contracts/bsc-56/0x406f18e76489a414dfce9f6f3e59f76574251319/) | ⚠️ Unaudited |
| Distributor | unknown | bsc | n/a | [`0x4f93f6...0114c8`](./contracts/bsc-56/0x4f93f6ac58498dc6cd689170f1e872453d0114c8/) | ⚠️ Unaudited |
| DOGEAggregatorProxy | unknown | bsc | n/a | [`0xcaf40e...996ed5`](./contracts/bsc-56/0xcaf40e48262ed04c615c0d2a3cf32bc6b9996ed5/) | ⚠️ Unaudited |
| Dollar | unknown | bsc | n/a | [`0x190b58...702454`](./contracts/bsc-56/0x190b589cf9fb8ddeabbfeae36a813ffb2a702454/) | ⚠️ Unaudited |
| DuelToken | unknown | bsc | n/a | [`0xb96499...d46ede`](./contracts/bsc-56/0xb9649983ef6a24092cc341a93f9c03cea6d46ede/) | ⚠️ Unaudited |
| gBEARN | unknown | bsc | n/a | [`0xb32d89...d0c3e8`](./contracts/bsc-56/0xb32d894bd464bfb6abd789a99cbfb14359d0c3e8/) | ⚠️ Unaudited |
| JumpRateModelV2 | unknown | bsc | n/a | [`0x234a3f...ada6be`](./contracts/bsc-56/0x234a3fb23ced6956352b34e3aa052b10a2ada6be/) | ⚠️ Unaudited |
| Lottery | unknown | bsc | n/a | [`0x741b4c...ba0a5e`](./contracts/bsc-56/0x741b4c0aee6118fe5eb59b19dbd0cd55adba0a5e/) | ⚠️ Unaudited |
| LotteryNFT | unknown | bsc | n/a | [`0x402c66...9fb037`](./contracts/bsc-56/0x402c66c6d05c8b460cecd2ca281e44a96e9fb037/) | ⚠️ Unaudited |
| LoyaltyNFT | unknown | bsc | n/a | [`0x87d703...45f1ef`](./contracts/bsc-56/0x87d70315fec0c782818ecd616f9a74f55d45f1ef/) | ⚠️ Unaudited |
| MerkleDistributor | unknown | bsc | n/a | [`0x63d7cb...38179b`](./contracts/bsc-56/0x63d7cb51977a2a85cd2aa64b72f6325a3238179b/) | ⚠️ Unaudited |
| MultiSigWalletWithDailyLimit | unknown | bsc | n/a | [`0x697eba...c507a4`](./contracts/bsc-56/0x697ebada0abfb833a62f0e6171e00bab04c507a4/) | ⚠️ Unaudited |
| OlympusV1BondDepository | unknown | bsc | n/a | [`0x61fbf3...bba8e7`](./contracts/bsc-56/0x61fbf36a0a4be9e88f02990d13c9517bf9bba8e7/) | ⚠️ Unaudited |
| OracleSinglePair | unknown | bsc | n/a | [`0xfab911...7b5b20`](./contracts/bsc-56/0xfab911c54f7cf3fffde0482d2267a751d87b5b20/) | ⚠️ Unaudited |
| OracleVPeg | unknown | bsc | n/a | [`0x4322f5...4a69d0`](./contracts/bsc-56/0x4322f55db1e6615a36e42074b390f7f0354a69d0/) | ⚠️ Unaudited |
| PlaceHolderToken | unknown | bsc | n/a | [`0xd69170...8377af`](./contracts/bsc-56/0xd691700db1750e6f2c75af8676902bf1248377af/) | ⚠️ Unaudited |
| PriceOracle | unknown | bsc | n/a | [`0x507ea5...c04341`](./contracts/bsc-56/0x507ea5ad641c9d12dcdaff95ae5c231596c04341/) | ⚠️ Unaudited |
| PriceOracleProxyBSC | unknown | bsc | n/a | [`0x16c98f...675afe`](./contracts/bsc-56/0x16c98f0a7948b3094769301d545aa664d0675afe/) | ⚠️ Unaudited |
| ProtocolFeeRemover | unknown | bsc | n/a | [`0x8a1c6b...0f9dcc`](./contracts/bsc-56/0x8a1c6b63ba5358ca58f175dda5ec2dc9570f9dcc/) | ⚠️ Unaudited |
| sBEARN | unknown | bsc | n/a | [`0x54b62b...9d5582`](./contracts/bsc-56/0x54b62b277b000f96f45cff8dc14d3614c99d5582/) | ⚠️ Unaudited |
| Share | unknown | bsc | n/a | [`0x0d9319...ae2740`](./contracts/bsc-56/0x0d9319565be7f53cefe84ad201be3f40feae2740/) | ⚠️ Unaudited |
| ShareRewardPool | unknown | bsc | n/a | [`0x948db1...566766`](./contracts/bsc-56/0x948db1713d4392ec04c86189070557c5a8566766/) | ⚠️ Unaudited |
| StandardBep20 | unknown | bsc | n/a | [`0xf8397e...791d8c`](./contracts/bsc-56/0xf8397e7c7eb51d1d417c23201e8e95238b791d8c/) | ⚠️ Unaudited |
| StandardBep20Gateway | unknown | bsc | n/a | [`0x228d9a...65fbd2`](./contracts/bsc-56/0x228d9a2f89d6ae69ca77618910beb9e35f65fbd2/) | ⚠️ Unaudited |
| TimelockHasOperator | unknown | bsc | n/a | [`0x2ad335...81f213`](./contracts/bsc-56/0x2ad335e18c97d18561dd1a0c1447b1018b81f213/) | ⚠️ Unaudited |
| Treasury | unknown | bsc | n/a | [`0x020fe9...cd97a8`](./contracts/bsc-56/0x020fe9375de1793d6943391c4aa6511ca6cd97a8/) | ⚠️ Unaudited |
| v80wBDEX | unknown | bsc | n/a | [`0x41bc5c...b0521c`](./contracts/bsc-56/0x41bc5cb325681c3d149afd2f0df2f2d419b0521c/) | ⚠️ Unaudited |
| xBDEX | unknown | bsc | n/a | [`0x1edb8a...98b120`](./contracts/bsc-56/0x1edb8a083560ec009888377c969acb736398b120/) | ⚠️ Unaudited |
| xBFI | unknown | bsc | n/a | [`0x454f7b...22b7bf`](./contracts/bsc-56/0x454f7b758a3f6077faa3c0c2d57928537122b7bf/) | ⚠️ Unaudited |

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
| [skynet.certik.com/projects/bdollar](https://skynet.certik.com/projects/bdollar) | CertiK | Audit | 2021-02 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 90 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [21344] skynet.certik.com/projects/bdollar

Fork inheritance lineage and inherited audits are included when available.
