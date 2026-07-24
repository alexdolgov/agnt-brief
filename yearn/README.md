# Agentic Audit Brief: Yearn

## Export Authority

- Production state: **published scope**
- Raw selected rows: 25 across 12 audit(s)
- Eligible audit results: 89 (12 matched; 77 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Yearn (`yearn`)
- Website: [https://yearn.fi/](https://yearn.fi/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, base, ethereum, fantom, optimism, polygon
- Contract surface: 2096 unique implementations (2097 raw deployments)
- Coverage basis: 9/97 confirmed own live verified implementations (9.3%); conservative 9.3% with 0 needs-review implementation(s)
- DeFi Llama TVL: $202,148,460.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Yearn. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 97 contract row(s) across arbitrum, base, ethereum, fantom, optimism, polygon, x-layer. Structural roles: 60 core, 27 unclassified, 10 supporting. 4 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 97
- Structural roles: core (60), unclassified (27), supporting (10)
- Contract kinds: contract (70), unclassified (27)
- Detected standards: erc20 (7), erc165 (3), ownable (3), accesscontrol (2), erc4626 (2), erc1967proxy (1), erc20permit (1), multicall (1)
- Frameworks: openzeppelin (32), openzeppelin-upgradeable (3), solmate (2)
- Upgradeable-pattern rows: 4

## Fork Analysis

3 of 245 contracts are derived from known codebases. 242 contracts have no detected origin.

### Forked Contracts

**RoleManager** (`0x3bf72024420bdc4d7ca6a8b6211829476d6685b1`, chain 42161)
Origin: lido (`0x1bb44f...975bf3`)
Containment: 100.0% - 37 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**YBSUtilities** (`0x265c8d21a322b04804524b857089de2fef619569`, chain 1)
Origin: stake-dao (`0x499099...c505c3`)
Containment: 91.3% - 21 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original):
- getUserActiveAprWithFee(address,uint256,uint256)
- getUserProjectedAprWithFee(address,uint256,uint256)

**Yearn4626Router** (`0x1112dbcf805682e828606f74ab717abf4b4fd8de`, chain 1)
Origin: cove-finance (`0x15633d...ce53e3`)
Containment: 69.4% - 25 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original):
- previewDeposits(address[],uint256)
- previewMints(address[],uint256)
- previewRedeems(address[],uint256)
- previewWithdraws(address[],uint256)
- pullTokenWithPermit2(ISignatureTransfer.PermitTransferFrom,ISignatureTransfer.SignatureTransferDetails,bytes)
- redeemFromRouter(IERC4626,uint256,address,uint256)
- redeemStakeDaoGauge(IStakeDaoGauge,uint256,address)
- redeemVaultV2(IYearnVaultV2,uint256,address,uint256)
- serializedDeposits(address[],uint256,address,uint256)
- serializedRedeems(address[],bool[],uint256,address,uint256)
- withdrawFromRouter(IERC4626,uint256,address,uint256)

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x0844c227b892be5d7c837000c096f64bfc316c2d`, chain 1)
- UnnamedContract (`0x1ab62413e0cf2ebeb73da7d40c70e7202ae14467`, chain 1)
- UnnamedContract (`0x1f6f16945e395593d8050d6cc33e4328a515b648`, chain 1)
- UnnamedContract (`0x254a93feff3beef9ca004e913bb5443754e8ab19`, chain 1)
- UnnamedContract (`0x27b5739e22ad9033bcbf192059122d163b60349d`, chain 1)
- UnnamedContract (`0x28da6de3e804bddf0ad237cfa6048f2930d0b4dc`, chain 1)
- UnnamedContract (`0x310f5db015e9d6e542fd41bd4542640790791e76`, chain 1)
- UnnamedContract (`0x33333333d5efb92f19a5f94a43456b3cec2797ae`, chain 1)
- UnnamedContract (`0x38e3d865e34f7367a69f096c80a4fc329db38bf4`, chain 1)
- UnnamedContract (`0x41b994c192183793bb9cc35baab8bd9c6885c6bf`, chain 1)
- UnnamedContract (`0x4218e20db87023049fc582aaa4bd47a3611a20ab`, chain 1)
- UnnamedContract (`0x444045c5c13c246e117ed36437303cac8e250ab0`, chain 1)
- UnnamedContract (`0x46b38522422d597ddbaa2d6e98d6c9b397028d5b`, chain 1)
- UnnamedContract (`0x4707c855323545223fa2ba4150a83950f6f53b6e`, chain 1)
- UnnamedContract (`0x50397cab18446761f05883338111ae0ed8213da3`, chain 1)
- UnnamedContract (`0x50c1a2ea0a861a967d9d0ffe2ae4012c2e053804`, chain 1)
- UnnamedContract (`0x52aa16860e0d42b6a7b6ecc15688472eb20135c9`, chain 1)
- UnnamedContract (`0x5577edcb8a856582297cdbbb07055e6a6e38eb5f`, chain 1)
- UnnamedContract (`0x5943f7090282eb66575662eadf7c60a717a7ce4d`, chain 1)
- UnnamedContract (`0x5a74cb32d36f2f517db6f7b0a0591e09b22cde69`, chain 1)
- UnnamedContract (`0x5a7cbc89d543399743d7c4b4a21110b19c6208ae`, chain 1)
- UnnamedContract (`0x622fa41799406b120f9a40da843d358b7b2cfee3`, chain 1)
- UnnamedContract (`0x696d02db93291651ed510704c9b286841d506987`, chain 1)
- UnnamedContract (`0x6e9455d109202b426169f0d8f01a3332dae160f3`, chain 1)
- UnnamedContract (`0x71c3223d6f836f84caa7ab5a68aab6ece21a9f3b`, chain 1)
- UnnamedContract (`0x770d0d1fb036483ed4abb6d53c1c88fb277d812f`, chain 1)
- UnnamedContract (`0x78ada385b15d89a9b845d2cac0698663f0c69e3c`, chain 1)
- UnnamedContract (`0x7cb5abeb0de8f6f46a27329b9ef54ce10e47f1e2`, chain 1)
- UnnamedContract (`0x7cf484d9d16ba26ab3bcdc8ec4a73ac50136d491`, chain 1)
- UnnamedContract (`0x7fd8af959b54a677a1d8f92265bd0714274c56a3`, chain 1)
- UnnamedContract (`0x81d93531720d86f0491dee7d03f30b3b5ac24e59`, chain 1)
- UnnamedContract (`0x846e211e8ba920b353fb717631c015cf04061cc9`, chain 1)
- UnnamedContract (`0x855ffe28019106d089bc018df18838f8d241c402`, chain 1)
- UnnamedContract (`0x88de7d7f7b9597c86b8cd195374fbf602934f334`, chain 1)
- UnnamedContract (`0x8e2485942b399ea41f3c910c1bb8567128f79859`, chain 1)
- UnnamedContract (`0x90c1f9220d90d3966fbee24045edd73e1d588ad5`, chain 1)
- UnnamedContract (`0x957e3ae7983155a9f9e08da555b8084448be26e4`, chain 1)
- UnnamedContract (`0x97983236be88107cc8998733ef73d8d969c52e37`, chain 1)
- UnnamedContract (`0x97a597cbca514afcc29cd300f04f98d9dbaa3624`, chain 1)
- UnnamedContract (`0xa0b57619a980dfefd50f24f310ee1b55a40a9d46`, chain 1)
- UnnamedContract (`0xa16f6fc7380300525c812ea2733ad62dda58143b`, chain 1)
- UnnamedContract (`0xaaafea48472f77563961cdb53291dedfb46f9040`, chain 1)
- UnnamedContract (`0xae813841436fe29b95a14ac701afb1502c4cb789`, chain 1)
- UnnamedContract (`0xaf1f5e1c19cb68b30aad73846effdf78a5863319`, chain 1)
- UnnamedContract (`0xb226c52eb411326cdb54824a88abafdaaff16d3d`, chain 1)
- UnnamedContract (`0xb287a1964aee422911c7b8409f5e5a273c1412fa`, chain 1)
- UnnamedContract (`0xb3bd6b2e61753c311efbcf0111f75d29706d9a41`, chain 1)
- UnnamedContract (`0xb61f8fff8dd8c438e0d61c07b5536ce3d728f660`, chain 1)
- UnnamedContract (`0xb70e1cbff4dff345b3aa832cc1c03ca26766ad55`, chain 1)
- UnnamedContract (`0xbb51273d6c746910c7c06fe718f30c936170fed0`, chain 1)
- UnnamedContract (`0xbbbbbbbb6b942883ead4976882c99201108c784d`, chain 1)
- UnnamedContract (`0xbe53a109b494e5c9f97b9cd39fe969be68bf6204`, chain 1)
- UnnamedContract (`0xbf319ddc2edc1eb6fdf9910e39b37be221c8805f`, chain 1)
- UnnamedContract (`0xc32bd1a70e831c43956ff2f5f23f2ee45a04c020`, chain 1)
- UnnamedContract (`0xca78af7443f3f8fa0148b746cb18ff67383cdf3f`, chain 1)
- UnnamedContract (`0xccd04073f4bdc4510927ea9ba350875c3c65bf81`, chain 1)
- UnnamedContract (`0xd192e702ecc54fcfb52f6764333eb8a5c849d6ce`, chain 1)
- UnnamedContract (`0xd377919fa87120584b21279a491f82d5265a139c`, chain 1)
- UnnamedContract (`0xd533a949740bb3306d119cc777fa900ba034cd52`, chain 1)
- UnnamedContract (`0xd57aea3686d623da2dcebc87010a4f2f38ac7b15`, chain 1)
- UnnamedContract (`0xd8063123bba3b480569244ae66bfe72b6c84b00d`, chain 1)
- UnnamedContract (`0xdc775e813cdb38a4f02c4bad3942319088018efa`, chain 1)
- UnnamedContract (`0xdd3fa86409658d207a9be0141ee560c8db557824`, chain 1)
- UnnamedContract (`0xddcea799ff1699e98edf118e0629a974df7df012`, chain 1)
- UnnamedContract (`0xde992c652b266ae649fec8048afc35954bee6145`, chain 1)
- UnnamedContract (`0xdfc8cd9f2f2d306b7c0d109f005df661e14f4ff2`, chain 1)
- UnnamedContract (`0xe0514dd71cfdc30147e76f65c30bdf60bfd437c3`, chain 1)
- UnnamedContract (`0xe28fcc9fb2998ba57754789f6666daa8c815614d`, chain 1)
- UnnamedContract (`0xe5e2baf96198c56380ddd5e992d7d1ada0e989c0`, chain 1)
- UnnamedContract (`0xe9a115b77a1057c918f997c32663fdce24fb873f`, chain 1)
- UnnamedContract (`0xe9cff16bdac9729f18cbac451ecca6c50b372207`, chain 1)
- UnnamedContract (`0xe9e8c89c8fc7e8b8f23425688eb68987231178e5`, chain 1)
- UnnamedContract (`0xf64e58ee8c7badc741a7ea98fb65488084385674`, chain 1)
- UnnamedContract (`0xf719b2d3925cc445d2bb67fa12963265e224fa11`, chain 1)
- UnnamedContract (`0xfcc5c47be19d06bf83eb04298b026f81069ff65b`, chain 1)
- UnnamedContract (`0xfeb4acf3df3cdea7399794d0869ef76a6efaff52`, chain 1)
- UnnamedContract (`0xff0bd2d0c7e9424ccb149ed3757155eef41a793d`, chain 1)
- UnnamedContract (`0x3d8f58774611676fd196d26149c71a9142c45296`, chain 10)
- UnnamedContract (`0x776c1e69b858f1b9622085052fb7b64a196ac602`, chain 10)
- UnnamedContract (`0x79286dd38c9017e5423073bac11f53357fc5c128`, chain 10)
- UnnamedContract (`0x81291ceb9bb265185a9d07b91b5b50df94f005bf`, chain 10)
- UnnamedContract (`0x8273217252254ad7353f227aaecd2b1c4a326fa2`, chain 10)
- UnnamedContract (`0x84654e35e504452769757aae5a8c7c6599cbf954`, chain 10)
- UnnamedContract (`0x88ba032be87d5ef1fbe87336b7090767f367bf73`, chain 10)
- UnnamedContract (`0x8eb53a4fd9d2727a49e9e68a32108c18049bff86`, chain 10)
- UnnamedContract (`0x94141d7bff3d04d61ce65b917bdd37b655e08f18`, chain 10)
- UnnamedContract (`0xd3a93c794ee2798d8f7906493cd3c2a835aa0074`, chain 10)
- UnnamedContract (`0xd63ab09ac2048a7ecac92f0ffad5f104edd0e032`, chain 10)
- UnnamedContract (`0xea3a15df68fcdbe44fdb0db675b2b3a14a148b26`, chain 10)
- UnnamedContract (`0xf5d9d6133b698ce29567a90ab35cfb874204b3a7`, chain 10)
- UnnamedContract (`0xf8f60bf9456a6e0141149db2dd6f02c60da5779b`, chain 10)
- UnnamedContract (`0x88ba032be87d5ef1fbe87336b7090767f367bf73`, chain 137)
- UnnamedContract (`0x9bcd66bf09ebe5dd35a868307b7638fd281061e2`, chain 137)
- UnnamedContract (`0xc4ad0000e223e398dc329235e6c497db5470b626`, chain 137)
- UnnamedContract (`0xda537104d6a5edd53c6fbba9a898708e465260b6`, chain 137)
- UnnamedContract (`0xf8f60bf9456a6e0141149db2dd6f02c60da5779b`, chain 137)
- UnnamedContract (`0x001d0a58b336f60ee050cb11ee455fd7eb984518`, chain 250)
- UnnamedContract (`0x0b53e9df372e72d8fdcdbedfbb56059957a37128`, chain 250)
- UnnamedContract (`0x1164587b49ff7ace303962cc7a7e0841c1b34986`, chain 250)
- UnnamedContract (`0x14785e5e3650f0603ee17401c9890de380713914`, chain 250)
- UnnamedContract (`0x29b0da86e484e1c0029b56e817912d778ac0ec69`, chain 250)
- UnnamedContract (`0x44536de2220987d098d1d29d3aafc7f7348e9ee4`, chain 250)
- UnnamedContract (`0x560144c25e53149ac410e5d33bdb131e49a850e5`, chain 250)
- UnnamedContract (`0x57aa88a0810dfe3f9b71a9b179dd8bf5f956c46a`, chain 250)
- UnnamedContract (`0x5ea7e501c9a23f4a76dc7d33a11d995b13a1dd25`, chain 250)
- UnnamedContract (`0x6b8de08d2520c955554e837ae72022cd46ba7f0e`, chain 250)
- UnnamedContract (`0x727fe1759430df13655ddb0731de0d0fde929b04`, chain 250)
- UnnamedContract (`0x72a34abafab09b15e7191822a679f28e067c4a16`, chain 250)
- UnnamedContract (`0x7f462b92f92114a2d57a03e5ae2db5da28b77d73`, chain 250)
- UnnamedContract (`0x89716ad7edc3be3b35695789c475f3e7a3deb12a`, chain 250)
- UnnamedContract (`0x8cc45f739104b3bdb98bfffaf2423cc0f817ccc1`, chain 250)
- UnnamedContract (`0x97d0be2a72fc4db90ed9dbc2ea7f03b4968f6938`, chain 250)
- UnnamedContract (`0xac5a9e4135a3a26497f3890bfb602b06ee592b61`, chain 250)
- UnnamedContract (`0xc0e2830724c946a6748ddfe09753613cd38f6767`, chain 250)
- UnnamedContract (`0xe55dd55b3355c261a048b3f310706c7478657d74`, chain 250)
- UnnamedContract (`0xebaa0b431618bcd9ea67d39c232625c20880d9ba`, chain 250)
- UnnamedContract (`0xf13cd6887c62b5bec145e30c38c4938c5e627fe0`, chain 250)
- UnnamedContract (`0xf628fb7436ffc382e2af8e63dd7ccbaa142e3cd1`, chain 250)
- UnnamedContract (`0x1e9eb053228b1156831759401de0e115356b8671`, chain 8453)
- UnnamedContract (`0x697bc6bd64677be63240262869dd5f2a3eeaccd3`, chain 8453)
- UnnamedContract (`0x8273217252254ad7353f227aaecd2b1c4a326fa2`, chain 8453)
- UnnamedContract (`0x88ba032be87d5ef1fbe87336b7090767f367bf73`, chain 8453)
- UnnamedContract (`0x9eaf8c1e34f05a589eda6bafdf391cf6ad3cb239`, chain 8453)
- UnnamedContract (`0xbfaaba9f56a39b814281d68d2ad949e88d06b02e`, chain 8453)
- UnnamedContract (`0xea3481244024e2321cc13acaa80df1050f1fd456`, chain 8453)
- UnnamedContract (`0xf3885ede00171997bfadaa98e01e167b53a78ec5`, chain 8453)
- UnnamedContract (`0xf8f60bf9456a6e0141149db2dd6f02c60da5779b`, chain 8453)
- UnnamedContract (`0xfeae2f855250c36a77b8c68db07c4dd9711fe36f`, chain 8453)
- UnnamedContract (`0x1deb47dcc9a35ad454bf7f0fcdb03c09792c08c1`, chain 42161)
- UnnamedContract (`0x1e9eb053228b1156831759401de0e115356b8671`, chain 42161)
- UnnamedContract (`0x2a139a2812f1424f0c88e3d73854b16fb04e9449`, chain 42161)
- UnnamedContract (`0x3199437193625dccd6f9c9e98bdf93582200eb1f`, chain 42161)
- UnnamedContract (`0x6346282db8323a54e840c6c772b4399c9c655c0d`, chain 42161)
- UnnamedContract (`0x66a1a27f4b22dcaa24e427dcffbf0cddd9d35e0f`, chain 42161)
- UnnamedContract (`0x697bc6bd64677be63240262869dd5f2a3eeaccd3`, chain 42161)
- UnnamedContract (`0x7aad416eb4e16a27b85e7076dd56742a44e9d25b`, chain 42161)
- UnnamedContract (`0x84654e35e504452769757aae5a8c7c6599cbf954`, chain 42161)
- UnnamedContract (`0x88ba032be87d5ef1fbe87336b7090767f367bf73`, chain 42161)
- UnnamedContract (`0x8a5f0876b217ee61d101e022bb00d032e6d353bc`, chain 42161)
- UnnamedContract (`0x94734ba0f9f8c2464d963a402743fd79b402efd7`, chain 42161)
- UnnamedContract (`0x9ab47be62631036cda3a64b8322704988427f366`, chain 42161)
- UnnamedContract (`0xb6bc033d34733329971b938fef32fad7e98e56ad`, chain 42161)
- UnnamedContract (`0xcad10033c86b0c1ed6bfccaa2ff6779938558e9f`, chain 42161)
- UnnamedContract (`0xdf43263dfec19117f2fe79d1d9842a10c7495ccd`, chain 42161)
- UnnamedContract (`0xe55dd55b3355c261a048b3f310706c7478657d74`, chain 42161)
- UnnamedContract (`0xf5875d60241c8f6448649206a6f485b812acf44d`, chain 42161)
- UnnamedContract (`0xf8f60bf9456a6e0141149db2dd6f02c60da5779b`, chain 42161)
- UnnamedContract (`0xfd99a19fcf577be92fdab4ef162c1644bb056885`, chain 42161)
- Accountant (`0x1f399808fe52d0e960cab84b6b54d5707ab27c8a`, chain 8453)
- AccountantFactory (`0xf728f839796a399acc2823c1e5591f05a31c32d1`, chain 1)
- AddressesGenerator_VAULT_V2 (`0x437758d475f70249e03eda6be23684ad1fc375f0`, chain 1)
- AddressesGeneratorEarn (`0xf536399c04683d7ab0bcb1308c245b4bbb539344`, chain 1)
- AddressesGeneratorV1Vaults (`0xce29d34c8e88a2e1edde10ad4eee4f3e379fc041`, chain 1)
- AddressesGeneratorV2Vaults (`0x3a8efa2d87d60c0289f19b44a0928f4269c0f094`, chain 42161)
- AddressMergeHelper (`0x156bab355e81b498072c9ce3cf655e9844a12529`, chain 10)
- AprOracle (`0x1981ad9f44f2ea9add2dc4ad7d075c102c70af92`, chain 1)
- AuctionFactory (`0xba7fcb508c7195ee5ae823f37ee2c11d7ed52f8e`, chain 1)
- AuctionRegistry (`0x94f44706a61845a4f9e59c4bc08cea4503e48d12`, chain 1)
- BalancesHelper (`0x167aa4ba31b8285707d1489ad705cb24cf4e5186`, chain 10)
- CalculationsChainlinkRegistry (`0x5fd3815dcb668200a662114fbc9af13ac0a55b4d`, chain 10)
- CalculationsCurve (`0x0ffe8434eae67c9838b12c3cd11ac4005daa7227`, chain 10)
- CalculationsIronBank (`0x55e9b18fefff7e00548d54480373fc8843de8ea4`, chain 1)
- CalculationsSushiswap (`0x5ea7e501c9a23f4a76dc7d33a11d995b13a1dd25`, chain 42161)
- CalculationsYearnVaults (`0x38477f2159638956d33e18951d98238a53b9aa3c`, chain 1)
- CommonHealthCheck (`0x32059cce723b4dd15dd5cb2a5187f814e6c470bc`, chain 42161)
- CommonTrigger (`0xf8df17a35c88abb25e83c92f9d293b4368b9d52d`, chain 1)
- CoveYFI (`0xff71841eefca78a64421db28060855036765c248`, chain 1)
- Curve LP Module (`0xce62d9eb4409af3800e24719e08a736aab7d2022`, chain 1)
- CurveGlobal (`0x21b1fc8a52f179757bf555346130bf27c0c2a17a`, chain 1)
- DebtAllocator (`0x1e9eb053228b1156831759401de0e115356b8671`, chain 1)
- DebtAllocatorFactory (`0x03d43df6ff894c848fc6f1a0a7e8a539ef9a4c18`, chain 1)
- Delegated Staked YFI (`0x9c42461aa8422926e3aef7b1c6e3743597149d79`, chain 1)
- Delegated Staking Reward Distributor (`0x952b31960c97e76362ac340d07d183ada15e3d6e`, chain 1)
- DelegatedBalanceMapping (`0xc01a529c01f9399c928a4afc50e25f12d1e5b142`, chain 1)
- Dumper (`0x590dd9399bb53f1085097399c3265c7137c1c4cf`, chain 1)
- dYFI (`0x41252e8691e964f7de35156b68493bab6797a275`, chain 1)
- dYFI Reward Pool (`0x2391fc8f5e417526338f5aa3968b1851c16d894e`, chain 1)
- EarnRegistry (`0x62a4e0e7574e5407656a65cc8dbdf70f3c6eb04b`, chain 1)
- Executor (`0x71258ee726644f1d52d6a9f5e11c21d1e38c2bf1`, chain 1)
- Gauge (`0x107717c98c8125a94d3d2cc82b86a1b705f3a27c`, chain 1)
- Gauge registry (`0x1d0fdcb628b2f8c0e22354d45b3b2d4ce9936f8b`, chain 1)
- GaugeV2 (`0x128e72dfd8b00cbf9d12cb75e846ac87b83ddfc9`, chain 1)
- Generic governor (`0xb7a528cf6d36f736fa678a629b98a427d43e5ba5`, chain 1)
- GnosisSafe (`0x16388463d60ffe0661cf7f1f31a7d658ac790ff7`, chain 1)
- GnosisSafeProxy (`0x16388000546eded4d476bd2a4a374b5a16125bc1`, chain 137)
- GnosisSafeProxy (`0x01fe3347316b2223961b20689c65eaea71348e93`, chain 8453)
- Helper (`0x5aacd0d03096039ac4381cd814637e9fb7c34a6f`, chain 1)
- Incentives for Snapshot votes (`0xae9de8a3e62e8e2f1e3800d142d23527680a5179`, chain 1)
- Keeper (`0x52605bbf54845f520a3e94792d019f62407db2f8`, chain 1)
- Liquid Locker Depositor (`0x3d4ced97adb0ae3a53da95a47ffc749aad26bc8f`, chain 1)
- Liquid Locker Redemption (`0xba18d0df75a3ff58ef40a8fc0d3e4db74a0e681d`, chain 1)
- Liquid Locker Reward Distributor (`0x7efc3953bed2fc20b9f825ebffab1cc8b072a000`, chain 1)
- LockerZapper (`0x7ba61c8e19414dcb8fe769a7be63b508c8062bba`, chain 1)
- ManagementList (`0x7e9756e1427b3c38f001f9d272d8d62bef63d619`, chain 10)
- OptimismMintableERC20 (`0x9046d36440290ffde54fe0dd84db8b1cfee9107b`, chain 10)
- Oracle (`0x043518ab266485dc085a1db095b8d9c2fc78e9b9`, chain 42161)
- Ownership proxy (`0x56af9c2780e0323810acfdaeab3f58ef6e76fafd`, chain 1)
- PricesHelper (`0x5d63a8584d91ebc5033d022afd6c5a7c7fddc99b`, chain 1)
- Protocol Address Provider (`0x775f09d6f3c8d2182dfa8bce8628acf51105653c`, chain 1)
- Protocol Owned Liquidity (`0x929401e30aab6bd648def2d30ff44952bab04478`, chain 1)
- RefundAccountant (`0x54483f1592ab0adea2757ae0d62e6393361d4cee`, chain 137)
- RegisteryAdapterV2Vaults (`0x240315db938d44bb124ae619f5fd0269a02d1271`, chain 1)
- Registry (`0xd40ecf29e001c76dcc4cc0d9cd50520ce845b038`, chain 1)
- RegistryAdapterV2Vault (`0xbcfca75ff12e2c1bb404c2c216dbf901be047690`, chain 10)
- RegistryFactory (`0x3a0fa8aac82ad94048098d6af6e8eb36c98816a1`, chain 1)
- ReleaseRegistry (`0x0377b4dadda86c89a0091772b79ba67d0e5f7198`, chain 1)
- Reward Claimer (`0xa82454009e01ae697012a73cb232d85e61b05e50`, chain 1)
- Reward Distributor (`0xd31911a33a5577be233dc096f6f5a7e496ff5934`, chain 1)
- RoleManagerFactory (`0xca12459a931643bf28388c67639b3f352fe9e5ce`, chain 1)
- SafeProxy (`0x90d0f26025571295d18a6c041e47450b81886b51`, chain 1)
- SafeProxy (`0x90d0f26025571295d18a6c041e47450b81886b51`, chain 8453)
- SafeProxy (`0x90d0f26025571295d18a6c041e47450b81886b51`, chain 42161)
- SharerV3 (`0x2c641e14afecb16b4aa6601a40ee60c3cc792f7d`, chain 1)
- Shutdown Module (`0xe9462885290eb79ece41367d92712d6f525ba5fa`, chain 1)
- SingleTokenRewardDistributor (`0x1d02f6a86ed5650f93e40fcd62fa5727c32ad746`, chain 1)
- Staked YFI (`0x42b25284e8ae427d79da78b65dffc232aaecc016`, chain 1)
- Staking (`0xcb7dce63abe175ca354dcca9cc10554d255777ee`, chain 1)
- Staking Module (`0x27a2fc2d47c5063a551c8fe81f580b84ab78ac52`, chain 1)
- Staking Reward Distributor (`0x95547ede56cf74b73dd78a37f547127dffda6113`, chain 1)
- TimelockController (`0x88ba032be87d5ef1fbe87336b7090767f367bf73`, chain 1)
- TimelockExecutor (`0xf8f60bf9456a6e0141149db2dd6f02c60da5779b`, chain 1)
- Treasury (`0x02ff746d8cb62709aeec611cec9b17d7dd1d3480`, chain 8453)
- TreasuryVault (`0x93a62da5a14c80f265dabc077fcee437b1a0efde`, chain 1)
- TvlAdapterEarn (`0x1007ed6fdfac72bbea9c719cf1fa9c355d248691`, chain 1)
- TvlAdapterIronBank (`0xec7ac8ac897f5082b2c3d4e8d2173f992a097f24`, chain 1)
- TvlAdapterV1Vaults (`0xf4fb8903a41fc78686b26de55502cde42a4c6c78`, chain 1)
- TvlAdapterV2Vaults (`0x14d6e0908bae40a2487352b2a9cb1a6232da8785`, chain 1)
- TvlAdapterVeCrv (`0x560144c25e53149ac410e5d33bdb131e49a850e5`, chain 1)
- UniqueAddressesHelper (`0xc3a0bef4a47ba579cbba510ae2c59d9b9bf9467c`, chain 1)
- Unitroller (`0xab1c342c7bf5ec5f02adea1c2270670bca144cbb`, chain 1)
- V2Keeper (`0x736d7e3c5a6cb2ce3b764300140abf476f6cfccf`, chain 1)
- VelodromeGlobal (`0x2d12caffa46ab3b6c5ceb224620de8b4de3cdff1`, chain 8453)
- Voting Escrow Reward Distributor (`0x2548bf65916fdabb5a5673fc4225011ff29ee884`, chain 1)
- Vyper_contract (`0x0000000022d53366457f9d5e68ec105046fc4383`, chain 10)
- YBToken (`0x01791f726b4103694969820be083196cc7c045ff`, chain 1)
- Yearn Vault Factory (`0x310ac28acf5e514abdbff9ab25e21f1bfe22bcac`, chain 1)
- YearnBoostedStaker (`0x5d2ea33449a60a70e8fcdc5251fdd86a030fad91`, chain 1)
- yETH staking contract (`0x583019ff0f430721ada9cfb4fac8f06ca104d0b4`, chain 1)
- yETH token (`0x1bed97cbc3c24a4fb5c069c6e311a967386131f7`, chain 1)
- YFI (`0x0bc529c00c6401aef6d220be8c6ea1667f6ad93e`, chain 1)
- YRegistry (`0x3ee41c098f9666ed2ea246f4d2558010e59d63a0`, chain 1)
- YToken (`0x22222222aea0076fca927a3f44dc0b4fdf9479d6`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 97; live-surface rows included: 97 (97 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 245/257 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 9/97 (9.3%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 245 own, 8 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 1843 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 11
- Confirmed-live implementations: 245 of 2096 unique; 1851 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 9/666
- Verified + Unaudited implementations: 657
- Verified by bytecode match: 0
- Unverified implementations: 1430
- Unique implementations: 2096
- Raw deployments: 2097
- Audits discovered: 89 (89 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 12
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-12 (fresh)
- Audit staleness (calendar age): 3 fresh, 1 aging, 77 stale, 8 unknown
- Coverage code basis (deployed vs audited code): 11 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 5 match-unverified
- Tier 1 coverage: 3.1% (ChainSecurity, MixBytes, Trail of Bits)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| yAudit | Tier 2 | 4 | 0.6% | 2023-07 |
| ChainSecurity | Tier 1 | 2 | 0.3% | 2023-11 |
| MixBytes | Tier 1 | 1 | 0.2% | 2023-10 |
| Quantstamp | Tier 2 | 1 | 0.2% | 2020-07 |
| Trail of Bits | Tier 1 | 1 | 0.2% | 2021-04 |
| yAcademy | Tier 2 | 1 | 0.2% | 2023-07 |

## Contract Surface

### ✅ Verified + Audited (9)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Executor | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263293 | `0x71258ee726644f1d52d6a9f5e11c21d1e38c2bf1` | ✅ Audited |
| Gauge | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263235 | `0x107717c98c8125a94d3d2cc82b86a1b705f3a27c` | ✅ Audited |
| Incentives for Snapshot votes | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263326 | `0xae9de8a3e62e8e2f1e3800d142d23527680a5179` | ✅ Audited |
| Protocol Owned Liquidity | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263312 | `0x929401e30aab6bd648def2d30ff44952bab04478` | ✅ Audited |
| Staking | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263346 | `0xcb7dce63abe175ca354dcca9cc10554d255777ee` | ✅ Audited |
| Staking Module | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263252 | `0x27a2fc2d47c5063a551c8fe81f580b84ab78ac52` | ✅ Audited |
| yETH token | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263240 | `0x1bed97cbc3c24a4fb5c069c6e311a967386131f7` | ✅ Audited |
| YFI | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263233 | `0x0bc529c00c6401aef6d220be8c6ea1667f6ad93e` | ✅ Audited |
| YToken | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263246 | `0x22222222aea0076fca927a3f44dc0b4fdf9479d6` | ✅ Audited |

### ⚠️ Verified + Unaudited (657)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| 1UP depositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x633f1861e8c3e4a54451d3f726dc686a94564690` | ⚠️ Unaudited |
| 1UP Vesting operator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf0d222c397998dc743fe430095c32c44e8cccd9d` | ⚠️ Unaudited |
| AbiDecoder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x62627154d5ef4c3a2aa7fd1cadbd4425596ac74d` | ⚠️ Unaudited |
| Accountant | unknown | project_anchor | own_supporting | 0 | base | unit-263468 | `0x1f399808fe52d0e960cab84b6b54d5707ab27c8a` | ⚠️ Unaudited |
| AccountantFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263374 | `0xf728f839796a399acc2823c1e5591f05a31c32d1` | ⚠️ Unaudited |
| ACL | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17c719e19d33261081279e8b720ff9397a2f7c90` | ⚠️ Unaudited |
| AddLiquidityChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x33163e60d47255fe54392c6ab6fa2178315cb074` | ⚠️ Unaudited |
| Address | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ed97638af0dac459c29b1c650edcfb4b4ea0aab` | ⚠️ Unaudited |
| AddressesGenerator_VAULT_V2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263268 | `0x437758d475f70249e03eda6be23684ad1fc375f0` | ⚠️ Unaudited |
| AddressesGeneratorEarn | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263371 | `0xf536399c04683d7ab0bcb1308c245b4bbb539344` | ⚠️ Unaudited |
| AddressesGeneratorIronBank | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x941f727f267913e76e3f03a25d3bc7c07e891763` | ⚠️ Unaudited |
| AddressesGeneratorV1Vaults | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263348 | `0xce29d34c8e88a2e1edde10ad4eee4f3e379fc041` | ⚠️ Unaudited |
| AddressesGeneratorV2Vaults | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-263444 | `0x3a8efa2d87d60c0289f19b44a0928f4269c0f094` | ⚠️ Unaudited |
| AddressesProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0d80c2adfeabd3663ef64ca17a9b2a3c77a55960` | ⚠️ Unaudited |
| AddressGeneratorFactoryVaults | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa654be30cb4a1e25d18da0629e48b13fb970d5be` | ⚠️ Unaudited |
| AddressMergeHelper | unknown | project_anchor | own_supporting | 0 | optimism | unit-263384 | `0x156bab355e81b498072c9ce3cf655e9844a12529` | ⚠️ Unaudited |
| AdminVoting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc53baaaa8595a7a2e7fee71db7291b939f696734` | ⚠️ Unaudited |
| Agent | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5835c751ead74de1e75f49627226d7e75be4ee12` | ⚠️ Unaudited |
| AgoraStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xed5d52c8e16257999f329c34685246ab6eb2a7cf` | ⚠️ Unaudited |
| AHv2Repayment | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x141e0541d87c6cbdbf2a6a8104248b4b922f629e` | ⚠️ Unaudited |
| AirdropDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4bd112fff755c24c103adf5879ee914781b99c62` | ⚠️ Unaudited |
| AirdropDistributorProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c533357664d8750e5f851f39b2534147f5578af` | ⚠️ Unaudited |
| AjnaRouterFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd8d419e4edea8a6ea7a104f76529a75be189102` | ⚠️ Unaudited |
| Allocatin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0007240ff3c377fc324e581eedce86dd4dc40917` | ⚠️ Unaudited |
| AllocationVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc72bc1a8cf9b1a218386df641d8be99b40436a0f` | ⚠️ Unaudited |
| AllowancesHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x103df3248e4e4b45159cc29ff0f37b272a9a742c` | ⚠️ Unaudited |
| Allowlist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc4ed8de23884db99f3c04c1869a1e3380f2dcf04` | ⚠️ Unaudited |
| AllowlistFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xef01bc08cf155098bda7a2efbc7ccef632d03440` | ⚠️ Unaudited |
| AllowlistImplementationPartnerTracker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd2367b534c1eb09867bfabe13cb72d2bbe5c9b05` | ⚠️ Unaudited |
| AllowlistImplementationVeYFI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x526bc546fa5c32bdeaa0f2da1f5ab707e26e4e8e` | ⚠️ Unaudited |
| AlphaDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x33753123ac0e1f3497091dad21781b8acc721fab` | ⚠️ Unaudited |
| AlphaHomo | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x39bcf3caf436515ed48de859d0bda770d69fabbf` | ⚠️ Unaudited |
| AngleAccumulatorV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ed81291a4b978a25bea88b0c40cb42d63f72d2e` | ⚠️ Unaudited |
| AngleStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x22635427c72e8b0028feae1b5e1957508d9d7caf` | ⚠️ Unaudited |
| AngleVaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x66f3d3210f84fe8cc2c77a1f001a395b2ae0b801` | ⚠️ Unaudited |
| AngleVaultGUni | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ca321e4966a6bcbc26c13921cd76cac7d1f1b02` | ⚠️ Unaudited |
| AngleVoter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x103a24adf3c60e29ecf4d05ee742cadc7ba3fab8` | ⚠️ Unaudited |
| AngleVoterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbabe5d223fb31a37ce184481678a6667ac8cd98b` | ⚠️ Unaudited |
| AngleVoterV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdde0f1755ded401a012617f706c66a59c6917efd` | ⚠️ Unaudited |
| AprOracle | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263238 | `0x1981ad9f44f2ea9add2dc4ad7d075c102c70af92` | ⚠️ Unaudited |
| APRWithPoolOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x044dad5c0da888c93d8244261b67bd431b47ca14` | ⚠️ Unaudited |
| ApwineAccumulator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x29bcfccb6cff577d68ea316f5685f343253070b2` | ⚠️ Unaudited |
| ApwineDepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe928ca6a9c0cdf658a26a374b7373b9d6cefbcf` | ⚠️ Unaudited |
| ApwineLocker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe71e28a510bc3f98a9e77e847ae5aef9a2e5721d` | ⚠️ Unaudited |
| AuctionFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263335 | `0xba7fcb508c7195ee5ae823f37ee2c11d7ed52f8e` | ⚠️ Unaudited |
| AuctionKicker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17d6e65317d42ce40f06538b68e824669e1f679e` | ⚠️ Unaudited |
| AuctionRegistry | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263314 | `0x94f44706a61845a4f9e59c4bc08cea4503e48d12` | ⚠️ Unaudited |
| AuctionSweeper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x068ad6aa8cfa70480924675eb4545d27d319ddf4` | ⚠️ Unaudited |
| BalancesHelper | unknown | project_anchor | own_supporting | 0 | optimism | unit-263385 | `0x167aa4ba31b8285707d1489ad705cb24cf4e5186` | ⚠️ Unaudited |
| BaseConvertor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa6b9ce48ec380dbbe3fc32c199f4fab3d08c57f9` | ⚠️ Unaudited |
| BaseConvertor4626 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa02459fe126130c4107a9b760d6eb43f2f2cbcb2` | ⚠️ Unaudited |
| Basefee | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x02ff746d8cb62709aeec611cec9b17d7dd1d3480` | ⚠️ Unaudited |
| BaseFeeOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e7efabf282614aa2543edaa50517ef5a23c868b` | ⚠️ Unaudited |
| Basic redeemer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf5dd7892ea53af04fb5f517ddb75089e5462eb62` | ⚠️ Unaudited |
| BasicRewardsOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x176cff10ee6755ba69f21ff95cebbe52c2c56ccc` | ⚠️ Unaudited |
| BasicTradeFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a2b583812203d55182073324ecddca04ae42c35` | ⚠️ Unaudited |
| Bits | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8558c4815625ffce94ec6e3eff97dbe6e1b7b73b` | ⚠️ Unaudited |
| BlackpoolAccumulator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfac788261da6e2affcd0e9ab340395378f8cbfbc` | ⚠️ Unaudited |
| BlackpoolDepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x219f7496fbd30e1f21a20613f9372d608a279993` | ⚠️ Unaudited |
| BlackScholesEstimate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b4fd02326db6ebe095e0707e2973c9e045da3dc` | ⚠️ Unaudited |
| Bonus Distributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa66002e9ab0babf46882d0e0cd274f46ceb13116` | ⚠️ Unaudited |
| Bonus Price Oracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7e417e19fe3f72798e1094e8df185378370cb416` | ⚠️ Unaudited |
| Boost Delegation V2.1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01fc53a26033a5c0b81786b940ebefe0e7cd9bd4` | ⚠️ Unaudited |
| Boost Delegation V3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3da9be10ab98512a96fc858595ad6dc21defbb78` | ⚠️ Unaudited |
| BoostCalculator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ac44b31782a8c5ba896c29b3c2c0df1399c0ebc` | ⚠️ Unaudited |
| Booster | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f7c5021f5bc634fae82cf9f67f19c5f05562bd3` | ⚠️ Unaudited |
| BoostViewVoodoo | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2cddd57474f8ba6a512e983ff36354c7afd79586` | ⚠️ Unaudited |
| BoostViewVoodoo2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x56a3d20972fdf872ca8c799f83718f7297d371b2` | ⚠️ Unaudited |
| BorrowerOperations | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x72c590349535ad52e6953744cb2a36b409542719` | ⚠️ Unaudited |
| BountyHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ced8bbc7fca2fd370e50578786c3418848dc1ed` | ⚠️ Unaudited |
| Burner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcac873e93cfe5c79325e73c22975b665c6177f40` | ⚠️ Unaudited |
| BytesLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a432a6b19944e9e021b6cdca5e047ada5d72802` | ⚠️ Unaudited |
| CalculationsChainlinkRegistry | unknown | project_anchor | own_supporting | 0 | optimism | unit-263387 | `0x5fd3815dcb668200a662114fbc9af13ac0a55b4d` | ⚠️ Unaudited |
| CalculationsCurve | unknown | project_anchor | own_supporting | 0 | optimism | unit-263383 | `0x0ffe8434eae67c9838b12c3cd11ac4005daa7227` | ⚠️ Unaudited |
| CalculationsFixedForex | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9956ca141c344e177829671ec0f1a9d4ab3cb1fd` | ⚠️ Unaudited |
| CalculationsIronBank | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263278 | `0x55e9b18fefff7e00548d54480373fc8843de8ea4` | ⚠️ Unaudited |
| CalculationsOverrides | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c8282a17d0d20f0b3658a5eea952b2054d5c648` | ⚠️ Unaudited |
| CalculationsSushiswap | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-263447 | `0x5ea7e501c9a23f4a76dc7d33a11d995b13a1dd25` | ⚠️ Unaudited |
| CalculationsSynth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5a04749532195d5d16268da74775defcc843151a` | ⚠️ Unaudited |
| CalculationsYearnVaults | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263259 | `0x38477f2159638956d33e18951d98238a53b9aa3c` | ⚠️ Unaudited |
| CalculationsZeroPrice | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa8b5ff097a10a264c30ec302023730fe51b7d8d7` | ⚠️ Unaudited |
| CallComparator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd3bfa85dc668aab38121be12d69dd180301dec25` | ⚠️ Unaudited |
| CapUSDExchange | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa1be7034b2aa8e72d81e17420b6c6c4f0035fdd4` | ⚠️ Unaudited |
| CCTPStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6447b88c071b98900c40da7c7957537c977ef295` | ⚠️ Unaudited |
| ChildChainManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x195fe6ee6639665cceb15bcceb9980fc445dfa0b` | ⚠️ Unaudited |
| ChildChainManagerProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xafeea1de9d660d3cb53031cfe1a58de40b171ce8` | ⚠️ Unaudited |
| ChildERC1155 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa0c68c638235ee32657e8f720a23cec1bfc77c77` | ⚠️ Unaudited |
| ChildERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0b9020d4e32990d67559b1317c7bf0c15d6eb88f` | ⚠️ Unaudited |
| ChildERC721 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6ebeac13f6403d19c95b6b75008b12fd21a93aab` | ⚠️ Unaudited |
| ChildMintableERC721 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd4888fab8bd39a663b63161f5ee1eae31a25b653` | ⚠️ Unaudited |
| Cliff Escrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ba8df4bfd13e3e15da3406e4fab312a8257e220` | ⚠️ Unaudited |
| CollateralMaximizer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x494ba8753a253bb314f1e8324c36f804d31b96c1` | ⚠️ Unaudited |
| CometOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02939ba4fd42e23d31652b4376842ab62a742f76` | ⚠️ Unaudited |
| CommonHealthCheck | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-263443 | `0x32059cce723b4dd15dd5cb2a5187f814e6c470bc` | ⚠️ Unaudited |
| CommonTrigger | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263375 | `0xf8df17a35c88abb25e83c92f9d293b4368b9d52d` | ⚠️ Unaudited |
| CompensationEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda7b940be1bce0d6e2eecd96f5cf6ed0504b64c3` | ⚠️ Unaudited |
| COMPfarming | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1532eb6c6d134903a0dedfc840128007b36aa870` | ⚠️ Unaudited |
| Controller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e65565cf7fbb37bac2c0d84e3a54c592e1dc4c8` | ⚠️ Unaudited |
| ConverterDAItoYCRV | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x98158e133f7f56a574fc806e579e1355048039ca` | ⚠️ Unaudited |
| Convertor4626Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x93a2497266ad6b4b86f93aaf08e7c88b11449156` | ⚠️ Unaudited |
| ConvertorFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa40b4c92a1c075e42be699f1ed42736ded854bfd` | ⚠️ Unaudited |
| ConvexDepositToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x000ca04b3225137b9110e77e12f1b484cc227de9` | ⚠️ Unaudited |
| ConvexFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3da992f4694d1a1624c32cafb5e57fe75b4bc867` | ⚠️ Unaudited |
| CoveYFI | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263381 | `0xff71841eefca78a64421db28060855036765c248` | ⚠️ Unaudited |
| Create2Deployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e55aef1b392b8491369091ad808e87feaa4afab` | ⚠️ Unaudited |
| CRON | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e14d03061705eb48fda6bc6e244c5eabe5d322e` | ⚠️ Unaudited |
| CrvStrategyKeep3r | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd0ac37e3524f295d141d3839d5ed5f26a40b589d` | ⚠️ Unaudited |
| CrvStrategyKeep3rJob | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02027bda2425204f152b8aa35fb78687d65e1af5` | ⚠️ Unaudited |
| CrvStrategyKeep3rJob2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xee15010105b9bb564cfdfdc5cee676485092aedd` | ⚠️ Unaudited |
| CrvStrategyKeep3rStealthJob2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41edfd5575fa4590a20f669bbda6c4ae367cd0d8` | ⚠️ Unaudited |
| CrvUsdRedeemer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x935bcf81c8a8d3a2b46560a8e2111b190057aae3` | ⚠️ Unaudited |
| CrvVaultSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c022d19518356d71ba046be28d721e1b425b4a9` | ⚠️ Unaudited |
| CryptopoolLPOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x68e46918dc347e20cf180747996258be00dc461b` | ⚠️ Unaudited |
| Curve LP Module | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263349 | `0xce62d9eb4409af3800e24719e08a736aab7d2022` | ⚠️ Unaudited |
| CurveDepositToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x572a4a527ab4d073d641e0eddbcebe82a20c9d2a` | ⚠️ Unaudited |
| CurveDepositZap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e659fe8b1ddf8c5c50d55ed79c38837aa80729e` | ⚠️ Unaudited |
| CurveFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2664a7b123e7e6b5cc5cf6a76cf65e409bd1569f` | ⚠️ Unaudited |
| CurveGlobal | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263245 | `0x21b1fc8a52f179757bf555346130bf27c0c2a17a` | ⚠️ Unaudited |
| CurveProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x490b8c6007ffa5d3728a49c2ee199e51f05d2f7e` | ⚠️ Unaudited |
| CustomPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa0ecd3893890829a4ce5b7a0cc7ae25517b531a0` | ⚠️ Unaudited |
| CustomTrigger | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xddb6cd2ab6415dca60a46c62f634b6e4d148a337` | ⚠️ Unaudited |
| DadFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01c1103d765f62a0d909499d7b615c382cdb072d` | ⚠️ Unaudited |
| DaiFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf07674f6ac6632e253c291b694f9c2e2ed69ebbb` | ⚠️ Unaudited |
| DAOFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d75ff9fdca31a91f666187dd574f8ea8639a871` | ⚠️ Unaudited |
| DebtAllocator | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263243 | `0x1e9eb053228b1156831759401de0e115356b8671` | ⚠️ Unaudited |
| DebtAllocatorFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263231 | `0x03d43df6ff894c848fc6f1a0a7e8a539ef9a4c18` | ⚠️ Unaudited |
| DebtAllocatorKeeper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4d87135e1188e85073b51d2bfef2ed40225e1236` | ⚠️ Unaudited |
| DebtToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4591dbff62656e7859afe5e45f6f47d3669fbb28` | ⚠️ Unaudited |
| Delegated Staked YFI | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263320 | `0x9c42461aa8422926e3aef7b1c6e3743597149d79` | ⚠️ Unaudited |
| Delegated Staking Reward Distributor | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263315 | `0x952b31960c97e76362ac340d07d183ada15e3d6e` | ⚠️ Unaudited |
| DelegatedBalanceMapping | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263340 | `0xc01a529c01f9399c928a4afc50e25f12d1e5b142` | ⚠️ Unaudited |
| DelegationFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd39164369c37c412a04603666dcf4c7b33137748` | ⚠️ Unaudited |
| Deployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d85e7c9a4e369e53acc8d5426ae1568198b0112` | ⚠️ Unaudited |
| DepositModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x793d85f585145c050487c7afbf0e9b97143ff1cb` | ⚠️ Unaudited |
| Depositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd9ec4616d0bf42b2f7caf01939f2c476954e861f` | ⚠️ Unaudited |
| DepositorV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x941e716833734c7cafafc38f6bb8fec1858201e0` | ⚠️ Unaudited |
| DepositorV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x56d27f6ba42ec4c4e37dae0561e8e872abb196ad` | ⚠️ Unaudited |
| DforceStrategyKeep3r | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30084324619d9645019c3f2cb3a94611601a3078` | ⚠️ Unaudited |
| DistributeYFI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x812ac0eaeb422efa44eac670aa2246a25ecfa017` | ⚠️ Unaudited |
| DistributionRewardsProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4b1b08313a290adf97d36a6f41f42bb19e368d6d` | ⚠️ Unaudited |
| Donator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc368ed8efc69d8e38ed4b4d726c40f9f9ad28839` | ⚠️ Unaudited |
| DSChief | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e2a84d6ade1e7fffee039a35ef5f19f13057152` | ⚠️ Unaudited |
| DSChiefFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e7ca05e174a523709e556080e227f734a8f1483` | ⚠️ Unaudited |
| DSSLeverage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x050cd4835b08babfc6ff92187971b3253e92640e` | ⚠️ Unaudited |
| DSToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x068083069ed92da4c5291dba52d8912abfcc5523` | ⚠️ Unaudited |
| DummyStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6740bf10840d0a6358050fd1a28e2f8e859d01ca` | ⚠️ Unaudited |
| Dumper | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263282 | `0x590dd9399bb53f1085097399c3265c7137c1c4cf` | ⚠️ Unaudited |
| dYFI | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263264 | `0x41252e8691e964f7de35156b68493bab6797a275` | ⚠️ Unaudited |
| dYFI Reward Pool | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263247 | `0x2391fc8f5e417526338f5aa3968b1851c16d894e` | ⚠️ Unaudited |
| DynamicSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x035fb9efa7ed40a688044af22282fb19b64b5f60` | ⚠️ Unaudited |
| EarnRegistry | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263290 | `0x62a4e0e7574e5407656a65cc8dbdf70f3c6eb04b` | ⚠️ Unaudited |
| eETHDepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xefa259c4a7056de82eea8df9ef85de405d9c2603` | ⚠️ Unaudited |
| EminenceCurrency | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ccea6503e8e5525d3de0c60855b6332af559ad4` | ⚠️ Unaudited |
| EmissionSchedule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x906e0d769aae4fb3f53d3c989a50520a8e851f42` | ⚠️ Unaudited |
| EnsAddressResolver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e89f5b28411d7cdf3efa24b056ecafca4f7f925` | ⚠️ Unaudited |
| EnsHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d33110619e8f95f12a750f21a08b8c7cfb864e1` | ⚠️ Unaudited |
| ERC4626Exchange | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x13100bb6ab4e349a36eaa6bd4ab0536bf72b3054` | ⚠️ Unaudited |
| ERC4626FluidExchange | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9b1327ccb2405e8410f29dbec78f18236c3521f3` | ⚠️ Unaudited |
| EthCream | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xea87e0f350abd0b0c213269f587d4c50a4665cfb` | ⚠️ Unaudited |
| EthereumStateSender | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa1025644f5c3faac92b8672d3a537f4e4bddd46b` | ⚠️ Unaudited |
| EVMScriptRegistryFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd44d19d0d1ab4245bb747be73a0b131daa8351fd` | ⚠️ Unaudited |
| ExerciseHelperBMX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x614760bed5e12863ad9baffb7c1bedd089384cb1` | ⚠️ Unaudited |
| Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1043eb60cef1f44654598338b1eb305cf54c421d` | ⚠️ Unaudited |
| FactoryVaultsAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7fe9501b4b4ba5a259f5fece1d10257839acb773` | ⚠️ Unaudited |
| FairLaunchCapitalVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3a2d0e5773dd6a345eda543b14c6ca6b51c6cc0a` | ⚠️ Unaudited |
| Faketroller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6257e36efc9c7c6057c119ea2af40907159fef3f` | ⚠️ Unaudited |
| FeeBurner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb911fcce8d5afcec73e072653107260bb23c1ee8` | ⚠️ Unaudited |
| FeeConverter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x72625102868f56bc9696c91090938718d3804333` | ⚠️ Unaudited |
| FeeDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x286af1b3d36fbba523b18ac4658722090a39ecc0` | ⚠️ Unaudited |
| FeeReceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfdce0267803c6a0d209d3721d2f01fd618e9cbf8` | ⚠️ Unaudited |
| FeeRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f1dc3bd5fe8a3034d6df0a411efc7916830d19c` | ⚠️ Unaudited |
| FeeSplitter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d353a52da9e4ead947f27931a26e0797a000509` | ⚠️ Unaudited |
| FiatToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8cbde23b1416cac07a52591bba744c744d77a91a` | ⚠️ Unaudited |
| FiatTokenProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48` | ⚠️ Unaudited |
| FiatTokenUtil | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6315aa908c50376d1028412c028aa0629f0355a6` | ⚠️ Unaudited |
| FiatTokenV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0882477e7895bdc5cea7cb1552ed914ab157fe56` | ⚠️ Unaudited |
| FiatTokenV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb7277a6e95992041568d9391d09d0122023778a2` | ⚠️ Unaudited |
| FiatTokenV2_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2327a938febf5fec13bacfb16ae10ecbc4cbdcf` | ⚠️ Unaudited |
| Fixed rate oracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x81d26c6bcf459ec7766b3c81df02c3be94fb3b6e` | ⚠️ Unaudited |
| FixedRateStrategyAprOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff7c33eb1c2020674e04b398368c884a2541c437` | ⚠️ Unaudited |
| FixedTrigger | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf414a220f86d39f6381bea86c26a88e9331e1721` | ⚠️ Unaudited |
| fKRW | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5c08b51ddbe8ba76e07be79975906c39aef2893a` | ⚠️ Unaudited |
| FlashSeller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0020609046710676cafc8eb5ce95fc110ccedeee` | ⚠️ Unaudited |
| FluidAprOracleMainnet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x031ede4ca99b9d75fc77a8b0e661c90005a7cbe2` | ⚠️ Unaudited |
| FluidExchange | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9aad75f860a05b14853efe4f2ae75a3a261bad70` | ⚠️ Unaudited |
| FluidLenderFactoryMainnet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x859df6fe178ffbf55693a7a833aadb10c6a43861` | ⚠️ Unaudited |
| Forwarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb9a3a8735a453b2f8ad375654939cbb08411d9fa` | ⚠️ Unaudited |
| FpisAccumulator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ca369a70ad74e52604abc63792abbe088a9f460` | ⚠️ Unaudited |
| Funding Distributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbcc932e4750c3e465a7e54a06a34f9edf8f6116b` | ⚠️ Unaudited |
| fUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d7f0933ac403773d219cf0519de8082946dc10f` | ⚠️ Unaudited |
| FxChild | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8397259c983751daf40400790063935a11afa28a` | ⚠️ Unaudited |
| FxsAccumulator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca53fe979d427a7c2c5f45f54d9d9fae622b4008` | ⚠️ Unaudited |
| Gas | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0791d07689b4ba39a4c44cd25717981be1f2bf0e` | ⚠️ Unaudited |
| GasPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe0598d793baf7b4f49f4a003885e4180b28cab61` | ⚠️ Unaudited |
| GasPoolReimburser | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4165ef806ec952bad7ba1d5db81aef2bdebc1c38` | ⚠️ Unaudited |
| Gauge Controller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x037ee0c66d0ddba4319ab9d1a70a66ac800e5af9` | ⚠️ Unaudited |
| Gauge factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x43cfc64f00b4e45619cfbc7964d982fa022e0b91` | ⚠️ Unaudited |
| Gauge registry | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263242 | `0x1d0fdcb628b2f8c0e22354d45b3b2d4ce9936f8b` | ⚠️ Unaudited |
| Gauge rewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x35440c602bc4f01bbec6cb616ccb901c9df5475f` | ⚠️ Unaudited |
| GaugeProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x823fd217dcc5ce36ca6bc1489586ecb42b61081c` | ⚠️ Unaudited |
| GaugeV2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263236 | `0x128e72dfd8b00cbf9d12cb75e846ac87b83ddfc9` | ⚠️ Unaudited |
| GaugeValidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c662cac382140bfc148f3003fd14b0d58dc9524` | ⚠️ Unaudited |
| GearboxCrvUSDOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x452cce47601f5a8053f612b0b65b2e142e2059de` | ⚠️ Unaudited |
| GearboxOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa67cfa1f29411c3e9b4842a32d15a740bb06a2ba` | ⚠️ Unaudited |
| GemFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x431e935209d79706b5866eb42137a3491d845692` | ⚠️ Unaudited |
| GemPit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69076e44a9c70a67d5b79d95795aba299083c275` | ⚠️ Unaudited |
| Generic governor | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263333 | `0xb7a528cf6d36f736fa678a629b98a427d43e5ba5` | ⚠️ Unaudited |
| GenericCream | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1baacef951d24c5d70a8ca88d89ce16b37472fb3` | ⚠️ Unaudited |
| GenericDyDx | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1f2699b3aaf3f04b61b99b776b4a21a08502ae73` | ⚠️ Unaudited |
| GenericV2Keep3rJob | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf796c1a96c1e803cb748f2e7124b427536277480` | ⚠️ Unaudited |
| Getter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x016aaf67c352ee493d1e17177de0eabc3d76ab39` | ⚠️ Unaudited |
| GnosisSafe | unknown | project_anchor | own_supporting | 1 | ethereum | unit-263482 | `0x16388463d60ffe0661cf7f1f31a7d658ac790ff7` | ⚠️ Unaudited |
| GnosisSafeProxy | unknown | project_anchor | own_supporting | 1 | polygon | unit-263483 | `0x16388000546eded4d476bd2a4a374b5a16125bc1` | ⚠️ Unaudited |
| GnosisSafeProxy | unknown | project_anchor | own_supporting | 0 | base | unit-263465 | `0x01fe3347316b2223961b20689c65eaea71348e93` | ⚠️ Unaudited |
| Governance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc7212fc959bbb606f97036e8ac3da7aabf0cb735` | ⚠️ Unaudited |
| GovernanceMulticall | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x464218afe1839abd9e89daa3fb0d4a20fbda2c56` | ⚠️ Unaudited |
| GovernanceSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x220c33bb71d3b6a6a6ea2036abdb1c9449447afc` | ⚠️ Unaudited |
| HarvestV2Keep3rJob | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3da70a551c0f785580a291b7d8c7d0f3dc4c6688` | ⚠️ Unaudited |
| HarvestV2Keep3rStealthJob | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2150b45626199cfa5089368bdca30cd0bfb152d6` | ⚠️ Unaudited |
| HarvestV2QueueKeep3rJob | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe5a7db399dec2c5ddefebc52ea70f127284d118d` | ⚠️ Unaudited |
| HegicERCPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7224f2e96061a1e3f51d152e32ccfab79ca1345a` | ⚠️ Unaudited |
| HegicOptions | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30a086f5b7a8a6256b0d0e6c9ca4cd3577e4ae70` | ⚠️ Unaudited |
| HegicOptionsFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x06194062288575f35c0af45d5e7013b65e082f23` | ⚠️ Unaudited |
| Helper | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263286 | `0x5aacd0d03096039ac4381cd814637e9fb7c34a6f` | ⚠️ Unaudited |
| HybridFactoryOwner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f4e1a1bcde549653e9302ba1caab403373f1048` | ⚠️ Unaudited |
| HybridVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd772edf092f155f3e81e2b261d96bcfae4fdc3ac` | ⚠️ Unaudited |
| HybridVaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbdc32268851c324c6185809271dfe6d8dab8dc5b` | ⚠️ Unaudited |
| iCollateral | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x78705df56477ff301b71b176a2bd3151b9f4e025` | ⚠️ Unaudited |
| iCollateralVaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb10e11f3e38dc35e06397689e45fa939eb3b0f69` | ⚠️ Unaudited |
| iCollateralVaultProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x06a8fee7a607c5c887f5f0672f7d8849583ddcc1` | ⚠️ Unaudited |
| iDAI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c5f9d1d115862ca99253e5738590f6d31ca35a0` | ⚠️ Unaudited |
| iDAIZapSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x260fbb4855b2a4a719097131016b573f95a867fa` | ⚠️ Unaudited |
| IEarnAPR | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9cad8ab10daa9af1a9d2b878541f41b697268eec` | ⚠️ Unaudited |
| IEarnAPRWithPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x029feae8d773a3fe25f1a3e35a526bb54744c9bb` | ⚠️ Unaudited |
| IEarnManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x318135fbd0b40d48fcef431ccdf6c7926450edfb` | ⚠️ Unaudited |
| IEarnProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7b3680ad3bc9e84fc06c8a0647b82d2026884bb4` | ⚠️ Unaudited |
| IEther | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x75a4d0b18e98674199829ddd2a6477ea25cd25eb` | ⚠️ Unaudited |
| Incentives for inclusion vote | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70557705dc49d7dc383356b27bc206f1018d1bc2` | ⚠️ Unaudited |
| Incentives for weight vote | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x742da637305e8a2d8dad8a82848ee90f543c2302` | ⚠️ Unaudited |
| IncentiveVoting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd8df0db401ab7ec7a06a8465134fa32132e850c` | ⚠️ Unaudited |
| Inclusion vote | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6bc0878939669339e82dbfa13d260c89230f2c31` | ⚠️ Unaudited |
| InflationaryVest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1f5789030ff8aed85c20baf614368c605b31b112` | ⚠️ Unaudited |
| insuredVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa53e9e63793e55c533fe98d0ed178992942863d9` | ⚠️ Unaudited |
| insurerVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8813d297ffff9ffa67b8fe91ac703caaa457bcf` | ⚠️ Unaudited |
| InterimAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a62a602295214c31f5a6f7a67271110f69d341e` | ⚠️ Unaudited |
| Introspection | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3cce081280060811889b63b98bf3d607029cc802` | ⚠️ Unaudited |
| iTrade | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x14a5ca87175cc04b90cd31b2f13fbf88d9104e3e` | ⚠️ Unaudited |
| KatanaStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5a090b0d9426323e825e0a19d78b100863600e9c` | ⚠️ Unaudited |
| Keep3r | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30f3581ef6469334c8752d9b6ca3fb39c72f57f1` | ⚠️ Unaudited |
| Keep3rEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x39392ae1b305161ecb500be8da88444c5b5a8ed5` | ⚠️ Unaudited |
| Keep3rEscrowJob | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x83a34a6469dbfd7654ae6d842d20977e89ccd73d` | ⚠️ Unaudited |
| Keep3rHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb41772890c8b1564c5015a12c0dc6f18b0af955e` | ⚠️ Unaudited |
| Keep3rJob | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb68e7deb279eaa11f234dff4931458d2c002d10d` | ⚠️ Unaudited |
| Keep3rLiquidityManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf14cb1feb6c40f26d9ca0ea39a9a613428cdc9ca` | ⚠️ Unaudited |
| Keep3rLiquidityManagerJob | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7e0cc5edf2dd01fc543d698b7e00ff54c6c39085` | ⚠️ Unaudited |
| Keep3rProxyJob | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d5a780fe782e90b49a85926cc77ddab0d024645` | ⚠️ Unaudited |
| Keep3rSugarMommy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xef9512e5f33e2d1c66f77ad61b3434a2fc97d321` | ⚠️ Unaudited |
| Keep3rV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ceb5cb57c4d4e2b2433641b95dd330a33185a44` | ⚠️ Unaudited |
| Keep3rV1Helper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1530a2924805aed2385f8b91849cab7fe95a5df9` | ⚠️ Unaudited |
| Keep3rV1JobRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7396899638410094b3690f8bd2b56f07fdab620c` | ⚠️ Unaudited |
| Keep3rV1Library | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdaef201ba1ba0354d71848893dd6d56905924c93` | ⚠️ Unaudited |
| Keep3rV1Oracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x73353801921417f465377c8d898c6f4c0270282c` | ⚠️ Unaudited |
| Keep3rV1OracleUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a03b4f6d5314bb257540dc7702c326f97f5c080` | ⚠️ Unaudited |
| Keep3rV1Volatility | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x173ed6531818456f29fc74011a3b1fb4b6132dc9` | ⚠️ Unaudited |
| Keep3rV2Helper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1bf16291d2336ac3320f17cad646b56bd5c8f6c0` | ⚠️ Unaudited |
| Keep3rV2OracleFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2266be1ee5d345914976fd4ce9f4be65737880cb` | ⚠️ Unaudited |
| Keep3rV2OracleFactoryWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa07662c041c4f7b31fd61c13c44212ff35b5296d` | ⚠️ Unaudited |
| Keep3rV3OracleUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1542ec733b1a938be7d30acf49e7f4a6a5ba0f82` | ⚠️ Unaudited |
| Keeper | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263275 | `0x52605bbf54845f520a3e94792d019f62407db2f8` | ⚠️ Unaudited |
| KeeperWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x9ce0115381f009e382acd52761127eff61061482` | ⚠️ Unaudited |
| Kernel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x47d62ed9fe6ef6810eac3165053d95579059e827` | ⚠️ Unaudited |
| Launch vote weight measure | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe931d4ee3250822beccc9d0defdf9b51edb13b2c` | ⚠️ Unaudited |
| LazyHarvest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9ea775672e4424c403f048ab08c7f56015c5d0f3` | ⚠️ Unaudited |
| LEVAMM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07cedaadf49552cbdbf684824323e631ceba305e` | ⚠️ Unaudited |
| LftLocker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd059575a78508b02e89ef9ae0c1b409b07853d37` | ⚠️ Unaudited |
| Liquid locker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x95710bde45c8d384a976cc58cc7a7e489576b098` | ⚠️ Unaudited |
| Liquid Locker Depositor | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263262 | `0x3d4ced97adb0ae3a53da95a47ffc749aad26bc8f` | ⚠️ Unaudited |
| Liquid Locker Middleware | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x58832fc23fb5c7342175c1f050d33b5420db3748` | ⚠️ Unaudited |
| Liquid Locker Redemption | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263334 | `0xba18d0df75a3ff58ef40a8fc0d3e4db74a0e681d` | ⚠️ Unaudited |
| Liquid Locker Reward Distributor | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263302 | `0x7efc3953bed2fc20b9f825ebffab1cc8b072a000` | ⚠️ Unaudited |
| Liquid Locker Vesting Escrow Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c2f62f11279fce767ecd7b280512acab7a76fe2` | ⚠️ Unaudited |
| LiquidationManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5de309dfd7f94e9e2a18cb6ba61ca305abf8e9e2` | ⚠️ Unaudited |
| LiquidationOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd82f6d42356e225bf79b870a05aac79062a3e8ce` | ⚠️ Unaudited |
| Liquidity Gauge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x008c2d6e93cc7eb61b6bea1e012214b851d781f7` | ⚠️ Unaudited |
| LiquidityIncome | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28832484e8124634a248f2bc520f26e8345a56cd` | ⚠️ Unaudited |
| LiquidRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02dd79b4a88fefe639d2a88e20f8013edea9440d` | ⚠️ Unaudited |
| LiquidTransferProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30285a1ce301fc7eb57628a7f53d02fbded3288f` | ⚠️ Unaudited |
| LitePsmExchange | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x126462a6fc6b8f04e5d46a778daea0544e34dc5e` | ⚠️ Unaudited |
| LockedyvUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1f9aa28c97475e854d8a5c60149e51ab8c4615c9` | ⚠️ Unaudited |
| LockedyvUSDAprOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x209ec22002fa0fe83adbe7d1335edd7faeb1a90b` | ⚠️ Unaudited |
| LockerZapper | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263299 | `0x7ba61c8e19414dcb8fe769a7be63b508c8062bba` | ⚠️ Unaudited |
| LongOTokenPut | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x12c51dac6e63faac989abe39d1c698dad8ce3aa6` | ⚠️ Unaudited |
| LooperKeeper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x706eacfc476f46547200a73709e2efe1522c80e3` | ⚠️ Unaudited |
| LT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b0d8bccf062555ec18d5e4d8fe895e64e3f1eb4` | ⚠️ Unaudited |
| LTMigrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2cdb9f485e718f551cfeea6c33cb7062ed37066c` | ⚠️ Unaudited |
| MainnetVeOracleOptimism | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x751a728d74eb37c7a7f4e35f9853f37e76d437fc` | ⚠️ Unaudited |
| ManagementList | unknown | project_anchor | own_supporting | 0 | optimism | unit-263390 | `0x7e9756e1427b3c38f001f9d272d8d62bef63d619` | ⚠️ Unaudited |
| ManualBorrowRewardAprOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6f758057f79d6faca91fce01b1331d0de9ff28ed` | ⚠️ Unaudited |
| MasterMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x566c11b5c2201b69c9269fe924e4395873674335` | ⚠️ Unaudited |
| MaticWETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7ceb23fd6bc0add59e62ac25578270cff1b9f619` | ⚠️ Unaudited |
| MechanicsRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe8d5a85758fe98f7dce251cad552691d49b499bb` | ⚠️ Unaudited |
| Memory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9db355769b637249d8d5f8df2378dc77eff216b2` | ⚠️ Unaudited |
| MetaKeep3r | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x93dfa873b15ad496ba8116ce6cfec52ef30a9372` | ⚠️ Unaudited |
| MetaMorphoV1_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x68aea7b82df6ccdf76235d46445ed83f85f845a3` | ⚠️ Unaudited |
| MigrateTroveZap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1371c1dae7d3ad43bb79ecce1b882ad9754f9047` | ⚠️ Unaudited |
| Minter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x708f456c0d5496e0117ea8c1472cf0cc6782fb7b` | ⚠️ Unaudited |
| MomFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x141a206ece672e3198086c5d21f7858ad03669ea` | ⚠️ Unaudited |
| MultiCollateralHintHelpers | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c5871d69c8d6503001e1a8f3bf7e5ebe447a9cd` | ⚠️ Unaudited |
| MultiTroveGetter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x58fa5521f48b258b5e48a56b9b1bd95bffa1eb1c` | ⚠️ Unaudited |
| NexusMutualCover | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x93a2880f657793a1d839653c8f8cef52f3de7a28` | ⚠️ Unaudited |
| Normalizer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9214a67186965fd5fe582a64a8646ff058f023aa` | ⚠️ Unaudited |
| Null Minter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1025cf97b8a91cbd8e6d2cbf972437a54d017214` | ⚠️ Unaudited |
| OneInchSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x06a53f5e51ae9fec9cc10fef3278cd969ddbf89d` | ⚠️ Unaudited |
| OptimismMintableERC20 | unknown | project_anchor | own_supporting | 0 | optimism | unit-263396 | `0x9046d36440290ffde54fe0dd84db8b1cfee9107b` | ⚠️ Unaudited |
| OptimismVeOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x32d80467126bc2cc0bae26471357fd616f479c41` | ⚠️ Unaudited |
| OptionsV1Library | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x48bc6de14fc64418da9d0b5befdb404e3e76cdd5` | ⚠️ Unaudited |
| OptionsV1Reserve | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00fbd1774093e9240beb559f7a1300d291d86309` | ⚠️ Unaudited |
| OpynBuyVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ca4e12fd8e37e30ed3a37bccf61ba8edf85012c` | ⚠️ Unaudited |
| OpynPerpVaultBtc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa25cb1b10b8252480cc6a3b17c22e6c0e00bcb4` | ⚠️ Unaudited |
| OpynPerpVaultEth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc10b7ca0383f0357edeed233dc806b5229dcf4a5` | ⚠️ Unaudited |
| Oracle | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-263438 | `0x043518ab266485dc085a1db095b8d9c2fc78e9b9` | ⚠️ Unaudited |
| OracleBondedKeeper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa8646ce5d983e996eba22eb39e5956653ec63762` | ⚠️ Unaudited |
| OriginMintExchange | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x707e119476e1450a20e153a7ba99a9d5c4c810c0` | ⚠️ Unaudited |
| OSMedianizer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf63089a8ad2a9d8bd6bb8022f3190eb7e1ed0f1` | ⚠️ Unaudited |
| Ownership proxy | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263280 | `0x56af9c2780e0323810acfdaeab3f58ef6e76fafd` | ⚠️ Unaudited |
| OYfi | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdc1ba2a504430131c7a291b7d114b11e7baf9c22` | ⚠️ Unaudited |
| PairsHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1153f280e7ec1182fc9ae7f35daa41f21ece26da` | ⚠️ Unaudited |
| PartialKeep3rV1OracleJob | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5efd850044ba76b8ffe49437cb301be3568ba696` | ⚠️ Unaudited |
| PawnBrokerFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfb58b3306a6e00c65a1de8ad4aba21ac8f116969` | ⚠️ Unaudited |
| PawnBrokerLooper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd362efc75ef1879f37a900823495f402cfdb0986` | ⚠️ Unaudited |
| PermastakerOperator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3419b3fff84b5fbf6eec061ba3f9b72809c955bf` | ⚠️ Unaudited |
| Permissionless yETH deposit/withdrawal facility | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xab742729a0b09399a9f9caa5b23be8eb7464ec9d` | ⚠️ Unaudited |
| PessimisticVelodromeLPOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x20cd9e17c3df2e82a852872b7792eecafa65b694` | ⚠️ Unaudited |
| PlatformFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1abe682c785ccf18c91f4da045792115ae7744d1` | ⚠️ Unaudited |
| Pool governor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcafdf1393d9a30d56c7fec50412e21ede3e86656` | ⚠️ Unaudited |
| PoolRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3051cc7114c07365c99cf82de13cd9d10e603a4a` | ⚠️ Unaudited |
| PreDepositFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x12a51ccf52c5ed74b48c0c38e0098ee2cbaa25bf` | ⚠️ Unaudited |
| PriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x543a89fe8dd9403b89222540a881d3642da884ed` | ⚠️ Unaudited |
| PriceFeedNoPrevious | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41e41068618ae53f126175eb32fea3c29c1d3e86` | ⚠️ Unaudited |
| PriceProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e94fa3c1e72f48ecbc1f944f393ae8a323be471` | ⚠️ Unaudited |
| PricesHelper | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263288 | `0x5d63a8584d91ebc5033d022afd6c5a7c7fddc99b` | ⚠️ Unaudited |
| PrismaClaimOperator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e2e98e1ea79c31c9ab957e465c5529fc81880ab` | ⚠️ Unaudited |
| PrismaCore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d17ea085f2ff5da3e6979d5d26f1dbab664ccf8` | ⚠️ Unaudited |
| PrismaPSM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x15b434fa5eb482b5aeb56f07df7a29bf261fff61` | ⚠️ Unaudited |
| PrismaSnapshotMockToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xea3030b900d94ed36e5a4e8b15b1db76530acc56` | ⚠️ Unaudited |
| PrismaToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda47862a83dac0c112ba89c6abc2159b95afd71c` | ⚠️ Unaudited |
| PrismaVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x06bdf212c290473dcacea9793890c5024c7eb02c` | ⚠️ Unaudited |
| PropertiesAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f870c0ee9ed1662b42d2d91781f1958f355e995` | ⚠️ Unaudited |
| ProposalGuardian | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc813f688ca38d37e35845fb2eb180efbc5002e76` | ⚠️ Unaudited |
| Protocol Address Provider | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263297 | `0x775f09d6f3c8d2182dfa8bce8628acf51105653c` | ⚠️ Unaudited |
| Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x242521ca01f330f050a65ff5b8ebbe92198ae64f` | ⚠️ Unaudited |
| PublicAllocatorTendExecutor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb86c97f61db0b339d4ffe7f39f7725b80a121d5d` | ⚠️ Unaudited |
| Receiver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x642a16a7885d7a8b9353e2a4b68834f31389dc2c` | ⚠️ Unaudited |
| RefundAccountant | unknown | project_anchor | own_supporting | 0 | polygon | unit-263405 | `0x54483f1592ab0adea2757ae0d62e6393361d4cee` | ⚠️ Unaudited |
| RegisteryAdapterV2Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x071b848b34586d0dc0009a3c0e6240b123c57186` | ⚠️ Unaudited |
| RegisteryAdapterV2Vaults | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263248 | `0x240315db938d44bb124ae619f5fd0269a02d1271` | ⚠️ Unaudited |
| Registry | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263353 | `0xd40ecf29e001c76dcc4cc0d9cd50520ce845b038` | ⚠️ Unaudited |
| RegistryAdapterIronBank | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x21670ddb429b6d80b5be4e65532576bb14b7cc62` | ⚠️ Unaudited |
| RegistryAdapterV2Vault | unknown | project_anchor | own_supporting | 0 | optimism | unit-263399 | `0xbcfca75ff12e2c1bb404c2c216dbf901be047690` | ⚠️ Unaudited |
| RegistryFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263261 | `0x3a0fa8aac82ad94048098d6af6e8eb36c98816a1` | ⚠️ Unaudited |
| ReleaseRegistry | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263230 | `0x0377b4dadda86c89a0091772b79ba67d0e5f7198` | ⚠️ Unaudited |
| RemappingOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x282fb12f1d498766ef93423e10d2f2ece9dec8aa` | ⚠️ Unaudited |
| Repay | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x52f28c876969de6175bd16d7515ff430c15d7117` | ⚠️ Unaudited |
| RescueStrat | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb354dff03c15499ab9834faa63b6839c3be9d21` | ⚠️ Unaudited |
| RescueStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9ecbb5c5b836dff9566b85ea7154ba360326b9a7` | ⚠️ Unaudited |
| ResupplyPair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd210bc75b822795a80672413e189312598e1e42b` | ⚠️ Unaudited |
| rETHDepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6e38f97be87f639fad08b79e2d6f1822e26e2cb2` | ⚠️ Unaudited |
| Revenue Price Oracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc1f9b548afcbe850f2beba8a50e55d86f4abae2e` | ⚠️ Unaudited |
| Revenue Recipient | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b5ab518f532ce260a5d2795e1eec544fc159587` | ⚠️ Unaudited |
| Reward Claimer | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263323 | `0xa82454009e01ae697012a73cb232d85e61b05e50` | ⚠️ Unaudited |
| Reward Distributor | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263351 | `0xd31911a33a5577be233dc096f6f5a7e496ff5934` | ⚠️ Unaudited |
| RewardDepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x922cf0e43f8c8dc02399a10fcf25f3f17c6c1096` | ⚠️ Unaudited |
| RewardsPuller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb7e60dab3799e238d01e0f90c4506eef8f6a1503` | ⚠️ Unaudited |
| RiskOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0739311a9725779f109706b48a56763a8ae8fe50` | ⚠️ Unaudited |
| RoleManager | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-263445 | `0x3bf72024420bdc4d7ca6a8b6211829476d6685b1` | ⚠️ Unaudited |
| RoleManagerFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263344 | `0xca12459a931643bf28388c67639b3f352fe9e5ce` | ⚠️ Unaudited |
| RouterFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7919a37ba0921347b9142041ee7be1d410f2fa2a` | ⚠️ Unaudited |
| RouterStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9084b5a98e3b4b257affd82ae4a1753f87906dce` | ⚠️ Unaudited |
| SafeProxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-263480 | `0x90d0f26025571295d18a6c041e47450b81886b51` | ⚠️ Unaudited |
| SafeProxy | unknown | project_anchor | own_supporting | 1 | base | unit-263484 | `0x90d0f26025571295d18a6c041e47450b81886b51` | ⚠️ Unaudited |
| SafeProxy | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-263455 | `0x90d0f26025571295d18a6c041e47450b81886b51` | ⚠️ Unaudited |
| SafetyRedundancy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6bdfea3b1fc7d01bfed72e08fd395fc6d0fb3c40` | ⚠️ Unaudited |
| sdFPIS | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x334cb66050049c1e392007b018321c44a1dbfac4` | ⚠️ Unaudited |
| SdLiquidityZapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a3bd204d41c41804953558b9a29349e85d7e24b` | ⚠️ Unaudited |
| SdtDistributorV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10a4a0db6554bfd90cfce11c97d3cf1b296cc2b6` | ⚠️ Unaudited |
| sdToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0879c1a344910c2944c29b892a1cf0c216122c66` | ⚠️ Unaudited |
| ShadowQueueAprOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2f10af0abc52025160167bffbec7167e5363db90` | ⚠️ Unaudited |
| Sharer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9a65e8ecc9d0112dab0e05c9496894227765b6b8` | ⚠️ Unaudited |
| SharerV3 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263255 | `0x2c641e14afecb16b4aa6601a40ee60c3cc792f7d` | ⚠️ Unaudited |
| ShareValueHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0259e629ecded874e0e289e047817cf50f7671fa` | ⚠️ Unaudited |
| ShortOTokenActionWithSwapBtc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb5a187cd9140b6b0db97f014f5c6af5802a3098d` | ⚠️ Unaudited |
| ShortOTokenActionWithSwapEth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7946b98660c04a19475148c25c6d3bb3bf7417e2` | ⚠️ Unaudited |
| Shutdown Module | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263365 | `0xe9462885290eb79ece41367d92712d6f525ba5fa` | ⚠️ Unaudited |
| Signer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10d7cb15642d540a4521a7b2840dab01287081fc` | ⚠️ Unaudited |
| SimpleRedeem | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x276d33825a217019b6afe5b317bef302db353465` | ⚠️ Unaudited |
| SimpleTreasuryVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a6de4affaddc01b2780ff701f8722de53b6b364` | ⚠️ Unaudited |
| SimpleVaultMigrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x056b0fe9bcbf55fb89ceed0081b2d52f3cbefe7b` | ⚠️ Unaudited |
| SingleSidedAMM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x82bfdd53dd95efa2c3e92543f28d46c566bf4b8a` | ⚠️ Unaudited |
| SingleTokenRewardDistributor | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263241 | `0x1d02f6a86ed5650f93e40fcd62fa5727c32ad746` | ⚠️ Unaudited |
| SIUSDAprOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe51331a12e2b09067dd5b02021bf89e3a97336c3` | ⚠️ Unaudited |
| SmartWalletChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x173f5f648b18cf1c7f6aac66a35bf462539f3b27` | ⚠️ Unaudited |
| SmartWalletWhitelist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5268ba00308c3e6bd1c4aa1e46d65eb1a4b120a3` | ⚠️ Unaudited |
| Snapshot measure | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d8ab04f46323ca50941495ac15a49ddacba915f` | ⚠️ Unaudited |
| Snapshot Splitter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x168b92fc04eb8815a517b3f12341166bc5ada222` | ⚠️ Unaudited |
| Snapshot vote weight token | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb2ba982e22a488c8dcbb46cfe14473b1a6840804` | ⚠️ Unaudited |
| SortedTroves | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3bab3f90095c424b923d67f4be1790935c8bbb50` | ⚠️ Unaudited |
| Splitter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x34a045499247b983d16a49a1b72d5b3b2e76e526` | ⚠️ Unaudited |
| SpotOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0eaeca0e27b3cdb855b7a9b06ca2d9cdfb79fa51` | ⚠️ Unaudited |
| SpotOracleAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xadcdaaf8f74ad19c46710492389aa846429ba14b` | ⚠️ Unaudited |
| SpotOracleAggregatorUltra | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdbf40c130399a730f22c7d59facf519e2feaa071` | ⚠️ Unaudited |
| StabilityPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6953504f2f4537d7a7b4024508f321f7816bb6ed` | ⚠️ Unaudited |
| StableAMM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0670e207ccc46c18fc38cdb3305c5a0e889eb4cd` | ⚠️ Unaudited |
| StableCreditHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x404f9ecabd4a0d4507c81766e01f76fe52ca0acb` | ⚠️ Unaudited |
| StableCreditProtocol | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x15fe17da18288d1799643be1bb07fb939626f5f9` | ⚠️ Unaudited |
| StableYieldCredit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11980d4bb4465cb4fc77a57b98a16787b3d834e7` | ⚠️ Unaudited |
| Staked YFI | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263267 | `0x42b25284e8ae427d79da78b65dffc232aaecc016` | ⚠️ Unaudited |
| StakedyBoldOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x64a7de4025c0c8793b08e484999ea33c585a849f` | ⚠️ Unaudited |
| StakeNTroveZap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1951159afb9ceec77c8d767386dc15471f3fdb83` | ⚠️ Unaudited |
| StakeZap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f76333e716788b0786b405fa8ea8928928e2dfd` | ⚠️ Unaudited |
| Staking Middleware | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24b267aa3946209ca19231d0f17110577be00a86` | ⚠️ Unaudited |
| Staking Reward Distributor | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263316 | `0x95547ede56cf74b73dd78a37f547127dffda6113` | ⚠️ Unaudited |
| Staking rewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe9c8a785eab9ee13a908af10a51229d35e3b0d2` | ⚠️ Unaudited |
| StakingRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x009c05bfb6d51fa0439d1473681b472019bf8dfe` | ⚠️ Unaudited |
| StakingRewardsMulti | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b3d59a46a9c2b5abf02a85d4dc1915b270a6a52` | ⚠️ Unaudited |
| StakingRewardsRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d8dac450df7e222ae1d591046eb7b5324c9d44f` | ⚠️ Unaudited |
| StakingRewardsZap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x37f350dc357222e823620d473d0289c12e1accdc` | ⚠️ Unaudited |
| Stash | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe376e8e8e3b0793cd61c6f1283ba18548b726c2e` | ⚠️ Unaudited |
| StaticCallProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d7ec4a09cd4330f5c2c4341621a8249001a6cb0` | ⚠️ Unaudited |
| StealthRelayer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a61c2146a7800bdc278833f21ebf56cd660ee2a` | ⚠️ Unaudited |
| StealthVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc454f4e1ddb39c8de9663287d52b0e4feb4ca45e` | ⚠️ Unaudited |
| StrategiesHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11bba9df4541c8e40288428d91b19ac64b22dd91` | ⚠️ Unaudited |
| Strategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x001f751cdfee02e2f0714831be2f8384db0f71a2` | ⚠️ Unaudited |
| Strategy4626 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x05d13fba06956514a550d0560293f8bcbec2bcb8` | ⚠️ Unaudited |
| StrategyAprOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d50cae113c7d971be5577836ced3b367ec4aed4` | ⚠️ Unaudited |
| StrategyAuraFactoryClonable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2f00c2b4b5bba25c72106595551073efc6fa18f4` | ⚠️ Unaudited |
| StrategyControllerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2be5d998c95de70d9a38b3d78e49751f10f9e88b` | ⚠️ Unaudited |
| StrategyCreamCRV | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xacb5ebaa9bac72581b269077ef4d0ba3eefac2b7` | ⚠️ Unaudited |
| StrategyCreamYFI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x40bd98e3cce4f34c087a73dd3d05558733549afb` | ⚠️ Unaudited |
| StrategyDForceDAI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd643cf07344428770b84973e049a1c18b5d47ede` | ⚠️ Unaudited |
| StrategyDForceUSDC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01b354a9fb34760455ee9cbe7d71d2ce5c11ab5c` | ⚠️ Unaudited |
| StrategyDForceUSDT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x787c771035bde631391ced5c083db424a4a64bd8` | ⚠️ Unaudited |
| StrategyFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x02754ce97319adb7eb03782dc541d7b6f1bcf6aa` | ⚠️ Unaudited |
| StrategyFedPartner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe6d1100826c9b2db663edde5b2ff16e0baf8b2dc` | ⚠️ Unaudited |
| StrategyLPConvert | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x47499bddf92e1fdff781fac78138acbdb5c5faf2` | ⚠️ Unaudited |
| StrategyLQTYStaker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x478085739ea884f38add4d36872acd8333b5d4d6` | ⚠️ Unaudited |
| StrategyMKRVaultDAIDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28e5a47820313da9c74b8f2295795da6e6e083a5` | ⚠️ Unaudited |
| StrategyMStableSavings | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x31641a4836c172640fa1c02999b09c5d1069156f` | ⚠️ Unaudited |
| StrategyMStableSavingsTUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x442510ba285d5390cb5385a91a380d4268e0b81c` | ⚠️ Unaudited |
| StrategyProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16c20cfeda6e9ebfb9e557e76a2dfbe85c597c7a` | ⚠️ Unaudited |
| StrategyRouterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3bd13c2c082cb269c54432746335a7814972ad24` | ⚠️ Unaudited |
| StrategyRouterV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa7496763f035e73ec6b56f4c86312cc1874a01e3` | ⚠️ Unaudited |
| StrategySNXSUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2288c409e67b6ce52180f97a8cddf7abc24ec989` | ⚠️ Unaudited |
| StrategystETHAccumulatorV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x740e59f165706f5c94cd52683c62ad8ad0124a97` | ⚠️ Unaudited |
| StrategyVaultTUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x35cee4c61b7619956e0b2015b5411f93cbba817a` | ⚠️ Unaudited |
| StrategyVaultUSDC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25faca21dd2ad7edb3a027d543e617496820d8d6` | ⚠️ Unaudited |
| StrategyVelodromeFactoryClonable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x03153325e09aab45926ec74c85e1eb1299c6d19b` | ⚠️ Unaudited |
| StrategyYearnBasic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7811bdc0e906eecaaf951057305187d0a4badf5c` | ⚠️ Unaudited |
| StrategyYffi | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe197e668d13746bb92e675dea2868ff14da0b73` | ⚠️ Unaudited |
| StrategyYFIGovernance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x395f93350d5102b6139abfc84a7d6ee70488797c` | ⚠️ Unaudited |
| StrategyYfii | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2de055fec2b826ed4a7478ceddbeff82c1edfa70` | ⚠️ Unaudited |
| String | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x02ff746d8cb62709aeec611cec9b17d7dd1d3480` | ⚠️ Unaudited |
| Strings | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x45f80a180acb435aa0a52f1a260f3cc2703c4a93` | ⚠️ Unaudited |
| StringSplit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c0eeef670d82498f7547062aac7ee2143ec52ff` | ⚠️ Unaudited |
| SturdyUSDCOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7af63dc2d7bb6996f8727d4462e68fc3c1c2102c` | ⚠️ Unaudited |
| SupplyFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf2eb916605402e5c7e81f7d609d0e2204841978f` | ⚠️ Unaudited |
| SUSDSExchange | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a3bc2cce3ea37ead933422252e349512f4fc744` | ⚠️ Unaudited |
| SUSDSUSDTExchange | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x328ee88a60da26e270061533c6e9fa03c031df80` | ⚠️ Unaudited |
| SwapDebtForCollZap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11478565ac5925745386d58eae65c9597e342a1a` | ⚠️ Unaudited |
| SwapHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4d6c977a6998544f667b0aeec8c93822504e1981` | ⚠️ Unaudited |
| Swapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c73f6a362ef32b30585326ba57b5432c0d4695d` | ⚠️ Unaudited |
| SwapperV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e6ae791cc33120d72392f2449dbb91dec6bf694` | ⚠️ Unaudited |
| SwapperV4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e1b2d617834994a74c14f255b56ef0b1100f853` | ⚠️ Unaudited |
| SwapperV5 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b7e6fb817112b036eaa4ae85479ff1c2e9330a2` | ⚠️ Unaudited |
| SweeperV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b3d9fe074c18a2fa10a8206670ef7f65f40ff26` | ⚠️ Unaudited |
| Synthetic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0485a423c0b8ff2f5aa2ec35a32d1c67a2e99b6c` | ⚠️ Unaudited |
| SyntheticRebaseDollar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa90d9cc2f41a150489da5fffba2060a2938ffdc` | ⚠️ Unaudited |
| SynthetixAMM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ed4a410a612f2fe625a8f3cb4d70f197ff8c8be` | ⚠️ Unaudited |
| SynthetixExchange | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0691cf9d171d6c9c3876598b14732248b204c2cf` | ⚠️ Unaudited |
| SyrupDepositExchange | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ac4aee8be925472e2239e9633b9157e7cbcbd4f` | ⚠️ Unaudited |
| SyrupExchange | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe9409b50cd0f25d203319f7bcf729f195a7bd0f0` | ⚠️ Unaudited |
| TapFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x521c420c2a2b461034becbb41d4888b68951f14f` | ⚠️ Unaudited |
| Team | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa59b34c87f97bdf95ab3e532fd9b7d1fcd23bf43` | ⚠️ Unaudited |
| Team Accountant | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c221980aab2e52ccc02180e0c171ca5e5ffdfd6` | ⚠️ Unaudited |
| Team Registry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9da431b8a5b5962ebff1d1876ddb0f336a372f29` | ⚠️ Unaudited |
| TendiesFarm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x101dd6f1f5e396f6ab87407df637cce814e24a9f` | ⚠️ Unaudited |
| TendV2Keep3rJob | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ef7801c6a9d451ef20d0f513c738cc012c57bc3` | ⚠️ Unaudited |
| Test | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x643a6970460e336a526e7b185f7b3e6ff6901e26` | ⚠️ Unaudited |
| TestGuestList | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1403eea5fff87253658d755030a73dfbca2993ab` | ⚠️ Unaudited |
| TimeLoanPairFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2df93404574dff883e2b35911a684dab1760da0d` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1994b59e02cd0d09d839b03660c205e88a929b81` | ⚠️ Unaudited |
| TimelockController | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263308 | `0x88ba032be87d5ef1fbe87336b7090767f367bf73` | ⚠️ Unaudited |
| TimelockExecutor | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263376 | `0xf8f60bf9456a6e0141149db2dd6f02c60da5779b` | ⚠️ Unaudited |
| TimelockGovernance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x026d4b8d693f6c446782c2c61ee357ec561dfb61` | ⚠️ Unaudited |
| TokenLocker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f78544364c3eccdce4d9c89a630aea26122829d` | ⚠️ Unaudited |
| TokenSender | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x223bb2252c2b1855c337b2a0d6d066c76d2a5d0b` | ⚠️ Unaudited |
| TokenVotingFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x076e298405b75a02c222d3860d703e4c92fb9e20` | ⚠️ Unaudited |
| TopFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0eda20f7499aae7bdadc4e52fd72e49663733ed4` | ⚠️ Unaudited |
| Treasury | unknown | project_anchor | own_supporting | 0 | base | unit-263466 | `0x02ff746d8cb62709aeec611cec9b17d7dd1d3480` | ⚠️ Unaudited |
| TreasuryVault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263313 | `0x93a62da5a14c80f265dabc077fcee437b1a0efde` | ⚠️ Unaudited |
| Trigonometry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x23e25843e09a1c2347fb2a27121b6ddbb3b3dae2` | ⚠️ Unaudited |
| TroveManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x14a3b726724a0e620cde342a7c04c09e0d05f7a6` | ⚠️ Unaudited |
| TroveManagerGetters | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4404ff820dad76afc4f931079eb13fd418c9ae7a` | ⚠️ Unaudited |
| TrustedVaultMigrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1824df8d751704fa10fa371d62a37f9b8772ab90` | ⚠️ Unaudited |
| TubFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb3b67099121e1fbde6276b2802048d1a7dd1b987` | ⚠️ Unaudited |
| TvlAdapter_VAULT_V2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5e4c808d762b969290b2d5fa89ed13c6b40c47dc` | ⚠️ Unaudited |
| TvlAdapterEarn | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263234 | `0x1007ed6fdfac72bbea9c719cf1fa9c355d248691` | ⚠️ Unaudited |
| TvlAdapterIronBank | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263369 | `0xec7ac8ac897f5082b2c3d4e8d2173f992a097f24` | ⚠️ Unaudited |
| TvlAdapterV1Vaults | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263370 | `0xf4fb8903a41fc78686b26de55502cde42a4c6c78` | ⚠️ Unaudited |
| TvlAdapterV2Vaults | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263237 | `0x14d6e0908bae40a2487352b2a9cb1a6232da8785` | ⚠️ Unaudited |
| TvlAdapterVeCrv | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263279 | `0x560144c25e53149ac410e5d33bdb131e49a850e5` | ⚠️ Unaudited |
| TwapOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7aa3490e09feb1ee220acf57801e0ab16b24d013` | ⚠️ Unaudited |
| UChildDAI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x490e379c9cff64944be82b849f8fd5972c7999a7` | ⚠️ Unaudited |
| UChildERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0735a62b0b6e837fa67130589988436fd26f0e12` | ⚠️ Unaudited |
| UChildERC20Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x02daefc2e8aad089d094579499508398e3057966` | ⚠️ Unaudited |
| UChildERC20Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x2791bca1f2de4661ed88a30c99a7a9449aa84174` | ⚠️ Unaudited |
| UChildERC20Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0xc2132d05d31c914a87c6611c10748aeb04b58e8f` | ⚠️ Unaudited |
| UniOracleFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x61da8b0808cea5281a912cd85421a6d12261d136` | ⚠️ Unaudited |
| UniqueAddresses | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07da8603916ee59a921eb4f1eb89daef71ecfabe` | ⚠️ Unaudited |
| UniqueAddressesHelper | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263342 | `0xc3a0bef4a47ba579cbba510ae2c59d9b9bf9467c` | ⚠️ Unaudited |
| Unitroller | unknown | project_anchor | own_supporting | 1 | ethereum | unit-263481 | `0xab1c342c7bf5ec5f02adea1c2270670bca144cbb` | ⚠️ Unaudited |
| Unwrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x13dfeb3cc4f05229c449c30a9ae4141d7fcadd85` | ⚠️ Unaudited |
| USDCToUSDS | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04d9614e94f1885ef819e96f9402e1a81eb71afe` | ⚠️ Unaudited |
| USDCToUSDS | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x1b88f199d42f2114de341c5b68e9c92af1c271ee` | ⚠️ Unaudited |
| USDSFarmerDAI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x78c2c5d6e4ac63edbf534a1c88093edb6bc765d1` | ⚠️ Unaudited |
| USDSFarmerUSDC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x38e95f4ae861feed3952d0dac5abb14a94230f8b` | ⚠️ Unaudited |
| V2Keeper | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263295 | `0x736d7e3c5a6cb2ce3b764300140abf476f6cfccf` | ⚠️ Unaudited |
| V3Router | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x059b1507b22267fc1cda8b6d2fbf2cab5d7a1ce5` | ⚠️ Unaudited |
| VaultKeep3r | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x054a87ddfde3ccb5ddb03739375329bcc1b03203` | ⚠️ Unaudited |
| VaultKeep3rJob | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a479e4457841d2d2ff86e5a5389300963880c10` | ⚠️ Unaudited |
| VaultRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x78f73705105a63e06b932611643e0b210fae93e9`; ethereum `0xfffab17b48914d2bae231bb380faf8c05fe8e2ff` | ⚠️ Unaudited |
| VaultRoleManagerHandoff | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2045cfdd404f88f86f611976ba3f11f8bdcd7e19` | ⚠️ Unaudited |
| VaultsRegistryHelper2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x57ca31224bec6901b353251840ae4d10c3cb70d8` | ⚠️ Unaudited |
| VaultSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf12eeab1c759dd7d8c012cca6d8715eed80e51b6` | ⚠️ Unaudited |
| VaultV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa4c78b49c9ec659df1f5b620f2dc8b80a0dc4f7a` | ⚠️ Unaudited |
| VaultV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x62663257c7958e411b98941f93925297940e27de` | ⚠️ Unaudited |
| VelodromeGlobal | unknown | project_anchor | own_supporting | 0 | base | unit-263469 | `0x2d12caffa46ab3b6c5ceb224620de8b4de3cdff1` | ⚠️ Unaudited |
| VeSDTFeeAngleProxyV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x059f78859a152e42dd590a49be44f2ebe9fcd1ac` | ⚠️ Unaudited |
| Vesting Escrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0cf5bf5e7ba48796d6ec641a75f55bd1d6db23ef` | ⚠️ Unaudited |
| Vesting Escrow for veYFI liquid lockers | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x212559a47cc87607c9bf07538bd7aa6836fc9942` | ⚠️ Unaudited |
| Vesting Staker (1UP) | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x298bc0153998bc43003ca8b27768228791e6304f` | ⚠️ Unaudited |
| Vesting Staker (Cove) | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc198fcb71e5a2cf29f7bcafaa462f3b0238fa691` | ⚠️ Unaudited |
| Vesting Staker (StakeDAO) | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e37347bcdf609139f74dcaeac553343cb123a1d` | ⚠️ Unaudited |
| VestingVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f59818105abe05ae793a8caedb39fc2bea7f03c` | ⚠️ Unaudited |
| VeYfiPositionHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5a70cd937ba3daec8188e937e243ffa43d6ecbe8` | ⚠️ Unaudited |
| VirtualPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x125ca420ea1556a65bb926fa7bd5d72fc22af268` | ⚠️ Unaudited |
| Vote weight measure with delegation and decay | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x52574a10ce418afef388e39cea61643d33dba81d` | ⚠️ Unaudited |
| Voting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc55a3957476cc1e7fef40856802edd150c3a3dcd` | ⚠️ Unaudited |
| Voting Escrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x13daffdf8863c47290363b0109b681e3f37470a0` | ⚠️ Unaudited |
| Voting Escrow Reward Distributor | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263249 | `0x2548bf65916fdabb5a5673fc4225011ff29ee884` | ⚠️ Unaudited |
| VotingPowerCondition | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2321a7facf817cfea12cd444d6d3cfa7ba0591b7` | ⚠️ Unaudited |
| VoxFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x414b1da0bb6e948dc0559d14ebde9fa9572499bf` | ⚠️ Unaudited |
| VulnerableTroveRedeemer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e07cfbf666741b2fb3a33516a23293cae7d0438` | ⚠️ Unaudited |
| Vyper_contract | unknown | project_anchor | own_supporting | 0 | optimism | unit-263382 | `0x0000000022d53366457f9d5e68ec105046fc4383` | ⚠️ Unaudited |
| Wallet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x77d851a9f62a4c76481cda94d40772642b353d7f` | ⚠️ Unaudited |
| WeETHUnwindAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a0e0580bd8493be43cad2910cb5497f696e9d12` | ⚠️ Unaudited |
| Weight aggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6973cf85d479b9253e13e71f377e8cd2c2dfecd7` | ⚠️ Unaudited |
| Weight vote | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25aea8c84e138d2bab058bcfbdcbd62d26544a18` | ⚠️ Unaudited |
| WETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x353f8931ce1c52f643121be129985aab09c4bf52` | ⚠️ Unaudited |
| WETH9 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2` | ⚠️ Unaudited |
| WETHWstETHExchange | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x706aa50385c51596b6d9cbcf97645c6a98940c03` | ⚠️ Unaudited |
| WrappedYFI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x017e71e96f2ae777c679740d2d8dc15ed4231981` | ⚠️ Unaudited |
| WstETHUnwindAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x33e472b038575bf745f5d42dc58b09a6f971099b` | ⚠️ Unaudited |
| xVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0205ae93e18aa23d31e3df53899547b986e419c5` | ⚠️ Unaudited |
| yAffiliateFactoryV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x44ff2af361e4b6a2892523d513df5245fc53b367` | ⚠️ Unaudited |
| yBAL Zap v1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xccd31df9084615d87036586f5139c83c6a058bae` | ⚠️ Unaudited |
| YBC Bonus Recipient | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf03a919a59f8381be220511ecf788b15fb039e4c` | ⚠️ Unaudited |
| YBC Membership Election | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe16608758c11322d407745927d2d033f1bfb206c` | ⚠️ Unaudited |
| YBC Reward Distributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x53100f8979d3655a2e95465f583b0f4a11c8bbe1` | ⚠️ Unaudited |
| YBC Weight Aggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xadb7228a85fcd24e3cfc8c58e2d4b9f03e1468d9` | ⚠️ Unaudited |
| yBribe | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x03dfdbcd4056e2f92251c7b07423e1a33a7d3f6d` | ⚠️ Unaudited |
| YBSFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ea13660e4b4319a1418c5a5e9fe98263e65ac4f` | ⚠️ Unaudited |
| YBSRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x262be1d31d0754399d8d5dc63b99c22146e9f738` | ⚠️ Unaudited |
| YBSRewardFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdbbf7d6d71397b33675ad16c31bd3505c6af0bd5` | ⚠️ Unaudited |
| YBSUtilities | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263251 | `0x265c8d21a322b04804524b857089de2fef619569` | ⚠️ Unaudited |
| YBSUtilsFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x210e690ed371d69c7ea42ba716d8ab782041c6f0` | ⚠️ Unaudited |
| YBToken | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263228 | `0x01791f726b4103694969820be083196cc7c045ff` | ⚠️ Unaudited |
| yBUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04bc0ab673d88ae9dbc9da2380cb6b79c4bca9ae` | ⚠️ Unaudited |
| yCollateralVaultProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24dd028bd027511482e701d08bae002cd6e82a5d` | ⚠️ Unaudited |
| yCRV | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x170411a2d872945ee8c59e4ef5c3402ebe2a221c` | ⚠️ Unaudited |
| YCRV Zap v3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdc899ab992fbcfbac936ce5a5bc5a86a5d35a66a` | ⚠️ Unaudited |
| YCRV Zap v4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ec30e8f98dcf08b29b02f46082ed05f88b23839` | ⚠️ Unaudited |
| YCRVSplitter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x05fc8174050f0a41deb7e562187911d45cd5e401` | ⚠️ Unaudited |
| ycUSDC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0597eaf957d896a5751aa35324bf24e1d9bc0f2c` | ⚠️ Unaudited |
| ycUSDT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x631d66f79191c86d7b7a7c0e2afae3ae943931a4` | ⚠️ Unaudited |
| yDAI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16de59092dae5ccf4a1e6439d611fd0653f0bd01` | ⚠️ Unaudited |
| yDAIv2Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x56ab71990783442f68fb25e0b466196c7ca6bd33` | ⚠️ Unaudited |
| yDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x61025859c349dfbe6ef0dfca202ef3e84ca05f83` | ⚠️ Unaudited |
| yDelegatedVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2088ba482f2097eb47896a2ec5f3925637b73d99` | ⚠️ Unaudited |
| yDiscount | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11e4757b9f88cf17f8a0f5ea7e6b4f40affeb958` | ⚠️ Unaudited |
| Yearn Builder Collective | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd6afd78c05f0d425f2b46359746dd44991dcb315` | ⚠️ Unaudited |
| Yearn Token Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x061ea85f0f2936d382cad1861d7bcefd986d79e1` | ⚠️ Unaudited |
| Yearn V3 Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04aebe2e4301cdf5e9c57b01ebdfe4ac4b48dd13` | ⚠️ Unaudited |
| Yearn Vault Factory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263256 | `0x310ac28acf5e514abdbff9ab25e21f1bfe22bcac` | ⚠️ Unaudited |
| Yearn4626Router | unknown | project_anchor | own_supporting | 1 | ethereum | unit-263479 | `0x1112dbcf805682e828606f74ab717abf4b4fd8de` | ⚠️ Unaudited |
| YearnAccumulator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b65438178cd4ef67b0177135de84fe7e3c30ec3` | ⚠️ Unaudited |
| YearnBoostedStaker | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263287 | `0x5d2ea33449a60a70e8fcdc5251fdd86a030fad91` | ⚠️ Unaudited |
| YearnDaiCompStratV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c6e9d7e5d69429100fcc8afb25ea980065e2773` | ⚠️ Unaudited |
| YearnFamily2021 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d45dab69f1309f1f55a7280b1f6a2699ec918e8` | ⚠️ Unaudited |
| YearnFeeRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb01419e74d8a2abb1bbad82925b19c36c191a701` | ⚠️ Unaudited |
| YearnGovernance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x22c582ff022cbca971b89c77088b5661b3d6beea` | ⚠️ Unaudited |
| YearnLiquidationKeep3r | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41303e87db5be5b1c7a341440d04ec6a11343eeb` | ⚠️ Unaudited |
| YearnOptionsV1Manager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a993e737cb5c807f73447e7e31403f753d598f0` | ⚠️ Unaudited |
| YearnPartnerTracker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd0f08e42a40569ff83d28aa783a5b6537462667c` | ⚠️ Unaudited |
| YearnRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0001fb050fe7312791bf6475b96569d83f695c9f` | ⚠️ Unaudited |
| YearnV1EarnKeep3r | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe7f4ab593aec81eca754da1b3b7ce0c42a13ec0c` | ⚠️ Unaudited |
| YearnV1EarnKeep3rV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf8106d779246612ff7a6a623ef7026a9ccfaf709` | ⚠️ Unaudited |
| YearnV2Oracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02f82f30c8d45373619ba39344304731785b704a` | ⚠️ Unaudited |
| YearnWethCreamStratV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x97785a81b3505ea9026b2affa709dfd0c9ef24f6` | ⚠️ Unaudited |
| yETH bootstrap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c80cf2bf3e9f7307c8321f272315762a7b74098` | ⚠️ Unaudited |
| yETH delegated staking contract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbb595031c02810b8f4e035017fb4502ae481e75c` | ⚠️ Unaudited |
| yETH deposit/withdrawal facility | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x95be6555f5c734f4e2169e746c533f40aca50be6` | ⚠️ Unaudited |
| yETH recovery claim | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9564850c7090b13794e6d1164b0826c0aeff3143` | ⚠️ Unaudited |
| yETH stake zap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50f052f17757e62872f055cdba2ef580cfd2db0e` | ⚠️ Unaudited |
| yETH staking contract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263281 | `0x583019ff0f430721ada9cfb4fac8f06ca104d0b4` | ⚠️ Unaudited |
| yETH strategy deposit/withdrawal facility | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x818a8e8240ac57949e28577b81e9eb9ecd7fc5e1` | ⚠️ Unaudited |
| yETH weighted stableswap pool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ca1bd1301191576bea9b9afcfd4649dd1ba6822` | ⚠️ Unaudited |
| YFI Buyback Auction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4349ed200029e6cf38f1455b9da88981f1806df3` | ⚠️ Unaudited |
| YFI matching | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x572b0675b0a815d1970c1310fe4aa8884feaaacc` | ⚠️ Unaudited |
| yInsure | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x181aea6936b407514ebfc0754a37704eb8d98f91` | ⚠️ Unaudited |
| yInsureView | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d2738fa41e83c5b5633f466f9aa11dae098340b` | ⚠️ Unaudited |
| YLiquidMarket | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28b47dbbc7af3482e900f2ed4885490deaea001f` | ⚠️ Unaudited |
| YLiquidMarketAprOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x76a56db217bc1fee1c4098a716f1b229671f1075` | ⚠️ Unaudited |
| YLiquidRateModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x54f1c4a118c75e5626f353dd3dbb4f6a9f7ac258` | ⚠️ Unaudited |
| YLocker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb5ebcc79fb618bada1a537d06af93717ac307d31` | ⚠️ Unaudited |
| YlockerDrops | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a8bda95dd5404de1c56859d6b8b5d7ae7a0215c` | ⚠️ Unaudited |
| YLockerProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa8c992f43b067f92ce866f216897fae54bab53d9` | ⚠️ Unaudited |
| yLQTYBooster | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c62d08dafbd7c7dbd85c34276064cf35ac18305` | ⚠️ Unaudited |
| yPRISMA | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0618a9f121ee4b15ba6478a4bcab0c5fbac9f508` | ⚠️ Unaudited |
| yPRISMA Airdrop Minter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa7038b413e7a4e359e0019ab4ff7b0e5315d86c7` | ⚠️ Unaudited |
| yPRISMA Boost Minter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x147be71ab3c998f2d03106de56eeb5042aa7e224` | ⚠️ Unaudited |
| yPRISMA Boost Minter V2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3bf2be603d439e3b5aa7ceddeea99c017ef166d1` | ⚠️ Unaudited |
| yPRISMA Forwarder Callback Minter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d05654f333eea534fc5d7b873c9b8bf35b0550f` | ⚠️ Unaudited |
| yPRISMA Legacy Minter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04ecfdb67b00fd70007570342887390ebf934c28` | ⚠️ Unaudited |
| YPrismaFeeDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d385beeb7b325f4a5c0a9507fd8a1071b232e4c` | ⚠️ Unaudited |
| YPrismaFeeReceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x76df88aa8711822472cb40ed8c972a461a20ecdc` | ⚠️ Unaudited |
| YPrismaForwarderCallbackMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x39574917361c4a371471e8527b36305eab0cf116` | ⚠️ Unaudited |
| YPrismaForwarderCallbackMinterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5e0c38f5d10ac99d31d0b8badf8a7977da4d0bcd` | ⚠️ Unaudited |
| YRegistry | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263263 | `0x3ee41c098f9666ed2ea246f4d2558010e59d63a0` | ⚠️ Unaudited |
| ySUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x36324b8168f960a12a8fd01406c9c78143d41380` | ⚠️ Unaudited |
| yTokenProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d5ad987b743eb624662fe5c62b8f6015554203a` | ⚠️ Unaudited |
| yTokenRebalance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x19b6424c58afcee6d0cb954d4b8d44b9b5e9cc09` | ⚠️ Unaudited |
| yTUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x73a052500105205d34daf004eab301916da8190f` | ⚠️ Unaudited |
| YUnsafeOracleV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd1f5aee3f025d2f4e42dd74dec17d5faa4707cbc` | ⚠️ Unaudited |
| yUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x12c0681dca0deb095f2f192c3ab64bf320af3aff` | ⚠️ Unaudited |
| yUSDC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x26ea744e5b887e5205727f55dfbe8685e3b21951` | ⚠️ Unaudited |
| yUSDT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3118eec34240620ffd044dfa3aaa0a0f78b9aade` | ⚠️ Unaudited |
| yVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0fcda6f268d0c09cdfffe6bceac5233ac2367889` | ⚠️ Unaudited |
| yVaultCheck | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1bbe0f9af0cf852f9ff14637da2f0bc477a6d1ad` | ⚠️ Unaudited |
| yVaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x044deaa1e5a8593adcead599e8d66fb5d3f677b5` | ⚠️ Unaudited |
| YVEmpire | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb8d98f9e42a15b0eb35315f737bdfda1a8d2eaa` | ⚠️ Unaudited |
| yWBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04aa51bbcb46541455ccf1b8bef2ebc5d3787ec9` | ⚠️ Unaudited |
| yWrappedVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x881b06da56bb5675c54e4ed311c21e54c5025298` | ⚠️ Unaudited |
| Zap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1104215963474a0fa0ac09f4e212ef7282f2a0bc` | ⚠️ Unaudited |
| ZapSteth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x15e5405b90abba31f29c618f9dc8d65e95257660` | ⚠️ Unaudited |
| ZapYvecrv | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2777938e0a1c12bce97c9cc9b36e737c08519a2c` | ⚠️ Unaudited |
| ZapYvecrvSusd | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x85db618d507909570299d3e3cffd0fc4d4f97fef` | ⚠️ Unaudited |
| ZapYvWETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5a0bade607eaca65a0fe6d1437e0e3ec2144d540` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1430)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00e5c0774a5f065c285068170b20393925c84bf3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x011a014d5e8eb4771e575bb1000318d509230afa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x014872728e7d8b1c6781f96ecfbd262ea4d2e1a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x018a82a5bd6e0a4ae8c5cf54527775d17d9ff5ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01ae37a333d842428c668d6cc7130e552acab2b1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-263229 | `0x01d7f32b6e463c96c00575fa97b8224326c6a6b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01da76dea59703578040012357b81ffe62015c2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04be8ea0c82ad864a01f977e07692afca8984766` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0509fb20a90d5e3434912311a6f77b81b06457ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x054b7ed3f45714d3091e82aad64a1588dc4096ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x05ff871415aa1a7d864c03c4c10209ad34af6ca0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x06091717521c2002f2859c75f53987eaf1e5aa2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0628f1efb9e9b6843c26b917c3f0c90ab6a4801f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x073253e5c01f43654064d105f55a86ca9140dd38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07dbc20b84ff63f3cc542f6a22e5a71cba5670a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07ed10d90018d99fafc2252f870248a3fdf82d32` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x081fe64df6dc6fc70043aedf3713a3ce6f190a21` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263232 | `0x0844c227b892be5d7c837000c096f64bfc316c2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x086763018a5feae99195af3b5eee54443fabda03` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x086775effde344594a246285b4e1cf2c6d0524bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x08bdc770fe79d560566ffd7e97beccb3b230c7a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0967afe627c732d152e3dfcadd6f9dbfecde18c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09ac624dc84c8a0ad8494c2311c4f05aaddf3854` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09bdcce2593f0bef0991188c25fb744897b6572d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09ca0ae3e79b5b594c55d2fd055703ab64d23067` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09db988a691dc2ed8afd69884975da45f6c7b472` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09fa1021d05a89466f7c8808e282bd09cf4487bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a7d7cf778ca3b0aa83136c228c1d8805861b20f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0abe26c89b0ae71868f96076bae1b15ae3f62f72` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b291754f2babad640993e2c6a3b27fb09a21a05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b471a71c3f6d4aadc7eb20aab7d730ae385e150` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b4722779a0ed7d79101c0d251987e76d4151ffb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c285a680f23883b9fa23a138b49f41eb25d5076` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c5bf19618a8fcddb132d82bc6c5ea736a1beaed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ca0f068edad122f09a39f99e7e89e705d6f6ace` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d3303ffaf107cd732396570bf07b2dbd79b619f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e821d855f4fc427200484ae42369b8a6611c2cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0efbe472bc2adfeaa6926cb0769eb838753bfc6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f14fc1dbe452a22d8452fdac2630cf5dadc164c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f6b01fb67058e48315d5f75ca1035f99d56245d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0fd4a973bc16b46818ab24784d899871e9c93cdc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10a3da2bb0fae4d591476fd97d6636fd172923a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10fdbd1e48ee2fd9336a482d746138ae19e649db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11988547b064cabf65c431c14ef1b7435084602e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11a2b400fc864a70d42675b85cee644458383bd9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x121c7eac32c950765e2435879ca342a8eb5d688e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1232b1601419b8b9874683f680e793343f8cbda6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1241b10e7ea55b22f5b2d007e8fecdf73dcff999` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1250c0bb1e9d5831b052826b3eedb05cf91cca69` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x125fc0b592db2a21fea8a5f6b2f86b1d6417bf66` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x12a9cc33a980daa74e00cc2d1a0e74c57a93d12c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x136d6f80bb3a853d151686bfed2c9309aea6ddec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x13c96b43d794a104fee1dae6e279cda38fa66e3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1482d78dbb1be13ffb22329f59211f85b1f07bdb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x148f64a2bed9c815edcd43754d3323283830070c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x14b0619e608c829c4cdd3b2122d1c9e5a4455376` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x14e45140ab7067d812ccbca506f032f384268a96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1533ba49dd0a5c8cd9e2e3666dd11128e70b2bcb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x154856e18316ac0db1ce6993c0a8249245bafcfc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x157320da263cd14750b6915afa2a24926ba145af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1676fc274b65966ed0c6438a26d34c6c92a5981c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17107f40d70f4470d20cb3f138a052cae8ebd4be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1739c0cc875e41ad5c8dd5dbf9c092c7b7d04986` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x180213a887b877d1a203e712b519fde5540b3d89` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1898b1e4fa7195cf0f9b1e127a4aa839ff4dd3c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x18c447b7ad755379b8800f1ef5165e8542946afd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x197070723ce0d3810a0e47f06e935c30a480d4fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x19940fa6926d7b1ee937b3987970d48820781fc3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x19d1666f543d42ef17f66e376944a22aea1a8e46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a0e851f5333081d6f1207a9113981a512f84d71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a122348b73b58ea39f822a89e6ec67950c2bbd0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a58f071902cd01d05e359582f57b72e00ca5a65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a9e503562ce800ea8e68e2cf0cfa0aec2edb509` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263239 | `0x1ab62413e0cf2ebeb73da7d40c70e7202ae14467` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b048ba60b02f36a7b48754f4edf7e1d9729ebc9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b0c2586df3daad42ac2fdcaa0f6b91623747556` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b3e95e8ecf7a7cab6c4de1b344f94865abd12d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b768a0bbafa5df5b5eca8af0fa6951d01271650` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1bcafa2c1b3a522e41baa60c2e318981ea8d1eb5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1be14811a3a06f6af4fa64310a636e1df04c1c21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c1dc63c9676e24ab02c897aea1e15ceb190da2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c60c3671fbf91246a4a4d9b55c00a5ca4e202a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c6a8a26625119f98af50555ccd60f266de7eebb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c8645bec146ae9a3489fc5821b69c9191577331` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1cb8f667de695f3d126534d9808567f299b90a86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d0986fb43985c88ffa9ad959cc24e6a087c7e35` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d305101261391627631cff9314fbb74cd8f4fb1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d8e3881cc063e593673625bbb9e5191be61ae3c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d919a8f5d9584cbc89430de6b5b0dcb26b9b858` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1df49891b9615cf5b12a96b007097b60d8b70a56` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e5fe7bad3672d0d0cc041b7154331ee461c3349` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e64c539ec4fc926297d3cd9a316ad006f78df1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1eee7ec51083228869b95b2ad2d7cc105e7b5539` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263244 | `0x1f6f16945e395593d8050d6cc33e4328a515b648` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1f9b4756b008106c806c7e64322d7ed3b72cb284` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ff8cdb51219a8838b52e9cac09b71e591bc998e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x200eb59687142ebfea594ebcad7da1485e9a2d66` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x202ac0a1c625ff468e8b4a54cab94b8ba11c0c21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x206cefd7820d907f9d2c1332349001f7294bf802` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x209a6919956c35201c1488addcd8dc5a1d5c3c53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x20eb2a369b71c29fc4afcddbbc1cab66ccfcb062` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x21011bc93d9e515b9511a817a1ed1d6d468f49fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2114d9a16da30fa5b59795e4f8c9ead19e40f0a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x215f34af6557a6598dbda9aa11cc556f5ae264b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x218e5bbc524479d5c593931692019bb026ff6117` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x224061756c150e5048a1e4a3e6e066db35037462` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x226f3738238932ba0db2319a8117d9555446102f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x228619cca194fbe3ebeb2f835ec1ea5080dafbb2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x22b243b96495c547598d9042b6f94b01c22b2e9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x23724d764d8b3d26852ba20d3bc2578093d2b022` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x242dedd558bc14148e8d939f275fc18d92789010` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x248f2ee9fb715f9eec4c16be5c98ec8ce1c815fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x249ef6db69df8fc3d72e428c2d16d7a37badb609` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24cbb1f603b10308311abac3532ba324bc5a49f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24e45b60e13b6f96e983bb01ea1326fa5169ccd5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2507f004127c5ba7c3bf3dd0c946c0ed08dffcb1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x250fb308199fe8c5220509c1bf83d21d60b7f74a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263250 | `0x254a93feff3beef9ca004e913bb5443754e8ab19` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25555933a8246ab67cbf907ce3d1949884e82b55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x258f7e1ee13ee4d3a62d79db715fa95c4620d9c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25e4b65445bf52a10d53ff5898b827e2068ead66` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25f00959441ec77f050d43396608fc3ade65d502` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2620eadc23e5c07ff06a2366b1c8cd2b48b4a47e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2689008dcda0c2b744b344b9e5a3d5a042c227da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x26a93129db68a1d45f6a263738b0b2bb996bca43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x26adfa81da92ce370c494c53d74b4dd3fc851a80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x26c28bdfe5207dc6a27a8dd886d1fbe068586a2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x26c325c8880ffe5a5744ff667ba7d8651b868710` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x26f01fe3be55361b0643bc9d5d60980e37a2770d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x27260eeb2a6c382a6e7d14b8991892790ca929bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x272aa89cf2dd4f3eb3c2db8889fe8163d2b4c489` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x272d6faa43d10e8cab9270a7430546c6bf5bbdda` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x27550b42f8b122ad28c3f19d41f830eb36b65662` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x277f763e2f87703386194e2a5b7e4f8ede49bb26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x27845fbb7ba58b152681558e44c4ed4c64e37016` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263253 | `0x27b5739e22ad9033bcbf192059122d163b60349d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2808f16b4dc5c36cc298b5dc5025db1920720a2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2839d336ea9cb02437847bccd6e520613da0c03f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28526bb33d7230e65e735db64296413731c5402e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28ce92490515c70943eddc6cc59e601749b0ab7b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263254 | `0x28da6de3e804bddf0ad237cfa6048f2930d0b4dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2939f9236574cd6658c18b35a8aaf6b7e9ccff07` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x29791bef310305d15b8fa4cd57953bd8db805305` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x297b704feda9383527c2ca834ffce29509e4cd3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x297d4da727fbc629252845e96538fc46167e453a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x299e254a8a165bbeb76d9d69305013329eea3a3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x29c1328a0db4fe122db27d9360bdc522b178197d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a18609eecaa500abf633387fb8e44deb7ab7400` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a385d5c87719efa017a9c8078091365a090dc30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a537fa9ffaea8c1a41d3c2b68a9cb791529366d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a76c6ad151af2edbe16755fc3bff67176f01071` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a7d59e327759acd5d11a8fb652bf4072d28ac04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a867fd776b83e1bd4e13c6611afd2f6af07ea6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a9faaad93bd1f95dfa7b469ad7d4cd8c387fb93` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ab765c2b4a4e197fbae769f86870f2310a04d61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b1c2d7c731dc2ee55382eca2894e667ff9ac9b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b6873c0da28b9e2c721a510d4ff5dc6a21d1b2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ba592f78db6436527729929aaf6c908497cb200` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c08b940eb59bc675dba87ea35e4fcd8a92ad4c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2cced4ffa804adbe1269cdfc22d7904471abde63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2cd3926f4512bb291486c2ef121160d2b0c99f62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ce947908c1055f175f1efced6612bd47184a8f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d1b8c783646e146312d317e550ef80ec1cb08c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d59a5875916e94490289856cc893bf9b44b15ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d5c9818bd5237092e769d8e004d77baaf708abe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d8cfc0d21f673f75c3e711e74d4fda8200401e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2db6c82ce72c8d7d770ba1b5f5ed0b6e075066d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2df12e6badfd7f64715c886d47b394e7596da6d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2f082a8f4a41fb81ac3cfb39cf41ca47378d692e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2f142fb2c86ca305de0944a914ff52890853b998` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2f4ad359d49164d2b794cc7d0324540d22accadb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2f50d538606fa9edd2b11e2446beb18c9d5846bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2fb936d7430fbeaee0e932d29ebdf90997ac9c56` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2fba208e1b2106d40daa472cb7ae0c6c7efc0224` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ff065e8b3920fe1c8dc1312aff424d7e9d16b14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30010039ea4a0c4fa1ac051e8af948239678353d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30190a3b52b5ab1daf70d46d72536f5171f22340` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3030277569a3537c50bb0cac87a00be98c4ed978` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3032d4818defcdbe424350102fd7e2a9c1e51463` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3073a6b6b043ae5ecffdf66172b5f6562405f1fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x308518f220d5c6fbef497ac7744d3d1194c7aff9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30eaacad508ba57b30edafa1ad6bd337b211a9de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30f254104a8a7b7779483eeef5560397a737f812` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263257 | `0x310f5db015e9d6e542fd41bd4542640790791e76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x31576ac682ee0a15c48c4bac24c567f27ca1b7cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x31ae4cbfafb007a908f348cf95ce4b535d5a8fa3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x31d06ffc7258942492afbbd8c71249441767d4c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3225e3c669b39c7c8b3e204a8614bb218c5e31bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x32b8c26d0439e1959cea6262cbabc12320b384c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x32fa16745e4519a9139daf3dba39d40c120c8ceb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3324fb5348fc003e92af664295358a3d2de5d664` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263258 | `0x33333333d5efb92f19a5f94a43456b3cec2797ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x333e204e54dea65d3f4a99917baba68af723735d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3357ab9c809c25379e44deb463613e8e17113050` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x338286c0bc081891a4bda39c7667ae150bf5d206` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x339dc96a37dba86008126b3391db77af93cc0bd9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x33e6bc3d188e54437aa6dd601dee88ca5d09ca17` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3425a0503c056b81f9fd92a122ebef8e0675f3af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3446c5d7355c64be3ec6d6b9fda7e0f7454a6ba3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x348082aa6ee298158a3e54b99a77dd8f0b884b94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x34fe2a45d8df28459d7705f37ed13d7ae4382009` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3524809620b315403f91a1fb40416036f4853823` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3541d2d1e098bba7b61e61fdc9aee15d4a6fbd51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x354ed194390c431250b639ab5cba178d587612fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3623387773010d9214b10c551d6e7fc375d31f58` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x36e36d5d588d480a15a40c7668be52d36eb206a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x370a449febb9411c95bf897021377fe0b7d100c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x371cfae6dcd88a8934f1add1219bff485568b9a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x371fb61d214a2fcaca1eace2bc6a9f8a78a331df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x37ed18f70426738af9db8338c7935093cfe781cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x380cd5b8a8d4e3e0aa655aa4bd1e991a6a8b22a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x38cdfc06b606ed7525344f87cd4d2897ecb3c1e5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263260 | `0x38e3d865e34f7367a69f096c80a4fc329db38bf4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x38f27c03d6609a86ff7716ad03038881320be4ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x391ed19b2b9870cc66e52c02f8c1e0fa1aa0921f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3986425b96f11972d31c78ff340908832c5c0043` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x39b56ac65fe9f20a31efa47b4e5a638a75dea193` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x39c0aec5738ed939876245224afc7e09c8480a52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x39d46629a897ba85fb575bcf9d890dcccd5064bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3a4b89e371e9f1209fbffb4914087d0760eeafa1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3a6f2c35c631cc5639247aa28946833e5a96490b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3a87a97207ac535b2d08abc99afb31a575263f80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ab4db763cb9ea210a8a1b7d6d23b99e069fe7c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3abce8f1db258fbc64827b0926e14a0f90525cf7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ba3c0e8a9e5f4a01ce8e086b3d8e8a603a2129e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3bbe4b1a01a59b559ca06b2a9fd1323e00df4632` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c6c553a95910f9fc81c98784736bd628636d296` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c9f5385c288ce438ed55620938a4b967c080101` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3cbda6b3e0d673f37a08385e0ae8082de1acd716` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ce7490f740f1315dee84a2836c1fd42e0282ca3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3cfff17e0840f6abdf78c5afdb277113e07a1544` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d27863670089841bbfd98b5440582b5958ecd55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d5bc3c8d13dcb8bf317092d84783c2697ae9258` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3dc56d46f0bd13655efb29594a2e44534c453bf9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3dd58b427dbaba8ef08497f1427087670da0f59f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3de7b5bbdabb47e662aa8cc72002948d1e63ef10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3dfaf575c08533baf0d32a0e50d565c11a1fbfc7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e6b4795bd173dd5c700ca8cfd3f247bfcdc9d43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e70b2a6a13e9822c21eecb357d3bbc663e4f066` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e8c72655e48591d93e6dfda16823db0ff23d859` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ea03249b4d68be92a8eda027c5ac12e6e419bee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ebeaca272ce4f60e800f6c5ee678f50d2882fd4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f2d3e8aa723e7169574837dfa5d658850b02ac4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f3f0776d411eb97cfa4e3eb25f33c01ca4e7ca8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f3f7b760df98a72d8e5ba79cd79d446167c1972` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f4772cd3ccb505cc958ceee4664447184712706` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f64bb4c334488765a82a697cb210da9bb876b67` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4031afd3b0f71bace9181e554a9e680ee4abe7df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x40a7c4fde347e092a4f3a8385276834d98c71d63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x40b04b3ed9845b8be200aa2d9c3edc2be0a5f01f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4112a717edd051f77d834a6703a1ef5e3d73387f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4161fe299a38a788077606f335605e1b920037a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41b9180d6c75b6cc6d5e799ec66ab35bafad45e1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263265 | `0x41b994c192183793bb9cc35baab8bd9c6885c6bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41c84c0e2ee0b740cf0d31f63f3b6f627dc6b393` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41df5d28c7e801c4df0ab33421e2ed6ce52d2567` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41ed19012d6a571543d64581acb7fb84061de819` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41f5a7009e6c406be3ade0552a2804926d975705` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41fbad7d627fcf6ff8dd7af72884ce7fcbada179` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41fd0de68edf4ecd56470fb018cb6bfabae77a6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4202d97e00b9189936edf37f8d01cff88bdd81d4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263266 | `0x4218e20db87023049fc582aaa4bd47a3611a20ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4250a6d3bd57455d7c6821eecb6206f507576cd2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x42c9bb28e8f6540c7a2b30196f35047428eb5dcd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4328f034716977cc700dca74a1c101f634de050a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4384796daf8c46f87d559b9ae588c79ccd2ce560` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x43a8ece49718e22d21077000768aff91849bceff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x43bf8dd4edbe9d0d34415c979bae787bc534846f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x43f820a3851b35d11dde8553ee95facad8274f9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4424d0c829316dcec5701a4e2b30b368721e0a10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x442e36e12b9d657f587e8ab91656258352883e85` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263269 | `0x444045c5c13c246e117ed36437303cac8e250ab0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4482bd395d78d36af31a1d58fe86958707861cf5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x449b0686a1fc95d6b7ae373aa94ec4b0bd820c71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x44a420700aac02c1f10b16152f93acb3aadff193` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x44a9a54c3cd53161fd6c8d5bf3d1aa627f5a0b93` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x44ee8baeccadd975b3346c551351fa2853829d45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x44fbebd2f576670a6c33f6fc0b00aa8c5753b322` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-263270 | `0x453d92c7d4263201c69aacfaf589ed14202d83a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x45406ba53bb84cd32a58e7098a2d4d1b11b107f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x458e62d7aa9de3dbec10605ffe21e9c1c5e0da9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x460612682ce6ed51c1a9813f6938671d9d135d6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x460ea730d204c822ce709f00a8e5959921715adc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4694507ca1023194ea3ca4428f99eded7ab2b919` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263271 | `0x46b38522422d597ddbaa2d6e98d6c9b397028d5b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x46e3769eb5446ee6e7d64138b524258a0cde6429` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x46e7482516bd316c8a4c92a67209796ae8db0e49` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263272 | `0x4707c855323545223fa2ba4150a83950f6f53b6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x470e0e048f85cfd72eef325895e02c8d297e7435` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4712d2cb599ffb0efb1cdc4d386e60a59e3840f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x471a7a8e3144b5b0a3dc5255bce5b6559eee32d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4730976d4bdad790502752cac4f58edd70321cae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4761bcf7774ca87a9e265477dfed149f06844d52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x476c56cbbc3643d675cf656fe24349d47af0471f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x47b291795cf99e8798c2053d2cb901d2e3e5c1bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x47b3262c96bb55a8d2e4f8e3fed29d2eab6db6e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x480082616815f9cc82600d6e6d1c3e41f3cb6986` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4862e0b5ee92f34f061cc63395e83b7b0b3d0cf9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x48759f220ed983db51fa7a8c0d2aab8f3ce4166a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x48e66d65006007ef62b50735d070fc30d0242a93` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x49651bd58bbbb145b90891c33ea240fff29b1be6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x499099832153c7d3cd88f9b8b5d6ca59fac505c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x49d72e3973900a195a155a46441f0c08179fdb64` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a90f27b877a6dd41440b4c52ad6959538a46ae3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4aa560d1eb33a55bd6210364fa588bda132970a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ac195fcc985e084e05dd84a4534bfa708a29e7c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4b147984b0314260fda782a7f508749df4e5a083` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4b7782fd52143058e4495686edf8917021d1c346` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4b7dba23bea9d1a2d652373bcd1b78b0e9e0188a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4baa77013ccd6705ab0522853cb0e9d453579dd4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4bcd180516dfb6d554e63bb601a7594e96e9be87` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c1317326fd8efdebdbe5e1cd052010d97723bd6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c3cd8d1830054d3f2a1d9ca345ad4199d5de821` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c612ac56463d90379196eb3ea55a642a8140373` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4d069f267daab537c4ff135556f711c0a6538496` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4d151d9d9dcee0756aa2f151617401b35db854cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4d460a768c546ef0b15cee7b482dd373cd6eead1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4d7d4485fd600c61d840ccbec328bfd76a050f87` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4dca6ffb997659c24add18aac8a6989436694d91` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4de1deab90f53a263eaed293a0e7e13df2c00b5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e322aeaf355dff8fb9fd5d18f3d87667e8f8316` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e3a36a633f63aee0ab57b5054ec78867cb3c0b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4eca120f0e61b7eea65cfc6b77b092c2d20719d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ee15f44c6f0d8d1136c83efd2e8e4ac768954c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f08008ef178929e3866f1aeea75beaa8b909b9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f12c9dabb5319a252463e6028ca833f1164d045` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f624dcf0cbfd73fc800b99965f756c3fb3a3cea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f85a4b398b27935ba3c8aa79b0dc5ea52d12ed0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4fe11bc316b6d7a345493127fbe298b95adaad85` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263273 | `0x50397cab18446761f05883338111ae0ed8213da3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5058e5c04563c41d441bb0025fea1a23cfe75962` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50697a3a8698e36549db3e1e46ef136149224790` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263274 | `0x50c1a2ea0a861a967d9d0ffe2ae4012c2e053804` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50c4d64536849c874108d7ffd7a5488840648d0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50fe04d1124ee861bb274293d8c4bd628ff2645f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x51297aecbda0048f97acd379aa62cca28fd5ff8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x512adcb1e162bf447919d46ae5b42d9331e9df5d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x51f48b638f82e8765f7a26373a2cb4ccb10c07af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x521a06c080ff87cf8d3b47cfa46ca6ecb059e88d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5232915b9641ee1ccc713767cd17481dc55ae9a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x523854223c224e376d21dae73f054943c0576816` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x523effc8bfefc2948211a05a905f761cba5e8e9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x524a05c611248cc54140978d9dab7245cff257cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x525443603d6d0955142fac8820b64ae701f40065` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5260dc834480ce3db1703b91893352b8d8801d65` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263276 | `0x52aa16860e0d42b6a7b6ecc15688472eb20135c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x52e5a854cee6f22c8dae2807bb7b3e6ac8bd46e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x537c7409ccd2c78f14b2693a54c8c59f679f5d8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x541ff6590f7f94587d4480a94acd96b39b3f412b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5435ca9b6d9468a6e0404a4819d39ebbf036db1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x54704b1b81b66634fb48979a04cef969fcef0dde` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5492ab97826edd9794356bf502a11ce2c7be77d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x54cf08e9e2d17e7684f82f9383f16032a4d8ce27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5503de0679c6d363c80dc45082986d51380e5564` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x554e4454bc262faf05e77a02cd11ad04b15c12c5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263277 | `0x5577edcb8a856582297cdbbb07055e6a6e38eb5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x55d81605de630fd586baece635237f9776978341` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x55ec3771376b6e1e4ca88d0eea5e42a448f51c7f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x55f16578e12bd048931abc43d9dbe56c76632de6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x566ff03cfdf9bdcda9d7a2d99180ddbd5e3b06d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x56c72aa6646efd3a197cca206c603dec8f64568c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5756a766ba347d055190d3f71b46cf1b4d3ba368` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x575ccd8e2d300e2377b43478339e364000318e2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x581a6722512702d33b48ae6e595518acee509216` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x58241c11abd0bdb1448ef9f38f8aa7fda21a3a44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x58da9c9fc3eb30abbcbbab5ddabb1e6e2ef3d2ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x59089279987dd76fc65bf94cb40e186b96e03cb3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263283 | `0x5943f7090282eb66575662eadf7c60a717a7ce4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5a0fea914e71ef7313ed27dd560967e0bdc7fb55` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263284 | `0x5a74cb32d36f2f517db6f7b0a0591e09b22cde69` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263285 | `0x5a7cbc89d543399743d7c4b4a21110b19c6208ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5a9d49679319fcf3acfe5559602dbf31a221bad6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5aa86e9558f7701a90f343d90e0bc55aeb0046df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5adf559f5d24aacbe4fa3a3a4f44fdc7431e6b52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ae8b1f85b184fe0f8afef7d07e71190adb3a63f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b0398d2a7eeb524c678bbe9f9a4c4104e864d38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b13273f3b584fe6864a2fde89e8f90b7e790d1c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b4f3be554a88bd0f8d8769b9260be865ba03b4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b60f5f14778fc5769b80046bd8b6572e91e6b3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b62f24581ea4bc6d6c5c101dd2ae7233e422884` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5c15ced59fd964fcfff2d2f376b4a40b6d1fce1c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5c291bc83d15f71fb37805878161718ea4b6aee9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5c454338173b399bb9cd5c0259d0d242a71a1464` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5c59f38188dad5808e521ca16e365bd7d7484323` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5c89a2502fe265e23449beb86c28817555a76e89` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5cc3ba33eda62de9fe2f27334b84f3072ca37f14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d103fc2e9bc2abb34b8dc7f575fc5d5f8ee4d32` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d29949f8e64fa2f9cb2b1fa190244b9413bc3ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d3386b5f893774bd2d6c5a1ede2a88f46639fa3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d62020528f76bfdbd2b0ee2caa1f4c3cf2117c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5e74abe9077c52151ed2397f7fcc1fdf1cfabd45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ea84fa3a8122d074910acf0c47bfe5acf2ddf10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ecad8a75216cea7dff978525b2d523a251eea92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ef4c9384d9d7c39cbc12b62e82900042f1205b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5f3b5dfeb7b28cdbd7faba78963ee202a494e2a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5f41264e24b6320cb94b598040ab18ed5dabeb0b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x60043a545e22424e73a2debb98f8cd4361fe3da0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x60272833edd3f340f6436a8aaa83290c61524c44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6031ef0a2d380423932e043d8187b52e3f82c84e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x605e1a35d6c5532479d2be0eb8be6fda1f2652da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x607052dcc94b2482ddc349ec39839deb43bc7a5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x60d95f4e3917eb88e1bbfa2bbc6f2407a55dbec3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6114539f82009bc203f51869046fa7db24eef4a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6130e6cd924a40b24703407f246966d7435d4998` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x61542f1086ddada25661ca0a7f2f801d76499136` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6164217caa4ff58fb722d726391875ac0c5fb541` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x61e9a6ab4923f5046c0fb80e5c9f98afc9995fad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x620bd1e1d1d845c8904ac03f6cd6b87706b7596b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x62253f7c165e34fd7343b37839bf5186a9e21d4a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263289 | `0x622fa41799406b120f9a40da843d358b7b2cfee3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x62349c8510de543e0bf77df87f548a1d5f642e7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x62b792654eafffbbc483d69fa05f8ca4d0914af2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x62e77710c63130ad2f4156dff8cb0ff591c23632` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6341c289b2e0795a04223df04b53a77970958723` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6392e8fa0588cb2dcb7af557fdc9d10fde48a325` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x63a028963907f5a0c1ceb7e47100f52dfc611117` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6411b601764db2e6305db84461d880618c480e9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x647a539282e8456a64dfe28923b7999b66091488` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x64b2a32f030d9210e51ed8884c0d58b89137ca81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x64caa08249041c36eba725f72bcba5fe48c64961` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x64cfd2ceff47a5fc36371b18ee50ca389fe20773` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x64e3c23bfc40722d3b649844055f1d51c1ac041d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x653f72f57418132136609cd638d0603990823cae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x65883978ada0e707c3b2be2a6825b1c4bdf76a90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x65bc20147e2ca6f3bf0819c38e519f8792043b36` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x662fbf2c1e4b04342eeba6371ec1c7420042b86f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x666687230ddc347914b0115c80b01574431c27b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x669965a15e5d97690529ff20944a4eaf092fc2e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x66e4d1b1456f5c96bc51d96ca9fe2b4577630976` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x66fb6cf0af2cb8f967f2439ea855387cb431fed8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x672473908587b10e65dab177dbaeadcbb30bf40b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x677d438f3eda16ab3e5a78f5566f70e7d25878a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x678dce2a5020ebaf5bda91c7ed33e9d30f2cbd5b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x679fcb9b33fc4ae10ff4f96caef49c1ae3f8fa67` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x67a4a25ef0ab55f7344845473c263d5128ba9a22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x67af89fd1a20302798f07eca2c5a58fc17d155b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x67b5a98e0d828da1dc9c7d679bb618d5010bbee2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6806d62aadf2ee97cd4bce46bf5fcd89766ef246` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x684484eeaea554f64069404061bcdbe499114691` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x68b156ebce918e1c7e5f42b5ec6dc0eafe0b8667` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6947aa05a900153ef4cc28d893484a4e7ad7ec77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6951af6f7415f15f8ad479669c5800546c0c2f7a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263291 | `0x696d02db93291651ed510704c9b286841d506987` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x697256caa3ccafd62bb6d3aa1c7c5671786a5fd9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6996b52f7fa5e1d867110f32dc9aa9c4986f1d52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69fb7c45726cfe2badee8317005d3f94be838840` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6a316368eb092c856ca368983488061caabe6e0d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6a6b94a78cba0f55bc4d41b37f2229427800b4da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6a6fd01c92f0390670cce399b532017cdb2b930f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ada0e02763ede6cb428caebc5f5aa3080fda83c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6adb68d8c15954ad673d8f129857b34dc2f08bf2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b3aa4bc25e28301c5c050959cdc5294d353c561` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b6003d4bc320ed25e8e2be49600ec1006676239` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b96c414ce762578c3e7930da9114cffc88704cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ba0c66c48641e220cf78177c144323b3838d375` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6bd32a677bf7d4d0470739271caf4d461a43b99c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c3ecd3d10f792a3f320ff940cd14e634960f961` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c842746f21ca34542edc6895dffc8d4e7d2bc1c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6cc6af51091e29c288d6fb44b7e1c73e946555c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6cd8cecbc26f30b26557b08a4565c7a208a83f3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d1b9e01af17dd08d6dec08e210dfd5984ff1c20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d2ba9cc8a72b6297e98dd7863ffbcdd3768e513` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d325ada9dd02336df15c11ee8cf3cec64d46b12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d419c6f391596f219aa97ea47b9564fa85c5b40` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d74f589254e83dc12a11b4fa0e9fa9ec43f30c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6e4ae385d1f68e4d4feb455e0526c08c77464ed6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6e8f6d1da6232d5e40b0b8758a0145d6c5123eb7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263292 | `0x6e9455d109202b426169f0d8f01a3332dae160f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6e98fb2bb7fb4c923c2484b9d0e627a535120c56` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ea8eab7d77f062989ab65f2bc3394e2be68505b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6f30f55d6c8dbca8f010dadb03a8366e6ba7e548` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6f3c2647f0c0fbccbaf74c400d886033f8c6d2e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6f7ce3697276f0066dde4010b3fcdd2d65d27475` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6f7f54b395d468b89896e7073186130226ea7299` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6f8613a9885e45f3f41145e86961fee9a074c588` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ff706db5cd55e6a86e2aaa3c72131db7dda2aef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70266e9b23dadead1210ff58b6723a6ca0cf18ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70272162c17c57a0f4ef54a1d0d657405ee3cb43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70339079ac505bbe46fcf5365c87809585e69112` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x705350c4bcd35c9441419ddd5d2f097d7a55410f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70693acb9befea3ad557633d4ce235148ef4529b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70b66e20766b775b2e9ce5b718bbd285af59b7e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x71154157be09e94cf993ba6c686d222ba738aa7f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7130570bcefcedbe9d15b5b11a33006156460f8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x71690ad5d2c3fb055086ac0a12f44160d810f0a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7191ba8b225c9c5ca1968a53cd644875eecc211f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x71a808fd21171d992ebc17678e8ae139079922d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x71b432ff6d75d0ff3c90585deb8c8255d565b560` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263294 | `0x71c3223d6f836f84caa7ab5a68aab6ece21a9f3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x71cefcd324b732d4e058afacba040d908c441847` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x71fac447506a1fa1fec948b33a87812c7973a761` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x72447fc8211bb77a22c2924f15f676ddb9d5df6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x727b65a23adb8069d7c247e3b40c581a190a5cd0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x72dbf592fb7add76911450058324d6e512db74a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x73f6cba38922960b7092175c0add22ab8d0e81fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x742f5ea935c0fbf312a594f2a663c966107ed0d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x744cd74474b7494d36a5e7a43b44396f8bcf4288` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x74be25172f8afff92ca6e27418d601d74acc2525` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7589c9e17bcfce1ccaa1f921196fda177f0207fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x75c9dc99d05c36c1ab19a9c4e58e0e97c76431ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x766175eac1a99c969ddd1ebdbe7e270d508d8fff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x766b660f3f3d5f97831fdf2f873235bbe100cb30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x76b34af6394f3b98e21eb9b16c89434caa063828` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x76eb2fe28b36b3ee97f3adae0c69606eedb2a37c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263296 | `0x770d0d1fb036483ed4abb6d53c1c88fb277d812f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x771ba228bac1e97bd888e4ab15eec61a7e510fe0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7736ffb07104c0c400bb0cc9a7c228452a732992` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x774a55c3eeb79929fd445ae97191228ab39c4d0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x776ded3273440f1481d07b6ce916b5d5fac170dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x77b7cd137dd9d94e7056f78308d7f65d2ce68910` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x77cefa5e44df25372e0cbad136e650d31627cba6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x77ff318a33cf832671d2f9e0393cd1f854fe8111` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7808819d10b5def13a3e88811be3ada861445778` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x780f75ad0b02afeb6039672e6a6cede7447a8b45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x78962e442181bc1178fbdd1f0af3fa5467892963` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263298 | `0x78ada385b15d89a9b845d2cac0698663f0c69e3c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x78edcb307ac1d1f8f5fd070b377a6e69c8dcfc34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x78edd3fcb7ca798d572260e59dd972379e80dc19` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7930275241970149be9bf22ce96320eb4ccb16bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x79694f02117ce4bd8073c5c2b05470b34f042b78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x796ede20cf73ecf95fafef1a703c06a2955d4866` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x79746fc3275e2ad36597ae0a721de01da6878a58` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x79757e7f37b84993345693f298155440735a86c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x797aab1ce7c01eb727ab980762ba88e7133d2157` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x79e0a075ebf34224e704e1041098aea66b651f27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a3612b398b0ea02df65976b003f839ce2f8ceed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a6e1fdfccf1a3eb73c3fc090d596211963b5ebe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a79420b2b7ea9ddc9a8e3ca80a980ed3d42acf1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a99923aa2efa71178bb11294349ec1f6b23a814` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7aa375f1fe5e04e18a6b02b4294cfd57ca9f53ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7aaa323d7e398be4128c7042d197a2545f0f1fea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7aaa82343434f31de5cf0314c22bfa0084ce7f76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ac5922776034132d9ff5c7889d612d98e052cf2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ae064bf304b010f8e5a9c8e4cf6f3cde35849ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7b28163e7a3db17ef2dba02bcf7250a8dc505057` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7b66d1d70645d22a015a12438d42b2aefc255d28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7bc019ef7022194feba5f7ff99424a438f68fc21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7bd817f29fb2bc1cb98975527c366b9e94948bfc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c3297cfb4c4bbd5f44b450c0872e0ada5203112` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c429a498af1f3671824672a414e844da5592132` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c7563ae24a3558459607e5c781071c49d68b98d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c8132c9e07b57aa094b750bc36dcd7c6c1b5b3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ca5b0a2910b33e9759dc7ddb0413949071d7575` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263300 | `0x7cb5abeb0de8f6f46a27329b9ef54ce10e47f1e2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263301 | `0x7cf484d9d16ba26ab3bcdc8ec4a73ac50136d491` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d3a6d1085fe898965cbc0b47a5a652965438cac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d506f872760fa016554595cef4b17ee78ef9902` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d960f3313f3cb1bbb6bf67419d303597f3e2fa8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7dc3a74f0684fc026f9163c6d5c3c99fda2cf60a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ded4df8d8a663b8af5933058356b367b5de8f23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7df4ed9ba985231806caabb353c0e7797b62f602` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7e4383bd9d1920a10e9060b13ee70a18c5cb6659` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ea9c63e216d5565c3940a2b3d150e59c2907db3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7eb3ad9d680e0bcd6b0ab7e94a33b8208f5ffd96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ec260d3a12598cf6fb1cd4e7321a9cf6ca3fb9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ec77932a5816b432dfe2f94e25c51ea25746817` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f047e9d15b2a5937399f5f39e943a989d952aed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f5c5ce55d990d8ead1857fee90419cd6141b247` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7fba07c40ad1985f023e144e5732784ad6051591` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263303 | `0x7fd8af959b54a677a1d8f92265bd0714274c56a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7fe508ee30316e3261079e2c81f4451e0445103b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x80808dd123a1fd581c0e0f759a3ef870ae2a412f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x808e937a59d0264b0fcdb376ab1ebf5d47c25c2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x815faa0278dfa01c160ba26771cb2991ca580bce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x81874e067b5b2d7e5c33d92c258c334371b4978b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x81a1ff0fa66b14d526930cb36e610f555eb9cd5e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263304 | `0x81d93531720d86f0491dee7d03f30b3b5ac24e59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x81e346729723c4d15d0fb1c5679b9f2926ff13c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x82084ed9fd5a582aa2994c0f07f535735e85f318` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x821709930982734c46ad6be4463ff3416f7254bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x82292b8035873d7dd8a96767f6b3f885564aa919` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x823498fee1d55cbf0581e589c2eb242394239367` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8235c179e9e84688fbd8b12295efc26834dac211` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x825ba129b3ea1ddc265708fcbb9dd660fdd2ef73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8341f17660148ebc9a738e138db2b6b15f42b56f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8379baa817c5c5ab929b03ee8e3c48e45018ae41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x83b6211379c26e0ba8d01b9ecd4ee1ae915630aa` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-263305 | `0x83d95e0d5f402511db06817aff3f9ea88224b030` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x842a9d663c2fec3f27a52ea1419b07481032b27e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x846475a1b97ac57861813206749c1b0f592383ef` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263306 | `0x846e211e8ba920b353fb717631c015cf04061cc9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x84c94d739e075b3c7431bdb1a005f0412df828a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x850de8d7d65a7b7d5bc825ba29543f41b8e8afd2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x852dc31074d42beb1ee8fba7829cb5bd4d68aaf3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263307 | `0x855ffe28019106d089bc018df18838f8d241c402` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x85759961b116f1d36fd697855c57a6ae40793d9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8584b7ac8b1e4255c18784928fbf1c6fca40ca64` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x85d324bc55d1143b6a0f6310ce18a07dcf779f53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x86209b56baa17b7a950d71eb0d8f3b1d7ee5d21a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x867751f184c467b4d156f36b1858b2af1687d8bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x86988951ec019ba56155d26e67f11ec7ac780d9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x86aa49bf28d03b1a4abeb83872cfc13c89eb4bed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x86bbd9ac8b9b44c95ffc6baae58e25033b7548aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x86c2bb2407fc215c009d4f3df04067881c2e4fe9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x86f524bdba583b7becc2c48ecb5be366b4a788f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x870fd735604011c1186509179b57a6b5e295d8cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x871a0643e96e5014c4a5d84bab09a101bd702aac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x879b28502223c4f97fd38dead123cb7a0214486b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x87b117d94aeb8d18948b9b670327f0adb4921024` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x87f689e6e5d2414eb95f2d4db16c24d763c41ab6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8879dc9ef3e2376032f4b596fdb64617d0876f23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x88ac6a2a55ce6adb53a38e8be85e179a188dd7b1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263309 | `0x88de7d7f7b9597c86b8cd195374fbf602934f334` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x88e79e39a4f630be09efa4bf473388ab2636370d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x892b14321a4fcba80669ae30bd0cd99a7ecf6ac0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x89693f44dd69286e66f8f39987ef25e2a76c6d8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x89708588407d826501ebac271890e8f2d36cfb47` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8999f57d3bd0c1524800a9ffd4a097e7ba760faf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x89cc7cd1e959b65f3d1b4517b62ce3f24cf3803d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x89e42987c39f72e2ead95a8a5bc92114323d5828` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a139829ea71452bf39fd1cbeb0a1058885a2b58` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a2707e93c9cee3e46a97c2637546988ede4e088` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a8d05c8e098b56053c2fc3c8a10fc13225183e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b3ff1ed4f36c2c2be675afb13cc3aa5d73685a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b5035714cf838d21cb60e4b8936b72722d6ecd7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b86e0598616a8d4f1fdae8b59e55fb5bc33d0d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b950f43fcac4931d408f1fcda55c6cb6cbf3096` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8c1db64512a62a2e9528f4b54d8fbc924b99251c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8c2e50c1d5a4d3668c2cc86d8848970ace38f64d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8c37ed7ac3ba0e8cf3640d31fef6335af84306f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8c3b7a4320ba70f8239f83770c4015b5bc4e6f91` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8cc02f4f383a11b989708437dba6bb0628d7ee78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8cdb92e5a75afeb35bb33261125571500af121c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8cf8f500a7b7766fd169751877c8a226b1544c16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8dc551b4f5203b51b5366578f42060666d42ab5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8dc840cead11a46f59c65b1697698a2b60fa0789` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263310 | `0x8e2485942b399ea41f3c910c1bb8567128f79859` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e595470ed749b85c6f7669de83eae304c2ec68f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e5cbc6f470d064063341acef7c45172a3eef766` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8ebe34a4bfb38cfc3d586963c041ba039bb85083` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8ec370ea274748620f3f7aab026ccc31b474c4db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f2245d1051f3777e314ba6fdee1152774ce868c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8fc8bfd80d6a9f17fb98a373023d72531792b431` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8fcb0ca2e16cab45f8f0c6304d2a022b6dcda3f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x90068d8c21cb632cc14cf1ddc8427c1a71ad5880` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x903560b1cce601794c584f58898da8a8b789fc5d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9040bbd448e68b11f57294ee8a269ad273b40a99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x90561de0d218385d3211373479a0439f32911e07` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x906a5fb545d177ba441a57b3a24eaeda555d29e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9079dc0140c43081696f353ccf71af6f791c9ac0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x90b280489d773a4e08c87107ad322148d02feb59` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263311 | `0x90c1f9220d90d3966fbee24045edd73e1d588ad5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x90cfbe0fcccfbd6f895e3b065aa45c56b635903b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x90e5a75b5ef2a88e7dd79ca91fd9119cf1dbc1f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x90e6f03e7f64dcba91a649c3aa170517d9efca46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x910e6e8c29e1e02602863535295a531249965294` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x91b47fc5d4faa4da96343a8788967a3fdb708545` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x91f17c4c2c9e5180347916fdfcee31491727f8d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x925acc1418949549ea2e4242b74c78ba9ba00ee6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x92927653d301eea4cf4b79e997d5914a347cb580` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x92b767185fb3b04f881e3ac8e5b0662a027a1d9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x92ba0a9217e5ea1068aae28a3eb87909767912a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9327e2fdc57c7d70782f29ab46f6385afaf4503c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x93283184650f4d3b4253abd00978176732118428` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x937fd1c92c06dec5deadae1464ebd797c2509823` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x93eb25e380229bfed6ab4bf843e5f670c12785e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x945731e43c341cf67a14edc14aafe9342cfafdc9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x94c4e4b9c808c285f08c8094c3e12a4d32f21089` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x950027632fbd6adadfe82644bfb64647642b6c09` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9517593d84324e9669174976a98b19c3d2dd9bf9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263317 | `0x957e3ae7983155a9f9e08da555b8084448be26e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x960c5674eb0cc91d70a79628370f33b8db3c593c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x970385bb761126dc7783facf9a6cf39afd9c6144` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263318 | `0x97983236be88107cc8998733ef73d8d969c52e37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x979843b8eea56e0bea971445200e0ec3398cdb87` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263319 | `0x97a597cbca514afcc29cd300f04f98d9dbaa3624` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x984550ce9e58a8f76184e1b41dd08fbf7b6d2762` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x986b4aff588a109c09b50a03f42e4110e29d353f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x98cd4588b97899fdecf6bf69e83811cb5da62876` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x98e329eb5aae2125af273102f3440de19094b77c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x98e86ed5b0e48734430bfbe92101156c75418cad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x990f82875664bc6eb0e1e8e825ec0f91757e8047` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x991c79db98da75ead9f47286b64f63b878c52354` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x992122bc6f7fed14edc4a564d57039452c63cc88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9925f2f869048934e62720120798e7cce7e777bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x997a498e72d4225f0d78540b6ffabb6ca869edc9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x99cce9e05699f1a1cb3e0e8b11a3abf1592eeb23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9a05826148df369b205156336a3d3fc5ac7be64a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9a5135157a74b753d11197a821e7f199f5b2fed0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9a975fe93cff8b0387b958adb9082b0ed0659ad2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9aa5f4416be7a2c21c4bf10a6d5dee6a484b4e7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9ac75fc3cb8a631f4ecf4c16a89ee95d847b64a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9ae50bd64e45fd87dd05c768ff314b8fe246b3ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9b142c2cdab89941e9dcd0b6c1cf6dea378a8d7c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9b4048d7f0d75937ae07d205a80b2ab9192e4a06` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9b7f980e5b37e46d0dc5d0f1a9a6e452809e56c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9b80de2362570b7ba41f6bd89ca85691a296f796` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9b8b9f6146b29cc32208f42b995e70f0eb2807f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9baf8a5236d44ac410c0186fe39178d5aad0bb87` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9be19ee7bc4099d62737a7255f5c227fbcd6db93` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c2116312226c8056f940a52f502ed0e1ff7275a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c99dffc1de1aff7e7c1f36fcdd49063a281e18c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c9d06c7378909c6d0a2a0017bb409f7fb8004e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d029cd7cedcb194e2c361948f279f1788135bb2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d2850c3112b5fb851c4aae23c1e97c1736898cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d770717d63e32089b2e11e4ce927c1dce8a023d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d77680d75ab51d8f889f45770d3d3c14bd2664d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d8a0526219838ca50726ab4a579ddeb8b38fd4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d8ec055d91dcd4bcaeadca35a62663348223ca1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9da2a3141e64616ea570ee72d1a4efd0e5381e47` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9dcd1d43e8d3f4c9fefcd2023643480069a38e94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9e0a5943dfc1a85b48c191aa7c10487297aa675b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9e8e207083ffd5bdc3d99a1f32d1e6250869c1a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9f146c25e7dd462119b497f27309227bba160fd3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9fa395901a92490d1496c94a8578e1f4ef9fb1d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9fc47920dc749dd95297ec7fe85dc1563d98f0a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa0020bfeb72867a8ea96a4c3f62aff5a57e47aa3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa05e35136ed8ebdd8d620806cc003ebae3a7e88d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa070dbc106b2a2d65dc696d3c12fec25adf3b348` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa080292c7e8c458e186f9266312d035e5e985617` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa08fd77c4141054d0eca21f71103fbf0ea0ba4ef` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263321 | `0xa0b57619a980dfefd50f24f310ee1b55a40a9d46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa0d8116a3354f1daa2ca99440f32957356790d3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa0e5a19e091bbe241e655997e50da82da676b083` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa12d5e346db847e84a9546d47f1aef155db2cc68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa13463c30d9edada5bb3e893e9f025bf9deec549` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263322 | `0xa16f6fc7380300525c812ea2733ad62dda58143b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa1d2f8570e5ce7c16de8577f27ac407cbd183ffd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa1fb1867ac95b21603a6fc8fa4f438df5df341ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa219008f38a698cc5df6074f0f147a5eab2a2ebe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa24f9085772a0c27b4f83cfb350cd6156b33fb2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2782757aa0e3791abca3f6768398e482901b875` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa291faeef794df6216f196a63f514b5b22244865` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2e958016a756e974d12e0d510592c60208e503f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2f20baa9dd878923b0b81c4325af3363958bc62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa30b61b5f1ee1c53d5999500e19c8104185943a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa323cccbcbade7806ca5bb9951bebd89a7882bf8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa34c4f2e3d5f81db3e2c21a3942ae0e60dccd612` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa35a4972d74d4b3e4486163066e5ffed6d62b213` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa371fc9d259c614258e8eec066d9eb74c58b8247` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa43d8bbbedb2f1243003e7d09f2f12ae57ed889e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa46608d9d6bf07d670184bbb5f18bedacebeaf89` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa51753ac0c77b4d20b876d4baef4ea65f260421f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa5afa80fb9322f45157fe379bc32666dcccfeb27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa5ceab8d012b7563b466252972610c620d3c909c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa5f565cfbf40464c18a1adf1d7203d9a1b5cee60` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa60a2265d951e9f070531db54a94e0345eba1e29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa67b44e37200e92e6da6249d8ae6d48f832a038d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa67fb405cd93df2277e5952152535346a80c71e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa740d8fc73b2e5f1949a12a213e75c5bd0f7b9fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa741bc0ade4b6cd2257e913f23fd024e9f0190eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa74aa48e5401d8ebfbff24bddaad0057e5558d56` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa7c4054afd3dbbbf5bfe80f41862b89ea05c9806` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa7c724db7c53af7bc0580932b2da4c605b0d24b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa7d4f888014c6f80bff622f18c9485633e34708b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa83157bba7976689319ab7e1395ac99df03d2081` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa87e8e61dfac8af5944d353cd26b96b20d5f4d01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa897e7f856878ae0a16823d5feffd4d6c41cb991` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa8caea564811af0e92b1e044f3edd18fa9a73e4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa8e2abccc65e94f3d867b0a9a6ce29fce623f9b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa90996896660decc6e997655e065b23788857849` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa927df41756770f334a879e0f18e42d6bae99c52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa9465f75eecfa4293abcafc02d68e79bd4167f53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa978891e9d8fe36838891ba9e2ae77727ee63dc8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa9d052ab8aba3a0726d4a6b8026b7eee427b86d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa9f2f220376b21bb484b16bb453698e82cbc2ad5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa3a3de957df88c6fdfaa6868342586c35d55e9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa78bd6e78821cc3302b2fe2efefd188f97c93c3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263324 | `0xaaafea48472f77563961cdb53291dedfb46f9040` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaaddbfbb40a7d1ffc0678bbf5221315a55cb919c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaaedafc0a2550c8d25a881904b85d91931ba6992` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xab10586c918612ba440482db77549d26b7abf8f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xab4ec0c0eec6cae2cd04a12802bc96379d004d5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xab9018a699003a777d690c156045dfc4a7ef3a96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xabe3996db4d603255d9e8d840b3580261e201ffb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac5da2ca938a7328de563d7d7209370e24bfd21e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac6ed85a3848cb5543b69b24aa6708241344f88d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xacc1478ad5e051791aa51f7e2ca2d34aa71014df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xacf8bea12aed0c2097948b65d422574ae90f3a29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xad31f31f6dbc05dc2fc9eaadb153d0589b9812a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xad97639b0a94549e9391c20d5cad0d52be96a383` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xad9771a3a411928cd524d72551f03df2020508c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xade7cb5e2c2389b86f4781490c1c03f51500d4cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xadf2b5085873c747f68036f3ae64ae0a7db5501a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xae36c604e17ac9016e926e4920c57cd492f612d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xae76e0d0c4767e94eb2898f42a96696ae0061cea` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263325 | `0xae813841436fe29b95a14ac701afb1502c4cb789` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaedf7d5f3112552e110e5f9d08c9997adce0b78d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263327 | `0xaf1f5e1c19cb68b30aad73846effdf78a5863319` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaf5150fa7f0fa867ef4e0d551c66eb21830cd6dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaf73a48e1d7e8300c91ffb74b8f5e721fbfc5873` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb011e58afb69120a0d841cef3ab718ce3f1d395e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb024e83ab3f0be06f8b01081ff490b1f94f8c69c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb036141f1b6b317147784186c93979310164df27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb06b3394b34e2f80cedad89cfc62bfa43cdf7d83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb092b4601850e23903a42eacbc9d8a0eec26a4d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb146bf59f30a54750209ef529a766d952720d0f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb16be643f54a5273a6a917b9835ef7686bbb3c5b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb1b76ea10cf099bd82d5a93b4a94ca4571ab785d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb1f2cdec61db658f091671f5f199635aef202cac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb1fbf44944a938a53504d26317e631332e2f0ff0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263328 | `0xb226c52eb411326cdb54824a88abafdaaff16d3d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263329 | `0xb287a1964aee422911c7b8409f5e5a273c1412fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb2e69b79a9d3e0a4830369f6d3930ef7b8c5a295` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb2ec68bea6224b46924b06e750341d0b9974f6fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb3161b9ae1745973ef564b9acedefce5b457d74d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb352be5392029b2b8c5d53ed1f878186daf6da80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb3760ed42e9e87497a371697ff4f08b510c93df1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263330 | `0xb3bd6b2e61753c311efbcf0111f75d29706d9a41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb424bebf463648d0594239dce71df0eb4f33e95f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb48390877e12d401d9733a875806919c9a6cbe8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb4875f7726d32c5c381f5dd13a7acf8e0bc049c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb4cf50e2e7dc2ee44890ce5214718a9bb538f957` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb58648f21b7e78b38d02d8f677dc7aee3c7dfa72` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb5c7aaf07c438a33027dc19d903af775a229be3c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263331 | `0xb61f8fff8dd8c438e0d61c07b5536ce3d728f660` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb6595ac67e659d07b638197be2da85caca3dce20` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263332 | `0xb70e1cbff4dff345b3aa832cc1c03ca26766ad55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb72cf0b8aa920e8e3cf7c9097732c3f7a4c3aaa5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb7326bb9a7e7073725c3d8245ca931ad8b1a2204` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb7814ee8b3b03b0c1dde559b32dfdcfad217d0bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb787120bc5c9e062bf806f74837284caa0a5740b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb7d3788ca676975b3ccd21acd243115736c493e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb7e062f8b7da0d26e202a859b008f59d7ead6526` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb7e9bf9de45e1df822e97ca7e0c3d1b62798a4e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb84ad7455adab0c56146e560f9069a9148cebaac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb85413f6d07454828eac7e62df7d847316475178` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8ba33cd1ccb091a8468572950bd3669723fa5c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8c3a282de181889ef20488e73e7a149a8c1bfe1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8c5af54bbdcc61453144cf472a9276ae36109f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb91788b8ddc877ed649c0d7e523d32b267491ec3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb91d819943e1c00301caa0fba3f471bc9d912d7f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb95b5c99c2f1b898f0018b948d0333d3851af0f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb9756d050b3d31cc4d9be7323dc8c10a80d88040` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb990961d30a5fa10f7929851a76d8017cf4a8ebb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb9910c6fabbdbda7f060772f62b7a2471f54d8f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xba0b43ab3966db791b4db1811c3096568ad8a99c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xba81fb02d5e7b94b341e82d1959c372590b852be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xba8eec44dc13249cf4a360aebc1c743c83567399` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbb1988ab99d4839af8b6c94853b890307770e48b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbb4b067cc612494914a902217cb6078ab4728e36` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263336 | `0xbb51273d6c746910c7c06fe718f30c936170fed0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbba100eca7ea6fb0c651d1a234ca343088b1ac01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbbaf174111d7bb10c00d29cd24843fc9ba187c78` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263337 | `0xbbbbbbbb6b942883ead4976882c99201108c784d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc53671fdf11eb5ec4e313706fa57f9a0b38ee87` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc64210d565aabca8eb6eb795833cc505ac3647f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc89cd85491d81c6ad2954e6d0362ee29fca8f53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbcbba9f1b479ac12087da21721ac9df22b924535` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbcc6180cc066f17b100a7302625e6845436d3c2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbd04c291ed65c8cf7395c7b34b4f4169598e199c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbd5743e90188a6e72d57a9b85756f56b7c333876` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbd5aa1db9804b26ccf2a3f9b3f994db2c9e6938d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbd665a74082ac10372c07fbba76b7036d051465a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbd67e4dda2cbe88b36b7bebc41cf43ebbdb87a7a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbd95e9e1fd1cc5012a1162af9a034ace03179905` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbdc3372161dfd0361161e06083ee5d52a9ce7595` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbddeb563e90f6cbf168a7cda4927806477e5b6c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbdf157c3bad2164ce6f9dc607fd115374010c5dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbdf447b39d152d6a234b4c02772b8ab5d1783f72` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbdfe6079b50df618e81983dd6ad31cfa6d45d41a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe146d6667a9591016f50695f7f4728e49e43de9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263338 | `0xbe53a109b494e5c9f97b9cd39fe969be68bf6204` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe600484613d33384ca2b102830562f908f45217` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe86e8918dfc7d3cb10d295fc220f941a1470c5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbef66c2c0cd93c00c545938ff3f5b50b2d91ccc6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbf1ed41660a93a9072123f133a9277d28c0bb44b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbf209691a16f81314354cfdfc79906e5be64bf56` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263339 | `0xbf319ddc2edc1eb6fdf9910e39b37be221c8805f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbf911205e3c52c6c8e85b8e4bc263f982d8f4222` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbffc83cd9e74419e6caad2a0d239227c49de44e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc08f48abef36aeeabc5e707b8dc504ae946762ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc101946f8d0a9decb14996b32b0f2166193b06b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc10363fa66d9c12724e56f269d0438b26581b2ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc15a2b4bc7ca71808f557906cb328abfde42b17e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc19d317c84e43f93ffeba146f4f116a6f2b04663` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc1dc06e4534b64533898f642f6e7bf664a35c243` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc1ea4783332a00625f04af65711c6c7e0ebbb8a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc25eae724f189ba9030b2556a1533e7c8a732e14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc26d64755f2bb667fd9aec69815ab547be8508a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc2793323b14990c1c9df7444cd5c4207ca61c258` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc29e89845fa794aa0a0b8823de23b760c3d766f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc2cfcfa978a7fae529dc7e9aa3cdbe7a727452bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc2dc50ae4af10d1e27fa74bd1e0c60878813721b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc31e8c238287448f0d0ccf65df40424eef429940` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263341 | `0xc32bd1a70e831c43956ff2f5f23f2ee45a04c020` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc36080892c64821fa8e396bc1bd8678fa3b82b17` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc3c272d18e31086ea7ff0e51474ade320ef5b3e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc3eaf094e2586965244ab6534f6dc69c6c16b5d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc3efbfdb50cf06e8e5bb623af28678d72caeafea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc489f7a77cfea584d0077db77a56c35331fc4b1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc4b2f8c896058e85bbc675283f9551f0100efa1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc4d0012098589d297e7edf881fe5a64deccdef39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc4ff0ab6883ddd0216bb2cde2104ea462cd0c4e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc50f67db3a63641a57d2d3de9fda6767e999efe5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc53a7a7beb51141b750b2752cd1276150a511daa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc5498c1afc75ffaa2a6f14be0f0f41fedb683b58` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc5b16e7efe1ca05714477b8edcab4dee9b93a27c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc5c1d408e3e2f466ff960fbf7c77ee52dfc7ba14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc5dc3c126f02eb22eccc92d040f6b764d6300edf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc5f87695cabbf16f81133cabbc7ccc073e648139` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc65ac814056fd097ca28850c8466ece7bb3a8bf5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc68251421edda00a10815e273fa4b1191fac651b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc6e53d7c2453163f9b708393086237b0ee0fd9b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc6fc9513f9215d4e8a84d11a60e040e02fa1ae65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc768a7ce85c896ac7d84e8f41090728ab03a5af2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc78cad9f1a1ff360fc6d2c07a2919b116750da23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc79be1bd43ed5943d85cd9c33cd3a8c0f63cf003` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc7fb9f34d67df279b539b224882cff37ae6bbed4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc7fd8dcee4697ceef5a2fd4608a7bd6a94c77480` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc855b3a339392abac4e5f89ba5a29c984edd2dde` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc8aa884f54ea5eaef5ef4086607c00580a103928` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc8aaacc8c6ab8b61c1f681d1414c4863c8b6340e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc92ae5e2a955a3440f677c1c60d48baa1cfa9eda` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-263343 | `0xc97232527b62efb0d8ed38cf3ea103a6cca4037e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc9c2d0bfb9860ad89a91d2069a8d73a6f903e9c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc9cba64fd4d5d0abc2b15e24f19abd033661e112` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc9d8a3b9c39b71969280fc249c87b5d0cb77f3c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc9dca59ec6e6871a9ef730e2ca9a02e469a765d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc9e8246db2d72387cf708feedb2c06b41c9d6709` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca1041f188ffecc499e8d4d0f08dd31b0f41c157` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca55f9c4e77f7b8524178583b0f7c798de17fd54` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263345 | `0xca78af7443f3f8fa0148b746cb18ff67383cdf3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca8c5e51e235ef1018b2488e4e78e9205064d736` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca8d1980e79d220d108cebbff456dc516d5da5df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb71fe9529cecb5b440819efc85824d133b8ed54` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb81c2783bc72f841ece6d89fdf3db8e6b26cd50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcbae0a83f4f9926997c8339545fb8ee32edc6b76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcbb626f91df8057a7ee4bf65cf10d97884e4111c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcbc1065255cbc3ab41a6868c22d1f1c573ab89fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcbc5bd49002ddec2928dd4b3f461d5099ae099ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcbd1dfaa9eee616245209349c745a6cc9f3553d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcc44572b57372dac502bcd784705e083779b2afc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcc5f8ca88caba27f15746aeb481f0c446991f863` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcc640eaf32bd2ac28a6dd546eb2d713c3bcaf321` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcc7218100da61441905e0c327749972e3cbee9ee` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263347 | `0xccd04073f4bdc4510927ea9ba350875c3c65bf81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xccd5cb3401704af8462a4ffe708a180d3c5c4da0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xccd7029f2e3bd4d1100d74b38a8e9d0a8a5d0898` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcd0074f0ec6319b288b76103d2ba89768a4476fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcd22c4110c12ac41acefa0091c432ef44efaafa0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcd2743c0114a5cb964dc0071ece1cb402e51f412` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcdab7876c4b7d6793fa09494808c203e813ce475` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcdca6103791210495a2369021e980fb6118d5aa3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcddba405f8129e5bae101045aa45aca11c03b1c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xce4fe9b4b8ff61949dcfeb7e03bc9faca59d2eb3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xce65aab4ce2ec7c13c82437bd57bafeb0a0791d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xce7ff5e32bb411f97b1b66713ec2e90bdd425f7c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcea967b693e89b1ffb08718c3106847616e95607` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf1af2ceb3e0ba659e3a51a4ced9a9d28bdd9887` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf20319b55046d4f199df32ba0a622406b5c03d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf679b2e16498a866bd4cbda60d42f208084c6e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf9e17f064da072b05a13aac15a2fe88a244213a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd0108d6bc206ecfe38e496f0ed95fd9e9f96bee0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd01ba134d6dbf9d2d6b6753e6137eef574882004` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd032bfedc68ce5067e3e0b766dbcf653ceea541a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd061d61a4d941c39e5453435b6345dc261c2fce0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd06527d5e56a3495252a528c4987003b712860ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd073e970cabfdeffe518c51e24910f887b5808a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd0cd4a9938daaa5d80a192c3d597e905ee5a8837` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd0d2f0c1880eafdf39fef04c8cabcf906442cde1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd11b416573ebc59b6b2387da0d2c0d1b3b1f7a90` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263350 | `0xd192e702ecc54fcfb52f6764333eb8a5c849d6ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd1badf89032a540bfec355a927049d5577ce4781` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd1c9d16b4a803f1336650f17eb99b47b1fc90038` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd1da63f8ab9b8ce335f0f0e40f0e2a05c20c93bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd1f7723881afdec574e7c76edcf5b0458082a8b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd27047ac07b58d6ea3a5a76dd4958f9093b56ac2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd2ae8f17f430def82f1319a41073c9a1550f3ec4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd2d43555134dc575bf7279f4ba18809645db0f1d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd30f78febbd7d463ccbc6039be8b85831c405ad1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd34137fc9f6754bcdfce907d06f4d10e897b3eb5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd369e8eaa0d2665dfea6eb51ff2adfca4eaa7891` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd37295796c8b885783bd0a4a6c890e3ddeae6705` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263352 | `0xd377919fa87120584b21279a491f82d5265a139c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd37a6aa3d8460bd2b6536d608103d880695a23cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd3a5e243a1f23accf3677881037d86b1c6ef0770` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd3aeaaf39e38442a12ffe5fb4e969bff156531fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd3ca98d986be88b72ff95fc2ec976a5e6339150d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd4419ddc50170cb2dbb0c5b4bbb6141f3bcc923b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd4525e29111edd74eaa425ab4c0bc507be3ac69f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd49d86b001fe35bc745bc6e467b3cc18cb14b817` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd4e08c230008146f0f66c19a24e8c6e39427dca5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd5103afcd0b3fa865997ef2984c66742c51b2a8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd532944df6dfd5dd629e8772f03d4fc861873abf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263354 | `0xd533a949740bb3306d119cc777fa900ba034cd52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd5586c1804d2e1795f3fbbafb1fbb9099ee20a6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd5610010800b59038c7c54f906e5f14a32037aad` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263355 | `0xd57aea3686d623da2dcebc87010a4f2f38ac7b15` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd58207a67d1b35edf33b6ade1125b29dc1964cd0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd644422ff95ecbf63668ac1ecdec7fe4022d87e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd64c2c1bb25ccf188910de87249838bb01019cb9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd64f8d48cf67a939824b56e2de374327653de086` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd68696fdd9649bffb18e88e1b671b896825f2e50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd692ac3245bb82319a31068d6b8412796ee85d2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd6c04cf463a52a9c929d434f9f84ee70c1c0ac6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd6c227d7aa320a139f1e4631a30dbd13500149dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd6d9e4c301cc548b92ec2745a6aba9a8af44938b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd6e720733edb27fd2110d06bba3df258187d4148` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd6f34dac08fa1cd5e8567a40f3a0be4dae5e25a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd7065da1259b99e0f79ca7488894e38b158a4d58` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd7240b32d24b814fe52946cd44d94a2e3532e63d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd734d56aaf40b11080116a4d23e48afb0aa432f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd7394428536f63d5659cc869ef69d10f9e66314b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd73f0ce21be7eb1834f91e68c55ce149b2e8dc46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd744b7d6be69b334766802245db2895e861cb470` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd7de27e74f1ca2ce413e19a0b30fcc95395bfcd9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263356 | `0xd8063123bba3b480569244ae66bfe72b6c84b00d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd80cc23149120d194f05606749388f32065ae66c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd865d00e19ee6fd2106f9b0c402d6268bbadd45f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd8ae47ddaeb4567371b344cc748f39e27255f9db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd8fbdf6b01d176c2853e78c62620458ad410e41e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd96c52375a63506d3e3fdcfbcc640dccc076367d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd9b076a960b74ecc17ee4c76a29aa9afff19f3c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd9f5b9810c922b2e85c30c3c089058a1c670e7d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda18f789a1d9ad33e891253660fcf1332d236b29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda2f1b3cba732d779cff56f0cf9d3bc8aea6cd8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda67786a87bed11081c1d85b26fe75a33e1c2710` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda7a4d8868445cbf7769fba50a1a7185255f2cc2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda994d97314721a436ce2f8caa19af7889848015` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda9a26c76ac5f40d7727535ddaf0f888b80ffbaa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda9ea73ce6e2022bff12df6765cdf6d2721ef0df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdab97198db9eff3d4237bae92b8b703f7f95624b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdb2222735e926f3a18d7d1d0cfeef095a66aea2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdb658a120ff7c7b8b1d4135d6d5672d746d17b43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdbb5e3081def4b6cdd8864ac2aeda4cbf778fecf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdbedc4ee481be454dc3ecd2f9b00e9315467a483` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263357 | `0xdc775e813cdb38a4f02c4bad3942319088018efa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdce91e3254a5bb2f1fb099d730a968d9af1cbb62` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263358 | `0xdd3fa86409658d207a9be0141ee560c8db557824` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdd424974227db8ebd9467a68a4815418d7678f9f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263359 | `0xddcea799ff1699e98edf118e0629a974df7df012` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdde8310a8a266191a7718b553a6b66ac07f8fe53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xde19f5a7cf029275be9cec538e81aa298e297266` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xde237119b73f8c5f654df62ea11b85fd36d389e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xde61d94f71a44cb28ce94a34b1b560fc55128c80` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263360 | `0xde992c652b266ae649fec8048afc35954bee6145` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdeb033832bbd3ece762d43338573d6ac3e85c338` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdeb927ce76d4871b226b7c52927549ca36c0ff11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf270b48829e0f05211f3a33e5dc0a84f7247fbe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf7ef2f2726078050a72fcf2b320f82152ce03ad` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263361 | `0xdfc8cd9f2f2d306b7c0d109f005df661e14f4ff2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdfd6fe3a540f68601002e889e33117a7e8a0669d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdfff11dfe6436e42a17b86e7f419ac8292990393` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe046e2a2cbd54d9f9b83ea5f0cdf4b6d00430215` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263362 | `0xe0514dd71cfdc30147e76f65c30bdf60bfd437c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe19d025358494abf5dda53e71915ff1e747f5bbc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe1c32cac6270a13491a981829ec4f9e99b3f2ffa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe1eb1197aff0fcb1620dd41c766904f6f43dc7cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe260b149b6e244b8fa1c6d3fb06b972bd068f444` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe28e6a8f07c00ab49a026835b85bfc963b57cef6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263363 | `0xe28fcc9fb2998ba57754789f6666daa8c815614d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe293a96b37cc855e3afb07d8f1f1c68258f76e63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe2d39aed396f03c7bcfab396af33a74cac4bbd2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe31f7a29a9a87ce11c6662b7e054588af1c7cc90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe3668873d944e4a949da05fc8bde419eff543882` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe36e93d10d96eb529800a9fbb75ad05d690fcf0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe376ed92fe72125aa1f6eb9e113da7483dd11bb9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe3974e44bc08f435da2c6db7d01e1758496da119` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe3997288987e6297ad550a69b31439504f513267` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe3d7a35cc516f383dbab40ad169ec41e1c287a27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe3ee395c9067dd15c492ca950b101a7d6c85b5fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe407e96042c1a581dd81daa36d018429e6df882d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe46c7757a94ca868fb613b2e24f6c9e7f022dadc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe4803d5254c31ce3903fdd7af0078f8da50e976c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe4c1e5d96360847de7dff72d2bd1c4b3d4284e97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe5387cd454dcc542421c069c009d915ab9efaafd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe539416a21f6d7ef7e143f1435484d333c274480` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe58101d3848e12dad6d7b5981dc11411bb267d2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe585c76573d7593abf21537b607091f76c996e73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe5a45b5a1fc355f22a44df77bc4d8127481e2192` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe5b9ab98af19e92c4912663b849fa9e392c3bbe8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe5c73653bd6b80eeccec1bcd2e6d6281232c62f9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263364 | `0xe5e2baf96198c56380ddd5e992d7d1ada0e989c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe618c25f580684770f2578faca31fb7acb2f5945` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe649d8b63b8cfd92008edcf6baefd67ade489e30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe64d35a44edbf9c8458f3bdf23d0370e9db5e02d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe683491214566a9c11b6920ca0074e19cec8deee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe687b7c0b096ef956d353ca36352aab4b8adae34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe68a8565b4f837bda10e2e917bfaaa562e1cd143` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe6a6a9dbb82b3eaca8f8be4a346a563b683b0906` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe6c2d3b5c08738970acc4625e3113a5b6e38772e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe6c3120f38f56deb38b69b65cc7dcaf916373963` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe6c78b85f93c25b8ee7d963fd15d1d53a00f5908` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe707c7a9dd58fb7eea17acff875cef8d10ed1a9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe729e4c84222077888d425b516b79316d4370760` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe75e51566c5761896528b4698a88c92a54b3c954` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe76e15a4b1766d0bf655899b2a9810ca326385c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe7863292dd8ee5d215ec6d75ac00911d06e59b2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe7a0d6494639d00d63627d648906a2ea68d2d797` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe7bff2da8a2f619c2586fb83938fa56ce803aa16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe7f61f2d0c781743f754ad5af12b94935de36fbb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe80f4c14fee591ec0943de291d0fe51813ffc5bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe830d48028ec4cdb771ce4261fa528b88f6a6adf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe862bc39b8d5f12d8c4117d3e2d493dc20051ec6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe87af17acba165686e5aa7de2cec523864c25712` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe89a6d0509faf730bd707bf868d9a2a744a363c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe8e202d6773f50562c0fb73cf18248d621a96c43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe959fd7b7bb8ee0c6dc5cfd9ba0d85ebbc434818` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe99aa816abd92b4f19b4eb51be52d18cdb5bc821` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263366 | `0xe9a115b77a1057c918f997c32663fdce24fb873f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe9a4129b2f144bd195b8843002cf3434cda8d445` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe9c52fa89c3fff58fb9934d962d6433e945e59b3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263367 | `0xe9cff16bdac9729f18cbac451ecca6c50b372207` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe9e0ad069325234035ac21bbff76b557b4d52689` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263368 | `0xe9e8c89c8fc7e8b8f23425688eb68987231178e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe9ea58efb13733d413365f02ea52b21d25f0ceb6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xea94eb708a74fe5b67fb8f7e1042f88a311ee2ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb1e2e30944797232c623498c546565a085b0623` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeba14366b059182cc883a4d73385004ec102ce41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xebdd83cd87036670d045776b2bc79a8184a9978c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xebfc9451d19e8dbf36aaf547855b4dc789ca793c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xec6d6157068745ff9d5856845e65ebdc12020c39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xec767751a26b6f4b4de32d2992c502e97b87bc14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xec85c894be162268c834b784cc232398e3e89a12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xecab2c76f1a8359a06fab5fa0ceea51280a97ecf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xecabcf7d41ca644f87b25704cf77e3011d9a70a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xecb0b5f5387732085a952714be391965c7dc1886` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xecc7b8c48cf61682e42a08f47b5ebabeea9d6e42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xed26022388281e12ff7706f82382aeab4da2695a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xed2f20acbb4809bb2f62da75cbe3a0df557d955e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xed393375b5d2ba92384a885ef907f2947fb42eb0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xed64f226fea62b176d69dc4baa47f1ff20171fb4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xed8b26d99834540c5013701bb3715fafd39993ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xedfe424afd4aa5336473ab53bb02cd74c03b2594` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xef58b2d5a1b8d3cde67b8ab054dc5c831e9bc025` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xef8096f0ce9eb465f0239b05b11f7abe18b09a29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xef8e447bd63fd3c1eec349cf4d1dce19be7a807c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeff039c3c1d668f408d09dd7b63008622a77532c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf01401a1f674f242d088a0b46cdc7f5945148647` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf0145433e5289dd10712650dcd28333fa317ef36` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf02b8c7ff1accd022cd78444dd9f56330cb699b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf047d4be569fb770db143a6a90ef203fc1295922` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf04ce2e71d32d789a259428ddcd02d3c9f97fb4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf0aaba135955576ffdc7f19a246e89c88b86bb45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf0b4874f77b8fb42f231ca54d6bae2ae0fe52efb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf0cabf8cf60155091acf657c441dc7b2276d851c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf0e98270d13081491c34e1b0b3b4089a714f5b6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf1089528b6ce5c930849dced8777f41bb45321aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf15db0c2a8efd54ba307849880bf6b5060acba9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf1cd0056fb74de307f4302a9dadaa486d8f494f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf1e56f52ff69142c7a986e840d68614903e678f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf1fe340a013023733baf7db8cadd08edcf0d6a0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf20731f26e98516dd83bb645dd757d33826a37b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf207718fbe3c7bafb63c61bb4117e62ce378c560` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf22995a3ea2c83f6764c711115b23a88411cafdd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf24d8651578a55b0c119b9910759a351a3458895` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf25fb0897580e61420d38945051bb1cda861249f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf290eebdc767b93354d54febc8867dd9e22fffc3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf2e9e8eae24dea1a5d40f3a105677af1797a47d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf313220b3c9e3cbba808e4a02cce8c8084a84bc1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf330c109dd91d391b5cd654b7fa595fa1a8ac470` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf3500cceb90ac32e91f79438260ee5ce11384770` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf38561fd7ec2a7edd743d08902c06bbab3618275` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf4bdc0d2eb88dab87cf5594c9cf1c9f2048b4b0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf503314b403910c8a991b424b665372243c2df04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf53417f66d0a0a39fa2e6db44876fb9413422ddb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf55bbe0255f7f4e70f63837ff72a577fbddbe924` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf560af74e265173318f01bd974e5d8eae6b5b70c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf57a562833eed7f01427ef3e48c63b33627ad52c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf5ab0cad932f2aa2b67fdc675dab48a8dfe02fd7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf62ab629c6c4cf881c6cea50d2f92d00cec3d586` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263372 | `0xf64e58ee8c7badc741a7ea98fb65488084385674` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf6bd678103554eb62ccddd26171fbfddf145d4bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf6f12effb70a9a5372dc9ea6848991799bb3ff96` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263373 | `0xf719b2d3925cc445d2bb67fa12963265e224fa11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf74f976841209efed472ae9e447fa96765b6cd94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf77fce7a8ff2b6a04eea5fb8675fdc74e1c54950` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf7994ec1437c9f2be3911227f944adf941bfb08f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf7aecf4d4e2215ee2b6b83a3884acd2e0d9adb1c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf7b80ea9af99545523d0b1c93a288a7566d7a6d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf7c33f01c59a5ac84f45c4d777f9fe89f1afc14d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf7c5314806bb349744cf5e721f4d3395259b8531` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf7dbc322d72c1788a1e37eee738e2ea9c7fa875e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf7eaaceab329702db426722e82a40278515f9550` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf7f70223f580b649b375b3a30784eca74b9f83dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf7ff9b15f04c0bc3642f9614a777eb48575b4018` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf8062eedf80d8d2527ce89435f670cb996ab4e54` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf82b7e957f4487d1ea905135269c22e2fc4a7b8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf8445c529d363ce114148662387eba5e62016e20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf859256858091a7d78f0ae8dfe91cb30e5b1bc65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf861cee4a13bb2c20849490a49399f858b39bcdf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf89e5152c6ba530f398213dac29519fc0ef224e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf8c7e457be2f507d6ad5dc34226ac5c0f28af64c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf8c8d9332f441e6d4f3e2731829717265c3e8ed1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf980b8a714ce0ccb049f2890494b068cec715c3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf98b83f3efebd031d673953c7125451686faef34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf9d4c0c1d8062a75e630caec84226264da660582` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf9d78c24979aeaabe750e720da75c7f5921bb5f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf9e197edc4d9d34b85040b36c2bbd710f1085fee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfa3472f7319477c9bfecdd66e4b948569e7621b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfa4bf9f0500710a17324c7584d0fbc9272c3530b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfa6ebb3a62dde486f87661d238b53bf6557d386a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfa712ee4788c042e2b7bb55e6cb8ec569c4530c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfbd0e30662d46f0c344df715c8203a5246e0483e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfbfb922aa45f8e45d7f05bf83a15b4b6723f0aa9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfc04d5958050b8355ad6e8ddbb6099409c44c21a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfca6410e66330c9ffe6031217c314ae46ff89833` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263377 | `0xfcc5c47be19d06bf83eb04298b026f81069ff65b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd37356c1a62288b32fa58188c77ab0d694a0f4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd42f5e741dd747749d220804eeb96c3f0d4c304` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd609a03b393f1a1cfcacedabf068cad09a924e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd8c45849e13565adbf5d84905016e5c8cd20766` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfda5bbdb6a78d16f21244b43921a496acbbd57aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe023bfda51ae5811d36d7014a51f63b0db25707` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe4f78c47dc96f88392c96df589d4e8d42cf9d90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe55fd115cc33af63afcc22b8ce7029b9d59dc98` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe847efbe56bc528b901f1cae6b44d1c77a06db9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263378 | `0xfeb4acf3df3cdea7399794d0869ef76a6efaff52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfeca6895dcf50d6350ad0b5a8232cf657c316da7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfecc2d4689394202eabe6329acc1a0c6fe25736f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfeeb92386a055e2ef7c2b598c872a4047a7db59f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff03dce6d95aa7a30b75efbafd11384221b9f9b5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263379 | `0xff0bd2d0c7e9424ccb149ed3757155eef41a793d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff2ef57f498947446aa734a9a6ccf673ba548fcd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-263380 | `0xff31a1b020c868f6ea3f61eb953344920eeca3af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff7555ef9b20b9bc6242dc74449903065bd7bc7d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff79e950e7806cca2b354c9a758b63161e5a9121` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff9ecd7e63c7d0a3b1401f86f65b15488c2c46c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xffb5d044ae0385cb8db39362aa7d4f94c3188472` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xffb5fdbbd42c567830f258a9c56aefea976e2310` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xffcfaceacb77d1a1910ccbe407c234d12d17460d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | n/a | `0x0000000000000000000000000000000000000000` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x05aec4bd3446c60eba98f6d8eb5443f25d7f15f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x061ea85f0f2936d382cad1861d7bcefd986d79e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0840b96c60370f8417d07e09d2d557c051b9bc36` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0e4e9914ecf0f7177ef999774d46218614555159` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0e54e555714c7eeabc54e7c270fbca8295ba1fe8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0e83e0535b82c9cba92197f4203fa7c8fd663a0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0ec3473a72cad0281a224a64773c9fe414e458a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1035a101787ac762fccaaa1bcde3f2262511bd2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x10686d9daed9895a22e770b2a463aae7f25afdce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x121f77beb2d9b575d53b6fe33ef97fcc20c5fdf6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1530e5540132bd8da96ea6eb5ace73b98973b0c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x182f09a75a8190f111c1762ecc904e8727d6d6d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1ba4eb0f44ab82541e56669e18972b0d6037dfe0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1e9eb053228b1156831759401de0e115356b8671` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1ec8baab7dbd6f5a02efcab711e765bf796d091c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1f07cf7c0ffe2ff6cfb65879a59f8c0079c1866d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1f895d9e8b0830cb3bbda739fa8afb186b7fbdb4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x24a03b8d77671df7308e818d75a753a125b250e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x298bd23e25c01440d68d4d2708bff6a7e10a1db5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x29c48ea06ba84006fd8cab1d5a1470f86e1dd752` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x3181e64b7d83ec4240c0dd5acab65c0078c3cb3c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x3d8a5eb67a7841e00ffae8f0764a58322ca02c66` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-263386 | `0x3d8f58774611676fd196d26149c71a9142c45296` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x3e9c848f5b352083470e8906a4ec78c601f98ccc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x3f8d557fd1e9043d4577af6a230579e4ac1c4cc7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x43eff8d2b799b5072195dede0909479309d17fe8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x454f953ca4a4c6ab3f2dbb158158de55e4195abc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x478cce2fc43db8ff314181815f2c588296284148` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x492e66fed798ad0576ce16e5be427b71c6d2c42a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x498d9dcbb1708e135bdc76ef007f08cba4477be2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x54fcb3b792e19d9ba07ee61a71e93deb124cb957` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x56d5241a333aa1b3c203d7604de23c7dd5d4d943` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x57c41fd87046ae9ae17fd3bf50fda1a8b8ab5ca3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5be63bf19d30e48738b13f7b07d33839bb25044b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x692287540111a8a9b3323427e729073d9aaeee83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x6ddaf44f12a20c6c853dffb6687093754da28b89` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x7110d7a3331d0919808339705642553df9b0b52d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x76cb235605f9da2f423f45bf52ca5802133beb26` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-263388 | `0x776c1e69b858f1b9622085052fb7b64a196ac602` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x77a0914310dd8c5ec2813a0deab498aeab2c8f42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x78c5c7aeb5f768dbaa0e729525981d3f710737be` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-263389 | `0x79286dd38c9017e5423073bac11f53357fc5c128` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x7967f85ecbf24e56c0d305bf0f9a3c7480c1f021` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x7ca5b3b707475fa977b10fb4fa217983fc8e32cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x7f2073af8f422a94a41df58ed6d9da0ed92c378d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x80c3806adf50efac542dd4b3657f4be2c30e24b8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-263391 | `0x81291ceb9bb265185a9d07b91b5b50df94f005bf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-263392 | `0x8273217252254ad7353f227aaecd2b1c4a326fa2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-263393 | `0x84654e35e504452769757aae5a8c7c6599cbf954` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x885fa9c95fb16d10a22f07e7870f3a5252c128bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x885fedab0182699ec2f2663f776a04150ed6f7af` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-263394 | `0x88ba032be87d5ef1fbe87336b7090767f367bf73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x8b7fa05a0d43100fcc1dad71afd8cca1b81fe8af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x8b9c6b2725646411d4ac5a3f8af2225751d17b73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x8e7aa69d6cbbf34c8f9443bdee2601052c015529` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-263395 | `0x8eb53a4fd9d2727a49e9e68a32108c18049bff86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x8ed9f6343f057870f1def47aae7cd88dfaa049a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x9021edfca93a0f83b013097d68be81ae4bde30d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x90265ddc7959c098eb277d9d3e1529fce16d90b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x916b9d7c1f5b66e42d4e4ce69c739f70b55ae6d8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-263397 | `0x94141d7bff3d04d61ce65b917bdd37b655e08f18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x9438d5768ae8be4be9debe9eee467ca54bff026e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x9b26e8bd7ebc0177b06e3168410947a5db6fdb12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x9b7bc47bdb7b07bcb34c0dd6406fcdbe4bc28898` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xa5e453754ddd99f4b412b888c5466966853e55a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xa99ad11a59ab3f47bc163c033535a26892236ff6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xaf19c8404b5fb377e97f3c1b9eb595b61a42d621` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-263398 | `0xb082d9f4734c535d9d80536f7e87a6f4f471bf65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb1494dcade9b7678692def8da0129e28a209b026` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb2c04c55979b6ca7eb10e666933de5ed84e6876b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb54d1833aca99b0e50dfcc7f55a9165c6805bb9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb62f6b72d974a5e3253c6d29630f591251ce6b10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb666abf97f0a2ea624a6fa0d3fb92121f3fb591b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb9835152a8a0b56094a9c83a2849002a325dafc1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xba8559dfa1f2b767cea440fb1ede9bfb4a9f518e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xbe225be3b77dea53d65410572334051b9977ef2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xbf4a735f123a9666574ff32158ce2f7b7027de9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc53f28c40de7fdd184ebecc94de2d3db5e3234eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc7c145e5ec1e811b1149fd4527a23c9bcab330d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc91d959071091d58d601b291e43ea1f8e4f0c8f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xcb695c104a579643b1a6a3c801e9116ba38a00a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xcc28808c5075a112e4177096ebf643ddf2d82ab0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd068870efe7326e1dc7ae7ba489924e8138b9509` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd155f5bf8a475007fa369e6314c3673e4bb1e292` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd2367b534c1eb09867bfabe13cb72d2bbe5c9b05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd3434df0cdf7bb81a94e499895f93de57288ee9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd39a762f994ffe9c9e6f737bb328b495d484bfeb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-263400 | `0xd3a93c794ee2798d8f7906493cd3c2a835aa0074` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-263401 | `0xd63ab09ac2048a7ecac92f0ffad5f104edd0e032` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd7fdb47441721ac006958906e26a3d6384777ae3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd8cb782eb540dca07c68abacdab6f82ba72590fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd97fcb50b760cb9209518a0a82bb68792198fdb1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xda345746cd1bfceb2b5e5e35581e2519e0003578` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xdb8bbf2b0e28721f9bac603e687e39bcf52201f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe00bdf935e4feb3cb5e0601d88a999d30994605c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe35fec3895dcecc7d2a91e8ae4ff3c0d43ebffe0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe92045fad15d719d7b3126585c23b7c0d70e881d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-263402 | `0xea3a15df68fcdbe44fdb0db675b2b3a14a148b26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xeba30beeab051376500fb03fcd5ec32299594645` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf3885ede00171997bfadaa98e01e167b53a78ec5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-263403 | `0xf5d9d6133b698ce29567a90ab35cfb874204b3a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf66932f225ca48856b7f97b6f060f4c0d244af8e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf8126ef025651e1b313a6893fcf4034f4f4bd2aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf81ad33a29c7a85cd9fbe4f3e96dfde50c7565ff` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-263404 | `0xf8f60bf9456a6e0141149db2dd6f02c60da5779b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-263406 | `0x88ba032be87d5ef1fbe87336b7090767f367bf73` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-263407 | `0x9bcd66bf09ebe5dd35a868307b7638fd281061e2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-263408 | `0xc4ad0000e223e398dc329235e6c497db5470b626` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-263409 | `0xda537104d6a5edd53c6fbba9a898708e465260b6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-263410 | `0xf8f60bf9456a6e0141149db2dd6f02c60da5779b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-263415 | `0x001d0a58b336f60ee050cb11ee455fd7eb984518` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-263416 | `0x0b53e9df372e72d8fdcdbedfbb56059957a37128` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-263417 | `0x1164587b49ff7ace303962cc7a7e0841c1b34986` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-263418 | `0x14785e5e3650f0603ee17401c9890de380713914` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-263419 | `0x29b0da86e484e1c0029b56e817912d778ac0ec69` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-263420 | `0x44536de2220987d098d1d29d3aafc7f7348e9ee4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-263421 | `0x560144c25e53149ac410e5d33bdb131e49a850e5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-263422 | `0x57aa88a0810dfe3f9b71a9b179dd8bf5f956c46a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-263423 | `0x5ea7e501c9a23f4a76dc7d33a11d995b13a1dd25` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-263424 | `0x6b8de08d2520c955554e837ae72022cd46ba7f0e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-263425 | `0x727fe1759430df13655ddb0731de0d0fde929b04` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-263426 | `0x72a34abafab09b15e7191822a679f28e067c4a16` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-263428 | `0x7f462b92f92114a2d57a03e5ae2db5da28b77d73` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-263429 | `0x89716ad7edc3be3b35695789c475f3e7a3deb12a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-263430 | `0x8cc45f739104b3bdb98bfffaf2423cc0f817ccc1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-263431 | `0x97d0be2a72fc4db90ed9dbc2ea7f03b4968f6938` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-263432 | `0xac5a9e4135a3a26497f3890bfb602b06ee592b61` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-263433 | `0xc0e2830724c946a6748ddfe09753613cd38f6767` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-263434 | `0xe55dd55b3355c261a048b3f310706c7478657d74` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-263435 | `0xebaa0b431618bcd9ea67d39c232625c20880d9ba` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-263436 | `0xf13cd6887c62b5bec145e30c38c4938c5e627fe0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-263437 | `0xf628fb7436ffc382e2af8e63dd7ccbaa142e3cd1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x00972d69f69d5258ae486524fd91b17227bb0d10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x06ea31f5214568b841fa1252a38fac9f98c47fa4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x156bab355e81b498072c9ce3cf655e9844a12529` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x167aa4ba31b8285707d1489ad705cb24cf4e5186` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x199c97a7258a6322bd64c4e92f9f4fa63a067c2a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-263467 | `0x1e9eb053228b1156831759401de0e115356b8671` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x21aaf096093422f60554f25fe993e44218733d68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2636a682ad0d46594af1207c402fb0d0759c4afc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x298bd23e25c01440d68d4d2708bff6a7e10a1db5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x39013eaa9bfd511388654c3698b4c9dcc7f277af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x421d065f587e28e3c6f2920b2d0ed76756bb82dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x587d2aab136ed873edb08fb9a4c9615a46feedbf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5be63bf19d30e48738b13f7b07d33839bb25044b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5ce2930f5709c7061ff0eb1527f2e7e7f7d29535` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x67f3d56ddb2393d331f6ad51e20a17b6243efa63` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-263470 | `0x697bc6bd64677be63240262869dd5f2a3eeaccd3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x71be461149f4e810fbb494268b0485085ac9b911` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7e9756e1427b3c38f001f9d272d8d62bef63d619` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8120c06c6e44fffbe90011a51fb440802ba85dac` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-263471 | `0x8273217252254ad7353f227aaecd2b1c4a326fa2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x864e012e4eb2f28617b888278415f8ee3d6e1fcc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x873bdba7b8a4ee64e8dd7da312de8f7feb93d2d8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-263472 | `0x88ba032be87d5ef1fbe87336b7090767f367bf73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x967c06012abdf1b5bdf57b8d5362f4e5e7259f92` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-263473 | `0x9eaf8c1e34f05a589eda6bafdf391cf6ad3cb239` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9f44aec110e5bddbca60b6b9692bf6caffc69ae7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa2bbb247b8722617792aadad029de07440a19939` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xacd0cea837a6e6f5824f4cac6467a67dff4b0868` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xaf29e168bcd8e3417ce23f0ac107c8590cd77206` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xafc227d9da92e12de07b916767a91c1fdbdfb534` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbf95291ca94d95a009b359cf4580cb48bb9d8cef` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-263474 | `0xbfaaba9f56a39b814281d68d2ad949e88d06b02e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd3a93c794ee2798d8f7906493cd3c2a835aa0074` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd78dff76701f12f11dd8a4bc190ee3bb7635dcb0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd83a1edc34de345ba58b02802da9cda5a8d7d1c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd9ca6b6e09bf8da4d26bedb0b9718390bc10bd21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe0f3d78db7bc111996864a32d22ab0f59ca5fa86` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-263475 | `0xea3481244024e2321cc13acaa80df1050f1fd456` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-263476 | `0xf3885ede00171997bfadaa98e01e167b53a78ec5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf56f360b735ddb14d4110815f05574b47eaae991` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-263477 | `0xf8f60bf9456a6e0141149db2dd6f02c60da5779b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf9ce1d98002c1eb618dcd01017e944c43cc46892` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-263478 | `0xfeae2f855250c36a77b8c68db07c4dd9711fe36f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x10f598f16c20902fbc74a56363ae526a7e3afddd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x14785e5e3650f0603ee17401c9890de380713914` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1ba4eb0f44ab82541e56669e18972b0d6037dfe0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-263439 | `0x1deb47dcc9a35ad454bf7f0fcdb03c09792c08c1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-263440 | `0x1e9eb053228b1156831759401de0e115356b8671` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-263441 | `0x2a139a2812f1424f0c88e3d73854b16fb04e9449` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-263442 | `0x3199437193625dccd6f9c9e98bdf93582200eb1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3d8f58774611676fd196d26149c71a9142c45296` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x50d5d1e53c62eb7e642748ef32231f88a1680f33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x54f9e41e61e6df68aed8796e7f23c2cbb5d11147` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5796698a29f3626c9fe13c4d3d3dee987c84ebb3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-263446 | `0x57aa88a0810dfe3f9b71a9b179dd8bf5f956c46a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-263448 | `0x6346282db8323a54e840c6c772b4399c9c655c0d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-263449 | `0x66a1a27f4b22dcaa24e427dcffbf0cddd9d35e0f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-263450 | `0x697bc6bd64677be63240262869dd5f2a3eeaccd3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x718eb2c1812953493713550de7dfff934aae7ab0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-263451 | `0x7aad416eb4e16a27b85e7076dd56742a44e9d25b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8273217252254ad7353f227aaecd2b1c4a326fa2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-263452 | `0x84654e35e504452769757aae5a8c7c6599cbf954` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-263453 | `0x88ba032be87d5ef1fbe87336b7090767f367bf73` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-263454 | `0x8a5f0876b217ee61d101e022bb00d032e6d353bc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-263456 | `0x94734ba0f9f8c2464d963a402743fd79b402efd7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-263457 | `0x9ab47be62631036cda3a64b8322704988427f366` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9fade5ab6e043edb121bd735b72f1dab512ca427` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xaf6a3dae16915a281295725a9db06b1146f8d830` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-263458 | `0xb6bc033d34733329971b938fef32fad7e98e56ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb8caf6204c4559a2eb78f6aa14a9595f99c8b633` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbb241fd9a2a3742ef9e10ccfd8a6c4e0ebeb03f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc7fa27fb290098f7284e0c6a41332f8ca62f36c5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-263459 | `0xcad10033c86b0c1ed6bfccaa2ff6779938558e9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcc56cde489b6ba61e37963d8f378d3045c59fedf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdb8bbf2b0e28721f9bac603e687e39bcf52201f8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-263460 | `0xdf43263dfec19117f2fe79d1d9842a10c7495ccd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe1c1500f8f62837045de4b5bb844b4d3092fc271` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-263461 | `0xe55dd55b3355c261a048b3f310706c7478657d74` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-263462 | `0xf5875d60241c8f6448649206a6f485b812acf44d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-263463 | `0xf8f60bf9456a6e0141149db2dd6f02c60da5779b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf900ea42c55d165ca5d5f50883cddd352ae48f40` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-263464 | `0xfd99a19fcf577be92fdab4ef162c1644bb056885` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfdbdfff9364bf4aa17af3e053814ac6a861c4dca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfe6f1139c3c34e4af065e67f150e32c9a9aff7bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xff72f7c5f64ec2fd79b57d1a69c3311c1bb3eef1` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 1274
- Live contracts: 0
- Unknown liveness contracts: 1274
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: unverified unclassified=1274

Showing first 200 of 1274 contracts. The complete deployer expansion list is in `brief.json`.

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| arbitrum | unverified unclassified | UnnamedContract<br>`0x14785e5e3650f0603ee17401c9890de380713914` | non_address_book | unknown | unknown | unverified | n/a | `0x52caad150d6b1cd7b010000a30552027e01a4ea6` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xf900ea42c55d165ca5d5f50883cddd352ae48f40` | non_address_book | unknown | unknown | unverified | n/a | `0x52caad150d6b1cd7b010000a30552027e01a4ea6` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xc7fa27fb290098f7284e0c6a41332f8ca62f36c5` | non_address_book | unknown | unknown | unverified | n/a | `0x78d4bdebc0b4140f01bab63085f94a5a7a1294f2` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x54f9e41e61e6df68aed8796e7f23c2cbb5d11147` | non_address_book | unknown | unknown | unverified | n/a | `0xb865aaf1f9f60630934739595f183c4900f65ed9` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x718eb2c1812953493713550de7dfff934aae7ab0` | non_address_book | unknown | unknown | unverified | n/a | `0xb865aaf1f9f60630934739595f183c4900f65ed9` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xb8caf6204c4559a2eb78f6aa14a9595f99c8b633` | non_address_book | unknown | unknown | unverified | n/a | `0xb865aaf1f9f60630934739595f183c4900f65ed9` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xcc56cde489b6ba61e37963d8f378d3045c59fedf` | non_address_book | unknown | unknown | unverified | n/a | `0xb865aaf1f9f60630934739595f183c4900f65ed9` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xe1c1500f8f62837045de4b5bb844b4d3092fc271` | non_address_book | unknown | unknown | unverified | n/a | `0xb865aaf1f9f60630934739595f183c4900f65ed9` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xfdbdfff9364bf4aa17af3e053814ac6a861c4dca` | non_address_book | unknown | unknown | unverified | n/a | `0xb865aaf1f9f60630934739595f183c4900f65ed9` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xfe6f1139c3c34e4af065e67f150e32c9a9aff7bd` | non_address_book | unknown | unknown | unverified | n/a | `0xb865aaf1f9f60630934739595f183c4900f65ed9` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xff72f7c5f64ec2fd79b57d1a69c3311c1bb3eef1` | non_address_book | unknown | unknown | unverified | n/a | `0xb865aaf1f9f60630934739595f183c4900f65ed9` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xaf6a3dae16915a281295725a9db06b1146f8d830` | non_address_book | unknown | unknown | unverified | n/a | `0xb8ed09284cf29995db6d9896bea934353d99b8df` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x1ba4eb0f44ab82541e56669e18972b0d6037dfe0` | non_address_book | unknown | unknown | unverified | n/a | `0xc6387e937bcef8de3334f80edc623275d42457ff` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x3d8f58774611676fd196d26149c71a9142c45296` | non_address_book | unknown | unknown | unverified | n/a | `0xc6387e937bcef8de3334f80edc623275d42457ff` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x50d5d1e53c62eb7e642748ef32231f88a1680f33` | non_address_book | unknown | unknown | unverified | n/a | `0xc6387e937bcef8de3334f80edc623275d42457ff` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x8273217252254ad7353f227aaecd2b1c4a326fa2` | non_address_book | unknown | unknown | unverified | n/a | `0xc6387e937bcef8de3334f80edc623275d42457ff` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xdb8bbf2b0e28721f9bac603e687e39bcf52201f8` | non_address_book | unknown | unknown | unverified | n/a | `0xc6387e937bcef8de3334f80edc623275d42457ff` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x10f598f16c20902fbc74a56363ae526a7e3afddd` | non_address_book | unknown | unknown | unverified | n/a | `0xd20eb2390e675b000adb8511f62b28404115a1a4` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x5796698a29f3626c9fe13c4d3d3dee987c84ebb3` | non_address_book | unknown | unknown | unverified | n/a | `0xd20eb2390e675b000adb8511f62b28404115a1a4` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x9fade5ab6e043edb121bd735b72f1dab512ca427` | non_address_book | unknown | unknown | unverified | n/a | `0xd20eb2390e675b000adb8511f62b28404115a1a4` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xbb241fd9a2a3742ef9e10ccfd8a6c4e0ebeb03f2` | non_address_book | unknown | unknown | unverified | n/a | `0xd20eb2390e675b000adb8511f62b28404115a1a4` |
| base | unverified unclassified | UnnamedContract<br>`0x06ea31f5214568b841fa1252a38fac9f98c47fa4` | non_address_book | unknown | unknown | unverified | n/a | `0x78d4bdebc0b4140f01bab63085f94a5a7a1294f2` |
| base | unverified unclassified | UnnamedContract<br>`0x67f3d56ddb2393d331f6ad51e20a17b6243efa63` | non_address_book | unknown | unknown | unverified | n/a | `0x78d4bdebc0b4140f01bab63085f94a5a7a1294f2` |
| base | unverified unclassified | UnnamedContract<br>`0x00972d69f69d5258ae486524fd91b17227bb0d10` | non_address_book | unknown | unknown | unverified | n/a | `0xc6387e937bcef8de3334f80edc623275d42457ff` |
| base | unverified unclassified | UnnamedContract<br>`0x156bab355e81b498072c9ce3cf655e9844a12529` | non_address_book | unknown | unknown | unverified | n/a | `0xc6387e937bcef8de3334f80edc623275d42457ff` |
| base | unverified unclassified | UnnamedContract<br>`0x167aa4ba31b8285707d1489ad705cb24cf4e5186` | non_address_book | unknown | unknown | unverified | n/a | `0xc6387e937bcef8de3334f80edc623275d42457ff` |
| base | unverified unclassified | UnnamedContract<br>`0x199c97a7258a6322bd64c4e92f9f4fa63a067c2a` | non_address_book | unknown | unknown | unverified | n/a | `0xc6387e937bcef8de3334f80edc623275d42457ff` |
| base | unverified unclassified | UnnamedContract<br>`0x21aaf096093422f60554f25fe993e44218733d68` | non_address_book | unknown | unknown | unverified | n/a | `0xc6387e937bcef8de3334f80edc623275d42457ff` |
| base | unverified unclassified | UnnamedContract<br>`0x2636a682ad0d46594af1207c402fb0d0759c4afc` | non_address_book | unknown | unknown | unverified | n/a | `0xc6387e937bcef8de3334f80edc623275d42457ff` |
| base | unverified unclassified | UnnamedContract<br>`0x298bd23e25c01440d68d4d2708bff6a7e10a1db5` | non_address_book | unknown | unknown | unverified | n/a | `0xc6387e937bcef8de3334f80edc623275d42457ff` |
| base | unverified unclassified | UnnamedContract<br>`0x39013eaa9bfd511388654c3698b4c9dcc7f277af` | non_address_book | unknown | unknown | unverified | n/a | `0xc6387e937bcef8de3334f80edc623275d42457ff` |
| base | unverified unclassified | UnnamedContract<br>`0x421d065f587e28e3c6f2920b2d0ed76756bb82dd` | non_address_book | unknown | unknown | unverified | n/a | `0xc6387e937bcef8de3334f80edc623275d42457ff` |
| base | unverified unclassified | UnnamedContract<br>`0x587d2aab136ed873edb08fb9a4c9615a46feedbf` | non_address_book | unknown | unknown | unverified | n/a | `0xc6387e937bcef8de3334f80edc623275d42457ff` |
| base | unverified unclassified | UnnamedContract<br>`0x5be63bf19d30e48738b13f7b07d33839bb25044b` | non_address_book | unknown | unknown | unverified | n/a | `0xc6387e937bcef8de3334f80edc623275d42457ff` |
| base | unverified unclassified | UnnamedContract<br>`0x5ce2930f5709c7061ff0eb1527f2e7e7f7d29535` | non_address_book | unknown | unknown | unverified | n/a | `0xc6387e937bcef8de3334f80edc623275d42457ff` |
| base | unverified unclassified | UnnamedContract<br>`0x71be461149f4e810fbb494268b0485085ac9b911` | non_address_book | unknown | unknown | unverified | n/a | `0xc6387e937bcef8de3334f80edc623275d42457ff` |
| base | unverified unclassified | UnnamedContract<br>`0x7e9756e1427b3c38f001f9d272d8d62bef63d619` | non_address_book | unknown | unknown | unverified | n/a | `0xc6387e937bcef8de3334f80edc623275d42457ff` |
| base | unverified unclassified | UnnamedContract<br>`0x8120c06c6e44fffbe90011a51fb440802ba85dac` | non_address_book | unknown | unknown | unverified | n/a | `0xc6387e937bcef8de3334f80edc623275d42457ff` |
| base | unverified unclassified | UnnamedContract<br>`0x864e012e4eb2f28617b888278415f8ee3d6e1fcc` | non_address_book | unknown | unknown | unverified | n/a | `0xc6387e937bcef8de3334f80edc623275d42457ff` |
| base | unverified unclassified | UnnamedContract<br>`0x873bdba7b8a4ee64e8dd7da312de8f7feb93d2d8` | non_address_book | unknown | unknown | unverified | n/a | `0xc6387e937bcef8de3334f80edc623275d42457ff` |
| base | unverified unclassified | UnnamedContract<br>`0x967c06012abdf1b5bdf57b8d5362f4e5e7259f92` | non_address_book | unknown | unknown | unverified | n/a | `0xc6387e937bcef8de3334f80edc623275d42457ff` |
| base | unverified unclassified | UnnamedContract<br>`0x9f44aec110e5bddbca60b6b9692bf6caffc69ae7` | non_address_book | unknown | unknown | unverified | n/a | `0xc6387e937bcef8de3334f80edc623275d42457ff` |
| base | unverified unclassified | UnnamedContract<br>`0xa2bbb247b8722617792aadad029de07440a19939` | non_address_book | unknown | unknown | unverified | n/a | `0xc6387e937bcef8de3334f80edc623275d42457ff` |
| base | unverified unclassified | UnnamedContract<br>`0xacd0cea837a6e6f5824f4cac6467a67dff4b0868` | non_address_book | unknown | unknown | unverified | n/a | `0xc6387e937bcef8de3334f80edc623275d42457ff` |
| base | unverified unclassified | UnnamedContract<br>`0xaf29e168bcd8e3417ce23f0ac107c8590cd77206` | non_address_book | unknown | unknown | unverified | n/a | `0xc6387e937bcef8de3334f80edc623275d42457ff` |
| base | unverified unclassified | UnnamedContract<br>`0xafc227d9da92e12de07b916767a91c1fdbdfb534` | non_address_book | unknown | unknown | unverified | n/a | `0xc6387e937bcef8de3334f80edc623275d42457ff` |
| base | unverified unclassified | UnnamedContract<br>`0xbf95291ca94d95a009b359cf4580cb48bb9d8cef` | non_address_book | unknown | unknown | unverified | n/a | `0xc6387e937bcef8de3334f80edc623275d42457ff` |
| base | unverified unclassified | UnnamedContract<br>`0xd3a93c794ee2798d8f7906493cd3c2a835aa0074` | non_address_book | unknown | unknown | unverified | n/a | `0xc6387e937bcef8de3334f80edc623275d42457ff` |
| base | unverified unclassified | UnnamedContract<br>`0xd78dff76701f12f11dd8a4bc190ee3bb7635dcb0` | non_address_book | unknown | unknown | unverified | n/a | `0xc6387e937bcef8de3334f80edc623275d42457ff` |
| base | unverified unclassified | UnnamedContract<br>`0xd83a1edc34de345ba58b02802da9cda5a8d7d1c5` | non_address_book | unknown | unknown | unverified | n/a | `0xc6387e937bcef8de3334f80edc623275d42457ff` |
| base | unverified unclassified | UnnamedContract<br>`0xd9ca6b6e09bf8da4d26bedb0b9718390bc10bd21` | non_address_book | unknown | unknown | unverified | n/a | `0xc6387e937bcef8de3334f80edc623275d42457ff` |
| base | unverified unclassified | UnnamedContract<br>`0xe0f3d78db7bc111996864a32d22ab0f59ca5fa86` | non_address_book | unknown | unknown | unverified | n/a | `0xc6387e937bcef8de3334f80edc623275d42457ff` |
| base | unverified unclassified | UnnamedContract<br>`0xf56f360b735ddb14d4110815f05574b47eaae991` | non_address_book | unknown | unknown | unverified | n/a | `0xc6387e937bcef8de3334f80edc623275d42457ff` |
| base | unverified unclassified | UnnamedContract<br>`0xf9ce1d98002c1eb618dcd01017e944c43cc46892` | non_address_book | unknown | unknown | unverified | n/a | `0xc6387e937bcef8de3334f80edc623275d42457ff` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x200eb59687142ebfea594ebcad7da1485e9a2d66` | non_address_book | unknown | unknown | unverified | n/a | `0x0b634a8d61b09820e9f72f79cdcbc8a4d0aad26b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x23724d764d8b3d26852ba20d3bc2578093d2b022` | non_address_book | unknown | unknown | unverified | n/a | `0x0b634a8d61b09820e9f72f79cdcbc8a4d0aad26b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4694507ca1023194ea3ca4428f99eded7ab2b919` | non_address_book | unknown | unknown | unverified | n/a | `0x0b634a8d61b09820e9f72f79cdcbc8a4d0aad26b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4c1317326fd8efdebdbe5e1cd052010d97723bd6` | non_address_book | unknown | unknown | unverified | n/a | `0x0b634a8d61b09820e9f72f79cdcbc8a4d0aad26b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x677d438f3eda16ab3e5a78f5566f70e7d25878a5` | non_address_book | unknown | unknown | unverified | n/a | `0x0b634a8d61b09820e9f72f79cdcbc8a4d0aad26b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6b6003d4bc320ed25e8e2be49600ec1006676239` | non_address_book | unknown | unknown | unverified | n/a | `0x0b634a8d61b09820e9f72f79cdcbc8a4d0aad26b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6f3c2647f0c0fbccbaf74c400d886033f8c6d2e6` | non_address_book | unknown | unknown | unverified | n/a | `0x0b634a8d61b09820e9f72f79cdcbc8a4d0aad26b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x77ff318a33cf832671d2f9e0393cd1f854fe8111` | non_address_book | unknown | unknown | unverified | n/a | `0x0b634a8d61b09820e9f72f79cdcbc8a4d0aad26b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7fe508ee30316e3261079e2c81f4451e0445103b` | non_address_book | unknown | unknown | unverified | n/a | `0x0b634a8d61b09820e9f72f79cdcbc8a4d0aad26b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa5f565cfbf40464c18a1adf1d7203d9a1b5cee60` | non_address_book | unknown | unknown | unverified | n/a | `0x0b634a8d61b09820e9f72f79cdcbc8a4d0aad26b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xaf73a48e1d7e8300c91ffb74b8f5e721fbfc5873` | non_address_book | unknown | unknown | unverified | n/a | `0x0b634a8d61b09820e9f72f79cdcbc8a4d0aad26b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb3161b9ae1745973ef564b9acedefce5b457d74d` | non_address_book | unknown | unknown | unverified | n/a | `0x0b634a8d61b09820e9f72f79cdcbc8a4d0aad26b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xbd5743e90188a6e72d57a9b85756f56b7c333876` | non_address_book | unknown | unknown | unverified | n/a | `0x0b634a8d61b09820e9f72f79cdcbc8a4d0aad26b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd7240b32d24b814fe52946cd44d94a2e3532e63d` | non_address_book | unknown | unknown | unverified | n/a | `0x0b634a8d61b09820e9f72f79cdcbc8a4d0aad26b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xda18f789a1d9ad33e891253660fcf1332d236b29` | non_address_book | unknown | unknown | unverified | n/a | `0x0b634a8d61b09820e9f72f79cdcbc8a4d0aad26b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xdf270b48829e0f05211f3a33e5dc0a84f7247fbe` | non_address_book | unknown | unknown | unverified | n/a | `0x0b634a8d61b09820e9f72f79cdcbc8a4d0aad26b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe7863292dd8ee5d215ec6d75ac00911d06e59b2d` | non_address_book | unknown | unknown | unverified | n/a | `0x0b634a8d61b09820e9f72f79cdcbc8a4d0aad26b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xec85c894be162268c834b784cc232398e3e89a12` | non_address_book | unknown | unknown | unverified | n/a | `0x0b634a8d61b09820e9f72f79cdcbc8a4d0aad26b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf290eebdc767b93354d54febc8867dd9e22fffc3` | non_address_book | unknown | unknown | unverified | n/a | `0x0b634a8d61b09820e9f72f79cdcbc8a4d0aad26b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf9d4c0c1d8062a75e630caec84226264da660582` | non_address_book | unknown | unknown | unverified | n/a | `0x0b634a8d61b09820e9f72f79cdcbc8a4d0aad26b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xff79e950e7806cca2b354c9a758b63161e5a9121` | non_address_book | unknown | unknown | unverified | n/a | `0x0b634a8d61b09820e9f72f79cdcbc8a4d0aad26b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x796ede20cf73ecf95fafef1a703c06a2955d4866` | non_address_book | unknown | unknown | unverified | n/a | `0x0bd007000e39076d1155e0d686a254ae228b17c9` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa7c724db7c53af7bc0580932b2da4c605b0d24b4` | non_address_book | unknown | unknown | unverified | n/a | `0x0bd007000e39076d1155e0d686a254ae228b17c9` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc1ea4783332a00625f04af65711c6c7e0ebbb8a9` | non_address_book | unknown | unknown | unverified | n/a | `0x0bd007000e39076d1155e0d686a254ae228b17c9` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd01ba134d6dbf9d2d6b6753e6137eef574882004` | non_address_book | unknown | unknown | unverified | n/a | `0x0bd007000e39076d1155e0d686a254ae228b17c9` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe260b149b6e244b8fa1c6d3fb06b972bd068f444` | non_address_book | unknown | unknown | unverified | n/a | `0x0bd007000e39076d1155e0d686a254ae228b17c9` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf8c8d9332f441e6d4f3e2731829717265c3e8ed1` | non_address_book | unknown | unknown | unverified | n/a | `0x0bd007000e39076d1155e0d686a254ae228b17c9` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0c285a680f23883b9fa23a138b49f41eb25d5076` | non_address_book | unknown | unknown | unverified | n/a | `0x0de5199779b43e13b3bec21e91117e18736bc1a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1250c0bb1e9d5831b052826b3eedb05cf91cca69` | non_address_book | unknown | unknown | unverified | n/a | `0x0de5199779b43e13b3bec21e91117e18736bc1a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x125fc0b592db2a21fea8a5f6b2f86b1d6417bf66` | non_address_book | unknown | unknown | unverified | n/a | `0x0de5199779b43e13b3bec21e91117e18736bc1a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x13c96b43d794a104fee1dae6e279cda38fa66e3f` | non_address_book | unknown | unknown | unverified | n/a | `0x0de5199779b43e13b3bec21e91117e18736bc1a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x26adfa81da92ce370c494c53d74b4dd3fc851a80` | non_address_book | unknown | unknown | unverified | n/a | `0x0de5199779b43e13b3bec21e91117e18736bc1a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x26f01fe3be55361b0643bc9d5d60980e37a2770d` | non_address_book | unknown | unknown | unverified | n/a | `0x0de5199779b43e13b3bec21e91117e18736bc1a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x277f763e2f87703386194e2a5b7e4f8ede49bb26` | non_address_book | unknown | unknown | unverified | n/a | `0x0de5199779b43e13b3bec21e91117e18736bc1a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x29c1328a0db4fe122db27d9360bdc522b178197d` | non_address_book | unknown | unknown | unverified | n/a | `0x0de5199779b43e13b3bec21e91117e18736bc1a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x333e204e54dea65d3f4a99917baba68af723735d` | non_address_book | unknown | unknown | unverified | n/a | `0x0de5199779b43e13b3bec21e91117e18736bc1a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3524809620b315403f91a1fb40416036f4853823` | non_address_book | unknown | unknown | unverified | n/a | `0x0de5199779b43e13b3bec21e91117e18736bc1a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3d27863670089841bbfd98b5440582b5958ecd55` | non_address_book | unknown | unknown | unverified | n/a | `0x0de5199779b43e13b3bec21e91117e18736bc1a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3dc56d46f0bd13655efb29594a2e44534c453bf9` | non_address_book | unknown | unknown | unverified | n/a | `0x0de5199779b43e13b3bec21e91117e18736bc1a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3e8c72655e48591d93e6dfda16823db0ff23d859` | non_address_book | unknown | unknown | unverified | n/a | `0x0de5199779b43e13b3bec21e91117e18736bc1a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3f3f0776d411eb97cfa4e3eb25f33c01ca4e7ca8` | non_address_book | unknown | unknown | unverified | n/a | `0x0de5199779b43e13b3bec21e91117e18736bc1a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x47b3262c96bb55a8d2e4f8e3fed29d2eab6db6e9` | non_address_book | unknown | unknown | unverified | n/a | `0x0de5199779b43e13b3bec21e91117e18736bc1a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x524a05c611248cc54140978d9dab7245cff257cb` | non_address_book | unknown | unknown | unverified | n/a | `0x0de5199779b43e13b3bec21e91117e18736bc1a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5a0fea914e71ef7313ed27dd560967e0bdc7fb55` | non_address_book | unknown | unknown | unverified | n/a | `0x0de5199779b43e13b3bec21e91117e18736bc1a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5adf559f5d24aacbe4fa3a3a4f44fdc7431e6b52` | non_address_book | unknown | unknown | unverified | n/a | `0x0de5199779b43e13b3bec21e91117e18736bc1a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x61542f1086ddada25661ca0a7f2f801d76499136` | non_address_book | unknown | unknown | unverified | n/a | `0x0de5199779b43e13b3bec21e91117e18736bc1a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x62e77710c63130ad2f4156dff8cb0ff591c23632` | non_address_book | unknown | unknown | unverified | n/a | `0x0de5199779b43e13b3bec21e91117e18736bc1a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6adb68d8c15954ad673d8f129857b34dc2f08bf2` | non_address_book | unknown | unknown | unverified | n/a | `0x0de5199779b43e13b3bec21e91117e18736bc1a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6c3ecd3d10f792a3f320ff940cd14e634960f961` | non_address_book | unknown | unknown | unverified | n/a | `0x0de5199779b43e13b3bec21e91117e18736bc1a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6f30f55d6c8dbca8f010dadb03a8366e6ba7e548` | non_address_book | unknown | unknown | unverified | n/a | `0x0de5199779b43e13b3bec21e91117e18736bc1a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7f047e9d15b2a5937399f5f39e943a989d952aed` | non_address_book | unknown | unknown | unverified | n/a | `0x0de5199779b43e13b3bec21e91117e18736bc1a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x821709930982734c46ad6be4463ff3416f7254bb` | non_address_book | unknown | unknown | unverified | n/a | `0x0de5199779b43e13b3bec21e91117e18736bc1a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x825ba129b3ea1ddc265708fcbb9dd660fdd2ef73` | non_address_book | unknown | unknown | unverified | n/a | `0x0de5199779b43e13b3bec21e91117e18736bc1a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x86988951ec019ba56155d26e67f11ec7ac780d9d` | non_address_book | unknown | unknown | unverified | n/a | `0x0de5199779b43e13b3bec21e91117e18736bc1a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8cc02f4f383a11b989708437dba6bb0628d7ee78` | non_address_book | unknown | unknown | unverified | n/a | `0x0de5199779b43e13b3bec21e91117e18736bc1a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8dc551b4f5203b51b5366578f42060666d42ab5e` | non_address_book | unknown | unknown | unverified | n/a | `0x0de5199779b43e13b3bec21e91117e18736bc1a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x90068d8c21cb632cc14cf1ddc8427c1a71ad5880` | non_address_book | unknown | unknown | unverified | n/a | `0x0de5199779b43e13b3bec21e91117e18736bc1a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x991c79db98da75ead9f47286b64f63b878c52354` | non_address_book | unknown | unknown | unverified | n/a | `0x0de5199779b43e13b3bec21e91117e18736bc1a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9c99dffc1de1aff7e7c1f36fcdd49063a281e18c` | non_address_book | unknown | unknown | unverified | n/a | `0x0de5199779b43e13b3bec21e91117e18736bc1a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9c9d06c7378909c6d0a2a0017bb409f7fb8004e0` | non_address_book | unknown | unknown | unverified | n/a | `0x0de5199779b43e13b3bec21e91117e18736bc1a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9dcd1d43e8d3f4c9fefcd2023643480069a38e94` | non_address_book | unknown | unknown | unverified | n/a | `0x0de5199779b43e13b3bec21e91117e18736bc1a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa291faeef794df6216f196a63f514b5b22244865` | non_address_book | unknown | unknown | unverified | n/a | `0x0de5199779b43e13b3bec21e91117e18736bc1a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa74aa48e5401d8ebfbff24bddaad0057e5558d56` | non_address_book | unknown | unknown | unverified | n/a | `0x0de5199779b43e13b3bec21e91117e18736bc1a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa9f2f220376b21bb484b16bb453698e82cbc2ad5` | non_address_book | unknown | unknown | unverified | n/a | `0x0de5199779b43e13b3bec21e91117e18736bc1a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xae36c604e17ac9016e926e4920c57cd492f612d4` | non_address_book | unknown | unknown | unverified | n/a | `0x0de5199779b43e13b3bec21e91117e18736bc1a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb787120bc5c9e062bf806f74837284caa0a5740b` | non_address_book | unknown | unknown | unverified | n/a | `0x0de5199779b43e13b3bec21e91117e18736bc1a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xbcbba9f1b479ac12087da21721ac9df22b924535` | non_address_book | unknown | unknown | unverified | n/a | `0x0de5199779b43e13b3bec21e91117e18736bc1a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc19d317c84e43f93ffeba146f4f116a6f2b04663` | non_address_book | unknown | unknown | unverified | n/a | `0x0de5199779b43e13b3bec21e91117e18736bc1a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc50f67db3a63641a57d2d3de9fda6767e999efe5` | non_address_book | unknown | unknown | unverified | n/a | `0x0de5199779b43e13b3bec21e91117e18736bc1a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xcc640eaf32bd2ac28a6dd546eb2d713c3bcaf321` | non_address_book | unknown | unknown | unverified | n/a | `0x0de5199779b43e13b3bec21e91117e18736bc1a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd1c9d16b4a803f1336650f17eb99b47b1fc90038` | non_address_book | unknown | unknown | unverified | n/a | `0x0de5199779b43e13b3bec21e91117e18736bc1a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd4525e29111edd74eaa425ab4c0bc507be3ac69f` | non_address_book | unknown | unknown | unverified | n/a | `0x0de5199779b43e13b3bec21e91117e18736bc1a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd6c227d7aa320a139f1e4631a30dbd13500149dc` | non_address_book | unknown | unknown | unverified | n/a | `0x0de5199779b43e13b3bec21e91117e18736bc1a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe58101d3848e12dad6d7b5981dc11411bb267d2f` | non_address_book | unknown | unknown | unverified | n/a | `0x0de5199779b43e13b3bec21e91117e18736bc1a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf24d8651578a55b0c119b9910759a351a3458895` | non_address_book | unknown | unknown | unverified | n/a | `0x0de5199779b43e13b3bec21e91117e18736bc1a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf6f12effb70a9a5372dc9ea6848991799bb3ff96` | non_address_book | unknown | unknown | unverified | n/a | `0x0de5199779b43e13b3bec21e91117e18736bc1a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf7b80ea9af99545523d0b1c93a288a7566d7a6d3` | non_address_book | unknown | unknown | unverified | n/a | `0x0de5199779b43e13b3bec21e91117e18736bc1a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf82b7e957f4487d1ea905135269c22e2fc4a7b8c` | non_address_book | unknown | unknown | unverified | n/a | `0x0de5199779b43e13b3bec21e91117e18736bc1a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf980b8a714ce0ccb049f2890494b068cec715c3f` | non_address_book | unknown | unknown | unverified | n/a | `0x0de5199779b43e13b3bec21e91117e18736bc1a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfe4f78c47dc96f88392c96df589d4e8d42cf9d90` | non_address_book | unknown | unknown | unverified | n/a | `0x0de5199779b43e13b3bec21e91117e18736bc1a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfe55fd115cc33af63afcc22b8ce7029b9d59dc98` | non_address_book | unknown | unknown | unverified | n/a | `0x0de5199779b43e13b3bec21e91117e18736bc1a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x00e5c0774a5f065c285068170b20393925c84bf3` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x011a014d5e8eb4771e575bb1000318d509230afa` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x014872728e7d8b1c6781f96ecfbd262ea4d2e1a6` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x018a82a5bd6e0a4ae8c5cf54527775d17d9ff5ab` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x01ae37a333d842428c668d6cc7130e552acab2b1` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x01da76dea59703578040012357b81ffe62015c2d` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x04be8ea0c82ad864a01f977e07692afca8984766` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x054b7ed3f45714d3091e82aad64a1588dc4096ed` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x06091717521c2002f2859c75f53987eaf1e5aa2f` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x081fe64df6dc6fc70043aedf3713a3ce6f190a21` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x09bdcce2593f0bef0991188c25fb744897b6572d` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x09db988a691dc2ed8afd69884975da45f6c7b472` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0a7d7cf778ca3b0aa83136c228c1d8805861b20f` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0b471a71c3f6d4aadc7eb20aab7d730ae385e150` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0b4722779a0ed7d79101c0d251987e76d4151ffb` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0c5bf19618a8fcddb132d82bc6c5ea736a1beaed` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0ca0f068edad122f09a39f99e7e89e705d6f6ace` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0d3303ffaf107cd732396570bf07b2dbd79b619f` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0e821d855f4fc427200484ae42369b8a6611c2cb` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x10a3da2bb0fae4d591476fd97d6636fd172923a8` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x10fdbd1e48ee2fd9336a482d746138ae19e649db` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1232b1601419b8b9874683f680e793343f8cbda6` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1241b10e7ea55b22f5b2d007e8fecdf73dcff999` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x12a9cc33a980daa74e00cc2d1a0e74c57a93d12c` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x136d6f80bb3a853d151686bfed2c9309aea6ddec` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x14e45140ab7067d812ccbca506f032f384268a96` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1533ba49dd0a5c8cd9e2e3666dd11128e70b2bcb` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1676fc274b65966ed0c6438a26d34c6c92a5981c` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x17107f40d70f4470d20cb3f138a052cae8ebd4be` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x197070723ce0d3810a0e47f06e935c30a480d4fc` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x19940fa6926d7b1ee937b3987970d48820781fc3` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x19d1666f543d42ef17f66e376944a22aea1a8e46` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1a122348b73b58ea39f822a89e6ec67950c2bbd0` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1a9e503562ce800ea8e68e2cf0cfa0aec2edb509` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1b0c2586df3daad42ac2fdcaa0f6b91623747556` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1b3e95e8ecf7a7cab6c4de1b344f94865abd12d5` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1bcafa2c1b3a522e41baa60c2e318981ea8d1eb5` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1c8645bec146ae9a3489fc5821b69c9191577331` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1d0986fb43985c88ffa9ad959cc24e6a087c7e35` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1d8e3881cc063e593673625bbb9e5191be61ae3c` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1d919a8f5d9584cbc89430de6b5b0dcb26b9b858` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1e5fe7bad3672d0d0cc041b7154331ee461c3349` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1eee7ec51083228869b95b2ad2d7cc105e7b5539` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1f9b4756b008106c806c7e64322d7ed3b72cb284` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1ff8cdb51219a8838b52e9cac09b71e591bc998e` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x209a6919956c35201c1488addcd8dc5a1d5c3c53` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x21011bc93d9e515b9511a817a1ed1d6d468f49fc` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x215f34af6557a6598dbda9aa11cc556f5ae264b1` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x218e5bbc524479d5c593931692019bb026ff6117` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x224061756c150e5048a1e4a3e6e066db35037462` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x226f3738238932ba0db2319a8117d9555446102f` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x228619cca194fbe3ebeb2f835ec1ea5080dafbb2` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x22b243b96495c547598d9042b6f94b01c22b2e9e` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x24e45b60e13b6f96e983bb01ea1326fa5169ccd5` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x250fb308199fe8c5220509c1bf83d21d60b7f74a` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x25555933a8246ab67cbf907ce3d1949884e82b55` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2689008dcda0c2b744b344b9e5a3d5a042c227da` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x26c325c8880ffe5a5744ff667ba7d8651b868710` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x27260eeb2a6c382a6e7d14b8991892790ca929bb` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x28526bb33d7230e65e735db64296413731c5402e` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2939f9236574cd6658c18b35a8aaf6b7e9ccff07` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x29791bef310305d15b8fa4cd57953bd8db805305` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x297d4da727fbc629252845e96538fc46167e453a` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x299e254a8a165bbeb76d9d69305013329eea3a3b` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2a537fa9ffaea8c1a41d3c2b68a9cb791529366d` | non_address_book | unknown | unknown | unverified | n/a | `0x197939c1ca20c2b506d6811d8b6cdb3394471074` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [DL audit link](https://www.chainsecurity.com/security-audit/yearn-yeth-smart-contracts) | ChainSecurity | Audit | n/a | unknown | Direct | contract_name | matched | 1 | 0 | 0 | 0 | low |
| [download report](https://reports.chainsecurity.com/Yearn/ChainSecurity_Yearn_YearnYETH_Audit.pdf) | ChainSecurity | Audit | 2023-06 | stale | Direct | contract_name | matched | 2 | 0 | 0 | 1 | high |
| [DL audit link](https://www.chainsecurity.com/security-audit/yearn-yeth-periphery) | ChainSecurity | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [download report](https://reports.chainsecurity.com/Yearn/ChainSecurity_Yearn_YDiscount_Audit.pdf) | ChainSecurity | Audit | 2023-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [DL audit link](https://www.chainsecurity.com/security-audit/yearn-yeth-governance) | ChainSecurity | Audit | n/a | unknown | Direct | contract_name | no match | 0 | 0 | 0 | 1 | low |
| [download report](https://reports.chainsecurity.com/Yearn/ChainSecurity_Yearn_YETHGovernance_Audit.pdf) | ChainSecurity | Audit | 2023-11 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 10 | high |
| [Yearn Finance yETH-bootstrap Security Audit Report.pdf](https://github.com/mixbytes/audits_public/blob/master/Yearn%20Finance/yETH-bootstrap/Yearn%20Finance%20yETH-bootstrap%20Security%20Audit%20Report.pdf) | yAudit | Audit | 2023-07 | stale | Direct | address | matched | 5 | 0 | 0 | 2 | high |
| [StrategyCurveYCRV.sol - HackMD.pdf](https://github.com/yearn/yearn-security/blob/master/audits/202000_Mixed_yearn-finance/StrategyCurveYCRV.sol%20-%20HackMD.pdf) | unknown | Audit | n/a | unknown | Direct | contract_name | no match | 0 | 0 | 0 | 1 | low |
| [YearnV2_ our gotcha notes - HackMD.pdf](https://github.com/yearn/yearn-security/blob/master/audits/202000_Mixed_yearn-finance/YearnV2_%20our%20gotcha%20notes%20-%20HackMD.pdf) | unknown | Audit | n/a | unknown | Direct | address | no match | 0 | 0 | 0 | 5 | medium |
| [Certik - itoken-finance-audit-report-1.1.0.pdf](https://github.com/yearn/yearn-security/blob/master/audits/202002_Certik_itoken/Certik%20-%20itoken-finance-audit-report-1.1.0.pdf) | CertiK | Audit | 2020-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Quantstamp - Yearn.Finance Security Review.pdf](https://github.com/yearn/yearn-security/blob/master/audits/202007_Quantstamp_yearn-finance/Quantstamp%20-%20Yearn.Finance%20Security%20Review.pdf) | Quantstamp | Audit | 2020-07 | stale | Direct | address | matched | 1 | 0 | 0 | 5 | high |
| [MixBytes - Timeloans.Finance Smart Contract Security Audit Report.pdf](https://github.com/yearn/yearn-security/blob/master/audits/202011_MixBytes_timeloans-finance/MixBytes%20-%20Timeloans.Finance%20Smart%20Contract%20Security%20Audit%20Report.pdf) | yAudit | Audit | 2020-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [MixBytes - Yearn.Finance protocol v.1 Smart Contracts Audit Security Audit Report.pdf](https://github.com/yearn/yearn-security/blob/master/audits/202011_MixBytes_vaultsv1/MixBytes%20-%20Yearn.Finance%20protocol%20v.1%20Smart%20Contracts%20Audit%20Security%20Audit%20Report.pdf) | yAudit | Audit | 2020-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 14 | high |
| [MixBytes_Yearn_Vault_v_2_Smart_Contract_Audit_Report_Solidity_part.pdf](https://github.com/yearn/yearn-security/blob/master/audits/202012_MixBytes_yearn-vaults/MixBytes_Yearn_Vault_v_2_Smart_Contract_Audit_Report_Solidity_part.pdf) | MixBytes | Audit | 2020-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [MixBytes_Yearn_Vault_v_2_Smart_Contract_Audit_Report_Vyper_part.pdf](https://github.com/yearn/yearn-security/blob/master/audits/202012_MixBytes_yearn-vaults/MixBytes_Yearn_Vault_v_2_Smart_Contract_Audit_Report_Vyper_part.pdf) | MixBytes | Audit | 2020-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [MixBytes_Yoracle_link_Smart_Contracts_Audit_Report.pdf](https://github.com/yearn/yearn-security/blob/master/audits/202012_MixBytes_yoracle-link/MixBytes_Yoracle_link_Smart_Contracts_Audit_Report.pdf) | MixBytes | Audit | 2020-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [PeckShield_Yearn_Strategies_v_2_Hegic_and_Dai_Smart_Contracts_Audit_Report.pdf](https://github.com/yearn/yearn-security/blob/master/audits/202101_Peckshield_yearn-strategies/PeckShield_Yearn_Strategies_v_2_Hegic_and_Dai_Smart_Contracts_Audit_Report.pdf) | PeckShield | Audit | 2021-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [Mixbytes_Cover_Protocol_v2_Security_Audit_Report.pdf](https://github.com/yearn/yearn-security/blob/master/audits/202102_MixBytes_coverv2/Mixbytes_Cover_Protocol_v2_Security_Audit_Report.pdf) | MixBytes | Audit | 2021-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 21 | high |
| [202102_MixBytes_sushiswap-bentobox.pdf](https://github.com/yearn/yearn-security/blob/master/audits/202102_MixBytes_sushiswap-bentobox/202102_MixBytes_sushiswap-bentobox.pdf) | MixBytes | Audit | 2021-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 14 | high |
| [MixBytes_YearnV2_generic_lender_strat_Smart_Contracts_Security_Audit_Report.pdf](https://github.com/yearn/yearn-security/blob/master/audits/202102_MixBytes_yearn-generic-lender/MixBytes_YearnV2_generic_lender_strat_Smart_Contracts_Security_Audit_Report.pdf) | MixBytes | Audit | 2021-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |
| [PeckShield_Audit_Report_CoverForge_v1.0.pdf](https://github.com/yearn/yearn-security/blob/master/audits/202102_Peckshield_cover-forge/PeckShield_Audit_Report_CoverForge_v1.0.pdf) | PeckShield | Audit | 2021-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | medium |
| [MixBytes_-_Yearn_Stablecoins_3pool_Contracts_Audit_Report.pdf](https://github.com/yearn/yearn-security/blob/master/audits/202103_MixBytes_yearn-ypool-3pool/MixBytes_-_Yearn_Stablecoins_3pool_Contracts_Audit_Report.pdf) | MixBytes | Audit | 2021-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [MixBytes_-_Yearn_Stablecoins_Ypool_Contracts_Audit_Report.pdf](https://github.com/yearn/yearn-security/blob/master/audits/202103_MixBytes_yearn-ypool-3pool/MixBytes_-_Yearn_Stablecoins_Ypool_Contracts_Audit_Report.pdf) | MixBytes | Audit | 2021-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [MixBytes_-_Curve_Voter_Proxy_Security_Audit_Report.pdf](https://github.com/yearn/yearn-security/blob/master/audits/20210423_MixBytes_yearn_curve_voter_proxy/MixBytes_-_Curve_Voter_Proxy_Security_Audit_Report.pdf) | MixBytes | Audit | 2021-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [MixBytes_-_Yearn_Generic_Lender_Aave_Contracts_Audit_Report.pdf](https://github.com/yearn/yearn-security/blob/master/audits/20210428_MixBytes_yearn_generic_lender_aave/MixBytes_-_Yearn_Generic_Lender_Aave_Contracts_Audit_Report.pdf) | MixBytes | Audit | 2021-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [MixBytes_-_Yearn_Vault_v.3_Wrapper_Smart_Contracts_Audit_Report.pdf](https://github.com/yearn/yearn-security/blob/master/audits/202104_MixBytes_yearn-v3-wrapper/MixBytes_-_Yearn_Vault_v.3_Wrapper_Smart_Contracts_Audit_Report.pdf) | MixBytes | Audit | 2021-04 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 2 | high |
| [MixBytes_-_Yearn_Yvboost_Contracts_Audit_Report.pdf](https://github.com/yearn/yearn-security/blob/master/audits/202104_MixBytes_yearn-yvboost/MixBytes_-_Yearn_Yvboost_Contracts_Audit_Report.pdf) | MixBytes | Audit | 2021-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [MixBytes_-_Yearn_Strategies_SNX_Contracts_Audit_Report.pdf](https://github.com/yearn/yearn-security/blob/master/audits/20210526_MixBytes_yearn_strategies_snx/MixBytes_-_Yearn_Strategies_SNX_Contracts_Audit_Report.pdf) | MixBytes | Audit | 2021-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [MixBytes_-_Yearn_Liquity_stability_pool_Security_Audit_Report.pdf](https://github.com/yearn/yearn-security/blob/master/audits/20210616_MixBytes_yearn_liquity_stabily_pool/MixBytes_-_Yearn_Liquity_stability_pool_Security_Audit_Report.pdf) | MixBytes | Audit | 2021-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [ToB_-_Yearn_Vault_v_2_Smart_Contracts_Audit_Report.pdf](https://github.com/yearn/yearn-security/blob/master/audits/20210719_ToB_yearn_vaultsv2/ToB_-_Yearn_Vault_v_2_Smart_Contracts_Audit_Report.pdf) | Trail of Bits | Audit | 2021-04 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 5 | high |
| [MixBytes_-_Yearn_Maker_Dai_Delegate_Security_Audit_Report.pdf](https://github.com/yearn/yearn-security/blob/master/audits/20211019_MixBytes_yearn_maker_dai_delegate/MixBytes_-_Yearn_Maker_Dai_Delegate_Security_Audit_Report.pdf) | MixBytes | Audit | 2021-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [ChainSecurity_-_Yearn_Finance_Partner_Tracker_Audit.pdf](https://github.com/yearn/yearn-security/blob/master/audits/20220123_ChainSecurity_yearn_partner_tracker/ChainSecurity_-_Yearn_Finance_Partner_Tracker_Audit.pdf) | ChainSecurity | Audit | 2022-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | medium |
| [Mixbytes_-_Yearn_Strategy_SSB_Security_Audit_Report.pdf](https://github.com/yearn/yearn-security/blob/master/audits/20220123_Mixbytes_yearn_strategy_ssb/Mixbytes_-_Yearn_Strategy_SSB_Security_Audit_Report.pdf) | MixBytes | Audit | 2021-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Optimum_-_Yearn_Tokemak_Strategy_Security_Assessment.pdf](https://github.com/yearn/yearn-security/blob/master/audits/202202_Optimum_Tokemak/Optimum_-_Yearn_Tokemak_Strategy_Security_Assessment.pdf) | Optimum | Audit | 2022-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Mixbytes_-_Yearn_Joint_Strategy_Security_Audit_Report.pdf](https://github.com/yearn/yearn-security/blob/master/audits/20220409_Mixbytes_Yearn_Joint_Strategy/Mixbytes_-_Yearn_Joint_Strategy_Security_Audit_Report.pdf) | MixBytes | Audit | 2022-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [Mixbytes_-_Yearn_Yswaps_Security_Audit_Report.pdf](https://github.com/yearn/yearn-security/blob/master/audits/20220409_Mixbytes_Yearn_Yswaps/Mixbytes_-_Yearn_Yswaps_Security_Audit_Report.pdf) | MixBytes | Audit | 2022-02 | stale | Direct | address | no match | 0 | 0 | 0 | 20 | high |
| [Optimum_-_Notional_Finance_Strategy_Security_Assessment.pdf](https://github.com/yearn/yearn-security/blob/master/audits/20220409_Optimum_Notional_Finance_Strategy/Optimum_-_Notional_Finance_Strategy_Security_Assessment.pdf) | Optimum | Audit | 2022-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Dedaub_-_Angle.md](https://github.com/yearn/yearn-security/blob/master/audits/202204_Dedaub_Angle/Dedaub_-_Angle.md) | Dedaub | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Dedaub_-_Stargate.md](https://github.com/yearn/yearn-security/blob/master/audits/202204_Dedaub_Stargate/Dedaub_-_Stargate.md) | Dedaub | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Optimum_-_Gen_lev_lending_Strategy_Security_Assessment.pdf](https://github.com/yearn/yearn-security/blob/master/audits/20220511_Optimum_Gen_lev_lending_Strategy/Optimum_-_Gen_lev_lending_Strategy_Security_Assessment.pdf) | Optimum | Audit | 2022-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Optimum_-_Stargate_Strategy_Security_Assessment.pdf](https://github.com/yearn/yearn-security/blob/master/audits/20220528_Stargate_Strategy/Optimum_-_Stargate_Strategy_Security_Assessment.pdf) | Optimum | Audit | 2022-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Optimum_-_Uni_v3_Frax_Strategy_Security_Assessment.pdf](https://github.com/yearn/yearn-security/blob/master/audits/20220528_Stargate_Strategy/Optimum_-_Uni_v3_Frax_Strategy_Security_Assessment.pdf) | Optimum | Audit | 2022-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Decurity_-_No_Hedge_Joint_Strategy_Security_Audit_Report.pdf](https://github.com/yearn/yearn-security/blob/master/audits/202206_Decurity_yearn_nohedge_joint/Decurity_-_No_Hedge_Joint_Strategy_Security_Audit_Report.pdf) | Decurity | Audit | 2022-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [Optimum_-_Notional_Finance_LP_Strategy_Security_Assessment.pdf](https://github.com/yearn/yearn-security/blob/master/audits/202206_Optimum_Notional_LP/Optimum_-_Notional_Finance_LP_Strategy_Security_Assessment.pdf) | Optimum | Audit | 2022-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Optimum_-_Angle_Protocol_Strategy_Security_Assessment.pdf](https://github.com/yearn/yearn-security/blob/master/audits/202207_Optimum_Angle/Optimum_-_Angle_Protocol_Strategy_Security_Assessment.pdf) | Optimum | Audit | 2022-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Statemind_-_Yearn_veyfi_Audit.pdf](https://github.com/yearn/yearn-security/blob/master/audits/202207_Statemind_yearn-veyfi/Statemind_-_Yearn_veyfi_Audit.pdf) | Statemind | Audit | 2022-07 | stale | Direct | address | matched | 2 | 0 | 0 | 0 | high |
| [202208_Statemind_Tarot_Impermax.md](https://github.com/yearn/yearn-security/blob/master/audits/202208_Statemind_Tarot_Impermax/202208_Statemind_Tarot_Impermax.md) | Statemind | Audit | 2022-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [yAcademy_-_LevGeist_review.pdf](https://github.com/yearn/yearn-security/blob/master/audits/202208_yAcademy_strats/yAcademy_-_LevGeist_review.pdf) | yAcademy | Audit | 2021-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [yAcademy_-_Yearn_BalancerLpFactory_review.pdf](https://github.com/yearn/yearn-security/blob/master/audits/202208_yAcademy_strats/yAcademy_-_Yearn_BalancerLpFactory_review.pdf) | yAcademy | Audit | 2021-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [yAcademy_-_joint_strategy_review.pdf](https://github.com/yearn/yearn-security/blob/master/audits/202208_yAcademy_strats/yAcademy_-_joint_strategy_review.pdf) | yAcademy | Audit | 2022-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 12 | high |
| [yAcademy_-_yearn_veyfi_review.pdf](https://github.com/yearn/yearn-security/blob/master/audits/202208_yAcademy_yearn-veyfi/yAcademy_-_yearn_veyfi_review.pdf) | yAcademy | Audit | 2022-04 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 8 | high |
| [ChainSecurity_Yearn_Serpentor_audit.pdf](https://github.com/yearn/yearn-security/blob/master/audits/202209_ChainSecurity_yearn-serpentor/ChainSecurity_Yearn_Serpentor_audit.pdf) | ChainSecurity | Audit | 2022-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [ChainSecurity_-_Yearn_yCRV_and_ZapYCRV_Audit.pdf](https://github.com/yearn/yearn-security/blob/master/audits/202209_ChainSecurity_yearn-yCRV-and-ZapYCRV/ChainSecurity_-_Yearn_yCRV_and_ZapYCRV_Audit.pdf) | ChainSecurity | Audit | 2022-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [ChainSecurity_-_Yearn_veYFI_and_RewardPool_audit.pdf](https://github.com/yearn/yearn-security/blob/master/audits/202211_ChainSecurity_yearn-veYFI_and_RewardPool/ChainSecurity_-_Yearn_veYFI_and_RewardPool_audit.pdf) | ChainSecurity | Audit | 2022-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [ChainSecurity_Yearn_Yearn_yETH_audit.pdf](https://github.com/yearn/yearn-security/blob/master/audits/20230626_ChainSecurity_yeth_core/ChainSecurity_Yearn_Yearn_yETH_audit.pdf) | ChainSecurity | Audit | 2023-06 | stale | Direct | contract_name | matched | 2 | 0 | 0 | 1 | high |
| [Yearn Finance yETH-bootstrap Security Audit Report - Mixbytes.pdf](https://github.com/yearn/yearn-security/blob/master/audits/20230711_MixBytes_yeth-bootstrap/Yearn%20Finance%20yETH-bootstrap%20Security%20Audit%20Report%20-%20Mixbytes.pdf) | yAudit | Audit | 2023-07 | stale | Direct | address | matched | 5 | 0 | 0 | 2 | high |
| [ChainSecurity_Yearn_yETH_Periphery_audit.pdf](https://github.com/yearn/yearn-security/blob/master/audits/20230829_ChainSecurity_yeth_periphery/ChainSecurity_Yearn_yETH_Periphery_audit.pdf) | ChainSecurity | Audit | 2023-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [Yearn_Finance_Vesting_Escrow_Security_Audit_Report.pdf](https://github.com/yearn/yearn-security/blob/master/audits/20231013_Mixbytes_yearn_vesting_escrow/Yearn_Finance_Vesting_Escrow_Security_Audit_Report.pdf) | MixBytes | Audit | 2023-10 | stale | Direct | address | no match | 0 | 0 | 0 | 2 | high |
| [Yearn V3 report.pdf](https://github.com/yearn/yearn-security/blob/master/audits/20240502_Statemind_Yearn_V3/Yearn%20V3%20report.pdf) | Statemind | Audit | 2024-03 | stale | Direct | address | matched | 3 | 0 | 0 | 1 | high |
| [Yearn-Smart-Contract-Audit-_-Tokenized_Strategy_ChainSecurity.pdf](https://github.com/yearn/yearn-security/blob/master/audits/20240504_ChainSecurity_Yearn_V3/Yearn-Smart-Contract-Audit-_-Tokenized_Strategy_ChainSecurity.pdf) | ChainSecurity | Audit | 2023-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Yearn-Smart-Contract-Audit_V3_Vaults_-ChainSecurity.pdf](https://github.com/yearn/yearn-security/blob/master/audits/20240504_ChainSecurity_Yearn_V3/Yearn-Smart-Contract-Audit_V3_Vaults_-ChainSecurity.pdf) | ChainSecurity | Audit | 2023-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [06-2023-Yearn-Vault-V3_yAcademy_Reports.pdf](https://github.com/yearn/yearn-security/blob/master/audits/20240601_YAcademy_Yearn_V3/06-2023-Yearn-Vault-V3_yAcademy_Reports.pdf) | YAcademy | Audit | 2023-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [yearn-vaults-v3](https://github.com/yearn/yearn-vaults-v3) | unknown | Audit | n/a | unknown | Direct | contract_name | no match | 0 | 0 | 0 | 2 | low |
| [2020-09-25.md](https://github.com/yearn/yearn-security/blob/master/disclosures/2020-09-25.md) | unknown | Audit | 2020-09 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [2020-10-10.md](https://github.com/yearn/yearn-security/blob/master/disclosures/2020-10-10.md) | unknown | Audit | 2020-10 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [2020-10-30.md](https://github.com/yearn/yearn-security/blob/master/disclosures/2020-10-30.md) | unknown | Audit | 2020-10 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [2021-01-17.md](https://github.com/yearn/yearn-security/blob/master/disclosures/2021-01-17.md) | unknown | Audit | 2021-01 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [2021-02-04.md](https://github.com/yearn/yearn-security/blob/master/disclosures/2021-02-04.md) | unknown | Audit | 2021-02 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [2021-02-18.md](https://github.com/yearn/yearn-security/blob/master/disclosures/2021-02-18.md) | unknown | Audit | 2021-02 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [2021-04-02.md](https://github.com/yearn/yearn-security/blob/master/disclosures/2021-04-02.md) | unknown | Audit | 2021-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | medium |
| [2021-05-13.md](https://github.com/yearn/yearn-security/blob/master/disclosures/2021-05-13.md) | unknown | Audit | 2021-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | medium |
| [2021-05-14.md](https://github.com/yearn/yearn-security/blob/master/disclosures/2021-05-14.md) | unknown | Audit | 2021-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | low |
| [2021-05-20.md](https://github.com/yearn/yearn-security/blob/master/disclosures/2021-05-20.md) | unknown | Audit | 2021-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | low |
| [2021-06-29.md](https://github.com/yearn/yearn-security/blob/master/disclosures/2021-06-29.md) | unknown | Audit | 2021-06 | stale | Direct | address | no match | 0 | 0 | 0 | 5 | medium |
| [2021-10-27.md](https://github.com/yearn/yearn-security/blob/master/disclosures/2021-10-27.md) | unknown | Audit | 2021-10 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [2022-01-30.md](https://github.com/yearn/yearn-security/blob/master/disclosures/2022-01-30.md) | unknown | Audit | 2022-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | low |
| [2022-09-06.md](https://github.com/yearn/yearn-security/blob/master/disclosures/2022-09-06.md) | unknown | Audit | 2022-09 | stale | Direct | address | no match | 0 | 0 | 0 | 2 | medium |
| [2022-11-01.md](https://github.com/yearn/yearn-security/blob/master/disclosures/2022-11-01.md) | unknown | Audit | 2022-11 | stale | Direct | address | no match | 0 | 0 | 0 | 3 | high |
| [2022-11-07.md](https://github.com/yearn/yearn-security/blob/master/disclosures/2022-11-07.md) | unknown | Audit | 2022-11 | stale | Direct | address | no match | 0 | 0 | 0 | 1 | medium |
| [2023-03-13.md](https://github.com/yearn/yearn-security/blob/master/disclosures/2023-03-13.md) | unknown | Audit | 2023-03 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [2023-04-04.md](https://github.com/yearn/yearn-security/blob/master/disclosures/2023-04-04.md) | unknown | Audit | 2023-04 | stale | Direct | address | no match | 0 | 0 | 0 | 2 | high |
| [2023-05-21.md](https://github.com/yearn/yearn-security/blob/master/disclosures/2023-05-21.md) | unknown | Audit | 2023-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | low |
| [2023-06-13.md](https://github.com/yearn/yearn-security/blob/master/disclosures/2023-06-13.md) | unknown | Audit | 2023-06 | stale | Direct | address | no match | 0 | 0 | 0 | 1 | medium |
| [2023-12-11.md](https://github.com/yearn/yearn-security/blob/master/disclosures/2023-12-11.md) | unknown | Audit | 2023-12 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [2024-01-03.md](https://github.com/yearn/yearn-security/blob/master/disclosures/2024-01-03.md) | unknown | Audit | 2024-01 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [2025-05-08.md](https://github.com/yearn/yearn-security/blob/master/disclosures/2025-05-08.md) | unknown | Audit | 2025-05 | aging | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [2025-08-13.md](https://github.com/yearn/yearn-security/blob/master/disclosures/2025-08-13.md) | unknown | Audit | 2025-08 | fresh | Direct | address | no match | 0 | 0 | 0 | 4 | medium |
| [2025-11-26.md](https://github.com/yearn/yearn-security/blob/master/disclosures/2025-11-26.md) | unknown | Audit | 2025-11 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [2025-12-01.md](https://github.com/yearn/yearn-security/blob/master/disclosures/2025-12-01.md) | unknown | Audit | 2025-12 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [18629] DL audit link — matched: The report does not contain a clear scope section or file listing. Only one contract name ('Staking') is explicitly mentioned as part of the audited system. The pool token yETH is not a contract name but a token. No date found.
- [18630] download report — matched: Scope explicitly lists Pool.vy and Staking.vy; Token.vy is referenced as the yETH token contract.
- [18631] DL audit link — no match: No contracts in scope were explicitly listed in the provided text.
- [18632] download report — no match: Only one contract in scope: Discount.vy. Audit date from cover page.
- [18633] DL audit link — no match: Only one contract name (InclusionVote) was explicitly mentioned in the context of an issue. No scope section or file listing was found. The report mentions 'yETH governance' and 'st-yETH holders' but these are not contract names.
- [18634] download report — matched: All contracts listed in the scope table under section 2.1 Scope. Audit date from cover page.
- [18635] Yearn Finance yETH-bootstrap Security Audit Report.pdf — matched: Scope table lists 7 Vyper files with mainnet addresses. Audit date from cover page.
- [18636] StrategyCurveYCRV.sol - HackMD.pdf — no match: Only one contract name found in the report text, no explicit scope section or date.
- [18637] YearnV2_ our gotcha notes - HackMD.pdf — no match: The document is an informal analysis, not a formal audit report. No explicit scope section or date found. Contract names extracted from references and discussion.
- [18638] Certik - itoken-finance-audit-report-1.1.0.pdf — no match: Only one contract (yDAI) is explicitly in scope; providers are excluded.
- [18639] Quantstamp - Yearn.Finance Security Review.pdf — matched: Extracted contracts from scope descriptions and findings sections. Multiple instances of YearnRewards with different addresses.
- [18640] MixBytes - Timeloans.Finance Smart Contract Security Audit Report.pdf — no match: Only one contract, TimeLoans, is explicitly in scope. Date from cover page.
- [18641] MixBytes - Yearn.Finance protocol v.1 Smart Contracts Audit Security Audit Report.pdf — no match: Extracted from scope section and findings; includes contracts from yearn-protocol and yinsure gist.
- [18642] MixBytes_Yearn_Vault_v_2_Smart_Contract_Audit_Report_Solidity_part.pdf — no match: Only one contract in scope: BaseStrategy.sol
- [18643] MixBytes_Yearn_Vault_v_2_Smart_Contract_Audit_Report_Vyper_part.pdf — no match: Only one contract (Vault.vy) is in scope. The audit date is from the cover page.
- [18644] MixBytes_Yoracle_link_Smart_Contracts_Audit_Report.pdf — no match: Two contracts explicitly listed in FILES LISTING and referenced in all findings.
- [18645] PeckShield_Yearn_Strategies_v_2_Hegic_and_Dai_Smart_Contracts_Audit_Report.pdf — no match: The audit report explicitly states the target as 'Hegic Strategies' and lists four strategies: StrategyHegicETH, StrategyHegicWBTC, StrategyEthHegicLP, StrategyWbtcHegicLP. Additionally, BaseStrategy and Strategy (from another repo) are referenced in findings. The audit date is clearly stated on the cover page and in the document properties.
- [18646] Mixbytes_Cover_Protocol_v2_Security_Audit_Report.pdf — no match: All contracts listed in the FILES LISTING section are in scope.
- [18647] 202102_MixBytes_sushiswap-bentobox.pdf — no match: Extracted from the 'FILES LISTING' section and findings references.
- [18648] MixBytes_YearnV2_generic_lender_strat_Smart_Contracts_Security_Audit_Report.pdf — no match: All contracts listed in FILES LISTING section and referenced in findings are in scope.
- [18649] PeckShield_Audit_Report_CoverForge_v1.0.pdf — no match: No explicit scope table; contracts inferred from findings targets and protocol description.
- [18650] MixBytes_-_Yearn_Stablecoins_3pool_Contracts_Audit_Report.pdf — no match: Three strategy contracts for DAI, USDC, USDT tokens were audited.
- [18651] MixBytes_-_Yearn_Stablecoins_Ypool_Contracts_Audit_Report.pdf — no match: Four strategy contracts for DAI, USDC, USDT, TUSD tokens are in scope.
- [18652] MixBytes_-_Curve_Voter_Proxy_Security_Audit_Report.pdf — no match: Only one contract, Strategy.sol, is in scope. Audit date from title page.
- [18653] MixBytes_-_Yearn_Generic_Lender_Aave_Contracts_Audit_Report.pdf — no match: Only one contract in scope: GenericAave.sol. Audit date from cover page.
- [18654] MixBytes_-_Yearn_Vault_v.3_Wrapper_Smart_Contracts_Audit_Report.pdf — matched: Contracts in scope: BaseWrapper.sol, Registry.vy, yToken.sol. Audit date from cover page.
- [18655] MixBytes_-_Yearn_Yvboost_Contracts_Audit_Report.pdf — no match: Only one contract, Strategy.sol, is in scope. Audit date from cover page.
- [18656] MixBytes_-_Yearn_Strategies_SNX_Contracts_Audit_Report.pdf — no match: Only one contract file Strategy.sol is in scope.
- [18657] MixBytes_-_Yearn_Liquity_stability_pool_Security_Audit_Report.pdf — no match: Only one contract, Strategy.sol, is in scope. Audit date from cover page.
- [18658] ToB_-_Yearn_Vault_v_2_Smart_Contracts_Audit_Report.pdf — matched: Extracted from the Coverage section and the report header. The audit date is from the cover page: 'April 30, 2021'.
- [18659] MixBytes_-_Yearn_Maker_Dai_Delegate_Security_Audit_Report.pdf — no match: All contracts listed in the FILES LISTING section are in scope.
- [18660] ChainSecurity_-_Yearn_Finance_Partner_Tracker_Audit.pdf — no match: The report does not explicitly name the contract file or contract name. The contract is referred to as 'Partner Tracker' throughout. The date is clearly stated on the cover page: '18 January, 2022'.
- [18661] Mixbytes_-_Yearn_Strategy_SSB_Security_Audit_Report.pdf — no match: Only one contract, Strategy.sol, is in scope. Audit date from cover page.
- [18662] Optimum_-_Yearn_Tokemak_Strategy_Security_Assessment.pdf — no match: Only one contract in scope: Strategy.sol. Audit date inferred from 'February, 2022' on cover page.
- [18663] Mixbytes_-_Yearn_Joint_Strategy_Security_Audit_Report.pdf — no match: All five contracts listed in the FILES LISTING section are in scope.
- [18664] Mixbytes_-_Yearn_Yswaps_Security_Audit_Report.pdf — no match: Extracted contract names from scope table and deployed addresses. Audit date from timeline: 10.01.2022-28.02.2022, used end date.
- [18665] Optimum_-_Notional_Finance_Strategy_Security_Assessment.pdf — no match: Only one contract in scope: Strategy.sol. Audit date is March 2022, mapped to last day of month.
- [18666] Dedaub_-_Angle.md — no match: The provided text is a list of findings and observations, not a full audit report. No scope section or contract names are explicitly mentioned.
- [18667] Dedaub_-_Stargate.md — no match: The provided text is a list of findings and questions, not a full audit report. No scope section or contract names are identifiable.
- [18668] Optimum_-_Gen_lev_lending_Strategy_Security_Assessment.pdf — no match: Contracts assessed table lists three contracts with file paths. Audit date is April 2022, interpreted as last day of month.
- [18669] Optimum_-_Stargate_Strategy_Security_Assessment.pdf — no match: Only one contract in scope: Strategy.sol. Audit date inferred from 'May, 2022' on cover page.
- [18670] Optimum_-_Uni_v3_Frax_Strategy_Security_Assessment.pdf — no match: Only one contract in scope: StrategyFraxUniswapUSDC. Audit date inferred from 'May, 2022' in header.
- [18671] Decurity_-_No_Hedge_Joint_Strategy_Security_Audit_Report.pdf — no match: Extracted contracts from scope section, role model tables, and findings. Audit period: 07/04/2022 to 07/17/2022, so end date used.
- [18672] Optimum_-_Notional_Finance_LP_Strategy_Security_Assessment.pdf — no match: Contracts assessed table lists two contracts: Strategy and NotionalLpLib. Audit date is June 2022, interpreted as last day of month.
- [18673] Optimum_-_Angle_Protocol_Strategy_Security_Assessment.pdf — no match: Only one contract (Strategy.sol) is explicitly listed in the scope table. The report mentions Angle Protocol as a trusted system but not as an audited contract.
- [18674] Statemind_-_Yearn_veyfi_Audit.pdf — matched: Scope explicitly lists VotingYFI.vy and RewardPool.vy. Audit date from title: 04-07-2022 - 08-07-2022, using end date.
- [18675] 202208_Statemind_Tarot_Impermax.md — no match: Only one contract in scope: StrategyImperamaxLender. Audit date inferred from timeline '02-08-2022'.
- [18676] yAcademy_-_LevGeist_review.pdf — no match: Scope mentions 'contracts directory' and findings reference Strategy.sol and BaseStrategy.sol. Audit date inferred from review period ending 6/24.
- [18677] yAcademy_-_Yearn_BalancerLpFactory_review.pdf — no match: Audit report for Yearn BalancerLpFactory. Scope includes BalancerGlobal and StrategyConvexFactoryClonable. VaultRegistry is mentioned in out-of-scope finding but not in scope. Audit date inferred from review period June 29 to July 12, 2021.
- [18678] yAcademy_-_joint_strategy_review.pdf — no match: Extracted contract names from the Scope section and findings. Audit date inferred from 'code review was performed between April 19 and May 23, 2022'.
- [18679] yAcademy_-_yearn_veyfi_review.pdf — matched: Extracted contracts from scope description and findings. Audit date derived from review period end date (April 16, 2022).
- [18680] ChainSecurity_Yearn_Serpentor_audit.pdf — no match: Two contracts in scope: SerpentorBravo and Timelock. Audit date from cover page.
- [18681] ChainSecurity_-_Yearn_yCRV_and_ZapYCRV_Audit.pdf — no match: Two contracts in scope: yCRV and ZapYCRV. Audit date from cover page.
- [18682] ChainSecurity_-_Yearn_veYFI_and_RewardPool_audit.pdf — no match: Two contracts in scope: VotingYFI.vy and RewardPool.vy. Audit date from cover page: November 22, 2022.
- [18683] ChainSecurity_Yearn_Yearn_yETH_audit.pdf — matched: Scope explicitly lists Pool.vy and Staking.vy. Token.vy is referenced as the yETH token implementation.
- [18684] Yearn Finance yETH-bootstrap Security Audit Report - Mixbytes.pdf — matched: Scope table lists 7 Vyper files with mainnet addresses. Audit date from cover page.
- [18685] ChainSecurity_Yearn_yETH_Periphery_audit.pdf — no match: Scope explicitly states 'contracts in the contracts/providers directory' and system overview describes six rate provider contracts for Frax, Lido, Stader, StaFi, Swell, and Tranchess.
- [18686] Yearn_Finance_Vesting_Escrow_Security_Audit_Report.pdf — no match: Two Vyper contracts in scope: VestingEscrowSimple and VestingEscrowFactory. Audit date from cover page.
- [18687] Yearn V3 report.pdf — matched: Scope section explicitly lists BaseStrategy.sol, TokenizedStrategy.sol, VaultFactory.vy, VaultV3.vy. Audit date range is 05-02-2024 to 01-03-2024, using end date.
- [18688] Yearn-Smart-Contract-Audit-_-Tokenized_Strategy_ChainSecurity.pdf — no match: Two contracts in scope: BaseTokenizedStrategy and TokenizedStrategy. Audit date from cover page.
- [18689] Yearn-Smart-Contract-Audit_V3_Vaults_-ChainSecurity.pdf — no match: Scope explicitly lists two Vyper contracts: VaultFactory.vy and VaultV3.vy. Audit date is May 4, 2023 from the cover page.
- [18690] 06-2023-Yearn-Vault-V3_yAcademy_Reports.pdf — no match: Scope explicitly lists four contracts from two repositories: VaultFactory.vy, VaultV3.vy, BaseTokenizedStrategy.sol, TokenizedStrategy.sol. Audit date is end of review period (July 3-28, 2023).
- [18691] yearn-vaults-v3 — no match: The provided text is a GitHub repository README, not an audit report. No audit scope or date is present. Only two contracts are mentioned in the description.
- [18692] 2020-09-25.md — no match: This is a vulnerability disclosure post, not an audit report. No contracts in scope are listed.
- [18693] 2020-10-10.md — no match: This is a vulnerability disclosure, not a formal audit report. No scope section or list of audited contracts is present. The contracts mentioned (StrategyProxy, CurveYCRVVoter, EvilGauge) are discussed in the context of a vulnerability, not as audited targets.
- [18694] 2020-10-30.md — no match: This is a vulnerability disclosure report, not a formal audit. No explicit scope section or list of audited contracts. Mentioned contracts (TUSD vault, DAI vault, GUSD vault, Curve strategy) are referenced in context of vulnerability, not as audit targets.
- [18695] 2021-01-17.md — no match: This is an incident disclosure, not an audit report. No audit scope is defined.
- [18696] 2021-02-04.md — no match: This is a vulnerability disclosure, not an audit report. No contracts in scope are listed.
- [18697] 2021-02-18.md — no match: This is an incident disclosure report, not an audit report. No audit scope or contracts in scope are defined.
- [18698] 2021-04-02.md — no match: This is an incident disclosure, not a formal audit report. Contract names extracted from the summary and background sections. No explicit scope section.
- [18699] 2021-05-13.md — no match: This is an incident disclosure, not a formal audit report. Extracted contract names from the narrative and references.
- [18700] 2021-05-14.md — no match: This is an incident disclosure, not an audit report. Only one contract name is explicitly mentioned.
- [18701] 2021-05-20.md — no match: This is an incident disclosure, not a formal audit report. Only one contract name is explicitly mentioned as the subject of the incident.
- [18702] 2021-06-29.md — no match: This is a vulnerability disclosure report, not a formal audit. Contracts are identified from the report text and references.
- [18703] 2021-10-27.md — no match: This is an incident disclosure report, not an audit report. No contracts are listed as in scope for an audit.
- [18704] 2022-01-30.md — no match: This is a vulnerability disclosure report, not a formal audit. No explicit scope section or contract file paths are provided. Only the strategy name 'SingleSidedBalancer' is identified as the subject of the disclosure.
- [18705] 2022-09-06.md — no match: The report is a security advisory, not a formal audit. It mentions WOOFY token and Yearn vaults (Vault.vy) as affected. No explicit scope section.
- [18706] 2022-11-01.md — no match: Report is a vulnerability disclosure; scope is BribeV2 and its replacement BribeV3 (yBribe).
- [18707] 2022-11-07.md — no match: This is an incident disclosure, not a formal audit report. Only one contract name is explicitly mentioned as being in scope of the incident.
- [18708] 2023-03-13.md — no match: This is an incident disclosure post-mortem, not an audit report. No contracts are listed as being in scope for an audit.
- [18709] 2023-04-04.md — no match: Report is an incident disclosure, not a formal audit. Contracts mentioned are the two strategies impacted by the bug.
- [18710] 2023-05-21.md — no match: This is an incident disclosure, not an audit report. Only one contract name (StakingRewardsZap) is explicitly mentioned as the affected contract. No audit date or scope section found.
- [18711] 2023-06-13.md — no match: This is an incident disclosure report, not a formal audit. Only one contract (StealthSafeGuard) is explicitly named as the subject of the incident. No scope section or file paths are present.
- [18712] 2023-12-11.md — no match: This is an incident disclosure, not an audit report. No contracts in scope.
- [18713] 2024-01-03.md — no match: This is an incident disclosure report, not an audit report. No contracts in scope are listed.
- [18714] 2025-05-08.md — no match: This is an incident disclosure report, not an audit report. No audit scope or contract names to extract.
- [18715] 2025-08-13.md — no match: Report is an incident post-mortem, not a formal audit. Contracts mentioned as part of the vulnerability and fix are extracted.
- [18716] 2025-11-26.md — no match: The document is an incident post-mortem, not an audit report. No audit scope or contract names to extract.
- [18717] 2025-12-01.md — no match: This is an incident disclosure report, not an audit report. It describes an exploit of the yETH protocol but does not list contracts in scope for an audit. No audit scope section or contract names to extract.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| DL audit link | Staking | own contract | Staking (selected) `0xcb7dce63abe175ca354dcca9cc10554d255777ee` — deployed 2024-04-12 17:58:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| download report | Pool | own contract | 0xccd040… (selected) `0xccd04073f4bdc4510927ea9ba350875c3c65bf81` — deployed 2025-07-01 14:07:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| download report | Staking | own contract | Staking (selected) `0xcb7dce63abe175ca354dcca9cc10554d255777ee` — deployed 2024-04-12 17:58:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| download report | Token | unmatched — not counted | — | Mentioned in trust model: 'the LP token in Pool and the asset in Staking is yETH (as implemented in Token.vy)' | no |
| download report | Discount | unmatched — not counted | — | The only file in scope is Discount.vy. | no |
| DL audit link | InclusionVote | unmatched — not counted | — | mentioned as the contract with the critical issue 'Blank Votes Not Counted' | no |
| download report | DelegateMeasure | unmatched — not counted | — | listed in scope table | no |
| download report | Executor | own contract | Executor (selected) `0x71258ee726644f1d52d6a9f5e11c21d1e38c2bf1` — deployed 2024-02-14 15:54:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| download report | GenericGovernor | unmatched — not counted | — | listed in scope table | no |
| download report | InclusionIncentives | unmatched — not counted | — | listed in scope table | no |
| download report | InclusionVote | unmatched — not counted | — | listed in scope table | no |
| download report | LaunchMeasure | unmatched — not counted | — | listed in scope table | no |
| download report | OwnershipProxy | unmatched — not counted | — | listed in scope table | no |
| download report | PoolGovernor | unmatched — not counted | — | listed in scope table | no |
| download report | SnapshotToken | unmatched — not counted | — | listed in scope table | no |
| download report | WeightIncentives | unmatched — not counted | — | listed in scope table | no |
| download report | WeightVote | unmatched — not counted | — | listed in scope table | no |
| Yearn Finance yETH-bootstrap Security Audit Report.pdf | Bootstrap.vy | own contract | 0x41b994… (selected) `0x41b994c192183793bb9cc35baab8bd9c6885c6bf` — deployed 2023-07-03 23:14:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Yearn Finance yETH-bootstrap Security Audit Report.pdf | MerkleIncentives.vy | own contract | Incentives for Snapshot votes (selected) `0xae9de8a3e62e8e2f1e3800d142d23527680a5179` — deployed 2023-07-06 15:09:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Yearn Finance yETH-bootstrap Security Audit Report.pdf | POL.vy | own contract | Protocol Owned Liquidity (selected) `0x929401e30aab6bd648def2d30ff44952bab04478` — deployed 2023-06-30 14:27:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Yearn Finance yETH-bootstrap Security Audit Report.pdf | Token.vy | own contract | yETH token (selected) `0x1bed97cbc3c24a4fb5c069c6e311a967386131f7` — deployed 2023-06-29 11:46:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Yearn Finance yETH-bootstrap Security Audit Report.pdf | CurveLP.vy | unmatched — not counted | — | listed in scope table | no |
| Yearn Finance yETH-bootstrap Security Audit Report.pdf | Shutdown.vy | unmatched — not counted | — | listed in scope table | no |
| Yearn Finance yETH-bootstrap Security Audit Report.pdf | Stake.vy | own contract | Staking Module (selected) `0x27a2fc2d47c5063a551c8fe81f580b84ab78ac52` — deployed 2023-07-06 14:52:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| StrategyCurveYCRV.sol - HackMD.pdf | StrategyCurveYCRV | unmatched — not counted | — | listed in scope | no |
| YearnV2_ our gotcha notes - HackMD.pdf | yVault | unmatched — not counted | — | mentioned as yVault yCRV contract on Etherscan | no |
| YearnV2_ our gotcha notes - HackMD.pdf | Controller | unmatched — not counted | — | mentioned as Controller contract on Etherscan | no |
| YearnV2_ our gotcha notes - HackMD.pdf | Strategy | unmatched — not counted | — | — | no |
| YearnV2_ our gotcha notes - HackMD.pdf | StrategyYfii | unmatched — not counted | — | mentioned as Yfii strategy contract on Etherscan | no |
| YearnV2_ our gotcha notes - HackMD.pdf | StrategyYffi | unmatched — not counted | — | mentioned as Yffi strategy contract on Etherscan | no |
| Certik - itoken-finance-audit-report-1.1.0.pdf | yDAI | unmatched — not counted | — | Scope of work: the contract yDAI with its full Solidity inheritance chain and all libraries. | no |
| Quantstamp - Yearn.Finance Security Review.pdf | YearnRewards | unmatched — not counted | — | listed in scope | no |
| Quantstamp - Yearn.Finance Security Review.pdf | YearnGovernance | unmatched — not counted | — | listed in scope as 3rd pool | no |
| Quantstamp - Yearn.Finance Security Review.pdf | YearnFeeRewards | unmatched — not counted | — | listed in scope as 4th pool | no |
| Quantstamp - Yearn.Finance Security Review.pdf | YFI | own contract | YFI (selected) `0x0bc529c00c6401aef6d220be8c6ea1667f6ad93e` — deployed 2020-07-17 11:01:25+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Quantstamp - Yearn.Finance Security Review.pdf | TimelockGovernance | unmatched — not counted | — | listed in scope | no |
| Quantstamp - Yearn.Finance Security Review.pdf | APR oracle | unmatched — not counted | — | listed in scope | no |
| MixBytes - Timeloans.Finance Smart Contract Security Audit Report.pdf | TimeLoans | unmatched — not counted | — | Scope section: 'The scope of the audit includes following smart contract at: from TimeLoans.sol#L547 and TimeLoans.sol#L848.' | no |
| MixBytes - Yearn.Finance protocol v.1 Smart Contracts Audit Security Audit Report.pdf | Controller | unmatched — not counted | — | mentioned in findings and scope | no |
| MixBytes - Yearn.Finance protocol v.1 Smart Contracts Audit Security Audit Report.pdf | Strategy | unmatched — not counted | — | interface referenced in Controller | no |
| MixBytes - Yearn.Finance protocol v.1 Smart Contracts Audit Security Audit Report.pdf | yDelegatedVault | unmatched — not counted | — | mentioned in findings | no |
| MixBytes - Yearn.Finance protocol v.1 Smart Contracts Audit Security Audit Report.pdf | StrategyMKRVaultDAIDelegate | unmatched — not counted | — | mentioned in findings | no |
| MixBytes - Yearn.Finance protocol v.1 Smart Contracts Audit Security Audit Report.pdf | StrategyDForceUSDC | unmatched — not counted | — | mentioned in findings | no |
| MixBytes - Yearn.Finance protocol v.1 Smart Contracts Audit Security Audit Report.pdf | StrategyCreamYFI | unmatched — not counted | — | mentioned in findings | no |
| MixBytes - Yearn.Finance protocol v.1 Smart Contracts Audit Security Audit Report.pdf | StrategyCurveSBTC | unmatched — not counted | — | mentioned in findings | no |
| MixBytes - Yearn.Finance protocol v.1 Smart Contracts Audit Security Audit Report.pdf | StrategyCurveYBUSD | unmatched — not counted | — | mentioned in findings | no |
| MixBytes - Yearn.Finance protocol v.1 Smart Contracts Audit Security Audit Report.pdf | StrategyCurveYCRVVoter | unmatched — not counted | — | mentioned in findings | no |
| MixBytes - Yearn.Finance protocol v.1 Smart Contracts Audit Security Audit Report.pdf | StrategyDForceUSDT | unmatched — not counted | — | mentioned in findings | no |
| MixBytes - Yearn.Finance protocol v.1 Smart Contracts Audit Security Audit Report.pdf | yVault | unmatched — not counted | — | mentioned in findings | no |
| MixBytes - Yearn.Finance protocol v.1 Smart Contracts Audit Security Audit Report.pdf | yWETH | unmatched — not counted | — | mentioned in findings | no |
| MixBytes - Yearn.Finance protocol v.1 Smart Contracts Audit Security Audit Report.pdf | Distributor | unmatched — not counted | — | mentioned in appendix as main contract | no |
| MixBytes - Yearn.Finance protocol v.1 Smart Contracts Audit Security Audit Report.pdf | NexusMutualCover | unmatched — not counted | — | mentioned in appendix as library | no |
| MixBytes_Yearn_Vault_v_2_Smart_Contract_Audit_Report_Solidity_part.pdf | BaseStrategy | unmatched — not counted | — | listed in scope section | no |
| MixBytes_Yearn_Vault_v_2_Smart_Contract_Audit_Report_Vyper_part.pdf | Vault | unmatched — not counted | — | listed in scope section | no |
| MixBytes_Yoracle_link_Smart_Contracts_Audit_Report.pdf | Keep3rV1Oracle | unmatched — not counted | — | Listed in FILES LISTING and throughout findings | no |
| MixBytes_Yoracle_link_Smart_Contracts_Audit_Report.pdf | Keep3rV1Volatility | unmatched — not counted | — | Listed in FILES LISTING and throughout findings | no |
| PeckShield_Yearn_Strategies_v_2_Hegic_and_Dai_Smart_Contracts_Audit_Report.pdf | StrategyHegicETH | unmatched — not counted | — | Listed in findings and scope description as one of the four Hegic strategies. | no |
| PeckShield_Yearn_Strategies_v_2_Hegic_and_Dai_Smart_Contracts_Audit_Report.pdf | StrategyHegicWBTC | unmatched — not counted | — | Listed in findings and scope description as one of the four Hegic strategies. | no |
| PeckShield_Yearn_Strategies_v_2_Hegic_and_Dai_Smart_Contracts_Audit_Report.pdf | StrategyEthHegicLP | unmatched — not counted | — | Listed in findings and scope description as one of the four Hegic strategies. | no |
| PeckShield_Yearn_Strategies_v_2_Hegic_and_Dai_Smart_Contracts_Audit_Report.pdf | StrategyWbtcHegicLP | unmatched — not counted | — | Listed in findings and scope description as one of the four Hegic strategies. | no |
| PeckShield_Yearn_Strategies_v_2_Hegic_and_Dai_Smart_Contracts_Audit_Report.pdf | BaseStrategy | unmatched — not counted | — | Referenced as the base contract inherited by strategies. | no |
| PeckShield_Yearn_Strategies_v_2_Hegic_and_Dai_Smart_Contracts_Audit_Report.pdf | Strategy | unmatched — not counted | — | Referenced in findings PVE-008 and PVE-009 as a contract in the YearnV2-Generic-Lev-Comp-Farm repository. | no |
| Mixbytes_Cover_Protocol_v2_Security_Audit_Report.pdf | Cover | unmatched — not counted | — | listed in scope | no |
| Mixbytes_Cover_Protocol_v2_Security_Audit_Report.pdf | CoverPool | unmatched — not counted | — | listed in scope | no |
| Mixbytes_Cover_Protocol_v2_Security_Audit_Report.pdf | CoverPoolFactory | unmatched — not counted | — | listed in scope | no |
| Mixbytes_Cover_Protocol_v2_Security_Audit_Report.pdf | CoverERC20 | unmatched — not counted | — | listed in scope | no |
| Mixbytes_Cover_Protocol_v2_Security_Audit_Report.pdf | ClaimManagement | unmatched — not counted | — | listed in scope | no |
| Mixbytes_Cover_Protocol_v2_Security_Audit_Report.pdf | ClaimConfig | unmatched — not counted | — | listed in scope | no |
| Mixbytes_Cover_Protocol_v2_Security_Audit_Report.pdf | BasicProxyLib | unmatched — not counted | — | listed in scope | no |
| Mixbytes_Cover_Protocol_v2_Security_Audit_Report.pdf | StringHelper | unmatched — not counted | — | listed in scope | no |
| Mixbytes_Cover_Protocol_v2_Security_Audit_Report.pdf | EIP712 | unmatched — not counted | — | listed in scope | no |
| Mixbytes_Cover_Protocol_v2_Security_Audit_Report.pdf | ERC20Permit | unmatched — not counted | — | listed in scope | no |
| Mixbytes_Cover_Protocol_v2_Security_Audit_Report.pdf | SafeERC20 | unmatched — not counted | — | listed in scope | no |
| Mixbytes_Cover_Protocol_v2_Security_Audit_Report.pdf | ERC20 | unmatched — not counted | — | listed in scope | no |
| Mixbytes_Cover_Protocol_v2_Security_Audit_Report.pdf | Ownable | unmatched — not counted | — | listed in scope | no |
| Mixbytes_Cover_Protocol_v2_Security_Audit_Report.pdf | Address | ambiguous — not counted | 0xe5e2ba… (alternative) `0xe5e2baf96198c56380ddd5e992d7d1ada0e989c0` — deployed 2024-08-01 20:59:35+03 — liveness: live (current_address_book_code)<br>0x29b0da… (alternative) `0x29b0da86e484e1c0029b56e817912d778ac0ec69` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Mixbytes_Cover_Protocol_v2_Security_Audit_Report.pdf | ReentrancyGuard | unmatched — not counted | — | listed in scope | no |
| Mixbytes_Cover_Protocol_v2_Security_Audit_Report.pdf | Initializable | unmatched — not counted | — | listed in scope | no |
| Mixbytes_Cover_Protocol_v2_Security_Audit_Report.pdf | Create2 | unmatched — not counted | — | listed in scope | no |
| Mixbytes_Cover_Protocol_v2_Security_Audit_Report.pdf | Proxy | unmatched — not counted | — | listed in scope | no |
| Mixbytes_Cover_Protocol_v2_Security_Audit_Report.pdf | BaseUpgradeabilityProxy | unmatched — not counted | — | listed in scope | no |
| Mixbytes_Cover_Protocol_v2_Security_Audit_Report.pdf | BaseAdminUpgradeabilityProxy | unmatched — not counted | — | listed in scope | no |
| Mixbytes_Cover_Protocol_v2_Security_Audit_Report.pdf | InitializableAdminUpgradeabilityProxy | unmatched — not counted | — | listed in scope | no |
| 202102_MixBytes_sushiswap-bentobox.pdf | BentoBox | unmatched — not counted | — | listed in scope | no |
| 202102_MixBytes_sushiswap-bentobox.pdf | LendingPair | unmatched — not counted | — | listed in scope | no |
| 202102_MixBytes_sushiswap-bentobox.pdf | ERC20 | unmatched — not counted | — | listed in scope | no |
| 202102_MixBytes_sushiswap-bentobox.pdf | Ownable | unmatched — not counted | — | listed in scope | no |
| 202102_MixBytes_sushiswap-bentobox.pdf | SushiSwapSwapper | unmatched — not counted | — | listed in scope | no |
| 202102_MixBytes_sushiswap-bentobox.pdf | ChainlinkOracle | unmatched — not counted | — | listed in scope | no |
| 202102_MixBytes_sushiswap-bentobox.pdf | PeggedOracle | unmatched — not counted | — | listed in scope | no |
| 202102_MixBytes_sushiswap-bentobox.pdf | CompositeOracle | unmatched — not counted | — | listed in scope | no |
| 202102_MixBytes_sushiswap-bentobox.pdf | SimpleSLPTWAP0Oracle | unmatched — not counted | — | listed in scope | no |
| 202102_MixBytes_sushiswap-bentobox.pdf | CompoundOracle | unmatched — not counted | — | listed in scope | no |
| 202102_MixBytes_sushiswap-bentobox.pdf | SimpleSLPTWAP1Oracle | unmatched — not counted | — | listed in scope | no |
| 202102_MixBytes_sushiswap-bentobox.pdf | BoringMath | unmatched — not counted | — | listed in scope | no |
| 202102_MixBytes_sushiswap-bentobox.pdf | BentoHelper | unmatched — not counted | — | mentioned in findings | no |
| 202102_MixBytes_sushiswap-bentobox.pdf | ISwapper | unmatched — not counted | — | mentioned in findings | no |
| MixBytes_YearnV2_generic_lender_strat_Smart_Contracts_Security_Audit_Report.pdf | Strategy | unmatched — not counted | — | listed in scope and findings | no |
| MixBytes_YearnV2_generic_lender_strat_Smart_Contracts_Security_Audit_Report.pdf | AlphaHomoLender | unmatched — not counted | — | listed in scope and findings | no |
| MixBytes_YearnV2_generic_lender_strat_Smart_Contracts_Security_Audit_Report.pdf | EthCompound | unmatched — not counted | — | listed in scope and findings | no |
| MixBytes_YearnV2_generic_lender_strat_Smart_Contracts_Security_Audit_Report.pdf | EthCream | unmatched — not counted | — | listed in scope and findings | no |
| MixBytes_YearnV2_generic_lender_strat_Smart_Contracts_Security_Audit_Report.pdf | GenericCompound | unmatched — not counted | — | listed in scope and findings | no |
| MixBytes_YearnV2_generic_lender_strat_Smart_Contracts_Security_Audit_Report.pdf | GenericCream | unmatched — not counted | — | listed in scope and findings | no |
| MixBytes_YearnV2_generic_lender_strat_Smart_Contracts_Security_Audit_Report.pdf | GenericDyDx | unmatched — not counted | — | listed in scope and findings | no |
| MixBytes_YearnV2_generic_lender_strat_Smart_Contracts_Security_Audit_Report.pdf | GenericLenderBase | unmatched — not counted | — | listed in scope and findings | no |
| MixBytes_YearnV2_generic_lender_strat_Smart_Contracts_Security_Audit_Report.pdf | IGenericLender | unmatched — not counted | — | listed in scope and findings | no |
| PeckShield_Audit_Report_CoverForge_v1.0.pdf | CoverFeeReceiver | unmatched — not counted | — | Target in findings PVE-001, PVE-003, PVE-004 | no |
| PeckShield_Audit_Report_CoverForge_v1.0.pdf | CoverForge | unmatched — not counted | — | Target in finding PVE-002; main contract of the protocol | no |
| MixBytes_-_Yearn_Stablecoins_3pool_Contracts_Audit_Report.pdf | StrategyDAI | unmatched — not counted | — | listed in scope and findings | no |
| MixBytes_-_Yearn_Stablecoins_3pool_Contracts_Audit_Report.pdf | StrategyUSDC | unmatched — not counted | — | listed in scope and findings | no |
| MixBytes_-_Yearn_Stablecoins_3pool_Contracts_Audit_Report.pdf | StrategyUSDT | unmatched — not counted | — | listed in scope and findings | no |
| MixBytes_-_Yearn_Stablecoins_Ypool_Contracts_Audit_Report.pdf | StrategyDAIypool | unmatched — not counted | — | listed in scope and findings | no |
| MixBytes_-_Yearn_Stablecoins_Ypool_Contracts_Audit_Report.pdf | StrategyTUSDypool | unmatched — not counted | — | listed in scope and findings | no |
| MixBytes_-_Yearn_Stablecoins_Ypool_Contracts_Audit_Report.pdf | StrategyUSDCypool | unmatched — not counted | — | listed in scope and findings | no |
| MixBytes_-_Yearn_Stablecoins_Ypool_Contracts_Audit_Report.pdf | StrategyUSDTypool | unmatched — not counted | — | listed in scope and findings | no |
| MixBytes_-_Curve_Voter_Proxy_Security_Audit_Report.pdf | Strategy | unmatched — not counted | — | listed in scope and findings | no |
| MixBytes_-_Yearn_Generic_Lender_Aave_Contracts_Audit_Report.pdf | GenericAave | unmatched — not counted | — | listed in scope and findings | no |
| MixBytes_-_Yearn_Vault_v.3_Wrapper_Smart_Contracts_Audit_Report.pdf | BaseWrapper | unmatched — not counted | — | listed in scope and findings | no |
| MixBytes_-_Yearn_Vault_v.3_Wrapper_Smart_Contracts_Audit_Report.pdf | Registry | ambiguous — not counted | Registry (alternative) `0xd40ecf29e001c76dcc4cc0d9cd50520ce845b038` — deployed 2024-11-13 09:17:23+03 — liveness: live (current_address_book_code)<br>0x727fe1… (alternative) `0x727fe1759430df13655ddb0731de0d0fde929b04` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| MixBytes_-_Yearn_Vault_v.3_Wrapper_Smart_Contracts_Audit_Report.pdf | yToken | own contract | YToken (selected) `0x22222222aea0076fca927a3f44dc0b4fdf9479d6` — deployed 2025-12-17 04:31:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| MixBytes_-_Yearn_Yvboost_Contracts_Audit_Report.pdf | Strategy | unmatched — not counted | — | listed in scope and findings | no |
| MixBytes_-_Yearn_Strategies_SNX_Contracts_Audit_Report.pdf | Strategy | unmatched — not counted | — | listed in scope and findings | no |
| MixBytes_-_Yearn_Liquity_stability_pool_Security_Audit_Report.pdf | Strategy | unmatched — not counted | — | listed in scope and findings | no |
| ToB_-_Yearn_Vault_v_2_Smart_Contracts_Audit_Report.pdf | Vault | unmatched — not counted | — | listed in scope | no |
| ToB_-_Yearn_Vault_v_2_Smart_Contracts_Audit_Report.pdf | BaseStrategy | unmatched — not counted | — | listed in scope | no |
| ToB_-_Yearn_Vault_v_2_Smart_Contracts_Audit_Report.pdf | yToken | own contract | YToken (selected) `0x22222222aea0076fca927a3f44dc0b4fdf9479d6` — deployed 2025-12-17 04:31:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ToB_-_Yearn_Vault_v_2_Smart_Contracts_Audit_Report.pdf | AffiliateToken | unmatched — not counted | — | listed in scope | no |
| ToB_-_Yearn_Vault_v_2_Smart_Contracts_Audit_Report.pdf | BaseWrapper | unmatched — not counted | — | listed in scope | no |
| ToB_-_Yearn_Vault_v_2_Smart_Contracts_Audit_Report.pdf | Registry | ambiguous — not counted | Registry (alternative) `0xd40ecf29e001c76dcc4cc0d9cd50520ce845b038` — deployed 2024-11-13 09:17:23+03 — liveness: live (current_address_book_code)<br>0x727fe1… (alternative) `0x727fe1759430df13655ddb0731de0d0fde929b04` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| MixBytes_-_Yearn_Maker_Dai_Delegate_Security_Audit_Report.pdf | MakerDaiDelegateCloner | unmatched — not counted | — | listed in scope | no |
| MixBytes_-_Yearn_Maker_Dai_Delegate_Security_Audit_Report.pdf | Strategy | unmatched — not counted | — | listed in scope | no |
| MixBytes_-_Yearn_Maker_Dai_Delegate_Security_Audit_Report.pdf | TestStrategy | unmatched — not counted | — | listed in scope | no |
| MixBytes_-_Yearn_Maker_Dai_Delegate_Security_Audit_Report.pdf | MakerDaiDelegateLib | unmatched — not counted | — | listed in scope | no |
| MixBytes_-_Yearn_Maker_Dai_Delegate_Security_Audit_Report.pdf | AggregatorInterface | unmatched — not counted | — | listed in scope | no |
| MixBytes_-_Yearn_Maker_Dai_Delegate_Security_Audit_Report.pdf | IMaker | unmatched — not counted | — | listed in scope | no |
| MixBytes_-_Yearn_Maker_Dai_Delegate_Security_Audit_Report.pdf | ISwap | unmatched — not counted | — | listed in scope | no |
| MixBytes_-_Yearn_Maker_Dai_Delegate_Security_Audit_Report.pdf | IOSMedianizer | unmatched — not counted | — | listed in scope | no |
| MixBytes_-_Yearn_Maker_Dai_Delegate_Security_Audit_Report.pdf | IVault | unmatched — not counted | — | listed in scope | no |
| MixBytes_-_Yearn_Maker_Dai_Delegate_Security_Audit_Report.pdf | BaseStrategy | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_-_Yearn_Finance_Partner_Tracker_Audit.pdf | PartnerTracker | unmatched — not counted | — | The report consistently refers to 'Partner Tracker' as the smart contract being audited. The scope section mentions 'source code files inside the Partner Tracker repository' and the system overview describes 'Yearn Finance implements a partner tracking program in a smart contract.' The contract is not explicitly named in the provided text, but the context implies the contract is called 'PartnerTracker'. | no |
| Mixbytes_-_Yearn_Strategy_SSB_Security_Audit_Report.pdf | Strategy | unmatched — not counted | — | listed in scope | no |
| Optimum_-_Yearn_Tokemak_Strategy_Security_Assessment.pdf | Strategy | unmatched — not counted | — | listed in Contracts Assessed table | no |
| Mixbytes_-_Yearn_Joint_Strategy_Security_Audit_Report.pdf | HegicJoint | unmatched — not counted | — | listed in scope | no |
| Mixbytes_-_Yearn_Joint_Strategy_Security_Audit_Report.pdf | Joint | unmatched — not counted | — | listed in scope | no |
| Mixbytes_-_Yearn_Joint_Strategy_Security_Audit_Report.pdf | LPHedgingLib | unmatched — not counted | — | listed in scope | no |
| Mixbytes_-_Yearn_Joint_Strategy_Security_Audit_Report.pdf | ProviderStrategy | unmatched — not counted | — | listed in scope | no |
| Mixbytes_-_Yearn_Joint_Strategy_Security_Audit_Report.pdf | SushiJoint | unmatched — not counted | — | listed in scope | no |
| Mixbytes_-_Yearn_Yswaps_Security_Audit_Report.pdf | TradeFactory | unmatched — not counted | — | listed in scope and deployed address | no |
| Mixbytes_-_Yearn_Yswaps_Security_Audit_Report.pdf | TradeFactoryAccessManager | unmatched — not counted | — | listed in scope | no |
| Mixbytes_-_Yearn_Yswaps_Security_Audit_Report.pdf | TradeFactoryExecutor | unmatched — not counted | — | listed in scope and deployed address | no |
| Mixbytes_-_Yearn_Yswaps_Security_Audit_Report.pdf | TradeFactoryPositionsHandler | unmatched — not counted | — | listed in scope and deployed address | no |
| Mixbytes_-_Yearn_Yswaps_Security_Audit_Report.pdf | TradeFactorySwapperHandler | unmatched — not counted | — | listed in scope | no |
| Mixbytes_-_Yearn_Yswaps_Security_Audit_Report.pdf | CommonErrors | unmatched — not counted | — | listed in scope | no |
| Mixbytes_-_Yearn_Yswaps_Security_Audit_Report.pdf | AsyncSwapper | unmatched — not counted | — | listed in scope and deployed address | no |
| Mixbytes_-_Yearn_Yswaps_Security_Audit_Report.pdf | BancorSwapper | unmatched — not counted | — | listed in scope | no |
| Mixbytes_-_Yearn_Yswaps_Security_Audit_Report.pdf | MultiCallOptimizedSwapper | unmatched — not counted | — | listed in scope and deployed address | no |
| Mixbytes_-_Yearn_Yswaps_Security_Audit_Report.pdf | OneInchAggregatorSwapper | unmatched — not counted | — | listed in scope | no |
| Mixbytes_-_Yearn_Yswaps_Security_Audit_Report.pdf | UniswapV2Swapper | unmatched — not counted | — | listed in scope | no |
| Mixbytes_-_Yearn_Yswaps_Security_Audit_Report.pdf | ZRXSwapper | unmatched — not counted | — | listed in scope | no |
| Mixbytes_-_Yearn_Yswaps_Security_Audit_Report.pdf | SyncSwapper | unmatched — not counted | — | listed in scope | no |
| Mixbytes_-_Yearn_Yswaps_Security_Audit_Report.pdf | UniswapV2AnchorSwapper | unmatched — not counted | — | listed in scope | no |
| Mixbytes_-_Yearn_Yswaps_Security_Audit_Report.pdf | Swapper | unmatched — not counted | — | listed in scope and deployed address | no |
| Mixbytes_-_Yearn_Yswaps_Security_Audit_Report.pdf | SwapperEnabled | unmatched — not counted | — | listed in scope | no |
| Mixbytes_-_Yearn_Yswaps_Security_Audit_Report.pdf | CollectableDust | unmatched — not counted | — | listed in scope and deployed address | no |
| Mixbytes_-_Yearn_Yswaps_Security_Audit_Report.pdf | Governable | unmatched — not counted | — | listed in scope and deployed address | no |
| Mixbytes_-_Yearn_Yswaps_Security_Audit_Report.pdf | Machinery | unmatched — not counted | — | listed in scope | no |
| Mixbytes_-_Yearn_Yswaps_Security_Audit_Report.pdf | MultipleAsyncSwapper | unmatched — not counted | — | deployed address mentioned in conclusion | no |
| Optimum_-_Notional_Finance_Strategy_Security_Assessment.pdf | Strategy | unmatched — not counted | — | listed in scope | no |
| Optimum_-_Gen_lev_lending_Strategy_Security_Assessment.pdf | Strategy | unmatched — not counted | — | listed in Contracts Assessed table | no |
| Optimum_-_Gen_lev_lending_Strategy_Security_Assessment.pdf | LevAaveFactory | unmatched — not counted | — | listed in Contracts Assessed table | no |
| Optimum_-_Gen_lev_lending_Strategy_Security_Assessment.pdf | FlashMintLib | unmatched — not counted | — | listed in Contracts Assessed table | no |
| Optimum_-_Stargate_Strategy_Security_Assessment.pdf | Strategy | unmatched — not counted | — | listed in scope | no |
| Optimum_-_Uni_v3_Frax_Strategy_Security_Assessment.pdf | StrategyFraxUniswapUSDC | unmatched — not counted | — | listed in scope table | no |
| Decurity_-_No_Hedge_Joint_Strategy_Security_Audit_Report.pdf | UniV3StablesJoint | unmatched — not counted | — | listed in scope and findings | no |
| Decurity_-_No_Hedge_Joint_Strategy_Security_Audit_Report.pdf | NoHedgeJoint | unmatched — not counted | — | listed in role model and function tables | no |
| Decurity_-_No_Hedge_Joint_Strategy_Security_Audit_Report.pdf | ProviderStrategy | unmatched — not counted | — | listed in role model and function tables | no |
| Decurity_-_No_Hedge_Joint_Strategy_Security_Audit_Report.pdf | Joint | unmatched — not counted | — | listed in scope and findings | no |
| Decurity_-_No_Hedge_Joint_Strategy_Security_Audit_Report.pdf | BaseStrategy | unmatched — not counted | — | listed in role model and findings | no |
| Optimum_-_Notional_Finance_LP_Strategy_Security_Assessment.pdf | Strategy | unmatched — not counted | — | listed in Contracts Assessed table | no |
| Optimum_-_Notional_Finance_LP_Strategy_Security_Assessment.pdf | NotionalLpLib | unmatched — not counted | — | listed in Contracts Assessed table | no |
| Optimum_-_Angle_Protocol_Strategy_Security_Assessment.pdf | Strategy | unmatched — not counted | — | listed in Contracts Assessed table | no |
| Statemind_-_Yearn_veyfi_Audit.pdf | VotingYFI | own contract | 0x90c1f9… (selected) `0x90c1f9220d90d3966fbee24045edd73e1d588ad5` — deployed 2022-11-15 12:41:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Statemind_-_Yearn_veyfi_Audit.pdf | RewardPool | own contract | 0xb287a1… (selected) `0xb287a1964aee422911c7b8409f5e5a273c1412fa` — deployed 2022-11-15 12:44:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 202208_Statemind_Tarot_Impermax.md | StrategyImperamaxLender | unmatched — not counted | — | listed in scope table | no |
| yAcademy_-_LevGeist_review.pdf | Strategy | unmatched — not counted | — | listed in scope and findings | no |
| yAcademy_-_LevGeist_review.pdf | BaseStrategy | unmatched — not counted | — | listed in scope and findings | no |
| yAcademy_-_Yearn_BalancerLpFactory_review.pdf | BalancerGlobal | unmatched — not counted | — | mentioned in scope and findings | no |
| yAcademy_-_Yearn_BalancerLpFactory_review.pdf | StrategyConvexFactoryClonable | unmatched — not counted | — | mentioned in scope and findings | no |
| yAcademy_-_Yearn_BalancerLpFactory_review.pdf | VaultRegistry | unmatched — not counted | — | mentioned in out-of-scope finding | no |
| yAcademy_-_joint_strategy_review.pdf | Joint | unmatched — not counted | — | Listed in scope and findings reference Joint.sol | no |
| yAcademy_-_joint_strategy_review.pdf | ProviderStrategy | unmatched — not counted | — | Listed in scope and findings reference ProviderStrategy.sol | no |
| yAcademy_-_joint_strategy_review.pdf | HegicJoint | unmatched — not counted | — | Listed in scope and findings reference HegicJoint.sol | no |
| yAcademy_-_joint_strategy_review.pdf | HedgilJoint | unmatched — not counted | — | Listed in scope and findings reference HedgilJoint.sol | no |
| yAcademy_-_joint_strategy_review.pdf | HedgilV2Joint | unmatched — not counted | — | Listed in scope and findings reference HedgilV2Joint.sol | no |
| yAcademy_-_joint_strategy_review.pdf | NoHedgeJoint | unmatched — not counted | — | Listed in scope and findings reference NoHedgeJoint.sol | no |
| yAcademy_-_joint_strategy_review.pdf | SushiJoint | unmatched — not counted | — | Listed in scope and findings reference SushiJoint.sol | no |
| yAcademy_-_joint_strategy_review.pdf | SpiritJoint | unmatched — not counted | — | Listed in scope and findings reference SpiritJoint.sol | no |
| yAcademy_-_joint_strategy_review.pdf | SpookyJoint | unmatched — not counted | — | Listed in scope and findings reference SpookyJoint.sol | no |
| yAcademy_-_joint_strategy_review.pdf | SolidexJoint | unmatched — not counted | — | Listed in scope and findings reference SolidexJoint.sol | no |
| yAcademy_-_joint_strategy_review.pdf | LPHedgingLib | unmatched — not counted | — | Listed in scope and findings reference LPHedgingLib.sol | no |
| yAcademy_-_joint_strategy_review.pdf | ySwapper | unmatched — not counted | — | Listed in scope and findings reference ySwapper.sol | no |
| yAcademy_-_yearn_veyfi_review.pdf | GaugeFactory | unmatched — not counted | — | mentioned in summary: 'The GaugeFactory contract creates new Gauge and ExtraReward contracts' | no |
| yAcademy_-_yearn_veyfi_review.pdf | Gauge | own contract | Gauge (selected) `0x107717c98c8125a94d3d2cc82b86a1b705f3a27c` — deployed 2023-10-18 02:59:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| yAcademy_-_yearn_veyfi_review.pdf | ExtraReward | unmatched — not counted | — | mentioned in summary and findings | no |
| yAcademy_-_yearn_veyfi_review.pdf | Registry | ambiguous — not counted | Registry (alternative) `0xd40ecf29e001c76dcc4cc0d9cd50520ce845b038` — deployed 2024-11-13 09:17:23+03 — liveness: live (current_address_book_code)<br>0x727fe1… (alternative) `0x727fe1759430df13655ddb0731de0d0fde929b04` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| yAcademy_-_yearn_veyfi_review.pdf | VotingEscrow | unmatched — not counted | — | mentioned in summary and findings | no |
| yAcademy_-_yearn_veyfi_review.pdf | BaseGauge | unmatched — not counted | — | mentioned in findings | no |
| yAcademy_-_yearn_veyfi_review.pdf | VeYfiRewards | unmatched — not counted | — | mentioned in findings | no |
| yAcademy_-_yearn_veyfi_review.pdf | VoteDelegation | unmatched — not counted | — | mentioned in findings | no |
| yAcademy_-_yearn_veyfi_review.pdf | YieldStreamer | unmatched — not counted | — | mentioned in informational finding #6 | no |
| ChainSecurity_Yearn_Serpentor_audit.pdf | SerpentorBravo | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_Yearn_Serpentor_audit.pdf | Timelock | ambiguous — not counted | 0x88ba03… (alternative) `0x88ba032be87d5ef1fbe87336b7090767f367bf73` — deployed 2026-01-16 00:14:03+03 — liveness: live (current_address_book_code)<br>0x88ba03… (alternative) `0x88ba032be87d5ef1fbe87336b7090767f367bf73` — deployed 2026-01-16 00:17:13+03 — liveness: live (current_address_book_code)<br>0x88ba03… (alternative) `0x88ba032be87d5ef1fbe87336b7090767f367bf73` — deployed 2026-01-16 00:15:16+03 — liveness: live (current_address_book_code)<br>0x88ba03… (alternative) `0x88ba032be87d5ef1fbe87336b7090767f367bf73` — deployed 2026-01-16 00:12:41+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| ChainSecurity_-_Yearn_yCRV_and_ZapYCRV_Audit.pdf | yCRV | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_-_Yearn_yCRV_and_ZapYCRV_Audit.pdf | ZapYCRV | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_-_Yearn_veYFI_and_RewardPool_audit.pdf | VotingYFI | unmatched — not counted | — | Scope section: 'The assessment was performed on VotingYFI.vy and RewardPool.vy source code files' | no |
| ChainSecurity_-_Yearn_veYFI_and_RewardPool_audit.pdf | RewardPool | unmatched — not counted | — | Scope section: 'The assessment was performed on VotingYFI.vy and RewardPool.vy source code files' | no |
| ChainSecurity_Yearn_Yearn_yETH_audit.pdf | Pool | own contract | 0xccd040… (selected) `0xccd04073f4bdc4510927ea9ba350875c3c65bf81` — deployed 2025-07-01 14:07:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity_Yearn_Yearn_yETH_audit.pdf | Staking | own contract | Staking (selected) `0xcb7dce63abe175ca354dcca9cc10554d255777ee` — deployed 2024-04-12 17:58:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity_Yearn_Yearn_yETH_audit.pdf | Token | unmatched — not counted | — | Mentioned in trust model: 'we assume that the LP token in Pool and the asset in Staking is yETH (as implemented in Token.vy)' | no |
| Yearn Finance yETH-bootstrap Security Audit Report - Mixbytes.pdf | Bootstrap.vy | own contract | 0x41b994… (selected) `0x41b994c192183793bb9cc35baab8bd9c6885c6bf` — deployed 2023-07-03 23:14:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Yearn Finance yETH-bootstrap Security Audit Report - Mixbytes.pdf | MerkleIncentives.vy | own contract | Incentives for Snapshot votes (selected) `0xae9de8a3e62e8e2f1e3800d142d23527680a5179` — deployed 2023-07-06 15:09:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Yearn Finance yETH-bootstrap Security Audit Report - Mixbytes.pdf | POL.vy | own contract | Protocol Owned Liquidity (selected) `0x929401e30aab6bd648def2d30ff44952bab04478` — deployed 2023-06-30 14:27:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Yearn Finance yETH-bootstrap Security Audit Report - Mixbytes.pdf | Token.vy | own contract | yETH token (selected) `0x1bed97cbc3c24a4fb5c069c6e311a967386131f7` — deployed 2023-06-29 11:46:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Yearn Finance yETH-bootstrap Security Audit Report - Mixbytes.pdf | CurveLP.vy | unmatched — not counted | — | listed in scope table | no |
| Yearn Finance yETH-bootstrap Security Audit Report - Mixbytes.pdf | Shutdown.vy | unmatched — not counted | — | listed in scope table | no |
| Yearn Finance yETH-bootstrap Security Audit Report - Mixbytes.pdf | Stake.vy | own contract | Staking Module (selected) `0x27a2fc2d47c5063a551c8fe81f580b84ab78ac52` — deployed 2023-07-06 14:52:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity_Yearn_yETH_Periphery_audit.pdf | FraxRateProvider | unmatched — not counted | — | Scope section: 'In scope were the contracts in the contracts/providers directory.' System overview describes Frax rate provider contract. | no |
| ChainSecurity_Yearn_yETH_Periphery_audit.pdf | LidoRateProvider | unmatched — not counted | — | Scope section: 'In scope were the contracts in the contracts/providers directory.' System overview describes Lido rate provider contract. | no |
| ChainSecurity_Yearn_yETH_Periphery_audit.pdf | StaderRateProvider | unmatched — not counted | — | Scope section: 'In scope were the contracts in the contracts/providers directory.' System overview describes Stader rate provider contract. | no |
| ChainSecurity_Yearn_yETH_Periphery_audit.pdf | StaFiRateProvider | unmatched — not counted | — | Scope section: 'In scope were the contracts in the contracts/providers directory.' System overview describes StaFi rate provider contract. | no |
| ChainSecurity_Yearn_yETH_Periphery_audit.pdf | SwellRateProvider | unmatched — not counted | — | Scope section: 'In scope were the contracts in the contracts/providers directory.' System overview describes Swell rate provider contract. | no |
| ChainSecurity_Yearn_yETH_Periphery_audit.pdf | TranchessRateProvider | unmatched — not counted | — | Scope section: 'In scope were the contracts in the contracts/providers directory.' System overview describes Tranchess rate provider contract. | no |
| Yearn_Finance_Vesting_Escrow_Security_Audit_Report.pdf | VestingEscrowSimple | unmatched — not counted | — | listed in scope table and deployments table | no |
| Yearn_Finance_Vesting_Escrow_Security_Audit_Report.pdf | VestingEscrowFactory | unmatched — not counted | — | listed in scope table and deployments table | no |
| Yearn V3 report.pdf | BaseStrategy | unmatched — not counted | — | listed in scope | no |
| Yearn V3 report.pdf | TokenizedStrategy | own contract | 0xbb5127… (selected) `0xbb51273d6c746910c7c06fe718f30c936170fed0` — deployed 2024-03-06 04:02:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Yearn V3 report.pdf | VaultFactory | own contract | 0x444045… (selected) `0x444045c5c13c246e117ed36437303cac8e250ab0` — deployed 2024-03-06 03:50:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Yearn V3 report.pdf | VaultV3 | own contract | 0x1ab624… (selected) `0x1ab62413e0cf2ebeb73da7d40c70e7202ae14467` — deployed 2024-03-06 03:46:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Yearn-Smart-Contract-Audit-_-Tokenized_Strategy_ChainSecurity.pdf | BaseTokenizedStrategy | unmatched — not counted | — | listed in scope table | no |
| Yearn-Smart-Contract-Audit-_-Tokenized_Strategy_ChainSecurity.pdf | TokenizedStrategy | unmatched — not counted | — | listed in scope table | no |
| Yearn-Smart-Contract-Audit_V3_Vaults_-ChainSecurity.pdf | VaultFactory | unmatched — not counted | — | listed in scope section 2.1 | no |
| Yearn-Smart-Contract-Audit_V3_Vaults_-ChainSecurity.pdf | VaultV3 | unmatched — not counted | — | listed in scope section 2.1 | no |
| 06-2023-Yearn-Vault-V3_yAcademy_Reports.pdf | VaultFactory | unmatched — not counted | — | listed in scope table | no |
| 06-2023-Yearn-Vault-V3_yAcademy_Reports.pdf | VaultV3 | unmatched — not counted | — | listed in scope table | no |
| 06-2023-Yearn-Vault-V3_yAcademy_Reports.pdf | BaseTokenizedStrategy | unmatched — not counted | — | listed in scope table | no |
| 06-2023-Yearn-Vault-V3_yAcademy_Reports.pdf | TokenizedStrategy | unmatched — not counted | — | listed in scope table | no |
| yearn-vaults-v3 | VaultFactory | unmatched — not counted | — | listed in repository description | no |
| yearn-vaults-v3 | VaultV3 | unmatched — not counted | — | listed in repository description | no |
| 2021-04-02.md | StrategyMakerYFIDAIDelegate | unmatched — not counted | — | mentioned in incident disclosure as flawed strategy | no |
| 2021-04-02.md | StrategyMakerETHDAIDelegate | unmatched — not counted | — | mentioned as same template, migrated | no |
| 2021-05-13.md | StrategyProxy | unmatched — not counted | — | mentioned as flawed contract in incident disclosure | no |
| 2021-05-13.md | CurveYCRVVoter | unmatched — not counted | — | mentioned as contract interacted with via proxy | no |
| 2021-05-13.md | StrategyCurvea3CRVVoterProxy | unmatched — not counted | — | mentioned in timeline as contract where proxy address was set to zero | no |
| 2021-05-14.md | SingleSidedCrvDAI | unmatched — not counted | — | mentioned as the strategy involved in the incident | no |
| 2021-05-20.md | StrategyMakerETHDAIDelegate | unmatched — not counted | — | Mentioned as the flawed strategy in the incident disclosure | no |
| 2021-06-29.md | StrategyGenericLevCompFarm | unmatched — not counted | — | mentioned as the strategy type | no |
| 2021-06-29.md | DAI GenLevComp | unmatched — not counted | — | listed in references as affected strategy | no |
| 2021-06-29.md | DAI IB GenLevComp | unmatched — not counted | — | listed in references as affected strategy | no |
| 2021-06-29.md | USDC GenLevComp | unmatched — not counted | — | listed in references as affected strategy | no |
| 2021-06-29.md | USDC IB GenLevComp | unmatched — not counted | — | listed in references as affected strategy | no |
| 2022-01-30.md | SingleSidedBalancer | unmatched — not counted | — | Mentioned as the vulnerable strategy class throughout the report. | no |
| 2022-09-06.md | WOOFY | unmatched — not counted | — | mentioned as affected token | no |
| 2022-09-06.md | Vault | unmatched — not counted | — | referenced in scope as affected contract | no |
| 2022-11-01.md | BribeV2 | unmatched — not counted | — | mentioned as vulnerable contract in scope | no |
| 2022-11-01.md | BribeV3 | unmatched — not counted | — | deployed as fix, also called yBribe | no |
| 2022-11-01.md | yBribe | unmatched — not counted | — | alias for BribeV3 | no |
| 2022-11-07.md | StargateUSDCStaker | unmatched — not counted | — | Mentioned as the strategy contract that had the bug and was migrated. | no |
| 2023-04-04.md | StrategystETHAccumulator_v2 | unmatched — not counted | — | listed in scope and referenced in report | no |
| 2023-04-04.md | StrategystETHAccumulator | unmatched — not counted | — | listed as impacted strategy | no |
| 2023-05-21.md | StakingRewardsZap | unmatched — not counted | — | Affected zap contract mentioned in incident disclosure | no |
| 2023-06-13.md | StealthSafeGuard | unmatched — not counted | — | mentioned as the custom Safe guard deployed at a vanity address | no |
| 2025-08-13.md | yBOLD | unmatched — not counted | — | mentioned as contract in scope | no |
| 2025-08-13.md | ysyBOLD | unmatched — not counted | — | mentioned as contract in scope | no |
| 2025-08-13.md | Accountant | unmatched — not counted | — | custom accountant contract in scope | no |
| 2025-08-13.md | DepositLimitModule | unmatched — not counted | — | fix contract deployed | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | `0x1f399808fe52d0e960cab84b6b54d5707ab27c8a` | Accountant | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf728f839796a399acc2823c1e5591f05a31c32d1` | AccountantFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x437758d475f70249e03eda6be23684ad1fc375f0` | AddressesGenerator_VAULT_V2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf536399c04683d7ab0bcb1308c245b4bbb539344` | AddressesGeneratorEarn | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xce29d34c8e88a2e1edde10ad4eee4f3e379fc041` | AddressesGeneratorV1Vaults | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x3a8efa2d87d60c0289f19b44a0928f4269c0f094` | AddressesGeneratorV2Vaults | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x156bab355e81b498072c9ce3cf655e9844a12529` | AddressMergeHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1981ad9f44f2ea9add2dc4ad7d075c102c70af92` | AprOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xba7fcb508c7195ee5ae823f37ee2c11d7ed52f8e` | AuctionFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x94f44706a61845a4f9e59c4bc08cea4503e48d12` | AuctionRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x167aa4ba31b8285707d1489ad705cb24cf4e5186` | BalancesHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x5fd3815dcb668200a662114fbc9af13ac0a55b4d` | CalculationsChainlinkRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x0ffe8434eae67c9838b12c3cd11ac4005daa7227` | CalculationsCurve | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x55e9b18fefff7e00548d54480373fc8843de8ea4` | CalculationsIronBank | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x5ea7e501c9a23f4a76dc7d33a11d995b13a1dd25` | CalculationsSushiswap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x38477f2159638956d33e18951d98238a53b9aa3c` | CalculationsYearnVaults | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x32059cce723b4dd15dd5cb2a5187f814e6c470bc` | CommonHealthCheck | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf8df17a35c88abb25e83c92f9d293b4368b9d52d` | CommonTrigger | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xff71841eefca78a64421db28060855036765c248` | CoveYFI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1e9eb053228b1156831759401de0e115356b8671` | DebtAllocator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x03d43df6ff894c848fc6f1a0a7e8a539ef9a4c18` | DebtAllocatorFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x9c42461aa8422926e3aef7b1c6e3743597149d79` | Delegated Staked YFI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x952b31960c97e76362ac340d07d183ada15e3d6e` | Delegated Staking Reward Distributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc01a529c01f9399c928a4afc50e25f12d1e5b142` | DelegatedBalanceMapping | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x590dd9399bb53f1085097399c3265c7137c1c4cf` | Dumper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x41252e8691e964f7de35156b68493bab6797a275` | dYFI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2391fc8f5e417526338f5aa3968b1851c16d894e` | dYFI Reward Pool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x62a4e0e7574e5407656a65cc8dbdf70f3c6eb04b` | EarnRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1d0fdcb628b2f8c0e22354d45b3b2d4ce9936f8b` | Gauge registry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x128e72dfd8b00cbf9d12cb75e846ac87b83ddfc9` | GaugeV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb7a528cf6d36f736fa678a629b98a427d43e5ba5` | Generic governor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x5aacd0d03096039ac4381cd814637e9fb7c34a6f` | Helper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x52605bbf54845f520a3e94792d019f62407db2f8` | Keeper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3d4ced97adb0ae3a53da95a47ffc749aad26bc8f` | Liquid Locker Depositor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xba18d0df75a3ff58ef40a8fc0d3e4db74a0e681d` | Liquid Locker Redemption | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7efc3953bed2fc20b9f825ebffab1cc8b072a000` | Liquid Locker Reward Distributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7ba61c8e19414dcb8fe769a7be63b508c8062bba` | LockerZapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x7e9756e1427b3c38f001f9d272d8d62bef63d619` | ManagementList | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x9046d36440290ffde54fe0dd84db8b1cfee9107b` | OptimismMintableERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x043518ab266485dc085a1db095b8d9c2fc78e9b9` | Oracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x56af9c2780e0323810acfdaeab3f58ef6e76fafd` | Ownership proxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x5d63a8584d91ebc5033d022afd6c5a7c7fddc99b` | PricesHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x775f09d6f3c8d2182dfa8bce8628acf51105653c` | Protocol Address Provider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x54483f1592ab0adea2757ae0d62e6393361d4cee` | RefundAccountant | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x240315db938d44bb124ae619f5fd0269a02d1271` | RegisteryAdapterV2Vaults | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd40ecf29e001c76dcc4cc0d9cd50520ce845b038` | Registry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xbcfca75ff12e2c1bb404c2c216dbf901be047690` | RegistryAdapterV2Vault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3a0fa8aac82ad94048098d6af6e8eb36c98816a1` | RegistryFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0377b4dadda86c89a0091772b79ba67d0e5f7198` | ReleaseRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa82454009e01ae697012a73cb232d85e61b05e50` | Reward Claimer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd31911a33a5577be233dc096f6f5a7e496ff5934` | Reward Distributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x3bf72024420bdc4d7ca6a8b6211829476d6685b1` | RoleManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xca12459a931643bf28388c67639b3f352fe9e5ce` | RoleManagerFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2c641e14afecb16b4aa6601a40ee60c3cc792f7d` | SharerV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xe9462885290eb79ece41367d92712d6f525ba5fa` | Shutdown Module | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1d02f6a86ed5650f93e40fcd62fa5727c32ad746` | SingleTokenRewardDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x42b25284e8ae427d79da78b65dffc232aaecc016` | Staked YFI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x95547ede56cf74b73dd78a37f547127dffda6113` | Staking Reward Distributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf8f60bf9456a6e0141149db2dd6f02c60da5779b` | TimelockExecutor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x02ff746d8cb62709aeec611cec9b17d7dd1d3480` | Treasury | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x93a62da5a14c80f265dabc077fcee437b1a0efde` | TreasuryVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1007ed6fdfac72bbea9c719cf1fa9c355d248691` | TvlAdapterEarn | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xec7ac8ac897f5082b2c3d4e8d2173f992a097f24` | TvlAdapterIronBank | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf4fb8903a41fc78686b26de55502cde42a4c6c78` | TvlAdapterV1Vaults | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x14d6e0908bae40a2487352b2a9cb1a6232da8785` | TvlAdapterV2Vaults | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x560144c25e53149ac410e5d33bdb131e49a850e5` | TvlAdapterVeCrv | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc3a0bef4a47ba579cbba510ae2c59d9b9bf9467c` | UniqueAddressesHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xab1c342c7bf5ec5f02adea1c2270670bca144cbb` | Unitroller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x736d7e3c5a6cb2ce3b764300140abf476f6cfccf` | V2Keeper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x2d12caffa46ab3b6c5ceb224620de8b4de3cdff1` | VelodromeGlobal | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2548bf65916fdabb5a5673fc4225011ff29ee884` | Voting Escrow Reward Distributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x0000000022d53366457f9d5e68ec105046fc4383` | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x265c8d21a322b04804524b857089de2fef619569` | YBSUtilities | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x01791f726b4103694969820be083196cc7c045ff` | YBToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x310ac28acf5e514abdbff9ab25e21f1bfe22bcac` | Yearn Vault Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1112dbcf805682e828606f74ab717abf4b4fd8de` | Yearn4626Router | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x5d2ea33449a60a70e8fcdc5251fdd86a030fad91` | YearnBoostedStaker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x583019ff0f430721ada9cfb4fac8f06ca104d0b4` | yETH staking contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3ee41c098f9666ed2ea246f4d2558010e59d63a0` | YRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 645 |
| upstream | 12 |
| standard_library | 9 |
| needs_review | 1430 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 77
- Inherited remapped matches: 0
- Address-book scope dispositions: 25 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 5 ambiguous, 245 unmatched
- Matched-own operational status: 25 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=55, low=24, medium=10
- Match method counts: address=16, unique_name=9

Zero-match audit list:

- [18631] DL audit link
- [18632] download report
- [18633] DL audit link
- [18636] StrategyCurveYCRV.sol - HackMD.pdf
- [18637] YearnV2_ our gotcha notes - HackMD.pdf
- [18638] Certik - itoken-finance-audit-report-1.1.0.pdf
- [18640] MixBytes - Timeloans.Finance Smart Contract Security Audit Report.pdf
- [18641] MixBytes - Yearn.Finance protocol v.1 Smart Contracts Audit Security Audit Report.pdf
- [18642] MixBytes_Yearn_Vault_v_2_Smart_Contract_Audit_Report_Solidity_part.pdf
- [18643] MixBytes_Yearn_Vault_v_2_Smart_Contract_Audit_Report_Vyper_part.pdf
- [18644] MixBytes_Yoracle_link_Smart_Contracts_Audit_Report.pdf
- [18645] PeckShield_Yearn_Strategies_v_2_Hegic_and_Dai_Smart_Contracts_Audit_Report.pdf
- [18646] Mixbytes_Cover_Protocol_v2_Security_Audit_Report.pdf
- [18647] 202102_MixBytes_sushiswap-bentobox.pdf
- [18648] MixBytes_YearnV2_generic_lender_strat_Smart_Contracts_Security_Audit_Report.pdf
- [18649] PeckShield_Audit_Report_CoverForge_v1.0.pdf
- [18650] MixBytes_-_Yearn_Stablecoins_3pool_Contracts_Audit_Report.pdf
- [18651] MixBytes_-_Yearn_Stablecoins_Ypool_Contracts_Audit_Report.pdf
- [18652] MixBytes_-_Curve_Voter_Proxy_Security_Audit_Report.pdf
- [18653] MixBytes_-_Yearn_Generic_Lender_Aave_Contracts_Audit_Report.pdf
- [18655] MixBytes_-_Yearn_Yvboost_Contracts_Audit_Report.pdf
- [18656] MixBytes_-_Yearn_Strategies_SNX_Contracts_Audit_Report.pdf
- [18657] MixBytes_-_Yearn_Liquity_stability_pool_Security_Audit_Report.pdf
- [18659] MixBytes_-_Yearn_Maker_Dai_Delegate_Security_Audit_Report.pdf
- [18660] ChainSecurity_-_Yearn_Finance_Partner_Tracker_Audit.pdf
- [18661] Mixbytes_-_Yearn_Strategy_SSB_Security_Audit_Report.pdf
- [18662] Optimum_-_Yearn_Tokemak_Strategy_Security_Assessment.pdf
- [18663] Mixbytes_-_Yearn_Joint_Strategy_Security_Audit_Report.pdf
- [18664] Mixbytes_-_Yearn_Yswaps_Security_Audit_Report.pdf
- [18665] Optimum_-_Notional_Finance_Strategy_Security_Assessment.pdf
- [18666] Dedaub_-_Angle.md
- [18667] Dedaub_-_Stargate.md
- [18668] Optimum_-_Gen_lev_lending_Strategy_Security_Assessment.pdf
- [18669] Optimum_-_Stargate_Strategy_Security_Assessment.pdf
- [18670] Optimum_-_Uni_v3_Frax_Strategy_Security_Assessment.pdf
- [18671] Decurity_-_No_Hedge_Joint_Strategy_Security_Audit_Report.pdf
- [18672] Optimum_-_Notional_Finance_LP_Strategy_Security_Assessment.pdf
- [18673] Optimum_-_Angle_Protocol_Strategy_Security_Assessment.pdf
- [18675] 202208_Statemind_Tarot_Impermax.md
- [18676] yAcademy_-_LevGeist_review.pdf
- [18677] yAcademy_-_Yearn_BalancerLpFactory_review.pdf
- [18678] yAcademy_-_joint_strategy_review.pdf
- [18680] ChainSecurity_Yearn_Serpentor_audit.pdf
- [18681] ChainSecurity_-_Yearn_yCRV_and_ZapYCRV_Audit.pdf
- [18682] ChainSecurity_-_Yearn_veYFI_and_RewardPool_audit.pdf
- [18685] ChainSecurity_Yearn_yETH_Periphery_audit.pdf
- [18686] Yearn_Finance_Vesting_Escrow_Security_Audit_Report.pdf
- [18688] Yearn-Smart-Contract-Audit-_-Tokenized_Strategy_ChainSecurity.pdf
- [18689] Yearn-Smart-Contract-Audit_V3_Vaults_-ChainSecurity.pdf
- [18690] 06-2023-Yearn-Vault-V3_yAcademy_Reports.pdf
- [18691] yearn-vaults-v3
- [18692] 2020-09-25.md
- [18693] 2020-10-10.md
- [18694] 2020-10-30.md
- [18695] 2021-01-17.md
- [18696] 2021-02-04.md
- [18697] 2021-02-18.md
- [18698] 2021-04-02.md
- [18699] 2021-05-13.md
- [18700] 2021-05-14.md
- [18701] 2021-05-20.md
- [18702] 2021-06-29.md
- [18703] 2021-10-27.md
- [18704] 2022-01-30.md
- [18705] 2022-09-06.md
- [18706] 2022-11-01.md
- [18707] 2022-11-07.md
- [18708] 2023-03-13.md
- [18709] 2023-04-04.md
- [18710] 2023-05-21.md
- [18711] 2023-06-13.md
- [18712] 2023-12-11.md
- [18713] 2024-01-03.md
- [18714] 2025-05-08.md
- [18715] 2025-08-13.md
- [18716] 2025-11-26.md
- [18717] 2025-12-01.md

Fork inheritance lineage and inherited audits are included when available.
