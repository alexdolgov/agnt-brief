# Agentic Audit Brief: Drops

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Drops (`drops`)
- Website: [https://drops.co](https://drops.co)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: ethereum
- Contract surface: 119 unique implementations (280 raw deployments)
- Coverage basis: 0/5 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $2,697,771.42
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Drops. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 5 contract row(s) across ethereum, polygon. Structural roles: 3 unclassified, 2 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 5
- Structural roles: unclassified (3), core (2)
- Contract kinds: contract (5)
- Detected standards: erc20 (2)
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 2 contracts are derived from known codebases. 2 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- CEther (`0x4ae7413182849d062b72518928a4b2de87f0e411`, chain 1)
- CEther (`0x588c13e685e44b22dc6647937481c816e5fee086`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 5; live-surface rows included: 5 (5 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 5/6 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/5 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 5 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 114 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 63
- Confirmed-live implementations: 5 of 119 unique; 114 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/97
- Verified + Unaudited implementations: 97
- Verified by bytecode match: 0
- Unverified implementations: 22
- Unique implementations: 119
- Raw deployments: 280
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-01 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (97)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AdvisoryTokenVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x93532bbda855716c2c16e77695589d78ffe94085` | ⚠️ Unaudited |
| AmbassadorNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x259c559181220b5cf4661c877caf3011941a1858`; ethereum `0x986010627a96200c287cff73007b7b5797c32846` | ⚠️ Unaudited |
| BridgedOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 16 deployments: ethereum `0x1c26b392cb3741fc0126d7d85d2ce5db8c5c0f08`; ethereum `0x2158b584cd2ac01672fe4b18c7c2b895f8777b13`; ethereum `0x24a57ddd412d35c0a9b7c220c3a5af35c1ebf7a7`; ethereum `0x2a5bbd8cf003d67faba4a2b020b828cd34505498`; ethereum `0x4c46a9d1d9021478dbe3ab6b3c7510a9d10ee892`; ethereum `0x4d9b0bdda49c991cb9fad90fee40afe4aa6c21a6`; ethereum `0x76f1cd78c8825a8acd274754ae17b69889303739`; ethereum `0x79b994aea4fd6dea9b6ee807c2704fa36219b5f6`; ethereum `0x90352f2ab1c69ed579764918ff9e473abe3b7cfb`; ethereum `0x94eb0d9c697641c489cc6f515ebee1fb3d14cb46`; ethereum `0x96711774d26ba726c98ebe6512c6eff954a2e575`; ethereum `0x97ffeacd62bdea0b6e3b167ffd3cc25f8a8fc47f`; ethereum `0xbb04b991bf9bd7c47f45348119469f81c447f7a4`; ethereum `0xcb4f30bb9ab712f5db710222db3d4ed8ee5d590b`; ethereum `0xda12a24515e4ba722103a8ff648ba11faf7992e1`; ethereum `0xe000c67ea37b3bf2637128aecf3c43a4615500f5` | ⚠️ Unaudited |
| BridgedOracleArtBlocks | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x6734a196b66e21884c115f54dd7e28ee5c23678d`; ethereum `0xfde76511a27a7a5b8c802e5fda14cc0f879bc2c6` | ⚠️ Unaudited |
| CErc20AuraDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x03a5c21eb6061a85fe84b5c879d68d7db58b57d7`; ethereum `0xd7665e607e9394ff34df1d6ccac1b04b7c71c615` | ⚠️ Unaudited |
| CErc20AuraDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x04a083c48eaac049964129e5a3ef7d48e0f7a7e7`; ethereum `0x173a6b26b60790667ea94ce27a6548321c0d3cf8` | ⚠️ Unaudited |
| CErc20AuraDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x0819376d125e970aa048c3d5c37ebb2cbcaadbb6`; ethereum `0xa2edfd267e9e2f76cd54bd720927a176fadc19a8` | ⚠️ Unaudited |
| CErc20AuraDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x1a84831ac2c42613c6ebb079ae8bd01335b6207e`; ethereum `0x834f5012cdf27e71a3aa7823294b7d50d970e139` | ⚠️ Unaudited |
| CErc20AuraDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xa0eab20aa091cb03f82410586b8e270f19b04a00` | ⚠️ Unaudited |
| CErc20AuraDelegator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x1c5230c1c26bb3842e29e159202fc417b02278a2`; ethereum `0x6f737614cc5b89bbad665f0e6803ee6867835d58`; ethereum `0x903fe0ca362753dac00af3864c038bd7523db711` | ⚠️ Unaudited |
| CErc20gOHMDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x435f9656d10c312da542ebb69d30b464e599ba0b`; ethereum `0xb97a79fcbc3867bb68247f5f76359448ed3ebca3` | ⚠️ Unaudited |
| CErc20gOHMDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x6020d8630dd312748023b5d0263a49f5de729bf6`; ethereum `0xc45ad88e70a32956bd27582de1e095d0dc8983aa` | ⚠️ Unaudited |
| CErc20Immutable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 21 deployments: ethereum `0x0039fec5e1d91741e251d82d9e83859c8e79013d`; ethereum `0x03e1eb147ab39d744565ca1cec4b03106d21fa92`; ethereum `0x0a494b848d4be5d58b0fde9f80c9b25592a2d3b2`; ethereum `0x0eabea97c25bd4dfcad294d82404c7df3b26a2cc`; ethereum `0x140128b2e6562713051df4858ff52f26795b8920`; ethereum `0x28af5f61544916d33c4105eb536c9177f5523b67`; ethereum `0x3fed9c8b527fa6299b3044e5178acc34ec2e25e2`; ethereum `0x41b9dbff70b4d11d91cc755e674222e47e25d198`; ethereum `0x54c312ba0b974d56e2c532ca407ffda2c6a14793`; ethereum `0x5c8d6fb5edf1f231c6168d529de821f4ce9cbbfd`; ethereum `0x7489c6baaba57d9a431642b26e034acd191039f7`; ethereum `0x8f074d82d2aa1ebd086ebdfa585b8b02ac9a0d77`; ethereum `0x985297275e1c5404b3a557ae2bcb594a2338dd03`; ethereum `0xaa08183a98b10bbadb9ccaa852319382120d4683`; ethereum `0xbbfa206d27e415c5eda8ad40e93959301ac2fef2`; ethereum `0xbe8da698a0da00934ec01f94def88d51881194ac`; ethereum `0xdb6994189db5f14a9261cf0420cc377badab03be`; ethereum `0xdf55f91f8f13f6b3754bf07c6ebdf16c99f83198`; ethereum `0xe7d7b65dbe5577d9da4286367031f5bccb020674`; ethereum `0xf00de3d44228856b2ca1d4550c2eacba153daca7`; ethereum `0xfb0fceb2f620009c7e29f9e770ab7cf1d7956ecc` | ⚠️ Unaudited |
| CErc20YearnDelegate | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x72ab6843d4c988d74dd8d5cdf16ef49301d87952` | ⚠️ Unaudited |
| CErc20YearnDelegate | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xf63f89f6463550ce4ce5b6ca6b1323b39c90e9cb` | ⚠️ Unaudited |
| CErc721ArtBlocksDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x30c40201f7af91c1b1eef6c7b4504669602a82f5`; ethereum `0x58ff25d5da5fbe3962b239503caecd99f4d63676` | ⚠️ Unaudited |
| CErc721Immutable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x5f5df50c011d527e19e50b1eac8a18e7827ed23b`; ethereum `0x8c1cfae7866fa2cd4c82fea9a660cfb0faa7578f`; ethereum `0xd0f97be2f6b0ce5af703c11d09082e1a0a3855be`; ethereum `0xd56c42e2adc844080eb7e13ad66ade8600470179`; ethereum `0xdf6602d43871b88d993b604d81731fd8a90cf645`; ethereum `0xf6dc34c07eda4855b5075463dccffab42598415b` | ⚠️ Unaudited |
| CErc721MoonbirdDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x397d11f822578b37b10582db5bceb43bf6e7c85b`; ethereum `0xef5804d6640af705c385fe3f5526674509f70968` | ⚠️ Unaudited |
| CErc721MoonbirdDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac2d3eda37ff0ecc1f2d31791e7e2dae1d133228` | ⚠️ Unaudited |
| CErc721NoSupplyDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x9a045b76beb1713f4bc5e28a2747d1d484db4db4`; ethereum `0xdb05d1bddbbe7f482ccfcfdfbfd14f7783b773b0` | ⚠️ Unaudited |
| CErc721SandboxDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x1fa77fd6dfb5a188e047762a70f842a2c8ded09d`; ethereum `0x5188510a48e8f716e80338c2a2ad4fc415afc290` | ⚠️ Unaudited |
| CErc721SandboxDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb630f9ca1192a9ee70bab08ca4aa58cc2a235ff2` | ⚠️ Unaudited |
| CErc721SandboxDelegator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d60134fa81876f5afbad18a7520aa8596ba07ca` | ⚠️ Unaudited |
| CErc721V2Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 25 | ethereum | n/a | 26 deployments: ethereum `0x109d97019eda5e32b31cd995ba3d29fc5a3e7c97`; ethereum `0x3786f8ab0a0652e23c6503a9a44322b3295608fe`; ethereum `0x397a7e7710f3a074da1b6823e94047e57a5db896`; ethereum `0x43244977fae5ae5e2979533d5f0221d80840fa1a`; ethereum `0x47919d0b513c88e6ddfeead4ea0729c08003daee`; ethereum `0x57789a12fc3236b12201fabcd7c8b7cbb6a94727`; ethereum `0x5a5d79e75016330f8b2a02b4f33b5e12003a63d7`; ethereum `0x5c2cba783f2be59849ee1b01ffbf1ed768b444e0`; ethereum `0x5ce3d90e359a0f5e841ac8696e736e6ebf8bf2f0`; ethereum `0x5daabd53214046c108bddc91766fffee9397cee4`; ethereum `0x65da0a824269e43a2fc9586ef2ffe2ae722c33be`; ethereum `0x69de3c627561f6a3a260e89c43c566c1f3c93e23`; ethereum `0x777a91c5e1cae1533e32fe8ed5667022a1e0fbb6`; ethereum `0x780f467401430632ed0529f497c20806b2793dff`; ethereum `0x7da479d70245e30beffd4968d9019953446f9591`; ethereum `0x83355362ebb2180873844523044c866170f9d99c`; ethereum `0x8d39b065bcfa9d86fedd4cab6ada4f6bc0195d50`; ethereum `0xb2aa23b5a971f6bf1e16010196d4ba3ed861b68d`; ethereum `0xb589a8e4d5c47b721fd7e3def994c819ab8718c4`; ethereum `0xc3d8e1fd31e55ede71ae1453ddf858461e23b59a`; ethereum `0xce072aaaee46fdb3b0aa0be0516b9491ad88ec57`; ethereum `0xcfc8afac17d92796809a4b38a74a245011a96e83`; ethereum `0xda8c9777febab8577a33f4750d165bc13b07b93d`; ethereum `0xe3c4582c660ae527023682f43900d8a89f98d392`; ethereum `0xe63d394953908c3eda007cf4a94f9352bb22dec0`; ethereum `0xe9e374ef997d9ee38d705cabac5b94f469506966` | ⚠️ Unaudited |
| CErc721V2Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 6 | ethereum | n/a | 7 deployments: ethereum `0x550a4a2be23c3a78979bbd0c02d588445b385c1b`; ethereum `0x6d2527d6cf23016d46ce7d0f409c59e8e34d0854`; ethereum `0x9a4c75120b1c943e9314be15ef2b088e9bd69430`; ethereum `0xb49655bc75b61e6482b71c76e269ef8a342283ba`; ethereum `0xe751e2e8dcdcb5ed043419529ba9311fa7ccdd3e`; ethereum `0xedafa6c38ee44810367a77d38d9b99fdafee8513`; ethereum `0xf1c97d0c0f303b0aafe3974d36ed656b0a26cf99` | ⚠️ Unaudited |
| CEther | unknown | project_anchor | own_supporting | 0 | ethereum | unit-236553 | `0x05231980914b702083b9ac08002325654f6eb95b` | ⚠️ Unaudited |
| CEther | unknown | project_anchor | own_supporting | 0 | ethereum | unit-236554 | `0x0a1ef7fed1b691253f9367daf682ba08a9d2fd9c` | ⚠️ Unaudited |
| CEther | unknown | project_anchor | own_supporting | 0 | ethereum | unit-236555 | `0x4ae7413182849d062b72518928a4b2de87f0e411` | ⚠️ Unaudited |
| CEther | unknown | project_anchor | own_supporting | 0 | ethereum | unit-236556 | `0x588c13e685e44b22dc6647937481c816e5fee086` | ⚠️ Unaudited |
| CEther | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x6b2a9d434caa7d5157d3b20bb0588f1148cb2140`; ethereum `0x777eccd3fcf4ffa3b12f45a384852608df2619a0`; ethereum `0xa56131d172e9a9668595a32791ef3ea136f3141b` | ⚠️ Unaudited |
| CEther | unknown | project_anchor | own_supporting | 0 | ethereum | unit-236557 | `0xd72929e284e8bc2f7458a6302be961b91bccb339` | ⚠️ Unaudited |
| CompoudingVaultOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb746ecda2e5ae4a9c9399c5cd76ebf97f95bb280` | ⚠️ Unaudited |
| Comptroller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x2db94606a588ce2486600fa9fc287ec472d51981`; ethereum `0x51eb9f2b2cce3cd315e26502d3a2a4a20f1b268e`; ethereum `0x65a32c35f537f7bdbfad198f5c50f5378002456b`; ethereum `0xb811670e5bd057800b2202fdcabf197340011d63`; ethereum `0xcf810239f6266316d4cfe2e478cd8d6be03ae1a6` | ⚠️ Unaudited |
| Comptroller | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 3 deployments: ethereum `0x48e29b9ddbf3fe6380d7d1ec5b415e97afd14abb`; ethereum `0x874ff8165b7be829708c70b377df8e3c25bfbe3d`; ethereum `0xc01c28bb029e1374be1f9a7607fb7bbb0d985113` | ⚠️ Unaudited |
| Comptroller | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x7674ccf96303c52dc4a9267be132e092b5915a00`; ethereum `0xd9c86de095dda44e6da12cf6adc2f6752c20902e` | ⚠️ Unaudited |
| ComptrollerG1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69cb567ace32c016ca6a389fef8fcee55ab6bcdc` | ⚠️ Unaudited |
| ComptrollerG1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x79b56cb219901dbf42bb5951a0edf27465f96206`; ethereum `0xcec075ff61916085e6a18d79141efcb45607596c` | ⚠️ Unaudited |
| ComptrollerG2 | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 3 deployments: ethereum `0x3903e6ecd8bc610d5a01061b1dc31affd21f81c6`; ethereum `0x7312a3bc8733b068989ef44bac6344f07cfcde7f`; ethereum `0xbe14172224892e8fd7ae2883e46883abf1ea949d` | ⚠️ Unaudited |
| ComptrollerG3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e50dbce6c928888a80046ccace7c2a5fd9aff6e` | ⚠️ Unaudited |
| ComptrollerG3LiquidationMain | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x50280672f1734893895f1aeb7d7db7bc1b811b40`; ethereum `0xe99ef129649343c7cdf14d8febd86c811b8eb43a` | ⚠️ Unaudited |
| ComptrollerG3LiquidationMain | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xb70fb69a522ed8d4613c4c720f91f93a836ee2f5`; ethereum `0xbe36092d081b25be69777fa05c51f96fc6d91f23` | ⚠️ Unaudited |
| ComptrollerG3LiquidationMainP2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x35ae171dda486a77693f8b7c7898867c2f95f4a8`; ethereum `0x5ce3269a34741c67c6a364b7312f80dd984e1da8` | ⚠️ Unaudited |
| ComptrollerG3LiquidationMainP3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x32e41714dcce1c4be08cc1e896bbca56f93e89c9`; ethereum `0xc5ecef9b0981d2834d2a83f2cfe85d4d97a19f65` | ⚠️ Unaudited |
| ComptrollerG3LiquidationMainP4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x42b747330b97b042b85ba5fbf3348e7966ee0f3d`; ethereum `0xb6cdf387c607a1a1178a9e983f36aede65da57f1` | ⚠️ Unaudited |
| ComptrollerG3LiquidationMainP5 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ae03ee1abef401d74ae297fd883e0a06d8c8df5` | ⚠️ Unaudited |
| ComptrollerG3LiquidationMainP5 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x896b8019f5ea3caaab23cda0a09b405ed8361e8b`; ethereum `0x9ed0dc6218802bc4022a28ce3b35f0c063d3b5d2` | ⚠️ Unaudited |
| ComptrollerG3Migration | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x00635eeb0e3738e8a6d8c44a5dbdee32e0242571`; ethereum `0x9deb56b9dd04822924b90ad15d01ee50415f8bc7` | ⚠️ Unaudited |
| ComptrollerG3Paused | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb78bb3068d16803c3d643d166b69f084f46b98e4` | ⚠️ Unaudited |
| CTokenArtBlocksImmutable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa7b06c501e89a963ac9b33a41a571ad23ffeb502` | ⚠️ Unaudited |
| CTokenMoonbirdImmutable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x3cba088c815319c2aa3ffcd4a1a48d078f5f899d`; ethereum `0x7bb678a6c5dadb6b03032ef46c6263ff09bb2799`; ethereum `0xee2ed59082a60c0af4bb2132b90d581134ea1fd5` | ⚠️ Unaudited |
| DAIInterestRateModelV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x08ffb4dee72b5abcb147c1f911cc75200bf1f581`; ethereum `0xc9c85e333af92edacb2b041962cb5190fa6364eb` | ⚠️ Unaudited |
| Dop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6bb61215298f296c55b19ad842d3df69021da2ef` | ⚠️ Unaudited |
| DropsToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xc34568ae1f48db1fc9ba745e4fc614a7b402ce95`; ethereum `0xc80bf672a7d2a5f66ef67c8b80f9ac60201e18ca` | ⚠️ Unaudited |
| ERC20CustomStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x122402df2f985f70277baf22ce9e67e2ceb1892a`; ethereum `0xb85337f0a27203dc31205a715c342ed2dc580296`; ethereum `0xb9810c2fecd6771a5052754479f347c3c2f58ff2`; ethereum `0xc4b73419265b9dfce7abdd0d8e33f99e565d0262` | ⚠️ Unaudited |
| EthMenNftStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8edc7cdce7356f1fc9f498b1fa4a4b3c946e85c1` | ⚠️ Unaudited |
| FinancialPunk | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x458fcd33ad32de55875578da8cf1248b8765ec95` | ⚠️ Unaudited |
| FlashLoanProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x677d18ab5cf3de962a88bff2945b69b1fba8a905`; ethereum `0x8cd5d29f6469a980c85e88478d6087cb154af7ac`; ethereum `0xcb19f011cffe6c38a5149da565f6de9403778e49`; ethereum `0xf2f6001725117b524c34895976a2464b069d7337` | ⚠️ Unaudited |
| FlashLoanProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xcd3d61b50fdc29b0a2ac872fb698d22382bc3452`; ethereum `0xef6e27fa2e89b5334bfa8889fb766e15896e6089` | ⚠️ Unaudited |
| FoundationTokenVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe5f10e1ab6c2cdc37476ec6c7460976c67c4d7bb` | ⚠️ Unaudited |
| GOHMPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7123f51a571a5f0c48208a2cb86362c44c0f9a0e` | ⚠️ Unaudited |
| GovernorAlpha | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x3c194f3f36eceb630529adbe4ba4ed4210ade5f7`; ethereum `0x4936c7469cfb6e1f65dceff577c2eceeb5571f79`; ethereum `0xd9113fb903665fc80faf0f7402e6a3a4c530fecc`; ethereum `0xff1858fbe92235b89ec8ea38ebb560177de41986` | ⚠️ Unaudited |
| HashToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x300496a0352e2e302a3d6df66e66b08625c305be`; ethereum `0xf95bd39eccc23d73531e64b9f442b4f7c8b68e8c` | ⚠️ Unaudited |
| HeroFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe74e12e5b70346025e7fd95e68d6a6f8fd206c16` | ⚠️ Unaudited |
| HeroStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x29326f9050be6df0ec285d55476df4906c82da1e` | ⚠️ Unaudited |
| JumpRateModelV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 18 deployments: ethereum `0x0177f957ef65ec18ee59058ea0435a4b7e8e532c`; ethereum `0x22f170f52fba226a0f7d9f0f7f35abc544db0bc3`; ethereum `0x23d760a61a43dc933f96d44d2ef5682394fe0a31`; ethereum `0x2d3245eda49e659291b2c34a40ffea4213d0d309`; ethereum `0x34140a18b3edf218ad141058b10616a8e7a49b03`; ethereum `0x5134d482b87f9e9850db8ffeca620483a5b9863b`; ethereum `0x5f951bc866c665382152f488dd0c73b653fcbda1`; ethereum `0x6ac9a6aaf5ce5d3a5cbd65ae39103b3fc3a59e75`; ethereum `0x6c89a328217b507ca6e52bbd3da78f6ca57172db`; ethereum `0x8edc559e4fca946270054118fa8595a44ea88dc0`; ethereum `0x97e7c5bdf08196c1779ee02d6557e7cdd1cd083d`; ethereum `0xb239a7baaa407dac73ba6b758b017990660df715`; ethereum `0xb83372881623e8d99266b384f0ef9cb1213e5c02`; ethereum `0xc7fc0302c943fb8deda25c2e5a9f0bf1c7b91ed2`; ethereum `0xd023a7f19619acb740f8738e1eccd96eaa78ad4c`; ethereum `0xf5df668f0ab0c0381e7b6d9384a7952f4d8e4539`; ethereum `0xf724cdb4a6fab924c752d8bb6460836975f45d66`; ethereum `0xfac232cdb28217adad658f0b4a53a2b49f71aeb4` | ⚠️ Unaudited |
| LPStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x0f5d42b4837e27cc7a7f3a0c59d982ff5598ce5d`; ethereum `0x2c92744a0428e405e95dc3eb812e1b87872b22eb`; ethereum `0x7ece965a34fa67c9647b4030ff3bdf1160c6163c` | ⚠️ Unaudited |
| MasterChef | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a78011bf2c42df82cc05f198109ea024b554df9` | ⚠️ Unaudited |
| Maximillion | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x12846dd1a5c2ea001044429ab91a4037b16a8eb5`; ethereum `0x408abe9a2f0086511a71703881fa9f54684b78a0` | ⚠️ Unaudited |
| Mortgage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x4132d1ace559ad155d6d6b515d7a07f59c1363a1`; ethereum `0x70de788bf7327b8dd5e80606628c15e11008c74e`; ethereum `0xe3715aad9dc857adbf0e7a120de18f30132bed82` | ⚠️ Unaudited |
| Mortgage | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x6fc3d78aa67a6a0529ecb2fc71ed99ae232e2399`; ethereum `0xbcd6bd170ea60bdac1bc054ced8c232b1a00fb59` | ⚠️ Unaudited |
| Mortgage | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xaddc4c14a21631aad299746ed90c46a2607551c0`; ethereum `0xd5cbd56a8c40b6d87e8ad0d7ed4d107556b3bf46` | ⚠️ Unaudited |
| NFTCustomStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x28f99f6242fe892a7a611c768c0007e5f3a496be`; ethereum `0x69b35e0072dc5a9e7f868d8f98012ca19fa6b3fd`; ethereum `0xe7bc79960ef0b7c6b21cec91476a42678c90a37f` | ⚠️ Unaudited |
| NFTLiquidationG1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x113296013d1d22c070381fd8a82a1ac3db8562e3`; ethereum `0xdcbf673b01d80cace11699bb1511ee285ed62041` | ⚠️ Unaudited |
| NFTLiquidationG1 | unknown | non_address_book | non_address_book_inventory (excluded) | 4 | ethereum | n/a | 5 deployments: ethereum `0x11ff91f17e43c2c5c241850d261cae5febb9b439`; ethereum `0x55666407d146e19b0ca5f618ee29566c157c5d95`; ethereum `0x6b724474f3de82fe4d37001bbe7235eec1de6035`; ethereum `0xaa95c2d1b3f78e86c41b22f3d202d15200a23e23`; ethereum `0xfad844e28b309269bf7d11a7bc6b2ed993175598` | ⚠️ Unaudited |
| NFTLiquidationProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17a78cea1abad58a4f6d87dc94a4a748f2965b20` | ⚠️ Unaudited |
| NFTStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x3bc614ed268ea7fc30230c903706d0608bdef1a9`; ethereum `0x81b6a8bf87817adca4874838560966957c3e01e5`; ethereum `0x831fa725f0aa4dc5fd0ce082952a9a299cf794b3` | ⚠️ Unaudited |
| NodeRunnersFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaf060b67967c1865eb47b4b8dbfe9f8f65ab265f` | ⚠️ Unaudited |
| NodeRunnersLiquidity | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4919b8022e1a88c7a0e84b7acfe10175ae7420c4` | ⚠️ Unaudited |
| NodeRunnersNFT | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x89ee76cc25fcbf1714ed575faa6a10202b71c26a`; ethereum `0xf15fcfb397da33ff61d6a806773f8b30d57111cc` | ⚠️ Unaudited |
| NodeRunnersToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x739763a258640919981f9ba610ae65492455be53` | ⚠️ Unaudited |
| NTFStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf85372d78e46e34bbc7b265a334dae8052b7421c` | ⚠️ Unaudited |
| PriceNode | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xde5d4d97737e2563d3a0d86bb13fea6040120fe8` | ⚠️ Unaudited |
| Refinance | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x4c079389a125eef20180a6886ca5c8da535024ae`; ethereum `0xf0d08f183d01436801ff393f1d39a6c9a9629ece` | ⚠️ Unaudited |
| Snapshot | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe701bb0290b26609e947d0e65591af0ac6d46af8` | ⚠️ Unaudited |
| StakingErc721 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbd0e5ee54dbc97181e474d0206e472f1935d6bcd` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x0c44a52854101be7d3299f1bfdbe695935a32221`; ethereum `0x2bf4c8929fdf310c50730249fed61d2d762ac1e9`; ethereum `0x565b4d508abac5c67aacbb6065ed2312a83c403e`; ethereum `0xd6069e5fe5cea4ebdd0b437d39033acf0f682209` | ⚠️ Unaudited |
| TokenLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x366c727bd25d8479d8f799712f4deb1ff2353880`; ethereum `0x4ea4e7da68176be4fccff9fb0658e956012137b6` | ⚠️ Unaudited |
| TokenVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b13929da9fae9929aba25fc14014305f6e5da89` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00aa1c57e894c4010fe44cb840ae56432d7ea1d1` | ⚠️ Unaudited |
| Unitroller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x34abc88ac9a137531c7a3c91dff9e2dfb8e9b16e` | ⚠️ Unaudited |
| Unitroller | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xd9193ac2eca2b29ef3d05bf536f7821041f48e4e`; ethereum `0xe35058fa4e34b660fdf10c903e8abfc35ea84892` | ⚠️ Unaudited |
| Vesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3758db4bdda0b770666c849d9a251df1c24f263f` | ⚠️ Unaudited |
| VestingV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xe4e7ab938a752aa8324a49a4098c491133c8e0e0`; ethereum `0xf3f769cbc92dfd694a25cdf6e1abb94511792bc8` | ⚠️ Unaudited |
| VillainFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb3bbccac27cbf08ca4187ad6b840bdac5c9ef37d` | ⚠️ Unaudited |
| VillainStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x335ed0f48715e6cf86d46d630dadddcf7cbddb6a` | ⚠️ Unaudited |
| Vyper_contract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x5ba476927ec72df1b7717c0cc321797d95cb61b6`; ethereum `0xef181de80ca41298c4031176f8b2c4268e0c9203` | ⚠️ Unaudited |
| WstETHPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeae8bfdc42777903dd1c8ce86868f77eba81671c` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (22)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x089740e9fb36456554f384ef41dbf2c64e2c51d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09b3c0c6be19e9771a611730f1bad6272b8f1ed8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3bfbfbb9de8ec3ea621a965ceb68779320391355` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d7711cfdb117e463378abda138d41e91f26aa85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x415a7aa9b4c3c5e0fe9fe35ee564e5f9d7eb4d3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x52719dca4137e3e92cbb038242feb9c063e63635` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5551c7146bef4c4ae6a70bbdaed90349881d74fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7694617324d0b29f308d075967310b95ac91b40d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9ec68694119b27905816530e9fd340226d16b813` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9ff498491128181902619f1f98fe06457853b47d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa42035427a8dfdf87c01b4d7454f117d1a7d7590` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa9cb5f983626a42d06f336c4fe5ce8aa68a2926d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xab60612d4a9ed569e4ce8d9e5f2e4fed9faf87d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb48be140cc3b8f8e04b7438dd0b7378b222b31f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc183b6eebb8f553ff10eccc70f9c5b98efde059` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca59b7c5288e415fc044d017c8de50d869760481` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd4d2fbd18e7301eee08b1605be05671245ab7b9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd9d54557fb2ccbf552e0ea3e4eccbae942c408be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xde26e8ef369dd5c1a08ef7fbf1e3873a69734713` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb8470c178748f2b9b98f0572c5f968aa4952ced` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xef6e9d77409861363e5ed8c6abcf943e77134491` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf5a514e5cc5d21b18b29e8a4c8820e1554b884fa` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 264
- Live contracts: 3
- Unknown liveness contracts: 261
- Source-verified contracts: 241
- Currently scope-matched contracts retained as-is: 0
- Classification counts: candidate review=43, contamination review=22, source verified unclassified=176, unverified unclassified=23

Showing first 200 of 264 contracts. The complete deployer expansion list is in `brief.json`.

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| candidate review | CErc721SandboxDelegate<br>`0x1fa77fd6dfb5a188e047762a70f842a2c8ded09d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x761a6dbfa23fb3558361b021384261200959819c` |
| candidate review | CEther<br>`0x05231980914b702083b9ac08002325654f6eb95b` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xd1f60ebec593289daba5f5ecba16a906f9d7a8bc` |
| candidate review | CEther<br>`0x0a1ef7fed1b691253f9367daf682ba08a9d2fd9c` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xd1f60ebec593289daba5f5ecba16a906f9d7a8bc` |
| candidate review | CEther<br>`0x6b2a9d434caa7d5157d3b20bb0588f1148cb2140` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd1f60ebec593289daba5f5ecba16a906f9d7a8bc` |
| candidate review | CEther<br>`0xa56131d172e9a9668595a32791ef3ea136f3141b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd1f60ebec593289daba5f5ecba16a906f9d7a8bc` |
| candidate review | CEther<br>`0xd72929e284e8bc2f7458a6302be961b91bccb339` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xd1f60ebec593289daba5f5ecba16a906f9d7a8bc` |
| candidate review | Comptroller<br>`0x2db94606a588ce2486600fa9fc287ec472d51981` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x761a6dbfa23fb3558361b021384261200959819c` |
| candidate review | Comptroller<br>`0x51eb9f2b2cce3cd315e26502d3a2a4a20f1b268e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x761a6dbfa23fb3558361b021384261200959819c` |
| candidate review | Comptroller<br>`0x65a32c35f537f7bdbfad198f5c50f5378002456b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd1f60ebec593289daba5f5ecba16a906f9d7a8bc` |
| candidate review | Comptroller<br>`0x7674ccf96303c52dc4a9267be132e092b5915a00` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd1f60ebec593289daba5f5ecba16a906f9d7a8bc` |
| candidate review | Comptroller<br>`0xb811670e5bd057800b2202fdcabf197340011d63` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd1f60ebec593289daba5f5ecba16a906f9d7a8bc` |
| candidate review | Comptroller<br>`0xc01c28bb029e1374be1f9a7607fb7bbb0d985113` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x761a6dbfa23fb3558361b021384261200959819c` |
| candidate review | Comptroller<br>`0xcf810239f6266316d4cfe2e478cd8d6be03ae1a6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x761a6dbfa23fb3558361b021384261200959819c` |
| candidate review | ComptrollerG1<br>`0x69cb567ace32c016ca6a389fef8fcee55ab6bcdc` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd1f60ebec593289daba5f5ecba16a906f9d7a8bc` |
| candidate review | ComptrollerG1<br>`0xcec075ff61916085e6a18d79141efcb45607596c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd1f60ebec593289daba5f5ecba16a906f9d7a8bc` |
| candidate review | ComptrollerG2<br>`0xbe14172224892e8fd7ae2883e46883abf1ea949d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd1f60ebec593289daba5f5ecba16a906f9d7a8bc` |
| candidate review | ComptrollerG3<br>`0x1e50dbce6c928888a80046ccace7c2a5fd9aff6e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd1f60ebec593289daba5f5ecba16a906f9d7a8bc` |
| candidate review | ComptrollerG3LiquidationMain<br>`0x50280672f1734893895f1aeb7d7db7bc1b811b40` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd1f60ebec593289daba5f5ecba16a906f9d7a8bc` |
| candidate review | ComptrollerG3LiquidationMain<br>`0xbe36092d081b25be69777fa05c51f96fc6d91f23` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x761a6dbfa23fb3558361b021384261200959819c` |
| candidate review | ComptrollerG3LiquidationMain<br>`0xe99ef129649343c7cdf14d8febd86c811b8eb43a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd1f60ebec593289daba5f5ecba16a906f9d7a8bc` |
| candidate review | ComptrollerG3LiquidationMainP2<br>`0x35ae171dda486a77693f8b7c7898867c2f95f4a8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x761a6dbfa23fb3558361b021384261200959819c` |
| candidate review | ComptrollerG3LiquidationMainP2<br>`0x5ce3269a34741c67c6a364b7312f80dd984e1da8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd1f60ebec593289daba5f5ecba16a906f9d7a8bc` |
| candidate review | ComptrollerG3LiquidationMainP3<br>`0x32e41714dcce1c4be08cc1e896bbca56f93e89c9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd1f60ebec593289daba5f5ecba16a906f9d7a8bc` |
| candidate review | ComptrollerG3LiquidationMainP3<br>`0xc5ecef9b0981d2834d2a83f2cfe85d4d97a19f65` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x761a6dbfa23fb3558361b021384261200959819c` |
| candidate review | ComptrollerG3LiquidationMainP4<br>`0x42b747330b97b042b85ba5fbf3348e7966ee0f3d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd1f60ebec593289daba5f5ecba16a906f9d7a8bc` |
| candidate review | ComptrollerG3LiquidationMainP4<br>`0xb6cdf387c607a1a1178a9e983f36aede65da57f1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x761a6dbfa23fb3558361b021384261200959819c` |
| candidate review | ComptrollerG3LiquidationMainP5<br>`0x3ae03ee1abef401d74ae297fd883e0a06d8c8df5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x761a6dbfa23fb3558361b021384261200959819c` |
| candidate review | ComptrollerG3LiquidationMainP5<br>`0x9ed0dc6218802bc4022a28ce3b35f0c063d3b5d2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd1f60ebec593289daba5f5ecba16a906f9d7a8bc` |
| candidate review | ComptrollerG3Migration<br>`0x00635eeb0e3738e8a6d8c44a5dbdee32e0242571` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd1f60ebec593289daba5f5ecba16a906f9d7a8bc` |
| candidate review | ComptrollerG3Paused<br>`0xb78bb3068d16803c3d643d166b69f084f46b98e4` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd1f60ebec593289daba5f5ecba16a906f9d7a8bc` |
| candidate review | Maximillion<br>`0x12846dd1a5c2ea001044429ab91a4037b16a8eb5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd1f60ebec593289daba5f5ecba16a906f9d7a8bc` |
| candidate review | Maximillion<br>`0x408abe9a2f0086511a71703881fa9f54684b78a0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd1f60ebec593289daba5f5ecba16a906f9d7a8bc` |
| candidate review | Snapshot<br>`0xe701bb0290b26609e947d0e65591af0ac6d46af8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x548c690f898bee888240bd217302d60bcdf2b4d7` |
| candidate review | Unitroller<br>`0x34abc88ac9a137531c7a3c91dff9e2dfb8e9b16e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x761a6dbfa23fb3558361b021384261200959819c` |
| candidate review | Unitroller<br>`0x3903e6ecd8bc610d5a01061b1dc31affd21f81c6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd1f60ebec593289daba5f5ecba16a906f9d7a8bc` |
| candidate review | Unitroller<br>`0x7312a3bc8733b068989ef44bac6344f07cfcde7f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd1f60ebec593289daba5f5ecba16a906f9d7a8bc` |
| candidate review | Unitroller<br>`0x79b56cb219901dbf42bb5951a0edf27465f96206` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd1f60ebec593289daba5f5ecba16a906f9d7a8bc` |
| candidate review | Unitroller<br>`0x874ff8165b7be829708c70b377df8e3c25bfbe3d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x761a6dbfa23fb3558361b021384261200959819c` |
| candidate review | Unitroller<br>`0x896b8019f5ea3caaab23cda0a09b405ed8361e8b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd1f60ebec593289daba5f5ecba16a906f9d7a8bc` |
| candidate review | Unitroller<br>`0x9deb56b9dd04822924b90ad15d01ee50415f8bc7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd1f60ebec593289daba5f5ecba16a906f9d7a8bc` |
| candidate review | Unitroller<br>`0xb70fb69a522ed8d4613c4c720f91f93a836ee2f5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd1f60ebec593289daba5f5ecba16a906f9d7a8bc` |
| candidate review | Unitroller<br>`0xd9193ac2eca2b29ef3d05bf536f7821041f48e4e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd1f60ebec593289daba5f5ecba16a906f9d7a8bc` |
| candidate review | Unitroller<br>`0xd9c86de095dda44e6da12cf6adc2f6752c20902e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd1f60ebec593289daba5f5ecba16a906f9d7a8bc` |
| contamination review | BridgedOracle<br>`0x1c26b392cb3741fc0126d7d85d2ce5db8c5c0f08` | non_address_book | unknown | unknown | verified | n/a | `0xd1f60ebec593289daba5f5ecba16a906f9d7a8bc` |
| contamination review | BridgedOracleArtBlocks<br>`0x6734a196b66e21884c115f54dd7e28ee5c23678d` | non_address_book | unknown | unknown | verified | n/a | `0xd1f60ebec593289daba5f5ecba16a906f9d7a8bc` |
| contamination review | CErc20AuraDelegate<br>`0x03a5c21eb6061a85fe84b5c879d68d7db58b57d7` | non_address_book | unknown | unknown | verified | n/a | `0x84c613147c6c681ba13f3022a0cf6770d44eba29` |
| contamination review | CErc20AuraDelegator<br>`0x04a083c48eaac049964129e5a3ef7d48e0f7a7e7` | non_address_book | unknown | unknown | verified | n/a | `0x84c613147c6c681ba13f3022a0cf6770d44eba29` |
| contamination review | CErc20AuraDelegator<br>`0x1c5230c1c26bb3842e29e159202fc417b02278a2` | non_address_book | unknown | unknown | verified | n/a | `0x761a6dbfa23fb3558361b021384261200959819c` |
| contamination review | CErc20gOHMDelegate<br>`0x435f9656d10c312da542ebb69d30b464e599ba0b` | non_address_book | unknown | unknown | verified | n/a | `0x84c613147c6c681ba13f3022a0cf6770d44eba29` |
| contamination review | CErc20Immutable<br>`0x0039fec5e1d91741e251d82d9e83859c8e79013d` | non_address_book | unknown | unknown | verified | n/a | `0xd1f60ebec593289daba5f5ecba16a906f9d7a8bc` |
| contamination review | CErc721ArtBlocksDelegator<br>`0x30c40201f7af91c1b1eef6c7b4504669602a82f5` | non_address_book | unknown | unknown | verified | n/a | `0xd1f60ebec593289daba5f5ecba16a906f9d7a8bc` |
| contamination review | CErc721Immutable<br>`0x5f5df50c011d527e19e50b1eac8a18e7827ed23b` | non_address_book | unknown | unknown | verified | n/a | `0xd1f60ebec593289daba5f5ecba16a906f9d7a8bc` |
| contamination review | CErc721MoonbirdDelegator<br>`0x397d11f822578b37b10582db5bceb43bf6e7c85b` | non_address_book | unknown | unknown | verified | n/a | `0xd1f60ebec593289daba5f5ecba16a906f9d7a8bc` |
| contamination review | CErc721NoSupplyDelegator<br>`0x9a045b76beb1713f4bc5e28a2747d1d484db4db4` | non_address_book | unknown | unknown | verified | n/a | `0xd1f60ebec593289daba5f5ecba16a906f9d7a8bc` |
| contamination review | CErc721SandboxDelegator<br>`0x3d60134fa81876f5afbad18a7520aa8596ba07ca` | non_address_book | unknown | unknown | verified | n/a | `0xd1f60ebec593289daba5f5ecba16a906f9d7a8bc` |
| contamination review | CErc721SandboxDelegator<br>`0x5188510a48e8f716e80338c2a2ad4fc415afc290` | non_address_book | unknown | unknown | verified | n/a | `0xd1f60ebec593289daba5f5ecba16a906f9d7a8bc` |
| contamination review | CErc721V2Delegator<br>`0x109d97019eda5e32b31cd995ba3d29fc5a3e7c97` | non_address_book | unknown | unknown | verified | n/a | `0xd1f60ebec593289daba5f5ecba16a906f9d7a8bc` |
| contamination review | CTokenArtBlocksImmutable<br>`0xa7b06c501e89a963ac9b33a41a571ad23ffeb502` | non_address_book | unknown | unknown | verified | n/a | `0xd1f60ebec593289daba5f5ecba16a906f9d7a8bc` |
| contamination review | CTokenMoonbirdImmutable<br>`0x3cba088c815319c2aa3ffcd4a1a48d078f5f899d` | non_address_book | unknown | unknown | verified | n/a | `0xd1f60ebec593289daba5f5ecba16a906f9d7a8bc` |
| contamination review | DAIInterestRateModelV3<br>`0x08ffb4dee72b5abcb147c1f911cc75200bf1f581` | non_address_book | unknown | unknown | verified | n/a | `0xd1f60ebec593289daba5f5ecba16a906f9d7a8bc` |
| contamination review | JumpRateModelV2<br>`0x0177f957ef65ec18ee59058ea0435a4b7e8e532c` | non_address_book | unknown | unknown | verified | n/a | `0xd1f60ebec593289daba5f5ecba16a906f9d7a8bc` |
| contamination review | NFTLiquidationG1<br>`0x113296013d1d22c070381fd8a82a1ac3db8562e3` | non_address_book | unknown | unknown | verified | n/a | `0xd1f60ebec593289daba5f5ecba16a906f9d7a8bc` |
| contamination review | NFTLiquidationProxy<br>`0x17a78cea1abad58a4f6d87dc94a4a748f2965b20` | non_address_book | unknown | unknown | verified | n/a | `0xd1f60ebec593289daba5f5ecba16a906f9d7a8bc` |
| contamination review | PriceNode<br>`0xde5d4d97737e2563d3a0d86bb13fea6040120fe8` | non_address_book | unknown | unknown | verified | n/a | `0xd1f60ebec593289daba5f5ecba16a906f9d7a8bc` |
| contamination review | TokenLogic<br>`0x366c727bd25d8479d8f799712f4deb1ff2353880` | non_address_book | unknown | unknown | verified | n/a | `0xd1f60ebec593289daba5f5ecba16a906f9d7a8bc` |
| source verified unclassified | AdvisoryTokenVesting<br>`0x93532bbda855716c2c16e77695589d78ffe94085` | non_address_book | unknown | unknown | verified | n/a | `0xd1f60ebec593289daba5f5ecba16a906f9d7a8bc` |
| source verified unclassified | AmbassadorNFT<br>`0x259c559181220b5cf4661c877caf3011941a1858` | non_address_book | unknown | unknown | verified | n/a | `0xd1f60ebec593289daba5f5ecba16a906f9d7a8bc` |
| source verified unclassified | BridgedOracle<br>`0x2158b584cd2ac01672fe4b18c7c2b895f8777b13` | non_address_book | unknown | unknown | verified | n/a | `0x761a6dbfa23fb3558361b021384261200959819c` |
| source verified unclassified | BridgedOracle<br>`0x24a57ddd412d35c0a9b7c220c3a5af35c1ebf7a7` | non_address_book | unknown | unknown | verified | n/a | `0x761a6dbfa23fb3558361b021384261200959819c` |
| source verified unclassified | BridgedOracle<br>`0x2a5bbd8cf003d67faba4a2b020b828cd34505498` | non_address_book | unknown | unknown | verified | n/a | `0xd1f60ebec593289daba5f5ecba16a906f9d7a8bc` |
| source verified unclassified | BridgedOracle<br>`0x4c46a9d1d9021478dbe3ab6b3c7510a9d10ee892` | non_address_book | unknown | unknown | verified | n/a | `0xd1f60ebec593289daba5f5ecba16a906f9d7a8bc` |
| source verified unclassified | BridgedOracle<br>`0x4d9b0bdda49c991cb9fad90fee40afe4aa6c21a6` | non_address_book | unknown | unknown | verified | n/a | `0xd1f60ebec593289daba5f5ecba16a906f9d7a8bc` |
| source verified unclassified | BridgedOracle<br>`0x76f1cd78c8825a8acd274754ae17b69889303739` | non_address_book | unknown | unknown | verified | n/a | `0x761a6dbfa23fb3558361b021384261200959819c` |
| source verified unclassified | BridgedOracle<br>`0x79b994aea4fd6dea9b6ee807c2704fa36219b5f6` | non_address_book | unknown | unknown | verified | n/a | `0xd1f60ebec593289daba5f5ecba16a906f9d7a8bc` |
| source verified unclassified | BridgedOracle<br>`0x90352f2ab1c69ed579764918ff9e473abe3b7cfb` | non_address_book | unknown | unknown | verified | n/a | `0xd1f60ebec593289daba5f5ecba16a906f9d7a8bc` |
| source verified unclassified | BridgedOracle<br>`0x94eb0d9c697641c489cc6f515ebee1fb3d14cb46` | non_address_book | unknown | unknown | verified | n/a | `0xd1f60ebec593289daba5f5ecba16a906f9d7a8bc` |
| source verified unclassified | BridgedOracle<br>`0x96711774d26ba726c98ebe6512c6eff954a2e575` | non_address_book | unknown | unknown | verified | n/a | `0xd1f60ebec593289daba5f5ecba16a906f9d7a8bc` |
| source verified unclassified | BridgedOracle<br>`0x97ffeacd62bdea0b6e3b167ffd3cc25f8a8fc47f` | non_address_book | unknown | unknown | verified | n/a | `0xd1f60ebec593289daba5f5ecba16a906f9d7a8bc` |
| source verified unclassified | BridgedOracle<br>`0xbb04b991bf9bd7c47f45348119469f81c447f7a4` | non_address_book | unknown | unknown | verified | n/a | `0xd1f60ebec593289daba5f5ecba16a906f9d7a8bc` |
| source verified unclassified | BridgedOracle<br>`0xcb4f30bb9ab712f5db710222db3d4ed8ee5d590b` | non_address_book | unknown | unknown | verified | n/a | `0x761a6dbfa23fb3558361b021384261200959819c` |
| source verified unclassified | BridgedOracle<br>`0xe000c67ea37b3bf2637128aecf3c43a4615500f5` | non_address_book | unknown | unknown | verified | n/a | `0x761a6dbfa23fb3558361b021384261200959819c` |
| source verified unclassified | BridgedOracleArtBlocks<br>`0xfde76511a27a7a5b8c802e5fda14cc0f879bc2c6` | non_address_book | unknown | unknown | verified | n/a | `0xd1f60ebec593289daba5f5ecba16a906f9d7a8bc` |
| source verified unclassified | CErc20AuraDelegate<br>`0x0819376d125e970aa048c3d5c37ebb2cbcaadbb6` | non_address_book | unknown | unknown | verified | n/a | `0x84c613147c6c681ba13f3022a0cf6770d44eba29` |
| source verified unclassified | CErc20AuraDelegate<br>`0x173a6b26b60790667ea94ce27a6548321c0d3cf8` | non_address_book | unknown | unknown | verified | n/a | `0x84c613147c6c681ba13f3022a0cf6770d44eba29` |
| source verified unclassified | CErc20AuraDelegate<br>`0x834f5012cdf27e71a3aa7823294b7d50d970e139` | non_address_book | unknown | unknown | verified | n/a | `0x761a6dbfa23fb3558361b021384261200959819c` |
| source verified unclassified | CErc20AuraDelegate<br>`0xd7665e607e9394ff34df1d6ccac1b04b7c71c615` | non_address_book | unknown | unknown | verified | n/a | `0x84c613147c6c681ba13f3022a0cf6770d44eba29` |
| source verified unclassified | CErc20AuraDelegator<br>`0x1a84831ac2c42613c6ebb079ae8bd01335b6207e` | non_address_book | unknown | unknown | verified | n/a | `0x761a6dbfa23fb3558361b021384261200959819c` |
| source verified unclassified | CErc20AuraDelegator<br>`0x6f737614cc5b89bbad665f0e6803ee6867835d58` | non_address_book | unknown | unknown | verified | n/a | `0x761a6dbfa23fb3558361b021384261200959819c` |
| source verified unclassified | CErc20AuraDelegator<br>`0x903fe0ca362753dac00af3864c038bd7523db711` | non_address_book | unknown | unknown | verified | n/a | `0x761a6dbfa23fb3558361b021384261200959819c` |
| source verified unclassified | CErc20AuraDelegator<br>`0xa0eab20aa091cb03f82410586b8e270f19b04a00` | non_address_book | unknown | unknown | verified | n/a | `0x761a6dbfa23fb3558361b021384261200959819c` |
| source verified unclassified | CErc20AuraDelegator<br>`0xa2edfd267e9e2f76cd54bd720927a176fadc19a8` | non_address_book | unknown | unknown | verified | n/a | `0x84c613147c6c681ba13f3022a0cf6770d44eba29` |
| source verified unclassified | CErc20gOHMDelegate<br>`0xc45ad88e70a32956bd27582de1e095d0dc8983aa` | non_address_book | unknown | unknown | verified | n/a | `0x84c613147c6c681ba13f3022a0cf6770d44eba29` |
| source verified unclassified | CErc20gOHMDelegator<br>`0x6020d8630dd312748023b5d0263a49f5de729bf6` | non_address_book | unknown | unknown | verified | n/a | `0x84c613147c6c681ba13f3022a0cf6770d44eba29` |
| source verified unclassified | CErc20gOHMDelegator<br>`0xb97a79fcbc3867bb68247f5f76359448ed3ebca3` | non_address_book | unknown | unknown | verified | n/a | `0x84c613147c6c681ba13f3022a0cf6770d44eba29` |
| source verified unclassified | CErc20Immutable<br>`0x03e1eb147ab39d744565ca1cec4b03106d21fa92` | non_address_book | unknown | unknown | verified | n/a | `0xd1f60ebec593289daba5f5ecba16a906f9d7a8bc` |
| source verified unclassified | CErc20Immutable<br>`0x0a494b848d4be5d58b0fde9f80c9b25592a2d3b2` | non_address_book | unknown | unknown | verified | n/a | `0xd1f60ebec593289daba5f5ecba16a906f9d7a8bc` |
| source verified unclassified | CErc20Immutable<br>`0x0eabea97c25bd4dfcad294d82404c7df3b26a2cc` | non_address_book | unknown | unknown | verified | n/a | `0xd1f60ebec593289daba5f5ecba16a906f9d7a8bc` |
| source verified unclassified | CErc20Immutable<br>`0x140128b2e6562713051df4858ff52f26795b8920` | non_address_book | unknown | unknown | verified | n/a | `0xd1f60ebec593289daba5f5ecba16a906f9d7a8bc` |
| source verified unclassified | CErc20Immutable<br>`0x28af5f61544916d33c4105eb536c9177f5523b67` | non_address_book | unknown | unknown | verified | n/a | `0xd1f60ebec593289daba5f5ecba16a906f9d7a8bc` |
| source verified unclassified | CErc20Immutable<br>`0x3fed9c8b527fa6299b3044e5178acc34ec2e25e2` | non_address_book | unknown | unknown | verified | n/a | `0xd1f60ebec593289daba5f5ecba16a906f9d7a8bc` |
| source verified unclassified | CErc20Immutable<br>`0x41b9dbff70b4d11d91cc755e674222e47e25d198` | non_address_book | unknown | unknown | verified | n/a | `0xd1f60ebec593289daba5f5ecba16a906f9d7a8bc` |
| source verified unclassified | CErc20Immutable<br>`0x54c312ba0b974d56e2c532ca407ffda2c6a14793` | non_address_book | unknown | unknown | verified | n/a | `0xd1f60ebec593289daba5f5ecba16a906f9d7a8bc` |
| source verified unclassified | CErc20Immutable<br>`0x5c8d6fb5edf1f231c6168d529de821f4ce9cbbfd` | non_address_book | unknown | unknown | verified | n/a | `0xd1f60ebec593289daba5f5ecba16a906f9d7a8bc` |
| source verified unclassified | CErc20Immutable<br>`0x7489c6baaba57d9a431642b26e034acd191039f7` | non_address_book | unknown | unknown | verified | n/a | `0xd1f60ebec593289daba5f5ecba16a906f9d7a8bc` |
| source verified unclassified | CErc20Immutable<br>`0x8f074d82d2aa1ebd086ebdfa585b8b02ac9a0d77` | non_address_book | unknown | unknown | verified | n/a | `0xd1f60ebec593289daba5f5ecba16a906f9d7a8bc` |
| source verified unclassified | CErc20Immutable<br>`0xaa08183a98b10bbadb9ccaa852319382120d4683` | non_address_book | unknown | unknown | verified | n/a | `0xd1f60ebec593289daba5f5ecba16a906f9d7a8bc` |
| source verified unclassified | CErc20Immutable<br>`0xbbfa206d27e415c5eda8ad40e93959301ac2fef2` | non_address_book | unknown | unknown | verified | n/a | `0xd1f60ebec593289daba5f5ecba16a906f9d7a8bc` |
| source verified unclassified | CErc20Immutable<br>`0xbe8da698a0da00934ec01f94def88d51881194ac` | non_address_book | unknown | unknown | verified | n/a | `0xd1f60ebec593289daba5f5ecba16a906f9d7a8bc` |
| source verified unclassified | CErc20Immutable<br>`0xdb6994189db5f14a9261cf0420cc377badab03be` | non_address_book | unknown | unknown | verified | n/a | `0xd1f60ebec593289daba5f5ecba16a906f9d7a8bc` |
| source verified unclassified | CErc20Immutable<br>`0xdf55f91f8f13f6b3754bf07c6ebdf16c99f83198` | non_address_book | unknown | unknown | verified | n/a | `0xd1f60ebec593289daba5f5ecba16a906f9d7a8bc` |
| source verified unclassified | CErc20Immutable<br>`0xe7d7b65dbe5577d9da4286367031f5bccb020674` | non_address_book | unknown | unknown | verified | n/a | `0xd1f60ebec593289daba5f5ecba16a906f9d7a8bc` |
| source verified unclassified | CErc20Immutable<br>`0xf00de3d44228856b2ca1d4550c2eacba153daca7` | non_address_book | unknown | unknown | verified | n/a | `0xd1f60ebec593289daba5f5ecba16a906f9d7a8bc` |
| source verified unclassified | CErc20Immutable<br>`0xfb0fceb2f620009c7e29f9e770ab7cf1d7956ecc` | non_address_book | unknown | unknown | verified | n/a | `0xd1f60ebec593289daba5f5ecba16a906f9d7a8bc` |
| source verified unclassified | CErc721ArtBlocksDelegate<br>`0x58ff25d5da5fbe3962b239503caecd99f4d63676` | non_address_book | unknown | unknown | verified | n/a | `0xd1f60ebec593289daba5f5ecba16a906f9d7a8bc` |
| source verified unclassified | CErc721Immutable<br>`0x8c1cfae7866fa2cd4c82fea9a660cfb0faa7578f` | non_address_book | unknown | unknown | verified | n/a | `0xd1f60ebec593289daba5f5ecba16a906f9d7a8bc` |
| source verified unclassified | CErc721Immutable<br>`0xd0f97be2f6b0ce5af703c11d09082e1a0a3855be` | non_address_book | unknown | unknown | verified | n/a | `0xd1f60ebec593289daba5f5ecba16a906f9d7a8bc` |
| source verified unclassified | CErc721Immutable<br>`0xd56c42e2adc844080eb7e13ad66ade8600470179` | non_address_book | unknown | unknown | verified | n/a | `0xd1f60ebec593289daba5f5ecba16a906f9d7a8bc` |
| source verified unclassified | CErc721Immutable<br>`0xdf6602d43871b88d993b604d81731fd8a90cf645` | non_address_book | unknown | unknown | verified | n/a | `0xd1f60ebec593289daba5f5ecba16a906f9d7a8bc` |
| source verified unclassified | CErc721Immutable<br>`0xf6dc34c07eda4855b5075463dccffab42598415b` | non_address_book | unknown | unknown | verified | n/a | `0xd1f60ebec593289daba5f5ecba16a906f9d7a8bc` |
| source verified unclassified | CErc721MoonbirdDelegate<br>`0xac2d3eda37ff0ecc1f2d31791e7e2dae1d133228` | non_address_book | unknown | unknown | verified | n/a | `0xd1f60ebec593289daba5f5ecba16a906f9d7a8bc` |
| source verified unclassified | CErc721MoonbirdDelegate<br>`0xef5804d6640af705c385fe3f5526674509f70968` | non_address_book | unknown | unknown | verified | n/a | `0x761a6dbfa23fb3558361b021384261200959819c` |
| source verified unclassified | CErc721NoSupplyDelegate<br>`0xdb05d1bddbbe7f482ccfcfdfbfd14f7783b773b0` | non_address_book | unknown | unknown | verified | n/a | `0xd1f60ebec593289daba5f5ecba16a906f9d7a8bc` |
| source verified unclassified | CErc721SandboxDelegate<br>`0xb630f9ca1192a9ee70bab08ca4aa58cc2a235ff2` | non_address_book | unknown | unknown | verified | n/a | `0xd1f60ebec593289daba5f5ecba16a906f9d7a8bc` |
| source verified unclassified | CErc721V2Delegate<br>`0x9a4c75120b1c943e9314be15ef2b088e9bd69430` | non_address_book | unknown | unknown | verified | n/a | `0xd1f60ebec593289daba5f5ecba16a906f9d7a8bc` |
| source verified unclassified | CErc721V2Delegate<br>`0xb2aa23b5a971f6bf1e16010196d4ba3ed861b68d` | non_address_book | unknown | unknown | verified | n/a | `0x761a6dbfa23fb3558361b021384261200959819c` |
| source verified unclassified | CErc721V2Delegator<br>`0x3786f8ab0a0652e23c6503a9a44322b3295608fe` | non_address_book | unknown | unknown | verified | n/a | `0xd1f60ebec593289daba5f5ecba16a906f9d7a8bc` |
| source verified unclassified | CErc721V2Delegator<br>`0x397a7e7710f3a074da1b6823e94047e57a5db896` | non_address_book | unknown | unknown | verified | n/a | `0xd1f60ebec593289daba5f5ecba16a906f9d7a8bc` |
| source verified unclassified | CErc721V2Delegator<br>`0x43244977fae5ae5e2979533d5f0221d80840fa1a` | non_address_book | unknown | unknown | verified | n/a | `0xd1f60ebec593289daba5f5ecba16a906f9d7a8bc` |
| source verified unclassified | CErc721V2Delegator<br>`0x47919d0b513c88e6ddfeead4ea0729c08003daee` | non_address_book | unknown | unknown | verified | n/a | `0xd1f60ebec593289daba5f5ecba16a906f9d7a8bc` |
| source verified unclassified | CErc721V2Delegator<br>`0x550a4a2be23c3a78979bbd0c02d588445b385c1b` | non_address_book | unknown | unknown | verified | n/a | `0xd1f60ebec593289daba5f5ecba16a906f9d7a8bc` |
| source verified unclassified | CErc721V2Delegator<br>`0x57789a12fc3236b12201fabcd7c8b7cbb6a94727` | non_address_book | unknown | unknown | verified | n/a | `0xd1f60ebec593289daba5f5ecba16a906f9d7a8bc` |
| source verified unclassified | CErc721V2Delegator<br>`0x5a5d79e75016330f8b2a02b4f33b5e12003a63d7` | non_address_book | unknown | unknown | verified | n/a | `0xd1f60ebec593289daba5f5ecba16a906f9d7a8bc` |
| source verified unclassified | CErc721V2Delegator<br>`0x5c2cba783f2be59849ee1b01ffbf1ed768b444e0` | non_address_book | unknown | unknown | verified | n/a | `0xd1f60ebec593289daba5f5ecba16a906f9d7a8bc` |
| source verified unclassified | CErc721V2Delegator<br>`0x5ce3d90e359a0f5e841ac8696e736e6ebf8bf2f0` | non_address_book | unknown | unknown | verified | n/a | `0xd1f60ebec593289daba5f5ecba16a906f9d7a8bc` |
| source verified unclassified | CErc721V2Delegator<br>`0x5daabd53214046c108bddc91766fffee9397cee4` | non_address_book | unknown | unknown | verified | n/a | `0xd1f60ebec593289daba5f5ecba16a906f9d7a8bc` |
| source verified unclassified | CErc721V2Delegator<br>`0x65da0a824269e43a2fc9586ef2ffe2ae722c33be` | non_address_book | unknown | unknown | verified | n/a | `0xd1f60ebec593289daba5f5ecba16a906f9d7a8bc` |
| source verified unclassified | CErc721V2Delegator<br>`0x69de3c627561f6a3a260e89c43c566c1f3c93e23` | non_address_book | unknown | unknown | verified | n/a | `0xd1f60ebec593289daba5f5ecba16a906f9d7a8bc` |
| source verified unclassified | CErc721V2Delegator<br>`0x6d2527d6cf23016d46ce7d0f409c59e8e34d0854` | non_address_book | unknown | unknown | verified | n/a | `0xd1f60ebec593289daba5f5ecba16a906f9d7a8bc` |
| source verified unclassified | CErc721V2Delegator<br>`0x777a91c5e1cae1533e32fe8ed5667022a1e0fbb6` | non_address_book | unknown | unknown | verified | n/a | `0xd1f60ebec593289daba5f5ecba16a906f9d7a8bc` |
| source verified unclassified | CErc721V2Delegator<br>`0x780f467401430632ed0529f497c20806b2793dff` | non_address_book | unknown | unknown | verified | n/a | `0xd1f60ebec593289daba5f5ecba16a906f9d7a8bc` |
| source verified unclassified | CErc721V2Delegator<br>`0x7da479d70245e30beffd4968d9019953446f9591` | non_address_book | unknown | unknown | verified | n/a | `0x761a6dbfa23fb3558361b021384261200959819c` |
| source verified unclassified | CErc721V2Delegator<br>`0x83355362ebb2180873844523044c866170f9d99c` | non_address_book | unknown | unknown | verified | n/a | `0xd1f60ebec593289daba5f5ecba16a906f9d7a8bc` |
| source verified unclassified | CErc721V2Delegator<br>`0x8d39b065bcfa9d86fedd4cab6ada4f6bc0195d50` | non_address_book | unknown | unknown | verified | n/a | `0x761a6dbfa23fb3558361b021384261200959819c` |
| source verified unclassified | CErc721V2Delegator<br>`0xb49655bc75b61e6482b71c76e269ef8a342283ba` | non_address_book | unknown | unknown | verified | n/a | `0xd1f60ebec593289daba5f5ecba16a906f9d7a8bc` |
| source verified unclassified | CErc721V2Delegator<br>`0xb589a8e4d5c47b721fd7e3def994c819ab8718c4` | non_address_book | unknown | unknown | verified | n/a | `0xd1f60ebec593289daba5f5ecba16a906f9d7a8bc` |
| source verified unclassified | CErc721V2Delegator<br>`0xc3d8e1fd31e55ede71ae1453ddf858461e23b59a` | non_address_book | unknown | unknown | verified | n/a | `0xd1f60ebec593289daba5f5ecba16a906f9d7a8bc` |
| source verified unclassified | CErc721V2Delegator<br>`0xce072aaaee46fdb3b0aa0be0516b9491ad88ec57` | non_address_book | unknown | unknown | verified | n/a | `0xd1f60ebec593289daba5f5ecba16a906f9d7a8bc` |
| source verified unclassified | CErc721V2Delegator<br>`0xcfc8afac17d92796809a4b38a74a245011a96e83` | non_address_book | unknown | unknown | verified | n/a | `0xd1f60ebec593289daba5f5ecba16a906f9d7a8bc` |
| source verified unclassified | CErc721V2Delegator<br>`0xda8c9777febab8577a33f4750d165bc13b07b93d` | non_address_book | unknown | unknown | verified | n/a | `0xd1f60ebec593289daba5f5ecba16a906f9d7a8bc` |
| source verified unclassified | CErc721V2Delegator<br>`0xe3c4582c660ae527023682f43900d8a89f98d392` | non_address_book | unknown | unknown | verified | n/a | `0x761a6dbfa23fb3558361b021384261200959819c` |
| source verified unclassified | CErc721V2Delegator<br>`0xe63d394953908c3eda007cf4a94f9352bb22dec0` | non_address_book | unknown | unknown | verified | n/a | `0xd1f60ebec593289daba5f5ecba16a906f9d7a8bc` |
| source verified unclassified | CErc721V2Delegator<br>`0xe751e2e8dcdcb5ed043419529ba9311fa7ccdd3e` | non_address_book | unknown | unknown | verified | n/a | `0xd1f60ebec593289daba5f5ecba16a906f9d7a8bc` |
| source verified unclassified | CErc721V2Delegator<br>`0xe9e374ef997d9ee38d705cabac5b94f469506966` | non_address_book | unknown | unknown | verified | n/a | `0xd1f60ebec593289daba5f5ecba16a906f9d7a8bc` |
| source verified unclassified | CErc721V2Delegator<br>`0xedafa6c38ee44810367a77d38d9b99fdafee8513` | non_address_book | unknown | unknown | verified | n/a | `0xd1f60ebec593289daba5f5ecba16a906f9d7a8bc` |
| source verified unclassified | CErc721V2Delegator<br>`0xf1c97d0c0f303b0aafe3974d36ed656b0a26cf99` | non_address_book | unknown | unknown | verified | n/a | `0xd1f60ebec593289daba5f5ecba16a906f9d7a8bc` |
| source verified unclassified | CompoudingVaultOracle<br>`0xb746ecda2e5ae4a9c9399c5cd76ebf97f95bb280` | non_address_book | unknown | unknown | verified | n/a | `0x84c613147c6c681ba13f3022a0cf6770d44eba29` |
| source verified unclassified | CTokenMoonbirdImmutable<br>`0x7bb678a6c5dadb6b03032ef46c6263ff09bb2799` | non_address_book | unknown | unknown | verified | n/a | `0xd1f60ebec593289daba5f5ecba16a906f9d7a8bc` |
| source verified unclassified | CTokenMoonbirdImmutable<br>`0xee2ed59082a60c0af4bb2132b90d581134ea1fd5` | non_address_book | unknown | unknown | verified | n/a | `0xd1f60ebec593289daba5f5ecba16a906f9d7a8bc` |
| source verified unclassified | DAIInterestRateModelV3<br>`0xc9c85e333af92edacb2b041962cb5190fa6364eb` | non_address_book | unknown | unknown | verified | n/a | `0xd1f60ebec593289daba5f5ecba16a906f9d7a8bc` |
| source verified unclassified | DropsToken<br>`0xc34568ae1f48db1fc9ba745e4fc614a7b402ce95` | non_address_book | unknown | unknown | verified | n/a | `0x548c690f898bee888240bd217302d60bcdf2b4d7` |
| source verified unclassified | DropsToken<br>`0xc80bf672a7d2a5f66ef67c8b80f9ac60201e18ca` | non_address_book | unknown | unknown | verified | n/a | `0x548c690f898bee888240bd217302d60bcdf2b4d7` |
| source verified unclassified | ERC20CustomStaking<br>`0x122402df2f985f70277baf22ce9e67e2ceb1892a` | non_address_book | unknown | unknown | verified | n/a | `0x548c690f898bee888240bd217302d60bcdf2b4d7` |
| source verified unclassified | ERC20CustomStaking<br>`0xb85337f0a27203dc31205a715c342ed2dc580296` | non_address_book | unknown | unknown | verified | n/a | `0x548c690f898bee888240bd217302d60bcdf2b4d7` |
| source verified unclassified | ERC20CustomStaking<br>`0xb9810c2fecd6771a5052754479f347c3c2f58ff2` | non_address_book | unknown | unknown | verified | n/a | `0x548c690f898bee888240bd217302d60bcdf2b4d7` |
| source verified unclassified | EthMenNftStaking<br>`0x8edc7cdce7356f1fc9f498b1fa4a4b3c946e85c1` | non_address_book | unknown | unknown | verified | n/a | `0x548c690f898bee888240bd217302d60bcdf2b4d7` |
| source verified unclassified | FinancialPunk<br>`0x458fcd33ad32de55875578da8cf1248b8765ec95` | non_address_book | unknown | unknown | verified | n/a | `0xd1f60ebec593289daba5f5ecba16a906f9d7a8bc` |
| source verified unclassified | FlashLoanProvider<br>`0x677d18ab5cf3de962a88bff2945b69b1fba8a905` | non_address_book | unknown | unknown | verified | n/a | `0xd1f60ebec593289daba5f5ecba16a906f9d7a8bc` |
| source verified unclassified | FlashLoanProvider<br>`0x8cd5d29f6469a980c85e88478d6087cb154af7ac` | non_address_book | unknown | unknown | verified | n/a | `0xd1f60ebec593289daba5f5ecba16a906f9d7a8bc` |
| source verified unclassified | FlashLoanProvider<br>`0xcb19f011cffe6c38a5149da565f6de9403778e49` | non_address_book | unknown | unknown | verified | n/a | `0xd1f60ebec593289daba5f5ecba16a906f9d7a8bc` |
| source verified unclassified | FlashLoanProvider<br>`0xef6e27fa2e89b5334bfa8889fb766e15896e6089` | non_address_book | unknown | unknown | verified | n/a | `0xd1f60ebec593289daba5f5ecba16a906f9d7a8bc` |
| source verified unclassified | FlashLoanProvider<br>`0xf2f6001725117b524c34895976a2464b069d7337` | non_address_book | unknown | unknown | verified | n/a | `0xd1f60ebec593289daba5f5ecba16a906f9d7a8bc` |
| source verified unclassified | FoundationTokenVesting<br>`0xe5f10e1ab6c2cdc37476ec6c7460976c67c4d7bb` | non_address_book | unknown | unknown | verified | n/a | `0xd1f60ebec593289daba5f5ecba16a906f9d7a8bc` |
| source verified unclassified | GOHMPriceOracle<br>`0x7123f51a571a5f0c48208a2cb86362c44c0f9a0e` | non_address_book | unknown | unknown | verified | n/a | `0x84c613147c6c681ba13f3022a0cf6770d44eba29` |
| source verified unclassified | GovernorAlpha<br>`0x3c194f3f36eceb630529adbe4ba4ed4210ade5f7` | non_address_book | unknown | unknown | verified | n/a | `0xd1f60ebec593289daba5f5ecba16a906f9d7a8bc` |
| source verified unclassified | GovernorAlpha<br>`0x4936c7469cfb6e1f65dceff577c2eceeb5571f79` | non_address_book | unknown | unknown | verified | n/a | `0xd1f60ebec593289daba5f5ecba16a906f9d7a8bc` |
| source verified unclassified | GovernorAlpha<br>`0xd9113fb903665fc80faf0f7402e6a3a4c530fecc` | non_address_book | unknown | unknown | verified | n/a | `0xd1f60ebec593289daba5f5ecba16a906f9d7a8bc` |
| source verified unclassified | GovernorAlpha<br>`0xff1858fbe92235b89ec8ea38ebb560177de41986` | non_address_book | unknown | unknown | verified | n/a | `0xd1f60ebec593289daba5f5ecba16a906f9d7a8bc` |
| source verified unclassified | HashToken<br>`0x300496a0352e2e302a3d6df66e66b08625c305be` | non_address_book | unknown | unknown | verified | n/a | `0x548c690f898bee888240bd217302d60bcdf2b4d7` |
| source verified unclassified | HashToken<br>`0xf95bd39eccc23d73531e64b9f442b4f7c8b68e8c` | non_address_book | unknown | unknown | verified | n/a | `0x548c690f898bee888240bd217302d60bcdf2b4d7` |
| source verified unclassified | HeroFactory<br>`0xe74e12e5b70346025e7fd95e68d6a6f8fd206c16` | non_address_book | unknown | unknown | verified | n/a | `0x548c690f898bee888240bd217302d60bcdf2b4d7` |
| source verified unclassified | HeroStaking<br>`0x29326f9050be6df0ec285d55476df4906c82da1e` | non_address_book | unknown | unknown | verified | n/a | `0x548c690f898bee888240bd217302d60bcdf2b4d7` |
| source verified unclassified | JumpRateModelV2<br>`0x22f170f52fba226a0f7d9f0f7f35abc544db0bc3` | non_address_book | unknown | unknown | verified | n/a | `0x761a6dbfa23fb3558361b021384261200959819c` |
| source verified unclassified | JumpRateModelV2<br>`0x23d760a61a43dc933f96d44d2ef5682394fe0a31` | non_address_book | unknown | unknown | verified | n/a | `0xd1f60ebec593289daba5f5ecba16a906f9d7a8bc` |
| source verified unclassified | JumpRateModelV2<br>`0x2d3245eda49e659291b2c34a40ffea4213d0d309` | non_address_book | unknown | unknown | verified | n/a | `0x761a6dbfa23fb3558361b021384261200959819c` |
| source verified unclassified | JumpRateModelV2<br>`0x34140a18b3edf218ad141058b10616a8e7a49b03` | non_address_book | unknown | unknown | verified | n/a | `0x761a6dbfa23fb3558361b021384261200959819c` |
| source verified unclassified | JumpRateModelV2<br>`0x5134d482b87f9e9850db8ffeca620483a5b9863b` | non_address_book | unknown | unknown | verified | n/a | `0xd1f60ebec593289daba5f5ecba16a906f9d7a8bc` |
| source verified unclassified | JumpRateModelV2<br>`0x5f951bc866c665382152f488dd0c73b653fcbda1` | non_address_book | unknown | unknown | verified | n/a | `0x761a6dbfa23fb3558361b021384261200959819c` |
| source verified unclassified | JumpRateModelV2<br>`0x6ac9a6aaf5ce5d3a5cbd65ae39103b3fc3a59e75` | non_address_book | unknown | unknown | verified | n/a | `0xd1f60ebec593289daba5f5ecba16a906f9d7a8bc` |
| source verified unclassified | JumpRateModelV2<br>`0x6c89a328217b507ca6e52bbd3da78f6ca57172db` | non_address_book | unknown | unknown | verified | n/a | `0xd1f60ebec593289daba5f5ecba16a906f9d7a8bc` |
| source verified unclassified | JumpRateModelV2<br>`0x8edc559e4fca946270054118fa8595a44ea88dc0` | non_address_book | unknown | unknown | verified | n/a | `0xd1f60ebec593289daba5f5ecba16a906f9d7a8bc` |
| source verified unclassified | JumpRateModelV2<br>`0x97e7c5bdf08196c1779ee02d6557e7cdd1cd083d` | non_address_book | unknown | unknown | verified | n/a | `0x761a6dbfa23fb3558361b021384261200959819c` |
| source verified unclassified | JumpRateModelV2<br>`0xb239a7baaa407dac73ba6b758b017990660df715` | non_address_book | unknown | unknown | verified | n/a | `0x761a6dbfa23fb3558361b021384261200959819c` |
| source verified unclassified | JumpRateModelV2<br>`0xb83372881623e8d99266b384f0ef9cb1213e5c02` | non_address_book | unknown | unknown | verified | n/a | `0xd1f60ebec593289daba5f5ecba16a906f9d7a8bc` |
| source verified unclassified | JumpRateModelV2<br>`0xc7fc0302c943fb8deda25c2e5a9f0bf1c7b91ed2` | non_address_book | unknown | unknown | verified | n/a | `0xd1f60ebec593289daba5f5ecba16a906f9d7a8bc` |
| source verified unclassified | JumpRateModelV2<br>`0xd023a7f19619acb740f8738e1eccd96eaa78ad4c` | non_address_book | unknown | unknown | verified | n/a | `0xd1f60ebec593289daba5f5ecba16a906f9d7a8bc` |
| source verified unclassified | JumpRateModelV2<br>`0xf5df668f0ab0c0381e7b6d9384a7952f4d8e4539` | non_address_book | unknown | unknown | verified | n/a | `0xd1f60ebec593289daba5f5ecba16a906f9d7a8bc` |
| source verified unclassified | JumpRateModelV2<br>`0xf724cdb4a6fab924c752d8bb6460836975f45d66` | non_address_book | unknown | unknown | verified | n/a | `0xd1f60ebec593289daba5f5ecba16a906f9d7a8bc` |
| source verified unclassified | JumpRateModelV2<br>`0xfac232cdb28217adad658f0b4a53a2b49f71aeb4` | non_address_book | unknown | unknown | verified | n/a | `0xd1f60ebec593289daba5f5ecba16a906f9d7a8bc` |
| source verified unclassified | LPStaking<br>`0x0f5d42b4837e27cc7a7f3a0c59d982ff5598ce5d` | non_address_book | unknown | unknown | verified | n/a | `0x548c690f898bee888240bd217302d60bcdf2b4d7` |
| source verified unclassified | LPStaking<br>`0x7ece965a34fa67c9647b4030ff3bdf1160c6163c` | non_address_book | unknown | unknown | verified | n/a | `0x548c690f898bee888240bd217302d60bcdf2b4d7` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [PeckShield-Audit-Report-DropsNFT-v1.0.pdf](https://18550138-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-McKlQwRyMZvSyjwnggp%2Fuploads%2FugSmroZsQBlElM4GiqQ3%2FPeckShield-Audit-Report-DropsNFT-v1.0.pdf) | PeckShield | Audit | 2021-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [19719] PeckShield-Audit-Report-DropsNFT-v1.0.pdf — no match: Contracts extracted from findings targets. No explicit scope section found, but contracts are clearly identified as audited targets.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| PeckShield-Audit-Report-DropsNFT-v1.0.pdf | CtokenEx | unmatched — not counted | — | Target in findings PVE-001, PVE-002 | no |
| PeckShield-Audit-Report-DropsNFT-v1.0.pdf | ComptrollerG1 | unmatched — not counted | — | Target in finding PVE-003 | no |
| PeckShield-Audit-Report-DropsNFT-v1.0.pdf | CToken | unmatched — not counted | — | Target in findings PVE-004, PVE-006, PVE-007 | no |
| PeckShield-Audit-Report-DropsNFT-v1.0.pdf | CErc20 | unmatched — not counted | — | Target in finding PVE-005 | no |
| PeckShield-Audit-Report-DropsNFT-v1.0.pdf | CEther | ambiguous — not counted | CEther (alternative) `0x05231980914b702083b9ac08002325654f6eb95b` — deployed 2022-05-16 21:58:08+03 — liveness: live (current_address_book_code)<br>CEther (alternative) `0x4ae7413182849d062b72518928a4b2de87f0e411` — deployed 2021-07-12 16:55:09+03 — liveness: live (current_address_book_code)<br>CEther (alternative) `0xd72929e284e8bc2f7458a6302be961b91bccb339` — deployed 2022-05-04 21:30:41+03 — liveness: live (current_address_book_code)<br>CEther (alternative) `0x0a1ef7fed1b691253f9367daf682ba08a9d2fd9c` — deployed 2022-06-04 01:04:26+03 — liveness: live (current_address_book_code)<br>CEther (alternative) `0x588c13e685e44b22dc6647937481c816e5fee086` — deployed 2022-06-10 23:35:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| PeckShield-Audit-Report-DropsNFT-v1.0.pdf | CErc721 | unmatched — not counted | — | Target in finding PVE-008 | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x05231980914b702083b9ac08002325654f6eb95b` | CEther | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0a1ef7fed1b691253f9367daf682ba08a9d2fd9c` | CEther | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4ae7413182849d062b72518928a4b2de87f0e411` | CEther | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x588c13e685e44b22dc6647937481c816e5fee086` | CEther | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd72929e284e8bc2f7458a6302be961b91bccb339` | CEther | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 96 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 22 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 1 ambiguous, 5 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: n/a

Zero-match audit list:

- [19719] PeckShield-Audit-Report-DropsNFT-v1.0.pdf

Fork inheritance lineage and inherited audits are included when available.
