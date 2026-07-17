# Agentic Audit Brief: Ribbon Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 3 across 2 audit(s)
- Eligible audit results: 15 (2 matched; 13 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Ribbon Finance (`ribbon-finance`)
- Website: [https://www.ribbon.finance/](https://www.ribbon.finance/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: avalanche, bsc, ethereum
- Contract surface: 201 unique implementations (540 raw deployments)
- Coverage basis: 3/32 confirmed own live verified implementations (9.4%); conservative 9.4% with 0 needs-review implementation(s)
- DeFi Llama TVL: $3,954,705.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Ribbon Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 44 contract row(s) across avalanche, ethereum. Structural roles: 38 unclassified, 6 core. 6 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 44
- Structural roles: unclassified (38), core (6)
- Contract kinds: contract (29), unclassified (15)
- Detected standards: erc1967proxy (6)
- Frameworks: openzeppelin (6)
- Upgradeable-pattern rows: 6

## Fork Analysis

0 of 38 contracts are derived from known codebases. 38 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x0aea75705be8281f4c24c3e954d1f8b1d0f8044c`, chain 1)
- UnnamedContract (`0x312853485a41f76f20a14f927cd0ea676588936c`, chain 1)
- UnnamedContract (`0x3b383d8e92cc922539f9e9f4d64da119e250334a`, chain 1)
- UnnamedContract (`0x3cd0ecf1552d135b8da61c7f44cefe93485c616d`, chain 1)
- UnnamedContract (`0x600eee67d5ffdbb897055c03e3ccdd0ac9706c8e`, chain 1)
- UnnamedContract (`0xc0cf10dd710aefb209d9dc67bc746510ffd98a53`, chain 1)
- UnnamedContract (`0xc59e218828eea3e84f38a2cb9e02aad9318db57a`, chain 1)
- UnnamedContract (`0xe44edf7ad1d434afe3397687dd0a914674f2e405`, chain 1)
- AdminUpgradeabilityProxy (`0x25751853eab4d0eb3652b5eb6ecb102a2789644b`, chain 1)
- AdminUpgradeabilityProxy (`0x53773e034d9784153471813dacaff53dbbb78e8c`, chain 1)
- AdminUpgradeabilityProxy (`0x65a833afdc250d9d38f8cd9bc2b1e3132db13b2f`, chain 1)
- AdminUpgradeabilityProxy (`0x84c2b16fa6877a8ff4f3271db7ea837233dfd6f0`, chain 1)
- AdminUpgradeabilityProxy (`0x8fe74471f198e426e96be65f40eed1f8ba96e54f`, chain 1)
- AdminUpgradeabilityProxy (`0xa1da0580fa96129e753d736a5901c31df5ec5edf`, chain 1)
- AdminUpgradeabilityProxy (`0xcc323557c71c0d1d20a1861dc69c06c5f3cc9624`, chain 1)
- AdminUpgradeabilityProxy (`0xce5513474e077f5336cf1b33c1347fdd8d48ae8c`, chain 1)
- AdminUpgradeabilityProxy (`0xe63151a0ed4e5fafdc951d877102cf0977abd365`, chain 1)
- AdminUpgradeabilityProxy (`0x6bf686d99a4ce17798c45d09c21181fac29a9fb3`, chain 43114)
- AdminUpgradeabilityProxy (`0x98d03125c62dae2328d9d3cb32b7b969e6a87787`, chain 43114)
- AdminUpgradeabilityProxy (`0x9dd6be071b4292cc88b8190ab718329adea3e3a3`, chain 43114)
- FeeCustody (`0xf2e186d6f3cafe17bcc89c50133cfbc2db6cf55a`, chain 1)
- RibbonEarnVault (`0xb380162a6a68f37b07503ba1543d0e623bd81c3c`, chain 1)
- RibbonEarnVaultFixedRate (`0xe97d824116a17435e3d15efd8e16ee7344a4b8b8`, chain 1)
- Vyper_contract (`0x0cb9cc35cefa5622e8d25af36dd56de142ef6415`, chain 1)
- Vyper_contract (`0x1929605b714517b76bb733198e0f3c3d4ab08608`, chain 1)
- Vyper_contract (`0x19854c9a5ffa8116f48f984bdf946fb9cea9b5f7`, chain 1)
- Vyper_contract (`0x43277c92f9936aeb5d6a2713a44cd2f096f171cc`, chain 1)
- Vyper_contract (`0x4ba4afa8071b0a9fe3097700cdade02dd0e16fd0`, chain 1)
- Vyper_contract (`0x4e079dca26a4fe2586928c1319b20b1bf9f9be72`, chain 1)
- Vyper_contract (`0x5b0655f938a72052c46d2e94d206ccb6ff625a3a`, chain 1)
- Vyper_contract (`0x8913eab16a302de3e498bba39940e7a55c0b9325`, chain 1)
- Vyper_contract (`0x9038403c3f7c6b5ca361c82448daa48780d7c8bd`, chain 1)
- Vyper_contract (`0x9674126ff31e5ece36de0cf03a49351a7c814587`, chain 1)
- Vyper_contract (`0x98c371567b8a196518dcb4a4383387a2c7339382`, chain 1)
- Vyper_contract (`0xa8a9699161f266f7e79080ca0b65210820be8732`, chain 1)
- Vyper_contract (`0xad4dbd3be46f7bdab82702b581b1d4c5f584741a`, chain 1)
- Vyper_contract (`0xb7fd36eb847c04a144fab717e85b94da1d8c9b4e`, chain 1)
- Vyper_contract (`0xb913090f0fcc2473dfcceaf41653a806bcb85fab`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 44; live-surface rows included: 44 (44 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 40/40 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 3/32 (9.4%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 40 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 161 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 71
- Confirmed-live implementations: 40 of 201 unique; 161 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 3/131
- Verified + Unaudited implementations: 128
- Verified by bytecode match: 0
- Unverified implementations: 70
- Unique implementations: 201
- Raw deployments: 540
- Audits discovered: 15 (15 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-07 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 15 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 3 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Unknown | Tier 2 | 3 | 2.3% | 2023-07 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| RibbonThetaSTETHVault | unknown | project_anchor | own_supporting | 1 | ethereum | unit-391540 | 2 deployments: ethereum `0x2bc165b7af65a94977ba7c625214438407741d77`; ethereum `0x53773e034d9784153471813dacaff53dbbb78e8c` | ✅ Audited |
| RibbonThetaVaultYearn | core_logic | project_anchor | own_supporting | 1 | ethereum | unit-391548 | `0x8fe74471f198e426e96be65f40eed1f8ba96e54f` | ✅ Audited |
| RibbonThetaYearnVault | core_logic | project_anchor | own_supporting | 1 | ethereum | unit-391545 | `0xcc323557c71c0d1d20a1861dc69c06c5f3cc9624` | ✅ Audited |

### ⚠️ Verified + Unaudited (128)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AddressBook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 12 deployments: ethereum `0x2da4c41ef8818aef8dc42b76ea0a8f42c33119dd`; ethereum `0x89c3fffbb165f26dfb8c32cc102e6bc4229a042c`; ethereum `0x8be7687884111f62ec088a81cf2f7d39263f060c`; avalanche `0x27d60b89e1a104cef79b3e40ead1374bb75ac87d`; avalanche `0x3ab3ff5501e900f81b6c6a7c556391d155cba7b6`; avalanche `0x58d6bd9c46a98608a328178f154b585e79e40854`; avalanche `0x5a2e8777c72dd59f24b4221a2eeac5c68e94e9a6`; avalanche `0x63e48ae3b63a6cf2b749379dc5d468db5dbe7310`; avalanche `0x8b5bffcbd5a9170839fe27f5d75915de847aa0eb`; avalanche `0xac289a6ac2ddc56f5acde4cff5f3a3174d481ed4`; avalanche `0xbca124824326cf8abc5e2e569fff3a6f17110510`; avalanche `0xef3b91345dd7be2c5c1f95c40545e9bf274ee698` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 11 deployments: ethereum `0x157b0733f4dd86009c8f7daf2c03c1a5f05d7f47`; ethereum `0x5c86c20d00aa8491ad20974945d621e40c9e2b0c`; ethereum `0x6fe59374e91155b211180c8e15038be8bb4bf9e3`; ethereum `0x996de9f011838f815523dc088c070714067e49ab`; ethereum `0xa5b1170f2eb3c7e1ee1a4ff6a60b3a018ae1c23d`; avalanche `0x1e5341cb798864e2f979d4679de35646d9fbdb5c`; avalanche `0x4375e9b9a0edf950897a0c4d21ada6ce874dc234`; avalanche `0x62e04b116fcaa9731ede396b85ba190852bc05e4`; avalanche `0xabd2a94dbcb8dcf8f40413b8174a4e3452f567dc`; avalanche `0xafe24b15ced56c7b99fe8f272100764c8df3b1c7`; avalanche `0xee5b96b402bf853a6f1308739b019b269994785c` | ⚠️ Unaudited |
| AevoStakingHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb624bbe12a388e52cf379377e3bc3573ff3d69ed` | ⚠️ Unaudited |
| AllowListOffChainManaged | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5ae9b340a98085d0fc25ae98a5eb704ba08e0df8` | ⚠️ Unaudited |
| BalancerGovernanceToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xba100000625a3754423978a60c9317c58a424e3d` | ⚠️ Unaudited |
| CErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6789db944e35653d07f67eaf4db4e42adf2f0457` | ⚠️ Unaudited |
| Controller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 3 deployments: ethereum `0x53cf72890546b4f1b6b5df3c8fb6021488c967b2`; avalanche `0x02b70ab8fd23f95e0cd8f8ea604415eb7cfc0e18`; avalanche `0xeadf3d94b902c06c13a2e64b223b1df5057aa23d` | ⚠️ Unaudited |
| DeltaStrikeSelection | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 9 deployments: ethereum `0x6a86aa32a9f55056e977f4daa61ca59625a4a4fd`; ethereum `0x74f2c2b10da5563003d0dc9973d32f59cceb58ea`; ethereum `0xb433452142a05dc37aba0b70da0de428ac4c751b`; ethereum `0xbff91e59336cf98334dc3ea4370316abffc2e565`; ethereum `0xf6010dc7475547221f97c28f8ed6f5ec0969024b`; avalanche `0x431058f0eef3833b9a73bce19ba35c23d47e1bb9`; avalanche `0xb00b898246f88425443da581ea7bf77658301290`; avalanche `0xbf96a7fe233c2d5c6838ab1f8474292b2cfd1d58`; avalanche `0xc16a88bda30c3a2dab8ba0239b87db09be135379` | ⚠️ Unaudited |
| DepositAndPlaceOrder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x193c8993480df4c1dbbdb39db07511f7d789cedb`; avalanche `0xe0fdbad497898e3a75d550102e1961c489729698` | ⚠️ Unaudited |
| EasyAuction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 3 deployments: avalanche `0x33b1fa3f012cd72988a35bad87339eb3e48e836f`; avalanche `0xb5d00f83680ea5e078e911995c64b43fbfd1ee61`; avalanche `0xc23b9269970d8ae096bc95599d779c9999b9709a` | ⚠️ Unaudited |
| FeeCustody | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d02c18904988d2d123a103fcc80634ac44046df` | ⚠️ Unaudited |
| FeeCustody | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391538 | `0xf2e186d6f3cafe17bcc89c50133cfbc2db6cf55a` | ⚠️ Unaudited |
| ManualPricer | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 20 deployments: ethereum `0x00e81211ce0fa2a46a2838d6b4861b5bdb5cc87f`; ethereum `0x2e445b0992ee384b015236364350df53b0144af1`; ethereum `0x3250e0d6730869233d304842d53f52c40a865c86`; ethereum `0x32bccc996b090604caec52e231da3af8e55dcecd`; ethereum `0x367b7104b88d809acad7813af9ce8cb634817901`; ethereum `0x393952f6da58524140469abb59ae9161fd66bce4`; ethereum `0x3e3aa8444ac0157a15b6bf4b9a4057c8cd4ebcb1`; ethereum `0x72cfa0d936c85667d8e660153a1cdf5202530d4e`; ethereum `0x7a9441b2e4829e18f3ba2c46ec4c274eef357bd6`; ethereum `0x80a0def4483267e5bf39e7a6b4be972cee46c525`; ethereum `0x86dd4bbe7981ab9722e9dc7264aac6ed9aa62831`; ethereum `0x8918f389fb3b0073a22a4fb546012f2cd6a8b087`; ethereum `0xa1a436335d24d8a1700fa6674d428ba2e79512a7`; ethereum `0xa82a82f646cfd0249213e8e5048b2406de5abda3`; ethereum `0xd5c1eb4389349a46080f6de86e543082438d4f2b`; ethereum `0xd72c9705c603a2e5a39af379cd4f16c47dce58c1`; ethereum `0xed9af0678b6ec6e53c8097aa0a17c9ec2c60cee1`; ethereum `0xf5de31edd01a166176b7bd48932653c48c120785`; ethereum `0xfbbf25ca688976ee69ae4ff993fd436505836147`; ethereum `0xfc988789fc586b8f1d5e03825a9f3614309fb0b7` | ⚠️ Unaudited |
| ManualStrikeSelection | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 10 deployments: ethereum `0x3c8114263092fd27acfeaa99549d4f3066d7036c`; ethereum `0x8a09674406da7c96b7f6cb941e92b7cabec26fe3`; ethereum `0x9246cb31fdd179f266f3b5bb3a0f66e9cebe8b8e`; ethereum `0x961d3712f5835abb0b367f83807b2f61e7d819a5`; ethereum `0xab40513b6f0a33a68b59ccf90cb6f892b4be1573`; ethereum `0xb3578add8c92ced5f02b4909b6b04d3f6468ab39`; ethereum `0xd3c4e0cb2551f42ed4c0e4de95d7ee579e41d7c6`; ethereum `0xfd48f39be14990bd8d96a446c12e7fd08c51b451`; avalanche `0x4a78dc9e96b134abe96ae23f11934dead67d2771`; avalanche `0x719455078179ea91d637274411c28e743b323a3b` | ⚠️ Unaudited |
| ManualVolOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x14416c36428bdf554d3354566259af6bcd03b709`; ethereum `0x7c0bfab993fbd54deadf43adff960e9c9e116399`; ethereum `0xe24854968cdbcfa049ddd6f089b5c552d181ecc4`; ethereum `0xfeec0160cd13bd018fc0129408d6109b25cae78c`; avalanche `0x175bcf06ef1120a432ea3f7cdf33fc0af980bc39`; avalanche `0x9e5e8d3b1dc92c4b840150ff243a176ba2ed05dd`; avalanche `0xfda869c4a950bfd2e393ddd45d2062dd4aee0bb3` | ⚠️ Unaudited |
| MarginCalculator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 4 deployments: ethereum `0x52685ade2aeca4c517c4f8f97362aa7e972806f8`; ethereum `0x5cd207745eeb2eb27f563bb2ade645d1593f07f1`; avalanche `0x2c726a7da5500bd59a488e0065c41822bb46b337`; avalanche `0xbd5a1dc654b5476b94f81755e68d1c8f0aac2afd` | ⚠️ Unaudited |
| MarginPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 9 deployments: ethereum `0xaf6cb590b5a643fcdbea334264af79fb2dd23b91`; ethereum `0xbc9896306e2ca33c5c9d8f342218e3dc14b32b9a`; avalanche `0x06aa7f18b263c67a04fc890a2166a4b54bf8e5b0`; avalanche `0x52751426a3043dd7a27ddb534eb090018866d50e`; avalanche `0x5b42893f5da151872bc84f2be48ee5f97ec5708b`; avalanche `0x9c7918f3bd12d3eb1fc58e418fd5a6f75b48017a`; avalanche `0xb628d6341492f87f3895b167a95ba9936bb15024`; avalanche `0xccf6629aeab734e621cc59ebb0297196774fdb9d`; avalanche `0xfe9c8549d2b6b308baf71e0267bec14fb6f5591f` | ⚠️ Unaudited |
| MarginRequirements | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xc272f964a74ab7d2b4fd4ba27f6cc27887b833a7`; ethereum `0xcd5f0ecf4ac4fc97d4573c6bac38dbd5748b7eb8` | ⚠️ Unaudited |
| MarginVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x70bc7e46b8da687eeaae788c467eed56698cf447`; ethereum `0xd12f961a40e1e5652f4b9bbf595fbd8380f64541`; avalanche `0x8b5685586f43c07aa0f911bb5d5db8b56252858a`; avalanche `0x9b011cb12899ce70b8bb59fc3f324d1d7888912f` | ⚠️ Unaudited |
| MerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1ea2f2367e091525c86f00737bba0aa3b107cf90`; ethereum `0x7902e4bfb1eb9f4559d55417aee1dc6e4b8cc1bf` | ⚠️ Unaudited |
| MinimalForwarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28bbbfd8217407f443d83227daee65e93b51ba6d` | ⚠️ Unaudited |
| MiniMeToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3472a5a71965499acd81997a54bba8d852c6e53d` | ⚠️ Unaudited |
| MM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x6683454f70bd27955bb3000c9736aa1b97edee11`; ethereum `0x9af2b8088992419929c51b4cf62fa19bff247652`; ethereum `0xbe278c980649e5bc544ffa58e83933769cd38a17` | ⚠️ Unaudited |
| Optimism | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x53796b65e0d06e3be01eee92715e842415b54205` | ⚠️ Unaudited |
| OptionsPremiumPricer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 8 deployments: ethereum `0x0a1b6393527ddb5cbb5e38081c9a4af08f0975db`; ethereum `0x7c24414191e2818a1a8cd995688c9da74faf67a8`; ethereum `0xcf38c16253912a827f38b5b2c08e6059a0194e8c`; ethereum `0xd8bb660a8fcaeadb7a7aef73e57a3a989065dacc`; ethereum `0xec58c11aa55836c896b80a9d8032e39eeb525cbc`; avalanche `0x03bb97fa0fe4f85e378f6bc32a4ef9141876e66e`; avalanche `0x54daf3a63a6cc2e2079031e70b2d35b6083cab89`; avalanche `0xbd51039959a136d7bf7cdce956ad42fe03805b21` | ⚠️ Unaudited |
| OptionsPremiumPricerInStables | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 10 deployments: ethereum `0x048e2f1f937b1b98efa7765b3060dee0a2adf33a`; ethereum `0x2d3145a5956910a8092df21a541a40ecd3aa3b1f`; ethereum `0x8b5ae818a1b892cc560b522ae6139e38d140ee3d`; ethereum `0x9d02f161aba36ec1fe150ef97949c0a27b007977`; ethereum `0xb38f51beae3718011cfba1aee51c4c9b05681286`; ethereum `0xd1773e052faee60f890c75a25b6088bab4dcfd20`; ethereum `0xe67f1d1794737cf4ee2086b11d4b3c0e5f82d3d4`; ethereum `0xe8fafa5cb409d85546ea801506a2f2baef7135e2`; avalanche `0x9c31f6fafda0b9cd762f2850c3438d20a87464e8`; avalanche `0xa2466926c9974e2b5621c6bd7c3520c478b7ce9f` | ⚠️ Unaudited |
| Oracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 11 deployments: ethereum `0x071fb75ca3643e646e6aae204834ca81fa1c0843`; ethereum `0x79bea2e90702dc3af8b846519a3d15c789796d10`; ethereum `0xc69c49bac000e6310aa055af5593e0ebf603332e`; avalanche `0x00bf1e9b876d63f5cd4ee114211a9a7b7fb54f2d`; avalanche `0x108abfba5ad61bd61a930bfe73394558d60f0b10`; avalanche `0x454a11d657c83643a04d30f148fb03d6c1405bd0`; avalanche `0x47a8fa114036c50765eabb110d7a21e648c1a89a`; avalanche `0x5c76e757138379e376d1cb9c18723f884df5e8eb`; avalanche `0x6f010d2fc520b710f707157c26acc18d4ebd7c9f`; avalanche `0x72c959244bb8c953aacefe6e7b20d727b91d45ad`; avalanche `0xa7516c430024366aa5b0cafd8dfcfeecb5ece8bb` | ⚠️ Unaudited |
| OTCWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x0862a662dc4483c4e01ae08d57ea170daf51f121`; ethereum `0x8191dfebf343dcc4f83875d192d06c06a0aa78ea` | ⚠️ Unaudited |
| OTCWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x9e05d613e09e878cc14e5c25a79028b8dcff79d3`; ethereum `0xffda0be74f8e52627e5fbed4a35beafc5c49c5d1` | ⚠️ Unaudited |
| OTCWrapperV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x1b4eca06140f257b81778b1c516d5c77e5072264`; ethereum `0x5feda53467125c7789c30376f91082b1fcae4989` | ⚠️ Unaudited |
| Otoken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 9 deployments: ethereum `0x0b030ff9066320518b466a2dd19abcd060126009`; ethereum `0x49d4798f3908c5cdce551374192ed3cfb13adcff`; avalanche `0x03b28469a3f5cbdcba91485b82de17d64b9ed931`; avalanche `0x0fd7e1d4cdb5ab29a3f972505472afc636cfc823`; avalanche `0x3c19ddc6f1b9c4501a2d141c2dec59bc5f351c29`; avalanche `0x459a8ba81a0f0ea672856d2415e25e50d4224677`; avalanche `0x9d7915bbeeb48f511bcff079e6649609fd4fe904`; avalanche `0xbc2804ca9436a74e11ff60b8b20a157b85c21425`; avalanche `0xe0ebdd9c29d5724385136fecc3dec5fdd60c7bfe` | ⚠️ Unaudited |
| OtokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 10 deployments: ethereum `0x1872ea7d5d8ce168a5df398d7690c971652300ce`; ethereum `0x2027028f33fa5ca4fd675e38d83b51115a522856`; avalanche `0x0dc3197fdd54cf5e8f8961bbf626be320160c3d2`; avalanche `0x215967eebb43f37bd76f4b36974b1bc868725505`; avalanche `0x25bc1cd298512885f0e452833198bcbb149f66a5`; avalanche `0x6fb3f1d106540184d35abb1c614a80600c3b0b14`; avalanche `0x90fcbde91805b8d32b51bcc674a56bde09249eae`; avalanche `0xc0cf10dd710aefb209d9dc67bc746510ffd98a53`; avalanche `0xf9745ad6c6ff4fe9d8a0a2668a7f9e2944ea0955`; avalanche `0xfc8c5928e1eec38d0df511483b11592483e98060` | ⚠️ Unaudited |
| PercentStrikeSelection | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x6221b5e23b137a405f8df9aaa717f1629cb29eac`; ethereum `0x6cabcff713f4887220e6715c5fb07af0df64207c`; ethereum `0x6fa30676b6cac19a393463ad5109d77d094c8e8f`; ethereum `0xa2a5ef27499e72b9e8be2b0a38061bb6f58fe8df`; ethereum `0xd486c32eda645d3ed2c1148a6b6e66302514f701`; ethereum `0xeb03bfae2ec20114683d8a81b48c6b595ec2266f` | ⚠️ Unaudited |
| PerpToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc396689893d065f41bc2c6ecbee5e0085233447` | ⚠️ Unaudited |
| ProtocolAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x8b49fdd0cb50ba6d5c053d844fee55e5076f8504`; ethereum `0xff51ca3ba8cb5d289deb56dfcba50c7cc100d949` | ⚠️ Unaudited |
| RethPricer | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30b3059b1e870203aef55b071110b49b22341fc6` | ⚠️ Unaudited |
| RewardsDistributorDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x63a40e8bbc2ad3ed1c600abc0e01a8fef7a9fd47`; ethereum `0xec19e052e7a5c1fd6cd85a3d57814527facb59bb` | ⚠️ Unaudited |
| RewardsDistributorDelegator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x02f01bb55543a13a9b63fa78bbdb12eb1bf12e4e`; ethereum `0xc953fb453489d74400e5846513023b5a4e59b88b` | ⚠️ Unaudited |
| RibbonAutocallVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x21cfcecacb455da44deff585cff04b6172bb48e6`; ethereum `0x9490ccf93cd750dc47f72402a163022cfb94cfc9` | ⚠️ Unaudited |
| RibbonCoveredCall | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x49ca9eca607c8483a2b4f955631de2119ac15b74`; ethereum `0x509b51fc4e1d7bcc2a97fad9a791c313de83fab8`; ethereum `0x5907c9a2ff421be53556be7fa1b5a2d90a187dfd`; ethereum `0xd24f76b5e9ac3505c61b47d9c0302ae128233676`; ethereum `0xe97557dd2b9cccd9dd94c4432281a942e2e6fc75`; ethereum `0xed61372660aeb0776d5385df2c5f99a462de0245` | ⚠️ Unaudited |
| RibbonDeltaVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x3fb118d109dfc7646d37fb2af36b5ea2e5ba0850`; ethereum `0xf103486d9a098673fad8a5d86e8cfd6bf2fe6f8b` | ⚠️ Unaudited |
| RibbonDeltaVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x551c441d05e81e5a43cfd5afa7e9589039d67625`; avalanche `0x9d725c6d242e816da485d676056466e18cb52b13` | ⚠️ Unaudited |
| RibbonEarnVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 15 deployments: ethereum `0x0e83c4662af4fe704c7193598b6cdfb4ac428178`; ethereum `0x13874898c1a2f799262c601e5c01bfca32ae312b`; ethereum `0x26638cbbeb85026e697445f03041ab0c2a8bc440`; ethereum `0x3e1646d435622b1451a2fc08b92c1eba689621f6`; ethereum `0x547f571735b6b4f7e8c4444dbf3d95a6d8fd886f`; ethereum `0x563c35b90f62a08017c936c23d8e46346f1bef22`; ethereum `0x5ce1941f5a1ab0992be63eb44b933c9783c343c9`; ethereum `0x791679bc2a3883c26acce02e372a1f887d419f20`; ethereum `0x7b9c298b1836df757dd609dc6dce70521caaf5d4`; ethereum `0x97120653003a98673c3acf83a01c54eebc66d999`; ethereum `0xc8fce3730a321c40ecb869635bb2ee36d6b6e9cf`; ethereum `0xce3217de2b19be5de2d78ca1ea62601095057230`; ethereum `0xd0e30095ab3856c81e6a7427977466e190ca5b50`; ethereum `0xd145412b7806d7203ab98f6633b5b2aef2057856`; ethereum `0xf0ba2602336f598920d5668586c6d4f54c8de649` | ⚠️ Unaudited |
| RibbonEarnVault | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | ethereum | n/a | 4 deployments: ethereum `0x1b44942e0f4dbc1426bcd7a87e83fbbca64ddd15`; ethereum `0x749b33ab87ad5ff20213cff25a8ba6ee7616dd5c`; ethereum `0x7bdca441e2542cfe25fe0ee1975fab3f399f4a72`; ethereum `0xabfa87fa88de21f7beb017b37418985f608529fc` | ⚠️ Unaudited |
| RibbonEarnVault | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | ethereum | n/a | 4 deployments: ethereum `0x47b4daa1b5fce3842cfae100a7e239bfaead908a`; ethereum `0x5a64d783ad732c40754ec582efb46c552ffe135c`; ethereum `0x7946b1f34cde7a7cd42178e9722cb15179c9050b`; ethereum `0xab7c592acbdd6bdf6e51c55d313d0ccd0f59b503` | ⚠️ Unaudited |
| RibbonEarnVault | unknown | project_anchor | own_supporting | 1 | ethereum | unit-391546 | 2 deployments: ethereum `0x84c2b16fa6877a8ff4f3271db7ea837233dfd6f0`; ethereum `0xb380162a6a68f37b07503ba1543d0e623bd81c3c` | ⚠️ Unaudited |
| RibbonEarnVaultFixedRate | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | ethereum | n/a | 4 deployments: ethereum `0x06275be44e6f886c4e470dcf880f5fb960d79d1c`; ethereum `0x34b44791fc1aaac1120994a885c9df6cde50ecda`; ethereum `0x5d5b71eb15075810225c7dcd9e82ae344224e9eb`; ethereum `0x7a8bfdc7b8fa02c7860b8afb4503a10a57d0100f` | ⚠️ Unaudited |
| RibbonEarnVaultFixedRate | unknown | project_anchor | own_supporting | 1 | ethereum | unit-391550 | 2 deployments: ethereum `0xce5513474e077f5336cf1b33c1347fdd8d48ae8c`; ethereum `0xe97d824116a17435e3d15efd8e16ee7344a4b8b8` | ⚠️ Unaudited |
| RibbonEarnVaultFixedRateKeeperPermissioned | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x98d86079190c08c2a8ad338c26502695528db287` | ⚠️ Unaudited |
| RibbonEarnVaultFixedRateTemp | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x0dd119bea1bf0edc4fd9c7e96bb829ec3f5013a1`; ethereum `0xa028cbede164da016bb00cb45269e0364e5b035a` | ⚠️ Unaudited |
| RibbonETHCoveredCall | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x8e65f34ff5925d3d43ad642bee84ac947583a939`; ethereum `0xb9a143a9b010ff7f4408ee87ae42c401c7c9de6d` | ⚠️ Unaudited |
| RibbonFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x6e0f736a2a0b81e7d8b7d6ac3608ac977341ba4f`; ethereum `0x863dd8ea9b7472c54cde1f0e2d5b2bcc8cbf0cd1` | ⚠️ Unaudited |
| RibbonFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x84a5a8c504ec7f9add6771459c5dfc8475138c33`; ethereum `0xf1afa2f0abae3da08e5d181ea2e5d7481ce3b481` | ⚠️ Unaudited |
| RibbonHatToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f0fe57066ab1c84569dc6dd2edfe08b92f97f33` | ⚠️ Unaudited |
| RibbonThetaRETHVault | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 3 deployments: ethereum `0x1c2ee9711592638f7fa3f47181c7eae7606352c2`; ethereum `0xa1457fb1e20fe1399e5d581733bb6ac0e7b7486f`; ethereum `0xeef3d67a608a94e17e5fb669b7270d121fbe196a` | ⚠️ Unaudited |
| RibbonThetaRETHVault | unknown | project_anchor | own_supporting | 1 | ethereum | unit-391539 | 2 deployments: ethereum `0x1e80265e821990b8139b43c12c622f64bf928a9a`; ethereum `0xa1da0580fa96129e753d736a5901c31df5ec5edf` | ⚠️ Unaudited |
| RibbonThetaRETHVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x21bfdeadfc8cb2393de824c5c4da1f7f522e8e9f`; ethereum `0xc14a21bc1a73e80ce0b254b82504bfab58eea400` | ⚠️ Unaudited |
| RibbonThetaRETHVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e28f2e7334b44c0753df20774683fb004c08d6a` | ⚠️ Unaudited |
| RibbonThetaRETHVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xbf20939250629cec76ae8dd6717fa68e4bb77b7c`; ethereum `0xd493f949c1e8e007df3d80f5abd6c53db0446e44` | ⚠️ Unaudited |
| RibbonThetaSTETHVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 9 deployments: ethereum `0x01f1d8744469da81dbb6b7d3e9811f10029365e7`; ethereum `0x1bc5ee65197c54106f9eb02e476191c6991dcffa`; ethereum `0x21438c87e749920625dc3bd2742a3e879caf6c72`; ethereum `0x51a5a8f2487ddd446672868d95347b7cbe041f8b`; ethereum `0x5d4c0a7f6888e80a86c8ee5d2660c216cfea1b51`; ethereum `0x8a0eff819d7e197ee79ff3fef520fe56a2c36ca5`; ethereum `0xbcf89a96f131ad7587fbadc58f9fdb62d68147ad`; ethereum `0xeb74e0ef154f29d7ace73d72b88bf1f28137c733`; ethereum `0xef3c692023ce020316c6be3a0479f87767ea31e7` | ⚠️ Unaudited |
| RibbonThetaSTETHVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x20abe9d23a45ee360b42708ea7f4a4fed0cfabcc`; ethereum `0xc5f2cf5c4c874c296281e2a73a2e44c9fba55741` | ⚠️ Unaudited |
| RibbonThetaSTETHVault | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 3 deployments: ethereum `0x24ab80935f568e8032253bef349ca3b6097e24c6`; ethereum `0x8756ea6c0c07ee3a45e791c6da8fa1ff8205f1f7`; ethereum `0xfc0d9e568f048d0cc4765353c775a2dadd016502` | ⚠️ Unaudited |
| RibbonThetaVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 24 deployments: ethereum `0x00a62ee3d2998f67cc202990b792573961d282e6`; ethereum `0x09bd08ce34237df3b935080281e91b2766efb030`; ethereum `0x0a227052b7d25f6926146d4bd431abeec5fb3234`; ethereum `0x0ff7c2d2a935d31d354bf7ea7fdad39de0141a5a`; ethereum `0x1939f826deaa3e2649dcf2c5234aa20adba08682`; ethereum `0x23b42c4234df12ed025a794abf815e4327f1ff87`; ethereum `0x2556e8ba1dfaddcbf10366cd8931bd50c45dfa22`; ethereum `0x2a0b88f5e1fba2909843a46877a9369d8ae8b5b5`; ethereum `0x34107ac950eba9568df26b6256953142792eb167`; ethereum `0x38556ec4a14c63bf0d7576cffdc6ed2a467c6550`; ethereum `0x43cfeaa64013071d5505acf98b137f74c8ccd423`; ethereum `0x65112b0932c257b821217fcccb783c7e0c227ae0`; ethereum `0x94c8422c2b2e45b3b2c69c6a556e32a37498431a`; ethereum `0xae517e17844c09f2eedf382db0e7943c4c78c7f0`; ethereum `0xb751b286480b52aa00465d57b05dab26379da5ff`; ethereum `0xbc9d2f325fb69307cd07046682d0293551b35cc1`; ethereum `0xbeba74374e7cf9362fdedd0b9e2bc4a04549e4ad`; ethereum `0xd3fe1419708e1ab8bbb2881743eacc3f8968592a`; ethereum `0xf63ce172e6c81089a4dd850491bfdaae31a60483`; ethereum `0xfe8cf701b0751f840741655213da2b46d8995fd1`; avalanche `0x7f00bb1c0a2b7db66f9a93c8356fd1af93ae9c83`; avalanche `0x9d1d31190f945b72f6de8f1c72b97931c9d5014a`; avalanche `0xa0db6c4c2906de0158802ba8d98798d04f52b79a`; avalanche `0xa5b1170f2eb3c7e1ee1a4ff6a60b3a018ae1c23d` | ⚠️ Unaudited |
| RibbonThetaVault | unknown | project_anchor | own_supporting | 1 | ethereum | unit-391542 | 2 deployments: ethereum `0x0fabaf48bbf864a3947bdd0ba9d764791a60467a`; ethereum `0x7a477d6570386e2b9d0f14d03bd976b0c68b94b9` | ⚠️ Unaudited |
| RibbonThetaVault | unknown | project_anchor | own_supporting | 1 | ethereum | unit-391544 | 2 deployments: ethereum `0x16772a7f4a3ca291c21b8ace76f9332ddffbb5ef`; ethereum `0x8d0d4cd16a93fa1e3e55ff6d112b084109846e3a` | ⚠️ Unaudited |
| RibbonThetaVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x1ebea9c79f0de60209c8b386aa6ec8a8f21a89c0`; ethereum `0xa0db6c4c2906de0158802ba8d98798d04f52b79a` | ⚠️ Unaudited |
| RibbonThetaVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x4ea9e779dd4d7901c0f5e29645e957c34feb80df`; ethereum `0x6779da6f8402dc69ada551bb6cd93fe5040f507e` | ⚠️ Unaudited |
| RibbonThetaVault | unknown | project_anchor | own_supporting | 1 | ethereum | unit-391541 | 2 deployments: ethereum `0x5ce91e3f17d3bc683b73b0765dc18d75d8ebdcf8`; ethereum `0x8b5876f5b0bf64056a89aa7e97511644758c3e8c` | ⚠️ Unaudited |
| RibbonThetaVault | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 3 deployments: ethereum `0x6ec571bee204dc17ef7cad5547dc9084d28031f8`; ethereum `0x9d1d31190f945b72f6de8f1c72b97931c9d5014a`; ethereum `0xcfcf97f4300afaa94566696fbf116c4d881fb3bc` | ⚠️ Unaudited |
| RibbonThetaVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xa0d59794cb930e50ccfc2f4a3b827e2b36b0d1dc`; ethereum `0xe5ad6986ab5c36906ec30ff5c1ad51ccf3bb3529` | ⚠️ Unaudited |
| RibbonThetaVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xb0a54c398baa5e1f0d73b9328263fda296278eb0`; ethereum `0xc4d1009dff06a63a5548ecfeaf0942d45cf027c5` | ⚠️ Unaudited |
| RibbonThetaVault | unknown | non_address_book | non_address_book_inventory (excluded) | 7 | avalanche | n/a | 8 deployments: avalanche `0x0f403289ed880a2edb21cfc6927d5950c6d54684`; avalanche `0x10b87d9cf6892a1951c453a0842d4a5ca70cd00c`; avalanche `0x16b08b3c95881f6043bcd9ec6ce9b02cb28f588b`; avalanche `0x243dd88af54f9522ca3b5fb4251f5e8d53cb3ffb`; avalanche `0x87e94618b305c5305b4502807c86b6c28ad5b592`; avalanche `0xb7ec3becb9ea9946f4c055f6de73e7638ce4f480`; avalanche `0xd00a29f73aaf6fc5cdadae9cc64adc880f98fa65`; avalanche `0xdcfd145b79f07a558d380c75d3ae6be74d5b926e` | ⚠️ Unaudited |
| RibbonThetaVaultWithSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 7 | ethereum | n/a | 7 deployments: ethereum `0x2397da3f62f95e9318351e7104dee1a16b5e4959`; ethereum `0x247a937b3294b2c06bbae44cd9cabbb9620e0690`; ethereum `0xa413ccf8e9eb83c0d50eb8c69c524c927381dcf9`; ethereum `0xc03ff5cb9be1e71fc0e89ba036e7ce8c48855025`; ethereum `0xd472ec275bc86a1dee8bb8cae5897bc7a884868e`; ethereum `0xd5f6505fee72f77ddecae711228035bb9a2a2a0e`; ethereum `0xdd9d1b7deab1a843a1b584d2ca5903b8a4735def` | ⚠️ Unaudited |
| RibbonThetaVaultWithSwap | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 8 deployments: ethereum `0x2530298e2f5c026e794f8b39bda39f50c70bc6b4`; ethereum `0x3fb82fef405b14c6569dd07f0a673df79f0f1f44`; ethereum `0x6fc853a8978017381e4bec0da7792f0b46453a8e`; ethereum `0x74e52410aede9a66d0b21eb8658bf27a15fbd421`; ethereum `0xcd87867e13b10a4a320b48f8e317534e3f5450fc`; avalanche `0x43cfeaa64013071d5505acf98b137f74c8ccd423`; avalanche `0x8dcc8aec402d106adffd5f534f39d38bc1ddf54c`; avalanche `0xda6b28c54f5b009394ce1b814fdfc4dcb603418a` | ⚠️ Unaudited |
| RibbonThetaVaultWithSwap | unknown | project_anchor | own_supporting | 2 | ethereum | unit-391551 (2 proxies) | 3 deployments: ethereum `0x25751853eab4d0eb3652b5eb6ecb102a2789644b`; ethereum `0x65a833afdc250d9d38f8cd9bc2b1e3132db13b2f`; ethereum `0xeaf743e9fe7449ae3ce02bc01712666530d2666e` | ⚠️ Unaudited |
| RibbonThetaVaultWithSwap | unknown | project_anchor | own_supporting | 1 | ethereum | unit-391543 | `0xe63151a0ed4e5fafdc951d877102cf0977abd365` | ⚠️ Unaudited |
| RibbonThetaVaultWithSwap | core_logic | project_anchor | own_supporting | 1 | avalanche | unit-391552 | 2 deployments: avalanche `0x6bf686d99a4ce17798c45d09c21181fac29a9fb3`; avalanche `0x6ec571bee204dc17ef7cad5547dc9084d28031f8` | ⚠️ Unaudited |
| RibbonThetaVaultWithSwap | core_logic | project_anchor | own_supporting | 1 | avalanche | unit-391553 | `0x98d03125c62dae2328d9d3cb32b7b969e6a87787` | ⚠️ Unaudited |
| RibbonThetaVaultWithSwap | core_logic | project_anchor | own_supporting | 1 | avalanche | unit-391554 | `0x9dd6be071b4292cc88b8190ab718329adea3e3a3` | ⚠️ Unaudited |
| RibbonThetaYearnVault | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 2 deployments: ethereum `0x2e5bbb23f1db8ee60e577d4da9d8466b257c7712`; ethereum `0x678f0d1725d06c13672e117a4125568beef8a67e` | ⚠️ Unaudited |
| RibbonThetaYearnVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xfb749a450d638e40b587e401676b46921a6114be` | ⚠️ Unaudited |
| RibbonToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x3d11e0c0de0cf8bfdf85ea05509cfed9f0efe64f`; ethereum `0x5f716094fcd79fb53b5d9d2d64bbca47359737d2`; ethereum `0x6123b0049f904d730db3c36a31167d9d4121fa6b` | ⚠️ Unaudited |
| RibbonTreasuryVault | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 3 deployments: ethereum `0x1e2d05bd78bd50eaa380ef71f86430ed20301bf5`; ethereum `0x2e56d6e444ab148ec1375be108313aa759dfd248`; ethereum `0x8d93ac93bd8f6c0c1c1955f0b9fe8508281a869c` | ⚠️ Unaudited |
| RibbonTreasuryVault | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 3 deployments: ethereum `0x1f2077b0a9efb0c6568396a115272401fa7d95f4`; ethereum `0xa06a03d72f1b6350b3aa75524863823eb14dc864`; ethereum `0xbe0b307ee605cc23c96181a2e57ce6702632cded` | ⚠️ Unaudited |
| RibbonTreasuryVault | unknown | project_anchor | own_supporting | 1 | ethereum | unit-391547 | `0x270f4a26a3fe5766ccef9608718491bb057be238` | ⚠️ Unaudited |
| RibbonTreasuryVault | unknown | project_anchor | own_supporting | 2 | ethereum | unit-391549 (2 proxies) | 3 deployments: ethereum `0x2a6b048eb15c7d4ddca27db4f9a454196898a0fe`; ethereum `0x42cf874bbe5564efcf252bc90829551f4ec639dc`; ethereum `0xd906a2211eea37cf988fc70e0e9f11ac0f354a8a` | ⚠️ Unaudited |
| RibbonTreasuryVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x6aac2dc49303d40b77c8150a3cd785896c651fd2`; ethereum `0x76b20f25e4e3b47d855b49999419a7f241fd71fa`; ethereum `0x9d51c84904682d375bf59f541f934cd7c1fe7ad8`; ethereum `0xbeb419a50a1654b55afa9e84adb723d5349572d2`; ethereum `0xc0d57d576b0cf48be7a97e4cf9325ec5dd411a3b` | ⚠️ Unaudited |
| RibbonTreasuryVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x7664df7ec8a1739a0d2a25941fd4a1f8e17e9648` | ⚠️ Unaudited |
| RibbonTreasuryVaultBare | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x2b6b6fca9e1afc609c76970bcec0f6a738976a10`; ethereum `0x8de73d03ad125b798f932407384a4d5b2823ef24` | ⚠️ Unaudited |
| RibbonVaultPauser | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xe04e8ae290965ad4f7e40c68041c493d2e89cdc3`; avalanche `0xf08d6a9c2c5a2dc9b8645c5ac0b529d4046d19aa` | ⚠️ Unaudited |
| RibbonVIPToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x678c3630d82c0b180d1766869d0cb88d2ef45dc1`; ethereum `0xa5f2fd8844efcacdd5d166a9621a5debc3844178`; ethereum `0xdea5c9ce42342aa569a9ea19bd31066c340f1fe5` | ⚠️ Unaudited |
| RibbonVolatility | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x7004f9fcde66e2ecabf408132cb21ebbcf53d4b0`; ethereum `0x900e5af86bc691f1d431bbfed87e0dc41e1d8a57`; ethereum `0xa72cc5f8fe3cc806dbe2896f353630d6fd4e368f` | ⚠️ Unaudited |
| SAVAXDepositHelper | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 4 deployments: avalanche `0x084a82fe209f014b3cb6d5986b2c65b584168303`; avalanche `0x1decc75f4903f3993cedcfae98222dfb67264d3c`; avalanche `0x33b395a1346fad0c9287a528a1fd1c9257f587d7`; avalanche `0xadcadfa827b3ffa096c1860820608a39e777f176` | ⚠️ Unaudited |
| SAvaxOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x6cd4515759a91cc577ac9595c209cf94e551c922`; avalanche `0x8f17165de054d6266b44fb162153ad43266b89fb` | ⚠️ Unaudited |
| SAvaxPricer | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0a59f35f00a482bb04d95428e1ec051cbac216c9` | ⚠️ Unaudited |
| SimpleToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4d224452801aced8b2f0aebe155379bb5d594381` | ⚠️ Unaudited |
| Spell | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x090185f2135308bad17527004364ebcc2d37e5f6` | ⚠️ Unaudited |
| STETHDepositHelper | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x07f36cf3c834e423536680f560b6bad0319f5411`; ethereum `0xedae76e579a3acf71dc11250d70b1a4f80748be1` | ⚠️ Unaudited |
| StrikeSelection | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 15 deployments: ethereum `0x001d77351dad0cd3f696c67ebba5bda0c11d0db1`; ethereum `0x05dc9638693117c59e7e6cc7b77232d7e494c4cf`; ethereum `0x2d8c029a76892d4b2d4e0276edc61fbef724ef1c`; ethereum `0x39d3799b8abefc3d05db5ba3b3b2770146475000`; ethereum `0x4e2d423201474c53f9a4d9017ac6f22e76c0498d`; ethereum `0x5e68b6f5c82fc5f3711541ca4a12e01b967fc641`; ethereum `0x896e4ddc672e5e3df9d21762518985ebb36482fa`; ethereum `0x9371f33cac1e64bbcb424d3384add3baff4513a5`; ethereum `0xc2b10e716987ccd35d642506fd546315c0753563`; ethereum `0xf6e785185f9943dc0db13392d5475769d2105911`; avalanche `0x00d27cbb90ae158f2db39c899e006a05df960d81`; avalanche `0x05351bd699860ce7c7282eb4ac3c92f188e3dbed`; avalanche `0x4fc945f00a7a7cd2b1d7422c913e4ab002f7ba3e`; avalanche `0x67ea3de575eeccef15a941bab9b5c78700ea84ac`; avalanche `0x6c2bd3ff7c5d7c3cf782860fc1d88cdf438ccf7b` | ⚠️ Unaudited |
| Swap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 4 deployments: ethereum `0xa37e332ce625429b1978c33eb2f583c469b44b08`; avalanche `0x335a9b71de68c2f1a883edbaa7f97ccbc76a3be5`; avalanche `0x9d92401e58f099141c410fcb0257109be4cb8c6b`; avalanche `0xfb49c36bad3f5dacd3c5620e031005192c82a54a` | ⚠️ Unaudited |
| UnwindPermit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0aa7889c6427fd8fc612e87579fdcd1a942ef234` | ⚠️ Unaudited |
| VaultDeploymentEventEmitter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x62ef288f5301ac04fee91524c1f32c7e1de55652` | ⚠️ Unaudited |
| VaultLifecycle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 19 deployments: ethereum `0x14cc2c0b624e437202b53e533147982842865511`; ethereum `0x1c3774c538a50db827f7f7b450160e0afcbd41f8`; ethereum `0x25af99ff07575ac55fb3c2d1e6b920ba3bf67b40`; ethereum `0x35a3e0f233587f6e515bce363e0a5e42cd69ecc0`; ethereum `0x4994c95ec14ad03a09e2cc21af15e8894b7d10ee`; ethereum `0x58228f1700ca529b13cd560deab39fb254056d82`; ethereum `0x5ee5db4480db3b4cf08d871b737f0ce5785caa53`; ethereum `0x93c48f3dc0df467ca9089925bd8256c62af1f522`; ethereum `0x9c24f8138bd1462164e1e11c31ea83fd9ccb9ccf`; ethereum `0xb917ee1d969ee309c5369d022ba202a30207dde3`; ethereum `0xc1e51ba212c8b3fada5b5d3973d7c46d2b8181df`; ethereum `0xda638703bfa31e412d0e6d47e643afb2016be115`; ethereum `0xe248f69df96b0d397e8b81a592da8766b857d6c7`; ethereum `0xe55231ec85b88521415ce62a6d950e0323835adb`; ethereum `0xe64524ba73b9e74956f59f137821039254994f36`; ethereum `0xf25ff25edea27b65928716b4a0501c3ae0b5d3b6`; avalanche `0x001d77351dad0cd3f696c67ebba5bda0c11d0db1`; avalanche `0x5ee5db4480db3b4cf08d871b737f0ce5785caa53`; avalanche `0xe0854ddd162ffe4e2ff1db6e62b544521cb9223e` | ⚠️ Unaudited |
| VaultLifecycleEarn | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x35fd2e2f59f24f002bf69ed055df595228d1c3d4`; ethereum `0x5caf7945b213d69236fbbdc6edec96664db9eeca`; ethereum `0x736777819cf542cb416ddc858998766d16f067e0`; ethereum `0xa85d600ad1fbeaccc5b418d0b8d6421d057cb8e4`; ethereum `0xe01e815d26e852eefcdcae6d72c5bb2df83a96f6` | ⚠️ Unaudited |
| VaultLifecycleSTETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x21f0ff1d33f76b938dec63cffe0ee6171f4bd6b0`; ethereum `0x2c5dd86b524dde4c9b2d0f36d72bdec7ea089bf1`; ethereum `0x5cbb58fbd5e53a8db156c1261403b14dc618f3db`; ethereum `0x84ff097b9d1a3a32732d36aa2c6b08d4a8c08928`; ethereum `0x92c47ebaf26c7de6d9dfed9c2f6d957860f42836`; ethereum `0xb48c17175ca34c87fad6b34824b6151376ad38ee`; ethereum `0xcf7dd57bbe6cec4f07f1db1ac80b14421b8c8932` | ⚠️ Unaudited |
| VaultLifecycleTreasury | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0xa746b0ceec022d53665840593a0f673f91cd856b`; ethereum `0xe1d00f9bafea5aa40a2192af12b68af3d390afe2`; ethereum `0xff0629b5888792d71f41f68e65b8e2238d9b3329` | ⚠️ Unaudited |
| VaultLifecycleTreasuryBare | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x60f0d49ffdf05685b94a247a85cc9e4e7d9104f7`; ethereum `0xb4a1b54141ce6c70b40527cebd6f00ff70d94eef`; ethereum `0xd7952713a50fa9e30152dd199ef5c112946666d3`; ethereum `0xf2d44254aed4f2ac28ba14eae91180d3ea483f2f` | ⚠️ Unaudited |
| VaultLifecycleWithSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x63b9712f3acf31597595a1d43f7ee0ad2c83357f`; ethereum `0xc06944ec6c0ee3f152c284e5df24b42d90169377`; ethereum `0xc7654fd45b96885ba231bb9083d1472e8c9a5e5e`; avalanche `0xc1e51ba212c8b3fada5b5d3973d7c46d2b8181df` | ⚠️ Unaudited |
| VaultPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe6bcefc66d6cbc4c555d53b817e738577477031e` | ⚠️ Unaudited |
| VaultQueue | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x2986e874370a1398807d76d70c73e7ec7db14648`; avalanche `0xe6325f8465dd875be46c6997f955d6615766d8be` | ⚠️ Unaudited |
| VeRBNRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x88f0110e9fa61aaca84cce7203c8a702681ab33e` | ⚠️ Unaudited |
| Vyper_contract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391516 | `0x0cb9cc35cefa5622e8d25af36dd56de142ef6415` | ⚠️ Unaudited |
| Vyper_contract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391517 | `0x1929605b714517b76bb733198e0f3c3d4ab08608` | ⚠️ Unaudited |
| Vyper_contract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391518 | `0x19854c9a5ffa8116f48f984bdf946fb9cea9b5f7` | ⚠️ Unaudited |
| Vyper_contract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x29893bcd1fda6da4f29d0e21edc55abc3a29a202`; ethereum `0x36880a4da4069ccdf6f31e25e7d8ed64080c9645`; ethereum `0x8e44db7cd5eab85b943d96645cc9cc1d620534b4`; ethereum `0xa2b078c8e3bd5ab9aa94222b08223ee07ee348fc`; ethereum `0xd086c9356a5683192b10d93d4d92d8fcba705692` | ⚠️ Unaudited |
| Vyper_contract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391522 | `0x43277c92f9936aeb5d6a2713a44cd2f096f171cc` | ⚠️ Unaudited |
| Vyper_contract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391523 | `0x4ba4afa8071b0a9fe3097700cdade02dd0e16fd0` | ⚠️ Unaudited |
| Vyper_contract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391524 | `0x4e079dca26a4fe2586928c1319b20b1bf9f9be72` | ⚠️ Unaudited |
| Vyper_contract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391525 | `0x5b0655f938a72052c46d2e94d206ccb6ff625a3a` | ⚠️ Unaudited |
| Vyper_contract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391527 | `0x8913eab16a302de3e498bba39940e7a55c0b9325` | ⚠️ Unaudited |
| Vyper_contract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391528 | `0x9038403c3f7c6b5ca361c82448daa48780d7c8bd` | ⚠️ Unaudited |
| Vyper_contract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391529 | `0x9674126ff31e5ece36de0cf03a49351a7c814587` | ⚠️ Unaudited |
| Vyper_contract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391530 | `0x98c371567b8a196518dcb4a4383387a2c7339382` | ⚠️ Unaudited |
| Vyper_contract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391531 | `0xa8a9699161f266f7e79080ca0b65210820be8732` | ⚠️ Unaudited |
| Vyper_contract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391532 | `0xad4dbd3be46f7bdab82702b581b1d4c5f584741a` | ⚠️ Unaudited |
| Vyper_contract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391533 | `0xb7fd36eb847c04a144fab717e85b94da1d8c9b4e` | ⚠️ Unaudited |
| Vyper_contract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391534 | `0xb913090f0fcc2473dfcceaf41653a806bcb85fab` | ⚠️ Unaudited |
| Whitelist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 9 deployments: ethereum `0x194b6b1e4df7603abb320e8d4715bf943cfba053`; ethereum `0xb7fef6d81a09a15a986f804dc71a1d05b7fa08f3`; avalanche `0x4980d7757098a80deb6893d4384ec014212289d0`; avalanche `0x4c659888cd942a6feb2306c05a631c9cdfba4904`; avalanche `0x9395889ba1131a2bd70beffdcaeddf487b32fa93`; avalanche `0xa839416d0311248dcd9af7fe9918410fa5ea6b4f`; avalanche `0xd79756a7869f6a27c52f9550eda9b4e7baadd13c`; avalanche `0xe3243bbc363486be2f3f4e5fbd17f16b8ed2c1fe`; avalanche `0xe9963affc9a53e293c9bb547c52902071e6087c9` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (70)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x091ee664913a8406bae886ef99c71b6fc3f6cef8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391515 | `0x0aea75705be8281f4c24c3e954d1f8b1d0f8044c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1646affaeb46f3dd25b2936ab786a4fac1e3e2b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d79f7dc7065a23fc278a20551b97a236ec81889` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1dd8c138978e55488a11693dac51f67406e44807` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x20bbb34e45d7e5eb369dad26274a7b9cbb0714a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x248797b4e54945521739584d1baca4401e6a31ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x27499432808f901fde539c32d288557f7d1f1db0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a6b34e4c2df56acd34b73c5bf365966c8fd58d5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391519 | `0x312853485a41f76f20a14f927cd0ea676588936c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x336045401b3db35a658498e065f881a80e537fb5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3a3e85f323ac36bb214c8e5d467217b4fa094989` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391520 | `0x3b383d8e92cc922539f9e9f4d64da119e250334a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b607fc5d6814e424f5cefa57cdfb2caa101dfa0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391521 | `0x3cd0ecf1552d135b8da61c7f44cefe93485c616d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3fa76827575bb99ba4e56dc39562771921f11e16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x47d06393cffeacd55c9d0838e150fba6dd3ab141` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x51a287d1ec1f2e1216ce14aef4c12c43061b1844` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5beacf046f7ef7d40a3ebd50c519f7d19fb675e5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391526 | `0x600eee67d5ffdbb897055c03e3ccdd0ac9706c8e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x64bed5955b93ee3744e7d6558374ec170ac47af0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x67fccb64b26c72c708c716d047ff13b291af1b5b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ac82ef791c78f53c7c5025e1550df01126d0e33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7624da97664ff93189b8f797cbb2433963e4ca01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8ea8fa840b27e588a9e27f7070c7c365ec2f034d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9f66cb9d74bbb781ada8ed28f47b316942cc075c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa8d727e03054bae850e8f84413f7e4a98b40c3d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa9305e90a4f642370d5bd4ac2ef13877bc9a94ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xacb7f3baf1d9986760c0a470cd14ceca7544d4d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8cceb7ccc39b93fecd22c2a9855b1fd05c22080` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8ff397b25731fde6cb29dd27254042f616f79d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbd8c311a1b545da6e385cba7209211faf0ca3cde` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391535 | `0xc0cf10dd710aefb209d9dc67bc746510ffd98a53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc127a437d0705413690cbb513ec838cf37027632` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391536 | `0xc59e218828eea3e84f38a2cb9e02aad9318db57a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc84ca7c35d1490e7ebd03978fd5f5dbfd29b3cd4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc85be07a0157d2f1c677a71cfc7bf5f2b28df5ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf22032da47998ea78082abab00bb49e8d990503` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd602e05594101fdcf3af0ddcf4775fb1b78f5397` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe2e68dbfc55ede4129bcaa93d08a6dd531bfde5c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391537 | `0xe44edf7ad1d434afe3397687dd0a914674f2e405` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe7a5288996eb63ed5978ebedea9418a304181563` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf08d6a9c2c5a2dc9b8645c5ac0b529d4046d19aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf513bd4ba753548505a245be1877c39a4f0b5c96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf861894c0a3865f47c58ba9d3c741bb2a3705b35` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf9c28a0d2f1cb416cb577f1da280d45de2b704a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe423309b326b7bf9cc28669a47a4e09288df5e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x04c75fed758eb1aa50d045465ac31ae400aeadc0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0cd322e9a6031f27627cd1af9c4ac006bf927abc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1627b54aa04010c123b8f77d8d9fa0939f84292b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1ce1fe3944653a8d7e793240adbe9858d8c94d39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x20e7dad86939b31e02e28614473905bf79ffe6ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2156b61681b323e7d4c4ed50df0b83d608298906` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2ba283a4a88362704004e7cfdac6039b6ac02326` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x31e6ad61908f060ad89786ece37b2498b2f1ad45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3284949736d55faf3706ec167f4d51f1afc6c6ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3405ad3afbd981e5545308168e33be24aeee0021` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x34c737f8bafb9e97ce8f4c702101f7878cc41103` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5b69a34bfa22162036f10bb352c7e9377758f01d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7b859b9e6df4130e1822dd076af479e56d49c39e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8c4fd210b4a432652f02af641b7140f545b4f6ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8f49d8b93e0e25e892be65a921c2b0226689df66` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9a0b5e34eff0ec5a3476a915f35c800f8abeb3bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9a66a6d01af96efb36e7db47be759d9d87c066d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xaf6183697d87cb064d9fe56210ca4d240cf4fef4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc1b7b1fc9b34ce51a432f1dbbcd2120db3016371` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc8698bee361b479de6683f34883798ef34e29873` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xed386690377a2b455c0c7c5cdcc90a41d6405e6b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xef0ac6fa11fb4e0446c02c5455b63163b05a9631` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfce6a25b07c20bd601114e79c21fab4dae18448c` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [www.openzeppelin.com/news/ribbon-finance-audit](https://www.openzeppelin.com/news/ribbon-finance-audit) | OpenZeppelin | Audit | 2021-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 16 | high |
| [RibbonThetaVault V2 Smart Contract Review And Verification.pdf](https://github.com/ribbon-finance/audit/blob/master/reports/RibbonThetaVault%20V2%20Smart%20Contract%20Review%20And%20Verification.pdf) | OpenZeppelin | Audit | 2021-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [PeckShield-Audit-Report-Ribbon-v1.0.pdf](https://github.com/ribbon-finance/audit/blob/master/reports/PeckShield-Audit-Report-Ribbon-v1.0.pdf) | PeckShield | Audit | 2021-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | medium |
| [Quantstamp Theta Vault.pdf](https://github.com/ribbon-finance/audit/blob/master/reports/Quantstamp%20Theta%20Vault.pdf) | Quantstamp | Audit | 2021-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 32 | high |
| [Chainsafe-Ribbon-Audit_April-2021.pdf](https://github.com/ribbon-finance/audit/blob/master/reports/Chainsafe-Ribbon-Audit_April-2021.pdf) | Chainsafe | Audit | 2021-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [PeckShield-Audit-Report-RBN-ERC20-v1.0.pdf](https://github.com/ribbon-finance/audit/blob/master/reports/PeckShield-Audit-Report-RBN-ERC20-v1.0.pdf) | PeckShield | Audit | 2021-05 | stale | Direct | n/a | no match | 0 | 0 | 0 | 2 | n/a |
| [PeckShield-Audit-Report-RVOL-v1.0rc.pdf](https://github.com/ribbon-finance/audit/blob/master/reports/PeckShield-Audit-Report-RVOL-v1.0rc.pdf) | PeckShield | Audit | 2021-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [PeckShield-Audit-Report-RibbonSwap.pdf](https://github.com/ribbon-finance/audit/blob/master/reports/PeckShield-Audit-Report-RibbonSwap.pdf) | PeckShield | Audit | 2022-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [PeckShield-Audit-Report-RibbonTreasuryVault.pdf](https://github.com/ribbon-finance/audit/blob/master/reports/PeckShield-Audit-Report-RibbonTreasuryVault.pdf) | PeckShield | Audit | 2022-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [RibbonThetaYearn-18june.pdf](https://github.com/ribbon-finance/audit/blob/master/reports/RibbonThetaYearn-18june.pdf) | Unknown | Audit | 2021-06 | stale | Direct | n/a | matched | 1 | 1 | 0 | 2 | n/a |
| [RibbonV2-July-2021.pdf](https://github.com/ChainSafe/audits/blob/main/Ribbon%20Finance/RibbonV2-July-2021.pdf) | unknown | Audit | 2021-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [ribbon-07-2023.pdf](https://github.com/ChainSafe/audits/blob/main/Ribbon%20Finance/ribbon-07-2023.pdf) | unknown | Audit | 2023-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [ribbon-finance-04-2021.pdf](https://github.com/ChainSafe/audits/blob/main/Ribbon%20Finance/ribbon-finance-04-2021.pdf) | unknown | Audit | 2021-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [ribbon-finance-11-2021.pdf](https://github.com/ChainSafe/audits/blob/main/Ribbon%20Finance/ribbon-finance-11-2021.pdf) | unknown | Audit | 2021-11 | stale | Direct | contract_name | matched | 2 | 2 | 0 | 6 | high |
| [RibbonThetaVault V2 Smart Contract Review And Verification.pdf](https://raw.githubusercontent.com/ribbon-finance/audit/b837e7b04dfbbc6fb577039e9baa598f46ec04a7/reports/RibbonThetaVault%20V2%20Smart%20Contract%20Review%20And%20Verification.pdf) | Quantstamp | Audit | 2021-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2529] www.openzeppelin.com/news/ribbon-finance-audit — no match: All contracts listed in the Scope section of the audit report.
- [2530] RibbonThetaVault V2 Smart Contract Review And Verification.pdf — no match: Report title and date indicate July 2021; 7 contracts explicitly listed in scope.
- [2531] PeckShield-Audit-Report-Ribbon-v1.0.pdf — no match: No explicit scope section; contracts extracted from findings targets and mentions.
- [2535] Quantstamp Theta Vault.pdf — no match: Extracted contract names from file signatures, findings, and code coverage sections. Audit date from cover page.
- [2536] Chainsafe-Ribbon-Audit_April-2021.pdf — no match: Scope explicitly mentions RibbonCoveredCall and parts of GammaAdapter and ProtocolAdapter. IProtocolAdapter and OptionVaultStorage are also reviewed in line-by-line sections.
- [2537] PeckShield-Audit-Report-RBN-ERC20-v1.0.pdf — no match: No reason recorded
- [2538] PeckShield-Audit-Report-RVOL-v1.0rc.pdf — no match: Audit report for RVOL (Ribbon Volatility) smart contract. Scope includes the RVOL library and its components: Math, OptionsPremiumPricer, VolOracle, DSMath. No file paths provided, but contract names are clearly identified as audit targets.
- [2539] PeckShield-Audit-Report-RibbonSwap.pdf — no match: Only one contract Swap.sol is in scope. Audit date from cover page and latest audit report date.
- [2540] PeckShield-Audit-Report-RibbonTreasuryVault.pdf — no match: Two contracts explicitly listed in scope. Audit date from cover page and latest audit report date.
- [2541] RibbonThetaYearn-18june.pdf — matched: No reason recorded
- [2542] RibbonV2-July-2021.pdf — no match: The report states 'There are 7 contracts in scope' and lists them in the line-by-line review sections. The audit date is July 2021, inferred as end of month.
- [2543] ribbon-07-2023.pdf — no match: Scope explicitly mentions RibbonAutocallVault.sol and the difference between RibbonTreasuryVault.sol and RibbonTreasuryVaultLite.sol. Audit date is July 2023, interpreted as end of month.
- [2544] ribbon-finance-04-2021.pdf — no match: Scope explicitly mentions RibbonCoveredCall and parts of GammaAdapter and ProtocolAdapter. IProtocolAdapter and OptionVaultStorage are referenced in findings but not explicitly in scope; however, they are part of the codebase reviewed. Date is April 2021, approximated to end of month.
- [2545] ribbon-finance-11-2021.pdf — matched: Extracted 8 contract names from the audit report. The report mentions '10 contracts/libraries in scope' but only 8 distinct names are explicitly referenced in the line-by-line review. The date is November 2021, approximated to last day of month.
- [15372] RibbonThetaVault V2 Smart Contract Review And Verification.pdf — no match: The report explicitly states 'There are 7 contracts in scope' and lists them in the line-by-line review sections. The audit date is July 2021, inferred as end of month.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| www.openzeppelin.com/news/ribbon-finance-audit | GammaInterface | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/ribbon-finance-audit | IERC20Detailed | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/ribbon-finance-audit | IGnosisAuction | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/ribbon-finance-audit | IRibbon | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/ribbon-finance-audit | IRibbonThetaVault | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/ribbon-finance-audit | IWETH | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/ribbon-finance-audit | GnosisAuction | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/ribbon-finance-audit | ShareMath | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/ribbon-finance-audit | SupportsNonCompliantERC20 | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/ribbon-finance-audit | Vault | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/ribbon-finance-audit | VaultLifecycle | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/ribbon-finance-audit | OptionsVaultStorage | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/ribbon-finance-audit | StrikeSelection | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/ribbon-finance-audit | RibbonDeltaVault | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/ribbon-finance-audit | RibbonThetaVault | ambiguous — not counted | AdminUpgradeabilityProxy (proxy) (alternative) `0x8b5876f5b0bf64056a89aa7e97511644758c3e8c` — deployed 2021-04-21 10:56:24+03 — liveness: live (current_address_book_code)<br>AdminUpgradeabilityProxy (proxy) (alternative) `0x16772a7f4a3ca291c21b8ace76f9332ddffbb5ef` — deployed 2021-05-04 22:11:30+03 — liveness: live (current_address_book_code)<br>AdminUpgradeabilityProxy (proxy) (alternative) `0x0fabaf48bbf864a3947bdd0ba9d764791a60467a` — deployed 2021-03-31 16:19:45+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| www.openzeppelin.com/news/ribbon-finance-audit | RibbonVault | unmatched — not counted | — | listed in scope | no |
| RibbonThetaVault V2 Smart Contract Review And Verification.pdf | GnosisAuction | unmatched — not counted | — | mentioned in line-by-line review section 3.1-3.3 | no |
| RibbonThetaVault V2 Smart Contract Review And Verification.pdf | ShareMath | unmatched — not counted | — | mentioned in line-by-line review section 3.4-3.15 | no |
| RibbonThetaVault V2 Smart Contract Review And Verification.pdf | Vault | unmatched — not counted | — | mentioned in line-by-line review section 3.16-3.19 | no |
| RibbonThetaVault V2 Smart Contract Review And Verification.pdf | VaultLifecycle | unmatched — not counted | — | mentioned in line-by-line review section 3.20-3.32 | no |
| RibbonThetaVault V2 Smart Contract Review And Verification.pdf | OptionsVaultStorage | unmatched — not counted | — | mentioned in line-by-line review section 3.33-3.34 | no |
| RibbonThetaVault V2 Smart Contract Review And Verification.pdf | StrikeSelection | unmatched — not counted | — | mentioned in line-by-line review section 3.35-3.38 | no |
| RibbonThetaVault V2 Smart Contract Review And Verification.pdf | RibbonThetaVault | ambiguous — not counted | AdminUpgradeabilityProxy (proxy) (alternative) `0x8b5876f5b0bf64056a89aa7e97511644758c3e8c` — deployed 2021-04-21 10:56:24+03 — liveness: live (current_address_book_code)<br>AdminUpgradeabilityProxy (proxy) (alternative) `0x16772a7f4a3ca291c21b8ace76f9332ddffbb5ef` — deployed 2021-05-04 22:11:30+03 — liveness: live (current_address_book_code)<br>AdminUpgradeabilityProxy (proxy) (alternative) `0x0fabaf48bbf864a3947bdd0ba9d764791a60467a` — deployed 2021-03-31 16:19:45+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| PeckShield-Audit-Report-Ribbon-v1.0.pdf | RibbonCoveredCall | unmatched — not counted | — | Target in findings PVE-001, PVE-002, PVE-003 | no |
| PeckShield-Audit-Report-Ribbon-v1.0.pdf | GammaAdapter | unmatched — not counted | — | Target in findings PVE-004, PVE-005, PVE-006 | no |
| PeckShield-Audit-Report-Ribbon-v1.0.pdf | BaseVault | unmatched — not counted | — | Mentioned in finding PVE-003 as contract with system parameters | no |
| Quantstamp Theta Vault.pdf | RibbonFactory | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp Theta Vault.pdf | RibbonThetaVault | ambiguous — not counted | AdminUpgradeabilityProxy (proxy) (alternative) `0x8b5876f5b0bf64056a89aa7e97511644758c3e8c` — deployed 2021-04-21 10:56:24+03 — liveness: live (current_address_book_code)<br>AdminUpgradeabilityProxy (proxy) (alternative) `0x16772a7f4a3ca291c21b8ace76f9332ddffbb5ef` — deployed 2021-05-04 22:11:30+03 — liveness: live (current_address_book_code)<br>AdminUpgradeabilityProxy (proxy) (alternative) `0x0fabaf48bbf864a3947bdd0ba9d764791a60467a` — deployed 2021-03-31 16:19:45+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Quantstamp Theta Vault.pdf | GammaAdapter | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp Theta Vault.pdf | HegicAdapter | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp Theta Vault.pdf | UniswapAdapter | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp Theta Vault.pdf | IProtocolAdapter | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp Theta Vault.pdf | ProtocolAdapter | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp Theta Vault.pdf | VaultRegistry | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp Theta Vault.pdf | StakedPut | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp Theta Vault.pdf | OptionsVaultStorage | unmatched — not counted | — | listed in file signatures | no |
| Quantstamp Theta Vault.pdf | DSMath | unmatched — not counted | — | listed in file signatures | no |
| Quantstamp Theta Vault.pdf | Ownable | unmatched — not counted | — | listed in file signatures | no |
| Quantstamp Theta Vault.pdf | AdminUpgradeabilityProxy | ambiguous — not counted | AdminUpgradeabilityProxy (proxy) (alternative) `0x6bf686d99a4ce17798c45d09c21181fac29a9fb3` — deployed 2022-02-23 23:16:09+03 — liveness: live (current_address_book_code)<br>AdminUpgradeabilityProxy (proxy) (alternative) `0x8b5876f5b0bf64056a89aa7e97511644758c3e8c` — deployed 2021-04-21 10:56:24+03 — liveness: live (current_address_book_code)<br>AdminUpgradeabilityProxy (proxy) (alternative) `0x98d03125c62dae2328d9d3cb32b7b969e6a87787` — deployed 2021-12-08 09:11:45+03 — liveness: live (current_address_book_code)<br>AdminUpgradeabilityProxy (proxy) (alternative) `0x25751853eab4d0eb3652b5eb6ecb102a2789644b` — deployed 2021-09-11 04:54:21+03 — liveness: live (current_address_book_code)<br>AdminUpgradeabilityProxy (proxy) (alternative) `0xce5513474e077f5336cf1b33c1347fdd8d48ae8c` — deployed 2022-11-25 02:05:59+03 — liveness: live (current_address_book_code)<br>AdminUpgradeabilityProxy (proxy) (alternative) `0x16772a7f4a3ca291c21b8ace76f9332ddffbb5ef` — deployed 2021-05-04 22:11:30+03 — liveness: live (current_address_book_code)<br>AdminUpgradeabilityProxy (proxy) (alternative) `0x8fe74471f198e426e96be65f40eed1f8ba96e54f` — deployed 2021-06-24 14:58:15+03 — liveness: live (current_address_book_code)<br>AdminUpgradeabilityProxy (proxy) (alternative) `0x270f4a26a3fe5766ccef9608718491bb057be238` — deployed 2022-06-27 13:54:57+03 — liveness: live (current_address_book_code)<br>AdminUpgradeabilityProxy (proxy) (alternative) `0x0fabaf48bbf864a3947bdd0ba9d764791a60467a` — deployed 2021-03-31 16:19:45+03 — liveness: live (current_address_book_code)<br>AdminUpgradeabilityProxy (proxy) (alternative) `0x9dd6be071b4292cc88b8190ab718329adea3e3a3` — deployed 2021-12-23 08:53:48+03 — liveness: live (current_address_book_code)<br>AdminUpgradeabilityProxy (proxy) (alternative) `0xe63151a0ed4e5fafdc951d877102cf0977abd365` — deployed 2021-11-02 11:37:26+03 — liveness: live (current_address_book_code)<br>AdminUpgradeabilityProxy (proxy) (alternative) `0x42cf874bbe5564efcf252bc90829551f4ec639dc` — deployed 2022-07-18 06:58:21+03 — liveness: live (current_address_book_code)<br>AdminUpgradeabilityProxy (proxy) (alternative) `0x2a6b048eb15c7d4ddca27db4f9a454196898a0fe` — deployed 2022-06-28 08:10:49+03 — liveness: live (current_address_book_code)<br>AdminUpgradeabilityProxy (proxy) (alternative) `0x65a833afdc250d9d38f8cd9bc2b1e3132db13b2f` — deployed 2021-09-10 06:17:37+03 — liveness: live (current_address_book_code)<br>AdminUpgradeabilityProxy (proxy) (alternative) `0xa1da0580fa96129e753d736a5901c31df5ec5edf` — deployed 2022-06-17 12:21:26+03 — liveness: live (current_address_book_code)<br>AdminUpgradeabilityProxy (proxy) (alternative) `0x84c2b16fa6877a8ff4f3271db7ea837233dfd6f0` — deployed 2022-08-23 05:52:32+03 — liveness: live (current_address_book_code)<br>AdminUpgradeabilityProxy (proxy) (alternative) `0xcc323557c71c0d1d20a1861dc69c06c5f3cc9624` — deployed 2021-12-07 11:59:01+03 — liveness: live (current_address_book_code)<br>AdminUpgradeabilityProxy (proxy) (alternative) `0x53773e034d9784153471813dacaff53dbbb78e8c` — deployed 2021-11-23 13:40:40+03 — liveness: live (current_address_book_code) | bare standard proxy-shell name is not deployment identity; normalized_full_corpus:project_anchor:matcher_anchor | no |
| Quantstamp Theta Vault.pdf | Initializable | unmatched — not counted | — | listed in file signatures | no |
| Quantstamp Theta Vault.pdf | Proxy | unmatched — not counted | — | listed in file signatures | no |
| Quantstamp Theta Vault.pdf | ProxyAdmin | unmatched — not counted | — | listed in file signatures | no |
| Quantstamp Theta Vault.pdf | UpgradeabilityProxy | unmatched — not counted | — | listed in file signatures | no |
| Quantstamp Theta Vault.pdf | GammaInterface | unmatched — not counted | — | listed in file signatures | no |
| Quantstamp Theta Vault.pdf | HegicInterface | unmatched — not counted | — | listed in file signatures | no |
| Quantstamp Theta Vault.pdf | IChiToken | unmatched — not counted | — | listed in file signatures | no |
| Quantstamp Theta Vault.pdf | InstrumentInterface | unmatched — not counted | — | listed in file signatures | no |
| Quantstamp Theta Vault.pdf | IRibbonFactory | unmatched — not counted | — | listed in file signatures | no |
| Quantstamp Theta Vault.pdf | ISwap | unmatched — not counted | — | listed in file signatures | no |
| Quantstamp Theta Vault.pdf | ISwapPair | unmatched — not counted | — | listed in file signatures | no |
| Quantstamp Theta Vault.pdf | IUniswapV2Pair | unmatched — not counted | — | listed in file signatures | no |
| Quantstamp Theta Vault.pdf | IUniswapV2Router | unmatched — not counted | — | listed in file signatures | no |
| Quantstamp Theta Vault.pdf | IWETH | unmatched — not counted | — | listed in file signatures | no |
| Quantstamp Theta Vault.pdf | IZeroExExchange | unmatched — not counted | — | listed in file signatures | no |
| Quantstamp Theta Vault.pdf | AmmAdapter | unmatched — not counted | — | listed in code coverage | no |
| Quantstamp Theta Vault.pdf | CharmAdapter | unmatched — not counted | — | listed in code coverage | no |
| Quantstamp Theta Vault.pdf | IAmmAdapter | unmatched — not counted | — | listed in code coverage | no |
| Quantstamp Theta Vault.pdf | RibbonVolatility | unmatched — not counted | — | listed in code coverage | no |
| Chainsafe-Ribbon-Audit_April-2021.pdf | RibbonCoveredCall | unmatched — not counted | — | listed in scope and reviewed line-by-line | no |
| Chainsafe-Ribbon-Audit_April-2021.pdf | GammaAdapter | unmatched — not counted | — | mentioned in scope: 'parts of GammaAdapter' | no |
| Chainsafe-Ribbon-Audit_April-2021.pdf | ProtocolAdapter | unmatched — not counted | — | mentioned in scope: 'parts of ProtocolAdapter' | no |
| Chainsafe-Ribbon-Audit_April-2021.pdf | IProtocolAdapter | unmatched — not counted | — | line 16 reviewed | no |
| Chainsafe-Ribbon-Audit_April-2021.pdf | OptionVaultStorage | unmatched — not counted | — | line 48 reviewed | no |
| PeckShield-Audit-Report-RBN-ERC20-v1.0.pdf | MerkleDistributor | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-RBN-ERC20-v1.0.pdf | RibbonToken | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-RVOL-v1.0rc.pdf | RVOL | unmatched — not counted | — | Target of audit, described as a set of Solidity libraries and tools | no |
| PeckShield-Audit-Report-RVOL-v1.0rc.pdf | Math | unmatched — not counted | — | Target in finding PVE-001: Math::cdf()/ncdf() | no |
| PeckShield-Audit-Report-RVOL-v1.0rc.pdf | OptionsPremiumPricer | unmatched — not counted | — | Mentioned in finding PVE-001 as contract providing getPremium() | no |
| PeckShield-Audit-Report-RVOL-v1.0rc.pdf | VolOracle | unmatched — not counted | — | Target in finding PVE-002: VolOracle::getTimeWeightedAverageTick() | no |
| PeckShield-Audit-Report-RVOL-v1.0rc.pdf | DSMath | unmatched — not counted | — | Target in finding PVE-003: DSMath::wdiv()/rdiv() | no |
| PeckShield-Audit-Report-RibbonSwap.pdf | Swap | unmatched — not counted | — | listed in scope and findings target Swap | no |
| PeckShield-Audit-Report-RibbonTreasuryVault.pdf | RibbonTreasuryVault | ambiguous — not counted | AdminUpgradeabilityProxy (proxy) (alternative) `0x270f4a26a3fe5766ccef9608718491bb057be238` — deployed 2022-06-27 13:54:57+03 — liveness: live (current_address_book_code)<br>AdminUpgradeabilityProxy (proxy) (alternative) `0x42cf874bbe5564efcf252bc90829551f4ec639dc` — deployed 2022-07-18 06:58:21+03 — liveness: live (current_address_book_code)<br>AdminUpgradeabilityProxy (proxy) (alternative) `0x2a6b048eb15c7d4ddca27db4f9a454196898a0fe` — deployed 2022-06-28 08:10:49+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| PeckShield-Audit-Report-RibbonTreasuryVault.pdf | VaultLifecycleTreasury | unmatched — not counted | — | Listed in scope: 'this audit only covers the following two contracts: RibbonTreasuryVault and VaultLifecycleTreasury' | no |
| RibbonThetaYearn-18june.pdf | GammaAdapter | unmatched — not counted | — | — | no |
| RibbonThetaYearn-18june.pdf | RibbonThetaVaultYearn | own proxy deployment | AdminUpgradeabilityProxy (proxy) (selected) `0x8fe74471f198e426e96be65f40eed1f8ba96e54f` — deployed 2021-06-24 14:58:15+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| RibbonThetaYearn-18june.pdf | YearnPricer | unmatched — not counted | — | — | no |
| RibbonV2-July-2021.pdf | GnosisAuction | unmatched — not counted | — | mentioned in line-by-line review (3.1, 3.2, 3.3) | no |
| RibbonV2-July-2021.pdf | ShareMath | unmatched — not counted | — | mentioned in line-by-line review (3.4-3.15) | no |
| RibbonV2-July-2021.pdf | Vault | unmatched — not counted | — | mentioned in line-by-line review (3.16-3.19) | no |
| RibbonV2-July-2021.pdf | VaultLifecycle | unmatched — not counted | — | mentioned in line-by-line review (3.20-3.32) | no |
| RibbonV2-July-2021.pdf | OptionsVaultStorage | unmatched — not counted | — | mentioned in line-by-line review (3.33, 3.34) | no |
| RibbonV2-July-2021.pdf | StrikeSelection | unmatched — not counted | — | mentioned in line-by-line review (3.35-3.38) | no |
| RibbonV2-July-2021.pdf | RibbonThetaVault | ambiguous — not counted | AdminUpgradeabilityProxy (proxy) (alternative) `0x8b5876f5b0bf64056a89aa7e97511644758c3e8c` — deployed 2021-04-21 10:56:24+03 — liveness: live (current_address_book_code)<br>AdminUpgradeabilityProxy (proxy) (alternative) `0x16772a7f4a3ca291c21b8ace76f9332ddffbb5ef` — deployed 2021-05-04 22:11:30+03 — liveness: live (current_address_book_code)<br>AdminUpgradeabilityProxy (proxy) (alternative) `0x0fabaf48bbf864a3947bdd0ba9d764791a60467a` — deployed 2021-03-31 16:19:45+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| ribbon-07-2023.pdf | RibbonAutocallVault | unmatched — not counted | — | scope included RibbonAutocallVault.sol | no |
| ribbon-07-2023.pdf | RibbonTreasuryVault | ambiguous — not counted | AdminUpgradeabilityProxy (proxy) (alternative) `0x270f4a26a3fe5766ccef9608718491bb057be238` — deployed 2022-06-27 13:54:57+03 — liveness: live (current_address_book_code)<br>AdminUpgradeabilityProxy (proxy) (alternative) `0x42cf874bbe5564efcf252bc90829551f4ec639dc` — deployed 2022-07-18 06:58:21+03 — liveness: live (current_address_book_code)<br>AdminUpgradeabilityProxy (proxy) (alternative) `0x2a6b048eb15c7d4ddca27db4f9a454196898a0fe` — deployed 2022-06-28 08:10:49+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| ribbon-07-2023.pdf | RibbonTreasuryVaultLite | unmatched — not counted | — | scope included difference between RibbonTreasuryVault.sol and RibbonTreasuryVaultLite.sol | no |
| ribbon-finance-04-2021.pdf | RibbonCoveredCall | unmatched — not counted | — | listed in scope and reviewed line-by-line | no |
| ribbon-finance-04-2021.pdf | GammaAdapter | unmatched — not counted | — | mentioned in scope: 'parts of GammaAdapter' | no |
| ribbon-finance-04-2021.pdf | ProtocolAdapter | unmatched — not counted | — | mentioned in scope: 'parts of ProtocolAdapter' | no |
| ribbon-finance-04-2021.pdf | IProtocolAdapter | unmatched — not counted | — | referenced in line 5.20 | no |
| ribbon-finance-04-2021.pdf | OptionVaultStorage | unmatched — not counted | — | referenced in line 5.21 | no |
| ribbon-finance-11-2021.pdf | GnosisAuction | unmatched — not counted | — | line-by-line review section 4.1 | no |
| ribbon-finance-11-2021.pdf | VaultLifecycle | unmatched — not counted | — | line-by-line review section 4.2-4.7 | no |
| ribbon-finance-11-2021.pdf | VaultLifecycleSTETH | unmatched — not counted | — | line-by-line review section 4.8-4.10 | no |
| ribbon-finance-11-2021.pdf | VaultLifecycleYearn | unmatched — not counted | — | line-by-line review section 4.11-4.12 | no |
| ribbon-finance-11-2021.pdf | RibbonVault | unmatched — not counted | — | line-by-line review section 4.13-4.17 | no |
| ribbon-finance-11-2021.pdf | RibbonThetaVault | ambiguous — not counted | AdminUpgradeabilityProxy (proxy) (alternative) `0x8b5876f5b0bf64056a89aa7e97511644758c3e8c` — deployed 2021-04-21 10:56:24+03 — liveness: live (current_address_book_code)<br>AdminUpgradeabilityProxy (proxy) (alternative) `0x16772a7f4a3ca291c21b8ace76f9332ddffbb5ef` — deployed 2021-05-04 22:11:30+03 — liveness: live (current_address_book_code)<br>AdminUpgradeabilityProxy (proxy) (alternative) `0x0fabaf48bbf864a3947bdd0ba9d764791a60467a` — deployed 2021-03-31 16:19:45+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| ribbon-finance-11-2021.pdf | RibbonThetaSTETHVault | own proxy deployment | AdminUpgradeabilityProxy (proxy) (selected) `0x53773e034d9784153471813dacaff53dbbb78e8c` — deployed 2021-11-23 13:40:40+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ribbon-finance-11-2021.pdf | RibbonThetaYearnVault | own proxy deployment | AdminUpgradeabilityProxy (proxy) (selected) `0xcc323557c71c0d1d20a1861dc69c06c5f3cc9624` — deployed 2021-12-07 11:59:01+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| RibbonThetaVault V2 Smart Contract Review And Verification.pdf | GnosisAuction | unmatched — not counted | — | mentioned in line-by-line review (3.1, 3.2, 3.3) | no |
| RibbonThetaVault V2 Smart Contract Review And Verification.pdf | ShareMath | unmatched — not counted | — | mentioned in line-by-line review (3.4-3.15) | no |
| RibbonThetaVault V2 Smart Contract Review And Verification.pdf | Vault | unmatched — not counted | — | mentioned in line-by-line review (3.16-3.19) | no |
| RibbonThetaVault V2 Smart Contract Review And Verification.pdf | VaultLifecycle | unmatched — not counted | — | mentioned in line-by-line review (3.20-3.32) | no |
| RibbonThetaVault V2 Smart Contract Review And Verification.pdf | OptionsVaultStorage | unmatched — not counted | — | mentioned in line-by-line review (3.33, 3.34) | no |
| RibbonThetaVault V2 Smart Contract Review And Verification.pdf | StrikeSelection | unmatched — not counted | — | mentioned in line-by-line review (3.35-3.38) | no |
| RibbonThetaVault V2 Smart Contract Review And Verification.pdf | RibbonThetaVault | ambiguous — not counted | AdminUpgradeabilityProxy (proxy) (alternative) `0x8b5876f5b0bf64056a89aa7e97511644758c3e8c` — deployed 2021-04-21 10:56:24+03 — liveness: live (current_address_book_code)<br>AdminUpgradeabilityProxy (proxy) (alternative) `0x16772a7f4a3ca291c21b8ace76f9332ddffbb5ef` — deployed 2021-05-04 22:11:30+03 — liveness: live (current_address_book_code)<br>AdminUpgradeabilityProxy (proxy) (alternative) `0x0fabaf48bbf864a3947bdd0ba9d764791a60467a` — deployed 2021-03-31 16:19:45+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0xf2e186d6f3cafe17bcc89c50133cfbc2db6cf55a` | FeeCustody | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x84c2b16fa6877a8ff4f3271db7ea837233dfd6f0` | RibbonEarnVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xce5513474e077f5336cf1b33c1347fdd8d48ae8c` | RibbonEarnVaultFixedRate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1e80265e821990b8139b43c12c622f64bf928a9a` | RibbonThetaRETHVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0fabaf48bbf864a3947bdd0ba9d764791a60467a` | RibbonThetaVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x16772a7f4a3ca291c21b8ace76f9332ddffbb5ef` | RibbonThetaVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x5ce91e3f17d3bc683b73b0765dc18d75d8ebdcf8` | RibbonThetaVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x25751853eab4d0eb3652b5eb6ecb102a2789644b` | RibbonThetaVaultWithSwap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xe63151a0ed4e5fafdc951d877102cf0977abd365` | RibbonThetaVaultWithSwap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x6bf686d99a4ce17798c45d09c21181fac29a9fb3` | RibbonThetaVaultWithSwap | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x98d03125c62dae2328d9d3cb32b7b969e6a87787` | RibbonThetaVaultWithSwap | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x9dd6be071b4292cc88b8190ab718329adea3e3a3` | RibbonThetaVaultWithSwap | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x270f4a26a3fe5766ccef9608718491bb057be238` | RibbonTreasuryVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2a6b048eb15c7d4ddca27db4f9a454196898a0fe` | RibbonTreasuryVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0cb9cc35cefa5622e8d25af36dd56de142ef6415` | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1929605b714517b76bb733198e0f3c3d4ab08608` | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x19854c9a5ffa8116f48f984bdf946fb9cea9b5f7` | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x43277c92f9936aeb5d6a2713a44cd2f096f171cc` | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4ba4afa8071b0a9fe3097700cdade02dd0e16fd0` | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4e079dca26a4fe2586928c1319b20b1bf9f9be72` | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x5b0655f938a72052c46d2e94d206ccb6ff625a3a` | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x8913eab16a302de3e498bba39940e7a55c0b9325` | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x9038403c3f7c6b5ca361c82448daa48780d7c8bd` | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x9674126ff31e5ece36de0cf03a49351a7c814587` | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x98c371567b8a196518dcb4a4383387a2c7339382` | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa8a9699161f266f7e79080ca0b65210820be8732` | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xad4dbd3be46f7bdab82702b581b1d4c5f584741a` | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb7fd36eb847c04a144fab717e85b94da1d8c9b4e` | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb913090f0fcc2473dfcceaf41653a806bcb85fab` | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 129 |
| upstream | 1 |
| standard_library | 1 |
| needs_review | 70 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 13
- Inherited remapped matches: 0
- Address-book scope dispositions: 3 own (3 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 9 ambiguous, 94 unmatched
- Matched-own operational status: 3 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=12, medium=1
- Match method counts: unique_name=3

Zero-match audit list:

- [2529] www.openzeppelin.com/news/ribbon-finance-audit
- [2530] RibbonThetaVault V2 Smart Contract Review And Verification.pdf
- [2531] PeckShield-Audit-Report-Ribbon-v1.0.pdf
- [2535] Quantstamp Theta Vault.pdf
- [2536] Chainsafe-Ribbon-Audit_April-2021.pdf
- [2537] PeckShield-Audit-Report-RBN-ERC20-v1.0.pdf
- [2538] PeckShield-Audit-Report-RVOL-v1.0rc.pdf
- [2539] PeckShield-Audit-Report-RibbonSwap.pdf
- [2540] PeckShield-Audit-Report-RibbonTreasuryVault.pdf
- [2542] RibbonV2-July-2021.pdf
- [2543] ribbon-07-2023.pdf
- [2544] ribbon-finance-04-2021.pdf
- [15372] RibbonThetaVault V2 Smart Contract Review And Verification.pdf

Fork inheritance lineage and inherited audits are included when available.
