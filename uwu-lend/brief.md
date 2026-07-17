# Agentic Audit Brief: UwU Lend

## Project Overview

- Project: UwU Lend (`uwu-lend`)
- Website: [https://www.uwulend.fi/](https://www.uwulend.fi/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:04.216Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-f007
- Chains: ethereum
- Contract surface: 157 unique implementations (345 raw deployments)
- DeFi Llama TVL: $236,350.53
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Lending. Structurally: 107 project-authored contract(s) across 1 chain(s); 2 ERC4626 vaults, 26 ERC20 tokens, 1 ERC721 NFT; role-gated via AccessControl; built on openzeppelin.

### Architecture

The protocol comprises 10 functional families. Its contracts share 22 common project-authored base contract(s) (versionedinitializable, lendingpoolstorage, debttokenbase). Dominant framework: openzeppelin.

## Fork Lineage

This project reuses audited code from **Liquity** (`liquity`).
6 audits inherited from `liquity`.

Total inherited audits: 6. Inherited coverage reflects forked/shared code audited by the origin project — it is not a direct audit of this project.

## Contract Surface Quality

- Indexed contracts: 404; live-surface contracts included: 345 (295 live, 50 unknown).
- Excluded by liveness: 59 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 61/100 (61.0%)
- Deployed-live implementations: 107 of 157 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 63/107
- Verified + Unaudited implementations: 44
- Verified by bytecode match: 0
- Unverified implementations: 50
- Unique implementations: 157
- Raw deployments: 345
- Audits discovered: 10 (4 direct, 6 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-01 (aging)
- Audit staleness (calendar age): 0 fresh, 2 aging, 6 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 63 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 8.0% (Trail of Bits)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 54 | 50.5% | 2022-12 |
| Coinspect | Tier 2 | 9 | 8.4% | 2025-01 |
| Trail of Bits | Tier 1 | 8 | 7.5% | 2021-01 |

## Contract Surface

### ✅ Verified + Audited (63)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AaveOracle | operational_periphery | ethereum | n/a | [`0xac4a2ac76d639e10f2c05a41274c1af85b772598`](./contracts/ethereum-1/0xac4a2ac76d639e10f2c05a41274c1af85b772598/) | ✅ Audited |
| AaveProtocolDataProvider | unknown | ethereum | n/a | [`0x17938ede656ca1901807abf43a6b1d138d8cd521`](./contracts/ethereum-1/0x17938ede656ca1901807abf43a6b1d138d8cd521/) | ✅ Audited |
| ActivePool | core_logic | ethereum | n/a | [`0xdf9eb223bafbe5c5271415c75aecd68c21fe3d7f`](./contracts/ethereum-1/0xdf9eb223bafbe5c5271415c75aecd68c21fe3d7f/) | ✅ Audited |
| AToken | token | ethereum | n/a | 2 deployments: ethereum [`0x02738ef3f8d8d3161dbbedbda25574154c560dae`](./contracts/ethereum-1/0x02738ef3f8d8d3161dbbedbda25574154c560dae/); ethereum `0x3e0807714e3c26aa25fe69526b18c53c69d9b22c` | ✅ Audited |
| AToken | token | ethereum | n/a | 2 deployments: ethereum [`0x044ad85f8421d8ffc383095e4db23656086a9c97`](./contracts/ethereum-1/0x044ad85f8421d8ffc383095e4db23656086a9c97/); ethereum `0xadfa5fa0c51d11b54c8a0b6a15f47987bd500086` | ✅ Audited |
| AToken | token | ethereum | n/a | 2 deployments: ethereum [`0x10ee4ac0e052312ca3d2f01ed75df7e2c3d7fa5d`](./contracts/ethereum-1/0x10ee4ac0e052312ca3d2f01ed75df7e2c3d7fa5d/); ethereum `0xdb1a8f07f6964efcfff1aa8025b8ce192ba59eba` | ✅ Audited |
| AToken | token | ethereum | n/a | 23 deployments: ethereum [`0x12df06aef0c0d5ac1809b73ceb15da4ea651bc52`](./contracts/ethereum-1/0x12df06aef0c0d5ac1809b73ceb15da4ea651bc52/); ethereum `0x2c93899383f4798e79b80bc278144c6f2a2f7f64`; ethereum `0x41adb3fd5d0c8771860805c96b88da257fd7a5ce`; ethereum `0x4722a5bb5c262f6d531ce9983a0cff50f19a5a9c`; ethereum `0x4823643f7e4298c2d99a608cb064770e87a74bf7`; ethereum `0x48ab3938e166f17ce8be0d5b40930c90f52c4b35`; ethereum `0x5675dd04b4276c6d614f5f2fee55ee0457ed0f41`; ethereum `0x576098250889835a517355acfd81e9ede44b6fdd`; ethereum `0x5ed0517ee80f0ceb47a694cfbc559fd7ce93059b`; ethereum `0x5f5c8fdc1c85fea814b400a05ee135a1c6fc95ca`; ethereum `0x61e9a703a390b83a915a1e30b3073b7bc50fd6ff`; ethereum `0x7a9f54e779a1ac4265212ea94d6cae36dcdcc1f0`; ethereum `0x871ac01199c5d581145764b15a16fda745b36cca`; ethereum `0x8ddbbe5c8ec86e61686b9bd2abfb0cfc67d10e89`; ethereum `0xa256d09531dd7569e8ec224ce8d8c2ba001bd54c`; ethereum `0xa69d94ca2c538ad2622ea89e3f5c65b2c7e1188a`; ethereum `0xb5cf0d3f5d1247dd0b5496fd8f9c309767d2cbe2`; ethereum `0xcb0245aa8f36993ab99e22a13ec9f5f480574bb6`; ethereum `0xcca2f076845bfe9c77654a87a708ad9cdc844429`; ethereum `0xe6e33b26476dca924ec500e03e54b8f5e0dc8c43`; ethereum `0xe73c56f8fded020a4c975da6148bb61ba4bbf99a`; ethereum `0xf47dfce7fa5a10cb462cab98e5076a2a525b2a06`; ethereum `0xff1c3d38ccdd719898abb478c257581557abc039` | ✅ Audited |
| AToken | token | ethereum | n/a | 2 deployments: ethereum [`0x13adb41f38cd14ac4f42db5ea60ae474a54e5509`](./contracts/ethereum-1/0x13adb41f38cd14ac4f42db5ea60ae474a54e5509/); ethereum `0x24959f75d7bda1884f1ec9861f644821ce233c7d` | ✅ Audited |
| AToken | token | ethereum | n/a | 2 deployments: ethereum [`0x17b13209d132a14f8e2130cafbfe89194424f6c8`](./contracts/ethereum-1/0x17b13209d132a14f8e2130cafbfe89194424f6c8/); ethereum `0xd1e6b03bf65b381cbdeccf275535d40d4c3510e2` | ✅ Audited |
| AToken | token | ethereum | n/a | 2 deployments: ethereum [`0x20e61ba4365cc4bfa82b1449982e091904564aa4`](./contracts/ethereum-1/0x20e61ba4365cc4bfa82b1449982e091904564aa4/); ethereum `0x8232d353bab970ddede3e376e32d7b1ce24430f5` | ✅ Audited |
| AToken | token | ethereum | n/a | 2 deployments: ethereum [`0x243387a7036bfcb09f9bf4eced1e60765d31aa70`](./contracts/ethereum-1/0x243387a7036bfcb09f9bf4eced1e60765d31aa70/); ethereum `0x9d111e09bffc02d9e2fd8f388d45a1a4af049e25` | ✅ Audited |
| AToken | token | ethereum | n/a | 2 deployments: ethereum [`0x2ea21b1d2429d71abb2624a660a92baece58b479`](./contracts/ethereum-1/0x2ea21b1d2429d71abb2624a660a92baece58b479/); ethereum `0x8c240c385305aeb2d5ceb60425aabcb3488fa93d` | ✅ Audited |
| AToken | token | ethereum | n/a | 2 deployments: ethereum [`0x3435ccfa639b756aa7c5097008ab70984524eaf5`](./contracts/ethereum-1/0x3435ccfa639b756aa7c5097008ab70984524eaf5/); ethereum `0xb95bd0793bcc5524af358ffaae3e38c3903c7626` | ✅ Audited |
| AToken | token | ethereum | n/a | 2 deployments: ethereum [`0x4c82a5191c6d93fb1ec1146be47176cd00a7b002`](./contracts/ethereum-1/0x4c82a5191c6d93fb1ec1146be47176cd00a7b002/); ethereum `0xc4bf704f51aa4ce1aa946ffe15646f9b271ba0fa` | ✅ Audited |
| AToken | token | ethereum | n/a | 2 deployments: ethereum [`0x51144708b82ea3b5b1002c9dc38b71ec63b7e670`](./contracts/ethereum-1/0x51144708b82ea3b5b1002c9dc38b71ec63b7e670/); ethereum `0xa066f10e11352581e78ffadd3cb1b69db35973fe` | ✅ Audited |
| AToken | token | ethereum | n/a | 2 deployments: ethereum [`0x550649c2a66ca0ad5fc54e74d5603c7be3b0e4aa`](./contracts/ethereum-1/0x550649c2a66ca0ad5fc54e74d5603c7be3b0e4aa/); ethereum `0x67fadbd9bf8899d7c578db22d7af5e2e500e13e5` | ✅ Audited |
| AToken | token | ethereum | n/a | 2 deployments: ethereum [`0x56e3f10a0a61432f3485174f391141df172bd25c`](./contracts/ethereum-1/0x56e3f10a0a61432f3485174f391141df172bd25c/); ethereum `0xeb61e567cbaeaccb6c259def92900bc59d8a14cc` | ✅ Audited |
| AToken | token | ethereum | n/a | 2 deployments: ethereum [`0x67b3750733efa3fbe6291af96add7b5050020b8e`](./contracts/ethereum-1/0x67b3750733efa3fbe6291af96add7b5050020b8e/); ethereum `0xe873e375065ce4dd7f96a289f74f885509748fad` | ✅ Audited |
| AToken | token | ethereum | n/a | 2 deployments: ethereum [`0x6ace5c946a3abd8241f31f182c479e67a4d8fc8d`](./contracts/ethereum-1/0x6ace5c946a3abd8241f31f182c479e67a4d8fc8d/); ethereum `0x8dd93b5dfd11ab2c42016670c63dd9cd4e65fd27` | ✅ Audited |
| AToken | token | ethereum | n/a | 2 deployments: ethereum [`0x8028ea7da2ea9bcb9288c1f6f603169b8aea90a6`](./contracts/ethereum-1/0x8028ea7da2ea9bcb9288c1f6f603169b8aea90a6/); ethereum `0xe44d24fcbd9c7755907a400ed32ee7901175b14b` | ✅ Audited |
| AToken | token | ethereum | n/a | 2 deployments: ethereum [`0x9dad36853b8c6ce9a206b83d47b28a4c49205075`](./contracts/ethereum-1/0x9dad36853b8c6ce9a206b83d47b28a4c49205075/); ethereum `0xf1293141fc6ab23b2a0143acc196e3429e0b67a6` | ✅ Audited |
| AToken | token | ethereum | n/a | 2 deployments: ethereum [`0xb5bb4f1a3a5a644d80f97bd60eed0c2dfb2afeb8`](./contracts/ethereum-1/0xb5bb4f1a3a5a644d80f97bd60eed0c2dfb2afeb8/); ethereum `0xc480a11a524e4db27c6d4e814b4d9b3646bc12fc` | ✅ Audited |
| ATokensAndRatesHelper | token | ethereum | n/a | [`0xaab1b4260297fffdbc267a46b73c7fcd43b95645`](./contracts/ethereum-1/0xaab1b4260297fffdbc267a46b73c7fcd43b95645/) | ✅ Audited |
| BorrowerOperations | core_logic | ethereum | n/a | [`0x24179cd81c9e782a4096035f7ec97fb8b783e007`](./contracts/ethereum-1/0x24179cd81c9e782a4096035f7ec97fb8b783e007/) | ✅ Audited |
| ChefIncentivesController | governance | ethereum | n/a | [`0x21953192664867e19f85e96e1d1dd79dc31cccdb`](./contracts/ethereum-1/0x21953192664867e19f85e96e1d1dd79dc31cccdb/) | ✅ Audited |
| CollSurplusPool | core_logic | ethereum | n/a | [`0x3d32e8b97ed5881324241cf03b2da5e2ebce5521`](./contracts/ethereum-1/0x3d32e8b97ed5881324241cf03b2da5e2ebce5521/) | ✅ Audited |
| DefaultReserveInterestRateStrategy | operational_periphery | ethereum | n/a | 42 deployments: ethereum [`0x03bca34ff553a2ede4f1fceb177dc42ee6af7b64`](./contracts/ethereum-1/0x03bca34ff553a2ede4f1fceb177dc42ee6af7b64/); ethereum `0x07b12795e18cb1568e9c24df4a54356846001ab7`; ethereum `0x0f2e9dc60e73dc328f5d04e4b6c83d0fcc55684e`; ethereum `0x1d2d10939de0a153ef7c4c566075aec3d60dc61b`; ethereum `0x23a625f94381a767713cab4fe880414bd84d2115`; ethereum `0x271787560903da9d7aa775b8b7004d451b3d0874`; ethereum `0x2a7743b4baed1267debc8e84caad0e64ed144fb6`; ethereum `0x2cee07005db0726e4814693ffa2677cec4cae023`; ethereum `0x39cee76900ac8ef70c6a49831044d0cfee7f5d30`; ethereum `0x3a1c46855b446100e862a46ff2cf9cc3f85c6b06`; ethereum `0x43631bc3b517a5ee149872632bbe45729d6ab1d0`; ethereum `0x4cc68501c23ce0977ae52fc935745b6d7fccd1c2`; ethereum `0x4fc09399c77b11a6644f4a84cf6e067eee0868ce`; ethereum `0x5d89fa15ace0c240f29e9124c41525f62371e820`; ethereum `0x673ef673e78609fdc6b203c0a60ba86f97fbcb9b`; ethereum `0x690dcb18c1a56cd2711102c2427729739dff494a`; ethereum `0x6b011855f3ae618ade7ca52fc899a7828e8b2d64`; ethereum `0x73cae61ac8f59ebc04bebe2b2ffab62fb6360f88`; ethereum `0x88fbeb0022be4e8c0f9fba149b83d30791be03f5`; ethereum `0x9203a201800c95399e66ebcdd2fe42ba81cf1a9c`; ethereum `0x9fcd8cde94bd5ba162139c20245e8801e08f6012`; ethereum `0xa3c9774d5a41443edb41795bf6b83a79790247f7`; ethereum `0xa645c8c13c1ff81bc881cb2272727126965ed356`; ethereum `0xaf3da5594bbe05bb2d3f56ae0a2d6ab7def19df7`; ethereum `0xb5782e0a5af693bd638234c9e2c2ebafb38eca31`; ethereum `0xb87872e3ef8916e9606231cab8787712ab5543b0`; ethereum `0xba285ed9a1fc13b4860e2d2cb8910bcd1be9e6a6`; ethereum `0xc3f77e44c4d6366fdf6e9620499c2cea1ec9342b`; ethereum `0xc52216be18e4847b3f075a54961ffd2d1f8663f3`; ethereum `0xc65de150da3ce599e28f10b232cd89aa5e7ac239`; ethereum `0xc818d61b4e601ab5c957c7f9ec0cf65e387a89c5`; ethereum `0xc9bae09e27ceaf84a54f2061b9ce43a3fe9e036d`; ethereum `0xca2a8300489487a6e94cc85028ccf465e5edebf3`; ethereum `0xca328d134df1714901e39f8d61d2ef274f86c90e`; ethereum `0xcb830c23a9736089ae588313ebfa5b317e34421f`; ethereum `0xcca85d91c3db299eb2e07c24be513fb4d9757c09`; ethereum `0xd14b841469b4dadfee06b310f407da0a979ba3bf`; ethereum `0xd4fb946e72c4b9ab8bc1728df2012f7057da1479`; ethereum `0xda741178fddf0207f6060b2543c80419a4e362d2`; ethereum `0xec2416bf49ee3cf57eb2cb6b55061e9c9d691390`; ethereum `0xf01f289a70e8fb8f396e6379529289bd9076e15b`; ethereum `0xf15ca7550959b8541dbff631fc7aac65088c1836` | ✅ Audited |
| FallbackOracle | operational_periphery | ethereum | n/a | [`0x9bc6333081266e55d88942e277fc809b485698b9`](./contracts/ethereum-1/0x9bc6333081266e55d88942e277fc809b485698b9/) | ✅ Audited |
| GenericLogic | unknown | ethereum | n/a | [`0xaede01960810a655aecf86278bfdf5c968198b89`](./contracts/ethereum-1/0xaede01960810a655aecf86278bfdf5c968198b89/) | ✅ Audited |
| LendingPool | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x05bfa9157e92690b179033ca2f6dd1e86b25ea4d`](./contracts/ethereum-1/0x05bfa9157e92690b179033ca2f6dd1e86b25ea4d/); ethereum `0x2409af0251dcb89ee3dee572629291f9b087c668` | ✅ Audited |
| LendingPoolAddressesProvider | core_logic | ethereum | n/a | 6 deployments: ethereum [`0x011c0d38da64b431a1bdfc17ad72678eabf7f1fb`](./contracts/ethereum-1/0x011c0d38da64b431a1bdfc17ad72678eabf7f1fb/); ethereum `0x10141a3fb615d7af2ffb151d675e80e2f919a0d0`; ethereum `0x1166deebec7e112ace261a283dba7b876a5390bf`; ethereum `0x3e25876aea64a39554b4e0f6dce6360e38cbe234`; ethereum `0x86aba3373d3365c2684ef7a2bb24314b146be7cc`; ethereum `0xebdbb9846073a6dc288d92684a0187f208eb10f6` | ✅ Audited |
| LendingPoolConfigurator | core_logic | ethereum | n/a | [`0x1c0e90b5d9b0b1497979fdde0f08249bde2c69ae`](./contracts/ethereum-1/0x1c0e90b5d9b0b1497979fdde0f08249bde2c69ae/) | ✅ Audited |
| LendingPoolConfigurator | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x408c9764993209dc772eb12ff641f4b55f5b005c`](./contracts/ethereum-1/0x408c9764993209dc772eb12ff641f4b55f5b005c/); ethereum `0x40daf7be3a99b898f54fb7968d16db5103835347` | ✅ Audited |
| Leverager | unknown | ethereum | n/a | 3 deployments: ethereum [`0x3516b83348af99021715f16db46d065bbe9f8c2a`](./contracts/ethereum-1/0x3516b83348af99021715f16db46d065bbe9f8c2a/); ethereum `0x38972f4bc20dbf2eb2a4cb0593414e7f1bc73c2d`; ethereum `0x780dcfda4a6de88d5c4f912345b99223012f32ed` | ✅ Audited |
| LQTYStaking | unknown | ethereum | n/a | [`0x4f9fbb3f1e99b56e0fe2892e623ed36a76fc605d`](./contracts/ethereum-1/0x4f9fbb3f1e99b56e0fe2892e623ed36a76fc605d/) | ✅ Audited |
| LQTYToken | token | ethereum | n/a | [`0x6dea81c8171d0ba574754ef6f8b412f2ed88c54d`](./contracts/ethereum-1/0x6dea81c8171d0ba574754ef6f8b412f2ed88c54d/) | ✅ Audited |
| LUSDToken | token | ethereum | n/a | [`0x5f98805a4e8be255a32880fdec7f6728c6568ba0`](./contracts/ethereum-1/0x5f98805a4e8be255a32880fdec7f6728c6568ba0/) | ✅ Audited |
| MultiFeeDistribution | unknown | ethereum | n/a | [`0x7c0bf1108935e7105e218bbb4f670e5942c5e237`](./contracts/ethereum-1/0x7c0bf1108935e7105e218bbb4f670e5942c5e237/) | ✅ Audited |
| MultiFeeDistributionV2 | unknown | ethereum | n/a | [`0x0a7b2a21027f92243c5e5e777aa30bb7969b0188`](./contracts/ethereum-1/0x0a7b2a21027f92243c5e5e777aa30bb7969b0188/) | ✅ Audited |
| ReserveLogic | unknown | ethereum | n/a | [`0x4be75900f8a54d7d5962e950f3af98d61f8fbdd9`](./contracts/ethereum-1/0x4be75900f8a54d7d5962e950f3af98d61f8fbdd9/) | ✅ Audited |
| StabilityPool | core_logic | ethereum | n/a | [`0x66017d22b0f8556afdd19fc67041899eb65a21bb`](./contracts/ethereum-1/0x66017d22b0f8556afdd19fc67041899eb65a21bb/) | ✅ Audited |
| StakingRewards | unknown | ethereum | n/a | [`0xe3643512532fe1f3522745787e883f9729527186`](./contracts/ethereum-1/0xe3643512532fe1f3522745787e883f9729527186/) | ✅ Audited |
| TroveManager | governance | ethereum | n/a | [`0xa39739ef8b0231dbfa0dcda07d7e29faabcf4bb2`](./contracts/ethereum-1/0xa39739ef8b0231dbfa0dcda07d7e29faabcf4bb2/) | ✅ Audited |
| UiPoolDataProviderV2 | core_logic | ethereum | n/a | [`0x19dd01d5cd88eae5674a2ab94d654f9413e20ce5`](./contracts/ethereum-1/0x19dd01d5cd88eae5674a2ab94d654f9413e20ce5/) | ✅ Audited |
| Unipool | core_logic | ethereum | n/a | [`0xd37a77e71ddf3373a79be2ebb76b6c4808bdf0d5`](./contracts/ethereum-1/0xd37a77e71ddf3373a79be2ebb76b6c4808bdf0d5/) | ✅ Audited |
| ValidationLogic | unknown | ethereum | n/a | [`0x3c0ada81038a078cc1272ac22745ddd1ab8839af`](./contracts/ethereum-1/0x3c0ada81038a078cc1272ac22745ddd1ab8839af/) | ✅ Audited |
| VariableDebtToken | token | ethereum | n/a | 25 deployments: ethereum [`0x0f6885ded5ef51f773e40f3ccd323131f3fac22c`](./contracts/ethereum-1/0x0f6885ded5ef51f773e40f3ccd323131f3fac22c/); ethereum `0x1125a006396c40d80c51c51e787979bb8b06549a`; ethereum `0x1c01d301cbdb3497ba84a339101e93da30a4faa0`; ethereum `0x24c988aa019e2ddbc788c334b9ec08b715bb9af6`; ethereum `0x3923c7ca0db0df747f32c50fd478247f7926ea32`; ethereum `0x4385ae8f5275568cc31cb8f112cb3fb4d8ada6e0`; ethereum `0x50db712486c38fd7fcf0c72894d70ce4b0475781`; ethereum `0x604b7980d3611116b24707ecce425bea929fdce4`; ethereum `0x70e3e2d8450f148a76cc04c52b3bc803493e9255`; ethereum `0x726da50fdbce564ffe88d58c23766193907c9189`; ethereum `0x79e01cf0ebe41446318c04ae61c4ebcc1a8bf9c8`; ethereum `0x7c14f35cb20ec5aaf16f02df3ba546b8224e1c99`; ethereum `0x8975bcf1fd81d2eb8164919de4d5897efaa633ad`; ethereum `0x89ec197ce3d072997a6966312300684a8bdb1f90`; ethereum `0x8da785a2f19b3f69359cf86a4a12a6fcbde34929`; ethereum `0x903e35e149424a13bdb6c63ef72e74394bd9e45b`; ethereum `0x97a19ba727e034eccc33608a994bff5c618ad012`; ethereum `0xa71b2cebb5e0ac07497f825470e45383e1997083`; ethereum `0xaab79161546e64845ad07527fda4b7246ececd93`; ethereum `0xb894e2bc1816f4c217612ea7683ab92c10d0b1f4`; ethereum `0xbae0762ae91718138c60ffaa2d43be333a5e146b`; ethereum `0xbb85652ab83219e146bded3ea9c228a66e923d52`; ethereum `0xbc9a6bbff91cb28b1bb3f3ed91e937b84eb2c544`; ethereum `0xc523698b92fee97a3d3b5be5d6744dd3207c33b6`; ethereum `0xf3d6fa1fe40ad41d7bc42218067c4858ccf4affa` | ✅ Audited |
| VariableDebtToken | token | ethereum | n/a | 2 deployments: ethereum [`0x1254b1fd988a1168e44a4588bb503a867f8e410f`](./contracts/ethereum-1/0x1254b1fd988a1168e44a4588bb503a867f8e410f/); ethereum `0x28d9ca44105ff50ae51edd3f43b4df67c541e51b` | ✅ Audited |
| VariableDebtToken | token | ethereum | n/a | 2 deployments: ethereum [`0x13cdfdd18e6bb8d41be0a55d9cf697c0ef11176b`](./contracts/ethereum-1/0x13cdfdd18e6bb8d41be0a55d9cf697c0ef11176b/); ethereum `0x2ce6eb07c2e9c88b9fe665a75400db7bf21203d9` | ✅ Audited |
| VariableDebtToken | token | ethereum | n/a | 2 deployments: ethereum [`0x29d567fa37b4af64dd1b886571cd1ff5d403ac3f`](./contracts/ethereum-1/0x29d567fa37b4af64dd1b886571cd1ff5d403ac3f/); ethereum `0x6063ed0d6d3f0750c4240ab178a189809a805b47` | ✅ Audited |
| VariableDebtToken | token | ethereum | n/a | 2 deployments: ethereum [`0x39a873f3f60bb4cd81fe46f3beb6285bdb7726b9`](./contracts/ethereum-1/0x39a873f3f60bb4cd81fe46f3beb6285bdb7726b9/); ethereum `0xd1367ad1ea2202072d685d333f0077e63e696148` | ✅ Audited |
| VariableDebtToken | token | ethereum | n/a | 2 deployments: ethereum [`0x40477637151b0e182242185166c485836d4211bf`](./contracts/ethereum-1/0x40477637151b0e182242185166c485836d4211bf/); ethereum `0x82a49c799c4ca5bdb629bcd6107737a3de8d2805` | ✅ Audited |
| VariableDebtToken | token | ethereum | n/a | 2 deployments: ethereum [`0x407e84b671f018f86fcf02a4df2d8daa906f9368`](./contracts/ethereum-1/0x407e84b671f018f86fcf02a4df2d8daa906f9368/); ethereum `0x51e0f19bf0b765bc55724c7374fe00ab229427d9` | ✅ Audited |
| VariableDebtToken | token | ethereum | n/a | 2 deployments: ethereum [`0x453842ba9dcd4569407b2adedeb8636314d023d3`](./contracts/ethereum-1/0x453842ba9dcd4569407b2adedeb8636314d023d3/); ethereum `0xd4a4da45e170d43bba5685e04635ca0325219d1b` | ✅ Audited |
| VariableDebtToken | token | ethereum | n/a | 2 deployments: ethereum [`0x4b8e01020b942bb5c0b4a8368a2ec44e12ec0319`](./contracts/ethereum-1/0x4b8e01020b942bb5c0b4a8368a2ec44e12ec0319/); ethereum `0xaac1d67f1c17ec01593d76e831c51a4f458dc160` | ✅ Audited |
| VariableDebtToken | token | ethereum | n/a | 2 deployments: ethereum [`0x5c8cb0e43cb17553ab4a37011c3dc743aeb3f241`](./contracts/ethereum-1/0x5c8cb0e43cb17553ab4a37011c3dc743aeb3f241/); ethereum `0xdebb85c7378829229b4f4cea07eba49496e8e86f` | ✅ Audited |
| VariableDebtToken | token | ethereum | n/a | 2 deployments: ethereum [`0x64e4843ffdfb62d205b049ddbe8b949534e4e2d4`](./contracts/ethereum-1/0x64e4843ffdfb62d205b049ddbe8b949534e4e2d4/); ethereum `0xd626d62f322e484629a475b544278b88f35e204f` | ✅ Audited |
| VariableDebtToken | token | ethereum | n/a | 2 deployments: ethereum [`0x75e02dd8123b460fdb2bc52cb67becbbead25614`](./contracts/ethereum-1/0x75e02dd8123b460fdb2bc52cb67becbbead25614/); ethereum `0xd5bfd3d736477f48efc873ee464f4a8b5447850b` | ✅ Audited |
| VariableDebtToken | token | ethereum | n/a | 2 deployments: ethereum [`0x9abe34021128c17de3c2180a02932eb5e1bb18ef`](./contracts/ethereum-1/0x9abe34021128c17de3c2180a02932eb5e1bb18ef/); ethereum `0x9ddfc4f8ad48940e323ccfd4426bd0b074a64f45` | ✅ Audited |
| VariableDebtToken | token | ethereum | n/a | 2 deployments: ethereum [`0xa2c32a116e959ee35d5c99a2a575697814d9eebc`](./contracts/ethereum-1/0xa2c32a116e959ee35d5c99a2a575697814d9eebc/); ethereum `0xbac9d17f290260a1d5f1b69cac84dba6b4488d66` | ✅ Audited |
| VariableDebtToken | token | ethereum | n/a | 2 deployments: ethereum [`0xac1bd73182c1469b7c103f35ac234fd056191c7a`](./contracts/ethereum-1/0xac1bd73182c1469b7c103f35ac234fd056191c7a/); ethereum `0xb9e8bcd56f26b0540989a66aa24d431cdb0affa0` | ✅ Audited |
| VariableDebtToken | token | ethereum | n/a | 2 deployments: ethereum [`0xd7f6e4e10fd1e7faf642fa924c5ea2b6c5450d11`](./contracts/ethereum-1/0xd7f6e4e10fd1e7faf642fa924c5ea2b6c5450d11/); ethereum `0xe03496a48f59ec2a209f8dc473332e1499d539ef` | ✅ Audited |
| VariableDebtToken | token | ethereum | n/a | 2 deployments: ethereum [`0xec12f63116bd2493104a26fbdbcd70f51ab7b2c1`](./contracts/ethereum-1/0xec12f63116bd2493104a26fbdbcd70f51ab7b2c1/); ethereum `0xfcbd894a18358d53d38abb8b1c83c222c4b3096f` | ✅ Audited |

### ⚠️ Verified + Unaudited (44)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AggMonetaryPolicy - monetary policy based on aggregated prices for crvUSD | operational_periphery | ethereum | n/a | [`0x8c5a7f011f733fbb0a6c969c058716d5ce9bc933`](./contracts/ethereum-1/0x8c5a7f011f733fbb0a6c969c058716d5ce9bc933/) | ⚠️ Unaudited |
| AggregatorStablePrice - aggregator of stablecoin prices for crvUSD | operational_periphery | ethereum | n/a | [`0x18672b1b0c623a30089a280ed9256379fb0e4e62`](./contracts/ethereum-1/0x18672b1b0c623a30089a280ed9256379fb0e4e62/) | ⚠️ Unaudited |
| AnyswapV5ERC20 | token | ethereum | n/a | [`0x3b79a28264fc52c7b4cea90558aa0b162f7faf57`](./contracts/ethereum-1/0x3b79a28264fc52c7b4cea90558aa0b162f7faf57/) | ⚠️ Unaudited |
| BLUSDToken | token | ethereum | n/a | [`0xb9d7dddca9a4ac480991865efef82e01273f79c3`](./contracts/ethereum-1/0xb9d7dddca9a4ac480991865efef82e01273f79c3/) | ⚠️ Unaudited |
| BondNFT | token | ethereum | n/a | [`0xa8384862219188a8f03c144953cf21fc124029ee`](./contracts/ethereum-1/0xa8384862219188a8f03c144953cf21fc124029ee/) | ⚠️ Unaudited |
| ChickenBondManager | governance | ethereum | n/a | [`0x57619fe9c539f890b19c61812226f9703ce37137`](./contracts/ethereum-1/0x57619fe9c539f890b19c61812226f9703ce37137/) | ⚠️ Unaudited |
| crvUSD ControllerFactory | registry | ethereum | n/a | [`0xc9332fdcb1c491dcc683bae86fe3cb70360738bc`](./contracts/ethereum-1/0xc9332fdcb1c491dcc683bae86fe3cb70360738bc/) | ⚠️ Unaudited |
| crvUSD Stablecoin | token | ethereum | n/a | [`0xf939e0a03fb07f59a73314e73794be0e57ac1b4e`](./contracts/ethereum-1/0xf939e0a03fb07f59a73314e73794be0e57ac1b4e/) | ⚠️ Unaudited |
| CustomPriceGetter | operational_periphery | ethereum | n/a | [`0x02da86a57432e3861b1ab183ab7b24fcf4aab6a8`](./contracts/ethereum-1/0x02da86a57432e3861b1ab183ab7b24fcf4aab6a8/) | ⚠️ Unaudited |
| Dai | unknown | ethereum | n/a | [`0x6b175474e89094c44da98b954eedeac495271d0f`](./contracts/ethereum-1/0x6b175474e89094c44da98b954eedeac495271d0f/) | ⚠️ Unaudited |
| DSToken | token | ethereum | n/a | 2 deployments: ethereum [`0x97bf1ff371ceabbb9e821480d31dd743c4b71e0e`](./contracts/ethereum-1/0x97bf1ff371ceabbb9e821480d31dd743c4b71e0e/); ethereum `0x9aed7a25f2d928225e6fb2388055c7363ad6727b` | ⚠️ Unaudited |
| Factory | registry | ethereum | n/a | [`0xe5a5f138005e19a3e6d0fe68b039397eeef2322b`](./contracts/ethereum-1/0xe5a5f138005e19a3e6d0fe68b039397eeef2322b/) | ⚠️ Unaudited |
| FRAXStablecoin | token | ethereum | n/a | [`0x853d955acef822db058eb8505911ed77f175b99e`](./contracts/ethereum-1/0x853d955acef822db058eb8505911ed77f175b99e/) | ⚠️ Unaudited |
| IncentivesControllerV2 | governance | ethereum | n/a | [`0xdb5c23ae97f76dacc907f5f13bda54131c8e9e5a`](./contracts/ethereum-1/0xdb5c23ae97f76dacc907f5f13bda54131c8e9e5a/) | ⚠️ Unaudited |
| IncentivesControllerV3 | governance | ethereum | n/a | [`0xf8390b84533db97d3e415b4c7bf4251953d6c568`](./contracts/ethereum-1/0xf8390b84533db97d3e415b4c7bf4251953d6c568/) | ⚠️ Unaudited |
| LendingPoolAddressesProviderRegistry | registry | ethereum | n/a | [`0xac538416ba7438c773f29cf58afdc542fdcabed4`](./contracts/ethereum-1/0xac538416ba7438c773f29cf58afdc542fdcabed4/) | ⚠️ Unaudited |
| LendingPoolCollateralManager | core_logic | ethereum | n/a | [`0x2e9f846ce3820531b52c08d3d4543be5c8fe7ddb`](./contracts/ethereum-1/0x2e9f846ce3820531b52c08d3d4543be5c8fe7ddb/) | ⚠️ Unaudited |
| LendingRateOracle | operational_periphery | ethereum | n/a | [`0x413a1f0098a8c5ba1078552af515bd0146522fe4`](./contracts/ethereum-1/0x413a1f0098a8c5ba1078552af515bd0146522fe4/) | ⚠️ Unaudited |
| MagicInternetMoneyV1 | unknown | ethereum | n/a | [`0x99d8a9c45b2eca8864373a26d1459e3dff1e17f3`](./contracts/ethereum-1/0x99d8a9c45b2eca8864373a26d1459e3dff1e17f3/) | ⚠️ Unaudited |
| Migration | operational_periphery | ethereum | n/a | [`0x67bd2425823614a8d0a90c467cf36c34db30edab`](./contracts/ethereum-1/0x67bd2425823614a8d0a90c467cf36c34db30edab/) | ⚠️ Unaudited |
| MultiClaim | unknown | ethereum | n/a | [`0x32facb5a46e02decaf5f939ab12c123eee203a5f`](./contracts/ethereum-1/0x32facb5a46e02decaf5f939ab12c123eee203a5f/) | ⚠️ Unaudited |
| MultiFeeDistributionV3 | unknown | ethereum | n/a | [`0x630de1180a22e76e70e041da5eb9b676ce2bdd44`](./contracts/ethereum-1/0x630de1180a22e76e70e041da5eb9b676ce2bdd44/) | ⚠️ Unaudited |
| NEC | unknown | ethereum | n/a | [`0xcc80c051057b774cd75067dc48f8987c4eb97a5e`](./contracts/ethereum-1/0xcc80c051057b774cd75067dc48f8987c4eb97a5e/) | ⚠️ Unaudited |
| OneWayLendingFactory | registry | ethereum | n/a | [`0xea6876dde9e3467564acbee1ed5bac88783205e0`](./contracts/ethereum-1/0xea6876dde9e3467564acbee1ed5bac88783205e0/) | ⚠️ Unaudited |
| PegPrice | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x226845c2ba216b8bb1aaadfd4e14de69426c5445`](./contracts/ethereum-1/0x226845c2ba216b8bb1aaadfd4e14de69426c5445/); ethereum `0xe911fa14a49ac37e79ae8a60bd22a5f6a78c85a6` | ⚠️ Unaudited |
| Redemption | unknown | ethereum | n/a | 2 deployments: ethereum [`0xb92998ccd53135bf9f26cbb67590b070d287bed9`](./contracts/ethereum-1/0xb92998ccd53135bf9f26cbb67590b070d287bed9/); ethereum `0xc003be0faf0b06f66fdf8264540b6a1e2e93faa3` | ⚠️ Unaudited |
| SavingsDai | unknown | ethereum | n/a | [`0x83f20f44975d03b1b09e64809b757c47f942beea`](./contracts/ethereum-1/0x83f20f44975d03b1b09e64809b757c47f942beea/) | ⚠️ Unaudited |
| Sifu | unknown | ethereum | n/a | [`0x8dd09822e83313adca54c75696ae80c5429697ff`](./contracts/ethereum-1/0x8dd09822e83313adca54c75696ae80c5429697ff/) | ⚠️ Unaudited |
| SifuM | unknown | ethereum | n/a | [`0x5938999dd0cc4d480c3b1a451aecc78ae4ddaab5`](./contracts/ethereum-1/0x5938999dd0cc4d480c3b1a451aecc78ae4ddaab5/) | ⚠️ Unaudited |
| sSpellV1 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x26fa3fffb6efe8c1e69103acb4044c26b9a106a9`](./contracts/ethereum-1/0x26fa3fffb6efe8c1e69103acb4044c26b9a106a9/); ethereum `0x4ca9c6f89758877b78a44e57fd8feb89b4c42b8c` | ⚠️ Unaudited |
| StableAndVariableTokensHelper | token | ethereum | n/a | [`0xbcdad8dedff0bdf425bbf7cb5970157da492279a`](./contracts/ethereum-1/0xbcdad8dedff0bdf425bbf7cb5970157da492279a/) | ⚠️ Unaudited |
| StableDebtToken | token | ethereum | n/a | 17 deployments: ethereum [`0x043fc0b333034a13061601275420f1601e2b4bbd`](./contracts/ethereum-1/0x043fc0b333034a13061601275420f1601e2b4bbd/); ethereum `0x05d682006df6306e371b5411863fc207506a58eb`; ethereum `0x1c5c841941d98cef5393423e6391bd0b1c18bf99`; ethereum `0x2cb86dc130f0e99c3ff7128b10d18096957a62f7`; ethereum `0x3f447884b0dc714dd3398e94cb4c31aa93f76e14`; ethereum `0x4ff822cc01051c30fb0a2d4899fbc889501b2e5a`; ethereum `0x6b5766198a2dbf85160985047b987a483be69bea`; ethereum `0x74943d75f0d9f2164cfe7727e20f1f91058214be`; ethereum `0x7aef021db359bb820ec191bcfc65e74758731131`; ethereum `0xa097ec3aae169e8e62ffc8980a9f657ef97bd5bd`; ethereum `0xbf5214c7d7c39b924d591cc43e80acd2cc00b919`; ethereum `0xbf772d84e26ceace3521b7c0ed5cf456149d7e96`; ethereum `0xc7c3d79d61c9e4e27ff904f66386a89726a60a3c`; ethereum `0xcbd753d1466a6fe68fb2d31f4027b889d120adc4`; ethereum `0xcc80c90d7e28fa0a7d5d3d6df0e86af502123b0d`; ethereum `0xec6f20a9b6c250b7adc90d7fede3aba23ed85774`; ethereum `0xf39a0170db39367657562b51f40b57db33c2a59c` | ⚠️ Unaudited |
| StakedUSDeV2 | token | ethereum | n/a | [`0x9d39a5de30e57443bff2a8307a4256c8797a3497`](./contracts/ethereum-1/0x9d39a5de30e57443bff2a8307a4256c8797a3497/) | ⚠️ Unaudited |
| TetherToken | token | ethereum | n/a | [`0xdac17f958d2ee523a2206206994597c13d831ec7`](./contracts/ethereum-1/0xdac17f958d2ee523a2206206994597c13d831ec7/) | ⚠️ Unaudited |
| TokenMintERC20Token | token | ethereum | n/a | [`0x29127fe04ffa4c32acac0ffe17280abd74eac313`](./contracts/ethereum-1/0x29127fe04ffa4c32acac0ffe17280abd74eac313/) | ⚠️ Unaudited |
| UniswapV2Pair | unknown | ethereum | n/a | [`0x3e04863dba602713bb5d0edbf7db7c3a9a2b6027`](./contracts/ethereum-1/0x3e04863dba602713bb5d0edbf7db7c3a9a2b6027/) | ⚠️ Unaudited |
| USDe | unknown | ethereum | n/a | [`0x4c9edd5852cd905f086c759e8383e09bff1e68b3`](./contracts/ethereum-1/0x4c9edd5852cd905f086c759e8383e09bff1e68b3/) | ⚠️ Unaudited |
| UwU | unknown | ethereum | n/a | [`0x55c08ca52497e2f1534b59e2917bf524d4765257`](./contracts/ethereum-1/0x55c08ca52497e2f1534b59e2917bf524d4765257/) | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | n/a | 39 deployments: ethereum [`0x2f50d538606fa9edd2b11e2446beb18c9d5846bb`](./contracts/ethereum-1/0x2f50d538606fa9edd2b11e2446beb18c9d5846bb/); ethereum `0x3993d34e7e99abf6b6f367309975d1360222d446`; ethereum `0x3a283d9c08e8b55966afb64c515f5143cf907611`; ethereum `0x3b6831c0077a1e44ed0a21841c3bc4dc11bce833`; ethereum `0x3d229e1b4faab62f621ef2f6a610961f7bd7b23b`; ethereum `0x4c18e409dc8619bfb6a1cb56d114c3f592e0ae79`; ethereum `0x4ca9b3063ec5866a4b82e437059d2c43d1be596f`; ethereum `0x575ccd8e2d300e2377b43478339e364000318e2c`; ethereum `0x5f3b5dfeb7b28cdbd7faba78963ee202a494e2a2`; ethereum `0x64e3c23bfc40722d3b649844055f1d51c1ac041d`; ethereum `0x6c3f90f043a72fa612cbac8115ee7e52bde6e490`; ethereum `0x705350c4bcd35c9441419ddd5d2f097d7a55410f`; ethereum `0x70fc957eb90e37af82acdbd12675699797745f68`; ethereum `0x752ebeb79963cf0732e9c0fec72a49fd1defaeac`; ethereum `0x7ca5b0a2910b33e9759dc7ddb0413949071d7575`; ethereum `0x80466c64868e1ab14a1ddf27a676c3fcbe638fe5`; ethereum `0x8282bd15dca2ea2bdf24163e8f2781b30c43a2ef`; ethereum `0x8301ae4fc9c624d1d396cbdaa1ed877821d7c511`; ethereum `0x8484673ca7bff40f82b041916881aea15ee84834`; ethereum `0x9838eccc42659fa8aa7daf2ad134b53984c9427b`; ethereum `0x98638facf9a3865cd033f36548713183f6996122`; ethereum `0x98a7f18d4e56cfe84e3d081b40001b3d5bd3eb8b`; ethereum `0xa85461afc2deec01bda23b5cd267d51f765fba10`; ethereum `0xa90996896660decc6e997655e065b23788857849`; ethereum `0xb19059ebb43466c323583928285a49f558e572fd`; ethereum `0xb1f2cdec61db658f091671f5f199635aef202cac`; ethereum `0xb576491f1e6e5e62f1d8f26062ee822b40b0e0d4`; ethereum `0xbc89cd85491d81c6ad2954e6d0362ee29fca8f53`; ethereum `0xbebc44782c7db0a1a60cb6fe97d0b483032ff1c7`; ethereum `0xbfcf63294ad7105dea65aa58f8ae5be2d9d0952a`; ethereum `0xc4ad29ba4b3c580e6d59105fff484999997675ff`; ethereum `0xca3d75ac011bf5ad07a98d02f18225f9bd9a6bdf`; ethereum `0xcb08717451aae9ef950a2524e33b6dcaba60147b`; ethereum `0xd061d61a4d941c39e5453435b6345dc261c2fce0`; ethereum `0xd10d54830714003575d9f472d62268a29c902e5a`; ethereum `0xd446a98f88e1d053d1f64986e3ed083bb1ab7e5a`; ethereum `0xd51a44d3fae010294c616388b506acda1bfaae46`; ethereum `0xd533a949740bb3306d119cc777fa900ba034cd52`; ethereum `0xed4064f376cb8d68f770fb1ff088a3d0f3ff5c4d` | ⚠️ Unaudited |
| WalletBalanceProvider | unknown | ethereum | n/a | [`0x7935330d82c3b2b96b2e6bdec13e2dfca1c6addd`](./contracts/ethereum-1/0x7935330d82c3b2b96b2e6bdec13e2dfca1c6addd/) | ⚠️ Unaudited |
| WBTC | token | ethereum | n/a | [`0x2260fac5e5542a773aa44fbcfedf7c193bc2c599`](./contracts/ethereum-1/0x2260fac5e5542a773aa44fbcfedf7c193bc2c599/) | ⚠️ Unaudited |
| WETH9 | token | ethereum | n/a | [`0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2`](./contracts/ethereum-1/0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2/) | ⚠️ Unaudited |
| WETHGateway | token | ethereum | n/a | [`0x2fd22a9db5e07bfff9145e549c463967864d7d2f`](./contracts/ethereum-1/0x2fd22a9db5e07bfff9145e549c463967864d7d2f/) | ⚠️ Unaudited |
| Wonderland | unknown | ethereum | n/a | [`0x9b06f3c5de42d4623d7a2bd940ec735103c68a76`](./contracts/ethereum-1/0x9b06f3c5de42d4623d7a2bd940ec735103c68a76/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (50)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x019d39636cdf55209bbe65571907d1d3a3e6a3e9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x08fd5423e40c7c0a36263d1da1e0c1bf987dffdf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0c16d76839854e3af96dc98a95834f9173cfbd66` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1d309bd5fe9820dda1dfd9281ce522d90c5c28d8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x23a0a26206849d3cabb19157f3d764a59298db14` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x25d580d124206db575be2c91d9cfb95594854585` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x298a32d105138ad496b93e413a295e5aa9556f66` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2e707e9c8e3464673564c2daea31d7cbff18da7e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3fe2ebecd94e1ec7e1c1afe9cbcc2ba05c7bcac8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x442707961190f71e4e31a036055b3e4cf0379219` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4791e8c0d3b9488f299cacca7e03073d98fabacc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4c7e93c358972093948cfe0b291f6b261cf6d388` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5b4e67a7b38db357a20d1eeb1bec486ac19c73b7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5fa44af661fd72c7fb4034c1aee4b0013a45c806` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x60b8b1af9fce43d2df3c35bce0c599b07609da4d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6356bf70d0a84c2e4f88ee1c51c7cdabda831e88` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x687527357752bcd764830648130272f807a2d518` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7749ee9553a4719c6cfa941fcf49f9f4a2a97712` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7c417fe930d32a018b17fbbd9806f5e3867c6a86` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7f0e5acd2338704c45a2d30fbae801584b42e3e0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7f49be0acee7af8d5fb12bedabb3af5db418a1b5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x82893de096aab4a90ec3ddd5868b87589dfc1779` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8aa8b3cab47cd2bffa6c778296cf1f6fc14e182d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8b93ae7762c3fc7ae1421ff424323b2881e03812` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9060a45ffad7d2856a969bc4c9d5d9a7fcac0762` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x964eadcf991594da1fd250bb3600327df19cd6e3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9c1fcfd1724a4887e812f77897d9a3467f5a6cb5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa4fcc863483c48021d5f28948cd8d9034fff24bd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa61dac9ffdd0ac14b7ec5238b845ddaf2fd8dfc9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa67a82bf6d2fcca57650da763cf89f0779a27c87` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa8c9315b9844b4252286101e31f8276f25d36e2f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaa436cae48988c1aea891a73852fd948b90549a9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xacfbdbcfb1e6e5769cf4efa688b52d888834ecdb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb1ad05fb35fc8900a5edc2bdb5e47ccecd5be7cf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb2f81b9249bf7dc68e10dc6aec0dccf50bb91328` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb6c153dbfc752a97c8eb4f2b8f198b610e2453f1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb7cd173843f998004ed85d17cc2df103ffcfa764` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb8aedf50e708ed4ebca5be1e34885ad41c383499` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbb0589a56557161707fa402df58863d3233e45f5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc7421184041bd29ec3829a640bfebe4648e247df` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc778417e063141139fce010982780140aa0cd5ab` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc80468f2e9fb58fa4e7ba8ec4e60af5106bbc0d6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd21040c133cb8a407cba7830edb521665ebff916` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd7f9506e26cf90647c30778a37a37cc48c186717` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd7fbb427aceb18fac3b377730f35f0a5b7a0d3a7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd865c7c460bcb58d75c840629d4fdf5bbebd32bf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe76d930c1f64acbba68ff4b5a8e045eda2e99c7e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe81964d5b14b59ff5927a42db08f3cc9b3a761c3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xedb47ff3525e32e0755c908c0c718f58af6b4724` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xeee1b35b1a4af3e44f741a55c8b2a04b171c2549` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Liquity.pdf](https://github.com/trailofbits/publications/blob/master/reviews/Liquity.pdf) | Trail of Bits | Audit | 2021-01 | stale | Inherited from Liquity | contract_name | 8 | high |
| [www.coinspect.com/blog/liquity-audit](https://www.coinspect.com/blog/liquity-audit) | unknown | Audit | 2021-03 | stale | Inherited from Liquity | n/a | 0 | n/a |
| [Liquity - Smart Contract Audit 2021.pdf](https://www.coinspect.com/doc/Liquity%20%2D%20Smart%20Contract%20Audit%202021%2Epdf) | yAudit | Audit | 2021-03 | stale | Inherited from Liquity | n/a | 0 | n/a |
| [www.coinspect.com/blog/liquity-v2-governance-smart-contract-audit](https://www.coinspect.com/blog/liquity-v2-governance-smart-contract-audit) | Coinspect | Audit | 2025-01 | aging | Inherited from Liquity | n/a | 0 | n/a |
| [www.coinspect.com/blog/liquity-v2-bold-smart-contract-audit](https://www.coinspect.com/blog/liquity-v2-bold-smart-contract-audit) | Coinspect | Audit | 2025-01 | aging | Inherited from Liquity | n/a | 0 | n/a |
| [Liquity - Smart Contract Audit 2021.pdf](https://www.coinspect.com/doc/Liquity%20%2D%20Smart%20Contract%20Audit%202021.pdf) | Coinspect | Audit | 2021-03 | stale | Inherited from Liquity | contract_name | 9 | high |
| [PeckShield-Audit-Report-UWU-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-UWU-v1.0.pdf) | PeckShield | Audit | 2022-12 | stale | Direct | contract_name | 143 | high |
| [PeckShield-Audit-Report-Radiant-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-Radiant-v1.0.pdf) | PeckShield | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [sourcehat.com/audits/RadiantProtocol](https://sourcehat.com/audits/RadiantProtocol) | SourceHat | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [DIP001_audit_report_2020_03_en_1_0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/DIP001_audit_report_2020_03_en_1_0.pdf) | PeckShield | Audit | 2020-03 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x8c5a7f011f733fbb0a6c969c058716d5ce9bc933`](./contracts/ethereum-1/0x8c5a7f011f733fbb0a6c969c058716d5ce9bc933/) | AggMonetaryPolicy - monetary policy based on aggregated prices for crvUSD | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x18672b1b0c623a30089a280ed9256379fb0e4e62`](./contracts/ethereum-1/0x18672b1b0c623a30089a280ed9256379fb0e4e62/) | AggregatorStablePrice - aggregator of stablecoin prices for crvUSD | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb9d7dddca9a4ac480991865efef82e01273f79c3`](./contracts/ethereum-1/0xb9d7dddca9a4ac480991865efef82e01273f79c3/) | BLUSDToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa8384862219188a8f03c144953cf21fc124029ee`](./contracts/ethereum-1/0xa8384862219188a8f03c144953cf21fc124029ee/) | BondNFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x57619fe9c539f890b19c61812226f9703ce37137`](./contracts/ethereum-1/0x57619fe9c539f890b19c61812226f9703ce37137/) | ChickenBondManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc9332fdcb1c491dcc683bae86fe3cb70360738bc`](./contracts/ethereum-1/0xc9332fdcb1c491dcc683bae86fe3cb70360738bc/) | crvUSD ControllerFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf939e0a03fb07f59a73314e73794be0e57ac1b4e`](./contracts/ethereum-1/0xf939e0a03fb07f59a73314e73794be0e57ac1b4e/) | crvUSD Stablecoin | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x02da86a57432e3861b1ab183ab7b24fcf4aab6a8`](./contracts/ethereum-1/0x02da86a57432e3861b1ab183ab7b24fcf4aab6a8/) | CustomPriceGetter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6b175474e89094c44da98b954eedeac495271d0f`](./contracts/ethereum-1/0x6b175474e89094c44da98b954eedeac495271d0f/) | Dai | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe5a5f138005e19a3e6d0fe68b039397eeef2322b`](./contracts/ethereum-1/0xe5a5f138005e19a3e6d0fe68b039397eeef2322b/) | Factory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdb5c23ae97f76dacc907f5f13bda54131c8e9e5a`](./contracts/ethereum-1/0xdb5c23ae97f76dacc907f5f13bda54131c8e9e5a/) | IncentivesControllerV2 | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf8390b84533db97d3e415b4c7bf4251953d6c568`](./contracts/ethereum-1/0xf8390b84533db97d3e415b4c7bf4251953d6c568/) | IncentivesControllerV3 | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xac538416ba7438c773f29cf58afdc542fdcabed4`](./contracts/ethereum-1/0xac538416ba7438c773f29cf58afdc542fdcabed4/) | LendingPoolAddressesProviderRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2e9f846ce3820531b52c08d3d4543be5c8fe7ddb`](./contracts/ethereum-1/0x2e9f846ce3820531b52c08d3d4543be5c8fe7ddb/) | LendingPoolCollateralManager | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x413a1f0098a8c5ba1078552af515bd0146522fe4`](./contracts/ethereum-1/0x413a1f0098a8c5ba1078552af515bd0146522fe4/) | LendingRateOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x99d8a9c45b2eca8864373a26d1459e3dff1e17f3`](./contracts/ethereum-1/0x99d8a9c45b2eca8864373a26d1459e3dff1e17f3/) | MagicInternetMoneyV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x67bd2425823614a8d0a90c467cf36c34db30edab`](./contracts/ethereum-1/0x67bd2425823614a8d0a90c467cf36c34db30edab/) | Migration | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x32facb5a46e02decaf5f939ab12c123eee203a5f`](./contracts/ethereum-1/0x32facb5a46e02decaf5f939ab12c123eee203a5f/) | MultiClaim | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x630de1180a22e76e70e041da5eb9b676ce2bdd44`](./contracts/ethereum-1/0x630de1180a22e76e70e041da5eb9b676ce2bdd44/) | MultiFeeDistributionV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcc80c051057b774cd75067dc48f8987c4eb97a5e`](./contracts/ethereum-1/0xcc80c051057b774cd75067dc48f8987c4eb97a5e/) | NEC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xea6876dde9e3467564acbee1ed5bac88783205e0`](./contracts/ethereum-1/0xea6876dde9e3467564acbee1ed5bac88783205e0/) | OneWayLendingFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x226845c2ba216b8bb1aaadfd4e14de69426c5445`](./contracts/ethereum-1/0x226845c2ba216b8bb1aaadfd4e14de69426c5445/) | PegPrice | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb92998ccd53135bf9f26cbb67590b070d287bed9`](./contracts/ethereum-1/0xb92998ccd53135bf9f26cbb67590b070d287bed9/) | Redemption | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x83f20f44975d03b1b09e64809b757c47f942beea`](./contracts/ethereum-1/0x83f20f44975d03b1b09e64809b757c47f942beea/) | SavingsDai | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8dd09822e83313adca54c75696ae80c5429697ff`](./contracts/ethereum-1/0x8dd09822e83313adca54c75696ae80c5429697ff/) | Sifu | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5938999dd0cc4d480c3b1a451aecc78ae4ddaab5`](./contracts/ethereum-1/0x5938999dd0cc4d480c3b1a451aecc78ae4ddaab5/) | SifuM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x26fa3fffb6efe8c1e69103acb4044c26b9a106a9`](./contracts/ethereum-1/0x26fa3fffb6efe8c1e69103acb4044c26b9a106a9/) | sSpellV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbcdad8dedff0bdf425bbf7cb5970157da492279a`](./contracts/ethereum-1/0xbcdad8dedff0bdf425bbf7cb5970157da492279a/) | StableAndVariableTokensHelper | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x043fc0b333034a13061601275420f1601e2b4bbd`](./contracts/ethereum-1/0x043fc0b333034a13061601275420f1601e2b4bbd/) | StableDebtToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9d39a5de30e57443bff2a8307a4256c8797a3497`](./contracts/ethereum-1/0x9d39a5de30e57443bff2a8307a4256c8797a3497/) | StakedUSDeV2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdac17f958d2ee523a2206206994597c13d831ec7`](./contracts/ethereum-1/0xdac17f958d2ee523a2206206994597c13d831ec7/) | TetherToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4c9edd5852cd905f086c759e8383e09bff1e68b3`](./contracts/ethereum-1/0x4c9edd5852cd905f086c759e8383e09bff1e68b3/) | USDe | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x55c08ca52497e2f1534b59e2917bf524d4765257`](./contracts/ethereum-1/0x55c08ca52497e2f1534b59e2917bf524d4765257/) | UwU | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2f50d538606fa9edd2b11e2446beb18c9d5846bb`](./contracts/ethereum-1/0x2f50d538606fa9edd2b11e2446beb18c9d5846bb/) | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7935330d82c3b2b96b2e6bdec13e2dfca1c6addd`](./contracts/ethereum-1/0x7935330d82c3b2b96b2e6bdec13e2dfca1c6addd/) | WalletBalanceProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2260fac5e5542a773aa44fbcfedf7c193bc2c599`](./contracts/ethereum-1/0x2260fac5e5542a773aa44fbcfedf7c193bc2c599/) | WBTC | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2`](./contracts/ethereum-1/0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2/) | WETH9 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2fd22a9db5e07bfff9145e549c463967864d7d2f`](./contracts/ethereum-1/0x2fd22a9db5e07bfff9145e549c463967864d7d2f/) | WETHGateway | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9b06f3c5de42d4623d7a2bd940ec735103c68a76`](./contracts/ethereum-1/0x9b06f3c5de42d4623d7a2bd940ec735103c68a76/) | Wonderland | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 100 |
| upstream | 7 |
| standard_library | 0 |
| needs_review | 50 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 7
- Inherited remapped matches: 1
- Extraction confidence breakdown: high=3
- Match method counts: extraction_exact=159, inherited_name_remap=1

Zero-match audit list:

- [16677] www.coinspect.com/blog/liquity-audit
- [16678] Liquity - Smart Contract Audit 2021.pdf
- [16679] www.coinspect.com/blog/liquity-v2-governance-smart-contract-audit
- [16680] www.coinspect.com/blog/liquity-v2-bold-smart-contract-audit
- [21206] PeckShield-Audit-Report-Radiant-v1.0.pdf
- [21207] sourcehat.com/audits/RadiantProtocol
- [21208] DIP001_audit_report_2020_03_en_1_0.pdf

Possible remapped coverage (verified):

- [16676] Liquity.pdf: CollSurplusPool (remapped from DefaultPool)

Fork inheritance lineage and inherited audits are included when available.
