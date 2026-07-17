# Agentic Audit Brief: Atlantis Loans

⚠️ Lifecycle status: DEAD - TVL changed 0.0% over 90 days

## Project Overview

- Project: Atlantis Loans (`atlantis-loans`)
- Lifecycle: dead (Tier 0, 100% below peak)
- Generated: 2026-07-04T14:53:04.235Z
- Pipeline run: v2-pipeline-2026-07-01-2b719a-f2f0
- Chains: avalanche, bsc
- Contract surface: 242 unique implementations (264 raw deployments)
- DeFi Llama TVL: $42,003.57
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Lending. Structurally: 32 project-authored contract(s) across 2 chain(s); 5 ERC20 tokens; built on openzeppelin.

### Architecture

The protocol comprises 7 functional families. Its contracts share 14 common project-authored base contract(s) (atokeninterface, atokenstorage, abep20interface). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 436; live-surface contracts included: 263 (37 live, 226 unknown).
- Excluded by liveness: 173 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 5/15 (33.3%)
- Deployed-live implementations: 16 of 242 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 5/16
- Verified + Unaudited implementations: 11
- Verified by bytecode match: 0
- Unverified implementations: 226
- Unique implementations: 242
- Raw deployments: 264
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-11 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 5 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of n/a represents exposure in a protocol with dead activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 5 | 31.3% | 2021-11 |

## Contract Surface

### ✅ Verified + Audited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ABNB | unknown | bsc | n/a | 2 deployments: bsc [`0x032dd2cd4e64d8c30fed171d0d0b6cf4a7995c29`](./contracts/bsc-56/0x032dd2cd4e64d8c30fed171d0d0b6cf4a7995c29/); bsc `0x5a9a90983a369b6bb8f062f0afe6219ac01caf63` | ✅ Audited |
| Comptroller | unknown | bsc | n/a | 2 deployments: bsc [`0x31169b127e34fe6ff93fe9810a6165c6fd6b7c79`](./contracts/bsc-56/0x31169b127e34fe6ff93fe9810a6165c6fd6b7c79/); bsc `0xe7e304f136c054ee71199efa6e26e8b0dae242f3` | ✅ Audited |
| Comptroller | unknown | bsc | n/a | 2 deployments: bsc [`0x3533e4617b4a6734fc6a9513f521ce5f4e9b3c9c`](./contracts/bsc-56/0x3533e4617b4a6734fc6a9513f521ce5f4e9b3c9c/); bsc `0xcee2143040ed4213be4717a9673cbafcd2bde2a1` | ✅ Audited |
| Comptroller | unknown | bsc | n/a | 3 deployments: bsc [`0x6711207fa4fa18aa919ce776d650ef28ed5f1cc0`](./contracts/bsc-56/0x6711207fa4fa18aa919ce776d650ef28ed5f1cc0/); bsc `0xe56c4d86c8178e752c4d55c88a74422979cce22e`; avalanche `0x7a14cf755e4f0fc71409b980940f8552dc5548cd` | ✅ Audited |
| Comptroller | unknown | avalanche | n/a | 2 deployments: avalanche [`0x8f85ee1c0a96734cb76870106dd9c016db6de09a`](./contracts/avalanche-43114/0x8f85ee1c0a96734cb76870106dd9c016db6de09a/); avalanche `0xb3e91b3f1d2ba099a283c00d807177e942aaa759` | ✅ Audited |

### ⚠️ Verified + Unaudited (11)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ABep20Delegate | unknown | avalanche | n/a | 2 deployments: avalanche [`0x4fa1530ef565833840f59a53e70fb3d9021f0b78`](./contracts/avalanche-43114/0x4fa1530ef565833840f59a53e70fb3d9021f0b78/); avalanche `0x6bd2154fbc086cb43411966e0e72584196ccd065` | ⚠️ Unaudited |
| ABep20Delegate | unknown | avalanche | n/a | [`0xa65722af4957cef481edb4cb255f804dd36e8adc`](./contracts/avalanche-43114/0xa65722af4957cef481edb4cb255f804dd36e8adc/) | ⚠️ Unaudited |
| Atlantis | unknown | bsc | n/a | 4 deployments: bsc [`0x1fd991fb6c3102873ba68a4e6e6a87b3a5c10271`](./contracts/bsc-56/0x1fd991fb6c3102873ba68a4e6e6a87b3a5c10271/); bsc `0x6e0b56784ecbd61c14747f919bb1d28ac60a6af0`; bsc `0xab4a4f0a3c146c8b0d5defeb620ac67f62ded581`; bsc `0xb6e19314e10ebc90173a155e228d17545187b05b` | ⚠️ Unaudited |
| AtlantisLens | periphery | bsc | n/a | 4 deployments: bsc [`0x0e8c9fc7cd455faf22d13fcafd5c6f4eeca02a23`](./contracts/bsc-56/0x0e8c9fc7cd455faf22d13fcafd5c6f4eeca02a23/); bsc `0xa23a210d034a4d039e288fdd7e75e2994339a2c4`; avalanche `0x4088af705f06e6b3a79f16a3d32fd43392994775`; avalanche `0xccf9a98742e0169548d58996b3fda0e9c8be92d7` | ⚠️ Unaudited |
| GovernorAlpha | governance | bsc | n/a | 2 deployments: bsc [`0x0ed46f84ebf8af56eb29644f6a49d184ad771e11`](./contracts/bsc-56/0x0ed46f84ebf8af56eb29644f6a49d184ad771e11/); bsc `0x5a31d65e89292865b09ad3bb10bf38e19b1074ff` | ⚠️ Unaudited |
| PancakePair | unknown | bsc | n/a | [`0xaa40dc3ec6ad76db3254b54443c4531e3dfe6bdb`](./contracts/bsc-56/0xaa40dc3ec6ad76db3254b54443c4531e3dfe6bdb/) | ⚠️ Unaudited |
| Unitroller | unknown | avalanche | n/a | 3 deployments: avalanche [`0x3533e4617b4a6734fc6a9513f521ce5f4e9b3c9c`](./contracts/avalanche-43114/0x3533e4617b4a6734fc6a9513f521ce5f4e9b3c9c/); avalanche `0x7f0201383d9ef401259ff60a379dc14fa285f5ce`; avalanche `0xcee2143040ed4213be4717a9673cbafcd2bde2a1` | ⚠️ Unaudited |
| Vault | core_logic | bsc | n/a | 3 deployments: bsc [`0x6589ca52d193d26cccae2c0e6244315c61501344`](./contracts/bsc-56/0x6589ca52d193d26cccae2c0e6244315c61501344/); bsc `0xa2ae06f9882142114bc937a916a0b436f228c8b8`; bsc `0xf1b52ed4dceae3c098c4b3b515118228447bdfe7` | ⚠️ Unaudited |
| Vault | core_logic | bsc | n/a | 2 deployments: bsc [`0x6eceb19392b5afd9706382144bf296f9d2a10042`](./contracts/bsc-56/0x6eceb19392b5afd9706382144bf296f9d2a10042/); bsc `0x9afc9877b1621e414e907f13a8d3ed9511be03de` | ⚠️ Unaudited |
| Vault | core_logic | bsc | n/a | 2 deployments: bsc [`0xc7a5bb6fcd603309d7a010de44dcbde26fd45b58`](./contracts/bsc-56/0xc7a5bb6fcd603309d7a010de44dcbde26fd45b58/); bsc `0xccf57086ac6ee4b05a17d4163b7c9e262174b5bb` | ⚠️ Unaudited |
| VaultProxy | core_logic | bsc | n/a | 3 deployments: bsc [`0x69a1692fbb645bda8137e59da7f2d6104d925f43`](./contracts/bsc-56/0x69a1692fbb645bda8137e59da7f2d6104d925f43/); bsc `0xadf4c54b14b3db1858c183f5d949db569b0a566a`; bsc `0xd7862acb88aa7f110a78478f92224cc16503ff59` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (226)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0x01bd42d1b784d24e8d5a230dc020ab14ecbf1884` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x029658f41d7e61081c59065270fca7e68ca44d33` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x02e4923aa805c1e4798fe52b0ebf1e22de946f4c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x055e097f2a6ff400c02d1fd690a547cc21d2fd0f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0664c691f1da336bfc26d1ac4d8232772b204cd6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x07234502883ab85216b21c2e76f4364464969383` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x09fef781a8e4f65a76b584b5db5966c1933bfcf4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0a4d8f62923247e9432343c697e0479807df2c1a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0abff925a2a647a457040c07392c143bbd33485a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0ba4cfb74d2291a484639194ff2c0f275073e5d0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0e37a7c2f7400a7383edb2806379cfbc37bc1be7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x12d0f53a21f939c43340f33f914c0966518afd42` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x14dfeb3e2598fcfe6d92e0159892d4c2c2a4b2bd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x15dab5fe8ab791d521450451d72dfdc4a0405018` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x16030be56b77f587d33d0c7f016ee5634d5688fd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x180bf787982c1a1387d1d6077907fad428cdadac` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1885b6cc4e21850940fc99707981d2329883c32f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x191d14dcd846667a2e3af4e454df97c51ee23f10` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1abf9b8b3347a4a05d1eab7d53a81668ddfaa066` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1ac615b20285663003532c5a7311608f55dec0ae` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1d9e7bd4921dbfd2397484a62042ed13059048ca` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1f428a47187133d378e71f416ef06cfccb56d63e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x211b806cb9d44e5a40f43869ea71ca84d7631cfe` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x21b1c6566a5303ab7771134b72998aca6883bb4a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x21ced0ca6e31985ad1c9d05cef748000246e4ce8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2306f95eda4ac6a773d8ad3f562d18020e524bb2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x234f6f256bc447fb71d1a3b6e7bbc4a8ac5e3880` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x24cee0388d4f7cf50cdce6e8696b9ec643c4cadb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x24ec735c06caf409c9bb722c6d86e8eff6495d00` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2558f5d107f5d07b904e1999e54d26dc2a0d3f9d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x259bf45f6442c1cb1eb242624849e905201acce9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x28b0def622d3b03b004162864699abe0f9bbdd6b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x29700b09423b1364d00bc1d9454ae669c29bf6ba` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2a1f90a16d6c852119b65dbe78837fba4e87642e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2aae2c0cf925c043805bfc89424c2f8d7325be76` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2dddefc7ea6ee49d14c3b54f9fe4d3015292a2e5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2f0994bf012c2d95061cbb784e84c673ce103e6c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2f226ab4d6ecf4cfc5666e0f838514b5cfa7a7df` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x30be2d48eacb2a555fa4c35e786e74659d2d0fc2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x312739e419b90eef686c50c205380b4793ea68db` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x313b0498ecb388a6c7443e080c5cb6babd248486` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x31aaf98aa0ade323bfc62afe49b68bcc3399c50f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x31ed8be4fb8340a52a7e67f41ae174e5f1c86070` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x331840e6d80d6a85d58362f8d7761c92c143cc73` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x34b405b80a7ae26d56b4bb590d77fe45444cb5bb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x36724ca9e9de57775e9a8b6a79e5f0710a9e450f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x39082f958576f71c6f84fff00cad5108052db464` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x39e29edb066990cd3da689386dbe3d58a89ec002` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3ca93028aef793078f784a0765b41f89862ff7ec` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3d21ff4b703eaeca86d8c43864367893e799d6c5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3d8a71cc00caafc6f00ed124369aab62a5ef47f9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3e5a7b415adbea4f59b2c7903e1ef992de68a97b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x418039df0dac15451d9a8df1525f92ac3b6a597a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x420411223606e9855cc4c9976d0e376fac4c6955` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x42f10dd51d26280e913755ed7da9cc4aaef460c6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x43f1b09b2e884c92d4e51e9173a85654f018daf3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x44f878380f6bcebc1965616e97c88e3720263589` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x45542cc0250a56ff47dc41d2bc291ccbc8a237df` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x45fde0715c69b77879852003b0909480a08f1066` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x46da0c44aa337c89f9aa57f60bf491f46ddc9b09` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x488223ba493151d6ceb6d68b95c7b0059b2b5b01` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x492e0843869eda5d1bf4e6b9fc0d88cf885b8fb4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4b3e03320ca2373be51ffc3bf64beb1174141ecc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4b6d6a266cf2f408f575bcf87d3f6dacc54a399b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4da62bc2a72769699e93b5cd2af14542cb8d0c91` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4db9ccfb8d9674ccf5d71a2934e44d7214daa823` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4dbf395d5edd29a4cbe81b563f8accb01a9c6ee7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4f02fdd9562ba7efadd7a068191b22e828efc565` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5002c08d6ce416f99b0f23e21c27dd6d6edbb87c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x53549f311d39df4091baf06c787792cd5c81cd0f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x551f1b44a8813923a4fc1435d988a878c0b815cf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x55603f5e5a2fca86833ccac18407ee3e99030617` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x565a18f0b88810f801582281c4f182b48d420712` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x580191dad107a6b7ec0f30d03003c196934f4b01` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x59f04a382ebb24874d4f17dea2a47ebd3eed2a2d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5bb98ddb0225e4e3dcca12194d5a411fe50d245a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5cff38a85089dd3ce9b2f74e7b61ea732ff51d23` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x60456ffe25455eaabec6fdeb8d54d2c9da5b5497` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x61a3b20a44be4ce03547da7adfd8de7d6c65e10d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6226c66a68b9fff017f62a384490359c13cac0d7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x63e98895338b764ac5977ea96bb87f5837cfd8e8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x652c4cc677186caff27f40549a8048fc5a7e1b40` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x67747fb8777f024fd48901d91017dc7547af8ac6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x69186334cb2866022a1676c5048aad577af17c8c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x693c884b7a59dab16b3491f055adbe3c7a9a3f95` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6bae9f9c940473dba36bad4a5f68b15eacfa0249` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6c2adff49ccb512f95025fc0ea0976d563bb3af6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6c391efef45228ceb6fbb7a7bc2c14b7f1ca0ac2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6c922525732d356aba0d237a73b0a867f9fcc870` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6d7202879928e05056050f8a91280c4d74d5d4e7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6ffba3b11f92f0cc22c7b8d3ff81463428a62128` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6ffd15cf88f9da55223fbc3a33ca3d59e1d5c752` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x70ca56d8fdd4867bf8bf314e5d1efda2816df2f9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x753d0b8f4b6f93da2f6038ae17d58270eff9ecf5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x76fa75fda7f08195f9d57293bc6a20c33bec4a4d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x787fadcee1d89ed7e3da65facca4d96f2279cf21` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x78a6ff9cb8069ad8158729aadbd12fef6b2efcdb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7aa708d8e54174f758488f0206aca560c86f6879` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7aae56972100d92f2f5fb81ff5626452d0cd4e97` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7aed12055bf1f9b90d1e98e8cfd2e862cf3c8489` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7af908d92bf50cf52ed7326a36dae6f56658707f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7b0e91a1e27a80ab9ce58d15d58ac0486337c67e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7b832a98d232e79baf8142c9f03444dcbbd27318` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7b8b8688a88beb0b3033b4f09e48a77d0e93d648` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7bcc585aa6a20494065899d80c8fac72eaf092f9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7de8135b06cb847474f19f405c7b8e8b71e8c0d7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7f8c02361c831c16ae1539ea4e4472563ca41c39` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x80333e3e396f7955587a1ad58009f1771c064fbc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x80a9bdb763ea4b3793067d6a67c0dba760814efd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x864112a95dc78ecb55e713d274bc1cdf70296403` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x865b50146bff366ab89d4650bd1f8bd1af5f9c3a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8b2e8f17c60ffdc4ab73a460e046195dff7dd426` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8c1b13abf9322f294b8db0a002027896bba5f82d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8cf2e429f1279633ac9440cb0a9df0790c3d5bd3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9022797321131d80338514269ebfc2eb624245e7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x90ba6d4e38018d6a5322988a4d6ebaa4de39b22d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9256c34cdaaecb10dc55a41c1eddce6e67bc3027` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9500e4dc721bebd99c6a3fab66b8c9d409fe9d40` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x95b337cce192bd384f669ca7958e8f6c1cd846a5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x95d4f97efdbc3f362e4d545f0e25ca269808644c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x968ca93c15339e7f85e98881cd7618b969c2781f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9a5ad99af2a3a4acb8c0c9bd80cb93e81627693b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9acd7579ebf9a3a54b929cc22a219080bc92e6d3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9bb973d1d3b0dc6905da2097273a6a5720b8d534` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9e0ba7c2e661725ac2ed6a218ff2c38f6f62b0b5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9e17f7f2f638f559a26f250973488ee6846c7b9f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9e60c5f6e9a5c5a218071f586560dae9719f9e85` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9e8873aa5f580c05f8bb15bdca9436565b2529ff` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa02c23a28a0e78d5589b3cbadd93086381110082` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa3c5628223fb0a6fa4a0387627fe7b3bdd8d7749` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa40321006940093339c57875b85226c0f7a3752f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa57020f8047eb941cd53074337d0e8133994836b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa5e0f359d92490a1202fd9da5321f25ef8ad5d77` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa7952d4541680e8c7b3f9e58e7e9339e3f0f3d09` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xaa13805938359bb378ff595d4a0c23266c1bcb57` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xaa864c794b82defd2559cae5c9ec51f220126d00` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xaac53b04268bec6f2f533781dafd81bb8122fa42` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xac1a79606679643c6daaf1341b42236d0a476d4d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xad303233a625eb2bfe0083dc328cb7e97f6a689c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xad39a44533802ad20c819e92b2d2d0a662315123` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xad9128315e98771cb295aad3f6fee84e37c29d6e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xadf2be2c9178a7848c958c08405dd611c235fbab` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xaf1eb4a253cc8229c00cdad1eb1afb2e51aa4ab1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb09f4665d799dc1af8bee7ced710ca224fea13c5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb12aeec943edfc4047a4acb03a20d59c48e99c77` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb30d815b07d9274fa93b08b19fb08185614635b0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb3ed4e94be9b2c9b5a5c510921c862e2e78a4512` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb8b04485cc774072441cd7addb9165e994b31445` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xba2bbe5781f44be894030bd04d5fb88a38059455` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbad367f5dcd3eed6bce4d9f7f2f4ee6c91588e00` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbb9b577d063bf2190772d4cc21d63c4b0fc4b66f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbe7c68f72b63a2b3ea798564fe56fbf4b144dba2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc11304ac85be319794ee4ee99813937bec948ff4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc1ce1577090be7f87b73d0d9fa0efaa05d6d48e1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc2163d3070daa4d1015558ba057aa705339994d9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc21a8e264c089e2be855d39e228bda37a994368c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc44563e4693a117556ef9be753dd2620766ed123` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc4706a6a05b6512e3e141cac3492f333ec939807` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc59a418fa7cb9861d01fb4816648544ce8b3f999` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc5c410e21e63fcb6dac6eda295068966fd58a7d5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc67e636193aa53258bbb526c17e54eacc66f211b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc7d8c1596c2a9283b52af0205c5e4134d40b7a84` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc7de75b073dae022e14d1107f35dfbcf86b269b1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc7eecd741fc7315cf35ca983da4d2ca6fd20f000` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc9c70fbf6058a18f8a2f72eeeb6843855eb2d4b8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xca7571f09942192dfd14f283a3a2f92bfd642e20` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcc9d3c942c382439e4a2941f0a5156503490f031` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xccaa7b62abd7ce7ba352f68eab7127778e29f6ed` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcd23e715df5bf666895500b7e80147d85fbd767b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xce928996fd000d79aa66eda4bc6f79704397408a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xce994f9a5005ccad1380dca1206eed57e290d67a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd14a496c5aad6a3b901b1a5c1e15ce50f3bb6f1d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd1eeca5acba92b62dc6e64441b04ed79e5e3f663` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd20524566de34c55c424a38616388118d99c9288` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd3a261c4e673dd72b26ffe75ffc781e49bdd2ee5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd586d3e2393270aa647bf0f96d527554be8e78c3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd6bd46c7fd53c0deeced15ff7961479b46bb5a86` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd6e4d63c3dfc25eb71c016b3a7e9b7b76ba047ba` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd709880c00adc3a8c7457c20a0dd13da778d0ce6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdb7e4ab2ff0987bffedc15221790dcc24eaede7a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdde87dda184d679d9a9fa50e2c0e51de03a29a70` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xde30367f9c53f393b8462dd8ea551d92ac56c2ce` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdeae74809461135d02d74db69926cf50aacb2ed9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdf0ba7651c713f90404341e23d42f489a92ffc4a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe2c12c885bc495a35445f46d0e87c592b0f1091d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe5b87901f9acb07711c085d953c214208b32e0db` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe84ca84552c4dcd11b13f308b94a2eb77b650324` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe853b71d037337a9baec3b681aa57be60a81a1be` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe858901622ac569c383dc4005d07cf7ac363e793` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xebc80a4281158f8d3fa446bb14b99f20a657cffc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xec293e6ec3c804fb36f40ab1819991befa8ea3d0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xec4568f2fd80da72e12dfda0e2891acb663acc5a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf042267ded02ae8e2d2c935bf69f23fd6a833c8e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf05548cc9decffd893463dab36e172ce5c12956a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf0dd820ca34e1b34c8dcf44a19d49ba33fa29771` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf16e2ccb5c4f17d2169972dc4796d8e5a6bc695d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf3cd71042dadf985e268948f15059a7a17a7f482` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf4899f79fcd28b3b83527055d3e7cf2697cdf313` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf78a62e087f4e2df1a3add83dcbb2e5925bb2aa1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfb2cc6dda73799d2713461d95c3dd0377a433bf3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfc8de590cde5d1e41d3944c6e103db07180d48f4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfca83512951ea509e948cba4fa911dc8b9045e8f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfcfa0361e656154bfdb58b92ce44ddf8e72b5a7d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfd03fd0fd5b00f714cace3a07a3cf9d41d5473a4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfda86e11a18cde80b327617e3988003686600992` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xff6e187f219a189787ed2bf1875dcd9eb71aeb82` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xffcac9285cc3c42316c9d0778fffa070dac195c3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0503feaa5854e55e5607e40371e2a1b0d1b9df7f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x12d24438e2c896e78156b50fe8453d7a7d8718cc` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x253be8499e9da002de40b23051480ca6423401ca` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x32ad47ca76419dbbe2bb45b20bcfd939bdceb433` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x45a9ceec6f1ceec0645356efea5cdf198ea1043b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x45fa359d98de1cadbb8f9deb654ed41135e53e3e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x4f9908e98184f6ab0f84828695ebd6ea2a51b3ee` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5e755493795b651e989c13f6b1a7e08322a41887` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7c0697155617b7a797cb7517d483dbbdb17089cf` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x9f070af33a2ce66e49c62c9be40f67391c767489` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa49790d0a68c6ac24425f45eb33321d8fb8e6173` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa4ccc2ebcd2c025c07a8b5e55595c142d57194d0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xad0246983e84c39181078a1f83e36bfebe1b2b64` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb6e19314e10ebc90173a155e228d17545187b05b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xbc46dc817ce983cfd1b36cbc599031acbec2fdfe` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc0ed5ed121814a6c5ab28f2bd98051ae35d28bfe` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xcded19f1bbe9d0e4603a20a54ad3fcf9f7cc5ed6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf53692df0a7183f189788156d703738f4747f481` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf59aa1208f398a699c31271b036df30b0bd63149` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [PeckShield-Audit-Report-Atlantis-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-Atlantis-v1.0.pdf) | PeckShield | Audit | 2021-11 | stale | Direct | contract_name | 11 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| avalanche | [`0x4fa1530ef565833840f59a53e70fb3d9021f0b78`](./contracts/avalanche-43114/0x4fa1530ef565833840f59a53e70fb3d9021f0b78/) | ABep20Delegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xa65722af4957cef481edb4cb255f804dd36e8adc`](./contracts/avalanche-43114/0xa65722af4957cef481edb4cb255f804dd36e8adc/) | ABep20Delegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0e8c9fc7cd455faf22d13fcafd5c6f4eeca02a23`](./contracts/bsc-56/0x0e8c9fc7cd455faf22d13fcafd5c6f4eeca02a23/) | AtlantisLens | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0ed46f84ebf8af56eb29644f6a49d184ad771e11`](./contracts/bsc-56/0x0ed46f84ebf8af56eb29644f6a49d184ad771e11/) | GovernorAlpha | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x3533e4617b4a6734fc6a9513f521ce5f4e9b3c9c`](./contracts/avalanche-43114/0x3533e4617b4a6734fc6a9513f521ce5f4e9b3c9c/) | Unitroller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x6589ca52d193d26cccae2c0e6244315c61501344`](./contracts/bsc-56/0x6589ca52d193d26cccae2c0e6244315c61501344/) | Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x6eceb19392b5afd9706382144bf296f9d2a10042`](./contracts/bsc-56/0x6eceb19392b5afd9706382144bf296f9d2a10042/) | Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xc7a5bb6fcd603309d7a010de44dcbde26fd45b58`](./contracts/bsc-56/0xc7a5bb6fcd603309d7a010de44dcbde26fd45b58/) | Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x69a1692fbb645bda8137e59da7f2d6104d925f43`](./contracts/bsc-56/0x69a1692fbb645bda8137e59da7f2d6104d925f43/) | VaultProxy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 14 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 227 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=11

Fork inheritance lineage and inherited audits are included when available.
