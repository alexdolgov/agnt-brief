# Agentic Audit Brief: WAGMI

## Project Overview

- Project: WAGMI (`wagmi`)
- Website: [https://wagmi.com/](https://wagmi.com/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:10.103Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-f007
- Chains: arbitrum, avalanche, base, bsc, ethereum, fantom, kava, metis, polygon, sonic, zksync-era
- Contract surface: 290 unique implementations (389 raw deployments)
- DeFi Llama TVL: $972,965.46
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 53 project-authored contract(s) across 8 chain(s); 5 ERC20 tokens, 2 ERC721 NFTs; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 8 functional families. Its contracts share 20 common project-authored base contract(s) (erc20permit, eip712, peripheryimmutablestate). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 522; live-surface contracts included: 389 (41 live, 348 unknown).
- Excluded by liveness: 133 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 2/12 (16.7%)
- Deployed-live implementations: 15 of 290 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 2/31
- Verified + Unaudited implementations: 29
- Verified by bytecode match: 0
- Unverified implementations: 259
- Unique implementations: 290
- Raw deployments: 389
- Audits discovered: 12 (12 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 12
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-04 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 12 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: 16.7% (Sherlock)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Hacken | Tier 2 | 2 | 6.5% | 2024-04 |
| Pashov Audit Group | Tier 2 | 2 | 6.5% | 2024-04 |
| Sherlock | Tier 1 | 2 | 6.5% | 2024-04 |
| AstraSec | Tier 2 | 1 | 3.2% | 2024-03 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| LiquidityBorrowingManager | unknown | metis | n/a | 13 deployments: sonic `0x78b7964a499b6aee02a4a3d628f3e47f7605d5d9`; metis [`0x05d73f76689e4844581a9db03f82960cbf3c4d2b`](./contracts/metis-1088/0x05d73f76689e4844581a9db03f82960cbf3c4d2b/); metis `0x07614adbe4188eaf1dd90eb49ca964307bb2e985`; metis `0x1bbce9fc68e47cd3e4b6bc3be64e271bcdb3edf1`; metis `0x1eb13fa2e6a0e96ca7d4c01e5772542bb732efa1`; metis `0x20fa274d00ff4917a13cd464fdbb200475b6eabd`; metis `0x25a31a36ff56bc5570fd09ac2da062115daeb54e`; metis `0x3c422982e76261a3ec73363cacf5c3731e318104`; metis `0x3de5e32e21a1656d04f3145552735ddb4f4a4a2c`; metis `0x9ac33eeccf1c88c4ac13d800d6e5aa4c75c6125c`; metis `0xadbc0c996ffc3b008ff4d7c56d080c871c1c7002`; metis `0xc33e12b4e71295ea5a32e5144ee8cce152832053`; metis `0xccf08f36c60dee864e6068081f40e38483d0c334` | ✅ Audited |
| Vault | core_logic | metis | n/a | 3 deployments: sonic `0xfb3efa944e81260d316bcb2f589f12f272764132`; metis [`0x9cb36c835f189c40bd9cd1cf298717b7bb9e3630`](./contracts/metis-1088/0x9cb36c835f189c40bd9cd1cf298717b7bb9e3630/); base `0xb75c170eca8614cf70a14ba8e2cb602e0e0c003f` | ✅ Audited |

### ⚠️ Verified + Unaudited (29)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BellaDiceGame | unknown | metis | n/a | 10 deployments: metis [`0x08abfbcb09f15dd00a828dce74c6693e0da33e2f`](./contracts/metis-1088/0x08abfbcb09f15dd00a828dce74c6693e0da33e2f/); metis `0x163b40255bc59d6b6cf018a59ab1e0b763f97d2d`; metis `0x49a7a8c3769f861c57056bae84ed47694e37c7ca`; metis `0x4a7d1bd77557461aba23b74bf41153034524107b`; metis `0x6d514662466f5bd756b889688081ed4787886aef`; metis `0x7bcaaefa4bc7ec2ac9fb91d6abd07c86d3a7d67c`; metis `0x820663378a25f4520ee03923deac05d725372bc6`; metis `0x86aaec2184c15408aac398d0bd644263e75e12ee`; metis `0x9867c537edda945dc49fbf659d14a52a01f2575b`; metis `0xab4bc49175003ebdc7bd6bfae4afc700b185fda9` | ⚠️ Unaudited |
| FactoryLC | unknown | metis | n/a | [`0x07e1cf58c5e098f2c3acd3241e0f02d24d89da57`](./contracts/metis-1088/0x07e1cf58c5e098f2c3acd3241e0f02d24d89da57/) | ⚠️ Unaudited |
| FlashLoanAggregator | unknown | metis | n/a | 3 deployments: metis [`0x056df39ace357c1abf67fb090e36c9ec126c8828`](./contracts/metis-1088/0x056df39ace357c1abf67fb090e36c9ec126c8828/); metis `0x071805686ca276ba9cc90485bd2a2d363959e971`; metis `0xcc096c9efafbf8062f3bf9894d08e9e912850e1d` | ⚠️ Unaudited |
| InterfaceMulticallV2 | periphery | metis | n/a | [`0x16b413526d062142eb9eda9d75312ca9f2e418fd`](./contracts/metis-1088/0x16b413526d062142eb9eda9d75312ca9f2e418fd/) | ⚠️ Unaudited |
| LightQuoterV3 | unknown | metis | n/a | 4 deployments: metis [`0x16cad8fbd9878d1ff86a12eb4a275c7f53b5788e`](./contracts/metis-1088/0x16cad8fbd9878d1ff86a12eb4a275c7f53b5788e/); metis `0x3963793a9fb287ac83ae3eae849ef35c98e4ce98`; metis `0x5a9fd95e3f865d416bb77b49d1cca8109fcabfe5`; metis `0xf3a53859420a597f0aa20f3a227d0dcfe0825fdd` | ⚠️ Unaudited |
| Multicall2 | periphery | metis | n/a | [`0x576a1301b42942537d38fb147895fe83fb418fd4`](./contracts/metis-1088/0x576a1301b42942537d38fb147895fe83fb418fd4/) | ⚠️ Unaudited |
| NFTDescriptor | token | metis | n/a | [`0x6372f4acf0a1e54fb5c3f48137e970a3df2d8dd8`](./contracts/metis-1088/0x6372f4acf0a1e54fb5c3f48137e970a3df2d8dd8/) | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | sonic | n/a | 3 deployments: sonic [`0x77dcc9b09c6ae94cdc726540735682a38e18d690`](./contracts/sonic-146/0x77dcc9b09c6ae94cdc726540735682a38e18d690/); metis `0xa7e119cf6c8f5be29ca82611752463f0ffcb1b02`; base `0x8187808b163e7cbaccc4d0a9b138ae6196ac1f72` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptor | token | metis | n/a | [`0x1e6ef5f8f589650b589e17ab15bc4ba42ef59e8a`](./contracts/metis-1088/0x1e6ef5f8f589650b589e17ab15bc4ba42ef59e8a/) | ⚠️ Unaudited |
| OFT | unknown | polygon | n/a | 6 deployments: bsc `0xaf20f5f19698f1d19351028cd7103b63d30de7d7`; polygon [`0x07ed33a242bd9c08ca3c198e01189e35265024da`](./contracts/polygon-137/0x07ed33a242bd9c08ca3c198e01189e35265024da/); sonic `0x0e0ce4d450c705f8a0b6dd9d5123e3df2787d16b`; base `0xaf20f5f19698f1d19351028cd7103b63d30de7d7`; arbitrum `0xaf20f5f19698f1d19351028cd7103b63d30de7d7`; avalanche `0xaf20f5f19698f1d19351028cd7103b63d30de7d7` | ⚠️ Unaudited |
| Permit2 | unknown | base | n/a | 3 deployments: sonic `0x7ac9e324c2a211a389fac64b773433a17db22948`; metis `0xb1f795776cb9ddac6e7e162f31c7419dd3d48297`; base [`0x16b413526d062142eb9eda9d75312ca9f2e418fd`](./contracts/base-8453/0x16b413526d062142eb9eda9d75312ca9f2e418fd/) | ⚠️ Unaudited |
| PopsicleV3Optimizer | unknown | ethereum | n/a | 4 deployments: ethereum [`0x212aa024e25a9c9baf5b5397b558b7ccea81740b`](./contracts/ethereum-1/0x212aa024e25a9c9baf5b5397b558b7ccea81740b/); ethereum `0x5c08a6762caf9ec8a42f249ebc23aae66097218d`; ethereum `0x9683d433621a83aa7dd290106e1da85251317f55`; ethereum `0xa1be64bb138f2b6bcc2fbecb14c3901b63943d0e` | ⚠️ Unaudited |
| PositionEffectivityChart | unknown | metis | n/a | 7 deployments: metis [`0x242c5faaaa8a5fe49a66698fff7bcab85cf3cf17`](./contracts/metis-1088/0x242c5faaaa8a5fe49a66698fff7bcab85cf3cf17/); metis `0x2c80042504a5c0710e38b0dbd85ee5eb6f1a11cd`; metis `0x48cc6c8c69662fa3fcd579936041c0c3ec8dcee7`; metis `0x80f43230778f402e99d530e4e35fa423d72020c3`; metis `0x846e4e8bfb871e07d40c31721486e0c7e36c0ae0`; metis `0x896c78157b96c5566d0fe8fccfb3c1d9e229a7ca`; metis `0xbbf979671b95fb27ab19d817fc41e6f51d4a9bf9` | ⚠️ Unaudited |
| ProxyAdmin | unknown | base | n/a | 7 deployments: ethereum `0xb5fa77e3929fe198a86aa40fd6c77886785bcd0e`; bsc `0xc5eda8eb3c42d96085b56abcacdfa50f260335af`; polygon `0x7f4f242a57f8b385514aad8f4c27f1a307e53986`; sonic `0xcb5cbc71fd31101e1208d0cde36ca9846e7c9753`; metis `0xf914e1329e4588783ee68f06b2b900addc97f966`; base [`0x428065998a96f82bf66a0a427a157429a6fdd649`](./contracts/base-8453/0x428065998a96f82bf66a0a427a157429a6fdd649/); arbitrum `0xab719a8703352a1f05aa9c39afa01a66d7f1bb51` | ⚠️ Unaudited |
| Quoter | periphery | metis | n/a | [`0x2dc123ff6757fcea46c025758e93bd8b98710cea`](./contracts/metis-1088/0x2dc123ff6757fcea46c025758e93bd8b98710cea/) | ⚠️ Unaudited |
| QuoterV2 | periphery | metis | n/a | [`0xb9a14ee1cd3417f3acc988f61650895151abde24`](./contracts/metis-1088/0xb9a14ee1cd3417f3acc988f61650895151abde24/) | ⚠️ Unaudited |
| sWagmi | unknown | sonic | n/a | [`0x4b5d9db7910448e2f236509d9ee242673afa28aa`](./contracts/sonic-146/0x4b5d9db7910448e2f236509d9ee242673afa28aa/) | ⚠️ Unaudited |
| SwapRouter | adapter | bsc | n/a | 3 deployments: bsc [`0x7b2f96919cff07110feb0ec06130b33d70f8fb44`](./contracts/bsc-56/0x7b2f96919cff07110feb0ec06130b33d70f8fb44/); sonic `0x9282a6c62932431b127753c1cd2ac4f6cc4cfd49`; metis `0x8fb7a8cb6c4dcf820762397adf80a27a777cfedc` | ⚠️ Unaudited |
| SwapRouter02 | adapter | sonic | n/a | [`0x1ac569879ef7eacb17cc373ef801cdce4accded5`](./contracts/sonic-146/0x1ac569879ef7eacb17cc373ef801cdce4accded5/) | ⚠️ Unaudited |
| SwapRouter02 | adapter | metis | n/a | 2 deployments: ethereum `0xd8ac778db70221ab635921460c6bf70cc6d65293`; metis [`0x8b741b0d79be80e135c880f7583d427b4d41f015`](./contracts/metis-1088/0x8b741b0d79be80e135c880f7583d427b4d41f015/) | ⚠️ Unaudited |
| TickLens | periphery | metis | n/a | [`0x428065998a96f82bf66a0a427a157429a6fdd649`](./contracts/metis-1088/0x428065998a96f82bf66a0a427a157429a6fdd649/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | sonic | n/a | 7 deployments: ethereum `0x08d6e1ae0f91423ddbd16f083ca39ccdd1d79ce8`; bsc `0x3d079b0b85e06df10bb168c3ebfa8dc444007484`; polygon `0x11cd3b62608b7f355aa1951b57f15917518ce66c`; sonic [`0x07ed33a242bd9c08ca3c198e01189e35265024da`](./contracts/sonic-146/0x07ed33a242bd9c08ca3c198e01189e35265024da/); metis `0xa9af508a15fc3b75763a9e536505ffe1f884d12c`; base `0xa7e119cf6c8f5be29ca82611752463f0ffcb1b02`; arbitrum `0x4389eed07a48656f2e36aafe7703ab3e78e4955b` | ⚠️ Unaudited |
| UniswapInterfaceMulticall | periphery | metis | n/a | [`0xb5fa77e3929fe198a86aa40fd6c77886785bcd0e`](./contracts/metis-1088/0xb5fa77e3929fe198a86aa40fd6c77886785bcd0e/) | ⚠️ Unaudited |
| UniswapV3Factory | registry | metis | n/a | [`0x8112e18a34b63964388a3b2984037d6a2efe5b8a`](./contracts/metis-1088/0x8112e18a34b63964388a3b2984037d6a2efe5b8a/) | ⚠️ Unaudited |
| UniversalRouter | adapter | base | n/a | 3 deployments: sonic `0xc81dae2cdf2f6c0076ae3e174a54985040626d19`; metis `0x7301350cc76d669ea384e77af38a70c61661ca48`; base [`0x08d6e1ae0f91423ddbd16f083ca39ccdd1d79ce8`](./contracts/base-8453/0x08d6e1ae0f91423ddbd16f083ca39ccdd1d79ce8/) | ⚠️ Unaudited |
| UnsupportedProtocol | unknown | metis | n/a | [`0xe88b19885935b4be8dcf38e2c96b8c73cfc9b6e2`](./contracts/metis-1088/0xe88b19885935b4be8dcf38e2c96b8c73cfc9b6e2/) | ⚠️ Unaudited |
| V3Migrator | periphery | metis | n/a | [`0x8187808b163e7cbaccc4d0a9b138ae6196ac1f72`](./contracts/metis-1088/0x8187808b163e7cbaccc4d0a9b138ae6196ac1f72/) | ⚠️ Unaudited |
| WagmiOFTV2Adapter | adapter | ethereum | n/a | [`0xf5ec00e770de25aef156d290c2504e163b22b4e4`](./contracts/ethereum-1/0xf5ec00e770de25aef156d290c2504e163b22b4e4/) | ⚠️ Unaudited |
| WagmiToken | token | ethereum | n/a | [`0x92cc36d66e9d739d50673d1f27929a371fb83a67`](./contracts/ethereum-1/0x92cc36d66e9d739d50673d1f27929a371fb83a67/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (259)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x05871694cc80c354f6ac2d3d5068969aafbd466f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0c0ecf45004ff3b2f68b8863bf425b09386933f7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x13704df51dcea93524c6811e60abda47554eb703` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x16b413526d062142eb9eda9d75312ca9f2e418fd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1cc26aa46c6aadd26fb8647f971102c8f8a5322f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1e6ef5f8f589650b589e17ab15bc4ba42ef59e8a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x216961c6cf0a0b978b8d4980daa6fe10383b7287` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x216d15646c41b24ef74254453e0a9b86c873609d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x22be52eea7c859169f029ee19947853137ab191d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x23a14a8beb779ac5d7dc8f8d598869f9d35c5c9f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x26f5fd11e03c2fa5cd3bd647c042e143c0d213b5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2eb4b9b302e9333d6820e6fdc120bb4b9df8f015` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x33810f22462db64dc672cff9e8e376c6d396ccbd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x34ea70bd71d18cfb772ec21488a344ee2a877044` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x394d34e37ba82956f5b1b1889e33e70c5922dd17` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3c3dcf8ccf23869031fa0b48bca5aa3083d02682` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3d30472cb6f7d9d3f1461241c77df217b7e2ec1c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x462e21ba538c1c6ea73f6b05432a1fedc5c0a40e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4b5d9db7910448e2f236509d9ee242673afa28aa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4cae7c2a6a9ed7271b7b9e5bb6e5177a12049df0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4e537a3a1e59fcdfa225fa470976b356786888cc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4f1bd97df876e9eb0029efa0459753306f388320` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x519921ae973478f9ffdd9f826b09057d8313081f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x67cd21e2a0bb725aab9e7feed8cc52125549ccfe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x680a41a420f08f038029fb29e5bd8b972f0619ee` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6874e9605750f89796bf5353cfceca819397149e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x726f7a34a3a5aa8266c550410cdd88e967ba5ce7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x72b01cd8baa714288d5d12a9995622c73a4ff431` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7d6e19b9c9a72f32225098b66acc3175f0d279be` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x88e4aa79c492524b7dab2abf2f84e838718b48ae` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8d819e33b8b19f204cfb29380714df9eb98be64f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8fce343c3e39efdd1c1f7f5be7b1de44a6dc32fd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x942dd0d131fe003b2aa0505f433a41ddb898ecf0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x970b92649e97ecc1f6e38f156db741643fdf384e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x98fe5034f2ee6be044cdbd857744c63ad06532ed` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9a9c794bfbec3c330c4e04846f512bc3ad8fb481` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9c90c448aa1dd19b854f14b486117d7bff0e6270` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa1fdc252e6a6b20fd071002ed0cba2bc807929c7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa9af508a15fc3b75763a9e536505ffe1f884d12c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xad1724af9db5e61cb7849ba7c0f91c7a3c59577e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xad3d12e84dcefc7fb1fc5b7770c12b8c15f3fa30` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xada2939ce9fd732770e8818e895d38541f94b162` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb22cd40c5041307a11cdabbc778aa369dba0e9f6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb52c492f1cbb0e124b4de596ec1404243365a607` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb6c97f16d5567b1741324dd2bc3ef497921cd75b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb9a14ee1cd3417f3acc988f61650895151abde24` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc099a6523cb86129b4d88fbca51365ac6671931d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xca65646301803f2be98951f3369808adba588f64` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xce773496431335ee671395b842ebbe13214c3804` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcef328a63a9553801c156749fdfade99fea40264` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd0623510d27242abdbcb2cb91802ec8aa1593324` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd685734312e53224c13a2e44297df45a1b11d4ca` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd74c1d4659d6cef276ccb3792e69945e5c07fedb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe98e2316d5a710fc85f864d7926f8d4744f37c72` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xea34e6a0cc93b19716756f28e0fafca71af8013c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf4b95c4225e2d8fa81c69f6af49df3ee8ee8579f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfa2651489448f0c736ae1b34c8fffe99c5f8a2ad` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfa3d904adf2b0d4db74e0de83464455aa12b0cec` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0d288bc0b443965d07cd3b115d89e65f25422deb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0e0ce4d450c705f8a0b6dd9d5123e3df2787d16b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2fc61bf77210ca3c34cfba4b47f4fec75ad5cd61` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x576a1301b42942537d38fb147895fe83fb418fd4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x58a3d38f763eb180dffa188c288ea64f2a5e1e5a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6372f4acf0a1e54fb5c3f48137e970a3df2d8dd8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x70eddfd89f8d0515b3d05f504e66f2dd7fc038b5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7191dc05b5a3f2060aac88c84aaeb34fdffef023` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7f8bb89244aafd70296e56be247e95020435539a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8112e18a34b63964388a3b2984037d6a2efe5b8a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x92c9fab8f517ec6ba1a0058cdb9c980a4958190f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x92cc36d66e9d739d50673d1f27929a371fb83a67` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb01510b49b348067d696838e5571c9436b260d8b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe56f52bd1db5c2fb7ee39d69b8acb732f7a3aea0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x209050d81aad536ca2092466b221013b8de7ac6c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x77dcc9b09c6ae94cdc726540735682a38e18d690` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x877cda22af8191bb1758489d4d53d299dc341b83` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8b741b0d79be80e135c880f7583d427b4d41f015` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x98fe5034f2ee6be044cdbd857744c63ad06532ed` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xaf20f5f19698f1d19351028cd7103b63d30de7d7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb1f795776cb9ddac6e7e162f31c7419dd3d48297` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb5fa77e3929fe198a86aa40fd6c77886785bcd0e` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x001530a1a45c361fcab57a58f88936d7795b5ecb` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x017277d36f80422a5d0aa5b8c93f5ae57ba2a317` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x037f7b8de425afc8a544920bfb0786c1fd74e473` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x09dae4921357c9b7cf77c5e53ab63a41f8d9c79f` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x0ead6d284a8f396c9fe2d2dbe0bc4d6b06f18fc2` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x0fa78a2e024319b60d5a91d4c07893d60023346e` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x11cd3b62608b7f355aa1951b57f15917518ce66c` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x1bbce9fc68e47cd3e4b6bc3be64e271bcdb3edf1` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x1ed205bcff9f7dc1312527358a0659d43d5b6f0b` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x1f1e915797f36a3594ffa6d4df953cc7e912b61e` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x227e1a1d94d0cf360a799ecccedb570604b4b874` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x242965b155f26cd23107f99509e808cea117c790` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x2fc61bf77210ca3c34cfba4b47f4fec75ad5cd61` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x2ff4a8497cd07c0e29f8082195300d480afdb7fa` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x303115d3fd160b69027ef1a410dd87a544861444` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x314b7291906e358199b88ab3c84b73c11c8decf0` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x37f0addae7d32cefb27abf5c44bba743cd03a3da` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x38df1d849904b58103d39407e0f526a89235f534` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x3940484cfb90ec815e834dde8e7fada9b8972529` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x441047ceb3720cd7ebb9dbf9dae04b1194573d5c` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x495b372311e3f9647685de3cbc90194915f3bdfe` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x4acc2327a0d00c3b298a1a252f45bd9de7d2f6c9` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x4b388c48fcefc899d795228095d8540cbb48258e` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x4e537a3a1e59fcdfa225fa470976b356786888cc` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x568abf0e8631bbc2ed43a7c2d7348380c1a12ed5` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x569e812a5d33a37e2da6a4f042345ea5e026a062` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x58a3d38f763eb180dffa188c288ea64f2a5e1e5a` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x5ab34bbac545ac26dff746f4ab00bc5aa2d387c8` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x5ff8cc5e26d63f4aa2787291f7f3f7cc8ffebefa` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x67b3194163bd625769b985e44d1f8b3fc67fd6bd` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x6c9946adb64938b9e4e76585b7ab6cd9cf89bf3c` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x6ea38b113d2ee9221003e40565f47a21b13dc7df` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x7189d69f6a82d1a18cf9662de7f4959ff406afa8` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x721655cccd531dd6a2d87f72a31e2e927b965c3c` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x783295d78f6165f1a170350c2704fc5982fad285` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x78e7c98e9b91b1760974aef424d5274b5d3af78f` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x7dd9b456ef365d1e33b4733f9e796a1f5bb79c40` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x806408b24a1e2b5f5c6ccd93b6884f95bedeeaf9` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x86fd613d79cea7ce51defd31bfcf68adbf4038fa` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x8a5fcc3a65fb0cd4e0253fb4592e6da90c6d8e62` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x8bf365c75e959d193276715fa65d098c5f2b2d38` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x8f3ff877977d81cc6dca963cdb1b533846e99c08` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x91d0efe558a6f07227ae9ec43eb995eb50051711` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x9492a0c32fb22d1b8940e44c4d69f82b6c3cb298` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x98174d02bfe845353dbae566a064e1507eadb2e7` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xa0f185a8563382147b36a00289966dad53799ed9` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xa46901db277ed14a136c3146784d4ec9e0c98628` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xabc40ec22ca3ca430b802f9d6880e8a5a3f873c9` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xadb0367855243d025cc1e66fa3296d891d468839` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xaf20f5f19698f1d19351028cd7103b63d30de7d7` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xb738dad01f59ee33c036768e050f8f673d4d3581` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xb825fb188f6c2286cfa4033822f3126d614a841f` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xb9235a074c68a046308aebd7414fb89e674adeae` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xb992e2b7f4ef1477f5a81236aaaffcc32da51d23` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xb9d99d24bd59e2b56cb613f50fffb52c124cf554` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xba28481f26c98f2f03186c724050e42c313f507c` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xba99f0b62c4473acaec76392e3a0ac3af26c5aa8` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xc52fc7a5449f03cb41e4c87a4243e7e6b8f9a3f1` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xc56c21ef6f4b4e5ffc46eff158623d989bcdd0cd` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xc6020e5492c2892fd63489797ce3d431ae101d5e` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xc8dbbaf0543bb03156d605fb2e0ba2c62c8ad9dd` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xc9a2e739aec78a4cf411d0b567498bc45085c3eb` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xca420d5ee2ec23d4b46e15f9134a389d2b29d8eb` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xd26fbd7827f29e3959e34c25e672d0a38227f150` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xd6ea74e1b6149195999c820706ee249e7028dc55` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xd7910dcb5da33b50d3c94f2d7950c59313dad2e0` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xd80a12b0084bec6747139458d007a7b5e9823ee3` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xd878ccbb5126199a3343678eb7d84ef6cf28b217` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xd8aa1769d2b1b4aef287d41bbe9b9d8e76eccc8f` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xdf351ec893b8c018fa12c1f7013c67bd31d1afe5` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xdfc29937cc69bb1d45808ecb56eb5b08ed4eed3d` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xe07cdd99afaa23dd8afd03a77cb1b2ecf77ef4b1` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xe56f52bd1db5c2fb7ee39d69b8acb732f7a3aea0` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xf0ce72befa3383659dcc80be30b2ef4525c961da` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xf81e0d0964374285fdf3999f053e237035e62f82` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xf8ff94adcd0990958c3e502617c4adc60581494c` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xfa2144e47e6ef86d102c739978d863f25593ee1b` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xfaed580a0718b6906620e3ba312680896e55a22f` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xfce98512bfd2d63ed29bfcc7bc1b8a776db024ae` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | 37 deployments: fantom `0x07ed33a242bd9c08ca3c198e01189e35265024da`; fantom `0x0834cf32553b255c767957588936881ad8089485`; fantom `0x209050d81aad536ca2092466b221013b8de7ac6c`; fantom `0x45c16c1ffa23662636d4050eac16eb7ad7cbe29a`; fantom `0x56cfc796bc88c9c7e1b38c2b0af9b7120b079aef`; fantom `0x5973c9e4cc849140cfd1c9dfc75d54d804b5a2fe`; fantom `0x5db68a533465040f5185e2771746afed8cc4d14e`; fantom `0x660fc63608a4641267e958ee254dc0a275d0ed6e`; fantom `0x77dcc9b09c6ae94cdc726540735682a38e18d690`; fantom `0x828825f11c084c190344263aefa8fb33a8308292`; fantom `0x877cda22af8191bb1758489d4d53d299dc341b83`; fantom `0x9282a6c62932431b127753c1cd2ac4f6cc4cfd49`; fantom `0x92cc36d66e9d739d50673d1f27929a371fb83a67`; fantom `0x98fe5034f2ee6be044cdbd857744c63ad06532ed`; fantom `0xaf20f5f19698f1d19351028cd7103b63d30de7d7`; fantom `0xb1f795776cb9ddac6e7e162f31c7419dd3d48297`; fantom `0xcb5cbc71fd31101e1208d0cde36ca9846e7c9753`; fantom `0xdb51cffff3b989d0cb6b58abf173371b6f2d0d24`; kava `0x0e0ce4d450c705f8a0b6dd9d5123e3df2787d16b`; kava `0x1e6ef5f8f589650b589e17ab15bc4ba42ef59e8a`; kava `0x2dc123ff6757fcea46c025758e93bd8b98710cea`; kava `0x3690d1a9fb569c21372f8091527ab44f1dc9630f`; kava `0x428065998a96f82bf66a0a427a157429a6fdd649`; kava `0x576a1301b42942537d38fb147895fe83fb418fd4`; kava `0x6372f4acf0a1e54fb5c3f48137e970a3df2d8dd8`; kava `0x8112e18a34b63964388a3b2984037d6a2efe5b8a`; kava `0x8187808b163e7cbaccc4d0a9b138ae6196ac1f72`; kava `0x8b741b0d79be80e135c880f7583d427b4d41f015`; kava `0x8fb7a8cb6c4dcf820762397adf80a27a777cfedc`; kava `0xa7e119cf6c8f5be29ca82611752463f0ffcb1b02`; kava `0xa9af508a15fc3b75763a9e536505ffe1f884d12c`; kava `0xaf20f5f19698f1d19351028cd7103b63d30de7d7`; kava `0xb1f795776cb9ddac6e7e162f31c7419dd3d48297`; kava `0xb5fa77e3929fe198a86aa40fd6c77886785bcd0e`; kava `0xb9a14ee1cd3417f3acc988f61650895151abde24`; kava `0xe88b19885935b4be8dcf38e2c96b8c73cfc9b6e2`; kava `0xf914e1329e4588783ee68f06b2b900addc97f966` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x3613ad277df1d5935d41400a181aa9ec1dc2dc9e` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x01bd510b2ea106917e711f9a05a42fc162bee2ac` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x03d1efbe093e291e37ce92019a2be39ae0e27cd2` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x0ae94f991df1df87e390a8d5fb60010d83503cb4` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x0d4e84efe1b845d86898a333c2fc69d3f443738f` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x0e6a9c6aca5bd5f1ca177ba392046e58b7cde12c` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x18213a9853fc9fe118c87930a4faea406bb8100e` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x19eab1a88328da0fb9471f36582a3c107e740776` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x1d8571a1fecaed9c2e2073081fc9e4c869d416f0` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x2120eb108b1c9b1c976d43b4ed27c74430844e9a` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x215c0e817a3c11f622e774560f0638b0e94aec27` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x24a2cbcf5cc82f357e6e64cd4347941f3754a0c5` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x259308e7d8557e4ba192de1ab8cf7e0e21896442` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x2668f443eaa6c88b3e4aabbbe3535bed92545bf1` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x2931c966fe99a82f011e4866061e6ed14c77a732` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x2c3918ffc8a35939cd866cff945557e14c8b4410` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x2d149685f167b313acd806ab2e503dc9636c61b5` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x30623f4764c1dda20abe4df0ff59f95967032d9c` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x348a1b397ccbd383f9b2f437a6dcf4a0aea2f301` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x400fe1f943d2fa2ae4e072a443260e291664bfa6` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x4948f07acef9958eb03f1f46f5a949594f2da2d9` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x546d87aecf9b9c86865eb65a777d1f5b6f4fce31` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x5873c15f92144a31aa6d94b3dfa2072a6f7710ed` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x5cb58cede5c98b87bedbf03a66eb25a6597fa3d0` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x5f171e00648d0ef8b8f9fc40d768953f4d71d54c` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x5fb3983adc4dcc82a610a91d2e329f6401352558` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x5ff8cc5e26d63f4aa2787291f7f3f7cc8ffebefa` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x6175b648473f1d4c1549aac3c2d007e7720585e6` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x6648aeb875bc1f53a67da966522c33b6af6b373e` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x677290c8a29a6df2f17d1ceb7c7e6a88477493ea` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x67b3194163bd625769b985e44d1f8b3fc67fd6bd` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x72e9b535fcfdde5a56fd27d3c3c195f907f07788` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x73e7212c71bfe5225de9dbe2e5dc008a7a6d51d9` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x836017edd71be5d9b18b39260aa3c14c9052aa67` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x83f7e7914851a07693eb8aebcb830d7c48b2e0d8` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x86fd613d79cea7ce51defd31bfcf68adbf4038fa` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x92170f9e5c2d5a023225a73c841d2bc714618619` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x92ed88bcba0063e994b23da18f5699019584eb0d` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x9490a6a209f029eb27bd21c9279a1271d8e9d026` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x9adcaecd79ef2045d7ccb264faa13e7733ccb5e1` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x9cc313fff2230391d991e68557e3c43b4d629194` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xa0f185a8563382147b36a00289966dad53799ed9` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xa6e02c6c24a3043ad769f91f1f26bab4c99f4904` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xab120f1fd31fb1ec39893b75d80a3822b1cd8d0c` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xab719a8703352a1f05aa9c39afa01a66d7f1bb51` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xaf20f5f19698f1d19351028cd7103b63d30de7d7` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xb33fc0bbb23b7a47652a645ebd984976bc595ecd` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xb9ba23bfc68101575ac77445ba41328416617b0e` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xba99f0b62c4473acaec76392e3a0ac3af26c5aa8` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xbd3c28bc9f6e01485c41132088356f9d2c36692b` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xbf4b5308fa766cc350f63723f1a8382214a37feb` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xc49c177736107fd8351ed6564136b9adbe5b1ec3` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xc78a189aa13445294813309f0c24319c20fb2bca` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xd55b486e53bee12cafdec2d16e9b355939ee709f` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xdb459ef743dda68610b0147cc40248b28a87814b` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xdd9c5ca0270809b091bf477a7e28890ea1cbd1cf` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xde580319011116f4efefc413662c69d05fdabf3d` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xded75fde2fbd781fb43bd432d6a16311ae716e23` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xe4d69a93e8cb390b4fc04dc7836a8206f074949c` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xe673a6a6c65055424ea19e025d59835e142ace5b` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xe67920c25af040b96fd286c1204773ada697a82f` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xebdaf1d0a928b5c65398103873f0924ccba098a5` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xec37393df5de33facf652b22128c72d51ac4e17a` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xf411fdf3ef242d9bfd374ef784b8048364419ff7` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xfa26c73454d9d6d1964724a0289e449a4e70eb8b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3d30472cb6f7d9d3f1461241c77df217b7e2ec1c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5ff8cc5e26d63f4aa2787291f7f3f7cc8ffebefa` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x67b3194163bd625769b985e44d1f8b3fc67fd6bd` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x86fd613d79cea7ce51defd31bfcf68adbf4038fa` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa1fdc252e6a6b20fd071002ed0cba2bc807929c7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd8bf6fb6692231003ad0017308164b74269558ae` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0e0ce4d450c705f8a0b6dd9d5123e3df2787d16b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2da5ddbec63dfd93112aedfa44f880927aa5ae41` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8112e18a34b63964388a3b2984037d6a2efe5b8a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x037f7b8de425afc8a544920bfb0786c1fd74e473` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x089e07bb8dd33cb1610f75b5755f85cdeadebf6c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x08d6e1ae0f91423ddbd16f083ca39ccdd1d79ce8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0e0ce4d450c705f8a0b6dd9d5123e3df2787d16b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x16b413526d062142eb9eda9d75312ca9f2e418fd` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x394d34e37ba82956f5b1b1889e33e70c5922dd17` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x4389eed07a48656f2e36aafe7703ab3e78e4955b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x491d195b05df4e9fd6aba8c00e6f6d3459a1ab51` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x4b5d9db7910448e2f236509d9ee242673afa28aa` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x4e537a3a1e59fcdfa225fa470976b356786888cc` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x576a1301b42942537d38fb147895fe83fb418fd4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x66034b71a749e655fee0005c5496d5c0949590f0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6e892a58997feaa7fb411274011978edff30ab29` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x721655cccd531dd6a2d87f72a31e2e927b965c3c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7f4f242a57f8b385514aad8f4c27f1a307e53986` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x8112e18a34b63964388a3b2984037d6a2efe5b8a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x834ddb3d0e54c6d14204c6ec91992acd66570b87` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x8bb1be7acd806bf6c9766486dc4c21284a472bac` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x92cc36d66e9d739d50673d1f27929a371fb83a67` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa6d200ed01389b49e21d8a0018d5b81528bcfc0d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xab719a8703352a1f05aa9c39afa01a66d7f1bb51` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd5b59c29efc50348241e815d1afc37d1a7b26544` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd6ea74e1b6149195999c820706ee249e7028dc55` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd74c1d4659d6cef276ccb3792e69945e5c07fedb` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd8ac778db70221ab635921460c6bf70cc6d65293` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [2024.03.23 - Final - WagmiLeverage V2 Audit Report.pdf](https://raw.githubusercontent.com/sherlock-protocol/sherlock-reports/f5b20449ff1a769af108c2b2fa6ee928a0c77232/audits/2024.03.23%20-%20Final%20-%20WagmiLeverage%20V2%20Audit%20Report.pdf) | Hacken | Audit | 2024-04 | stale | Direct | contract_name | 1 | n/a |
| [Wagmi-security-review.pdf](https://raw.githubusercontent.com/pashov/audits/bed0a845f5af0047206ce423d111673183dba1e9/team/pdf/Wagmi-security-review.pdf) | Hacken | Audit | 2024-04 | stale | Direct | contract_name | 2 | n/a |
| [2024.03.23 - Final - WagmiLeverage V2 Audit Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.03.23%20-%20Final%20-%20WagmiLeverage%20V2%20Audit%20Report.pdf) | Sherlock | Contest | 2024-04 | stale | Direct | contract_name | 1 | n/a |
| [Wagmi-security-review.pdf](https://github.com/pashov/audits/blob/master/team/pdf/Wagmi-security-review.pdf) | Pashov Audit Group | Audit | 2024-04 | stale | Direct | contract_name | 2 | n/a |
| [Wagmi Leverage V1.0 0-V2.0 AstraSec.pdf](https://github.com/RealWagmi/wagmi-leverage/blob/main/audit/Wagmi%20Leverage%20V1.0%200-V2.0%20AstraSec.pdf) | AstraSec | Audit | 2024-03 | stale | Direct | contract_name | 1 | n/a |
| [Wagmi Leverage V1.0 Sherlock.pdf](https://github.com/RealWagmi/wagmi-leverage/blob/main/audit/Wagmi%20Leverage%20V1.0%20Sherlock.pdf) | Sherlock | Contest | 2023-11 | stale | Direct | contract_name | 2 | n/a |
| [Wagmi Leverage V1.1 Hacken.pdf](https://github.com/RealWagmi/wagmi-leverage/blob/main/audit/Wagmi%20Leverage%20V1.1%20Hacken.pdf) | Hacken | Audit | 2023-12 | stale | Direct | contract_name | 2 | n/a |
| [Wagmi Leverage V1.5 Sherlock.pdf](https://github.com/RealWagmi/wagmi-leverage/blob/main/audit/Wagmi%20Leverage%20V1.5%20Sherlock.pdf) | Sherlock | Contest | 2024-03 | stale | Direct | contract_name | 1 | n/a |
| [Wagmi Leverage V2.0 Pashov.pdf](https://github.com/RealWagmi/wagmi-leverage/blob/main/audit/Wagmi%20Leverage%20V2.0%20Pashov.pdf) | Pashov Audit Group | Audit | 2024-04 | stale | Direct | contract_name | 2 | n/a |
| [Wagmi Leverage V2.0 Sherlock.pdf](https://github.com/RealWagmi/wagmi-leverage/blob/main/audit/Wagmi%20Leverage%20V2.0%20Sherlock.pdf) | Sherlock | Contest | 2024-04 | stale | Direct | contract_name | 1 | n/a |
| [Wagmi-security-review.pdf](https://raw.githubusercontent.com/pashov/audits/b60fc16f80b1291d36bd09a443e90f39bcb5d660/team/pdf/Wagmi-security-review.pdf) | Hacken | Audit | 2024-04 | stale | Direct | contract_name | 2 | n/a |
| [2024.03.23 - Final - WagmiLeverage V2 Audit Report.pdf](https://raw.githubusercontent.com/sherlock-protocol/sherlock-reports/a58894ebc05005a80e945a2558d583b8e0e05ef2/audits/2024.03.23%20-%20Final%20-%20WagmiLeverage%20V2%20Audit%20Report.pdf) | Hacken | Audit | 2024-04 | stale | Direct | contract_name | 1 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| metis | [`0x08abfbcb09f15dd00a828dce74c6693e0da33e2f`](./contracts/metis-1088/0x08abfbcb09f15dd00a828dce74c6693e0da33e2f/) | BellaDiceGame | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0x07e1cf58c5e098f2c3acd3241e0f02d24d89da57`](./contracts/metis-1088/0x07e1cf58c5e098f2c3acd3241e0f02d24d89da57/) | FactoryLC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0x056df39ace357c1abf67fb090e36c9ec126c8828`](./contracts/metis-1088/0x056df39ace357c1abf67fb090e36c9ec126c8828/) | FlashLoanAggregator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0x16b413526d062142eb9eda9d75312ca9f2e418fd`](./contracts/metis-1088/0x16b413526d062142eb9eda9d75312ca9f2e418fd/) | InterfaceMulticallV2 | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0x16cad8fbd9878d1ff86a12eb4a275c7f53b5788e`](./contracts/metis-1088/0x16cad8fbd9878d1ff86a12eb4a275c7f53b5788e/) | LightQuoterV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0x6372f4acf0a1e54fb5c3f48137e970a3df2d8dd8`](./contracts/metis-1088/0x6372f4acf0a1e54fb5c3f48137e970a3df2d8dd8/) | NFTDescriptor | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x77dcc9b09c6ae94cdc726540735682a38e18d690`](./contracts/sonic-146/0x77dcc9b09c6ae94cdc726540735682a38e18d690/) | NonfungiblePositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0x1e6ef5f8f589650b589e17ab15bc4ba42ef59e8a`](./contracts/metis-1088/0x1e6ef5f8f589650b589e17ab15bc4ba42ef59e8a/) | NonfungibleTokenPositionDescriptor | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x07ed33a242bd9c08ca3c198e01189e35265024da`](./contracts/polygon-137/0x07ed33a242bd9c08ca3c198e01189e35265024da/) | OFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x212aa024e25a9c9baf5b5397b558b7ccea81740b`](./contracts/ethereum-1/0x212aa024e25a9c9baf5b5397b558b7ccea81740b/) | PopsicleV3Optimizer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0x242c5faaaa8a5fe49a66698fff7bcab85cf3cf17`](./contracts/metis-1088/0x242c5faaaa8a5fe49a66698fff7bcab85cf3cf17/) | PositionEffectivityChart | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0x2dc123ff6757fcea46c025758e93bd8b98710cea`](./contracts/metis-1088/0x2dc123ff6757fcea46c025758e93bd8b98710cea/) | Quoter | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0xb9a14ee1cd3417f3acc988f61650895151abde24`](./contracts/metis-1088/0xb9a14ee1cd3417f3acc988f61650895151abde24/) | QuoterV2 | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x4b5d9db7910448e2f236509d9ee242673afa28aa`](./contracts/sonic-146/0x4b5d9db7910448e2f236509d9ee242673afa28aa/) | sWagmi | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x7b2f96919cff07110feb0ec06130b33d70f8fb44`](./contracts/bsc-56/0x7b2f96919cff07110feb0ec06130b33d70f8fb44/) | SwapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x1ac569879ef7eacb17cc373ef801cdce4accded5`](./contracts/sonic-146/0x1ac569879ef7eacb17cc373ef801cdce4accded5/) | SwapRouter02 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0x8b741b0d79be80e135c880f7583d427b4d41f015`](./contracts/metis-1088/0x8b741b0d79be80e135c880f7583d427b4d41f015/) | SwapRouter02 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0x428065998a96f82bf66a0a427a157429a6fdd649`](./contracts/metis-1088/0x428065998a96f82bf66a0a427a157429a6fdd649/) | TickLens | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x08d6e1ae0f91423ddbd16f083ca39ccdd1d79ce8`](./contracts/base-8453/0x08d6e1ae0f91423ddbd16f083ca39ccdd1d79ce8/) | UniversalRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0xe88b19885935b4be8dcf38e2c96b8c73cfc9b6e2`](./contracts/metis-1088/0xe88b19885935b4be8dcf38e2c96b8c73cfc9b6e2/) | UnsupportedProtocol | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0x8187808b163e7cbaccc4d0a9b138ae6196ac1f72`](./contracts/metis-1088/0x8187808b163e7cbaccc4d0a9b138ae6196ac1f72/) | V3Migrator | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf5ec00e770de25aef156d290c2504e163b22b4e4`](./contracts/ethereum-1/0xf5ec00e770de25aef156d290c2504e163b22b4e4/) | WagmiOFTV2Adapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x92cc36d66e9d739d50673d1f27929a371fb83a67`](./contracts/ethereum-1/0x92cc36d66e9d739d50673d1f27929a371fb83a67/) | WagmiToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 25 |
| upstream | 2 |
| standard_library | 4 |
| needs_review | 259 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=18

Fork inheritance lineage and inherited audits are included when available.
