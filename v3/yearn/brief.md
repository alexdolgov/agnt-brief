# Agentic Audit Brief: Yearn

## Export Authority

- Production state: **published scope**
- Raw selected rows: 25 across 12 audit(s)
- Eligible audit results: 89 (12 matched; 77 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Yearn (`yearn`)
- Website: [https://yearn.fi/](https://yearn.fi/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, ethereum, fantom, optimism, polygon
- Contract surface: 823 unique implementations (823 raw deployments)
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
Origin: lido (`0x1bb44f9d91b4276621550aeea5d2d96279975bf3`)
Containment: 100.0% - 37 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**YBSUtilities** (`0x265c8d21a322b04804524b857089de2fef619569`, chain 1)
Origin: stake-dao (`0x499099832153c7d3cd88f9b8b5d6ca59fac505c3`)
Containment: 91.3% - 21 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original):
- getUserActiveAprWithFee(address,uint256,uint256)
- getUserProjectedAprWithFee(address,uint256,uint256)

**Yearn4626Router** (`0x1112dbcf805682e828606f74ab717abf4b4fd8de`, chain 1)
Origin: cove-finance (`0x15633dc0ce383babc96fdcdabf08a29e87ce53e3`)
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
- Outside the address book: 570 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 11
- Confirmed-live implementations: 245 of 823 unique; 578 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 9/666
- Verified + Unaudited implementations: 657
- Verified by bytecode match: 0
- Unverified implementations: 157
- Unique implementations: 823
- Raw deployments: 823
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
| VaultRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x78f73705105a63e06b932611643e0b210fae93e9` | ⚠️ Unaudited |
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

### ❓ Unverified (157)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-263229 | `0x01d7f32b6e463c96c00575fa97b8224326c6a6b9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263232 | `0x0844c227b892be5d7c837000c096f64bfc316c2d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263239 | `0x1ab62413e0cf2ebeb73da7d40c70e7202ae14467` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263244 | `0x1f6f16945e395593d8050d6cc33e4328a515b648` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263250 | `0x254a93feff3beef9ca004e913bb5443754e8ab19` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263253 | `0x27b5739e22ad9033bcbf192059122d163b60349d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263254 | `0x28da6de3e804bddf0ad237cfa6048f2930d0b4dc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263257 | `0x310f5db015e9d6e542fd41bd4542640790791e76` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263258 | `0x33333333d5efb92f19a5f94a43456b3cec2797ae` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263260 | `0x38e3d865e34f7367a69f096c80a4fc329db38bf4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263265 | `0x41b994c192183793bb9cc35baab8bd9c6885c6bf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263266 | `0x4218e20db87023049fc582aaa4bd47a3611a20ab` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263269 | `0x444045c5c13c246e117ed36437303cac8e250ab0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-263270 | `0x453d92c7d4263201c69aacfaf589ed14202d83a4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263271 | `0x46b38522422d597ddbaa2d6e98d6c9b397028d5b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263272 | `0x4707c855323545223fa2ba4150a83950f6f53b6e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263273 | `0x50397cab18446761f05883338111ae0ed8213da3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263274 | `0x50c1a2ea0a861a967d9d0ffe2ae4012c2e053804` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263276 | `0x52aa16860e0d42b6a7b6ecc15688472eb20135c9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263277 | `0x5577edcb8a856582297cdbbb07055e6a6e38eb5f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263283 | `0x5943f7090282eb66575662eadf7c60a717a7ce4d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263284 | `0x5a74cb32d36f2f517db6f7b0a0591e09b22cde69` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263285 | `0x5a7cbc89d543399743d7c4b4a21110b19c6208ae` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263289 | `0x622fa41799406b120f9a40da843d358b7b2cfee3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263291 | `0x696d02db93291651ed510704c9b286841d506987` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263292 | `0x6e9455d109202b426169f0d8f01a3332dae160f3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263294 | `0x71c3223d6f836f84caa7ab5a68aab6ece21a9f3b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263296 | `0x770d0d1fb036483ed4abb6d53c1c88fb277d812f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263298 | `0x78ada385b15d89a9b845d2cac0698663f0c69e3c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263300 | `0x7cb5abeb0de8f6f46a27329b9ef54ce10e47f1e2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263301 | `0x7cf484d9d16ba26ab3bcdc8ec4a73ac50136d491` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263303 | `0x7fd8af959b54a677a1d8f92265bd0714274c56a3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263304 | `0x81d93531720d86f0491dee7d03f30b3b5ac24e59` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-263305 | `0x83d95e0d5f402511db06817aff3f9ea88224b030` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263306 | `0x846e211e8ba920b353fb717631c015cf04061cc9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263307 | `0x855ffe28019106d089bc018df18838f8d241c402` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263309 | `0x88de7d7f7b9597c86b8cd195374fbf602934f334` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263310 | `0x8e2485942b399ea41f3c910c1bb8567128f79859` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263311 | `0x90c1f9220d90d3966fbee24045edd73e1d588ad5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263317 | `0x957e3ae7983155a9f9e08da555b8084448be26e4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263318 | `0x97983236be88107cc8998733ef73d8d969c52e37` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263319 | `0x97a597cbca514afcc29cd300f04f98d9dbaa3624` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263321 | `0xa0b57619a980dfefd50f24f310ee1b55a40a9d46` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263322 | `0xa16f6fc7380300525c812ea2733ad62dda58143b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263324 | `0xaaafea48472f77563961cdb53291dedfb46f9040` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263325 | `0xae813841436fe29b95a14ac701afb1502c4cb789` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263327 | `0xaf1f5e1c19cb68b30aad73846effdf78a5863319` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263328 | `0xb226c52eb411326cdb54824a88abafdaaff16d3d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263329 | `0xb287a1964aee422911c7b8409f5e5a273c1412fa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263330 | `0xb3bd6b2e61753c311efbcf0111f75d29706d9a41` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263331 | `0xb61f8fff8dd8c438e0d61c07b5536ce3d728f660` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263332 | `0xb70e1cbff4dff345b3aa832cc1c03ca26766ad55` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263336 | `0xbb51273d6c746910c7c06fe718f30c936170fed0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263337 | `0xbbbbbbbb6b942883ead4976882c99201108c784d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263338 | `0xbe53a109b494e5c9f97b9cd39fe969be68bf6204` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263339 | `0xbf319ddc2edc1eb6fdf9910e39b37be221c8805f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263341 | `0xc32bd1a70e831c43956ff2f5f23f2ee45a04c020` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-263343 | `0xc97232527b62efb0d8ed38cf3ea103a6cca4037e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263345 | `0xca78af7443f3f8fa0148b746cb18ff67383cdf3f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263347 | `0xccd04073f4bdc4510927ea9ba350875c3c65bf81` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263350 | `0xd192e702ecc54fcfb52f6764333eb8a5c849d6ce` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263352 | `0xd377919fa87120584b21279a491f82d5265a139c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263354 | `0xd533a949740bb3306d119cc777fa900ba034cd52` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263355 | `0xd57aea3686d623da2dcebc87010a4f2f38ac7b15` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263356 | `0xd8063123bba3b480569244ae66bfe72b6c84b00d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263357 | `0xdc775e813cdb38a4f02c4bad3942319088018efa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263358 | `0xdd3fa86409658d207a9be0141ee560c8db557824` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263359 | `0xddcea799ff1699e98edf118e0629a974df7df012` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263360 | `0xde992c652b266ae649fec8048afc35954bee6145` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263361 | `0xdfc8cd9f2f2d306b7c0d109f005df661e14f4ff2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263362 | `0xe0514dd71cfdc30147e76f65c30bdf60bfd437c3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263363 | `0xe28fcc9fb2998ba57754789f6666daa8c815614d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263364 | `0xe5e2baf96198c56380ddd5e992d7d1ada0e989c0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263366 | `0xe9a115b77a1057c918f997c32663fdce24fb873f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263367 | `0xe9cff16bdac9729f18cbac451ecca6c50b372207` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263368 | `0xe9e8c89c8fc7e8b8f23425688eb68987231178e5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263372 | `0xf64e58ee8c7badc741a7ea98fb65488084385674` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263373 | `0xf719b2d3925cc445d2bb67fa12963265e224fa11` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263377 | `0xfcc5c47be19d06bf83eb04298b026f81069ff65b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263378 | `0xfeb4acf3df3cdea7399794d0869ef76a6efaff52` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263379 | `0xff0bd2d0c7e9424ccb149ed3757155eef41a793d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-263380 | `0xff31a1b020c868f6ea3f61eb953344920eeca3af` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | n/a | `0x0000000000000000000000000000000000000000` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1e9eb053228b1156831759401de0e115356b8671` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-263386 | `0x3d8f58774611676fd196d26149c71a9142c45296` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-263388 | `0x776c1e69b858f1b9622085052fb7b64a196ac602` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-263389 | `0x79286dd38c9017e5423073bac11f53357fc5c128` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-263391 | `0x81291ceb9bb265185a9d07b91b5b50df94f005bf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-263392 | `0x8273217252254ad7353f227aaecd2b1c4a326fa2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-263393 | `0x84654e35e504452769757aae5a8c7c6599cbf954` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-263394 | `0x88ba032be87d5ef1fbe87336b7090767f367bf73` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-263395 | `0x8eb53a4fd9d2727a49e9e68a32108c18049bff86` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-263397 | `0x94141d7bff3d04d61ce65b917bdd37b655e08f18` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-263398 | `0xb082d9f4734c535d9d80536f7e87a6f4f471bf65` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-263400 | `0xd3a93c794ee2798d8f7906493cd3c2a835aa0074` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-263401 | `0xd63ab09ac2048a7ecac92f0ffad5f104edd0e032` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-263402 | `0xea3a15df68fcdbe44fdb0db675b2b3a14a148b26` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-263403 | `0xf5d9d6133b698ce29567a90ab35cfb874204b3a7` | ❓ Unverified |
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
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-263467 | `0x1e9eb053228b1156831759401de0e115356b8671` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-263470 | `0x697bc6bd64677be63240262869dd5f2a3eeaccd3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-263471 | `0x8273217252254ad7353f227aaecd2b1c4a326fa2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-263472 | `0x88ba032be87d5ef1fbe87336b7090767f367bf73` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-263473 | `0x9eaf8c1e34f05a589eda6bafdf391cf6ad3cb239` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-263474 | `0xbfaaba9f56a39b814281d68d2ad949e88d06b02e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-263475 | `0xea3481244024e2321cc13acaa80df1050f1fd456` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-263476 | `0xf3885ede00171997bfadaa98e01e167b53a78ec5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-263477 | `0xf8f60bf9456a6e0141149db2dd6f02c60da5779b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-263478 | `0xfeae2f855250c36a77b8c68db07c4dd9711fe36f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-263439 | `0x1deb47dcc9a35ad454bf7f0fcdb03c09792c08c1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-263440 | `0x1e9eb053228b1156831759401de0e115356b8671` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-263441 | `0x2a139a2812f1424f0c88e3d73854b16fb04e9449` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-263442 | `0x3199437193625dccd6f9c9e98bdf93582200eb1f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-263446 | `0x57aa88a0810dfe3f9b71a9b179dd8bf5f956c46a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-263448 | `0x6346282db8323a54e840c6c772b4399c9c655c0d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-263449 | `0x66a1a27f4b22dcaa24e427dcffbf0cddd9d35e0f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-263450 | `0x697bc6bd64677be63240262869dd5f2a3eeaccd3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-263451 | `0x7aad416eb4e16a27b85e7076dd56742a44e9d25b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-263452 | `0x84654e35e504452769757aae5a8c7c6599cbf954` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-263453 | `0x88ba032be87d5ef1fbe87336b7090767f367bf73` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-263454 | `0x8a5f0876b217ee61d101e022bb00d032e6d353bc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-263456 | `0x94734ba0f9f8c2464d963a402743fd79b402efd7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-263457 | `0x9ab47be62631036cda3a64b8322704988427f366` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-263458 | `0xb6bc033d34733329971b938fef32fad7e98e56ad` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-263459 | `0xcad10033c86b0c1ed6bfccaa2ff6779938558e9f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-263460 | `0xdf43263dfec19117f2fe79d1d9842a10c7495ccd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-263461 | `0xe55dd55b3355c261a048b3f310706c7478657d74` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-263462 | `0xf5875d60241c8f6448649206a6f485b812acf44d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-263463 | `0xf8f60bf9456a6e0141149db2dd6f02c60da5779b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-263464 | `0xfd99a19fcf577be92fdab4ef162c1644bb056885` | ❓ Unverified |

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
| download report | Pool | own contract | 0xccd040… (selected) `0xccd04073f4bdc4510927ea9ba350875c3c65bf81` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
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
| Yearn Finance yETH-bootstrap Security Audit Report.pdf | Bootstrap.vy | own contract | 0x41b994… (selected) `0x41b994c192183793bb9cc35baab8bd9c6885c6bf` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
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
| Mixbytes_Cover_Protocol_v2_Security_Audit_Report.pdf | Address | ambiguous — not counted | 0xe5e2ba… (alternative) `0xe5e2baf96198c56380ddd5e992d7d1ada0e989c0` — liveness: live (current_address_book_code)<br>0x29b0da… (alternative) `0x29b0da86e484e1c0029b56e817912d778ac0ec69` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
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
| Statemind_-_Yearn_veyfi_Audit.pdf | VotingYFI | own contract | 0x90c1f9… (selected) `0x90c1f9220d90d3966fbee24045edd73e1d588ad5` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Statemind_-_Yearn_veyfi_Audit.pdf | RewardPool | own contract | 0xb287a1… (selected) `0xb287a1964aee422911c7b8409f5e5a273c1412fa` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
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
| ChainSecurity_Yearn_Serpentor_audit.pdf | Timelock | ambiguous — not counted | 0x88ba03… (alternative) `0x88ba032be87d5ef1fbe87336b7090767f367bf73` — liveness: live (current_address_book_code)<br>0x88ba03… (alternative) `0x88ba032be87d5ef1fbe87336b7090767f367bf73` — liveness: live (current_address_book_code)<br>0x88ba03… (alternative) `0x88ba032be87d5ef1fbe87336b7090767f367bf73` — liveness: live (current_address_book_code)<br>0x88ba03… (alternative) `0x88ba032be87d5ef1fbe87336b7090767f367bf73` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| ChainSecurity_-_Yearn_yCRV_and_ZapYCRV_Audit.pdf | yCRV | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_-_Yearn_yCRV_and_ZapYCRV_Audit.pdf | ZapYCRV | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_-_Yearn_veYFI_and_RewardPool_audit.pdf | VotingYFI | unmatched — not counted | — | Scope section: 'The assessment was performed on VotingYFI.vy and RewardPool.vy source code files' | no |
| ChainSecurity_-_Yearn_veYFI_and_RewardPool_audit.pdf | RewardPool | unmatched — not counted | — | Scope section: 'The assessment was performed on VotingYFI.vy and RewardPool.vy source code files' | no |
| ChainSecurity_Yearn_Yearn_yETH_audit.pdf | Pool | own contract | 0xccd040… (selected) `0xccd04073f4bdc4510927ea9ba350875c3c65bf81` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity_Yearn_Yearn_yETH_audit.pdf | Staking | own contract | Staking (selected) `0xcb7dce63abe175ca354dcca9cc10554d255777ee` — deployed 2024-04-12 17:58:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity_Yearn_Yearn_yETH_audit.pdf | Token | unmatched — not counted | — | Mentioned in trust model: 'we assume that the LP token in Pool and the asset in Staking is yETH (as implemented in Token.vy)' | no |
| Yearn Finance yETH-bootstrap Security Audit Report - Mixbytes.pdf | Bootstrap.vy | own contract | 0x41b994… (selected) `0x41b994c192183793bb9cc35baab8bd9c6885c6bf` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
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
| Yearn V3 report.pdf | TokenizedStrategy | own contract | 0xbb5127… (selected) `0xbb51273d6c746910c7c06fe718f30c936170fed0` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Yearn V3 report.pdf | VaultFactory | own contract | 0x444045… (selected) `0x444045c5c13c246e117ed36437303cac8e250ab0` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Yearn V3 report.pdf | VaultV3 | own contract | 0x1ab624… (selected) `0x1ab62413e0cf2ebeb73da7d40c70e7202ae14467` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
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
| needs_review | 157 |

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
