# Agentic Audit Brief: Velvet.Capital

## Project Overview

- Project: Velvet.Capital (`velvet.capital`)
- Website: [https://dapp.velvet.capital/Referred/6956901b440d4fc522b2eb7b](https://dapp.velvet.capital/Referred/6956901b440d4fc522b2eb7b)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:09.862Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-f007
- Chains: base, bsc, ethereum
- Contract surface: 300 unique implementations (388 raw deployments)
- DeFi Llama TVL: $12,514,618.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Farm. Structurally: 25 project-authored contract(s) across 3 chain(s); 2 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 7 functional families. Its contracts share 4 common project-authored base contract(s) (targetwhitelisting, rebalancingconfig, accessroles). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 461; live-surface contracts included: 383 (105 live, 278 unknown).
- Excluded by liveness: 78 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 15/53 (28.3%)
- Deployed-live implementations: 54 of 300 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 15/55
- Verified + Unaudited implementations: 40
- Verified by bytecode match: 0
- Unverified implementations: 245
- Unique implementations: 300
- Raw deployments: 388
- Audits discovered: 14 (14 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 14
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-07 (aging)
- Audit staleness (calendar age): 0 fresh, 3 aging, 10 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 10 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 5 match-unverified
- Tier 1 coverage: 1.9% (Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 8 | 14.5% | 2024-12 |
| unknown | Tier 2 | 8 | 14.5% | 2024-07 |
| Spearbit | Tier 1 | 1 | 1.8% | 2025-07 |

## Contract Surface

### ✅ Verified + Audited (15)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| DepositBatch | periphery | ethereum | n/a | 6 deployments: ethereum [`0x32c249c81a77cddc2bbecd91d95c833be178e3b6`](./contracts/ethereum-1/0x32c249c81a77cddc2bbecd91d95c833be178e3b6/); ethereum `0xe6afac8af75459e2f0e053057b4021d4c24b9694`; ethereum `0xea9fd1804d11759895cbdf3e70b605687d3c6bf1`; ethereum `0xf674e7bc64436bed53f1fc2796af2bc6d0c08f59`; base `0x6e3e0fe13dae2c42cca7ae2e849b0976e2e63e05`; base `0xfe08616533cbb2db7f6e6086c60b50d3a4031fe6` | ✅ Audited |
| DepositManager | core_logic | base | n/a | 5 deployments: ethereum `0xcdb6e3f2a51047322b85301cd1e07f83676e6c7f`; ethereum `0xf908e0cf47507ab85548b069797919f04cc30094`; ethereum `0xff6221e856a42201d64c4bae3a4d07396ae6ee7c`; base [`0x61f18d6beeb37b0d0f6af0a98bcccf8115598448`](./contracts/base-8453/0x61f18d6beeb37b0d0f6af0a98bcccf8115598448/); base `0xe4e23120a38c4348d7e22ab23976fa0c4bf6e2ed` | ✅ Audited |
| EnsoHandler | unknown | ethereum | n/a | [`0x18439b037dcae4a1528ccc3871d695e61653e617`](./contracts/ethereum-1/0x18439b037dcae4a1528ccc3871d695e61653e617/) | ✅ Audited |
| PortfolioFactory | unknown | ethereum | n/a | 2 deployments: ethereum [`0x6d135efd33acfb950a1eb18493029d1451235a86`](./contracts/ethereum-1/0x6d135efd33acfb950a1eb18493029d1451235a86/); ethereum `0xeadd9eef6f21eae3d0f1c6031f0f455522a081c2` | ✅ Audited |
| PortfolioFactory | unknown | ethereum | n/a | 2 deployments: ethereum [`0x7c530c9ed5e734964453ce62ae9c4e31a247738b`](./contracts/ethereum-1/0x7c530c9ed5e734964453ce62ae9c4e31a247738b/); ethereum `0xee0420b35b43c13c1c5c42541aa1d385c7a8faee` | ✅ Audited |
| PortfolioFactory | unknown | base | n/a | 2 deployments: base [`0x22d44ec3f1f217c97ccf3ca1b500043a66101082`](./contracts/base-8453/0x22d44ec3f1f217c97ccf3ca1b500043a66101082/); base `0xadf04f22a0b5548a5124cf692b8c5e6d19c8a0e5` | ✅ Audited |
| PortfolioFactory | unknown | base | n/a | 2 deployments: base [`0x5fef75f8720bbabd289012e7ff32514943c1b16d`](./contracts/base-8453/0x5fef75f8720bbabd289012e7ff32514943c1b16d/); base `0xb7993564e537fe3e949f29c09f09b16f456de448` | ✅ Audited |
| PortfolioFactory | unknown | base | n/a | 2 deployments: base [`0x850fffff0941dcd6aca6425d43df0c35f51710ca`](./contracts/base-8453/0x850fffff0941dcd6aca6425d43df0c35f51710ca/); base `0xf93659fb357899e092813bc3a2959cedb3282a7f` | ✅ Audited |
| PortfolioFactory | unknown | base | n/a | 2 deployments: base [`0xa1b57604a5e95c4bd2e6a16112a314e52e34039a`](./contracts/base-8453/0xa1b57604a5e95c4bd2e6a16112a314e52e34039a/); base `0xdb4dfa0dbab3b40598a808895a69d76cf02ef951` | ✅ Audited |
| PriceOracle | unknown | ethereum | n/a | 2 deployments: ethereum [`0x326a99f037c8d572a62e10363f7ad69942a969c1`](./contracts/ethereum-1/0x326a99f037c8d572a62e10363f7ad69942a969c1/); ethereum `0x6fe178f66c3a339e8be46c7fe30b024247afc0c0` | ✅ Audited |
| PriceOracleL2 | unknown | base | n/a | 2 deployments: base [`0x608e93ad410f3e3288dfc1a60446925a0fcf967e`](./contracts/base-8453/0x608e93ad410f3e3288dfc1a60446925a0fcf967e/); base `0xea600dac5dab562c853af4e40d006ca3e28fd7b6` | ✅ Audited |
| Rebalancing | unknown | base | n/a | 5 deployments: ethereum `0xbb44fe36a4f3de483ce237726478899eda7da239`; base [`0x0191bd53527db568bbd87494794e9447e87761ed`](./contracts/base-8453/0x0191bd53527db568bbd87494794e9447e87761ed/); base `0x0827cf431c2f2a4f12584fddb6f01ab0e26ccbe0`; base `0x77b4c4a954b47aa649bf9b5ceefdb09429497644`; base `0x8b33dc1365b0b42576b5d7a9f06b891c13b19365` | ✅ Audited |
| veVelvet | unknown | base | n/a | 2 deployments: base [`0x0e4a34f4d9469ae13f176ca9003af2bd159bbc41`](./contracts/base-8453/0x0e4a34f4d9469ae13f176ca9003af2bd159bbc41/); base `0xf807db8042c6473df9b96e6be217aa62b3480c64` | ✅ Audited |
| WithdrawBatch | operational_periphery | ethereum | n/a | [`0xce58382f1b1de0f5cee7fa76a2aa9ef2b41d92cb`](./contracts/ethereum-1/0xce58382f1b1de0f5cee7fa76a2aa9ef2b41d92cb/) | ✅ Audited |
| WithdrawManager | operational_periphery | ethereum | n/a | 4 deployments: ethereum [`0x0fe7c855f0512dc9d48ce5c220e19b8d97d13529`](./contracts/ethereum-1/0x0fe7c855f0512dc9d48ce5c220e19b8d97d13529/); ethereum `0x2fb0f105aac7730cb3a21eec880d0261e43b2638`; base `0x4643c0afb9cc91cbeeedb76b5d3419047f57eeff`; base `0x99e9c4d3171afaa3075d0d1ae2bb42b5e53aedab` | ✅ Audited |

### ⚠️ Verified + Unaudited (40)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ERC1967Proxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0xb49892b24f7793a998be0ddcdcd38bc293d5378e`](./contracts/ethereum-1/0xb49892b24f7793a998be0ddcdcd38bc293d5378e/); ethereum `0xd5c3b450372e4226102d942a547fd8f42f5379b2` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | base | n/a | 2 deployments: base [`0x00d4c959cd4f5d372a2cf5b12eb9f5f38d5776b7`](./contracts/base-8453/0x00d4c959cd4f5d372a2cf5b12eb9f5f38d5776b7/); base `0xd2a158889247b32ac09f5636d435521e61cfd8a3` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | base | n/a | 2 deployments: base [`0x085606d8ae07f1b457dc814bdda315078c8711b8`](./contracts/base-8453/0x085606d8ae07f1b457dc814bdda315078c8711b8/); base `0x7503dcca6cf041894a372c85bc2be9ac1605277c` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | base | n/a | 2 deployments: base [`0x09aa6b96493b9dbe84f6671851a9ccd8e49afe35`](./contracts/base-8453/0x09aa6b96493b9dbe84f6671851a9ccd8e49afe35/); base `0xe6b12d1b359cd3815a3a61cb3c0437caa31a22db` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | base | n/a | 4 deployments: base [`0x09ce0a8a2cf05d494f812acbe864373c519e5ae7`](./contracts/base-8453/0x09ce0a8a2cf05d494f812acbe864373c519e5ae7/); base `0x386736bca2f1a188a8f9729b1f7698c608f6d285`; base `0x89c08741fb11433ff6acf575aa93ac567ac6ce2e`; base `0x90dcd1aed457644b9454d0139f45998e78866f95` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | base | n/a | 2 deployments: base [`0x0a678a644578e65516742ca459f95fdddde2b63d`](./contracts/base-8453/0x0a678a644578e65516742ca459f95fdddde2b63d/); base `0x6bec6acb3ea9ce8dcfe0bc4af8d890930607d131` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | base | n/a | 3 deployments: base [`0x0a6c29668c2319069cf10be94e30f0752bd321e3`](./contracts/base-8453/0x0a6c29668c2319069cf10be94e30f0752bd321e3/); base `0x9b51c52282ec481742d2a99f181023c50e9eaf0c`; base `0xb0c31bb76dc5a4bfca5198ddf4cf23dc4ee25854` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | base | n/a | 5 deployments: base [`0x0fe7c855f0512dc9d48ce5c220e19b8d97d13529`](./contracts/base-8453/0x0fe7c855f0512dc9d48ce5c220e19b8d97d13529/); base `0x19c6d33db269a32aa0806651d9a436ee2180532c`; base `0x321c1562b52a51433a3eac52e3a49dd797c3ac14`; base `0x56b697a5fe6a74027d24597f4cf3101cf82f3ca8`; base `0xce58382f1b1de0f5cee7fa76a2aa9ef2b41d92cb` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | base | n/a | 2 deployments: base [`0x115110a597120cb37e8d801dc23d66c54dc31b03`](./contracts/base-8453/0x115110a597120cb37e8d801dc23d66c54dc31b03/); base `0xab1a20bba6009b44b106e33d775af734b4bdbfc9` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | base | n/a | 2 deployments: base [`0x145efd0cc8151d7984e4f032fdfe376a746d20ec`](./contracts/base-8453/0x145efd0cc8151d7984e4f032fdfe376a746d20ec/); base `0x1b902c25293a28eb1b5c2e2d6aa3f0658e44346a` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | base | n/a | 2 deployments: base [`0x1b0e954d46a9b92fbfaa3b2570c255c03f379123`](./contracts/base-8453/0x1b0e954d46a9b92fbfaa3b2570c255c03f379123/); base `0x638463b5f19f97f4007aff7bcfe2f1ec1f746a51` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | base | n/a | 9 deployments: base [`0x1d0f172ae618ab158dc9d86532ffd04b618cf0a1`](./contracts/base-8453/0x1d0f172ae618ab158dc9d86532ffd04b618cf0a1/); base `0x6822000cc2353f3f13bb3d4c2aa0c005a9cc5dab`; base `0x6952adce6e64bd650024aed2e1559dd674762ae6`; base `0x6f7cdd10c21904f0c6bc1f344a4fab3e59ca224d`; base `0x8176a9a08c10f273291210d4d5097aec3befe17f`; base `0x8d3f1bb4efac949f9e8adf4699810b98dac03463`; base `0xc0a0f2ce613f8a64563e5f94ac7b3b86103854db`; base `0xc132464c40d0c7c57dada6a4dd0df52a035d95ed`; base `0xe45a014ba09f03b6d935102dd8e620940caf05d5` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | base | n/a | 4 deployments: base [`0x1fecf4e9be78a03466e91222a1ed461d7bf7f142`](./contracts/base-8453/0x1fecf4e9be78a03466e91222a1ed461d7bf7f142/); base `0x6decb1b0375c440d6f1fce8d10850a48b05f7c8e`; base `0x9375ff2c6297ac96571b19445e0bb57b2b33dde7`; base `0xcf3be67bff11c110c3bb1469d3db5ec04fd7862d` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | base | n/a | 2 deployments: base [`0x21c652b316c1e1fa72290530eb9d2a2c0725bd9f`](./contracts/base-8453/0x21c652b316c1e1fa72290530eb9d2a2c0725bd9f/); base `0xa019e0a384d1b39ce9db82ee77cf3e01df523b62` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | base | n/a | 7 deployments: base [`0x2f692e907810c87ba55a10173eec1dacbb9eb079`](./contracts/base-8453/0x2f692e907810c87ba55a10173eec1dacbb9eb079/); base `0x303e8986d00b224e5d895de129a6ed6db8bb9144`; base `0x689c192bcb053f5b65fb19d96c95e1114197a184`; base `0xb9c9222ae05800b4ce37697bb43f29ec14da8999`; base `0xbd3e9748b4bdb9859deff20fd41b9aa4874c15c4`; base `0xcfc13b0aaf287152cee5b3e6f99d6d0332e42c0c`; base `0xd7b766baf598386c8b9f10343669f6a4366ed91d` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | base | n/a | 3 deployments: base [`0x364a1551261e3d58982e7b6deb3bc64b35b8516d`](./contracts/base-8453/0x364a1551261e3d58982e7b6deb3bc64b35b8516d/); base `0x6fe178f66c3a339e8be46c7fe30b024247afc0c0`; base `0xf1acb5fa80ac6f15f6af7465fbeaa9d1c72bfadf` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | base | n/a | 2 deployments: base [`0x3b5d968cb08af433b6f92d755d600f1d8152edf4`](./contracts/base-8453/0x3b5d968cb08af433b6f92d755d600f1d8152edf4/); base `0xeecd5a79d2bb58cd177b4dec763524501316c435` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | base | n/a | 2 deployments: base [`0x3dfb1d80d774cc39bb0cec9fedc2c1ccfcaeff13`](./contracts/base-8453/0x3dfb1d80d774cc39bb0cec9fedc2c1ccfcaeff13/); base `0xe39fa909362cbed01fe81f4ce3c3ac48f98ab782` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | base | n/a | 2 deployments: base [`0x4409080c77d6f5e15cd84321e140c756dc4b75fe`](./contracts/base-8453/0x4409080c77d6f5e15cd84321e140c756dc4b75fe/); base `0x99e5d0f32325a1b853703df4f4706c134c31ecd1` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | base | n/a | 4 deployments: base [`0x4c572741ee68324259372f5df455afcf9600ef82`](./contracts/base-8453/0x4c572741ee68324259372f5df455afcf9600ef82/); base `0x60939a4480761587f050df94428b93b1b01b2389`; base `0xd402f4b3192d0f844afa0082d74d06a6fc012810`; base `0xd48c1511da77ca4f4064401256f82b40bd2c4542` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | base | n/a | 2 deployments: base [`0x57de05161ea5e8dd0b873128ddefc5fbd6668c7b`](./contracts/base-8453/0x57de05161ea5e8dd0b873128ddefc5fbd6668c7b/); base `0xc5ef809c777fd9a0a8c86dbe94b1ce1451ed20b9` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | base | n/a | 2 deployments: base [`0x68febc6b0a34db33ce4b0402df4285c0e45a8efc`](./contracts/base-8453/0x68febc6b0a34db33ce4b0402df4285c0e45a8efc/); base `0x6e9036a409c67e805c893be41633dfe6abe1dae5` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | base | n/a | 2 deployments: base [`0x7bdb913cfb28bab09e26050b99d4bcd62a7bb515`](./contracts/base-8453/0x7bdb913cfb28bab09e26050b99d4bcd62a7bb515/); base `0xe5854549ccce68a5c54132bd8c8a4411054ca67d` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | base | n/a | 3 deployments: base [`0x81d0837f2b34872ad7945e8d7f74c1b212927d9d`](./contracts/base-8453/0x81d0837f2b34872ad7945e8d7f74c1b212927d9d/); base `0x88b2bb1fed7ebc55eb09e9ee0348a824dcc98d86`; base `0xf908e0cf47507ab85548b069797919f04cc30094` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | base | n/a | 2 deployments: base [`0x856cec5e938fe7eee7f7ad211324e98608eed75a`](./contracts/base-8453/0x856cec5e938fe7eee7f7ad211324e98608eed75a/); base `0xf171ca42ec44002993e549a12521987215ac5962` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | base | n/a | 2 deployments: base [`0x87ea5f8b8d898b3eb457029833d67ffe1c5434d5`](./contracts/base-8453/0x87ea5f8b8d898b3eb457029833d67ffe1c5434d5/); base `0xd6ef57bb41343238d9a2fed7c024975618333acd` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | base | n/a | 2 deployments: base [`0x8b71eee1e6b1a2c7c41a273bb0979f72af3a6c2b`](./contracts/base-8453/0x8b71eee1e6b1a2c7c41a273bb0979f72af3a6c2b/); base `0xb00d1c92e367c2a9210130e756317bee72b7ef1e` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | base | n/a | 2 deployments: base [`0xa2cb7ef27c6285bd15879bf59a8ce512158ef5f4`](./contracts/base-8453/0xa2cb7ef27c6285bd15879bf59a8ce512158ef5f4/); base `0xff3d8eda1571ee6691bbe179f0cf96a86be43736` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | base | n/a | 3 deployments: base [`0xa68901365e12e32db67a0d829d1f928594270207`](./contracts/base-8453/0xa68901365e12e32db67a0d829d1f928594270207/); base `0xd9a5772bc0a2bd20d5411b2c75abd6f868d59607`; base `0xe3df7e82aa80bb91e62b0a50bf66b7dc18bd8d3c` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | base | n/a | 2 deployments: base [`0xadaf299cdac58a4bd3cee7aa51d54e000fdb7c6c`](./contracts/base-8453/0xadaf299cdac58a4bd3cee7aa51d54e000fdb7c6c/); base `0xb39762afb662e0066afcc226d0b03562ac78cde2` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | base | n/a | 2 deployments: base [`0xcf77a6abe65d582616fe6c49c0cdd6d3a5e5ab16`](./contracts/base-8453/0xcf77a6abe65d582616fe6c49c0cdd6d3a5e5ab16/); base `0xf31b9583e97eb9e09917080f7f298c9d269faca3` | ⚠️ Unaudited |
| ProtocolConfig | unknown | ethereum | n/a | 2 deployments: ethereum [`0x44b8ceb5edd92309fe4beed378a8a2f685f9792b`](./contracts/ethereum-1/0x44b8ceb5edd92309fe4beed378a8a2f685f9792b/); ethereum `0x819c0d9b2e7ae43d71ae8c368babc65ea145b021` | ⚠️ Unaudited |
| ProtocolConfig | unknown | ethereum | n/a | 2 deployments: ethereum [`0x758005d2011a5b535fe575917fb65296aef2996d`](./contracts/ethereum-1/0x758005d2011a5b535fe575917fb65296aef2996d/); ethereum `0x85c326d0ae2232653f81c4432b3fcdf9e3d3265b` | ⚠️ Unaudited |
| ProtocolConfig | unknown | base | n/a | 3 deployments: base [`0x0490a477e4fc96392bdf1e2846e3230a1263a5d2`](./contracts/base-8453/0x0490a477e4fc96392bdf1e2846e3230a1263a5d2/); base `0x6de977898cbcc14b3908be085621526b7d33bf51`; base `0xfc0c1eecf60d8dee2c56a1686798e7df4161f3a6` | ⚠️ Unaudited |
| ProtocolConfig | unknown | base | n/a | 3 deployments: base [`0xa88583156ed6f9c75bad93a1a124eb9f69463211`](./contracts/base-8453/0xa88583156ed6f9c75bad93a1a124eb9f69463211/); base `0xde3e999924d12d80aae683dc455951e1d9a5782e`; base `0xe74d7fb249c0684d764701904d854dd0491162d8` | ⚠️ Unaudited |
| ProtocolConfig | unknown | base | n/a | 2 deployments: base [`0xde057a626900f84e4aa141d9317190876c504f99`](./contracts/base-8453/0xde057a626900f84e4aa141d9317190876c504f99/); base `0xefc7e2dc48d5453e446fc8cea44c6d0cf655e118` | ⚠️ Unaudited |
| ProxyAdmin | governance | base | n/a | [`0x8367ca4b7cfe34610ecfb112b2881b2084d148fa`](./contracts/base-8453/0x8367ca4b7cfe34610ecfb112b2881b2084d148fa/) | ⚠️ Unaudited |
| TokenExclusionManager | unknown | ethereum | n/a | [`0xcf77a6abe65d582616fe6c49c0cdd6d3a5e5ab16`](./contracts/ethereum-1/0xcf77a6abe65d582616fe6c49c0cdd6d3a5e5ab16/) | ⚠️ Unaudited |
| VaultProxy | core_logic | base | n/a | [`0x4da07a07f40f877a587acfcdbb0c84c73fdf2e92`](./contracts/base-8453/0x4da07a07f40f877a587acfcdbb0c84c73fdf2e92/) | ⚠️ Unaudited |
| VelvetToken | token | bsc | n/a | [`0x8b194370825e37b33373e74a41009161808c1488`](./contracts/bsc-56/0x8b194370825e37b33373e74a41009161808c1488/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (245)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x345eb2976e71dd6be4376a57ac450b131206c6ee` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x51b7618893719c6b5ed8551b03e53bce027209ef` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x67bfb9fdac132794494ee727d86858ce0cb88e49` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6d59161fd7abce0310741bb638b99ebafdf44715` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x71c7d2d329ef5ff850536e91dfa62474a57edf56` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x779f304cb89a8481ffd28cb8b3c5ca728e5299fd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x86912a902ff8225fc1e7fda9f7694f3b5e60b6f9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x92a89be44e8408b914153d540a7980291cc78a25` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa019e0a384d1b39ce9db82ee77cf3e01df523b62` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb08c55d417c4d54d4f6cd29777b88162a41c27dc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb0c31bb76dc5a4bfca5198ddf4cf23dc4ee25854` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb63515f7d0566a42e6666d44d0967aa2fe46b4c1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xddd401539ffbb44fe49101516edc9a394fb0da00` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe362f0b52feb7a74b61f7c73604fb60b3007118c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xea8799087c8a45166cb9186838c6c6b72c62a5b7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf1acb5fa80ac6f15f6af7465fbeaa9d1c72bfadf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf31b9583e97eb9e09917080f7f298c9d269faca3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x009e5906a89acec3044c7c61c3388c2f66d1eecb` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x019c0ab4e778822c972fa8055e6630b17e0069db` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x02a2d214ceebab493a74236c3ca1f94f7369fadc` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0658ed4631c83f5e78fef5bc3dbc67185eb7184c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x073fb10684e58f36eed3422a7dd95243555ac2df` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x07420a620e1db97b3f2642a51079a11e23c3bf34` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0860b1f746943bb570d89f144ce2a8ae61301cf4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x08c716081f6beec9f3451016608dd8a3c2d929e6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x08c79e0129481f2188348eb41e6500854075b77a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0a12242f81cb50fb19e0031e0a5566947f58c78e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0aa8a6a059103378901ede33a3ecdaeeacd07c87` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0b7e0e663f4a4dcc2493a75178af16cc032323c2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0b9706726c82a4c5fbe36a4b974c5b79c6994feb` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0bdbff8dbefb997b1ff0551862e74f6fdf36f4d3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0be44bcb5f0001e3cb247c30a575e18509bb1c4c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0d238ff952648910f4e40d71dee47ecf9ff860d8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0d6f1c11106808280e385d07665cd9c485d69cc4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0ea488ce685e5f70cb1b499dc95083ca0f1b9206` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x104304ff9aa8d52f67874a3dad32c754553a82de` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1099d962a65a682bd78cf398bf31268c52301441` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x132aee8d15f01d99de8619a86cc5b9ee5c80ac60` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x13c4caa3746822fe00dab2627b1c7370fa068409` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x179dc60df9b2d54e95c4e09756f364f5a6cbce0f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1a79346c914b3164733599cbcfa0fadd5256a584` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1b4198f5150a1ab8c3d0148ec219ad536a1659c8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1c25aeb86e0f2be63b6ffd33c0bb8fabcda903f3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1de930b4fd7cf104598348121b548b41784909fe` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1ded3364d20ff1bf2b3734b6f6a6a030b397d89f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1fb1b6485a2b1b3227d48ed62759771831382644` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x229d97c0f95c9ce18e01bc2f419578d4aa22471d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x24721b2a19ff862d1156ceb89e5b90d5c99c2e9f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x24874d8e0e5e7285ba8ae76dae64ae8b0846fc0a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x27a2ee5b36480285b26782b918c1a069396b8e35` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x27b59107a4764d03a687c1457a29196d24b189d9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x280798b0ae6256b17ce1a25bb70baee1bdd9052e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2818095d006683a74984bfc3b843948e24c3620a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x285a96a4ef5411ef0bf284fbc6d4feabae5c580e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x29e8245976401866eba7f6bf41ce3570b5ff4bf0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2a0ad6c219be645296e15af4098fd37f13035fa0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2e8d0b8087ee120f1661a1cb07c05f94da82dabe` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2f3edbff040deb8357262d93078d6b6c8b4c5fb8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2fb0f105aac7730cb3a21eec880d0261e43b2638` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3016e514357c0b0523bdf5998489cd27aa23a5a2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x326a99f037c8d572a62e10363f7ad69942a969c1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x32f8adf41b1adab07a72eca9497be1bd89d94a5c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x36568b2744414e1cd826fd3b9aef86ecc2806355` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x378e880eb3bf54f968e00d6e52bd7efe4121d7c3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x37a9d10eebc48cb756615af5a0dbb36581e09ea4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x37cbb5036eafc1cb5bfff016dd67d13d1a21f10d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x39f910b080bafb367e7dd51ac129effc7760cc7d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3a62a76d8bfc578d8307bd17662d2c094b1e82be` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3ad87f7bef631e2f2f87ad5d9b96c427ef15076e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3b54534221f41d7fc68f51daa62ce854e781d8ea` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3bb4073e5860fa8737fa24d2c581a880934857a6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3bde64d8ab1a0997fbd9e278f37725b543df775f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3e2b2fe06c65333bfe1b05bda396ef22272b9087` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3fad6802d55dc1b9a7b54fa0ac267b4f3d18031a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x411740e1166170d2a4f6fda7eab13423442d465e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4160dcf1160409125df28005edb96f3294f8590e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x43636f829952e21673b6ace16d0771f1dabbb008` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x44b8ceb5edd92309fe4beed378a8a2f685f9792b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x475d3e79d2c70cde61eb6c9c9b849604834c8fd8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x49bbf83af45d820c84f7efc56b5ad8efb557b96c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4c4d52da99d1b59951f9d68deecda1cb7f33595d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x505a11064bd8719590c5ec4586d1709e3e9bd856` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x51afe04fb6b5e1fa099fec96da68564b9c1a5fda` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x52795ae845cb415682e4f4031b6ce794788253f7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x52f0a377759c3d4ea3aa0040cd5c027a928a55df` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5346ae47163dbd4be467572598a4876c7edd528b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5364aba450b8047f5d3ff2e40028f5e80244d371` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5451388cb45022baf8b2455c84c9aa489b379108` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x567387ba680195330f880c8f59327a9ef8bc0268` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x57cf1090e1dc3cbebb48edf94a202796743f8bcf` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x57d3c67ff92d5f38644bb02770a437b5ca4c51f7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x58d4efd4ba6691f99a8f55016daedf7f20a2b954` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x59036d67cbd30c31feb6155e2b50a98f6ee13d32` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x597f87c7812ccc115db79eb13226e3058c2ee3f0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5abf9b0784fde5f05f704038fc5e2dcbed2c45d0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5cf6276151b218476f8ff0422b0aa41f66842d81` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5e3d30d7d7f6d9c77e14360b5228dd530992c552` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x608ed5b2e72cac3d30fae5747a6d46bd405fb1b0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x60a93385501194c97992754583d39c18af93f0f3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x60d60e19acc9303052764e22aae1b9051b684af3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x61f8a7896259053e42f6bc6b32c89c3e5f52a1db` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x62677a4fe27a0495e81dab37d20f7c000d8d798a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x655a35b878e1040b85b47aa2dec6ecaca364d0ab` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x65844db559a58cefc01f6ae5033527710d0697ba` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x666ae333031d68d35ac7aca187ca7a35ea9e7649` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6b677b169102fc09108551e5603f7f4bb32b9f61` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6bc745a8cdcc6608db467041616bc6ab25445b53` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6bea9db8cf02228b0a9ffe1a1e025ef2f25076cf` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6d135efd33acfb950a1eb18493029d1451235a86` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6d2732dc812c066b0081890bb63c4a669bf30f01` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6fc164173da9a4732b4711cb00c4c94ee956597e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x70f6bbca327ae28caa5bd6e09eb2ee7d413e770d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x71611cbfa3ffdf75bde22761915c68fad7a1772b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x71c7d2d329ef5ff850536e91dfa62474a57edf56` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x71e8337621118841ce48c01b79001b2b3fbe1b3d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x72cd099d8f3cbf235477719bbb041143927949fe` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x72de32f70f46459b3e4815a3d7a9cc6e1a3b1bc9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7319601b1a7ed090ad1da8cb0d5377f076720e8a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x754c210d3026d927c47a7abf24fd15cbe15028e6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x75d3685c5a47807596895f7ba090c3a0eea4d883` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x76d37c670db4ea14fa7ef4859ff65ae3e10937ec` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x77184c03578704e7d76484b680bb3a07d8f428c0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7781e10ef3339306fb4f51177d6e76d895ea0896` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x78c2d2af5d6656bee3146ec298b194ccb28dbe69` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x79935db02c64ffbe6de3f7691be20daa5b67f705` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7d82aae03ac7ea98e4697a3be05c87ca3938b571` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7fa1268a374212881522ee8f590e89844c937ab3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7fca438b619a8092e7af005b8d006810dbb0fe51` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x801e349432e0acf0eddb89e7b5ab0805e602dd28` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x819c0d9b2e7ae43d71ae8c368babc65ea145b021` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x82460e9b1dc22b7da3e25ec0f6ca144e4d6cf03a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x831c2345bfa6b4f976508f5442701bda9c057c38` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x831deb8b3745cda417f6ed18246a65822fc55258` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x86023b9131356d61d309bc8dbb2b8e3a6ef390a3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x866f93d5af5bd771359e2934fbe2a1d803eeb63c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x86e3c112baf83c10b4c6141f9734747a7da55ea1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x88e5cb0307801339489f3beb364af1b051630f38` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8aafca65c7765588f3b66b0a85c6104403fe16b8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8bb7c165323632522f788468a3476bed3e60a8c9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8eca063cecda49abc2eaf797ea2f37d8565dc807` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8fe805f8f95a04d67fdf66a512449bdd783065ac` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x91b09b0777d1e68d975c55bed33148f34830ace4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x91bdeb2e59cfff2e4870fab6711fbe4844c6074b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x92641734f64ead3f25fd842e5218b732f6c2e495` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x933ef04ae87ffc007a51e7d4f550d2f3ddc3bd80` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9560654920ac6cc704f9f7bba145cfda34999d4d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x96443e8345d1ade3bdae6272bfcedbd2157b0c5b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x971135ace2fded26354d1eb02a555e173ddc06d9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x972c16e8fff87bf8338af182cdb8d4010ea7aef4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9861581c14b8d660c7b237bfbba860d6a2e14537` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x99bed4ec9de8c03517ce1b3e34d2ca2bcad0a77d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x99d571ebe3fe3d6b3e272cd1d0c403ec8e17a877` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x99e8be610d5e90291810c41e235717c1fed1e288` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9aa25574f9cd5db0777bdbb0cba1468dda150a1c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9d99ceb66c91fd83b37520137d59054ccfa6634f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9f46653c62c71406b543821ff7a94f38cf44645e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9fbe69705fb20b2788aca441a94acb93c10295f3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa1718c8fccf5d60da98695b1e0a152b9df0f157f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa4d98e48d37799f78eb94a92186044e37565a82c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa55444c5f682095e1b017e14ee8e74bef4a8221c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa665d0714fd933ae32e07683a36106738c6b65ea` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa72edc64c4b712501c1e70b6ec03cfa1e67612ca` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa952e2ba9a7f73f8b0c7fe9fda64227b6bed1117` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xac25ef4c6ccd801f78eaefe3b91136176c82f10d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xac31b1f44503b36128f8e4f865a562afd67852e3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xadc3616da21683c7334194a3f0b2f97df3442622` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xae920ee1720dcaae07839e617cdfb3d6a0581302` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb4881784c897bfa97e8363e8e3b8f12ad64f6141` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb7bfb6c869229f31a3708aa22a49134e584da770` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb812d84bb49e36650d40d4563057c7e6c2b562f8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb81d583fe3fafdb66c85f4940d18958f4c08a5bb` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb8d4a561c1a4cb6048e04cdbb10b02972656679e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb8f645bdb96ef32239bb26d6839ca02dc2fd8314` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbada9995441a2e3f778fe9aece9612131497c04e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbb11dc87400f64a602c2d078fb57d0322eff82a5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbb3e62581ef858f7b4d33e863dbb4345535e9b33` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbb44fe36a4f3de483ce237726478899eda7da239` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbc1b2000f0058f47c6a473f3da6c7f24da0c8683` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbca067e02623a248040cf02685e10d3aabde708c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbdc5e69a36267ff7f3857da8811374ce00611b43` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbddd038ca087e558ecd0d0565adc5d0d75074d43` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbe0d4695e729e76ac48760d87f15b1fd48428713` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbe4dbbaf33bff55dacbbfdd03d50aea710a2a661` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc0f736dcfaa7292c7454b2f4c24c336a8df8a810` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc114dfad8c757530840e445b69a9750d3b46fffa` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc3c552b47d129981b539d6759809b418ec119053` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc6e5a6171ec1b0c3fbd2c9e1ef6e0ab2735bd43f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc806afda7620d8db16e5bbf29edf52d22c0b94e8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc820b98b423ad5290e70365c30d837d57bbae5fd` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc95092db3c7dd101ec305a65c19a41e2ca7ba5f4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc9b901914985d7787e2c05054012c6b7dd34638f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xca2bdeecbc6834d058b779dbc0932e79a01d9fad` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xca2ee3746ada12142f3b530b3ada99fd70a8719c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xca4f1536cd29d42bcbc8211f1b621ba9e817433f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xca77b50f19ea00e55aebc0ba39b0b9eceb10218a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xcb22f1af4cf609d489b89f0bde23046aaea90f0b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xcbfad12423575b01b76cb530aaeaeb7b860dd3ef` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xcc988cdff1b2c1ca38d70a29d09a202cbf6b0d26` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xcd4530df00ea677f97d537eb1e3638ac38f8dfde` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xce5738a16212ccf6853a104f7fa19f8cabc4d650` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xce6fd344d747d1b5c047e53795fd3c577e4016e2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xcf3b291b12401925fb4130707c981f2ca5798527` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xcf734d8a189f4630305ad2c37ab412e056218b40` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xcfd36b5f939c21e4979cace06d5ccf1c489280ff` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd06b00104187a3c7c1ef95a67fed44069d201ca8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd22dfc741b805d828120d66702c545c4c311b106` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd512efe8c2d5e85f351d24b31437c1c0824cb555` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd5c3b450372e4226102d942a547fd8f42f5379b2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd782f866141ccbb2f6a1c5c35ca782e063929b39` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd7cc1260e43b4c214ceb04da46c7c82529b8bccd` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd8c21e15f94039c5951c63ea266fb975bc569b96` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd99432e3e38c119f24aec18ae32769f20f6eead5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xdb81c9b62f0dfe08a9479d45cf2db8fc85a858a6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xdc12c62beb7a414db52acf6f4ea329bfeb226e44` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xdccca63b3ca403f2883237b3acffa67f6618b76f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xdcf19c4de2515b9cbf455de21feb88c3a324818f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xdcfb46cad389b25a1230e7570a403c56b7f46d43` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xdd5aa7b896265ea0c397a6834397e5fc6dd053b6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xddd401539ffbb44fe49101516edc9a394fb0da00` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xde531224aa9ed62db189b650bf72d0ae003998b5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe1dd2b6c0a30ef9d149eb5def6f0073f3900d2c3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe3547adae7aee625c5bfdde1b737bc13ee3731cc` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe3727b28b89a17c4bedb7d2ffd951f64d5be3de2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe52a756c41e1bd3128377df66071a56287badd16` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe5fee99e19f499c327f580fc53466026411a23f3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe6afac8af75459e2f0e053057b4021d4c24b9694` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe7f5efae9aacf8a4d1066152600777dd38c7ca5c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xea6621cd9a230d21020be907d16318a1eb31e1fe` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xea8799087c8a45166cb9186838c6c6b72c62a5b7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xea9fd1804d11759895cbdf3e70b605687d3c6bf1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xeadd9eef6f21eae3d0f1c6031f0f455522a081c2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xeea887d18d66273994ee8b5ba787cfa89cff9ce6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf54e779add021a543d1536f70fa0193ec008e314` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf61c1131fefb4286a46f357c455c75a5119152de` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf64585a58f9254ad2f514fe81a59414b84288c86` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf682615db0ecc9946144d9e6acfc4d7f54db3362` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf6bb940b8af6f7c3e0efd03b232051a514ab214c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf81516cf658ad673316ae1a6edfea8658bbb90e4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf974568b72fb48c7c164f2c7a95a57b2fe7205d3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf9a280ffcd12905b9c299ffc1297b2bf9657e86e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xfcbceb806422210b9a0edd0692f1fb7eaec28f74` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xfcc4092746d425817d5bbe73077de43eaf1e4b5f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xfd5742863015dcd2e5b5701c41d91faf1f3c3c0e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xff6221e856a42201d64c4bae3a4d07396ae6ee7c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xffa059f2285806203d7dff55762469b33cf7e5d4` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Audit_Report_VLVT-V3C_FINAL_20-1.pdf](https://github.com/Velvet-Capital/audits/blob/main/Audit_Report_VLVT-V3C_FINAL_20-1.pdf) | unknown | Audit | 2024-06 | stale | Direct | contract_name | 1 | n/a |
| [Audit_Report_VLVT-V3C_FINAL_20.pdf](https://github.com/Velvet-Capital/audits/blob/main/Audit_Report_VLVT-V3C_FINAL_20.pdf) | unknown | Audit | 2024-06 | stale | Direct | contract_name | 1 | n/a |
| [PeckShield-Audit-Report-Velvet-v1.0_final.pdf](https://github.com/Velvet-Capital/audits/blob/main/PeckShield-Audit-Report-Velvet-v1.0_final.pdf) | PeckShield | Audit | 2022-08 | stale | Direct | contract_name | 2 | high |
| [PeckShield-Audit-Report-VelvetV2-v1.0-2.pdf](https://github.com/Velvet-Capital/audits/blob/main/PeckShield-Audit-Report-VelvetV2-v1.0-2.pdf) | PeckShield | Audit | 2023-10 | stale | Direct | contract_name | 7 | high |
| [PeckShield-Audit-Report-VelvetV4-v1.0-3.pdf](https://github.com/Velvet-Capital/audits/blob/main/PeckShield-Audit-Report-VelvetV4-v1.0-3.pdf) | PeckShield | Audit | 2024-12 | aging | Direct | contract_name | 12 | high |
| [Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf](https://github.com/Velvet-Capital/audits/blob/main/Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf) | unknown | Audit | 2024-07 | stale | Direct | contract_name | 5 | n/a |
| [Velvet_Capital - Final Report-1.pdf](https://github.com/Velvet-Capital/audits/blob/main/Velvet_Capital%20-%20Final%20Report-1.pdf) | unknown | Audit | 2022-09 | stale | Direct | contract_name | 7 | high |
| [Velvet_Capital_V2_Arbitrum_Security_Audit_Report-1.pdf](https://github.com/Velvet-Capital/audits/blob/main/Velvet_Capital_V2_Arbitrum_Security_Audit_Report-1.pdf) | unknown | Audit | 2023-11 | stale | Direct | contract_name | 4 | high |
| [Velvet_Capital_V2_Security_Audit_Report.pdf](https://github.com/Velvet-Capital/audits/blob/main/Velvet_Capital_V2_Security_Audit_Report.pdf) | unknown | Audit | 2023-08 | stale | Direct | contract_name | 7 | high |
| [report-cantinacode-velvet-0807-1.pdf](https://github.com/Velvet-Capital/audits/blob/main/report-cantinacode-velvet-0807-1.pdf) | Spearbit | Audit | 2025-07 | aging | Direct | contract_name | 2 | high |
| [report.md](https://github.com/Velvet-Capital/audits/blob/main/report.md) | unknown | Audit | n/a | unknown | Direct | contract_name | 3 | n/a |
| [PeckShield-Audit-Report-Velvet-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-Velvet-v1.0.pdf) | PeckShield | Audit | 2022-08 | stale | Direct | contract_name | 2 | high |
| [Velvet_Capital_Security_Audit_Report.pdf](https://shellboxes.com/audit/reports/Velvet_Capital_Security_Audit_Report.pdf) | unknown | Audit | 2022-09 | stale | Direct | contract_name | 7 | high |
| [report-cantinacode-velvet-0807 (2).pdf](https://github.com/Velvet-Capital/audits/blob/main/report-cantinacode-velvet-0807%20(2).pdf) | Spearbit | Audit | 2025-07 | aging | Direct | contract_name | 2 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x44b8ceb5edd92309fe4beed378a8a2f685f9792b`](./contracts/ethereum-1/0x44b8ceb5edd92309fe4beed378a8a2f685f9792b/) | ProtocolConfig | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x758005d2011a5b535fe575917fb65296aef2996d`](./contracts/ethereum-1/0x758005d2011a5b535fe575917fb65296aef2996d/) | ProtocolConfig | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0490a477e4fc96392bdf1e2846e3230a1263a5d2`](./contracts/base-8453/0x0490a477e4fc96392bdf1e2846e3230a1263a5d2/) | ProtocolConfig | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xa88583156ed6f9c75bad93a1a124eb9f69463211`](./contracts/base-8453/0xa88583156ed6f9c75bad93a1a124eb9f69463211/) | ProtocolConfig | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xde057a626900f84e4aa141d9317190876c504f99`](./contracts/base-8453/0xde057a626900f84e4aa141d9317190876c504f99/) | ProtocolConfig | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcf77a6abe65d582616fe6c49c0cdd6d3a5e5ab16`](./contracts/ethereum-1/0xcf77a6abe65d582616fe6c49c0cdd6d3a5e5ab16/) | TokenExclusionManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x4da07a07f40f877a587acfcdbb0c84c73fdf2e92`](./contracts/base-8453/0x4da07a07f40f877a587acfcdbb0c84c73fdf2e92/) | VaultProxy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x8b194370825e37b33373e74a41009161808c1488`](./contracts/bsc-56/0x8b194370825e37b33373e74a41009161808c1488/) | VelvetToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 23 |
| upstream | 0 |
| standard_library | 18 |
| needs_review | 259 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=10
- Match method counts: contract_name=10, extraction_exact=52

Fork inheritance lineage and inherited audits are included when available.
