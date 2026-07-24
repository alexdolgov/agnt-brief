# Agentic Audit Brief: RateX

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 2 (0 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: RateX (`ratex`)
- Website: [https://rate-x.io/](https://rate-x.io/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: bsc
- Contract surface: 202 unique implementations (401 raw deployments)
- Coverage basis: 0/1 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $2,872,151.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for RateX. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across bsc. Structural roles: 1 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: core (1)
- Contract kinds: abstract (1)
- Detected standards: ownable (1)
- Frameworks: openzeppelin (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 1 contracts are derived from known codebases. 1 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- RateX (RTX) OFT token (`0x4829a1d1fb6ded1f81d26868ab8976648baf9893`, chain 56)

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
- Outside the address book: 201 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 153
- Confirmed-live implementations: 1 of 202 unique; 201 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/127
- Verified + Unaudited implementations: 127
- Verified by bytecode match: 0
- Unverified implementations: 75
- Unique implementations: 202
- Raw deployments: 401
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-10 (fresh)
- Audit staleness (calendar age): 1 fresh, 1 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (127)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| API3Oracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x35718b08323e9a466b7378f91af63f9c8f05617d`; bsc `0x476884942cae0e33f44f67377216578179b9c576`; bsc `0xadcc15ce3900a2fc8544e26fd89897c0484e98fc` | ⚠️ Unaudited |
| BBtcOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x2ea16e082ca50eb6017bbfcb967cc7c6e2b8fb5a`; bsc `0x7ed71d43446c1dfcb6c43717a17a4edc1544eb2e` | ⚠️ Unaudited |
| BeraChainVaultAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x1afa1589a634be568d7872dcf1bbe6f79e11fad5`; bsc `0xd113dbb2f3463a0d290c47d4e9edfba9e9195a16` | ⚠️ Unaudited |
| BeraChainVaultAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2a66f6235294aadcb0c249ba22915e142af887dc` | ⚠️ Unaudited |
| BeraChainVaultAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x550206e612bffe9f9f0a8e38fa68f68e184a7f15`; bsc `0xe5248d557be6828c0703f957ebdccbab291dee78` | ⚠️ Unaudited |
| BnbOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0xd74508ab3bdbedaa6589f913e0f89d98b2ad2754`; bsc `0xda0e735578a2127c7daf589dd75709844e01be0a` | ⚠️ Unaudited |
| BorrowListaDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 17 | bsc | n/a | 18 deployments: bsc `0x419352db842b7f6f33dbf541d23938cffc181d1a`; bsc `0x46c5721dd7275ba19010a4f0e8febfdf6595be54`; bsc `0x564fa71eabe7683af701d32f34421ecc118b1ebb`; bsc `0x58fe0f18507dd331ddf91db9c111536d2a5c725a`; bsc `0x5debc8917ef4f614b0998ddd8de7dd421fade245`; bsc `0x7247ddb894c4dc6be9ea7328fcfef0a07e20f59d`; bsc `0x73538cce62901bd374ba314acefc6c49ebda0093`; bsc `0x7ad627aeb610d3f82466d8f9e1b9a6e1c916da80`; bsc `0x88620f85ba52a186314471d8eef7f6fcfec4a2e6`; bsc `0x982d1db2d643ff4f497d5a4f566a565376ecf70c`; bsc `0x98a3ff86af8107abb40a706340b485e0b3e84c54`; bsc `0xa3bce2def1823a551a407b14572c54d2adb0fd45`; bsc `0xa97aed02f9cd1d59186b3883e23efe9f5e347900`; bsc `0xc952cc3d981baad5d4d041721e1e179e42e6e2d5`; bsc `0xca07db4b4390355dc3ed3a74dfab84fb5bf8ac38`; bsc `0xcb8f70fbc3cecaff9a5d53236dcb4ef76bccd2d6`; bsc `0xd1f81b39fa4e7c08546285e8e9c5f5fe683b001e`; bsc `0xf8d1d8a862ea77bf4f826bf6612bff0d0883eafa` | ⚠️ Unaudited |
| BorrowLisUSDListaDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x0aed860ca496600f6976219cb1acec435d7f4f3b`; bsc `0xf1f4d6e10b2b5f20270991a8a54c918e87bd8b22` | ⚠️ Unaudited |
| BoundValidator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x81c4f1175fd355cf2c5651396af25eac98c8e6d5`; bsc `0x9ddd9bc74d1abab667097581fae6ee8dd3be5ff2` | ⚠️ Unaudited |
| BtcOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x2eedc4723b1ed2f24afcd9c0e3665061bd2d5642`; bsc `0xa5e8ea0cb5e355d8eb71de97ce762e962bcfffbf` | ⚠️ Unaudited |
| BtcOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9534dd1290bc46cce1f140b163cfc3abb2d6a45f` | ⚠️ Unaudited |
| Buyback | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x3b778d2d502f5433f9f5cb9a1464ca5d141936bb`; bsc `0x969130bc708e181e799c584bfbb31eaa71da4edf` | ⚠️ Unaudited |
| Buyback | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x3b99a4177e3f430590a8473f353dd87a5a2e1bfc` | ⚠️ Unaudited |
| CerosETHRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbaff578d16c9b0fc3a668408517bec1f9a2fb0c1` | ⚠️ Unaudited |
| CeToken | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | bsc | n/a | 3 deployments: bsc `0x397a486183cb6608a3ccd1c74b6a7f024439004b`; bsc `0x4510aa2b3efd13bbfd78c9bfde764f224ecc7f50`; bsc `0xc6f28a668b7c18f921ccba4adc3d8db72bff0fe2` | ⚠️ Unaudited |
| ClearingHouse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 5 deployments: bsc `0x293a337687363e91406fc0d544b11efc6d288a16`; bsc `0x456fb811c0b4083afffe2e5b37915db8a1b6b28b`; bsc `0x58f2d3b1b810fa6b7f57eeae6b353558d7b49566`; bsc `0x70836c31176b42c101b46c9ee0f46e385954bbcb`; bsc `0x801010458a82dd20855618c6e13e59637536009f` | ⚠️ Unaudited |
| Clipper | unknown | non_address_book | non_address_book_inventory (excluded) | 16 | bsc | n/a | 17 deployments: bsc `0x117b4a02d1bb3a32f4bf5cd6103e633b2b651063`; bsc `0x334e4f80cc2985d0f8196cc562dd8aeddda1b704`; bsc `0x4192ff5f1fefccbc446702117a48ac25fd1723b3`; bsc `0x4fd4b7ec5faf57d94c37379e11a02b2d47368ac3`; bsc `0x5784e62b4495c7cc4b09ccd3f206cc7128449ce0`; bsc `0x5aabbbe154c0afa072e313d46b29592936493b26`; bsc `0x6dc0abfdad33f01e847e45bcc9e0acb9dd119b5a`; bsc `0x9b878823cf06fac1edb02b44eada8bb4274ab7ea`; bsc `0xaf71337d151408401cc3a971e0a05c6d2790e08e`; bsc `0xb12ff6fd1885a9cb2b26302c98092644604b1e92`; bsc `0xc4857c08295cb9270feb0a87fd60b3bfd459a998`; bsc `0xeb995ff652da728e7b0ebc31ab543c39e054b1ea`; bsc `0xf21b35edf7a927799b80f09c395c460c3d31d057`; bsc `0xf57a8cf44104ea0dfbe286781bd1f51533a659f3`; bsc `0xf6dadf1210f7c22ad5bcba84b23cfd424a30313c`; bsc `0xf920018fc69515102b915a543dfefbc837c3f9e6`; bsc `0xfe288198707d65e84390b59a844705d5c989525e` | ⚠️ Unaudited |
| clisBNB | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x061178fdfc399000c8023043f0f5b9578280d195`; bsc `0x6c87876b15cbccedec81246af6dc58bd1109e98c` | ⚠️ Unaudited |
| ClisBNBLaunchPoolDistributor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x81a62b329cc8939494d8613f614171a9955a46e8` | ⚠️ Unaudited |
| ClisBNBLaunchPoolDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8abb19d228d6cca2ce14cd43d5caca755d07ccda` | ⚠️ Unaudited |
| clisETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe4f48754e85f2d24361741885098453e2077181f` | ⚠️ Unaudited |
| ClisToken | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | bsc | n/a | 3 deployments: bsc `0x2544be623743897b06d57707cf3016cccfd355a8`; bsc `0x88a596f8c8290f96d5742ae0905f912dd5291c27`; bsc `0x8a314300088ec75aaefc53b92f73819050182cc6` | ⚠️ Unaudited |
| CollateralBorrowSnapshotRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x57371fb9311a7a0d6c712e9ee154dc8a718490f6`; bsc `0x74e17e6996f0ddafda9b500ab15a3ad7c2f69307` | ⚠️ Unaudited |
| CollateralBorrowSnapshotRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd4cfc52c5ec1fb0d5cbe184b4d6a140c146136b7` | ⚠️ Unaudited |
| CollateralListaDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 13 | bsc | n/a | 14 deployments: bsc `0x01a6fcc74852088c72862c12c54f992720eb8281`; bsc `0x0bfb1bd05e13b7757c26c839d9c385c8c8d8dad1`; bsc `0x0c9a0f426ff6243afccd821f4d1929ce5e8d15b5`; bsc `0x1716ac5a34b46bc736f6f5c2d58661d5fbb47c73`; bsc `0x3c161234622caf322e4f5363d46187eb3f010eb0`; bsc `0x56627826504e2cbdd7213e38089c2a4e6327204c`; bsc `0x6c5285cb6c660bc08cf175f632131b06b213fc5e`; bsc `0x77c9b49a58325131d08f9dc120388f20c57c2572`; bsc `0x83f861165bc61af54cab4be9a96c2b92e3a2ae5b`; bsc `0xc4a8a6c81f79dc6218319ce68138e743b8edd830`; bsc `0xe3221bc1084efb5d43cf94cd8de6b32cf37feb85`; bsc `0xf09fef5e373c969e4631f139a91531c257e22889`; bsc `0xf0fc2ded2f7dd1bfdad4008a9e0cd0248408e956`; bsc `0xff6f8ca13db1bec5becfaf208b1d3c942b63f955` | ⚠️ Unaudited |
| CollateralListaDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 4 | bsc | n/a | 5 deployments: bsc `0x0bebd707023d892d35548a992e79286e76b79478`; bsc `0x9a819532e75b00ac8ca9e0c11f12cc87388c7856`; bsc `0xb1da312097c7cbf9b49ef9d29d21a0646d9a5af4`; bsc `0xe61f4386608578199471747e4654ae450adee39a`; bsc `0xe786ec5b4838410c24e5c1c75633d7c59705d6be` | ⚠️ Unaudited |
| DynamicDutyCalculator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x0aeb6cd202b8482a71215c844341ea1f3f6571f0`; bsc `0x1bce7474a53d5860f70be98ab7a3b3d721418885` | ⚠️ Unaudited |
| DynamicDutyCalculator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x510264a39dd2d270ca9467c86571e0c84c6827d2`; bsc `0x873339a8214657175d9b128ddd57a2f2c23256fa` | ⚠️ Unaudited |
| EarnImp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x92723acbac7bd5326f25c719f27769e6adc4819e` | ⚠️ Unaudited |
| EarnPool | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x143c8b6b1161dec945d1fb7c2ca13c3b1d164642`; bsc `0x66de07893db7492b56ba88503b4cc99bab1796f3` | ⚠️ Unaudited |
| EmissionVoting | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x5d52bcbf45c72f5fb8441959622c7e5dd4693736`; bsc `0xfc136f286805a7922d9bf04317068964b231336c` | ⚠️ Unaudited |
| EmissionVoting | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x76e001bf7febeb37981cf2a116f0594ebeeb3d00`; bsc `0xac6b7fe073996410a9c7fb3c879066d432d05996` | ⚠️ Unaudited |
| ERC20LpListaDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | bsc | n/a | 3 deployments: bsc `0x05570c903a99f59e8f9913d4d628796bad7115c3`; bsc `0x3b239391c48f0b46d31d39f79dcf64d3575e6086`; bsc `0xa65c40e6940062fd3e159ca2b50ed2ab1c4a218e` | ⚠️ Unaudited |
| ERC20LpListaDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 9 | bsc | n/a | 10 deployments: bsc `0x11bf1122871e13c13466681022c74b496b59147a`; bsc `0x1cf9c6d475cdca67942d41b0a34bd9cb9d336c4d`; bsc `0x39d099f6a78c7cef7a527f55c921e7e1ee39716a`; bsc `0x4b2d67bf25245783fc4c33a48962775437f9159c`; bsc `0x7c81da7a7a2603fa4481e5266fcdfe3ed1424954`; bsc `0x9b4fcbc3a01378b85d81defbaf9359155718be4a`; bsc `0x9f6c251c3122207adf561714c1171534b569eff4`; bsc `0xc23d348f9cc86ddb059ec798e87e7f76fbc077c1`; bsc `0xe8f4644637f127aff11f9492f41269eb5e8b8dd2`; bsc `0xf6ab5cfdb46357f37b0190b793fb199d62dcf504` | ⚠️ Unaudited |
| ERC20LpListaDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdd185c5d74daf067034b3498a0057ef38277a054` | ⚠️ Unaudited |
| ERC20LpTokenProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x2725d7336027773d7a958e10819a923dcd65aa57`; bsc `0x946e5c3d32d33128543b785a446b81eedbe74c05` | ⚠️ Unaudited |
| ERC721LpListaDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 7 | bsc | n/a | 8 deployments: bsc `0x16c39b6ee97d3d92f570ad9403418e43ea0622a5`; bsc `0x3665d70c050ab2d46a3f5510db0c98658094d9c9`; bsc `0x398df8ddefb25a4e0fb740b5ae7c716cd9ec2596`; bsc `0x8453cd3d1588e62d5e72a8bc16a8a0300a16005f`; bsc `0x9e4dfbec6f68c509d93756917ca4628739d06cb4`; bsc `0xb691624b69bbb23b8cc9847b5e8c151d75110ed4`; bsc `0xe43fe85d8d1d4623b9e91c094beda7adbb14f520`; bsc `0xe5c03cceb62262c7af8c85e8474c06fa3f43de08` | ⚠️ Unaudited |
| ERC721LpListaDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x225cbcc20e53e781982bd4d77fa17e55e23194cf`; bsc `0x6dc5523a381cfac859fc9df0df9099b188b01de3` | ⚠️ Unaudited |
| EthOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9b4f67fb43180085ea26e348200027670eaf1e96` | ⚠️ Unaudited |
| EzEthOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x209003905c94a67f766cbea529d2d5e1b3f7741b`; bsc `0xe859f3f6ee5532313c33a02283150e201290f45f` | ⚠️ Unaudited |
| FdUsdOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | bsc | n/a | 3 deployments: bsc `0x1b8b3ff07fefee784e3a5d208d34c12c6489d308`; bsc `0x464bfb803adcf585a3fb683c8ccfe7e9908d5d57`; bsc `0x908047528c0a4c9829875afb6b35d94aeb7aaa94` | ⚠️ Unaudited |
| FdUsdOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x1dbc9a4d61c05a085cc290ead59d44dede792072`; bsc `0xcf95095394a4838a8ed3478fecf332dda978ecd3` | ⚠️ Unaudited |
| FlashBuy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x9ba88e6b20041750fd4e6271fea455f5d44063cb`; bsc `0xdace1c6e4451f330c4e35c32171fd66f86875057` | ⚠️ Unaudited |
| FlashBuy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xb7a58ab98b9c4d41038288d5090e4806a17f3978`; bsc `0xd5d976511b66b74ca07e3fee4c4d0071d7c2aaa0` | ⚠️ Unaudited |
| GemJoin | unknown | non_address_book | non_address_book_inventory (excluded) | 16 | bsc | n/a | 17 deployments: bsc `0x03db750d6212c6a0bca9258e8cb7cf46dfd63067`; bsc `0x157c9a692ee99c39272856055957083a928ce299`; bsc `0x2202a491752fee0e616f06a89e2ef416e2fcd7e9`; bsc `0x2367f2da6fd39de6944218cc9ec706bcdc9a6918`; bsc `0x3cd434f0a58018b87ef1d2436cb710ca46f0fc43`; bsc `0x3e75d7edacc97645033ef8073d025069b0a0976d`; bsc `0x3f3e0a03a9e123e5861044d436862dfa1468cc10`; bsc `0x605356cc9f725e6744a51e78cd49e6029dcc4404`; bsc `0x876cd9a380ee7712129b52f8293f6f06056c3104`; bsc `0x98b167359566c1ea05335d52794c7eb6f8e6739a`; bsc `0xa94aa72e033b39ad7cd448f38bc1eda5b52f7079`; bsc `0xad406ccf75f9e6216fa4349635b0cd77d0059b1f`; bsc `0xad9eaae95617c39019acc42301a1dca4ea5b6f65`; bsc `0xd7e33948e2a43e7c1ec2f19937bf5bf8bbf9bae8`; bsc `0xdcfe50533fab1271e13a973260c2454e0412007e`; bsc `0xe95eaf5b61558bf73195550149759ce53a82a0c6`; bsc `0xf8ca8d2b59a97125751af1069d4a5c4f7eb7a677` | ⚠️ Unaudited |
| HelioETHProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd1eb8719c4b64d3a3fa1ba89e2c70ea5c99ab904` | ⚠️ Unaudited |
| HelioProviderV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x891a6041c43337a7d8c72a1b19535d221ce7df7f`; bsc `0xc5b9e1b881acc4171222c88be3d30e3060a5e212`; bsc `0xf85d7c7baf867a97a91feb9583464b9d44d40a99` | ⚠️ Unaudited |
| Interaction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 7 deployments: bsc `0x2f9da64252015a36e595dc02e05bac65880a509e`; bsc `0x3a0f552c0555468a9f8ab641fe44f5ba86208a9c`; bsc `0x4c545d844aa9a2c5adf801f243ac490ea0ad3bff`; bsc `0x5e9909b011f916c2256e857aa8802cbd17bd756a`; bsc `0x91419001e8ae28d43b982cc9931af4921c6ffe05`; bsc `0xb162268aa2da5ff0da6f567d3539d63fb767a884`; bsc `0xf1e177611ab50e6436e821ff357f1f9996fb191a` | ⚠️ Unaudited |
| Jar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x383a3517c5d9259bcf43f4bf8612c6726b5b2130` | ⚠️ Unaudited |
| LinearDecrease | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5faa44a3f92eab686f6ad1d1ad15a1995b20552e` | ⚠️ Unaudited |
| LinearDecrease | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xbaf8b40a1e2a7b842289778c1c509b6bede3cc03`; bsc `0xd209d14e37ce53dabbef30d14d75eb2f10d75283` | ⚠️ Unaudited |
| LiquidityImp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8b3c75bf9e038d6ab44d803eb501bfbab5b4933c` | ⚠️ Unaudited |
| ListaAutoBuyback | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0f4c128a811a0b0da2845634c736ff1d9f61d415` | ⚠️ Unaudited |
| ListaAutoBuyback | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0xffd3a57e8db4f51fa01c72f06ff30bdfda9908e6` | ⚠️ Unaudited |
| ListaOFTAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x82f5bcd1473bda5794239d01073797093a413f02`; bsc `0x837cb07f6b8a98731856092457524ff37b25e7b3` | ⚠️ Unaudited |
| ListaRevenueDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x1c56ccf0727bac9d08494603da5d2594229a7cc4`; bsc `0x92cfb77a08c30f1c8db796f727fc2527e37a6393` | ⚠️ Unaudited |
| ListaRevenueDistributor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x34b504a5cf0ff41f8a480580533b6dda687fa3da` | ⚠️ Unaudited |
| ListaStakeManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 5 deployments: bsc `0x4d9ed586a8490d227dafdbe520306fbae7a33430`; bsc `0xbc019efcfb2d3cf39d1746ffc86d42b4f0b8d305`; bsc `0xe6c1be26d4f1da814e106c5a26b74630616f79ed`; bsc `0xee3d6924e0b009937eb7a68565fdfd3ff4efc3cc`; bsc `0xfd6b9cc40a30c1b57799db95e59c0b73e3aeb4ef` | ⚠️ Unaudited |
| ListaVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 5 deployments: bsc `0x0fee401a16837b8a8c6c8b9f8d88744b5e36e05c`; bsc `0x18fce50936a7cbde5ced39de9c31307fe92164c4`; bsc `0x36a7bd8a73aeba3a2a9769d6b69a762e75944c84`; bsc `0x7dc9d0f14b0cd5ecdaa2453113727947d40c5ba0`; bsc `0xb7d76fca706ef87c51fa26aeb611312b8f90a4a4` | ⚠️ Unaudited |
| ListaVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x307d13267f360f78005f476fa913f8848f30292a` | ⚠️ Unaudited |
| LisUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf5bd9b192092517d60e90c9af17b69b134c4d7f8` | ⚠️ Unaudited |
| LisUSDPoolSet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x37db1ae9b24055d1f9fe973aea40b7eb2995d0bf`; bsc `0x5860341cc63b05d74dad4716f5dbc447c2c7bb0f` | ⚠️ Unaudited |
| LpProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x5a0e3291514f5f1797a0c7efefdac81eec70ec01` | ⚠️ Unaudited |
| LpProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0xac6d58a801f8ea7ebd4a97b56fe364ffb28d8460`; bsc `0xf87e703e1e090943e2c632957fc297356a377799` | ⚠️ Unaudited |
| Market | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x64e30b9e176b4551b5d9f17d72716152540cbd98` | ⚠️ Unaudited |
| MasterVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x034f0ae5d952c2ffe4247d396010c50ce6929b37` | ⚠️ Unaudited |
| mBTCOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | bsc | n/a | 3 deployments: bsc `0x31d558b899461d6ea498c3c1664a150a19b87aaf`; bsc `0x8be9583e729ca39d3d50458fb59e4fe5ba222345`; bsc `0xd5e1b35d7dfb1b20546d3bb63aee3d8b7cc66870` | ⚠️ Unaudited |
| mBTCProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x8a016f1896dc2939ffdbb60f6e42bcc245e2bb0b` | ⚠️ Unaudited |
| mCAKEOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x01b39e969a76d2f7c9a8a81ecd1b2f7116b44e23`; bsc `0x7db21c0f1c05b04211682b908e09270d5a1c3ce7` | ⚠️ Unaudited |
| MerkleVerifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0xdeb5985e45edcb44af736f7739ec00983239ceaa`; bsc `0xf625b8ec0f018ebd20135f5d67d396567539386d` | ⚠️ Unaudited |
| mwBETHOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x3605c70f8512f6c257bbe144e365f1a564db95b1`; bsc `0xaa4912633e4e2f65604fe7f6a6ba9eb5ef6d50d0` | ⚠️ Unaudited |
| NonTransferableLpERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x7082528e908bfd0c42d2134fe7065457cfcfb755`; bsc `0xee56eecd63999cc08a8dc77aaa29167fb8796dbb` | ⚠️ Unaudited |
| NonTransferableLpERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xb894de45fdcc9f51f20cc8e648f241e5914f9c26`; bsc `0xc74efa6ced143ce5e362f9814b515595594fb7dd` | ⚠️ Unaudited |
| Oracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x6f6a144760f8b4d7876eb6155a52393a8304932b`; bsc `0xb5c57d0de4457e4bd23da765089db7b7e21e4391` | ⚠️ Unaudited |
| OracleCenter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x47dbcae9c5a8eb4ed847fa9283c3e42457784a41`; bsc `0x946a68b29149f819fbce866ced3632e0c9f7c53b` | ⚠️ Unaudited |
| PancakeStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x81159173185c411ed61f6eb332d1a653bb1c866b` | ⚠️ Unaudited |
| PancakeStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xb20a61434be17e2eb48035577f083706b6780e4f`; bsc `0xe31f0bce1f825a8e27f2cc30b54af19da2978f10` | ⚠️ Unaudited |
| PSM | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xaa57f36dd5ef2ac471863ec46277f976f272ec0c`; bsc `0xf51c1d20c112aeb47a756ebfcd4789cf911abb7f` | ⚠️ Unaudited |
| PTLinearDiscountOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x138288f20a4d7c22e2b3fbffbf3a45e7c69ddd59`; bsc `0xa3462713bdd1ed1a7f43f157ff04602f0e505281` | ⚠️ Unaudited |
| PToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 5 deployments: bsc `0x34f18e18330468ffaedfdcd8ffdaff23aa80eafc`; bsc `0x660e36cf1e11e84b5e9258d08bce73e0e55bc300`; bsc `0x79427ff99d3da57b8526fc99b314d9c89f94aec0`; bsc `0xbfc693b81fd0917f88cd47f9a79bbca6537f2750`; bsc `0xccbfd52a2738248e8d0a656f8dfc6c1ea710241b` | ⚠️ Unaudited |
| PumpBtcOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x420a16f03e7f623556ccee452d4caafe1fdde28b`; bsc `0xd06233c390f8522c993d61cbd260a7eef9544c6f` | ⚠️ Unaudited |
| PumpBTCProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xabdb46ba7b15ec01be368736bb7fe13ab209f4df` | ⚠️ Unaudited |
| PumpBTCProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0xea44ddc58ec6b4902e19a353c554b6a4f32b9e6e` | ⚠️ Unaudited |
| RateX (RTX) OFT token | unknown | project_anchor | own_supporting | 0 | bsc | unit-391313 | `0x4829a1d1fb6ded1f81d26868ab8976648baf9893` | ⚠️ Unaudited |
| ResilientOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x35c673a0a56edb743a8cf67bcd96d0eab8af4bbe`; bsc `0xf3afd82a4071f272f403dc176916141f44e6c750` | ⚠️ Unaudited |
| SafeGuard | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x1b19bc6394246d4795d16ceee9edc76b4d11b96e`; bsc `0x79cfad1b5201cd0076208191f34b03497d30cc3f` | ⚠️ Unaudited |
| SlisBnbDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x9881cfce5a072a107dcce7fd24e2c99b857c7e12`; bsc `0xade6d976c0d8ce99ee4d15311960ed36b18bea2f` | ⚠️ Unaudited |
| SlisBnbOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x44388ef3bc730bde8670a3b4831281dd7e89c584`; bsc `0x5fb5b240da0d267cb891f046d04d2a3c35804114`; bsc `0x7320538c11182729d877fa61b800eccf8dc96a8c`; bsc `0xddc89c08fc8315526d50ca327c3695daf50ba274` | ⚠️ Unaudited |
| SlisBNBProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf982b7b82dbf7d25330fc14e902abf9b01c79415` | ⚠️ Unaudited |
| SlisBNBProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0xfd31e1c5e5571f8e7fe318f80888c1e6da97819b` | ⚠️ Unaudited |
| SLisLibrary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x64dbd29ab153e7cf8806fb635ef95285e16480c6`; bsc `0xf2d56e8ec2171094ceed1d02c810ccb82e53ebc4` | ⚠️ Unaudited |
| SnBnbYieldConverterStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x1101ff0f0545f3e2ed54fd986814295356923dc3`; bsc `0x84c4454d8a65e3ecdebd54446a45cd6b54b27190`; bsc `0x89a9bcd96931f8f4bad468d51083749d3dd3f2cf`; bsc `0xf9b24c9364457ea85792179d285855753549ebaa` | ⚠️ Unaudited |
| SnStakeManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9b83f26e9626e81d8f7d059400c4e25ebd6cfb6c` | ⚠️ Unaudited |
| SolvBTCBBNOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb35d0f744ddcd92763d37ab3c58716183a99055d` | ⚠️ Unaudited |
| SolvBtcOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x08bcb6030db9f3eb310b226ca94f9ab7a1540c5f`; bsc `0xb7a753f3776282976c1f2b0bcb2ff0d13d48af85` | ⚠️ Unaudited |
| StakeLisUSDListaDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x82c6fb65aa044bb8463068e30d1146beb08a4491`; bsc `0xfeb28443692216f66d14c7be4a449a765e2bdbac` | ⚠️ Unaudited |
| StakeLisUSDListaDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xefebddff8730871b72cdaf8793455f26a59fcf14`; bsc `0xf2fa32498305e6595e3d54dc41674d0fca207026` | ⚠️ Unaudited |
| StakingVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x0541eeef035709040728bedbfd7234298ba1806a`; bsc `0xf40d0d497966fe198765877484fff08c2d2004ad` | ⚠️ Unaudited |
| StakingVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x2c3f3b829ce4c8579deb20e2487a4dfac9ad0339`; bsc `0x62dfec5c9518fe2e0ba483833d1bad94ecf68153` | ⚠️ Unaudited |
| StakingVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0xd1a6cc786c0976a6183ebd9386ed8730df366c18`; bsc `0xeed4af751a46afcd34dcec8997aabd62cc556410` | ⚠️ Unaudited |
| StoneOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3b2ff473c2a10f7303230955a7fede931359ffb1` | ⚠️ Unaudited |
| StoneOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0xdf5a8e190cf63d74a4ec743253fa26d4c7539be8` | ⚠️ Unaudited |
| ThenaERC20LpProvidableListaDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xc998f14f0692526824bfa3d299fd5cce04cee150`; bsc `0xff5ed1e64aca62c822b178ffa5c36b40c112eb00` | ⚠️ Unaudited |
| ThenaStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xcda44d50fa7a806372926e521e6dde34612c34b3`; bsc `0xfa5b482882f9e025faccce558c2f72c6c50ac719` | ⚠️ Unaudited |
| ThenaStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe93ce7b2df98e6b2b4f7e6700f348f24355f6173` | ⚠️ Unaudited |
| TimeLock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x07d274a68393e8b8a2ccf19a2ce4ba3518735253` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x0ffee08f7226695e4de38004a48785a441ef8b0c`; bsc `0xedbcdd0a45fd8eba749ffc10205c65cea54336d5` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 16 deployments: bsc `0x227716e5f6c59f961e091d35345b16ce09f6c867`; bsc `0x2d24c9cb4f50f5ef7cae3511b353bfa34496162d`; bsc `0x337a7aa8b6d46bc3c0c556ca01736c1f11c38249`; bsc `0x43a00b49af21185bf4584ad0e8f358819b75ea42`; bsc `0x4fece6008177bcd410359f84167675fc0135ef65`; bsc `0x5be73ae431b344b1daa848d9220cc782aecdb971`; bsc `0x5ecc1d29e0daa11ede4087724922ea39e40627c4`; bsc `0x735f7af3b805d80de9bc2020c73f7272dee1e918`; bsc `0x7628a53ec6f1132afe2f409fcb2b3061b5a7dcc0`; bsc `0xa118509b6eade157462a89e33eb23e3d4b66b0eb`; bsc `0xa257a5452038e6a742e90131723768946ea748c1`; bsc `0xb18bf811d63d28858c46544493a6b0bd0388605c`; bsc `0xbcb466546274404243d38bb509b6b339737a7245`; bsc `0xc6c6b6546551850463e26bdaee94c14b989cd932`; bsc `0xd84effd9d924d1a83c5b475e5afbc9b147064d97`; bsc `0xfc0ef1b8c41f7b7a292decbe4c9d7783f938edfd` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x35a8e465b7c28123bbe568207f4202f8b7401692`; bsc `0x533fa43221e251ec637ef33021e1e0d9d7a0ce4d` | ⚠️ Unaudited |
| UpdateImp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb844d65c4c27a57203989235a7cd765317b80f13` | ⚠️ Unaudited |
| USDTLpListaDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x24e5debbeba18237fdb65d0f6adfe73b4a0d0bd9`; bsc `0x9eb77a54a33069a319d91f493e6b1c9066fb38f7` | ⚠️ Unaudited |
| UsdtOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | bsc | n/a | 3 deployments: bsc `0x45575e5ccef6c784ae7ce28ccbef1fd6dcc1d92d`; bsc `0xdf2d4c43f45ac225abfde4a92f9ff950f517ae63`; bsc `0xf19dc2b8acd55aa4e80583de3943260fa3a26a72` | ⚠️ Unaudited |
| VaultManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x15fc4e6417c74577dee27aaafb2e2c5806727ec2`; bsc `0x5763ddeb60c82684f3d0098aea5076c0da972ec7` | ⚠️ Unaudited |
| VeLista | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0xd0c380d31db43cd291e2bbe2da2fd6dc877b87b3` | ⚠️ Unaudited |
| VeLista | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0xee00deb0900e91e3eb5b2281e916d91b86e5319b`; bsc `0xf8d76299a6d722ebd8b2ea00e20fef2f23a9460a` | ⚠️ Unaudited |
| VeListaAutoCompounder | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x9a0530a81c83d3b0dae720bf91c9254fecc3bf5e` | ⚠️ Unaudited |
| VeListaDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x0068358250759de8f50c83927c4a95847f4ccfd6`; bsc `0x45aac046bc656991c52cf25e783c6942425ce40c` | ⚠️ Unaudited |
| VeListaDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4b129861320ef46f22120fba558b28e1e46f5145` | ⚠️ Unaudited |
| VeListaRewardsCourier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x87e994de2a997385aff4f991c233f07bb9f9070f` | ⚠️ Unaudited |
| VeListaRewardsCourier | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0xca8d2451df68a9132fd9d30e8d354460642b72e9` | ⚠️ Unaudited |
| VenusAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xc1d3a2f48f1c025f80e32a54a4000a73633cacef`; bsc `0xf76d9cfd08df91491680313b1a5b44307129cda9` | ⚠️ Unaudited |
| VenusAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe5dbfc7c6836335c16c4c4f5416a99f575c13d8d` | ⚠️ Unaudited |
| VotingIncentive | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x05ac03faeb31c8102a29dc1fa4365dc9e18a4c9c`; bsc `0xbc380e5542ce7be7418deb88c3d3e80efe570b82` | ⚠️ Unaudited |
| WeEthOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x8f8075340ece10e74245d5f0e0e242500bafeee1`; bsc `0xe514851e324b54f152f7d9631ace1a0a87248b46` | ⚠️ Unaudited |
| WstETHOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x77f452a594aa6bf1eb67ceedd941ff14ac070b95` | ⚠️ Unaudited |
| WstETHOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0xc9ca2376ae12e22dcb198eacb17e44168024ddd7` | ⚠️ Unaudited |
| xSolvBTCOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x0ad764098ff68b100d0976a8bcf2294b67669caa` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (75)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x01c95ce9812d5afa9cbf1895a954d1f47d847e75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x03c5f8a133d0c18cf3e292b922307c2a7dd8cc81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x042b82e0ec7bafab71741a0b10ab2c86f170dc3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x04416128b7c660830552fea07d8354a6401e82eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0cac35f9ba2540d20a2f9546cc2857ae6e94a76f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0d3190a79ee5bac60ea11d59b8e04a2b34c7a3cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0e3ee2ff0c698f5214be8dc8e3b7273a209e0f2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x11b7db95476056ad8e8b69690f2c653ff2999e47` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x14c5b2bf104563db7bee98623b34078c2fb5b912` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1553001eb017a3f761d727776d4d2ab48bf2be13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x182ce9c9c5be9ed89d89733bb285fd942219b35a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1b262f377cdce90d1b03c7acd58fffe81e729d99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1ba5170846f90ea317a52a3390eb6ed0449aae8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x22c2503de20439081aefb7b2a4fef7c59ae94209` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x25ca16ac2e89eeac59b5d978b68b1e69bd467123` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2665ea3f16e7a68f8f6d2d7f66e0d18411cf09f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x27849bd428d69d6e1a498a68f2ef2a1f7fb5d3e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2bc7363b1b89dd160ca48845a8a18dd3bbd76a26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2ea5c72073e616cf91601316d54e3b3679e17c75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x385a83415e7f33f94509388264cce6fe540e5b29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3aa7e96919af19a5a3c67b28de01051a8dd898a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3c3508f48b6e4d0e3e64e2567e3c77bcc2686d18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x44211d92a67514b0e41cc3bf59def34b702f5a72` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x45596f400f9b863f8d8e81a7f1fefbf54b3f858c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x468ba2877dbb5c658a6308862a582098a1e49b55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x499148a703c3aff309a4fa91baa48c31adbdb2e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4acca9d2e908fb51dae1e47f22228155b51632a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x50250e8f0b2321a65cb49e9476ea2172593a6f6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x50e2feb2ce478d69f9df0b76caf667ab8883bc22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x50e9e2108ec31e7b183c80820ef946301d65d172` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x54399a6a1aae0745b74b554bfea8a747f1b67453` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x567485bf9e1a436e4795d2d7c367fe02dd54306d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x57df909ab20767815c59fb8da53ffee3e6b473a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5d728c8ad09f28aac957e9fbfe21fde57d441070` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5f651cd654d61b7e8800da70b332a43c3314ed2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5fe35e0c061a53bbf72685519d012cd7aafaef3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x61682bd8564edbac25f33b46f084530521d0c0e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x677bcdab243432797146c103d642c11fe8abca14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6840587f7ca66e90117204f51aa51e303fcd515c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x68a564b1c10b6520e7affbbd2b68973a9b10b88e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x69d072577f02775c1f1781cb67fc3020631899ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6bc8522001a35153b233889695a92d5944d89248` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x72f7313d8c77fcdd8b7f8a423b9d49ab1be28f6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x732a42793330d057b0c654e8178fac976377ab32` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x792208a6c2f1972251618a933ee898f6f1e3db22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7a270cc177171e9b86a81c853e947f0f8bbf01db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8613991f2c4cf56998d02cc5eb80f469c279bfb3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x89a32e33da7ba50b1c88886f1c9143264940cb8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x89aafc1fb59fcdb8bff45e1447ada31e3680b6a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x92be026b8af771cc5c0ac706f7367eff27ec15d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x93ecf7ac78f0a65eedcea526d0b93d4fd67924d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x957b4f90815968bc96d4605d14c03de9e2f1e920` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x977f80769d5c669ac6d45bc681991e9d9738f830` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9fe1e9d3e942b79c0b505e13f5cf9bf6e77e0c83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa9a170c1837214a39312c520776a17f8c65445c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xae1951b7e977d99a45a3e4f67c0da99b525a4508` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xaf34bcb8b7f6a93364b3e3808ed84f5bd6f8053e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbd13ab3f223354d85991b1e5847147ea2647c5f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc62e55193d091d2fb023c42a3c865ae03a4570a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc9540cf0e7e108f227bdd7be6ee3580d0779d984` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcac95a3caa51767e580bd90c69feb39487e83d1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd3406ff3925427cfaf6401636400f1acb3358604` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd358c595f16a9ed3b8b1cd62fea08d5879744056` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd75453a350b0628308524a73edaa82c721638837` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe86657b78369529f7325c48fb5d181f7e7c27877` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xeb1d5ed97d9c34d4ec84439a34b6d4fb999ca45a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xeccaa7df72b3bad863aa9189919cd2142d793050` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xedeb8addaab1dda4b9f90a503e628b0d65bdd353` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf471103d48bc4f55cc7444a8ff248ee79103a874` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf6852f68677ac73622814ece2e7ed1a21d1d18ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf7685a8dc256aabb5e4915ee4366af8596184b64` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf7e1781fb03aac17e44cb75cd5f43dfe25b1923c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfb9c890d9154813e2508ab39f503e756ca5596ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfbf1733663cf4810a4908bd0da01f1866bcb7e1c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfd8ef9388231b7cd8b6c9dbb3b69c9f12a4e46b9` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 329
- Live contracts: 0
- Unknown liveness contracts: 329
- Source-verified contracts: 300
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: candidate review=159, contamination review=13, source verified unclassified=128, unverified unclassified=29

Showing first 200 of 329 contracts. The complete deployer expansion list is in `brief.json`.

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| bsc | candidate review | EarnImp<br>`0x92723acbac7bd5326f25c719f27769e6adc4819e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x1fd4e4b4fe175284e17d84d5ec09cbfb60d859eb` |
| bsc | candidate review | PToken<br>`0xbfc693b81fd0917f88cd47f9a79bbca6537f2750` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x1fd4e4b4fe175284e17d84d5ec09cbfb60d859eb` |
| bsc | candidate review | PToken<br>`0xccbfd52a2738248e8d0a656f8dfc6c1ea710241b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x1fd4e4b4fe175284e17d84d5ec09cbfb60d859eb` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x533fa43221e251ec637ef33021e1e0d9d7a0ce4d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x1fd4e4b4fe175284e17d84d5ec09cbfb60d859eb` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0xc6c6b6546551850463e26bdaee94c14b989cd932` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x1fd4e4b4fe175284e17d84d5ec09cbfb60d859eb` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0xedbcdd0a45fd8eba749ffc10205c65cea54336d5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x1fd4e4b4fe175284e17d84d5ec09cbfb60d859eb` |
| bsc | candidate review | UpdateImp<br>`0xb844d65c4c27a57203989235a7cd765317b80f13` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x1fd4e4b4fe175284e17d84d5ec09cbfb60d859eb` |
| bsc | source verified unclassified | ClearingHouse<br>`0x70836c31176b42c101b46c9ee0f46e385954bbcb` | non_address_book | unknown | unknown | verified | n/a | `0x1fd4e4b4fe175284e17d84d5ec09cbfb60d859eb` |
| bsc | source verified unclassified | LiquidityImp<br>`0x8b3c75bf9e038d6ab44d803eb501bfbab5b4933c` | non_address_book | unknown | unknown | verified | n/a | `0x1fd4e4b4fe175284e17d84d5ec09cbfb60d859eb` |
| bsc | source verified unclassified | Oracle<br>`0x6f6a144760f8b4d7876eb6155a52393a8304932b` | non_address_book | unknown | unknown | verified | n/a | `0x1fd4e4b4fe175284e17d84d5ec09cbfb60d859eb` |
| bsc | source verified unclassified | Oracle<br>`0xb5c57d0de4457e4bd23da765089db7b7e21e4391` | non_address_book | unknown | unknown | verified | n/a | `0x1fd4e4b4fe175284e17d84d5ec09cbfb60d859eb` |
| bsc | unverified unclassified | UnnamedContract<br>`0x03c5f8a133d0c18cf3e292b922307c2a7dd8cc81` | non_address_book | unknown | unknown | unverified | n/a | `0x1fd4e4b4fe175284e17d84d5ec09cbfb60d859eb` |
| bsc | unverified unclassified | UnnamedContract<br>`0x0ffee08f7226695e4de38004a48785a441ef8b0c` | non_address_book | unknown | unknown | unverified | n/a | `0x1fd4e4b4fe175284e17d84d5ec09cbfb60d859eb` |
| bsc | unverified unclassified | UnnamedContract<br>`0x11b7db95476056ad8e8b69690f2c653ff2999e47` | non_address_book | unknown | unknown | unverified | n/a | `0x1fd4e4b4fe175284e17d84d5ec09cbfb60d859eb` |
| bsc | unverified unclassified | UnnamedContract<br>`0x1553001eb017a3f761d727776d4d2ab48bf2be13` | non_address_book | unknown | unknown | unverified | n/a | `0x1fd4e4b4fe175284e17d84d5ec09cbfb60d859eb` |
| bsc | unverified unclassified | UnnamedContract<br>`0x27849bd428d69d6e1a498a68f2ef2a1f7fb5d3e2` | non_address_book | unknown | unknown | unverified | n/a | `0x1fd4e4b4fe175284e17d84d5ec09cbfb60d859eb` |
| bsc | unverified unclassified | UnnamedContract<br>`0x2ea5c72073e616cf91601316d54e3b3679e17c75` | non_address_book | unknown | unknown | unverified | n/a | `0x1fd4e4b4fe175284e17d84d5ec09cbfb60d859eb` |
| bsc | unverified unclassified | UnnamedContract<br>`0x35a8e465b7c28123bbe568207f4202f8b7401692` | non_address_book | unknown | unknown | unverified | n/a | `0x1fd4e4b4fe175284e17d84d5ec09cbfb60d859eb` |
| bsc | unverified unclassified | UnnamedContract<br>`0x385a83415e7f33f94509388264cce6fe540e5b29` | non_address_book | unknown | unknown | unverified | n/a | `0x1fd4e4b4fe175284e17d84d5ec09cbfb60d859eb` |
| bsc | unverified unclassified | UnnamedContract<br>`0x45596f400f9b863f8d8e81a7f1fefbf54b3f858c` | non_address_book | unknown | unknown | unverified | n/a | `0x1fd4e4b4fe175284e17d84d5ec09cbfb60d859eb` |
| bsc | unverified unclassified | UnnamedContract<br>`0x468ba2877dbb5c658a6308862a582098a1e49b55` | non_address_book | unknown | unknown | unverified | n/a | `0x1fd4e4b4fe175284e17d84d5ec09cbfb60d859eb` |
| bsc | unverified unclassified | UnnamedContract<br>`0x499148a703c3aff309a4fa91baa48c31adbdb2e8` | non_address_book | unknown | unknown | unverified | n/a | `0x1fd4e4b4fe175284e17d84d5ec09cbfb60d859eb` |
| bsc | unverified unclassified | UnnamedContract<br>`0x50250e8f0b2321a65cb49e9476ea2172593a6f6d` | non_address_book | unknown | unknown | unverified | n/a | `0x1fd4e4b4fe175284e17d84d5ec09cbfb60d859eb` |
| bsc | unverified unclassified | UnnamedContract<br>`0x5f651cd654d61b7e8800da70b332a43c3314ed2d` | non_address_book | unknown | unknown | unverified | n/a | `0x1fd4e4b4fe175284e17d84d5ec09cbfb60d859eb` |
| bsc | unverified unclassified | UnnamedContract<br>`0x677bcdab243432797146c103d642c11fe8abca14` | non_address_book | unknown | unknown | unverified | n/a | `0x1fd4e4b4fe175284e17d84d5ec09cbfb60d859eb` |
| bsc | unverified unclassified | UnnamedContract<br>`0x6840587f7ca66e90117204f51aa51e303fcd515c` | non_address_book | unknown | unknown | unverified | n/a | `0x1fd4e4b4fe175284e17d84d5ec09cbfb60d859eb` |
| bsc | unverified unclassified | UnnamedContract<br>`0x69d072577f02775c1f1781cb67fc3020631899ee` | non_address_book | unknown | unknown | unverified | n/a | `0x1fd4e4b4fe175284e17d84d5ec09cbfb60d859eb` |
| bsc | unverified unclassified | UnnamedContract<br>`0x792208a6c2f1972251618a933ee898f6f1e3db22` | non_address_book | unknown | unknown | unverified | n/a | `0x1fd4e4b4fe175284e17d84d5ec09cbfb60d859eb` |
| bsc | unverified unclassified | UnnamedContract<br>`0x7a270cc177171e9b86a81c853e947f0f8bbf01db` | non_address_book | unknown | unknown | unverified | n/a | `0x1fd4e4b4fe175284e17d84d5ec09cbfb60d859eb` |
| bsc | unverified unclassified | UnnamedContract<br>`0x8613991f2c4cf56998d02cc5eb80f469c279bfb3` | non_address_book | unknown | unknown | unverified | n/a | `0x1fd4e4b4fe175284e17d84d5ec09cbfb60d859eb` |
| bsc | unverified unclassified | UnnamedContract<br>`0x89aafc1fb59fcdb8bff45e1447ada31e3680b6a8` | non_address_book | unknown | unknown | unverified | n/a | `0x1fd4e4b4fe175284e17d84d5ec09cbfb60d859eb` |
| bsc | unverified unclassified | UnnamedContract<br>`0x977f80769d5c669ac6d45bc681991e9d9738f830` | non_address_book | unknown | unknown | unverified | n/a | `0x1fd4e4b4fe175284e17d84d5ec09cbfb60d859eb` |
| bsc | unverified unclassified | UnnamedContract<br>`0x9fe1e9d3e942b79c0b505e13f5cf9bf6e77e0c83` | non_address_book | unknown | unknown | unverified | n/a | `0x1fd4e4b4fe175284e17d84d5ec09cbfb60d859eb` |
| bsc | unverified unclassified | UnnamedContract<br>`0xe86657b78369529f7325c48fb5d181f7e7c27877` | non_address_book | unknown | unknown | unverified | n/a | `0x1fd4e4b4fe175284e17d84d5ec09cbfb60d859eb` |
| bsc | unverified unclassified | UnnamedContract<br>`0xeb1d5ed97d9c34d4ec84439a34b6d4fb999ca45a` | non_address_book | unknown | unknown | unverified | n/a | `0x1fd4e4b4fe175284e17d84d5ec09cbfb60d859eb` |
| bsc | unverified unclassified | UnnamedContract<br>`0xf6852f68677ac73622814ece2e7ed1a21d1d18ef` | non_address_book | unknown | unknown | unverified | n/a | `0x1fd4e4b4fe175284e17d84d5ec09cbfb60d859eb` |
| bsc | unverified unclassified | UnnamedContract<br>`0xfb9c890d9154813e2508ab39f503e756ca5596ae` | non_address_book | unknown | unknown | unverified | n/a | `0x1fd4e4b4fe175284e17d84d5ec09cbfb60d859eb` |
| bsc | candidate review | ERC1967Proxy<br>`0x05ac03faeb31c8102a29dc1fa4365dc9e18a4c9c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | ERC1967Proxy<br>`0x138288f20a4d7c22e2b3fbffbf3a45e7c69ddd59` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | ERC1967Proxy<br>`0x1afa1589a634be568d7872dcf1bbe6f79e11fad5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | ERC1967Proxy<br>`0x2725d7336027773d7a958e10819a923dcd65aa57` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | ERC1967Proxy<br>`0x37db1ae9b24055d1f9fe973aea40b7eb2995d0bf` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | ERC1967Proxy<br>`0x550206e612bffe9f9f0a8e38fa68f68e184a7f15` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | ERC1967Proxy<br>`0x5763ddeb60c82684f3d0098aea5076c0da972ec7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | ERC1967Proxy<br>`0x66de07893db7492b56ba88503b4cc99bab1796f3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | ERC1967Proxy<br>`0xaa57f36dd5ef2ac471863ec46277f976f272ec0c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | ERC1967Proxy<br>`0xc74efa6ced143ce5e362f9814b515595594fb7dd` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | ERC1967Proxy<br>`0xee56eecd63999cc08a8dc77aaa29167fb8796dbb` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | ERC1967Proxy<br>`0xf76d9cfd08df91491680313b1a5b44307129cda9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x01a6fcc74852088c72862c12c54f992720eb8281` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x01b39e969a76d2f7c9a8a81ecd1b2f7116b44e23` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x03db750d6212c6a0bca9258e8cb7cf46dfd63067` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x05570c903a99f59e8f9913d4d628796bad7115c3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x0ad764098ff68b100d0976a8bcf2294b67669caa` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x0aed860ca496600f6976219cb1acec435d7f4f3b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x0bfb1bd05e13b7757c26c839d9c385c8c8d8dad1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x117b4a02d1bb3a32f4bf5cd6103e633b2b651063` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x11bf1122871e13c13466681022c74b496b59147a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x157c9a692ee99c39272856055957083a928ce299` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x16c39b6ee97d3d92f570ad9403418e43ea0622a5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x1716ac5a34b46bc736f6f5c2d58661d5fbb47c73` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x1b8b3ff07fefee784e3a5d208d34c12c6489d308` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x1cf9c6d475cdca67942d41b0a34bd9cb9d336c4d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x2202a491752fee0e616f06a89e2ef416e2fcd7e9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x227716e5f6c59f961e091d35345b16ce09f6c867` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x2367f2da6fd39de6944218cc9ec706bcdc9a6918` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x2d24c9cb4f50f5ef7cae3511b353bfa34496162d` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x2ea16e082ca50eb6017bbfcb967cc7c6e2b8fb5a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x2eedc4723b1ed2f24afcd9c0e3665061bd2d5642` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x31d558b899461d6ea498c3c1664a150a19b87aaf` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x334e4f80cc2985d0f8196cc562dd8aeddda1b704` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x337a7aa8b6d46bc3c0c556ca01736c1f11c38249` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x3665d70c050ab2d46a3f5510db0c98658094d9c9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x398df8ddefb25a4e0fb740b5ae7c716cd9ec2596` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x39d099f6a78c7cef7a527f55c921e7e1ee39716a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x3b239391c48f0b46d31d39f79dcf64d3575e6086` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x3c161234622caf322e4f5363d46187eb3f010eb0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x3cd434f0a58018b87ef1d2436cb710ca46f0fc43` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x3f3e0a03a9e123e5861044d436862dfa1468cc10` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x4192ff5f1fefccbc446702117a48ac25fd1723b3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x419352db842b7f6f33dbf541d23938cffc181d1a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x420a16f03e7f623556ccee452d4caafe1fdde28b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x43a00b49af21185bf4584ad0e8f358819b75ea42` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x4510aa2b3efd13bbfd78c9bfde764f224ecc7f50` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x45aac046bc656991c52cf25e783c6942425ce40c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x46c5721dd7275ba19010a4f0e8febfdf6595be54` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x4b2d67bf25245783fc4c33a48962775437f9159c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x4fd4b7ec5faf57d94c37379e11a02b2d47368ac3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x4fece6008177bcd410359f84167675fc0135ef65` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x564fa71eabe7683af701d32f34421ecc118b1ebb` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x56627826504e2cbdd7213e38089c2a4e6327204c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x5784e62b4495c7cc4b09ccd3f206cc7128449ce0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x58fe0f18507dd331ddf91db9c111536d2a5c725a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x5aabbbe154c0afa072e313d46b29592936493b26` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x5be73ae431b344b1daa848d9220cc782aecdb971` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x5debc8917ef4f614b0998ddd8de7dd421fade245` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x5ecc1d29e0daa11ede4087724922ea39e40627c4` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x605356cc9f725e6744a51e78cd49e6029dcc4404` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x62dfec5c9518fe2e0ba483833d1bad94ecf68153` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x6c5285cb6c660bc08cf175f632131b06b213fc5e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x6dc0abfdad33f01e847e45bcc9e0acb9dd119b5a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x7247ddb894c4dc6be9ea7328fcfef0a07e20f59d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x73538cce62901bd374ba314acefc6c49ebda0093` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x735f7af3b805d80de9bc2020c73f7272dee1e918` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x74e17e6996f0ddafda9b500ab15a3ad7c2f69307` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x7628a53ec6f1132afe2f409fcb2b3061b5a7dcc0` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x77c9b49a58325131d08f9dc120388f20c57c2572` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x7ad627aeb610d3f82466d8f9e1b9a6e1c916da80` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x83f861165bc61af54cab4be9a96c2b92e3a2ae5b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x8453cd3d1588e62d5e72a8bc16a8a0300a16005f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x873339a8214657175d9b128ddd57a2f2c23256fa` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x876cd9a380ee7712129b52f8293f6f06056c3104` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x88620f85ba52a186314471d8eef7f6fcfec4a2e6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x88a596f8c8290f96d5742ae0905f912dd5291c27` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x8a314300088ec75aaefc53b92f73819050182cc6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x908047528c0a4c9829875afb6b35d94aeb7aaa94` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x946a68b29149f819fbce866ced3632e0c9f7c53b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x982d1db2d643ff4f497d5a4f566a565376ecf70c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x98a3ff86af8107abb40a706340b485e0b3e84c54` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x98b167359566c1ea05335d52794c7eb6f8e6739a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x9a819532e75b00ac8ca9e0c11f12cc87388c7856` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x9b4fcbc3a01378b85d81defbaf9359155718be4a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x9ba88e6b20041750fd4e6271fea455f5d44063cb` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x9ddd9bc74d1abab667097581fae6ee8dd3be5ff2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x9eb77a54a33069a319d91f493e6b1c9066fb38f7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x9f6c251c3122207adf561714c1171534b569eff4` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0xa3bce2def1823a551a407b14572c54d2adb0fd45` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0xa94aa72e033b39ad7cd448f38bc1eda5b52f7079` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0xa97aed02f9cd1d59186b3883e23efe9f5e347900` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0xaa4912633e4e2f65604fe7f6a6ba9eb5ef6d50d0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0xac6b7fe073996410a9c7fb3c879066d432d05996` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0xad406ccf75f9e6216fa4349635b0cd77d0059b1f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0xad9eaae95617c39019acc42301a1dca4ea5b6f65` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0xade6d976c0d8ce99ee4d15311960ed36b18bea2f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0xaf71337d151408401cc3a971e0a05c6d2790e08e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0xb12ff6fd1885a9cb2b26302c98092644604b1e92` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0xb18bf811d63d28858c46544493a6b0bd0388605c` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0xb1da312097c7cbf9b49ef9d29d21a0646d9a5af4` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0xb691624b69bbb23b8cc9847b5e8c151d75110ed4` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0xb7a58ab98b9c4d41038288d5090e4806a17f3978` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0xb7a753f3776282976c1f2b0bcb2ff0d13d48af85` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0xbaf8b40a1e2a7b842289778c1c509b6bede3cc03` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0xbcb466546274404243d38bb509b6b339737a7245` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0xc23d348f9cc86ddb059ec798e87e7f76fbc077c1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0xc4857c08295cb9270feb0a87fd60b3bfd459a998` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0xc4a8a6c81f79dc6218319ce68138e743b8edd830` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0xc6f28a668b7c18f921ccba4adc3d8db72bff0fe2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0xc952cc3d981baad5d4d041721e1e179e42e6e2d5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0xc9ca2376ae12e22dcb198eacb17e44168024ddd7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0xcb8f70fbc3cecaff9a5d53236dcb4ef76bccd2d6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0xcf95095394a4838a8ed3478fecf332dda978ecd3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0xd1f81b39fa4e7c08546285e8e9c5f5fe683b001e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0xd5e1b35d7dfb1b20546d3bb63aee3d8b7cc66870` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0xd7e33948e2a43e7c1ec2f19937bf5bf8bbf9bae8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0xd84effd9d924d1a83c5b475e5afbc9b147064d97` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0xdcfe50533fab1271e13a973260c2454e0412007e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0xdf2d4c43f45ac225abfde4a92f9ff950f517ae63` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0xdf5a8e190cf63d74a4ec743253fa26d4c7539be8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0xe31f0bce1f825a8e27f2cc30b54af19da2978f10` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0xe3221bc1084efb5d43cf94cd8de6b32cf37feb85` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0xe43fe85d8d1d4623b9e91c094beda7adbb14f520` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0xe514851e324b54f152f7d9631ace1a0a87248b46` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0xe5c03cceb62262c7af8c85e8474c06fa3f43de08` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0xe61f4386608578199471747e4654ae450adee39a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0xe786ec5b4838410c24e5c1c75633d7c59705d6be` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0xe859f3f6ee5532313c33a02283150e201290f45f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0xe8f4644637f127aff11f9492f41269eb5e8b8dd2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0xe95eaf5b61558bf73195550149759ce53a82a0c6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0xeb995ff652da728e7b0ebc31ab543c39e054b1ea` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0xf09fef5e373c969e4631f139a91531c257e22889` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0xf0fc2ded2f7dd1bfdad4008a9e0cd0248408e956` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0xf19dc2b8acd55aa4e80583de3943260fa3a26a72` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0xf21b35edf7a927799b80f09c395c460c3d31d057` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0xf2fa32498305e6595e3d54dc41674d0fca207026` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0xf3afd82a4071f272f403dc176916141f44e6c750` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0xf40d0d497966fe198765877484fff08c2d2004ad` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0xf57a8cf44104ea0dfbe286781bd1f51533a659f3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0xf6ab5cfdb46357f37b0190b793fb199d62dcf504` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0xf6dadf1210f7c22ad5bcba84b23cfd424a30313c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0xf8ca8d2b59a97125751af1069d4a5c4f7eb7a677` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0xf8d1d8a862ea77bf4f826bf6612bff0d0883eafa` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0xf920018fc69515102b915a543dfefbc837c3f9e6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0xfa5b482882f9e025faccce558c2f72c6c50ac719` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0xfc0ef1b8c41f7b7a292decbe4c9d7783f938edfd` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0xfc136f286805a7922d9bf04317068964b231336c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0xfe288198707d65e84390b59a844705d5c989525e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0xfeb28443692216f66d14c7be4a449a765e2bdbac` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0xff5ed1e64aca62c822b178ffa5c36b40c112eb00` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0xff6f8ca13db1bec5becfaf208b1d3c942b63f955` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | contamination review | BnbOracle<br>`0xd74508ab3bdbedaa6589f913e0f89d98b2ad2754` | non_address_book | unknown | unknown | verified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | contamination review | EthOracle<br>`0x9b4f67fb43180085ea26e348200027670eaf1e96` | non_address_book | unknown | unknown | verified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | contamination review | EzEthOracle<br>`0x209003905c94a67f766cbea529d2d5e1b3f7741b` | non_address_book | unknown | unknown | verified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | contamination review | Jar<br>`0x383a3517c5d9259bcf43f4bf8612c6726b5b2130` | non_address_book | unknown | unknown | verified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | contamination review | LinearDecrease<br>`0x5faa44a3f92eab686f6ad1d1ad15a1995b20552e` | non_address_book | unknown | unknown | verified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | contamination review | mwBETHOracle<br>`0x3605c70f8512f6c257bbe144e365f1a564db95b1` | non_address_book | unknown | unknown | verified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | contamination review | SlisBnbOracle<br>`0x44388ef3bc730bde8670a3b4831281dd7e89c584` | non_address_book | unknown | unknown | verified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | contamination review | SolvBTCBBNOracle<br>`0xb35d0f744ddcd92763d37ab3c58716183a99055d` | non_address_book | unknown | unknown | verified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | contamination review | SolvBtcOracle<br>`0x08bcb6030db9f3eb310b226ca94f9ab7a1540c5f` | non_address_book | unknown | unknown | verified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | contamination review | StoneOracle<br>`0x3b2ff473c2a10f7303230955a7fede931359ffb1` | non_address_book | unknown | unknown | verified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| bsc | contamination review | UsdtOracle<br>`0x45575e5ccef6c784ae7ce28ccbef1fd6dcc1d92d` | non_address_book | unknown | unknown | verified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [RateLabs-RateXMooncake-Oct-2025-OffsideLabs.pdf](https://github.com/RateX-Protocol/Audit-Report/blob/main/RateLabs-RateXMooncake-Oct-2025-OffsideLabs.pdf) | unknown | Audit | 2025-10 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [RateX-Sep-2024-OffsideLabs.final.pdf](https://github.com/RateX-Protocol/Audit-Report/blob/main/RateX-Sep-2024-OffsideLabs.final.pdf) | unknown | Audit | 2024-09 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2443] RateLabs-RateXMooncake-Oct-2025-OffsideLabs.pdf — no match: The report does not list specific contract names in scope; it only mentions 'mooncake program' and files under programs/ratex-mooncake/src/*.rs without naming individual contracts.
- [2444] RateX-Sep-2024-OffsideLabs.final.pdf — no match: Extracted contract names from findings and code references. Audit date from executive summary: concluded on September 10, 2024.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| RateX-Sep-2024-OffsideLabs.final.pdf | User | unmatched — not counted | — | mentioned in findings and code references | no |
| RateX-Sep-2024-OffsideLabs.final.pdf | MarginMarket | unmatched — not counted | — | mentioned in finding 4.3 | no |
| RateX-Sep-2024-OffsideLabs.final.pdf | YieldPosition | unmatched — not counted | — | mentioned in finding 4.2 | no |
| RateX-Sep-2024-OffsideLabs.final.pdf | DeleteUser | unmatched — not counted | — | mentioned in finding 4.9 | no |
| RateX-Sep-2024-OffsideLabs.final.pdf | DeleteLp | unmatched — not counted | — | mentioned in finding 4.9 | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 123 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 78 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 5 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1, low=1
- Match method counts: n/a

Zero-match audit list:

- [2443] RateLabs-RateXMooncake-Oct-2025-OffsideLabs.pdf
- [2444] RateX-Sep-2024-OffsideLabs.final.pdf

Fork inheritance lineage and inherited audits are included when available.
