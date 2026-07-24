# Agentic Audit Brief: Bancor

## Export Authority

- Production state: **published scope**
- Raw selected rows: 34 across 7 audit(s)
- Eligible audit results: 11 (7 matched; 4 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

⚠️ Lifecycle status: DEAD - TVL dropped 19.2% over 90 days

## Project Overview

- Project: Bancor (`bancor`)
- Website: [https://app.bancor.network/](https://app.bancor.network/)
- Lifecycle: dead (Tier 0, 99.1% below peak)
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: ethereum
- Contract surface: 174 unique implementations (476 raw deployments)
- Coverage basis: 15/17 confirmed own live verified implementations (88.2%); conservative 88.2% with 0 needs-review implementation(s)
- DeFi Llama TVL: $22,652,984.00
- On-chain TVL (included contracts): $37,484,755.51
- TVL by chain: Ethereum $37,484,755.51

## Project Description

This brief describes the observed EVM deployment and audit surface for Bancor. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 29 contract row(s) across ethereum. Structural roles: 21 unclassified, 7 core, 1 supporting. 3 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 29
- Structural roles: unclassified (21), core (7), supporting (1)
- Contract kinds: contract (29)
- Detected standards: ownable (5), erc20 (3), erc1967proxy (2), erc20permit (1)
- Frameworks: openzeppelin (8), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 3

## Fork Analysis

0 of 8 contracts are derived from known codebases. 8 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- BancorGovernance (`0x892f481bd6e9d7d26ae365211d9b45175d5d00e4`, chain 1)
- BancorGovernance (`0xebfafc802533f3d2835af7464fcd4492e8f82eb2`, chain 1)
- BancorV1Migration (`0xd761d538240e23b465c9c08236d781029dc3cc96`, chain 1)
- DSToken (`0x48fb253446873234f2febbf9bdeaa72d9d387f94`, chain 1)
- PoolToken (`0xab05cf7c6c3a288cd36326e4f7b8600e7268e344`, chain 1)
- SmartToken (`0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c`, chain 1)
- TransparentUpgradeableProxyImmutable (`0x649765821d9f64198c905ec0b2b037a4a52bc373`, chain 1)
- TransparentUpgradeableProxyImmutable (`0xeef417e1d5cc832e619ae18d2f140de2999dd4fb`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 29; live-surface rows included: 29 (29 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 18/19 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 15/17 (88.2%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 17 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 157 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 20
- Confirmed-live implementations: 17 of 174 unique; 157 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 15/95
- Verified + Unaudited implementations: 80
- Verified by bytecode match: 0
- Unverified implementations: 79
- Unique implementations: 174
- Raw deployments: 476
- Audits discovered: 11 (11 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 7
- ASD (verified + unaudited TVL): $1,640,762.84
- Latest audit: 2022-09 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 11 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 15 match-unverified
- Tier 1 coverage: 82.4% (ChainSecurity, ConsenSys Diligence, OpenZeppelin)
- Note: This protocol is classified as [dead]. ASD of $1,640,762.84 represents exposure in a protocol with dead activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| ChainSecurity | Tier 1 | 13 | 13.7% | 2022-09 |
| OpenZeppelin | Tier 1 | 12 | 12.6% | 2022-08 |
| PeckShield | Tier 2 | 5 | 5.3% | 2022-04 |
| CertiK | Tier 2 | 1 | 1.1% | 2020-10 |
| Consensys Diligence | Tier 1 | 1 | 1.1% | 2017-05 |

## Contract Surface

### ✅ Verified + Audited (15)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| SmartToken | unknown | project_anchor | own_supporting | 0 | ethereum | n/a | 17 deployments: ethereum `0x1b51a2b74de5cfb40a99d84bc027819ad02ba7c7`; ethereum `0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c`; ethereum `0x43e879274a2da7d32dd4fb474db3923909773dc8`; ethereum `0x4bf2f1d6af562551c3870c9eea72f3a4b2dd48d8`; ethereum `0x6e7c0c595cd9815a3182e7020b221e4b2e8c117f`; ethereum `0x6fe08a1781c041b532d8860d61f22b5b7d17fe52`; ethereum `0x718618885b968233c062310b3940bed90b09119a`; ethereum `0x970d48531bd6da34dfa5f867c3bc0afe17c0c4dd`; ethereum `0x99ebd396ce7aa095412a4cd1a0c959d6fd67b340`; ethereum `0xb1c62bb4580d807415c7f4bfa61c926f40668c96`; ethereum `0xb1cd6e4153b2a390cf00a6556b0fc1458c4a5533`; ethereum `0xcba34b4431a8f47a5183108b4784424bf25239c0`; ethereum `0xdde116487fc20923f684c098a8419e6f6af32ae7`; ethereum `0xea45c7656c69d60ca5a1408beb6d9da60ca10cb0`; ethereum `0xee01b3ab5f6728adc137be101d99c678938e6e72`; ethereum `0xf132d2538076e373b0c186f1ddb86f3be8cfc8dc`; ethereum `0xf4ef10018cf8346cfec88f36863439216d1e0668` | ✅ Audited |
| MasterVault | core_logic | project_anchor | own_supporting | 1 | ethereum | unit-228896 | 2 deployments: ethereum `0x649765821d9f64198c905ec0b2b037a4a52bc373`; ethereum `0xf3b685d24f84b6eeeeee334250cf73ade1f10144` | ✅ Audited |
| ExternalRewardsVault | core_logic | project_anchor | own_supporting | 2 | ethereum | unit-228888 | 4 deployments: ethereum `0x2a2a2be5ccf20f3633c6ca2d429ac51186a631e1`; ethereum `0x30cc283aa2a5c74fb0dc642b0c8a9df376c23b1e`; ethereum `0xea4d665a290c9171ebcd1fca4068e55bb461c27c`; ethereum `0xfd31662b3d54edde9b6bdd32c9c27c8e292cad57` | ✅ Audited |
| AutoCompoundingRewards | unknown | project_anchor | own_supporting | 1 | ethereum | unit-228891 | `0x036f8b31d78ca354ada40dbd117e54f78b6f6cdc` | ✅ Audited |
| BancorGovernance | unknown | project_anchor | own_supporting | 0 | ethereum | unit-228882 | `0x892f481bd6e9d7d26ae365211d9b45175d5d00e4` | ✅ Audited |
| BancorNetwork | unknown | project_anchor | own_supporting | 1 | ethereum | unit-228887 | 2 deployments: ethereum `0x2f14750b0d267be47dcd30a134796c2e4b1638a3`; ethereum `0xeef417e1d5cc832e619ae18d2f140de2999dd4fb` | ✅ Audited |
| BancorNetworkInfo | periphery | project_anchor | own_supporting | 1 | ethereum | unit-228898 | 2 deployments: ethereum `0x8e303d296851b320e6a697bacb979d13c9d6e760`; ethereum `0xfd47c74a8030520bacd364fb8e08acb28766ae7b` | ✅ Audited |
| BancorPortal | unknown | project_anchor | own_supporting | 1 | ethereum | unit-228894 | 2 deployments: ethereum `0x9f292ccb69ff9a0644475c7bc8d4651039e133d5`; ethereum `0xe7e533a9f1afcadff409bb44a2b87d2c15d274d4` | ✅ Audited |
| BancorV1Migration | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-228884 | `0xd761d538240e23b465c9c08236d781029dc3cc96` | ✅ Audited |
| BNTPool | core_logic | project_anchor | own_supporting | 1 | ethereum | unit-228897 | 2 deployments: ethereum `0x02651e355d26f3506c1e644ba393fdd9ac95eaca`; ethereum `0xfb07a644a9e53879f29f7b3f29362e9c95b1ffa3` | ✅ Audited |
| NetworkSettings | unknown | project_anchor | own_supporting | 1 | ethereum | unit-228890 | 2 deployments: ethereum `0x51a6d03b156af044bda570cf35a919db851cebd1`; ethereum `0x83e1814ba31f7ea95d216204bb45fe75ce09b14f` | ✅ Audited |
| PendingWithdrawals | operational_periphery | project_anchor | own_supporting | 1 | ethereum | unit-228892 | 2 deployments: ethereum `0x7f05068f4dcc4df9dd54f52b647b0241ebbb92ce`; ethereum `0x857eb0eb2572f7092c417cd386ba82e45eba9b8a` | ✅ Audited |
| PoolMigrator | core_logic | project_anchor | own_supporting | 1 | ethereum | unit-228889 | 2 deployments: ethereum `0x330ee79a0a4f310315d58629c3afc20d384d198d`; ethereum `0x97cec0f2d355bf073619a5093f989709cae4a191` | ✅ Audited |
| PoolToken | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-228883 | `0xab05cf7c6c3a288cd36326e4f7b8600e7268e344` | ✅ Audited |
| StandardRewards | unknown | project_anchor | own_supporting | 1 | ethereum | unit-228893 | 2 deployments: ethereum `0xb0b958398abb0b5db4ce4d7598fb868f5a00f372`; ethereum `0xdfe331e68ce634a2f9557e05d1d603a8ea881f0d` | ✅ Audited |

### ⚠️ Verified + Unaudited (80)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| DSToken | unknown | project_anchor | own_supporting | 0 | ethereum | n/a | 4 deployments: ethereum `0x247a30f60a3566385919f1be65935a301006aeee`; ethereum `0x48fb253446873234f2febbf9bdeaa72d9d387f94`; ethereum `0xdbd62d3c1405d28c57f51c823d9d14f3f4a54e20`; ethereum `0xdce1563642db84161c9b99c6c2322cde05fbaf17` | ⚠️ Unaudited |
| TokenHolder | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xd1d846312b819743974786050848d9b3d06b9b55`; ethereum `0xebcc959479634eec5a4d7162e36f8b8cc763f491` | ⚠️ Unaudited |
| AirDropper | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x69532f0b00157866933cda7c1bb8bb0c373f20bf`; ethereum `0xbe8ea1615bcc7007f4ac4cda4e4e89b20d5c9499` | ⚠️ Unaudited |
| BancorArbitrage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 12 deployments: ethereum `0x08da389a1400e3699f58843484b0513aa065461c`; ethereum `0x2dd6b698da88fb6ec8382f4ce35729cd80da75a7`; ethereum `0x2fde9e0ce83769e88eaa9fb7be27cb26c385d1b2`; ethereum `0x577552436ef8fd918df2819eadf80105fded5df7`; ethereum `0x68cd597f2cf8156dbb99e70c4d6edd08b03fb810`; ethereum `0x6dbe10bfc331cb8b7b1c17ce252a6f178d74e912`; ethereum `0x770abfb647e45d6c28dfb7fc7ec8dcfbf9d3c343`; ethereum `0xb04e45f506a9d86202caa3bb16fda97e5d1a1ee2`; ethereum `0xbd19f62f0460bea39d5f0d83f9073efe5c5d7e51`; ethereum `0xd80a404a72b44d93e6c11a8be09f17642d1b0ada`; ethereum `0xdbcb8a64f89cc5f028b18a45e59fd99eaa9af34a`; ethereum `0xe9a8e0d074ff327bc0466a4c9f33a64c17a0902d` | ⚠️ Unaudited |
| BancorBuyer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x77a77eca75445841875ebb67a33d0a97dc34d924` | ⚠️ Unaudited |
| BancorChanger | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xb72a0fa1e537c956dfca72711c468efd81270468`; ethereum `0xca83bd8c4c7b1c0409b25fbd7e70b1ef57629ff4` | ⚠️ Unaudited |
| BancorConverter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 27 deployments: ethereum `0x0301db8ddf7e441b0fb4d2b4d198d852df47ccf7`; ethereum `0x0f20adc060b7df3c18bb0b29ab0e73b79caea19b`; ethereum `0x12c8c7db420fa1d76fe8c7187658a40710e5ed46`; ethereum `0x43fd2b8735923d05d6566cd0933d7b2972de205d`; ethereum `0x56af6b2b87f2d560ff0d991923476653a8d2f913`; ethereum `0x578f3c8454f316293dbd31d8c7806050f3b3e2d8`; ethereum `0x62c37c90733b36dfe36533326378b066aecaa769`; ethereum `0x6427b5cbf065777f4b62a0f9a4d2d23f27df5f28`; ethereum `0x665f41f59c50c27fcbf69acb51d775c6f1256f0e`; ethereum `0x674391e6c957a36edd1176fca0d3a91085b5e692`; ethereum `0x78c212bacc4630009960bc6be4726b7d6a098840`; ethereum `0x80353044b382e8642a423069585ba13d98a42c59`; ethereum `0x866e796120d967506c400f4ef3d12c5bc33d5b91`; ethereum `0xa3a89db39f4cbfb8753259456332ce8373ff5bad`; ethereum `0xabf66d2fc74add57cd029bcbefebde3e1a83f5e8`; ethereum `0xb626a5facc4de1c813f5293ec3be31979f1d1c78`; ethereum `0xc2a34d48cac8cc1189af4e26ed1b01947abdc3b6`; ethereum `0xc4628aaa2fa54ca1e5f6f077d65173f087144ade`; ethereum `0xc6725ae749677f21e4d8f85f41cfb6de49b9db29`; ethereum `0xd3ec78814966ca1eb4c923af4da86bf7e6c743ba`; ethereum `0xd8132c84956ec5fb723eeae614c7e84607d7c495`; ethereum `0xd8c2caf74a90e8b0c85e60115f756b3fcafbdde9`; ethereum `0xdc0aeb8fdbe2230b0fd183ddcf63a5fe02c356c0`; ethereum `0xdc2f2b295bd68e8d0c97344a67f8c843cdd30109`; ethereum `0xe219400460b3fb96248e87b5d165a98bf3b3ea77`; ethereum `0xec041f52095d73718308ad48cba933f8757af8b7`; ethereum `0xf8b2111eb2227ed408ecc9cb903dd13bbe58ce35` | ⚠️ Unaudited |
| BancorConverterExtensions | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf46002c37af6fb078ae1833fd447698a0c9012f7` | ⚠️ Unaudited |
| BancorConverterFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 13 deployments: ethereum `0x03f66746572a369521f681e8e90ccc737381694d`; ethereum `0x3cc4a258aff14a88380ca3d9703d6bbfb7a8042e`; ethereum `0x4f2ed30be421c1dd089ab93e9a73ae763224fde7`; ethereum `0x52d7c77cd866a535e16d57b9d542cf0526f1ffa2`; ethereum `0x5ed8c09f98b2b3ed37d07414bb8c3f065bbb802b`; ethereum `0x7d3f8600aa1d5010037dda853a4116d83fc9d3dc`; ethereum `0x99d8fb9f0b5b8828a677365be34280803c208232`; ethereum `0xa75f62388028c1d0b1c0c6e846c6124a17511abe`; ethereum `0xa96a30de17e57c8c2c9f10d83719260cf01f7448`; ethereum `0xbef6a44d3500fb314a88359a5791fcdcb104d259`; ethereum `0xbf1ad26091fb1a50a812807aba2a3dd93f2f0851`; ethereum `0xce030540e9c672b4f3ecf6801a32374a4c995fa5`; ethereum `0xda96defa6e41ece0c45f9ada1db4503b018409a0` | ⚠️ Unaudited |
| BancorConverterRegistry | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x85e27a5718382f32238497e78b4a40dd778ab847`; ethereum `0x9876b4f94e6035304bf792375c53136be158c3d8`; ethereum `0x9b44f7fbe59dc5174fd942b908982175ddc41a81`; ethereum `0xc1933ed6a18c175a7c2058807f25e55461cd92f5`; ethereum `0xce02479c7be772a6e3fc2ee99c78c805451f12ea`; ethereum `0xf6e2d7f616b67e46d708e4410746e9aab3a4c518`; ethereum `0xf84b332db34c6a9b554d80cf9bc6124c1c74495d` | ⚠️ Unaudited |
| BancorConverterRegistryData | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x2bf0b9119535a7a5e9a3f8ad1444594845c3a86b`; ethereum `0xe500ad20fab2eaa3d9da5f6bdbc639662239b56f` | ⚠️ Unaudited |
| BancorConverterUpgrader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x20412bd6d146309c55cc607d30c5aad07fbf6148`; ethereum `0xaebf1085dd9a0fa403a75399c956595e3a7c3d5c`; ethereum `0xc724bc5f3dd616c8fadb75a23c00c13880a6268f`; ethereum `0xe727b18e8d4ec97c508e46baa5b0d59d80a3429f`; ethereum `0xfae75ba2bb591a74cbca330174e9736403984bd5` | ⚠️ Unaudited |
| BancorFormula | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 15 deployments: ethereum `0x04cb6f27815b15d8d8d7ee149c34391cf2fe1e1e`; ethereum `0x31af420bb0323e8fae30803d49125923f7669724`; ethereum `0x524619eb9b4cdffa7da13029b33f24635478afc0`; ethereum `0x55f09ab2f8c6ad171f086abdb14e1ed8544f7398`; ethereum `0x63bc9acef19b224015cbf75bf0442c57722af385`; ethereum `0x6f7df45eb955b2f7d18e73b332e89088fdda4fc7`; ethereum `0x71fbcf52bff3bfaa081e9f2d286b85f2e3748759`; ethereum `0x8b5db76d7a162d72bf11c7f9ad355b95e2be62e2`; ethereum `0x8d10c03bc0889a2edea0de12e455a19ac7395b98`; ethereum `0xa049894d5dcad406b7c827d6dc6a0b58ca4ae73a`; ethereum `0xd288fbe61aaa64b536a701e3b7e15f0a4c1a9603`; ethereum `0xdeecd573769861b8ea8d975bdb54b4e70be791d0`; ethereum `0xe39b6ffff3f91630d9ccac38550914653b34bc1c`; ethereum `0xe6095ee05b728d2025619334a5affdf9ec96c58e`; ethereum `0xffd2de852b694f88656e91d9defa6b425c454742` | ⚠️ Unaudited |
| BancorFormulaProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b0c11e0df925387de1ce92504fe0e4af23af6f2` | ⚠️ Unaudited |
| BancorGasPriceLimit | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x7fd539ef2be3192b6d6bdf095968bac2d74daa6e`; ethereum `0xafb06c1309004970a9c5ab3b047527bf38b99590` | ⚠️ Unaudited |
| BancorGovernance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a68a60e66f35f6206d10908d1c8c6983883cd0a` | ⚠️ Unaudited |
| BancorGovernance | unknown | project_anchor | own_supporting | 0 | ethereum | unit-228885 | `0xebfafc802533f3d2835af7464fcd4492e8f82eb2` | ⚠️ Unaudited |
| BancorNetwork | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 18 deployments: ethereum `0x00bfa047ec1c5e849779107900afd948efca8e63`; ethereum `0x0e936b11c2e7b601055e58c7e32417187af4de4a`; ethereum `0x2f9ec37d6ccfff1cab21733bdadede11c823ccb0`; ethereum `0x3006eb573ba4b6f28c36aad49d2062c5e82cfc75`; ethereum `0x3ab6564d5c214bc416ee8421e05219960504eead`; ethereum `0x568e7cfebb39e2b2695e6f90d1d33c3cf03e5e07`; ethereum `0x5f58058c0ec971492166763c8c22632b583f667f`; ethereum `0x751a3e5ecd4ecd2de4aace6e55ae707a9ca10255`; ethereum `0x7a84b0b6fe93c94d20fa84230bb2eae03e07b19e`; ethereum `0x835ebb984e2f65545319d43f5ee16d3b5dfc45c1`; ethereum `0x8dfeb86c7c962577ded19ab2050ac78654fea9f7`; ethereum `0x923cab01e6a4639664aa64b76396eec0ea7d3a5f`; ethereum `0x955a85437664fe809563dd0fa91b1590b159e1e6`; ethereum `0xa21e1cc814d73b057e1812fbf39dc46579d8f4ea`; ethereum `0xe0cb1beb84b3289b946ac7fa067f4c44adffa4fb`; ethereum `0xe2a2773a1aa412f10b9f338334f2d62b25dcd1f7`; ethereum `0xeee90e509a639e95e3bb502b17a0eed6e014bfc0`; ethereum `0xf20b9e713a33f61fa38792d2afaf1cd30339126a` | ⚠️ Unaudited |
| BancorNetworkInfo | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc6e7e708f46a23ee9590b503f03ba3e2c67cac13` | ⚠️ Unaudited |
| BancorNetworkPathFinder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 9 deployments: ethereum `0x22cb7c925357faabebe077e5b5bcfa046388daef`; ethereum `0x41172c03c5a64eae5d53aec25b695b2ef0bf9578`; ethereum `0x6ae013e32a2cf6f2f06d9fcd2d826872863f79d8`; ethereum `0x6f0cd8c4f6f06eab664c7e3031909452b4b72861`; ethereum `0x9afb6fb0a934b5f906c01dd04b77398e0b10d137`; ethereum `0xa47228df56d08e0dc1471a8096f31e4caadfa2b5`; ethereum `0xa8c41583ccad0e6c0aa1964090e9fe656bbb37bb`; ethereum `0xb290f58962f3dec4a9c9b953f9deb0151e2ec7ba`; ethereum `0xb9e996f54501ac408b4c9409920e2de09a272a92` | ⚠️ Unaudited |
| BancorPortal | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xe18bd28677ec53c67d765521c8a586bc611f88e2`; ethereum `0xf5de921004436f940e457b443af6e8b30e3d2b0f` | ⚠️ Unaudited |
| BancorPriceFloor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ec6a713197fcbb4cfe7213800470b0940268549` | ⚠️ Unaudited |
| BancorQuickConverter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xcf1cc6ed5b653def7417e3fa93992c3ffe49139b`; ethereum `0xf87a7ec94884f44d9de33d36b73f42c7c0dd38b1` | ⚠️ Unaudited |
| BancorX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x39198fd6a016e0fb17370b58916801d59fe321f3`; ethereum `0x3fdf3b6b19af713e5a4ffe79bb38d451e1c83749`; ethereum `0x57928a05c91c1a5f38eb6788914acc05538f1f73`; ethereum `0xc326d5542e01f9e9180f6e2079090287c2754816`; ethereum `0xe7abef981b0e5ff259eeb79a11f2d3c208da1bde`; ethereum `0xeaf3ce7b745f27835df80b53b86b5299986069c1`; ethereum `0xeddf6ec8417eec2acd77a2540def361085eda30b` | ⚠️ Unaudited |
| BancorXHelper | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x984384e2bc5ee14260c7dbbe77fa788da4b5ba4b` | ⚠️ Unaudited |
| BNTPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x9810e2949de1e2c12d576c0d6d7af0f925c07bd8`; ethereum `0xcc06b51b8152520634d3640f40533bedbb22af65` | ⚠️ Unaudited |
| CarbonBatcher | periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x0199f3a6c4b192b9f9c3ebe31fbc535cdd4b7d4e`; ethereum `0x70ab8222a5fff4b360764bb51cbea76f0025842a` | ⚠️ Unaudited |
| CarbonController | governance | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 8 deployments: ethereum `0x16b9b6f8d2077db1032531f0e1f6019d2679d72d`; ethereum `0x1a31220b36b6d02f59d12c04e221ae7926c218cf`; ethereum `0x1e08049c180e25478bf7a0357171547b7332bf2c`; ethereum `0x21f02ac7fc8915f1b884b532f6cbcd0ef0c086ee`; ethereum `0x5ec3b3748a2af4e14977949c76c44d0ca54e5b20`; ethereum `0x6db6ee351fc802833ed2f28a25bbbf971d8b12c1`; ethereum `0xc537e898cd774e2dcba3b14ea6f34c93d5ea45e1`; ethereum `0xd59bcabd00721b754acb79fe668fae4b6a063ff8` | ⚠️ Unaudited |
| CarbonPOL | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x779b3bea233ebc5947c5ff0ffd7f4f90654ab123`; ethereum `0xd06146d292f9651c1d7cf54a3162791dfc2bef46` | ⚠️ Unaudited |
| CarbonPOL | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x945ac60e655a84b6638216521b391ae984287105` | ⚠️ Unaudited |
| CarbonVortex | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x2c0fa8b5c3a26ae8f014efb50ff27d95dd923502`; ethereum `0x55effb50729c049ab8c87977d324246996f472ad`; ethereum `0x676b91af9eaae263485c95ccafb2764228ce95c0`; ethereum `0x72717080da2e9e057dc29d25eeeb5d4873f0fb9e` | ⚠️ Unaudited |
| CarbonVortex | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xba7d1581db6248dc9177466a328bf457703c8f84`; ethereum `0xd241a762f4ca4e32e723e91b1138ac97b9be23ca` | ⚠️ Unaudited |
| CarbonVortex | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xd053dcd7037af7204cece544ea9f227824d79801` | ⚠️ Unaudited |
| CheckpointStore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf8a2fb650e25a26ce839d64be8a0abbcb0b87b32` | ⚠️ Unaudited |
| ContractFeatures | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x563172281800b139f69fb038cc2c08cad56ce699` | ⚠️ Unaudited |
| ContractRegistry | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x7148b1c9154bcf273a2c7d7b90e3edc6fee395e6`; ethereum `0x95fee9ac2438d7873fc1d6ceaf00bf48e391553b`; ethereum `0xa3bf8e49c0e0510b8eceb14d09a7d7b63e718e6a`; ethereum `0xa9d75523de9ba230e3471f2be12685f5d7622ade`; ethereum `0xc74be04a32fc89fd1bf9b178100c5d0e0649d0a4`; ethereum `0xd1997064f0fef8748c1de9b5ba53468c548738b3`; ethereum `0xf078b4ec84e5fc57c693d43f1f4a82306c9b88d6` | ⚠️ Unaudited |
| ConversionPathFinder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x33f77247994cb0ae517fcbd7b78c97a7e385d323`; ethereum `0x3663d67236503c41193c9272eb16b4b22f51fcc3`; ethereum `0xa48e64a3a60594e893bbbba28f8e0ea576bbe489` | ⚠️ Unaudited |
| ConverterFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x4ade0e57bc2e129f62547af4d620fb40d28ea269`; ethereum `0x5c58ac8f88a344bf02323b8d405d5092170a03e0`; ethereum `0x9afb9d7ed0f6c054ec76ea61d5cabc384d4dcb25`; ethereum `0xc9cd0b17c887e27ae5cc2d8e040eb763232eb348` | ⚠️ Unaudited |
| ConverterRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x06915fb082d34ff4fe5105e5ff2829dc5e7c3c6d`; ethereum `0x3b3bf16028e40bd3a7af66ef04e41e3bf6f51e55`; ethereum `0xc0205e203f423bcd8b2a4d6f8c8a154b0aa60f19`; ethereum `0xdbe6a39be797092bcd3898f63db70c00f0a245c9`; ethereum `0xeb53781a5a0819375d04251a615e3a039f296ca9` | ⚠️ Unaudited |
| ConverterUpgrader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x430626f79ac4ecea6a4be20ad3d68965b36e0f31`; ethereum `0x7dfb5180878b43c6ff5aa6a2ea55db20bcc87410`; ethereum `0x92f18a07808b4e05dd4786955f3a69957a67d724`; ethereum `0x9eed814b155cc52ea24d5b3d1dbfa07efc3ac742`; ethereum `0xcff01c40fa47faff359b6b31ebac86f7958be486` | ⚠️ Unaudited |
| CrowdsaleController | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbbc79794599b19274850492394004087cbf89710` | ⚠️ Unaudited |
| DADBridgeWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x23cdd4d14f2013f71bf905b51f55324f0252efc8`; ethereum `0x62a65d8d5803c825096c76509d9442819e444557` | ⚠️ Unaudited |
| EtherToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315`; ethereum `0xd76b5c2a23ef78368d8e34288b5b65d616b746ae` | ⚠️ Unaudited |
| FeeBurner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4610fc898f94ac0b6bfe2b836fd59f6d03195445` | ⚠️ Unaudited |
| FixedSupplyUpgrader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x808991993c105dd7472b568500fee9ddd3aaa58d`; ethereum `0x92c79b6158b7bb14b62fe6fe9f443a18ed8acc08` | ⚠️ Unaudited |
| LiquidityPoolV1Converter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 10 deployments: ethereum `0x1c378a82064799444b14b3b10fc5c4d5e3d38d1a`; ethereum `0x271a2c56e55e8cd663e39a0dfcd7b6f9b4b4f5bf`; ethereum `0x42725067098e07a78db02254c1af873862b78b94`; ethereum `0x7026dd2bb5a69f5d1257915dd7d05296a632ce78`; ethereum `0x74bc8f15b8aec01374127d5f454b1587afb65efc`; ethereum `0x841a5cbbccb6d2f9da3a33e5384974a8a23f5998`; ethereum `0x8e249174a15a453ac8f5ab4ad0302e1113635143`; ethereum `0xac621a2ed9d7efdabe4343d4f00d55bea30f6b08`; ethereum `0xb5938203ad693dc31e86b63930f3b19461ea125c`; ethereum `0xc3a2fa47c38504ab1b1986c59d0cd02bec2104e5` | ⚠️ Unaudited |
| LiquidityPoolV1ConverterFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 10 deployments: ethereum `0x273d13a01e15154182b91f1daab6bd3bfa6b2a2d`; ethereum `0x2b6d1d58260e3463fdd613b897e16d2649213f55`; ethereum `0x36392326878d038b3cc8a1cb9e0dab27c68f664c`; ethereum `0x39b9edd040ede4957d0b6dde17a37d6aa13418fd`; ethereum `0x3e21887be2ddf787571b4c90c91e95b150247893`; ethereum `0x554e3226c32d6fd9c71ccd744c1daa1689b07d15`; ethereum `0xb09e8c833d04a75ec2b257cd55909bae15f4a042`; ethereum `0xc7b626bc33f9077b14e77ecb6a97523f7a75d679`; ethereum `0xc85c581a320fd1fb0247c9b8fbafb506b60f3d4e`; ethereum `0xd282fef97484332b50490b8bff7091bcc846d0dc` | ⚠️ Unaudited |
| LiquidityPoolV2Converter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 8 deployments: ethereum `0x0c06d629e02ddafeb276ce04e910fedc292ea2af`; ethereum `0x52d43f07d3a6d7e5a714eeffcb7fd8a37eacdc95`; ethereum `0x58fe3e6c17064ed362825f4aa6718c9210801fa6`; ethereum `0x61bbc2562bcdc366853c501f4c9098ea2140a0f3`; ethereum `0x802c95345da9a9541e47e680572f8bc744ca3c20`; ethereum `0x9923211778189367b2ae9338932370295c396361`; ethereum `0x9deee373720f7f36bf6767528b5991e6c2bb8b94`; ethereum `0xeb771c7efd4dcfff332eb9007bab13acdf927758` | ⚠️ Unaudited |
| LiquidityPoolV2ConverterAnchorFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5e37e1e55bbe2a7c4f77c97da0a8e261e36a12ec` | ⚠️ Unaudited |
| LiquidityPoolV2ConverterCustomFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xcbefd93a4a405a13f7ebfa1796c91d677dc7b098`; ethereum `0xe88a9aa614cec65ae8435b13259088851c42ef5e` | ⚠️ Unaudited |
| LiquidityPoolV2ConverterFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 8 deployments: ethereum `0x0d2d6404d67355199033ac6ce0af0f31144b868a`; ethereum `0x1acb35254af0f6678d39862575fb5fd42f1fa59a`; ethereum `0x2f6bffecd8c2b617cbe1a26794414604b9406fb7`; ethereum `0x6a41cede956593fb07118f14ecf0847ac880e7be`; ethereum `0x6cd3522e11ee9850e68e1c03a97d4bf23aa6f3dd`; ethereum `0x8164f8dd63d6ee3b1dd934ae3073eac7234f6ed3`; ethereum `0xacff892c936eb83ad2972e649ec34af345bf00a5`; ethereum `0xb68c5dc3e9f85d9e165d13ecc5464ea333fa3bfe` | ⚠️ Unaudited |
| LiquidityProtection | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 19 deployments: ethereum `0x086e10c99c1226623a317fdd22cf3c43a10ecdd6`; ethereum `0x135742e6c5d70fc960090eddbd9f3c6d0d494e99`; ethereum `0x14d0746086361f9d177583f36e1517f1618ccfd5`; ethereum `0x26c57e09e699c827f7cb616498eeafc6d4179903`; ethereum `0x2966a1c07058e98aa8923d03ff10bee466fc1ef6`; ethereum `0x42743f4d9f139bfd04680df50bce2d7dd8816f90`; ethereum `0x49d689313af8a3faae088981e7ee28be43f9c051`; ethereum `0x53f36c56ecd4fb145989710fa3e3cc28ae4ace88`; ethereum `0x54c75fec898d34f40960b2da65adc1e46ab84f65`; ethereum `0x63308861249ad775a4b6ceb6544ce30c952b311a`; ethereum `0x64f21d00088b52638c5770f3ba99fcce1697f176`; ethereum `0x843bd7a811dc26874cb2ad9f4a04a8652f65d8e6`; ethereum `0x853c2d147a1bd7eda8fe0f58fb3c5294db07220e`; ethereum `0x85cbbb1ede2b3e389235ae56ec54bec8159001e5`; ethereum `0x9ab934010e6f2d633feeb5b6f1ddceeded601bcf`; ethereum `0xc9d9dc719c49edfc6bf9e0f0400fc341ce93c298`; ethereum `0xddc05ac0dc00faf1762e91454176c17827e4f5fb`; ethereum `0xeead394a017b8428e2d5a976a054f303f78f3c0c`; ethereum `0xfa6711d499f29b17781830fed4e4e590995cb220` | ⚠️ Unaudited |
| LiquidityProtectionSettings | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd444ec18952c7caf09636f21807683dacc1d7da9` | ⚠️ Unaudited |
| LiquidityProtectionStore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf5fab5dbd2f3bf675de4cb76517d4767013cfb55` | ⚠️ Unaudited |
| LiquidityProtectionSystemStore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc4c5634de585d43daec8fa2a6fb6286cd9b87131` | ⚠️ Unaudited |
| LiquidTokenConverter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 9 deployments: ethereum `0x1b5ef5c0b42f8bef27d9f0fee21f28a7763e27fe`; ethereum `0x23f351764034e8e2b1d1aeec1685fbfe02b808b0`; ethereum `0x5936a891d9cc7f72fbfee320952140281742402b`; ethereum `0x7fa080c0473e1877958e6bdd60e12286eac77cf7`; ethereum `0x8f535c21dbb5e7cc175938a1b9f82aebe6ee822f`; ethereum `0xddfceea65cd7d7417feb7c9024ffb8abdd0b82b3`; ethereum `0xe0f510e53f904716a1dd74186c6c04bd4d67c281`; ethereum `0xe24b63157efe76dd67d17e50972861c927b5bc72`; ethereum `0xf51fa52619526c3ded673426e41943484457f2cf` | ⚠️ Unaudited |
| LiquidTokenConverterFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 9 deployments: ethereum `0x2358ae98efc851954a19fe8b80d14a2f6cf46144`; ethereum `0x280ce5684ffc9389e184381b65c66cd3ed7af27d`; ethereum `0x9f7206db5348fed14849984291272c71be15993b`; ethereum `0xa0005a6901390c2d08eb225b4352e9a34b5a80f8`; ethereum `0xbb18cd6b58bd2bcff28771fcd4b85e06b4438172`; ethereum `0xcd9c22f38d7cfedacfcdb342fef3c795d7921c83`; ethereum `0xce0ed5752aa09fc91468c51b0886d1dea7d18edb`; ethereum `0xde11d6f8ea2a78f7742dfd442493f98b65259552`; ethereum `0xf68f0e4d54e4ca85793e717df42b6fa1192778a5` | ⚠️ Unaudited |
| MultiSigWallet | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 17 deployments: ethereum `0x5894110995b8c8401bd38262ba0c8ee41d4e4658`; ethereum `0x6d3bf50c29c3be38d03edb8a7bc8b2b7534c8146`; ethereum `0x79e7ccb8e7a61ad4781c98864c40e380bb10dd26`; ethereum `0x7af1362060ec77ca30be2508cce10169210393ee`; ethereum `0x84af4a7b4412d3e00ba6c499eda163774855df19`; ethereum `0x8c4b318fed9a9d02417216bd3967b587003aecfb`; ethereum `0x9d0357d184122b85dbc095d196b5ebbafc7f3010`; ethereum `0xad04835b1129c08be6093d683d725ff82cd24036`; ethereum `0xb43c503c1c0fcf37f348f351bbb5f6ee7f737a88`; ethereum `0xb7f23050cbf4bd773935b442269aa7d5c3cf341c`; ethereum `0xc39e562defc6ddd1f44ee698cf9303092b86051d`; ethereum `0xc7a965dcec421b8423de2d7b26eb83aac8070acc`; ethereum `0xc9eaa9d51bc470f676cb59cad85a659599dc0f31`; ethereum `0xcc1aac4513f751effc94e259daf8a37b76f9db75`; ethereum `0xd046eea71f207573d77252c8c3a93bdb0f36e177`; ethereum `0xd498c820a05d430dc52752db4c5e52952606f5b8`; ethereum `0xe2b1b8d5a67d0aca2ab1d53e17bb3ab85bd329cd` | ⚠️ Unaudited |
| NetworkSettings | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x59d03727d8f3fc695ca74f2dfdf0fd698424e0a2`; ethereum `0x68e4f8421dc6c3b49de130b792d711027a4ecd96`; ethereum `0x88d031291ed89e600db1c9dd4da1e587571e48ca` | ⚠️ Unaudited |
| PendingWithdrawals | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x0074f83a6a78555cc784504358028fed2b145f4a`; ethereum `0x5f8347629f7259e2aa048ff0c9f3b36334bb6acb`; ethereum `0xf59fd6796f2ad9b600e4acce9792bdceef96958f` | ⚠️ Unaudited |
| PoolCollection | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 12 deployments: ethereum `0x05e29f07b9710368a1d5658750e9b4b478c15bb8`; ethereum `0x395ed9ffd32b255dbd128092aba40200159d664b`; ethereum `0x5ce51256651aa90eee24259a56529affcf13a3d0`; ethereum `0x6f9124c32a9f6e532c908798f872d5472e9cb714`; ethereum `0xad3339099ae87f1ad6e984872b95e7be24b813a7`; ethereum `0xb67d563287d12b1f41579cb687b04988ad564c6c`; ethereum `0xb8d8033f7b2267feffdbaa521cd8a86df861da69`; ethereum `0xd2a572fefdbd719605334df5cba9746e02d51558`; ethereum `0xd982e001491d414c857f2a1aaa4b43ccf9f642b4`; ethereum `0xde1b3ccfc45e3f5bff7f43516f2cd43364d883e4`; ethereum `0xec9596e0eb67228d61a12cfdb4b3608281f261b3`; ethereum `0xf506b96891dde3c149ff08b2ff26a059258f7ec7` | ⚠️ Unaudited |
| PoolMigrator | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x1a1b00c006793341f4dbfe62fdf9991f4366ee69`; ethereum `0x59340ff90b0ca58492c26a4124f484c0358a017d`; ethereum `0x85aa6202972738855d4e8ab11b8127ca261d951d`; ethereum `0xc1c7ca009b6bb9be863e2782f6f1ad5d3a846219` | ⚠️ Unaudited |
| PoolTokenFactory | registry | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x9e912953db31fe933bda43374208e967058d9d5f`; ethereum `0xab4a0bc8ec2cd1376c7b77f51338d80a631f7108` | ⚠️ Unaudited |
| PoolTokensContainer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0bfa9a42e1a86bbb9e0bc43e394b880416325630` | ⚠️ Unaudited |
| PriceOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xd32c9af1587e2fc89498fd3c5e303fec9b29f8a1`; ethereum `0xea6f6d966b6216dcea5c22e26154042ed450c826` | ⚠️ Unaudited |
| ProxyAdmin | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x059d3d353336886cfaf17383c9fb6715652cf9a1`; ethereum `0x12388c005c3e3a88b6d30c55f21e49b747d118cb`; ethereum `0x64287956b8b587670d4d9b94378177f6c52f0034` | ⚠️ Unaudited |
| StakingRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 8 deployments: ethereum `0x0358678f0d150681531f317de7d9a3aca56696a7`; ethereum `0x318fea7e45a7d3ac5999da7e1055f5982eeb3e67`; ethereum `0x457fe44e832181e1d3ecee0fc5be72cd9b36859f`; ethereum `0x4b90695c2013fc60df1e168c2bcd4fd12f5c9841`; ethereum `0x5dafb315d9c358d628fb62041104e4c5a2b3080b`; ethereum `0xb443dea978b39178cb05ae005074227a4390dfce`; ethereum `0xe4f2a934dd766136e283e45e9d307d46262931e6`; ethereum `0xeb69bd39f3df1cc329b1a141d78263c43b1f2f2b` | ⚠️ Unaudited |
| StakingRewardsClaim | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6248e4118818c9075a142ef8a12e09d49888af58` | ⚠️ Unaudited |
| StakingRewardsStore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x6b0f323c752a96fb1def915bc963ed6d5b0f9614`; ethereum `0x891aff26593da95e574e3f62619dad6624fb5693` | ⚠️ Unaudited |
| StandardPoolConverter | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x55069dd523b39933eb872f6a34307e71ae27f6e6`; ethereum `0x5ba02ef0c81a02d5bfac230c8085f60b9330eb1a` | ⚠️ Unaudited |
| StandardPoolConverterFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0xbc4a79787d3dafcb781a1e4ff914204db38126e6`; ethereum `0xdbc3c64508e3fae19b0bcc2472f8811b9d8fa9f2`; ethereum `0xff7015744dcb1389dfe0c072ce209c57eeeb9f3d` | ⚠️ Unaudited |
| StandardRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x9c0b2923db14b8625e84e8ad04764f992b78320d`; ethereum `0xa2647a6500614a49a7cb247263cd85600f8a1947`; ethereum `0xe9f3bbe3df308f9d80807d1db11bee069f7a4b53` | ⚠️ Unaudited |
| TokenGovernance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x0887ae1251e180d7d453aedebee26e1639f20113`; ethereum `0x43ec4daced320b81dc726c42a9246e28638aca35`; ethereum `0xa489c2b5b36835a327851ab917a80562b5afc244`; ethereum `0xce1462ae23de4334aad986863f58b67d1f07ef94` | ⚠️ Unaudited |
| TransparentUpgradeableProxyImmutable | proxy | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x41eeba3355d7d6ff628b7982f3f9d055c39488cb`; ethereum `0x9a1deb19e7600eaf1ec722b3a2e4b0b0ffa2296d` | ⚠️ Unaudited |
| Utils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c7b0f0527828357b2daa898da3021955640adfc` | ⚠️ Unaudited |
| Vault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x60917e542addd13bfd1a7f81cd654758052dadc4` | ⚠️ Unaudited |
| VortexBurner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x2f87b1fca1769bc3361700078e1985b2dc0f1142`; ethereum `0x8843f65f11b2367bb05a6e120c44780088976748` | ⚠️ Unaudited |
| Voucher | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x3660f04b79751e31128f6378eac70807e38f554e`; ethereum `0x460cb0b4fb97b5a05b6105d7fd8d464902109d0a` | ⚠️ Unaudited |
| Voucher | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc6b2f9b6bf3521308fb9360e4a6fe05f63953997` | ⚠️ Unaudited |
| Whitelist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc5b87c4b8e25f863935722a9767658102d3124fe` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (79)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x06096d1fc206c414b6016dedd4d9ae415502c6ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x083782f196dbbd0735595b91675708ccb137745b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09103550afe5c617f69a657d8a4d7eaf71ab083f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e4e83288d3b89eb13702657a0ad3c529921355b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x103607e92b6264a909fdc10e7553b8593325c031` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1365935610776b30a1da088173987307a5412b89` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x176707a177c9aa3e8872e4bb2c2ff1f9589dde6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1894d66445ca8006a3f4e00bca8c1041efe9f9ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b5674cb6a2ba724833585e0aaf0cd92657263d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x20bcedd753e750965ade287f7a6c5ae8fdf4d8d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b65632844e2f963179fd4d2cba1502842b98bf1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2bc345c2187c89f5ae203f4f77d5092e45535bd6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ca576dc13df54b3af8e0bc980892b89f01d3ca2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x35db38e80cb3c1786968cd0aff609125a3f97a39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3aafb6c8d44255f11bd85b0321a087bae5874d13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3af2bde4161fff9800c40b12f817479682d6ca55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c497b7086d91927a6ebab57ddbe70dd54b30ea9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ce6ebc27347ad886a40fdc78d207340c921d2f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3df58f9d9871822a1ed0d3e1ed9960ca0c6b7f19` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x40eec5e4eaae0183f549f54774f8eee157316953` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x43f604fc5c1e38fccfabf903de8f47137a0cb345` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x46cce2978006946641da5c3fe17090177e64225f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4b506f817156ee38c04a0d89e06d3263e7879b3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x52d47da93a6147fa71bc5e3bbf1711c9e9cf1631` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b828a0a6fa6a1a81368fd870bee5079c8997453` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x609f13c5d5b852933e5766a719375ae599315f1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x627d323bad4bf966e804dcb0bb1424f1a17093cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x62d8839c6ddb1d8dbaf559cc8c5b588f17f6c5ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x62f23328ae23da22bf5f7c3e91d52e4802284231` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x63b95a7086ac187f689b831b1935279f6b9baa68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69b1d74f4a137913327f357bda38c32a6b1bbe82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6dd1a57ecf7c792c8029fc259eb559c0be1c179c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6e0dfd0f21dbee835f2b960f3a23e92a11ef7755` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6f904b72e7072fe630b058211efa3ca6efb819c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x700ac78601ecfa51cdd1c712b660cfe01d363009` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x709032c5b2b9559793c8afe3786ec6e0c803975b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x741b92a8da984ff9de2a54df98fc84d82fd7ef78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ae27ca0ffb6e9a0d070d3fa2264bc22c34e1f44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8006ee4fdbc08a80b7c4b9faad80e33e1ee05a5b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x840321c60505fff2c33175098d127287c736610c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b4e11f6cb56bf67aae911128ac5892efbb988f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d634aa8ba21dc9411ec1da7d12f1091dad3e639` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8ed9a1e496ec06e437b53d2c0dcdbb2128404010` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f7d6fa459f72dbafc8736e4fd0e6be2c490e3db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x924fa64f6b1cd2ea045a928f8023a3e793ae3dbc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9461fbe5b872fdfedffff14828c63820dc76e466` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x947766d4f964bd9f622f28d05baac657b5892d01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x97b15506eacce136e8241a354c22e779b664b103` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9f28334085729f756a6629d2a92fe7fc175f6eb4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa5c10d0babbaaa54970b3938236fac0fb772b398` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa6cf318cdb4a930413d2e458d478450c8da28c16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa93321875f63aed8369fdc893b57c51e66fd4c9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xafe57dd16d19c7102d71d1c8792d102aa1a19cb4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb005d07b5d6a35d9183b7902a971ae1ca868a52f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb59abc361445e46b135f7b2c1baf7a9e71e40dcf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc12aa9f90e91f4a5e24673f1e1183aa62db57d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc8c1afcd032cc1981945e45809f4c9a495433a9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc972d064408d8d9e4883ae343371152700b651fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca09071c809f4b48d6bd5049f365c6ed2d6e9142` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcbd28323b70dadc52baa6a065132680235626694` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcce7a48ddc96630cf933fab3e71ff879ff5ba322` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xccf9c912e70f3e798cd90beaf9f0447eedd80bf0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcd54fa71a2c7b2169acf4afdfb0dc04ec77467db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcdbb8b530b77b8161fa21f0dad9bc4f45e178cb8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd38b758bf701494a3223b76749de2d556f453a70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd523d8bb5cf05ed4b714ac9efa6f7c23e51b1a12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd59530de0f6e922543c079978d478050af4dc512` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd72cf0bf88f3ed92673de9fd702ca51589559ee9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdc7040fa7ef4afe900f1390043045866209646be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb1734f25b2e79ce5f8910c819273fda8c77406c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xef2d9316351cd2be6726fdf6918c309897e28358` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf240ea955c1ebc1729be1393a6d7f61281168c4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf3ae8d7622b9cdc7be2ca6a6d5efd28579707252` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf3d88928589cb2aaddd5f4d2d877d5593f81e3a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf4776fdd54d882d3819d29e29f403d94cc102654` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf68f21c7368a287954c36f50adbacba0b31ec59b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf877145878208c0dde50b083ca947f41dfc2bece` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfc663818f8a34a96f1a9f220abc2788d5d894a9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfeda932b88d140ab4c5ff8ae994da8982da64ef1` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 187
- Live contracts: 21
- Unknown liveness contracts: 166
- Source-verified contracts: 131
- Currently scope-matched contracts retained as-is: 10
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: currently scope matched=10, candidate review=108, source verified unclassified=13, unverified unclassified=56

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| ethereum | currently scope matched | TransparentUpgradeableProxyImmutable<br>`0x02651e355d26f3506c1e644ba393fdd9ac95eaca` | project_anchor | core_logic | live | verified | review: no_fresh_structural_match | `0x5beba4d3533a963dedb270a95ae5f7752fa0fe22` |
| ethereum | currently scope matched | TransparentUpgradeableProxyImmutable<br>`0x036f8b31d78ca354ada40dbd117e54f78b6f6cdc` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x5beba4d3533a963dedb270a95ae5f7752fa0fe22` |
| ethereum | currently scope matched | TransparentUpgradeableProxyImmutable<br>`0x2a2a2be5ccf20f3633c6ca2d429ac51186a631e1` | project_anchor | core_logic | live | verified | review: no_fresh_structural_match | `0x5beba4d3533a963dedb270a95ae5f7752fa0fe22` |
| ethereum | currently scope matched | TransparentUpgradeableProxyImmutable<br>`0x83e1814ba31f7ea95d216204bb45fe75ce09b14f` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x5beba4d3533a963dedb270a95ae5f7752fa0fe22` |
| ethereum | currently scope matched | TransparentUpgradeableProxyImmutable<br>`0x857eb0eb2572f7092c417cd386ba82e45eba9b8a` | project_anchor | operational_periphery | live | verified | review: no_fresh_structural_match | `0x5beba4d3533a963dedb270a95ae5f7752fa0fe22` |
| ethereum | currently scope matched | TransparentUpgradeableProxyImmutable<br>`0x8e303d296851b320e6a697bacb979d13c9d6e760` | project_anchor | periphery | live | verified | review: no_fresh_structural_match | `0x5beba4d3533a963dedb270a95ae5f7752fa0fe22` |
| ethereum | currently scope matched | TransparentUpgradeableProxyImmutable<br>`0x97cec0f2d355bf073619a5093f989709cae4a191` | project_anchor | core_logic | live | verified | review: no_fresh_structural_match | `0x5beba4d3533a963dedb270a95ae5f7752fa0fe22` |
| ethereum | currently scope matched | TransparentUpgradeableProxyImmutable<br>`0x9f292ccb69ff9a0644475c7bc8d4651039e133d5` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x5beba4d3533a963dedb270a95ae5f7752fa0fe22` |
| ethereum | currently scope matched | TransparentUpgradeableProxyImmutable<br>`0xb0b958398abb0b5db4ce4d7598fb868f5a00f372` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x5beba4d3533a963dedb270a95ae5f7752fa0fe22` |
| ethereum | currently scope matched | TransparentUpgradeableProxyImmutable<br>`0xfd31662b3d54edde9b6bdd32c9c27c8e292cad57` | project_anchor | core_logic | live | verified | review: no_fresh_structural_match | `0x5beba4d3533a963dedb270a95ae5f7752fa0fe22` |
| ethereum | candidate review | BancorArbitrage<br>`0x08da389a1400e3699f58843484b0513aa065461c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5beba4d3533a963dedb270a95ae5f7752fa0fe22` |
| ethereum | candidate review | BancorArbitrage<br>`0x2dd6b698da88fb6ec8382f4ce35729cd80da75a7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5beba4d3533a963dedb270a95ae5f7752fa0fe22` |
| ethereum | candidate review | BancorArbitrage<br>`0x2fde9e0ce83769e88eaa9fb7be27cb26c385d1b2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5beba4d3533a963dedb270a95ae5f7752fa0fe22` |
| ethereum | candidate review | BancorNetwork<br>`0x00bfa047ec1c5e849779107900afd948efca8e63` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x5beba4d3533a963dedb270a95ae5f7752fa0fe22` |
| ethereum | candidate review | BancorNetwork<br>`0x2f14750b0d267be47dcd30a134796c2e4b1638a3` | retained_scope_excluded_inventory | unknown | live | verified | review: missing_independent_ownership_evidence | `0x5beba4d3533a963dedb270a95ae5f7752fa0fe22` |
| ethereum | candidate review | BancorNetwork<br>`0x3006eb573ba4b6f28c36aad49d2062c5e82cfc75` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x5beba4d3533a963dedb270a95ae5f7752fa0fe22` |
| ethereum | candidate review | BancorNetworkInfo<br>`0xfd47c74a8030520bacd364fb8e08acb28766ae7b` | retained_scope_excluded_inventory | periphery | live | verified | review: missing_independent_ownership_evidence | `0x5beba4d3533a963dedb270a95ae5f7752fa0fe22` |
| ethereum | candidate review | BancorPortal<br>`0xe7e533a9f1afcadff409bb44a2b87d2c15d274d4` | retained_scope_excluded_inventory | unknown | live | verified | review: no_fresh_structural_match | `0x5beba4d3533a963dedb270a95ae5f7752fa0fe22` |
| ethereum | candidate review | BNTPool<br>`0xfb07a644a9e53879f29f7b3f29362e9c95b1ffa3` | retained_scope_excluded_inventory | core_logic | live | verified | review: missing_independent_ownership_evidence | `0x5beba4d3533a963dedb270a95ae5f7752fa0fe22` |
| ethereum | candidate review | CarbonBatcher<br>`0x70ab8222a5fff4b360764bb51cbea76f0025842a` | non_address_book | periphery | unknown | verified | review: no_fresh_structural_match | `0x5beba4d3533a963dedb270a95ae5f7752fa0fe22` |
| ethereum | candidate review | CarbonController<br>`0x16b9b6f8d2077db1032531f0e1f6019d2679d72d` | non_address_book | governance | unknown | verified | review: missing_independent_ownership_evidence | `0x5beba4d3533a963dedb270a95ae5f7752fa0fe22` |
| ethereum | candidate review | CarbonController<br>`0x1a31220b36b6d02f59d12c04e221ae7926c218cf` | non_address_book | governance | unknown | verified | review: missing_independent_ownership_evidence | `0x5beba4d3533a963dedb270a95ae5f7752fa0fe22` |
| ethereum | candidate review | CarbonController<br>`0x1e08049c180e25478bf7a0357171547b7332bf2c` | non_address_book | governance | unknown | verified | review: missing_independent_ownership_evidence | `0x5beba4d3533a963dedb270a95ae5f7752fa0fe22` |
| ethereum | candidate review | CarbonController<br>`0x21f02ac7fc8915f1b884b532f6cbcd0ef0c086ee` | non_address_book | governance | unknown | verified | review: missing_independent_ownership_evidence | `0x5beba4d3533a963dedb270a95ae5f7752fa0fe22` |
| ethereum | candidate review | CarbonPOL<br>`0x779b3bea233ebc5947c5ff0ffd7f4f90654ab123` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5beba4d3533a963dedb270a95ae5f7752fa0fe22` |
| ethereum | candidate review | CarbonVortex<br>`0x2c0fa8b5c3a26ae8f014efb50ff27d95dd923502` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x5beba4d3533a963dedb270a95ae5f7752fa0fe22` |
| ethereum | candidate review | CarbonVortex<br>`0xd241a762f4ca4e32e723e91b1138ac97b9be23ca` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5beba4d3533a963dedb270a95ae5f7752fa0fe22` |
| ethereum | candidate review | ExternalProtectionVault<br>`0xea4d665a290c9171ebcd1fca4068e55bb461c27c` | retained_scope_excluded_inventory | core_logic | live | verified | review: no_fresh_structural_match | `0x5beba4d3533a963dedb270a95ae5f7752fa0fe22` |
| ethereum | candidate review | ExternalRewardsVault<br>`0x30cc283aa2a5c74fb0dc642b0c8a9df376c23b1e` | retained_scope_excluded_inventory | core_logic | live | verified | review: no_fresh_structural_match | `0x5beba4d3533a963dedb270a95ae5f7752fa0fe22` |
| ethereum | candidate review | FeeBurner<br>`0x4610fc898f94ac0b6bfe2b836fd59f6d03195445` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5beba4d3533a963dedb270a95ae5f7752fa0fe22` |
| ethereum | candidate review | LiquidityProtection<br>`0x14d0746086361f9d177583f36e1517f1618ccfd5` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x5beba4d3533a963dedb270a95ae5f7752fa0fe22` |
| ethereum | candidate review | MasterVault<br>`0xf3b685d24f84b6eeeeee334250cf73ade1f10144` | retained_scope_excluded_inventory | core_logic | live | verified | review: no_fresh_structural_match | `0x5beba4d3533a963dedb270a95ae5f7752fa0fe22` |
| ethereum | candidate review | NetworkSettings<br>`0x51a6d03b156af044bda570cf35a919db851cebd1` | retained_scope_excluded_inventory | unknown | live | verified | review: missing_independent_ownership_evidence | `0x5beba4d3533a963dedb270a95ae5f7752fa0fe22` |
| ethereum | candidate review | PendingWithdrawals<br>`0x0074f83a6a78555cc784504358028fed2b145f4a` | non_address_book | operational_periphery | unknown | verified | review: no_fresh_structural_match | `0x5beba4d3533a963dedb270a95ae5f7752fa0fe22` |
| ethereum | candidate review | PendingWithdrawals<br>`0x7f05068f4dcc4df9dd54f52b647b0241ebbb92ce` | retained_scope_excluded_inventory | operational_periphery | live | verified | review: no_fresh_structural_match | `0x5beba4d3533a963dedb270a95ae5f7752fa0fe22` |
| ethereum | candidate review | PoolCollection<br>`0x05e29f07b9710368a1d5658750e9b4b478c15bb8` | non_address_book | core_logic | unknown | verified | review: missing_independent_ownership_evidence | `0x5beba4d3533a963dedb270a95ae5f7752fa0fe22` |
| ethereum | candidate review | PoolCollection<br>`0x395ed9ffd32b255dbd128092aba40200159d664b` | non_address_book | core_logic | unknown | verified | review: missing_independent_ownership_evidence | `0x5beba4d3533a963dedb270a95ae5f7752fa0fe22` |
| ethereum | candidate review | PoolMigrator<br>`0x1a1b00c006793341f4dbfe62fdf9991f4366ee69` | non_address_book | core_logic | unknown | verified | review: no_fresh_structural_match | `0x5beba4d3533a963dedb270a95ae5f7752fa0fe22` |
| ethereum | candidate review | PoolMigrator<br>`0x330ee79a0a4f310315d58629c3afc20d384d198d` | retained_scope_excluded_inventory | core_logic | live | verified | review: no_fresh_structural_match | `0x5beba4d3533a963dedb270a95ae5f7752fa0fe22` |
| ethereum | candidate review | PoolTokenFactory<br>`0xab4a0bc8ec2cd1376c7b77f51338d80a631f7108` | non_address_book | registry | unknown | verified | review: no_fresh_structural_match | `0x5beba4d3533a963dedb270a95ae5f7752fa0fe22` |
| ethereum | candidate review | StandardRewards<br>`0xdfe331e68ce634a2f9557e05d1d603a8ea881f0d` | retained_scope_excluded_inventory | unknown | live | verified | review: missing_independent_ownership_evidence | `0x5beba4d3533a963dedb270a95ae5f7752fa0fe22` |
| ethereum | candidate review | TransparentUpgradeableProxyImmutable<br>`0x41eeba3355d7d6ff628b7982f3f9d055c39488cb` | non_address_book | proxy | unknown | verified | review: no_fresh_structural_match | `0x5beba4d3533a963dedb270a95ae5f7752fa0fe22` |
| ethereum | candidate review | TransparentUpgradeableProxyImmutable<br>`0x9e912953db31fe933bda43374208e967058d9d5f` | non_address_book | registry | unknown | verified | review: no_fresh_structural_match | `0x5beba4d3533a963dedb270a95ae5f7752fa0fe22` |
| ethereum | candidate review | Voucher<br>`0x460cb0b4fb97b5a05b6105d7fd8d464902109d0a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5beba4d3533a963dedb270a95ae5f7752fa0fe22` |
| ethereum | source verified unclassified | OptimizedTransparentUpgradeableProxy<br>`0x0199f3a6c4b192b9f9c3ebe31fbc535cdd4b7d4e` | non_address_book | periphery | unknown | verified | n/a | `0x5beba4d3533a963dedb270a95ae5f7752fa0fe22` |
| ethereum | source verified unclassified | OptimizedTransparentUpgradeableProxy<br>`0x3660f04b79751e31128f6378eac70807e38f554e` | non_address_book | unknown | unknown | verified | n/a | `0x5beba4d3533a963dedb270a95ae5f7752fa0fe22` |
| ethereum | source verified unclassified | OptimizedTransparentUpgradeableProxy<br>`0xba7d1581db6248dc9177466a328bf457703c8f84` | non_address_book | unknown | unknown | verified | n/a | `0x5beba4d3533a963dedb270a95ae5f7752fa0fe22` |
| ethereum | source verified unclassified | OptimizedTransparentUpgradeableProxy<br>`0xc537e898cd774e2dcba3b14ea6f34c93d5ea45e1` | non_address_book | governance | unknown | verified | n/a | `0x5beba4d3533a963dedb270a95ae5f7752fa0fe22` |
| ethereum | source verified unclassified | OptimizedTransparentUpgradeableProxy<br>`0xd06146d292f9651c1d7cf54a3162791dfc2bef46` | non_address_book | unknown | unknown | verified | n/a | `0x5beba4d3533a963dedb270a95ae5f7752fa0fe22` |
| ethereum | source verified unclassified | ProxyAdmin<br>`0x12388c005c3e3a88b6d30c55f21e49b747d118cb` | non_address_book | governance | unknown | verified | n/a | `0x5beba4d3533a963dedb270a95ae5f7752fa0fe22` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x103607e92b6264a909fdc10e7553b8593325c031` | non_address_book | unknown | unknown | unverified | n/a | `0x5beba4d3533a963dedb270a95ae5f7752fa0fe22` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1365935610776b30a1da088173987307a5412b89` | non_address_book | unknown | unknown | unverified | n/a | `0x5beba4d3533a963dedb270a95ae5f7752fa0fe22` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x176707a177c9aa3e8872e4bb2c2ff1f9589dde6c` | non_address_book | unknown | unknown | unverified | n/a | `0x5beba4d3533a963dedb270a95ae5f7752fa0fe22` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1b5674cb6a2ba724833585e0aaf0cd92657263d0` | non_address_book | unknown | unknown | unverified | n/a | `0x5beba4d3533a963dedb270a95ae5f7752fa0fe22` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x20bcedd753e750965ade287f7a6c5ae8fdf4d8d7` | non_address_book | unknown | unknown | unverified | n/a | `0x5beba4d3533a963dedb270a95ae5f7752fa0fe22` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3aafb6c8d44255f11bd85b0321a087bae5874d13` | non_address_book | unknown | unknown | unverified | n/a | `0x5beba4d3533a963dedb270a95ae5f7752fa0fe22` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9a1deb19e7600eaf1ec722b3a2e4b0b0ffa2296d` | non_address_book | unknown | unknown | unverified | n/a | `0x5beba4d3533a963dedb270a95ae5f7752fa0fe22` |
| ethereum | candidate review | ConversionPathFinder<br>`0x3663d67236503c41193c9272eb16b4b22f51fcc3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb93081c32befda94168483c78b780e601f07b192` |
| ethereum | candidate review | ConverterFactory<br>`0x4ade0e57bc2e129f62547af4d620fb40d28ea269` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb93081c32befda94168483c78b780e601f07b192` |
| ethereum | candidate review | DSToken<br>`0x247a30f60a3566385919f1be65935a301006aeee` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb93081c32befda94168483c78b780e601f07b192` |
| ethereum | candidate review | LiquidityPoolV1Converter<br>`0x1c378a82064799444b14b3b10fc5c4d5e3d38d1a` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xb93081c32befda94168483c78b780e601f07b192` |
| ethereum | candidate review | LiquidityPoolV1Converter<br>`0x42725067098e07a78db02254c1af873862b78b94` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xb93081c32befda94168483c78b780e601f07b192` |
| ethereum | candidate review | LiquidityPoolV1ConverterFactory<br>`0x36392326878d038b3cc8a1cb9e0dab27c68f664c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb93081c32befda94168483c78b780e601f07b192` |
| ethereum | candidate review | LiquidityPoolV1ConverterFactory<br>`0x39b9edd040ede4957d0b6dde17a37d6aa13418fd` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb93081c32befda94168483c78b780e601f07b192` |
| ethereum | candidate review | LiquidityPoolV2Converter<br>`0x0c06d629e02ddafeb276ce04e910fedc292ea2af` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xb93081c32befda94168483c78b780e601f07b192` |
| ethereum | candidate review | LiquidityPoolV2Converter<br>`0x52d43f07d3a6d7e5a714eeffcb7fd8a37eacdc95` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xb93081c32befda94168483c78b780e601f07b192` |
| ethereum | candidate review | LiquidityPoolV2ConverterFactory<br>`0x0d2d6404d67355199033ac6ce0af0f31144b868a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb93081c32befda94168483c78b780e601f07b192` |
| ethereum | candidate review | LiquidityPoolV2ConverterFactory<br>`0x1acb35254af0f6678d39862575fb5fd42f1fa59a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb93081c32befda94168483c78b780e601f07b192` |
| ethereum | candidate review | LiquidityPoolV2ConverterFactory<br>`0x2f6bffecd8c2b617cbe1a26794414604b9406fb7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb93081c32befda94168483c78b780e601f07b192` |
| ethereum | candidate review | LiquidityProtection<br>`0x086e10c99c1226623a317fdd22cf3c43a10ecdd6` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xb93081c32befda94168483c78b780e601f07b192` |
| ethereum | candidate review | LiquidityProtection<br>`0x135742e6c5d70fc960090eddbd9f3c6d0d494e99` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb93081c32befda94168483c78b780e601f07b192` |
| ethereum | candidate review | LiquidityProtection<br>`0x26c57e09e699c827f7cb616498eeafc6d4179903` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xb93081c32befda94168483c78b780e601f07b192` |
| ethereum | candidate review | LiquidityProtection<br>`0x2966a1c07058e98aa8923d03ff10bee466fc1ef6` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xb93081c32befda94168483c78b780e601f07b192` |
| ethereum | candidate review | LiquidityProtection<br>`0x49d689313af8a3faae088981e7ee28be43f9c051` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xb93081c32befda94168483c78b780e601f07b192` |
| ethereum | candidate review | LiquidTokenConverter<br>`0x1b5ef5c0b42f8bef27d9f0fee21f28a7763e27fe` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xb93081c32befda94168483c78b780e601f07b192` |
| ethereum | candidate review | LiquidTokenConverter<br>`0x23f351764034e8e2b1d1aeec1685fbfe02b808b0` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xb93081c32befda94168483c78b780e601f07b192` |
| ethereum | candidate review | LiquidTokenConverterFactory<br>`0x2358ae98efc851954a19fe8b80d14a2f6cf46144` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb93081c32befda94168483c78b780e601f07b192` |
| ethereum | candidate review | LiquidTokenConverterFactory<br>`0x280ce5684ffc9389e184381b65c66cd3ed7af27d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb93081c32befda94168483c78b780e601f07b192` |
| ethereum | candidate review | PoolTokensContainer<br>`0x0bfa9a42e1a86bbb9e0bc43e394b880416325630` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb93081c32befda94168483c78b780e601f07b192` |
| ethereum | candidate review | SmartToken<br>`0x1b51a2b74de5cfb40a99d84bc027819ad02ba7c7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb93081c32befda94168483c78b780e601f07b192` |
| ethereum | candidate review | SmartToken<br>`0x43e879274a2da7d32dd4fb474db3923909773dc8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb93081c32befda94168483c78b780e601f07b192` |
| ethereum | candidate review | StakingRewards<br>`0x457fe44e832181e1d3ecee0fc5be72cd9b36859f` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xb93081c32befda94168483c78b780e601f07b192` |
| ethereum | source verified unclassified | BancorFormula<br>`0x31af420bb0323e8fae30803d49125923f7669724` | non_address_book | unknown | unknown | verified | n/a | `0xb93081c32befda94168483c78b780e601f07b192` |
| ethereum | source verified unclassified | TokenGovernance<br>`0x0887ae1251e180d7d453aedebee26e1639f20113` | non_address_book | unknown | unknown | verified | n/a | `0xb93081c32befda94168483c78b780e601f07b192` |
| ethereum | source verified unclassified | TokenGovernance<br>`0x43ec4daced320b81dc726c42a9246e28638aca35` | non_address_book | unknown | unknown | verified | n/a | `0xb93081c32befda94168483c78b780e601f07b192` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2bc345c2187c89f5ae203f4f77d5092e45535bd6` | non_address_book | unknown | unknown | unverified | n/a | `0xb93081c32befda94168483c78b780e601f07b192` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3af2bde4161fff9800c40b12f817479682d6ca55` | non_address_book | unknown | unknown | unverified | n/a | `0xb93081c32befda94168483c78b780e601f07b192` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3ce6ebc27347ad886a40fdc78d207340c921d2f6` | non_address_book | unknown | unknown | unverified | n/a | `0xb93081c32befda94168483c78b780e601f07b192` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4b506f817156ee38c04a0d89e06d3263e7879b3f` | non_address_book | unknown | unknown | unverified | n/a | `0xb93081c32befda94168483c78b780e601f07b192` |
| ethereum | candidate review | BancorConverterRegistry<br>`0xc1933ed6a18c175a7c2058807f25e55461cd92f5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc8021b971e69e60c5deede19528b33dcd52cdbd8` |
| ethereum | candidate review | BancorNetworkPathFinder<br>`0x22cb7c925357faabebe077e5b5bcfa046388daef` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc8021b971e69e60c5deede19528b33dcd52cdbd8` |
| ethereum | candidate review | BancorNetworkPathFinder<br>`0x41172c03c5a64eae5d53aec25b695b2ef0bf9578` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc8021b971e69e60c5deede19528b33dcd52cdbd8` |
| ethereum | candidate review | BancorNetworkPathFinder<br>`0x6ae013e32a2cf6f2f06d9fcd2d826872863f79d8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc8021b971e69e60c5deede19528b33dcd52cdbd8` |
| ethereum | candidate review | BancorNetworkPathFinder<br>`0x6f0cd8c4f6f06eab664c7e3031909452b4b72861` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc8021b971e69e60c5deede19528b33dcd52cdbd8` |
| ethereum | candidate review | BancorNetworkPathFinder<br>`0x9afb6fb0a934b5f906c01dd04b77398e0b10d137` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc8021b971e69e60c5deede19528b33dcd52cdbd8` |
| ethereum | candidate review | BancorNetworkPathFinder<br>`0xa47228df56d08e0dc1471a8096f31e4caadfa2b5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc8021b971e69e60c5deede19528b33dcd52cdbd8` |
| ethereum | candidate review | BancorNetworkPathFinder<br>`0xa8c41583ccad0e6c0aa1964090e9fe656bbb37bb` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc8021b971e69e60c5deede19528b33dcd52cdbd8` |
| ethereum | candidate review | BancorNetworkPathFinder<br>`0xb290f58962f3dec4a9c9b953f9deb0151e2ec7ba` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc8021b971e69e60c5deede19528b33dcd52cdbd8` |
| ethereum | candidate review | BancorNetworkPathFinder<br>`0xb9e996f54501ac408b4c9409920e2de09a272a92` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc8021b971e69e60c5deede19528b33dcd52cdbd8` |
| ethereum | candidate review | BancorX<br>`0xeaf3ce7b745f27835df80b53b86b5299986069c1` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xc8021b971e69e60c5deede19528b33dcd52cdbd8` |
| ethereum | candidate review | ContractRegistry<br>`0xa9d75523de9ba230e3471f2be12685f5d7622ade` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc8021b971e69e60c5deede19528b33dcd52cdbd8` |
| ethereum | candidate review | ContractRegistry<br>`0xf078b4ec84e5fc57c693d43f1f4a82306c9b88d6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc8021b971e69e60c5deede19528b33dcd52cdbd8` |
| ethereum | candidate review | ConverterUpgrader<br>`0x7dfb5180878b43c6ff5aa6a2ea55db20bcc87410` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc8021b971e69e60c5deede19528b33dcd52cdbd8` |
| ethereum | candidate review | LiquidityProtection<br>`0x42743f4d9f139bfd04680df50bce2d7dd8816f90` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc8021b971e69e60c5deede19528b33dcd52cdbd8` |
| ethereum | candidate review | LiquidityProtection<br>`0x853c2d147a1bd7eda8fe0f58fb3c5294db07220e` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xc8021b971e69e60c5deede19528b33dcd52cdbd8` |
| ethereum | candidate review | NetworkSettings<br>`0x59d03727d8f3fc695ca74f2dfdf0fd698424e0a2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc8021b971e69e60c5deede19528b33dcd52cdbd8` |
| ethereum | candidate review | StakingRewards<br>`0x0358678f0d150681531f317de7d9a3aca56696a7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc8021b971e69e60c5deede19528b33dcd52cdbd8` |
| ethereum | candidate review | StakingRewards<br>`0x318fea7e45a7d3ac5999da7e1055f5982eeb3e67` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc8021b971e69e60c5deede19528b33dcd52cdbd8` |
| ethereum | candidate review | StakingRewards<br>`0x4b90695c2013fc60df1e168c2bcd4fd12f5c9841` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc8021b971e69e60c5deede19528b33dcd52cdbd8` |
| ethereum | candidate review | StakingRewards<br>`0x5dafb315d9c358d628fb62041104e4c5a2b3080b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc8021b971e69e60c5deede19528b33dcd52cdbd8` |
| ethereum | candidate review | StakingRewards<br>`0xe4f2a934dd766136e283e45e9d307d46262931e6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc8021b971e69e60c5deede19528b33dcd52cdbd8` |
| ethereum | candidate review | StakingRewards<br>`0xeb69bd39f3df1cc329b1a141d78263c43b1f2f2b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc8021b971e69e60c5deede19528b33dcd52cdbd8` |
| ethereum | candidate review | StandardPoolConverter<br>`0x5ba02ef0c81a02d5bfac230c8085f60b9330eb1a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc8021b971e69e60c5deede19528b33dcd52cdbd8` |
| ethereum | candidate review | StandardPoolConverterFactory<br>`0xff7015744dcb1389dfe0c072ce209c57eeeb9f3d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc8021b971e69e60c5deede19528b33dcd52cdbd8` |
| ethereum | candidate review | VortexBurner<br>`0x2f87b1fca1769bc3361700078e1985b2dc0f1142` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc8021b971e69e60c5deede19528b33dcd52cdbd8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x06096d1fc206c414b6016dedd4d9ae415502c6ae` | non_address_book | unknown | unknown | unverified | n/a | `0xc8021b971e69e60c5deede19528b33dcd52cdbd8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x083782f196dbbd0735595b91675708ccb137745b` | non_address_book | unknown | unknown | unverified | n/a | `0xc8021b971e69e60c5deede19528b33dcd52cdbd8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x09103550afe5c617f69a657d8a4d7eaf71ab083f` | non_address_book | unknown | unknown | unverified | n/a | `0xc8021b971e69e60c5deede19528b33dcd52cdbd8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0e4e83288d3b89eb13702657a0ad3c529921355b` | non_address_book | unknown | unknown | unverified | n/a | `0xc8021b971e69e60c5deede19528b33dcd52cdbd8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1894d66445ca8006a3f4e00bca8c1041efe9f9ea` | non_address_book | unknown | unknown | unverified | n/a | `0xc8021b971e69e60c5deede19528b33dcd52cdbd8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2ca576dc13df54b3af8e0bc980892b89f01d3ca2` | non_address_book | unknown | unknown | unverified | n/a | `0xc8021b971e69e60c5deede19528b33dcd52cdbd8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x35db38e80cb3c1786968cd0aff609125a3f97a39` | non_address_book | unknown | unknown | unverified | n/a | `0xc8021b971e69e60c5deede19528b33dcd52cdbd8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3df58f9d9871822a1ed0d3e1ed9960ca0c6b7f19` | non_address_book | unknown | unknown | unverified | n/a | `0xc8021b971e69e60c5deede19528b33dcd52cdbd8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x40eec5e4eaae0183f549f54774f8eee157316953` | non_address_book | unknown | unknown | unverified | n/a | `0xc8021b971e69e60c5deede19528b33dcd52cdbd8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x43f604fc5c1e38fccfabf903de8f47137a0cb345` | non_address_book | unknown | unknown | unverified | n/a | `0xc8021b971e69e60c5deede19528b33dcd52cdbd8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x46cce2978006946641da5c3fe17090177e64225f` | non_address_book | unknown | unknown | unverified | n/a | `0xc8021b971e69e60c5deede19528b33dcd52cdbd8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x609f13c5d5b852933e5766a719375ae599315f1e` | non_address_book | unknown | unknown | unverified | n/a | `0xc8021b971e69e60c5deede19528b33dcd52cdbd8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x627d323bad4bf966e804dcb0bb1424f1a17093cd` | non_address_book | unknown | unknown | unverified | n/a | `0xc8021b971e69e60c5deede19528b33dcd52cdbd8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x62f23328ae23da22bf5f7c3e91d52e4802284231` | non_address_book | unknown | unknown | unverified | n/a | `0xc8021b971e69e60c5deede19528b33dcd52cdbd8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6dd1a57ecf7c792c8029fc259eb559c0be1c179c` | non_address_book | unknown | unknown | unverified | n/a | `0xc8021b971e69e60c5deede19528b33dcd52cdbd8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6f904b72e7072fe630b058211efa3ca6efb819c7` | non_address_book | unknown | unknown | unverified | n/a | `0xc8021b971e69e60c5deede19528b33dcd52cdbd8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x700ac78601ecfa51cdd1c712b660cfe01d363009` | non_address_book | unknown | unknown | unverified | n/a | `0xc8021b971e69e60c5deede19528b33dcd52cdbd8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x709032c5b2b9559793c8afe3786ec6e0c803975b` | non_address_book | unknown | unknown | unverified | n/a | `0xc8021b971e69e60c5deede19528b33dcd52cdbd8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x741b92a8da984ff9de2a54df98fc84d82fd7ef78` | non_address_book | unknown | unknown | unverified | n/a | `0xc8021b971e69e60c5deede19528b33dcd52cdbd8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7ae27ca0ffb6e9a0d070d3fa2264bc22c34e1f44` | non_address_book | unknown | unknown | unverified | n/a | `0xc8021b971e69e60c5deede19528b33dcd52cdbd8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8006ee4fdbc08a80b7c4b9faad80e33e1ee05a5b` | non_address_book | unknown | unknown | unverified | n/a | `0xc8021b971e69e60c5deede19528b33dcd52cdbd8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x840321c60505fff2c33175098d127287c736610c` | non_address_book | unknown | unknown | unverified | n/a | `0xc8021b971e69e60c5deede19528b33dcd52cdbd8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x924fa64f6b1cd2ea045a928f8023a3e793ae3dbc` | non_address_book | unknown | unknown | unverified | n/a | `0xc8021b971e69e60c5deede19528b33dcd52cdbd8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9461fbe5b872fdfedffff14828c63820dc76e466` | non_address_book | unknown | unknown | unverified | n/a | `0xc8021b971e69e60c5deede19528b33dcd52cdbd8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9f28334085729f756a6629d2a92fe7fc175f6eb4` | non_address_book | unknown | unknown | unverified | n/a | `0xc8021b971e69e60c5deede19528b33dcd52cdbd8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa5c10d0babbaaa54970b3938236fac0fb772b398` | non_address_book | unknown | unknown | unverified | n/a | `0xc8021b971e69e60c5deede19528b33dcd52cdbd8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa93321875f63aed8369fdc893b57c51e66fd4c9b` | non_address_book | unknown | unknown | unverified | n/a | `0xc8021b971e69e60c5deede19528b33dcd52cdbd8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb005d07b5d6a35d9183b7902a971ae1ca868a52f` | non_address_book | unknown | unknown | unverified | n/a | `0xc8021b971e69e60c5deede19528b33dcd52cdbd8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb59abc361445e46b135f7b2c1baf7a9e71e40dcf` | non_address_book | unknown | unknown | unverified | n/a | `0xc8021b971e69e60c5deede19528b33dcd52cdbd8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xbc12aa9f90e91f4a5e24673f1e1183aa62db57d4` | non_address_book | unknown | unknown | unverified | n/a | `0xc8021b971e69e60c5deede19528b33dcd52cdbd8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc8c1afcd032cc1981945e45809f4c9a495433a9c` | non_address_book | unknown | unknown | unverified | n/a | `0xc8021b971e69e60c5deede19528b33dcd52cdbd8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xcbd28323b70dadc52baa6a065132680235626694` | non_address_book | unknown | unknown | unverified | n/a | `0xc8021b971e69e60c5deede19528b33dcd52cdbd8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xccf9c912e70f3e798cd90beaf9f0447eedd80bf0` | non_address_book | unknown | unknown | unverified | n/a | `0xc8021b971e69e60c5deede19528b33dcd52cdbd8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xcdbb8b530b77b8161fa21f0dad9bc4f45e178cb8` | non_address_book | unknown | unknown | unverified | n/a | `0xc8021b971e69e60c5deede19528b33dcd52cdbd8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd523d8bb5cf05ed4b714ac9efa6f7c23e51b1a12` | non_address_book | unknown | unknown | unverified | n/a | `0xc8021b971e69e60c5deede19528b33dcd52cdbd8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd59530de0f6e922543c079978d478050af4dc512` | non_address_book | unknown | unknown | unverified | n/a | `0xc8021b971e69e60c5deede19528b33dcd52cdbd8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xeb1734f25b2e79ce5f8910c819273fda8c77406c` | non_address_book | unknown | unknown | unverified | n/a | `0xc8021b971e69e60c5deede19528b33dcd52cdbd8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xef2d9316351cd2be6726fdf6918c309897e28358` | non_address_book | unknown | unknown | unverified | n/a | `0xc8021b971e69e60c5deede19528b33dcd52cdbd8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf3d88928589cb2aaddd5f4d2d877d5593f81e3a5` | non_address_book | unknown | unknown | unverified | n/a | `0xc8021b971e69e60c5deede19528b33dcd52cdbd8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf4776fdd54d882d3819d29e29f403d94cc102654` | non_address_book | unknown | unknown | unverified | n/a | `0xc8021b971e69e60c5deede19528b33dcd52cdbd8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf68f21c7368a287954c36f50adbacba0b31ec59b` | non_address_book | unknown | unknown | unverified | n/a | `0xc8021b971e69e60c5deede19528b33dcd52cdbd8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfc663818f8a34a96f1a9f220abc2788d5d894a9a` | non_address_book | unknown | unknown | unverified | n/a | `0xc8021b971e69e60c5deede19528b33dcd52cdbd8` |
| ethereum | candidate review | BancorConverter<br>`0x0301db8ddf7e441b0fb4d2b4d198d852df47ccf7` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xdfee8dc240c6cadc2c7f7f9c257c259914dea84e` |
| ethereum | candidate review | BancorConverter<br>`0x0f20adc060b7df3c18bb0b29ab0e73b79caea19b` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xdfee8dc240c6cadc2c7f7f9c257c259914dea84e` |
| ethereum | candidate review | BancorConverter<br>`0x12c8c7db420fa1d76fe8c7187658a40710e5ed46` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xdfee8dc240c6cadc2c7f7f9c257c259914dea84e` |
| ethereum | candidate review | BancorConverter<br>`0x43fd2b8735923d05d6566cd0933d7b2972de205d` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xdfee8dc240c6cadc2c7f7f9c257c259914dea84e` |
| ethereum | candidate review | BancorConverterFactory<br>`0x03f66746572a369521f681e8e90ccc737381694d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdfee8dc240c6cadc2c7f7f9c257c259914dea84e` |
| ethereum | candidate review | BancorConverterFactory<br>`0x3cc4a258aff14a88380ca3d9703d6bbfb7a8042e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdfee8dc240c6cadc2c7f7f9c257c259914dea84e` |
| ethereum | candidate review | BancorConverterFactory<br>`0x4f2ed30be421c1dd089ab93e9a73ae763224fde7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdfee8dc240c6cadc2c7f7f9c257c259914dea84e` |
| ethereum | candidate review | BancorConverterRegistryData<br>`0x2bf0b9119535a7a5e9a3f8ad1444594845c3a86b` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xdfee8dc240c6cadc2c7f7f9c257c259914dea84e` |
| ethereum | candidate review | BancorFormula<br>`0x524619eb9b4cdffa7da13029b33f24635478afc0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdfee8dc240c6cadc2c7f7f9c257c259914dea84e` |
| ethereum | candidate review | BancorNetwork<br>`0x0e936b11c2e7b601055e58c7e32417187af4de4a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdfee8dc240c6cadc2c7f7f9c257c259914dea84e` |
| ethereum | candidate review | BancorNetwork<br>`0x3ab6564d5c214bc416ee8421e05219960504eead` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdfee8dc240c6cadc2c7f7f9c257c259914dea84e` |
| ethereum | candidate review | BancorX<br>`0x39198fd6a016e0fb17370b58916801d59fe321f3` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xdfee8dc240c6cadc2c7f7f9c257c259914dea84e` |
| ethereum | candidate review | BancorX<br>`0x3fdf3b6b19af713e5a4ffe79bb38d451e1c83749` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xdfee8dc240c6cadc2c7f7f9c257c259914dea84e` |
| ethereum | candidate review | ConversionPathFinder<br>`0x33f77247994cb0ae517fcbd7b78c97a7e385d323` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdfee8dc240c6cadc2c7f7f9c257c259914dea84e` |
| ethereum | candidate review | ConverterRegistry<br>`0x06915fb082d34ff4fe5105e5ff2829dc5e7c3c6d` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xdfee8dc240c6cadc2c7f7f9c257c259914dea84e` |
| ethereum | candidate review | ConverterRegistry<br>`0x3b3bf16028e40bd3a7af66ef04e41e3bf6f51e55` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xdfee8dc240c6cadc2c7f7f9c257c259914dea84e` |
| ethereum | candidate review | ConverterUpgrader<br>`0x430626f79ac4ecea6a4be20ad3d68965b36e0f31` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdfee8dc240c6cadc2c7f7f9c257c259914dea84e` |
| ethereum | candidate review | LiquidityPoolV1Converter<br>`0x271a2c56e55e8cd663e39a0dfcd7b6f9b4b4f5bf` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xdfee8dc240c6cadc2c7f7f9c257c259914dea84e` |
| ethereum | candidate review | LiquidityPoolV1ConverterFactory<br>`0x273d13a01e15154182b91f1daab6bd3bfa6b2a2d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdfee8dc240c6cadc2c7f7f9c257c259914dea84e` |
| ethereum | candidate review | LiquidityPoolV1ConverterFactory<br>`0x2b6d1d58260e3463fdd613b897e16d2649213f55` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdfee8dc240c6cadc2c7f7f9c257c259914dea84e` |
| ethereum | candidate review | LiquidityPoolV1ConverterFactory<br>`0x3e21887be2ddf787571b4c90c91e95b150247893` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdfee8dc240c6cadc2c7f7f9c257c259914dea84e` |
| ethereum | candidate review | SmartToken<br>`0x4bf2f1d6af562551c3870c9eea72f3a4b2dd48d8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdfee8dc240c6cadc2c7f7f9c257c259914dea84e` |
| ethereum | candidate review | Utils<br>`0x2c7b0f0527828357b2daa898da3021955640adfc` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdfee8dc240c6cadc2c7f7f9c257c259914dea84e` |
| ethereum | source verified unclassified | BancorConverterUpgrader<br>`0x20412bd6d146309c55cc607d30c5aad07fbf6148` | non_address_book | unknown | unknown | verified | n/a | `0xdfee8dc240c6cadc2c7f7f9c257c259914dea84e` |
| ethereum | source verified unclassified | BancorFormula<br>`0x04cb6f27815b15d8d8d7ee149c34391cf2fe1e1e` | non_address_book | unknown | unknown | verified | n/a | `0xdfee8dc240c6cadc2c7f7f9c257c259914dea84e` |
| ethereum | source verified unclassified | BancorGovernance<br>`0x2a68a60e66f35f6206d10908d1c8c6983883cd0a` | non_address_book | unknown | unknown | verified | n/a | `0xdfee8dc240c6cadc2c7f7f9c257c259914dea84e` |
| ethereum | source verified unclassified | DADBridgeWrapper<br>`0x23cdd4d14f2013f71bf905b51f55324f0252efc8` | non_address_book | unknown | unknown | verified | n/a | `0xdfee8dc240c6cadc2c7f7f9c257c259914dea84e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2b65632844e2f963179fd4d2cba1502842b98bf1` | non_address_book | unknown | unknown | unverified | n/a | `0xdfee8dc240c6cadc2c7f7f9c257c259914dea84e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3c497b7086d91927a6ebab57ddbe70dd54b30ea9` | non_address_book | unknown | unknown | unverified | n/a | `0xdfee8dc240c6cadc2c7f7f9c257c259914dea84e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x52d47da93a6147fa71bc5e3bbf1711c9e9cf1631` | non_address_book | unknown | unknown | unverified | n/a | `0xdfee8dc240c6cadc2c7f7f9c257c259914dea84e` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [PeckShield-Audit-Report-BancorV3-v1.0.pdf](https://github.com/bancorprotocol/contracts-v3/blob/dev/docs/audits/PeckShield-Audit-Report-BancorV3-v1.0.pdf) | PeckShield | Audit | 2022-04 | stale | Direct | n/a | matched | 4 | 4 | 0 | 2 | n/a |
| [OpenZeppelin-V3-Audit-Report.pdf](https://github.com/bancorprotocol/contracts-v3/blob/dev/docs/audits/OpenZeppelin-V3-Audit-Report.pdf) | OpenZeppelin | Audit | 2022-06 | stale | Direct | contract_name | matched | 12 | 10 | 0 | 41 | high |
| [OpenZeppelin-AutoCompoundingRewards-Audit-Report.pdf](https://github.com/bancorprotocol/contracts-v3/blob/dev/docs/audits/OpenZeppelin-AutoCompoundingRewards-Audit-Report.pdf) | OpenZeppelin | Audit | 2022-08 | stale | Direct | n/a | matched | 2 | 2 | 0 | 7 | n/a |
| [ChainSecurity-V3-Audit-Report.pdf](https://github.com/bancorprotocol/contracts-v3/blob/dev/docs/audits/ChainSecurity-V3-Audit-Report.pdf) | ChainSecurity | Audit | 2022-09 | stale | Direct | n/a | matched | 13 | 11 | 0 | 4 | n/a |
| [drive.google.com/file/d/1Oinq3ZKneCwlteVigwn1TCkwR2fLL9Oj/view](https://drive.google.com/file/d/1Oinq3ZKneCwlteVigwn1TCkwR2fLL9Oj/view?usp=sharing) | PeckShield | Audit | 2021-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [drive.google.com/file/d/1baijgjazL4PXD98hD8lGHfuvwNruIUbU/view](https://drive.google.com/file/d/1baijgjazL4PXD98hD8lGHfuvwNruIUbU/view?usp=sharing) | PeckShield | Audit | 2020-10 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 1 | high |
| [drive.google.com/file/d/1gGszH3bSU6gUZG0oCN79tfYWCx7OfGDe/view](https://drive.google.com/file/d/1gGszH3bSU6gUZG0oCN79tfYWCx7OfGDe/view?usp=sharing) | CertiK | Audit | 2020-10 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 3 | high |
| [drive.google.com/file/d/1QvYBjlGsYKtuO6C82c4-eX4YF2F_NaPk/view](https://drive.google.com/file/d/1QvYBjlGsYKtuO6C82c4-eX4YF2F_NaPk/view?usp=sharing) | CertiK | Audit | 2020-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [Bancor_smartcontract_halborn_report_V1.pdf](https://github.com/HalbornSecurity/PublicReports/blob/master/Solidity%20Smart%20Contract%20Audits/Bancor_smartcontract_halborn_report_V1.pdf) | Halborn | Audit | 2020-08 | stale | Direct | n/a | no match | 0 | 0 | 0 | 1 | n/a |
| [drive.google.com/file/d/1NaUEy29L5vk6lcBn0L4DRv3cWgdpAGQu/view](https://drive.google.com/file/d/1NaUEy29L5vk6lcBn0L4DRv3cWgdpAGQu/view?usp=sharing) | Halborn | Audit | 2020-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [c65fd1bd61a8e0294aef95a4808edc78 (GitHub directory)](https://gist.github.com/Arachnid/c65fd1bd61a8e0294aef95a4808edc78) | Consensys Diligence | Audit | 2017-05 | stale | Direct | n/a | matched | 1 | 0 | 0 | 19 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [4264] PeckShield-Audit-Report-BancorV3-v1.0.pdf — matched: No reason recorded
- [4265] OpenZeppelin-V3-Audit-Report.pdf — matched: All contracts listed in the Scope section of the audit report were extracted. The audit date is the 'Fixes Finalized' date (2022-06-02) as the report completion date.
- [4266] OpenZeppelin-AutoCompoundingRewards-Audit-Report.pdf — matched: No reason recorded
- [4267] ChainSecurity-V3-Audit-Report.pdf — matched: No reason recorded
- [15068] drive.google.com/file/d/1Oinq3ZKneCwlteVigwn1TCkwR2fLL9Oj/view — no match: The report explicitly lists StakingRewardsStore and StakingRewards as targets in the findings. The audit date is clearly stated on the cover page and in the report metadata.
- [15069] drive.google.com/file/d/1baijgjazL4PXD98hD8lGHfuvwNruIUbU/view — matched: Audit covers Bancor's Governance and Liquidity Protection modules. Two contracts identified: BancorGovernance and LiquidityProtection. Date from cover page and latest audit report date.
- [15070] drive.google.com/file/d/1gGszH3bSU6gUZG0oCN79tfYWCx7OfGDe/view — matched: Contracts explicitly mentioned in findings and scope description. BancorGovernance is the main contract; IExecutor, Owned, IOwned are referenced as part of the codebase.
- [15071] drive.google.com/file/d/1QvYBjlGsYKtuO6C82c4-eX4YF2F_NaPk/view — no match: Extracted contract names from findings sections; scope section not explicitly listed but contracts are clearly audited targets.
- [15072] Bancor_smartcontract_halborn_report_V1.pdf — no match: No reason recorded
- [15073] drive.google.com/file/d/1NaUEy29L5vk6lcBn0L4DRv3cWgdpAGQu/view — no match: Extracted 10 contracts from Appendix 2 - Files in Scope. Audit date inferred from 'DateJune 2020' at top of report, interpreted as June 2020, last day of month.
- [15074] c65fd1bd61a8e0294aef95a4808edc78 (GitHub directory) — matched: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| PeckShield-Audit-Report-BancorV3-v1.0.pdf | AutoCompoundingStakingRewards | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-BancorV3-v1.0.pdf | BNTPool | own proxy deployment | TransparentUpgradeableProxyImmutable (proxy) (selected) `0x02651e355d26f3506c1e644ba393fdd9ac95eaca` — deployed 2022-04-18 16:14:43+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-BancorV3-v1.0.pdf | BancorNetwork | own proxy deployment | TransparentUpgradeableProxyImmutable (proxy) (selected) `0xeef417e1d5cc832e619ae18d2f140de2999dd4fb` — deployed 2022-04-18 16:13:08+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-BancorV3-v1.0.pdf | NetworkSettings | own proxy deployment | TransparentUpgradeableProxyImmutable (proxy) (selected) `0x83e1814ba31f7ea95d216204bb45fe75ce09b14f` — deployed 2022-04-18 16:10:21+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-BancorV3-v1.0.pdf | PendingWithdrawals | own proxy deployment | TransparentUpgradeableProxyImmutable (proxy) (selected) `0x857eb0eb2572f7092c417cd386ba82e45eba9b8a` — deployed 2022-04-18 16:20:03+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-BancorV3-v1.0.pdf | PoolCollection | unmatched — not counted | — | — | no |
| OpenZeppelin-V3-Audit-Report.pdf | BancorPortal | own proxy deployment | TransparentUpgradeableProxyImmutable (proxy) (selected) `0x9f292ccb69ff9a0644475c7bc8d4651039e133d5` — deployed 2022-04-18 16:31:08+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| OpenZeppelin-V3-Audit-Report.pdf | IBancorPortal | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin-V3-Audit-Report.pdf | BancorNetwork | own proxy deployment | TransparentUpgradeableProxyImmutable (proxy) (selected) `0xeef417e1d5cc832e619ae18d2f140de2999dd4fb` — deployed 2022-04-18 16:13:08+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| OpenZeppelin-V3-Audit-Report.pdf | BancorNetworkInfo | own proxy deployment | TransparentUpgradeableProxyImmutable (proxy) (selected) `0x8e303d296851b320e6a697bacb979d13c9d6e760` — deployed 2022-04-18 16:27:36+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| OpenZeppelin-V3-Audit-Report.pdf | BancorV1Migration | own contract | BancorV1Migration (selected) `0xd761d538240e23b465c9c08236d781029dc3cc96` — deployed 2022-04-18 16:29:40+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| OpenZeppelin-V3-Audit-Report.pdf | NetworkSettings | own proxy deployment | TransparentUpgradeableProxyImmutable (proxy) (selected) `0x83e1814ba31f7ea95d216204bb45fe75ce09b14f` — deployed 2022-04-18 16:10:21+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| OpenZeppelin-V3-Audit-Report.pdf | PendingWithdrawals | own proxy deployment | TransparentUpgradeableProxyImmutable (proxy) (selected) `0x857eb0eb2572f7092c417cd386ba82e45eba9b8a` — deployed 2022-04-18 16:20:03+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| OpenZeppelin-V3-Audit-Report.pdf | IBancorNetwork | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin-V3-Audit-Report.pdf | IBancorNetworkInfo | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin-V3-Audit-Report.pdf | INetworkSettings | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin-V3-Audit-Report.pdf | IPendingWithdrawals | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin-V3-Audit-Report.pdf | BNTPool | own proxy deployment | TransparentUpgradeableProxyImmutable (proxy) (selected) `0x02651e355d26f3506c1e644ba393fdd9ac95eaca` — deployed 2022-04-18 16:14:43+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| OpenZeppelin-V3-Audit-Report.pdf | PoolCollection | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin-V3-Audit-Report.pdf | PoolCollectionWithdrawal | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin-V3-Audit-Report.pdf | PoolMigrator | own proxy deployment | TransparentUpgradeableProxyImmutable (proxy) (selected) `0x97cec0f2d355bf073619a5093f989709cae4a191` — deployed 2022-04-18 16:21:38+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| OpenZeppelin-V3-Audit-Report.pdf | PoolToken | own contract | PoolToken (selected) `0xab05cf7c6c3a288cd36326e4f7b8600e7268e344` — deployed 2022-04-18 16:08:13+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| OpenZeppelin-V3-Audit-Report.pdf | PoolTokenFactory | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin-V3-Audit-Report.pdf | IBNTPool | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin-V3-Audit-Report.pdf | IPoolCollection | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin-V3-Audit-Report.pdf | IPoolMigrator | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin-V3-Audit-Report.pdf | IPoolToken | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin-V3-Audit-Report.pdf | IPoolTokenFactory | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin-V3-Audit-Report.pdf | AutoCompoundingStakingRewards | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin-V3-Audit-Report.pdf | StakingRewardsMath | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin-V3-Audit-Report.pdf | StandardStakingRewards | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin-V3-Audit-Report.pdf | IAutoCompoundingStakingRewards | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin-V3-Audit-Report.pdf | IStandardStakingRewards | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin-V3-Audit-Report.pdf | ERC20Burnable | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin-V3-Audit-Report.pdf | SafeERC20Ex | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin-V3-Audit-Report.pdf | Token | ambiguous — not counted | SmartToken (alternative) `0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c` — deployed 2017-06-10 19:02:40+03 — liveness: live (code_present_context)<br>DSToken (alternative) `0x48fb253446873234f2febbf9bdeaa72d9d387f94` — deployed 2020-10-12 11:16:07+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| OpenZeppelin-V3-Audit-Report.pdf | TokenLibrary | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin-V3-Audit-Report.pdf | IERC20Burnable | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin-V3-Audit-Report.pdf | BlockNumber | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin-V3-Audit-Report.pdf | Constants | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin-V3-Audit-Report.pdf | FractionLibrary | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin-V3-Audit-Report.pdf | MathEx | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin-V3-Audit-Report.pdf | Owned | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin-V3-Audit-Report.pdf | Time | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin-V3-Audit-Report.pdf | TransparentUpgradeableProxyImmutable | ambiguous — not counted | TransparentUpgradeableProxyImmutable (proxy) (alternative) `0x036f8b31d78ca354ada40dbd117e54f78b6f6cdc` — deployed 2022-08-21 14:51:35+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxyImmutable (proxy) (alternative) `0xeef417e1d5cc832e619ae18d2f140de2999dd4fb` — deployed 2022-04-18 16:13:08+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxyImmutable (proxy) (alternative) `0x649765821d9f64198c905ec0b2b037a4a52bc373` — deployed 2022-04-18 16:02:14+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxyImmutable (proxy) (alternative) `0xfd31662b3d54edde9b6bdd32c9c27c8e292cad57` — deployed 2022-04-18 16:03:57+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxyImmutable (proxy) (alternative) `0x97cec0f2d355bf073619a5093f989709cae4a191` — deployed 2022-04-18 16:21:38+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxyImmutable (proxy) (alternative) `0x2a2a2be5ccf20f3633c6ca2d429ac51186a631e1` — deployed 2022-04-18 16:06:05+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxyImmutable (proxy) (alternative) `0xb0b958398abb0b5db4ce4d7598fb868f5a00f372` — deployed 2022-04-18 16:32:39+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxyImmutable (proxy) (alternative) `0x83e1814ba31f7ea95d216204bb45fe75ce09b14f` — deployed 2022-04-18 16:10:21+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxyImmutable (proxy) (alternative) `0x02651e355d26f3506c1e644ba393fdd9ac95eaca` — deployed 2022-04-18 16:14:43+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxyImmutable (proxy) (alternative) `0x857eb0eb2572f7092c417cd386ba82e45eba9b8a` — deployed 2022-04-18 16:20:03+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxyImmutable (proxy) (alternative) `0x8e303d296851b320e6a697bacb979d13c9d6e760` — deployed 2022-04-18 16:27:36+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxyImmutable (proxy) (alternative) `0x9f292ccb69ff9a0644475c7bc8d4651039e133d5` — deployed 2022-04-18 16:31:08+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| OpenZeppelin-V3-Audit-Report.pdf | Types | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin-V3-Audit-Report.pdf | Upgradeable | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin-V3-Audit-Report.pdf | Utils | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin-V3-Audit-Report.pdf | IOwned | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin-V3-Audit-Report.pdf | IUpgradeable | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin-V3-Audit-Report.pdf | IVersioned | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin-V3-Audit-Report.pdf | ExternalProtectionVault | own proxy deployment | TransparentUpgradeableProxyImmutable (proxy) (selected) `0xfd31662b3d54edde9b6bdd32c9c27c8e292cad57` — deployed 2022-04-18 16:03:57+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| OpenZeppelin-V3-Audit-Report.pdf | ExternalRewardsVault | own proxy deployment | TransparentUpgradeableProxyImmutable (proxy) (selected) `0x2a2a2be5ccf20f3633c6ca2d429ac51186a631e1` — deployed 2022-04-18 16:06:05+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| OpenZeppelin-V3-Audit-Report.pdf | MasterVault | own proxy deployment | TransparentUpgradeableProxyImmutable (proxy) (selected) `0x649765821d9f64198c905ec0b2b037a4a52bc373` — deployed 2022-04-18 16:02:14+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| OpenZeppelin-V3-Audit-Report.pdf | Vault | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin-V3-Audit-Report.pdf | IExternalProtectionVault | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin-V3-Audit-Report.pdf | IExternalRewardsVault | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin-V3-Audit-Report.pdf | IMasterVault | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin-V3-Audit-Report.pdf | IVault | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin-AutoCompoundingRewards-Audit-Report.pdf | AutoCompoundingRewards | own proxy deployment | TransparentUpgradeableProxyImmutable (proxy) (selected) `0x036f8b31d78ca354ada40dbd117e54f78b6f6cdc` — deployed 2022-08-21 14:51:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| OpenZeppelin-AutoCompoundingRewards-Audit-Report.pdf | BNTPool | own proxy deployment | TransparentUpgradeableProxyImmutable (proxy) (selected) `0x02651e355d26f3506c1e644ba393fdd9ac95eaca` — deployed 2022-04-18 16:14:43+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| OpenZeppelin-AutoCompoundingRewards-Audit-Report.pdf | Constants | unmatched — not counted | — | — | no |
| OpenZeppelin-AutoCompoundingRewards-Audit-Report.pdf | Fraction | unmatched — not counted | — | — | no |
| OpenZeppelin-AutoCompoundingRewards-Audit-Report.pdf | FractionLibrary | unmatched — not counted | — | — | no |
| OpenZeppelin-AutoCompoundingRewards-Audit-Report.pdf | IAutoCompoundingRewards | unmatched — not counted | — | — | no |
| OpenZeppelin-AutoCompoundingRewards-Audit-Report.pdf | MathEx | unmatched — not counted | — | — | no |
| OpenZeppelin-AutoCompoundingRewards-Audit-Report.pdf | PoolCollection | unmatched — not counted | — | — | no |
| OpenZeppelin-AutoCompoundingRewards-Audit-Report.pdf | RewardsMath | unmatched — not counted | — | — | no |
| ChainSecurity-V3-Audit-Report.pdf | AutoCompoundingRewards | own proxy deployment | TransparentUpgradeableProxyImmutable (proxy) (selected) `0x036f8b31d78ca354ada40dbd117e54f78b6f6cdc` — deployed 2022-08-21 14:51:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity-V3-Audit-Report.pdf | BNTPool | own proxy deployment | TransparentUpgradeableProxyImmutable (proxy) (selected) `0x02651e355d26f3506c1e644ba393fdd9ac95eaca` — deployed 2022-04-18 16:14:43+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity-V3-Audit-Report.pdf | BancorNetwork | own proxy deployment | TransparentUpgradeableProxyImmutable (proxy) (selected) `0xeef417e1d5cc832e619ae18d2f140de2999dd4fb` — deployed 2022-04-18 16:13:08+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity-V3-Audit-Report.pdf | BancorNetworkInfo | own proxy deployment | TransparentUpgradeableProxyImmutable (proxy) (selected) `0x8e303d296851b320e6a697bacb979d13c9d6e760` — deployed 2022-04-18 16:27:36+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity-V3-Audit-Report.pdf | BancorPortal | own proxy deployment | TransparentUpgradeableProxyImmutable (proxy) (selected) `0x9f292ccb69ff9a0644475c7bc8d4651039e133d5` — deployed 2022-04-18 16:31:08+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity-V3-Audit-Report.pdf | BancorV1Migration | own contract | BancorV1Migration (selected) `0xd761d538240e23b465c9c08236d781029dc3cc96` — deployed 2022-04-18 16:29:40+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity-V3-Audit-Report.pdf | ExternalProtectionVault | own proxy deployment | TransparentUpgradeableProxyImmutable (proxy) (selected) `0xfd31662b3d54edde9b6bdd32c9c27c8e292cad57` — deployed 2022-04-18 16:03:57+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity-V3-Audit-Report.pdf | ExternalRewardVault | unmatched — not counted | — | — | no |
| ChainSecurity-V3-Audit-Report.pdf | MasterVault | own proxy deployment | TransparentUpgradeableProxyImmutable (proxy) (selected) `0x649765821d9f64198c905ec0b2b037a4a52bc373` — deployed 2022-04-18 16:02:14+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity-V3-Audit-Report.pdf | MathEx | unmatched — not counted | — | — | no |
| ChainSecurity-V3-Audit-Report.pdf | NetworkSettings | own proxy deployment | TransparentUpgradeableProxyImmutable (proxy) (selected) `0x83e1814ba31f7ea95d216204bb45fe75ce09b14f` — deployed 2022-04-18 16:10:21+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity-V3-Audit-Report.pdf | PendingWithdrawals | own proxy deployment | TransparentUpgradeableProxyImmutable (proxy) (selected) `0x857eb0eb2572f7092c417cd386ba82e45eba9b8a` — deployed 2022-04-18 16:20:03+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity-V3-Audit-Report.pdf | PoolCollection | unmatched — not counted | — | — | no |
| ChainSecurity-V3-Audit-Report.pdf | PoolMigrator | own proxy deployment | TransparentUpgradeableProxyImmutable (proxy) (selected) `0x97cec0f2d355bf073619a5093f989709cae4a191` — deployed 2022-04-18 16:21:38+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity-V3-Audit-Report.pdf | PoolToken | own contract | PoolToken (selected) `0xab05cf7c6c3a288cd36326e4f7b8600e7268e344` — deployed 2022-04-18 16:08:13+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity-V3-Audit-Report.pdf | PoolTokenFactory | unmatched — not counted | — | — | no |
| ChainSecurity-V3-Audit-Report.pdf | StandardRewards | own proxy deployment | TransparentUpgradeableProxyImmutable (proxy) (selected) `0xb0b958398abb0b5db4ce4d7598fb868f5a00f372` — deployed 2022-04-18 16:32:39+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| drive.google.com/file/d/1Oinq3ZKneCwlteVigwn1TCkwR2fLL9Oj/view | StakingRewardsStore | unmatched — not counted | — | Listed as target in findings PVE-001 and PVE-002 | no |
| drive.google.com/file/d/1Oinq3ZKneCwlteVigwn1TCkwR2fLL9Oj/view | StakingRewards | unmatched — not counted | — | Listed as target in findings PVE-003, PVE-004, and PVE-005 | no |
| drive.google.com/file/d/1baijgjazL4PXD98hD8lGHfuvwNruIUbU/view | BancorGovernance | own contract | BancorGovernance (selected) `0x892f481bd6e9d7d26ae365211d9b45175d5d00e4` — deployed 2020-10-12 15:11:57+03 — liveness: live (current_address_book_code)<br>BancorGovernance (alternative) `0xebfafc802533f3d2835af7464fcd4492e8f82eb2` — deployed 2023-10-16 17:47:35+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2020-10-12 was 1d from audit; next candidate 1100d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| drive.google.com/file/d/1baijgjazL4PXD98hD8lGHfuvwNruIUbU/view | LiquidityProtection | unmatched — not counted | — | Listed as target in findings PVE-007, PVE-008 | no |
| drive.google.com/file/d/1gGszH3bSU6gUZG0oCN79tfYWCx7OfGDe/view | BancorGovernance | own contract | BancorGovernance (selected) `0x892f481bd6e9d7d26ae365211d9b45175d5d00e4` — deployed 2020-10-12 15:11:57+03 — liveness: live (current_address_book_code)<br>BancorGovernance (alternative) `0xebfafc802533f3d2835af7464fcd4492e8f82eb2` — deployed 2023-10-16 17:47:35+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2020-10-12 was 3d from audit; next candidate 1102d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| drive.google.com/file/d/1gGszH3bSU6gUZG0oCN79tfYWCx7OfGDe/view | IExecutor | unmatched — not counted | — | mentioned in findings BNC-02 and BNC-03 | no |
| drive.google.com/file/d/1gGszH3bSU6gUZG0oCN79tfYWCx7OfGDe/view | Owned | unmatched — not counted | — | mentioned in findings BNC-02 and BNC-09 | no |
| drive.google.com/file/d/1gGszH3bSU6gUZG0oCN79tfYWCx7OfGDe/view | IOwned | unmatched — not counted | — | mentioned in finding BNC-02 | no |
| drive.google.com/file/d/1QvYBjlGsYKtuO6C82c4-eX4YF2F_NaPk/view | Owned | unmatched — not counted | — | mentioned in findings BNC-01 and BNC-14 | no |
| drive.google.com/file/d/1QvYBjlGsYKtuO6C82c4-eX4YF2F_NaPk/view | ReentrancyGuard | unmatched — not counted | — | mentioned in finding BNC-02 | no |
| drive.google.com/file/d/1QvYBjlGsYKtuO6C82c4-eX4YF2F_NaPk/view | ConverterBase | unmatched — not counted | — | mentioned in findings BNC-03, BNC-04, BNC-14 | no |
| drive.google.com/file/d/1QvYBjlGsYKtuO6C82c4-eX4YF2F_NaPk/view | LiquidityPoolV1Converter | unmatched — not counted | — | mentioned in findings BNC-03, BNC-04, BNC-06, BNC-07, BNC-08, BNC-09, BNC-10, BNC-14, BNC-16 | no |
| drive.google.com/file/d/1QvYBjlGsYKtuO6C82c4-eX4YF2F_NaPk/view | ConverterUpgrader | unmatched — not counted | — | mentioned in findings BNC-04, BNC-10, BNC-14, BNC-15 | no |
| drive.google.com/file/d/1QvYBjlGsYKtuO6C82c4-eX4YF2F_NaPk/view | LiquidityProtectionStore | unmatched — not counted | — | mentioned in findings BNC-04, BNC-12 | no |
| drive.google.com/file/d/1QvYBjlGsYKtuO6C82c4-eX4YF2F_NaPk/view | LiquidityProtection | unmatched — not counted | — | mentioned in findings BNC-04, BNC-08, BNC-09, BNC-12, BNC-14 | no |
| Bancor_smartcontract_halborn_report_V1.pdf | LiquidityPoolV2Converter | unmatched — not counted | — | — | no |
| drive.google.com/file/d/1NaUEy29L5vk6lcBn0L4DRv3cWgdpAGQu/view | BancorFormula | unmatched — not counted | — | listed in Appendix 2 - Files in Scope | no |
| drive.google.com/file/d/1NaUEy29L5vk6lcBn0L4DRv3cWgdpAGQu/view | ConverterBase | unmatched — not counted | — | listed in Appendix 2 - Files in Scope | no |
| drive.google.com/file/d/1NaUEy29L5vk6lcBn0L4DRv3cWgdpAGQu/view | LiquidityPoolV2Converter | unmatched — not counted | — | listed in Appendix 2 - Files in Scope | no |
| drive.google.com/file/d/1NaUEy29L5vk6lcBn0L4DRv3cWgdpAGQu/view | PoolTokensContainer | unmatched — not counted | — | listed in Appendix 2 - Files in Scope | no |
| drive.google.com/file/d/1NaUEy29L5vk6lcBn0L4DRv3cWgdpAGQu/view | TokenHandler | unmatched — not counted | — | listed in Appendix 2 - Files in Scope | no |
| drive.google.com/file/d/1NaUEy29L5vk6lcBn0L4DRv3cWgdpAGQu/view | TokenHolder | unmatched — not counted | — | listed in Appendix 2 - Files in Scope | no |
| drive.google.com/file/d/1NaUEy29L5vk6lcBn0L4DRv3cWgdpAGQu/view | Owned | unmatched — not counted | — | listed in Appendix 2 - Files in Scope | no |
| drive.google.com/file/d/1NaUEy29L5vk6lcBn0L4DRv3cWgdpAGQu/view | PriceOracle | unmatched — not counted | — | listed in Appendix 2 - Files in Scope | no |
| drive.google.com/file/d/1NaUEy29L5vk6lcBn0L4DRv3cWgdpAGQu/view | ReentrancyGuard | unmatched — not counted | — | listed in Appendix 2 - Files in Scope | no |
| drive.google.com/file/d/1NaUEy29L5vk6lcBn0L4DRv3cWgdpAGQu/view | Whitelist | unmatched — not counted | — | listed in Appendix 2 - Files in Scope (implied by test coverage table) | no |
| c65fd1bd61a8e0294aef95a4808edc78 (GitHub directory) | BancorChanger | unmatched — not counted | — | — | no |
| c65fd1bd61a8e0294aef95a4808edc78 (GitHub directory) | CrowdsaleChanger | unmatched — not counted | — | — | no |
| c65fd1bd61a8e0294aef95a4808edc78 (GitHub directory) | CrowdsaleController | unmatched — not counted | — | — | no |
| c65fd1bd61a8e0294aef95a4808edc78 (GitHub directory) | ERC20Token | unmatched — not counted | — | — | no |
| c65fd1bd61a8e0294aef95a4808edc78 (GitHub directory) | ERC20TokenInterface | unmatched — not counted | — | — | no |
| c65fd1bd61a8e0294aef95a4808edc78 (GitHub directory) | EtherToken | unmatched — not counted | — | — | no |
| c65fd1bd61a8e0294aef95a4808edc78 (GitHub directory) | IBancorFormula | unmatched — not counted | — | — | no |
| c65fd1bd61a8e0294aef95a4808edc78 (GitHub directory) | IERC20Token | unmatched — not counted | — | — | no |
| c65fd1bd61a8e0294aef95a4808edc78 (GitHub directory) | IEtherToken | unmatched — not counted | — | — | no |
| c65fd1bd61a8e0294aef95a4808edc78 (GitHub directory) | IOwned | unmatched — not counted | — | — | no |
| c65fd1bd61a8e0294aef95a4808edc78 (GitHub directory) | ISmartToken | unmatched — not counted | — | — | no |
| c65fd1bd61a8e0294aef95a4808edc78 (GitHub directory) | ITokenChanger | unmatched — not counted | — | — | no |
| c65fd1bd61a8e0294aef95a4808edc78 (GitHub directory) | ITokenHolder | unmatched — not counted | — | — | no |
| c65fd1bd61a8e0294aef95a4808edc78 (GitHub directory) | Owned | unmatched — not counted | — | — | no |
| c65fd1bd61a8e0294aef95a4808edc78 (GitHub directory) | SafeMath | unmatched — not counted | — | — | no |
| c65fd1bd61a8e0294aef95a4808edc78 (GitHub directory) | SmartToken | own contract | SmartToken (selected) `0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c` — deployed 2017-06-10 19:02:40+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| c65fd1bd61a8e0294aef95a4808edc78 (GitHub directory) | SmartTokenController | unmatched — not counted | — | — | no |
| c65fd1bd61a8e0294aef95a4808edc78 (GitHub directory) | SmartTokenInterface | unmatched — not counted | — | — | no |
| c65fd1bd61a8e0294aef95a4808edc78 (GitHub directory) | TokenChangerInterface | unmatched — not counted | — | — | no |
| c65fd1bd61a8e0294aef95a4808edc78 (GitHub directory) | TokenHolder | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0xebfafc802533f3d2835af7464fcd4492e8f82eb2` | BancorGovernance | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 97 |
| upstream | 1 |
| standard_library | 3 |
| needs_review | 73 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Address-book scope dispositions: 34 own (27 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 2 ambiguous, 95 unmatched
- Matched-own operational status: 34 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=6
- Match method counts: temporal_name=2, unique_name=32

Zero-match audit list:

- [15068] drive.google.com/file/d/1Oinq3ZKneCwlteVigwn1TCkwR2fLL9Oj/view
- [15071] drive.google.com/file/d/1QvYBjlGsYKtuO6C82c4-eX4YF2F_NaPk/view
- [15072] Bancor_smartcontract_halborn_report_V1.pdf
- [15073] drive.google.com/file/d/1NaUEy29L5vk6lcBn0L4DRv3cWgdpAGQu/view

Fork inheritance lineage and inherited audits are included when available.
