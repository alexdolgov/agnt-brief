# Agentic Audit Brief: Velvet.Capital

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 14 (0 matched; 14 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Velvet.Capital (`velvet.capital`)
- Website: [https://velvet.capital/](https://velvet.capital/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, base, bsc, ethereum
- Contract surface: 307 unique implementations (464 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $12,514,618.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for Velvet.Capital in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 0; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 307 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 70
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/62
- Verified + Unaudited implementations: 62
- Verified by bytecode match: 0
- Unverified implementations: 245
- Unique implementations: 307
- Raw deployments: 464
- Audits discovered: 14 (14 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-07 (aging)
- Audit staleness (calendar age): 0 fresh, 3 aging, 10 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (62)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AssetManagementConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 5 deployments: ethereum `0x27a2ee5b36480285b26782b918c1a069396b8e35`; ethereum `0x9b51c52282ec481742d2a99f181023c50e9eaf0c`; base `0x17e14a8bc2380096f9e9eafea47fe1015502a09d`; base `0x9b6d2ce1f409984be836aaa223ee85494894d29d`; base `0xec7341fbe46e1ba8afa698107a61f45474345c23` | ⚠️ Unaudited |
| DepositBatch | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 9 deployments: ethereum `0x0be44bcb5f0001e3cb247c30a575e18509bb1c4c`; ethereum `0x32c249c81a77cddc2bbecd91d95c833be178e3b6`; ethereum `0xe6afac8af75459e2f0e053057b4021d4c24b9694`; ethereum `0xea9fd1804d11759895cbdf3e70b605687d3c6bf1`; ethereum `0xf674e7bc64436bed53f1fc2796af2bc6d0c08f59`; base `0x6e3e0fe13dae2c42cca7ae2e849b0976e2e63e05`; base `0xa166de6580e6883d02fea20bcee782d04f1aeeb1`; base `0xef521a1d9001ab0438e72f28a55395e9782b6e16`; base `0xfe08616533cbb2db7f6e6086c60b50d3a4031fe6` | ⚠️ Unaudited |
| DepositManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 14 deployments: ethereum `0x1a79346c914b3164733599cbcfa0fadd5256a584`; ethereum `0x271caa64288ad384ba7b2a840a8c97c0b7fe6f06`; ethereum `0x77814d68ff4cae1e5fd520aa0b593c2f5d687653`; ethereum `0xbc1b87cfe21caf3fc6ee16ba19ea859c0a865706`; ethereum `0xcdb6e3f2a51047322b85301cd1e07f83676e6c7f`; ethereum `0xcffd5f47a4fdf3b4a5b1a9af2bdf27c6c45dfc41`; ethereum `0xe12c596c242fd2699b0faf59dd1178a5af7f71af`; ethereum `0xf908e0cf47507ab85548b069797919f04cc30094`; ethereum `0xff6221e856a42201d64c4bae3a4d07396ae6ee7c`; base `0x61f18d6beeb37b0d0f6af0a98bcccf8115598448`; base `0x85d68ce1fec82c04d52780be4657f77418d01ff1`; base `0xb2448bcd81b8fc2119dc645e6ef1e639da6f0c4e`; base `0xe3f8d5a74e28996631a69e17c1e2ff8632965739`; base `0xe4e23120a38c4348d7e22ab23976fa0c4bf6e2ed` | ⚠️ Unaudited |
| EnsoHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x18439b037dcae4a1528ccc3871d695e61653e617`; ethereum `0x93601cd28435bcbf1a397b2c015f268df1bc7dbf`; base `0x6ec2a3a88a72943d2e87ed05cdf25914983ab7f6`; base `0xa9102987611aabd3a4c137b9ad98c027591958f1`; base `0xb048e1adb693667dea6584b48d645901f15d4890`; base `0xba13eb4807cd8e8f564cd0e5f8aa0e43b5fb1280`; base `0xc1d56035f5a9a267b61c6e80e8a69119a893e17c` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xb49892b24f7793a998be0ddcdcd38bc293d5378e`; ethereum `0xd5c3b450372e4226102d942a547fd8f42f5379b2` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x00d4c959cd4f5d372a2cf5b12eb9f5f38d5776b7`; base `0xd2a158889247b32ac09f5636d435521e61cfd8a3` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x085606d8ae07f1b457dc814bdda315078c8711b8`; base `0x7503dcca6cf041894a372c85bc2be9ac1605277c` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x09aa6b96493b9dbe84f6671851a9ccd8e49afe35`; base `0xe6b12d1b359cd3815a3a61cb3c0437caa31a22db` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | base | n/a | 4 deployments: base `0x09ce0a8a2cf05d494f812acbe864373c519e5ae7`; base `0x386736bca2f1a188a8f9729b1f7698c608f6d285`; base `0x89c08741fb11433ff6acf575aa93ac567ac6ce2e`; base `0x90dcd1aed457644b9454d0139f45998e78866f95` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x0a678a644578e65516742ca459f95fdddde2b63d`; base `0x6bec6acb3ea9ce8dcfe0bc4af8d890930607d131` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | base | n/a | 3 deployments: base `0x0a6c29668c2319069cf10be94e30f0752bd321e3`; base `0x9b51c52282ec481742d2a99f181023c50e9eaf0c`; base `0xb0c31bb76dc5a4bfca5198ddf4cf23dc4ee25854` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 4 | base | n/a | 5 deployments: base `0x0fe7c855f0512dc9d48ce5c220e19b8d97d13529`; base `0x19c6d33db269a32aa0806651d9a436ee2180532c`; base `0x321c1562b52a51433a3eac52e3a49dd797c3ac14`; base `0x56b697a5fe6a74027d24597f4cf3101cf82f3ca8`; base `0xce58382f1b1de0f5cee7fa76a2aa9ef2b41d92cb` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x115110a597120cb37e8d801dc23d66c54dc31b03`; base `0xab1a20bba6009b44b106e33d775af734b4bdbfc9` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x145efd0cc8151d7984e4f032fdfe376a746d20ec`; base `0x1b902c25293a28eb1b5c2e2d6aa3f0658e44346a` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x1b0e954d46a9b92fbfaa3b2570c255c03f379123`; base `0x638463b5f19f97f4007aff7bcfe2f1ec1f746a51` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 8 | base | n/a | 9 deployments: base `0x1d0f172ae618ab158dc9d86532ffd04b618cf0a1`; base `0x6822000cc2353f3f13bb3d4c2aa0c005a9cc5dab`; base `0x6952adce6e64bd650024aed2e1559dd674762ae6`; base `0x6f7cdd10c21904f0c6bc1f344a4fab3e59ca224d`; base `0x8176a9a08c10f273291210d4d5097aec3befe17f`; base `0x8d3f1bb4efac949f9e8adf4699810b98dac03463`; base `0xc0a0f2ce613f8a64563e5f94ac7b3b86103854db`; base `0xc132464c40d0c7c57dada6a4dd0df52a035d95ed`; base `0xe45a014ba09f03b6d935102dd8e620940caf05d5` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | base | n/a | 4 deployments: base `0x1fecf4e9be78a03466e91222a1ed461d7bf7f142`; base `0x6decb1b0375c440d6f1fce8d10850a48b05f7c8e`; base `0x9375ff2c6297ac96571b19445e0bb57b2b33dde7`; base `0xcf3be67bff11c110c3bb1469d3db5ec04fd7862d` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x21c652b316c1e1fa72290530eb9d2a2c0725bd9f`; base `0xa019e0a384d1b39ce9db82ee77cf3e01df523b62` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 6 | base | n/a | 7 deployments: base `0x2f692e907810c87ba55a10173eec1dacbb9eb079`; base `0x303e8986d00b224e5d895de129a6ed6db8bb9144`; base `0x689c192bcb053f5b65fb19d96c95e1114197a184`; base `0xb9c9222ae05800b4ce37697bb43f29ec14da8999`; base `0xbd3e9748b4bdb9859deff20fd41b9aa4874c15c4`; base `0xcfc13b0aaf287152cee5b3e6f99d6d0332e42c0c`; base `0xd7b766baf598386c8b9f10343669f6a4366ed91d` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | base | n/a | 3 deployments: base `0x364a1551261e3d58982e7b6deb3bc64b35b8516d`; base `0x6fe178f66c3a339e8be46c7fe30b024247afc0c0`; base `0xf1acb5fa80ac6f15f6af7465fbeaa9d1c72bfadf` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x3b5d968cb08af433b6f92d755d600f1d8152edf4`; base `0xeecd5a79d2bb58cd177b4dec763524501316c435` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x3dfb1d80d774cc39bb0cec9fedc2c1ccfcaeff13`; base `0xe39fa909362cbed01fe81f4ce3c3ac48f98ab782` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x4409080c77d6f5e15cd84321e140c756dc4b75fe`; base `0x99e5d0f32325a1b853703df4f4706c134c31ecd1` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | base | n/a | 4 deployments: base `0x4c572741ee68324259372f5df455afcf9600ef82`; base `0x60939a4480761587f050df94428b93b1b01b2389`; base `0xd402f4b3192d0f844afa0082d74d06a6fc012810`; base `0xd48c1511da77ca4f4064401256f82b40bd2c4542` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x57de05161ea5e8dd0b873128ddefc5fbd6668c7b`; base `0xc5ef809c777fd9a0a8c86dbe94b1ce1451ed20b9` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x68febc6b0a34db33ce4b0402df4285c0e45a8efc`; base `0x6e9036a409c67e805c893be41633dfe6abe1dae5` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x7bdb913cfb28bab09e26050b99d4bcd62a7bb515`; base `0xe5854549ccce68a5c54132bd8c8a4411054ca67d` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | base | n/a | 3 deployments: base `0x81d0837f2b34872ad7945e8d7f74c1b212927d9d`; base `0x88b2bb1fed7ebc55eb09e9ee0348a824dcc98d86`; base `0xf908e0cf47507ab85548b069797919f04cc30094` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x856cec5e938fe7eee7f7ad211324e98608eed75a`; base `0xf171ca42ec44002993e549a12521987215ac5962` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x87ea5f8b8d898b3eb457029833d67ffe1c5434d5`; base `0xd6ef57bb41343238d9a2fed7c024975618333acd` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x8b71eee1e6b1a2c7c41a273bb0979f72af3a6c2b`; base `0xb00d1c92e367c2a9210130e756317bee72b7ef1e` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0xa2cb7ef27c6285bd15879bf59a8ce512158ef5f4`; base `0xff3d8eda1571ee6691bbe179f0cf96a86be43736` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | base | n/a | 3 deployments: base `0xa68901365e12e32db67a0d829d1f928594270207`; base `0xd9a5772bc0a2bd20d5411b2c75abd6f868d59607`; base `0xe3df7e82aa80bb91e62b0a50bf66b7dc18bd8d3c` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0xadaf299cdac58a4bd3cee7aa51d54e000fdb7c6c`; base `0xb39762afb662e0066afcc226d0b03562ac78cde2` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0xcf77a6abe65d582616fe6c49c0cdd6d3a5e5ab16`; base `0xf31b9583e97eb9e09917080f7f298c9d269faca3` | ⚠️ Unaudited |
| FeeModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 10 deployments: ethereum `0x9a090fc08fc2940b47e78106486fa34c7e4e2994`; ethereum `0xa1718c8fccf5d60da98695b1e0a152b9df0f157f`; ethereum `0xfeb3eb96b09b88e71d39f1f44fb9e7cebab7edc1`; base `0x01ff7a36f7cd0e63252e52678412978891d65fdc`; base `0x220d9aa89a85893b0f07baedf6ad162d8644b288`; base `0x24492fb9a8a33fff61d6233a6a686ddd4ef2f410`; base `0x5ca9955264c03e6e7a3288722a4abe6bcfcfdf93`; base `0x64238bd9e91def7f8f1a69fa332136635b54f166`; base `0xc05d2e4bbe442172c649faa1fdc503e627062bd3`; base `0xc8b0d8b6228bfd35b03b54c72e3ded860b2d90e4` | ⚠️ Unaudited |
| MetaAggregatorManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9070c26eb90f9c54ee8d7953dbdcde01c9860e9b` | ⚠️ Unaudited |
| MetaAggregatorSwapContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa62128dbbb8add95f482a2c18ac42878e65b5130` | ⚠️ Unaudited |
| Portfolio | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 12 deployments: ethereum `0x0a6c29668c2319069cf10be94e30f0752bd321e3`; ethereum `0x6d07f7748cec6d4d72b3d719a2cab1527a08dd47`; base `0x05a8a7e66897816b52ecd5c271db6c7988c5f0e2`; base `0x1387b90960216016ee5dd8879bd023adbd1352c2`; base `0x3475dd4b852baf51279a463f0e5f38e5aed2e784`; base `0x4ec6a92383937d2807a799912f88fbe16217c412`; base `0x8452b16473e374240d261f0a77f56534bb932483`; base `0x885858684bd25e2f47c1197bbdbaa98b39b13c26`; base `0xa2fd803afff128b36a417e035cb33b0e04841ae3`; base `0xcbea61e2f8c47f3b584bb61cc74149b95c2f0509`; base `0xceb021049899a4b03be504ee49b0adf1950e25c8`; base `0xe22e87d20b8bb974d77cec144e211a48f1724b75` | ⚠️ Unaudited |
| PortfolioCalculations | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 5 deployments: ethereum `0x24f348db26e5748815e481749ca8300ab94fa6ee`; base `0x18d0392d39d807f37a07a8d5e9177c5aa12a1e07`; base `0x62b2e33b1e4bafa91bf3c84208f2b74a72359adc`; base `0x67e91a66b6353c43dd42c50a850d789e8036ac03`; base `0xd236b6a127893f3368caa5d898ffa8d182cd9c36` | ⚠️ Unaudited |
| PortfolioFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x6d135efd33acfb950a1eb18493029d1451235a86`; ethereum `0xeadd9eef6f21eae3d0f1c6031f0f455522a081c2` | ⚠️ Unaudited |
| PortfolioFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x7c530c9ed5e734964453ce62ae9c4e31a247738b`; ethereum `0xee0420b35b43c13c1c5c42541aa1d385c7a8faee` | ⚠️ Unaudited |
| PortfolioFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x22d44ec3f1f217c97ccf3ca1b500043a66101082`; base `0xadf04f22a0b5548a5124cf692b8c5e6d19c8a0e5` | ⚠️ Unaudited |
| PortfolioFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x5fef75f8720bbabd289012e7ff32514943c1b16d`; base `0xb7993564e537fe3e949f29c09f09b16f456de448` | ⚠️ Unaudited |
| PortfolioFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x850fffff0941dcd6aca6425d43df0c35f51710ca`; base `0xf93659fb357899e092813bc3a2959cedb3282a7f` | ⚠️ Unaudited |
| PortfolioFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0xa1b57604a5e95c4bd2e6a16112a314e52e34039a`; base `0xdb4dfa0dbab3b40598a808895a69d76cf02ef951` | ⚠️ Unaudited |
| PriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x326a99f037c8d572a62e10363f7ad69942a969c1`; ethereum `0x6fe178f66c3a339e8be46c7fe30b024247afc0c0` | ⚠️ Unaudited |
| PriceOracleL2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x608e93ad410f3e3288dfc1a60446925a0fcf967e`; base `0xea600dac5dab562c853af4e40d006ca3e28fd7b6` | ⚠️ Unaudited |
| ProtocolConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x44b8ceb5edd92309fe4beed378a8a2f685f9792b`; ethereum `0x819c0d9b2e7ae43d71ae8c368babc65ea145b021` | ⚠️ Unaudited |
| ProtocolConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x758005d2011a5b535fe575917fb65296aef2996d`; ethereum `0x85c326d0ae2232653f81c4432b3fcdf9e3d3265b` | ⚠️ Unaudited |
| ProtocolConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | base | n/a | 3 deployments: base `0x0490a477e4fc96392bdf1e2846e3230a1263a5d2`; base `0x6de977898cbcc14b3908be085621526b7d33bf51`; base `0xfc0c1eecf60d8dee2c56a1686798e7df4161f3a6` | ⚠️ Unaudited |
| ProtocolConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | base | n/a | 3 deployments: base `0xa88583156ed6f9c75bad93a1a124eb9f69463211`; base `0xde3e999924d12d80aae683dc455951e1d9a5782e`; base `0xe74d7fb249c0684d764701904d854dd0491162d8` | ⚠️ Unaudited |
| ProtocolConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0xde057a626900f84e4aa141d9317190876c504f99`; base `0xefc7e2dc48d5453e446fc8cea44c6d0cf655e118` | ⚠️ Unaudited |
| ProxyAdmin | governance | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8367ca4b7cfe34610ecfb112b2881b2084d148fa` | ⚠️ Unaudited |
| Rebalancing | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 5 deployments: ethereum `0xbb44fe36a4f3de483ce237726478899eda7da239`; base `0x0191bd53527db568bbd87494794e9447e87761ed`; base `0x0827cf431c2f2a4f12584fddb6f01ab0e26ccbe0`; base `0x77b4c4a954b47aa649bf9b5ceefdb09429497644`; base `0x8b33dc1365b0b42576b5d7a9f06b891c13b19365` | ⚠️ Unaudited |
| RebalancingNew | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x49457bde21ec6f925ef62af80430adf3e3e9e696` | ⚠️ Unaudited |
| TokenExclusionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 6 deployments: ethereum `0xcf77a6abe65d582616fe6c49c0cdd6d3a5e5ab16`; ethereum `0xea6621cd9a230d21020be907d16318a1eb31e1fe`; base `0x2069b31cfd7145224da7f6198c31d2a09e5cba9b`; base `0x4f69982392ba29e98c62b07482be190301d12ca7`; base `0xaa4585a3ff8b2b4a82794cf91bef57e69b7e4747`; base `0xb9e4241e65314db826fee5584ba47a28af4a4565` | ⚠️ Unaudited |
| VaultProxy | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4da07a07f40f877a587acfcdbb0c84c73fdf2e92` | ⚠️ Unaudited |
| VelvetToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8b194370825e37b33373e74a41009161808c1488` | ⚠️ Unaudited |
| veVelvet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x0e4a34f4d9469ae13f176ca9003af2bd159bbc41`; base `0xf807db8042c6473df9b96e6be217aa62b3480c64` | ⚠️ Unaudited |
| WithdrawBatch | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 12 deployments: ethereum `0x1fb1b6485a2b1b3227d48ed62759771831382644`; ethereum `0xa45bb9de8341ab05842cc98b28f3652ce0ab2fb9`; ethereum `0xce58382f1b1de0f5cee7fa76a2aa9ef2b41d92cb`; base `0x56e9f143c613c55a065d3222846d79eb251b6f50`; base `0x61a3ada892b07f5934e7c9a43ee2bd6e378802ab`; base `0x64f6b8be21dd2ab09212dc91c07ed8611285a507`; base `0x73ce0b8dac9022bf4f54198ee0068a1c8e8bab5d`; base `0x7c0bf273230c738e80a94db5bcc8228aede1af58`; base `0xa4fb54d90319aa31454aabb0c78a8c7b9b398d5a`; base `0xaead7d9202f3efb73657ca031f645c6b46cfe177`; base `0xb6bf444e8e8f76c4351e611a374ae2e9d0d710cf`; base `0xe38d68f391ba204ac9afda86927babdd163ba86c` | ⚠️ Unaudited |
| WithdrawManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 11 deployments: ethereum `0x0fe7c855f0512dc9d48ce5c220e19b8d97d13529`; ethereum `0x2fb0f105aac7730cb3a21eec880d0261e43b2638`; base `0x0ea4c210e05457e84b9e95eb8dcbd3cd6f03ba44`; base `0x25abf60cf6e8798b9ef0decfdd1d48ff7aa4cf0a`; base `0x2ebd37d18453b17c05c61a06c3ea68827dbb7640`; base `0x4643c0afb9cc91cbeeedb76b5d3419047f57eeff`; base `0x71e99c443d44e451e3bc9898d8dbca0c9bb97639`; base `0x99e9c4d3171afaa3075d0d1ae2bb42b5e53aedab`; base `0xa9452eaf5aa440790e6ca90e38c10b40fb611e59`; base `0xac64c588e16f5f8747c19e3cbcdf5294a03e47df`; base `0xe4057c2307c904923a0898b5799745594f03d41a` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x345eb2976e71dd6be4376a57ac450b131206c6ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x51b7618893719c6b5ed8551b03e53bce027209ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x67bfb9fdac132794494ee727d86858ce0cb88e49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d59161fd7abce0310741bb638b99ebafdf44715` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x71c7d2d329ef5ff850536e91dfa62474a57edf56` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x779f304cb89a8481ffd28cb8b3c5ca728e5299fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x86912a902ff8225fc1e7fda9f7694f3b5e60b6f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x92a89be44e8408b914153d540a7980291cc78a25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa019e0a384d1b39ce9db82ee77cf3e01df523b62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb08c55d417c4d54d4f6cd29777b88162a41c27dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb0c31bb76dc5a4bfca5198ddf4cf23dc4ee25854` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb63515f7d0566a42e6666d44d0967aa2fe46b4c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xddd401539ffbb44fe49101516edc9a394fb0da00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe362f0b52feb7a74b61f7c73604fb60b3007118c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xea8799087c8a45166cb9186838c6c6b72c62a5b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf1acb5fa80ac6f15f6af7465fbeaa9d1c72bfadf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf31b9583e97eb9e09917080f7f298c9d269faca3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x009e5906a89acec3044c7c61c3388c2f66d1eecb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x019c0ab4e778822c972fa8055e6630b17e0069db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x02a2d214ceebab493a74236c3ca1f94f7369fadc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0658ed4631c83f5e78fef5bc3dbc67185eb7184c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x073fb10684e58f36eed3422a7dd95243555ac2df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x07420a620e1db97b3f2642a51079a11e23c3bf34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0860b1f746943bb570d89f144ce2a8ae61301cf4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x08c716081f6beec9f3451016608dd8a3c2d929e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x08c79e0129481f2188348eb41e6500854075b77a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0a12242f81cb50fb19e0031e0a5566947f58c78e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0aa8a6a059103378901ede33a3ecdaeeacd07c87` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0b7e0e663f4a4dcc2493a75178af16cc032323c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0b9706726c82a4c5fbe36a4b974c5b79c6994feb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0bdbff8dbefb997b1ff0551862e74f6fdf36f4d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0be44bcb5f0001e3cb247c30a575e18509bb1c4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0d238ff952648910f4e40d71dee47ecf9ff860d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0d6f1c11106808280e385d07665cd9c485d69cc4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0ea488ce685e5f70cb1b499dc95083ca0f1b9206` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x104304ff9aa8d52f67874a3dad32c754553a82de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1099d962a65a682bd78cf398bf31268c52301441` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x132aee8d15f01d99de8619a86cc5b9ee5c80ac60` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x13c4caa3746822fe00dab2627b1c7370fa068409` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x179dc60df9b2d54e95c4e09756f364f5a6cbce0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1a79346c914b3164733599cbcfa0fadd5256a584` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1b4198f5150a1ab8c3d0148ec219ad536a1659c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1c25aeb86e0f2be63b6ffd33c0bb8fabcda903f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1de930b4fd7cf104598348121b548b41784909fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1ded3364d20ff1bf2b3734b6f6a6a030b397d89f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1fb1b6485a2b1b3227d48ed62759771831382644` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x229d97c0f95c9ce18e01bc2f419578d4aa22471d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x24721b2a19ff862d1156ceb89e5b90d5c99c2e9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x24874d8e0e5e7285ba8ae76dae64ae8b0846fc0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x27a2ee5b36480285b26782b918c1a069396b8e35` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x27b59107a4764d03a687c1457a29196d24b189d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x280798b0ae6256b17ce1a25bb70baee1bdd9052e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2818095d006683a74984bfc3b843948e24c3620a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x285a96a4ef5411ef0bf284fbc6d4feabae5c580e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x29e8245976401866eba7f6bf41ce3570b5ff4bf0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2a0ad6c219be645296e15af4098fd37f13035fa0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2e8d0b8087ee120f1661a1cb07c05f94da82dabe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2f3edbff040deb8357262d93078d6b6c8b4c5fb8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2fb0f105aac7730cb3a21eec880d0261e43b2638` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3016e514357c0b0523bdf5998489cd27aa23a5a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x326a99f037c8d572a62e10363f7ad69942a969c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x32f8adf41b1adab07a72eca9497be1bd89d94a5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x36568b2744414e1cd826fd3b9aef86ecc2806355` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x378e880eb3bf54f968e00d6e52bd7efe4121d7c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x37a9d10eebc48cb756615af5a0dbb36581e09ea4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x37cbb5036eafc1cb5bfff016dd67d13d1a21f10d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x39f910b080bafb367e7dd51ac129effc7760cc7d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3a62a76d8bfc578d8307bd17662d2c094b1e82be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3ad87f7bef631e2f2f87ad5d9b96c427ef15076e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3b54534221f41d7fc68f51daa62ce854e781d8ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3bb4073e5860fa8737fa24d2c581a880934857a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3bde64d8ab1a0997fbd9e278f37725b543df775f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3e2b2fe06c65333bfe1b05bda396ef22272b9087` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3fad6802d55dc1b9a7b54fa0ac267b4f3d18031a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x411740e1166170d2a4f6fda7eab13423442d465e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4160dcf1160409125df28005edb96f3294f8590e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x43636f829952e21673b6ace16d0771f1dabbb008` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x44b8ceb5edd92309fe4beed378a8a2f685f9792b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x475d3e79d2c70cde61eb6c9c9b849604834c8fd8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x49bbf83af45d820c84f7efc56b5ad8efb557b96c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4c4d52da99d1b59951f9d68deecda1cb7f33595d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x505a11064bd8719590c5ec4586d1709e3e9bd856` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x51afe04fb6b5e1fa099fec96da68564b9c1a5fda` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x52795ae845cb415682e4f4031b6ce794788253f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x52f0a377759c3d4ea3aa0040cd5c027a928a55df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5346ae47163dbd4be467572598a4876c7edd528b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5364aba450b8047f5d3ff2e40028f5e80244d371` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5451388cb45022baf8b2455c84c9aa489b379108` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x567387ba680195330f880c8f59327a9ef8bc0268` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x57cf1090e1dc3cbebb48edf94a202796743f8bcf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x57d3c67ff92d5f38644bb02770a437b5ca4c51f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x58d4efd4ba6691f99a8f55016daedf7f20a2b954` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x59036d67cbd30c31feb6155e2b50a98f6ee13d32` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x597f87c7812ccc115db79eb13226e3058c2ee3f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5abf9b0784fde5f05f704038fc5e2dcbed2c45d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5cf6276151b218476f8ff0422b0aa41f66842d81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5e3d30d7d7f6d9c77e14360b5228dd530992c552` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x608ed5b2e72cac3d30fae5747a6d46bd405fb1b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x60a93385501194c97992754583d39c18af93f0f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x60d60e19acc9303052764e22aae1b9051b684af3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x61f8a7896259053e42f6bc6b32c89c3e5f52a1db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x62677a4fe27a0495e81dab37d20f7c000d8d798a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x655a35b878e1040b85b47aa2dec6ecaca364d0ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x65844db559a58cefc01f6ae5033527710d0697ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x666ae333031d68d35ac7aca187ca7a35ea9e7649` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6b677b169102fc09108551e5603f7f4bb32b9f61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6bc745a8cdcc6608db467041616bc6ab25445b53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6bea9db8cf02228b0a9ffe1a1e025ef2f25076cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6d135efd33acfb950a1eb18493029d1451235a86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6d2732dc812c066b0081890bb63c4a669bf30f01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6fc164173da9a4732b4711cb00c4c94ee956597e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x70f6bbca327ae28caa5bd6e09eb2ee7d413e770d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x71611cbfa3ffdf75bde22761915c68fad7a1772b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x71c7d2d329ef5ff850536e91dfa62474a57edf56` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x71e8337621118841ce48c01b79001b2b3fbe1b3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x72cd099d8f3cbf235477719bbb041143927949fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x72de32f70f46459b3e4815a3d7a9cc6e1a3b1bc9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7319601b1a7ed090ad1da8cb0d5377f076720e8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x754c210d3026d927c47a7abf24fd15cbe15028e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x75d3685c5a47807596895f7ba090c3a0eea4d883` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x76d37c670db4ea14fa7ef4859ff65ae3e10937ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x77184c03578704e7d76484b680bb3a07d8f428c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7781e10ef3339306fb4f51177d6e76d895ea0896` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x78c2d2af5d6656bee3146ec298b194ccb28dbe69` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x79935db02c64ffbe6de3f7691be20daa5b67f705` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7d82aae03ac7ea98e4697a3be05c87ca3938b571` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7fa1268a374212881522ee8f590e89844c937ab3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7fca438b619a8092e7af005b8d006810dbb0fe51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x801e349432e0acf0eddb89e7b5ab0805e602dd28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x819c0d9b2e7ae43d71ae8c368babc65ea145b021` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x82460e9b1dc22b7da3e25ec0f6ca144e4d6cf03a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x831c2345bfa6b4f976508f5442701bda9c057c38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x831deb8b3745cda417f6ed18246a65822fc55258` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x86023b9131356d61d309bc8dbb2b8e3a6ef390a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x866f93d5af5bd771359e2934fbe2a1d803eeb63c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x86e3c112baf83c10b4c6141f9734747a7da55ea1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x88e5cb0307801339489f3beb364af1b051630f38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8aafca65c7765588f3b66b0a85c6104403fe16b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8bb7c165323632522f788468a3476bed3e60a8c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8eca063cecda49abc2eaf797ea2f37d8565dc807` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8fe805f8f95a04d67fdf66a512449bdd783065ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x91b09b0777d1e68d975c55bed33148f34830ace4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x91bdeb2e59cfff2e4870fab6711fbe4844c6074b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x92641734f64ead3f25fd842e5218b732f6c2e495` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x933ef04ae87ffc007a51e7d4f550d2f3ddc3bd80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9560654920ac6cc704f9f7bba145cfda34999d4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x96443e8345d1ade3bdae6272bfcedbd2157b0c5b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x971135ace2fded26354d1eb02a555e173ddc06d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x972c16e8fff87bf8338af182cdb8d4010ea7aef4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9861581c14b8d660c7b237bfbba860d6a2e14537` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x99bed4ec9de8c03517ce1b3e34d2ca2bcad0a77d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x99d571ebe3fe3d6b3e272cd1d0c403ec8e17a877` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x99e8be610d5e90291810c41e235717c1fed1e288` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9aa25574f9cd5db0777bdbb0cba1468dda150a1c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9d99ceb66c91fd83b37520137d59054ccfa6634f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9f46653c62c71406b543821ff7a94f38cf44645e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9fbe69705fb20b2788aca441a94acb93c10295f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa1718c8fccf5d60da98695b1e0a152b9df0f157f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa4d98e48d37799f78eb94a92186044e37565a82c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa55444c5f682095e1b017e14ee8e74bef4a8221c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa665d0714fd933ae32e07683a36106738c6b65ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa72edc64c4b712501c1e70b6ec03cfa1e67612ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa952e2ba9a7f73f8b0c7fe9fda64227b6bed1117` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xac25ef4c6ccd801f78eaefe3b91136176c82f10d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xac31b1f44503b36128f8e4f865a562afd67852e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xadc3616da21683c7334194a3f0b2f97df3442622` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xae920ee1720dcaae07839e617cdfb3d6a0581302` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb4881784c897bfa97e8363e8e3b8f12ad64f6141` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb7bfb6c869229f31a3708aa22a49134e584da770` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb812d84bb49e36650d40d4563057c7e6c2b562f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb81d583fe3fafdb66c85f4940d18958f4c08a5bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb8d4a561c1a4cb6048e04cdbb10b02972656679e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb8f645bdb96ef32239bb26d6839ca02dc2fd8314` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbada9995441a2e3f778fe9aece9612131497c04e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbb11dc87400f64a602c2d078fb57d0322eff82a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbb3e62581ef858f7b4d33e863dbb4345535e9b33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbb44fe36a4f3de483ce237726478899eda7da239` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbc1b2000f0058f47c6a473f3da6c7f24da0c8683` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbca067e02623a248040cf02685e10d3aabde708c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbdc5e69a36267ff7f3857da8811374ce00611b43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbddd038ca087e558ecd0d0565adc5d0d75074d43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbe0d4695e729e76ac48760d87f15b1fd48428713` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbe4dbbaf33bff55dacbbfdd03d50aea710a2a661` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc0f736dcfaa7292c7454b2f4c24c336a8df8a810` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc114dfad8c757530840e445b69a9750d3b46fffa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc3c552b47d129981b539d6759809b418ec119053` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc6e5a6171ec1b0c3fbd2c9e1ef6e0ab2735bd43f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc806afda7620d8db16e5bbf29edf52d22c0b94e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc820b98b423ad5290e70365c30d837d57bbae5fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc95092db3c7dd101ec305a65c19a41e2ca7ba5f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc9b901914985d7787e2c05054012c6b7dd34638f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xca2bdeecbc6834d058b779dbc0932e79a01d9fad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xca2ee3746ada12142f3b530b3ada99fd70a8719c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xca4f1536cd29d42bcbc8211f1b621ba9e817433f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xca77b50f19ea00e55aebc0ba39b0b9eceb10218a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcb22f1af4cf609d489b89f0bde23046aaea90f0b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcbfad12423575b01b76cb530aaeaeb7b860dd3ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcc988cdff1b2c1ca38d70a29d09a202cbf6b0d26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcd4530df00ea677f97d537eb1e3638ac38f8dfde` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xce5738a16212ccf6853a104f7fa19f8cabc4d650` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xce6fd344d747d1b5c047e53795fd3c577e4016e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcf3b291b12401925fb4130707c981f2ca5798527` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcf734d8a189f4630305ad2c37ab412e056218b40` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcfd36b5f939c21e4979cace06d5ccf1c489280ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd06b00104187a3c7c1ef95a67fed44069d201ca8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd22dfc741b805d828120d66702c545c4c311b106` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd512efe8c2d5e85f351d24b31437c1c0824cb555` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd5c3b450372e4226102d942a547fd8f42f5379b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd782f866141ccbb2f6a1c5c35ca782e063929b39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd7cc1260e43b4c214ceb04da46c7c82529b8bccd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd8c21e15f94039c5951c63ea266fb975bc569b96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd99432e3e38c119f24aec18ae32769f20f6eead5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdb81c9b62f0dfe08a9479d45cf2db8fc85a858a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdc12c62beb7a414db52acf6f4ea329bfeb226e44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdccca63b3ca403f2883237b3acffa67f6618b76f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdcf19c4de2515b9cbf455de21feb88c3a324818f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdcfb46cad389b25a1230e7570a403c56b7f46d43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdd5aa7b896265ea0c397a6834397e5fc6dd053b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xddd401539ffbb44fe49101516edc9a394fb0da00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xde531224aa9ed62db189b650bf72d0ae003998b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe1dd2b6c0a30ef9d149eb5def6f0073f3900d2c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe3547adae7aee625c5bfdde1b737bc13ee3731cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe3727b28b89a17c4bedb7d2ffd951f64d5be3de2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe52a756c41e1bd3128377df66071a56287badd16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe5fee99e19f499c327f580fc53466026411a23f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe6afac8af75459e2f0e053057b4021d4c24b9694` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe7f5efae9aacf8a4d1066152600777dd38c7ca5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xea6621cd9a230d21020be907d16318a1eb31e1fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xea8799087c8a45166cb9186838c6c6b72c62a5b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xea9fd1804d11759895cbdf3e70b605687d3c6bf1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xeadd9eef6f21eae3d0f1c6031f0f455522a081c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xeea887d18d66273994ee8b5ba787cfa89cff9ce6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf54e779add021a543d1536f70fa0193ec008e314` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf61c1131fefb4286a46f357c455c75a5119152de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf64585a58f9254ad2f514fe81a59414b84288c86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf682615db0ecc9946144d9e6acfc4d7f54db3362` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf6bb940b8af6f7c3e0efd03b232051a514ab214c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf81516cf658ad673316ae1a6edfea8658bbb90e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf974568b72fb48c7c164f2c7a95a57b2fe7205d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf9a280ffcd12905b9c299ffc1297b2bf9657e86e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfcbceb806422210b9a0edd0692f1fb7eaec28f74` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfcc4092746d425817d5bbe73077de43eaf1e4b5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfd5742863015dcd2e5b5701c41d91faf1f3c3c0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xff6221e856a42201d64c4bae3a4d07396ae6ee7c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xffa059f2285806203d7dff55762469b33cf7e5d4` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 436
- Live contracts: 0
- Unknown liveness contracts: 436
- Source-verified contracts: 169
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: candidate review=88, contamination review=3, source verified unclassified=78, unverified unclassified=267

Showing first 200 of 436 contracts. The complete deployer expansion list is in `brief.json`.

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| base | candidate review | ERC1967Proxy<br>`0x0490a477e4fc96392bdf1e2846e3230a1263a5d2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | candidate review | ERC1967Proxy<br>`0x085606d8ae07f1b457dc814bdda315078c8711b8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | candidate review | ERC1967Proxy<br>`0x09ce0a8a2cf05d494f812acbe864373c519e5ae7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | candidate review | ERC1967Proxy<br>`0x0a6c29668c2319069cf10be94e30f0752bd321e3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | candidate review | ERC1967Proxy<br>`0x0fe7c855f0512dc9d48ce5c220e19b8d97d13529` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | candidate review | ERC1967Proxy<br>`0x19c6d33db269a32aa0806651d9a436ee2180532c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | candidate review | ERC1967Proxy<br>`0x1b902c25293a28eb1b5c2e2d6aa3f0658e44346a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | candidate review | ERC1967Proxy<br>`0x1d0f172ae618ab158dc9d86532ffd04b618cf0a1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | candidate review | ERC1967Proxy<br>`0x1fecf4e9be78a03466e91222a1ed461d7bf7f142` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | candidate review | ERC1967Proxy<br>`0x2f692e907810c87ba55a10173eec1dacbb9eb079` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | candidate review | ERC1967Proxy<br>`0x303e8986d00b224e5d895de129a6ed6db8bb9144` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | candidate review | ERC1967Proxy<br>`0x321c1562b52a51433a3eac52e3a49dd797c3ac14` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | candidate review | ERC1967Proxy<br>`0x364a1551261e3d58982e7b6deb3bc64b35b8516d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | candidate review | ERC1967Proxy<br>`0x3dfb1d80d774cc39bb0cec9fedc2c1ccfcaeff13` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | candidate review | ERC1967Proxy<br>`0x4409080c77d6f5e15cd84321e140c756dc4b75fe` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | candidate review | ERC1967Proxy<br>`0x4c572741ee68324259372f5df455afcf9600ef82` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | candidate review | ERC1967Proxy<br>`0x56b697a5fe6a74027d24597f4cf3101cf82f3ca8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | candidate review | ERC1967Proxy<br>`0x57de05161ea5e8dd0b873128ddefc5fbd6668c7b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | candidate review | ERC1967Proxy<br>`0x60939a4480761587f050df94428b93b1b01b2389` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | candidate review | ERC1967Proxy<br>`0x638463b5f19f97f4007aff7bcfe2f1ec1f746a51` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | candidate review | ERC1967Proxy<br>`0x6822000cc2353f3f13bb3d4c2aa0c005a9cc5dab` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | candidate review | ERC1967Proxy<br>`0x6952adce6e64bd650024aed2e1559dd674762ae6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | candidate review | ERC1967Proxy<br>`0x6bec6acb3ea9ce8dcfe0bc4af8d890930607d131` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | candidate review | ERC1967Proxy<br>`0x6de977898cbcc14b3908be085621526b7d33bf51` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | candidate review | ERC1967Proxy<br>`0x6decb1b0375c440d6f1fce8d10850a48b05f7c8e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | candidate review | ERC1967Proxy<br>`0x6e9036a409c67e805c893be41633dfe6abe1dae5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | candidate review | ERC1967Proxy<br>`0x6f7cdd10c21904f0c6bc1f344a4fab3e59ca224d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | candidate review | ERC1967Proxy<br>`0x81d0837f2b34872ad7945e8d7f74c1b212927d9d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | candidate review | ERC1967Proxy<br>`0x88b2bb1fed7ebc55eb09e9ee0348a824dcc98d86` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | candidate review | ERC1967Proxy<br>`0x89c08741fb11433ff6acf575aa93ac567ac6ce2e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | candidate review | ERC1967Proxy<br>`0x8b71eee1e6b1a2c7c41a273bb0979f72af3a6c2b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | candidate review | ERC1967Proxy<br>`0x8d3f1bb4efac949f9e8adf4699810b98dac03463` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | candidate review | ERC1967Proxy<br>`0x90dcd1aed457644b9454d0139f45998e78866f95` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | candidate review | ERC1967Proxy<br>`0xa019e0a384d1b39ce9db82ee77cf3e01df523b62` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | candidate review | ERC1967Proxy<br>`0xa1b57604a5e95c4bd2e6a16112a314e52e34039a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | candidate review | ERC1967Proxy<br>`0xa2cb7ef27c6285bd15879bf59a8ce512158ef5f4` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | candidate review | ERC1967Proxy<br>`0xa68901365e12e32db67a0d829d1f928594270207` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | candidate review | ERC1967Proxy<br>`0xa88583156ed6f9c75bad93a1a124eb9f69463211` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | candidate review | ERC1967Proxy<br>`0xab1a20bba6009b44b106e33d775af734b4bdbfc9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | candidate review | ERC1967Proxy<br>`0xadaf299cdac58a4bd3cee7aa51d54e000fdb7c6c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | candidate review | ERC1967Proxy<br>`0xadf04f22a0b5548a5124cf692b8c5e6d19c8a0e5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | candidate review | ERC1967Proxy<br>`0xb0c31bb76dc5a4bfca5198ddf4cf23dc4ee25854` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | candidate review | ERC1967Proxy<br>`0xb7993564e537fe3e949f29c09f09b16f456de448` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | candidate review | ERC1967Proxy<br>`0xb9c9222ae05800b4ce37697bb43f29ec14da8999` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | candidate review | ERC1967Proxy<br>`0xbd3e9748b4bdb9859deff20fd41b9aa4874c15c4` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | candidate review | ERC1967Proxy<br>`0xc0a0f2ce613f8a64563e5f94ac7b3b86103854db` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | candidate review | ERC1967Proxy<br>`0xc132464c40d0c7c57dada6a4dd0df52a035d95ed` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | candidate review | ERC1967Proxy<br>`0xcf3be67bff11c110c3bb1469d3db5ec04fd7862d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | candidate review | ERC1967Proxy<br>`0xcfc13b0aaf287152cee5b3e6f99d6d0332e42c0c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | candidate review | ERC1967Proxy<br>`0xd2a158889247b32ac09f5636d435521e61cfd8a3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | candidate review | ERC1967Proxy<br>`0xd48c1511da77ca4f4064401256f82b40bd2c4542` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | candidate review | ERC1967Proxy<br>`0xd6ef57bb41343238d9a2fed7c024975618333acd` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | candidate review | ERC1967Proxy<br>`0xd7b766baf598386c8b9f10343669f6a4366ed91d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | candidate review | ERC1967Proxy<br>`0xde057a626900f84e4aa141d9317190876c504f99` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | candidate review | ERC1967Proxy<br>`0xe3df7e82aa80bb91e62b0a50bf66b7dc18bd8d3c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | candidate review | ERC1967Proxy<br>`0xe45a014ba09f03b6d935102dd8e620940caf05d5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | candidate review | ERC1967Proxy<br>`0xe5854549ccce68a5c54132bd8c8a4411054ca67d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | candidate review | ERC1967Proxy<br>`0xe6b12d1b359cd3815a3a61cb3c0437caa31a22db` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | candidate review | ERC1967Proxy<br>`0xe74d7fb249c0684d764701904d854dd0491162d8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | candidate review | ERC1967Proxy<br>`0xeecd5a79d2bb58cd177b4dec763524501316c435` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | candidate review | ERC1967Proxy<br>`0xf171ca42ec44002993e549a12521987215ac5962` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | candidate review | ERC1967Proxy<br>`0xf1acb5fa80ac6f15f6af7465fbeaa9d1c72bfadf` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | candidate review | ERC1967Proxy<br>`0xf31b9583e97eb9e09917080f7f298c9d269faca3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | candidate review | ERC1967Proxy<br>`0xf93659fb357899e092813bc3a2959cedb3282a7f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | candidate review | PortfolioFactory<br>`0x22d44ec3f1f217c97ccf3ca1b500043a66101082` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | candidate review | PortfolioFactory<br>`0x5fef75f8720bbabd289012e7ff32514943c1b16d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | candidate review | PortfolioFactory<br>`0x850fffff0941dcd6aca6425d43df0c35f51710ca` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | candidate review | PortfolioFactory<br>`0xdb4dfa0dbab3b40598a808895a69d76cf02ef951` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | candidate review | PriceOracleL2<br>`0x608e93ad410f3e3288dfc1a60446925a0fcf967e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | candidate review | PriceOracleL2<br>`0xea600dac5dab562c853af4e40d006ca3e28fd7b6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | candidate review | Rebalancing<br>`0x0191bd53527db568bbd87494794e9447e87761ed` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | candidate review | Rebalancing<br>`0x0827cf431c2f2a4f12584fddb6f01ab0e26ccbe0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | candidate review | Rebalancing<br>`0x77b4c4a954b47aa649bf9b5ceefdb09429497644` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | candidate review | Rebalancing<br>`0x8b33dc1365b0b42576b5d7a9f06b891c13b19365` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | candidate review | TransparentUpgradeableProxy<br>`0xf807db8042c6473df9b96e6be217aa62b3480c64` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | candidate review | veVelvet<br>`0x0e4a34f4d9469ae13f176ca9003af2bd159bbc41` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | contamination review | MetaAggregatorManager<br>`0x9070c26eb90f9c54ee8d7953dbdcde01c9860e9b` | non_address_book | unknown | unknown | verified | n/a | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | contamination review | MetaAggregatorSwapContract<br>`0xa62128dbbb8add95f482a2c18ac42878e65b5130` | non_address_book | unknown | unknown | verified | n/a | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | contamination review | PortfolioCalculations<br>`0x18d0392d39d807f37a07a8d5e9177c5aa12a1e07` | non_address_book | unknown | unknown | verified | n/a | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | source verified unclassified | AssetManagementConfig<br>`0x17e14a8bc2380096f9e9eafea47fe1015502a09d` | non_address_book | unknown | unknown | verified | n/a | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | source verified unclassified | AssetManagementConfig<br>`0x9b6d2ce1f409984be836aaa223ee85494894d29d` | non_address_book | unknown | unknown | verified | n/a | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | source verified unclassified | AssetManagementConfig<br>`0xec7341fbe46e1ba8afa698107a61f45474345c23` | non_address_book | unknown | unknown | verified | n/a | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | source verified unclassified | DepositBatch<br>`0xa166de6580e6883d02fea20bcee782d04f1aeeb1` | non_address_book | unknown | unknown | verified | n/a | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | source verified unclassified | DepositBatch<br>`0xef521a1d9001ab0438e72f28a55395e9782b6e16` | non_address_book | unknown | unknown | verified | n/a | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | source verified unclassified | DepositManager<br>`0x85d68ce1fec82c04d52780be4657f77418d01ff1` | non_address_book | unknown | unknown | verified | n/a | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | source verified unclassified | DepositManager<br>`0xb2448bcd81b8fc2119dc645e6ef1e639da6f0c4e` | non_address_book | unknown | unknown | verified | n/a | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | source verified unclassified | DepositManager<br>`0xe3f8d5a74e28996631a69e17c1e2ff8632965739` | non_address_book | unknown | unknown | verified | n/a | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | source verified unclassified | EnsoHandler<br>`0x6ec2a3a88a72943d2e87ed05cdf25914983ab7f6` | non_address_book | unknown | unknown | verified | n/a | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | source verified unclassified | EnsoHandler<br>`0xa9102987611aabd3a4c137b9ad98c027591958f1` | non_address_book | unknown | unknown | verified | n/a | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | source verified unclassified | EnsoHandler<br>`0xb048e1adb693667dea6584b48d645901f15d4890` | non_address_book | unknown | unknown | verified | n/a | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | source verified unclassified | EnsoHandler<br>`0xba13eb4807cd8e8f564cd0e5f8aa0e43b5fb1280` | non_address_book | unknown | unknown | verified | n/a | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | source verified unclassified | EnsoHandler<br>`0xc1d56035f5a9a267b61c6e80e8a69119a893e17c` | non_address_book | unknown | unknown | verified | n/a | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | source verified unclassified | FeeModule<br>`0x01ff7a36f7cd0e63252e52678412978891d65fdc` | non_address_book | unknown | unknown | verified | n/a | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | source verified unclassified | FeeModule<br>`0x220d9aa89a85893b0f07baedf6ad162d8644b288` | non_address_book | unknown | unknown | verified | n/a | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | source verified unclassified | FeeModule<br>`0x24492fb9a8a33fff61d6233a6a686ddd4ef2f410` | non_address_book | unknown | unknown | verified | n/a | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | source verified unclassified | FeeModule<br>`0x5ca9955264c03e6e7a3288722a4abe6bcfcfdf93` | non_address_book | unknown | unknown | verified | n/a | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | source verified unclassified | FeeModule<br>`0x64238bd9e91def7f8f1a69fa332136635b54f166` | non_address_book | unknown | unknown | verified | n/a | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | source verified unclassified | FeeModule<br>`0xc05d2e4bbe442172c649faa1fdc503e627062bd3` | non_address_book | unknown | unknown | verified | n/a | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | source verified unclassified | FeeModule<br>`0xc8b0d8b6228bfd35b03b54c72e3ded860b2d90e4` | non_address_book | unknown | unknown | verified | n/a | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | source verified unclassified | Portfolio<br>`0x05a8a7e66897816b52ecd5c271db6c7988c5f0e2` | non_address_book | unknown | unknown | verified | n/a | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | source verified unclassified | Portfolio<br>`0x1387b90960216016ee5dd8879bd023adbd1352c2` | non_address_book | unknown | unknown | verified | n/a | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | source verified unclassified | Portfolio<br>`0x3475dd4b852baf51279a463f0e5f38e5aed2e784` | non_address_book | unknown | unknown | verified | n/a | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | source verified unclassified | Portfolio<br>`0x4ec6a92383937d2807a799912f88fbe16217c412` | non_address_book | unknown | unknown | verified | n/a | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | source verified unclassified | Portfolio<br>`0x8452b16473e374240d261f0a77f56534bb932483` | non_address_book | unknown | unknown | verified | n/a | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | source verified unclassified | Portfolio<br>`0x885858684bd25e2f47c1197bbdbaa98b39b13c26` | non_address_book | unknown | unknown | verified | n/a | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | source verified unclassified | Portfolio<br>`0xa2fd803afff128b36a417e035cb33b0e04841ae3` | non_address_book | unknown | unknown | verified | n/a | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | source verified unclassified | Portfolio<br>`0xcbea61e2f8c47f3b584bb61cc74149b95c2f0509` | non_address_book | unknown | unknown | verified | n/a | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | source verified unclassified | Portfolio<br>`0xceb021049899a4b03be504ee49b0adf1950e25c8` | non_address_book | unknown | unknown | verified | n/a | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | source verified unclassified | Portfolio<br>`0xe22e87d20b8bb974d77cec144e211a48f1724b75` | non_address_book | unknown | unknown | verified | n/a | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | source verified unclassified | PortfolioCalculations<br>`0x62b2e33b1e4bafa91bf3c84208f2b74a72359adc` | non_address_book | unknown | unknown | verified | n/a | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | source verified unclassified | PortfolioCalculations<br>`0x67e91a66b6353c43dd42c50a850d789e8036ac03` | non_address_book | unknown | unknown | verified | n/a | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | source verified unclassified | PortfolioCalculations<br>`0xd236b6a127893f3368caa5d898ffa8d182cd9c36` | non_address_book | unknown | unknown | verified | n/a | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | source verified unclassified | ProtocolConfig<br>`0xde3e999924d12d80aae683dc455951e1d9a5782e` | non_address_book | unknown | unknown | verified | n/a | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | source verified unclassified | ProtocolConfig<br>`0xefc7e2dc48d5453e446fc8cea44c6d0cf655e118` | non_address_book | unknown | unknown | verified | n/a | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | source verified unclassified | ProtocolConfig<br>`0xfc0c1eecf60d8dee2c56a1686798e7df4161f3a6` | non_address_book | unknown | unknown | verified | n/a | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | source verified unclassified | RebalancingNew<br>`0x49457bde21ec6f925ef62af80430adf3e3e9e696` | non_address_book | unknown | unknown | verified | n/a | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | source verified unclassified | TokenExclusionManager<br>`0x2069b31cfd7145224da7f6198c31d2a09e5cba9b` | non_address_book | unknown | unknown | verified | n/a | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | source verified unclassified | TokenExclusionManager<br>`0x4f69982392ba29e98c62b07482be190301d12ca7` | non_address_book | unknown | unknown | verified | n/a | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | source verified unclassified | TokenExclusionManager<br>`0xaa4585a3ff8b2b4a82794cf91bef57e69b7e4747` | non_address_book | unknown | unknown | verified | n/a | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | source verified unclassified | TokenExclusionManager<br>`0xb9e4241e65314db826fee5584ba47a28af4a4565` | non_address_book | unknown | unknown | verified | n/a | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | source verified unclassified | WithdrawBatch<br>`0x56e9f143c613c55a065d3222846d79eb251b6f50` | non_address_book | unknown | unknown | verified | n/a | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | source verified unclassified | WithdrawBatch<br>`0x61a3ada892b07f5934e7c9a43ee2bd6e378802ab` | non_address_book | unknown | unknown | verified | n/a | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | source verified unclassified | WithdrawBatch<br>`0x64f6b8be21dd2ab09212dc91c07ed8611285a507` | non_address_book | unknown | unknown | verified | n/a | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | source verified unclassified | WithdrawBatch<br>`0x73ce0b8dac9022bf4f54198ee0068a1c8e8bab5d` | non_address_book | unknown | unknown | verified | n/a | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | source verified unclassified | WithdrawBatch<br>`0x7c0bf273230c738e80a94db5bcc8228aede1af58` | non_address_book | unknown | unknown | verified | n/a | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | source verified unclassified | WithdrawBatch<br>`0xa4fb54d90319aa31454aabb0c78a8c7b9b398d5a` | non_address_book | unknown | unknown | verified | n/a | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | source verified unclassified | WithdrawBatch<br>`0xaead7d9202f3efb73657ca031f645c6b46cfe177` | non_address_book | unknown | unknown | verified | n/a | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | source verified unclassified | WithdrawBatch<br>`0xb6bf444e8e8f76c4351e611a374ae2e9d0d710cf` | non_address_book | unknown | unknown | verified | n/a | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | source verified unclassified | WithdrawBatch<br>`0xe38d68f391ba204ac9afda86927babdd163ba86c` | non_address_book | unknown | unknown | verified | n/a | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | source verified unclassified | WithdrawManager<br>`0x0ea4c210e05457e84b9e95eb8dcbd3cd6f03ba44` | non_address_book | unknown | unknown | verified | n/a | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | source verified unclassified | WithdrawManager<br>`0x25abf60cf6e8798b9ef0decfdd1d48ff7aa4cf0a` | non_address_book | unknown | unknown | verified | n/a | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | source verified unclassified | WithdrawManager<br>`0x2ebd37d18453b17c05c61a06c3ea68827dbb7640` | non_address_book | unknown | unknown | verified | n/a | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | source verified unclassified | WithdrawManager<br>`0x71e99c443d44e451e3bc9898d8dbca0c9bb97639` | non_address_book | unknown | unknown | verified | n/a | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | source verified unclassified | WithdrawManager<br>`0xa9452eaf5aa440790e6ca90e38c10b40fb611e59` | non_address_book | unknown | unknown | verified | n/a | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | source verified unclassified | WithdrawManager<br>`0xac64c588e16f5f8747c19e3cbcdf5294a03e47df` | non_address_book | unknown | unknown | verified | n/a | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | source verified unclassified | WithdrawManager<br>`0xe4057c2307c904923a0898b5799745594f03d41a` | non_address_book | unknown | unknown | verified | n/a | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | unverified unclassified | UnnamedContract<br>`0x009e5906a89acec3044c7c61c3388c2f66d1eecb` | non_address_book | unknown | unknown | unverified | n/a | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | unverified unclassified | UnnamedContract<br>`0x00d4c959cd4f5d372a2cf5b12eb9f5f38d5776b7` | non_address_book | unknown | unknown | unverified | n/a | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | unverified unclassified | UnnamedContract<br>`0x019c0ab4e778822c972fa8055e6630b17e0069db` | non_address_book | unknown | unknown | unverified | n/a | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | unverified unclassified | UnnamedContract<br>`0x02a2d214ceebab493a74236c3ca1f94f7369fadc` | non_address_book | unknown | unknown | unverified | n/a | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | unverified unclassified | UnnamedContract<br>`0x0658ed4631c83f5e78fef5bc3dbc67185eb7184c` | non_address_book | unknown | unknown | unverified | n/a | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | unverified unclassified | UnnamedContract<br>`0x073fb10684e58f36eed3422a7dd95243555ac2df` | non_address_book | unknown | unknown | unverified | n/a | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | unverified unclassified | UnnamedContract<br>`0x07420a620e1db97b3f2642a51079a11e23c3bf34` | non_address_book | unknown | unknown | unverified | n/a | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | unverified unclassified | UnnamedContract<br>`0x0860b1f746943bb570d89f144ce2a8ae61301cf4` | non_address_book | unknown | unknown | unverified | n/a | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | unverified unclassified | UnnamedContract<br>`0x08c79e0129481f2188348eb41e6500854075b77a` | non_address_book | unknown | unknown | unverified | n/a | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | unverified unclassified | UnnamedContract<br>`0x09aa6b96493b9dbe84f6671851a9ccd8e49afe35` | non_address_book | unknown | unknown | unverified | n/a | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | unverified unclassified | UnnamedContract<br>`0x0a12242f81cb50fb19e0031e0a5566947f58c78e` | non_address_book | unknown | unknown | unverified | n/a | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | unverified unclassified | UnnamedContract<br>`0x0a678a644578e65516742ca459f95fdddde2b63d` | non_address_book | unknown | unknown | unverified | n/a | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | unverified unclassified | UnnamedContract<br>`0x0aa8a6a059103378901ede33a3ecdaeeacd07c87` | non_address_book | unknown | unknown | unverified | n/a | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | unverified unclassified | UnnamedContract<br>`0x0b7e0e663f4a4dcc2493a75178af16cc032323c2` | non_address_book | unknown | unknown | unverified | n/a | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | unverified unclassified | UnnamedContract<br>`0x0b9706726c82a4c5fbe36a4b974c5b79c6994feb` | non_address_book | unknown | unknown | unverified | n/a | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | unverified unclassified | UnnamedContract<br>`0x0bdbff8dbefb997b1ff0551862e74f6fdf36f4d3` | non_address_book | unknown | unknown | unverified | n/a | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | unverified unclassified | UnnamedContract<br>`0x0be44bcb5f0001e3cb247c30a575e18509bb1c4c` | non_address_book | unknown | unknown | unverified | n/a | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | unverified unclassified | UnnamedContract<br>`0x0d6f1c11106808280e385d07665cd9c485d69cc4` | non_address_book | unknown | unknown | unverified | n/a | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | unverified unclassified | UnnamedContract<br>`0x0ea488ce685e5f70cb1b499dc95083ca0f1b9206` | non_address_book | unknown | unknown | unverified | n/a | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | unverified unclassified | UnnamedContract<br>`0x104304ff9aa8d52f67874a3dad32c754553a82de` | non_address_book | unknown | unknown | unverified | n/a | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | unverified unclassified | UnnamedContract<br>`0x1099d962a65a682bd78cf398bf31268c52301441` | non_address_book | unknown | unknown | unverified | n/a | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | unverified unclassified | UnnamedContract<br>`0x115110a597120cb37e8d801dc23d66c54dc31b03` | non_address_book | unknown | unknown | unverified | n/a | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | unverified unclassified | UnnamedContract<br>`0x132aee8d15f01d99de8619a86cc5b9ee5c80ac60` | non_address_book | unknown | unknown | unverified | n/a | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | unverified unclassified | UnnamedContract<br>`0x13c4caa3746822fe00dab2627b1c7370fa068409` | non_address_book | unknown | unknown | unverified | n/a | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | unverified unclassified | UnnamedContract<br>`0x145efd0cc8151d7984e4f032fdfe376a746d20ec` | non_address_book | unknown | unknown | unverified | n/a | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | unverified unclassified | UnnamedContract<br>`0x179dc60df9b2d54e95c4e09756f364f5a6cbce0f` | non_address_book | unknown | unknown | unverified | n/a | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | unverified unclassified | UnnamedContract<br>`0x1a79346c914b3164733599cbcfa0fadd5256a584` | non_address_book | unknown | unknown | unverified | n/a | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | unverified unclassified | UnnamedContract<br>`0x1b0e954d46a9b92fbfaa3b2570c255c03f379123` | non_address_book | unknown | unknown | unverified | n/a | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | unverified unclassified | UnnamedContract<br>`0x1b4198f5150a1ab8c3d0148ec219ad536a1659c8` | non_address_book | unknown | unknown | unverified | n/a | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | unverified unclassified | UnnamedContract<br>`0x1c25aeb86e0f2be63b6ffd33c0bb8fabcda903f3` | non_address_book | unknown | unknown | unverified | n/a | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | unverified unclassified | UnnamedContract<br>`0x1de930b4fd7cf104598348121b548b41784909fe` | non_address_book | unknown | unknown | unverified | n/a | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | unverified unclassified | UnnamedContract<br>`0x1ded3364d20ff1bf2b3734b6f6a6a030b397d89f` | non_address_book | unknown | unknown | unverified | n/a | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | unverified unclassified | UnnamedContract<br>`0x1fb1b6485a2b1b3227d48ed62759771831382644` | non_address_book | unknown | unknown | unverified | n/a | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | unverified unclassified | UnnamedContract<br>`0x21c652b316c1e1fa72290530eb9d2a2c0725bd9f` | non_address_book | unknown | unknown | unverified | n/a | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | unverified unclassified | UnnamedContract<br>`0x229d97c0f95c9ce18e01bc2f419578d4aa22471d` | non_address_book | unknown | unknown | unverified | n/a | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | unverified unclassified | UnnamedContract<br>`0x24721b2a19ff862d1156ceb89e5b90d5c99c2e9f` | non_address_book | unknown | unknown | unverified | n/a | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | unverified unclassified | UnnamedContract<br>`0x24874d8e0e5e7285ba8ae76dae64ae8b0846fc0a` | non_address_book | unknown | unknown | unverified | n/a | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | unverified unclassified | UnnamedContract<br>`0x27a2ee5b36480285b26782b918c1a069396b8e35` | non_address_book | unknown | unknown | unverified | n/a | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | unverified unclassified | UnnamedContract<br>`0x27b59107a4764d03a687c1457a29196d24b189d9` | non_address_book | unknown | unknown | unverified | n/a | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | unverified unclassified | UnnamedContract<br>`0x280798b0ae6256b17ce1a25bb70baee1bdd9052e` | non_address_book | unknown | unknown | unverified | n/a | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | unverified unclassified | UnnamedContract<br>`0x2818095d006683a74984bfc3b843948e24c3620a` | non_address_book | unknown | unknown | unverified | n/a | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | unverified unclassified | UnnamedContract<br>`0x285a96a4ef5411ef0bf284fbc6d4feabae5c580e` | non_address_book | unknown | unknown | unverified | n/a | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | unverified unclassified | UnnamedContract<br>`0x29e8245976401866eba7f6bf41ce3570b5ff4bf0` | non_address_book | unknown | unknown | unverified | n/a | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | unverified unclassified | UnnamedContract<br>`0x2a0ad6c219be645296e15af4098fd37f13035fa0` | non_address_book | unknown | unknown | unverified | n/a | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | unverified unclassified | UnnamedContract<br>`0x2e8d0b8087ee120f1661a1cb07c05f94da82dabe` | non_address_book | unknown | unknown | unverified | n/a | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | unverified unclassified | UnnamedContract<br>`0x2f3edbff040deb8357262d93078d6b6c8b4c5fb8` | non_address_book | unknown | unknown | unverified | n/a | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | unverified unclassified | UnnamedContract<br>`0x2fb0f105aac7730cb3a21eec880d0261e43b2638` | non_address_book | unknown | unknown | unverified | n/a | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | unverified unclassified | UnnamedContract<br>`0x3016e514357c0b0523bdf5998489cd27aa23a5a2` | non_address_book | unknown | unknown | unverified | n/a | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | unverified unclassified | UnnamedContract<br>`0x326a99f037c8d572a62e10363f7ad69942a969c1` | non_address_book | unknown | unknown | unverified | n/a | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | unverified unclassified | UnnamedContract<br>`0x32f8adf41b1adab07a72eca9497be1bd89d94a5c` | non_address_book | unknown | unknown | unverified | n/a | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | unverified unclassified | UnnamedContract<br>`0x36568b2744414e1cd826fd3b9aef86ecc2806355` | non_address_book | unknown | unknown | unverified | n/a | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | unverified unclassified | UnnamedContract<br>`0x378e880eb3bf54f968e00d6e52bd7efe4121d7c3` | non_address_book | unknown | unknown | unverified | n/a | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | unverified unclassified | UnnamedContract<br>`0x37a9d10eebc48cb756615af5a0dbb36581e09ea4` | non_address_book | unknown | unknown | unverified | n/a | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | unverified unclassified | UnnamedContract<br>`0x37cbb5036eafc1cb5bfff016dd67d13d1a21f10d` | non_address_book | unknown | unknown | unverified | n/a | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | unverified unclassified | UnnamedContract<br>`0x386736bca2f1a188a8f9729b1f7698c608f6d285` | non_address_book | unknown | unknown | unverified | n/a | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | unverified unclassified | UnnamedContract<br>`0x39f910b080bafb367e7dd51ac129effc7760cc7d` | non_address_book | unknown | unknown | unverified | n/a | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | unverified unclassified | UnnamedContract<br>`0x3a62a76d8bfc578d8307bd17662d2c094b1e82be` | non_address_book | unknown | unknown | unverified | n/a | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | unverified unclassified | UnnamedContract<br>`0x3ad87f7bef631e2f2f87ad5d9b96c427ef15076e` | non_address_book | unknown | unknown | unverified | n/a | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | unverified unclassified | UnnamedContract<br>`0x3b54534221f41d7fc68f51daa62ce854e781d8ea` | non_address_book | unknown | unknown | unverified | n/a | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | unverified unclassified | UnnamedContract<br>`0x3b5d968cb08af433b6f92d755d600f1d8152edf4` | non_address_book | unknown | unknown | unverified | n/a | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | unverified unclassified | UnnamedContract<br>`0x3bb4073e5860fa8737fa24d2c581a880934857a6` | non_address_book | unknown | unknown | unverified | n/a | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | unverified unclassified | UnnamedContract<br>`0x3bde64d8ab1a0997fbd9e278f37725b543df775f` | non_address_book | unknown | unknown | unverified | n/a | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | unverified unclassified | UnnamedContract<br>`0x3e2b2fe06c65333bfe1b05bda396ef22272b9087` | non_address_book | unknown | unknown | unverified | n/a | `0xa9560340ca757d537e297c7cf9416a586d217c07` |
| base | unverified unclassified | UnnamedContract<br>`0x3fad6802d55dc1b9a7b54fa0ac267b4f3d18031a` | non_address_book | unknown | unknown | unverified | n/a | `0xa9560340ca757d537e297c7cf9416a586d217c07` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Audit_Report_VLVT-V3C_FINAL_20-1.pdf](https://github.com/Velvet-Capital/audits/blob/main/Audit_Report_VLVT-V3C_FINAL_20-1.pdf) | unknown | Audit | 2024-06 | stale | Direct | n/a | no match | 0 | 0 | 0 | 21 | n/a |
| [Audit_Report_VLVT-V3C_FINAL_20.pdf](https://github.com/Velvet-Capital/audits/blob/main/Audit_Report_VLVT-V3C_FINAL_20.pdf) | unknown | Audit | 2024-06 | stale | Direct | n/a | no match | 0 | 0 | 0 | 21 | n/a |
| [PeckShield-Audit-Report-Velvet-v1.0_final.pdf](https://github.com/Velvet-Capital/audits/blob/main/PeckShield-Audit-Report-Velvet-v1.0_final.pdf) | PeckShield | Audit | 2022-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | medium |
| [PeckShield-Audit-Report-VelvetV2-v1.0-2.pdf](https://github.com/Velvet-Capital/audits/blob/main/PeckShield-Audit-Report-VelvetV2-v1.0-2.pdf) | PeckShield | Audit | 2023-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 15 | high |
| [PeckShield-Audit-Report-VelvetV4-v1.0-3.pdf](https://github.com/Velvet-Capital/audits/blob/main/PeckShield-Audit-Report-VelvetV4-v1.0-3.pdf) | PeckShield | Audit | 2024-12 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 11 | high |
| [Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf](https://github.com/Velvet-Capital/audits/blob/main/Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf) | unknown | Audit | 2024-07 | stale | Direct | n/a | no match | 0 | 0 | 0 | 74 | n/a |
| [Velvet_Capital - Final Report-1.pdf](https://github.com/Velvet-Capital/audits/blob/main/Velvet_Capital%20-%20Final%20Report-1.pdf) | unknown | Audit | 2022-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [Velvet_Capital_V2_Arbitrum_Security_Audit_Report-1.pdf](https://github.com/Velvet-Capital/audits/blob/main/Velvet_Capital_V2_Arbitrum_Security_Audit_Report-1.pdf) | unknown | Audit | 2023-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 15 | high |
| [Velvet_Capital_V2_Security_Audit_Report.pdf](https://github.com/Velvet-Capital/audits/blob/main/Velvet_Capital_V2_Security_Audit_Report.pdf) | unknown | Audit | 2023-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 24 | high |
| [report-cantinacode-velvet-0807-1.pdf](https://github.com/Velvet-Capital/audits/blob/main/report-cantinacode-velvet-0807-1.pdf) | Spearbit | Audit | 2025-07 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [report.md](https://github.com/Velvet-Capital/audits/blob/main/report.md) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 8 | n/a |
| [PeckShield-Audit-Report-Velvet-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-Velvet-v1.0.pdf) | PeckShield | Audit | 2022-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | medium |
| [Velvet_Capital_Security_Audit_Report.pdf](https://shellboxes.com/audit/reports/Velvet_Capital_Security_Audit_Report.pdf) | unknown | Audit | 2022-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [report-cantinacode-velvet-0807 (2).pdf](https://github.com/Velvet-Capital/audits/blob/main/report-cantinacode-velvet-0807%20(2).pdf) | Spearbit | Audit | 2025-07 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3072] Audit_Report_VLVT-V3C_FINAL_20-1.pdf — no match: No reason recorded
- [3073] Audit_Report_VLVT-V3C_FINAL_20.pdf — no match: No reason recorded
- [3074] PeckShield-Audit-Report-Velvet-v1.0_final.pdf — no match: No explicit scope table; contracts inferred from findings targets and code snippets.
- [3075] PeckShield-Audit-Report-VelvetV2-v1.0-2.pdf — no match: Extracted contract names from findings and scope table. Audit date from cover page and table.
- [3076] PeckShield-Audit-Report-VelvetV4-v1.0-3.pdf — no match: Extracted contract names from findings targets and scope table. Audit date from cover page and table.
- [3077] Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf — no match: No reason recorded
- [3078] Velvet_Capital - Final Report-1.pdf — no match: Extracted 10 contracts from the scope tables on page 2 (initial audit) and page 2 (re-audit). Audit date from cover page: August 26th, 2022 - September 12th, 2022, using end date.
- [3079] Velvet_Capital_V2_Arbitrum_Security_Audit_Report-1.pdf — no match: Extracted contract names from scope files section (pages 56-57) and from findings that reference specific contracts. Audit date from cover page: Nov 23rd, 2023 - Nov 29th, 2023, using end date.
- [3080] Velvet_Capital_V2_Security_Audit_Report.pdf — no match: Extracted contract names from scope files section (pages 110-114) and affected files in findings. Audit date from cover page: July 17th, 2023 - August 7th, 2023, using end date.
- [3081] report-cantinacode-velvet-0807-1.pdf — no match: Only one contract in scope: veVelvet.sol. Audit date from cover page: July 9, 2025.
- [3082] report.md — no match: No reason recorded
- [3083] PeckShield-Audit-Report-Velvet-v1.0.pdf — no match: No explicit scope table; contracts inferred from findings targets and code snippets.
- [3084] Velvet_Capital_Security_Audit_Report.pdf — no match: Scope section lists 10 contracts with file paths and MD5 hashes. Audit date is the end date of the audit period: September 12, 2022.
- [15252] report-cantinacode-velvet-0807 (2).pdf — no match: Only one contract in scope: veVelvet.sol. Audit date from cover page: July 11, 2025.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Audit_Report_VLVT-V3C_FINAL_20-1.pdf | AccessController | unmatched — not counted | — | — | no |
| Audit_Report_VLVT-V3C_FINAL_20-1.pdf | AccessModifiers | unmatched — not counted | — | — | no |
| Audit_Report_VLVT-V3C_FINAL_20-1.pdf | ChecksAndValidations | unmatched — not counted | — | — | no |
| Audit_Report_VLVT-V3C_FINAL_20-1.pdf | EnsoHandler | unmatched — not counted | — | — | no |
| Audit_Report_VLVT-V3C_FINAL_20-1.pdf | EnsoHandlerBundled | unmatched — not counted | — | — | no |
| Audit_Report_VLVT-V3C_FINAL_20-1.pdf | FeeConfig | unmatched — not counted | — | — | no |
| Audit_Report_VLVT-V3C_FINAL_20-1.pdf | FeeManagement | unmatched — not counted | — | — | no |
| Audit_Report_VLVT-V3C_FINAL_20-1.pdf | FunctionParameters | unmatched — not counted | — | — | no |
| Audit_Report_VLVT-V3C_FINAL_20-1.pdf | OracleManagement | unmatched — not counted | — | — | no |
| Audit_Report_VLVT-V3C_FINAL_20-1.pdf | Portfolio | unmatched — not counted | — | — | no |
| Audit_Report_VLVT-V3C_FINAL_20-1.pdf | PortfolioSettings | unmatched — not counted | — | — | no |
| Audit_Report_VLVT-V3C_FINAL_20-1.pdf | PriceOracle | unmatched — not counted | — | — | no |
| Audit_Report_VLVT-V3C_FINAL_20-1.pdf | ProtocolFeeManagement | unmatched — not counted | — | — | no |
| Audit_Report_VLVT-V3C_FINAL_20-1.pdf | ProtocolTreasuryManagement | unmatched — not counted | — | — | no |
| Audit_Report_VLVT-V3C_FINAL_20-1.pdf | Rebalancing | unmatched — not counted | — | — | no |
| Audit_Report_VLVT-V3C_FINAL_20-1.pdf | SystemSettings | unmatched — not counted | — | — | no |
| Audit_Report_VLVT-V3C_FINAL_20-1.pdf | TokenExclusionManager | unmatched — not counted | — | — | no |
| Audit_Report_VLVT-V3C_FINAL_20-1.pdf | TokenManagement | unmatched — not counted | — | — | no |
| Audit_Report_VLVT-V3C_FINAL_20-1.pdf | TreasuryManagement | unmatched — not counted | — | — | no |
| Audit_Report_VLVT-V3C_FINAL_20-1.pdf | VaultConfig | unmatched — not counted | — | — | no |
| Audit_Report_VLVT-V3C_FINAL_20-1.pdf | VaultManager | unmatched — not counted | — | — | no |
| Audit_Report_VLVT-V3C_FINAL_20.pdf | AccessController | unmatched — not counted | — | — | no |
| Audit_Report_VLVT-V3C_FINAL_20.pdf | AccessModifiers | unmatched — not counted | — | — | no |
| Audit_Report_VLVT-V3C_FINAL_20.pdf | ChecksAndValidations | unmatched — not counted | — | — | no |
| Audit_Report_VLVT-V3C_FINAL_20.pdf | EnsoHandler | unmatched — not counted | — | — | no |
| Audit_Report_VLVT-V3C_FINAL_20.pdf | EnsoHandlerBundled | unmatched — not counted | — | — | no |
| Audit_Report_VLVT-V3C_FINAL_20.pdf | FeeConfig | unmatched — not counted | — | — | no |
| Audit_Report_VLVT-V3C_FINAL_20.pdf | FeeManagement | unmatched — not counted | — | — | no |
| Audit_Report_VLVT-V3C_FINAL_20.pdf | FunctionParameters | unmatched — not counted | — | — | no |
| Audit_Report_VLVT-V3C_FINAL_20.pdf | OracleManagement | unmatched — not counted | — | — | no |
| Audit_Report_VLVT-V3C_FINAL_20.pdf | Portfolio | unmatched — not counted | — | — | no |
| Audit_Report_VLVT-V3C_FINAL_20.pdf | PortfolioSettings | unmatched — not counted | — | — | no |
| Audit_Report_VLVT-V3C_FINAL_20.pdf | PriceOracle | unmatched — not counted | — | — | no |
| Audit_Report_VLVT-V3C_FINAL_20.pdf | ProtocolFeeManagement | unmatched — not counted | — | — | no |
| Audit_Report_VLVT-V3C_FINAL_20.pdf | ProtocolTreasuryManagement | unmatched — not counted | — | — | no |
| Audit_Report_VLVT-V3C_FINAL_20.pdf | Rebalancing | unmatched — not counted | — | — | no |
| Audit_Report_VLVT-V3C_FINAL_20.pdf | SystemSettings | unmatched — not counted | — | — | no |
| Audit_Report_VLVT-V3C_FINAL_20.pdf | TokenExclusionManager | unmatched — not counted | — | — | no |
| Audit_Report_VLVT-V3C_FINAL_20.pdf | TokenManagement | unmatched — not counted | — | — | no |
| Audit_Report_VLVT-V3C_FINAL_20.pdf | TreasuryManagement | unmatched — not counted | — | — | no |
| Audit_Report_VLVT-V3C_FINAL_20.pdf | VaultConfig | unmatched — not counted | — | — | no |
| Audit_Report_VLVT-V3C_FINAL_20.pdf | VaultManager | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-Velvet-v1.0_final.pdf | Adapter | unmatched — not counted | — | Target in findings PVE-001, PVE-002, PVE-004 | no |
| PeckShield-Audit-Report-Velvet-v1.0_final.pdf | PriceOracle | unmatched — not counted | — | Target in finding PVE-003 | no |
| PeckShield-Audit-Report-Velvet-v1.0_final.pdf | AccessController | unmatched — not counted | — | Mentioned in finding PVE-005 as containing privileged functions | no |
| PeckShield-Audit-Report-VelvetV2-v1.0-2.pdf | IndexSwap | unmatched — not counted | — | Listed in findings PVE-001, PVE-003, and scope table | no |
| PeckShield-Audit-Report-VelvetV2-v1.0-2.pdf | IndexSwapLibrary | unmatched — not counted | — | Listed in finding PVE-001 | no |
| PeckShield-Audit-Report-VelvetV2-v1.0-2.pdf | SlippageControl | unmatched — not counted | — | Listed in finding PVE-002 | no |
| PeckShield-Audit-Report-VelvetV2-v1.0-2.pdf | AlpacaHandler | unmatched — not counted | — | Listed in finding PVE-004 | no |
| PeckShield-Audit-Report-VelvetV2-v1.0-2.pdf | BeefyHandler | unmatched — not counted | — | Listed in finding PVE-005 | no |
| PeckShield-Audit-Report-VelvetV2-v1.0-2.pdf | BeefyLPHandler | unmatched — not counted | — | Listed in finding PVE-006 | no |
| PeckShield-Audit-Report-VelvetV2-v1.0-2.pdf | ApproveControl | unmatched — not counted | — | Listed in finding PVE-007 | no |
| PeckShield-Audit-Report-VelvetV2-v1.0-2.pdf | PriceOracle | unmatched — not counted | — | Listed in finding PVE-008 | no |
| PeckShield-Audit-Report-VelvetV2-v1.0-2.pdf | IndexFactory | unmatched — not counted | — | Listed in finding PVE-008 | no |
| PeckShield-Audit-Report-VelvetV2-v1.0-2.pdf | Rebalancing | unmatched — not counted | — | Listed in finding PVE-008 | no |
| PeckShield-Audit-Report-VelvetV2-v1.0-2.pdf | OneInchHandler | unmatched — not counted | — | Mentioned in finding PVE-007 as intended caller | no |
| PeckShield-Audit-Report-VelvetV2-v1.0-2.pdf | ZeroExHandler | unmatched — not counted | — | Mentioned in finding PVE-007 as intended caller | no |
| PeckShield-Audit-Report-VelvetV2-v1.0-2.pdf | ParaswapHandler | unmatched — not counted | — | Mentioned in finding PVE-007 as intended caller | no |
| PeckShield-Audit-Report-VelvetV2-v1.0-2.pdf | WombatHandler | unmatched — not counted | — | Mentioned in finding PVE-002 | no |
| PeckShield-Audit-Report-VelvetV2-v1.0-2.pdf | ExternalSwapHandler | unmatched — not counted | — | Mentioned in finding PVE-007 as parent contract | no |
| PeckShield-Audit-Report-VelvetV4-v1.0-3.pdf | VaultManager | unmatched — not counted | — | Target in finding PVE-001 | no |
| PeckShield-Audit-Report-VelvetV4-v1.0-3.pdf | PositionMangers | unmatched — not counted | — | Target in finding PVE-002 | no |
| PeckShield-Audit-Report-VelvetV4-v1.0-3.pdf | PositionManagerAbstract | unmatched — not counted | — | Mentioned in finding PVE-002 and PVE-005 | no |
| PeckShield-Audit-Report-VelvetV4-v1.0-3.pdf | PositionManagerAbstractUniswap | unmatched — not counted | — | Mentioned in finding PVE-002 | no |
| PeckShield-Audit-Report-VelvetV4-v1.0-3.pdf | PositionManagerAbstractAlgebra | unmatched — not counted | — | Mentioned in finding PVE-002 | no |
| PeckShield-Audit-Report-VelvetV4-v1.0-3.pdf | PortfolioFactory | unmatched — not counted | — | Target in finding PVE-009 | no |
| PeckShield-Audit-Report-VelvetV4-v1.0-3.pdf | FeeManagement | unmatched — not counted | — | Target in finding PVE-004 | no |
| PeckShield-Audit-Report-VelvetV4-v1.0-3.pdf | SwapVerificationLibrary | unmatched — not counted | — | Target in finding PVE-005 | no |
| PeckShield-Audit-Report-VelvetV4-v1.0-3.pdf | FeeCalculations | unmatched — not counted | — | Target in finding PVE-006 | no |
| PeckShield-Audit-Report-VelvetV4-v1.0-3.pdf | BorrowManager | unmatched — not counted | — | Target in finding PVE-007 | no |
| PeckShield-Audit-Report-VelvetV4-v1.0-3.pdf | VenusAssetHandler | unmatched — not counted | — | Target in finding PVE-008 | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | AccessController | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | AccessModifiers | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | AccessRoles | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | AssetManagementConfig | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | AssetManagerCheck | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | ChecksAndValidations | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | CooldownManager | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | Dependencies | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | DepositBatch | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | DepositManager | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | EnsoHandler | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | EnsoHandlerBundled | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | ErrorLibrary | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | FeeCalculations | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | FeeConfig | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | FeeEvents | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | FeeManagement | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | FeeManager | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | FeeModule | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | FunctionParameters | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | GnosisDeployer | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | IAccessController | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | IAllowanceTransfer | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | IAssetManagementConfig | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | IDepositBatch | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | IEIP712 | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | IFeeModule | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | IGnosisSafe | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | IIntentHandler | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | IMultiSend | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | IPortfolio | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | IPortfolioFactory | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | IPriceOracle | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | IProtocolConfig | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | IRebalancing | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | ITokenExclusionManager | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | ITokenRemovalVault | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | IUniswapV2Router02 | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | IVelvetSafeModule | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | IWithdrawBatch | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | MathUtils | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | OracleManagement | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | OwnableCheck | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | Portfolio | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | PortfolioCalculations | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | PortfolioFactory | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | PortfolioSettings | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | PortfolioToken | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | PriceOracle | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | PriceOracleAbstract | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | PriceOracleL2 | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | ProtocolConfig | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | ProtocolFeeManagement | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | ProtocolTreasuryManagement | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | Rebalancing | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | RebalancingConfig | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | SolverManagement | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | SystemSettings | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | TargetWhitelisting | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | TokenBalanceLibrary | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | TokenCalculations | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | TokenExclusionManager | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | TokenManagement | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | TokenRemovalVault | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | TokenWhitelistManagement | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | TreasuryManagement | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | UserManagement | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | UserWhitelistManagement | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | VaultCalculations | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | VaultConfig | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | VaultManager | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | VelvetSafeModule | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | WithdrawBatch | unmatched — not counted | — | — | no |
| Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf | WithdrawManager | unmatched — not counted | — | — | no |
| Velvet_Capital - Final Report-1.pdf | IndexFactory | unmatched — not counted | — | listed in scope table | no |
| Velvet_Capital - Final Report-1.pdf | TokenMetadata | unmatched — not counted | — | listed in scope table | no |
| Velvet_Capital - Final Report-1.pdf | Vault | unmatched — not counted | — | listed in scope table | no |
| Velvet_Capital - Final Report-1.pdf | VelvetSafeModule | unmatched — not counted | — | listed in scope table | no |
| Velvet_Capital - Final Report-1.pdf | Rebalancing | unmatched — not counted | — | listed in scope table | no |
| Velvet_Capital - Final Report-1.pdf | PriceOracle | unmatched — not counted | — | listed in scope table | no |
| Velvet_Capital - Final Report-1.pdf | Adapter | unmatched — not counted | — | listed in scope table | no |
| Velvet_Capital - Final Report-1.pdf | IndexSwap | unmatched — not counted | — | listed in scope table | no |
| Velvet_Capital - Final Report-1.pdf | IndexSwapLibrary | unmatched — not counted | — | listed in scope table | no |
| Velvet_Capital - Final Report-1.pdf | AccessController | unmatched — not counted | — | listed in scope table | no |
| Velvet_Capital_V2_Arbitrum_Security_Audit_Report-1.pdf | PriceOracle | unmatched — not counted | — | listed in scope files (Audit) | no |
| Velvet_Capital_V2_Arbitrum_Security_Audit_Report-1.pdf | PriceOracleL2 | unmatched — not counted | — | listed in scope files (Re-Audit) | no |
| Velvet_Capital_V2_Arbitrum_Security_Audit_Report-1.pdf | HopHandler | unmatched — not counted | — | listed in scope files (Audit and Re-Audit) | no |
| Velvet_Capital_V2_Arbitrum_Security_Audit_Report-1.pdf | BebopHandler | unmatched — not counted | — | listed in scope files (Audit and Re-Audit) | no |
| Velvet_Capital_V2_Arbitrum_Security_Audit_Report-1.pdf | KyberSwapHandler | unmatched — not counted | — | listed in scope files (Audit and Re-Audit) | no |
| Velvet_Capital_V2_Arbitrum_Security_Audit_Report-1.pdf | CompoundV3Handler | unmatched — not counted | — | listed in scope files (Audit and Re-Audit) | no |
| Velvet_Capital_V2_Arbitrum_Security_Audit_Report-1.pdf | BeefyBridgeHandler | unmatched — not counted | — | listed in scope files (Audit and Re-Audit) | no |
| Velvet_Capital_V2_Arbitrum_Security_Audit_Report-1.pdf | AaveV3Handler | unmatched — not counted | — | listed in scope files (Audit and Re-Audit) | no |
| Velvet_Capital_V2_Arbitrum_Security_Audit_Report-1.pdf | BeefyYieldHandler | unmatched — not counted | — | mentioned in finding SHB.2 | no |
| Velvet_Capital_V2_Arbitrum_Security_Audit_Report-1.pdf | VenusHandler | unmatched — not counted | — | mentioned in finding SHB.2 | no |
| Velvet_Capital_V2_Arbitrum_Security_Audit_Report-1.pdf | WombatHandler | unmatched — not counted | — | mentioned in findings SHB.2 and BP.6 | no |
| Velvet_Capital_V2_Arbitrum_Security_Audit_Report-1.pdf | OneInchHandler | unmatched — not counted | — | mentioned in finding SHB.3 | no |
| Velvet_Capital_V2_Arbitrum_Security_Audit_Report-1.pdf | ParaswapHandler | unmatched — not counted | — | mentioned in finding SHB.3 | no |
| Velvet_Capital_V2_Arbitrum_Security_Audit_Report-1.pdf | ZeroExHandler | unmatched — not counted | — | mentioned in finding SHB.3 | no |
| Velvet_Capital_V2_Arbitrum_Security_Audit_Report-1.pdf | SushiSwapLPHandler | unmatched — not counted | — | mentioned in best practice BP.5 | no |
| Velvet_Capital_V2_Security_Audit_Report.pdf | AbstractLPHandler | unmatched — not counted | — | listed in scope files and affected files | no |
| Velvet_Capital_V2_Security_Audit_Report.pdf | OffChainIndexSwap | unmatched — not counted | — | listed in scope files and affected files | no |
| Velvet_Capital_V2_Security_Audit_Report.pdf | Exchange | unmatched — not counted | — | listed in scope files and affected files | no |
| Velvet_Capital_V2_Security_Audit_Report.pdf | FeeLibrary | unmatched — not counted | — | affected files | no |
| Velvet_Capital_V2_Security_Audit_Report.pdf | ApeSwapLPHandler | unmatched — not counted | — | affected files | no |
| Velvet_Capital_V2_Security_Audit_Report.pdf | BiSwapLPHandler | unmatched — not counted | — | affected files | no |
| Velvet_Capital_V2_Security_Audit_Report.pdf | PancakeSwapLPHandler | unmatched — not counted | — | affected files | no |
| Velvet_Capital_V2_Security_Audit_Report.pdf | PriceOracle | unmatched — not counted | — | affected files | no |
| Velvet_Capital_V2_Security_Audit_Report.pdf | IndexSwap | unmatched — not counted | — | affected files | no |
| Velvet_Capital_V2_Security_Audit_Report.pdf | IndexSwapLibrary | unmatched — not counted | — | affected files | no |
| Velvet_Capital_V2_Security_Audit_Report.pdf | IndexLibrary | unmatched — not counted | — | affected files | no |
| Velvet_Capital_V2_Security_Audit_Report.pdf | VelvetSafeModule | unmatched — not counted | — | affected files | no |
| Velvet_Capital_V2_Security_Audit_Report.pdf | ExternalSlippageControl | unmatched — not counted | — | affected files | no |
| Velvet_Capital_V2_Security_Audit_Report.pdf | SlippageControl | unmatched — not counted | — | affected files | no |
| Velvet_Capital_V2_Security_Audit_Report.pdf | PancakeSwapHandler | unmatched — not counted | — | affected files | no |
| Velvet_Capital_V2_Security_Audit_Report.pdf | ZeroExHandler | unmatched — not counted | — | affected files | no |
| Velvet_Capital_V2_Security_Audit_Report.pdf | IndexFactory | unmatched — not counted | — | best practices affected files | no |
| Velvet_Capital_V2_Security_Audit_Report.pdf | TokenRegistry | unmatched — not counted | — | best practices affected files | no |
| Velvet_Capital_V2_Security_Audit_Report.pdf | Rebalancing | unmatched — not counted | — | best practices affected files | no |
| Velvet_Capital_V2_Security_Audit_Report.pdf | RebalanceLibrary | unmatched — not counted | — | best practices affected files | no |
| Velvet_Capital_V2_Security_Audit_Report.pdf | AssetManagerConfig | unmatched — not counted | — | best practices affected files | no |
| Velvet_Capital_V2_Security_Audit_Report.pdf | OneInchHandler | unmatched — not counted | — | best practices affected files | no |
| Velvet_Capital_V2_Security_Audit_Report.pdf | ParaswapHandler | unmatched — not counted | — | best practices affected files | no |
| Velvet_Capital_V2_Security_Audit_Report.pdf | CommonReentrancyGuard | unmatched — not counted | — | mentioned in fix for SHB.24 | no |
| report-cantinacode-velvet-0807-1.pdf | veVelvet | unmatched — not counted | — | Scope section: 'the scope if the review was limited to veVelvet.sol' | no |
| report.md | DepositBatch | unmatched — not counted | — | — | no |
| report.md | EnsoHandler | unmatched — not counted | — | — | no |
| report.md | PortfolioFactory | unmatched — not counted | — | — | no |
| report.md | Rebalancing | unmatched — not counted | — | — | no |
| report.md | TokenExclusionManager | unmatched — not counted | — | — | no |
| report.md | TokenWhitelistManagement | unmatched — not counted | — | — | no |
| report.md | VaultManager | unmatched — not counted | — | — | no |
| report.md | WithdrawBatch | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-Velvet-v1.0.pdf | Adapter | unmatched — not counted | — | Target in findings PVE-001, PVE-002, PVE-004 | no |
| PeckShield-Audit-Report-Velvet-v1.0.pdf | PriceOracle | unmatched — not counted | — | Target in finding PVE-003 | no |
| PeckShield-Audit-Report-Velvet-v1.0.pdf | AccessController | unmatched — not counted | — | Mentioned in finding PVE-005 as containing privileged operations | no |
| Velvet_Capital_Security_Audit_Report.pdf | IndexFactory | unmatched — not counted | — | listed in scope table | no |
| Velvet_Capital_Security_Audit_Report.pdf | TokenMetadata | unmatched — not counted | — | listed in scope table | no |
| Velvet_Capital_Security_Audit_Report.pdf | Vault | unmatched — not counted | — | listed in scope table | no |
| Velvet_Capital_Security_Audit_Report.pdf | VelvetSafeModule | unmatched — not counted | — | listed in scope table | no |
| Velvet_Capital_Security_Audit_Report.pdf | Rebalancing | unmatched — not counted | — | listed in scope table | no |
| Velvet_Capital_Security_Audit_Report.pdf | PriceOracle | unmatched — not counted | — | listed in scope table | no |
| Velvet_Capital_Security_Audit_Report.pdf | Adapter | unmatched — not counted | — | listed in scope table | no |
| Velvet_Capital_Security_Audit_Report.pdf | IndexSwap | unmatched — not counted | — | listed in scope table | no |
| Velvet_Capital_Security_Audit_Report.pdf | IndexSwapLibrary | unmatched — not counted | — | listed in scope table | no |
| Velvet_Capital_Security_Audit_Report.pdf | AccessController | unmatched — not counted | — | listed in scope table | no |
| report-cantinacode-velvet-0807 (2).pdf | veVelvet | unmatched — not counted | — | Scope section: 'the scope if the review was limited to veVelvet.sol' | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 30 |
| upstream | 0 |
| standard_library | 18 |
| needs_review | 259 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 14
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 217 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=8, medium=2
- Match method counts: n/a

Zero-match audit list:

- [3072] Audit_Report_VLVT-V3C_FINAL_20-1.pdf
- [3073] Audit_Report_VLVT-V3C_FINAL_20.pdf
- [3074] PeckShield-Audit-Report-Velvet-v1.0_final.pdf
- [3075] PeckShield-Audit-Report-VelvetV2-v1.0-2.pdf
- [3076] PeckShield-Audit-Report-VelvetV4-v1.0-3.pdf
- [3077] Smart_Contract_Audit_Velvet_Capital_Corev3_13072024-1.pdf
- [3078] Velvet_Capital - Final Report-1.pdf
- [3079] Velvet_Capital_V2_Arbitrum_Security_Audit_Report-1.pdf
- [3080] Velvet_Capital_V2_Security_Audit_Report.pdf
- [3081] report-cantinacode-velvet-0807-1.pdf
- [3082] report.md
- [3083] PeckShield-Audit-Report-Velvet-v1.0.pdf
- [3084] Velvet_Capital_Security_Audit_Report.pdf
- [15252] report-cantinacode-velvet-0807 (2).pdf

Fork inheritance lineage and inherited audits are included when available.
